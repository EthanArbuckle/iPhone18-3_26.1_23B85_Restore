@interface IFTSchemaIFTSystemPromptResolutionUserAction
- (BOOL)isEqual:(id)a3;
- (IFTSchemaIFTSystemPromptResolutionActionCancellation)actionCanceled;
- (IFTSchemaIFTSystemPromptResolutionRequirementResolution)requirementAddressed;
- (IFTSchemaIFTSystemPromptResolutionUserAction)initWithDictionary:(id)a3;
- (IFTSchemaIFTSystemPromptResolutionUserAction)initWithJSON:(id)a3;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)a3;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int64_t)disambiguationIndexSelected;
- (unint64_t)hash;
- (void)deleteActionCanceled;
- (void)deleteDisambiguationIndexSelected;
- (void)deleteIsActionConfirmed;
- (void)deleteIsParameterConfirmed;
- (void)deleteRequirementAddressed;
- (void)setActionCanceled:(id)a3;
- (void)setDisambiguationIndexSelected:(int64_t)a3;
- (void)setIsActionConfirmed:(BOOL)a3;
- (void)setIsParameterConfirmed:(BOOL)a3;
- (void)setRequirementAddressed:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation IFTSchemaIFTSystemPromptResolutionUserAction

- (IFTSchemaIFTSystemPromptResolutionUserAction)initWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTSystemPromptResolutionUserAction;
  v5 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)&v15 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"isActionConfirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemPromptResolutionUserAction setIsActionConfirmed:](v5, "setIsActionConfirmed:", [v6 BOOLValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"isParameterConfirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemPromptResolutionUserAction setIsParameterConfirmed:](v5, "setIsParameterConfirmed:", [v7 BOOLValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"disambiguationIndexSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemPromptResolutionUserAction setDisambiguationIndexSelected:](v5, "setDisambiguationIndexSelected:", [v8 longLongValue]);
    }

    v9 = [v4 objectForKeyedSubscript:@"requirementAddressed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTSystemPromptResolutionRequirementResolution alloc] initWithDictionary:v9];
      [(IFTSchemaIFTSystemPromptResolutionUserAction *)v5 setRequirementAddressed:v10];
    }

    v11 = [v4 objectForKeyedSubscript:@"actionCanceled"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = [[IFTSchemaIFTSystemPromptResolutionActionCancellation alloc] initWithDictionary:v11];
      [(IFTSchemaIFTSystemPromptResolutionUserAction *)v5 setActionCanceled:v12];
    }

    v13 = v5;
  }

  return v5;
}

- (IFTSchemaIFTSystemPromptResolutionUserAction)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self dictionaryRepresentation];
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
  if (self->_actionCanceled)
  {
    v4 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
    v5 = [v4 dictionaryRepresentation];
    if (v5)
    {
      [v3 setObject:v5 forKeyedSubscript:@"actionCanceled"];
    }

    else
    {
      v6 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v6 forKeyedSubscript:@"actionCanceled"];
    }
  }

  whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  if (whichOneof_Systempromptresolutionuseraction == 6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTSystemPromptResolutionUserAction disambiguationIndexSelected](self, "disambiguationIndexSelected")}];
    [v3 setObject:v8 forKeyedSubscript:@"disambiguationIndexSelected"];

    whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  }

  if (whichOneof_Systempromptresolutionuseraction == 1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemPromptResolutionUserAction isActionConfirmed](self, "isActionConfirmed")}];
    [v3 setObject:v9 forKeyedSubscript:@"isActionConfirmed"];

    whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  }

  if (whichOneof_Systempromptresolutionuseraction == 3)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemPromptResolutionUserAction isParameterConfirmed](self, "isParameterConfirmed")}];
    [v3 setObject:v10 forKeyedSubscript:@"isParameterConfirmed"];
  }

  if (self->_requirementAddressed)
  {
    v11 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
    v12 = [v11 dictionaryRepresentation];
    if (v12)
    {
      [v3 setObject:v12 forKeyedSubscript:@"requirementAddressed"];
    }

    else
    {
      v13 = [MEMORY[0x1E695DFB0] null];
      [v3 setObject:v13 forKeyedSubscript:@"requirementAddressed"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:v3];

  return v3;
}

- (unint64_t)hash
{
  whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  if (whichOneof_Systempromptresolutionuseraction == 6)
  {
    v5 = 2654435761 * self->_disambiguationIndexSelected;
  }

  else
  {
    if (whichOneof_Systempromptresolutionuseraction == 3)
    {
      v4 = 9;
    }

    else
    {
      if (whichOneof_Systempromptresolutionuseraction != 1)
      {
        v5 = 0;
        goto LABEL_9;
      }

      v4 = 8;
    }

    v5 = 2654435761 * *(&self->super.super.super.isa + v4);
  }

LABEL_9:
  v6 = [(IFTSchemaIFTSystemPromptResolutionRequirementResolution *)self->_requirementAddressed hash];
  return v6 ^ [(IFTSchemaIFTSystemPromptResolutionActionCancellation *)self->_actionCanceled hash]^ v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  if (whichOneof_Systempromptresolutionuseraction != [v4 whichOneof_Systempromptresolutionuseraction])
  {
    goto LABEL_16;
  }

  isActionConfirmed = self->_isActionConfirmed;
  if (isActionConfirmed != [v4 isActionConfirmed])
  {
    goto LABEL_16;
  }

  isParameterConfirmed = self->_isParameterConfirmed;
  if (isParameterConfirmed != [v4 isParameterConfirmed])
  {
    goto LABEL_16;
  }

  disambiguationIndexSelected = self->_disambiguationIndexSelected;
  if (disambiguationIndexSelected != [v4 disambiguationIndexSelected])
  {
    goto LABEL_16;
  }

  v9 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
  v10 = [v4 requirementAddressed];
  if ((v9 != 0) == (v10 == 0))
  {
    goto LABEL_15;
  }

  v11 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
  if (v11)
  {
    v12 = v11;
    v13 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
    v14 = [v4 requirementAddressed];
    v15 = [v13 isEqual:v14];

    if (!v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  v9 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
  v10 = [v4 actionCanceled];
  if ((v9 != 0) != (v10 == 0))
  {
    v16 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
    if (!v16)
    {

LABEL_19:
      v21 = 1;
      goto LABEL_17;
    }

    v17 = v16;
    v18 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
    v19 = [v4 actionCanceled];
    v20 = [v18 isEqual:v19];

    if (v20)
    {
      goto LABEL_19;
    }
  }

  else
  {
LABEL_15:
  }

LABEL_16:
  v21 = 0;
LABEL_17:

  return v21;
}

- (void)writeTo:(id)a3
{
  v10 = a3;
  whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  if (whichOneof_Systempromptresolutionuseraction == 1)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  }

  if (whichOneof_Systempromptresolutionuseraction == 3)
  {
    PBDataWriterWriteBOOLField();
    whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  }

  if (whichOneof_Systempromptresolutionuseraction == 6)
  {
    PBDataWriterWriteInt64Field();
  }

  v5 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];

  if (v5)
  {
    v6 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
    PBDataWriterWriteSubmessage();
  }

  v7 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];

  v8 = v10;
  if (v7)
  {
    v9 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
    PBDataWriterWriteSubmessage();

    v8 = v10;
  }
}

- (void)deleteActionCanceled
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 8)
  {
    self->_whichOneof_Systempromptresolutionuseraction = 0;
    self->_actionCanceled = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSystemPromptResolutionActionCancellation)actionCanceled
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 8)
  {
    v3 = self->_actionCanceled;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setActionCanceled:(id)a3
{
  v4 = a3;
  self->_isActionConfirmed = 0;
  self->_isParameterConfirmed = 0;
  self->_disambiguationIndexSelected = 0;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = 0;

  self->_whichOneof_Systempromptresolutionuseraction = 8 * (v4 != 0);
  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = v4;
}

- (void)deleteRequirementAddressed
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 7)
  {
    self->_whichOneof_Systempromptresolutionuseraction = 0;
    self->_requirementAddressed = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (IFTSchemaIFTSystemPromptResolutionRequirementResolution)requirementAddressed
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 7)
  {
    v3 = self->_requirementAddressed;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setRequirementAddressed:(id)a3
{
  v4 = a3;
  self->_isActionConfirmed = 0;
  self->_isParameterConfirmed = 0;
  self->_disambiguationIndexSelected = 0;
  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = 0;

  v6 = 7;
  if (!v4)
  {
    v6 = 0;
  }

  self->_whichOneof_Systempromptresolutionuseraction = v6;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = v4;
}

- (void)deleteDisambiguationIndexSelected
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 6)
  {
    self->_whichOneof_Systempromptresolutionuseraction = 0;
    self->_disambiguationIndexSelected = 0;
  }
}

- (int64_t)disambiguationIndexSelected
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 6)
  {
    return self->_disambiguationIndexSelected;
  }

  else
  {
    return 0;
  }
}

- (void)setDisambiguationIndexSelected:(int64_t)a3
{
  self->_isActionConfirmed = 0;
  self->_isParameterConfirmed = 0;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = 0;

  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = 0;

  self->_whichOneof_Systempromptresolutionuseraction = 6;
  self->_disambiguationIndexSelected = a3;
}

- (void)deleteIsParameterConfirmed
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 3)
  {
    self->_whichOneof_Systempromptresolutionuseraction = 0;
    self->_isParameterConfirmed = 0;
  }
}

- (void)setIsParameterConfirmed:(BOOL)a3
{
  self->_isActionConfirmed = 0;
  self->_disambiguationIndexSelected = 0;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = 0;

  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = 0;

  self->_whichOneof_Systempromptresolutionuseraction = 3;
  self->_isParameterConfirmed = a3;
}

- (void)deleteIsActionConfirmed
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 1)
  {
    self->_whichOneof_Systempromptresolutionuseraction = 0;
    self->_isActionConfirmed = 0;
  }
}

- (void)setIsActionConfirmed:(BOOL)a3
{
  self->_isParameterConfirmed = 0;
  self->_disambiguationIndexSelected = 0;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = 0;

  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = 0;

  self->_whichOneof_Systempromptresolutionuseraction = 1;
  self->_isActionConfirmed = a3;
}

- (id)applySensitiveConditionsPolicy:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTSystemPromptResolutionUserAction;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:v4];
  v6 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
  v7 = [v6 applySensitiveConditionsPolicy:v4];
  v8 = [v7 suppressMessage];

  if (v8)
  {
    [(IFTSchemaIFTSystemPromptResolutionUserAction *)self deleteRequirementAddressed];
  }

  v9 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
  v10 = [v9 applySensitiveConditionsPolicy:v4];
  v11 = [v10 suppressMessage];

  if (v11)
  {
    [(IFTSchemaIFTSystemPromptResolutionUserAction *)self deleteActionCanceled];
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