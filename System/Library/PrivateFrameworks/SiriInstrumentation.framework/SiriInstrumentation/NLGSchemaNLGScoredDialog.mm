@interface NLGSchemaNLGScoredDialog
- (BOOL)isEqual:(id)equal;
- (NLGSchemaNLGScoredDialog)initWithDictionary:(id)dictionary;
- (NLGSchemaNLGScoredDialog)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLGSchemaNLGScoredDialog

- (NLGSchemaNLGScoredDialog)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = NLGSchemaNLGScoredDialog;
  v5 = [(NLGSchemaNLGScoredDialog *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"catFamily"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(NLGSchemaNLGScoredDialog *)v5 setCatFamily:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"catIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(NLGSchemaNLGScoredDialog *)v5 setCatIdentifier:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"scoredDialogIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(NLGSchemaNLGScoredDialog *)v5 setScoredDialogIdentifier:v11];
    }

    v12 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v12 floatValue];
      [(NLGSchemaNLGScoredDialog *)v5 setScore:?];
    }

    v13 = v5;
  }

  return v5;
}

- (NLGSchemaNLGScoredDialog)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLGSchemaNLGScoredDialog *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLGSchemaNLGScoredDialog *)self dictionaryRepresentation];
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
  if (self->_catFamily)
  {
    catFamily = [(NLGSchemaNLGScoredDialog *)self catFamily];
    v5 = [catFamily copy];
    [dictionary setObject:v5 forKeyedSubscript:@"catFamily"];
  }

  if (self->_catIdentifier)
  {
    catIdentifier = [(NLGSchemaNLGScoredDialog *)self catIdentifier];
    v7 = [catIdentifier copy];
    [dictionary setObject:v7 forKeyedSubscript:@"catIdentifier"];
  }

  if (*&self->_has)
  {
    v8 = MEMORY[0x1E696AD98];
    [(NLGSchemaNLGScoredDialog *)self score];
    v9 = [v8 numberWithFloat:?];
    [dictionary setObject:v9 forKeyedSubscript:@"score"];
  }

  if (self->_scoredDialogIdentifier)
  {
    scoredDialogIdentifier = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];
    v11 = [scoredDialogIdentifier copy];
    [dictionary setObject:v11 forKeyedSubscript:@"scoredDialogIdentifier"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_catFamily hash];
  v4 = [(NSString *)self->_catIdentifier hash];
  v5 = [(NSString *)self->_scoredDialogIdentifier hash];
  if (*&self->_has)
  {
    score = self->_score;
    if (score >= 0.0)
    {
      v10 = score;
    }

    else
    {
      v10 = -score;
    }

    *v6.i64 = floor(v10 + 0.5);
    v11 = (v10 - *v6.i64) * 1.84467441e19;
    *v7.i64 = *v6.i64 - trunc(*v6.i64 * 5.42101086e-20) * 1.84467441e19;
    v12.f64[0] = NAN;
    v12.f64[1] = NAN;
    v8 = 2654435761u * *vbslq_s8(vnegq_f64(v12), v7, v6).i64;
    if (v11 >= 0.0)
    {
      if (v11 > 0.0)
      {
        v8 += v11;
      }
    }

    else
    {
      v8 -= fabs(v11);
    }
  }

  else
  {
    v8 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  catFamily = [(NLGSchemaNLGScoredDialog *)self catFamily];
  catFamily2 = [equalCopy catFamily];
  if ((catFamily != 0) == (catFamily2 == 0))
  {
    goto LABEL_16;
  }

  catFamily3 = [(NLGSchemaNLGScoredDialog *)self catFamily];
  if (catFamily3)
  {
    v8 = catFamily3;
    catFamily4 = [(NLGSchemaNLGScoredDialog *)self catFamily];
    catFamily5 = [equalCopy catFamily];
    v11 = [catFamily4 isEqual:catFamily5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  catFamily = [(NLGSchemaNLGScoredDialog *)self catIdentifier];
  catFamily2 = [equalCopy catIdentifier];
  if ((catFamily != 0) == (catFamily2 == 0))
  {
    goto LABEL_16;
  }

  catIdentifier = [(NLGSchemaNLGScoredDialog *)self catIdentifier];
  if (catIdentifier)
  {
    v13 = catIdentifier;
    catIdentifier2 = [(NLGSchemaNLGScoredDialog *)self catIdentifier];
    catIdentifier3 = [equalCopy catIdentifier];
    v16 = [catIdentifier2 isEqual:catIdentifier3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  catFamily = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];
  catFamily2 = [equalCopy scoredDialogIdentifier];
  if ((catFamily != 0) == (catFamily2 == 0))
  {
LABEL_16:

    goto LABEL_17;
  }

  scoredDialogIdentifier = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];
  if (scoredDialogIdentifier)
  {
    v18 = scoredDialogIdentifier;
    scoredDialogIdentifier2 = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];
    scoredDialogIdentifier3 = [equalCopy scoredDialogIdentifier];
    v21 = [scoredDialogIdentifier2 isEqual:scoredDialogIdentifier3];

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) == (equalCopy[36] & 1))
  {
    if ((*&self->_has & 1) == 0 || (score = self->_score, [equalCopy score], score == v25))
    {
      v22 = 1;
      goto LABEL_18;
    }
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  catFamily = [(NLGSchemaNLGScoredDialog *)self catFamily];

  if (catFamily)
  {
    PBDataWriterWriteStringField();
  }

  catIdentifier = [(NLGSchemaNLGScoredDialog *)self catIdentifier];

  if (catIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  scoredDialogIdentifier = [(NLGSchemaNLGScoredDialog *)self scoredDialogIdentifier];

  if (scoredDialogIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v7 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteFloatField();
    v7 = toCopy;
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end