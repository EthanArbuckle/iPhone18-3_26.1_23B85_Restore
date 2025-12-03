@interface PGSchemaPGPromptTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PGSchemaPGPromptTier1)initWithDictionary:(id)dictionary;
- (PGSchemaPGPromptTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PGSchemaPGPromptTier1

- (PGSchemaPGPromptTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PGSchemaPGPromptTier1;
  v5 = [(PGSchemaPGPromptTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PGSchemaPGPromptTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"prompt"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PGSchemaPGPromptTier1 *)v5 setPrompt:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"grammar"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PGSchemaPGPromptTier1 *)v5 setGrammar:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PGSchemaPGPromptTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PGSchemaPGPromptTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PGSchemaPGPromptTier1 *)self dictionaryRepresentation];
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
  if (self->_grammar)
  {
    grammar = [(PGSchemaPGPromptTier1 *)self grammar];
    v5 = [grammar copy];
    [dictionary setObject:v5 forKeyedSubscript:@"grammar"];
  }

  if (self->_linkId)
  {
    linkId = [(PGSchemaPGPromptTier1 *)self linkId];
    dictionaryRepresentation = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"linkId"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_prompt)
  {
    prompt = [(PGSchemaPGPromptTier1 *)self prompt];
    v10 = [prompt copy];
    [dictionary setObject:v10 forKeyedSubscript:@"prompt"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_prompt hash]^ v3;
  return v4 ^ [(NSString *)self->_grammar hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  linkId = [(PGSchemaPGPromptTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  linkId3 = [(PGSchemaPGPromptTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(PGSchemaPGPromptTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(PGSchemaPGPromptTier1 *)self prompt];
  linkId2 = [equalCopy prompt];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_16;
  }

  prompt = [(PGSchemaPGPromptTier1 *)self prompt];
  if (prompt)
  {
    v13 = prompt;
    prompt2 = [(PGSchemaPGPromptTier1 *)self prompt];
    prompt3 = [equalCopy prompt];
    v16 = [prompt2 isEqual:prompt3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  linkId = [(PGSchemaPGPromptTier1 *)self grammar];
  linkId2 = [equalCopy grammar];
  if ((linkId != 0) != (linkId2 == 0))
  {
    grammar = [(PGSchemaPGPromptTier1 *)self grammar];
    if (!grammar)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = grammar;
    grammar2 = [(PGSchemaPGPromptTier1 *)self grammar];
    grammar3 = [equalCopy grammar];
    v21 = [grammar2 isEqual:grammar3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(PGSchemaPGPromptTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(PGSchemaPGPromptTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  prompt = [(PGSchemaPGPromptTier1 *)self prompt];

  if (prompt)
  {
    PBDataWriterWriteStringField();
  }

  grammar = [(PGSchemaPGPromptTier1 *)self grammar];

  v8 = toCopy;
  if (grammar)
  {
    PBDataWriterWriteStringField();
    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v10.receiver = self;
  v10.super_class = PGSchemaPGPromptTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v10 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PGSchemaPGPromptTier1 *)self deletePrompt];
    [(PGSchemaPGPromptTier1 *)self deleteGrammar];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PGSchemaPGPromptTier1 *)self deletePrompt];
    [(PGSchemaPGPromptTier1 *)self deleteGrammar];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PGSchemaPGPromptTier1 *)self deletePrompt];
    [(PGSchemaPGPromptTier1 *)self deleteGrammar];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PGSchemaPGPromptTier1 *)self deletePrompt];
    [(PGSchemaPGPromptTier1 *)self deleteGrammar];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PGSchemaPGPromptTier1 *)self deletePrompt];
    [(PGSchemaPGPromptTier1 *)self deleteGrammar];
  }

  linkId = [(PGSchemaPGPromptTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PGSchemaPGPromptTier1 *)self deleteLinkId];
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