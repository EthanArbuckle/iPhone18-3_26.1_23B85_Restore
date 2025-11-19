@interface VCConfiguredSleepWorkflow
+ (CGSize)glyphSize;
- (NSString)description;
- (VCConfiguredSleepWorkflow)initWithCoder:(id)a3;
- (VCConfiguredSleepWorkflow)initWithWorkflowIdentifier:(id)a3 bundleIdentifierForDisplay:(id)a4 summaryString:(id)a5 name:(id)a6 actionIdentifier:(id)a7 glyphCharacter:(unsigned __int16)a8 backgroundColorValue:(int64_t)a9 isAppLaunchWorkflow:(BOOL)a10;
- (void)encodeWithCoder:(id)a3;
- (void)setIconImage:(CGImage *)a3 scale:(double)a4;
@end

@implementation VCConfiguredSleepWorkflow

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(WFDatabaseObjectDescriptor *)self identifier];
  v6 = [(VCConfiguredSleepWorkflow *)self summaryString];
  v7 = [(VCConfiguredSleepWorkflow *)self bundleIdentifierForDisplay];
  v8 = [(VCConfiguredSleepWorkflow *)self name];
  v9 = [(VCConfiguredSleepWorkflow *)self actionIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, summaryString: %@, bundleIdentifierForDisplay: %@, name: %@, actionIdentifier: %@, isAppLaunchWorkflow: %d>", v4, self, v5, v6, v7, v8, v9, -[VCConfiguredSleepWorkflow isAppLaunchWorkflow](self, "isAppLaunchWorkflow")];

  return v10;
}

- (VCConfiguredSleepWorkflow)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = VCConfiguredSleepWorkflow;
  v5 = [(WFDatabaseObjectDescriptor *)&v16 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifierForDisplay"];
    bundleIdentifierForDisplay = v5->_bundleIdentifierForDisplay;
    v5->_bundleIdentifierForDisplay = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"summaryString"];
    summaryString = v5->_summaryString;
    v5->_summaryString = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v12;

    v5->_glyphCharacter = [v4 decodeInt32ForKey:@"glyphCharacter"];
    v5->_backgroundColorValue = [v4 decodeIntegerForKey:@"backgroundColorValue"];
    v5->_isAppLaunchWorkflow = [v4 decodeBoolForKey:@"isAppLaunchWorkflow"];
    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = VCConfiguredSleepWorkflow;
  v4 = a3;
  [(WFDatabaseObjectDescriptor *)&v9 encodeWithCoder:v4];
  v5 = [(VCConfiguredSleepWorkflow *)self bundleIdentifierForDisplay:v9.receiver];
  [v4 encodeObject:v5 forKey:@"bundleIdentifierForDisplay"];

  v6 = [(VCConfiguredSleepWorkflow *)self summaryString];
  [v4 encodeObject:v6 forKey:@"summaryString"];

  v7 = [(VCConfiguredSleepWorkflow *)self name];
  [v4 encodeObject:v7 forKey:@"name"];

  v8 = [(VCConfiguredSleepWorkflow *)self actionIdentifier];
  [v4 encodeObject:v8 forKey:@"actionIdentifier"];

  [v4 encodeInteger:-[VCConfiguredSleepWorkflow backgroundColorValue](self forKey:{"backgroundColorValue"), @"backgroundColorValue"}];
  [v4 encodeInt32:-[VCConfiguredSleepWorkflow glyphCharacter](self forKey:{"glyphCharacter"), @"glyphCharacter"}];
  [v4 encodeBool:-[VCConfiguredSleepWorkflow isAppLaunchWorkflow](self forKey:{"isAppLaunchWorkflow"), @"isAppLaunchWorkflow"}];
}

- (void)setIconImage:(CGImage *)a3 scale:(double)a4
{
  CGImageRelease(self->_iconImage);
  self->_iconImage = a3;
  self->_iconScale = a4;

  CGImageRetain(a3);
}

- (VCConfiguredSleepWorkflow)initWithWorkflowIdentifier:(id)a3 bundleIdentifierForDisplay:(id)a4 summaryString:(id)a5 name:(id)a6 actionIdentifier:(id)a7 glyphCharacter:(unsigned __int16)a8 backgroundColorValue:(int64_t)a9 isAppLaunchWorkflow:(BOOL)a10
{
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v31.receiver = self;
  v31.super_class = VCConfiguredSleepWorkflow;
  v20 = [(WFDatabaseObjectDescriptor *)&v31 initWithIdentifier:a3 objectType:0];
  if (v20)
  {
    v21 = [v16 copy];
    bundleIdentifierForDisplay = v20->_bundleIdentifierForDisplay;
    v20->_bundleIdentifierForDisplay = v21;

    v23 = [v17 copy];
    summaryString = v20->_summaryString;
    v20->_summaryString = v23;

    v25 = [v18 copy];
    name = v20->_name;
    v20->_name = v25;

    v27 = [v19 copy];
    actionIdentifier = v20->_actionIdentifier;
    v20->_actionIdentifier = v27;

    v20->_glyphCharacter = a8;
    v20->_backgroundColorValue = a9;
    v20->_isAppLaunchWorkflow = a10;
    v29 = v20;
  }

  return v20;
}

+ (CGSize)glyphSize
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2050000000;
  v2 = getISImageDescriptorClass_softClass_16606;
  v24 = getISImageDescriptorClass_softClass_16606;
  if (!getISImageDescriptorClass_softClass_16606)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getISImageDescriptorClass_block_invoke_16607;
    v19 = &unk_1E7B02C60;
    v20 = &v21;
    __getISImageDescriptorClass_block_invoke_16607(&v16);
    v2 = v22[3];
  }

  v3 = v2;
  _Block_object_dispose(&v21, 8);
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v4 = getkISImageDescriptorHomeScreenSymbolLoc_ptr_16608;
  v24 = getkISImageDescriptorHomeScreenSymbolLoc_ptr_16608;
  if (!getkISImageDescriptorHomeScreenSymbolLoc_ptr_16608)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __getkISImageDescriptorHomeScreenSymbolLoc_block_invoke_16609;
    v19 = &unk_1E7B02C60;
    v20 = &v21;
    v5 = IconServicesLibrary_16610();
    v6 = dlsym(v5, "kISImageDescriptorHomeScreen");
    *(v20[1] + 24) = v6;
    getkISImageDescriptorHomeScreenSymbolLoc_ptr_16608 = *(v20[1] + 24);
    v4 = v22[3];
  }

  _Block_object_dispose(&v21, 8);
  if (v4)
  {
    v7 = [v2 imageDescriptorNamed:*v4];
    [v7 size];
    v9 = v8;
    v11 = v10;

    v12 = v9;
    v13 = v11;
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkISImageDescriptorHomeScreen(void)"];
    [v14 handleFailureInFunction:v15 file:@"VCConfiguredSleepWorkflow.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  result.height = v13;
  result.width = v12;
  return result;
}

@end