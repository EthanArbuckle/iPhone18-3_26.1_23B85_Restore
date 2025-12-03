@interface VKLogicDebugInfo
- (VKLogicDebugInfo)initWithName:(id)name identifier:(unint64_t)identifier;
@end

@implementation VKLogicDebugInfo

- (VKLogicDebugInfo)initWithName:(id)name identifier:(unint64_t)identifier
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = VKLogicDebugInfo;
  v7 = [(VKLogicDebugInfo *)&v12 init];
  if (v7)
  {
    v8 = [nameCopy copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_identifier = identifier;
    v10 = v7;
  }

  return v7;
}

@end