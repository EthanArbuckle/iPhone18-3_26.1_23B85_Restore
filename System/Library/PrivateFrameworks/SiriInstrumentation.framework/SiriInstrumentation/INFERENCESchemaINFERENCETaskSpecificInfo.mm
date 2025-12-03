@interface INFERENCESchemaINFERENCETaskSpecificInfo
- (BOOL)isEqual:(id)equal;
- (INFERENCESchemaINFERENCELongRunningTaskInfo)longRunningTaskInfo;
- (INFERENCESchemaINFERENCETaskSpecificInfo)initWithDictionary:(id)dictionary;
- (INFERENCESchemaINFERENCETaskSpecificInfo)initWithJSON:(id)n;
- (NSData)jsonData;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)deleteLongRunningTaskInfo;
- (void)writeTo:(id)to;
@end

@implementation INFERENCESchemaINFERENCETaskSpecificInfo

- (INFERENCESchemaINFERENCETaskSpecificInfo)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = INFERENCESchemaINFERENCETaskSpecificInfo;
  v5 = [(INFERENCESchemaINFERENCETaskSpecificInfo *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"longRunningTaskInfo"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[INFERENCESchemaINFERENCELongRunningTaskInfo alloc] initWithDictionary:v6];
      [(INFERENCESchemaINFERENCETaskSpecificInfo *)v5 setLongRunningTaskInfo:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (INFERENCESchemaINFERENCETaskSpecificInfo)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(INFERENCESchemaINFERENCETaskSpecificInfo *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(INFERENCESchemaINFERENCETaskSpecificInfo *)self dictionaryRepresentation];
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
  if (self->_longRunningTaskInfo)
  {
    longRunningTaskInfo = [(INFERENCESchemaINFERENCETaskSpecificInfo *)self longRunningTaskInfo];
    dictionaryRepresentation = [longRunningTaskInfo dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"longRunningTaskInfo"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"longRunningTaskInfo"];
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
    whichTaskinfo = self->_whichTaskinfo;
    if (whichTaskinfo == [equalCopy whichTaskinfo])
    {
      longRunningTaskInfo = [(INFERENCESchemaINFERENCETaskSpecificInfo *)self longRunningTaskInfo];
      longRunningTaskInfo2 = [equalCopy longRunningTaskInfo];
      v8 = longRunningTaskInfo2;
      if ((longRunningTaskInfo != 0) != (longRunningTaskInfo2 == 0))
      {
        longRunningTaskInfo3 = [(INFERENCESchemaINFERENCETaskSpecificInfo *)self longRunningTaskInfo];
        if (!longRunningTaskInfo3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = longRunningTaskInfo3;
        longRunningTaskInfo4 = [(INFERENCESchemaINFERENCETaskSpecificInfo *)self longRunningTaskInfo];
        longRunningTaskInfo5 = [equalCopy longRunningTaskInfo];
        v13 = [longRunningTaskInfo4 isEqual:longRunningTaskInfo5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  longRunningTaskInfo = [(INFERENCESchemaINFERENCETaskSpecificInfo *)self longRunningTaskInfo];

  if (longRunningTaskInfo)
  {
    longRunningTaskInfo2 = [(INFERENCESchemaINFERENCETaskSpecificInfo *)self longRunningTaskInfo];
    PBDataWriterWriteSubmessage();
  }
}

- (void)deleteLongRunningTaskInfo
{
  if (self->_whichTaskinfo == 1)
  {
    self->_whichTaskinfo = 0;
    self->_longRunningTaskInfo = 0;
    MEMORY[0x1EEE66BB8]();
  }
}

- (INFERENCESchemaINFERENCELongRunningTaskInfo)longRunningTaskInfo
{
  if (self->_whichTaskinfo == 1)
  {
    v3 = self->_longRunningTaskInfo;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = INFERENCESchemaINFERENCETaskSpecificInfo;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(INFERENCESchemaINFERENCETaskSpecificInfo *)self longRunningTaskInfo:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(INFERENCESchemaINFERENCETaskSpecificInfo *)self deleteLongRunningTaskInfo];
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