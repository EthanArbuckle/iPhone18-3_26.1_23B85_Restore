@interface PBFGalleryOptions
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation PBFGalleryOptions

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(objc_opt_class());
  [v4 setModeSemanticTypeToCreate:self->_modeSemanticTypeToCreate];
  [v4 setSuggestedGalleryItem:self->_suggestedGalleryItem];
  return v4;
}

@end