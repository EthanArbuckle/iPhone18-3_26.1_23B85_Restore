@interface PGAssetCollectionFeatureDefinition
- (BOOL)isEqual:(id)a3;
- (PGAssetCollectionFeatureDefinition)initWithAssetFilterByName:(id)a3;
- (PGAssetCollectionFeatureDefinition)initWithCoder:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PGAssetCollectionFeatureDefinition

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      v7 = v6;
      sceneAssetFilter = self->_sceneAssetFilter;
      v9 = sceneAssetFilter;
      if (!sceneAssetFilter)
      {
        v10 = [(PGAssetCollectionFeatureDefinition *)v6 sceneAssetFilter];
        if (!v10)
        {
          goto LABEL_12;
        }

        v3 = v10;
        v9 = self->_sceneAssetFilter;
      }

      v11 = [(PGAssetCollectionFeatureDefinition *)v7 sceneAssetFilter];
      v12 = [(PGSceneAssetFilter *)v9 isEqual:v11];

      if (sceneAssetFilter)
      {
        if (!v12)
        {
          goto LABEL_44;
        }
      }

      else
      {

        if (!v12)
        {
          goto LABEL_44;
        }
      }

LABEL_12:
      peopleAssetFilter = self->_peopleAssetFilter;
      v15 = peopleAssetFilter;
      if (!peopleAssetFilter)
      {
        v16 = [(PGAssetCollectionFeatureDefinition *)v7 peopleAssetFilter];
        if (!v16)
        {
          goto LABEL_19;
        }

        v3 = v16;
        v15 = self->_peopleAssetFilter;
      }

      v17 = [(PGAssetCollectionFeatureDefinition *)v7 peopleAssetFilter];
      v18 = [(PGPeopleAssetFilter *)v15 isEqual:v17];

      if (peopleAssetFilter)
      {
        if (!v18)
        {
          goto LABEL_44;
        }
      }

      else
      {

        if (!v18)
        {
          goto LABEL_44;
        }
      }

LABEL_19:
      socialGroupAssetFilter = self->_socialGroupAssetFilter;
      v20 = socialGroupAssetFilter;
      if (!socialGroupAssetFilter)
      {
        v21 = [(PGAssetCollectionFeatureDefinition *)v7 socialGroupAssetFilter];
        if (!v21)
        {
          goto LABEL_26;
        }

        v3 = v21;
        v20 = self->_socialGroupAssetFilter;
      }

      v22 = [(PGAssetCollectionFeatureDefinition *)v7 socialGroupAssetFilter];
      v23 = [(PGSocialGroupAssetFilter *)v20 isEqual:v22];

      if (socialGroupAssetFilter)
      {
        if (!v23)
        {
          goto LABEL_44;
        }
      }

      else
      {

        if (!v23)
        {
          goto LABEL_44;
        }
      }

LABEL_26:
      audioAssetFilter = self->_audioAssetFilter;
      v25 = audioAssetFilter;
      if (!audioAssetFilter)
      {
        v26 = [(PGAssetCollectionFeatureDefinition *)v7 audioAssetFilter];
        if (!v26)
        {
LABEL_33:
          allowlistAssetFilter = self->_allowlistAssetFilter;
          v30 = allowlistAssetFilter;
          if (!allowlistAssetFilter)
          {
            v31 = [(PGAssetCollectionFeatureDefinition *)v7 allowlistAssetFilter];
            if (!v31)
            {
              goto LABEL_38;
            }

            v3 = v31;
            v30 = self->_allowlistAssetFilter;
          }

          v32 = [(PGAssetCollectionFeatureDefinition *)v7 allowlistAssetFilter];
          v33 = [(PGAllowlistAssetFilter *)v30 isEqual:v32];

          if (allowlistAssetFilter)
          {
            if (v33)
            {
              goto LABEL_38;
            }
          }

          else
          {

            if (v33)
            {
LABEL_38:
              CLIPQueryAssetFilter = self->_CLIPQueryAssetFilter;
              v35 = CLIPQueryAssetFilter;
              if (!CLIPQueryAssetFilter)
              {
                v3 = [(PGAssetCollectionFeatureDefinition *)v7 CLIPQueryAssetFilter];
                if (!v3)
                {
                  v13 = 1;
                  goto LABEL_48;
                }

                v35 = self->_CLIPQueryAssetFilter;
              }

              v36 = [(PGAssetCollectionFeatureDefinition *)v7 CLIPQueryAssetFilter];
              v13 = [(PGCLIPQueryAssetFilter *)v35 isEqual:v36];

              if (CLIPQueryAssetFilter)
              {
LABEL_45:

                goto LABEL_46;
              }

LABEL_48:

              goto LABEL_45;
            }
          }

LABEL_44:
          v13 = 0;
          goto LABEL_45;
        }

        v3 = v26;
        v25 = self->_audioAssetFilter;
      }

      v27 = [(PGAssetCollectionFeatureDefinition *)v7 audioAssetFilter];
      v28 = [(PGAudioAssetFilter *)v25 isEqual:v27];

      if (audioAssetFilter)
      {
        if (!v28)
        {
          goto LABEL_44;
        }
      }

      else
      {

        if (!v28)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_33;
    }

    v13 = 0;
  }

LABEL_46:

  return v13;
}

- (id)description
{
  v3 = MEMORY[0x277CCAB68];
  v19.receiver = self;
  v19.super_class = PGAssetCollectionFeatureDefinition;
  v4 = [(PGAssetCollectionFeatureDefinition *)&v19 description];
  v5 = [v3 stringWithFormat:@"%@", v4];

  v6 = +[PGSceneAssetFilter name];
  v7 = [(PGSceneAssetFilter *)self->_sceneAssetFilter description];
  [v5 appendFormat:@" %@: %@", v6, v7];

  v8 = +[PGPeopleAssetFilter name];
  v9 = [(PGPeopleAssetFilter *)self->_peopleAssetFilter description];
  [v5 appendFormat:@" %@: %@", v8, v9];

  v10 = +[PGSocialGroupAssetFilter name];
  v11 = [(PGSocialGroupAssetFilter *)self->_socialGroupAssetFilter description];
  [v5 appendFormat:@" %@: %@", v10, v11];

  v12 = +[PGAllowlistAssetFilter name];
  v13 = [(PGAllowlistAssetFilter *)self->_allowlistAssetFilter description];
  [v5 appendFormat:@" %@: %@", v12, v13];

  v14 = +[PGAudioAssetFilter name];
  v15 = [(PGAudioAssetFilter *)self->_audioAssetFilter description];
  [v5 appendFormat:@" %@: %@", v14, v15];

  v16 = +[PGCLIPQueryAssetFilter name];
  v17 = [(PGCLIPQueryAssetFilter *)self->_CLIPQueryAssetFilter description];
  [v5 appendFormat:@" %@: %@", v16, v17];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  sceneAssetFilter = self->_sceneAssetFilter;
  v18 = v4;
  if (sceneAssetFilter)
  {
    v6 = +[PGSceneAssetFilter name];
    [v18 encodeObject:sceneAssetFilter forKey:v6];
  }

  peopleAssetFilter = self->_peopleAssetFilter;
  if (peopleAssetFilter)
  {
    v8 = +[PGPeopleAssetFilter name];
    [v18 encodeObject:peopleAssetFilter forKey:v8];
  }

  socialGroupAssetFilter = self->_socialGroupAssetFilter;
  if (socialGroupAssetFilter)
  {
    v10 = +[PGSocialGroupAssetFilter name];
    [v18 encodeObject:socialGroupAssetFilter forKey:v10];
  }

  audioAssetFilter = self->_audioAssetFilter;
  if (audioAssetFilter)
  {
    v12 = +[PGAudioAssetFilter name];
    [v18 encodeObject:audioAssetFilter forKey:v12];
  }

  allowlistAssetFilter = self->_allowlistAssetFilter;
  if (allowlistAssetFilter)
  {
    v14 = +[PGAllowlistAssetFilter name];
    [v18 encodeObject:allowlistAssetFilter forKey:v14];
  }

  CLIPQueryAssetFilter = self->_CLIPQueryAssetFilter;
  v16 = v18;
  if (CLIPQueryAssetFilter)
  {
    v17 = +[PGCLIPQueryAssetFilter name];
    [v18 encodeObject:CLIPQueryAssetFilter forKey:v17];

    v16 = v18;
  }
}

- (PGAssetCollectionFeatureDefinition)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB38] dictionary];
  v6 = +[PGSceneAssetFilter name];
  v7 = [v4 containsValueForKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = +[PGSceneAssetFilter name];
    v10 = [v4 decodeObjectOfClass:v8 forKey:v9];
    v11 = +[PGSceneAssetFilter name];
    [v5 setObject:v10 forKeyedSubscript:v11];
  }

  v12 = +[PGPeopleAssetFilter name];
  v13 = [v4 containsValueForKey:v12];

  if (v13)
  {
    v14 = objc_opt_class();
    v15 = +[PGPeopleAssetFilter name];
    v16 = [v4 decodeObjectOfClass:v14 forKey:v15];
    v17 = +[PGPeopleAssetFilter name];
    [v5 setObject:v16 forKeyedSubscript:v17];
  }

  v18 = +[PGSocialGroupAssetFilter name];
  v19 = [v4 containsValueForKey:v18];

  if (v19)
  {
    v20 = objc_opt_class();
    v21 = +[PGSocialGroupAssetFilter name];
    v22 = [v4 decodeObjectOfClass:v20 forKey:v21];
    v23 = +[PGSocialGroupAssetFilter name];
    [v5 setObject:v22 forKeyedSubscript:v23];
  }

  v24 = +[PGAudioAssetFilter name];
  v25 = [v4 containsValueForKey:v24];

  if (v25)
  {
    v26 = objc_opt_class();
    v27 = +[PGAudioAssetFilter name];
    v28 = [v4 decodeObjectOfClass:v26 forKey:v27];
    v29 = +[PGAudioAssetFilter name];
    [v5 setObject:v28 forKeyedSubscript:v29];
  }

  v30 = +[PGAllowlistAssetFilter name];
  v31 = [v4 containsValueForKey:v30];

  if (v31)
  {
    v32 = objc_opt_class();
    v33 = +[PGAllowlistAssetFilter name];
    v34 = [v4 decodeObjectOfClass:v32 forKey:v33];
    v35 = +[PGAllowlistAssetFilter name];
    [v5 setObject:v34 forKeyedSubscript:v35];
  }

  v36 = +[PGCLIPQueryAssetFilter name];
  v37 = [v4 containsValueForKey:v36];

  if (v37)
  {
    v38 = objc_opt_class();
    v39 = +[PGCLIPQueryAssetFilter name];
    v40 = [v4 decodeObjectOfClass:v38 forKey:v39];
    v41 = +[PGCLIPQueryAssetFilter name];
    [v5 setObject:v40 forKeyedSubscript:v41];
  }

  v42 = [(PGAssetCollectionFeatureDefinition *)self initWithAssetFilterByName:v5];

  return v42;
}

- (PGAssetCollectionFeatureDefinition)initWithAssetFilterByName:(id)a3
{
  v4 = a3;
  v28.receiver = self;
  v28.super_class = PGAssetCollectionFeatureDefinition;
  v5 = [(PGAssetCollectionFeatureDefinition *)&v28 init];
  if (v5)
  {
    v6 = +[PGSceneAssetFilter name];
    v7 = [v4 objectForKeyedSubscript:v6];
    sceneAssetFilter = v5->_sceneAssetFilter;
    v5->_sceneAssetFilter = v7;

    v9 = +[PGPeopleAssetFilter name];
    v10 = [v4 objectForKeyedSubscript:v9];
    peopleAssetFilter = v5->_peopleAssetFilter;
    v5->_peopleAssetFilter = v10;

    v12 = +[PGSocialGroupAssetFilter name];
    v13 = [v4 objectForKeyedSubscript:v12];
    socialGroupAssetFilter = v5->_socialGroupAssetFilter;
    v5->_socialGroupAssetFilter = v13;

    v15 = +[PGAudioAssetFilter name];
    v16 = [v4 objectForKeyedSubscript:v15];
    audioAssetFilter = v5->_audioAssetFilter;
    v5->_audioAssetFilter = v16;

    v18 = +[PGCustomFoodieAssetFilter name];
    v19 = [v4 objectForKeyedSubscript:v18];
    customAssetFilter = v5->_customAssetFilter;
    v5->_customAssetFilter = v19;

    v21 = +[PGAllowlistAssetFilter name];
    v22 = [v4 objectForKeyedSubscript:v21];
    allowlistAssetFilter = v5->_allowlistAssetFilter;
    v5->_allowlistAssetFilter = v22;

    v24 = +[PGCLIPQueryAssetFilter name];
    v25 = [v4 objectForKeyedSubscript:v24];
    CLIPQueryAssetFilter = v5->_CLIPQueryAssetFilter;
    v5->_CLIPQueryAssetFilter = v25;
  }

  return v5;
}

@end