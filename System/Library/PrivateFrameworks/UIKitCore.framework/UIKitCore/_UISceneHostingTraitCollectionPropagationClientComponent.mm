@interface _UISceneHostingTraitCollectionPropagationClientComponent
+ (id)modifiedTraitCollectionForHostTraitCollection:(id)collection;
- (id)windowScene;
- (void)scene:(id)scene didUpdateSettings:(id)settings;
@end

@implementation _UISceneHostingTraitCollectionPropagationClientComponent

- (id)windowScene
{
  clientScene = [(FBSSceneComponent *)self clientScene];
  v5 = [UIScene _sceneForFBSScene:clientScene];

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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UISceneHostingTraitCollectionPropagationClientComponent.m" lineNumber:48 description:{@"Unable to apply trait collection change to client scene of kind %@", objc_opt_class()}];
  }

  return v9;
}

+ (id)modifiedTraitCollectionForHostTraitCollection:(id)collection
{
  collectionCopy = collection;
  v4 = collectionCopy;
  if (dyld_program_sdk_at_least())
  {
    v5 = +[UITraitCollection _fallbackTraitCollection];
    v4 = [(UITraitCollection *)collectionCopy _traitCollectionByPopulatingUnspecifiedTraitsWithValuesFromTraitCollection:v5];
  }

  v6 = [v4 traitCollectionByModifyingTraits:&__block_literal_global_506];

  return v6;
}

- (void)scene:(id)scene didUpdateSettings:(id)settings
{
  v33 = *MEMORY[0x1E69E9840];
  settingsCopy = settings;
  settingsDiff = [settingsCopy settingsDiff];
  v7 = [settingsDiff containsProperty:sel_tintColor];

  settingsDiff2 = [settingsCopy settingsDiff];
  v9 = [settingsDiff2 containsProperty:sel_traitCollection];

  if ((v7 & 1) != 0 || v9)
  {
    windowScene = [(_UISceneHostingTraitCollectionPropagationClientComponent *)self windowScene];
    settings = [settingsCopy settings];
    if (*(&self->super._invalid + 1))
    {
      if (!v7)
      {
        goto LABEL_5;
      }
    }

    else
    {
      clientScene = [(FBSSceneComponent *)self clientScene];
      traitCollectionModificationComponent = [clientScene traitCollectionModificationComponent];
      [traitCollectionModificationComponent setupWithWindowScene:windowScene];

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
        traitCollection = [settings traitCollection];
        v23 = [v21 modifiedTraitCollectionForHostTraitCollection:traitCollection];

        clientScene2 = [(FBSSceneComponent *)self clientScene];
        traitCollectionModificationComponent2 = [clientScene2 traitCollectionModificationComponent];
        v26 = [traitCollectionModificationComponent2 modifiedTraitCollectionForHostTraitCollection:v23];

        if (v26)
        {
          v27 = v26;

          v23 = v27;
        }

        [windowScene _hostTraitCollectionDidChange:v23];

        goto LABEL_19;
      }
    }

    tintColor = [settings tintColor];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    windowScene2 = [(_UISceneHostingTraitCollectionPropagationClientComponent *)self windowScene];
    windows = [windowScene2 windows];

    v17 = [windows countByEnumeratingWithState:&v28 objects:v32 count:16];
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
            objc_enumerationMutation(windows);
          }

          [*(*(&v28 + 1) + 8 * i) setTintColor:tintColor];
        }

        v18 = [windows countByEnumeratingWithState:&v28 objects:v32 count:16];
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