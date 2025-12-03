@interface PETEventFreeValuedProperty
- (PETEventFreeValuedProperty)initWithName:(id)name;
- (id)description;
@end

@implementation PETEventFreeValuedProperty

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  name = [(PETEventProperty *)self name];
  v4 = [v2 stringWithFormat:@"FreeValued: Name=%@", name];

  return v4;
}

- (PETEventFreeValuedProperty)initWithName:(id)name
{
  v4.receiver = self;
  v4.super_class = PETEventFreeValuedProperty;
  return [(PETEventProperty *)&v4 initWithName:name];
}

@end