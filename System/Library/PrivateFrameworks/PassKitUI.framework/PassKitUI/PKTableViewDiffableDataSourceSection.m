@interface PKTableViewDiffableDataSourceSection
- (BOOL)isEqual:(id)a3;
- (PKTableViewDiffableDataSourceSection)initWithIdentifier:(id)a3;
- (unint64_t)hash;
@end

@implementation PKTableViewDiffableDataSourceSection

- (PKTableViewDiffableDataSourceSection)initWithIdentifier:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PKTableViewDiffableDataSourceSection;
  v5 = [(PKTableViewDiffableDataSourceSection *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self == v4)
  {
    v7 = 1;
  }

  else if (v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v6 = v5;
    if (PKEqualObjects() && PKEqualObjects())
    {
      v7 = PKEqualObjects();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v3 safelyAddObject:self->_identifier];
  [v3 safelyAddObject:self->_title];
  [v3 safelyAddObject:self->_footer];
  v4 = PKCombinedHash();

  return v4;
}

@end