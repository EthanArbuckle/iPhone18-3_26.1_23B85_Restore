@interface SXAdComponentRemovalModifier
- (void)modifyDOM:(id)a3 context:(id)a4;
- (void)removeAdComponentsEmbeddedWithinContainer:(id)a3 childComponents:(id)a4;
@end

@implementation SXAdComponentRemovalModifier

- (void)modifyDOM:(id)a3 context:(id)a4
{
  v5 = [a3 components];
  [(SXAdComponentRemovalModifier *)self removeAdComponentsEmbeddedWithinContainer:0 childComponents:v5];
}

- (void)removeAdComponentsEmbeddedWithinContainer:(id)a3 childComponents:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [a3 contentDisplay];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = [v5 allComponents];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * v11);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = v12;
          v14 = [v13 identifier];
          v15 = [v5 componentsForContainerComponentWithIdentifier:v14];

          if (v15)
          {
            [(SXAdComponentRemovalModifier *)self removeAdComponentsEmbeddedWithinContainer:v13 childComponents:v15];
          }

          goto LABEL_13;
        }

        if (v6 && [v12 conformsToProtocol:&unk_1F53D7DA8])
        {
          v13 = [v12 identifier];
          [v5 removeComponentWithIdentifier:v13];
LABEL_13:
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }
}

@end