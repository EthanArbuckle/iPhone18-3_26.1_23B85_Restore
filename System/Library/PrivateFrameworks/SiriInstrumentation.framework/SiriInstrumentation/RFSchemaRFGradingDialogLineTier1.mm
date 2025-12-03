@interface RFSchemaRFGradingDialogLineTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (RFSchemaRFGradingDialogLineTier1)initWithDictionary:(id)dictionary;
- (RFSchemaRFGradingDialogLineTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation RFSchemaRFGradingDialogLineTier1

- (RFSchemaRFGradingDialogLineTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = RFSchemaRFGradingDialogLineTier1;
  v5 = [(RFSchemaRFGradingDialogLineTier1 *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dialogId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RFSchemaRFGradingDialogLineTier1 *)v5 setDialogId:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isApprovedForGrading"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFGradingDialogLineTier1 setIsApprovedForGrading:](v5, "setIsApprovedForGrading:", [v8 BOOLValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"spokenDialog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(RFSchemaRFGradingDialogLineTier1 *)v5 setSpokenDialog:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"displayedDialog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [v11 copy];
      [(RFSchemaRFGradingDialogLineTier1 *)v5 setDisplayedDialog:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (RFSchemaRFGradingDialogLineTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(RFSchemaRFGradingDialogLineTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(RFSchemaRFGradingDialogLineTier1 *)self dictionaryRepresentation];
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
  if (self->_dialogId)
  {
    dialogId = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];
    v5 = [dialogId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"dialogId"];
  }

  if (self->_displayedDialog)
  {
    displayedDialog = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];
    v7 = [displayedDialog copy];
    [dictionary setObject:v7 forKeyedSubscript:@"displayedDialog"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[RFSchemaRFGradingDialogLineTier1 isApprovedForGrading](self, "isApprovedForGrading")}];
    [dictionary setObject:v8 forKeyedSubscript:@"isApprovedForGrading"];
  }

  if (self->_spokenDialog)
  {
    spokenDialog = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];
    v10 = [spokenDialog copy];
    [dictionary setObject:v10 forKeyedSubscript:@"spokenDialog"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_dialogId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_isApprovedForGrading;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_spokenDialog hash];
  return v5 ^ v6 ^ [(NSString *)self->_displayedDialog hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  dialogId = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];
  dialogId2 = [equalCopy dialogId];
  if ((dialogId != 0) == (dialogId2 == 0))
  {
    goto LABEL_19;
  }

  dialogId3 = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];
  if (dialogId3)
  {
    v8 = dialogId3;
    dialogId4 = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];
    dialogId5 = [equalCopy dialogId];
    v11 = [dialogId4 isEqual:dialogId5];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (equalCopy[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    isApprovedForGrading = self->_isApprovedForGrading;
    if (isApprovedForGrading != [equalCopy isApprovedForGrading])
    {
      goto LABEL_20;
    }
  }

  dialogId = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];
  dialogId2 = [equalCopy spokenDialog];
  if ((dialogId != 0) == (dialogId2 == 0))
  {
    goto LABEL_19;
  }

  spokenDialog = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];
  if (spokenDialog)
  {
    v14 = spokenDialog;
    spokenDialog2 = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];
    spokenDialog3 = [equalCopy spokenDialog];
    v17 = [spokenDialog2 isEqual:spokenDialog3];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  dialogId = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];
  dialogId2 = [equalCopy displayedDialog];
  if ((dialogId != 0) != (dialogId2 == 0))
  {
    displayedDialog = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];
    if (!displayedDialog)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = displayedDialog;
    displayedDialog2 = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];
    displayedDialog3 = [equalCopy displayedDialog];
    v22 = [displayedDialog2 isEqual:displayedDialog3];

    if (v22)
    {
      goto LABEL_23;
    }
  }

  else
  {
LABEL_19:
  }

LABEL_20:
  v23 = 0;
LABEL_21:

  return v23;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dialogId = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];

  if (dialogId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  spokenDialog = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];

  if (spokenDialog)
  {
    PBDataWriterWriteStringField();
  }

  displayedDialog = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];

  v7 = toCopy;
  if (displayedDialog)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = RFSchemaRFGradingDialogLineTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteSpokenDialog];
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteDisplayedDialog];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteSpokenDialog];
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteDisplayedDialog];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteSpokenDialog];
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteDisplayedDialog];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteSpokenDialog];
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteDisplayedDialog];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteSpokenDialog];
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteDisplayedDialog];
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