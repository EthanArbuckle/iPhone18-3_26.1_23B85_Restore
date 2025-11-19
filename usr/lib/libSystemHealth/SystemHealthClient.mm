@interface SystemHealthClient
- (SystemHealthClient)init;
- (SystemHealthClient)initWithComponentType:(unint64_t)a3;
- (unint64_t)getComponentStatusWithError:(id *)a3;
@end

@implementation SystemHealthClient

- (SystemHealthClient)init
{
  [MEMORY[0x29EDB8DD0] raise:*MEMORY[0x29EDB8CD0] format:@"Please use initWithComponentType"];

  return 0;
}

- (SystemHealthClient)initWithComponentType:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = SystemHealthClient;
  result = [(SystemHealthClient *)&v5 init];
  if (result)
  {
    result->componentType = a3;
  }

  return result;
}

- (unint64_t)getComponentStatusWithError:(id *)a3
{
  v3 = MEMORY[0x29EDB8DD0];
  v4 = *MEMORY[0x29EDB8CD0];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"You must override %@ in a subclass", v5}];

  return 0;
}

@end