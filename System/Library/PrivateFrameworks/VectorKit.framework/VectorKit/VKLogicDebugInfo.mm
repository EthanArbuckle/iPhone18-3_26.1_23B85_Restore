@interface VKLogicDebugInfo
- (VKLogicDebugInfo)initWithName:(id)a3 identifier:(unint64_t)a4;
@end

@implementation VKLogicDebugInfo

- (VKLogicDebugInfo)initWithName:(id)a3 identifier:(unint64_t)a4
{
  v6 = a3;
  v12.receiver = self;
  v12.super_class = VKLogicDebugInfo;
  v7 = [(VKLogicDebugInfo *)&v12 init];
  if (v7)
  {
    v8 = [v6 copy];
    name = v7->_name;
    v7->_name = v8;

    v7->_identifier = a4;
    v10 = v7;
  }

  return v7;
}

@end