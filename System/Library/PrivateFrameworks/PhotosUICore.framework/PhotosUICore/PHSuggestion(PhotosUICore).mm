@interface PHSuggestion(PhotosUICore)
- (uint64_t)px_isFeaturedPhoto;
@end

@implementation PHSuggestion(PhotosUICore)

- (uint64_t)px_isFeaturedPhoto
{
  allFeaturedStateEnabledSuggestionTypesForWidget = [MEMORY[0x1E6978AE8] allFeaturedStateEnabledSuggestionTypesForWidget];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{objc_msgSend(self, "type")}];
  v4 = [allFeaturedStateEnabledSuggestionTypesForWidget containsObject:v3];

  return v4;
}

@end