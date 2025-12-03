@interface NSDiffableDataSourceSectionTransaction
- (BOOL)isEqual:(id)equal;
- (NSDiffableDataSourceSectionTransaction)initWithSectionIdentifier:(id)identifier initialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference;
- (id)_spiCopy;
- (id)description;
@end

@implementation NSDiffableDataSourceSectionTransaction

- (NSDiffableDataSourceSectionTransaction)initWithSectionIdentifier:(id)identifier initialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference
{
  identifierCopy = identifier;
  snapshotCopy = snapshot;
  finalSnapshotCopy = finalSnapshot;
  differenceCopy = difference;
  v18.receiver = self;
  v18.super_class = NSDiffableDataSourceSectionTransaction;
  v15 = [(NSDiffableDataSourceSectionTransaction *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sectionIdentifier, identifier);
    objc_storeStrong(&v16->_initialSnapshot, snapshot);
    objc_storeStrong(&v16->_finalSnapshot, finalSnapshot);
    objc_storeStrong(&v16->_difference, difference);
  }

  return v16;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p - sectionIdentifier=%@ initialSnapshot=%p; finalSnapshot=%p; difference=%@>", v5, self, self->_sectionIdentifier, self->_initialSnapshot, self->_finalSnapshot, self->_difference];;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      v18 = 1;
    }

    else
    {
      v6 = equalCopy;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (-[NSDiffableDataSourceSectionTransaction sectionIdentifier](v6, "sectionIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), -[NSDiffableDataSourceSectionTransaction sectionIdentifier](self, "sectionIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9) && (-[NSDiffableDataSourceSectionTransaction difference](v6, "difference"), v10 = objc_claimAutoreleasedReturnValue(), -[NSDiffableDataSourceSectionTransaction difference](self, "difference"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v12) && (-[NSDiffableDataSourceSectionTransaction initialSnapshot](v6, "initialSnapshot"), v13 = objc_claimAutoreleasedReturnValue(), -[NSDiffableDataSourceSectionTransaction initialSnapshot](self, "initialSnapshot"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, v15))
      {
        finalSnapshot = [(NSDiffableDataSourceSectionTransaction *)v6 finalSnapshot];
        finalSnapshot2 = [(NSDiffableDataSourceSectionTransaction *)self finalSnapshot];
        v18 = [finalSnapshot isEqual:finalSnapshot2];
      }

      else
      {
        v18 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)_spiCopy
{
  v3 = [_UIDiffableDataSourceSectionTransaction alloc];
  sectionIdentifier = [(NSDiffableDataSourceSectionTransaction *)self sectionIdentifier];
  initialSnapshot = [(NSDiffableDataSourceSectionTransaction *)self initialSnapshot];
  finalSnapshot = [(NSDiffableDataSourceSectionTransaction *)self finalSnapshot];
  difference = [(NSDiffableDataSourceSectionTransaction *)self difference];
  v8 = [(_UIDiffableDataSourceSectionTransaction *)v3 initWithSectionIdentifier:sectionIdentifier initialSnapshot:initialSnapshot finalSnapshot:finalSnapshot difference:difference];

  return v8;
}

@end