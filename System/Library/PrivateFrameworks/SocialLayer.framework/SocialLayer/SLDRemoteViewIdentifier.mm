@interface SLDRemoteViewIdentifier
+ (id)identifierForStyle:(id)a3 tag:(id)a4;
- (BOOL)isEqual:(id)a3;
- (SLDRemoteViewIdentifier)initWithStyle:(id)a3 tag:(id)a4;
- (id)description;
- (unint64_t)hash;
@end

@implementation SLDRemoteViewIdentifier

+ (id)identifierForStyle:(id)a3 tag:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[SLDRemoteViewIdentifier alloc] initWithStyle:v6 tag:v5];

  return v7;
}

- (SLDRemoteViewIdentifier)initWithStyle:(id)a3 tag:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SLDRemoteViewIdentifier;
  v9 = [(SLDRemoteViewIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, a3);
    objc_storeStrong(&v10->_tag, a4);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SLDRemoteViewIdentifier *)self style];
  v5 = [(SLDRemoteViewIdentifier *)self tag];
  v6 = [v3 stringWithFormat:@"<SLDRemoteViewIdentifier: %p> style:[%@] tag:[%@]", self, v4, v5];

  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5;
    if (v5 == self)
    {
      v11 = 1;
    }

    else
    {
      v7 = [(SLDRemoteViewIdentifier *)v5 style];
      v8 = [(SLDRemoteViewIdentifier *)self style];
      if ([v7 isEqual:v8])
      {
        v9 = [(SLDRemoteViewIdentifier *)v6 tag];
        v10 = [(SLDRemoteViewIdentifier *)self tag];
        v11 = [v9 isEqual:v10];
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(SLDRemoteViewIdentifier *)self style];
  v4 = [v3 hash];
  v5 = [(SLDRemoteViewIdentifier *)self tag];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end