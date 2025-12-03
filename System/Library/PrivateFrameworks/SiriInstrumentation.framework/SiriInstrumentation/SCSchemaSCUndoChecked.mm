@interface SCSchemaSCUndoChecked
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SCSchemaSCUndoChecked)initWithDictionary:(id)dictionary;
- (SCSchemaSCUndoChecked)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SCSchemaSCUndoChecked

- (SCSchemaSCUndoChecked)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SCSchemaSCUndoChecked;
  v5 = [(SCSchemaSCUndoChecked *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"checkUndoResponse"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SCSchemaSCCheckUndoResponse alloc] initWithDictionary:v6];
      [(SCSchemaSCUndoChecked *)v5 setCheckUndoResponse:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SCSchemaSCUndoChecked)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SCSchemaSCUndoChecked *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SCSchemaSCUndoChecked *)self dictionaryRepresentation];
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
  if (self->_checkUndoResponse)
  {
    checkUndoResponse = [(SCSchemaSCUndoChecked *)self checkUndoResponse];
    dictionaryRepresentation = [checkUndoResponse dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"checkUndoResponse"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"checkUndoResponse"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    checkUndoResponse = [(SCSchemaSCUndoChecked *)self checkUndoResponse];
    checkUndoResponse2 = [equalCopy checkUndoResponse];
    v7 = checkUndoResponse2;
    if ((checkUndoResponse != 0) != (checkUndoResponse2 == 0))
    {
      checkUndoResponse3 = [(SCSchemaSCUndoChecked *)self checkUndoResponse];
      if (!checkUndoResponse3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = checkUndoResponse3;
      checkUndoResponse4 = [(SCSchemaSCUndoChecked *)self checkUndoResponse];
      checkUndoResponse5 = [equalCopy checkUndoResponse];
      v12 = [checkUndoResponse4 isEqual:checkUndoResponse5];

      if (v12)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }
  }

  v13 = 0;
LABEL_8:

  return v13;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  checkUndoResponse = [(SCSchemaSCUndoChecked *)self checkUndoResponse];

  if (checkUndoResponse)
  {
    checkUndoResponse2 = [(SCSchemaSCUndoChecked *)self checkUndoResponse];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SCSchemaSCUndoChecked;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SCSchemaSCUndoChecked *)self checkUndoResponse:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SCSchemaSCUndoChecked *)self deleteCheckUndoResponse];
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