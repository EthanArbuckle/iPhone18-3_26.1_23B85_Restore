@interface PTBoxFilter
- (PTBoxFilter)initWithMetalContext:(id)a3 options:(int)a4;
- (int)boxFilter1Channel:(id)a3 inTex:(id)a4 intermediate:(id)a5 outTex:(id)a6 kernelWidth:(int)a7 outputRemapping:;
@end

@implementation PTBoxFilter

- (PTBoxFilter)initWithMetalContext:(id)a3 options:(int)a4
{
  v7 = a3;
  v19 = a4;
  v18.receiver = self;
  v18.super_class = PTBoxFilter;
  v8 = [(PTBoxFilter *)&v18 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_metalContext, a3);
    v10 = objc_opt_new();
    [v10 setConstantValue:&v19 type:29 withName:@"kBoxFilterOutputMapping"];
    v11 = [v7 computePipelineStateFor:@"boxFilter1ChannelHorizontal" withConstants:v10];
    boxFilter1ChannelHorizontal = v9->_boxFilter1ChannelHorizontal;
    v9->_boxFilter1ChannelHorizontal = v11;

    if (v9->_boxFilter1ChannelHorizontal)
    {
      v13 = [v7 computePipelineStateFor:@"boxFilter1ChannelVertical" withConstants:v10];
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

- (int)boxFilter1Channel:(id)a3 inTex:(id)a4 intermediate:(id)a5 outTex:(id)a6 kernelWidth:(int)a7 outputRemapping:
{
  v8 = v7;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v28 = a7;
  v27 = v8;
  if ((a7 & 0x80000001) == 1)
  {
    v17 = [a3 computeCommandEncoder];
    [v17 setComputePipelineState:self->_boxFilter1ChannelVertical];
    [v17 setTexture:v14 atIndex:0];
    [v17 setTexture:v15 atIndex:1];
    [v17 setBytes:&v28 length:4 atIndex:0];
    v24 = [v15 width];
    v25 = [v15 height];
    v26 = 1;
    v22 = xmmword_2244A5440;
    v23 = 1;
    [v17 dispatchThreads:&v24 threadsPerThreadgroup:&v22];
    [v17 setComputePipelineState:self->_boxFilter1ChannelHorizontal];
    [v17 setTexture:v15 atIndex:0];
    [v17 setTexture:v16 atIndex:1];
    [v17 setBytes:&v28 length:4 atIndex:0];
    [v17 setBytes:&v27 length:8 atIndex:1];
    v18 = [v16 width];
    v19 = [v16 height];
    v24 = v18;
    v25 = v19;
    v26 = 1;
    v22 = xmmword_2244A5440;
    v23 = 1;
    [v17 dispatchThreads:&v24 threadsPerThreadgroup:&v22];
    [v17 endEncoding];
    v20 = 0;
  }

  else
  {
    v17 = _PTLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [PTBoxFilter boxFilter1Channel:v17 inTex:? intermediate:? outTex:? kernelWidth:? outputRemapping:?];
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