@interface STLocationStatusDomainData
- (BOOL)isEqual:(id)a3;
- (NSArray)attributions;
- (NSArray)locationAttributions;
- (STLocationStatusDomainData)init;
- (STLocationStatusDomainData)initWithCoder:(id)a3;
- (STLocationStatusDomainData)initWithData:(id)a3;
- (STLocationStatusDomainData)initWithLocationAttributionListData:(id)a3 activeDisplayModes:(unint64_t)a4;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:;
- (id)_initWithLocationAttributionListData:(id)a3 activeDisplayModes:(unint64_t)a4;
- (id)dataByApplyingDiff:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)diffFromData:(id)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STLocationStatusDomainData

- (NSArray)attributions
{
  v2 = [(STLocationStatusDomainData *)self locationAttributionListData];
  v3 = [v2 objects];

  return v3;
}

- (STLocationStatusDomainData)init
{
  v3 = objc_alloc_init(STListData);
  v4 = [(STLocationStatusDomainData *)self initWithLocationAttributionListData:v3 activeDisplayModes:0];

  return v4;
}

- (STLocationStatusDomainData)initWithData:(id)a3
{
  v4 = a3;
  v5 = [v4 locationAttributionListData];
  v6 = [v4 activeDisplayModes];

  v7 = [(STLocationStatusDomainData *)self initWithLocationAttributionListData:v5 activeDisplayModes:v6];
  return v7;
}

- (STLocationStatusDomainData)initWithLocationAttributionListData:(id)a3 activeDisplayModes:(unint64_t)a4
{
  v6 = [a3 copy];
  v7 = [(STLocationStatusDomainData *)self _initWithLocationAttributionListData:v6 activeDisplayModes:a4];

  return v7;
}

- (id)_initWithLocationAttributionListData:(id)a3 activeDisplayModes:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = STLocationStatusDomainData;
  v8 = [(STLocationStatusDomainData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationAttributionListData, a3);
    v9->_activeDisplayModes = a4;
  }

  return v9;
}

- (NSArray)locationAttributions
{
  v2 = [(STLocationStatusDomainData *)self attributions];
  v3 = [v2 bs_filter:&__block_literal_global_5];
  v4 = [v3 bs_map:&__block_literal_global_7];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STLocationStatusDomainData *)self locationAttributionListData];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__STLocationStatusDomainData_isEqual___block_invoke;
  v18[3] = &unk_1E85DDCD8;
  v7 = v4;
  v19 = v7;
  v8 = [v5 appendObject:v6 counterpart:v18];

  v9 = [(STLocationStatusDomainData *)self activeDisplayModes];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __38__STLocationStatusDomainData_isEqual___block_invoke_2;
  v16 = &unk_1E85DE2F8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendUnsignedInteger:v9 counterpart:&v13];
  LOBYTE(v9) = [v5 isEqual];

  return v9;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STLocationStatusDomainData *)self locationAttributionListData];
  v5 = [v3 appendObject:v4];

  v6 = [v3 appendUnsignedInteger:{-[STLocationStatusDomainData activeDisplayModes](self, "activeDisplayModes")}];
  v7 = [v3 hash];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [STMutableLocationStatusDomainData allocWithZone:a3];

  return [(STLocationStatusDomainData *)v4 initWithData:self];
}

- (id)succinctDescription
{
  v2 = [(STLocationStatusDomainData *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STLocationStatusDomainData *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STLocationStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)a3 forDebug:
{
  v3 = a1;
  if (a1)
  {
    v5 = a2;
    v6 = [v3 succinctDescriptionBuilder];
    [v6 setUseDebugDescription:a3];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__STLocationStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v7 = v6;
    v10 = v7;
    v11 = v3;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v9];

    v3 = v7;
  }

  return v3;
}

void __78__STLocationStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) locationAttributionListData];
  v4 = [v2 appendObject:v3 withName:0];

  v5 = *(a1 + 32);
  v6 = STLocationStatusDomainLocationAttributionDisplayModeMaskDescription([*(a1 + 40) activeDisplayModes]);
  [v5 appendString:v6 withName:@"activeDisplayModes"];
}

- (id)diffFromData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STLocationStatusDomainDataDiff diffFromData:v4 toData:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([v4 isEmpty])
    {
      v5 = [(STLocationStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STLocationStatusDomainData *)self mutableCopy];
      [v4 applyToMutableData:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(STLocationStatusDomainData *)self locationAttributionListData];
  [v5 encodeObject:v4 forKey:@"locationAttributions"];

  [v5 encodeInteger:-[STLocationStatusDomainData activeDisplayModes](self forKey:{"activeDisplayModes"), @"activeDisplayModes"}];
}

- (STLocationStatusDomainData)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"locationAttributions"];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __44__STLocationStatusDomainData_initWithCoder___block_invoke_2;
  v11[3] = &unk_1E85DE320;
  v11[4] = &v12;
  [v5 enumerateObjectsUsingBlock:v11];
  if (v13[3])
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  _Block_object_dispose(&v12, 8);

  v7 = [v4 decodeIntegerForKey:@"activeDisplayModes"];
  if (v6)
  {
    self = [(STLocationStatusDomainData *)self initWithLocationAttributionListData:v6 activeDisplayModes:v7];
    v8 = self;
  }

  else
  {
    v9 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_ERROR, "decoded invalid location domain data", v11, 2u);
    }

    v8 = 0;
  }

  return v8;
}

void __44__STLocationStatusDomainData_initWithCoder___block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

@end