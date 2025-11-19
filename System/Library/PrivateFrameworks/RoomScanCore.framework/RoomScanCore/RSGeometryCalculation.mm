@interface RSGeometryCalculation
- (RSGeometryCalculation)init;
@end

@implementation RSGeometryCalculation

- (RSGeometryCalculation)init
{
  v8.receiver = self;
  v8.super_class = RSGeometryCalculation;
  v2 = [(RSGeometryCalculation *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(RSGeometryMeta);
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    *(v2 + 2) = 0x18000000003;
    v2[24] = 0;
    *(v2 + 28) = 0x4000000180;
    v2[36] = 1;
    *(v2 + 10) = 10;
    *(v2 + 22) = 256;
    *(v2 + 12) = 1022739087;
    v2[52] = 1;
    *(v2 + 7) = 0x3E99999A0000000CLL;
    *(v2 + 16) = 0;
    v5 = *(v2 + 1);
    if (v5)
    {
      *(v5 + 28) = 384;
      v6 = *(v2 + 1);
      if (v6)
      {
        *(v6 + 32) = *(v2 + 14);
      }
    }

    *(v2 + 17) = *(v2 + 8);
  }

  return v2;
}

@end