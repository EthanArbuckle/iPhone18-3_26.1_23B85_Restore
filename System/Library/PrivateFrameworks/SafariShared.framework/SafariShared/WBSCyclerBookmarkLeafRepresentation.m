@interface WBSCyclerBookmarkLeafRepresentation
- (BOOL)isEquivalent:(id)a3;
- (WBSCyclerBookmarkLeafRepresentation)initWithCoder:(id)a3;
- (WBSCyclerBookmarkLeafRepresentation)initWithURL:(id)a3 title:(id)a4 uniqueIdentifier:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSCyclerBookmarkLeafRepresentation

- (WBSCyclerBookmarkLeafRepresentation)initWithURL:(id)a3 title:(id)a4 uniqueIdentifier:(id)a5
{
  v9 = a3;
  v14.receiver = self;
  v14.super_class = WBSCyclerBookmarkLeafRepresentation;
  v10 = [(WBSCyclerItemRepresentation *)&v14 initWithTitle:a4 uniqueIdentifier:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_url, a3);
    v12 = v11;
  }

  return v11;
}

- (WBSCyclerBookmarkLeafRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = WBSCyclerBookmarkLeafRepresentation;
  v5 = [(WBSCyclerItemRepresentation *)&v10 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    url = v5->_url;
    v5->_url = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WBSCyclerBookmarkLeafRepresentation;
  v4 = a3;
  [(WBSCyclerItemRepresentation *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_url forKey:{@"URL", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [WBSCyclerBookmarkLeafRepresentation alloc];
  url = self->_url;
  v6 = [(WBSCyclerItemRepresentation *)self title];
  v7 = [(WBSCyclerItemRepresentation *)self uniqueIdentifier];
  v8 = [(WBSCyclerBookmarkLeafRepresentation *)v4 initWithURL:url title:v6 uniqueIdentifier:v7];

  v9 = [(WBSCyclerItemRepresentation *)self extraAttributes];
  [(WBSCyclerItemRepresentation *)v8 setExtraAttributes:v9];

  return v8;
}

- (BOOL)isEquivalent:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = WBSCyclerBookmarkLeafRepresentation;
  if ([(WBSCyclerItemRepresentation *)&v7 isEquivalent:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = WBSIsEqual();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end