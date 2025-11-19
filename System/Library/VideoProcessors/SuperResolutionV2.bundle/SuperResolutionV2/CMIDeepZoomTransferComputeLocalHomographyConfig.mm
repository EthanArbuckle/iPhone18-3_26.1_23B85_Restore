@interface CMIDeepZoomTransferComputeLocalHomographyConfig
- (CMIDeepZoomTransferComputeLocalHomographyConfig)init;
- (int)readPlist:(id)a3;
@end

@implementation CMIDeepZoomTransferComputeLocalHomographyConfig

- (CMIDeepZoomTransferComputeLocalHomographyConfig)init
{
  v3.receiver = self;
  v3.super_class = CMIDeepZoomTransferComputeLocalHomographyConfig;
  result = [(CMIDeepZoomTransferComputeLocalHomographyConfig *)&v3 init];
  if (result)
  {
    result->_useFlowWeightedAverage = 0;
  }

  return result;
}

- (int)readPlist:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [v4 allKeys];
    v6 = [v5 objectAtIndexedSubscript:0];

    if (v6)
    {
      sub_CDF0(v4, v6, self, &v9);
      v7 = v9;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end