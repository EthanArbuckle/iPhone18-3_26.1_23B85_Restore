@interface FxMatrix44
- (BOOL)_planarInverseZ;
- (BOOL)invert;
- (BOOL)invertColorMatrixWithTolerance:(double)a3;
- (CGPoint)transform2DPoint:(CGPoint)a3;
- (FxMatrix44)init;
- (FxMatrix44)initWithCoder:(id)a3;
- (FxMatrix44)initWithColorMatrix44Data:(double)a3[4][4];
- (FxMatrix44)initWithFxMatrix:(id)a3;
- (FxMatrix44)initWithInverseOfFxMatrix:(id)a3;
- (FxMatrix44)initWithMatrix44Data:(double)a3[4][4];
- (FxPoint3D)transform3DPoint:(FxPoint3D)a3;
- (id)copy;
- (id)description;
- (void)setMatrix:(double)a3[4][4];
- (void)setToIdentity;
- (void)transpose;
@end

@implementation FxMatrix44

- (FxMatrix44)init
{
  v6.receiver = self;
  v6.super_class = FxMatrix44;
  result = [(FxMatrix44 *)&v6 init];
  v3 = 0;
  mat = result->_mat;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      if (v3 == i)
      {
        result->_mat[v3][v3] = 1.0;
      }

      else
      {
        (*mat)[i] = 0.0;
      }
    }

    ++v3;
    ++mat;
  }

  while (v3 != 4);
  return result;
}

- (FxMatrix44)initWithMatrix44Data:(double)a3[4][4]
{
  v8.receiver = self;
  v8.super_class = FxMatrix44;
  result = [(FxMatrix44 *)&v8 init];
  v5 = 0;
  mat = result->_mat;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      (*mat)[i] = (*a3)[i];
    }

    ++v5;
    ++a3;
    ++mat;
  }

  while (v5 != 4);
  if (fabs(result->_mat[2][2]) < 0.00000011920929)
  {
    result->_mat[0][2] = 0.0;
    result->_mat[1][2] = 0.0;
    result->_mat[2][2] = 0.0;
    result->_mat[3][2] = 0.0;
  }

  return result;
}

- (FxMatrix44)initWithColorMatrix44Data:(double)a3[4][4]
{
  v8.receiver = self;
  v8.super_class = FxMatrix44;
  result = [(FxMatrix44 *)&v8 init];
  v5 = 0;
  mat = result->_mat;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      (*mat)[i] = (*a3)[i];
    }

    ++v5;
    ++a3;
    ++mat;
  }

  while (v5 != 4);
  return result;
}

- (FxMatrix44)initWithFxMatrix:(id)a3
{
  v9.receiver = self;
  v9.super_class = FxMatrix44;
  result = [(FxMatrix44 *)&v9 init];
  v5 = 0;
  v6 = a3 + 8;
  mat = result->_mat;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      (*mat)[i] = *&v6[i * 8];
    }

    ++v5;
    v6 += 32;
    ++mat;
  }

  while (v5 != 4);
  return result;
}

- (FxMatrix44)initWithInverseOfFxMatrix:(id)a3
{
  v3 = [(FxMatrix44 *)self initWithFxMatrix:a3];
  v4 = v3;
  if (v3 && ![(FxMatrix44 *)v3 invert])
  {

    return 0;
  }

  return v4;
}

- (id)copy
{
  v3 = [FxMatrix44 alloc];

  return [(FxMatrix44 *)v3 initWithFxMatrix:self];
}

- (FxMatrix44)initWithCoder:(id)a3
{
  v17[1] = *MEMORY[0x277D85DE8];
  v15.receiver = self;
  v15.super_class = FxMatrix44;
  v4 = [(FxMatrix44 *)&v15 init];
  if (v4)
  {
    v14 = 0;
    v5 = [a3 decodeBytesForKey:@"Matrix" returnedLength:&v14];
    if (v14 == 128)
    {
      v6 = *v5;
      v7 = v5[1];
      v8 = v5[2];
      *(v4 + 56) = v5[3];
      *(v4 + 40) = v8;
      *(v4 + 24) = v7;
      *(v4 + 8) = v6;
      v9 = v5[4];
      v10 = v5[5];
      v11 = v5[6];
      *(v4 + 120) = v5[7];
      *(v4 + 104) = v11;
      *(v4 + 88) = v10;
      *(v4 + 72) = v9;
    }

    else
    {
      v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"Found an invalid data length in %s", "-[FxMatrix44 initWithCoder:]"];
      v16 = *MEMORY[0x277CCA450];
      v17[0] = v12;
      [a3 failWithError:{objc_msgSend(MEMORY[0x277CCA9B8], "errorWithDomain:code:userInfo:", FxPlugErrorDomain, 15, objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v17, &v16, 1))}];
    }
  }

  return v4;
}

- (void)setToIdentity
{
  v2 = 0;
  mat = self->_mat;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      if (v2 == i)
      {
        self->_mat[v2][v2] = 1.0;
      }

      else
      {
        (*mat)[i] = 0.0;
      }
    }

    ++v2;
    ++mat;
  }

  while (v2 != 4);
}

- (void)setMatrix:(double)a3[4][4]
{
  v3 = 0;
  mat = self->_mat;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      (*mat)[i] = (*a3)[i];
    }

    ++v3;
    ++a3;
    ++mat;
  }

  while (v3 != 4);
}

- (BOOL)_planarInverseZ
{
  v3 = self->_mat[1][0];
  v2 = self->_mat[1][1];
  v4 = self->_mat[3][3];
  v5 = self->_mat[1][3];
  v7 = self->_mat[3][0];
  v6 = self->_mat[3][1];
  v8 = v2 * v4 - v6 * v5;
  v9 = self->_mat[0][3];
  v10 = v5 * v7 - v4 * v3;
  v12 = self->_mat[0][0];
  v11 = self->_mat[0][1];
  v13 = v6 * v3 - v2 * v7;
  v14 = v9 * v13 + v8 * v12 + v11 * v10;
  v15 = fabs(v14);
  if (v15 >= 0.00000011920929)
  {
    self->_mat[0][0] = v8 * (1.0 / v14);
    self->_mat[0][1] = (v6 * v9 - v4 * v11) * (1.0 / v14);
    self->_mat[0][3] = (v5 * v11 - v2 * v9) * (1.0 / v14);
    self->_mat[1][0] = v10 * (1.0 / v14);
    self->_mat[1][1] = (v4 * v12 - v9 * v7) * (1.0 / v14);
    self->_mat[1][3] = (v9 * v3 - v5 * v12) * (1.0 / v14);
    self->_mat[3][0] = v13 * (1.0 / v14);
    self->_mat[3][1] = (v11 * v7 - v6 * v12) * (1.0 / v14);
    self->_mat[3][3] = (v2 * v12 - v11 * v3) * (1.0 / v14);
    self->_mat[3][2] = 0.0;
    self->_mat[1][2] = 0.0;
    self->_mat[0][2] = 0.0;
    *&self->_mat[2][0] = 0u;
    *&self->_mat[2][2] = 0u;
  }

  return v15 >= 0.00000011920929;
}

- (BOOL)invert
{
  v5 = self->_mat[2][0];
  v4 = self->_mat[2][1];
  v3.i64[0] = *&self->_mat[3][0];
  v6 = self->_mat[3][1];
  v7 = v6 * v5 - v4 * *v3.i64;
  v8 = *&self->_mat[3][2];
  v9 = *&self->_mat[2][2];
  v10 = vmulq_f64(vextq_s8(v8, v8, 8uLL), v9);
  v11 = vsubq_f64(v10, vdupq_laneq_s64(v10, 1));
  v12 = vsubq_f64(vmulq_n_f64(v8, v4), vmulq_n_f64(v9, v6));
  v13 = vsubq_f64(vmulq_n_f64(v8, v5), vmulq_n_f64(v9, *v3.i64));
  v14 = *&self->_mat[1][2];
  v15 = *&self->_mat[1][0];
  v16 = *&self->_mat[0][0];
  v17 = vmulq_n_f64(v15, v11.f64[0]);
  v18 = vaddq_f64(vsubq_f64(vextq_s8(v17, v17, 8uLL), vmulq_n_f64(vzip2q_s64(v12, v13), v14.f64[0])), vmulq_laneq_f64(vzip1q_s64(v12, v13), v14, 1));
  v19 = vaddq_f64(vmulq_n_f64(v14, v7), vsubq_f64(vmulq_n_f64(v12, v15.f64[0]), vmulq_laneq_f64(v13, v15, 1)));
  v20 = vmulq_f64(v18, v16);
  v21 = vsubq_f64(v20, vdupq_laneq_s64(v20, 1));
  v22 = *&self->_mat[0][2];
  v23 = vextq_s8(v22, v22, 8uLL);
  v24 = vmulq_f64(v19, v23);
  *&v25 = *&vsubq_f64(vaddq_f64(vdupq_laneq_s64(v24, 1), v21), v24);
  if (fabs(v25) >= 0.00000011920929)
  {
    v27 = vmuld_lane_f64(v14.f64[0], v8, 1) - vmuld_lane_f64(v8.f64[0], v14, 1);
    v28 = vmuld_lane_f64(v8.f64[1], v15, 1) - vmuld_lane_f64(v6, v14, 1);
    v29 = vmuld_lane_f64(v8.f64[0], v15, 1) - v6 * v14.f64[0];
    v30 = vmuld_lane_f64(v15.f64[0], v8, 1) - vmuld_lane_f64(*v3.i64, v14, 1);
    v31 = vmulq_f64(v8, v15).f64[0] - *v3.i64 * v14.f64[0];
    v32 = v6 * v15.f64[0] - vmuld_lane_f64(*v3.i64, v15, 1);
    v33 = vmuld_lane_f64(v14.f64[0], v9, 1) - vmuld_lane_f64(v9.f64[0], v14, 1);
    *v3.i64 = vmuld_lane_f64(v9.f64[1], v15, 1) - vmuld_lane_f64(v4, v14, 1);
    v34 = vmuld_lane_f64(v9.f64[0], v15, 1) - v4 * v14.f64[0];
    v35 = vmuld_lane_f64(v15.f64[0], v9, 1) - vmuld_lane_f64(v5, v14, 1);
    v36 = vmulq_f64(v9, v15).f64[0] - v5 * v14.f64[0];
    v37 = v4 * v15.f64[0] - vmuld_lane_f64(v5, v15, 1);
    v38 = vmuld_lane_f64(v11.f64[0], v16, 1) - vmuld_lane_f64(v22.f64[0], v12, 1) + vmulq_f64(v12, v23).f64[0];
    v39 = vmulq_f64(v11, v16).f64[0] - vmuld_lane_f64(v22.f64[0], v13, 1) + vmulq_f64(v13, v23).f64[0];
    v40 = vmuld_lane_f64(v16.f64[0], v12, 1) - vmuld_lane_f64(v13.f64[1], v16, 1) + vmuld_lane_f64(v7, v22, 1);
    v41 = vmulq_f64(v12, v16).f64[0] - vmuld_lane_f64(v13.f64[0], v16, 1) + v7 * v22.f64[0];
    v42 = vmuld_lane_f64(v29, v22, 1) + vmuld_lane_f64(v27, v16, 1) - v28 * v22.f64[0];
    v43 = v32 * v22.f64[0] + v29 * v16.f64[0] - vmuld_lane_f64(v31, v16, 1);
    v44 = vmuld_lane_f64(v34, v22, 1) + vmuld_lane_f64(v33, v16, 1) - *v3.i64 * v22.f64[0];
    *v3.i64 = vmuld_lane_f64(v37, v22, 1) + *v3.i64 * v16.f64[0] - vmuld_lane_f64(v35, v16, 1);
    v45 = 1.0 / v25;
    self->_mat[0][0] = v45 * v18.f64[0];
    self->_mat[0][1] = -(v38 * v45);
    self->_mat[0][2] = v45 * v42;
    v18.f64[0] = v44;
    *&self->_mat[0][3] = vmulq_n_f64(vnegq_f64(v18), v45);
    self->_mat[1][1] = v39 * v45;
    self->_mat[1][2] = -((vmuld_lane_f64(v31, v22, 1) + v27 * v16.f64[0] - v30 * v22.f64[0]) * v45);
    self->_mat[1][3] = v45 * (vmuld_lane_f64(v36, v22, 1) + v33 * v16.f64[0] - v35 * v22.f64[0]);
    self->_mat[2][0] = vmuld_lane_f64(v45, v19, 1);
    self->_mat[2][1] = -(v40 * v45);
    self->_mat[2][2] = v45 * (vmuld_lane_f64(v32, v22, 1) + v28 * v16.f64[0] - vmuld_lane_f64(v30, v16, 1));
    *&self->_mat[2][3] = vmulq_n_f64(vnegq_f64(vzip1q_s64(v3, v19)), v45);
    self->_mat[3][1] = v41 * v45;
    self->_mat[3][2] = -(v43 * v45);
    self->_mat[3][3] = v45 * (v37 * v22.f64[0] + v34 * v16.f64[0] - vmuld_lane_f64(v36, v16, 1));
    return 1;
  }

  else if (fabs(v9.f64[0]) >= 0.00000011920929)
  {
    return 0;
  }

  else
  {

    return [(FxMatrix44 *)self _planarInverseZ];
  }
}

- (BOOL)invertColorMatrixWithTolerance:(double)a3
{
  v5 = self->_mat[2][0];
  v4 = self->_mat[2][1];
  v3.i64[0] = *&self->_mat[3][0];
  v6 = self->_mat[3][1];
  v7 = v6 * v5 - v4 * *v3.i64;
  v8 = *&self->_mat[3][2];
  v9 = *&self->_mat[2][2];
  v10 = vmulq_f64(vextq_s8(v8, v8, 8uLL), v9);
  v11 = vsubq_f64(v10, vdupq_laneq_s64(v10, 1));
  v12 = vsubq_f64(vmulq_n_f64(v8, v4), vmulq_n_f64(v9, v6));
  v13 = vsubq_f64(vmulq_n_f64(v8, v5), vmulq_n_f64(v9, *v3.i64));
  v14 = *&self->_mat[1][2];
  v15 = *&self->_mat[1][0];
  v16 = *&self->_mat[0][0];
  v17 = vmulq_n_f64(v15, v11.f64[0]);
  v18 = vaddq_f64(vsubq_f64(vextq_s8(v17, v17, 8uLL), vmulq_n_f64(vzip2q_s64(v12, v13), v14.f64[0])), vmulq_laneq_f64(vzip1q_s64(v12, v13), v14, 1));
  v19 = vaddq_f64(vmulq_n_f64(v14, v7), vsubq_f64(vmulq_n_f64(v12, v15.f64[0]), vmulq_laneq_f64(v13, v15, 1)));
  v20 = vmulq_f64(v18, v16);
  v21 = vsubq_f64(v20, vdupq_laneq_s64(v20, 1));
  v22 = *&self->_mat[0][2];
  v23 = vextq_s8(v22, v22, 8uLL);
  v24 = vmulq_f64(v19, v23);
  v25 = vsubq_f64(vaddq_f64(vdupq_laneq_s64(v24, 1), v21), v24).f64[0];
  v26 = fabs(v25) >= a3 && v25 != 0.0;
  if (v26)
  {
    v27 = vmuld_lane_f64(v14.f64[0], v8, 1) - vmuld_lane_f64(v8.f64[0], v14, 1);
    v28 = vmuld_lane_f64(v8.f64[1], v15, 1) - vmuld_lane_f64(v6, v14, 1);
    v29 = vmuld_lane_f64(v8.f64[0], v15, 1) - v6 * v14.f64[0];
    v30 = vmuld_lane_f64(v15.f64[0], v8, 1) - vmuld_lane_f64(*v3.i64, v14, 1);
    v31 = vmulq_f64(v8, v15).f64[0] - *v3.i64 * v14.f64[0];
    v32 = v6 * v15.f64[0] - vmuld_lane_f64(*v3.i64, v15, 1);
    v33 = vmuld_lane_f64(v14.f64[0], v9, 1) - vmuld_lane_f64(v9.f64[0], v14, 1);
    *v3.i64 = vmuld_lane_f64(v9.f64[1], v15, 1) - vmuld_lane_f64(v4, v14, 1);
    v34 = vmuld_lane_f64(v9.f64[0], v15, 1) - v4 * v14.f64[0];
    v35 = vmuld_lane_f64(v15.f64[0], v9, 1) - vmuld_lane_f64(v5, v14, 1);
    v36 = vmulq_f64(v9, v15).f64[0] - v5 * v14.f64[0];
    v37 = v4 * v15.f64[0] - vmuld_lane_f64(v5, v15, 1);
    v38 = vmuld_lane_f64(v11.f64[0], v16, 1) - vmuld_lane_f64(v22.f64[0], v12, 1) + vmulq_f64(v12, v23).f64[0];
    v39 = vmulq_f64(v11, v16).f64[0] - vmuld_lane_f64(v22.f64[0], v13, 1) + vmulq_f64(v13, v23).f64[0];
    v40 = vmuld_lane_f64(v16.f64[0], v12, 1) - vmuld_lane_f64(v13.f64[1], v16, 1) + vmuld_lane_f64(v7, v22, 1);
    v41 = vmulq_f64(v12, v16).f64[0] - vmuld_lane_f64(v13.f64[0], v16, 1) + v7 * v22.f64[0];
    v42 = vmuld_lane_f64(v29, v22, 1) + vmuld_lane_f64(v27, v16, 1) - v28 * v22.f64[0];
    v43 = vmuld_lane_f64(v32, v22, 1) + v28 * v16.f64[0] - vmuld_lane_f64(v30, v16, 1);
    v44 = vmuld_lane_f64(v34, v22, 1) + vmuld_lane_f64(v33, v16, 1) - *v3.i64 * v22.f64[0];
    *v3.i64 = vmuld_lane_f64(v37, v22, 1) + *v3.i64 * v16.f64[0] - vmuld_lane_f64(v35, v16, 1);
    v45 = 1.0 / v25;
    self->_mat[0][0] = v45 * v18.f64[0];
    self->_mat[0][1] = -(v38 * v45);
    self->_mat[0][2] = v45 * v42;
    v18.f64[0] = v44;
    *&self->_mat[0][3] = vmulq_n_f64(vnegq_f64(v18), v45);
    self->_mat[1][1] = v39 * v45;
    self->_mat[1][2] = -((vmuld_lane_f64(v31, v22, 1) + v27 * v16.f64[0] - v30 * v22.f64[0]) * v45);
    self->_mat[1][3] = v45 * (vmuld_lane_f64(v36, v22, 1) + v33 * v16.f64[0] - v35 * v22.f64[0]);
    self->_mat[2][0] = vmuld_lane_f64(v45, v19, 1);
    self->_mat[2][1] = -(v40 * v45);
    self->_mat[2][2] = v45 * v43;
    *&self->_mat[2][3] = vmulq_n_f64(vnegq_f64(vzip1q_s64(v3, v19)), v45);
    self->_mat[3][1] = v41 * v45;
    self->_mat[3][2] = -((v32 * v22.f64[0] + v29 * v16.f64[0] - vmuld_lane_f64(v31, v16, 1)) * v45);
    self->_mat[3][3] = v45 * (v37 * v22.f64[0] + v34 * v16.f64[0] - vmuld_lane_f64(v36, v16, 1));
  }

  return v26;
}

- (CGPoint)transform2DPoint:(CGPoint)a3
{
  v3 = self->_mat[3][3] + a3.x * self->_mat[3][0] + a3.y * self->_mat[3][1];
  v4 = (self->_mat[0][3] + a3.x * self->_mat[0][0] + a3.y * self->_mat[0][1]) / v3;
  v5 = (self->_mat[1][3] + a3.x * self->_mat[1][0] + a3.y * self->_mat[1][1]) / v3;
  v6 = v4;
  result.y = v5;
  result.x = v6;
  return result;
}

- (FxPoint3D)transform3DPoint:(FxPoint3D)a3
{
  v3 = self->_mat[3][3] + a3.var0 * self->_mat[3][0] + a3.var1 * self->_mat[3][1] + a3.var2 * self->_mat[3][2];
  v4 = self->_mat[1][3] + a3.var0 * self->_mat[1][0] + a3.var1 * self->_mat[1][1] + a3.var2 * self->_mat[1][2];
  v5 = a3.var0 * self->_mat[2][0];
  v6 = (self->_mat[0][3] + a3.var0 * self->_mat[0][0] + a3.var1 * self->_mat[0][1] + a3.var2 * self->_mat[0][2]) / v3;
  v7 = (self->_mat[2][3] + v5 + a3.var1 * self->_mat[2][1] + a3.var2 * self->_mat[2][2]) / v3;
  v8 = v4 / v3;
  result.var2 = v7;
  result.var1 = v8;
  result.var0 = v6;
  return result;
}

- (id)description
{
  v3 = objc_msgSend(objc_alloc(MEMORY[0x277CCAB68]), "initWithString:", @"(\n");
  v4 = 0;
  mat = self->_mat;
  do
  {
    for (i = 0; i != 4; ++i)
    {
      [v3 appendFormat:@"%f, ", *&(*mat)[i]];
    }

    [v3 appendString:@"\n"];
    ++v4;
    ++mat;
  }

  while (v4 != 4);
  [v3 appendString:@""]);

  return v3;
}

- (void)transpose
{
  v2 = 0;
  mat = self->_mat;
  v4 = 4;
  do
  {
    v5 = v4;
    v6 = mat;
    v7 = mat;
    do
    {
      v8 = (*v7)[0];
      (*v7)[0] = (*v6)[0];
      v7 = (v7 + 8);
      (*v6++)[0] = v8;
      --v5;
    }

    while (v5);
    ++v2;
    mat = (mat + 40);
    --v4;
  }

  while (v2 != 4);
}

@end