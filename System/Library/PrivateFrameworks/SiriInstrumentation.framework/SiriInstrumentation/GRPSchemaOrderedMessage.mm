@interface GRPSchemaOrderedMessage
- (BOOL)isEqual:(id)a3;
- (GRPSchemaOrderedMessage)initWithDictionary:(id)a3;
- (GRPSchemaOrderedMessage)initWithJSON:(id)a3;
- (GRPSchemaSiriEventTypeUnion)siriEventTypeUnion;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)deleteSiriEventTypeUnion;
- (void)setSiriEventTypeUnion:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation GRPSchemaOrderedMessage

- (GRPSchemaOrderedMessage)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = GRPSchemaOrderedMessage;
  v5 = [(GRPSchemaOrderedMessage *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"logicalEventTimestampInNs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[GRPSchemaOrderedMessage setLogicalEventTimestampInNs:](v5, "setLogicalEventTimestampInNs:", [v6 longLongValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"siriEventTypeUnion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[GRPSchemaSiriEventTypeUnion alloc] initWithDictionary:v7];
      [(GRPSchemaOrderedMessage *)v5 setSiriEventTypeUnion:v8];
    }

    v9 = v5;
  }

  return v5;
}

- (GRPSchemaOrderedMessage)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(GRPSchemaOrderedMessage *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(GRPSchemaOrderedMessage *)self dictionaryRepresentation];
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
    v4 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[GRPSchemaOrderedMessage logicalEventTimestampInNs](self, "logicalEventTimestampInNs")}];
    [v3 setObject:v4 forKeyedSubscript:@"logicalEventTimestampInNs"];
  }

  if (self->_siriEventTypeUnion)
  {
    v5 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
    v6 = [v5 dictionaryRepresentation];
    if (v6)
    {
      [v3 setObject:v6 forKeyedSubscript:@"siriEventTypeUnion"];
    }

    else
    {
      v7 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v7 forKeyedSubscript:@"siriEventTypeUnion"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_logicalEventTimestampInNs;
  }

  else
  {
    v2 = 0;
  }

  return [(GRPSchemaSiriEventTypeUnion *)self->_siriEventTypeUnion hash]^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    whichEvent_Type = self->_whichEvent_Type;
    if (whichEvent_Type == [v4 whichEvent_Type] && (*&self->_has & 1) == (v4[24] & 1))
    {
      if ((*&self->_has & 1) == 0 || (logicalEventTimestampInNs = self->_logicalEventTimestampInNs, logicalEventTimestampInNs == [v4 logicalEventTimestampInNs]))
      {
        v7 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
        v8 = [v4 siriEventTypeUnion];
        v9 = v8;
        if ((v7 != 0) != (v8 == 0))
        {
          v10 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
          if (!v10)
          {

LABEL_14:
            v15 = 1;
            goto LABEL_12;
          }

          v11 = v10;
          v12 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
          v13 = [v4 siriEventTypeUnion];
          v14 = [v12 isEqual:v13];

          if (v14)
          {
            goto LABEL_14;
          }
        }

        else
        {
        }
      }
    }
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (void)writeTo:(id)a3
{
  v7 = a3;
  if (*&self->_has)
  {
    PBDataWriterWriteInt64Field();
  }

  v4 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];

  v5 = v7;
  if (v4)
  {
    v6 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion];
    PBDataWriterWriteSubmessage();

    v5 = v7;
  }
}

- (void)deleteSiriEventTypeUnion
{
  if (self->_whichEvent_Type == 100)
  {
    self->_whichEvent_Type = 0;
    self->_siriEventTypeUnion = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (GRPSchemaSiriEventTypeUnion)siriEventTypeUnion
{
  if (self->_whichEvent_Type == 100)
  {
    v3 = self->_siriEventTypeUnion;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setSiriEventTypeUnion:(id)a3
{
  v3 = 100;
  if (!a3)
  {
    v3 = 0;
  }

  self->_whichEvent_Type = v3;
  objc_storeStrong(&self->_siriEventTypeUnion, a3);
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = GRPSchemaOrderedMessage;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(GRPSchemaOrderedMessage *)self siriEventTypeUnion:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(GRPSchemaOrderedMessage *)self deleteSiriEventTypeUnion];
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