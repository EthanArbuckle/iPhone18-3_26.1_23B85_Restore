@interface WBSCyclerItemRepresentation
- (WBSCyclerItemRepresentation)initWithCoder:(id)a3;
- (WBSCyclerItemRepresentation)initWithTitle:(id)a3 symbolImageName:(id)a4 uniqueIdentifier:(id)a5;
- (WBSCyclerItemRepresentation)initWithTitle:(id)a3 uniqueIdentifier:(id)a4;
- (id)pairsOfItemsWithDifferingExtraAttributesComparedTo:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WBSCyclerItemRepresentation

- (WBSCyclerItemRepresentation)initWithTitle:(id)a3 uniqueIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = WBSCyclerItemRepresentation;
  v8 = [(WBSCyclerItemRepresentation *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    uniqueIdentifier = v8->_uniqueIdentifier;
    v8->_uniqueIdentifier = v11;

    v13 = v8;
  }

  return v8;
}

- (WBSCyclerItemRepresentation)initWithTitle:(id)a3 symbolImageName:(id)a4 uniqueIdentifier:(id)a5
{
  v9 = a4;
  v10 = [(WBSCyclerItemRepresentation *)self initWithTitle:a3 uniqueIdentifier:a5];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_symbolImageName, a4);
    v12 = v11;
  }

  return v11;
}

- (WBSCyclerItemRepresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = WBSCyclerItemRepresentation;
  v5 = [(WBSCyclerItemRepresentation *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Title"];
    v7 = [v6 copy];
    title = v5->_title;
    v5->_title = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"UniqueIdentifier"];
    v10 = [v9 copy];
    uniqueIdentifier = v5->_uniqueIdentifier;
    v5->_uniqueIdentifier = v10;

    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v12 setWithObjects:{v13, v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"ExtraAttributes"];
    v17 = [v16 mutableCopy];
    extraAttributes = v5->_extraAttributes;
    v5->_extraAttributes = v17;

    v19 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"Title"];
  [v5 encodeObject:self->_uniqueIdentifier forKey:@"UniqueIdentifier"];
  [v5 encodeObject:self->_extraAttributes forKey:@"ExtraAttributes"];
}

- (id)pairsOfItemsWithDifferingExtraAttributesComparedTo:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (self->_extraAttributes)
  {
    extraAttributes = self->_extraAttributes;
  }

  else
  {
    extraAttributes = MEMORY[0x1E695E0F8];
  }

  if (v4[3])
  {
    v6 = v4[3];
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
    v8 = [objc_alloc(MEMORY[0x1E69C88F0]) initWithFirst:self second:v4];
    v10[0] = v8;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  }

  return v7;
}

@end