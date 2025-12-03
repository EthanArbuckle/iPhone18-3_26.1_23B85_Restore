@interface PCMatrix44Double
+ (uint64_t)matrixWithSIMDDouble4x4:(_OWORD *)double4x4;
+ (uint64_t)matrixWithSIMDFloat4x4:(double)float4x4;
- ($360FFE100060A5171365411B823D6A0E)transformInfo;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPCMatrix44Double:(id)double;
- (CGPoint)transformPoint:(CGPoint)point;
- (CGRect)transformRect:(CGRect)rect;
- (PCMatrix44Double)init;
- (PCMatrix44Double)initWithArray:(id)array;
- (PCMatrix44Double)initWithCoder:(id)coder;
- (PCMatrix44Double)initWithDoubles:(double)doubles[16] external:(BOOL)external;
- (PCMatrix44Double)initWithPCMatrix:(const void *)matrix;
- (__n128)SIMDDouble4x4;
- (double)SIMDFloat4x4;
- (double)setSIMDDouble4x4:(uint64_t)double4x4;
- (float64x2_t)setSIMDFloat4x4:(int8x16_t)float4x4;
- (id)array;
- (id)compactDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)debugDescription;
- (id)description;
- (id)extendedDescription;
- (id)newPlanarTransformTo:(id)to;
- (id)newTransformTo:(id)to;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)getDoubles:(double)doubles[16];
- (void)initWithSIMDDouble4x4:(_OWORD *)double4x4;
- (void)initWithSIMDFloat4x4:(double)float4x4;
- (void)leftFlipAboutY:(double)y;
- (void)leftMult:(id)mult;
- (void)makeIdentity;
- (void)rightMult:(id)mult;
- (void)scaleSizeX:(double)x sizeY:(double)y sizeZ:(double)z scaledSizeX:(double *)sizeX scaledSizeY:(double *)sizeY scaledSizeZ:(double *)sizeZ;
- (void)setDoubles:(double)doubles[16];
@end

@implementation PCMatrix44Double

- (PCMatrix44Double)initWithPCMatrix:(const void *)matrix
{
  v11.receiver = self;
  v11.super_class = PCMatrix44Double;
  result = [(PCMatrix44Double *)&v11 init];
  if (result)
  {
    v5 = *matrix;
    v6 = *(matrix + 1);
    v7 = *(matrix + 2);
    *&result->_m[1][2] = *(matrix + 3);
    *&result->_m[1][0] = v7;
    *&result->_m[0][2] = v6;
    *&result->_m[0][0] = v5;
    v8 = *(matrix + 4);
    v9 = *(matrix + 5);
    v10 = *(matrix + 6);
    *&result->_m[3][2] = *(matrix + 7);
    *&result->_m[3][0] = v10;
    *&result->_m[2][2] = v9;
    *&result->_m[2][0] = v8;
    result->_pcMatrix = result->_m;
  }

  return result;
}

- (PCMatrix44Double)init
{
  v3.receiver = self;
  v3.super_class = PCMatrix44Double;
  result = [(PCMatrix44Double *)&v3 init];
  if (result)
  {
    result->_m[0][0] = 1.0;
    result->_m[2][2] = 1.0;
    result->_m[1][1] = 1.0;
    *&result->_m[0][1] = 0u;
    *&result->_m[0][3] = 0u;
    *&result->_m[1][2] = 0u;
    *&result->_m[2][0] = 0u;
    *&result->_m[2][3] = 0u;
    *&result->_m[3][1] = 0u;
    result->_m[3][3] = 1.0;
    result->_pcMatrix = result->_m;
  }

  return result;
}

- (PCMatrix44Double)initWithDoubles:(double)doubles[16] external:(BOOL)external
{
  v12.receiver = self;
  v12.super_class = PCMatrix44Double;
  result = [(PCMatrix44Double *)&v12 init:doubles];
  if (result)
  {
    result->_m[0][0] = 1.0;
    result->_m[2][2] = 1.0;
    result->_m[1][1] = 1.0;
    *&result->_m[0][1] = 0u;
    *&result->_m[0][3] = 0u;
    *&result->_m[1][2] = 0u;
    *&result->_m[2][0] = 0u;
    *&result->_m[2][3] = 0u;
    *&result->_m[3][1] = 0u;
    result->_m[3][3] = 1.0;
    result->_pcMatrix = result->_m;
    v6 = *doubles;
    v7 = *(doubles + 1);
    v8 = *(doubles + 3);
    *&result->_m[1][0] = *(doubles + 2);
    *&result->_m[1][2] = v8;
    *&result->_m[0][0] = v6;
    *&result->_m[0][2] = v7;
    v9 = *(doubles + 4);
    v10 = *(doubles + 5);
    v11 = *(doubles + 7);
    *&result->_m[3][0] = *(doubles + 6);
    *&result->_m[3][2] = v11;
    *&result->_m[2][0] = v9;
    *&result->_m[2][2] = v10;
  }

  return result;
}

- (PCMatrix44Double)initWithArray:(id)array
{
  v5 = 0;
  v16 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  do
  {
    [objc_msgSend(array objectAtIndex:{v5, v8, v9, v10, v11, v12, v13, v14, v15), "doubleValue"}];
    *(&v8 + v5++) = v6;
  }

  while (v5 != 16);
  return [(PCMatrix44Double *)self initWithDoubles:&v8];
}

+ (uint64_t)matrixWithSIMDFloat4x4:(double)float4x4
{
  v5 = [self alloc];

  return [v5 initWithSIMDFloat4x4:{a2, float4x4, a4, a5}];
}

+ (uint64_t)matrixWithSIMDDouble4x4:(_OWORD *)double4x4
{
  v4 = [self alloc];
  v5 = double4x4[5];
  v10[4] = double4x4[4];
  v10[5] = v5;
  v6 = double4x4[7];
  v10[6] = double4x4[6];
  v10[7] = v6;
  v7 = double4x4[1];
  v10[0] = *double4x4;
  v10[1] = v7;
  v8 = double4x4[3];
  v10[2] = double4x4[2];
  v10[3] = v8;
  return [v4 initWithSIMDDouble4x4:v10];
}

- (void)initWithSIMDFloat4x4:(double)float4x4
{
  v5 = [self init];
  v6 = v5;
  if (v5)
  {
    [v5 setSIMDFloat4x4:{a2, float4x4, a4, a5}];
  }

  return v6;
}

- (void)initWithSIMDDouble4x4:(_OWORD *)double4x4
{
  v4 = [self init];
  v5 = v4;
  if (v4)
  {
    v6 = double4x4[5];
    v11[4] = double4x4[4];
    v11[5] = v6;
    v7 = double4x4[7];
    v11[6] = double4x4[6];
    v11[7] = v7;
    v8 = double4x4[1];
    v11[0] = *double4x4;
    v11[1] = v8;
    v9 = double4x4[3];
    v11[2] = double4x4[2];
    v11[3] = v9;
    [v4 setSIMDDouble4x4:v11];
  }

  return v5;
}

- (PCMatrix44Double)initWithCoder:(id)coder
{
  v5 = 0;
  result = [coder decodeBytesForKey:@"bytes" returnedLength:&v5];
  if (result)
  {
    return [(PCMatrix44Double *)self initWithDoubles:result external:1];
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  [(PCMatrix44Double *)self getDoubles:v4];
  [coder encodeBytes:v4 length:128 forKey:@"bytes"];
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = PCMatrix44Double;
  [(PCMatrix44Double *)&v2 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  pcMatrix = self->_pcMatrix;

  return [v4 initWithPCMatrix:pcMatrix];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  pcMatrix = self->_pcMatrix;
  v8 = *(equal + 17);
  while (2)
  {
    for (i = 0; i != 32; i += 8)
    {
      if (vabdd_f64(*&pcMatrix[i], *(v8 + i)) >= 0.0000001)
      {
        return v6;
      }
    }

    v6 = v5 > 2;
    v8 += 32;
    pcMatrix += 32;
    v10 = 1;
    if (++v5 != 4)
    {
      continue;
    }

    break;
  }

  return v10;
}

- (BOOL)isEqualToPCMatrix44Double:(id)double
{
  if (double)
  {
    v3 = 0;
    v4 = 0;
    pcMatrix = self->_pcMatrix;
    v6 = *(double + 17);
LABEL_3:
    v7 = 0;
    while (vabdd_f64(*&pcMatrix[v7], *(v6 + v7)) < 0.0000001)
    {
      v7 += 8;
      if (v7 == 32)
      {
        v4 = v3 > 2;
        v6 += 32;
        pcMatrix += 32;
        if (++v3 != 4)
        {
          goto LABEL_3;
        }

        return 1;
      }
    }
  }

  else
  {
    return 0;
  }

  return v4;
}

- (unint64_t)hash
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v3, 0, sizeof(v3));
  [(PCMatrix44Double *)self getDoubles:v3];
  CC_MD5(v3, 0x80u, md);
  return *md;
}

- (id)description
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  memset(v6, 0, sizeof(v6));
  [(PCMatrix44Double *)self getDoubles:v6];
  v2 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @"(\n");
  for (i = 0; i != 15; ++i)
  {
    if ((~i & 3) != 0)
    {
      v4 = "";
    }

    else
    {
      v4 = "\n";
    }

    [v2 appendFormat:@"%f, %s", *(v6 + i), v4];
  }

  [v2 appendFormat:@"%f\n"], *(&v7 + 1));
  return v2;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p>%@", NSStringFromClass(v4), self, -[PCMatrix44Double description](self, "description")];
}

- (id)compactDescription
{
  v12 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  [(PCMatrix44Double *)self getDoubles:&v4];
  v2 = objc_alloc(MEMORY[0x277CCAB68]);
  return [v2 initWithFormat:@"( %f, %f, %f, %f, , %f, %f, %f, %f, , %f, %f, %f, %f, , %f, %f, %f, %f)", v4, v5, v6, v7, v8, v9, v10, v11];
}

- (id)extendedDescription
{
  if (self)
  {
    [(PCMatrix44Double *)self transformInfo];
  }

  v14 = MEMORY[0x277CCACA8];
  v13 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v4 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:?];
  v10 = [MEMORY[0x277CCABB0] numberWithDouble:0.0];
  return [v14 stringWithFormat:@"translation:\n\tx: %@\n\ty: %@\n\tz: %@\nscale:\n\tx: %@\n\ty: %@\n\tz: %@\nrotation:\n\tx: %.2f° (%@)\n\ty: %.2f° (%@)\n\tz: %.2f° (%@)\nshear:\n\tx: %@\n\ty: %@\nmatrix:\n\t%@", v13, v12, v3, v4, v5, v6, 0.0 * 180.0 / 3.14159265, v7, 0.0 * 180.0 / 3.14159265, v8, 0.0 * 180.0 / 3.14159265, v9, v10, objc_msgSend(MEMORY[0x277CCABB0], "numberWithDouble:", 0.0), objc_msgSend(-[PCMatrix44Double description](self, "description"), "stringByReplacingOccurrencesOfString:withString:", @"\n", @"\n\t"];
}

- (void)getDoubles:(double)doubles[16]
{
  pcMatrix = self->_pcMatrix;
  v4 = *pcMatrix;
  v5 = pcMatrix[1];
  v6 = pcMatrix[3];
  *(doubles + 2) = pcMatrix[2];
  *(doubles + 3) = v6;
  *doubles = v4;
  *(doubles + 1) = v5;
  v7 = pcMatrix[4];
  v8 = pcMatrix[5];
  v9 = pcMatrix[7];
  *(doubles + 6) = pcMatrix[6];
  *(doubles + 7) = v9;
  *(doubles + 4) = v7;
  *(doubles + 5) = v8;
}

- (void)setDoubles:(double)doubles[16]
{
  pcMatrix = self->_pcMatrix;
  v4 = *doubles;
  v5 = *(doubles + 1);
  v6 = *(doubles + 3);
  pcMatrix[2] = *(doubles + 2);
  pcMatrix[3] = v6;
  *pcMatrix = v4;
  pcMatrix[1] = v5;
  v7 = *(doubles + 4);
  v8 = *(doubles + 5);
  v9 = *(doubles + 7);
  pcMatrix[6] = *(doubles + 6);
  pcMatrix[7] = v9;
  pcMatrix[4] = v7;
  pcMatrix[5] = v8;
}

- (id)array
{
  v12 = *MEMORY[0x277D85DE8];
  if ([PCMatrix44Double array]::onceToken != -1)
  {
    [PCMatrix44Double array];
  }

  pcMatrix = self->_pcMatrix;
  if (PCMatrix44Tmpl<double>::isIdentity(pcMatrix) && pcMatrix[15] == 1.0)
  {
    return [PCMatrix44Double array]::sIdentityArray;
  }

  for (i = 0; i != 16; ++i)
  {
    v6 = pcMatrix[i];
    if (v6 == 0.0)
    {
      v7 = [PCMatrix44Double array]::sNSNumberZero;
LABEL_13:
      v8 = v7;
      goto LABEL_14;
    }

    if (v6 == 1.0)
    {
      v7 = [PCMatrix44Double array]::sNSNumberOne;
      goto LABEL_13;
    }

    if (v6 == -1.0)
    {
      v7 = [PCMatrix44Double array]::sNSNumberNeg1;
      goto LABEL_13;
    }

    v8 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:pcMatrix[i]];
LABEL_14:
    *&v11[i * 8] = v8;
  }

  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:16];
  for (j = 0; j != 128; j += 8)
  {
  }

  return v4;
}

uint64_t __25__PCMatrix44Double_array__block_invoke()
{
  -[PCMatrix44Double array]::sNSNumberOne = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:1.0];
  -[PCMatrix44Double array]::sNSNumberZero = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:0.0];
  -[PCMatrix44Double array]::sNSNumberNeg1 = [objc_alloc(MEMORY[0x277CCABB0]) initWithDouble:-1.0];
  v0 = objc_alloc(MEMORY[0x277CBEA60]);
  result = [v0 initWithObjects:{-[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberOne, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberOne, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberZero, -[PCMatrix44Double array]::sNSNumberOne, 0}];
  [PCMatrix44Double array]::sIdentityArray = result;
  return result;
}

- (double)SIMDFloat4x4
{
  v1 = *(self + 136);
  v2 = *v1;
  *v2.i8 = vcvt_f32_f64(*v1);
  v3 = *(v1 + 32);
  *&v3.f64[0] = vcvt_f32_f64(v3);
  v4 = *(v1 + 64);
  *&v4.f64[0] = vcvt_f32_f64(v4);
  v5 = *(v1 + 96);
  *&v5.f64[0] = vcvt_f32_f64(v5);
  *&result = vzip1q_s32(vzip1q_s32(v2, v4), vzip1q_s32(v3, v5)).u64[0];
  return result;
}

- (float64x2_t)setSIMDFloat4x4:(int8x16_t)float4x4
{
  v5 = *(self + 136);
  *v5 = vcvtq_f64_f32(vzip1_s32(*a2.i8, *float4x4.i8));
  v5[1] = vcvtq_f64_f32(vzip1_s32(*a4.i8, *a5.i8));
  v5[2] = vcvtq_f64_f32(vzip2_s32(*a2.i8, *float4x4.i8));
  v5[3] = vcvtq_f64_f32(vzip2_s32(*a4.i8, *a5.i8));
  v6 = vextq_s8(float4x4, float4x4, 8uLL).u64[0];
  v7 = vextq_s8(a2, a2, 8uLL).u64[0];
  v8 = vextq_s8(a5, a5, 8uLL).u64[0];
  v9 = vextq_s8(a4, a4, 8uLL).u64[0];
  v5[4] = vcvtq_f64_f32(vzip1_s32(v7, v6));
  v5[5] = vcvtq_f64_f32(vzip1_s32(v9, v8));
  result = vcvtq_f64_f32(vzip2_s32(v7, v6));
  v5[6] = result;
  v5[7] = vcvtq_f64_f32(vzip2_s32(v9, v8));
  return result;
}

- (__n128)SIMDDouble4x4
{
  v2 = *(self + 136);
  result.n128_u64[0] = *v2;
  *&v3 = v2[1];
  *&v4 = v2[2];
  *&v5 = v2[3];
  *&v6 = v2[8];
  *&v7 = v2[9];
  *&v8 = v2[10];
  *&v9 = v2[11];
  result.n128_u64[1] = v2[4];
  *(&v6 + 1) = v2[12];
  *(&v3 + 1) = v2[5];
  *(&v7 + 1) = v2[13];
  *(&v4 + 1) = v2[6];
  *(&v8 + 1) = v2[14];
  *(&v5 + 1) = v2[7];
  *(&v9 + 1) = v2[15];
  *a2 = result;
  *(a2 + 16) = v6;
  *(a2 + 32) = v3;
  *(a2 + 48) = v7;
  *(a2 + 64) = v4;
  *(a2 + 80) = v8;
  *(a2 + 96) = v5;
  *(a2 + 112) = v9;
  return result;
}

- (double)setSIMDDouble4x4:(uint64_t)double4x4
{
  v3 = *(self + 136);
  *v3 = *double4x4;
  *(v3 + 8) = *(double4x4 + 32);
  *(v3 + 16) = *(double4x4 + 64);
  *(v3 + 24) = *(double4x4 + 96);
  *(v3 + 32) = *(double4x4 + 8);
  *(v3 + 40) = *(double4x4 + 40);
  *(v3 + 48) = *(double4x4 + 72);
  *(v3 + 56) = *(double4x4 + 104);
  *(v3 + 64) = *(double4x4 + 16);
  *(v3 + 72) = *(double4x4 + 48);
  *(v3 + 80) = *(double4x4 + 80);
  *(v3 + 88) = *(double4x4 + 112);
  *(v3 + 96) = *(double4x4 + 24);
  *(v3 + 104) = *(double4x4 + 56);
  *(v3 + 112) = *(double4x4 + 88);
  result = *(double4x4 + 120);
  *(v3 + 120) = result;
  return result;
}

- (void)makeIdentity
{
  pcMatrix = self->_pcMatrix;
  *(pcMatrix + 15) = 0x3FF0000000000000;
  *(pcMatrix + 10) = 0x3FF0000000000000;
  *(pcMatrix + 5) = 0x3FF0000000000000;
  *pcMatrix = 0x3FF0000000000000;
  *(pcMatrix + 8) = 0u;
  *(pcMatrix + 24) = 0u;
  *(pcMatrix + 3) = 0u;
  *(pcMatrix + 4) = 0u;
  *(pcMatrix + 88) = 0u;
  *(pcMatrix + 104) = 0u;
}

- (CGRect)transformRect:(CGRect)rect
{
  rectCopy = rect;
  PCMatrix44Tmpl<double>::transformRect<double>(self->_pcMatrix, &rectCopy.origin.x, &rectCopy);
  y = rectCopy.origin.y;
  x = rectCopy.origin.x;
  height = rectCopy.size.height;
  width = rectCopy.size.width;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGPoint)transformPoint:(CGPoint)point
{
  pcMatrix = self->_pcMatrix;
  v4 = pcMatrix[15] + point.x * pcMatrix[12] + point.y * pcMatrix[13];
  v5 = (pcMatrix[3] + point.x * *pcMatrix + point.y * pcMatrix[1]) / v4;
  v6 = (pcMatrix[7] + point.x * pcMatrix[4] + point.y * pcMatrix[5]) / v4;
  v7 = v5;
  result.y = v6;
  result.x = v7;
  return result;
}

- ($360FFE100060A5171365411B823D6A0E)transformInfo
{
  memset(v10, 0, sizeof(v10));
  v11 = 4;
  v12 = 0u;
  memset(v13, 0, sizeof(v13));
  result = PCMatrix44Tmpl<double>::getTransformation(self->_pcMatrix, v10);
  __asm { FMOV            V0.2D, #1.0 }

  *&retstr->var6 = _Q0;
  retstr->var8 = 1.0;
  if (result)
  {
    *&retstr->var0 = v10[0];
    retstr->var2 = *&v10[1];
    *&retstr->var3 = v12;
    retstr->var5 = *v13;
    *&retstr->var6 = *(&v10[1] + 8);
    retstr->var8 = *(&v10[2] + 1);
    *&retstr->var9 = *&v13[8];
  }

  return result;
}

- (void)scaleSizeX:(double)x sizeY:(double)y sizeZ:(double)z scaledSizeX:(double *)sizeX scaledSizeY:(double *)sizeY scaledSizeZ:(double *)sizeZ
{
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v17 = 4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0;
  PCMatrix44Tmpl<double>::getTransformation(self->_pcMatrix, &v14);
  if (sizeX)
  {
    *sizeX = *(&v15 + 1) * x;
  }

  if (sizeY)
  {
    *sizeY = *&v16 * y;
  }

  if (sizeZ)
  {
    *sizeZ = *(&v16 + 1) * z;
  }
}

- (void)leftMult:(id)mult
{
  pcMatrix = self->_pcMatrix;
  pcMatrix = [mult pcMatrix];

  PCMatrix44Tmpl<double>::leftMult(pcMatrix, pcMatrix);
}

- (void)rightMult:(id)mult
{
  pcMatrix = self->_pcMatrix;
  pcMatrix = [mult pcMatrix];

  PCMatrix44Tmpl<double>::rightMult(pcMatrix, pcMatrix);
}

- (void)leftFlipAboutY:(double)y
{
  [(PCMatrix44Double *)self leftTranslateX:0.0 translateY:-y translateZ:0.0];
  [(PCMatrix44Double *)self leftScaleX:1.0 scaleY:-1.0 scaleZ:1.0];

  [(PCMatrix44Double *)self leftTranslateX:0.0 translateY:y translateZ:0.0];
}

- (id)newTransformTo:(id)to
{
  if (to && ![(PCMatrix44Double *)self isEqual:?])
  {
    v6 = [(PCMatrix44Double *)self copy];
    [v6 invert];
    [v6 leftMult:to];
    return v6;
  }

  else
  {

    return objc_opt_new();
  }
}

- (id)newPlanarTransformTo:(id)to
{
  if (to && ![(PCMatrix44Double *)self isEqual:?])
  {
    v6 = [(PCMatrix44Double *)self copy];
    [v6 invert2D];
    [v6 leftMult:to];
    return v6;
  }

  else
  {

    return objc_opt_new();
  }
}

@end