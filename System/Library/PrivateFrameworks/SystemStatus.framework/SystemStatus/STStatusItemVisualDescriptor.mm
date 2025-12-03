@interface STStatusItemVisualDescriptor
+ (id)_defaultVisualDescriptors;
+ (id)visualDescriptorForStatusItemWithIdentifier:(id)identifier;
- (BOOL)isEqual:(id)equal;
- (STStatusItemVisualDescriptor)initWithCoder:(id)coder;
- (STStatusItemVisualDescriptor)initWithPlistRepresentation:(id)representation;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation STStatusItemVisualDescriptor

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  packageName = [(STStatusItemVisualDescriptor *)self packageName];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke;
  v30[3] = &unk_1E85DDD28;
  v7 = equalCopy;
  v31 = v7;
  v8 = [v5 appendString:packageName counterpart:v30];

  systemImageName = [(STStatusItemVisualDescriptor *)self systemImageName];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke_2;
  v28[3] = &unk_1E85DDD28;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendString:systemImageName counterpart:v28];

  imageName = [(STStatusItemVisualDescriptor *)self imageName];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke_3;
  v26[3] = &unk_1E85DDD28;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendString:imageName counterpart:v26];

  textLabel = [(STStatusItemVisualDescriptor *)self textLabel];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke_4;
  v24[3] = &unk_1E85DDD28;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendString:textLabel counterpart:v24];

  isCallToAction = [(STStatusItemVisualDescriptor *)self isCallToAction];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke_5;
  v22[3] = &unk_1E85DDD50;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendBool:isCallToAction counterpart:v22];
  LOBYTE(isCallToAction) = [v5 isEqual];

  return isCallToAction;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  packageName = [(STStatusItemVisualDescriptor *)self packageName];
  v5 = [builder appendString:packageName];

  systemImageName = [(STStatusItemVisualDescriptor *)self systemImageName];
  v7 = [builder appendString:systemImageName];

  imageName = [(STStatusItemVisualDescriptor *)self imageName];
  v9 = [builder appendString:imageName];

  textLabel = [(STStatusItemVisualDescriptor *)self textLabel];
  v11 = [builder appendString:textLabel];

  v12 = [builder appendBool:{-[STStatusItemVisualDescriptor isCallToAction](self, "isCallToAction")}];
  v13 = [builder hash];

  return v13;
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STStatusItemVisualDescriptor *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemVisualDescriptor *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STStatusItemVisualDescriptor *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

id __80__STStatusItemVisualDescriptor__descriptionBuilderWithMultilinePrefix_forDebug___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) packageName];
  [v2 appendString:v3 withName:@"packageName" skipIfEmpty:1];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) systemImageName];
  [v4 appendString:v5 withName:@"systemImageName" skipIfEmpty:1];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) imageName];
  [v6 appendString:v7 withName:@"imageName" skipIfEmpty:1];

  v8 = *(a1 + 32);
  v9 = [*(a1 + 40) textLabel];
  [v8 appendString:v9 withName:@"textLabel" skipIfEmpty:1];

  return [*(a1 + 32) appendBool:objc_msgSend(*(a1 + 40) withName:"isCallToAction") ifEqualTo:{@"callToAction", 1}];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  packageName = [(STStatusItemVisualDescriptor *)self packageName];
  [coderCopy encodeObject:packageName forKey:@"packageName"];

  systemImageName = [(STStatusItemVisualDescriptor *)self systemImageName];
  [coderCopy encodeObject:systemImageName forKey:@"systemImageName"];

  imageName = [(STStatusItemVisualDescriptor *)self imageName];
  [coderCopy encodeObject:imageName forKey:@"imageName"];

  textLabel = [(STStatusItemVisualDescriptor *)self textLabel];
  [coderCopy encodeObject:textLabel forKey:@"textLabel"];

  [coderCopy encodeBool:-[STStatusItemVisualDescriptor isCallToAction](self forKey:{"isCallToAction"), @"callToAction"}];
}

- (STStatusItemVisualDescriptor)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_class();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"packageName"];
  v7 = [coderCopy decodeObjectOfClass:v5 forKey:@"systemImageName"];
  v8 = [coderCopy decodeObjectOfClass:v5 forKey:@"imageName"];
  v9 = [coderCopy decodeObjectOfClass:v5 forKey:@"textLabel"];
  v10 = [coderCopy decodeBoolForKey:@"callToAction"];

  v21.receiver = self;
  v21.super_class = STStatusItemVisualDescriptor;
  v11 = [(STStatusItemVisualDescriptor *)&v21 init];
  if (v11)
  {
    v12 = [v6 copy];
    packageName = v11->_packageName;
    v11->_packageName = v12;

    v14 = [v7 copy];
    systemImageName = v11->_systemImageName;
    v11->_systemImageName = v14;

    v16 = [v8 copy];
    imageName = v11->_imageName;
    v11->_imageName = v16;

    v18 = [v9 copy];
    textLabel = v11->_textLabel;
    v11->_textLabel = v18;

    v11->_callToAction = v10;
  }

  return v11;
}

- (STStatusItemVisualDescriptor)initWithPlistRepresentation:(id)representation
{
  representationCopy = representation;
  v14.receiver = self;
  v14.super_class = STStatusItemVisualDescriptor;
  v5 = [(STStatusItemVisualDescriptor *)&v14 init];
  if (v5)
  {
    v6 = [representationCopy bs_safeDictionaryForKey:@"SystemImage"];
    v7 = [v6 bs_safeStringForKey:@"InternalSymbolName"];
    systemImageName = v5->_systemImageName;
    v5->_systemImageName = v7;

    v9 = [representationCopy bs_safeStringForKey:@"TextLabel"];
    textLabel = v5->_textLabel;
    v5->_textLabel = v9;

    v5->_callToAction = [representationCopy bs_BOOLForKey:@"IsCallToAction"];
    if (!v5->_textLabel && !v5->_systemImageName && !v5->_imageName && !v5->_packageName)
    {
      v11 = STSystemStatusLogBundleLoading();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1DA9C2000, v11, OS_LOG_TYPE_ERROR, "A visual descriptor should have a systemImage, image, package, or textLabel — but this one doesn't!", v13, 2u);
      }
    }
  }

  return v5;
}

+ (id)visualDescriptorForStatusItemWithIdentifier:(id)identifier
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__STStatusItemVisualDescriptor_BuiltIns__visualDescriptorForStatusItemWithIdentifier___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  v3 = _MergedGlobals_1_0;
  identifierCopy = identifier;
  if (v3 != -1)
  {
    dispatch_once(&_MergedGlobals_1_0, block);
  }

  v5 = [qword_1ED7F5C78 objectForKey:identifierCopy];

  return v5;
}

uint64_t __86__STStatusItemVisualDescriptor_BuiltIns__visualDescriptorForStatusItemWithIdentifier___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _defaultVisualDescriptors];
  v2 = qword_1ED7F5C78;
  qword_1ED7F5C78 = v1;

  return MEMORY[0x1EEE66BB8](v1, v2);
}

+ (id)_defaultVisualDescriptors
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v3 = objc_opt_new();
  [v3 setSystemImageName:@"airplane"];
  [dictionary setObject:v3 forKey:@"com.apple.systemstatus.status-item.AirplaneMode"];

  v4 = objc_opt_new();
  [v4 setSystemImageName:@"airplayvideo"];
  [dictionary setObject:v4 forKey:@"com.apple.systemstatus.status-item.AirPlay"];

  v5 = objc_opt_new();
  [v5 setSystemImageName:@"alarm.fill"];
  [dictionary setObject:v5 forKey:@"com.apple.systemstatus.status-item.Alarm"];

  v6 = objc_opt_new();
  [v6 setSystemImageName:@"carplay"];
  [dictionary setObject:v6 forKey:@"com.apple.systemstatus.status-item.CarPlay"];

  v7 = objc_opt_new();
  [v7 setSystemImageName:@"display.trianglebadge.exclamationmark"];
  [dictionary setObject:v7 forKey:@"com.apple.systemstatus.status-item.DisplayWarning"];

  v8 = objc_opt_new();
  [v8 setSystemImageName:@"drop.triangle.fill"];
  [v8 setImageName:@"LiquidDetection"];
  [dictionary setObject:v8 forKey:@"com.apple.systemstatus.status-item.LiquidDetection"];

  v9 = objc_opt_new();
  [v9 setSystemImageName:@"lock.rotation"];
  [dictionary setObject:v9 forKey:@"com.apple.systemstatus.status-item.RotationLock"];

  v10 = objc_opt_new();
  [v10 setImageName:@"Student"];
  [dictionary setObject:v10 forKey:@"com.apple.systemstatus.status-item.Student"];

  v11 = objc_opt_new();
  [v11 setSystemImageName:@"teletype"];
  [dictionary setObject:v11 forKey:@"com.apple.systemstatus.status-item.TTY"];

  v12 = objc_opt_new();
  [v12 setImageName:@"VPN"];
  [dictionary setObject:v12 forKey:@"com.apple.systemstatus.status-item.VPN"];

  return dictionary;
}

@end