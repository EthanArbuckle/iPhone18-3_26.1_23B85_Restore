@interface PETEventFreeValuedProperty
- (PETEventFreeValuedProperty)initWithName:(id)a3;
- (id)description;
@end

@implementation PETEventFreeValuedProperty

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(PETEventProperty *)self name];
  v4 = [v2 stringWithFormat:@"FreeValued: Name=%@", v3];

  return v4;
}

- (PETEventFreeValuedProperty)initWithName:(id)a3
{
  v4.receiver = self;
  v4.super_class = PETEventFreeValuedProperty;
  return [(PETEventProperty *)&v4 initWithName:a3];
}

@end