@interface FPMemoryMultiRegion
- (NSString)auxDataName;
- (id)auxData;
@end

@implementation FPMemoryMultiRegion

- (id)auxData
{
  v5 = @"element_size";
  v2 = [[FPAuxData alloc] initWithValue:self->_regionSize shouldAggregate:0];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (NSString)auxDataName
{
  auxDataName = self->_auxDataName;
  if (auxDataName)
  {
    v3 = auxDataName;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = FPMemoryMultiRegion;
    v3 = [(FPMemoryRegion *)&v5 auxDataName];
  }

  return v3;
}

@end