@interface _PXUIAssetBadgeTopGroup
- (CGRect)buttonFrame;
- (CGRect)chevronImageFrame;
- (CGRect)frame;
- (CGRect)imageFrame;
- (CGRect)labelFrame;
- (PXAssetBadgeInfo)badgeInfo;
- (void)setBadgeInfo:(PXAssetBadgeInfo *)info;
@end

@implementation _PXUIAssetBadgeTopGroup

- (CGRect)buttonFrame
{
  x = self->_buttonFrame.origin.x;
  y = self->_buttonFrame.origin.y;
  width = self->_buttonFrame.size.width;
  height = self->_buttonFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)labelFrame
{
  x = self->_labelFrame.origin.x;
  y = self->_labelFrame.origin.y;
  width = self->_labelFrame.size.width;
  height = self->_labelFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)chevronImageFrame
{
  x = self->_chevronImageFrame.origin.x;
  y = self->_chevronImageFrame.origin.y;
  width = self->_chevronImageFrame.size.width;
  height = self->_chevronImageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)imageFrame
{
  x = self->_imageFrame.origin.x;
  y = self->_imageFrame.origin.y;
  width = self->_imageFrame.size.width;
  height = self->_imageFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

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

- (void)setBadgeInfo:(PXAssetBadgeInfo *)info
{
  v3 = *&info->count;
  *&self->_badgeInfo.badges = *&info->badges;
  *&self->_badgeInfo.count = v3;
}

- (PXAssetBadgeInfo)badgeInfo
{
  v3 = *&self[2].badges;
  *&retstr->badges = *&self[1].count;
  *&retstr->count = v3;
  return self;
}

@end