@interface SBHLibraryIconPrecachingInfo
- (void)setAdditionalImageInfo:(SBIconImageInfo *)info;
- (void)setTopLevelImageInfo:(SBIconImageInfo *)info;
@end

@implementation SBHLibraryIconPrecachingInfo

- (void)setTopLevelImageInfo:(SBIconImageInfo *)info
{
  self->_topLevelImageInfo.size.width = v3;
  self->_topLevelImageInfo.size.height = v4;
  self->_topLevelImageInfo.scale = v5;
  self->_topLevelImageInfo.continuousCornerRadius = v6;
}

- (void)setAdditionalImageInfo:(SBIconImageInfo *)info
{
  self->_additionalImageInfo.size.width = v3;
  self->_additionalImageInfo.size.height = v4;
  self->_additionalImageInfo.scale = v5;
  self->_additionalImageInfo.continuousCornerRadius = v6;
}

@end