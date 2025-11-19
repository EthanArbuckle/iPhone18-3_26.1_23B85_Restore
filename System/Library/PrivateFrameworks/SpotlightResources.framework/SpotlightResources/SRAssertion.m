@interface SRAssertion
- (BOOL)isEqual:(id)a3;
- (SRAssertion)initWithAssertionID:(id)a3;
- (SRAssertion)initWithAssetType:(id)a3 language:(id)a4 deliveryType:(id)a5;
- (id)assertionID;
- (unint64_t)hash;
@end

@implementation SRAssertion

- (SRAssertion)initWithAssetType:(id)a3 language:(id)a4 deliveryType:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = SRAssertion;
  v12 = [(SRAssertion *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_assetType, a3);
    objc_storeStrong(&v13->_language, a4);
    objc_storeStrong(&v13->_deliveryType, a5);
  }

  return v13;
}

- (SRAssertion)initWithAssertionID:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = SRAssertion;
  v6 = [(SRAssertion *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assertionID, a3);
    v8 = [v5 componentsSeparatedByString:@":"];
    if ([v8 count] == 4)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      v10 = [v9 isEqualToString:@"SpotlightResources"];

      if (v10)
      {
        v11 = [v8 objectAtIndexedSubscript:1];
        v12 = [v8 objectAtIndexedSubscript:2];
        v13 = [v8 objectAtIndexedSubscript:3];
        v14 = [(SRAssertion *)v7 initWithAssetType:v11 language:v12 deliveryType:v13];

        goto LABEL_9;
      }
    }

    assetType = v7->_assetType;
    v7->_assetType = 0;

    language = v7->_language;
    v7->_language = 0;

    deliveryType = v7->_deliveryType;
    v7->_deliveryType = 0;
  }

  v18 = SRLogCategoryAssets();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SRAssertion initWithAssertionID:];
  }

  v14 = v7;
LABEL_9:

  return v14;
}

- (id)assertionID
{
  assertionID = self->_assertionID;
  if (!assertionID)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@:%@:%@:%@", @"SpotlightResources", self->_assetType, self->_language, self->_deliveryType];
    v5 = self->_assertionID;
    self->_assertionID = v4;

    assertionID = self->_assertionID;
  }

  return assertionID;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [(SRAssertion *)self assertionID];
  v6 = [v4 assertionID];

  LOBYTE(v4) = [v5 isEqualToString:v6];
  return v4;
}

- (unint64_t)hash
{
  v2 = [(SRAssertion *)self assertionID];
  v3 = [v2 hash];

  return v3;
}

- (void)initWithAssertionID:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1(&dword_1AE58E000, v0, v1, "Malformed assertionID %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end