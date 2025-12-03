@interface LRSchemaLRComponentIdentifierRedactionSignal
- (BOOL)isEqual:(id)equal;
- (LRSchemaLRComponentIdentifierRedactionSignal)initWithDictionary:(id)dictionary;
- (LRSchemaLRComponentIdentifierRedactionSignal)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation LRSchemaLRComponentIdentifierRedactionSignal

- (LRSchemaLRComponentIdentifierRedactionSignal)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = LRSchemaLRComponentIdentifierRedactionSignal;
  v5 = [(LRSchemaLRComponentIdentifierRedactionSignal *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"componentId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaRequestLinkInfo alloc] initWithDictionary:v6];
      [(LRSchemaLRComponentIdentifierRedactionSignal *)v5 setComponentId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"redactConnectedEvents"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[LRSchemaLRComponentIdentifierRedactionSignal setRedactConnectedEvents:](v5, "setRedactConnectedEvents:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (LRSchemaLRComponentIdentifierRedactionSignal)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(LRSchemaLRComponentIdentifierRedactionSignal *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(LRSchemaLRComponentIdentifierRedactionSignal *)self dictionaryRepresentation];
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
  if (self->_componentId)
  {
    componentId = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
    dictionaryRepresentation = [componentId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"componentId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"componentId"];
    }
  }

  if (*(&self->_redactConnectedEvents + 1))
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[LRSchemaLRComponentIdentifierRedactionSignal redactConnectedEvents](self, "redactConnectedEvents")}];
    [dictionary setObject:v7 forKeyedSubscript:@"redactConnectedEvents"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  componentId = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
  componentId2 = [equalCopy componentId];
  v7 = componentId2;
  if ((componentId != 0) == (componentId2 == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  componentId3 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
  if (componentId3)
  {
    v9 = componentId3;
    componentId4 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
    componentId5 = [equalCopy componentId];
    v12 = [componentId4 isEqual:componentId5];

    if (!v12)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (*(&self->_redactConnectedEvents + 1) != (equalCopy[17] & 1))
  {
    goto LABEL_12;
  }

  if (*(&self->_redactConnectedEvents + 1))
  {
    redactConnectedEvents = self->_redactConnectedEvents;
    if (redactConnectedEvents != [equalCopy redactConnectedEvents])
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
  componentId = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];

  if (componentId)
  {
    componentId2 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId];
    PBDataWriterWriteSubmessage();
  }

  if (*(&self->_redactConnectedEvents + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = LRSchemaLRComponentIdentifierRedactionSignal;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(LRSchemaLRComponentIdentifierRedactionSignal *)self componentId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
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