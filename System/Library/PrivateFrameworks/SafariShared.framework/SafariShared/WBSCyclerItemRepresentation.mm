@interface WBSCyclerItemRepresentation
- (WBSCyclerItemRepresentation)initWithCoder:(id)coder;
- (WBSCyclerItemRepresentation)initWithTitle:(id)title symbolImageName:(id)name uniqueIdentifier:(id)identifier;
- (WBSCyclerItemRepresentation)initWithTitle:(id)title uniqueIdentifier:(id)identifier;
- (id)pairsOfItemsWithDifferingExtraAttributesComparedTo:(id)to;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WBSCyclerItemRepresentation

- (WBSCyclerItemRepresentation)initWithTitle:(id)title uniqueIdentifier:(id)identifier
{
  titleCopy = title;
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = WBSCyclerItemRepresentation;
  v8 = [(WBSCyclerItemRepresentation *)&v15 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [identifierCopy copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

- (WBSCyclerItemRepresentation)initWithTitle:(id)title symbolImageName:(id)name uniqueIdentifier:(id)identifier
{
  nameCopy = name;
  v10 = [(WBSCyclerItemRepresentation *)self initWithTitle:title uniqueIdentifier:identifier];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_symbolImageName, name);
    v12 = v11;
  }

  return v11;
}

- (WBSCyclerItemRepresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = WBSCyclerItemRepresentation;
  v5 = [(WBSCyclerItemRepresentation *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"UniqueIdentifier"];
    v10 = [v9 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"ExtraAttributes"];
    v17 = [v16 mutableCopy];
    extraAttributes = v5->_extraAttributes;
    v5->_extraAttributes = v17;

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"Title"];
  [coderCopy encodeObject:self->_uniqueIdentifier forKey:@"UniqueIdentifier"];
  [coderCopy encodeObject:self->_extraAttributes forKey:@"ExtraAttributes"];
}

- (id)pairsOfItemsWithDifferingExtraAttributesComparedTo:(id)to
{
  v10[1] = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_extraAttributes)
  {
    extraAttributes = self->_extraAttributes;
  }

  else
  {
    extraAttributes = MEMORY[0x1E695E0F8];
  }

  if (toCopy[3])
  {
    v6 = toCopy[3];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F8];
  }

  if (([(NSDictionary *)extraAttributes isEqual:v6]& 1) != 0)
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E69C88F0]) initWithFirst:self second:toCopy];
    v10[0] = v8;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  return v7;
}

@end