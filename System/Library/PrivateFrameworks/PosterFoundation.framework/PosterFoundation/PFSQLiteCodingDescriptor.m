@interface PFSQLiteCodingDescriptor
- (BOOL)isEqual:(id)a3;
- (NSOrderedSet)columnNames;
- (PFSQLiteCodingDescriptor)init;
- (PFSQLiteCodingDescriptor)initWithTableName:(id)a3 columns:(id)a4;
- (PFSQLiteCodingDescriptor)initWithTableName:(id)a3 columns:(id)a4 indices:(id)a5;
- (id)columnForName:(id)a3;
@end

@implementation PFSQLiteCodingDescriptor

- (PFSQLiteCodingDescriptor)initWithTableName:(id)a3 columns:(id)a4 indices:(id)a5
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = PFSQLiteCodingDescriptor;
  v9 = [(PFSQLiteCodingDescriptor *)&v15 init];
  if (v9)
  {
    v10 = [v7 copy];
    tableName = v9->_tableName;
    v9->_tableName = v10;

    v12 = [v8 copy];
    columns = v9->_columns;
    v9->_columns = v12;
  }

  return v9;
}

- (id)columnForName:(id)a3
{
  v4 = a3;
  columns = self->_columns;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PFSQLiteCodingDescriptor_columnForName___block_invoke;
  v9[3] = &unk_1E81891B0;
  v10 = v4;
  v6 = v4;
  v7 = [(NSArray *)columns bs_firstObjectPassingTest:v9];

  return v7;
}

uint64_t __42__PFSQLiteCodingDescriptor_columnForName___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = [v3 isEqualToString:*(a1 + 32)];

  return v4;
}

- (NSOrderedSet)columnNames
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [(NSArray *)self->_columns bs_mapNoNulls:&__block_literal_global_1];
  v4 = [v2 orderedSetWithArray:v3];

  return v4;
}

- (PFSQLiteCodingDescriptor)initWithTableName:(id)a3 columns:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 set];
  v10 = [(PFSQLiteCodingDescriptor *)self initWithTableName:v8 columns:v7 indices:v9];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(PFSQLiteCodingDescriptor *)v5 tableName];
      v7 = [(PFSQLiteCodingDescriptor *)self tableName];
      v8 = [v6 isEqualToString:v7];

      if (v8 && (-[PFSQLiteCodingDescriptor columns](v5, "columns"), v9 = objc_claimAutoreleasedReturnValue(), -[PFSQLiteCodingDescriptor columns](self, "columns"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqualToArray:v10], v10, v9, v11))
      {
        v12 = [(PFSQLiteCodingDescriptor *)v5 indices];
        v13 = [(PFSQLiteCodingDescriptor *)self indices];
        v14 = [v12 isEqualToSet:v13];
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (PFSQLiteCodingDescriptor)init
{
  [(PFSQLiteCodingDescriptor *)self doesNotRecognizeSelector:a2];

  return 0;
}

@end