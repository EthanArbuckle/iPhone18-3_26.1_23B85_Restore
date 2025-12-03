@interface SUScanResults
- (SUScanResults)initWithCoder:(id)coder;
- (SUScanResults)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor;
- (id)copyWithZone:(_NSZone *)zone;
- (id)latestUpdate;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SUScanResults

- (SUScanResults)initWithPreferredDescriptor:(id)descriptor alternateDescriptor:(id)alternateDescriptor
{
  descriptorCopy = descriptor;
  alternateDescriptorCopy = alternateDescriptor;
  v11.receiver = self;
  v11.super_class = SUScanResults;
  v8 = [(SUScanResults *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SUScanResults *)v8 setPreferredDescriptor:descriptorCopy];
    [(SUScanResults *)v9 setAlternateDescriptor:alternateDescriptorCopy];
  }

  return v9;
}

- (id)latestUpdate
{
  preferredDescriptor = [(SUScanResults *)self preferredDescriptor];
  if (preferredDescriptor || ([(SUScanResults *)self alternateDescriptor], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    preferredDescriptor2 = [(SUScanResults *)self preferredDescriptor];
    if (preferredDescriptor2)
    {
      v5 = preferredDescriptor2;
      alternateDescriptor = [(SUScanResults *)self alternateDescriptor];

      if (alternateDescriptor)
      {
        preferredDescriptor3 = [(SUScanResults *)self preferredDescriptor];
        productBuildVersion = [preferredDescriptor3 productBuildVersion];

        alternateDescriptor2 = [(SUScanResults *)self alternateDescriptor];
        productBuildVersion2 = [alternateDescriptor2 productBuildVersion];

        if ([productBuildVersion compare:productBuildVersion2 options:64] == -1)
        {
          [(SUScanResults *)self alternateDescriptor];
        }

        else
        {
          [(SUScanResults *)self preferredDescriptor];
        }
        v12 = ;

        preferredDescriptor = v12;
      }
    }
  }

  else
  {
    preferredDescriptor = [(SUScanResults *)self alternateDescriptor];
  }

  return preferredDescriptor;
}

- (SUScanResults)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = SUScanResults;
  v5 = [(SUScanResults *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"PreferredDescriptor"];
    [(SUScanResults *)v5 setPreferredDescriptor:v6];

    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AlternateDescriptor"];
    [(SUScanResults *)v5 setAlternateDescriptor:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  preferredDescriptor = [(SUScanResults *)self preferredDescriptor];
  [coderCopy encodeObject:preferredDescriptor forKey:@"PreferredDescriptor"];

  alternateDescriptor = [(SUScanResults *)self alternateDescriptor];
  [coderCopy encodeObject:alternateDescriptor forKey:@"AlternateDescriptor"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(SUScanResults);
  preferredDescriptor = [(SUScanResults *)self preferredDescriptor];
  [(SUScanResults *)v4 setPreferredDescriptor:preferredDescriptor];

  alternateDescriptor = [(SUScanResults *)self alternateDescriptor];
  [(SUScanResults *)v4 setAlternateDescriptor:alternateDescriptor];

  return v4;
}

@end