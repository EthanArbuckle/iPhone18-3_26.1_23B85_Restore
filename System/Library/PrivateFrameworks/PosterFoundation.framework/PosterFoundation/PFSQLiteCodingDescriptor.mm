@interface PFSQLiteCodingDescriptor
- (BOOL)isEqual:(id)equal;
- (NSOrderedSet)columnNames;
- (PFSQLiteCodingDescriptor)init;
- (PFSQLiteCodingDescriptor)initWithTableName:(id)name columns:(id)columns;
- (PFSQLiteCodingDescriptor)initWithTableName:(id)name columns:(id)columns indices:(id)indices;
- (id)columnForName:(id)name;
@end

@implementation PFSQLiteCodingDescriptor

- (PFSQLiteCodingDescriptor)initWithTableName:(id)name columns:(id)columns indices:(id)indices
{
  nameCopy = name;
  columnsCopy = columns;
  v15.receiver = self;
  v15.super_class = PFSQLiteCodingDescriptor;
  v9 = [(PFSQLiteCodingDescriptor *)&v15 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    tableName = v9->_tableName;
    v9->_tableName = v10;

    v12 = [columnsCopy copy];
    columns = v9->_columns;
    v9->_columns = v12;
  }

  return v9;
}

- (id)columnForName:(id)name
{
  nameCopy = name;
  columns = self->_columns;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __42__PFSQLiteCodingDescriptor_columnForName___block_invoke;
  v9[3] = &unk_1E81891B0;
  v10 = nameCopy;
  v6 = nameCopy;
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

- (PFSQLiteCodingDescriptor)initWithTableName:(id)name columns:(id)columns
{
  v6 = MEMORY[0x1E695DFD8];
  columnsCopy = columns;
  nameCopy = name;
  v9 = [v6 set];
  v10 = [(PFSQLiteCodingDescriptor *)self initWithTableName:nameCopy columns:columnsCopy indices:v9];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v14 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      tableName = [(PFSQLiteCodingDescriptor *)v5 tableName];
      tableName2 = [(PFSQLiteCodingDescriptor *)self tableName];
      v8 = [tableName isEqualToString:tableName2];

      if (v8 && (-[PFSQLiteCodingDescriptor columns](v5, "columns"), v9 = objc_claimAutoreleasedReturnValue(), -[PFSQLiteCodingDescriptor columns](self, "columns"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isEqualToArray:v10], v10, v9, v11))
      {
        indices = [(PFSQLiteCodingDescriptor *)v5 indices];
        indices2 = [(PFSQLiteCodingDescriptor *)self indices];
        v14 = [indices isEqualToSet:indices2];
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