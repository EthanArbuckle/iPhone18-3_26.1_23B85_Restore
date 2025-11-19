@interface InstallAttributionParams
- (BOOL)isEqual:(id)a3;
@end

@implementation InstallAttributionParams

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    v5 = v4;
    v6 = [(InstallAttributionParams *)self appAdamId];
    v7 = [v5 appAdamId];
    if ([v6 isEqual:v7])
    {
      v8 = [(InstallAttributionParams *)self adNetworkId];
      v9 = [v5 adNetworkId];
      if ([v8 isEqual:v9])
      {
        v10 = [(InstallAttributionParams *)self campaignId];
        v11 = [v5 campaignId];
        if ([v10 isEqual:v11])
        {
          v12 = [(InstallAttributionParams *)self timestamp];
          v25 = [v5 timestamp];
          v26 = v12;
          if ([v12 isEqual:v25])
          {
            v13 = [(InstallAttributionParams *)self impressionId];
            v23 = [v5 impressionId];
            v24 = v13;
            if ([v13 isEqual:v23])
            {
              v14 = [(InstallAttributionParams *)self attributionSignature];
              v15 = [v5 attributionSignature];
              v22 = v14;
              v16 = v14;
              v17 = v15;
              if ([v16 isEqual:v15])
              {
                v21 = [(InstallAttributionParams *)self localTimestamp];
                v20 = [v5 localTimestamp];
                v18 = [v21 isEqual:v20];
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