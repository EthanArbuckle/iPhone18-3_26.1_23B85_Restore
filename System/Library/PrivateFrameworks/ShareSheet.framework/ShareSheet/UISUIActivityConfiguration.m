@interface UISUIActivityConfiguration
+ (id)configurationForActivity:(id)a3 forRemoteUIService:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (CGSize)preferredThumbnailSize;
- (NSExtension)extension;
- (NSString)activityTitle;
- (UISUIActivityConfiguration)initWithActivity:(id)a3 encodingType:(int64_t)a4 forRemoteUIService:(BOOL)a5;
- (UISUIActivityConfiguration)initWithBSXPCCoder:(id)a3;
- (UISUIActivityConfiguration)initWithCoder:(id)a3;
- (id)_init;
- (void)_collectPropertiesFromAttributesOfUnderlyingActivity:(id)a3 forRemoteUIService:(BOOL)a4;
- (void)_decodeBasicPropertiesWithCoder:(id)a3;
- (void)_decodeForEncodingByClassNameWithCoder:(id)a3;
- (void)_decodeForEncodingByPropertiesWithCoder:(id)a3;
- (void)_encodeBasicPropertiesWithCoder:(id)a3;
- (void)_encodeByClassNameWithCoder:(id)a3;
- (void)_encodeByPropertiesWithCoder:(id)a3;
- (void)_validateProperties;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation UISUIActivityConfiguration

- (id)_init
{
  v3.receiver = self;
  v3.super_class = UISUIActivityConfiguration;
  return [(UISUIActivityConfiguration *)&v3 init];
}

- (NSExtension)extension
{
  v3 = [(UISUIActivityConfiguration *)self extensionIdentifier];
  if (v3)
  {
    v4 = [(UISUIActivityConfiguration *)self activity];
    v5 = [v4 applicationExtension];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)activityTitle
{
  overrideTitle = self->_overrideTitle;
  if (!overrideTitle)
  {
    overrideTitle = self->_defaultActivityTitle;
  }

  return overrideTitle;
}

- (CGSize)preferredThumbnailSize
{
  width = self->_preferredThumbnailSize.width;
  height = self->_preferredThumbnailSize.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)configurationForActivity:(id)a3 forRemoteUIService:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = ~[objc_opt_class() _xpcAttributes] & 3;
  v8 = share_sheet_log();
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      [UISUIActivityConfiguration configurationForActivity:v6 forRemoteUIService:v8];
    }

    v10 = 2;
  }

  else
  {
    if (v9)
    {
      [UISUIActivityConfiguration configurationForActivity:v6 forRemoteUIService:v8];
    }

    v10 = 1;
  }

  v11 = [[a1 alloc] initWithActivity:v6 encodingType:v10 forRemoteUIService:v4];

  return v11;
}

- (UISUIActivityConfiguration)initWithActivity:(id)a3 encodingType:(int64_t)a4 forRemoteUIService:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  v16.receiver = self;
  v16.super_class = UISUIActivityConfiguration;
  v9 = [(UISUIActivityConfiguration *)&v16 init];
  if (v9)
  {
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    activityClassName = v9->_activityClassName;
    v9->_activityClassName = v11;

    v9->_encodingType = a4;
    v13 = [v8 activityUUID];
    activityUUID = v9->_activityUUID;
    v9->_activityUUID = v13;

    v9->_appIsDocumentTypeOwner = [v8 _appIsDocumentTypeOwner];
    v9->_isCapabilityBasedActivity = [objc_opt_class() _isCapabilityBasedActivity];
    v9->_isDisabled = [v8 _isDisabled];
    if (a4 == 2)
    {
      [(UISUIActivityConfiguration *)v9 _collectPropertiesFromAttributesOfUnderlyingActivity:v8 forRemoteUIService:v5];
    }
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(UISUIActivityConfiguration *)self activityUUID];
      v7 = [(UISUIActivityConfiguration *)v5 activityUUID];
      v8 = v6;
      v9 = v7;
      v10 = v9;
      if (v8 == v9)
      {
        v11 = 1;
      }

      else if ((v8 != 0) == (v9 == 0))
      {
        v11 = 0;
      }

      else
      {
        v11 = [v8 isEqual:v9];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v6 = a3;
  [(UISUIActivityConfiguration *)self _encodeBasicPropertiesWithCoder:?];
  encodingType = self->_encodingType;
  if (encodingType == 2)
  {
    [(UISUIActivityConfiguration *)self _encodeByPropertiesWithCoder:v6];
  }

  else
  {
    v5 = v6;
    if (encodingType != 1)
    {
      goto LABEL_6;
    }

    [(UISUIActivityConfiguration *)self _encodeByClassNameWithCoder:v6];
  }

  v5 = v6;
LABEL_6:
}

- (UISUIActivityConfiguration)initWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(UISUIActivityConfiguration *)self _init];
  v6 = v5;
  if (v5)
  {
    [(UISUIActivityConfiguration *)v5 _decodeBasicPropertiesWithCoder:v4];
    encodingType = v6->_encodingType;
    if (encodingType == 2)
    {
      [(UISUIActivityConfiguration *)v6 _decodeForEncodingByPropertiesWithCoder:v4];
    }

    else if (encodingType == 1)
    {
      [(UISUIActivityConfiguration *)v6 _decodeForEncodingByClassNameWithCoder:v4];
    }
  }

  return v6;
}

- (UISUIActivityConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(UISUIActivityConfiguration *)self _init];
  v6 = v5;
  if (v5)
  {
    [(UISUIActivityConfiguration *)v5 _decodeBasicPropertiesWithCoder:v4];
    encodingType = v6->_encodingType;
    if (encodingType == 2)
    {
      [(UISUIActivityConfiguration *)v6 _decodeForEncodingByPropertiesWithCoder:v4];
    }

    else if (encodingType == 1)
    {
      [(UISUIActivityConfiguration *)v6 _decodeForEncodingByClassNameWithCoder:v4];
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  [(UISUIActivityConfiguration *)self _encodeBasicPropertiesWithCoder:?];
  encodingType = self->_encodingType;
  if (encodingType == 2)
  {
    [(UISUIActivityConfiguration *)self _encodeByPropertiesWithCoder:v6];
  }

  else
  {
    v5 = v6;
    if (encodingType != 1)
    {
      goto LABEL_6;
    }

    [(UISUIActivityConfiguration *)self _encodeByClassNameWithCoder:v6];
  }

  v5 = v6;
LABEL_6:
}

- (void)_encodeBasicPropertiesWithCoder:(id)a3
{
  v17 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  encodingType = self->_encodingType;
  v6 = NSStringFromSelector(sel_encodingType);
  if (isKindOfClass)
  {
    [v17 encodeInt64:encodingType forKey:v6];
  }

  else
  {
    [v17 encodeInteger:encodingType forKey:v6];
  }

  activityUUID = self->_activityUUID;
  v8 = NSStringFromSelector(sel_activityUUID);
  [v17 encodeObject:activityUUID forKey:v8];

  appIsDocumentTypeOwner = self->_appIsDocumentTypeOwner;
  v10 = NSStringFromSelector(sel_appIsDocumentTypeOwner);
  [v17 encodeBool:appIsDocumentTypeOwner forKey:v10];

  overrideTitle = self->_overrideTitle;
  if (overrideTitle)
  {
    v12 = NSStringFromSelector(sel_overrideTitle);
    [v17 encodeObject:overrideTitle forKey:v12];
  }

  isCapabilityBasedActivity = self->_isCapabilityBasedActivity;
  v14 = NSStringFromSelector(sel_isCapabilityBasedActivity);
  [v17 encodeBool:isCapabilityBasedActivity forKey:v14];

  isDisabled = self->_isDisabled;
  v16 = NSStringFromSelector(sel_isDisabled);
  [v17 encodeBool:isDisabled forKey:v16];
}

- (void)_encodeByClassNameWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(UISUIActivityConfiguration *)self activityClassName];
  v5 = NSStringFromSelector(sel_activityClassName);
  [v4 encodeObject:v6 forKey:v5];
}

- (void)_encodeByPropertiesWithCoder:(id)a3
{
  v50 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  activityCategory = self->_activityCategory;
  v6 = NSStringFromSelector(sel_activityCategory);
  if (isKindOfClass)
  {
    [v50 encodeInt64:activityCategory forKey:v6];

    defaultSortGroup = self->_defaultSortGroup;
    v8 = NSStringFromSelector(sel_defaultSortGroup);
    [v50 encodeInt64:defaultSortGroup forKey:v8];

    indexInApplicationDefinedActivities = self->_indexInApplicationDefinedActivities;
    v10 = NSStringFromSelector(sel_indexInApplicationDefinedActivities);
    [v50 encodeInt64:indexInApplicationDefinedActivities forKey:v10];
  }

  else
  {
    [v50 encodeInteger:activityCategory forKey:v6];

    v11 = self->_defaultSortGroup;
    v12 = NSStringFromSelector(sel_defaultSortGroup);
    [v50 encodeInteger:v11 forKey:v12];

    v13 = self->_indexInApplicationDefinedActivities;
    v10 = NSStringFromSelector(sel_indexInApplicationDefinedActivities);
    [v50 encodeInteger:v13 forKey:v10];
  }

  defaultActivityTitle = self->_defaultActivityTitle;
  v15 = NSStringFromSelector(sel_activityTitle);
  [v50 encodeObject:defaultActivityTitle forKey:v15];

  activityType = self->_activityType;
  v17 = NSStringFromSelector(sel_activityType);
  [v50 encodeObject:activityType forKey:v17];

  fallbackActivityType = self->_fallbackActivityType;
  v19 = NSStringFromSelector(sel_fallbackActivityType);
  [v50 encodeObject:fallbackActivityType forKey:v19];

  positionBeforeActivityType = self->_positionBeforeActivityType;
  v21 = NSStringFromSelector(sel_positionBeforeActivityType);
  [v50 encodeObject:positionBeforeActivityType forKey:v21];

  activitySupportsPromiseURLs = self->_activitySupportsPromiseURLs;
  v23 = NSStringFromSelector(sel_activitySupportsPromiseURLs);
  [v50 encodeBool:activitySupportsPromiseURLs forKey:v23];

  wantsOriginalImageColor = self->_wantsOriginalImageColor;
  v25 = NSStringFromSelector(sel_wantsOriginalImageColor);
  [v50 encodeBool:wantsOriginalImageColor forKey:v25];

  isBuiltinDerived = self->_isBuiltinDerived;
  v27 = NSStringFromSelector(sel_isBuiltinDerived);
  [v50 encodeBool:isBuiltinDerived forKey:v27];

  showsInSystemActionGroup = self->_showsInSystemActionGroup;
  v29 = NSStringFromSelector(sel_showsInSystemActionGroup);
  [v50 encodeBool:showsInSystemActionGroup forKey:v29];

  if (self->_preferredThumbnailSize.width != *MEMORY[0x1E695F060] || self->_preferredThumbnailSize.height != *(MEMORY[0x1E695F060] + 8))
  {
    v30 = [MEMORY[0x1E696B098] valueWithCGSize:?];
    [v50 encodeObject:v30 forKey:@"preferredThumbnailSizeValue"];
  }

  extensionIdentifier = self->_extensionIdentifier;
  if (extensionIdentifier)
  {
    v32 = NSStringFromSelector(sel_extensionIdentifier);
    [v50 encodeObject:extensionIdentifier forKey:v32];
  }

  activityImage = self->_activityImage;
  if (activityImage)
  {
    v34 = NSStringFromSelector(sel_activityImage);
    [v50 encodeObject:activityImage forKey:v34];
  }

  actionImage = self->_actionImage;
  if (actionImage)
  {
    v36 = NSStringFromSelector(sel_actionImage);
    [v50 encodeObject:actionImage forKey:v36];
  }

  activitySettingsImage = self->_activitySettingsImage;
  if (activitySettingsImage)
  {
    v38 = NSStringFromSelector(sel_activitySettingsImage);
    [v50 encodeObject:activitySettingsImage forKey:v38];
  }

  systemImageName = self->_systemImageName;
  if (systemImageName)
  {
    v40 = NSStringFromSelector(sel_systemImageName);
    [v50 encodeObject:systemImageName forKey:v40];
  }

  activityImageUTI = self->_activityImageUTI;
  if (activityImageUTI)
  {
    v42 = NSStringFromSelector(sel_activityImageUTI);
    [v50 encodeObject:activityImageUTI forKey:v42];
  }

  activityFooterText = self->__activityFooterText;
  if (activityFooterText)
  {
    v44 = NSStringFromSelector(sel__activityFooterText);
    [v50 encodeObject:activityFooterText forKey:v44];
  }

  activityStatusImage = self->_activityStatusImage;
  if (activityStatusImage)
  {
    v46 = NSStringFromSelector(sel_activityStatusImage);
    [v50 encodeObject:activityStatusImage forKey:v46];
  }

  activityStatusTintColor = self->_activityStatusTintColor;
  v48 = v50;
  if (activityStatusTintColor)
  {
    v49 = NSStringFromSelector(sel_activityStatusTintColor);
    [v50 encodeObject:activityStatusTintColor forKey:v49];

    v48 = v50;
  }
}

- (void)_decodeBasicPropertiesWithCoder:(id)a3
{
  v18 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = NSStringFromSelector(sel_encodingType);
  if (isKindOfClass)
  {
    v6 = [v18 decodeInt64ForKey:v5];
  }

  else
  {
    v6 = [v18 decodeIntegerForKey:v5];
  }

  self->_encodingType = v6;

  v7 = objc_opt_class();
  v8 = NSStringFromSelector(sel_activityUUID);
  v9 = [v18 decodeObjectOfClass:v7 forKey:v8];
  activityUUID = self->_activityUUID;
  self->_activityUUID = v9;

  v11 = NSStringFromSelector(sel_appIsDocumentTypeOwner);
  self->_appIsDocumentTypeOwner = [v18 decodeBoolForKey:v11];

  v12 = objc_opt_class();
  v13 = NSStringFromSelector(sel_overrideTitle);
  v14 = [v18 decodeObjectOfClass:v12 forKey:v13];
  overrideTitle = self->_overrideTitle;
  self->_overrideTitle = v14;

  v16 = NSStringFromSelector(sel_isCapabilityBasedActivity);
  self->_isCapabilityBasedActivity = [v18 decodeBoolForKey:v16];

  v17 = NSStringFromSelector(sel_isDisabled);
  self->_isDisabled = [v18 decodeBoolForKey:v17];
}

- (void)_decodeForEncodingByClassNameWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = NSStringFromSelector(sel_activityClassName);
  v7 = [v4 decodeObjectOfClass:v5 forKey:v6];

  activityClassName = self->_activityClassName;
  self->_activityClassName = v7;

  NSClassFromString(self->_activityClassName);
  v9 = objc_opt_new();
  activity = self->_activity;
  self->_activity = v9;
}

- (void)_decodeForEncodingByPropertiesWithCoder:(id)a3
{
  v4 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v6 = NSStringFromSelector(sel_activityCategory);
  if (isKindOfClass)
  {
    self->_activityCategory = [v4 decodeInt64ForKey:v6];

    v7 = NSStringFromSelector(sel_defaultSortGroup);
    self->_defaultSortGroup = [v4 decodeInt64ForKey:v7];

    v8 = NSStringFromSelector(sel_indexInApplicationDefinedActivities);
    v9 = [v4 decodeInt64ForKey:v8];
  }

  else
  {
    self->_activityCategory = [v4 decodeIntegerForKey:v6];

    v10 = NSStringFromSelector(sel_defaultSortGroup);
    self->_defaultSortGroup = [v4 decodeIntegerForKey:v10];

    v8 = NSStringFromSelector(sel_indexInApplicationDefinedActivities);
    v9 = [v4 decodeIntegerForKey:v8];
  }

  self->_indexInApplicationDefinedActivities = v9;

  v11 = objc_opt_class();
  v12 = NSStringFromSelector(sel_activityTitle);
  v13 = [v4 decodeObjectOfClass:v11 forKey:v12];
  defaultActivityTitle = self->_defaultActivityTitle;
  self->_defaultActivityTitle = v13;

  v15 = objc_opt_class();
  v16 = NSStringFromSelector(sel_activityType);
  v17 = [v4 decodeObjectOfClass:v15 forKey:v16];
  activityType = self->_activityType;
  self->_activityType = v17;

  v19 = objc_opt_class();
  v20 = NSStringFromSelector(sel_fallbackActivityType);
  v21 = [v4 decodeObjectOfClass:v19 forKey:v20];
  fallbackActivityType = self->_fallbackActivityType;
  self->_fallbackActivityType = v21;

  v23 = objc_opt_class();
  v24 = NSStringFromSelector(sel_positionBeforeActivityType);
  v25 = [v4 decodeObjectOfClass:v23 forKey:v24];
  positionBeforeActivityType = self->_positionBeforeActivityType;
  self->_positionBeforeActivityType = v25;

  v27 = NSStringFromSelector(sel_activitySupportsPromiseURLs);
  self->_activitySupportsPromiseURLs = [v4 decodeBoolForKey:v27];

  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredThumbnailSizeValue"];
  v29 = v28;
  if (v28)
  {
    [v28 CGSizeValue];
    self->_preferredThumbnailSize.width = v30;
    self->_preferredThumbnailSize.height = v31;
  }

  v32 = NSStringFromSelector(sel_wantsOriginalImageColor);
  self->_wantsOriginalImageColor = [v4 decodeBoolForKey:v32];

  v33 = NSStringFromSelector(sel_isBuiltinDerived);
  self->_isBuiltinDerived = [v4 decodeBoolForKey:v33];

  v34 = NSStringFromSelector(sel_showsInSystemActionGroup);
  self->_showsInSystemActionGroup = [v4 decodeBoolForKey:v34];

  v35 = objc_opt_class();
  v36 = NSStringFromSelector(sel_activityImage);
  v37 = [v4 decodeObjectOfClass:v35 forKey:v36];
  activityImage = self->_activityImage;
  self->_activityImage = v37;

  v39 = objc_opt_class();
  v40 = NSStringFromSelector(sel_actionImage);
  v41 = [v4 decodeObjectOfClass:v39 forKey:v40];
  actionImage = self->_actionImage;
  self->_actionImage = v41;

  v43 = objc_opt_class();
  v44 = NSStringFromSelector(sel_activitySettingsImage);
  v45 = [v4 decodeObjectOfClass:v43 forKey:v44];
  activitySettingsImage = self->_activitySettingsImage;
  self->_activitySettingsImage = v45;

  v47 = objc_opt_class();
  v48 = NSStringFromSelector(sel_systemImageName);
  v49 = [v4 decodeObjectOfClass:v47 forKey:v48];
  systemImageName = self->_systemImageName;
  self->_systemImageName = v49;

  v51 = objc_opt_class();
  v52 = NSStringFromSelector(sel_activityImageUTI);
  v53 = [v4 decodeObjectOfClass:v51 forKey:v52];
  activityImageUTI = self->_activityImageUTI;
  self->_activityImageUTI = v53;

  v55 = objc_opt_class();
  v56 = NSStringFromSelector(sel__activityFooterText);
  v57 = [v4 decodeObjectOfClass:v55 forKey:v56];
  activityFooterText = self->__activityFooterText;
  self->__activityFooterText = v57;

  v59 = objc_opt_class();
  v60 = NSStringFromSelector(sel_activityStatusImage);
  v61 = [v4 decodeObjectOfClass:v59 forKey:v60];
  activityStatusImage = self->_activityStatusImage;
  self->_activityStatusImage = v61;

  v63 = objc_opt_class();
  v64 = NSStringFromSelector(sel_activityStatusTintColor);
  v65 = [v4 decodeObjectOfClass:v63 forKey:v64];
  activityStatusTintColor = self->_activityStatusTintColor;
  self->_activityStatusTintColor = v65;

  v67 = objc_opt_class();
  v68 = NSStringFromSelector(sel_extensionIdentifier);
  v69 = [v4 decodeObjectOfClass:v67 forKey:v68];
  extensionIdentifier = self->_extensionIdentifier;
  self->_extensionIdentifier = v69;

  v71 = self->_extensionIdentifier;
  if (v71)
  {
    v77 = 0;
    v72 = [MEMORY[0x1E696ABD0] extensionWithIdentifier:v71 error:&v77];
    v73 = v77;
    if (v72)
    {
      v74 = [[UIApplicationExtensionActivity alloc] initWithApplicationExtension:v72];
      v75 = [MEMORY[0x1E696AD98] numberWithInteger:self->_activityCategory];
      [(UIApplicationExtensionActivity *)v74 setOverrideActivityCategory:v75];

      p_super = &self->_activity->super;
      self->_activity = &v74->super;
    }

    else
    {
      p_super = share_sheet_log();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        [(UISUIActivityConfiguration *)&self->_extensionIdentifier _decodeForEncodingByPropertiesWithCoder:v73, p_super];
      }
    }
  }
}

- (void)_collectPropertiesFromAttributesOfUnderlyingActivity:(id)a3 forRemoteUIService:(BOOL)a4
{
  v4 = a4;
  v37 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  self->_activityCategory = [objc_opt_class() activityCategory];
  if (isKindOfClass)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v37 activityTitle];
  }

  defaultActivityTitle = self->_defaultActivityTitle;
  self->_defaultActivityTitle = v7;

  v9 = [v37 activityType];
  activityType = self->_activityType;
  self->_activityType = v9;

  v11 = [objc_opt_class() _defaultFallbackActivityType];
  fallbackActivityType = self->_fallbackActivityType;
  self->_fallbackActivityType = v11;

  v13 = [v37 _beforeActivity];
  positionBeforeActivityType = self->_positionBeforeActivityType;
  self->_positionBeforeActivityType = v13;

  self->_activitySupportsPromiseURLs = [v37 _activitySupportsPromiseURLs];
  [v37 _thumbnailSize];
  self->_preferredThumbnailSize.width = v15;
  self->_preferredThumbnailSize.height = v16;
  self->_defaultSortGroup = [v37 _defaultSortGroup];
  self->_indexInApplicationDefinedActivities = [v37 indexInApplicationDefinedActivities];
  v17 = [v37 _activityFooterText];
  activityFooterText = self->__activityFooterText;
  self->__activityFooterText = v17;

  if (v4 && _os_feature_enabled_impl())
  {
    self->_wantsOriginalImageColor = [v37 _wantsOriginalImageColor];
    self->_isBuiltinDerived = [v37 _isBuiltinDerived];
    self->_showsInSystemActionGroup = [v37 _showsInSystemActionGroup];
    v19 = [v37 _activityStatusTintColor];
    activityStatusTintColor = self->_activityStatusTintColor;
    self->_activityStatusTintColor = v19;

    if (isKindOfClass)
    {
      v21 = [v37 applicationExtension];
      v22 = [v21 identifier];
      extensionIdentifier = self->_extensionIdentifier;
      self->_extensionIdentifier = v22;

      v24 = [v37 _activityImageUTI];
      v25 = 120;
    }

    else
    {
      v26 = [v37 _activityImage];
      activityImage = self->_activityImage;
      self->_activityImage = v26;

      v28 = [v37 _actionImage];
      actionImage = self->_actionImage;
      self->_actionImage = v28;

      v30 = [v37 _activitySettingsImage];
      activitySettingsImage = self->_activitySettingsImage;
      self->_activitySettingsImage = v30;

      v32 = [v37 _systemImageName];
      systemImageName = self->_systemImageName;
      self->_systemImageName = v32;

      v34 = [v37 _activityImageUTI];
      activityImageUTI = self->_activityImageUTI;
      self->_activityImageUTI = v34;

      v24 = [v37 _activityStatusImage];
      v25 = 96;
    }

    v36 = *(&self->super.isa + v25);
    *(&self->super.isa + v25) = v24;
  }

  [(UISUIActivityConfiguration *)self _validateProperties];
}

- (void)_validateProperties
{
  if (![(NSString *)self->_defaultActivityTitle length])
  {
    defaultActivityTitle = self->_defaultActivityTitle;
    self->_defaultActivityTitle = @" ";
  }
}

+ (void)configurationForActivity:(uint64_t)a1 forRemoteUIService:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_18B359000, a2, OS_LOG_TYPE_DEBUG, "configurationForActivity:%@ encodingType:UISUIActivityConfigurationEncodingByProperties", &v2, 0xCu);
}

+ (void)configurationForActivity:(uint64_t)a1 forRemoteUIService:(NSObject *)a2 .cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_18B359000, a2, OS_LOG_TYPE_DEBUG, "configurationForActivity:%@ encodingType:UISUIActivityConfigurationEncodingByClassName", &v2, 0xCu);
}

- (void)_decodeForEncodingByPropertiesWithCoder:(os_log_t)log .cold.1(uint64_t *a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = 138412546;
  v5 = v3;
  v6 = 2112;
  v7 = a2;
  _os_log_error_impl(&dword_18B359000, log, OS_LOG_TYPE_ERROR, "failure retrieving extension for identifier:%@ error:%@", &v4, 0x16u);
}

@end