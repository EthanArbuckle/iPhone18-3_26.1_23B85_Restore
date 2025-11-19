@interface WFCloudKitWebServiceQueryFilterCombination
- (id)stringRepresentationWithRecordType:(id)a3;
@end

@implementation WFCloudKitWebServiceQueryFilterCombination

- (id)stringRepresentationWithRecordType:(id)a3
{
  v4 = a3;
  v5 = [(WFCloudKitWebServiceQueryFilterCombination *)self filters];
  v15 = MEMORY[0x1E69E9820];
  v16 = 3221225472;
  v17 = __81__WFCloudKitWebServiceQueryFilterCombination_stringRepresentationWithRecordType___block_invoke;
  v18 = &unk_1E837A6B8;
  v19 = v4;
  v6 = v4;
  v7 = [v5 if_map:&v15];

  v8 = [(WFCloudKitWebServiceQueryFilterCombination *)self type];
  v9 = @" OR ";
  if (v8 != 1)
  {
    v9 = 0;
  }

  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v10 = @" AND ";
  }

  v11 = MEMORY[0x1E696AEC0];
  v12 = [v7 componentsJoinedByString:v10];
  v13 = [v11 stringWithFormat:@"(%@)", v12, v15, v16, v17, v18];

  return v13;
}

@end