@interface PXGColorGradingEffect
- (BOOL)isEqual:(id)a3;
- (PXGColorGradingEffect)initWithEntityManager:(id)a3;
- (unint64_t)hash;
- (void)setColorLookupCube:(id)a3;
@end

@implementation PXGColorGradingEffect

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PXGColorGradingEffect;
  v3 = [(PXGColorGradingEffect *)&v7 hash];
  v4 = [(PXGColorGradingEffect *)self colorLookupCube];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [v5 colorLookupCube];
    v7 = [(PXGColorGradingEffect *)self colorLookupCube];
    v8 = v7;
    if (v6 == v7)
    {
    }

    else
    {
      v9 = [v6 isEqual:v7];

      if ((v9 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v11 = [v5 effectId];
    if (v11 == [(PXGEffect *)self effectId])
    {
      v12 = [v5 entityManager];
      v13 = [(PXGEffect *)self entityManager];
      v10 = v12 == v13;

LABEL_10:
      goto LABEL_11;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)setColorLookupCube:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_colorLookupCube != v5 && ![(PXGColorLookupCube *)v5 isEqual:?]|| ([(PXGUniform *)self->_cubeUniform textureProvider], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    objc_storeStrong(&self->_colorLookupCube, a3);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__PXGColorGradingEffect_setColorLookupCube___block_invoke;
    v14[3] = &unk_2782A8D98;
    v8 = v6;
    v15 = v8;
    [(PXGUniform *)self->_cubeUniform setTextureProvider:v14];
    if (v8)
    {
      [(PXGColorLookupCube *)v8 center];
    }

    else
    {
      v9 = 0.0;
    }

    [(PXGUniform *)self->_grayUniform setFloat4Value:v9];
    v10 = [(PXGColorLookupCube *)v8 edgeSize];
    if (v10 <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = v10;
    }

    *v11.i32 = v12;
    v13.i32[0] = 1056964608;
    v13.f32[1] = v12 + -1.0;
    [(PXGUniform *)self->_valuesUniform setFloat4Value:COERCE_DOUBLE(vdiv_f32(v13, vdup_lane_s32(v11, 0)))];
  }
}

id __44__PXGColorGradingEffect_setColorLookupCube___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [PXGColorGradingTexturesStore colorGradingTextureStoreForContext:a2];
  v4 = [v3 colorGradingTextureWithColorLookupCube:*(a1 + 32)];

  return v4;
}

- (PXGColorGradingEffect)initWithEntityManager:(id)a3
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PXGColorGradingEffect;
  v3 = [(PXGEffect *)&v16 initWithEntityManager:a3];
  if (v3)
  {
    v4 = [[PXGUniform alloc] initWithName:@"cube" type:5];
    cubeUniform = v3->_cubeUniform;
    v3->_cubeUniform = v4;

    v6 = [[PXGUniform alloc] initWithName:@"coords" type:3];
    valuesUniform = v3->_valuesUniform;
    v3->_valuesUniform = v6;

    v8 = [[PXGUniform alloc] initWithName:@"gray" type:3];
    grayUniform = v3->_grayUniform;
    v3->_grayUniform = v8;

    v10 = [PXGShader alloc];
    v17[0] = v3->_cubeUniform;
    v17[1] = v3->_valuesUniform;
    v17[2] = v3->_grayUniform;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:3];
    v12 = [(PXGShader *)v10 initWithOpcodes:0x100000000 source:0 uniforms:0 components:v11, 0];
    shader = v3->_shader;
    v3->_shader = v12;

    [(PXGColorGradingEffect *)v3 setColorLookupCube:0];
    LODWORD(v14) = 1.0;
    [(PXGColorGradingEffect *)v3 setIntensity:v14];
  }

  return v3;
}

@end