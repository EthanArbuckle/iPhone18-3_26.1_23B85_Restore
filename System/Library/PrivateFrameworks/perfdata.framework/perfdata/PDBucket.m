@interface PDBucket
- (PDBucket)initWithDictionary:(id)a3 error:(id *)a4;
@end

@implementation PDBucket

- (PDBucket)initWithDictionary:(id)a3 error:(id *)a4
{
  v6 = a3;
  v19.receiver = self;
  v19.super_class = PDBucket;
  v7 = [(PDBucket *)&v19 init];
  if (v7)
  {
    v8 = [v6 objectForKeyedSubscript:@">="];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = handle_malformed_data(a4, @"bucket >=");
LABEL_14:

      goto LABEL_15;
    }

    v9 = [v6 objectForKeyedSubscript:@"count"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v8 doubleValue];
      [(PDBucket *)v7 setLowerInclusiveBound:?];
      -[PDBucket setCount:](v7, "setCount:", [v9 unsignedIntegerValue]);
      v10 = [v6 objectForKeyedSubscript:@"label"];
      [(PDBucket *)v7 setLabel:v10];

      v11 = [(PDBucket *)v7 label];
      if (!v11 || (v12 = v11, [(PDBucket *)v7 label], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass & 1) != 0))
      {
        v15 = v7;
LABEL_13:
        v16 = v15;

        goto LABEL_14;
      }

      v17 = @"bucket label";
    }

    else
    {
      v17 = @"bucket count";
    }

    v15 = handle_malformed_data(a4, v17);
    goto LABEL_13;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

@end