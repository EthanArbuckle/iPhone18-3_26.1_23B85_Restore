@interface PXGRegionMaskEffect
- (PXGRegionMaskEffect)initWithEntityManager:(id)a3;
- (void)_updateValues;
- (void)setRegion:(id)a3;
@end

@implementation PXGRegionMaskEffect

- (void)_updateValues
{
  v18 = self->_region;
  if (v18)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_3;
    }

    v10 = [MEMORY[0x277CCA890] currentHandler];
    v13 = objc_opt_class();
    v12 = NSStringFromClass(v13);
    v14 = [(PXRegion *)v18 px_descriptionForAssertionMessage];
    [v10 handleFailureInMethod:a2 object:self file:@"PXGRegionMaskEffect.m" lineNumber:47 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"_region", v12, v14}];
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [v10 handleFailureInMethod:a2 object:self file:@"PXGRegionMaskEffect.m" lineNumber:47 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"_region", v12}];
  }

LABEL_3:
  [(PXRegion *)v18 a];
  v17 = v4;
  [(PXRegion *)v18 b];
  v16 = v5;
  [(PXRegion *)v18 c];
  v15 = v6;
  [(PXGRegionMaskEffect *)self alpha];
  v7.f64[0] = v15;
  v7.f64[1] = v8;
  v9.f64[0] = v17;
  v9.f64[1] = v16;
  [(PXGUniform *)self->_valuesUniform setFloat4Value:*vcvt_hight_f32_f64(vcvt_f32_f64(v9), v7).i64];
}

- (void)setRegion:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    v4 = [MEMORY[0x277D3CD88] identityRegion];
  }

  obj = v4;
  v5 = self->_region;
  v6 = v5;
  if (v5 == obj)
  {
  }

  else
  {
    v7 = [(PXRegion *)v5 isEqual:obj];

    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_region, obj);
      [(PXGRegionMaskEffect *)self _updateValues];
    }
  }
}

- (PXGRegionMaskEffect)initWithEntityManager:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PXGRegionMaskEffect;
  v3 = [(PXGEffect *)&v11 initWithEntityManager:a3];
  if (v3)
  {
    v4 = [[PXGUniform alloc] initWithName:@"values" type:3];
    valuesUniform = v3->_valuesUniform;
    v3->_valuesUniform = v4;

    v6 = [PXGShader alloc];
    v12[0] = v3->_valuesUniform;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [(PXGShader *)v6 initWithOpcodes:0 source:1 uniforms:0 components:v7, 0];
    shader = v3->_shader;
    v3->_shader = v8;

    [(PXGRegionMaskEffect *)v3 setRegion:0];
    [(PXGRegionMaskEffect *)v3 setAlpha:1.0];
  }

  return v3;
}

@end