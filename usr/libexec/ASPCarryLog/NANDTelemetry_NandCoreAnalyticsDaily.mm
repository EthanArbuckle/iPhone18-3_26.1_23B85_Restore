@interface NANDTelemetry_NandCoreAnalyticsDaily
- (void)runActivity;
@end

@implementation NANDTelemetry_NandCoreAnalyticsDaily

- (void)runActivity
{
  if (+[NANDTelemetry_NandCoreAnalyticsDaily shouldCollectNandCounters])
  {
    v3 = [(NANDTelemetry_Base *)self stateMgr];
    v11 = [v3 getValueForKey:@"geom_error_payload_cnt"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v11 unsignedIntValue];
    }

    else
    {
      v5 = [(NANDTelemetry_Base *)self stateMgr];
      v6 = [NSNumber numberWithUnsignedInt:0];
      [v5 saveValue:v6 forKey:@"geom_error_payload_cnt" doPersist:1];

      v4 = 0;
    }

    SetGeomErrorPayloadCnt(v4);
    NandInfoExtractToCA_runAllSteps(0);
    GeomErrorPayloadCnt = GetGeomErrorPayloadCnt();
    if (GeomErrorPayloadCnt > v4)
    {
      v8 = GeomErrorPayloadCnt;
      v9 = [(NANDTelemetry_Base *)self stateMgr];
      v10 = [NSNumber numberWithUnsignedInt:v8];
      [v9 saveValue:v10 forKey:@"geom_error_payload_cnt" doPersist:1];
    }
  }
}

@end