@interface TTRIWorldBoundingMKCircle
- ($E93118BEB3602DE8FCB31F3835E3BE13)boundingMapRect;
- ($E93118BEB3602DE8FCB31F3835E3BE13)originalBoundingMapRect;
@end

@implementation TTRIWorldBoundingMKCircle

- ($E93118BEB3602DE8FCB31F3835E3BE13)boundingMapRect
{
  v2 = *MEMORY[0x277CD4BB8];
  v3 = *(MEMORY[0x277CD4BB8] + 8);
  v4 = *(MEMORY[0x277CD4BB8] + 16);
  v5 = *(MEMORY[0x277CD4BB8] + 24);
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

- ($E93118BEB3602DE8FCB31F3835E3BE13)originalBoundingMapRect
{
  v6.receiver = self;
  v6.super_class = TTRIWorldBoundingMKCircle;
  [(MKCircle *)&v6 boundingMapRect];
  result.var1.var1 = v5;
  result.var1.var0 = v4;
  result.var0.var1 = v3;
  result.var0.var0 = v2;
  return result;
}

@end