@interface SHSheetRemoteSceneSettings
+ (id)settingsWithConfigurationBlock:(id)block;
+ (id)settingsWithSessionContext:(id)context presnetationStyle:(int64_t)style hostProcessType:(int64_t)type customizationGroups:(id)groups collaborationOptions:(id)options cloudShareRequest:(id)request isSLMEnabled:(BOOL)enabled;
- (SHSheetRemoteSceneSettings)initWithBSXPCCoder:(id)coder;
- (void)encodeWithBSXPCCoder:(id)coder;
@end

@implementation SHSheetRemoteSceneSettings

+ (id)settingsWithConfigurationBlock:(id)block
{
  blockCopy = block;
  v4 = objc_alloc_init(SHSheetRemoteSceneSettings);
  blockCopy[2](blockCopy, v4);

  return v4;
}

+ (id)settingsWithSessionContext:(id)context presnetationStyle:(int64_t)style hostProcessType:(int64_t)type customizationGroups:(id)groups collaborationOptions:(id)options cloudShareRequest:(id)request isSLMEnabled:(BOOL)enabled
{
  requestCopy = request;
  optionsCopy = options;
  groupsCopy = groups;
  contextCopy = context;
  v19 = objc_alloc_init(self);
  [v19 setSessionContext:contextCopy];

  [v19 setPresentationStyle:style];
  [v19 setHostProcessType:type];
  [v19 setCollaborationOptions:optionsCopy];

  [v19 setCloudShareRequest:requestCopy];
  [v19 setCustomizationGroups:groupsCopy];

  [v19 setIsSLMEnabled:enabled];

  return v19;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  sessionContext = [(SHSheetRemoteSceneSettings *)self sessionContext];
  [coderCopy encodeObject:sessionContext forKey:@"sessionContext"];

  [coderCopy encodeInt64:-[SHSheetRemoteSceneSettings hostProcessType](self forKey:{"hostProcessType"), @"hostProcessType"}];
  [coderCopy encodeInt64:-[SHSheetRemoteSceneSettings presentationStyle](self forKey:{"presentationStyle"), @"presentationStyle"}];
  collaborationOptions = [(SHSheetRemoteSceneSettings *)self collaborationOptions];
  [coderCopy encodeObject:collaborationOptions forKey:@"collaborationOptions"];

  cloudShareRequest = [(SHSheetRemoteSceneSettings *)self cloudShareRequest];
  [coderCopy encodeObject:cloudShareRequest forKey:@"cloudShareRequest"];

  customizationGroups = [(SHSheetRemoteSceneSettings *)self customizationGroups];
  [coderCopy encodeCollection:customizationGroups forKey:@"customizationGroups"];

  [coderCopy encodeBool:-[SHSheetRemoteSceneSettings isSLMEnabled](self forKey:{"isSLMEnabled"), @"isSLMEnabled"}];
}

- (SHSheetRemoteSceneSettings)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(SHSheetRemoteSceneSettings *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionContext"];
  [(SHSheetRemoteSceneSettings *)v5 setSessionContext:v6];

  -[SHSheetRemoteSceneSettings setHostProcessType:](v5, "setHostProcessType:", [coderCopy decodeInt64ForKey:@"hostProcessType"]);
  -[SHSheetRemoteSceneSettings setPresentationStyle:](v5, "setPresentationStyle:", [coderCopy decodeInt64ForKey:@"presentationStyle"]);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v7 = get_SWCollaborationShareOptionsClass_softClass;
  v18 = get_SWCollaborationShareOptionsClass_softClass;
  if (!get_SWCollaborationShareOptionsClass_softClass)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __get_SWCollaborationShareOptionsClass_block_invoke;
    v14[3] = &unk_1E71F91F0;
    v14[4] = &v15;
    __get_SWCollaborationShareOptionsClass_block_invoke(v14);
    v7 = v16[3];
  }

  v8 = v7;
  _Block_object_dispose(&v15, 8);
  v9 = [coderCopy decodeObjectOfClass:v7 forKey:@"collaborationOptions"];
  [(SHSheetRemoteSceneSettings *)v5 setCollaborationOptions:v9];

  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"cloudShareRequest"];
  [(SHSheetRemoteSceneSettings *)v5 setCloudShareRequest:v10];

  v11 = objc_opt_class();
  v12 = [coderCopy decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"customizationGroups"];
  [(SHSheetRemoteSceneSettings *)v5 setCustomizationGroups:v12];

  -[SHSheetRemoteSceneSettings setIsSLMEnabled:](v5, "setIsSLMEnabled:", [coderCopy decodeBoolForKey:@"isSLMEnabled"]);
  return v5;
}

@end