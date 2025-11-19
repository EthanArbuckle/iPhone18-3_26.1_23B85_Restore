@interface SBHLibraryIconPrecachingInfo
- (void)setAdditionalImageInfo:(SBIconImageInfo *)a3;
- (void)setTopLevelImageInfo:(SBIconImageInfo *)a3;
@end

@implementation SBHLibraryIconPrecachingInfo

- (void)setTopLevelImageInfo:(SBIconImageInfo *)a3
{
  self->_topLevelImageInfo.size.width = v3;
  self->_topLevelImageInfo.size.height = v4;
  self->_topLevelImageInfo.scale = v5;
  self->_topLevelImageInfo.continuousCornerRadius = v6;
}

- (void)setAdditionalImageInfo:(SBIconImageInfo *)a3
{
  self->_additionalImageInfo.size.width = v3;
  self->_additionalImageInfo.size.height = v4;
  self->_additionalImageInfo.scale = v5;
  self->_additionalImageInfo.continuousCornerRadius = v6;
}

@end