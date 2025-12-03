@interface CLPInstSchemaCLPNLv4SampleEvaluationEnded
- (BOOL)isEqual:(id)equal;
- (CLPInstSchemaCLPNLv4SampleEvaluationEnded)initWithDictionary:(id)dictionary;
- (CLPInstSchemaCLPNLv4SampleEvaluationEnded)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasEvaluationResult:(BOOL)result;
- (void)setHasEvaluationResultOnTheFirstUserParse:(BOOL)parse;
- (void)setHasMatchedIndex:(BOOL)index;
- (void)setHasUserProfileSandboxRequested:(BOOL)requested;
- (void)setHasUserStatedTaskOnTheFirstUserParse:(BOOL)parse;
- (void)writeTo:(id)to;
@end

@implementation CLPInstSchemaCLPNLv4SampleEvaluationEnded

- (CLPInstSchemaCLPNLv4SampleEvaluationEnded)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = CLPInstSchemaCLPNLv4SampleEvaluationEnded;
  v5 = [(CLPInstSchemaCLPNLv4SampleEvaluationEnded *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"evaluated"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationEnded setEvaluated:](v5, "setEvaluated:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"evaluationResultOnTheFirstUserParse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationEnded setEvaluationResultOnTheFirstUserParse:](v5, "setEvaluationResultOnTheFirstUserParse:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"userStatedTaskOnTheFirstUserParse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationEnded setUserStatedTaskOnTheFirstUserParse:](v5, "setUserStatedTaskOnTheFirstUserParse:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"matchedIndex"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationEnded setMatchedIndex:](v5, "setMatchedIndex:", [v9 intValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"evaluationResult"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationEnded setEvaluationResult:](v5, "setEvaluationResult:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"userProfileSandboxRequested"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[CLPInstSchemaCLPNLv4SampleEvaluationEnded setUserProfileSandboxRequested:](v5, "setUserProfileSandboxRequested:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (CLPInstSchemaCLPNLv4SampleEvaluationEnded)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(CLPInstSchemaCLPNLv4SampleEvaluationEnded *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(CLPInstSchemaCLPNLv4SampleEvaluationEnded *)self dictionaryRepresentation];
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
  v4 = *(&self->_userProfileSandboxRequested + 1);
  if (v4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4SampleEvaluationEnded evaluated](self, "evaluated")}];
    [dictionary setObject:v7 forKeyedSubscript:@"evaluated"];

    v4 = *(&self->_userProfileSandboxRequested + 1);
    if ((v4 & 0x10) == 0)
    {
LABEL_3:
      if ((v4 & 2) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(&self->_userProfileSandboxRequested + 1) & 0x10) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4SampleEvaluationEnded evaluationResult](self, "evaluationResult")}];
  [dictionary setObject:v8 forKeyedSubscript:@"evaluationResult"];

  v4 = *(&self->_userProfileSandboxRequested + 1);
  if ((v4 & 2) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4SampleEvaluationEnded evaluationResultOnTheFirstUserParse](self, "evaluationResultOnTheFirstUserParse")}];
  [dictionary setObject:v9 forKeyedSubscript:@"evaluationResultOnTheFirstUserParse"];

  v4 = *(&self->_userProfileSandboxRequested + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  v10 = [MEMORY[0x1E696AD98] numberWithInt:{-[CLPInstSchemaCLPNLv4SampleEvaluationEnded matchedIndex](self, "matchedIndex")}];
  [dictionary setObject:v10 forKeyedSubscript:@"matchedIndex"];

  v4 = *(&self->_userProfileSandboxRequested + 1);
  if ((v4 & 0x20) == 0)
  {
LABEL_6:
    if ((v4 & 4) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  v11 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4SampleEvaluationEnded userProfileSandboxRequested](self, "userProfileSandboxRequested")}];
  [dictionary setObject:v11 forKeyedSubscript:@"userProfileSandboxRequested"];

  if ((*(&self->_userProfileSandboxRequested + 1) & 4) != 0)
  {
LABEL_7:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[CLPInstSchemaCLPNLv4SampleEvaluationEnded userStatedTaskOnTheFirstUserParse](self, "userStatedTaskOnTheFirstUserParse")}];
    [dictionary setObject:v5 forKeyedSubscript:@"userStatedTaskOnTheFirstUserParse"];
  }

LABEL_8:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_userProfileSandboxRequested + 1))
  {
    v2 = 2654435761 * self->_evaluated;
    if ((*(&self->_userProfileSandboxRequested + 1) & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_evaluationResultOnTheFirstUserParse;
      if ((*(&self->_userProfileSandboxRequested + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*(&self->_userProfileSandboxRequested + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(&self->_userProfileSandboxRequested + 1) & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_userStatedTaskOnTheFirstUserParse;
    if ((*(&self->_userProfileSandboxRequested + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*(&self->_userProfileSandboxRequested + 1) & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_matchedIndex;
    if ((*(&self->_userProfileSandboxRequested + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*(&self->_userProfileSandboxRequested + 1) & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*(&self->_userProfileSandboxRequested + 1) & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_evaluationResult;
  if ((*(&self->_userProfileSandboxRequested + 1) & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_userProfileSandboxRequested;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(&self->_userProfileSandboxRequested + 1);
  v6 = equalCopy[18];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (v5)
  {
    evaluated = self->_evaluated;
    if (evaluated != [equalCopy evaluated])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_userProfileSandboxRequested + 1);
    v6 = equalCopy[18];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_26;
  }

  if (v8)
  {
    evaluationResultOnTheFirstUserParse = self->_evaluationResultOnTheFirstUserParse;
    if (evaluationResultOnTheFirstUserParse != [equalCopy evaluationResultOnTheFirstUserParse])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_userProfileSandboxRequested + 1);
    v6 = equalCopy[18];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_26;
  }

  if (v10)
  {
    userStatedTaskOnTheFirstUserParse = self->_userStatedTaskOnTheFirstUserParse;
    if (userStatedTaskOnTheFirstUserParse != [equalCopy userStatedTaskOnTheFirstUserParse])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_userProfileSandboxRequested + 1);
    v6 = equalCopy[18];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_26;
  }

  if (v12)
  {
    matchedIndex = self->_matchedIndex;
    if (matchedIndex != [equalCopy matchedIndex])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_userProfileSandboxRequested + 1);
    v6 = equalCopy[18];
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_26;
  }

  if (v14)
  {
    evaluationResult = self->_evaluationResult;
    if (evaluationResult == [equalCopy evaluationResult])
    {
      v5 = *(&self->_userProfileSandboxRequested + 1);
      v6 = equalCopy[18];
      goto LABEL_22;
    }

LABEL_26:
    v18 = 0;
    goto LABEL_27;
  }

LABEL_22:
  v16 = (v5 >> 5) & 1;
  if (v16 != ((v6 >> 5) & 1))
  {
    goto LABEL_26;
  }

  if (v16)
  {
    userProfileSandboxRequested = self->_userProfileSandboxRequested;
    if (userProfileSandboxRequested != [equalCopy userProfileSandboxRequested])
    {
      goto LABEL_26;
    }
  }

  v18 = 1;
LABEL_27:

  return v18;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v4 = *(&self->_userProfileSandboxRequested + 1);
  if (v4)
  {
    PBDataWriterWriteBOOLField();
    v4 = *(&self->_userProfileSandboxRequested + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_13;
    }
  }

  else if ((*(&self->_userProfileSandboxRequested + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = *(&self->_userProfileSandboxRequested + 1);
  if ((v4 & 4) == 0)
  {
LABEL_4:
    if ((v4 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_14;
  }

LABEL_13:
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_userProfileSandboxRequested + 1);
  if ((v4 & 8) == 0)
  {
LABEL_5:
    if ((v4 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

LABEL_14:
  PBDataWriterWriteInt32Field();
  v4 = *(&self->_userProfileSandboxRequested + 1);
  if ((v4 & 0x10) == 0)
  {
LABEL_6:
    if ((v4 & 0x20) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_15:
  PBDataWriterWriteBOOLField();
  if ((*(&self->_userProfileSandboxRequested + 1) & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
}

- (void)setHasUserProfileSandboxRequested:(BOOL)requested
{
  if (requested)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_userProfileSandboxRequested + 1) = *(&self->_userProfileSandboxRequested + 1) & 0xDF | v3;
}

- (void)setHasEvaluationResult:(BOOL)result
{
  if (result)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_userProfileSandboxRequested + 1) = *(&self->_userProfileSandboxRequested + 1) & 0xEF | v3;
}

- (void)setHasMatchedIndex:(BOOL)index
{
  if (index)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_userProfileSandboxRequested + 1) = *(&self->_userProfileSandboxRequested + 1) & 0xF7 | v3;
}

- (void)setHasUserStatedTaskOnTheFirstUserParse:(BOOL)parse
{
  if (parse)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_userProfileSandboxRequested + 1) = *(&self->_userProfileSandboxRequested + 1) & 0xFB | v3;
}

- (void)setHasEvaluationResultOnTheFirstUserParse:(BOOL)parse
{
  if (parse)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_userProfileSandboxRequested + 1) = *(&self->_userProfileSandboxRequested + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end