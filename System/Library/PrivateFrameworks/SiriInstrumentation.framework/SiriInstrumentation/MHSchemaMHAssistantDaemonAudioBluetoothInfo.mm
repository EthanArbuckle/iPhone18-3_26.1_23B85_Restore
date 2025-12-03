@interface MHSchemaMHAssistantDaemonAudioBluetoothInfo
- (BOOL)isEqual:(id)equal;
- (MHSchemaMHAssistantDaemonAudioBluetoothInfo)initWithDictionary:(id)dictionary;
- (MHSchemaMHAssistantDaemonAudioBluetoothInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasBluetoothAudioDeviceCategory:(BOOL)category;
- (void)writeTo:(id)to;
@end

@implementation MHSchemaMHAssistantDaemonAudioBluetoothInfo

- (MHSchemaMHAssistantDaemonAudioBluetoothInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = MHSchemaMHAssistantDaemonAudioBluetoothInfo;
  v5 = [(MHSchemaMHAssistantDaemonAudioBluetoothInfo *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"state"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioBluetoothInfo setState:](v5, "setState:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"bluetoothAudioDeviceCategory"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[MHSchemaMHAssistantDaemonAudioBluetoothInfo setBluetoothAudioDeviceCategory:](v5, "setBluetoothAudioDeviceCategory:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (MHSchemaMHAssistantDaemonAudioBluetoothInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(MHSchemaMHAssistantDaemonAudioBluetoothInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(MHSchemaMHAssistantDaemonAudioBluetoothInfo *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  has = self->_has;
  if ((has & 2) != 0)
  {
    v5 = [(MHSchemaMHAssistantDaemonAudioBluetoothInfo *)self bluetoothAudioDeviceCategory]- 1;
    if (v5 > 4)
    {
      v6 = @"BLUETOOTHAUDIODEVICECATEGORY_UNKNOWN";
    }

    else
    {
      v6 = off_1E78D8E70[v5];
    }

    [dictionary setObject:v6 forKeyedSubscript:@"bluetoothAudioDeviceCategory"];
    has = self->_has;
  }

  if (has)
  {
    v7 = [(MHSchemaMHAssistantDaemonAudioBluetoothInfo *)self state]- 1;
    if (v7 > 2)
    {
      v8 = @"MHBLUETOOTHWIRELESSSPLITTERSESSIONSTATE_UNKNOWN";
    }

    else
    {
      v8 = off_1E78D8E98[v7];
    }

    [dictionary setObject:v8 forKeyedSubscript:@"state"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_state;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_bluetoothAudioDeviceCategory;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  has = self->_has;
  v6 = equalCopy[16];
  if ((*&has & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (*&has)
  {
    state = self->_state;
    if (state != [equalCopy state])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    has = self->_has;
    v6 = equalCopy[16];
  }

  v8 = (*&has >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    bluetoothAudioDeviceCategory = self->_bluetoothAudioDeviceCategory;
    if (bluetoothAudioDeviceCategory != [equalCopy bluetoothAudioDeviceCategory])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  has = self->_has;
  v6 = toCopy;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
  }
}

- (void)setHasBluetoothAudioDeviceCategory:(BOOL)category
{
  if (category)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end