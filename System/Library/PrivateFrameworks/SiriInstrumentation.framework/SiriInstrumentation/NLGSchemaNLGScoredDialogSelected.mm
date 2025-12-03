@interface NLGSchemaNLGScoredDialogSelected
- (BOOL)isEqual:(id)equal;
- (NLGSchemaNLGScoredDialogSelected)initWithDictionary:(id)dictionary;
- (NLGSchemaNLGScoredDialogSelected)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation NLGSchemaNLGScoredDialogSelected

- (NLGSchemaNLGScoredDialogSelected)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = NLGSchemaNLGScoredDialogSelected;
  v5 = [(NLGSchemaNLGScoredDialogSelected *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dialogScorer"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[NLGSchemaNLGDialogScorer alloc] initWithDictionary:v6];
      [(NLGSchemaNLGScoredDialogSelected *)v5 setDialogScorer:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"dialogCandidateStatistics"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[NLGSchemaNLGDialogCandidateStatistics alloc] initWithDictionary:v8];
      [(NLGSchemaNLGScoredDialogSelected *)v5 setDialogCandidateStatistics:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"selectedScoredDialog"];
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

- (NLGSchemaNLGScoredDialogSelected)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(NLGSchemaNLGScoredDialogSelected *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(NLGSchemaNLGScoredDialogSelected *)self dictionaryRepresentation];
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
  if (self->_dialogCandidateStatistics)
  {
    dialogCandidateStatistics = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
    dictionaryRepresentation = [dialogCandidateStatistics dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dialogCandidateStatistics"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dialogCandidateStatistics"];
    }
  }

  if (self->_dialogScorer)
  {
    dialogScorer = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
    dictionaryRepresentation2 = [dialogScorer dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"dialogScorer"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"dialogScorer"];
    }
  }

  if (self->_selectedScoredDialog)
  {
    selectedScoredDialog = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
    dictionaryRepresentation3 = [selectedScoredDialog dictionaryRepresentation];
    if (dictionaryRepresentation3)
    {
      [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"selectedScoredDialog"];
    }

    else
    {
      null3 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null3 forKeyedSubscript:@"selectedScoredDialog"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NLGSchemaNLGDialogScorer *)self->_dialogScorer hash];
  v4 = [(NLGSchemaNLGDialogCandidateStatistics *)self->_dialogCandidateStatistics hash]^ v3;
  return v4 ^ [(NLGSchemaNLGScoredDialog *)self->_selectedScoredDialog hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  dialogScorer = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
  dialogScorer2 = [equalCopy dialogScorer];
  if ((dialogScorer != 0) == (dialogScorer2 == 0))
  {
    goto LABEL_16;
  }

  dialogScorer3 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
  if (dialogScorer3)
  {
    v8 = dialogScorer3;
    dialogScorer4 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
    dialogScorer5 = [equalCopy dialogScorer];
    v11 = [dialogScorer4 isEqual:dialogScorer5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dialogScorer = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
  dialogScorer2 = [equalCopy dialogCandidateStatistics];
  if ((dialogScorer != 0) == (dialogScorer2 == 0))
  {
    goto LABEL_16;
  }

  dialogCandidateStatistics = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
  if (dialogCandidateStatistics)
  {
    v13 = dialogCandidateStatistics;
    dialogCandidateStatistics2 = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
    dialogCandidateStatistics3 = [equalCopy dialogCandidateStatistics];
    v16 = [dialogCandidateStatistics2 isEqual:dialogCandidateStatistics3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  dialogScorer = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
  dialogScorer2 = [equalCopy selectedScoredDialog];
  if ((dialogScorer != 0) != (dialogScorer2 == 0))
  {
    selectedScoredDialog = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
    if (!selectedScoredDialog)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = selectedScoredDialog;
    selectedScoredDialog2 = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
    selectedScoredDialog3 = [equalCopy selectedScoredDialog];
    v21 = [selectedScoredDialog2 isEqual:selectedScoredDialog3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
  dialogScorer = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];

  if (dialogScorer)
  {
    dialogScorer2 = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
    PBDataWriterWriteSubmessage();
  }

  dialogCandidateStatistics = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];

  if (dialogCandidateStatistics)
  {
    dialogCandidateStatistics2 = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
    PBDataWriterWriteSubmessage();
  }

  selectedScoredDialog = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];

  v9 = toCopy;
  if (selectedScoredDialog)
  {
    selectedScoredDialog2 = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
    PBDataWriterWriteSubmessage();

    v9 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v16.receiver = self;
  v16.super_class = NLGSchemaNLGScoredDialogSelected;
  v5 = [(SISchemaInstrumentationMessage *)&v16 applySensitiveConditionsPolicy:policyCopy];
  dialogScorer = [(NLGSchemaNLGScoredDialogSelected *)self dialogScorer];
  v7 = [dialogScorer applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(NLGSchemaNLGScoredDialogSelected *)self deleteDialogScorer];
  }

  dialogCandidateStatistics = [(NLGSchemaNLGScoredDialogSelected *)self dialogCandidateStatistics];
  v10 = [dialogCandidateStatistics applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(NLGSchemaNLGScoredDialogSelected *)self deleteDialogCandidateStatistics];
  }

  selectedScoredDialog = [(NLGSchemaNLGScoredDialogSelected *)self selectedScoredDialog];
  v13 = [selectedScoredDialog applySensitiveConditionsPolicy:policyCopy];
  suppressMessage3 = [v13 suppressMessage];

  if (suppressMessage3)
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