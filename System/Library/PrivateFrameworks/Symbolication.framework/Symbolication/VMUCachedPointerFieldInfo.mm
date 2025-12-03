@interface VMUCachedPointerFieldInfo
- (VMUCachedPointerFieldInfo)initWithRootField:(id)field leafField:(id)leafField leafOffsetInRootField:(unsigned int)rootField;
@end

@implementation VMUCachedPointerFieldInfo

- (VMUCachedPointerFieldInfo)initWithRootField:(id)field leafField:(id)leafField leafOffsetInRootField:(unsigned int)rootField
{
  fieldCopy = field;
  leafFieldCopy = leafField;
  v14.receiver = self;
  v14.super_class = VMUCachedPointerFieldInfo;
  v11 = [(VMUCachedPointerFieldInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_rootField, field);
    objc_storeStrong(&v12->_leafField, leafField);
    v12->_leafOffsetInRootField = rootField;
  }

  return v12;
}

@end