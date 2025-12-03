@interface SyntheticLongShared
+ (id)getSharedInstanceOrRelease:(BOOL)release;
- (id)getShaders:(id)shaders;
@end

@implementation SyntheticLongShared

- (id)getShaders:(id)shaders
{
  shadersCopy = shaders;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  shadersCopy2 = shaders;
  if (!shadersCopy2)
  {
    v8 = [SyntheticLongShaders alloc];
    shadersCopy2 = objc_msgSend_initWithMetal_(v8, v9, shadersCopy, v10);
    if (shadersCopy2)
    {
      objc_storeStrong(p_shaders, shadersCopy2);
    }

    else
    {
      sub_2958A4480();
    }
  }

  return shadersCopy2;
}

+ (id)getSharedInstanceOrRelease:(BOOL)release
{
  releaseCopy = release;
  if (qword_2A18C22D0 != -1)
  {
    sub_2958A4518();
  }

  if (releaseCopy)
  {
    v4 = qword_2A18C22D8;
    qword_2A18C22D8 = 0;

    qword_2A18C22D0 = 0;
  }

  v5 = qword_2A18C22D8;

  return v5;
}

@end