@interface SXComponentDependencyResolver
- (id)componentNodeForComponentIdentifier:(uint64_t)a3 andAttribute:;
- (id)componentNodesDependentOnComponentNode:(uint64_t)a3;
- (id)createComponentNodesForComponentIdentifiers:(uint64_t)a3;
- (id)debugDescription;
- (id)solvableOrder;
- (id)solvedOrderForComponentNodes:(uint64_t)a3;
- (void)addComponentNode:(uint64_t)a1;
- (void)addDependency:(uint64_t)a1;
- (void)initWithComponentIdentifiers:(void *)a1;
- (void)resolveStack:(void *)a3 withSolvedNodes:;
@end

@implementation SXComponentDependencyResolver

- (void)initWithComponentIdentifiers:(void *)a1
{
  v31[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = SXComponentDependencyResolver;
    a1 = objc_msgSendSuper2(&v28, sel_init);
    if (a1)
    {
      v5 = [MEMORY[0x1E695DF70] array];
      v6 = a1[2];
      a1[2] = v5;

      v30[0] = &unk_1F538A4C0;
      v7 = [MEMORY[0x1E695DF90] dictionary];
      v30[1] = &unk_1F538A4D8;
      v31[0] = v7;
      v8 = [MEMORY[0x1E695DF90] dictionary];
      v31[1] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v31 forKeys:v30 count:2];
      v10 = a1[3];
      a1[3] = v9;

      v17 = [(SXComponentDependencyResolver *)a1 createComponentNodesForComponentIdentifiers:v3, v11, v12, v13, v14, v15, v16, v25, v26, v27];
      v18 = OUTLINED_FUNCTION_0_8();
      v20 = [v19 countByEnumeratingWithState:&v25 objects:v29 count:{16, v18}];
      if (v20)
      {
        v21 = v20;
        v22 = *v27;
        do
        {
          v23 = 0;
          do
          {
            OUTLINED_FUNCTION_2_2();
            if (v24 != v22)
            {
              objc_enumerationMutation(v17);
            }

            [(SXComponentDependencyResolver *)a1 addComponentNode:?];
          }

          while (v21 != v23);
          v21 = [v17 countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v21);
      }
    }
  }

  return a1;
}

- (id)createComponentNodesForComponentIdentifiers:(uint64_t)a3
{
  OUTLINED_FUNCTION_4_1();
  v12 = v11;
  v14 = v13;
  if (v12)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_0_8();
    v16 = v14;
    OUTLINED_FUNCTION_1_3();
    v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
    if (v18)
    {
      v19 = v18;
      v20 = *a11;
      do
      {
        v21 = 0;
        do
        {
          OUTLINED_FUNCTION_2_2();
          if (v22 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(a10 + 8 * v21);
          v24 = [[SXComponentNode alloc] initWithComponentIdentifier:v23 andAttribute:1];
          [v15 addObject:v24];
          v25 = [[SXComponentNode alloc] initWithComponentIdentifier:v23 andAttribute:2];
          [v15 addObject:v25];

          ++v21;
        }

        while (v19 != v21);
        OUTLINED_FUNCTION_1_3();
        v19 = [v16 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v19);
    }
  }

  OUTLINED_FUNCTION_3_2();

  return v26;
}

- (void)addComponentNode:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 24);
    v4 = MEMORY[0x1E696AD98];
    v5 = a2[2];
    v6 = a2;
    v7 = [v4 numberWithInteger:v5];
    v9 = [v3 objectForKey:v7];

    v8 = [(SXFullscreenCaption *)v6 text];
    [v9 setObject:v6 forKey:v8];

    [*(a1 + 16) addObject:v6];
  }
}

- (void)addDependency:(uint64_t)a1
{
  if (a1)
  {
    v3 = *(a1 + 8);
    *(a1 + 8) = 0;
    v4 = a2;

    v5 = [(SXComponentDependencyResolver *)a1 componentNodeForComponentIdentifier:*(v4 + 3) andAttribute:?];
    [(SXComponentNode *)v5 addComponentDependency:v4];
  }
}

- (id)componentNodeForComponentIdentifier:(uint64_t)a3 andAttribute:
{
  if (a1)
  {
    v4 = *(a1 + 24);
    v5 = MEMORY[0x1E696AD98];
    v6 = a2;
    v7 = [v5 numberWithInteger:a3];
    v8 = [v4 objectForKey:v7];

    v9 = [v8 objectForKey:v6];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)solvableOrder
{
  if (a1)
  {
    v2 = a1;
    if (!a1[1])
    {
      v5 = a1[2];
      v12 = [(SXComponentDependencyResolver *)v2 solvedOrderForComponentNodes:v5, v6, v7, v8, v9, v10, v11, v14, v15, vars0];
      v13 = *(v2 + 8);
      *(v2 + 8) = v12;
    }

    v3 = *(v2 + 8);
    if (!v3)
    {
      v3 = MEMORY[0x1E695E0F0];
    }

    a1 = v3;
    v1 = vars8;
  }

  return a1;
}

- (id)solvedOrderForComponentNodes:(uint64_t)a3
{
  OUTLINED_FUNCTION_4_1();
  v12 = v11;
  v14 = v13;
  if (v12)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    v16 = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_0_8();
    v17 = v14;
    OUTLINED_FUNCTION_1_3();
    v19 = [v18 countByEnumeratingWithState:? objects:? count:?];
    if (v19)
    {
      v20 = v19;
      v21 = *a11;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          OUTLINED_FUNCTION_2_2();
          if (v23 != v21)
          {
            objc_enumerationMutation(v17);
          }

          [v15 addObject:*(a10 + 8 * i)];
          [(SXComponentDependencyResolver *)v12 resolveStack:v15 withSolvedNodes:v16];
        }

        OUTLINED_FUNCTION_1_3();
        v20 = [v17 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v20);
    }
  }

  OUTLINED_FUNCTION_3_2();

  return v24;
}

- (id)componentNodesDependentOnComponentNode:(uint64_t)a3
{
  OUTLINED_FUNCTION_4_1();
  v12 = v11;
  v14 = v13;
  if (v12)
  {
    v15 = [MEMORY[0x1E695DF70] array];
    OUTLINED_FUNCTION_0_8();
    v16 = *(v12 + 16);
    OUTLINED_FUNCTION_1_3();
    v18 = [v17 countByEnumeratingWithState:? objects:? count:?];
    if (v18)
    {
      v19 = v18;
      v20 = *a11;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          OUTLINED_FUNCTION_2_2();
          if (v22 != v20)
          {
            objc_enumerationMutation(v16);
          }

          v23 = *(a10 + 8 * i);
          if ([(SXComponentNode *)v23 hasDependencyToComponentIdentifier:*(v14 + 2) attribute:?])
          {
            [v15 addObject:v23];
          }
        }

        OUTLINED_FUNCTION_1_3();
        v19 = [v16 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v19);
    }
  }

  OUTLINED_FUNCTION_3_2();

  return v24;
}

- (void)resolveStack:(void *)a3 withSolvedNodes:
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (a1 && [v5 count])
  {
    v16 = v5;
    do
    {
      v7 = [v5 lastObject];
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v8 = [(SXComponentNode *)v7 dependencies];
      v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v9)
      {
        v17 = v7;
        v10 = *v19;
        while (2)
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v19 != v10)
            {
              objc_enumerationMutation(v8);
            }

            v12 = [(SXComponentDependencyResolver *)a1 componentNodeForComponentIdentifier:*(*(*(&v18 + 1) + 8 * i) + 32) andAttribute:?];
            if ([v6 indexOfObjectIdenticalTo:v12] == 0x7FFFFFFFFFFFFFFFLL)
            {
              v5 = v16;
              LOBYTE(v9) = [v16 containsObject:v12];
              if ((v9 & 1) == 0)
              {
                [v16 addObject:v12];
              }

              goto LABEL_16;
            }
          }

          v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }

        v5 = v16;
LABEL_16:
        v7 = v17;
      }

      v13 = [v5 lastObject];

      if (v7 == v13)
      {
        [v5 removeLastObject];
        if ([v6 indexOfObjectIdenticalTo:v7] == 0x7FFFFFFFFFFFFFFFLL)
        {
          [v6 addObject:v7];
        }
      }

      v14 = [v5 count];
      v15 = v9 ^ 1;
      if (!v14)
      {
        v15 = 0;
      }
    }

    while ((v15 & 1) != 0);
  }
}

- (id)debugDescription
{
  v37 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E696AD60] stringWithString:@"\n----------- Dependency Graph -----------\n\n"];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  if (self)
  {
    componentNodes = self->_componentNodes;
  }

  else
  {
    componentNodes = 0;
  }

  obj = componentNodes;
  v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v24)
  {
    v23 = *v32;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v32 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v31 + 1) + 8 * i);
        if ([(SXFullscreenCaption *)v6 caption]== 2)
        {
          v7 = @"size";
        }

        else
        {
          v7 = @"position";
        }

        v8 = v7;
        v9 = [(SXFullscreenCaption *)v6 text];
        [v3 appendFormat:@"The %@ of %@ depends on:\n", v8, v9];

        v10 = [(SXComponentNode *)v6 dependencies];
        v11 = [v10 count];

        if (v11)
        {
          v25 = v8;
          v26 = i;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          v12 = [(SXComponentNode *)v6 dependencies];
          v13 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(v12);
                }

                v17 = *(*(&v27 + 1) + 8 * j);
                if ([(SXAnimatedImageFrame *)v17 index]== 2)
                {
                  v18 = @"size";
                }

                else
                {
                  v18 = @"position";
                }

                v19 = v18;
                v20 = [(SXFullscreenCaption *)v17 caption];
                [v3 appendFormat:@" - the %@ of component %@\n", v19, v20];
              }

              v14 = [v12 countByEnumeratingWithState:&v27 objects:v35 count:16];
            }

            while (v14);
          }

          v8 = v25;
          i = v26;
        }

        else
        {
          [v3 appendString:@" - none\n"];
        }

        [v3 appendString:@"\n"];
      }

      v24 = [(NSMutableArray *)obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v24);
  }

  [v3 appendString:@"\n----------- End of Dependency Graph -----------"];

  return v3;
}

@end