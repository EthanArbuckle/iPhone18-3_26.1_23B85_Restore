@interface PXActionRecord
- (NSString)publicDescription;
- (PXActionRecord)init;
- (PXActionRecord)initWithSourceIdentifier:(id)a3 variant:(id)a4 assetCount:(int64_t)a5 userConfirmation:(int64_t)a6;
- (id)withUserConfirmation:(int64_t)a3 assetCount:(int64_t)a4;
- (id)withVariant:(id)a3;
@end

@implementation PXActionRecord

- (id)withUserConfirmation:(int64_t)a3 assetCount:(int64_t)a4
{
  v20 = *MEMORY[0x1E69E9840];
  if ([(PXActionRecord *)self assetCount]!= a4)
  {
    v7 = PLUIActionsGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = PXActionUserConfirmationDescription(a3);
      v14 = 134218498;
      v15 = a4;
      v16 = 2114;
      v17 = v8;
      v18 = 2114;
      v19 = self;
      _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_ERROR, "asset count (%ti) mismatch when changing user confirmation (%{public}@) of %{public}@", &v14, 0x20u);
    }
  }

  v9 = objc_alloc(objc_opt_class());
  v10 = [(PXActionRecord *)self sourceIdentifier];
  v11 = [(PXActionRecord *)self variant];
  v12 = [v9 initWithSourceIdentifier:v10 variant:v11 assetCount:a4 userConfirmation:a3];

  return v12;
}

- (id)withVariant:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(objc_opt_class());
  v6 = [(PXActionRecord *)self sourceIdentifier];
  v7 = [v5 initWithSourceIdentifier:v6 variant:v4 assetCount:-[PXActionRecord assetCount](self userConfirmation:{"assetCount"), -[PXActionRecord userConfirmation](self, "userConfirmation")}];

  return v7;
}

- (NSString)publicDescription
{
  v3 = [MEMORY[0x1E695DF70] array];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [(PXActionRecord *)self sourceIdentifier];
  v6 = [v4 stringWithFormat:@"source: %@", v5];
  [v3 addObject:v6];

  v7 = [(PXActionRecord *)self variant];

  if (v7)
  {
    v8 = MEMORY[0x1E696AEC0];
    v9 = [(PXActionRecord *)self variant];
    v10 = [v8 stringWithFormat:@"variant: %@", v9];
    [v3 addObject:v10];
  }

  if ([(PXActionRecord *)self assetCount]!= 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"assetCount: %ti", -[PXActionRecord assetCount](self, "assetCount")];
    [v3 addObject:v11];
  }

  v12 = MEMORY[0x1E696AEC0];
  v13 = PXActionUserConfirmationDescription([(PXActionRecord *)self userConfirmation]);
  v14 = [v12 stringWithFormat:@"userConfirmation: %@", v13];
  [v3 addObject:v14];

  v15 = MEMORY[0x1E696AEC0];
  v16 = [v3 componentsJoinedByString:{@", "}];
  v17 = [v15 stringWithFormat:@"{%@}", v16];

  return v17;
}

- (PXActionRecord)initWithSourceIdentifier:(id)a3 variant:(id)a4 assetCount:(int64_t)a5 userConfirmation:(int64_t)a6
{
  v10 = a3;
  v11 = a4;
  v18.receiver = self;
  v18.super_class = PXActionRecord;
  v12 = [(PXActionRecord *)&v18 init];
  if (v12)
  {
    v13 = [v10 copy];
    sourceIdentifier = v12->_sourceIdentifier;
    v12->_sourceIdentifier = v13;

    v15 = [v11 copy];
    variant = v12->_variant;
    v12->_variant = v15;

    v12->_assetCount = a5;
    v12->_userConfirmation = a6;
  }

  return v12;
}

- (PXActionRecord)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXActionRecord.m" lineNumber:46 description:{@"%s is not available as initializer", "-[PXActionRecord init]"}];

  abort();
}

@end