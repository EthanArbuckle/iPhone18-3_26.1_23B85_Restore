@interface IFTSchemaIFTSystemPromptResolutionUserAction
- (BOOL)isEqual:(id)equal;
- (IFTSchemaIFTSystemPromptResolutionActionCancellation)actionCanceled;
- (IFTSchemaIFTSystemPromptResolutionRequirementResolution)requirementAddressed;
- (IFTSchemaIFTSystemPromptResolutionUserAction)initWithDictionary:(id)dictionary;
- (IFTSchemaIFTSystemPromptResolutionUserAction)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (int64_t)disambiguationIndexSelected;
- (unint64_t)hash;
- (void)deleteActionCanceled;
- (void)deleteDisambiguationIndexSelected;
- (void)deleteIsActionConfirmed;
- (void)deleteIsParameterConfirmed;
- (void)deleteRequirementAddressed;
- (void)setActionCanceled:(id)canceled;
- (void)setDisambiguationIndexSelected:(int64_t)selected;
- (void)setIsActionConfirmed:(BOOL)confirmed;
- (void)setIsParameterConfirmed:(BOOL)confirmed;
- (void)setRequirementAddressed:(id)addressed;
- (void)writeTo:(id)to;
@end

@implementation IFTSchemaIFTSystemPromptResolutionUserAction

- (IFTSchemaIFTSystemPromptResolutionUserAction)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = IFTSchemaIFTSystemPromptResolutionUserAction;
  v5 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)&v15 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isActionConfirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemPromptResolutionUserAction setIsActionConfirmed:](v5, "setIsActionConfirmed:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isParameterConfirmed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemPromptResolutionUserAction setIsParameterConfirmed:](v5, "setIsParameterConfirmed:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"disambiguationIndexSelected"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[IFTSchemaIFTSystemPromptResolutionUserAction setDisambiguationIndexSelected:](v5, "setDisambiguationIndexSelected:", [v8 longLongValue]);
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"requirementAddressed"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = [[IFTSchemaIFTSystemPromptResolutionRequirementResolution alloc] initWithDictionary:v9];
      [(IFTSchemaIFTSystemPromptResolutionUserAction *)v5 setRequirementAddressed:v10];
    }

    v11 = [dictionaryCopy objectForKeyedSubscript:@"actionCanceled"];
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

- (IFTSchemaIFTSystemPromptResolutionUserAction)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self dictionaryRepresentation];
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
  if (self->_actionCanceled)
  {
    actionCanceled = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
    dictionaryRepresentation = [actionCanceled dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"actionCanceled"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"actionCanceled"];
    }
  }

  whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  if (whichOneof_Systempromptresolutionuseraction == 6)
  {
    v8 = [MEMORY[0x1E696AD98] numberWithLongLong:{-[IFTSchemaIFTSystemPromptResolutionUserAction disambiguationIndexSelected](self, "disambiguationIndexSelected")}];
    [dictionary setObject:v8 forKeyedSubscript:@"disambiguationIndexSelected"];

    whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  }

  if (whichOneof_Systempromptresolutionuseraction == 1)
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemPromptResolutionUserAction isActionConfirmed](self, "isActionConfirmed")}];
    [dictionary setObject:v9 forKeyedSubscript:@"isActionConfirmed"];

    whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  }

  if (whichOneof_Systempromptresolutionuseraction == 3)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithBool:{-[IFTSchemaIFTSystemPromptResolutionUserAction isParameterConfirmed](self, "isParameterConfirmed")}];
    [dictionary setObject:v10 forKeyedSubscript:@"isParameterConfirmed"];
  }

  if (self->_requirementAddressed)
  {
    requirementAddressed = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
    dictionaryRepresentation2 = [requirementAddressed dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"requirementAddressed"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"requirementAddressed"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_16;
  }

  whichOneof_Systempromptresolutionuseraction = self->_whichOneof_Systempromptresolutionuseraction;
  if (whichOneof_Systempromptresolutionuseraction != [equalCopy whichOneof_Systempromptresolutionuseraction])
  {
    goto LABEL_16;
  }

  isActionConfirmed = self->_isActionConfirmed;
  if (isActionConfirmed != [equalCopy isActionConfirmed])
  {
    goto LABEL_16;
  }

  isParameterConfirmed = self->_isParameterConfirmed;
  if (isParameterConfirmed != [equalCopy isParameterConfirmed])
  {
    goto LABEL_16;
  }

  disambiguationIndexSelected = self->_disambiguationIndexSelected;
  if (disambiguationIndexSelected != [equalCopy disambiguationIndexSelected])
  {
    goto LABEL_16;
  }

  requirementAddressed = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
  requirementAddressed2 = [equalCopy requirementAddressed];
  if ((requirementAddressed != 0) == (requirementAddressed2 == 0))
  {
    goto LABEL_15;
  }

  requirementAddressed3 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
  if (requirementAddressed3)
  {
    v12 = requirementAddressed3;
    requirementAddressed4 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
    requirementAddressed5 = [equalCopy requirementAddressed];
    v15 = [requirementAddressed4 isEqual:requirementAddressed5];

    if (!v15)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  requirementAddressed = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
  requirementAddressed2 = [equalCopy actionCanceled];
  if ((requirementAddressed != 0) != (requirementAddressed2 == 0))
  {
    actionCanceled = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
    if (!actionCanceled)
    {

LABEL_19:
      v21 = 1;
      goto LABEL_17;
    }

    v17 = actionCanceled;
    actionCanceled2 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
    actionCanceled3 = [equalCopy actionCanceled];
    v20 = [actionCanceled2 isEqual:actionCanceled3];

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

- (void)writeTo:(id)to
{
  toCopy = to;
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

  requirementAddressed = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];

  if (requirementAddressed)
  {
    requirementAddressed2 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
    PBDataWriterWriteSubmessage();
  }

  actionCanceled = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];

  v8 = toCopy;
  if (actionCanceled)
  {
    actionCanceled2 = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
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

- (void)setActionCanceled:(id)canceled
{
  canceledCopy = canceled;
  self->_isActionConfirmed = 0;
  self->_isParameterConfirmed = 0;
  self->_disambiguationIndexSelected = 0;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = 0;

  self->_whichOneof_Systempromptresolutionuseraction = 8 * (canceledCopy != 0);
  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = canceledCopy;
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

- (void)setRequirementAddressed:(id)addressed
{
  addressedCopy = addressed;
  self->_isActionConfirmed = 0;
  self->_isParameterConfirmed = 0;
  self->_disambiguationIndexSelected = 0;
  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = 0;

  v6 = 7;
  if (!addressedCopy)
  {
    v6 = 0;
  }

  self->_whichOneof_Systempromptresolutionuseraction = v6;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = addressedCopy;
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

- (void)setDisambiguationIndexSelected:(int64_t)selected
{
  self->_isActionConfirmed = 0;
  self->_isParameterConfirmed = 0;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = 0;

  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = 0;

  self->_whichOneof_Systempromptresolutionuseraction = 6;
  self->_disambiguationIndexSelected = selected;
}

- (void)deleteIsParameterConfirmed
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 3)
  {
    self->_whichOneof_Systempromptresolutionuseraction = 0;
    self->_isParameterConfirmed = 0;
  }
}

- (void)setIsParameterConfirmed:(BOOL)confirmed
{
  self->_isActionConfirmed = 0;
  self->_disambiguationIndexSelected = 0;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = 0;

  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = 0;

  self->_whichOneof_Systempromptresolutionuseraction = 3;
  self->_isParameterConfirmed = confirmed;
}

- (void)deleteIsActionConfirmed
{
  if (self->_whichOneof_Systempromptresolutionuseraction == 1)
  {
    self->_whichOneof_Systempromptresolutionuseraction = 0;
    self->_isActionConfirmed = 0;
  }
}

- (void)setIsActionConfirmed:(BOOL)confirmed
{
  self->_isParameterConfirmed = 0;
  self->_disambiguationIndexSelected = 0;
  requirementAddressed = self->_requirementAddressed;
  self->_requirementAddressed = 0;

  actionCanceled = self->_actionCanceled;
  self->_actionCanceled = 0;

  self->_whichOneof_Systempromptresolutionuseraction = 1;
  self->_isActionConfirmed = confirmed;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = IFTSchemaIFTSystemPromptResolutionUserAction;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  requirementAddressed = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self requirementAddressed];
  v7 = [requirementAddressed applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(IFTSchemaIFTSystemPromptResolutionUserAction *)self deleteRequirementAddressed];
  }

  actionCanceled = [(IFTSchemaIFTSystemPromptResolutionUserAction *)self actionCanceled];
  v10 = [actionCanceled applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
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