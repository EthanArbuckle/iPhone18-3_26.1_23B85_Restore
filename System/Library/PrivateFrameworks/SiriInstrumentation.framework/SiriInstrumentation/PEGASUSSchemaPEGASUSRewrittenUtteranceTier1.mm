@interface PEGASUSSchemaPEGASUSRewrittenUtteranceTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSRewrittenUtteranceTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSRewrittenUtteranceTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSRewrittenUtteranceTier1

- (PEGASUSSchemaPEGASUSRewrittenUtteranceTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = PEGASUSSchemaPEGASUSRewrittenUtteranceTier1;
  v5 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"rewrittenUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)v5 setRewrittenUtterance:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSRewrittenUtteranceTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self dictionaryRepresentation];
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
  if (self->_rewrittenUtterance)
  {
    rewrittenUtterance = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];
    v5 = [rewrittenUtterance copy];
    [dictionary setObject:v5 forKeyedSubscript:@"rewrittenUtterance"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    rewrittenUtterance = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];
    rewrittenUtterance2 = [equalCopy rewrittenUtterance];
    v7 = rewrittenUtterance2;
    if ((rewrittenUtterance != 0) != (rewrittenUtterance2 == 0))
    {
      rewrittenUtterance3 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];
      if (!rewrittenUtterance3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = rewrittenUtterance3;
      rewrittenUtterance4 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];
      rewrittenUtterance5 = [equalCopy rewrittenUtterance];
      v12 = [rewrittenUtterance4 isEqual:rewrittenUtterance5];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  rewrittenUtterance = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];

  if (rewrittenUtterance)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSRewrittenUtteranceTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self deleteRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self deleteRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self deleteRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self deleteRewrittenUtterance];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self deleteRewrittenUtterance];
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