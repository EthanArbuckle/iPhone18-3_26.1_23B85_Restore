@interface _UIDiffableDataSourceSectionTransaction
- (BOOL)isEqual:(id)equal;
- (_UIDiffableDataSourceSectionTransaction)initWithSectionIdentifier:(id)identifier initialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference;
- (id)description;
@end

@implementation _UIDiffableDataSourceSectionTransaction

- (_UIDiffableDataSourceSectionTransaction)initWithSectionIdentifier:(id)identifier initialSnapshot:(id)snapshot finalSnapshot:(id)finalSnapshot difference:(id)difference
{
  identifierCopy = identifier;
  snapshotCopy = snapshot;
  finalSnapshotCopy = finalSnapshot;
  differenceCopy = difference;
  v18.receiver = self;
  v18.super_class = _UIDiffableDataSourceSectionTransaction;
  v15 = [(_UIDiffableDataSourceSectionTransaction *)&v18 init];
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
      if ((objc_opt_isKindOfClass() & 1) != 0 && (-[_UIDiffableDataSourceSectionTransaction sectionIdentifier](v6, "sectionIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), -[_UIDiffableDataSourceSectionTransaction sectionIdentifier](self, "sectionIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9) && (-[_UIDiffableDataSourceSectionTransaction difference](v6, "difference"), v10 = objc_claimAutoreleasedReturnValue(), -[_UIDiffableDataSourceSectionTransaction difference](self, "difference"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v12) && (-[_UIDiffableDataSourceSectionTransaction initialSnapshot](v6, "initialSnapshot"), v13 = objc_claimAutoreleasedReturnValue(), -[_UIDiffableDataSourceSectionTransaction initialSnapshot](self, "initialSnapshot"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, v15))
      {
        finalSnapshot = [(_UIDiffableDataSourceSectionTransaction *)v6 finalSnapshot];
        finalSnapshot2 = [(_UIDiffableDataSourceSectionTransaction *)self finalSnapshot];
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

@end