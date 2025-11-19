@interface PXGColorTintEffect
- (PXGColorTintEffect)initWithEntityManager:(id)a3;
- (void)setTintColor:(id)a3;
@end

@implementation PXGColorTintEffect

- (void)setTintColor:(id)a3
{
  v5 = a3;
  v6 = self->_tintColorUniform;
  v7 = v6;
  if (v6 == v5)
  {
  }

  else
  {
    v8 = [(PXGUniform *)v6 isEqual:v5];

    if ((v8 & 1) == 0)
    {
      objc_storeStrong(&self->_tintColor, a3);
      v13 = 0.0;
      v14 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      [(PXGUniform *)v5 getRed:&v14 green:&v13 blue:&v12 alpha:&v11];
      v9.f64[0] = v14;
      v10.f64[0] = v12;
      v9.f64[1] = v13;
      v10.f64[1] = v11;
      [(PXGUniform *)self->_tintColorUniform setFloat4Value:*vcvt_hight_f32_f64(vcvt_f32_f64(v9), v10).i64];
    }
  }
}

- (PXGColorTintEffect)initWithEntityManager:(id)a3
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = PXGColorTintEffect;
  v3 = [(PXGEffect *)&v12 initWithEntityManager:a3];
  if (v3)
  {
    v4 = [[PXGUniform alloc] initWithName:@"tintColor" type:3];
    tintColorUniform = v3->_tintColorUniform;
    v3->_tintColorUniform = v4;

    v6 = [PXGShader alloc];
    v13[0] = v3->_tintColorUniform;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:1];
    v8 = [(PXGShader *)v6 initWithOpcodes:0x200000000 source:0 uniforms:0 components:v7, 0];
    shader = v3->_shader;
    v3->_shader = v8;

    v10 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.0];
    [(PXGColorTintEffect *)v3 setTintColor:v10];
  }

  return v3;
}

@end