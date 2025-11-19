@interface VMUVMRegionRangeInfo
- (VMUVMRegionRangeInfo)init;
- (_VMURange)range;
@end

@implementation VMUVMRegionRangeInfo

- (VMUVMRegionRangeInfo)init
{
  v3.receiver = self;
  v3.super_class = VMUVMRegionRangeInfo;
  result = [(VMUVMRegionRangeInfo *)&v3 init];
  if (result)
  {
    result->stackIdentifier = -1;
  }

  return result;
}

- (_VMURange)range
{
  size = self->size;
  address = self->address;
  result.length = size;
  result.location = address;
  return result;
}

@end