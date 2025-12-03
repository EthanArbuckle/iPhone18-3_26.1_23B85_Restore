@interface PTBoxFilter
- (PTBoxFilter)initWithMetalContext:(id)context options:(int)options;
- (int)boxFilter1Channel:(id)channel inTex:(id)tex intermediate:(id)intermediate outTex:(id)outTex kernelWidth:(int)width outputRemapping:;
@end

@implementation PTBoxFilter

- (PTBoxFilter)initWithMetalContext:(id)context options:(int)options
{
  contextCopy = context;
  optionsCopy = options;
  v18.receiver = self;
  v18.super_class = PTBoxFilter;
  v8 = [(PTBoxFilter *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metalContext, context);
    v10 = objc_opt_new();
    [v10 setConstantValue:&optionsCopy type:29 withName:@"kBoxFilterOutputMapping"];
    v11 = [contextCopy computePipelineStateFor:@"boxFilter1ChannelHorizontal" withConstants:v10];
    boxFilter1ChannelHorizontal = v9->_boxFilter1ChannelHorizontal;
    v9->_boxFilter1ChannelHorizontal = v11;

    if (v9->_boxFilter1ChannelHorizontal)
    {
      v13 = [contextCopy computePipelineStateFor:@"boxFilter1ChannelVertical" withConstants:v10];
      boxFilter1ChannelVertical = v9->_boxFilter1ChannelVertical;
      v9->_boxFilter1ChannelVertical = v13;

      if (v9->_boxFilter1ChannelVertical)
      {
        v15 = v9;
LABEL_11:

        goto LABEL_12;
      }

      v16 = _PTLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PTBoxFilter initWithMetalContext:v16 options:?];
      }
    }

    else
    {
      v16 = _PTLogSystem();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [PTBoxFilter initWithMetalContext:v16 options:?];
      }
    }

    v15 = 0;
    goto LABEL_11;
  }

  v15 = 0;
LABEL_12:

  return v15;
}

- (int)boxFilter1Channel:(id)channel inTex:(id)tex intermediate:(id)intermediate outTex:(id)outTex kernelWidth:(int)width outputRemapping:
{
  v8 = v7;
  texCopy = tex;
  intermediateCopy = intermediate;
  outTexCopy = outTex;
  widthCopy = width;
  v27 = v8;
  if ((width & 0x80000001) == 1)
  {
    computeCommandEncoder = [channel computeCommandEncoder];
    [computeCommandEncoder setComputePipelineState:self->_boxFilter1ChannelVertical];
    [computeCommandEncoder setTexture:texCopy atIndex:0];
    [computeCommandEncoder setTexture:intermediateCopy atIndex:1];
    [computeCommandEncoder setBytes:&widthCopy length:4 atIndex:0];
    width = [intermediateCopy width];
    height = [intermediateCopy height];
    v26 = 1;
    v22 = xmmword_2244A5440;
    v23 = 1;
    [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v22];
    [computeCommandEncoder setComputePipelineState:self->_boxFilter1ChannelHorizontal];
    [computeCommandEncoder setTexture:intermediateCopy atIndex:0];
    [computeCommandEncoder setTexture:outTexCopy atIndex:1];
    [computeCommandEncoder setBytes:&widthCopy length:4 atIndex:0];
    [computeCommandEncoder setBytes:&v27 length:8 atIndex:1];
    width2 = [outTexCopy width];
    height2 = [outTexCopy height];
    width = width2;
    height = height2;
    v26 = 1;
    v22 = xmmword_2244A5440;
    v23 = 1;
    [computeCommandEncoder dispatchThreads:&width threadsPerThreadgroup:&v22];
    [computeCommandEncoder endEncoding];
    v20 = 0;
  }

  else
  {
    computeCommandEncoder = _PTLogSystem();
    if (os_log_type_enabled(computeCommandEncoder, OS_LOG_TYPE_ERROR))
    {
      [PTBoxFilter boxFilter1Channel:computeCommandEncoder inTex:? intermediate:? outTex:? kernelWidth:? outputRemapping:?];
    }

    v20 = -10;
  }

  return v20;
}

- (void)initWithMetalContext:(os_log_t)log options:.cold.1(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_boxFilter1ChannelVertical";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

- (void)initWithMetalContext:(os_log_t)log options:.cold.2(os_log_t log)
{
  v3 = *MEMORY[0x277D85DE8];
  v1 = 136315138;
  v2 = "_boxFilter1ChannelHorizontal";
  _os_log_error_impl(&dword_2243FB000, log, OS_LOG_TYPE_ERROR, "Assertion failed %s", &v1, 0xCu);
}

@end