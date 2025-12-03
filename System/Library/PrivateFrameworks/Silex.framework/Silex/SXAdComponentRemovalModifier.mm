@interface SXAdComponentRemovalModifier
- (void)modifyDOM:(id)m context:(id)context;
- (void)removeAdComponentsEmbeddedWithinContainer:(id)container childComponents:(id)components;
@end

@implementation SXAdComponentRemovalModifier

- (void)modifyDOM:(id)m context:(id)context
{
  components = [m components];
  [(SXAdComponentRemovalModifier *)self removeAdComponentsEmbeddedWithinContainer:0 childComponents:components];
}

- (void)removeAdComponentsEmbeddedWithinContainer:(id)container childComponents:(id)components
{
  v22 = *MEMORY[0x1E69E9840];
  componentsCopy = components;
  contentDisplay = [container contentDisplay];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  allComponents = [componentsCopy allComponents];
  v8 = [allComponents countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      v11 = 0;
      do
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(allComponents);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          identifier2 = v12;
          identifier = [identifier2 identifier];
          v15 = [componentsCopy componentsForContainerComponentWithIdentifier:identifier];

          if (v15)
          {
            [(SXAdComponentRemovalModifier *)self removeAdComponentsEmbeddedWithinContainer:identifier2 childComponents:v15];
          }

          goto LABEL_13;
        }

        if (contentDisplay && [v12 conformsToProtocol:&unk_1F53D7DA8])
        {
          identifier2 = [v12 identifier];
          [componentsCopy removeComponentWithIdentifier:identifier2];
LABEL_13:
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [allComponents countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

@end