@interface ROI
- (ROI)initWithBbox:(ROI *)self;
- (ROI)initWithBbox:(id *)a3 descriptor:;
- (double)getReflectedBboxAroundCenter:(void *)a1;
- (float)getLocationMatchCostWith:(id)a3;
- (float)getPixelFeatureMatchCostWith:(id)a3;
- (float32x2_t)getReflectedBboxCenterAroundCenter:(void *)a1;
- (void)generateLocationFromBBox;
- (void)reflectAroundCenter:(ROI *)self;
- (void)setLumaFeatureVector:(ROI *)self;
- (void)setLumaFeatureVectorPredictedLocation:(ROI *)self;
- (void)setLumaFeatureVectorReflection:(ROI *)self;
@end

@implementation ROI

- (ROI)initWithBbox:(ROI *)self
{
  v7 = v2;
  v8.receiver = self;
  v8.super_class = ROI;
  v3 = [(ROI *)&v8 init];
  v4 = v3;
  if (v3)
  {
    [(ROI *)v3 setBbox:v7];
    v5 = v4;
  }

  else
  {
    sub_23308();
  }

  return v4;
}

- (ROI)initWithBbox:(id *)a3 descriptor:
{
  v4 = [(ROI *)self initWithBbox:?];
  v5 = v4;
  if (v4)
  {
    v6 = *&a3[4].var4;
    v13[6] = *&a3[4].var0;
    v13[7] = v6;
    v7 = *&a3[6].var0;
    v13[8] = *&a3[5].var2;
    v13[9] = v7;
    v8 = *&a3[2].var0;
    v13[2] = *&a3[1].var2;
    v13[3] = v8;
    v9 = *&a3[3].var2;
    v13[4] = *&a3[2].var4;
    v13[5] = v9;
    v10 = *&a3->var4;
    v13[0] = *&a3->var0;
    v13[1] = v10;
    [(ROI *)v4 setDescriptor:v13];
    v11 = v5;
  }

  else
  {
    sub_23380();
  }

  return v5;
}

- (float)getLocationMatchCostWith:(id)a3
{
  v4 = a3;
  [(ROI *)self descriptor];
  if (v4)
  {
    [v4 descriptor];
    v5 = v9;
  }

  else
  {
    v5 = 0;
  }

  v6 = vsub_f32(v10, v5);
  v7 = sqrtf(vaddv_f32(vmul_f32(v6, v6)));

  return v7;
}

- (void)reflectAroundCenter:(ROI *)self
{
  v3 = v2;
  [(ROI *)self bbox];
  v7 = v5;
  [(ROI *)self bbox];
  v8 = COERCE_DOUBLE(vadd_f32(vsub_f32(v3, vadd_f32(v7, *&vextq_s8(v6, v6, 8uLL))), v3));
  [(ROI *)self bbox];
  [(ROI *)self setBbox:v8];
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  [(ROI *)self descriptor];
  [(ROI *)self descriptor];
  *&v11 = vadd_f32(vsub_f32(v3, v10), v3);
  v9[6] = v17;
  v9[7] = v18;
  v9[8] = v19;
  v9[9] = v20;
  v9[2] = v13;
  v9[3] = v14;
  v9[4] = v15;
  v9[5] = v16;
  v9[0] = v11;
  v9[1] = v12;
  [(ROI *)self setDescriptor:v9];
}

- (double)getReflectedBboxAroundCenter:(void *)a1
{
  [a1 bbox];
  v7 = v4;
  [a1 bbox];
  v8 = COERCE_DOUBLE(vadd_f32(vsub_f32(a2, vadd_f32(v7, *&vextq_s8(v5, v5, 8uLL))), a2));
  [a1 bbox];
  return v8;
}

- (void)generateLocationFromBBox
{
  [(ROI *)self bbox];
  v5 = v3;
  [(ROI *)self bbox];
  self[1].super.isa = vadd_f32(v5, vmul_f32(*&vextq_s8(v4, v4, 8uLL), 0x3F0000003F000000));
}

- (float32x2_t)getReflectedBboxCenterAroundCenter:(void *)a1
{
  [a1 bbox];
  v7 = v4;
  [a1 bbox];
  return vmla_f32(vneg_f32(vmla_f32(v7, 0x3F0000003F000000, *&vextq_s8(v5, v5, 8uLL))), 0x4000000040000000, a2);
}

- (void)setLumaFeatureVector:(ROI *)self
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6[2] = v2[2];
  v6[3] = v5;
  v6[0] = v3;
  v6[1] = v4;
  objc_copyStruct(self->_lumaFeatureVector, v6, 64, 1, 0);
}

- (void)setLumaFeatureVectorReflection:(ROI *)self
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6[2] = v2[2];
  v6[3] = v5;
  v6[0] = v3;
  v6[1] = v4;
  objc_copyStruct(self->_lumaFeatureVectorReflection, v6, 64, 1, 0);
}

- (void)setLumaFeatureVectorPredictedLocation:(ROI *)self
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  v6[2] = v2[2];
  v6[3] = v5;
  v6[0] = v3;
  v6[1] = v4;
  objc_copyStruct(self->_lumaFeatureVectorPredictedLocation, v6, 64, 1, 0);
}

- (float)getPixelFeatureMatchCostWith:(id)a3
{
  v4 = a3;
  [(ROI *)self descriptor];
  if (!v4)
  {
    bzero(v26, 0xA0uLL);
LABEL_10:
    v8 = INFINITY;
    goto LABEL_11;
  }

  [v4 descriptor];
  v5 = v27;
  if (v28 < v27)
  {
    v5 = v28;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

  [v4 descriptor];
  v6 = sub_DD68(v24, v25, v22, v23);
  [(ROI *)self descriptor];
  v7 = sub_DD68(v20, v21, v18, v19);
  if (v6 > v7)
  {
    v7 = v6;
  }

  if (v7 < 1)
  {
    goto LABEL_10;
  }

  [v4 descriptor];
  [(ROI *)self descriptor];
  v8 = sub_DD68(vabsq_s16(vsubq_s16(v14, v10)), vabsq_s16(vsubq_s16(v15, v11)), vabsq_s16(vsubq_s16(v16, v12)), vabsq_s16(vsubq_s16(v17, v13))) / 8160.0;
LABEL_11:

  return v8;
}

@end