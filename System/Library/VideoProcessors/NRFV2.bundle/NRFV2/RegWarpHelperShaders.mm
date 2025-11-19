@interface RegWarpHelperShaders
- (RegWarpHelperShaders)initWithMetalContext:(id)a3;
@end

@implementation RegWarpHelperShaders

- (RegWarpHelperShaders)initWithMetalContext:(id)a3
{
  v4 = a3;
  v17 = 0;
  if (!v4)
  {
    FigDebugAssert3();
    v16 = 0;
    v15 = 0;
    v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

LABEL_10:
    v6 = 0;
    goto LABEL_5;
  }

  v14.receiver = self;
  v14.super_class = RegWarpHelperShaders;
  v6 = [(RegWarpHelperShaders *)&v14 init];
  if (!v6)
  {
    sub_295893A74();
    goto LABEL_5;
  }

  v7 = objc_msgSend_computePipelineStateFor_constants_fault_(v4, v5, @"rwppDownsampleAndConvert10To8", 0, &v17);
  downsampleAndConvert10To8 = v6->_downsampleAndConvert10To8;
  v6->_downsampleAndConvert10To8 = v7;

  if (!v7)
  {
    sub_295893A04(v6);
    goto LABEL_10;
  }

  v10 = objc_msgSend_computePipelineStateFor_constants_fault_(v4, v9, @"downsampleRGBToLuma", 0, &v17);
  downsampleRGBToLuma = v6->_downsampleRGBToLuma;
  v6->_downsampleRGBToLuma = v10;

  if (!v10)
  {
    sub_295893994(v6);
    goto LABEL_10;
  }

LABEL_5:

  return v6;
}

@end