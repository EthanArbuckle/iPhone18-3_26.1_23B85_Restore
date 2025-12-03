@interface SISchemaTapToEditInvocationContext
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (SISchemaTapToEditInvocationContext)initWithDictionary:(id)dictionary;
- (SISchemaTapToEditInvocationContext)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation SISchemaTapToEditInvocationContext

- (SISchemaTapToEditInvocationContext)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = SISchemaTapToEditInvocationContext;
  v5 = [(SISchemaTapToEditInvocationContext *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isTranscriptEdited"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[SISchemaTapToEditInvocationContext setIsTranscriptEdited:](v5, "setIsTranscriptEdited:", [v6 BOOLValue]);
    }

    v7 = v5;
  }

  return v5;
}

- (SISchemaTapToEditInvocationContext)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(SISchemaTapToEditInvocationContext *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(SISchemaTapToEditInvocationContext *)self dictionaryRepresentation];
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
  if (*(&self->_isTranscriptEdited + 1))
  {
    v4 = [MEMORY[0x1E696AD98] numberWithBool:{-[SISchemaTapToEditInvocationContext isTranscriptEdited](self, "isTranscriptEdited")}];
    [dictionary setObject:v4 forKeyedSubscript:@"isTranscriptEdited"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (*(&self->_isTranscriptEdited + 1))
  {
    return 2654435761 * self->_isTranscriptEdited;
  }

  else
  {
    return 0;
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v6 = 0;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    if (*(&self->_isTranscriptEdited + 1) == (equalCopy[9] & 1))
    {
      if (!*(&self->_isTranscriptEdited + 1) || (isTranscriptEdited = self->_isTranscriptEdited, isTranscriptEdited == [equalCopy isTranscriptEdited]))
      {
        v6 = 1;
      }
    }
  }

  return v6;
}

- (void)writeTo:(id)to
{
  if (*(&self->_isTranscriptEdited + 1))
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end