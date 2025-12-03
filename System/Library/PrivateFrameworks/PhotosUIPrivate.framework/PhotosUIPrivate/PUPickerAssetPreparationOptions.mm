@interface PUPickerAssetPreparationOptions
- (PUPickerAssetPreparationOptions)initWithIncludeLocation:(BOOL)location includeCaption:(BOOL)caption userEncodingPolicy:(int64_t)policy;
@end

@implementation PUPickerAssetPreparationOptions

- (PUPickerAssetPreparationOptions)initWithIncludeLocation:(BOOL)location includeCaption:(BOOL)caption userEncodingPolicy:(int64_t)policy
{
  v9.receiver = self;
  v9.super_class = PUPickerAssetPreparationOptions;
  result = [(PUPickerAssetPreparationOptions *)&v9 init];
  if (result)
  {
    result->_shouldIncludeLocation = location;
    result->_shouldIncludeCaption = caption;
    result->_userEncodingPolicy = policy;
  }

  return result;
}

@end