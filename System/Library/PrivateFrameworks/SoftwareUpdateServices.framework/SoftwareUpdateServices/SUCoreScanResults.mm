@interface SUCoreScanResults
- (SUCoreScanResults)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor;
- (id)latestUpdate;
@end

@implementation SUCoreScanResults

- (SUCoreScanResults)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor
{
  descriptorCopy = descriptor;
  alternateDescriptorCopy = alternateDescriptor;
  v12.receiver = self;
  v12.super_class = SUCoreScanResults;
  v9 = [(SUCoreScanResults *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_preferredDescriptor, descriptor);
    objc_storeStrong(&v10->_alternateDescriptor, alternateDescriptor);
  }

  return v10;
}

- (id)latestUpdate
{
  preferredDescriptor = [(SUCoreScanResults *)self preferredDescriptor];
  if (preferredDescriptor || ([(SUCoreScanResults *)self alternateDescriptor], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    preferredDescriptor2 = [(SUCoreScanResults *)self preferredDescriptor];
    if (preferredDescriptor2)
    {
      v5 = preferredDescriptor2;
      alternateDescriptor = [(SUCoreScanResults *)self alternateDescriptor];

      if (alternateDescriptor)
      {
        preferredDescriptor3 = [(SUCoreScanResults *)self preferredDescriptor];
        productBuildVersion = [preferredDescriptor3 productBuildVersion];

        alternateDescriptor2 = [(SUCoreScanResults *)self alternateDescriptor];
        productBuildVersion2 = [alternateDescriptor2 productBuildVersion];

        if ([productBuildVersion compare:productBuildVersion2 options:64] == -1)
        {
          [(SUCoreScanResults *)self alternateDescriptor];
        }

        else
        {
          [(SUCoreScanResults *)self preferredDescriptor];
        }
        v12 = ;

        preferredDescriptor = v12;
      }
    }
  }

  else
  {
    preferredDescriptor = [(SUCoreScanResults *)self alternateDescriptor];
  }

  return preferredDescriptor;
}

@end