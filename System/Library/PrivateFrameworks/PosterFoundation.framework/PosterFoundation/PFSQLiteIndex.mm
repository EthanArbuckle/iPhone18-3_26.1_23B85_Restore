@interface PFSQLiteIndex
+ (id)compositeIndexNamed:(id)named columns:(id)columns;
+ (id)indexNamed:(id)named columns:(id)columns;
+ (id)primaryKeyIndexNamed:(id)named columns:(id)columns;
+ (id)uniqueIndexNamed:(id)named columns:(id)columns;
- (BOOL)isEqual:(id)equal;
- (NSOrderedSet)columnNames;
- (PFSQLiteIndex)init;
- (id)pf_toSQLWithBindings:(unint64_t *)bindings;
- (void)initWithName:(uint64_t)name type:(void *)type columns:;
@end

@implementation PFSQLiteIndex

- (PFSQLiteIndex)init
{
  [(PFSQLiteIndex *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)indexNamed:(id)named columns:(id)columns
{
  columnsCopy = columns;
  namedCopy = named;
  v8 = [(PFSQLiteIndex *)[self alloc] initWithName:namedCopy type:0 columns:columnsCopy];

  return v8;
}

- (NSOrderedSet)columnNames
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [(NSArray *)self->_columns bs_mapNoNulls:&__block_literal_global_2];
  v4 = [v2 orderedSetWithArray:v3];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v15 = self != 0;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = equalCopy;
      type = [(PFSQLiteIndex *)v7 type];
      if (type == [(PFSQLiteIndex *)self type]&& ([(PFSQLiteIndex *)v7 name], v9 = objc_claimAutoreleasedReturnValue(), [(PFSQLiteIndex *)self name], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualStrings(), v10, v9, v11))
      {
        columns = [(PFSQLiteIndex *)v7 columns];
        columns2 = [(PFSQLiteIndex *)self columns];
        v14 = [columns isEqualToArray:columns2];

        v15 = v14 ^ 1;
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (id)pf_toSQLWithBindings:(unint64_t *)bindings
{
  columns = [(PFSQLiteIndex *)self columns];
  v4 = [columns bs_mapNoNulls:&__block_literal_global_4];

  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

- (void)initWithName:(uint64_t)name type:(void *)type columns:
{
  v7 = a2;
  typeCopy = type;
  if (self)
  {
    v17.receiver = self;
    v17.super_class = PFSQLiteIndex;
    self = objc_msgSendSuper2(&v17, sel_init);
    if (self)
    {
      v9 = [v7 copy];
      v10 = self[4];
      self[4] = v9;

      self[2] = name;
      v11 = [typeCopy copy];
      v12 = self[3];
      self[3] = v11;

      builder = [MEMORY[0x1E698E6B8] builder];
      v14 = [builder appendInteger:name];
      v15 = [builder appendObject:self[3]];
      self[1] = [builder hash];
    }
  }

  return self;
}

+ (id)primaryKeyIndexNamed:(id)named columns:(id)columns
{
  columnsCopy = columns;
  namedCopy = named;
  v8 = [(PFSQLiteIndex *)[self alloc] initWithName:namedCopy type:1 columns:columnsCopy];

  return v8;
}

+ (id)uniqueIndexNamed:(id)named columns:(id)columns
{
  columnsCopy = columns;
  namedCopy = named;
  v8 = [(PFSQLiteIndex *)[self alloc] initWithName:namedCopy type:2 columns:columnsCopy];

  return v8;
}

+ (id)compositeIndexNamed:(id)named columns:(id)columns
{
  columnsCopy = columns;
  namedCopy = named;
  v8 = [(PFSQLiteIndex *)[self alloc] initWithName:namedCopy type:3 columns:columnsCopy];

  return v8;
}

@end