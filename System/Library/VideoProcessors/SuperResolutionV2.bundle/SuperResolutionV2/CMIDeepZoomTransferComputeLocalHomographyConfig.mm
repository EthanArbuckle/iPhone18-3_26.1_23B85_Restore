@interface CMIDeepZoomTransferComputeLocalHomographyConfig
- (CMIDeepZoomTransferComputeLocalHomographyConfig)init;
- (int)readPlist:(id)plist;
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

- (int)readPlist:(id)plist
{
  plistCopy = plist;
  if ([plistCopy count])
  {
    allKeys = [plistCopy allKeys];
    v6 = [allKeys objectAtIndexedSubscript:0];

    if (v6)
    {
      sub_CDF0(plistCopy, v6, self, &v9);
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