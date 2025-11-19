@interface PLUSSchemaPLUSContactSuggesterRequestMetadataReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggesterRequestMetadataReported)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSContactSuggesterRequestMetadataReported)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsForcePromptUsed:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSContactSuggesterRequestMetadataReported

- (PLUSSchemaPLUSContactSuggesterRequestMetadataReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = PLUSSchemaPLUSContactSuggesterRequestMetadataReported;
  v5 = [(PLUSSchemaPLUSContactSuggesterRequestMetadataReported *)&v10 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isPlusContactSuggesterEnabled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggesterRequestMetadataReported setIsPlusContactSuggesterEnabled:](v5, "setIsPlusContactSuggesterEnabled:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isForcePromptUsed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggesterRequestMetadataReported setIsForcePromptUsed:](v5, "setIsForcePromptUsed:", [v7 BOOLValue]);
    }

    v8 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggesterRequestMetadataReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggesterRequestMetadataReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSContactSuggesterRequestMetadataReported *)self dictionaryRepresentation];
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
  v4 = *(&self->_isForcePromptUsed + 1);
  if ((v4 & 2) != 0)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSContactSuggesterRequestMetadataReported isForcePromptUsed](self, "isForcePromptUsed")}];
    [v3 setObject:v5 forKeyedSubscript:@"isForcePromptUsed"];

    v4 = *(&self->_isForcePromptUsed + 1);
  }

  if (v4)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSContactSuggesterRequestMetadataReported isPlusContactSuggesterEnabled](self, "isPlusContactSuggesterEnabled")}];
    [v3 setObject:v6 forKeyedSubscript:@"isPlusContactSuggesterEnabled"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  if (*(&self->_isForcePromptUsed + 1))
  {
    v2 = 2654435761 * self->_isPlusContactSuggesterEnabled;
    if ((*(&self->_isForcePromptUsed + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = 0;
    return v3 ^ v2;
  }

  v2 = 0;
  if ((*(&self->_isForcePromptUsed + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = 2654435761 * self->_isForcePromptUsed;
  return v3 ^ v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_10;
  }

  v5 = *(&self->_isForcePromptUsed + 1);
  v6 = v4[10];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_10;
  }

  if (v5)
  {
    isPlusContactSuggesterEnabled = self->_isPlusContactSuggesterEnabled;
    if (isPlusContactSuggesterEnabled != [v4 isPlusContactSuggesterEnabled])
    {
LABEL_10:
      v10 = 0;
      goto LABEL_11;
    }

    v5 = *(&self->_isForcePromptUsed + 1);
    v6 = v4[10];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_10;
  }

  if (v8)
  {
    isForcePromptUsed = self->_isForcePromptUsed;
    if (isForcePromptUsed != [v4 isForcePromptUsed])
    {
      goto LABEL_10;
    }
  }

  v10 = 1;
LABEL_11:

  return v10;
}

- (void)writeTo:(id)a3
{
  v4 = a3;
  v5 = *(&self->_isForcePromptUsed + 1);
  v6 = v4;
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
    v5 = *(&self->_isForcePromptUsed + 1);
  }

  if ((v5 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v4 = v6;
  }
}

- (void)setHasIsForcePromptUsed:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isForcePromptUsed + 1) = *(&self->_isForcePromptUsed + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end