@interface SUICMagicCurve
@end

@implementation SUICMagicCurve

uint64_t ___SUICMagicCurve_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E69793D0]);
  LODWORD(v1) = 1043928040;
  LODWORD(v2) = 1058272560;
  LODWORD(v3) = 1063980840;
  _SUICMagicCurve_curve = [v0 initWithControlPoints:v1 :0.0 :v2 :v3];

  return MEMORY[0x1EEE66BB8]();
}

@end