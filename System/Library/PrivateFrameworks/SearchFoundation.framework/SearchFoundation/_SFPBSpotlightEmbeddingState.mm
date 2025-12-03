@interface _SFPBSpotlightEmbeddingState
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSpotlightEmbeddingState)initWithDictionary:(id)dictionary;
- (_SFPBSpotlightEmbeddingState)initWithFacade:(id)facade;
- (_SFPBSpotlightEmbeddingState)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSpotlightEmbeddingState

- (_SFPBSpotlightEmbeddingState)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_SFPBSpotlightEmbeddingState *)self init];
  if (v5)
  {
    embeddedPhotosAssetsCount = [facadeCopy embeddedPhotosAssetsCount];

    if (embeddedPhotosAssetsCount)
    {
      embeddedPhotosAssetsCount2 = [facadeCopy embeddedPhotosAssetsCount];
      -[_SFPBSpotlightEmbeddingState setEmbeddedPhotosAssetsCount:](v5, "setEmbeddedPhotosAssetsCount:", [embeddedPhotosAssetsCount2 intValue]);
    }

    totalPhotosAssetsCount = [facadeCopy totalPhotosAssetsCount];

    if (totalPhotosAssetsCount)
    {
      totalPhotosAssetsCount2 = [facadeCopy totalPhotosAssetsCount];
      -[_SFPBSpotlightEmbeddingState setTotalPhotosAssetsCount:](v5, "setTotalPhotosAssetsCount:", [totalPhotosAssetsCount2 intValue]);
    }

    embeddedPhotosAssetsPercentage = [facadeCopy embeddedPhotosAssetsPercentage];

    if (embeddedPhotosAssetsPercentage)
    {
      embeddedPhotosAssetsPercentage2 = [facadeCopy embeddedPhotosAssetsPercentage];
      -[_SFPBSpotlightEmbeddingState setEmbeddedPhotosAssetsPercentage:](v5, "setEmbeddedPhotosAssetsPercentage:", [embeddedPhotosAssetsPercentage2 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBSpotlightEmbeddingState)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = _SFPBSpotlightEmbeddingState;
  v5 = [(_SFPBSpotlightEmbeddingState *)&v11 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"embeddedPhotosAssetsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSpotlightEmbeddingState setEmbeddedPhotosAssetsCount:](v5, "setEmbeddedPhotosAssetsCount:", [v6 intValue]);
    }

    v7 = [dictionaryCopy objectForKeyedSubscript:@"totalPhotosAssetsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSpotlightEmbeddingState setTotalPhotosAssetsCount:](v5, "setTotalPhotosAssetsCount:", [v7 intValue]);
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"embeddedPhotosAssetsPercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSpotlightEmbeddingState setEmbeddedPhotosAssetsPercentage:](v5, "setEmbeddedPhotosAssetsPercentage:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBSpotlightEmbeddingState)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSpotlightEmbeddingState *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSpotlightEmbeddingState *)self dictionaryRepresentation];
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
  if (self->_embeddedPhotosAssetsCount)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBSpotlightEmbeddingState embeddedPhotosAssetsCount](self, "embeddedPhotosAssetsCount")}];
    [dictionary setObject:v4 forKeyedSubscript:@"embeddedPhotosAssetsCount"];
  }

  if (self->_embeddedPhotosAssetsPercentage)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBSpotlightEmbeddingState embeddedPhotosAssetsPercentage](self, "embeddedPhotosAssetsPercentage")}];
    [dictionary setObject:v5 forKeyedSubscript:@"embeddedPhotosAssetsPercentage"];
  }

  if (self->_totalPhotosAssetsCount)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBSpotlightEmbeddingState totalPhotosAssetsCount](self, "totalPhotosAssetsCount")}];
    [dictionary setObject:v6 forKeyedSubscript:@"totalPhotosAssetsCount"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (embeddedPhotosAssetsCount = self->_embeddedPhotosAssetsCount, embeddedPhotosAssetsCount == objc_msgSend(equalCopy, "embeddedPhotosAssetsCount")) && (totalPhotosAssetsCount = self->_totalPhotosAssetsCount, totalPhotosAssetsCount == objc_msgSend(equalCopy, "totalPhotosAssetsCount")))
  {
    embeddedPhotosAssetsPercentage = self->_embeddedPhotosAssetsPercentage;
    v8 = embeddedPhotosAssetsPercentage == [equalCopy embeddedPhotosAssetsPercentage];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_SFPBSpotlightEmbeddingState *)self embeddedPhotosAssetsCount])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBSpotlightEmbeddingState *)self totalPhotosAssetsCount])
  {
    PBDataWriterWriteInt32Field();
  }

  embeddedPhotosAssetsPercentage = [(_SFPBSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
  v5 = toCopy;
  if (embeddedPhotosAssetsPercentage)
  {
    PBDataWriterWriteInt32Field();
    v5 = toCopy;
  }
}

@end