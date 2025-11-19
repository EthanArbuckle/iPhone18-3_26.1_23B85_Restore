@interface _SFPBSpotlightEmbeddingState
- (BOOL)isEqual:(id)a3;
- (NSData)jsonData;
- (_SFPBSpotlightEmbeddingState)initWithDictionary:(id)a3;
- (_SFPBSpotlightEmbeddingState)initWithFacade:(id)a3;
- (_SFPBSpotlightEmbeddingState)initWithJSON:(id)a3;
- (id)dictionaryRepresentation;
- (void)writeTo:(id)a3;
@end

@implementation _SFPBSpotlightEmbeddingState

- (_SFPBSpotlightEmbeddingState)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_SFPBSpotlightEmbeddingState *)self init];
  if (v5)
  {
    v6 = [v4 embeddedPhotosAssetsCount];

    if (v6)
    {
      v7 = [v4 embeddedPhotosAssetsCount];
      -[_SFPBSpotlightEmbeddingState setEmbeddedPhotosAssetsCount:](v5, "setEmbeddedPhotosAssetsCount:", [v7 intValue]);
    }

    v8 = [v4 totalPhotosAssetsCount];

    if (v8)
    {
      v9 = [v4 totalPhotosAssetsCount];
      -[_SFPBSpotlightEmbeddingState setTotalPhotosAssetsCount:](v5, "setTotalPhotosAssetsCount:", [v9 intValue]);
    }

    v10 = [v4 embeddedPhotosAssetsPercentage];

    if (v10)
    {
      v11 = [v4 embeddedPhotosAssetsPercentage];
      -[_SFPBSpotlightEmbeddingState setEmbeddedPhotosAssetsPercentage:](v5, "setEmbeddedPhotosAssetsPercentage:", [v11 intValue]);
    }

    v12 = v5;
  }

  return v5;
}

- (_SFPBSpotlightEmbeddingState)initWithDictionary:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = _SFPBSpotlightEmbeddingState;
  v5 = [(_SFPBSpotlightEmbeddingState *)&v11 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"embeddedPhotosAssetsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSpotlightEmbeddingState setEmbeddedPhotosAssetsCount:](v5, "setEmbeddedPhotosAssetsCount:", [v6 intValue]);
    }

    v7 = [v4 objectForKeyedSubscript:@"totalPhotosAssetsCount"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSpotlightEmbeddingState setTotalPhotosAssetsCount:](v5, "setTotalPhotosAssetsCount:", [v7 intValue]);
    }

    v8 = [v4 objectForKeyedSubscript:@"embeddedPhotosAssetsPercentage"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSpotlightEmbeddingState setEmbeddedPhotosAssetsPercentage:](v5, "setEmbeddedPhotosAssetsPercentage:", [v8 intValue]);
    }

    v9 = v5;
  }

  return v5;
}

- (_SFPBSpotlightEmbeddingState)initWithJSON:(id)a3
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:a3 options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v5 = 0;
  }

  else
  {
    self = [(_SFPBSpotlightEmbeddingState *)self initWithDictionary:v4];
    v5 = self;
  }

  return v5;
}

- (NSData)jsonData
{
  v2 = [(_SFPBSpotlightEmbeddingState *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:v2])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v2 options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_embeddedPhotosAssetsCount)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBSpotlightEmbeddingState embeddedPhotosAssetsCount](self, "embeddedPhotosAssetsCount")}];
    [v3 setObject:v4 forKeyedSubscript:@"embeddedPhotosAssetsCount"];
  }

  if (self->_embeddedPhotosAssetsPercentage)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBSpotlightEmbeddingState embeddedPhotosAssetsPercentage](self, "embeddedPhotosAssetsPercentage")}];
    [v3 setObject:v5 forKeyedSubscript:@"embeddedPhotosAssetsPercentage"];
  }

  if (self->_totalPhotosAssetsCount)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:{-[_SFPBSpotlightEmbeddingState totalPhotosAssetsCount](self, "totalPhotosAssetsCount")}];
    [v3 setObject:v6 forKeyedSubscript:@"totalPhotosAssetsCount"];
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (embeddedPhotosAssetsCount = self->_embeddedPhotosAssetsCount, embeddedPhotosAssetsCount == objc_msgSend(v4, "embeddedPhotosAssetsCount")) && (totalPhotosAssetsCount = self->_totalPhotosAssetsCount, totalPhotosAssetsCount == objc_msgSend(v4, "totalPhotosAssetsCount")))
  {
    embeddedPhotosAssetsPercentage = self->_embeddedPhotosAssetsPercentage;
    v8 = embeddedPhotosAssetsPercentage == [v4 embeddedPhotosAssetsPercentage];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_SFPBSpotlightEmbeddingState *)self embeddedPhotosAssetsCount])
  {
    PBDataWriterWriteInt32Field();
  }

  if ([(_SFPBSpotlightEmbeddingState *)self totalPhotosAssetsCount])
  {
    PBDataWriterWriteInt32Field();
  }

  v4 = [(_SFPBSpotlightEmbeddingState *)self embeddedPhotosAssetsPercentage];
  v5 = v6;
  if (v4)
  {
    PBDataWriterWriteInt32Field();
    v5 = v6;
  }
}

@end