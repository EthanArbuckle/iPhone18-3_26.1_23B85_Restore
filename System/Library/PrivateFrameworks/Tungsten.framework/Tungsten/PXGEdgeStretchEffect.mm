@interface PXGEdgeStretchEffect
- (CGRect)sampleRect;
- (PXGEdgeStretchEffect)initWithEntityManager:(id)manager;
- (void)setSampleRect:(CGRect)rect;
@end

@implementation PXGEdgeStretchEffect

- (void)setSampleRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  MinY = CGRectGetMinY(rect);
  v17.origin.x = x;
  v17.origin.y = y;
  v17.size.width = width;
  v17.size.height = height;
  MaxX = CGRectGetMaxX(v17);
  v18.origin.x = x;
  v18.origin.y = y;
  v18.size.width = width;
  v18.size.height = height;
  MaxY = CGRectGetMaxY(v18);
  v19.origin.x = x;
  v19.origin.y = y;
  v19.size.width = width;
  v19.size.height = height;
  MinX = CGRectGetMinX(v19);
  v9.f64[0] = MaxY;
  v9.f64[1] = MinX;
  v10.f64[0] = MinY;
  v10.f64[1] = MaxX;
  *&v11 = vcvt_hight_f32_f64(vcvt_f32_f64(v10), v9).u64[0];
  sampleRect = self->_sampleRect;

  [(PXGUniform *)sampleRect setFloat4Value:v11];
}

- (CGRect)sampleRect
{
  [(PXGUniform *)self->_sampleRect float4Value];

  PXRectWithEdges();
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (PXGEdgeStretchEffect)initWithEntityManager:(id)manager
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PXGEdgeStretchEffect;
  v3 = [(PXGEffect *)&v11 initWithEntityManager:manager];
  if (v3)
  {
    v4 = [[PXGUniform alloc] initWithName:@"sampleRect" type:3];
    sampleRect = v3->_sampleRect;
    v3->_sampleRect = v4;

    v6 = [PXGShader alloc];
    v12[0] = v3->_sampleRect;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [(PXGShader *)v6 initWithOpcodes:1 source:0 uniforms:0 components:v7, 0];
    shader = v3->_shader;
    v3->_shader = v8;

    [(PXGShader *)v3->_shader setSampler:1];
  }

  return v3;
}

@end