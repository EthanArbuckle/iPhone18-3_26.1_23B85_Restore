@interface SXMutableDOMAnalysis
- (void)addComponent:(id)a3 parent:(id)a4;
- (void)addComponent:(id)a3 type:(id)a4 role:(int)a5;
- (void)addComponentStyle:(id)a3 component:(id)a4;
- (void)addComponentTextStyle:(id)a3 component:(id)a4;
- (void)addTextStyle:(id)a3 component:(id)a4;
- (void)removeComponent:(id)a3;
- (void)removeComponentStyle:(id)a3 component:(id)a4;
- (void)removeComponentTextStyle:(id)a3 component:(id)a4;
- (void)removeTextStyle:(id)a3 component:(id)a4;
@end

@implementation SXMutableDOMAnalysis

- (void)addComponent:(id)a3 type:(id)a4 role:(int)a5
{
  v5 = *&a5;
  typeToComponentsMap = self->super._typeToComponentsMap;
  v9 = a4;
  v10 = a3;
  v11 = [(NSMutableDictionary *)typeToComponentsMap objectForKey:v9];
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

  [v19 addObject:v10];
  [v24 addObject:v10];
  [(NSMutableDictionary *)self->super._typeToComponentsMap setObject:v24 forKey:v9];
  [(NSMutableDictionary *)self->super._componentToTypeMap setObject:v9 forKey:v10];

  v20 = self->super._roleToComponentsMap;
  v21 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  [(NSMutableDictionary *)v20 setObject:v19 forKey:v21];

  componentToRoleMap = self->super._componentToRoleMap;
  v23 = [MEMORY[0x1E696AD98] numberWithInt:v5];
  [(NSMutableDictionary *)componentToRoleMap setObject:v23 forKey:v10];
}

- (void)addComponentStyle:(id)a3 component:(id)a4
{
  if (a3)
  {
    componentToComponentStylesMap = self->super._componentToComponentStylesMap;
    v7 = a4;
    v8 = a3;
    v10 = [(SXDOMAnalysis *)self identifiersForKey:v7 map:componentToComponentStylesMap];
    [v10 addObject:v8];
    v9 = [(SXDOMAnalysis *)self identifiersForKey:v8 map:self->super._componentStyleToComponentsMap];

    [v9 addObject:v7];
  }
}

- (void)addComponentTextStyle:(id)a3 component:(id)a4
{
  if (a3)
  {
    componentToComponentTextStylesMap = self->super._componentToComponentTextStylesMap;
    v7 = a4;
    v8 = a3;
    v10 = [(SXDOMAnalysis *)self identifiersForKey:v7 map:componentToComponentTextStylesMap];
    [v10 addObject:v8];
    v9 = [(SXDOMAnalysis *)self identifiersForKey:v8 map:self->super._componentTextStyleToComponentsMap];

    [v9 addObject:v7];
  }
}

- (void)addTextStyle:(id)a3 component:(id)a4
{
  if (a3)
  {
    componentToTextStylesMap = self->super._componentToTextStylesMap;
    v7 = a4;
    v8 = a3;
    v10 = [(SXDOMAnalysis *)self identifiersForKey:v7 map:componentToTextStylesMap];
    [v10 addObject:v8];
    v9 = [(SXDOMAnalysis *)self identifiersForKey:v8 map:self->super._textStyleToComponentsMap];

    [v9 addObject:v7];
  }
}

- (void)addComponent:(id)a3 parent:(id)a4
{
  if (a3 && a4)
  {
    componentToChildComponentsMap = self->super._componentToChildComponentsMap;
    v7 = a4;
    v8 = a3;
    v9 = [(SXDOMAnalysis *)self identifiersForKey:v7 map:componentToChildComponentsMap];
    [v9 addObject:v8];
    [(NSMutableDictionary *)self->super._componentToParentComponentMap setObject:v7 forKey:v8];
  }
}

- (void)removeComponent:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v5 = [(SXDOMAnalysis *)self componentStylesForComponent:v4];
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

        [(SXMutableDOMAnalysis *)self removeComponentStyle:*(*(&v33 + 1) + 8 * v9++) component:v4];
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
  v10 = [(SXDOMAnalysis *)self componentTextStylesForComponent:v4];
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

        [(SXMutableDOMAnalysis *)self removeComponentTextStyle:*(*(&v29 + 1) + 8 * v14++) component:v4];
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
  v15 = [(SXDOMAnalysis *)self textStylesForComponent:v4, 0];
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

        [(SXMutableDOMAnalysis *)self removeTextStyle:*(*(&v25 + 1) + 8 * v19++) component:v4];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v17);
  }

  v20 = [(SXDOMAnalysis *)self typeForComponent:v4];
  v21 = [(SXDOMAnalysis *)self identifiersForKey:v20 map:self->super._typeToComponentsMap];
  [v21 removeObject:v4];
  [(NSMutableDictionary *)self->super._componentToTypeMap removeObjectForKey:v4];
  v22 = [(SXDOMAnalysis *)self roleForComponent:v4];
  v23 = [MEMORY[0x1E696AD98] numberWithInt:v22];
  v24 = [(SXDOMAnalysis *)self identifiersForKey:v23 map:self->super._roleToComponentsMap];

  [v24 removeObject:v4];
  [(NSMutableDictionary *)self->super._componentToRoleMap removeObjectForKey:v4];
}

- (void)removeComponentStyle:(id)a3 component:(id)a4
{
  componentToComponentStylesMap = self->super._componentToComponentStylesMap;
  v7 = a4;
  v8 = a3;
  v10 = [(SXDOMAnalysis *)self identifiersForKey:v7 map:componentToComponentStylesMap];
  [v10 removeObject:v8];
  v9 = [(SXDOMAnalysis *)self identifiersForKey:v8 map:self->super._componentStyleToComponentsMap];

  [v9 removeObject:v7];
}

- (void)removeComponentTextStyle:(id)a3 component:(id)a4
{
  componentToComponentTextStylesMap = self->super._componentToComponentTextStylesMap;
  v7 = a4;
  v8 = a3;
  v10 = [(SXDOMAnalysis *)self identifiersForKey:v7 map:componentToComponentTextStylesMap];
  [v10 removeObject:v8];
  v9 = [(SXDOMAnalysis *)self identifiersForKey:v8 map:self->super._componentTextStyleToComponentsMap];

  [v9 removeObject:v7];
}

- (void)removeTextStyle:(id)a3 component:(id)a4
{
  componentToTextStylesMap = self->super._componentToTextStylesMap;
  v7 = a4;
  v8 = a3;
  v10 = [(SXDOMAnalysis *)self identifiersForKey:v7 map:componentToTextStylesMap];
  [v10 removeObject:v8];
  v9 = [(SXDOMAnalysis *)self identifiersForKey:v8 map:self->super._textStyleToComponentsMap];

  [v9 removeObject:v7];
}

@end