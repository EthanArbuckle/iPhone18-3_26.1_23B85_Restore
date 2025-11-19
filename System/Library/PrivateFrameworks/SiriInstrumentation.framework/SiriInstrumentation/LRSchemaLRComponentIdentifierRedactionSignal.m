@interface LRSchemaLRComponentIdentifierRedactionSignal
- (BOOL)isEqual:(id)a3;
- (LRSchemaLRComponentIdentifierRedactionSignal)initWithDictionary:(id)a3;
- (LRSchemaLRComponentIdentifierRedactionSignal)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation LRSchemaLRComponentIdentifierRedactionSignal

- (LRSchemaLRComponentIdentifierRedactionSignal)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = LRSchemaLRComponentIdentifierRedactionSignal;
  v5 = [(LRSchemaLRComponentIdentifierRedactionSignal *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"componentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaRequestLinkInfo alloc] initWithDictionary:v6];
      [(LRSchemaLRComponentIdentifierRedactionSignal *)v5 setComponentId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"redactConnectedEvents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRComponentIdentifierRedactionSignal setRedactConnectedEvents:](v5, "setRedactConnectedEvents:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (LRSchemaLRComponentIdentifierRedactionSignal)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(LRSchemaLRComponentIdentifierRedactionSignal *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self dictionaryRepresentation];
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
  if (self->_componentId)
  {
    v4 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"componentId"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"componentId"];
    }
  }

  if (*(&self->_redactConnectedEvents + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[LRSchemaLRComponentIdentifierRedactionSignal redactConnectedEvents](self, "redactConnectedEvents")}];
    [v3 setObject:v7 forKeyedSubscript:@"redactConnectedEvents"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaRequestLinkInfo *)self->_componentId hash];
  if (*(&self->_redactConnectedEvents + 1))
  {
    v4 = 2654435761 * self->_redactConnectedEvents;
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

  v5 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
  v6 = [v4 componentId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  v8 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
  if (v8)
  {
    v9 = v8;
    v10 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
    v11 = [v4 componentId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_redactConnectedEvents + 1) != (v4[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_redactConnectedEvents + 1))
  {
    redactConnectedEvents = self->_redactConnectedEvents;
    if (redactConnectedEvents != [v4 redactConnectedEvents])
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
  v4 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];

  if (v4)
  {
    v5 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_redactConnectedEvents + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = LRSchemaLRComponentIdentifierRedactionSignal;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(LRSchemaLRComponentIdentifierRedactionSignal *)self deleteComponentId];
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