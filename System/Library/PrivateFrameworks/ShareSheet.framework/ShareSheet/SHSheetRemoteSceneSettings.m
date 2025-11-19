@interface SHSheetRemoteSceneSettings
+ (id)settingsWithConfigurationBlock:(id)a3;
+ (id)settingsWithSessionContext:(id)a3 presnetationStyle:(int64_t)a4 hostProcessType:(int64_t)a5 customizationGroups:(id)a6 collaborationOptions:(id)a7 cloudShareRequest:(id)a8 isSLMEnabled:(BOOL)a9;
- (SHSheetRemoteSceneSettings)initWithBSXPCCoder:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
@end

@implementation SHSheetRemoteSceneSettings

+ (id)settingsWithConfigurationBlock:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(SHSheetRemoteSceneSettings);
  v3[2](v3, v4);

  return v4;
}

+ (id)settingsWithSessionContext:(id)a3 presnetationStyle:(int64_t)a4 hostProcessType:(int64_t)a5 customizationGroups:(id)a6 collaborationOptions:(id)a7 cloudShareRequest:(id)a8 isSLMEnabled:(BOOL)a9
{
  v15 = a8;
  v16 = a7;
  v17 = a6;
  v18 = a3;
  v19 = objc_alloc_init(a1);
  [v19 setSessionContext:v18];

  [v19 setPresentationStyle:a4];
  [v19 setHostProcessType:a5];
  [v19 setCollaborationOptions:v16];

  [v19 setCloudShareRequest:v15];
  [v19 setCustomizationGroups:v17];

  [v19 setIsSLMEnabled:a9];

  return v19;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v8 = a3;
  v4 = [(SHSheetRemoteSceneSettings *)self sessionContext];
  [v8 encodeObject:v4 forKey:@"sessionContext"];

  [v8 encodeInt64:-[SHSheetRemoteSceneSettings hostProcessType](self forKey:{"hostProcessType"), @"hostProcessType"}];
  [v8 encodeInt64:-[SHSheetRemoteSceneSettings presentationStyle](self forKey:{"presentationStyle"), @"presentationStyle"}];
  v5 = [(SHSheetRemoteSceneSettings *)self collaborationOptions];
  [v8 encodeObject:v5 forKey:@"collaborationOptions"];

  v6 = [(SHSheetRemoteSceneSettings *)self cloudShareRequest];
  [v8 encodeObject:v6 forKey:@"cloudShareRequest"];

  v7 = [(SHSheetRemoteSceneSettings *)self customizationGroups];
  [v8 encodeCollection:v7 forKey:@"customizationGroups"];

  [v8 encodeBool:-[SHSheetRemoteSceneSettings isSLMEnabled](self forKey:{"isSLMEnabled"), @"isSLMEnabled"}];
}

- (SHSheetRemoteSceneSettings)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(SHSheetRemoteSceneSettings *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionContext"];
  [(SHSheetRemoteSceneSettings *)v5 setSessionContext:v6];

  -[SHSheetRemoteSceneSettings setHostProcessType:](v5, "setHostProcessType:", [v4 decodeInt64ForKey:@"hostProcessType"]);
  -[SHSheetRemoteSceneSettings setPresentationStyle:](v5, "setPresentationStyle:", [v4 decodeInt64ForKey:@"presentationStyle"]);
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
  v9 = [v4 decodeObjectOfClass:v7 forKey:@"collaborationOptions"];
  [(SHSheetRemoteSceneSettings *)v5 setCollaborationOptions:v9];

  v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"cloudShareRequest"];
  [(SHSheetRemoteSceneSettings *)v5 setCloudShareRequest:v10];

  v11 = objc_opt_class();
  v12 = [v4 decodeCollectionOfClass:v11 containingClass:objc_opt_class() forKey:@"customizationGroups"];
  [(SHSheetRemoteSceneSettings *)v5 setCustomizationGroups:v12];

  -[SHSheetRemoteSceneSettings setIsSLMEnabled:](v5, "setIsSLMEnabled:", [v4 decodeBoolForKey:@"isSLMEnabled"]);
  return v5;
}

@end