@interface SUCoreScanResults
- (SUCoreScanResults)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4;
- (id)latestUpdate;
@end

@implementation SUCoreScanResults

- (SUCoreScanResults)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SUCoreScanResults;
  v9 = [(SUCoreScanResults *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferredDescriptor, a3);
    objc_storeStrong(&v10->_alternateDescriptor, a4);
  }

  return v10;
}

- (id)latestUpdate
{
  v3 = [(SUCoreScanResults *)self preferredDescriptor];
  if (v3 || ([(SUCoreScanResults *)self alternateDescriptor], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v4 = [(SUCoreScanResults *)self preferredDescriptor];
    if (v4)
    {
      v5 = v4;
      v6 = [(SUCoreScanResults *)self alternateDescriptor];

      if (v6)
      {
        v7 = [(SUCoreScanResults *)self preferredDescriptor];
        v8 = [v7 productBuildVersion];

        v9 = [(SUCoreScanResults *)self alternateDescriptor];
        v10 = [v9 productBuildVersion];

        if ([v8 compare:v10 options:64] == -1)
        {
          [(SUCoreScanResults *)self alternateDescriptor];
        }

        else
        {
          [(SUCoreScanResults *)self preferredDescriptor];
        }
        v12 = ;

        v3 = v12;
      }
    }
  }

  else
  {
    v3 = [(SUCoreScanResults *)self alternateDescriptor];
  }

  return v3;
}

@end