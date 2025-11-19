@interface SyntheticLongShared
+ (id)getSharedInstanceOrRelease:(BOOL)a3;
- (id)getShaders:(id)a3;
@end

@implementation SyntheticLongShared

- (id)getShaders:(id)a3
{
  v4 = a3;
  shaders = self->_shaders;
  p_shaders = &self->_shaders;
  v7 = shaders;
  if (!v7)
  {
    v8 = [SyntheticLongShaders alloc];
    v7 = objc_msgSend_initWithMetal_(v8, v9, v4, v10);
    if (v7)
    {
      objc_storeStrong(p_shaders, v7);
    }

    else
    {
      sub_2958A4480();
    }
  }

  return v7;
}

+ (id)getSharedInstanceOrRelease:(BOOL)a3
{
  v3 = a3;
  if (qword_2A18C22D0 != -1)
  {
    sub_2958A4518();
  }

  if (v3)
  {
    v4 = qword_2A18C22D8;
    qword_2A18C22D8 = 0;

    qword_2A18C22D0 = 0;
  }

  v5 = qword_2A18C22D8;

  return v5;
}

@end