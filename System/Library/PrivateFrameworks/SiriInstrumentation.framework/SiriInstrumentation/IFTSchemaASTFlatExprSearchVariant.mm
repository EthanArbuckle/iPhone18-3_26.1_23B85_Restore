@interface IFTSchemaASTFlatExprSearchVariant
- (BOOL)isEqual:(id)equal;
- (IFTSchemaASTFlatExprSearchVariant)initWithDictionary:(id)dictionary;
- (IFTSchemaASTFlatExprSearchVariant)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsLowConfidenceKnowledge:(BOOL)knowledge;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaASTFlatExprSearchVariant

- (IFTSchemaASTFlatExprSearchVariant)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = IFTSchemaASTFlatExprSearchVariant;
  v5 = [(IFTSchemaASTFlatExprSearchVariant *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"exists"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaASTFlatExprSearchVariant setExists:](v5, "setExists:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"linkId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [[SISchemaUUID alloc] initWithDictionary:v7];
      [(IFTSchemaASTFlatExprSearchVariant *)v5 setLinkId:v8];
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isLowConfidenceKnowledge"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaASTFlatExprSearchVariant setIsLowConfidenceKnowledge:](v5, "setIsLowConfidenceKnowledge:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (IFTSchemaASTFlatExprSearchVariant)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaASTFlatExprSearchVariant *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaASTFlatExprSearchVariant *)self dictionaryRepresentation];
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
  v4 = *(&self->_isLowConfidenceKnowledge + 1);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaASTFlatExprSearchVariant exists](self, "exists")}];
    [dictionary setObject:v5 forKeyedSubscript:@"exists"];

    v4 = *(&self->_isLowConfidenceKnowledge + 1);
  }

  if ((v4 & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaASTFlatExprSearchVariant isLowConfidenceKnowledge](self, "isLowConfidenceKnowledge")}];
    [dictionary setObject:v6 forKeyedSubscript:@"isLowConfidenceKnowledge"];
  }

  if (self->_linkId)
  {
    linkId = [(IFTSchemaASTFlatExprSearchVariant *)self linkId];
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

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isLowConfidenceKnowledge + 1))
  {
    v3 = 2654435761 * self->_exists;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(SISchemaUUID *)self->_linkId hash];
  if ((*(&self->_isLowConfidenceKnowledge + 1) & 2) != 0)
  {
    v5 = 2654435761 * self->_isLowConfidenceKnowledge;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*(&self->_isLowConfidenceKnowledge + 1) != (equalCopy[25] & 1))
  {
    goto LABEL_15;
  }

  if (*(&self->_isLowConfidenceKnowledge + 1))
  {
    exists = self->_exists;
    if (exists != [equalCopy exists])
    {
      goto LABEL_15;
    }
  }

  linkId = [(IFTSchemaASTFlatExprSearchVariant *)self linkId];
  linkId2 = [equalCopy linkId];
  v8 = linkId2;
  if ((linkId != 0) == (linkId2 == 0))
  {

LABEL_15:
    v16 = 0;
    goto LABEL_16;
  }

  linkId3 = [(IFTSchemaASTFlatExprSearchVariant *)self linkId];
  if (linkId3)
  {
    v10 = linkId3;
    linkId4 = [(IFTSchemaASTFlatExprSearchVariant *)self linkId];
    linkId5 = [equalCopy linkId];
    v13 = [linkId4 isEqual:linkId5];

    if (!v13)
    {
      goto LABEL_15;
    }
  }

  else
  {
  }

  v14 = (*(&self->_isLowConfidenceKnowledge + 1) >> 1) & 1;
  if (v14 != ((equalCopy[25] >> 1) & 1))
  {
    goto LABEL_15;
  }

  if (v14)
  {
    isLowConfidenceKnowledge = self->_isLowConfidenceKnowledge;
    if (isLowConfidenceKnowledge != [equalCopy isLowConfidenceKnowledge])
    {
      goto LABEL_15;
    }
  }

  v16 = 1;
LABEL_16:

  return v16;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if (*(&self->_isLowConfidenceKnowledge + 1))
  {
    PBDataWriterWriteBOOLField();
  }

  linkId = [(IFTSchemaASTFlatExprSearchVariant *)self linkId];

  if (linkId)
  {
    linkId2 = [(IFTSchemaASTFlatExprSearchVariant *)self linkId];
    PBDataWriterWriteSubmessage();
  }

  if ((*(&self->_isLowConfidenceKnowledge + 1) & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (void)setHasIsLowConfidenceKnowledge:(BOOL)knowledge
{
  if (knowledge)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLowConfidenceKnowledge + 1) = *(&self->_isLowConfidenceKnowledge + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IFTSchemaASTFlatExprSearchVariant;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IFTSchemaASTFlatExprSearchVariant *)self linkId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IFTSchemaASTFlatExprSearchVariant *)self deleteLinkId];
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