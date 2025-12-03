@interface SBIconDragPlaceholderIconViewController
- (CGRect)visibleBounds;
- (void)setIconImageInfo:(SBIconImageInfo *)info;
@end

@implementation SBIconDragPlaceholderIconViewController

- (void)setIconImageInfo:(SBIconImageInfo *)info
{
  self->iconImageInfo.size.width = v3;
  self->iconImageInfo.size.height = v4;
  self->iconImageInfo.scale = v5;
  self->iconImageInfo.continuousCornerRadius = v6;
}

- (CGRect)visibleBounds
{
  x = self->visibleBounds.origin.x;
  y = self->visibleBounds.origin.y;
  width = self->visibleBounds.size.width;
  height = self->visibleBounds.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end