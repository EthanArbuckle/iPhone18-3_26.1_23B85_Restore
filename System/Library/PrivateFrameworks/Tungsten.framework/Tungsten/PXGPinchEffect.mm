@interface PXGPinchEffect
- (CGPoint)normalizedCenter;
- (PXGPinchEffect)initWithEntityManager:(id)a3;
@end

@implementation PXGPinchEffect

- (CGPoint)normalizedCenter
{
  [(PXGUniform *)self->_normalizedCenter float2Value];
  v3 = vcvtq_f64_f32(v2);
  v4 = v3.f64[1];
  result.x = v3.f64[0];
  result.y = v4;
  return result;
}

- (PXGPinchEffect)initWithEntityManager:(id)a3
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14.receiver = self;
  v14.super_class = PXGPinchEffect;
  v3 = [(PXGEffect *)&v14 initWithEntityManager:a3];
  v4 = v3;
  if (v3)
  {
    [(PXGPinchEffect *)v3 setNormalizedCenter:0.5, 0.5];
    v5 = [[PXGUniform alloc] initWithName:@"normalizedCenter" type:1];
    normalizedCenter = v4->_normalizedCenter;
    v4->_normalizedCenter = v5;

    v7 = [[PXGUniform alloc] initWithName:@"scale" type:0];
    scale = v4->_scale;
    v4->_scale = v7;

    v9 = [PXGShader alloc];
    v15[0] = v4->_normalizedCenter;
    v15[1] = v4->_scale;
    v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
    v11 = [(PXGShader *)v9 initWithOpcodes:2 source:0 uniforms:0 components:v10, 0];
    shader = v4->_shader;
    v4->_shader = v11;

    [(PXGShader *)v4->_shader setSampler:1];
    [(PXGPinchEffect *)v4 setScale:1.0];
  }

  return v4;
}

@end