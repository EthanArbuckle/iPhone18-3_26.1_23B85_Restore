@interface SBSwitcherScrollViewAttributes
- (CGPoint)pagingOrigin;
- (CGRect)frame;
- (CGSize)contentSize;
- (CGSize)interpageSpacingForPaging;
- (id)_copyWithClass:(Class)class;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation SBSwitcherScrollViewAttributes

- (CGRect)frame
{
  x = self->_frame.origin.x;
  y = self->_frame.origin.y;
  width = self->_frame.size.width;
  height = self->_frame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)contentSize
{
  width = self->_contentSize.width;
  height = self->_contentSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBSwitcherScrollViewAttributes *)self _copyWithClass:v4];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_opt_class();

  return [(SBSwitcherScrollViewAttributes *)self _copyWithClass:v4];
}

- (id)_copyWithClass:(Class)class
{
  v4 = objc_alloc_init(class);
  [v4 setContentSize:{self->_contentSize.width, self->_contentSize.height}];
  [v4 setDecelerationRate:self->_decelerationRate];
  [v4 setScrollViewPagingEnabled:self->_scrollViewPagingEnabled];
  [v4 setInterpageSpacingForPaging:{self->_interpageSpacingForPaging.width, self->_interpageSpacingForPaging.height}];
  [v4 setPagingOrigin:{self->_pagingOrigin.x, self->_pagingOrigin.y}];
  [v4 setInterpolatesDuringSwipeToKill:self->_interpolatesDuringSwipeToKill];
  [v4 setFrame:{self->_frame.origin.x, self->_frame.origin.y, self->_frame.size.width, self->_frame.size.height}];
  return v4;
}

- (CGSize)interpageSpacingForPaging
{
  width = self->_interpageSpacingForPaging.width;
  height = self->_interpageSpacingForPaging.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGPoint)pagingOrigin
{
  x = self->_pagingOrigin.x;
  y = self->_pagingOrigin.y;
  result.y = y;
  result.x = x;
  return result;
}

@end