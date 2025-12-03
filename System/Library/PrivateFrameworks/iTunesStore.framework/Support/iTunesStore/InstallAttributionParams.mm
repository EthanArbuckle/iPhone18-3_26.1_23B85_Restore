@interface InstallAttributionParams
- (BOOL)isEqual:(id)equal;
@end

@implementation InstallAttributionParams

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    v5 = equalCopy;
    appAdamId = [(InstallAttributionParams *)self appAdamId];
    appAdamId2 = [v5 appAdamId];
    if ([appAdamId isEqual:appAdamId2])
    {
      adNetworkId = [(InstallAttributionParams *)self adNetworkId];
      adNetworkId2 = [v5 adNetworkId];
      if ([adNetworkId isEqual:adNetworkId2])
      {
        campaignId = [(InstallAttributionParams *)self campaignId];
        campaignId2 = [v5 campaignId];
        if ([campaignId isEqual:campaignId2])
        {
          timestamp = [(InstallAttributionParams *)self timestamp];
          timestamp2 = [v5 timestamp];
          v26 = timestamp;
          if ([timestamp isEqual:timestamp2])
          {
            impressionId = [(InstallAttributionParams *)self impressionId];
            impressionId2 = [v5 impressionId];
            v24 = impressionId;
            if ([impressionId isEqual:impressionId2])
            {
              attributionSignature = [(InstallAttributionParams *)self attributionSignature];
              attributionSignature2 = [v5 attributionSignature];
              v22 = attributionSignature;
              v16 = attributionSignature;
              v17 = attributionSignature2;
              if ([v16 isEqual:attributionSignature2])
              {
                localTimestamp = [(InstallAttributionParams *)self localTimestamp];
                localTimestamp2 = [v5 localTimestamp];
                v18 = [localTimestamp isEqual:localTimestamp2];
              }

              else
              {
                v18 = 0;
              }
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }
        }

        else
        {
          v18 = 0;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

@end