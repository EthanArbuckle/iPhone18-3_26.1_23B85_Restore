@interface PUPickerAssetPreparationOptions
- (PUPickerAssetPreparationOptions)initWithIncludeLocation:(BOOL)a3 includeCaption:(BOOL)a4 userEncodingPolicy:(int64_t)a5;
@end

@implementation PUPickerAssetPreparationOptions

- (PUPickerAssetPreparationOptions)initWithIncludeLocation:(BOOL)a3 includeCaption:(BOOL)a4 userEncodingPolicy:(int64_t)a5
{
  v9.receiver = self;
  v9.super_class = PUPickerAssetPreparationOptions;
  result = [(PUPickerAssetPreparationOptions *)&v9 init];
  if (result)
  {
    result->_shouldIncludeLocation = a3;
    result->_shouldIncludeCaption = a4;
    result->_userEncodingPolicy = a5;
  }

  return result;
}

@end