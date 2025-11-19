@interface ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext)initWithDictionary:(id)a3;
- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext

- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext;
  v5 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"selectedUser"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMap alloc] initWithDictionary:v6];
      [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)v5 setSelectedUser:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self dictionaryRepresentation];
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
  if (self->_selectedUser)
  {
    v4 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self selectedUser];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"selectedUser"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"selectedUser"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self selectedUser];
    v6 = [v4 selectedUser];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self selectedUser];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self selectedUser];
      v11 = [v4 selectedUser];
      v12 = [v10 isEqual:v11];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  v4 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self selectedUser];

  if (v4)
  {
    v5 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self selectedUser];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self selectedUser:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(ORCHSchemaORCHMUXEphemeralToAggregationIdentifierMapContext *)self deleteSelectedUser];
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