@interface PXMemoriesBlacklistAccessoryViewSpec
+ (PXMemoriesBlacklistAccessoryViewSpec)specWithFrame:(CGRect)a3;
- (CGRect)accessoryViewFrame;
- (CGRect)contentViewFrame;
- (PXMemoriesBlacklistAccessoryViewSpec)initWithContentViewFrame:(CGRect)a3;
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

- (PXMemoriesBlacklistAccessoryViewSpec)initWithContentViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

+ (PXMemoriesBlacklistAccessoryViewSpec)specWithFrame:(CGRect)a3
{
  v3 = [[PXMemoriesBlacklistAccessoryViewSpec alloc] initWithContentViewFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];

  return v3;
}

@end