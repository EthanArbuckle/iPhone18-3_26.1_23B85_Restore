@interface PKAMSMediaRequestArtworkConfiguration
- (CGSize)artworkSize;
- (PKAMSMediaRequestArtworkConfiguration)initWithArtworkSize:(CGSize)size artworkCropType:(unint64_t)type animatedArtworkType:(unint64_t)artworkType;
@end

@implementation PKAMSMediaRequestArtworkConfiguration

- (PKAMSMediaRequestArtworkConfiguration)initWithArtworkSize:(CGSize)size artworkCropType:(unint64_t)type animatedArtworkType:(unint64_t)artworkType
{
  height = size.height;
  width = size.width;
  v10.receiver = self;
  v10.super_class = PKAMSMediaRequestArtworkConfiguration;
  result = [(PKAMSMediaRequestArtworkConfiguration *)&v10 init];
  if (result)
  {
    result->_artworkSize.width = width;
    result->_artworkSize.height = height;
    result->_cropType = type;
    result->_animatedArtworkType = artworkType;
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