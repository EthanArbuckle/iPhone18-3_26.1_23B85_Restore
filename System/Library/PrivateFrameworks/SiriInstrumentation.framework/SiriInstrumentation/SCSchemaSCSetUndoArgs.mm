@interface SCSchemaSCSetUndoArgs
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SCSchemaSCSetUndoArgs)initWithDictionary:(id)dictionary;
- (SCSchemaSCSetUndoArgs)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation SCSchemaSCSetUndoArgs

- (SCSchemaSCSetUndoArgs)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v10.receiver = self;
  v10.super_class = SCSchemaSCSetUndoArgs;
  v5 = [(SCSchemaSCSetUndoArgs *)&v10 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"directInvocationId"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(SCSchemaSCSetUndoArgs *)v5 setDirectInvocationId:v7];
    }

    v8 = v5;
  }

  return v5;
}

- (SCSchemaSCSetUndoArgs)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SCSchemaSCSetUndoArgs *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SCSchemaSCSetUndoArgs *)self dictionaryRepresentation];
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
  if (self->_directInvocationId)
  {
    directInvocationId = [(SCSchemaSCSetUndoArgs *)self directInvocationId];
    v5 = [directInvocationId copy];
    [dictionary setObject:v5 forKeyedSubscript:@"directInvocationId"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    directInvocationId = [(SCSchemaSCSetUndoArgs *)self directInvocationId];
    directInvocationId2 = [equalCopy directInvocationId];
    v7 = directInvocationId2;
    if ((directInvocationId != 0) != (directInvocationId2 == 0))
    {
      directInvocationId3 = [(SCSchemaSCSetUndoArgs *)self directInvocationId];
      if (!directInvocationId3)
      {

LABEL_10:
        v13 = 1;
        goto LABEL_8;
      }

      v9 = directInvocationId3;
      directInvocationId4 = [(SCSchemaSCSetUndoArgs *)self directInvocationId];
      directInvocationId5 = [equalCopy directInvocationId];
      v12 = [directInvocationId4 isEqual:directInvocationId5];

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
  directInvocationId = [(SCSchemaSCSetUndoArgs *)self directInvocationId];

  if (directInvocationId)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end