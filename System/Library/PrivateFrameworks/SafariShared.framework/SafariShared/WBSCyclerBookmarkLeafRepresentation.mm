@interface WBSCyclerBookmarkLeafRepresentation
- (BOOL)isEquivalent:(id)equivalent;
- (WBSCyclerBookmarkLeafRepresentation)initWithCoder:(id)coder;
- (WBSCyclerBookmarkLeafRepresentation)initWithURL:(id)l title:(id)title uniqueIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSCyclerBookmarkLeafRepresentation

- (WBSCyclerBookmarkLeafRepresentation)initWithURL:(id)l title:(id)title uniqueIdentifier:(id)identifier
{
  lCopy = l;
  v14.receiver = self;
  v14.super_class = WBSCyclerBookmarkLeafRepresentation;
  v10 = [(WBSCyclerItemRepresentation *)&v14 initWithTitle:title uniqueIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_url, l);
    v12 = v11;
  }

  return v11;
}

- (WBSCyclerBookmarkLeafRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = WBSCyclerBookmarkLeafRepresentation;
  v5 = [(WBSCyclerItemRepresentation *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    url = v5->_url;
    v5->_url = v6;

    v8 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WBSCyclerBookmarkLeafRepresentation;
  coderCopy = coder;
  [(WBSCyclerItemRepresentation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_url forKey:{@"URL", v5.receiver, v5.super_class}];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [WBSCyclerBookmarkLeafRepresentation alloc];
  url = self->_url;
  title = [(WBSCyclerItemRepresentation *)self title];
  uniqueIdentifier = [(WBSCyclerItemRepresentation *)self uniqueIdentifier];
  v8 = [(WBSCyclerBookmarkLeafRepresentation *)v4 initWithURL:url title:title uniqueIdentifier:uniqueIdentifier];

  extraAttributes = [(WBSCyclerItemRepresentation *)self extraAttributes];
  [(WBSCyclerItemRepresentation *)v8 setExtraAttributes:extraAttributes];

  return v8;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v7.receiver = self;
  v7.super_class = WBSCyclerBookmarkLeafRepresentation;
  if ([(WBSCyclerItemRepresentation *)&v7 isEquivalent:equivalentCopy]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
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