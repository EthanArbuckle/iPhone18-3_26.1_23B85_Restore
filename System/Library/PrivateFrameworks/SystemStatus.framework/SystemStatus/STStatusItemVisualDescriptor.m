@interface STStatusItemVisualDescriptor
+ (id)_defaultVisualDescriptors;
+ (id)visualDescriptorForStatusItemWithIdentifier:(id)a3;
- (BOOL)isEqual:(id)a3;
- (STStatusItemVisualDescriptor)initWithCoder:(id)a3;
- (STStatusItemVisualDescriptor)initWithPlistRepresentation:(id)a3;
- (id)debugDescriptionWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation STStatusItemVisualDescriptor

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E698E6A0] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  v6 = [(STStatusItemVisualDescriptor *)self packageName];
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 3221225472;
  v30[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke;
  v30[3] = &unk_1E85DDD28;
  v7 = v4;
  v31 = v7;
  v8 = [v5 appendString:v6 counterpart:v30];

  v9 = [(STStatusItemVisualDescriptor *)self systemImageName];
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke_2;
  v28[3] = &unk_1E85DDD28;
  v10 = v7;
  v29 = v10;
  v11 = [v5 appendString:v9 counterpart:v28];

  v12 = [(STStatusItemVisualDescriptor *)self imageName];
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke_3;
  v26[3] = &unk_1E85DDD28;
  v13 = v10;
  v27 = v13;
  v14 = [v5 appendString:v12 counterpart:v26];

  v15 = [(STStatusItemVisualDescriptor *)self textLabel];
  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke_4;
  v24[3] = &unk_1E85DDD28;
  v16 = v13;
  v25 = v16;
  v17 = [v5 appendString:v15 counterpart:v24];

  v18 = [(STStatusItemVisualDescriptor *)self isCallToAction];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __40__STStatusItemVisualDescriptor_isEqual___block_invoke_5;
  v22[3] = &unk_1E85DDD50;
  v23 = v16;
  v19 = v16;
  v20 = [v5 appendBool:v18 counterpart:v22];
  LOBYTE(v18) = [v5 isEqual];

  return v18;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(STStatusItemVisualDescriptor *)self packageName];
  v5 = [v3 appendString:v4];

  v6 = [(STStatusItemVisualDescriptor *)self systemImageName];
  v7 = [v3 appendString:v6];

  v8 = [(STStatusItemVisualDescriptor *)self imageName];
  v9 = [v3 appendString:v8];

  v10 = [(STStatusItemVisualDescriptor *)self textLabel];
  v11 = [v3 appendString:v10];

  v12 = [v3 appendBool:{-[STStatusItemVisualDescriptor isCallToAction](self, "isCallToAction")}];
  v13 = [v3 hash];

  return v13;
}

- (id)succinctDescription
{
  v2 = [(STStatusItemVisualDescriptor *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusItemVisualDescriptor *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)debugDescriptionWithMultilinePrefix:(id)a3
{
  v3 = [(STStatusItemVisualDescriptor *)self _descriptionBuilderWithMultilinePrefix:a3 forDebug:1];
  v4 = [v3 build];

  return v4;
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

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(STStatusItemVisualDescriptor *)self packageName];
  [v8 encodeObject:v4 forKey:@"packageName"];

  v5 = [(STStatusItemVisualDescriptor *)self systemImageName];
  [v8 encodeObject:v5 forKey:@"systemImageName"];

  v6 = [(STStatusItemVisualDescriptor *)self imageName];
  [v8 encodeObject:v6 forKey:@"imageName"];

  v7 = [(STStatusItemVisualDescriptor *)self textLabel];
  [v8 encodeObject:v7 forKey:@"textLabel"];

  [v8 encodeBool:-[STStatusItemVisualDescriptor isCallToAction](self forKey:{"isCallToAction"), @"callToAction"}];
}

- (STStatusItemVisualDescriptor)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"packageName"];
  v7 = [v4 decodeObjectOfClass:v5 forKey:@"systemImageName"];
  v8 = [v4 decodeObjectOfClass:v5 forKey:@"imageName"];
  v9 = [v4 decodeObjectOfClass:v5 forKey:@"textLabel"];
  v10 = [v4 decodeBoolForKey:@"callToAction"];

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

- (STStatusItemVisualDescriptor)initWithPlistRepresentation:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = STStatusItemVisualDescriptor;
  v5 = [(STStatusItemVisualDescriptor *)&v14 init];
  if (v5)
  {
    v6 = [v4 bs_safeDictionaryForKey:@"SystemImage"];
    v7 = [v6 bs_safeStringForKey:@"InternalSymbolName"];
    systemImageName = v5->_systemImageName;
    v5->_systemImageName = v7;

    v9 = [v4 bs_safeStringForKey:@"TextLabel"];
    textLabel = v5->_textLabel;
    v5->_textLabel = v9;

    v5->_callToAction = [v4 bs_BOOLForKey:@"IsCallToAction"];
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

+ (id)visualDescriptorForStatusItemWithIdentifier:(id)a3
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __86__STStatusItemVisualDescriptor_BuiltIns__visualDescriptorForStatusItemWithIdentifier___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v3 = _MergedGlobals_1_0;
  v4 = a3;
  if (v3 != -1)
  {
    dispatch_once(&_MergedGlobals_1_0, block);
  }

  v5 = [qword_1ED7F5C78 objectForKey:v4];

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
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = objc_opt_new();
  [v3 setSystemImageName:@"airplane"];
  [v2 setObject:v3 forKey:@"com.apple.systemstatus.status-item.AirplaneMode"];

  v4 = objc_opt_new();
  [v4 setSystemImageName:@"airplayvideo"];
  [v2 setObject:v4 forKey:@"com.apple.systemstatus.status-item.AirPlay"];

  v5 = objc_opt_new();
  [v5 setSystemImageName:@"alarm.fill"];
  [v2 setObject:v5 forKey:@"com.apple.systemstatus.status-item.Alarm"];

  v6 = objc_opt_new();
  [v6 setSystemImageName:@"carplay"];
  [v2 setObject:v6 forKey:@"com.apple.systemstatus.status-item.CarPlay"];

  v7 = objc_opt_new();
  [v7 setSystemImageName:@"display.trianglebadge.exclamationmark"];
  [v2 setObject:v7 forKey:@"com.apple.systemstatus.status-item.DisplayWarning"];

  v8 = objc_opt_new();
  [v8 setSystemImageName:@"drop.triangle.fill"];
  [v8 setImageName:@"LiquidDetection"];
  [v2 setObject:v8 forKey:@"com.apple.systemstatus.status-item.LiquidDetection"];

  v9 = objc_opt_new();
  [v9 setSystemImageName:@"lock.rotation"];
  [v2 setObject:v9 forKey:@"com.apple.systemstatus.status-item.RotationLock"];

  v10 = objc_opt_new();
  [v10 setImageName:@"Student"];
  [v2 setObject:v10 forKey:@"com.apple.systemstatus.status-item.Student"];

  v11 = objc_opt_new();
  [v11 setSystemImageName:@"teletype"];
  [v2 setObject:v11 forKey:@"com.apple.systemstatus.status-item.TTY"];

  v12 = objc_opt_new();
  [v12 setImageName:@"VPN"];
  [v2 setObject:v12 forKey:@"com.apple.systemstatus.status-item.VPN"];

  return v2;
}

@end