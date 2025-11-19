@interface PEGASUSSchemaPEGASUSRewrittenUtteranceTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSRewrittenUtteranceTier1)initWithDictionary:(id)a3;
- (PEGASUSSchemaPEGASUSRewrittenUtteranceTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)a3;
@end

@implementation PEGASUSSchemaPEGASUSRewrittenUtteranceTier1

- (PEGASUSSchemaPEGASUSRewrittenUtteranceTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PEGASUSSchemaPEGASUSRewrittenUtteranceTier1;
  v5 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"rewrittenUtterance"];
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

- (PEGASUSSchemaPEGASUSRewrittenUtteranceTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self dictionaryRepresentation];
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
  if (self->_rewrittenUtterance)
  {
    v4 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"rewrittenUtterance"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];
    v6 = [v4 rewrittenUtterance];
    v7 = v6;
    if ((v5 != 0) != (v6 == 0))
    {
      v8 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];
      if (!v8)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = v8;
      v10 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];
      v11 = [v4 rewrittenUtterance];
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
  v5 = a3;
  v4 = [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self rewrittenUtterance];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSRewrittenUtteranceTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self deleteRewrittenUtterance];
  }

  if ([v4 isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self deleteRewrittenUtterance];
  }

  if ([v4 isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self deleteRewrittenUtterance];
  }

  if ([v4 isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSRewrittenUtteranceTier1 *)self deleteRewrittenUtterance];
  }

  if ([v4 isConditionSet:7])
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