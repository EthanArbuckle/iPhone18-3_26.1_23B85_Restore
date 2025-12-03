@interface PXGEdgeFadeEffect
- (PXGEdgeFadeEffect)initWithEntityManager:(id)manager;
@end

@implementation PXGEdgeFadeEffect

- (PXGEdgeFadeEffect)initWithEntityManager:(id)manager
{
  v12[1] = *MEMORY[0x277D85DE8];
  v11.receiver = self;
  v11.super_class = PXGEdgeFadeEffect;
  v3 = [(PXGEffect *)&v11 initWithEntityManager:manager];
  if (v3)
  {
    v4 = [[PXGUniform alloc] initWithName:@"directionUniform" type:0];
    directionUniform = v3->_directionUniform;
    v3->_directionUniform = v4;

    v6 = [PXGShader alloc];
    v12[0] = v3->_directionUniform;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    v8 = [(PXGShader *)v6 initWithOpcodes:0 source:2 uniforms:0 components:v7, 0];
    shader = v3->_shader;
    v3->_shader = v8;

    [(PXGEdgeFadeEffect *)v3 setDirection:0];
  }

  return v3;
}

@end