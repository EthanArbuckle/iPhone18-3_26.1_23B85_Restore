@interface WFCloudKitBaseOrdering
+ (NSDictionary)properties;
+ (id)collectionIdentifierForRecordID:(id)d;
- (NSOrderedSet)orderedFolderIDs;
- (NSOrderedSet)orderedWorkflowIDs;
- (NSString)collectionIdentifier;
- (WFCloudKitBaseOrdering)initWithIdentifier:(id)identifier orderedWorkflowIDs:(id)ds orderedFolderIDs:(id)iDs;
@end

@implementation WFCloudKitBaseOrdering

+ (id)collectionIdentifierForRecordID:(id)d
{
  recordName = [d recordName];
  v5 = MEMORY[0x1E696AEC0];
  recordBasename = [self recordBasename];
  v7 = [v5 stringWithFormat:@"%@-", recordBasename];

  if ([recordName hasPrefix:v7])
  {
    v8 = [recordName substringFromIndex:{objc_msgSend(v7, "length")}];
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

- (WFCloudKitBaseOrdering)initWithIdentifier:(id)identifier orderedWorkflowIDs:(id)ds orderedFolderIDs:(id)iDs
{
  identifierCopy = identifier;
  dsCopy = ds;
  iDsCopy = iDs;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"WFCloudKitBaseOrdering.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v13 = [(WFCloudKitBaseOrdering *)self init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_identifier, identifier);
    array = [dsCopy array];
    orderedWorkflowIDsArray = v14->_orderedWorkflowIDsArray;
    v14->_orderedWorkflowIDsArray = array;

    array2 = [iDsCopy array];
    orderedFolderIDsArray = v14->_orderedFolderIDsArray;
    v14->_orderedFolderIDsArray = array2;

    v19 = v14;
  }

  return v14;
}

- (NSOrderedSet)orderedWorkflowIDs
{
  orderedWorkflowIDsArray = [(WFCloudKitBaseOrdering *)self orderedWorkflowIDsArray];
  if (orderedWorkflowIDsArray)
  {
    v4 = MEMORY[0x1E695DFB8];
    orderedWorkflowIDsArray2 = [(WFCloudKitBaseOrdering *)self orderedWorkflowIDsArray];
    v6 = [v4 orderedSetWithArray:orderedWorkflowIDsArray2];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSOrderedSet)orderedFolderIDs
{
  orderedFolderIDsArray = [(WFCloudKitBaseOrdering *)self orderedFolderIDsArray];
  if (orderedFolderIDsArray)
  {
    v4 = MEMORY[0x1E695DFB8];
    orderedFolderIDsArray2 = [(WFCloudKitBaseOrdering *)self orderedFolderIDsArray];
    v6 = [v4 orderedSetWithArray:orderedFolderIDsArray2];
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
  identifier = [(WFCloudKitBaseOrdering *)self identifier];
  v5 = [v3 collectionIdentifierForRecordID:identifier];

  return v5;
}

@end