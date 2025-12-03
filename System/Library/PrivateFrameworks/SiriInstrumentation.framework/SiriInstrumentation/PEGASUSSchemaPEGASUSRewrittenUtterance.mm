@interface PEGASUSSchemaPEGASUSRewrittenUtterance
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSRewrittenUtterance)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSRewrittenUtterance)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsUsed:(BOOL)used;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSRewrittenUtterance

- (PEGASUSSchemaPEGASUSRewrittenUtterance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PEGASUSSchemaPEGASUSRewrittenUtterance;
  v5 = [(PEGASUSSchemaPEGASUSRewrittenUtterance *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rewriteType"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRewrittenUtterance setRewriteType:](v5, "setRewriteType:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSRewrittenUtterance setIsUsed:](v5, "setIsUsed:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSRewrittenUtterance)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSRewrittenUtterance *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSRewrittenUtterance *)self dictionaryRepresentation];
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
  v4 = *(&self->_isUsed + 1);
  if ((v4 & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSRewrittenUtterance isUsed](self, "isUsed")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isUsed"];

    v4 = *(&self->_isUsed + 1);
  }

  if (v4)
  {
    v6 = [(PEGASUSSchemaPEGASUSRewrittenUtterance *)self rewriteType]- 1;
    if (v6 > 3)
    {
      v7 = @"PEGASUSUTTERANCEREWRITETYPE_UNKNOWN";
    }

    else
    {
      v7 = off_1E78DFC48[v6];
    }

    [dictionary setObject:v7 forKeyedSubscript:@"rewriteType"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isUsed + 1))
  {
    v2 = 2654435761 * self->_rewriteType;
    if ((*(&self->_isUsed + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_isUsed + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isUsed;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_isUsed + 1);
  v6 = equalCopy[13];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    rewriteType = self->_rewriteType;
    if (rewriteType != [equalCopy rewriteType])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_isUsed + 1);
    v6 = equalCopy[13];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    isUsed = self->_isUsed;
    if (isUsed != [equalCopy isUsed])
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
  v5 = *(&self->_isUsed + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v6;
    v5 = *(&self->_isUsed + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }
}

- (void)setHasIsUsed:(BOOL)used
{
  if (used)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isUsed + 1) = *(&self->_isUsed + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end