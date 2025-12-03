@interface PGAssetCollectionFeatureDefinition
- (BOOL)isEqual:(id)equal;
- (PGAssetCollectionFeatureDefinition)initWithAssetFilterByName:(id)name;
- (PGAssetCollectionFeatureDefinition)initWithCoder:(id)coder;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation PGAssetCollectionFeatureDefinition

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      v7 = v6;
      sceneAssetFilter = self->_sceneAssetFilter;
      v9 = sceneAssetFilter;
      if (!sceneAssetFilter)
      {
        sceneAssetFilter = [(PGAssetCollectionFeatureDefinition *)v6 sceneAssetFilter];
        if (!sceneAssetFilter)
        {
          goto LABEL_12;
        }

        cLIPQueryAssetFilter = sceneAssetFilter;
        v9 = self->_sceneAssetFilter;
      }

      sceneAssetFilter2 = [(PGAssetCollectionFeatureDefinition *)v7 sceneAssetFilter];
      v12 = [(PGSceneAssetFilter *)v9 isEqual:sceneAssetFilter2];

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
        peopleAssetFilter = [(PGAssetCollectionFeatureDefinition *)v7 peopleAssetFilter];
        if (!peopleAssetFilter)
        {
          goto LABEL_19;
        }

        cLIPQueryAssetFilter = peopleAssetFilter;
        v15 = self->_peopleAssetFilter;
      }

      peopleAssetFilter2 = [(PGAssetCollectionFeatureDefinition *)v7 peopleAssetFilter];
      v18 = [(PGPeopleAssetFilter *)v15 isEqual:peopleAssetFilter2];

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
        socialGroupAssetFilter = [(PGAssetCollectionFeatureDefinition *)v7 socialGroupAssetFilter];
        if (!socialGroupAssetFilter)
        {
          goto LABEL_26;
        }

        cLIPQueryAssetFilter = socialGroupAssetFilter;
        v20 = self->_socialGroupAssetFilter;
      }

      socialGroupAssetFilter2 = [(PGAssetCollectionFeatureDefinition *)v7 socialGroupAssetFilter];
      v23 = [(PGSocialGroupAssetFilter *)v20 isEqual:socialGroupAssetFilter2];

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
        audioAssetFilter = [(PGAssetCollectionFeatureDefinition *)v7 audioAssetFilter];
        if (!audioAssetFilter)
        {
LABEL_33:
          allowlistAssetFilter = self->_allowlistAssetFilter;
          v30 = allowlistAssetFilter;
          if (!allowlistAssetFilter)
          {
            allowlistAssetFilter = [(PGAssetCollectionFeatureDefinition *)v7 allowlistAssetFilter];
            if (!allowlistAssetFilter)
            {
              goto LABEL_38;
            }

            cLIPQueryAssetFilter = allowlistAssetFilter;
            v30 = self->_allowlistAssetFilter;
          }

          allowlistAssetFilter2 = [(PGAssetCollectionFeatureDefinition *)v7 allowlistAssetFilter];
          v33 = [(PGAllowlistAssetFilter *)v30 isEqual:allowlistAssetFilter2];

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
                cLIPQueryAssetFilter = [(PGAssetCollectionFeatureDefinition *)v7 CLIPQueryAssetFilter];
                if (!cLIPQueryAssetFilter)
                {
                  v13 = 1;
                  goto LABEL_48;
                }

                v35 = self->_CLIPQueryAssetFilter;
              }

              cLIPQueryAssetFilter2 = [(PGAssetCollectionFeatureDefinition *)v7 CLIPQueryAssetFilter];
              v13 = [(PGCLIPQueryAssetFilter *)v35 isEqual:cLIPQueryAssetFilter2];

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

        cLIPQueryAssetFilter = audioAssetFilter;
        v25 = self->_audioAssetFilter;
      }

      audioAssetFilter2 = [(PGAssetCollectionFeatureDefinition *)v7 audioAssetFilter];
      v28 = [(PGAudioAssetFilter *)v25 isEqual:audioAssetFilter2];

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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  sceneAssetFilter = self->_sceneAssetFilter;
  v18 = coderCopy;
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

- (PGAssetCollectionFeatureDefinition)initWithCoder:(id)coder
{
  coderCopy = coder;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v6 = +[PGSceneAssetFilter name];
  v7 = [coderCopy containsValueForKey:v6];

  if (v7)
  {
    v8 = objc_opt_class();
    v9 = +[PGSceneAssetFilter name];
    v10 = [coderCopy decodeObjectOfClass:v8 forKey:v9];
    v11 = +[PGSceneAssetFilter name];
    [dictionary setObject:v10 forKeyedSubscript:v11];
  }

  v12 = +[PGPeopleAssetFilter name];
  v13 = [coderCopy containsValueForKey:v12];

  if (v13)
  {
    v14 = objc_opt_class();
    v15 = +[PGPeopleAssetFilter name];
    v16 = [coderCopy decodeObjectOfClass:v14 forKey:v15];
    v17 = +[PGPeopleAssetFilter name];
    [dictionary setObject:v16 forKeyedSubscript:v17];
  }

  v18 = +[PGSocialGroupAssetFilter name];
  v19 = [coderCopy containsValueForKey:v18];

  if (v19)
  {
    v20 = objc_opt_class();
    v21 = +[PGSocialGroupAssetFilter name];
    v22 = [coderCopy decodeObjectOfClass:v20 forKey:v21];
    v23 = +[PGSocialGroupAssetFilter name];
    [dictionary setObject:v22 forKeyedSubscript:v23];
  }

  v24 = +[PGAudioAssetFilter name];
  v25 = [coderCopy containsValueForKey:v24];

  if (v25)
  {
    v26 = objc_opt_class();
    v27 = +[PGAudioAssetFilter name];
    v28 = [coderCopy decodeObjectOfClass:v26 forKey:v27];
    v29 = +[PGAudioAssetFilter name];
    [dictionary setObject:v28 forKeyedSubscript:v29];
  }

  v30 = +[PGAllowlistAssetFilter name];
  v31 = [coderCopy containsValueForKey:v30];

  if (v31)
  {
    v32 = objc_opt_class();
    v33 = +[PGAllowlistAssetFilter name];
    v34 = [coderCopy decodeObjectOfClass:v32 forKey:v33];
    v35 = +[PGAllowlistAssetFilter name];
    [dictionary setObject:v34 forKeyedSubscript:v35];
  }

  v36 = +[PGCLIPQueryAssetFilter name];
  v37 = [coderCopy containsValueForKey:v36];

  if (v37)
  {
    v38 = objc_opt_class();
    v39 = +[PGCLIPQueryAssetFilter name];
    v40 = [coderCopy decodeObjectOfClass:v38 forKey:v39];
    v41 = +[PGCLIPQueryAssetFilter name];
    [dictionary setObject:v40 forKeyedSubscript:v41];
  }

  v42 = [(PGAssetCollectionFeatureDefinition *)self initWithAssetFilterByName:dictionary];

  return v42;
}

- (PGAssetCollectionFeatureDefinition)initWithAssetFilterByName:(id)name
{
  nameCopy = name;
  v28.receiver = self;
  v28.super_class = PGAssetCollectionFeatureDefinition;
  v5 = [(PGAssetCollectionFeatureDefinition *)&v28 init];
  if (v5)
  {
    v6 = +[PGSceneAssetFilter name];
    v7 = [nameCopy objectForKeyedSubscript:v6];
    sceneAssetFilter = v5->_sceneAssetFilter;
    v5->_sceneAssetFilter = v7;

    v9 = +[PGPeopleAssetFilter name];
    v10 = [nameCopy objectForKeyedSubscript:v9];
    peopleAssetFilter = v5->_peopleAssetFilter;
    v5->_peopleAssetFilter = v10;

    v12 = +[PGSocialGroupAssetFilter name];
    v13 = [nameCopy objectForKeyedSubscript:v12];
    socialGroupAssetFilter = v5->_socialGroupAssetFilter;
    v5->_socialGroupAssetFilter = v13;

    v15 = +[PGAudioAssetFilter name];
    v16 = [nameCopy objectForKeyedSubscript:v15];
    audioAssetFilter = v5->_audioAssetFilter;
    v5->_audioAssetFilter = v16;

    v18 = +[PGCustomFoodieAssetFilter name];
    v19 = [nameCopy objectForKeyedSubscript:v18];
    customAssetFilter = v5->_customAssetFilter;
    v5->_customAssetFilter = v19;

    v21 = +[PGAllowlistAssetFilter name];
    v22 = [nameCopy objectForKeyedSubscript:v21];
    allowlistAssetFilter = v5->_allowlistAssetFilter;
    v5->_allowlistAssetFilter = v22;

    v24 = +[PGCLIPQueryAssetFilter name];
    v25 = [nameCopy objectForKeyedSubscript:v24];
    CLIPQueryAssetFilter = v5->_CLIPQueryAssetFilter;
    v5->_CLIPQueryAssetFilter = v25;
  }

  return v5;
}

@end