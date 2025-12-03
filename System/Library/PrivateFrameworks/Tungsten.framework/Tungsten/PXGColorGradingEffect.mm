@interface PXGColorGradingEffect
- (BOOL)isEqual:(id)equal;
- (PXGColorGradingEffect)initWithEntityManager:(id)manager;
- (unint64_t)hash;
- (void)setColorLookupCube:(id)cube;
@end

@implementation PXGColorGradingEffect

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = PXGColorGradingEffect;
  v3 = [(PXGColorGradingEffect *)&v7 hash];
  colorLookupCube = [(PXGColorGradingEffect *)self colorLookupCube];
  v5 = [colorLookupCube hash];

  return v5 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    colorLookupCube = [v5 colorLookupCube];
    colorLookupCube2 = [(PXGColorGradingEffect *)self colorLookupCube];
    v8 = colorLookupCube2;
    if (colorLookupCube == colorLookupCube2)
    {
    }

    else
    {
      v9 = [colorLookupCube isEqual:colorLookupCube2];

      if ((v9 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    effectId = [v5 effectId];
    if (effectId == [(PXGEffect *)self effectId])
    {
      entityManager = [v5 entityManager];
      entityManager2 = [(PXGEffect *)self entityManager];
      v10 = entityManager == entityManager2;

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

- (void)setColorLookupCube:(id)cube
{
  cubeCopy = cube;
  v6 = cubeCopy;
  if (self->_colorLookupCube != cubeCopy && ![(PXGColorLookupCube *)cubeCopy isEqual:?]|| ([(PXGUniform *)self->_cubeUniform textureProvider], v7 = objc_claimAutoreleasedReturnValue(), v7, !v7))
  {
    objc_storeStrong(&self->_colorLookupCube, cube);
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
    edgeSize = [(PXGColorLookupCube *)v8 edgeSize];
    if (edgeSize <= 1)
    {
      v12 = 1;
    }

    else
    {
      v12 = edgeSize;
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

- (PXGColorGradingEffect)initWithEntityManager:(id)manager
{
  v17[3] = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = PXGColorGradingEffect;
  v3 = [(PXGEffect *)&v16 initWithEntityManager:manager];
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