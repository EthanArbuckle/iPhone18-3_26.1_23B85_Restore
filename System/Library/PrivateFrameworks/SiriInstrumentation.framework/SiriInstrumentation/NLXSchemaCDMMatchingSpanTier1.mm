@interface NLXSchemaCDMMatchingSpanTier1
- (BOOL)isEqual:(id)equal;
- (NLXSchemaCDMMatchingSpanTier1)initWithDictionary:(id)dictionary;
- (NLXSchemaCDMMatchingSpanTier1)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLXSchemaCDMMatchingSpanTier1

- (NLXSchemaCDMMatchingSpanTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v16.receiver = self;
  v16.super_class = NLXSchemaCDMMatchingSpanTier1;
  v5 = [(NLXSchemaCDMMatchingSpanTier1 *)&v16 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(NLXSchemaCDMMatchingSpanTier1 *)v5 setLinkId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"input"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NLXSchemaCDMMatchingSpanTier1 *)v5 setInput:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"internalSpanData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLXSchemaCDMInternalSpanDataTier1 alloc] initWithDictionary:v10];
      [(NLXSchemaCDMMatchingSpanTier1 *)v5 setInternalSpanData:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"semanticValue"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = [v12 copy];
      [(NLXSchemaCDMMatchingSpanTier1 *)v5 setSemanticValue:v13];
    }

    v14 = v5;
  }

  return v5;
}

- (NLXSchemaCDMMatchingSpanTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLXSchemaCDMMatchingSpanTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLXSchemaCDMMatchingSpanTier1 *)self dictionaryRepresentation];
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
  if (self->_input)
  {
    input = [(NLXSchemaCDMMatchingSpanTier1 *)self input];
    v5 = [input copy];
    [dictionary setObject:v5 forKeyedSubscript:@"input"];
  }

  if (self->_internalSpanData)
  {
    internalSpanData = [(NLXSchemaCDMMatchingSpanTier1 *)self internalSpanData];
    dictionaryRepresentation = [internalSpanData dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"internalSpanData"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"internalSpanData"];
    }
  }

  if (self->_linkId)
  {
    linkId = [(NLXSchemaCDMMatchingSpanTier1 *)self linkId];
    dictionaryRepresentation2 = [linkId dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"linkId"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"linkId"];
    }
  }

  if (self->_semanticValue)
  {
    semanticValue = [(NLXSchemaCDMMatchingSpanTier1 *)self semanticValue];
    v13 = [semanticValue copy];
    [dictionary setObject:v13 forKeyedSubscript:@"semanticValue"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_linkId hash];
  v4 = [(NSString *)self->_input hash]^ v3;
  v5 = [(NLXSchemaCDMInternalSpanDataTier1 *)self->_internalSpanData hash];
  return v4 ^ v5 ^ [(NSString *)self->_semanticValue hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  linkId = [(NLXSchemaCDMMatchingSpanTier1 *)self linkId];
  linkId2 = [equalCopy linkId];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_21;
  }

  linkId3 = [(NLXSchemaCDMMatchingSpanTier1 *)self linkId];
  if (linkId3)
  {
    v8 = linkId3;
    linkId4 = [(NLXSchemaCDMMatchingSpanTier1 *)self linkId];
    linkId5 = [equalCopy linkId];
    v11 = [linkId4 isEqual:linkId5];

    if (!v11)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMMatchingSpanTier1 *)self input];
  linkId2 = [equalCopy input];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_21;
  }

  input = [(NLXSchemaCDMMatchingSpanTier1 *)self input];
  if (input)
  {
    v13 = input;
    input2 = [(NLXSchemaCDMMatchingSpanTier1 *)self input];
    input3 = [equalCopy input];
    v16 = [input2 isEqual:input3];

    if (!v16)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMMatchingSpanTier1 *)self internalSpanData];
  linkId2 = [equalCopy internalSpanData];
  if ((linkId != 0) == (linkId2 == 0))
  {
    goto LABEL_21;
  }

  internalSpanData = [(NLXSchemaCDMMatchingSpanTier1 *)self internalSpanData];
  if (internalSpanData)
  {
    v18 = internalSpanData;
    internalSpanData2 = [(NLXSchemaCDMMatchingSpanTier1 *)self internalSpanData];
    internalSpanData3 = [equalCopy internalSpanData];
    v21 = [internalSpanData2 isEqual:internalSpanData3];

    if (!v21)
    {
      goto LABEL_22;
    }
  }

  else
  {
  }

  linkId = [(NLXSchemaCDMMatchingSpanTier1 *)self semanticValue];
  linkId2 = [equalCopy semanticValue];
  if ((linkId != 0) != (linkId2 == 0))
  {
    semanticValue = [(NLXSchemaCDMMatchingSpanTier1 *)self semanticValue];
    if (!semanticValue)
    {

LABEL_25:
      v27 = 1;
      goto LABEL_23;
    }

    v23 = semanticValue;
    semanticValue2 = [(NLXSchemaCDMMatchingSpanTier1 *)self semanticValue];
    semanticValue3 = [equalCopy semanticValue];
    v26 = [semanticValue2 isEqual:semanticValue3];

    if (v26)
    {
      goto LABEL_25;
    }
  }

  else
  {
LABEL_21:
  }

LABEL_22:
  v27 = 0;
LABEL_23:

  return v27;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  linkId = [(NLXSchemaCDMMatchingSpanTier1 *)self linkId];

  if (linkId)
  {
    linkId2 = [(NLXSchemaCDMMatchingSpanTier1 *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  input = [(NLXSchemaCDMMatchingSpanTier1 *)self input];

  if (input)
  {
    PBDataWriterWriteStringField();
  }

  internalSpanData = [(NLXSchemaCDMMatchingSpanTier1 *)self internalSpanData];

  if (internalSpanData)
  {
    internalSpanData2 = [(NLXSchemaCDMMatchingSpanTier1 *)self internalSpanData];
    PBDataWriterWriteSubmessage();
  }

  semanticValue = [(NLXSchemaCDMMatchingSpanTier1 *)self semanticValue];

  v10 = toCopy;
  if (semanticValue)
  {
    PBDataWriterWriteStringField();
    v10 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = NLXSchemaCDMMatchingSpanTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(NLXSchemaCDMMatchingSpanTier1 *)self deleteInput];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(NLXSchemaCDMMatchingSpanTier1 *)self deleteInput];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(NLXSchemaCDMMatchingSpanTier1 *)self deleteInput];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(NLXSchemaCDMMatchingSpanTier1 *)self deleteInput];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(NLXSchemaCDMMatchingSpanTier1 *)self deleteInput];
  }

  linkId = [(NLXSchemaCDMMatchingSpanTier1 *)self linkId];
  v7 = [linkId applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLXSchemaCDMMatchingSpanTier1 *)self deleteLinkId];
  }

  internalSpanData = [(NLXSchemaCDMMatchingSpanTier1 *)self internalSpanData];
  v10 = [internalSpanData applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLXSchemaCDMMatchingSpanTier1 *)self deleteInternalSpanData];
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