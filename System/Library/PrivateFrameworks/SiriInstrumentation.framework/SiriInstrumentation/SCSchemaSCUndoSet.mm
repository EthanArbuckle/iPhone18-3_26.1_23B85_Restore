@interface SCSchemaSCUndoSet
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SCSchemaSCUndoSet)initWithDictionary:(id)dictionary;
- (SCSchemaSCUndoSet)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SCSchemaSCUndoSet

- (SCSchemaSCUndoSet)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SCSchemaSCUndoSet;
  v5 = [(SCSchemaSCUndoSet *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"setUndoArgs"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[SCSchemaSCSetUndoArgs alloc] initWithDictionary:v6];
      [(SCSchemaSCUndoSet *)v5 setSetUndoArgs:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SCSchemaSCUndoSet)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SCSchemaSCUndoSet *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SCSchemaSCUndoSet *)self dictionaryRepresentation];
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
  if (self->_setUndoArgs)
  {
    setUndoArgs = [(SCSchemaSCUndoSet *)self setUndoArgs];
    dictionaryRepresentation = [setUndoArgs dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"setUndoArgs"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"setUndoArgs"];
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
    setUndoArgs = [(SCSchemaSCUndoSet *)self setUndoArgs];
    setUndoArgs2 = [equalCopy setUndoArgs];
    v7 = setUndoArgs2;
    if ((setUndoArgs != 0) != (setUndoArgs2 == 0))
    {
      setUndoArgs3 = [(SCSchemaSCUndoSet *)self setUndoArgs];
      if (!setUndoArgs3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = setUndoArgs3;
      setUndoArgs4 = [(SCSchemaSCUndoSet *)self setUndoArgs];
      setUndoArgs5 = [equalCopy setUndoArgs];
      v12 = [setUndoArgs4 isEqual:setUndoArgs5];

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
  setUndoArgs = [(SCSchemaSCUndoSet *)self setUndoArgs];

  if (setUndoArgs)
  {
    setUndoArgs2 = [(SCSchemaSCUndoSet *)self setUndoArgs];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  v9.receiver = self;
  v9.super_class = SCSchemaSCUndoSet;
  policyCopy = policy;
  v5 = [(SISchemaInstrumentationMessage *)&v9 applySensitiveConditionsPolicy:policyCopy];
  v6 = [(SCSchemaSCUndoSet *)self setUndoArgs:v9.receiver];
  v7 = [v6 applySensitiveConditionsPolicy:policyCopy];

  LODWORD(policyCopy) = [v7 suppressMessage];
  if (policyCopy)
  {
    [(SCSchemaSCUndoSet *)self deleteSetUndoArgs];
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