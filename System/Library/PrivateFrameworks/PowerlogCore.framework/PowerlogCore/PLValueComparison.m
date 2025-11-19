@interface PLValueComparison
- (NSString)comparisonOperationString;
- (NSString)sqlWhereClause;
- (PLValueComparison)initWithKey:(id)a3 withValue:(id)a4 withComparisonOperation:(signed __int16)a5;
@end

@implementation PLValueComparison

- (NSString)sqlWhereClause
{
  if ([(PLValueComparison *)self comparisonOperation]== 6 || [(PLValueComparison *)self comparisonOperation]== 7)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [(PLValueComparison *)self key];
    v5 = [(PLValueComparison *)self comparisonOperationString];
    v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];
  }

  else
  {
    v7 = MEMORY[0x1E696AEC0];
    v4 = [(PLValueComparison *)self key];
    v5 = [(PLValueComparison *)self comparisonOperationString];
    v8 = [(PLValueComparison *)self value];
    v6 = [v7 stringWithFormat:@"%@%@%@", v4, v5, v8];
  }

  return v6;
}

- (NSString)comparisonOperationString
{
  if (comparisonOperationString_onceToken != -1)
  {
    [PLValueComparison comparisonOperationString];
  }

  v3 = comparisonOperationString_comparisonOperationStrings;
  v4 = [(PLValueComparison *)self comparisonOperation];

  return [v3 objectAtIndexedSubscript:v4];
}

- (PLValueComparison)initWithKey:(id)a3 withValue:(id)a4 withComparisonOperation:(signed __int16)a5
{
  v9 = a3;
  v10 = a4;
  v15.receiver = self;
  v15.super_class = PLValueComparison;
  v11 = [(PLValueComparison *)&v15 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_key, a3);
    objc_storeStrong(&v12->_value, a4);
    v12->_comparisonOperation = a5;
    if (!v10 && ![(PLValueComparison *)v12 hasNilComparisonComponent])
    {
      if ([(PLValueComparison *)v12 hasEqualComparisonComponent])
      {
        v13 = 6;
      }

      else
      {
        v13 = 7;
      }

      v12->_comparisonOperation = v13;
    }
  }

  return v12;
}

void __46__PLValueComparison_comparisonOperationString__block_invoke()
{
  v0 = comparisonOperationString_comparisonOperationStrings;
  comparisonOperationString_comparisonOperationStrings = &unk_1F540B740;
}

@end