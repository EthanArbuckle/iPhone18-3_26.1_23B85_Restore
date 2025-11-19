@interface WFCloudKitBaseOrdering
+ (NSDictionary)properties;
+ (id)collectionIdentifierForRecordID:(id)a3;
- (NSOrderedSet)orderedFolderIDs;
- (NSOrderedSet)orderedWorkflowIDs;
- (NSString)collectionIdentifier;
- (WFCloudKitBaseOrdering)initWithIdentifier:(id)a3 orderedWorkflowIDs:(id)a4 orderedFolderIDs:(id)a5;
@end

@implementation WFCloudKitBaseOrdering

+ (id)collectionIdentifierForRecordID:(id)a3
{
  v4 = [a3 recordName];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [a1 recordBasename];
  v7 = [v5 stringWithFormat:@"%@-", v6];

  if ([v4 hasPrefix:v7])
  {
    v8 = [v4 substringFromIndex:{objc_msgSend(v7, "length")}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (NSDictionary)properties
{
  v8[2] = *MEMORY[0x1E69E9840];
  v7[0] = @"orderedWorkflowIDs";
  v2 = [WFCloudKitItemProperty objectPropertyWithName:@"orderedWorkflowIDsArray"];
  v7[1] = @"orderedFolderIDs";
  v8[0] = v2;
  v3 = [WFCloudKitItemProperty objectPropertyWithName:@"orderedFolderIDsArray"];
  v8[1] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:2];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

- (WFCloudKitBaseOrdering)initWithIdentifier:(id)a3 orderedWorkflowIDs:(id)a4 orderedFolderIDs:(id)a5
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v10)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"WFCloudKitBaseOrdering.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v13 = [(WFCloudKitBaseOrdering *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, a3);
    v15 = [v11 array];
    orderedWorkflowIDsArray = v14->_orderedWorkflowIDsArray;
    v14->_orderedWorkflowIDsArray = v15;

    v17 = [v12 array];
    orderedFolderIDsArray = v14->_orderedFolderIDsArray;
    v14->_orderedFolderIDsArray = v17;

    v19 = v14;
  }

  return v14;
}

- (NSOrderedSet)orderedWorkflowIDs
{
  v3 = [(WFCloudKitBaseOrdering *)self orderedWorkflowIDsArray];
  if (v3)
  {
    v4 = MEMORY[0x1E695DFB8];
    v5 = [(WFCloudKitBaseOrdering *)self orderedWorkflowIDsArray];
    v6 = [v4 orderedSetWithArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSOrderedSet)orderedFolderIDs
{
  v3 = [(WFCloudKitBaseOrdering *)self orderedFolderIDsArray];
  if (v3)
  {
    v4 = MEMORY[0x1E695DFB8];
    v5 = [(WFCloudKitBaseOrdering *)self orderedFolderIDsArray];
    v6 = [v4 orderedSetWithArray:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSString)collectionIdentifier
{
  v3 = objc_opt_class();
  v4 = [(WFCloudKitBaseOrdering *)self identifier];
  v5 = [v3 collectionIdentifierForRecordID:v4];

  return v5;
}

@end