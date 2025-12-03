@interface PXActionRecord
- (NSString)publicDescription;
- (PXActionRecord)init;
- (PXActionRecord)initWithSourceIdentifier:(id)identifier variant:(id)variant assetCount:(int64_t)count userConfirmation:(int64_t)confirmation;
- (id)withUserConfirmation:(int64_t)confirmation assetCount:(int64_t)count;
- (id)withVariant:(id)variant;
@end

@implementation PXActionRecord

- (id)withUserConfirmation:(int64_t)confirmation assetCount:(int64_t)count
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(PXActionRecord *)self assetCount]!= count)
  {
    v7 = PLUIActionsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = PXActionUserConfirmationDescription(confirmation);
      v14 = 134218498;
      countCopy = count;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "asset count (%ti) mismatch when changing user confirmation (%{public}@) of %{public}@", &v14, 0x20u);
    }
  }

  v9 = objc_alloc(objc_opt_class());
  sourceIdentifier = [(PXActionRecord *)self sourceIdentifier];
  variant = [(PXActionRecord *)self variant];
  v12 = [v9 initWithSourceIdentifier:sourceIdentifier variant:variant assetCount:count userConfirmation:confirmation];

  return v12;
}

- (id)withVariant:(id)variant
{
  variantCopy = variant;
  v5 = objc_alloc(objc_opt_class());
  sourceIdentifier = [(PXActionRecord *)self sourceIdentifier];
  v7 = [v5 initWithSourceIdentifier:sourceIdentifier variant:variantCopy assetCount:-[PXActionRecord assetCount](self userConfirmation:{"assetCount"), -[PXActionRecord userConfirmation](self, "userConfirmation")}];

  return v7;
}

- (NSString)publicDescription
{
  array = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AEC0];
  sourceIdentifier = [(PXActionRecord *)self sourceIdentifier];
  v6 = [v4 stringWithFormat:@"source: %@", sourceIdentifier];
  [array addObject:v6];

  variant = [(PXActionRecord *)self variant];

  if (variant)
  {
    v8 = MEMORY[0x1E696AEC0];
    variant2 = [(PXActionRecord *)self variant];
    v10 = [v8 stringWithFormat:@"variant: %@", variant2];
    [array addObject:v10];
  }

  if ([(PXActionRecord *)self assetCount]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"assetCount: %ti", -[PXActionRecord assetCount](self, "assetCount")];
    [array addObject:v11];
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = PXActionUserConfirmationDescription([(PXActionRecord *)self userConfirmation]);
  v14 = [v12 stringWithFormat:@"userConfirmation: %@", v13];
  [array addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [array componentsJoinedByString:{@", "}];
  v17 = [v15 stringWithFormat:@"{%@}", v16];

  return v17;
}

- (PXActionRecord)initWithSourceIdentifier:(id)identifier variant:(id)variant assetCount:(int64_t)count userConfirmation:(int64_t)confirmation
{
  identifierCopy = identifier;
  variantCopy = variant;
  v18.receiver = self;
  v18.super_class = PXActionRecord;
  v12 = [(PXActionRecord *)&v18 init];
  if (v12)
  {
    v13 = [identifierCopy copy];
    sourceIdentifier = v12->_sourceIdentifier;
    v12->_sourceIdentifier = v13;

    v15 = [variantCopy copy];
    variant = v12->_variant;
    v12->_variant = v15;

    v12->_assetCount = count;
    v12->_userConfirmation = confirmation;
  }

  return v12;
}

- (PXActionRecord)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionRecord.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXActionRecord init]"}];

  abort();
}

@end