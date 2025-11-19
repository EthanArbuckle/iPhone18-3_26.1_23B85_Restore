@interface PXGShader
- ($938B03310D06493B2963E5A84CB75A7E)opcodes;
- (BOOL)isEquivalentToShader:(id)a3;
- (BOOL)isOpaque;
- (PXGShader)init;
- (PXGShader)initWithOpcodes:(id)a3 source:(id)a4 uniforms:(id)a5 components:(id)a6;
- (id)description;
- (id)parameterBindingDeclarations;
- (void)encodeBindableArgumentsWithEncoder:(id)a3;
@end

@implementation PXGShader

- (BOOL)isOpaque
{
  [(PXGShader *)self opcodes];
  if (v3)
  {
    return 0;
  }

  v5 = [(PXGShader *)self source];
  if (v5)
  {
    v6 = [(PXGShader *)self source];
    v4 = [v6 isOpaque];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- ($938B03310D06493B2963E5A84CB75A7E)opcodes
{
  fragmentAlphaOpcodes = self->_opcodes.fragmentAlphaOpcodes;
  v3 = *&self->_opcodes.fragmentTextureCoordinateOpcodes;
  result.var0 = v3;
  result.var1 = HIDWORD(v3);
  result.var2 = fragmentAlphaOpcodes;
  return result;
}

- (void)encodeBindableArgumentsWithEncoder:(id)a3
{
  v71 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [(PXGShader *)self source];
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [(PXGShader *)self opcodes];
  if (v8 == PXGShaderOpcodesNull)
  {
    v10 = v9;
    v11 = dword_27CD3D148;

    if (v11 == v10)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  v12 = [MEMORY[0x277CCA890] currentHandler];
  [v12 handleFailureInMethod:a2 object:self file:@"PXGShader.m" lineNumber:126 description:{@"Invalid parameter not satisfying: %@", @"!self.source || PXGShaderOpcodesEqualToOpcodes(self.opcodes, PXGShaderOpcodesNull)"}];

LABEL_7:
  v13 = [v5 device];
  v14 = [PXGMetalRenderContext privateContextWithDevice:v13];

  v15 = [(PXGShader *)self opcodes];
  if (v15 != PXGShaderOpcodesNull || dword_27CD3D148 != v16)
  {
    valueUniformsData = self->_valueUniformsData;
    if (valueUniformsData)
    {
      v19 = [(NSMutableData *)valueUniformsData bytes];
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v65 = 0u;
      v20 = self->_valueUniforms;
      v21 = [(NSArray *)v20 countByEnumeratingWithState:&v62 objects:v70 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v63;
        do
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v63 != v23)
            {
              objc_enumerationMutation(v20);
            }

            [*(*(&v62 + 1) + 8 * i) encodableValue];
            *v19++ = v25;
          }

          v22 = [(NSArray *)v20 countByEnumeratingWithState:&v62 objects:v70 count:16];
        }

        while (v22);
      }

      [v5 setFragmentBytes:-[NSMutableData bytes](self->_valueUniformsData length:"bytes") atIndex:{-[NSMutableData length](self->_valueUniformsData, "length"), 5}];
    }

    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v26 = self->_texture2DUniforms;
    v27 = [(NSArray *)v26 countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v59;
      v30 = 5;
      do
      {
        for (j = 0; j != v28; ++j)
        {
          if (*v59 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v32 = [*(*(&v58 + 1) + 8 * j) bindableTextureForContext:v14];
          [v5 setFragmentTexture:v32 atIndex:v30++];
        }

        v28 = [(NSArray *)v26 countByEnumeratingWithState:&v58 objects:v69 count:16];
      }

      while (v28);
    }

    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v33 = self->_texture3DUniforms;
    v34 = [(NSArray *)v33 countByEnumeratingWithState:&v54 objects:v68 count:16];
    if (v34)
    {
      v35 = v34;
      v36 = *v55;
      v37 = 8;
      do
      {
        for (k = 0; k != v35; ++k)
        {
          if (*v55 != v36)
          {
            objc_enumerationMutation(v33);
          }

          v39 = [*(*(&v54 + 1) + 8 * k) bindableTextureForContext:v14];
          [v5 setFragmentTexture:v39 atIndex:v37++];
        }

        v35 = [(NSArray *)v33 countByEnumeratingWithState:&v54 objects:v68 count:16];
      }

      while (v35);
    }

LABEL_48:

    goto LABEL_49;
  }

  v40 = [(PXGShader *)self source];

  if (v40)
  {
    v67 = xmmword_21AE2D310;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v33 = [(PXGShader *)self uniforms];
    v41 = [(NSArray *)v33 countByEnumeratingWithState:&v50 objects:v66 count:16];
    if (v41)
    {
      v42 = v41;
      v43 = *v51;
      do
      {
        for (m = 0; m != v42; ++m)
        {
          if (*v51 != v43)
          {
            objc_enumerationMutation(v33);
          }

          v45 = *(*(&v50 + 1) + 8 * m);
          v46 = [v45 bindType];
          v47 = *&v68[8 * v46 - 16];
          *&v68[8 * v46 - 16] = v47 + 1;
          v48 = [v45 bindType];
          if (v48 == 1)
          {
            v49 = [v45 bindableTextureForContext:v14];
            [v5 setFragmentTexture:v49 atIndex:v47];
          }

          else if (!v48 && [v45 bytesLength] >= 1)
          {
            [v5 setFragmentBytes:objc_msgSend(v45 length:"bytes") atIndex:{objc_msgSend(v45, "bytesLength"), v47}];
          }
        }

        v42 = [(NSArray *)v33 countByEnumeratingWithState:&v50 objects:v66 count:16];
      }

      while (v42);
    }

    goto LABEL_48;
  }

LABEL_49:
}

- (id)parameterBindingDeclarations
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = [(PXGShader *)self uniforms];
  v4 = [v3 count];

  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v5 addObject:&stru_282C556B8];
    v21 = xmmword_21AE2D310;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(PXGShader *)self uniforms];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v11 bindType];
          ++*(&v21 + v12);
          v13 = [v11 parameterDeclarationWithBindingIndex:?];
          [v5 addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = [v5 componentsJoinedByString:{@", \n"}];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (BOOL)isEquivalentToShader:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 != self)
    {
      v35 = 0;
      v36 = &v35;
      v37 = 0x2020000000;
      v6 = [(PXGShader *)self source];
      v7 = [v6 hash];
      v8 = [(PXGShader *)v5 source];
      LOBYTE(v7) = v7 == [v8 hash];

      v38 = v7;
      v9 = v36;
      if (*(v36 + 24) == 1)
      {
        v10 = [(PXGShader *)self source];
        v11 = [(PXGShader *)v5 source];
        v12 = v10;
        v13 = v11;
        if (v12 == v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = [v12 isEqual:v13];
        }

        *(v36 + 24) = v14;
        v9 = v36;
        if (v36[3])
        {
          v16 = [(PXGShader *)self components];
          v17 = [(PXGShader *)v5 components];
          v18 = v16;
          v19 = v17;
          if (v18 == v19)
          {
            v20 = 1;
          }

          else
          {
            v20 = [v18 isEqual:v19];
          }

          *(v36 + 24) = v20;
          v9 = v36;
          if (v36[3])
          {
            v22 = [(PXGShader *)self opcodes];
            v24 = v23;
            v25 = [(PXGShader *)v5 opcodes];
            v9 = v36;
            if (v22 == v25)
            {
              *(v36 + 24) = v24 == v26;
              if (v24 == v26)
              {
                v27 = [(PXGShader *)self uniforms];
                v28 = [v27 count];
                v29 = [(PXGShader *)v5 uniforms];
                v30 = v28 == [v29 count];
                *(v36 + 24) = v30;

                if (v36[3])
                {
                  v31 = [(PXGShader *)self uniforms];
                  v32[0] = MEMORY[0x277D85DD0];
                  v32[1] = 3221225472;
                  v32[2] = __34__PXGShader_isEquivalentToShader___block_invoke;
                  v32[3] = &unk_2782A7950;
                  v34 = &v35;
                  v33 = v5;
                  [v31 enumerateObjectsUsingBlock:v32];

                  v15 = *(v36 + 24);
                }

                else
                {
                  v15 = 0;
                }

                goto LABEL_16;
              }

LABEL_15:
              v15 = 0;
              *(v9 + 24) = 0;
LABEL_16:
              _Block_object_dispose(&v35, 8);
              goto LABEL_17;
            }
          }

LABEL_14:
          *(v9 + 24) = 0;
          goto LABEL_15;
        }
      }

      else
      {
        *(v36 + 24) = 0;
      }

      *(v9 + 24) = 0;
      goto LABEL_14;
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

LABEL_17:

  return v15 & 1;
}

void __34__PXGShader_isEquivalentToShader___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = *(*(a1 + 40) + 8);
  v11 = v7;
  if (*(v8 + 24))
  {
    v9 = [*(a1 + 32) uniforms];
    v10 = [v9 objectAtIndexedSubscript:a3];
    *(*(*(a1 + 40) + 8) + 24) = [v11 isEquivalentToUniform:v10];
  }

  else
  {
    *(v8 + 24) = 0;
  }

  if ((*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    *a4 = 1;
  }
}

- (id)description
{
  v18 = MEMORY[0x277CCACA8];
  v3 = objc_opt_class();
  v16 = NSStringFromClass(v3);
  v4 = [(PXGShader *)self opcodes];
  v6 = PXGShaderOpcodesDescription(v4, v5);
  v19 = [(NSDictionary *)self->_sourceByShaderFunction allKeys];
  v17 = [v19 valueForKeyPath:@"name"];
  v7 = [v17 componentsJoinedByString:{@", "}];
  v8 = [(PXGShader *)self uniforms];
  v9 = [v8 valueForKeyPath:@"name"];
  v10 = [v9 componentsJoinedByString:{@", "}];
  v11 = [(PXGShader *)self components];
  v12 = [v11 allKeys];
  v13 = [v12 componentsJoinedByString:{@", "}];
  v14 = [v18 stringWithFormat:@"<%@:%p opcodes:%@ functions:[%@] uniforms:[%@] components:[%@]>", v16, self, v6, v7, v10, v13];;

  return v14;
}

- (PXGShader)initWithOpcodes:(id)a3 source:(id)a4 uniforms:(id)a5 components:(id)a6
{
  var2 = a3.var2;
  v10 = *&a3.var0;
  v53 = *MEMORY[0x277D85DE8];
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v51.receiver = self;
  v51.super_class = PXGShader;
  v15 = [(PXGShader *)&v51 init];
  if (v15)
  {
    if ([v14 count])
    {
      v39 = [MEMORY[0x277CCA890] currentHandler];
      [v39 handleFailureInMethod:a2 object:v15 file:@"PXGShader.m" lineNumber:33 description:{@"Doesn't support binding of components yet, see <rdar://problem/71347132>."}];
    }

    v46 = v12;
    if (v12)
    {
      v40 = [MEMORY[0x277CCA890] currentHandler];
      [v40 handleFailureInMethod:a2 object:v15 file:@"PXGShader.m" lineNumber:34 description:{@"Dynamic shader source is not currently supported, see rdar://78532560"}];

      if (v10 != PXGShaderOpcodesNull || dword_27CD3D148 != var2)
      {
        v41 = [MEMORY[0x277CCA890] currentHandler];
        [v41 handleFailureInMethod:a2 object:v15 file:@"PXGShader.m" lineNumber:35 description:{@"Mixing opcodes and source isn't currently supported: %@", v15}];
      }
    }

    *&v15->_opcodes.fragmentTextureCoordinateOpcodes = v10;
    v15->_opcodes.fragmentAlphaOpcodes = var2;
    objc_storeStrong(&v15->_source, a4);
    if (v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = MEMORY[0x277CBEBF8];
    }

    objc_storeStrong(&v15->_uniforms, v16);
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = MEMORY[0x277CBEC10];
    }

    objc_storeStrong(&v15->_components, v17);
    v18 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v19 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v20 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v45 = v13;
    v21 = v13;
    v22 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v48;
      do
      {
        v25 = 0;
        do
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v47 + 1) + 8 * v25);
          v27 = [v26 type];
          v28 = v18;
          if (v27 < 4)
          {
            goto LABEL_17;
          }

          if (v27 == 5)
          {
            v28 = v20;
LABEL_17:
            [v28 addObject:v26];
            goto LABEL_18;
          }

          v28 = v19;
          if (v27 == 4)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v25;
        }

        while (v23 != v25);
        v29 = [v21 countByEnumeratingWithState:&v47 objects:v52 count:16];
        v23 = v29;
      }

      while (v29);
    }

    v30 = [v18 count];
    if (v30)
    {
      v30 = [objc_alloc(MEMORY[0x277CBEB28]) initWithLength:{16 * objc_msgSend(v18, "count")}];
    }

    v12 = v46;
    valueUniformsData = v15->_valueUniformsData;
    v15->_valueUniformsData = v30;

    v32 = [v18 copy];
    valueUniforms = v15->_valueUniforms;
    v15->_valueUniforms = v32;

    v34 = [v19 copy];
    texture2DUniforms = v15->_texture2DUniforms;
    v15->_texture2DUniforms = v34;

    v36 = [v20 copy];
    texture3DUniforms = v15->_texture3DUniforms;
    v15->_texture3DUniforms = v36;

    if ([v19 count] >= 4)
    {
      v42 = [MEMORY[0x277CCA890] currentHandler];
      [v42 handleFailureInMethod:a2 object:v15 file:@"PXGShader.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"texture2DUniforms.count <= PXGSHADER_MAX_STATIC_2DTEXTURES"}];
    }

    v13 = v45;
    if ([v20 count] >= 4)
    {
      v43 = [MEMORY[0x277CCA890] currentHandler];
      [v43 handleFailureInMethod:a2 object:v15 file:@"PXGShader.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"texture3DUniforms.count <= PXGSHADER_MAX_STATIC_3DTEXTURES"}];
    }

    v15->_sampler = 1;
  }

  return v15;
}

- (PXGShader)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXGShader.m" lineNumber:27 description:{@"%s is not available as initializer", "-[PXGShader init]"}];

  abort();
}

@end