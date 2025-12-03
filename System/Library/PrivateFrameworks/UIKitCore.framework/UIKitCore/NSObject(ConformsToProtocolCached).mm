@interface NSObject(ConformsToProtocolCached)
- (uint64_t)conformsToProtocolCached:()ConformsToProtocolCached;
@end

@implementation NSObject(ConformsToProtocolCached)

- (uint64_t)conformsToProtocolCached:()ConformsToProtocolCached
{
  v4 = a3;
  if (qword_1ED49EC80 != -1)
  {
    dispatch_once(&qword_1ED49EC80, &__block_literal_global_323);
  }

  v5 = [[_ConformsToProtocolCachedKey alloc] initWithObject:self protocol:v4];
  v6 = [_MergedGlobals_1154 objectForKey:v5];
  v7 = v6;
  if (v6)
  {
    bOOLValue = [v6 BOOLValue];
  }

  else
  {
    bOOLValue = [self conformsToProtocol:v4];
    v9 = _MergedGlobals_1154;
    v10 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
    [v9 setObject:v10 forKey:v5];
  }

  return bOOLValue;
}

@end