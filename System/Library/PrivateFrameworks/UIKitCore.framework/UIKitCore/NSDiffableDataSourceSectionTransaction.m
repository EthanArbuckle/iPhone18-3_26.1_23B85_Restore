@interface NSDiffableDataSourceSectionTransaction
- (BOOL)isEqual:(id)a3;
- (NSDiffableDataSourceSectionTransaction)initWithSectionIdentifier:(id)a3 initialSnapshot:(id)a4 finalSnapshot:(id)a5 difference:(id)a6;
- (id)_spiCopy;
- (id)description;
@end

@implementation NSDiffableDataSourceSectionTransaction

- (NSDiffableDataSourceSectionTransaction)initWithSectionIdentifier:(id)a3 initialSnapshot:(id)a4 finalSnapshot:(id)a5 difference:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = NSDiffableDataSourceSectionTransaction;
  v15 = [(NSDiffableDataSourceSectionTransaction *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_sectionIdentifier, a3);
    objc_storeStrong(&v16->_initialSnapshot, a4);
    objc_storeStrong(&v16->_finalSnapshot, a5);
    objc_storeStrong(&v16->_difference, a6);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v18 = 1;
    }

    else
    {
      v6 = v4;
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && (-[NSDiffableDataSourceSectionTransaction sectionIdentifier](v6, "sectionIdentifier"), v7 = objc_claimAutoreleasedReturnValue(), -[NSDiffableDataSourceSectionTransaction sectionIdentifier](self, "sectionIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v7 isEqual:v8], v8, v7, v9) && (-[NSDiffableDataSourceSectionTransaction difference](v6, "difference"), v10 = objc_claimAutoreleasedReturnValue(), -[NSDiffableDataSourceSectionTransaction difference](self, "difference"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v10, "isEqual:", v11), v11, v10, v12) && (-[NSDiffableDataSourceSectionTransaction initialSnapshot](v6, "initialSnapshot"), v13 = objc_claimAutoreleasedReturnValue(), -[NSDiffableDataSourceSectionTransaction initialSnapshot](self, "initialSnapshot"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v13, "isEqual:", v14), v14, v13, v15))
      {
        v16 = [(NSDiffableDataSourceSectionTransaction *)v6 finalSnapshot];
        v17 = [(NSDiffableDataSourceSectionTransaction *)self finalSnapshot];
        v18 = [v16 isEqual:v17];
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
  v4 = [(NSDiffableDataSourceSectionTransaction *)self sectionIdentifier];
  v5 = [(NSDiffableDataSourceSectionTransaction *)self initialSnapshot];
  v6 = [(NSDiffableDataSourceSectionTransaction *)self finalSnapshot];
  v7 = [(NSDiffableDataSourceSectionTransaction *)self difference];
  v8 = [(_UIDiffableDataSourceSectionTransaction *)v3 initWithSectionIdentifier:v4 initialSnapshot:v5 finalSnapshot:v6 difference:v7];

  return v8;
}

@end