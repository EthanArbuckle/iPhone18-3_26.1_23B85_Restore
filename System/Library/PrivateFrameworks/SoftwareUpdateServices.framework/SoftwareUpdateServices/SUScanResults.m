@interface SUScanResults
- (SUScanResults)initWithCoder:(id)a3;
- (SUScanResults)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)latestUpdate;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SUScanResults

- (SUScanResults)initWithPreferredDescriptor:(id)a3 alternateDescriptor:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = SUScanResults;
  v8 = [(SUScanResults *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(SUScanResults *)v8 setPreferredDescriptor:v6];
    [(SUScanResults *)v9 setAlternateDescriptor:v7];
  }

  return v9;
}

- (id)latestUpdate
{
  v3 = [(SUScanResults *)self preferredDescriptor];
  if (v3 || ([(SUScanResults *)self alternateDescriptor], v11 = objc_claimAutoreleasedReturnValue(), v11, !v11))
  {
    v4 = [(SUScanResults *)self preferredDescriptor];
    if (v4)
    {
      v5 = v4;
      v6 = [(SUScanResults *)self alternateDescriptor];

      if (v6)
      {
        v7 = [(SUScanResults *)self preferredDescriptor];
        v8 = [v7 productBuildVersion];

        v9 = [(SUScanResults *)self alternateDescriptor];
        v10 = [v9 productBuildVersion];

        if ([v8 compare:v10 options:64] == -1)
        {
          [(SUScanResults *)self alternateDescriptor];
        }

        else
        {
          [(SUScanResults *)self preferredDescriptor];
        }
        v12 = ;

        v3 = v12;
      }
    }
  }

  else
  {
    v3 = [(SUScanResults *)self alternateDescriptor];
  }

  return v3;
}

- (SUScanResults)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = SUScanResults;
  v5 = [(SUScanResults *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"PreferredDescriptor"];
    [(SUScanResults *)v5 setPreferredDescriptor:v6];

    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"AlternateDescriptor"];
    [(SUScanResults *)v5 setAlternateDescriptor:v7];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SUScanResults *)self preferredDescriptor];
  [v4 encodeObject:v5 forKey:@"PreferredDescriptor"];

  v6 = [(SUScanResults *)self alternateDescriptor];
  [v4 encodeObject:v6 forKey:@"AlternateDescriptor"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(SUScanResults);
  v5 = [(SUScanResults *)self preferredDescriptor];
  [(SUScanResults *)v4 setPreferredDescriptor:v5];

  v6 = [(SUScanResults *)self alternateDescriptor];
  [(SUScanResults *)v4 setAlternateDescriptor:v6];

  return v4;
}

@end