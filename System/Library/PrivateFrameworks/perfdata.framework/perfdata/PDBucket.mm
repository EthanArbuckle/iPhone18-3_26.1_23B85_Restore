@interface PDBucket
- (PDBucket)initWithDictionary:(id)dictionary error:(id *)error;
@end

@implementation PDBucket

- (PDBucket)initWithDictionary:(id)dictionary error:(id *)error
{
  dictionaryCopy = dictionary;
  v19.receiver = self;
  v19.super_class = PDBucket;
  v7 = [(PDBucket *)&v19 init];
  if (v7)
  {
    v8 = [dictionaryCopy objectForKeyedSubscript:@">="];
    if (!v8 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
    {
      v16 = handle_malformed_data(error, @"bucket >=");
LABEL_14:

      goto LABEL_15;
    }

    v9 = [dictionaryCopy objectForKeyedSubscript:@"count"];
    if (v9 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      [v8 doubleValue];
      [(PDBucket *)v7 setLowerInclusiveBound:?];
      -[PDBucket setCount:](v7, "setCount:", [v9 unsignedIntegerValue]);
      v10 = [dictionaryCopy objectForKeyedSubscript:@"label"];
      [(PDBucket *)v7 setLabel:v10];

      label = [(PDBucket *)v7 label];
      if (!label || (v12 = label, [(PDBucket *)v7 label], v13 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v13, v12, (isKindOfClass & 1) != 0))
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

    v15 = handle_malformed_data(error, v17);
    goto LABEL_13;
  }

  v16 = 0;
LABEL_15:

  return v16;
}

@end