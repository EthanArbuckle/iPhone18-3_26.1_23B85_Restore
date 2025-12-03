@interface IHSchemaIHModelEvaluationEnded
- (BOOL)isEqual:(id)equal;
- (IHSchemaIHModelEvaluationEnded)initWithDictionary:(id)dictionary;
- (IHSchemaIHModelEvaluationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation IHSchemaIHModelEvaluationEnded

- (IHSchemaIHModelEvaluationEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = IHSchemaIHModelEvaluationEnded;
  v5 = [(IHSchemaIHModelEvaluationEnded *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[IHSchemaIHScore alloc] initWithDictionary:v6];
      [(IHSchemaIHModelEvaluationEnded *)v5 setScore:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (IHSchemaIHModelEvaluationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IHSchemaIHModelEvaluationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IHSchemaIHModelEvaluationEnded *)self dictionaryRepresentation];
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
  if (self->_score)
  {
    score = [(IHSchemaIHModelEvaluationEnded *)self score];
    dictionaryRepresentation = [score dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"score"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"score"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    score = [(IHSchemaIHModelEvaluationEnded *)self score];
    score2 = [equalCopy score];
    v7 = score2;
    if ((score != 0) != (score2 == 0))
    {
      score3 = [(IHSchemaIHModelEvaluationEnded *)self score];
      if (!score3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = score3;
      score4 = [(IHSchemaIHModelEvaluationEnded *)self score];
      score5 = [equalCopy score];
      v12 = [score4 isEqual:score5];

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
  score = [(IHSchemaIHModelEvaluationEnded *)self score];

  if (score)
  {
    score2 = [(IHSchemaIHModelEvaluationEnded *)self score];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = IHSchemaIHModelEvaluationEnded;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(IHSchemaIHModelEvaluationEnded *)self score:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(IHSchemaIHModelEvaluationEnded *)self deleteScore];
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