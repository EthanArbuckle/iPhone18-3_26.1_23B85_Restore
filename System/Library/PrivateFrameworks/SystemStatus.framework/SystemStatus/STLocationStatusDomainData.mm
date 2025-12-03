@interface STLocationStatusDomainData
- (BOOL)isEqual:(id)equal;
- (NSArray)attributions;
- (NSArray)locationAttributions;
- (STLocationStatusDomainData)init;
- (STLocationStatusDomainData)initWithCoder:(id)coder;
- (STLocationStatusDomainData)initWithData:(id)data;
- (STLocationStatusDomainData)initWithLocationAttributionListData:(id)data activeDisplayModes:(unint64_t)modes;
- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:;
- (id)_initWithLocationAttributionListData:(id)data activeDisplayModes:(unint64_t)modes;
- (id)dataByApplyingDiff:(id)diff;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)diffFromData:(id)data;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STLocationStatusDomainData

- (NSArray)attributions
{
  locationAttributionListData = [(STLocationStatusDomainData *)self locationAttributionListData];
  objects = [locationAttributionListData objects];

  return objects;
}

- (STLocationStatusDomainData)init
{
  v3 = objc_alloc_init(STListData);
  v4 = [(STLocationStatusDomainData *)self initWithLocationAttributionListData:v3 activeDisplayModes:0];

  return v4;
}

- (STLocationStatusDomainData)initWithData:(id)data
{
  dataCopy = data;
  locationAttributionListData = [dataCopy locationAttributionListData];
  activeDisplayModes = [dataCopy activeDisplayModes];

  v7 = [(STLocationStatusDomainData *)self initWithLocationAttributionListData:locationAttributionListData activeDisplayModes:activeDisplayModes];
  return v7;
}

- (STLocationStatusDomainData)initWithLocationAttributionListData:(id)data activeDisplayModes:(unint64_t)modes
{
  v6 = [data copy];
  v7 = [(STLocationStatusDomainData *)self _initWithLocationAttributionListData:v6 activeDisplayModes:modes];

  return v7;
}

- (id)_initWithLocationAttributionListData:(id)data activeDisplayModes:(unint64_t)modes
{
  dataCopy = data;
  v11.receiver = self;
  v11.super_class = STLocationStatusDomainData;
  v8 = [(STLocationStatusDomainData *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationAttributionListData, data);
    v9->_activeDisplayModes = modes;
  }

  return v9;
}

- (NSArray)locationAttributions
{
  attributions = [(STLocationStatusDomainData *)self attributions];
  v3 = [attributions bs_filter:&__block_literal_global_5];
  v4 = [v3 bs_map:&__block_literal_global_7];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  locationAttributionListData = [(STLocationStatusDomainData *)self locationAttributionListData];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __38__STLocationStatusDomainData_isEqual___block_invoke;
  v18[3] = &unk_1E85DDCD8;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendObject:locationAttributionListData counterpart:v18];

  activeDisplayModes = [(STLocationStatusDomainData *)self activeDisplayModes];
  v13 = MEMORY[0x1E69E9820];
  v14 = 3221225472;
  v15 = __38__STLocationStatusDomainData_isEqual___block_invoke_2;
  v16 = &unk_1E85DE2F8;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendUnsignedInteger:activeDisplayModes counterpart:&v13];
  LOBYTE(activeDisplayModes) = [v5 isEqual];

  return activeDisplayModes;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  locationAttributionListData = [(STLocationStatusDomainData *)self locationAttributionListData];
  v5 = [builder appendObject:locationAttributionListData];

  v6 = [builder appendUnsignedInteger:{-[STLocationStatusDomainData activeDisplayModes](self, "activeDisplayModes")}];
  v7 = [builder hash];

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [STMutableLocationStatusDomainData allocWithZone:zone];

  return [(STLocationStatusDomainData *)v4 initWithData:self];
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STLocationStatusDomainData *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STLocationStatusDomainData *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STLocationStatusDomainData *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(uint64_t)prefix forDebug:
{
  selfCopy = self;
  if (self)
  {
    v5 = a2;
    succinctDescriptionBuilder = [selfCopy succinctDescriptionBuilder];
    [succinctDescriptionBuilder setUseDebugDescription:prefix];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __78__STLocationStatusDomainData__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke;
    v9[3] = &unk_1E85DDD00;
    v7 = succinctDescriptionBuilder;
    v10 = v7;
    v11 = selfCopy;
    [v7 appendBodySectionWithName:0 multilinePrefix:v5 block:v9];

    selfCopy = v7;
  }

  return selfCopy;
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

- (id)diffFromData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [STLocationStatusDomainDataDiff diffFromData:dataCopy toData:self];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)dataByApplyingDiff:(id)diff
{
  diffCopy = diff;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([diffCopy isEmpty])
    {
      v5 = [(STLocationStatusDomainData *)self copy];
    }

    else
    {
      v5 = [(STLocationStatusDomainData *)self mutableCopy];
      [diffCopy applyToMutableData:v5];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  locationAttributionListData = [(STLocationStatusDomainData *)self locationAttributionListData];
  [coderCopy encodeObject:locationAttributionListData forKey:@"locationAttributions"];

  [coderCopy encodeInteger:-[STLocationStatusDomainData activeDisplayModes](self forKey:{"activeDisplayModes"), @"activeDisplayModes"}];
}

- (STLocationStatusDomainData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"locationAttributions"];
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

  v7 = [coderCopy decodeIntegerForKey:@"activeDisplayModes"];
  if (v6)
  {
    self = [(STLocationStatusDomainData *)self initWithLocationAttributionListData:v6 activeDisplayModes:v7];
    selfCopy = self;
  }

  else
  {
    v9 = STSystemStatusLogDataIntegrity();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_error_impl(&dword_1DA9C2000, v9, OS_LOG_TYPE_ERROR, "decoded invalid location domain data", v11, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
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