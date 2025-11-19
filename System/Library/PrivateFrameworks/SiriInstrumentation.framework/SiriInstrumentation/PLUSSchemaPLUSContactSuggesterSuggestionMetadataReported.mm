@interface PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)initWithDictionary:(id)a3;
- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsSuggestionPresentInModelOutput:(BOOL)a3;
- (void)writeTo:(id)a3;
@end

@implementation PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported

- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)initWithDictionary:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported;
  v5 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)&v12 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"suggestionId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SISchemaUUID alloc] initWithDictionary:v6];
      [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)v5 setSuggestionId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isDuplicateSuggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported setIsDuplicateSuggestion:](v5, "setIsDuplicateSuggestion:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"isSuggestionPresentInModelOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported setIsSuggestionPresentInModelOutput:](v5, "setIsSuggestionPresentInModelOutput:", [v9 BOOLValue]);
    }

    v10 = v5;
  }

  return v5;
}

- (PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self dictionaryRepresentation];
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
  v4 = *(&self->_isSuggestionPresentInModelOutput + 1);
  if (v4)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported isDuplicateSuggestion](self, "isDuplicateSuggestion")}];
    [v3 setObject:v5 forKeyedSubscript:@"isDuplicateSuggestion"];

    v4 = *(&self->_isSuggestionPresentInModelOutput + 1);
  }

  if ((v4 & 2) != 0)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithBool:{-[PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported isSuggestionPresentInModelOutput](self, "isSuggestionPresentInModelOutput")}];
    [v3 setObject:v6 forKeyedSubscript:@"isSuggestionPresentInModelOutput"];
  }

  if (self->_suggestionId)
  {
    v7 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"suggestionId"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"suggestionId"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(SISchemaUUID *)self->_suggestionId hash];
  if (*(&self->_isSuggestionPresentInModelOutput + 1))
  {
    v4 = 2654435761 * self->_isDuplicateSuggestion;
    if ((*(&self->_isSuggestionPresentInModelOutput + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v5 = 0;
    return v4 ^ v3 ^ v5;
  }

  v4 = 0;
  if ((*(&self->_isSuggestionPresentInModelOutput + 1) & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = 2654435761 * self->_isSuggestionPresentInModelOutput;
  return v4 ^ v3 ^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  v5 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
  v6 = [v4 suggestionId];
  v7 = v6;
  if ((v5 != 0) == (v6 == 0))
  {

    goto LABEL_16;
  }

  v8 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
  if (v8)
  {
    v9 = v8;
    v10 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
    v11 = [v4 suggestionId];
    v12 = [v10 isEqual:v11];

    if (!v12)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v13 = *(&self->_isSuggestionPresentInModelOutput + 1);
  v14 = v4[18];
  if ((v13 & 1) != (v14 & 1))
  {
LABEL_16:
    v18 = 0;
    goto LABEL_17;
  }

  if (v13)
  {
    isDuplicateSuggestion = self->_isDuplicateSuggestion;
    if (isDuplicateSuggestion == [v4 isDuplicateSuggestion])
    {
      v13 = *(&self->_isSuggestionPresentInModelOutput + 1);
      v14 = v4[18];
      goto LABEL_12;
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = (v13 >> 1) & 1;
  if (v16 != ((v14 >> 1) & 1))
  {
    goto LABEL_16;
  }

  if (v16)
  {
    isSuggestionPresentInModelOutput = self->_isSuggestionPresentInModelOutput;
    if (isSuggestionPresentInModelOutput != [v4 isSuggestionPresentInModelOutput])
    {
      goto LABEL_16;
    }
  }

  v18 = 1;
LABEL_17:

  return v18;
}

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];

  if (v4)
  {
    v5 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId];
    PBDataWriterWriteSubmessage();
  }

  v6 = *(&self->_isSuggestionPresentInModelOutput + 1);
  if (v6)
  {
    PBDataWriterWriteBOOLField();
    v6 = *(&self->_isSuggestionPresentInModelOutput + 1);
  }

  v7 = v8;
  if ((v6 & 2) != 0)
  {
    PBDataWriterWriteBOOLField();
    v7 = v8;
  }
}

- (void)setHasIsSuggestionPresentInModelOutput:(BOOL)a3
{
  if (a3)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isSuggestionPresentInModelOutput + 1) = *(&self->_isSuggestionPresentInModelOutput + 1) & 0xFD | v3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v9.receiver = self;
  v9.super_class = PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported;
  v4 = a3;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:v4];
  v6 = [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self suggestionId:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:v4];

  LODWORD(v4) = [v7 suppressMessage];
  if (v4)
  {
    [(PLUSSchemaPLUSContactSuggesterSuggestionMetadataReported *)self deleteSuggestionId];
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