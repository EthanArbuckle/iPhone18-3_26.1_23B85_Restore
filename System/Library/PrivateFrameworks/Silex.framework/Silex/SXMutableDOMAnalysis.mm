@interface SXMutableDOMAnalysis
- (void)addComponent:(id)component parent:(id)parent;
- (void)addComponent:(id)component type:(id)type role:(int)role;
- (void)addComponentStyle:(id)style component:(id)component;
- (void)addComponentTextStyle:(id)style component:(id)component;
- (void)addTextStyle:(id)style component:(id)component;
- (void)removeComponent:(id)component;
- (void)removeComponentStyle:(id)style component:(id)component;
- (void)removeComponentTextStyle:(id)style component:(id)component;
- (void)removeTextStyle:(id)style component:(id)component;
@end

@implementation SXMutableDOMAnalysis

- (void)addComponent:(id)component type:(id)type role:(int)role
{
  v5 = *&role;
  typeToComponentsMap = self->super._typeToComponentsMap;
  typeCopy = type;
  componentCopy = component;
  v11 = [(NSMutableDictionary *)typeToComponentsMap objectForKey:typeCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E695DFA8] set];
  }

  v24 = v13;

  roleToComponentsMap = self->super._roleToComponentsMap;
  v15 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  v16 = [(NSMutableDictionary *)roleToComponentsMap objectForKey:v15];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = [MEMORY[0x1E695DFA8] set];
  }

  v19 = v18;

  [v19 addObject:componentCopy];
  [v24 addObject:componentCopy];
  [(NSMutableDictionary *)self->super._typeToComponentsMap setObject:v24 forKey:typeCopy];
  [(NSMutableDictionary *)self->super._componentToTypeMap setObject:typeCopy forKey:componentCopy];

  v20 = self->super._roleToComponentsMap;
  v21 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  [(NSMutableDictionary *)v20 setObject:v19 forKey:v21];

  componentToRoleMap = self->super._componentToRoleMap;
  v23 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  [(NSMutableDictionary *)componentToRoleMap setObject:v23 forKey:componentCopy];
}

- (void)addComponentStyle:(id)style component:(id)component
{
  if (style)
  {
    componentToComponentStylesMap = self->super._componentToComponentStylesMap;
    componentCopy = component;
    styleCopy = style;
    v10 = [(SXDOMAnalysis *)self identifiersForKey:componentCopy map:componentToComponentStylesMap];
    [v10 addObject:styleCopy];
    v9 = [(SXDOMAnalysis *)self identifiersForKey:styleCopy map:self->super._componentStyleToComponentsMap];

    [v9 addObject:componentCopy];
  }
}

- (void)addComponentTextStyle:(id)style component:(id)component
{
  if (style)
  {
    componentToComponentTextStylesMap = self->super._componentToComponentTextStylesMap;
    componentCopy = component;
    styleCopy = style;
    v10 = [(SXDOMAnalysis *)self identifiersForKey:componentCopy map:componentToComponentTextStylesMap];
    [v10 addObject:styleCopy];
    v9 = [(SXDOMAnalysis *)self identifiersForKey:styleCopy map:self->super._componentTextStyleToComponentsMap];

    [v9 addObject:componentCopy];
  }
}

- (void)addTextStyle:(id)style component:(id)component
{
  if (style)
  {
    componentToTextStylesMap = self->super._componentToTextStylesMap;
    componentCopy = component;
    styleCopy = style;
    v10 = [(SXDOMAnalysis *)self identifiersForKey:componentCopy map:componentToTextStylesMap];
    [v10 addObject:styleCopy];
    v9 = [(SXDOMAnalysis *)self identifiersForKey:styleCopy map:self->super._textStyleToComponentsMap];

    [v9 addObject:componentCopy];
  }
}

- (void)addComponent:(id)component parent:(id)parent
{
  if (component && parent)
  {
    componentToChildComponentsMap = self->super._componentToChildComponentsMap;
    parentCopy = parent;
    componentCopy = component;
    v9 = [(SXDOMAnalysis *)self identifiersForKey:parentCopy map:componentToChildComponentsMap];
    [v9 addObject:componentCopy];
    [(NSMutableDictionary *)self->super._componentToParentComponentMap setObject:parentCopy forKey:componentCopy];
  }
}

- (void)removeComponent:(id)component
{
  v40 = *MEMORY[0x1E69E9840];
  componentCopy = component;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [(SXDOMAnalysis *)self componentStylesForComponent:componentCopy];
  v6 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v34;
    do
    {
      v9 = 0;
      do
      {
        if (*v34 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(SXMutableDOMAnalysis *)self removeComponentStyle:*(*(&v33 + 1) + 8 * v9++) component:componentCopy];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v7);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v10 = [(SXDOMAnalysis *)self componentTextStylesForComponent:componentCopy];
  v11 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      v14 = 0;
      do
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(SXMutableDOMAnalysis *)self removeComponentTextStyle:*(*(&v29 + 1) + 8 * v14++) component:componentCopy];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v12);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v15 = [(SXDOMAnalysis *)self textStylesForComponent:componentCopy, 0];
  v16 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v26;
    do
    {
      v19 = 0;
      do
      {
        if (*v26 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(SXMutableDOMAnalysis *)self removeTextStyle:*(*(&v25 + 1) + 8 * v19++) component:componentCopy];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v17);
  }

  v20 = [(SXDOMAnalysis *)self typeForComponent:componentCopy];
  v21 = [(SXDOMAnalysis *)self identifiersForKey:v20 map:self->super._typeToComponentsMap];
  [v21 removeObject:componentCopy];
  [(NSMutableDictionary *)self->super._componentToTypeMap removeObjectForKey:componentCopy];
  v22 = [(SXDOMAnalysis *)self roleForComponent:componentCopy];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:v22];
  v24 = [(SXDOMAnalysis *)self identifiersForKey:v23 map:self->super._roleToComponentsMap];

  [v24 removeObject:componentCopy];
  [(NSMutableDictionary *)self->super._componentToRoleMap removeObjectForKey:componentCopy];
}

- (void)removeComponentStyle:(id)style component:(id)component
{
  componentToComponentStylesMap = self->super._componentToComponentStylesMap;
  componentCopy = component;
  styleCopy = style;
  v10 = [(SXDOMAnalysis *)self identifiersForKey:componentCopy map:componentToComponentStylesMap];
  [v10 removeObject:styleCopy];
  v9 = [(SXDOMAnalysis *)self identifiersForKey:styleCopy map:self->super._componentStyleToComponentsMap];

  [v9 removeObject:componentCopy];
}

- (void)removeComponentTextStyle:(id)style component:(id)component
{
  componentToComponentTextStylesMap = self->super._componentToComponentTextStylesMap;
  componentCopy = component;
  styleCopy = style;
  v10 = [(SXDOMAnalysis *)self identifiersForKey:componentCopy map:componentToComponentTextStylesMap];
  [v10 removeObject:styleCopy];
  v9 = [(SXDOMAnalysis *)self identifiersForKey:styleCopy map:self->super._componentTextStyleToComponentsMap];

  [v9 removeObject:componentCopy];
}

- (void)removeTextStyle:(id)style component:(id)component
{
  componentToTextStylesMap = self->super._componentToTextStylesMap;
  componentCopy = component;
  styleCopy = style;
  v10 = [(SXDOMAnalysis *)self identifiersForKey:componentCopy map:componentToTextStylesMap];
  [v10 removeObject:styleCopy];
  v9 = [(SXDOMAnalysis *)self identifiersForKey:styleCopy map:self->super._textStyleToComponentsMap];

  [v9 removeObject:componentCopy];
}

@end