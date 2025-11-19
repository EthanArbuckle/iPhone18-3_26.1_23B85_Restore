@interface _UISceneHostingTraitCollectionPropagationClientComponent
+ (id)modifiedTraitCollectionForHostTraitCollection:(id)a3;
- (id)windowScene;
- (void)scene:(id)a3 didUpdateSettings:(id)a4;
@end

@implementation _UISceneHostingTraitCollectionPropagationClientComponent

- (id)windowScene
{
  v4 = [(FBSSceneComponent *)self clientScene];
  v5 = [UIScene _sceneForFBSScene:v4];

  v6 = objc_opt_class();
  v7 = v5;
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (!v9)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"_UISceneHostingTraitCollectionPropagationClientComponent.m" lineNumber:48 description:{@"Unable to apply trait collection change to client scene of kind %@", objc_opt_class()}];
  }

  return v9;
}

+ (id)modifiedTraitCollectionForHostTraitCollection:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (dyld_program_sdk_at_least())
  {
    v5 = +[UITraitCollection _fallbackTraitCollection];
    v4 = [(UITraitCollection *)v3 _traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection:v5];
  }

  v6 = [v4 traitCollectionByModifyingTraits:&__block_literal_global_506];

  return v6;
}

- (void)scene:(id)a3 didUpdateSettings:(id)a4
{
  v33 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 settingsDiff];
  v7 = [v6 containsProperty:sel_tintColor];

  v8 = [v5 settingsDiff];
  v9 = [v8 containsProperty:sel_traitCollection];

  if ((v7 & 1) != 0 || v9)
  {
    v10 = [(_UISceneHostingTraitCollectionPropagationClientComponent *)self windowScene];
    v11 = [v5 settings];
    if (*(&self->super._invalid + 1))
    {
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v12 = [(FBSSceneComponent *)self clientScene];
      v13 = [v12 traitCollectionModificationComponent];
      [v13 setupWithWindowScene:v10];

      *(&self->super._invalid + 1) = 1;
      if (!v7)
      {
LABEL_5:
        if (!v9)
        {
LABEL_19:

          goto LABEL_20;
        }

LABEL_16:
        v21 = objc_opt_class();
        v22 = [v11 traitCollection];
        v23 = [v21 modifiedTraitCollectionForHostTraitCollection:v22];

        v24 = [(FBSSceneComponent *)self clientScene];
        v25 = [v24 traitCollectionModificationComponent];
        v26 = [v25 modifiedTraitCollectionForHostTraitCollection:v23];

        if (v26)
        {
          v27 = v26;

          v23 = v27;
        }

        [v10 _hostTraitCollectionDidChange:v23];

        goto LABEL_19;
      }
    }

    v14 = [v11 tintColor];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [(_UISceneHostingTraitCollectionPropagationClientComponent *)self windowScene];
    v16 = [v15 windows];

    v17 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v29;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v29 != v19)
          {
            objc_enumerationMutation(v16);
          }

          [*(*(&v28 + 1) + 8 * i) setTintColor:v14];
        }

        v18 = [v16 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v18);
    }

    if (!v9)
    {
      goto LABEL_19;
    }

    goto LABEL_16;
  }

LABEL_20:
}

@end