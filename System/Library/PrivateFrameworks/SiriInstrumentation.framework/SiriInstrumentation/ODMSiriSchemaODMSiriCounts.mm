@interface ODMSiriSchemaODMSiriCounts
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (ODMSiriSchemaODMSiriCounts)initWithDictionary:(id)dictionary;
- (ODMSiriSchemaODMSiriCounts)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation ODMSiriSchemaODMSiriCounts

- (ODMSiriSchemaODMSiriCounts)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = ODMSiriSchemaODMSiriCounts;
  v5 = [(ODMSiriSchemaODMSiriCounts *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"dimensions"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[ODMSiriSchemaODMDynamicDimensions alloc] initWithDictionary:v6];
      [(ODMSiriSchemaODMSiriCounts *)v5 setDimensions:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"taskCounts"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[ODMSiriSchemaODMSiriTaskCounts alloc] initWithDictionary:v8];
      [(ODMSiriSchemaODMSiriCounts *)v5 setTaskCounts:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (ODMSiriSchemaODMSiriCounts)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(ODMSiriSchemaODMSiriCounts *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(ODMSiriSchemaODMSiriCounts *)self dictionaryRepresentation];
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
  if (self->_dimensions)
  {
    dimensions = [(ODMSiriSchemaODMSiriCounts *)self dimensions];
    dictionaryRepresentation = [dimensions dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"dimensions"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"dimensions"];
    }
  }

  if (self->_taskCounts)
  {
    taskCounts = [(ODMSiriSchemaODMSiriCounts *)self taskCounts];
    dictionaryRepresentation2 = [taskCounts dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"taskCounts"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"taskCounts"];
    }
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  dimensions = [(ODMSiriSchemaODMSiriCounts *)self dimensions];
  dimensions2 = [equalCopy dimensions];
  if ((dimensions != 0) == (dimensions2 == 0))
  {
    goto LABEL_11;
  }

  dimensions3 = [(ODMSiriSchemaODMSiriCounts *)self dimensions];
  if (dimensions3)
  {
    v8 = dimensions3;
    dimensions4 = [(ODMSiriSchemaODMSiriCounts *)self dimensions];
    dimensions5 = [equalCopy dimensions];
    v11 = [dimensions4 isEqual:dimensions5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  dimensions = [(ODMSiriSchemaODMSiriCounts *)self taskCounts];
  dimensions2 = [equalCopy taskCounts];
  if ((dimensions != 0) != (dimensions2 == 0))
  {
    taskCounts = [(ODMSiriSchemaODMSiriCounts *)self taskCounts];
    if (!taskCounts)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = taskCounts;
    taskCounts2 = [(ODMSiriSchemaODMSiriCounts *)self taskCounts];
    taskCounts3 = [equalCopy taskCounts];
    v16 = [taskCounts2 isEqual:taskCounts3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  dimensions = [(ODMSiriSchemaODMSiriCounts *)self dimensions];

  if (dimensions)
  {
    dimensions2 = [(ODMSiriSchemaODMSiriCounts *)self dimensions];
    PBDataWriterWriteSubmessage();
  }

  taskCounts = [(ODMSiriSchemaODMSiriCounts *)self taskCounts];

  if (taskCounts)
  {
    taskCounts2 = [(ODMSiriSchemaODMSiriCounts *)self taskCounts];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = ODMSiriSchemaODMSiriCounts;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  dimensions = [(ODMSiriSchemaODMSiriCounts *)self dimensions];
  v7 = [dimensions applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(ODMSiriSchemaODMSiriCounts *)self deleteDimensions];
  }

  taskCounts = [(ODMSiriSchemaODMSiriCounts *)self taskCounts];
  v10 = [taskCounts applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(ODMSiriSchemaODMSiriCounts *)self deleteTaskCounts];
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