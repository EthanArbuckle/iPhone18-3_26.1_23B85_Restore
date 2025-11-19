@interface PRPosterConfiguredProperties
+ (id)configuredPropertiesSanitizedForPassingToExtension:(id)a3;
+ (id)defaultConfiguredPropertiesForRole:(id)a3 renderingConfiguration:(id)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToConfiguredProperties:(id)a3 comparingPropertiesAffectingSnapshotsOnly:(BOOL)a4;
- (NSString)description;
- (PRPosterConfiguredProperties)initWithAmbientConfiguration:(id)a3 widgetLayout:(id)a4 otherMetadata:(id)a5 userInfo:(id)a6;
- (PRPosterConfiguredProperties)initWithBSXPCCoder:(id)a3;
- (PRPosterConfiguredProperties)initWithCoder:(id)a3;
- (PRPosterConfiguredProperties)initWithTitleStyleConfiguration:(id)a3 focusConfiguration:(id)a4 complicationLayout:(id)a5 renderingConfiguration:(id)a6 homeScreenConfiguration:(id)a7 colorVariationsConfiguration:(id)a8 quickActionsConfiguration:(id)a9 ambientConfiguration:(id)a10 ambientWidgetLayout:(id)a11 suggestionMetadata:(id)a12 otherMetadata:(id)a13 userInfo:(id)a14;
- (PRPosterConfiguredProperties)initWithTitleStyleConfiguration:(id)a3 focusConfiguration:(id)a4 complicationLayout:(id)a5 renderingConfiguration:(id)a6 homeScreenConfiguration:(id)a7 colorVariationsConfiguration:(id)a8 quickActionsConfiguration:(id)a9 suggestionMetadata:(id)a10 otherMetadata:(id)a11 userInfo:(id)a12;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)appendDescriptionToFormatter:(id)a3;
- (void)encodeWithBSXPCCoder:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PRPosterConfiguredProperties

+ (id)configuredPropertiesSanitizedForPassingToExtension:(id)a3
{
  v3 = a3;
  v4 = [PRPosterConfiguredProperties alloc];
  v5 = [v3 titleStyleConfiguration];
  v6 = [v3 renderingConfiguration];
  v7 = [v3 colorVariationsConfiguration];
  v8 = [v3 userInfo];

  v9 = [(PRPosterConfiguredProperties *)v4 initWithTitleStyleConfiguration:v5 focusConfiguration:0 complicationLayout:0 renderingConfiguration:v6 homeScreenConfiguration:0 colorVariationsConfiguration:v7 quickActionsConfiguration:0 ambientConfiguration:0 ambientWidgetLayout:0 suggestionMetadata:0 otherMetadata:0 userInfo:v8];

  return v9;
}

+ (id)defaultConfiguredPropertiesForRole:(id)a3 renderingConfiguration:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 isEqual:@"PRPosterRoleLockScreen"])
  {
    v7 = +[PRPosterTimeFontConfiguration defaultConfiguration];
    v8 = [PRPosterTitleStyleConfiguration alloc];
    v9 = +[PRPosterTitleStyleConfiguration defaultTitleColor];
    +[PRPosterTitleStyleConfiguration defaultContentsLuminance];
    LOBYTE(v15) = 1;
    v10 = [(PRPosterTitleStyleConfiguration *)v8 initWithTimeFontConfiguration:v7 preferredTitleAlignment:0 preferredTitleLayout:0 titleColor:v9 timeNumberingSystem:0 userConfigured:0 contentsLuminance:v15 alternateDateEnabled:0 groupName:?];

    v11 = [[PRPosterConfiguredProperties alloc] initWithTitleStyleConfiguration:v10 focusConfiguration:0 complicationLayout:0 renderingConfiguration:v6 homeScreenConfiguration:0 colorVariationsConfiguration:0 quickActionsConfiguration:0 suggestionMetadata:0 otherMetadata:0 userInfo:0];
  }

  else if ([v5 isEqual:@"PRPosterRoleAmbient"])
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

- (PRPosterConfiguredProperties)initWithTitleStyleConfiguration:(id)a3 focusConfiguration:(id)a4 complicationLayout:(id)a5 renderingConfiguration:(id)a6 homeScreenConfiguration:(id)a7 colorVariationsConfiguration:(id)a8 quickActionsConfiguration:(id)a9 ambientConfiguration:(id)a10 ambientWidgetLayout:(id)a11 suggestionMetadata:(id)a12 otherMetadata:(id)a13 userInfo:(id)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v47 = a6;
  v46 = a7;
  v45 = a8;
  v22 = v20;
  v44 = a9;
  v23 = a10;
  v24 = a11;
  v25 = v21;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v48.receiver = self;
  v48.super_class = PRPosterConfiguredProperties;
  v29 = [(PRPosterConfiguredProperties *)&v48 init];
  if (v29)
  {
    v30 = [v19 copy];
    [(PRPosterConfiguredProperties *)v29 setTitleStyleConfiguration:v30];

    v31 = [v22 copy];
    [(PRPosterConfiguredProperties *)v29 setFocusConfiguration:v31];

    v32 = [v25 copy];
    [(PRPosterConfiguredProperties *)v29 setComplicationLayout:v32];

    v33 = [v47 copy];
    [(PRPosterConfiguredProperties *)v29 setRenderingConfiguration:v33];

    v34 = [v46 copy];
    [(PRPosterConfiguredProperties *)v29 setHomeScreenConfiguration:v34];

    v35 = [v45 copy];
    [(PRPosterConfiguredProperties *)v29 setColorVariationsConfiguration:v35];

    v36 = [v44 copy];
    [(PRPosterConfiguredProperties *)v29 setQuickActionsConfiguration:v36];

    v37 = [v23 copy];
    [(PRPosterConfiguredProperties *)v29 setAmbientConfiguration:v37];

    v38 = [v24 copy];
    [(PRPosterConfiguredProperties *)v29 setAmbientWidgetLayout:v38];

    v39 = [v26 copy];
    [(PRPosterConfiguredProperties *)v29 setSuggestionMetadata:v39];

    v40 = [v27 copy];
    [(PRPosterConfiguredProperties *)v29 setOtherMetadata:v40];

    v41 = [v28 copy];
    [(PRPosterConfiguredProperties *)v29 setUserInfo:v41];
  }

  return v29;
}

- (PRPosterConfiguredProperties)initWithTitleStyleConfiguration:(id)a3 focusConfiguration:(id)a4 complicationLayout:(id)a5 renderingConfiguration:(id)a6 homeScreenConfiguration:(id)a7 colorVariationsConfiguration:(id)a8 quickActionsConfiguration:(id)a9 suggestionMetadata:(id)a10 otherMetadata:(id)a11 userInfo:(id)a12
{
  v40 = a3;
  v17 = a4;
  v41 = a5;
  v18 = a6;
  v19 = a7;
  v20 = a8;
  v21 = a9;
  v22 = a10;
  v23 = a11;
  v24 = a12;
  v42.receiver = self;
  v42.super_class = PRPosterConfiguredProperties;
  v25 = [(PRPosterConfiguredProperties *)&v42 init];
  if (v25)
  {
    v26 = v18;
    v27 = v17;
    v28 = [v40 copy];
    [(PRPosterConfiguredProperties *)v25 setTitleStyleConfiguration:v28];

    v29 = [v27 copy];
    [(PRPosterConfiguredProperties *)v25 setFocusConfiguration:v29];

    v30 = [v41 copy];
    [(PRPosterConfiguredProperties *)v25 setComplicationLayout:v30];

    v31 = [v26 copy];
    [(PRPosterConfiguredProperties *)v25 setRenderingConfiguration:v31];

    v32 = [v19 copy];
    [(PRPosterConfiguredProperties *)v25 setHomeScreenConfiguration:v32];

    v33 = [v20 copy];
    [(PRPosterConfiguredProperties *)v25 setColorVariationsConfiguration:v33];

    v34 = [v21 copy];
    [(PRPosterConfiguredProperties *)v25 setQuickActionsConfiguration:v34];

    v35 = [v22 copy];
    [(PRPosterConfiguredProperties *)v25 setSuggestionMetadata:v35];

    v36 = [v23 copy];
    [(PRPosterConfiguredProperties *)v25 setOtherMetadata:v36];

    v37 = [v24 copy];
    [(PRPosterConfiguredProperties *)v25 setUserInfo:v37];

    v17 = v27;
    v18 = v26;
  }

  return v25;
}

- (PRPosterConfiguredProperties)initWithAmbientConfiguration:(id)a3 widgetLayout:(id)a4 otherMetadata:(id)a5 userInfo:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = PRPosterConfiguredProperties;
  v14 = [(PRPosterConfiguredProperties *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(PRPosterConfiguredProperties *)v14 setAmbientConfiguration:v10];
    [(PRPosterConfiguredProperties *)v15 setAmbientWidgetLayout:v11];
    [(PRPosterConfiguredProperties *)v15 setOtherMetadata:v12];
    [(PRPosterConfiguredProperties *)v15 setUserInfo:v13];
  }

  return v15;
}

- (PRPosterConfiguredProperties)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  v30 = [v3 decodeObjectOfClass:v4 forKey:*MEMORY[0x1E69C5468]];

  v5 = objc_opt_self();
  v25 = [v3 decodeObjectOfClass:v5 forKey:@"focusConfiguration"];

  v6 = objc_opt_self();
  v29 = [v3 decodeObjectOfClass:v6 forKey:@"complicationLayout"];

  v7 = objc_opt_self();
  v8 = [v3 decodeObjectOfClass:v7 forKey:*MEMORY[0x1E69C5460]];

  v9 = objc_opt_self();
  v10 = [v3 decodeObjectOfClass:v9 forKey:@"homeScreenConfiguration"];

  v11 = objc_opt_self();
  v26 = [v3 decodeObjectOfClass:v11 forKey:@"colorVariationsConfiguration"];

  v12 = objc_opt_self();
  v13 = [v3 decodeObjectOfClass:v12 forKey:@"quickActionsConfiguration"];

  v14 = objc_opt_self();
  v15 = [v3 decodeObjectOfClass:v14 forKey:@"ambientConfiguration"];

  v16 = objc_opt_self();
  v24 = [v3 decodeObjectOfClass:v16 forKey:@"suggestionMetadata"];

  v17 = objc_opt_self();
  v18 = [v3 decodeObjectOfClass:v17 forKey:@"otherMetadata"];

  v19 = objc_opt_self();
  v20 = [v3 decodeObjectOfClass:v19 forKey:@"ambientWidgetLayout"];

  v21 = objc_opt_self();
  v22 = [v3 decodeObjectOfClass:v21 forKey:@"userInfo"];

  v28 = [(PRPosterConfiguredProperties *)self initWithTitleStyleConfiguration:v30 focusConfiguration:v25 complicationLayout:v29 renderingConfiguration:v8 homeScreenConfiguration:v10 colorVariationsConfiguration:v26 quickActionsConfiguration:v13 ambientConfiguration:v15 ambientWidgetLayout:v20 suggestionMetadata:v24 otherMetadata:v18 userInfo:v22];
  return v28;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  [v4 encodeObject:v5 forKey:*MEMORY[0x1E69C5468]];

  v6 = [(PRPosterConfiguredProperties *)self focusConfiguration];
  [v4 encodeObject:v6 forKey:@"focusConfiguration"];

  v7 = [(PRPosterConfiguredProperties *)self complicationLayout];
  [v4 encodeObject:v7 forKey:@"complicationLayout"];

  v8 = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  [v4 encodeObject:v8 forKey:*MEMORY[0x1E69C5460]];

  v9 = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  [v4 encodeObject:v9 forKey:@"homeScreenConfiguration"];

  v10 = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  [v4 encodeObject:v10 forKey:@"colorVariationsConfiguration"];

  v11 = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  [v4 encodeObject:v11 forKey:@"quickActionsConfiguration"];

  v12 = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  [v4 encodeObject:v12 forKey:@"ambientConfiguration"];

  v13 = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  [v4 encodeObject:v13 forKey:@"ambientWidgetLayout"];

  v14 = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  [v4 encodeObject:v14 forKey:@"suggestionMetadata"];

  v15 = [(PRPosterConfiguredProperties *)self otherMetadata];
  [v4 encodeObject:v15 forKey:@"otherMetadata"];

  v16 = [(PRPosterConfiguredProperties *)self userInfo];
  [v4 encodeObject:v16 forKey:@"userInfo"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v17 = [PRPosterConfiguredProperties alloc];
  v16 = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  v15 = [(PRPosterConfiguredProperties *)self focusConfiguration];
  v4 = [(PRPosterConfiguredProperties *)self complicationLayout];
  v5 = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  v14 = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  v13 = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  v6 = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  v7 = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  v8 = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  v9 = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  v10 = [(PRPosterConfiguredProperties *)self otherMetadata];
  v11 = [(PRPosterConfiguredProperties *)self userInfo];
  v18 = [(PRPosterConfiguredProperties *)v17 initWithTitleStyleConfiguration:v16 focusConfiguration:v15 complicationLayout:v4 renderingConfiguration:v5 homeScreenConfiguration:v14 colorVariationsConfiguration:v13 quickActionsConfiguration:v6 ambientConfiguration:v7 ambientWidgetLayout:v8 suggestionMetadata:v9 otherMetadata:v10 userInfo:v11];

  return v18;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v17 = [PRPosterMutableConfiguredProperties alloc];
  v16 = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  v15 = [(PRPosterConfiguredProperties *)self focusConfiguration];
  v4 = [(PRPosterConfiguredProperties *)self complicationLayout];
  v5 = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  v14 = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  v13 = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  v6 = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  v7 = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  v8 = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  v9 = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  v10 = [(PRPosterConfiguredProperties *)self otherMetadata];
  v11 = [(PRPosterConfiguredProperties *)self userInfo];
  v18 = [(PRPosterConfiguredProperties *)v17 initWithTitleStyleConfiguration:v16 focusConfiguration:v15 complicationLayout:v4 renderingConfiguration:v5 homeScreenConfiguration:v14 colorVariationsConfiguration:v13 quickActionsConfiguration:v6 ambientConfiguration:v7 ambientWidgetLayout:v8 suggestionMetadata:v9 otherMetadata:v10 userInfo:v11];

  return v18;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(PRPosterConfiguredProperties *)self isEqualToConfiguredProperties:v4];
  }

  return v5;
}

- (BOOL)isEqualToConfiguredProperties:(id)a3 comparingPropertiesAffectingSnapshotsOnly:(BOOL)a4
{
  v6 = a3;
  v7 = v6;
  if (v6 == self)
  {
    v18 = 1;
  }

  else
  {
    if (v6)
    {
      v8 = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
      v9 = [(PRPosterConfiguredProperties *)v7 titleStyleConfiguration];
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v10 = [(PRPosterConfiguredProperties *)self renderingConfiguration];
      v11 = [(PRPosterConfiguredProperties *)v7 renderingConfiguration];
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_38:

        goto LABEL_39;
      }

      v12 = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
      v13 = [(PRPosterConfiguredProperties *)v7 colorVariationsConfiguration];
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v14 = [(PRPosterConfiguredProperties *)self complicationLayout];
      v44 = [(PRPosterConfiguredProperties *)v7 complicationLayout];
      v45 = v14;
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_36:

        goto LABEL_37;
      }

      v15 = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
      v42 = [(PRPosterConfiguredProperties *)v7 homeScreenConfiguration];
      v43 = v15;
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_35:

        goto LABEL_36;
      }

      v16 = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
      v40 = [(PRPosterConfiguredProperties *)v7 quickActionsConfiguration];
      v41 = v16;
      if (!BSEqualObjects())
      {
        v18 = 0;
LABEL_34:

        goto LABEL_35;
      }

      v17 = [(PRPosterConfiguredProperties *)self userInfo];
      v38 = [(PRPosterConfiguredProperties *)v7 userInfo];
      v39 = v17;
      if (!BSEqualObjects())
      {
        goto LABEL_32;
      }

      if (a4)
      {
LABEL_11:
        v18 = 1;
LABEL_33:

        goto LABEL_34;
      }

      v19 = [(PRPosterConfiguredProperties *)self focusConfiguration];
      v20 = [(PRPosterConfiguredProperties *)v7 focusConfiguration];
      if (BSEqualObjects())
      {
        v36 = v20;
        v37 = v19;
        v21 = [(PRPosterConfiguredProperties *)self suggestionMetadata];
        v22 = [(PRPosterConfiguredProperties *)v7 suggestionMetadata];
        if (BSEqualObjects())
        {
          v34 = v21;
          v35 = v22;
          v23 = [(PRPosterConfiguredProperties *)self otherMetadata];
          v24 = [(PRPosterConfiguredProperties *)v7 otherMetadata];
          if (BSEqualObjects())
          {
            v32 = v24;
            v33 = v23;
            v25 = [(PRPosterConfiguredProperties *)self ambientConfiguration];
            [(PRPosterConfiguredProperties *)v7 ambientConfiguration];
            v26 = v31 = v25;
            if (BSEqualObjects())
            {
              v27 = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
              v28 = [(PRPosterConfiguredProperties *)v7 ambientWidgetLayout];
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
  v3 = [MEMORY[0x1E698E6B8] builder];
  v4 = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  v5 = [v3 appendObject:v4];

  v6 = [(PRPosterConfiguredProperties *)self focusConfiguration];
  v7 = [v3 appendObject:v6];

  v8 = [(PRPosterConfiguredProperties *)self complicationLayout];
  v9 = [v3 appendObject:v8];

  v10 = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  v11 = [v3 appendObject:v10];

  v12 = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  v13 = [v3 appendObject:v12];

  v14 = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  v15 = [v3 appendObject:v14];

  v16 = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  v17 = [v3 appendObject:v16];

  v18 = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  v19 = [v3 appendObject:v18];

  v20 = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  v21 = [v3 appendObject:v20];

  v22 = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  v23 = [v3 appendObject:v22];

  v24 = [(PRPosterConfiguredProperties *)self otherMetadata];
  v25 = [v3 appendObject:v24];

  v26 = [(PRPosterConfiguredProperties *)self userInfo];
  v27 = [v3 appendObject:v26];

  v28 = [v3 hash];
  return v28;
}

- (NSString)description
{
  v3 = objc_alloc_init(MEMORY[0x1E698E688]);
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __43__PRPosterConfiguredProperties_description__block_invoke;
  v10 = &unk_1E7843070;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:self block:&v7];
  v5 = [v4 description];

  return v5;
}

- (PRPosterConfiguredProperties)initWithBSXPCCoder:(id)a3
{
  v3 = a3;
  v4 = objc_opt_self();
  v30 = [v3 decodeObjectOfClass:v4 forKey:*MEMORY[0x1E69C5468]];

  v5 = objc_opt_self();
  v25 = [v3 decodeObjectOfClass:v5 forKey:@"focusConfiguration"];

  v6 = objc_opt_self();
  v29 = [v3 decodeObjectOfClass:v6 forKey:@"complicationLayout"];

  v7 = objc_opt_self();
  v8 = [v3 decodeObjectOfClass:v7 forKey:*MEMORY[0x1E69C5460]];

  v9 = objc_opt_self();
  v10 = [v3 decodeObjectOfClass:v9 forKey:@"homeScreenConfiguration"];

  v11 = objc_opt_self();
  v26 = [v3 decodeObjectOfClass:v11 forKey:@"colorVariationsConfiguration"];

  v12 = objc_opt_self();
  v13 = [v3 decodeObjectOfClass:v12 forKey:@"quickActionsConfiguration"];

  v14 = objc_opt_self();
  v15 = [v3 decodeObjectOfClass:v14 forKey:@"ambientConfiguration"];

  v16 = objc_opt_self();
  v24 = [v3 decodeObjectOfClass:v16 forKey:@"suggestionMetadata"];

  v17 = objc_opt_self();
  v18 = [v3 decodeObjectOfClass:v17 forKey:@"otherMetadata"];

  v19 = objc_opt_self();
  v20 = [v3 decodeObjectOfClass:v19 forKey:@"ambientWidgetLayout"];

  v21 = objc_opt_self();
  v22 = [v3 decodeObjectOfClass:v21 forKey:@"userInfo"];

  v28 = [(PRPosterConfiguredProperties *)self initWithTitleStyleConfiguration:v30 focusConfiguration:v25 complicationLayout:v29 renderingConfiguration:v8 homeScreenConfiguration:v10 colorVariationsConfiguration:v26 quickActionsConfiguration:v13 ambientConfiguration:v15 ambientWidgetLayout:v20 suggestionMetadata:v24 otherMetadata:v18 userInfo:v22];
  return v28;
}

- (void)encodeWithBSXPCCoder:(id)a3
{
  v4 = a3;
  v5 = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  [v4 encodeObject:v5 forKey:*MEMORY[0x1E69C5468]];

  v6 = [(PRPosterConfiguredProperties *)self focusConfiguration];
  [v4 encodeObject:v6 forKey:@"focusConfiguration"];

  v7 = [(PRPosterConfiguredProperties *)self complicationLayout];
  [v4 encodeObject:v7 forKey:@"complicationLayout"];

  v8 = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  [v4 encodeObject:v8 forKey:*MEMORY[0x1E69C5460]];

  v9 = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  [v4 encodeObject:v9 forKey:@"homeScreenConfiguration"];

  v10 = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  [v4 encodeObject:v10 forKey:@"colorVariationsConfiguration"];

  v11 = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  [v4 encodeObject:v11 forKey:@"quickActionsConfiguration"];

  v12 = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  [v4 encodeObject:v12 forKey:@"ambientConfiguration"];

  v13 = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  [v4 encodeObject:v13 forKey:@"ambientWidgetLayout"];

  v14 = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  [v4 encodeObject:v14 forKey:@"suggestionMetadata"];

  v15 = [(PRPosterConfiguredProperties *)self otherMetadata];
  [v4 encodeObject:v15 forKey:@"otherMetadata"];

  v16 = [(PRPosterConfiguredProperties *)self userInfo];
  [v4 encodeObject:v16 forKey:@"userInfo"];
}

- (void)appendDescriptionToFormatter:(id)a3
{
  v28 = a3;
  v4 = [(PRPosterConfiguredProperties *)self titleStyleConfiguration];
  v5 = [v28 appendObject:v4 withName:@"titleStyleConfiguration"];

  v6 = [(PRPosterConfiguredProperties *)self focusConfiguration];
  v7 = [v28 appendObject:v6 withName:@"focusConfiguration"];

  v8 = [(PRPosterConfiguredProperties *)self complicationLayout];
  v9 = [v28 appendObject:v8 withName:@"complicationLayout"];

  v10 = [(PRPosterConfiguredProperties *)self renderingConfiguration];
  v11 = [v28 appendObject:v10 withName:@"renderingConfiguration"];

  v12 = [(PRPosterConfiguredProperties *)self homeScreenConfiguration];
  v13 = [v28 appendObject:v12 withName:@"homeScreenConfiguration"];

  v14 = [(PRPosterConfiguredProperties *)self colorVariationsConfiguration];
  v15 = [v28 appendObject:v14 withName:@"colorVariationsConfiguration"];

  v16 = [(PRPosterConfiguredProperties *)self quickActionsConfiguration];
  v17 = [v28 appendObject:v16 withName:@"quickActionsConfiguration"];

  v18 = [(PRPosterConfiguredProperties *)self ambientConfiguration];
  v19 = [v28 appendObject:v18 withName:@"ambientConfiguration"];

  v20 = [(PRPosterConfiguredProperties *)self suggestionMetadata];
  v21 = [v28 appendObject:v20 withName:@"suggestionMetadata"];

  v22 = [(PRPosterConfiguredProperties *)self otherMetadata];
  v23 = [v28 appendObject:v22 withName:@"otherMetadata"];

  v24 = [(PRPosterConfiguredProperties *)self ambientWidgetLayout];
  v25 = [v28 appendObject:v24 withName:@"ambientWidgetLayout"];

  v26 = [(PRPosterConfiguredProperties *)self userInfo];
  v27 = [v28 appendObject:v26 withName:@"userInfo"];
}

@end