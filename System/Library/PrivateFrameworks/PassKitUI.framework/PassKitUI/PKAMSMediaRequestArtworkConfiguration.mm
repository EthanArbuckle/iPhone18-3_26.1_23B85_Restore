@interface PKAMSMediaRequestArtworkConfiguration
- (CGSize)artworkSize;
- (PKAMSMediaRequestArtworkConfiguration)initWithArtworkSize:(CGSize)a3 artworkCropType:(unint64_t)a4 animatedArtworkType:(unint64_t)a5;
@end

@implementation PKAMSMediaRequestArtworkConfiguration

- (PKAMSMediaRequestArtworkConfiguration)initWithArtworkSize:(CGSize)a3 artworkCropType:(unint64_t)a4 animatedArtworkType:(unint64_t)a5
{
  height = a3.height;
  width = a3.width;
  v10.receiver = self;
  v10.super_class = PKAMSMediaRequestArtworkConfiguration;
  result = [(PKAMSMediaRequestArtworkConfiguration *)&v10 init];
  if (result)
  {
    result->_artworkSize.width = width;
    result->_artworkSize.height = height;
    result->_cropType = a4;
    result->_animatedArtworkType = a5;
  }

  return result;
}

- (CGSize)artworkSize
{
  width = self->_artworkSize.width;
  height = self->_artworkSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end