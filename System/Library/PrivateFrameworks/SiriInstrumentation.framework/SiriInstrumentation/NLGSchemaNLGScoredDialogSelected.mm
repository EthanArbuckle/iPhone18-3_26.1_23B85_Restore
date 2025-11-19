@interface NLGSchemaNLGScoredDialogSelected
- (BOOL)isEqual:(id)a3;
- (NLGSchemaNLGScoredDialogSelected)initWithDictionary:(id)a3;
- (NLGSchemaNLGScoredDialogSelected)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation NLGSchemaNLGScoredDialogSelected

- (NLGSchemaNLGScoredDialogSelected)initWithDictionary:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = NLGSchemaNLGScoredDialogSelected;
  v5 = [(NLGSchemaNLGScoredDialogSelected *)&v14 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dialogScorer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLGSchemaNLGDialogScorer alloc] initWithDictionary:v6];
      [(NLGSchemaNLGScoredDialogSelected *)v5 setDialogScorer:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"dialogCandidateStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLGSchemaNLGDialogCandidateStatistics alloc] initWithDictionary:v8];
      [(NLGSchemaNLGScoredDialogSelected *)v5 setDialogCandidateStatistics:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"selectedScoredDialog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[NLGSchemaNLGScoredDialog alloc] initWithDictionary:v10];
      [(NLGSchemaNLGScoredDialogSelected *)v5 setSelectedScoredDialog:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (NLGSchemaNLGScoredDialogSelected)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(NLGSchemaNLGScoredDialogSelected *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(NLGSchemaNLGScoredDialogSelected *)self dictionaryRepresentation];
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
  if (self->_dialogCandidateStatistics)
  {
    v4 = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"dialogCandidateStatistics"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"dialogCandidateStatistics"];
    }
  }

  if (self->_dialogScorer)
  {
    v7 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
    v8 = [v7 dictionaryRepresentation];
    if (v8)
    {
      [v3 setObject:v8 forKeyedSubscript:@"dialogScorer"];
    }

    else
    {
      v9 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v9 forKeyedSubscript:@"dialogScorer"];
    }
  }

  if (self->_selectedScoredDialog)
  {
    v10 = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
    v11 = [v10 dictionaryRepresentation];
    if (v11)
    {
      [v3 setObject:v11 forKeyedSubscript:@"selectedScoredDialog"];
    }

    else
    {
      v12 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v12 forKeyedSubscript:@"selectedScoredDialog"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  v3 = [(NLGSchemaNLGDialogScorer *)self->_dialogScorer hash];
  v4 = [(NLGSchemaNLGDialogCandidateStatistics *)self->_dialogCandidateStatistics hash]^ v3;
  return v4 ^ [(NLGSchemaNLGScoredDialog *)self->_selectedScoredDialog hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  v5 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
  v6 = [v4 dialogScorer];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v7 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
  if (v7)
  {
    v8 = v7;
    v9 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
    v10 = [v4 dialogScorer];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
  v6 = [v4 dialogCandidateStatistics];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_16;
  }

  v12 = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
  if (v12)
  {
    v13 = v12;
    v14 = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
    v15 = [v4 dialogCandidateStatistics];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  v5 = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
  v6 = [v4 selectedScoredDialog];
  if ((v5 != 0) != (v6 == 0))
  {
    v17 = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
    if (!v17)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = v17;
    v19 = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
    v20 = [v4 selectedScoredDialog];
    v21 = [v19 isEqual:v20];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (void)writeTo:(id)a3
{
  v11 = a3;
  v4 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];

  if (v4)
  {
    v5 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
    PBDataWriterWriteSubmessage();
  }

  v6 = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];

  if (v6)
  {
    v7 = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
    PBDataWriterWriteSubmessage();
  }

  v8 = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];

  v9 = v11;
  if (v8)
  {
    v10 = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
    PBDataWriterWriteSubmessage();

    v9 = v11;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = NLGSchemaNLGScoredDialogSelected;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:v4];
  v6 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(NLGSchemaNLGScoredDialogSelected *)self deleteDialogScorer];
  }

  v9 = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(NLGSchemaNLGScoredDialogSelected *)self deleteDialogCandidateStatistics];
  }

  v12 = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
  v13 = [v12 applySensitiveConditionsPolicy:v4];
  v14 = [v13 suppressMessage];

  if (v14)
  {
    [(NLGSchemaNLGScoredDialogSelected *)self deleteSelectedScoredDialog];
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