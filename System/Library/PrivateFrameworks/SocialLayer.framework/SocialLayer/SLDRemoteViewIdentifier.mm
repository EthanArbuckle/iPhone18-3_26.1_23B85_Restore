@interface SLDRemoteViewIdentifier
+ (id)identifierForStyle:(id)style tag:(id)tag;
- (BOOL)isEqual:(id)equal;
- (SLDRemoteViewIdentifier)initWithStyle:(id)style tag:(id)tag;
- (id)description;
- (unint64_t)hash;
@end

@implementation SLDRemoteViewIdentifier

+ (id)identifierForStyle:(id)style tag:(id)tag
{
  tagCopy = tag;
  styleCopy = style;
  v7 = [[SLDRemoteViewIdentifier alloc] initWithStyle:styleCopy tag:tagCopy];

  return v7;
}

- (SLDRemoteViewIdentifier)initWithStyle:(id)style tag:(id)tag
{
  styleCopy = style;
  tagCopy = tag;
  v12.receiver = self;
  v12.super_class = SLDRemoteViewIdentifier;
  v9 = [(SLDRemoteViewIdentifier *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_style, style);
    objc_storeStrong(&v10->_tag, tag);
  }

  return v10;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  style = [(SLDRemoteViewIdentifier *)self style];
  v5 = [(SLDRemoteViewIdentifier *)self tag];
  v6 = [v3 stringWithFormat:@"<SLDRemoteViewIdentifier: %p> style:[%@] tag:[%@]", self, style, v5];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    v6 = v5;
    if (v5 == self)
    {
      v11 = 1;
    }

    else
    {
      style = [(SLDRemoteViewIdentifier *)v5 style];
      style2 = [(SLDRemoteViewIdentifier *)self style];
      if ([style isEqual:style2])
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
  style = [(SLDRemoteViewIdentifier *)self style];
  v4 = [style hash];
  v5 = [(SLDRemoteViewIdentifier *)self tag];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end