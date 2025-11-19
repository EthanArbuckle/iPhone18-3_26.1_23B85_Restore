@interface RFSchemaRFGradingDialogLineTier1
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (RFSchemaRFGradingDialogLineTier1)initWithDictionary:(id)a3;
- (RFSchemaRFGradingDialogLineTier1)initWithJSON:(id)a3;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)a3;
@end

@implementation RFSchemaRFGradingDialogLineTier1

- (RFSchemaRFGradingDialogLineTier1)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = RFSchemaRFGradingDialogLineTier1;
  v5 = [(RFSchemaRFGradingDialogLineTier1 *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"dialogId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(RFSchemaRFGradingDialogLineTier1 *)v5 setDialogId:v7];
    }

    v8 = [v4 objectForKeyedSubscript:@"isApprovedForGrading"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[RFSchemaRFGradingDialogLineTier1 setIsApprovedForGrading:](v5, "setIsApprovedForGrading:", [v8 BOOLValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"spokenDialog"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [v9 copy];
      [(RFSchemaRFGradingDialogLineTier1 *)v5 setSpokenDialog:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"displayedDialog"];
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

- (RFSchemaRFGradingDialogLineTier1)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(RFSchemaRFGradingDialogLineTier1 *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(RFSchemaRFGradingDialogLineTier1 *)self dictionaryRepresentation];
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
  if (self->_dialogId)
  {
    v4 = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"dialogId"];
  }

  if (self->_displayedDialog)
  {
    v6 = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];
    v7 = [v6 copy];
    [v3 setObject:v7 forKeyedSubscript:@"displayedDialog"];
  }

  if (*&self->_has)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[RFSchemaRFGradingDialogLineTier1 isApprovedForGrading](self, "isApprovedForGrading")}];
    [v3 setObject:v8 forKeyedSubscript:@"isApprovedForGrading"];
  }

  if (self->_spokenDialog)
  {
    v9 = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];
    v10 = [v9 copy];
    [v3 setObject:v10 forKeyedSubscript:@"spokenDialog"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_20;
  }

  v5 = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];
  v6 = [v4 dialogId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v7 = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];
  if (v7)
  {
    v8 = v7;
    v9 = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];
    v10 = [v4 dialogId];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  if ((*&self->_has & 1) != (v4[40] & 1))
  {
    goto LABEL_20;
  }

  if (*&self->_has)
  {
    isApprovedForGrading = self->_isApprovedForGrading;
    if (isApprovedForGrading != [v4 isApprovedForGrading])
    {
      goto LABEL_20;
    }
  }

  v5 = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];
  v6 = [v4 spokenDialog];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_19;
  }

  v13 = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];
  if (v13)
  {
    v14 = v13;
    v15 = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];
    v16 = [v4 spokenDialog];
    v17 = [v15 isEqual:v16];

    if (!v17)
    {
      goto LABEL_20;
    }
  }

  else
  {
  }

  v5 = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];
  v6 = [v4 displayedDialog];
  if ((v5 != 0) != (v6 == 0))
  {
    v18 = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];
    if (!v18)
    {

LABEL_23:
      v23 = 1;
      goto LABEL_21;
    }

    v19 = v18;
    v20 = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];
    v21 = [v4 displayedDialog];
    v22 = [v20 isEqual:v21];

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

- (void)writeTo:(id)a3
{
  v8 = a3;
  v4 = [(RFSchemaRFGradingDialogLineTier1 *)self dialogId];

  if (v4)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v5 = [(RFSchemaRFGradingDialogLineTier1 *)self spokenDialog];

  if (v5)
  {
    PBDataWriterWriteStringField();
  }

  v6 = [(RFSchemaRFGradingDialogLineTier1 *)self displayedDialog];

  v7 = v8;
  if (v6)
  {
    PBDataWriterWriteStringField();
    v7 = v8;
  }
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = RFSchemaRFGradingDialogLineTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:v4];
  if ([v4 isConditionSet:2])
  {
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteSpokenDialog];
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteDisplayedDialog];
  }

  if ([v4 isConditionSet:4])
  {
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteSpokenDialog];
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteDisplayedDialog];
  }

  if ([v4 isConditionSet:5])
  {
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteSpokenDialog];
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteDisplayedDialog];
  }

  if ([v4 isConditionSet:6])
  {
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteSpokenDialog];
    [(RFSchemaRFGradingDialogLineTier1 *)self deleteDisplayedDialog];
  }

  if ([v4 isConditionSet:7])
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