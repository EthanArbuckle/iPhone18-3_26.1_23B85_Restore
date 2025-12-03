@interface SISchemaDialogOutput
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaDialogOutput)initWithDictionary:(id)dictionary;
- (SISchemaDialogOutput)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaDialogOutput

- (SISchemaDialogOutput)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = SISchemaDialogOutput;
  v5 = [(SISchemaDialogOutput *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"viewID"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SISchemaDialogOutput *)v5 setViewID:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"spokenDialogOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[SISchemaRedactableString alloc] initWithDictionary:v8];
      [(SISchemaDialogOutput *)v5 setSpokenDialogOutput:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"displayedDialogOutput"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [[SISchemaRedactableString alloc] initWithDictionary:v10];
      [(SISchemaDialogOutput *)v5 setDisplayedDialogOutput:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (SISchemaDialogOutput)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaDialogOutput *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaDialogOutput *)self dictionaryRepresentation];
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
  if (self->_displayedDialogOutput)
  {
    displayedDialogOutput = [(SISchemaDialogOutput *)self displayedDialogOutput];
    dictionaryRepresentation = [displayedDialogOutput dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"displayedDialogOutput"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"displayedDialogOutput"];
    }
  }

  if (self->_spokenDialogOutput)
  {
    spokenDialogOutput = [(SISchemaDialogOutput *)self spokenDialogOutput];
    dictionaryRepresentation2 = [spokenDialogOutput dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"spokenDialogOutput"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"spokenDialogOutput"];
    }
  }

  if (self->_viewID)
  {
    viewID = [(SISchemaDialogOutput *)self viewID];
    v11 = [viewID copy];
    [dictionary setObject:v11 forKeyedSubscript:@"viewID"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_viewID hash];
  v4 = [(SISchemaRedactableString *)self->_spokenDialogOutput hash]^ v3;
  return v4 ^ [(SISchemaRedactableString *)self->_displayedDialogOutput hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  viewID = [(SISchemaDialogOutput *)self viewID];
  viewID2 = [equalCopy viewID];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_16;
  }

  viewID3 = [(SISchemaDialogOutput *)self viewID];
  if (viewID3)
  {
    v8 = viewID3;
    viewID4 = [(SISchemaDialogOutput *)self viewID];
    viewID5 = [equalCopy viewID];
    v11 = [viewID4 isEqual:viewID5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  viewID = [(SISchemaDialogOutput *)self spokenDialogOutput];
  viewID2 = [equalCopy spokenDialogOutput];
  if ((viewID != 0) == (viewID2 == 0))
  {
    goto LABEL_16;
  }

  spokenDialogOutput = [(SISchemaDialogOutput *)self spokenDialogOutput];
  if (spokenDialogOutput)
  {
    v13 = spokenDialogOutput;
    spokenDialogOutput2 = [(SISchemaDialogOutput *)self spokenDialogOutput];
    spokenDialogOutput3 = [equalCopy spokenDialogOutput];
    v16 = [spokenDialogOutput2 isEqual:spokenDialogOutput3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  viewID = [(SISchemaDialogOutput *)self displayedDialogOutput];
  viewID2 = [equalCopy displayedDialogOutput];
  if ((viewID != 0) != (viewID2 == 0))
  {
    displayedDialogOutput = [(SISchemaDialogOutput *)self displayedDialogOutput];
    if (!displayedDialogOutput)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = displayedDialogOutput;
    displayedDialogOutput2 = [(SISchemaDialogOutput *)self displayedDialogOutput];
    displayedDialogOutput3 = [equalCopy displayedDialogOutput];
    v21 = [displayedDialogOutput2 isEqual:displayedDialogOutput3];

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
  viewID = [(SISchemaDialogOutput *)self viewID];

  if (viewID)
  {
    PBDataWriterWriteStringField();
  }

  spokenDialogOutput = [(SISchemaDialogOutput *)self spokenDialogOutput];

  if (spokenDialogOutput)
  {
    spokenDialogOutput2 = [(SISchemaDialogOutput *)self spokenDialogOutput];
    PBDataWriterWriteSubmessage();
  }

  displayedDialogOutput = [(SISchemaDialogOutput *)self displayedDialogOutput];

  v8 = toCopy;
  if (displayedDialogOutput)
  {
    displayedDialogOutput2 = [(SISchemaDialogOutput *)self displayedDialogOutput];
    PBDataWriterWriteSubmessage();

    v8 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = SISchemaDialogOutput;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  spokenDialogOutput = [(SISchemaDialogOutput *)self spokenDialogOutput];
  v7 = [spokenDialogOutput applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(SISchemaDialogOutput *)self deleteSpokenDialogOutput];
  }

  displayedDialogOutput = [(SISchemaDialogOutput *)self displayedDialogOutput];
  v10 = [displayedDialogOutput applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(SISchemaDialogOutput *)self deleteDisplayedDialogOutput];
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