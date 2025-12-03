@interface VCConfiguredSleepWorkflow
+ (CGSize)glyphSize;
- (NSString)description;
- (VCConfiguredSleepWorkflow)initWithCoder:(id)coder;
- (VCConfiguredSleepWorkflow)initWithWorkflowIdentifier:(id)identifier bundleIdentifierForDisplay:(id)display summaryString:(id)string name:(id)name actionIdentifier:(id)actionIdentifier glyphCharacter:(unsigned __int16)character backgroundColorValue:(int64_t)value isAppLaunchWorkflow:(BOOL)self0;
- (void)encodeWithCoder:(id)coder;
- (void)setIconImage:(CGImage *)image scale:(double)scale;
@end

@implementation VCConfiguredSleepWorkflow

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  identifier = [(WFDatabaseObjectDescriptor *)self identifier];
  summaryString = [(VCConfiguredSleepWorkflow *)self summaryString];
  bundleIdentifierForDisplay = [(VCConfiguredSleepWorkflow *)self bundleIdentifierForDisplay];
  name = [(VCConfiguredSleepWorkflow *)self name];
  actionIdentifier = [(VCConfiguredSleepWorkflow *)self actionIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: %p, identifier: %@, summaryString: %@, bundleIdentifierForDisplay: %@, name: %@, actionIdentifier: %@, isAppLaunchWorkflow: %d>", v4, self, identifier, summaryString, bundleIdentifierForDisplay, name, actionIdentifier, -[VCConfiguredSleepWorkflow isAppLaunchWorkflow](self, "isAppLaunchWorkflow")];

  return v10;
}

- (VCConfiguredSleepWorkflow)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = VCConfiguredSleepWorkflow;
  v5 = [(WFDatabaseObjectDescriptor *)&v16 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifierForDisplay"];
    bundleIdentifierForDisplay = v5->_bundleIdentifierForDisplay;
    v5->_bundleIdentifierForDisplay = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"summaryString"];
    summaryString = v5->_summaryString;
    v5->_summaryString = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"actionIdentifier"];
    actionIdentifier = v5->_actionIdentifier;
    v5->_actionIdentifier = v12;

    v5->_glyphCharacter = [coderCopy decodeInt32ForKey:@"glyphCharacter"];
    v5->_backgroundColorValue = [coderCopy decodeIntegerForKey:@"backgroundColorValue"];
    v5->_isAppLaunchWorkflow = [coderCopy decodeBoolForKey:@"isAppLaunchWorkflow"];
    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = VCConfiguredSleepWorkflow;
  coderCopy = coder;
  [(WFDatabaseObjectDescriptor *)&v9 encodeWithCoder:coderCopy];
  v5 = [(VCConfiguredSleepWorkflow *)self bundleIdentifierForDisplay:v9.receiver];
  [coderCopy encodeObject:v5 forKey:@"bundleIdentifierForDisplay"];

  summaryString = [(VCConfiguredSleepWorkflow *)self summaryString];
  [coderCopy encodeObject:summaryString forKey:@"summaryString"];

  name = [(VCConfiguredSleepWorkflow *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  actionIdentifier = [(VCConfiguredSleepWorkflow *)self actionIdentifier];
  [coderCopy encodeObject:actionIdentifier forKey:@"actionIdentifier"];

  [coderCopy encodeInteger:-[VCConfiguredSleepWorkflow backgroundColorValue](self forKey:{"backgroundColorValue"), @"backgroundColorValue"}];
  [coderCopy encodeInt32:-[VCConfiguredSleepWorkflow glyphCharacter](self forKey:{"glyphCharacter"), @"glyphCharacter"}];
  [coderCopy encodeBool:-[VCConfiguredSleepWorkflow isAppLaunchWorkflow](self forKey:{"isAppLaunchWorkflow"), @"isAppLaunchWorkflow"}];
}

- (void)setIconImage:(CGImage *)image scale:(double)scale
{
  CGImageRelease(self->_iconImage);
  self->_iconImage = image;
  self->_iconScale = scale;

  CGImageRetain(image);
}

- (VCConfiguredSleepWorkflow)initWithWorkflowIdentifier:(id)identifier bundleIdentifierForDisplay:(id)display summaryString:(id)string name:(id)name actionIdentifier:(id)actionIdentifier glyphCharacter:(unsigned __int16)character backgroundColorValue:(int64_t)value isAppLaunchWorkflow:(BOOL)self0
{
  displayCopy = display;
  stringCopy = string;
  nameCopy = name;
  actionIdentifierCopy = actionIdentifier;
  v31.receiver = self;
  v31.super_class = VCConfiguredSleepWorkflow;
  v20 = [(WFDatabaseObjectDescriptor *)&v31 initWithIdentifier:identifier objectType:0];
  if (v20)
  {
    v21 = [displayCopy copy];
    bundleIdentifierForDisplay = v20->_bundleIdentifierForDisplay;
    v20->_bundleIdentifierForDisplay = v21;

    v23 = [stringCopy copy];
    summaryString = v20->_summaryString;
    v20->_summaryString = v23;

    v25 = [nameCopy copy];
    name = v20->_name;
    v20->_name = v25;

    v27 = [actionIdentifierCopy copy];
    actionIdentifier = v20->_actionIdentifier;
    v20->_actionIdentifier = v27;

    v20->_glyphCharacter = character;
    v20->_backgroundColorValue = value;
    v20->_isAppLaunchWorkflow = workflow;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getkISImageDescriptorHomeScreen(void)"];
    [currentHandler handleFailureInFunction:v15 file:@"VCConfiguredSleepWorkflow.m" lineNumber:19 description:{@"%s", dlerror()}];

    __break(1u);
  }

  result.height = v13;
  result.width = v12;
  return result;
}

@end