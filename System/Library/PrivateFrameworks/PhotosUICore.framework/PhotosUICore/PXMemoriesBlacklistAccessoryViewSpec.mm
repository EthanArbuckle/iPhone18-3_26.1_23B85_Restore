@interface PXMemoriesBlacklistAccessoryViewSpec
+ (PXMemoriesBlacklistAccessoryViewSpec)specWithFrame:(CGRect)frame;
- (CGRect)accessoryViewFrame;
- (CGRect)contentViewFrame;
- (PXMemoriesBlacklistAccessoryViewSpec)initWithContentViewFrame:(CGRect)frame;
@end

@implementation PXMemoriesBlacklistAccessoryViewSpec

- (CGRect)accessoryViewFrame
{
  x = self->_accessoryViewFrame.origin.x;
  y = self->_accessoryViewFrame.origin.y;
  width = self->_accessoryViewFrame.size.width;
  height = self->_accessoryViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)contentViewFrame
{
  x = self->_contentViewFrame.origin.x;
  y = self->_contentViewFrame.origin.y;
  width = self->_contentViewFrame.size.width;
  height = self->_contentViewFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (PXMemoriesBlacklistAccessoryViewSpec)initWithContentViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = PXMemoriesBlacklistAccessoryViewSpec;
  result = [(PXMemoriesBlacklistAccessoryViewSpec *)&v8 init];
  if (result)
  {
    result->_contentViewFrame.origin.x = x;
    result->_contentViewFrame.origin.y = y;
    result->_contentViewFrame.size.width = width;
    result->_contentViewFrame.size.height = height;
    result->_accessoryViewFrame.origin = kDefaultAccessoryViewRect;
    result->_accessoryViewFrame.size = unk_1A5383268;
    result->_type = 0;
  }

  return result;
}

+ (PXMemoriesBlacklistAccessoryViewSpec)specWithFrame:(CGRect)frame
{
  v3 = [[PXMemoriesBlacklistAccessoryViewSpec alloc] initWithContentViewFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];

  return v3;
}

@end