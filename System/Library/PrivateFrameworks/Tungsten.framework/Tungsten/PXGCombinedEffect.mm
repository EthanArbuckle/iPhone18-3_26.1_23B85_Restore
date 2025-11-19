@interface PXGCombinedEffect
+ (id)combinedShaderSourceForEffects:(id)a3;
- (PXGCombinedEffect)initWithEffects:(id)a3;
- (id)description;
@end

@implementation PXGCombinedEffect

- (id)description
{
  v3 = [(PXGCombinedEffect *)self effects];
  v4 = [v3 valueForKey:@"class"];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = MEMORY[0x277CCACA8];
  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  v9 = [v6 stringWithFormat:@"<%@:%p effectId = %d, subEffects = %@>", v8, self, -[PXGEffect effectId](self, "effectId"), v5];;

  return v9;
}

- (PXGCombinedEffect)initWithEffects:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v7 = a3;
  if (![v7 count])
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"PXGCombinedEffect.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"effects.count > 0"}];
  }

  v8 = [v7 firstObject];
  v9 = [v8 entityManager];
  v46.receiver = self;
  v46.super_class = PXGCombinedEffect;
  v10 = [(PXGEffect *)&v46 initWithEntityManager:v9];

  if (v10)
  {
    v36 = a2;
    v11 = [v7 copy];
    effects = v10->_effects;
    v37 = v10;
    v10->_effects = v11;

    v41 = PXGShaderOpcodesNull;
    v13 = dword_27CD3D148;
    v38 = v7;
    v39 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v42 objects:v47 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v43;
      obj = v14;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v43 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v42 + 1) + 8 * i);
          v20 = [v19 shader];
          v21 = [v20 opcodes];
          v23 = v22;

          if (v21 != PXGShaderOpcodesNull || dword_27CD3D148 != v23)
          {
            v3 = v3 & 0xFFFFFFFF00000000 | v13;
            v4 = v4 & 0xFFFFFFFF00000000 | v23;
            v41 = PXGShaderOpcodesAppending(v41, v3, v21, v4);
            v13 = v25;
            v26 = [v19 shader];
            v27 = [v26 uniforms];
            [v39 addObjectsFromArray:v27];
          }
        }

        v14 = obj;
        v16 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
      }

      while (v16);
    }

    v28 = [PXGCombinedEffect combinedShaderSourceForEffects:v14];
    v29 = v28;
    v10 = v37;
    if (v28)
    {
      v30 = [v28 aliasedUniformsForEffects:v14];
      [v39 addObjectsFromArray:v30];

      if (v41 != PXGShaderOpcodesNull || v13 != dword_27CD3D148)
      {
        v31 = [MEMORY[0x277CCA890] currentHandler];
        [v31 handleFailureInMethod:v36 object:v37 file:@"PXGCombinedEffect.m" lineNumber:103 description:{@"Mixing opcode and source backed shaders isn't currently supported: %@", v14}];
      }
    }

    v32 = [[PXGShader alloc] initWithOpcodes:v41 source:v13 uniforms:v29 components:v39, 0];
    combinedShader = v37->_combinedShader;
    v37->_combinedShader = v32;

    v7 = v38;
  }

  return v10;
}

+ (id)combinedShaderSourceForEffects:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v14 + 1) + 8 * v9) shader];
        v11 = [v10 source];

        if (v11)
        {
          v12 = [MEMORY[0x277CCA890] currentHandler];
          [v12 handleFailureInMethod:a2 object:a1 file:@"PXGCombinedEffect.m" lineNumber:37 description:{@"Dynamic shader source is not currently supported, see rdar://78532560"}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  return 0;
}

@end