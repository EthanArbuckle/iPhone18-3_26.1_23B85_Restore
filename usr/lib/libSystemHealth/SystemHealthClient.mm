@interface SystemHealthClient
- (SystemHealthClient)init;
- (SystemHealthClient)initWithComponentType:(unint64_t)type;
- (unint64_t)getComponentStatusWithError:(id *)error;
@end

@implementation SystemHealthClient

- (SystemHealthClient)init
{
  [MEMORY[0x29EDB8DD0] raise:*MEMORY[0x29EDB8CD0] format:@"Please use initWithComponentType"];

  return 0;
}

- (SystemHealthClient)initWithComponentType:(unint64_t)type
{
  v5.receiver = self;
  v5.super_class = SystemHealthClient;
  result = [(SystemHealthClient *)&v5 init];
  if (result)
  {
    result->componentType = type;
  }

  return result;
}

- (unint64_t)getComponentStatusWithError:(id *)error
{
  v3 = MEMORY[0x29EDB8DD0];
  v4 = *MEMORY[0x29EDB8CD0];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];

  return 0;
}

@end