@interface PXGCombinedShaderSource
- (BOOL)isValidForEffects:(id)effects;
- (PXGCombinedShaderSource)initWithEffects:(id)effects;
- (id)aliasedUniformsForEffects:(id)effects;
- (id)description;
@end

@implementation PXGCombinedShaderSource

- (id)aliasedUniformsForEffects:(id)effects
{
  v3 = MEMORY[0x277CBEB18];
  effectsCopy = effects;
  v5 = objc_alloc_init(v3);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__PXGCombinedShaderSource_aliasedUniformsForEffects___block_invoke;
  v8[3] = &unk_2782AC458;
  v6 = v5;
  v9 = v6;
  [effectsCopy enumerateObjectsUsingBlock:v8];

  return v6;
}

void __53__PXGCombinedShaderSource_aliasedUniformsForEffects___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a2 shader];
  v6 = [v5 uniforms];

  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(a1 + 32);
        v12 = [[PXGUniformAlias alloc] initWithIndex:a3 aliasing:*(*(&v13 + 1) + 8 * v10)];
        [v11 addObject:v12];

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }
}

- (BOOL)isValidForEffects:(id)effects
{
  v26 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  v5 = self->_combinedShaderSources;
  v6 = [effectsCopy count];
  if (v6 == [(NSArray *)v5 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = effectsCopy;
    v8 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v20 = effectsCopy;
      v10 = 0;
      v11 = *v22;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v7);
          }

          shader = [*(*(&v21 + 1) + 8 * i) shader];
          source = [shader source];
          v15 = [(NSArray *)v5 objectAtIndexedSubscript:v10];
          v16 = v15;
          if (source == v15)
          {
          }

          else
          {
            v17 = [source isEqual:v15];

            if ((v17 & 1) == 0)
            {
              v18 = 0;
              goto LABEL_15;
            }
          }

          ++v10;
        }

        v9 = [v7 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v9);
      v18 = 1;
LABEL_15:
      effectsCopy = v20;
    }

    else
    {
      v18 = 1;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p _combinedUniforms:%@", v5, self, self->_combinedUniforms];

  return v6;
}

- (PXGCombinedShaderSource)initWithEffects:(id)effects
{
  v72 = *MEMORY[0x277D85DE8];
  effectsCopy = effects;
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v45 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v36 = objc_alloc_init(MEMORY[0x277CCAB68]);
  v65 = 0u;
  v66 = 0u;
  v67 = 0u;
  v68 = 0u;
  obj = effectsCopy;
  v38 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v38)
  {
    v6 = 0;
    v37 = *v66;
    v34 = v5;
    v35 = v4;
    do
    {
      for (i = 0; i != v38; ++i)
      {
        if (*v66 != v37)
        {
          objc_enumerationMutation(obj);
        }

        shader = [*(*(&v65 + 1) + 8 * i) shader];
        source = [shader source];
        if (source)
        {
          v40 = i;
          [v4 addObject:source];
          v39 = shader;
          uniforms = [shader uniforms];
          v60 = MEMORY[0x277D85DD0];
          v61 = 3221225472;
          v62 = __43__PXGCombinedShaderSource_initWithEffects___block_invoke;
          v63 = &__block_descriptor_40_e32___PXGUniform_16__0__PXGUniform_8l;
          v41 = v6;
          v64 = v6;
          v11 = PXMap();

          v44 = v11;
          [v5 addObjectsFromArray:v11];
          v58 = 0u;
          v59 = 0u;
          v57 = 0u;
          v56 = 0u;
          v42 = +[PXGShaderFunction shaderFunctions];
          v47 = [v42 countByEnumeratingWithState:&v56 objects:v70 count:16];
          if (v47)
          {
            v46 = *v57;
            v43 = source;
            do
            {
              for (j = 0; j != v47; ++j)
              {
                if (*v57 != v46)
                {
                  objc_enumerationMutation(v42);
                }

                v13 = *(*(&v56 + 1) + 8 * j);
                v14 = [source sourceForShaderFunction:v13];
                v15 = v14;
                if (v14)
                {
                  v48 = v14;
                  v16 = [v45 objectForKeyedSubscript:v13];
                  if (!v16)
                  {
                    v16 = objc_alloc_init(MEMORY[0x277CCAB68]);
                    [v45 setObject:v16 forKeyedSubscript:v13];
                  }

                  [v16 appendString:@"{\n"];
                  v54 = 0u;
                  v55 = 0u;
                  v52 = 0u;
                  v53 = 0u;
                  v17 = v44;
                  v18 = [v17 countByEnumeratingWithState:&v52 objects:v69 count:16];
                  if (v18)
                  {
                    v19 = v18;
                    v20 = *v53;
                    do
                    {
                      for (k = 0; k != v19; ++k)
                      {
                        if (*v53 != v20)
                        {
                          objc_enumerationMutation(v17);
                        }

                        v22 = *(*(&v52 + 1) + 8 * k);
                        original = [v22 original];
                        declaration = [original declaration];
                        name = [v22 name];
                        [v16 appendFormat:@"%@ = %@;\n", declaration, name];
                      }

                      v19 = [v17 countByEnumeratingWithState:&v52 objects:v69 count:16];
                    }

                    while (v19);
                  }

                  v15 = v48;
                  [v16 appendString:v48];
                  [v16 appendString:@"\n}\n"];

                  source = v43;
                }
              }

              v47 = [v42 countByEnumeratingWithState:&v56 objects:v70 count:16];
            }

            while (v47);
          }

          shader = v39;
          source2 = [v39 source];
          otherSource = [source2 otherSource];
          [v36 appendString:otherSource];

          v6 = v41 + 1;
          v5 = v34;
          v4 = v35;
          i = v40;
        }
      }

      v38 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v38);
  }

  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __43__PXGCombinedShaderSource_initWithEffects___block_invoke_2;
  v50[3] = &unk_2782AC430;
  v28 = v36;
  v51 = v28;
  [v45 enumerateKeysAndObjectsUsingBlock:v50];
  v49.receiver = self;
  v49.super_class = PXGCombinedShaderSource;
  v29 = [(PXGShaderSource *)&v49 initWithSource:v28];
  v30 = v29;
  if (v29)
  {
    objc_storeStrong(&v29->_combinedUniforms, v5);
    objc_storeStrong(&v30->_combinedShaderSources, v4);
    v30->_isEmpty = [v28 length] == 0;
  }

  return v30;
}

PXGUniformAlias *__43__PXGCombinedShaderSource_initWithEffects___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[PXGUniformAlias alloc] initWithIndex:*(a1 + 32) aliasing:v3];

  return v4;
}

uint64_t __43__PXGCombinedShaderSource_initWithEffects___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [a2 name];
  [v5 appendFormat:@"void %@() {\n", v7];

  [*(a1 + 32) appendString:v6];
  v8 = *(a1 + 32);

  return [v8 appendString:@"}\n"];
}

@end