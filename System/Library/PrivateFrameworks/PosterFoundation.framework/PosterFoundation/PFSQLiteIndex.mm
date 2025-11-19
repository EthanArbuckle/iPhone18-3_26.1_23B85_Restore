@interface PFSQLiteIndex
+ (id)compositeIndexNamed:(id)a3 columns:(id)a4;
+ (id)indexNamed:(id)a3 columns:(id)a4;
+ (id)primaryKeyIndexNamed:(id)a3 columns:(id)a4;
+ (id)uniqueIndexNamed:(id)a3 columns:(id)a4;
- (BOOL)isEqual:(id)a3;
- (NSOrderedSet)columnNames;
- (PFSQLiteIndex)init;
- (id)pf_toSQLWithBindings:(unint64_t *)a3;
- (void)initWithName:(uint64_t)a3 type:(void *)a4 columns:;
@end

@implementation PFSQLiteIndex

- (PFSQLiteIndex)init
{
  [(PFSQLiteIndex *)self doesNotRecognizeSelector:a2];

  return 0;
}

+ (id)indexNamed:(id)a3 columns:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PFSQLiteIndex *)[a1 alloc] initWithName:v7 type:0 columns:v6];

  return v8;
}

- (NSOrderedSet)columnNames
{
  v2 = MEMORY[0x1E695DFB8];
  v3 = [(NSArray *)self->_columns bs_mapNoNulls:&__block_literal_global_2];
  v4 = [v2 orderedSetWithArray:v3];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v15 = self != 0;
  }

  else
  {
    v5 = objc_opt_self();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v7 = v4;
      v8 = [(PFSQLiteIndex *)v7 type];
      if (v8 == [(PFSQLiteIndex *)self type]&& ([(PFSQLiteIndex *)v7 name], v9 = objc_claimAutoreleasedReturnValue(), [(PFSQLiteIndex *)self name], v10 = objc_claimAutoreleasedReturnValue(), v11 = BSEqualStrings(), v10, v9, v11))
      {
        v12 = [(PFSQLiteIndex *)v7 columns];
        v13 = [(PFSQLiteIndex *)self columns];
        v14 = [v12 isEqualToArray:v13];

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

- (id)pf_toSQLWithBindings:(unint64_t *)a3
{
  v3 = [(PFSQLiteIndex *)self columns];
  v4 = [v3 bs_mapNoNulls:&__block_literal_global_4];

  v5 = [v4 componentsJoinedByString:{@", "}];

  return v5;
}

- (void)initWithName:(uint64_t)a3 type:(void *)a4 columns:
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v17.receiver = a1;
    v17.super_class = PFSQLiteIndex;
    a1 = objc_msgSendSuper2(&v17, sel_init);
    if (a1)
    {
      v9 = [v7 copy];
      v10 = a1[4];
      a1[4] = v9;

      a1[2] = a3;
      v11 = [v8 copy];
      v12 = a1[3];
      a1[3] = v11;

      v13 = [MEMORY[0x1E698E6B8] builder];
      v14 = [v13 appendInteger:a3];
      v15 = [v13 appendObject:a1[3]];
      a1[1] = [v13 hash];
    }
  }

  return a1;
}

+ (id)primaryKeyIndexNamed:(id)a3 columns:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PFSQLiteIndex *)[a1 alloc] initWithName:v7 type:1 columns:v6];

  return v8;
}

+ (id)uniqueIndexNamed:(id)a3 columns:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PFSQLiteIndex *)[a1 alloc] initWithName:v7 type:2 columns:v6];

  return v8;
}

+ (id)compositeIndexNamed:(id)a3 columns:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(PFSQLiteIndex *)[a1 alloc] initWithName:v7 type:3 columns:v6];

  return v8;
}

@end