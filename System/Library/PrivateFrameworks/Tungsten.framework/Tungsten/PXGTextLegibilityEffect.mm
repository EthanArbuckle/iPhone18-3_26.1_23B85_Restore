@interface PXGTextLegibilityEffect
- (PXGTextLegibilityEffect)initWithEntityManager:(id)manager;
- (void)_updateValues;
- (void)setAlpha:(double)alpha;
- (void)setStrength:(double)strength;
@end

@implementation PXGTextLegibilityEffect

- (void)_updateValues
{
  [(PXGTextLegibilityEffect *)self strength];
  v8 = v3;
  [(PXGTextLegibilityEffect *)self alpha];
  v4.f64[0] = v8;
  v4.f64[1] = v5;
  v6 = COERCE_DOUBLE(vcvt_f32_f64(v4));
  values = self->_values;

  [(PXGUniform *)values setFloat2Value:v6];
}

- (void)setStrength:(double)strength
{
  if (self->_strength != strength)
  {
    self->_strength = strength;
    [(PXGTextLegibilityEffect *)self _updateValues];
  }
}

- (void)setAlpha:(double)alpha
{
  if (self->_alpha != alpha)
  {
    self->_alpha = alpha;
    [(PXGTextLegibilityEffect *)self _updateValues];
  }
}

- (PXGTextLegibilityEffect)initWithEntityManager:(id)manager
{
  v19[1] = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = PXGTextLegibilityEffect;
  v4 = [(PXGEffect *)&v18 initWithEntityManager:manager];
  if (v4)
  {
    v6 = +[PXTungstenSettings sharedInstance];
    textLegibilityDimmingType = [v6 textLegibilityDimmingType];

    if (textLegibilityDimmingType >= 3)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v4 file:@"PXGTextLegibilityEffect.m" lineNumber:44 description:{@"Invalid parameter not satisfying: %@", @"opcode != PXGFragmentColorOpcodeNil"}];

      v8 = 0;
    }

    else
    {
      v8 = (textLegibilityDimmingType << 32) + 0x300000000;
    }

    v10 = [[PXGUniform alloc] initWithName:@"values" type:1];
    values = v4->_values;
    v4->_values = v10;

    v12 = [PXGShader alloc];
    v19[0] = v4->_values;
    v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    v14 = [(PXGShader *)v12 initWithOpcodes:v8 source:0 uniforms:0 components:v13, 0];
    shader = v4->_shader;
    v4->_shader = v14;

    v4->_alpha = 1.0;
    v16 = +[PXTungstenSettings sharedInstance];
    [v16 textLegibilityDimmingStrength];
    v4->_strength = v17;

    [(PXGTextLegibilityEffect *)v4 _updateValues];
  }

  return v4;
}

@end