@interface NSObjectProtocolProperties
@end

@implementation NSObjectProtocolProperties

void ___NSObjectProtocolProperties_block_invoke()
{
  outCount = 0;
  v0 = protocol_copyPropertyList(&unk_282FAF538, &outCount);
  v1 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v2 = _NSObjectProtocolProperties___properties;
  _NSObjectProtocolProperties___properties = v1;

  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = property_getName(v0[i]);
      v5 = _NSObjectProtocolProperties___properties;
      v6 = _NSStringFromRuntimeString(Name);
      [v5 addObject:v6];
    }
  }

  free(v0);
}

@end