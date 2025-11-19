@interface ODDSiriSchemaODDBluetoothCarCounts
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ODDSiriSchemaODDBluetoothCarCounts)initWithDictionary:(id)a3;
- (ODDSiriSchemaODDBluetoothCarCounts)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation ODDSiriSchemaODDBluetoothCarCounts

- (ODDSiriSchemaODDBluetoothCarCounts)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = ODDSiriSchemaODDBluetoothCarCounts;
  v5 = [(ODDSiriSchemaODDBluetoothCarCounts *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"siriInBTCarTurnCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODDSiriSchemaODDTurnCounts alloc] initWithDictionary:v6];
      [(ODDSiriSchemaODDBluetoothCarCounts *)v5 setSiriInBTCarTurnCounts:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"bluetoothCarConnectionsInTheLast24Hours"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[ODDSiriSchemaODDBluetoothCarCounts setBluetoothCarConnectionsInTheLast24Hours:](v5, "setBluetoothCarConnectionsInTheLast24Hours:", [v8 unsignedIntValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (ODDSiriSchemaODDBluetoothCarCounts)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ODDSiriSchemaODDBluetoothCarCounts *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ODDSiriSchemaODDBluetoothCarCounts *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[ODDSiriSchemaODDBluetoothCarCounts bluetoothCarConnectionsInTheLast24Hours](self, "bluetoothCarConnectionsInTheLast24Hours")}];
    [v3 setObject:v4 forKeyedSubscript:@"bluetoothCarConnectionsInTheLast24Hours"];
  }

  if (self->_siriInBTCarTurnCounts)
  {
    v5 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"siriInBTCarTurnCounts"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"siriInBTCarTurnCounts"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  v5 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
  v6 = [v4 siriInBTCarTurnCounts];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
  if (v8)
  {
    v9 = v8;
    v10 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
    v11 = [v4 siriInBTCarTurnCounts];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[20] & 1))
  {
    goto LABEL_12;
  }

  if (*&self->_has)
  {
    bluetoothCarConnectionsInTheLast24Hours = self->_bluetoothCarConnectionsInTheLast24Hours;
    if (bluetoothCarConnectionsInTheLast24Hours != [v4 bluetoothCarConnectionsInTheLast24Hours])
    {
      goto LABEL_12;
    }
  }

  v14 = 1;
LABEL_13:

  return v14;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];

  if (v4)
  {
    v5 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts];
    PBDataWriterWriteSubmessage();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ODDSiriSchemaODDBluetoothCarCounts;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ODDSiriSchemaODDBluetoothCarCounts *)self siriInBTCarTurnCounts:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
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