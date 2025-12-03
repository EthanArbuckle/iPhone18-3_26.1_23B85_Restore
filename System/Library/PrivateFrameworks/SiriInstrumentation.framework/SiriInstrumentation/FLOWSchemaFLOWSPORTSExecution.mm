@interface FLOWSchemaFLOWSPORTSExecution
- (BOOL)isEqual:(id)equal;
- (FLOWSchemaFLOWSPORTSExecution)initWithDictionary:(id)dictionary;
- (FLOWSchemaFLOWSPORTSExecution)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsDisambiguation:(BOOL)disambiguation;
- (void)setHasIsLiveScoreRequest:(BOOL)request;
- (void)setHasIsMachineUtterance:(BOOL)utterance;
- (void)setHasIsSnippetNextCardRequest:(BOOL)request;
- (void)setHasIsSportsWatchFaceRequest:(BOOL)request;
- (void)writeTo:(id)to;
@end

@implementation FLOWSchemaFLOWSPORTSExecution

- (FLOWSchemaFLOWSPORTSExecution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = FLOWSchemaFLOWSPORTSExecution;
  v5 = [(FLOWSchemaFLOWSPORTSExecution *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"sportsUsecase"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSPORTSExecution setSportsUsecase:](v5, "setSportsUsecase:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isSportsWatchFaceRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSPORTSExecution setIsSportsWatchFaceRequest:](v5, "setIsSportsWatchFaceRequest:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isSnippetNextCardRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSPORTSExecution setIsSnippetNextCardRequest:](v5, "setIsSnippetNextCardRequest:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"isMachineUtterance"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSPORTSExecution setIsMachineUtterance:](v5, "setIsMachineUtterance:", [v9 BOOLValue]);
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"isDisambiguation"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSPORTSExecution setIsDisambiguation:](v5, "setIsDisambiguation:", [v10 BOOLValue]);
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"isLiveScoreRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[FLOWSchemaFLOWSPORTSExecution setIsLiveScoreRequest:](v5, "setIsLiveScoreRequest:", [v11 BOOLValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (FLOWSchemaFLOWSPORTSExecution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(FLOWSchemaFLOWSPORTSExecution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(FLOWSchemaFLOWSPORTSExecution *)self dictionaryRepresentation];
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
  v4 = *(&self->_isLiveScoreRequest + 1);
  if ((v4 & 0x10) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSPORTSExecution isDisambiguation](self, "isDisambiguation")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isDisambiguation"];

    v4 = *(&self->_isLiveScoreRequest + 1);
    if ((v4 & 0x20) == 0)
    {
LABEL_3:
      if ((v4 & 8) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((*(&self->_isLiveScoreRequest + 1) & 0x20) == 0)
  {
    goto LABEL_3;
  }

  v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSPORTSExecution isLiveScoreRequest](self, "isLiveScoreRequest")}];
  [dictionary setObject:v6 forKeyedSubscript:@"isLiveScoreRequest"];

  v4 = *(&self->_isLiveScoreRequest + 1);
  if ((v4 & 8) == 0)
  {
LABEL_4:
    if ((v4 & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSPORTSExecution isMachineUtterance](self, "isMachineUtterance")}];
  [dictionary setObject:v7 forKeyedSubscript:@"isMachineUtterance"];

  v4 = *(&self->_isLiveScoreRequest + 1);
  if ((v4 & 4) == 0)
  {
LABEL_5:
    if ((v4 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSPORTSExecution isSportsWatchFaceRequest](self, "isSportsWatchFaceRequest")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isSportsWatchFaceRequest"];

    if (!*(&self->_isLiveScoreRequest + 1))
    {
      goto LABEL_17;
    }

LABEL_13:
    v10 = [(FLOWSchemaFLOWSPORTSExecution *)self sportsUsecase]- 1;
    if (v10 > 0x1E)
    {
      v11 = @"FLOWSPORTSUSECASE_UNKNOWN";
    }

    else
    {
      v11 = off_1E78D6238[v10];
    }

    [dictionary setObject:v11 forKeyedSubscript:@"sportsUsecase"];
    goto LABEL_17;
  }

LABEL_11:
  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[FLOWSchemaFLOWSPORTSExecution isSnippetNextCardRequest](self, "isSnippetNextCardRequest")}];
  [dictionary setObject:v8 forKeyedSubscript:@"isSnippetNextCardRequest"];

  v4 = *(&self->_isLiveScoreRequest + 1);
  if ((v4 & 2) != 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_17:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isLiveScoreRequest + 1))
  {
    v2 = 2654435761 * self->_sportsUsecase;
    if ((*(&self->_isLiveScoreRequest + 1) & 2) != 0)
    {
LABEL_3:
      v3 = 2654435761 * self->_isSportsWatchFaceRequest;
      if ((*(&self->_isLiveScoreRequest + 1) & 4) != 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v2 = 0;
    if ((*(&self->_isLiveScoreRequest + 1) & 2) != 0)
    {
      goto LABEL_3;
    }
  }

  v3 = 0;
  if ((*(&self->_isLiveScoreRequest + 1) & 4) != 0)
  {
LABEL_4:
    v4 = 2654435761 * self->_isSnippetNextCardRequest;
    if ((*(&self->_isLiveScoreRequest + 1) & 8) != 0)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_10:
  v4 = 0;
  if ((*(&self->_isLiveScoreRequest + 1) & 8) != 0)
  {
LABEL_5:
    v5 = 2654435761 * self->_isMachineUtterance;
    if ((*(&self->_isLiveScoreRequest + 1) & 0x10) != 0)
    {
      goto LABEL_6;
    }

LABEL_12:
    v6 = 0;
    if ((*(&self->_isLiveScoreRequest + 1) & 0x20) != 0)
    {
      goto LABEL_7;
    }

LABEL_13:
    v7 = 0;
    return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
  }

LABEL_11:
  v5 = 0;
  if ((*(&self->_isLiveScoreRequest + 1) & 0x10) == 0)
  {
    goto LABEL_12;
  }

LABEL_6:
  v6 = 2654435761 * self->_isDisambiguation;
  if ((*(&self->_isLiveScoreRequest + 1) & 0x20) == 0)
  {
    goto LABEL_13;
  }

LABEL_7:
  v7 = 2654435761 * self->_isLiveScoreRequest;
  return v3 ^ v2 ^ v4 ^ v5 ^ v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_26;
  }

  v5 = *(&self->_isLiveScoreRequest + 1);
  v6 = equalCopy[17];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_26;
  }

  if (v5)
  {
    sportsUsecase = self->_sportsUsecase;
    if (sportsUsecase != [equalCopy sportsUsecase])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_isLiveScoreRequest + 1);
    v6 = equalCopy[17];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_26;
  }

  if (v8)
  {
    isSportsWatchFaceRequest = self->_isSportsWatchFaceRequest;
    if (isSportsWatchFaceRequest != [equalCopy isSportsWatchFaceRequest])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_isLiveScoreRequest + 1);
    v6 = equalCopy[17];
  }

  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_26;
  }

  if (v10)
  {
    isSnippetNextCardRequest = self->_isSnippetNextCardRequest;
    if (isSnippetNextCardRequest != [equalCopy isSnippetNextCardRequest])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_isLiveScoreRequest + 1);
    v6 = equalCopy[17];
  }

  v12 = (v5 >> 3) & 1;
  if (v12 != ((v6 >> 3) & 1))
  {
    goto LABEL_26;
  }

  if (v12)
  {
    isMachineUtterance = self->_isMachineUtterance;
    if (isMachineUtterance != [equalCopy isMachineUtterance])
    {
      goto LABEL_26;
    }

    v5 = *(&self->_isLiveScoreRequest + 1);
    v6 = equalCopy[17];
  }

  v14 = (v5 >> 4) & 1;
  if (v14 != ((v6 >> 4) & 1))
  {
    goto LABEL_26;
  }

  if (v14)
  {
    isDisambiguation = self->_isDisambiguation;
    if (isDisambiguation == [equalCopy isDisambiguation])
    {
      v5 = *(&self->_isLiveScoreRequest + 1);
      v6 = equalCopy[17];
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
    isLiveScoreRequest = self->_isLiveScoreRequest;
    if (isLiveScoreRequest != [equalCopy isLiveScoreRequest])
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
  v4 = *(&self->_isLiveScoreRequest + 1);
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v4 = *(&self->_isLiveScoreRequest + 1);
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

  else if ((*(&self->_isLiveScoreRequest + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isLiveScoreRequest + 1);
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
  v4 = *(&self->_isLiveScoreRequest + 1);
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
  PBDataWriterWriteBOOLField();
  v4 = *(&self->_isLiveScoreRequest + 1);
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
  if ((*(&self->_isLiveScoreRequest + 1) & 0x20) != 0)
  {
LABEL_7:
    PBDataWriterWriteBOOLField();
  }

LABEL_8:
}

- (void)setHasIsLiveScoreRequest:(BOOL)request
{
  if (request)
  {
    v3 = 32;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLiveScoreRequest + 1) = *(&self->_isLiveScoreRequest + 1) & 0xDF | v3;
}

- (void)setHasIsDisambiguation:(BOOL)disambiguation
{
  if (disambiguation)
  {
    v3 = 16;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLiveScoreRequest + 1) = *(&self->_isLiveScoreRequest + 1) & 0xEF | v3;
}

- (void)setHasIsMachineUtterance:(BOOL)utterance
{
  if (utterance)
  {
    v3 = 8;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLiveScoreRequest + 1) = *(&self->_isLiveScoreRequest + 1) & 0xF7 | v3;
}

- (void)setHasIsSnippetNextCardRequest:(BOOL)request
{
  if (request)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLiveScoreRequest + 1) = *(&self->_isLiveScoreRequest + 1) & 0xFB | v3;
}

- (void)setHasIsSportsWatchFaceRequest:(BOOL)request
{
  if (request)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isLiveScoreRequest + 1) = *(&self->_isLiveScoreRequest + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end