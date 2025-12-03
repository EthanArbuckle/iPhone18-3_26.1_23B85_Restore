@interface PRPosterConfiguredProperties
+ (id)configuredPropertiesSanitizedForPassingToExtension:(id)extension;
+ (id)defaultConfiguredPropertiesForRole:(id)role renderingConfiguration:(id)configuration;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToConfiguredProperties:(id)properties comparingPropertiesAffectingSnapshotsOnly:(BOOL)only;
- (NSString)description;
- (PRPosterConfiguredProperties)initWithAmbientConfiguration:(id)configuration widgetLayout:(id)layout otherMetadata:(id)metadata userInfo:(id)info;
- (PRPosterConfiguredProperties)initWithBSXPCCoder:(id)coder;
- (PRPosterConfiguredProperties)initWithCoder:(id)coder;
- (PRPosterConfiguredProperties)initWithTitleStyleConfiguration:(id)configuration focusConfiguration:(id)focusConfiguration complicationLayout:(id)layout renderingConfiguration:(id)renderingConfiguration homeScreenConfiguration:(id)screenConfiguration colorVariationsConfiguration:(id)variationsConfiguration quickActionsConfiguration:(id)actionsConfiguration ambientConfiguration:(id)self0 ambientWidgetLayout:(id)self1 suggestionMetadata:(id)self2 otherMetadata:(id)self3 userInfo:(id)self4;
- (PRPosterConfiguredProperties)initWithTitleStyleConfiguration:(id)configuration focusConfiguration:(id)focusConfiguration complicationLayout:(id)layout renderingConfiguration:(id)renderingConfiguration homeScreenConfiguration:(id)screenConfiguration colorVariationsConfiguration:(id)variationsConfiguration quickActionsConfiguration:(id)actionsConfiguration suggestionMetadata:(id)self0 otherMetadata:(id)self1 userInfo:(id)self2;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)encodeWithBSXPCCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PRPosterConfiguredProperties

+ (id)configuredPropertiesSanitizedForPassingToExtension:(id)extension
{
  extensionCopy = extension;
  v4 = [PRPosterConfiguredProperties alloc];
  titleStyleConfiguration = [extensionCopy titleStyleConfiguration];
  renderingConfiguration = [extensionCopy renderingConfiguration];
  colorVariationsConfiguration = [extensionCopy colorVariationsConfiguration];
  userInfo = [extensionCopy userInfo];

  v9 = [(PRPosterConfiguredProperties *)v4 initWithTitleStyleConfiguration:titleStyleConfiguration focusConfiguration:0 complicationLayout:0 renderingConfiguration:renderingConfiguration homeScreenConfiguration:0 colorVariationsConfiguration:colorVariationsConfiguration quickActionsConfiguration:0 ambientConfiguration:0 ambientWidgetLayout:0 suggestionMetadata:0 otherMetadata:0 userInfo:userInfo];

  return v9;
}

+ (id)defaultConfiguredPropertiesForRole:(id)role renderingConfiguration:(id)configuration
{
  roleCopy = role;
  configurationCopy = configuration;
  if ([roleCopy isEqual:@"PRPosterRoleLockScreen"])
  {
    v7 = +[PRPosterTimeFontConfiguration defaultConfiguration];
    v8 = [PRPosterTitleStyleConfiguration alloc];
    v9 = +[PRPosterTitleStyleConfiguration defaultTitleColor];
    +[PRPosterTitleStyleConfiguration defaultContentsLuminance];
    LOBYTE(v15) = 1;
    v10 = [(PRPosterTitleStyleConfiguration *)v8 initWithTimeFontConfiguration:v7 preferredTitleAlignment:0 preferredTitleLayout:0 titleColor:v9 timeNumberingSystem:0 userConfigured:0 contentsLuminance:v15 alternateDateEnabled:0 groupName:?];

    v11 = [[PRPosterConfiguredProperties alloc] initWithTitleStyleConfiguration:v10 focusConfiguration:0 complicationLayout:0 renderingConfiguration:configurationCopy homeScreenConfiguration:0 colorVariationsConfiguration:0 quickActionsConfiguration:0 suggestionMetadata:0 otherMetadata:0 userInfo:0];
  }

  else if ([roleCopy isEqual:@"PRPosterRoleAmbient"])
  {
    v12 = [PRPosterConfiguredProperties alloc];
    v13 = [[PRPosterAmbientConfiguration alloc] initWithSupportedDataLayout:0];
    v11 = [(PRPosterConfiguredProperties *)v12 initWithAmbientConfiguration:v13 widgetLayout:0 otherMetadata:0 userInfo:0];
  }

  else
  {
    v11 = objc_opt_new();
  }

  return v11;
}

- (PRPosterConfiguredProperties)initWithTitleStyleConfiguration:(id)configuration focusConfiguration:(id)focusConfiguration complicationLayout:(id)layout renderingConfiguration:(id)renderingConfiguration homeScreenConfiguration:(id)screenConfiguration colorVariationsConfiguration:(id)variationsConfiguration quickActionsConfiguration:(id)actionsConfiguration ambientConfiguration:(id)self0 ambientWidgetLayout:(id)self1 suggestionMetadata:(id)self2 otherMetadata:(id)self3 userInfo:(id)self4
{
  configurationCopy = configuration;
  focusConfigurationCopy = focusConfiguration;
  layoutCopy = layout;
  renderingConfigurationCopy = renderingConfiguration;
  screenConfigurationCopy = screenConfiguration;
  variationsConfigurationCopy = variationsConfiguration;
  v22 = focusConfigurationCopy;
  actionsConfigurationCopy = actionsConfiguration;
  ambientConfigurationCopy = ambientConfiguration;
  widgetLayoutCopy = widgetLayout;
  v25 = layoutCopy;
  metadataCopy = metadata;
  otherMetadataCopy = otherMetadata;
  infoCopy = info;
  v48.receiver = self;
  v48.super_class = PRPosterConfiguredProperties;
  v29 = [(PRPosterConfiguredProperties *)&v48 init];
  if (v29)
  {
    v30 = [configurationCopy copy];
    [(PRPosterConfiguredProperties *)v29 setTitleStyleConfiguration:v30];

    v31 = [v22 copy];
    [(PRPosterConfiguredProperties *)v29 setFocusConfiguration:v31];

    v32 = [v25 copy];
    [(PRPosterConfiguredProperties *)v29 setComplicationLayout:v32];

    v33 = [renderingConfigurationCopy copy];
    [(PRPosterConfiguredProperties *)v29 setRenderingConfiguration:v33];

    v34 = [screenConfigurationCopy copy];
    [(PRPosterConfiguredProperties *)v29 setHomeScreenConfiguration:v34];

    v35 = [variationsConfigurationCopy copy];
    [(PRPosterConfiguredProperties *)v29 setColorVariationsConfiguration:v35];

    v36 = [actionsConfigurationCopy copy];
    [(PRPosterConfiguredProperties *)v29 setQuickActionsConfiguration:v36];

    v37 = [ambientConfigurationCopy copy];
    [(PRPosterConfiguredProperties *)v29 setAmbientConfiguration:v37];

    v38 = [widgetLayoutCopy copy];
    [(PRPosterConfiguredProperties *)v29 setAmbientWidgetLayout:v38];

    v39 = [metadataCopy copy];
    [(PRPosterConfiguredProperties *)v29 setSuggestionMetadata:v39];

    v40 = [otherMetadataCopy copy];
    [(PRPosterConfiguredProperties *)v29 setOtherMetadata:v40];

    v41 = [infoCopy copy];
    [(PRPosterConfiguredProperties *)v29 setUserInfo:v41];
  }

  return v29;
}

- (PRPosterConfiguredProperties)initWithTitleStyleConfiguration:(id)configuration focusConfiguration:(id)focusConfiguration complicationLayout:(id)layout renderingConfiguration:(id)renderingConfiguration homeScreenConfiguration:(id)screenConfiguration colorVariationsConfiguration:(id)variationsConfiguration quickActionsConfiguration:(id)actionsConfiguration suggestionMetadata:(id)self0 otherMetadata:(id)self1 userInfo:(id)self2
{
  configurationCopy = configuration;
  focusConfigurationCopy = focusConfiguration;
  layoutCopy = layout;
  renderingConfigurationCopy = renderingConfiguration;
  screenConfigurationCopy = screenConfiguration;
  variationsConfigurationCopy = variationsConfiguration;
  actionsConfigurationCopy = actionsConfiguration;
  metadataCopy = metadata;
  otherMetadataCopy = otherMetadata;
  infoCopy = info;
  v42.receiver = self;
  v42.super_class = PRPosterConfiguredProperties;
  v25 = [(PRPosterConfiguredProperties *)&v42 init];
  if (v25)
  {
    v26 = renderingConfigurationCopy;
    v27 = focusConfigurationCopy;
    v28 = [configurationCopy copy];
    [(PRPosterConfiguredProperties *)v25 setTitleStyleConfiguration:v28];

    v29 = [v27 copy];
    [(PRPosterConfiguredProperties *)v25 setFocusConfiguration:v29];

    v30 = [layoutCopy copy];
    [(PRPosterConfiguredProperties *)v25 setComplicationLayout:v30];

    v31 = [v26 copy];
    [(PRPosterConfiguredProperties *)v25 setRenderingConfiguration:v31];

    v32 = [screenConfigurationCopy copy];
    [(PRPosterConfiguredProperties *)v25 setHomeScreenConfiguration:v32];

    v33 = [variationsConfigurationCopy copy];
    [(PRPosterConfiguredProperties *)v25 setColorVariationsConfiguration:v33];

    v34 = [actionsConfigurationCopy copy];
    [(PRPosterConfiguredProperties *)v25 setQuickActionsConfiguration:v34];

    v35 = [metadataCopy copy];
    [(PRPosterConfiguredProperties *)v25 setSuggestionMetadata:v35];

    v36 = [otherMetadataCopy copy];
    [(PRPosterConfiguredProperties *)v25 setOtherMetadata:v36];

    v37 = [infoCopy copy];
    [(PRPosterConfiguredProperties *)v25 setUserInfo:v37];

    focusConfigurationCopy = v27;
    renderingConfigurationCopy = v26;
  }

  return v25;
}

- (PRPosterConfiguredProperties)initWithAmbientConfiguration:(id)configuration widgetLayout:(id)layout otherMetadata:(id)metadata userInfo:(id)info
{
  configurationCopy = configuration;
  layoutCopy = layout;
  metadataCopy = metadata;
  infoCopy = info;
  v17.receiver = self;
  v17.super_class = PRPosterConfiguredProperties;
  v14 = [(PRPosterConfiguredProperties *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(PRPosterConfiguredProperties *)v14 setAmbientConfiguration:configurationCopy];
    [(PRPosterConfiguredProperties *)v15 setAmbientWidgetLayout:layoutCopy];
    [(PRPosterConfiguredProperties *)v15 setOtherMetadata:metadataCopy];
    [(PRPosterConfiguredProperties *)v15 setUserInfo:infoCopy];
  }

  return v15;
}

- (PRPosterConfiguredProperties)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_self();
  v30 = [coderCopy decodeObjectOfClass:v4 forKey:*MEMORY[0x1E69C5468]];

  v5 = objc_opt_self();
  v25 = [coderCopy decodeObjectOfClass:v5 forKey:@"focusConfiguration"];

  v6 = objc_opt_self();
  v29 = [coderCopy decodeObjectOfClass:v6 forKey:@"complicationLayout"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:*MEMORY[0x1E69C5460]];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"homeScreenConfiguration"];

  v11 = objc_opt_self();
  v26 = [coderCopy decodeObjectOfClass:v11 forKey:@"colorVariationsConfiguration"];

  v12 = objc_opt_self();
  v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"quickActionsConfiguration"];

  v14 = objc_opt_self();
  v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"ambientConfiguration"];

  v16 = objc_opt_self();
  v24 = [coderCopy decodeObjectOfClass:v16 forKey:@"suggestionMetadata"];

  v17 = objc_opt_self();
  v18 = [coderCopy decodeObjectOfClass:v17 forKey:@"otherMetadata"];

  v19 = objc_opt_self();
  v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"ambientWidgetLayout"];

  v21 = objc_opt_self();
  v22 = [coderCopy decodeObjectOfClass:v21 forKey:@"userInfo"];

  v28 = [(PRPosterConfiguredProperties *)self initWithTitleStyleConfiguration:v30 focusConfiguration:v25 complicationLayout:v29 renderingConfiguration:v8 homeScreenConfiguration:v10 colorVariationsConfiguration:v26 quickActionsConfiguration:v13 ambientConfiguration:v15 ambientWidgetLayout:v20 suggestionMetadata:v24 otherMetadata:v18 userInfo:v22];
  return v28;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  titleStyleConfiguration = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  [coderCopy encodeObject:titleStyleConfiguration forKey:*MEMORY[0x1E69C5468]];

  focusConfiguration = [(PRPosterConfiguredProperties *)self focusConfiguration];
  [coderCopy encodeObject:focusConfiguration forKey:@"focusConfiguration"];

  complicationLayout = [(PRPosterConfiguredProperties *)self complicationLayout];
  [coderCopy encodeObject:complicationLayout forKey:@"complicationLayout"];

  renderingConfiguration = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  [coderCopy encodeObject:renderingConfiguration forKey:*MEMORY[0x1E69C5460]];

  homeScreenConfiguration = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  [coderCopy encodeObject:homeScreenConfiguration forKey:@"homeScreenConfiguration"];

  colorVariationsConfiguration = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  [coderCopy encodeObject:colorVariationsConfiguration forKey:@"colorVariationsConfiguration"];

  quickActionsConfiguration = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  [coderCopy encodeObject:quickActionsConfiguration forKey:@"quickActionsConfiguration"];

  ambientConfiguration = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  [coderCopy encodeObject:ambientConfiguration forKey:@"ambientConfiguration"];

  ambientWidgetLayout = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  [coderCopy encodeObject:ambientWidgetLayout forKey:@"ambientWidgetLayout"];

  suggestionMetadata = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  [coderCopy encodeObject:suggestionMetadata forKey:@"suggestionMetadata"];

  otherMetadata = [(PRPosterConfiguredProperties *)self otherMetadata];
  [coderCopy encodeObject:otherMetadata forKey:@"otherMetadata"];

  userInfo = [(PRPosterConfiguredProperties *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v17 = [PRPosterConfiguredProperties alloc];
  titleStyleConfiguration = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  focusConfiguration = [(PRPosterConfiguredProperties *)self focusConfiguration];
  complicationLayout = [(PRPosterConfiguredProperties *)self complicationLayout];
  renderingConfiguration = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  homeScreenConfiguration = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  colorVariationsConfiguration = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  quickActionsConfiguration = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  ambientConfiguration = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  ambientWidgetLayout = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  suggestionMetadata = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  otherMetadata = [(PRPosterConfiguredProperties *)self otherMetadata];
  userInfo = [(PRPosterConfiguredProperties *)self userInfo];
  v18 = [(PRPosterConfiguredProperties *)v17 initWithTitleStyleConfiguration:titleStyleConfiguration focusConfiguration:focusConfiguration complicationLayout:complicationLayout renderingConfiguration:renderingConfiguration homeScreenConfiguration:homeScreenConfiguration colorVariationsConfiguration:colorVariationsConfiguration quickActionsConfiguration:quickActionsConfiguration ambientConfiguration:ambientConfiguration ambientWidgetLayout:ambientWidgetLayout suggestionMetadata:suggestionMetadata otherMetadata:otherMetadata userInfo:userInfo];

  return v18;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v17 = [PRPosterMutableConfiguredProperties alloc];
  titleStyleConfiguration = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  focusConfiguration = [(PRPosterConfiguredProperties *)self focusConfiguration];
  complicationLayout = [(PRPosterConfiguredProperties *)self complicationLayout];
  renderingConfiguration = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  homeScreenConfiguration = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  colorVariationsConfiguration = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  quickActionsConfiguration = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  ambientConfiguration = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  ambientWidgetLayout = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  suggestionMetadata = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  otherMetadata = [(PRPosterConfiguredProperties *)self otherMetadata];
  userInfo = [(PRPosterConfiguredProperties *)self userInfo];
  v18 = [(PRPosterConfiguredProperties *)v17 initWithTitleStyleConfiguration:titleStyleConfiguration focusConfiguration:focusConfiguration complicationLayout:complicationLayout renderingConfiguration:renderingConfiguration homeScreenConfiguration:homeScreenConfiguration colorVariationsConfiguration:colorVariationsConfiguration quickActionsConfiguration:quickActionsConfiguration ambientConfiguration:ambientConfiguration ambientWidgetLayout:ambientWidgetLayout suggestionMetadata:suggestionMetadata otherMetadata:otherMetadata userInfo:userInfo];

  return v18;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterConfiguredProperties *)self isEqualToConfiguredProperties:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToConfiguredProperties:(id)properties comparingPropertiesAffectingSnapshotsOnly:(BOOL)only
{
  propertiesCopy = properties;
  v7 = propertiesCopy;
  if (propertiesCopy == self)
  {
    v18 = 1;
  }

  else
  {
    if (propertiesCopy)
    {
      titleStyleConfiguration = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
      titleStyleConfiguration2 = [(PRPosterConfiguredProperties *)v7 titleStyleConfiguration];
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_39:

        goto LABEL_40;
      }

      renderingConfiguration = [(PRPosterConfiguredProperties *)self renderingConfiguration];
      renderingConfiguration2 = [(PRPosterConfiguredProperties *)v7 renderingConfiguration];
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_38:

        goto LABEL_39;
      }

      colorVariationsConfiguration = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
      colorVariationsConfiguration2 = [(PRPosterConfiguredProperties *)v7 colorVariationsConfiguration];
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_37:

        goto LABEL_38;
      }

      complicationLayout = [(PRPosterConfiguredProperties *)self complicationLayout];
      complicationLayout2 = [(PRPosterConfiguredProperties *)v7 complicationLayout];
      v45 = complicationLayout;
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_36:

        goto LABEL_37;
      }

      homeScreenConfiguration = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
      homeScreenConfiguration2 = [(PRPosterConfiguredProperties *)v7 homeScreenConfiguration];
      v43 = homeScreenConfiguration;
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_35:

        goto LABEL_36;
      }

      quickActionsConfiguration = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
      quickActionsConfiguration2 = [(PRPosterConfiguredProperties *)v7 quickActionsConfiguration];
      v41 = quickActionsConfiguration;
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_34:

        goto LABEL_35;
      }

      userInfo = [(PRPosterConfiguredProperties *)self userInfo];
      userInfo2 = [(PRPosterConfiguredProperties *)v7 userInfo];
      v39 = userInfo;
      if (!BSEqualObjects())
      {
        goto LABEL_32;
      }

      if (only)
      {
LABEL_11:
        v18 = 1;
LABEL_33:

        goto LABEL_34;
      }

      focusConfiguration = [(PRPosterConfiguredProperties *)self focusConfiguration];
      focusConfiguration2 = [(PRPosterConfiguredProperties *)v7 focusConfiguration];
      if (BSEqualObjects())
      {
        v36 = focusConfiguration2;
        v37 = focusConfiguration;
        suggestionMetadata = [(PRPosterConfiguredProperties *)self suggestionMetadata];
        suggestionMetadata2 = [(PRPosterConfiguredProperties *)v7 suggestionMetadata];
        if (BSEqualObjects())
        {
          v34 = suggestionMetadata;
          v35 = suggestionMetadata2;
          otherMetadata = [(PRPosterConfiguredProperties *)self otherMetadata];
          otherMetadata2 = [(PRPosterConfiguredProperties *)v7 otherMetadata];
          if (BSEqualObjects())
          {
            v32 = otherMetadata2;
            v33 = otherMetadata;
            ambientConfiguration = [(PRPosterConfiguredProperties *)self ambientConfiguration];
            [(PRPosterConfiguredProperties *)v7 ambientConfiguration];
            v26 = v31 = ambientConfiguration;
            if (BSEqualObjects())
            {
              ambientWidgetLayout = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
              ambientWidgetLayout2 = [(PRPosterConfiguredProperties *)v7 ambientWidgetLayout];
              v30 = BSEqualObjects();

              if (v30)
              {
                goto LABEL_11;
              }

LABEL_32:
              v18 = 0;
              goto LABEL_33;
            }
          }

          else
          {
          }
        }

        else
        {
        }

        goto LABEL_32;
      }

      goto LABEL_32;
    }

    v18 = 0;
  }

LABEL_40:

  return v18;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x1E698E6B8] builder];
  titleStyleConfiguration = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  v5 = [builder appendObject:titleStyleConfiguration];

  focusConfiguration = [(PRPosterConfiguredProperties *)self focusConfiguration];
  v7 = [builder appendObject:focusConfiguration];

  complicationLayout = [(PRPosterConfiguredProperties *)self complicationLayout];
  v9 = [builder appendObject:complicationLayout];

  renderingConfiguration = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  v11 = [builder appendObject:renderingConfiguration];

  homeScreenConfiguration = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  v13 = [builder appendObject:homeScreenConfiguration];

  colorVariationsConfiguration = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  v15 = [builder appendObject:colorVariationsConfiguration];

  quickActionsConfiguration = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  v17 = [builder appendObject:quickActionsConfiguration];

  ambientConfiguration = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  v19 = [builder appendObject:ambientConfiguration];

  ambientWidgetLayout = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  v21 = [builder appendObject:ambientWidgetLayout];

  suggestionMetadata = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  v23 = [builder appendObject:suggestionMetadata];

  otherMetadata = [(PRPosterConfiguredProperties *)self otherMetadata];
  v25 = [builder appendObject:otherMetadata];

  userInfo = [(PRPosterConfiguredProperties *)self userInfo];
  v27 = [builder appendObject:userInfo];

  v28 = [builder hash];
  return v28;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __43__PRPosterConfiguredProperties_description__block_invoke;
  v10 = &unk_1E7843070;
  selfCopy = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (PRPosterConfiguredProperties)initWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_opt_self();
  v30 = [coderCopy decodeObjectOfClass:v4 forKey:*MEMORY[0x1E69C5468]];

  v5 = objc_opt_self();
  v25 = [coderCopy decodeObjectOfClass:v5 forKey:@"focusConfiguration"];

  v6 = objc_opt_self();
  v29 = [coderCopy decodeObjectOfClass:v6 forKey:@"complicationLayout"];

  v7 = objc_opt_self();
  v8 = [coderCopy decodeObjectOfClass:v7 forKey:*MEMORY[0x1E69C5460]];

  v9 = objc_opt_self();
  v10 = [coderCopy decodeObjectOfClass:v9 forKey:@"homeScreenConfiguration"];

  v11 = objc_opt_self();
  v26 = [coderCopy decodeObjectOfClass:v11 forKey:@"colorVariationsConfiguration"];

  v12 = objc_opt_self();
  v13 = [coderCopy decodeObjectOfClass:v12 forKey:@"quickActionsConfiguration"];

  v14 = objc_opt_self();
  v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"ambientConfiguration"];

  v16 = objc_opt_self();
  v24 = [coderCopy decodeObjectOfClass:v16 forKey:@"suggestionMetadata"];

  v17 = objc_opt_self();
  v18 = [coderCopy decodeObjectOfClass:v17 forKey:@"otherMetadata"];

  v19 = objc_opt_self();
  v20 = [coderCopy decodeObjectOfClass:v19 forKey:@"ambientWidgetLayout"];

  v21 = objc_opt_self();
  v22 = [coderCopy decodeObjectOfClass:v21 forKey:@"userInfo"];

  v28 = [(PRPosterConfiguredProperties *)self initWithTitleStyleConfiguration:v30 focusConfiguration:v25 complicationLayout:v29 renderingConfiguration:v8 homeScreenConfiguration:v10 colorVariationsConfiguration:v26 quickActionsConfiguration:v13 ambientConfiguration:v15 ambientWidgetLayout:v20 suggestionMetadata:v24 otherMetadata:v18 userInfo:v22];
  return v28;
}

- (void)encodeWithBSXPCCoder:(id)coder
{
  coderCopy = coder;
  titleStyleConfiguration = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  [coderCopy encodeObject:titleStyleConfiguration forKey:*MEMORY[0x1E69C5468]];

  focusConfiguration = [(PRPosterConfiguredProperties *)self focusConfiguration];
  [coderCopy encodeObject:focusConfiguration forKey:@"focusConfiguration"];

  complicationLayout = [(PRPosterConfiguredProperties *)self complicationLayout];
  [coderCopy encodeObject:complicationLayout forKey:@"complicationLayout"];

  renderingConfiguration = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  [coderCopy encodeObject:renderingConfiguration forKey:*MEMORY[0x1E69C5460]];

  homeScreenConfiguration = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  [coderCopy encodeObject:homeScreenConfiguration forKey:@"homeScreenConfiguration"];

  colorVariationsConfiguration = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  [coderCopy encodeObject:colorVariationsConfiguration forKey:@"colorVariationsConfiguration"];

  quickActionsConfiguration = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  [coderCopy encodeObject:quickActionsConfiguration forKey:@"quickActionsConfiguration"];

  ambientConfiguration = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  [coderCopy encodeObject:ambientConfiguration forKey:@"ambientConfiguration"];

  ambientWidgetLayout = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  [coderCopy encodeObject:ambientWidgetLayout forKey:@"ambientWidgetLayout"];

  suggestionMetadata = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  [coderCopy encodeObject:suggestionMetadata forKey:@"suggestionMetadata"];

  otherMetadata = [(PRPosterConfiguredProperties *)self otherMetadata];
  [coderCopy encodeObject:otherMetadata forKey:@"otherMetadata"];

  userInfo = [(PRPosterConfiguredProperties *)self userInfo];
  [coderCopy encodeObject:userInfo forKey:@"userInfo"];
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  titleStyleConfiguration = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  v5 = [formatterCopy appendObject:titleStyleConfiguration withName:@"titleStyleConfiguration"];

  focusConfiguration = [(PRPosterConfiguredProperties *)self focusConfiguration];
  v7 = [formatterCopy appendObject:focusConfiguration withName:@"focusConfiguration"];

  complicationLayout = [(PRPosterConfiguredProperties *)self complicationLayout];
  v9 = [formatterCopy appendObject:complicationLayout withName:@"complicationLayout"];

  renderingConfiguration = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  v11 = [formatterCopy appendObject:renderingConfiguration withName:@"renderingConfiguration"];

  homeScreenConfiguration = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  v13 = [formatterCopy appendObject:homeScreenConfiguration withName:@"homeScreenConfiguration"];

  colorVariationsConfiguration = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  v15 = [formatterCopy appendObject:colorVariationsConfiguration withName:@"colorVariationsConfiguration"];

  quickActionsConfiguration = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  v17 = [formatterCopy appendObject:quickActionsConfiguration withName:@"quickActionsConfiguration"];

  ambientConfiguration = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  v19 = [formatterCopy appendObject:ambientConfiguration withName:@"ambientConfiguration"];

  suggestionMetadata = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  v21 = [formatterCopy appendObject:suggestionMetadata withName:@"suggestionMetadata"];

  otherMetadata = [(PRPosterConfiguredProperties *)self otherMetadata];
  v23 = [formatterCopy appendObject:otherMetadata withName:@"otherMetadata"];

  ambientWidgetLayout = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  v25 = [formatterCopy appendObject:ambientWidgetLayout withName:@"ambientWidgetLayout"];

  userInfo = [(PRPosterConfiguredProperties *)self userInfo];
  v27 = [formatterCopy appendObject:userInfo withName:@"userInfo"];
}

@end