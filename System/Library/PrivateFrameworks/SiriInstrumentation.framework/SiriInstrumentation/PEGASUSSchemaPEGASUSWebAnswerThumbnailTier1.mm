@interface PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1)initWithDictionary:(id)dictionary;
- (PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1)initWithJSON:(id)n;
- (id)applySensitiveConditionsPolicy:(id)policy;
- (id)dictionaryRepresentation;
- (id)suppressMessageUnderConditions;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1

- (PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v14.receiver = self;
  v14.super_class = PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1;
  v5 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)&v14 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"imageUrl"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)v5 setImageUrl:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"touchIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)v5 setTouchIcon:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"favIcon"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)v5 setFavIcon:v11];
    }

    v12 = v5;
  }

  return v5;
}

- (PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self dictionaryRepresentation];
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
  if (self->_favIcon)
  {
    favIcon = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];
    v5 = [favIcon copy];
    [dictionary setObject:v5 forKeyedSubscript:@"favIcon"];
  }

  if (self->_imageUrl)
  {
    imageUrl = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];
    v7 = [imageUrl copy];
    [dictionary setObject:v7 forKeyedSubscript:@"imageUrl"];
  }

  if (self->_touchIcon)
  {
    touchIcon = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];
    v9 = [touchIcon copy];
    [dictionary setObject:v9 forKeyedSubscript:@"touchIcon"];
  }

  [(SISchemaInstrumentationMessage *)self willProduceDictionaryRepresentation:dictionary];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_imageUrl hash];
  v4 = [(NSString *)self->_touchIcon hash]^ v3;
  return v4 ^ [(NSString *)self->_favIcon hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  imageUrl = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];
  imageUrl2 = [equalCopy imageUrl];
  if ((imageUrl != 0) == (imageUrl2 == 0))
  {
    goto LABEL_16;
  }

  imageUrl3 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];
  if (imageUrl3)
  {
    v8 = imageUrl3;
    imageUrl4 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];
    imageUrl5 = [equalCopy imageUrl];
    v11 = [imageUrl4 isEqual:imageUrl5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  imageUrl = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];
  imageUrl2 = [equalCopy touchIcon];
  if ((imageUrl != 0) == (imageUrl2 == 0))
  {
    goto LABEL_16;
  }

  touchIcon = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];
  if (touchIcon)
  {
    v13 = touchIcon;
    touchIcon2 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];
    touchIcon3 = [equalCopy touchIcon];
    v16 = [touchIcon2 isEqual:touchIcon3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  imageUrl = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];
  imageUrl2 = [equalCopy favIcon];
  if ((imageUrl != 0) != (imageUrl2 == 0))
  {
    favIcon = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];
    if (!favIcon)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = favIcon;
    favIcon2 = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];
    favIcon3 = [equalCopy favIcon];
    v21 = [favIcon2 isEqual:favIcon3];

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
  imageUrl = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self imageUrl];

  if (imageUrl)
  {
    PBDataWriterWriteStringField();
  }

  touchIcon = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self touchIcon];

  if (touchIcon)
  {
    PBDataWriterWriteStringField();
  }

  favIcon = [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self favIcon];

  v7 = toCopy;
  if (favIcon)
  {
    PBDataWriterWriteStringField();
    v7 = toCopy;
  }
}

- (id)applySensitiveConditionsPolicy:(id)policy
{
  policyCopy = policy;
  v7.receiver = self;
  v7.super_class = PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1;
  v5 = [(SISchemaInstrumentationMessage *)&v7 applySensitiveConditionsPolicy:policyCopy];
  if ([policyCopy isConditionSet:2])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
  }

  if ([policyCopy isConditionSet:4])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
  }

  if ([policyCopy isConditionSet:5])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
  }

  if ([policyCopy isConditionSet:6])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
  }

  if ([policyCopy isConditionSet:7])
  {
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteImageUrl];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteTouchIcon];
    [(PEGASUSSchemaPEGASUSWebAnswerThumbnailTier1 *)self deleteFavIcon];
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