@interface NANDTelemetry_NandCoreAnalyticsDaily
- (void)runActivity;
@end

@implementation NANDTelemetry_NandCoreAnalyticsDaily

- (void)runActivity
{
  if (+[NANDTelemetry_NandCoreAnalyticsDaily shouldCollectNandCounters])
  {
    stateMgr = [(NANDTelemetry_Base *)self stateMgr];
    v11 = [stateMgr getValueForKey:@"geom_error_payload_cnt"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntValue = [v11 unsignedIntValue];
    }

    else
    {
      stateMgr2 = [(NANDTelemetry_Base *)self stateMgr];
      v6 = [NSNumber numberWithUnsignedInt:0];
      [stateMgr2 saveValue:v6 forKey:@"geom_error_payload_cnt" doPersist:1];

      unsignedIntValue = 0;
    }

    SetGeomErrorPayloadCnt(unsignedIntValue);
    NandInfoExtractToCA_runAllSteps(0);
    GeomErrorPayloadCnt = GetGeomErrorPayloadCnt();
    if (GeomErrorPayloadCnt > unsignedIntValue)
    {
      v8 = GeomErrorPayloadCnt;
      stateMgr3 = [(NANDTelemetry_Base *)self stateMgr];
      v10 = [NSNumber numberWithUnsignedInt:v8];
      [stateMgr3 saveValue:v10 forKey:@"geom_error_payload_cnt" doPersist:1];
    }
  }
}

@end