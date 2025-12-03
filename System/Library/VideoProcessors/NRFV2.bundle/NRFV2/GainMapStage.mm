@interface GainMapStage
+ (int)prewarmShaders:(id)shaders;
- (GainMapStage)initWithMetalContext:(id)context;
@end

@implementation GainMapStage

- (GainMapStage)initWithMetalContext:(id)context
{
  contextCopy = context;
  if (!contextCopy)
  {
    sub_2958BD1B8(self);
LABEL_8:
    v7 = 0;
    goto LABEL_4;
  }

  v17.receiver = self;
  v17.super_class = GainMapStage;
  v6 = [(GainMapStage *)&v17 init];
  v7 = v6;
  if (!v6)
  {
    sub_2958BD140();
    goto LABEL_4;
  }

  objc_storeStrong(&v6->_metalContext, context);
  v11 = objc_msgSend_sharedInstance(GainMapShared, v8, v9, v10);
  v14 = objc_msgSend_getShaders_(v11, v12, v7->_metalContext, v13);
  shaders = v7->_shaders;
  v7->_shaders = v14;

  if (!v7->_shaders)
  {
    sub_2958BD094(v7);
    goto LABEL_8;
  }

LABEL_4:

  return v7;
}

+ (int)prewarmShaders:(id)shaders
{
  shadersCopy = shaders;
  if (shadersCopy)
  {
    v4 = [GainMapShaders alloc];
    v7 = objc_msgSend_initWithMetal_(v4, v5, shadersCopy, v6);
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      sub_2958BD274();
      v7 = 0;
      v8 = -12786;
    }
  }

  else
  {
    sub_2958BD2EC(&v10);
    v7 = 0;
    v8 = v10;
  }

  return v8;
}

@end