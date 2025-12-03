@interface ODDSiriSchemaODDBluetoothCarCounts
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODDSiriSchemaODDBluetoothCarCounts)initWithDictionary:(id)dictionary;
- (ODDSiriSchemaODDBluetoothCarCounts)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation ODDSiriSchemaODDBluetoothCarCounts

- (ODDSiriSchemaODDBluetoothCarCounts)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDBluetoothCarCounts;
  v5 = [(ODDSiriSchemaODDBluetoothCarCounts *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"siriInBTCarTurnCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDTurnCounts alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDBluetoothCarCounts *)v5 setSiriInBTCarTurnCounts:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"bluetoothCarConnectionsInTheLast24Hours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDBluetoothCarCounts setBluetoothCarConnectionsInTheLast24Hours:](v5, "setBluetoothCarConnectionsInTheLast24Hours:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDBluetoothCarCounts)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDBluetoothCarCounts *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODDSiriSchemaODDBluetoothCarCounts *)self dictionaryRepresentation];
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
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDBluetoothCarCounts bluetoothCarConnectionsInTheLast24Hours](self, "bluetoothCarConnectionsInTheLast24Hours")}];
    [dictionary setObject:v4 forKeyedSubscript:@"bluetoothCarConnectionsInTheLast24Hours"];
  }

  if (self->_siriInBTCarTurnCounts)
  {
    siriInBTCarTurnCounts = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
    dictionaryRepresentation = [siriInBTCarTurnCounts dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"siriInBTCarTurnCounts"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"siriInBTCarTurnCounts"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(ODDSiriSchemaODDTurnCounts *)self->_siriInBTCarTurnCounts hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_bluetoothCarConnectionsInTheLast24Hours;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  siriInBTCarTurnCounts = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
  siriInBTCarTurnCounts2 = [equalCopy siriInBTCarTurnCounts];
  v7 = siriInBTCarTurnCounts2;
  if ((siriInBTCarTurnCounts != 0) == (siriInBTCarTurnCounts2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  siriInBTCarTurnCounts3 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
  if (siriInBTCarTurnCounts3)
  {
    v9 = siriInBTCarTurnCounts3;
    siriInBTCarTurnCounts4 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
    siriInBTCarTurnCounts5 = [equalCopy siriInBTCarTurnCounts];
    v12 = [siriInBTCarTurnCounts4 isEqual:siriInBTCarTurnCounts5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    bluetoothCarConnectionsInTheLast24Hours = self->_bluetoothCarConnectionsInTheLast24Hours;
    if (bluetoothCarConnectionsInTheLast24Hours != [equalCopy bluetoothCarConnectionsInTheLast24Hours])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  siriInBTCarTurnCounts = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];

  if (siriInBTCarTurnCounts)
  {
    siriInBTCarTurnCounts2 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDBluetoothCarCounts;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(ODDSiriSchemaODDBluetoothCarCounts *)self deleteSiriInBTCarTurnCounts];
  }

  return v5;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end