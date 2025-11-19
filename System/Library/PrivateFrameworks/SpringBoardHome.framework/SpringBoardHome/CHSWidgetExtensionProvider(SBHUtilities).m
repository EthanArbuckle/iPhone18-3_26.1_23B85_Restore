@interface CHSWidgetExtensionProvider(SBHUtilities)
- (id)sbh_controlDescriptorsByExtensionIdentifier;
- (id)sbh_defaultDescriptorForContainerBundleIdentifier:()SBHUtilities;
- (id)sbh_defaultDescriptorForContainerBundleIdentifier:()SBHUtilities gridSizeClassDomain:;
- (id)sbh_descriptorForWidgetIdentifiable:()SBHUtilities;
- (id)sbh_descriptorWithKind:()SBHUtilities extensionBundleIdentifier:containerBundleIdentifier:;
- (id)sbh_descriptors;
- (id)sbh_descriptorsByExtensionIdentifier;
- (id)sbh_extensionForWidget:()SBHUtilities;
- (id)sbh_extensionForWidgetIdentifiable:()SBHUtilities;
- (id)sbh_extensions;
@end

@implementation CHSWidgetExtensionProvider(SBHUtilities)

- (id)sbh_extensions
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 containers];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) allExtensions];
        [v2 unionSet:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)sbh_descriptors
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 sbh_extensions];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v10 + 1) + 8 * i) orderedWidgetDescriptors];
        [v2 addObjectsFromArray:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)sbh_descriptorsByExtensionIdentifier
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 sbh_extensions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 identity];
        v10 = [v9 extensionBundleIdentifier];
        v11 = [v8 orderedWidgetDescriptors];
        [v2 setObject:v11 forKey:v10];
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

- (id)sbh_descriptorForWidgetIdentifiable:()SBHUtilities
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [a1 sbh_extensions];
  v6 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v24;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v11 = [v10 orderedWidgetDescriptors];
        v12 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v20;
          while (2)
          {
            for (j = 0; j != v13; ++j)
            {
              if (*v20 != v14)
              {
                objc_enumerationMutation(v11);
              }

              v16 = *(*(&v19 + 1) + 8 * j);
              if ([v16 matches:v4])
              {
                v17 = v16;

                goto LABEL_19;
              }
            }

            v13 = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v17 = 0;
    }

    while (v7);
  }

  else
  {
    v17 = 0;
  }

LABEL_19:

  return v17;
}

- (id)sbh_extensionForWidget:()SBHUtilities
{
  v4 = [a3 extensionIdentity];
  v5 = [v4 extensionBundleIdentifier];
  v6 = [a1 widgetExtensionContainerForExtensionBundleIdentifier:v5];

  v7 = [v6 extensionForExtensionIdentity:v4];

  return v7;
}

- (id)sbh_extensionForWidgetIdentifiable:()SBHUtilities
{
  v4 = [a3 extensionIdentity];
  v5 = [v4 extensionBundleIdentifier];
  v6 = [a1 widgetExtensionContainerForExtensionBundleIdentifier:v5];

  v7 = [v6 extensionForExtensionIdentity:v4];

  return v7;
}

- (id)sbh_descriptorWithKind:()SBHUtilities extensionBundleIdentifier:containerBundleIdentifier:
{
  v46 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v35 = a4;
  v33 = a5;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v9 = [a1 sbh_extensions];
  v30 = [v9 countByEnumeratingWithState:&v40 objects:v45 count:16];
  if (v30)
  {
    v10 = *v41;
    v32 = v9;
    v29 = *v41;
    do
    {
      v11 = 0;
      do
      {
        if (*v41 != v10)
        {
          objc_enumerationMutation(v9);
        }

        v31 = v11;
        v12 = *(*(&v40 + 1) + 8 * v11);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v13 = [v12 orderedWidgetDescriptors];
        v14 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v14)
        {
          v15 = v14;
          v16 = *v37;
          do
          {
            v17 = 0;
            v34 = v15;
            do
            {
              if (*v37 != v16)
              {
                objc_enumerationMutation(v13);
              }

              v18 = *(*(&v36 + 1) + 8 * v17);
              v19 = [v18 extensionIdentity];
              v20 = [v18 kind];
              if ([v20 isEqualToString:v8])
              {
                v21 = [v19 extensionBundleIdentifier];
                if ([v21 isEqualToString:v35])
                {
                  [v19 containerBundleIdentifier];
                  v22 = v16;
                  v23 = v8;
                  v25 = v24 = v13;
                  v26 = [v25 isEqualToString:v33];

                  v13 = v24;
                  v8 = v23;
                  v16 = v22;
                  v15 = v34;

                  if (v26)
                  {
                    v27 = v18;

                    v9 = v32;
                    goto LABEL_22;
                  }
                }

                else
                {
                }
              }

              ++v17;
            }

            while (v15 != v17);
            v15 = [v13 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v15);
        }

        v11 = v31 + 1;
        v9 = v32;
        v10 = v29;
      }

      while (v31 + 1 != v30);
      v27 = 0;
      v30 = [v32 countByEnumeratingWithState:&v40 objects:v45 count:16];
    }

    while (v30);
  }

  else
  {
    v27 = 0;
  }

LABEL_22:

  return v27;
}

- (id)sbh_defaultDescriptorForContainerBundleIdentifier:()SBHUtilities
{
  v4 = a3;
  v5 = +[SBHIconGridSizeClassDomain globalDomain];
  v6 = [a1 sbh_defaultDescriptorForContainerBundleIdentifier:v4 gridSizeClassDomain:v5];

  return v6;
}

- (id)sbh_defaultDescriptorForContainerBundleIdentifier:()SBHUtilities gridSizeClassDomain:
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [a1 widgetExtensionContainerForContainerBundleIdentifier:a3];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 localExtensions];
    if ([v9 count])
    {
      v10 = [v9 firstObject];
      [v10 orderedWidgetDescriptors];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v11 = v20 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v12)
      {
        v13 = *v18;
        while (2)
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v17 + 1) + 8 * i);
            if ([v6 filterKnownCHSWidgetFamilies:{objc_msgSend(v15, "supportedFamilies", v17)}])
            {
              v12 = v15;
              goto LABEL_14;
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (id)sbh_controlDescriptorsByExtensionIdentifier
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = [a1 sbh_extensions];
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = [v8 identity];
        v10 = [v9 extensionBundleIdentifier];
        v11 = [v8 orderedControlDescriptors];
        if ([v11 count])
        {
          [v2 setObject:v11 forKey:v10];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return v2;
}

@end