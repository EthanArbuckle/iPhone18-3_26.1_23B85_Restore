@interface INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals

- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals;
  v5 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"commonDependent"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCECommonAppDependentSignals alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)v5 setCommonDependent:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self dictionaryRepresentation];
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
  if (self->_commonDependent)
  {
    commonDependent = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self commonDependent];
    dictionaryRepresentation = [commonDependent dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"commonDependent"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"commonDependent"];
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
    commonDependent = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self commonDependent];
    commonDependent2 = [equalCopy commonDependent];
    v7 = commonDependent2;
    if ((commonDependent != 0) != (commonDependent2 == 0))
    {
      commonDependent3 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self commonDependent];
      if (!commonDependent3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = commonDependent3;
      commonDependent4 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self commonDependent];
      commonDependent5 = [equalCopy commonDependent];
      v12 = [commonDependent4 isEqual:commonDependent5];

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
  commonDependent = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self commonDependent];

  if (commonDependent)
  {
    commonDependent2 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self commonDependent];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self commonDependent:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(INFERENCESchemaINFERENCENotebookAppSelectionTrainingDependentSignals *)self deleteCommonDependent];
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