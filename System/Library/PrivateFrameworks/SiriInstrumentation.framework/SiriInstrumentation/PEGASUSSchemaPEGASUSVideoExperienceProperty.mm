@interface PEGASUSSchemaPEGASUSVideoExperienceProperty
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSVideoExperienceProperty)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSVideoExperienceProperty)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)setHasIsRecommendationRequest:(BOOL)request;
- (void)setHasIsThirdPartyRequest:(BOOL)request;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSVideoExperienceProperty

- (PEGASUSSchemaPEGASUSVideoExperienceProperty)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = PEGASUSSchemaPEGASUSVideoExperienceProperty;
  v5 = [(PEGASUSSchemaPEGASUSVideoExperienceProperty *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"isForegroundAppAvailable"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSVideoExperienceProperty setIsForegroundAppAvailable:](v5, "setIsForegroundAppAvailable:", [v6 BOOLValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"isRecommendationRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSVideoExperienceProperty setIsRecommendationRequest:](v5, "setIsRecommendationRequest:", [v7 BOOLValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"isThirdPartyRequest"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PEGASUSSchemaPEGASUSVideoExperienceProperty setIsThirdPartyRequest:](v5, "setIsThirdPartyRequest:", [v8 BOOLValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSVideoExperienceProperty)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSVideoExperienceProperty *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSVideoExperienceProperty *)self dictionaryRepresentation];
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
  v4 = *(&self->_isThirdPartyRequest + 1);
  if (v4)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSVideoExperienceProperty isForegroundAppAvailable](self, "isForegroundAppAvailable")}];
    [dictionary setObject:v7 forKeyedSubscript:@"isForegroundAppAvailable"];

    v4 = *(&self->_isThirdPartyRequest + 1);
    if ((v4 & 2) == 0)
    {
LABEL_3:
      if ((v4 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isThirdPartyRequest + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSVideoExperienceProperty isRecommendationRequest](self, "isRecommendationRequest")}];
  [dictionary setObject:v8 forKeyedSubscript:@"isRecommendationRequest"];

  if ((*(&self->_isThirdPartyRequest + 1) & 4) != 0)
  {
LABEL_4:
    v5 = [MEMORY[0x1E696AD98] numberWithBool:{-[PEGASUSSchemaPEGASUSVideoExperienceProperty isThirdPartyRequest](self, "isThirdPartyRequest")}];
    [dictionary setObject:v5 forKeyedSubscript:@"isThirdPartyRequest"];
  }

LABEL_5:
  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  if (!*(&self->_isThirdPartyRequest + 1))
  {
    v2 = 0;
    if ((*(&self->_isThirdPartyRequest + 1) & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v3 = 0;
    if ((*(&self->_isThirdPartyRequest + 1) & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v4 = 0;
    return v3 ^ v2 ^ v4;
  }

  v2 = 2654435761 * self->_isForegroundAppAvailable;
  if ((*(&self->_isThirdPartyRequest + 1) & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v3 = 2654435761 * self->_isRecommendationRequest;
  if ((*(&self->_isThirdPartyRequest + 1) & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v4 = 2654435761 * self->_isThirdPartyRequest;
  return v3 ^ v2 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_14;
  }

  v5 = *(&self->_isThirdPartyRequest + 1);
  v6 = equalCopy[11];
  if ((v5 & 1) != (v6 & 1))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    isForegroundAppAvailable = self->_isForegroundAppAvailable;
    if (isForegroundAppAvailable != [equalCopy isForegroundAppAvailable])
    {
      goto LABEL_14;
    }

    v5 = *(&self->_isThirdPartyRequest + 1);
    v6 = equalCopy[11];
  }

  v8 = (v5 >> 1) & 1;
  if (v8 != ((v6 >> 1) & 1))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    isRecommendationRequest = self->_isRecommendationRequest;
    if (isRecommendationRequest == [equalCopy isRecommendationRequest])
    {
      v5 = *(&self->_isThirdPartyRequest + 1);
      v6 = equalCopy[11];
      goto LABEL_10;
    }

LABEL_14:
    v12 = 0;
    goto LABEL_15;
  }

LABEL_10:
  v10 = (v5 >> 2) & 1;
  if (v10 != ((v6 >> 2) & 1))
  {
    goto LABEL_14;
  }

  if (v10)
  {
    isThirdPartyRequest = self->_isThirdPartyRequest;
    if (isThirdPartyRequest != [equalCopy isThirdPartyRequest])
    {
      goto LABEL_14;
    }
  }

  v12 = 1;
LABEL_15:

  return v12;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = *(&self->_isThirdPartyRequest + 1);
  v6 = toCopy;
  if (v5)
  {
    PBDataWriterWriteBOOLField();
    toCopy = v6;
    v5 = *(&self->_isThirdPartyRequest + 1);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(&self->_isThirdPartyRequest + 1) & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteBOOLField();
  toCopy = v6;
  if ((*(&self->_isThirdPartyRequest + 1) & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteBOOLField();
    toCopy = v6;
  }

LABEL_5:
}

- (void)setHasIsThirdPartyRequest:(BOOL)request
{
  if (request)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isThirdPartyRequest + 1) = *(&self->_isThirdPartyRequest + 1) & 0xFB | v3;
}

- (void)setHasIsRecommendationRequest:(BOOL)request
{
  if (request)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(&self->_isThirdPartyRequest + 1) = *(&self->_isThirdPartyRequest + 1) & 0xFD | v3;
}

- (id)suppressMessageUnderConditions
{
  v2 = objc_alloc_init(SISensitiveConditionsSet);
  [(SISensitiveConditionsSet *)v2 addCondition:1];

  return v2;
}

@end