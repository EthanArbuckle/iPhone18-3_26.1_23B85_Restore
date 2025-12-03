@interface PEGASUSSchemaPEGASUSVideoExecution
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSVideoExecution)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSVideoExecution)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSVideoExecution

- (PEGASUSSchemaPEGASUSVideoExecution)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v12.receiver = self;
  v12.super_class = PEGASUSSchemaPEGASUSVideoExecution;
  v5 = [(PEGASUSSchemaPEGASUSVideoExecution *)&v12 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"videoInteraction"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [[PEGASUSSchemaPEGASUSVideoInteraction alloc] initWithDictionary:v6];
      [(PEGASUSSchemaPEGASUSVideoExecution *)v5 setVideoInteraction:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"videoExperienceProperty"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [[PEGASUSSchemaPEGASUSVideoExperienceProperty alloc] initWithDictionary:v8];
      [(PEGASUSSchemaPEGASUSVideoExecution *)v5 setVideoExperienceProperty:v9];
    }

    v10 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSVideoExecution)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSVideoExecution *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSVideoExecution *)self dictionaryRepresentation];
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
  if (self->_videoExperienceProperty)
  {
    videoExperienceProperty = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoExperienceProperty];
    dictionaryRepresentation = [videoExperienceProperty dictionaryRepresentation];
    if (dictionaryRepresentation)
    {
      [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"videoExperienceProperty"];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null forKeyedSubscript:@"videoExperienceProperty"];
    }
  }

  if (self->_videoInteraction)
  {
    videoInteraction = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoInteraction];
    dictionaryRepresentation2 = [videoInteraction dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"videoInteraction"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"videoInteraction"];
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

  videoInteraction = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoInteraction];
  videoInteraction2 = [equalCopy videoInteraction];
  if ((videoInteraction != 0) == (videoInteraction2 == 0))
  {
    goto LABEL_11;
  }

  videoInteraction3 = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoInteraction];
  if (videoInteraction3)
  {
    v8 = videoInteraction3;
    videoInteraction4 = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoInteraction];
    videoInteraction5 = [equalCopy videoInteraction];
    v11 = [videoInteraction4 isEqual:videoInteraction5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  videoInteraction = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoExperienceProperty];
  videoInteraction2 = [equalCopy videoExperienceProperty];
  if ((videoInteraction != 0) != (videoInteraction2 == 0))
  {
    videoExperienceProperty = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoExperienceProperty];
    if (!videoExperienceProperty)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = videoExperienceProperty;
    videoExperienceProperty2 = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoExperienceProperty];
    videoExperienceProperty3 = [equalCopy videoExperienceProperty];
    v16 = [videoExperienceProperty2 isEqual:videoExperienceProperty3];

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
  videoInteraction = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoInteraction];

  if (videoInteraction)
  {
    videoInteraction2 = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoInteraction];
    PBDataWriterWriteSubmessage();
  }

  videoExperienceProperty = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoExperienceProperty];

  if (videoExperienceProperty)
  {
    videoExperienceProperty2 = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoExperienceProperty];
    PBDataWriterWriteSubmessage();
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v13.receiver = self;
  v13.super_class = PEGASUSSchemaPEGASUSVideoExecution;
  v5 = [(SISchemaInstrumentationMessage *)&v13 applySensitiveConditionsPolicy:policyCopy];
  videoInteraction = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoInteraction];
  v7 = [videoInteraction applySensitiveConditionsPolicy:policyCopy];
  suppressMessage = [v7 suppressMessage];

  if (suppressMessage)
  {
    [(PEGASUSSchemaPEGASUSVideoExecution *)self deleteVideoInteraction];
  }

  videoExperienceProperty = [(PEGASUSSchemaPEGASUSVideoExecution *)self videoExperienceProperty];
  v10 = [videoExperienceProperty applySensitiveConditionsPolicy:policyCopy];
  suppressMessage2 = [v10 suppressMessage];

  if (suppressMessage2)
  {
    [(PEGASUSSchemaPEGASUSVideoExecution *)self deleteVideoExperienceProperty];
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