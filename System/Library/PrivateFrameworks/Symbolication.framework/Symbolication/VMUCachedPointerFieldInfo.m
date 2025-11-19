@interface VMUCachedPointerFieldInfo
- (VMUCachedPointerFieldInfo)initWithRootField:(id)a3 leafField:(id)a4 leafOffsetInRootField:(unsigned int)a5;
@end

@implementation VMUCachedPointerFieldInfo

- (VMUCachedPointerFieldInfo)initWithRootField:(id)a3 leafField:(id)a4 leafOffsetInRootField:(unsigned int)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = VMUCachedPointerFieldInfo;
  v11 = [(VMUCachedPointerFieldInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_rootField, a3);
    objc_storeStrong(&v12->_leafField, a4);
    v12->_leafOffsetInRootField = a5;
  }

  return v12;
}

@end