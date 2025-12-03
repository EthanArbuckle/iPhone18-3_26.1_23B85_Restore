@interface SISchemaBluetoothCarPreferredAudioRouteChanged
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaBluetoothCarPreferredAudioRouteChanged)initWithDictionary:(id)dictionary;
- (SISchemaBluetoothCarPreferredAudioRouteChanged)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasAfter:(BOOL)after;
- (void)writeTo:(id)to;
@end

@implementation SISchemaBluetoothCarPreferredAudioRouteChanged

- (SISchemaBluetoothCarPreferredAudioRouteChanged)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SISchemaBluetoothCarPreferredAudioRouteChanged;
  v5 = [(SISchemaBluetoothCarPreferredAudioRouteChanged *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"before"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaBluetoothCarPreferredAudioRouteChanged setBefore:](v5, "setBefore:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"after"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaBluetoothCarPreferredAudioRouteChanged setAfter:](v5, "setAfter:", [v7 intValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (SISchemaBluetoothCarPreferredAudioRouteChanged)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaBluetoothCarPreferredAudioRouteChanged *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaBluetoothCarPreferredAudioRouteChanged *)self dictionaryRepresentation];
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
    after = [(SISchemaBluetoothCarPreferredAudioRouteChanged *)self after];
    if (after == 1)
    {
      v6 = @"BLUETOOTHCARPREFERREDAUDIOROUTE_A2DP";
    }

    else
    {
      v6 = @"BLUETOOTHCARPREFERREDAUDIOROUTE_HFP";
    }

    if (after == 2)
    {
      v7 = @"BLUETOOTHCARPREFERREDAUDIOROUTE_DEVICE_SPEAKER";
    }

    else
    {
      v7 = v6;
    }

    [dictionary setObject:v7 forKeyedSubscript:@"after"];
    has = self->_has;
  }

  if (has)
  {
    before = [(SISchemaBluetoothCarPreferredAudioRouteChanged *)self before];
    if (before == 1)
    {
      v9 = @"BLUETOOTHCARPREFERREDAUDIOROUTE_A2DP";
    }

    else
    {
      v9 = @"BLUETOOTHCARPREFERREDAUDIOROUTE_HFP";
    }

    if (before == 2)
    {
      v10 = @"BLUETOOTHCARPREFERREDAUDIOROUTE_DEVICE_SPEAKER";
    }

    else
    {
      v10 = v9;
    }

    [dictionary setObject:v10 forKeyedSubscript:@"before"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_before;
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
  v3 = 2654435761 * self->_after;
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
    before = self->_before;
    if (before != [equalCopy before])
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
    after = self->_after;
    if (after != [equalCopy after])
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

- (void)setHasAfter:(BOOL)after
{
  if (after)
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