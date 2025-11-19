uint64_t MRIsAppleTV()
{
  if (qword_1EF2F0 != -1)
  {
    sub_13698C();
  }

  return byte_1EF2E8;
}

void sub_98B18(id a1)
{
  size = 0;
  *v4 = 0x100000006;
  sysctl(v4, 2u, 0, &size, 0, 0);
  v1 = malloc_type_malloc(size, 0xD21BC6BFuLL);
  sysctl(v4, 2u, v1, &size, 0, 0);
  v2 = [NSString stringWithCString:v1 encoding:1];
  free(v1);
  byte_1EF2E8 = [(NSString *)v2 hasPrefix:@"AppleTV"];
}

int *MRMatrix_Identity()
{
  if (*&dword_1EF2F8 == 0.0)
  {
    *&algn_1EF310[12] = 0u;
    *&dword_1EF30C = 0u;
    unk_1EF32C = 0;
    unk_1EF2FC = 0u;
    dword_1EF334 = 1065353216;
    dword_1EF320 = 1065353216;
    dword_1EF30C = 1065353216;
    dword_1EF2F8 = 1065353216;
  }

  return &dword_1EF2F8;
}

double MRMatrix_Clear(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 60) = 1065353216;
  *(a1 + 40) = 1065353216;
  *(a1 + 20) = 1065353216;
  *a1 = 1065353216;
  return result;
}

uint64_t MRMatrix_SetDiagonal(uint64_t result, float a2, float a3, float a4)
{
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *result = a2;
  *(result + 20) = a3;
  *(result + 40) = a4;
  *(result + 60) = 1065353216;
  return result;
}

float MRMatrix_SetRotationFromAnglesYXZDeg(uint64_t a1, float a2, float a3, float a4)
{
  v4 = a3 * 0.0174532925;
  v5 = a2 * 0.0174532925;
  v6 = a4 * 0.0174532925;
  return MRMatrix_SetRotationFromAnglesYXZRad(a1, v5, v4, v6);
}

float MRMatrix_SetRotationFromAnglesYXZRad(uint64_t a1, float a2, float a3, float a4)
{
  v8 = __sincosf_stret(a3);
  if (a3 == 0.0)
  {
    cosval = 1.0;
  }

  else
  {
    cosval = v8.__cosval;
  }

  if (a3 == 0.0)
  {
    sinval = 0.0;
  }

  else
  {
    sinval = v8.__sinval;
  }

  v11 = __sincosf_stret(a2);
  v12 = a2 == 0.0;
  if (a2 == 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v11.__cosval;
  }

  if (v12)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11.__sinval;
  }

  v17 = __sincosf_stret(a4);
  v16 = v17.__cosval;
  v15 = v17.__sinval;
  if (a4 == 0.0)
  {
    v16 = 1.0;
    v15 = 0.0;
  }

  *a1 = ((v14 * sinval) * v15) + (v13 * v16);
  *(a1 + 4) = cosval * v15;
  *(a1 + 8) = ((v13 * sinval) * v15) - (v14 * v16);
  *(a1 + 12) = 0;
  *(a1 + 16) = ((v14 * sinval) * v16) - (v13 * v15);
  *(a1 + 20) = cosval * v16;
  *(a1 + 24) = ((v13 * sinval) * v16) + (v14 * v15);
  *(a1 + 28) = 0;
  *(a1 + 32) = v14 * cosval;
  *(a1 + 36) = -sinval;
  result = v13 * cosval;
  *(a1 + 40) = v13 * cosval;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  return result;
}

float MRMatrix_SetRotationFromAnglesXYZDeg(uint64_t a1, float a2, float a3, float a4)
{
  v4 = a2 * 0.0174532925;
  v5 = a3 * 0.0174532925;
  v6 = a4 * 0.0174532925;
  return MRMatrix_SetRotationFromAnglesXYZRad(a1, v4, v5, v6);
}

float MRMatrix_SetRotationFromAnglesXYZRad(uint64_t a1, float a2, float a3, float a4)
{
  v8 = __sincosf_stret(a2);
  if (a2 == 0.0)
  {
    cosval = 1.0;
  }

  else
  {
    cosval = v8.__cosval;
  }

  if (a2 == 0.0)
  {
    sinval = 0.0;
  }

  else
  {
    sinval = v8.__sinval;
  }

  v11 = __sincosf_stret(a3);
  v12 = a3 == 0.0;
  if (a3 == 0.0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = v11.__cosval;
  }

  if (v12)
  {
    v14 = 0.0;
  }

  else
  {
    v14 = v11.__sinval;
  }

  v17 = __sincosf_stret(a4);
  v16 = v17.__cosval;
  v15 = v17.__sinval;
  if (a4 == 0.0)
  {
    v16 = 1.0;
    v15 = 0.0;
  }

  *a1 = v13 * v16;
  *(a1 + 4) = (cosval * v15) + ((sinval * v14) * v16);
  *(a1 + 8) = (sinval * v15) - ((cosval * v14) * v16);
  *(a1 + 12) = 0;
  *(a1 + 16) = -(v13 * v15);
  *(a1 + 20) = (cosval * v16) - ((sinval * v14) * v15);
  *(a1 + 24) = (sinval * v16) + ((cosval * v14) * v15);
  *(a1 + 28) = 0;
  *(a1 + 32) = v14;
  *(a1 + 36) = -(sinval * v13);
  result = cosval * v13;
  *(a1 + 40) = cosval * v13;
  *(a1 + 52) = 0;
  *(a1 + 44) = 0;
  *(a1 + 60) = 1065353216;
  return result;
}

float32_t MRMatrix_Translate(float32x2_t *a1, float32x2_t a2, float32_t a3, float a4)
{
  a2.f32[1] = a3;
  a1[6] = vadd_f32(a1[6], a2);
  result = a1[7].f32[0] + a4;
  a1[7].f32[0] = result;
  return result;
}

float32_t MRMatrix_Scale(float32x2_t *a1, float32x2_t a2, float32_t a3, float a4)
{
  a2.f32[1] = a3;
  *a1 = vmul_f32(*a1, a2);
  a1[1].f32[0] = a1[1].f32[0] * a4;
  a1[2] = vmul_f32(a1[2], a2);
  a1[3].f32[0] = a1[3].f32[0] * a4;
  a1[4] = vmul_f32(a1[4], a2);
  a1[5].f32[0] = a1[5].f32[0] * a4;
  a1[6] = vmul_f32(a1[6], a2);
  result = a1[7].f32[0] * a4;
  a1[7].f32[0] = result;
  return result;
}

double MRMatrix_PreMultiply(float *a1, uint64_t a2)
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  MRMatrix_MultiplyWithMatrix(a1, a2, &v6);
  v3 = v7;
  *a2 = v6;
  *(a2 + 16) = v3;
  result = *&v8;
  v5 = v9;
  *(a2 + 32) = v8;
  *(a2 + 48) = v5;
  return result;
}

float MRMatrix_MultiplyWithMatrix(float *a1, float *a2, float *a3)
{
  *a3 = (((a1[1] * a2[4]) + (*a1 * *a2)) + (a1[2] * a2[8])) + (a1[3] * a2[12]);
  a3[1] = (((a1[1] * a2[5]) + (*a1 * a2[1])) + (a1[2] * a2[9])) + (a1[3] * a2[13]);
  a3[2] = (((a1[1] * a2[6]) + (*a1 * a2[2])) + (a1[2] * a2[10])) + (a1[3] * a2[14]);
  a3[3] = (((a1[1] * a2[7]) + (*a1 * a2[3])) + (a1[2] * a2[11])) + (a1[3] * a2[15]);
  a3[4] = (((a1[5] * a2[4]) + (a1[4] * *a2)) + (a1[6] * a2[8])) + (a1[7] * a2[12]);
  a3[5] = (((a1[5] * a2[5]) + (a1[4] * a2[1])) + (a1[6] * a2[9])) + (a1[7] * a2[13]);
  a3[6] = (((a1[5] * a2[6]) + (a1[4] * a2[2])) + (a1[6] * a2[10])) + (a1[7] * a2[14]);
  a3[7] = (((a1[5] * a2[7]) + (a1[4] * a2[3])) + (a1[6] * a2[11])) + (a1[7] * a2[15]);
  a3[8] = (((a1[9] * a2[4]) + (a1[8] * *a2)) + (a1[10] * a2[8])) + (a1[11] * a2[12]);
  a3[9] = (((a1[9] * a2[5]) + (a1[8] * a2[1])) + (a1[10] * a2[9])) + (a1[11] * a2[13]);
  a3[10] = (((a1[9] * a2[6]) + (a1[8] * a2[2])) + (a1[10] * a2[10])) + (a1[11] * a2[14]);
  a3[11] = (((a1[9] * a2[7]) + (a1[8] * a2[3])) + (a1[10] * a2[11])) + (a1[11] * a2[15]);
  a3[12] = (((a1[13] * a2[4]) + (a1[12] * *a2)) + (a1[14] * a2[8])) + (a1[15] * a2[12]);
  a3[13] = (((a1[13] * a2[5]) + (a1[12] * a2[1])) + (a1[14] * a2[9])) + (a1[15] * a2[13]);
  a3[14] = (((a1[13] * a2[6]) + (a1[12] * a2[2])) + (a1[14] * a2[10])) + (a1[15] * a2[14]);
  result = (((a1[13] * a2[7]) + (a1[12] * a2[3])) + (a1[14] * a2[11])) + (a1[15] * a2[15]);
  a3[15] = result;
  return result;
}

double MRMatrix_PostMultiply(uint64_t a1, float *a2)
{
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  MRMatrix_MultiplyWithMatrix(a1, a2, &v6);
  v3 = v7;
  *a1 = v6;
  *(a1 + 16) = v3;
  result = *&v8;
  v5 = v9;
  *(a1 + 32) = v8;
  *(a1 + 48) = v5;
  return result;
}

float MRMatrix_TransformVector(float *a1, float *a2, float *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 * a1[4] + *a1 * v3 + a1[8] * v5 + a1[12];
  *a3 = v6;
  v7 = v4 * a1[5] + a1[1] * v3 + a1[9] * v5 + a1[13];
  a3[1] = v7;
  v8 = v4 * a1[6] + a1[2] * v3 + a1[10] * v5 + a1[14];
  a3[2] = v8;
  result = v4 * a1[7] + a1[3] * v3 + a1[11] * v5 + a1[15];
  a3[3] = result;
  return result;
}

float MRMatrix_RotateVector(float *a1, float *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v4 * a1[4] + *a1 * v3 + a1[8] * v5;
  *a3 = v6;
  v7 = v4 * a1[5] + a1[1] * v3 + a1[9] * v5;
  *(a3 + 4) = v7;
  result = v4 * a1[6] + a1[2] * v3 + a1[10] * v5;
  *(a3 + 8) = result;
  *(a3 + 12) = 1065353216;
  return result;
}

void MRMatrix_ConcatenateWithMatrix(float *a1, float *a2, uint64_t a3)
{
  MRMatrix_RotateVector(a2, a1, a3);
  MRMatrix_RotateVector(a2, a1 + 4, a3 + 16);
  MRMatrix_RotateVector(a2, a1 + 8, a3 + 32);
  MRMatrix_TransformVector(a2, a1 + 12, (a3 + 48));
  *(a3 + 44) = 0;
  *(a3 + 28) = 0;
  *(a3 + 12) = 0;
  *(a3 + 60) = 1065353216;
}

double MRMatrix_Determinant(float *a1)
{
  v1 = a1[1];
  v3 = a1[4];
  v2 = a1[5];
  v4 = *a1 * v2;
  v5 = a1[10];
  v6 = a1[11];
  v7 = a1[6];
  v8 = a1[7];
  v9 = *a1 * v7;
  v11 = a1[12];
  v10 = a1[13];
  v13 = a1[14];
  v12 = a1[15];
  v14 = *a1 * v8;
  v16 = a1[8];
  v15 = a1[9];
  v17 = v1 * v3;
  v18 = v7 * v1;
  v19 = (((((v9 * v6) * v10) + ((v4 * v5) * v12)) + ((v14 * v15) * v13)) + ((v6 * (v1 * v3)) * v13)) + (((v7 * v1) * v16) * v12);
  v20 = v8 * v1;
  v21 = a1[2];
  v22 = a1[3];
  v23 = v8 * v21;
  return (((((((((((((((((((v19 + ((v5 * v20) * v11)) + ((v15 * (v3 * v21)) * v12)) + ((v6 * (v2 * v21)) * v11)) + ((v16 * v23) * v10)) + ((v5 * (v3 * v22)) * v10)) + ((v16 * (v2 * v22)) * v13)) + ((v15 * (v7 * v22)) * v11)) + (-(v4 * v6) * v13)) + (-(v9 * v15) * v12)) + (-(v14 * v5) * v10)) + (-(v17 * v5) * v12)) + (-(v18 * v6) * v11)) + (-(v20 * v16) * v13)) + (-((v3 * v21) * v6) * v10)) + (-((v2 * v21) * v16) * v12)) + (-(v23 * v15) * v11)) + (-((v3 * v22) * v15) * v13)) + (-((v2 * v22) * v5) * v11)) + (-((v7 * v22) * v16) * v10));
}

BOOL MRMatrix_Invert(float *a1, float *a2)
{
  *&v4 = MRMatrix_Determinant(a1);
  if (*&v4 != 0.0)
  {
    v5 = 0;
    *a2 = ((((((a1[6] * a1[11]) * a1[13]) + ((a1[5] * a1[10]) * a1[15])) + ((a1[7] * a1[9]) * a1[14])) + (-(a1[5] * a1[11]) * a1[14])) + (-(a1[6] * a1[9]) * a1[15])) + (-(a1[7] * a1[10]) * a1[13]);
    a2[1] = ((((((a1[2] * a1[9]) * a1[15]) + ((a1[1] * a1[11]) * a1[14])) + ((a1[3] * a1[10]) * a1[13])) + (-(a1[1] * a1[10]) * a1[15])) + (-(a1[2] * a1[11]) * a1[13])) + (-(a1[3] * a1[9]) * a1[14]);
    a2[2] = ((((((a1[2] * a1[7]) * a1[13]) + ((a1[1] * a1[6]) * a1[15])) + ((a1[3] * a1[5]) * a1[14])) + (-(a1[1] * a1[7]) * a1[14])) + (-(a1[2] * a1[5]) * a1[15])) + (-(a1[3] * a1[6]) * a1[13]);
    a2[3] = ((((((a1[2] * a1[5]) * a1[11]) + ((a1[1] * a1[7]) * a1[10])) + ((a1[3] * a1[6]) * a1[9])) + (-(a1[1] * a1[6]) * a1[11])) + (-(a1[2] * a1[7]) * a1[9])) + (-(a1[3] * a1[5]) * a1[10]);
    a2[4] = ((((((a1[6] * a1[8]) * a1[15]) + ((a1[4] * a1[11]) * a1[14])) + ((a1[7] * a1[10]) * a1[12])) + (-(a1[4] * a1[10]) * a1[15])) + (-(a1[6] * a1[11]) * a1[12])) + (-(a1[7] * a1[8]) * a1[14]);
    a2[5] = ((((((a1[2] * a1[11]) * a1[12]) + ((*a1 * a1[10]) * a1[15])) + ((a1[3] * a1[8]) * a1[14])) + (-(*a1 * a1[11]) * a1[14])) + (-(a1[2] * a1[8]) * a1[15])) + (-(a1[3] * a1[10]) * a1[12]);
    a2[6] = ((((((a1[2] * a1[4]) * a1[15]) + ((*a1 * a1[7]) * a1[14])) + ((a1[3] * a1[6]) * a1[12])) + (-(*a1 * a1[6]) * a1[15])) + (-(a1[2] * a1[7]) * a1[12])) + (-(a1[3] * a1[4]) * a1[14]);
    a2[7] = ((((((a1[2] * a1[7]) * a1[8]) + ((*a1 * a1[6]) * a1[11])) + ((a1[3] * a1[4]) * a1[10])) + (-(*a1 * a1[7]) * a1[10])) + (-(a1[2] * a1[4]) * a1[11])) + (-(a1[3] * a1[6]) * a1[8]);
    a2[8] = ((((((a1[5] * a1[11]) * a1[12]) + ((a1[4] * a1[9]) * a1[15])) + ((a1[7] * a1[8]) * a1[13])) + (-(a1[4] * a1[11]) * a1[13])) + (-(a1[5] * a1[8]) * a1[15])) + (-(a1[7] * a1[9]) * a1[12]);
    a2[9] = ((((((a1[1] * a1[8]) * a1[15]) + ((*a1 * a1[11]) * a1[13])) + ((a1[3] * a1[9]) * a1[12])) + (-(*a1 * a1[9]) * a1[15])) + (-(a1[1] * a1[11]) * a1[12])) + (-(a1[3] * a1[8]) * a1[13]);
    a2[10] = ((((((a1[1] * a1[7]) * a1[12]) + ((*a1 * a1[5]) * a1[15])) + ((a1[3] * a1[4]) * a1[13])) + (-(*a1 * a1[7]) * a1[13])) + (-(a1[1] * a1[4]) * a1[15])) + (-(a1[3] * a1[5]) * a1[12]);
    a2[11] = ((((((a1[1] * a1[4]) * a1[11]) + ((*a1 * a1[7]) * a1[9])) + ((a1[3] * a1[5]) * a1[8])) + (-(*a1 * a1[5]) * a1[11])) + (-(a1[1] * a1[7]) * a1[8])) + (-(a1[3] * a1[4]) * a1[9]);
    a2[12] = ((((((a1[5] * a1[8]) * a1[14]) + ((a1[4] * a1[10]) * a1[13])) + ((a1[6] * a1[9]) * a1[12])) + (-(a1[4] * a1[9]) * a1[14])) + (-(a1[5] * a1[10]) * a1[12])) + (-(a1[6] * a1[8]) * a1[13]);
    a2[13] = ((((((a1[1] * a1[10]) * a1[12]) + ((*a1 * a1[9]) * a1[14])) + ((a1[2] * a1[8]) * a1[13])) + (-(*a1 * a1[10]) * a1[13])) + (-(a1[1] * a1[8]) * a1[14])) + (-(a1[2] * a1[9]) * a1[12]);
    a2[14] = ((((((a1[1] * a1[4]) * a1[14]) + ((*a1 * a1[6]) * a1[13])) + ((a1[2] * a1[5]) * a1[12])) + (-(*a1 * a1[5]) * a1[14])) + (-(a1[1] * a1[6]) * a1[12])) + (-(a1[2] * a1[4]) * a1[13]);
    a2[15] = ((((((a1[1] * a1[6]) * a1[8]) + ((*a1 * a1[5]) * a1[10])) + ((a1[2] * a1[4]) * a1[9])) + (-(*a1 * a1[6]) * a1[9])) + (-(a1[1] * a1[4]) * a1[10])) + (-(a1[2] * a1[5]) * a1[8]);
    v6 = vdupq_lane_s64(v4, 0);
    do
    {
      *&a2[v5] = vcvt_hight_f32_f64(vcvt_f32_f64(vdivq_f64(vcvtq_f64_f32(*&a2[v5]), v6)), vdivq_f64(vcvt_hight_f64_f32(*&a2[v5]), v6));
      v5 += 4;
    }

    while (v5 != 16);
  }

  return *&v4 != 0.0;
}

float MRMatrix_Frustum(uint64_t a1, float a2, float a3, float a4, float a5, float a6, float a7)
{
  *(a1 + 60) = 0;
  *(a1 + 24) = 0;
  *(a1 + 52) = 0;
  *(a1 + 12) = 0;
  *(a1 + 4) = 0;
  *(a1 + 44) = 3212836864;
  v7 = a2 + a3;
  v8 = a3 - a2;
  v9 = v7 / v8;
  v10 = a4 + a5;
  v11 = a5 - a4;
  *(a1 + 32) = v9;
  *(a1 + 36) = v10 / v11;
  v12 = a7 - a6;
  *(a1 + 40) = -(a6 + a7) / (a7 - a6);
  v13 = a6;
  v14 = a7 * -2.0 * v13 / v12;
  *(a1 + 56) = v14;
  v15 = (v13 + v13) / v8;
  *a1 = v15;
  result = (v13 + v13) / v11;
  *(a1 + 20) = result;
  return result;
}

double MRMatrix_ProjectPoint(float *a1, double a2, double a3)
{
  v3 = a2;
  v4 = a3;
  v10[0] = v3;
  v10[1] = v4;
  v11 = 0x3F80000000000000;
  v8 = 0;
  v9 = 0;
  MRMatrix_TransformVector(a1, v10, &v8);
  v5 = &v9 + 1;
  v6 = vld1_dup_f32(v5);
  *&result = *&vcvtq_f64_f32(vdiv_f32(v8, v6));
  return result;
}

double MRMatrix_UnprojectPoint(float *a1, double a2, double a3)
{
  v4 = a2;
  v5 = a3;
  v14[0] = v4;
  v14[1] = v5;
  v15 = 0x3F80000000000000;
  v12 = 0;
  v13 = 0;
  MRMatrix_TransformVector(a1, v14, &v12);
  v6.i32[0] = HIDWORD(v13);
  if (*(&v13 + 1) != 0.0)
  {
    v12 = vdiv_f32(v12, vdup_lane_s32(v6, 0));
    *&v13 = *&v13 / *(&v13 + 1);
  }

  v10 = 0;
  v11 = 0;
  LODWORD(v15) = -1073741824;
  MRMatrix_TransformVector(a1, v14, &v10);
  v7.i32[0] = HIDWORD(v11);
  if (*(&v11 + 1) == 0.0)
  {
    v7.i32[0] = v11;
  }

  else
  {
    v10 = vdiv_f32(v10, vdup_lane_s32(v7, 0));
    *v7.i32 = *&v11 / *(&v11 + 1);
  }

  if (*v7.i32 == *&v13)
  {
    v8.i32[0] = v10.i32[0];
    v8.f32[1] = -v10.f32[1];
  }

  else
  {
    *v7.i32 = *v7.i32 - *&v13;
    v8 = vsub_f32(v12, vdiv_f32(vmul_n_f32(vsub_f32(v10, v12), *&v13), vdup_lane_s32(v7, 0)));
  }

  *&result = *&vcvtq_f64_f32(v8);
  return result;
}

double MRCGPointRotatedByDegrees(double a1, double a2, float a3)
{
  v5 = a3 * 0.0174532925;
  v6 = __sincosf_stret(v5);
  return a1 * v6.__cosval - a2 * v6.__sinval;
}

double Spline(int a1, double *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  if (*a2 >= a8)
  {
    return *a5;
  }

  if (a2[a1 - 1] <= a8)
  {
    return *(a5 + 8 * (a1 - 1));
  }

  v8 = -1;
  do
  {
    v9 = v8 + 2;
    v10 = a2[v8 + 2];
    ++v8;
  }

  while (v10 <= a8);
  if (a6)
  {
    v11 = a6;
  }

  else
  {
    v11 = a5;
  }

  v12 = *(v11 + 8 * v9);
  if (a7)
  {
    v13 = a7;
  }

  else
  {
    v13 = a5;
  }

  return Spline1(a8, a2[v8], *(a3 + 8 * v9), *(a4 + 8 * v8), v10, *(a5 + 8 * v8), v12, *(v13 + 8 * v8), *(a5 + 8 * v9));
}

CGImageRef CreateResizedCGImage(CGImage *a1, CGFloat a2, CGFloat a3)
{
  ColorSpace = CGImageGetColorSpace(a1);
  AlphaInfo = CGImageGetAlphaInfo(a1);
  if (AlphaInfo == kCGImageAlphaNone)
  {
    if (CGColorSpaceGetModel(ColorSpace) == kCGColorSpaceModelRGB)
    {
      AlphaInfo = kCGImageAlphaNoneSkipLast;
    }

    else
    {
      AlphaInfo = kCGImageAlphaNone;
    }
  }

  if (AlphaInfo == kCGImageAlphaLast)
  {
    v8 = 1;
  }

  else
  {
    v8 = AlphaInfo;
  }

  if (v8 == 4)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  NumberOfComponents = CGColorSpaceGetNumberOfComponents(DeviceRGB);
  if (v9)
  {
    v12 = NumberOfComponents + 1;
  }

  else
  {
    v12 = NumberOfComponents;
  }

  v13 = CGBitmapContextCreate(0, a2, a3, 8uLL, v12 * a2, DeviceRGB, v9 | 0x4000u);
  CGColorSpaceRelease(DeviceRGB);
  if (!v13)
  {
    return 0;
  }

  CGContextSetInterpolationQuality(v13, kCGInterpolationHigh);
  v16.origin.x = 0.0;
  v16.origin.y = 0.0;
  v16.size.width = a2;
  v16.size.height = a3;
  CGContextDrawImage(v13, v16, a1);
  Image = CGBitmapContextCreateImage(v13);
  CGContextRelease(v13);
  return Image;
}

double MRGetCurrentTime()
{
  v0 = mach_absolute_time();
  info = 0;
  mach_timebase_info(&info);
  return (v0 * info.numer / info.denom) * 0.000000001;
}

int64_t sub_9A090(NSIndexSet *self, SEL a2, int64_t a3)
{
  v5 = [(NSIndexSet *)self firstIndex];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL && a3)
  {
    v6 = a3 - 1;
    do
    {
      v7 = v6;
      v5 = [(NSIndexSet *)self indexGreaterThanIndex:v5];
      if (v5 == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      v6 = v7 - 1;
    }

    while (v7);
  }

  return v5;
}

double MRFitInToAspectRatio(double result, double a2, double a3)
{
  if (result >= a2 * a3)
  {
    return a2 * a3;
  }

  return result;
}

double MRFitOutToAspectRatio(double result, double a2, double a3)
{
  if (result <= a2 * a3)
  {
    return a2 * a3;
  }

  return result;
}

uint64_t MRBreakOnTrue(uint64_t a1)
{
  if (a1)
  {
    NSLog(@"BreakOnTrue!!!");
  }

  return a1;
}

uint64_t _good_rand(uint64_t a1)
{
  v1 = 123459876;
  if (a1)
  {
    v1 = a1;
  }

  v2 = -2147483647 * (v1 / 127773) + 16807 * v1;
  if (v2 >= 0)
  {
    return v2;
  }

  else
  {
    return v2 + 0x7FFFFFFF;
  }
}

uint64_t sub_9E9C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [objc_msgSend(*(*(a1 + 32) + 16) creationDateForPath:{a2), "timeIntervalSinceReferenceDate"}];
  v6 = v5;
  [objc_msgSend(*(*(a1 + 32) + 16) creationDateForPath:{a3), "timeIntervalSinceReferenceDate"}];
  if (v6 >= v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = -1;
  }

  if (v6 > v7)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

void sub_9ECC4(uint64_t a1, uint64_t a2)
{
  v4 = [*(*(a1 + 32) + 16) regionsOfInterestForPath:a2 detect:0];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 count];
  v9 = v8;
  if (v4)
  {
    v10 = v8 < 2;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || (v52 = 0u, v53 = 0u, v50 = 0u, v51 = 0u, (v11 = [v4 countByEnumeratingWithState:&v50 objects:v54 count:16]) == 0))
  {
    LOBYTE(v13) = 1;
    rect2_16 = y;
    rect2_24 = width;
    rect2_8 = CGRectZero.origin.x;
    v15 = height;
  }

  else
  {
    v12 = v11;
    v13 = 1;
    v14 = *v51;
    rect2_16 = y;
    rect2_24 = width;
    rect2_8 = CGRectZero.origin.x;
    v15 = height;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v51 != v14)
        {
          objc_enumerationMutation(v4);
        }

        v55 = CGRectFromString([*(*(&v50 + 1) + 8 * i) objectForKey:kMPMetaDataRegionOfInterestBounds]);
        x = v55.origin.x;
        v18 = v55.origin.y;
        v19 = v55.size.width;
        v20 = v55.size.height;
        v55.origin.x = CGRectZero.origin.x;
        v63.origin.x = rect2_8;
        v55.origin.y = y;
        v55.size.width = width;
        v55.size.height = height;
        v63.origin.y = rect2_16;
        v63.size.width = rect2_24;
        v63.size.height = v15;
        if (!CGRectEqualToRect(v55, v63) && v13)
        {
          v56.origin.x = x;
          v56.origin.y = v18;
          v56.size.width = v19;
          v56.size.height = v20;
          v57 = CGRectInset(v56, -0.05, -0.05);
          v64.origin.x = rect2_8;
          v64.origin.y = rect2_16;
          v64.size.width = rect2_24;
          v64.size.height = v15;
          v13 = CGRectIntersectsRect(v57, v64);
        }

        if (v19 != 0.0 && v20 != 0.0)
        {
          v58.origin.x = rect2_8;
          v58.origin.y = rect2_16;
          v58.size.width = rect2_24;
          v58.size.height = v15;
          v65.origin.x = CGRectZero.origin.x;
          v65.origin.y = y;
          v65.size.width = width;
          v65.size.height = height;
          if (CGRectEqualToRect(v58, v65))
          {
            rect2_16 = v18;
            rect2_24 = v19;
            rect2_8 = x;
            v15 = v20;
          }

          else
          {
            v59.origin.x = x;
            v59.origin.y = v18;
            v59.size.width = v19;
            v59.size.height = v20;
            v66.origin.x = CGRectZero.origin.x;
            v66.origin.y = y;
            v66.size.width = width;
            v66.size.height = height;
            if (!CGRectEqualToRect(v59, v66))
            {
              v60.origin.x = rect2_8;
              v60.origin.y = rect2_16;
              v60.size.width = rect2_24;
              v60.size.height = v15;
              v67.origin.x = x;
              v67.origin.y = v18;
              v67.size.width = v19;
              v67.size.height = v20;
              v61 = CGRectUnion(v60, v67);
              rect2_8 = v61.origin.x;
              rect2_16 = v61.origin.y;
              rect2_24 = v61.size.width;
              v15 = v61.size.height;
            }
          }
        }
      }

      v12 = [v4 countByEnumeratingWithState:&v50 objects:v54 count:16];
    }

    while (v12);
  }

  [*(*(a1 + 32) + 16) resolutionForPath:a2];
  v22 = v21;
  v24 = v23;
  v25 = v21 / v23;
  v62.origin.x = rect2_8;
  v62.origin.y = rect2_16;
  v62.size.width = rect2_24;
  v62.size.height = v15;
  v68.origin.x = CGRectZero.origin.x;
  v68.origin.y = y;
  v68.size.width = width;
  v68.size.height = height;
  v26 = CGRectEqualToRect(v62, v68);
  v27 = v15;
  if (v26)
  {
    v28 = v25;
  }

  else
  {
    v28 = rect2_24 * v22 / (v15 * v24);
  }

  v29 = v24 * (v27 * rect2_24 / v22) <= 0.9 || v9 <= 1;
  if (v29 && ((v30 = v28 / v25, v25 > 1.0) || v30 <= 6.0))
  {
    v31 = v30 < 0.165 && v25 > 1.0;
  }

  else
  {
    v31 = 1;
  }

  v32 = *(a1 + 48);
  if (v32 == 1)
  {
    if (v9 == 1 || v28 <= 1.0 && (v28 != 0.0 ? (v33 = v25 <= 1.0) : (v33 = 1), !v33 ? (v34 = v9 < 4) : (v34 = 0), v34))
    {
      v35 = 1;
    }

    else
    {
      v44 = v25 <= 1.0;
      if (v28 <= 1.0)
      {
        v44 = 0;
      }

      if (v28 == 0.0)
      {
        v44 = 0;
      }

      v35 = v9 < 4 && v44;
    }
  }

  else
  {
    v35 = 0;
  }

  v36 = [*(*(a1 + 32) + 16) isMovieAtPath:a2];
  if (v36)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  if (v25 >= 0.5)
  {
    v37 = v25 > 2.0;
  }

  else
  {
    v37 = 2;
  }

  if (!v32)
  {
    v28 = v25;
  }

  rect2_16a = [NSMutableDictionary alloc];
  rect2_8a = [NSNumber numberWithBool:v35];
  *&v38 = v25;
  v39 = [NSNumber numberWithFloat:v38];
  v40 = [NSNumber numberWithBool:v31];
  v41 = [NSNumber numberWithBool:v36];
  *&v42 = v28;
  v43 = [rect2_16a initWithObjectsAndKeys:{rect2_8a, @"canSwitch", v39, @"imageAspectRatio", v40, @"fullOfFaces", v41, @"isMovie", +[NSNumber numberWithFloat:](NSNumber, "numberWithFloat:", v42), @"aspectRatio", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v13), @"intersects", +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", v25 > 1.0), @"fitsInExtraWide", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", v37), @"panoramaType", +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", objc_msgSend(v4, "count")), @"roiCount", 0}];
  [*(*(a1 + 32) + 48) lock];
  [*(*(a1 + 32) + 40) setObject:v43 forKey:a2];
  [*(*(a1 + 32) + 48) unlock];
}

BOOL MPShouldPanPanorama2(double a1, double a2)
{
  v2 = a1 < 1.0;
  v3 = a1 / a2;
  v4 = a2 / a1;
  if (!v2)
  {
    v4 = v3;
  }

  return v4 >= 1.1;
}

void sub_B331C(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

void convertToGreyScaleGCD(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, size_t a4)
{
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_B3D1C;
  block[3] = &unk_1AB3D8;
  block[4] = a3;
  block[5] = a1;
  block[6] = a2;
  dispatch_apply(a4, global_queue, block);
}

void *sub_B3D1C(void *result, uint64_t a2)
{
  v2 = result[4];
  if (v2)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v3 + v2 * a2;
      *(result[6] + v5) = (77 * *(result[5] + 4 * v5) + 151 * *(result[5] + 4 * v5 + 1) + 28 * *(result[5] + 4 * v5 + 2)) >> 8;
      v3 = v4;
      v2 = result[4];
    }

    while (v2 > v4++);
  }

  return result;
}

uint64_t convertToGreyScaleNoGCD(uint64_t result, unsigned __int8 *a2, unint64_t a3, unint64_t a4)
{
  if (a4)
  {
    v4 = 0;
    for (i = 0; i < a4; v4 = ++i)
    {
      if (a3)
      {
        v6 = (result + 4 * a3 * v4);
        v7 = 1;
        do
        {
          *a2++ = (77 * *v6 + 151 * v6[1] + 28 * v6[2]) >> 8;
          v6 += 4;
          v8 = v7++;
        }

        while (v8 < a3);
      }
    }
  }

  return result;
}

uint64_t sortByLocalizedName(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3)
  {
    v3 = *a3 == 0;
  }

  else
  {
    v3 = 0;
  }

  result = [objc_msgSend(+[MPStyleManager sharedManager](MPStyleManager "sharedManager")];
  if (v3)
  {
    if (result == -1)
    {
      return 1;
    }

    else if (result == 1)
    {
      return -1;
    }
  }

  return result;
}

float *SetLightingColors(float *result, float *a2, float a3)
{
  v3 = a2[1];
  v4 = a2[4] - v3;
  v5 = a2[2];
  v6 = a2[8] - v5;
  v7 = a2[7] - v3;
  v8 = a2[5] - v5;
  v9 = (v4 * v6) - (v7 * v8);
  v10 = a2[6] - *a2;
  v11 = a2[3] - *a2;
  v12 = (v8 * v10) - (v6 * v11);
  v13 = (v11 * v7) - (v10 * v4);
  v14 = sqrtf(((v12 * v12) + (v9 * v9)) + (v13 * v13));
  v15 = fabs((((v3 * v12) + (v9 * *a2)) + (v13 * (v5 + -5.0))) / (sqrtf(((v3 * v3) + (*a2 * *a2)) + ((v5 + -5.0) * (v5 + -5.0))) * v14)) * a3;
  result[1] = v15;
  result[2] = v15;
  *result = v15;
  v16 = fabs((((v12 * a2[4]) + (v9 * a2[3])) + (v13 * (a2[5] + -5.0))) / (v14 * sqrtf(((a2[4] * a2[4]) + (a2[3] * a2[3])) + ((a2[5] + -5.0) * (a2[5] + -5.0))))) * a3;
  result[5] = v16;
  result[6] = v16;
  result[4] = v16;
  v17 = fabs((((v12 * a2[7]) + (v9 * a2[6])) + (v13 * (a2[8] + -5.0))) / (v14 * sqrtf(((a2[7] * a2[7]) + (a2[6] * a2[6])) + ((a2[8] + -5.0) * (a2[8] + -5.0))))) * a3;
  result[9] = v17;
  result[10] = v17;
  result[8] = v17;
  v18 = fabs((((v12 * a2[10]) + (v9 * a2[9])) + (v13 * (a2[11] + -5.0))) / (v14 * sqrtf(((a2[10] * a2[10]) + (a2[9] * a2[9])) + ((a2[11] + -5.0) * (a2[11] + -5.0))))) * a3;
  result[13] = v18;
  result[14] = v18;
  result[15] = a3;
  result[11] = a3;
  result[12] = v18;
  result[7] = a3;
  result[3] = a3;
  return result;
}

float SetLightingColors2D(uint64_t a1, float *a2, float a3)
{
  v3 = a3 * 5.0;
  v4 = v3 / sqrtf(((a2[1] * a2[1]) + (*a2 * *a2)) + 25.0);
  *(a1 + 4) = v4;
  *(a1 + 8) = v4;
  *a1 = v4;
  v5 = v3 / sqrtf(((a2[3] * a2[3]) + (a2[2] * a2[2])) + 25.0);
  *(a1 + 20) = v5;
  *(a1 + 24) = v5;
  *(a1 + 16) = v5;
  v6 = v3 / sqrtf(((a2[5] * a2[5]) + (a2[4] * a2[4])) + 25.0);
  *(a1 + 36) = v6;
  *(a1 + 40) = v6;
  *(a1 + 32) = v6;
  result = v3 / sqrtf(((a2[7] * a2[7]) + (a2[6] * a2[6])) + 25.0);
  *(a1 + 52) = result;
  *(a1 + 56) = result;
  *(a1 + 48) = result;
  *(a1 + 60) = 1065353216;
  *(a1 + 44) = 1065353216;
  *(a1 + 28) = 1065353216;
  *(a1 + 12) = 1065353216;
  return result;
}

id RenderPatchworkWithMesh(void *a1, unsigned __int16 *a2, void *a3)
{
  v5 = &selRef_sortPatchworkAscendingHorizontal_;
  if (!*(a2 + 2))
  {
    v5 = &selRef_sortPatchworkAscendingVertical_;
  }

  v6 = [a1 sortedArrayUsingSelector:*v5];
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  obj = v6;
  result = [v6 countByEnumeratingWithState:&v72 objects:v97 count:16];
  if (result)
  {
    v8 = result;
    v65 = 0;
    v9 = *v73;
    v62 = a2 + 8;
    v63 = a2 + 2;
    v10 = @"rectangle";
    while (1)
    {
      v11 = 0;
      do
      {
        if (*v73 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v72 + 1) + 8 * v11);
        [objc_msgSend(v12 objectForKey:{v10, v62), "CGRectValue"}];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = v17 / v19;
        [objc_msgSend(v12 objectForKey:{@"referenceAspectRatio", "floatValue"}];
        if (v22 == 0.0)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        v24 = v14;
        v25 = v14 + v18;
        v26 = v16;
        v27 = v16 + v20;
        v28 = 2.0 / v18;
        v29 = v23 * v28;
        v30 = v23 / v21;
        v31 = 2.0 / v20;
        if (v23 >= v21)
        {
          v30 = 1.0;
        }

        v69 = v24;
        v70 = v30;
        if (v23 >= v21)
        {
          v33 = v21 / v23;
        }

        else
        {
          v33 = 1.0;
        }

        if (v23 >= v21)
        {
          v29 = v31;
          v32 = v31 / v23;
          v28 = v32;
        }

        v67 = v28;
        v68 = v29;
        if (*(a2 + 2))
        {
          v34 = v24;
        }

        else
        {
          v34 = v26;
        }

        if (*(a2 + 2))
        {
          v35 = v25;
        }

        else
        {
          v35 = v27;
        }

        if (*(a2 + 1) < v35)
        {
          v36 = v8;
          v37 = v10;
          v38 = [v12 objectForKey:@"image"];
          [v38 setClampMode:2];
          v71 = 0;
          *&v39 = v23;
          [v38 setOnContext:a3 onTextureUnit:0 withReferenceAspectRatio:&v71 state:v39];
          v40 = *a2 - 1;
          v41 = 10;
          v42 = 1;
          while (v40 + v42 != 1)
          {
            v43 = *&a2[v41];
            --v42;
            v41 += 8;
            if (v43 > v34)
            {
              v40 = -v42;
              break;
            }
          }

          if (v34 >= *&v63[8 * v40])
          {
            v44 = v34;
          }

          else
          {
            v44 = *&v63[8 * v40];
          }

          v45 = [objc_msgSend(v12 objectForKey:{@"needsBlend", "BOOLValue"}];
          if (v65)
          {
            if (v45)
            {
              v65 = 1;
              goto LABEL_40;
            }

            v46 = 0;
LABEL_38:
            v65 ^= 1u;
            [a3 blend:v46];
          }

          else
          {
            if (v45)
            {
              v46 = 2;
              goto LABEL_38;
            }

            v65 = 0;
          }

LABEL_40:
          v66 = v33;
          v47 = -v33;
          v48 = &v62[8 * v40];
          v49 = v40 - 1;
          do
          {
            if (++v49 >= (*a2 - 1))
            {
              break;
            }

            v50 = v44;
            v51 = *(v48 + 1);
            if (v35 >= v51)
            {
              v44 = *(v48 + 1);
            }

            else
            {
              v44 = v35;
            }

            if ((*v48 & 1) == 0)
            {
              v52 = *(v48 - 3);
              if (vabds_f32(v51, v52) > 0.00001)
              {
                v53 = v51 - v52;
                v54 = (v50 - v52) / (v51 - v52);
                v55 = (v51 - v44) / v53;
                v56 = *(v48 - 2);
                v57 = *(v48 - 1);
                v58 = *(v48 + 2);
                v59 = *(v48 + 3);
                v60 = v56 + ((v58 - v56) * v54);
                v61 = v58 + ((v56 - v58) * v55);
                if (*(a2 + 2) == 1)
                {
                  v85 = v60;
                  v86 = v26;
                  v87 = v57 + ((v59 - v57) * v54);
                  v88 = v61;
                  v89 = v26;
                  v90 = v59 + ((v57 - v59) * v55);
                  v91 = v60;
                  v92 = v27;
                  v93 = v87;
                  v94 = v61;
                  v95 = v27;
                  v96 = v90;
                  v77 = v47 + ((v50 - v34) * v67);
                  v78 = -v70;
                  v79 = v47 + ((v44 - v34) * v67);
                  v80 = -v70;
                  v81 = v77;
                  v82 = v70;
                  v83 = v79;
                  v84 = v70;
                }

                else
                {
                  v85 = v69;
                  v86 = v60;
                  v87 = v57 + ((v59 - v57) * v54);
                  v88 = v69;
                  v89 = v61;
                  v90 = v59 + ((v57 - v59) * v55);
                  v91 = v25;
                  v92 = v60;
                  v93 = v87;
                  v94 = v25;
                  v95 = v61;
                  v96 = v90;
                  v77 = v47;
                  v78 = ((v50 - v34) * v68) - v70;
                  v79 = v47;
                  v80 = ((v44 - v34) * v68) - v70;
                  v81 = v66;
                  v82 = v78;
                  v83 = v66;
                  v84 = v80;
                }

                SetLightingColors(v76, &v85, *[a3 foreColor]);
                [a3 setShader:@"ColoredTexture"];
                [a3 setVertex3DPointer:&v85];
                [a3 setTextureCoordinatesPointer:&v77 onTextureUnit:0];
                [a3 setColorsPointer:v76];
                [a3 drawTriangleStripFromOffset:0 count:4];
                [a3 unsetColorsPointer];
                [a3 unsetTextureCoordinatesPointerOnTextureUnit:0];
                [a3 unsetVertexPointer];
                [a3 unsetShader];
              }
            }

            v48 += 8;
          }

          while (v44 < v35);
          [v38 unsetOnContext:a3 onTextureUnit:0 state:&v71];
          v10 = v37;
          v8 = v36;
        }

        v11 = v11 + 1;
      }

      while (v11 != v8);
      result = [obj countByEnumeratingWithState:&v72 objects:v97 count:16];
      v8 = result;
      if (!result)
      {
        if (v65)
        {
          return [a3 blend:0];
        }

        return result;
      }
    }
  }

  return result;
}

id RenderPatchworkWithMeshInverted(void *a1, unsigned __int16 *a2, void *a3)
{
  v5 = &selRef_sortPatchworkDescendingHorizontal_;
  if (!*(a2 + 2))
  {
    v5 = &selRef_sortPatchworkDescendingVertical_;
  }

  v6 = [a1 sortedArrayUsingSelector:*v5];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v74 = 0u;
  obj = v6;
  result = [v6 countByEnumeratingWithState:&v71 objects:v96 count:16];
  if (result)
  {
    v8 = result;
    v65 = 0;
    v9 = *v72;
    v10 = a2 + 2;
    v62 = a2 - 6;
    while (1)
    {
      v11 = 0;
      v63 = v8;
      do
      {
        if (*v72 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v71 + 1) + 8 * v11);
        [objc_msgSend(v12 objectForKey:{@"rectangle", v62), "CGRectValue"}];
        v14 = v13;
        v16 = v15;
        v18 = v17;
        v20 = v19;
        v21 = v17 / v19;
        [objc_msgSend(v12 objectForKey:{@"referenceAspectRatio", "floatValue"}];
        if (v22 == 0.0)
        {
          v23 = v21;
        }

        else
        {
          v23 = v22;
        }

        v24 = v14;
        v25 = v14 + v18;
        v26 = v16;
        v27 = v16 + v20;
        v28 = 2.0 / v18;
        v29 = v23 * v28;
        v31 = 2.0 / v20;
        if (v23 >= v21)
        {
          v33 = 1.0;
        }

        else
        {
          v30 = v23 / v21;
          v33 = v30;
        }

        if (v23 >= v21)
        {
          v34 = v21 / v23;
        }

        else
        {
          v34 = 1.0;
        }

        if (v23 >= v21)
        {
          v29 = v31;
        }

        v68 = v29;
        v69 = v34;
        if (v23 >= v21)
        {
          v32 = v31 / v23;
          v28 = v32;
        }

        v67 = v28;
        if (*(a2 + 2))
        {
          v35 = v24;
        }

        else
        {
          v35 = v26;
        }

        if (*(a2 + 2))
        {
          v36 = v25;
        }

        else
        {
          v36 = v27;
        }

        v37 = *a2;
        v38 = v37 - 1;
        if (*&v10[8 * v37 - 8] > v35)
        {
          v39 = [v12 objectForKey:@"image"];
          [v39 setClampMode:2];
          v70 = 0;
          *&v40 = v23;
          [v39 setOnContext:a3 onTextureUnit:0 withReferenceAspectRatio:&v70 state:v40];
          v41 = &v62[8 * v38];
          while (1)
          {
            LODWORD(v37) = v37 - 1;
            if (v37 < 1)
            {
              break;
            }

            v42 = *v41;
            v41 -= 4;
            if (v42 < v36)
            {
              goto LABEL_33;
            }
          }

          LODWORD(v37) = v38 & (v38 >> 31);
LABEL_33:
          if (v36 >= *&v10[8 * v37])
          {
            v43 = *&v10[8 * v37];
          }

          else
          {
            v43 = v36;
          }

          v44 = [objc_msgSend(v12 objectForKey:{@"needsBlend", "BOOLValue"}];
          if (v65)
          {
            if (v44)
            {
              v65 = 1;
              goto LABEL_44;
            }

            v45 = 0;
LABEL_42:
            v65 ^= 1u;
            [a3 blend:v45];
          }

          else
          {
            if (v44)
            {
              v45 = 1;
              goto LABEL_42;
            }

            v65 = 0;
          }

LABEL_44:
          v66 = v33;
          v46 = -v33;
          v47 = v37 + 1;
          v48 = &v10[8 * v37];
          do
          {
            if (--v47 < 1)
            {
              break;
            }

            v49 = v43;
            v50 = *(v48 - 4);
            if (v35 >= v50)
            {
              v43 = v35;
            }

            else
            {
              v43 = *(v48 - 4);
            }

            if ((v48[6] & 1) == 0)
            {
              v51 = *v48;
              if (vabds_f32(*v48, v50) > 0.00001)
              {
                v52 = (v43 - v50) / (v51 - v50);
                v53 = (v51 - v49) / (v51 - v50);
                v54 = *(v48 - 3);
                v55 = *(v48 - 2);
                v56 = *(v48 + 1);
                v57 = *(v48 + 2);
                v58 = v54 + ((v56 - v54) * v52);
                v59 = v56 + ((v54 - v56) * v53);
                v60 = v55 + ((v57 - v55) * v52);
                v61 = v57 + ((v55 - v57) * v53);
                if (*(a2 + 2) == 1)
                {
                  v84 = v58;
                  v85 = v26;
                  v86 = v60;
                  v87 = v59;
                  v88 = v26;
                  v89 = v61;
                  v90 = v58;
                  v91 = v27;
                  v92 = v60;
                  v93 = v59;
                  v94 = v27;
                  v95 = v61;
                  v76 = ((v43 - v35) * v67) - v69;
                  v77 = v46;
                  v78 = ((v49 - v35) * v67) - v69;
                  v79 = v46;
                  v80 = v76;
                  v81 = v66;
                  v82 = v78;
                  v83 = v66;
                }

                else
                {
                  v84 = v24;
                  v85 = v58;
                  v86 = v60;
                  v87 = v24;
                  v88 = v59;
                  v89 = v61;
                  v90 = v25;
                  v91 = v58;
                  v92 = v60;
                  v93 = v25;
                  v94 = v59;
                  v95 = v61;
                  v76 = -v69;
                  v77 = v46 + ((v43 - v35) * v68);
                  v78 = -v69;
                  v79 = v46 + ((v49 - v35) * v68);
                  v80 = v69;
                  v81 = v77;
                  v82 = v69;
                  v83 = v79;
                }

                SetLightingColors(v75, &v84, *[a3 foreColor]);
                [a3 setShader:@"ColoredTexture"];
                [a3 setVertex3DPointer:&v84];
                [a3 setTextureCoordinatesPointer:&v76 onTextureUnit:0];
                [a3 setColorsPointer:v75];
                [a3 drawTriangleStripFromOffset:0 count:4];
                [a3 unsetColorsPointer];
                [a3 unsetTextureCoordinatesPointerOnTextureUnit:0];
                [a3 unsetVertexPointer];
                [a3 unsetShader];
              }
            }

            v48 -= 8;
          }

          while (v43 > v35);
          [v39 unsetOnContext:a3 onTextureUnit:0 state:&v70];
          v8 = v63;
        }

        v11 = v11 + 1;
      }

      while (v11 != v8);
      result = [obj countByEnumeratingWithState:&v71 objects:v96 count:16];
      v8 = result;
      if (!result)
      {
        if (v65)
        {
          return [a3 blend:0];
        }

        return result;
      }
    }
  }

  return result;
}

float *Antialias1D(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, float a6, float a7, double a8, double a9, double a10, double a11)
{
  LODWORD(a9) = *(a4 + 20);
  LODWORD(a10) = *(a4 + 8);
  v11 = *(a4 + 12);
  v12.i32[0] = *a4;
  if (v11 == *a4)
  {
    *&a11 = vabds_f32(*(a4 + 16), *(a4 + 4));
    v13 = *(a4 + 24) - v12.f32[0];
    v14 = 36;
  }

  else
  {
    *&a11 = vabds_f32(v11, v12.f32[0]);
    v12.i32[0] = *(a4 + 4);
    v13 = *(a4 + 28) - v12.f32[0];
    v14 = 40;
  }

  v15 = fabsf(v13);
  _D16 = 0;
  if ((*&a9 - *&a10) != 0.0)
  {
    *&a9 = vabds_f32(*&a9, *&a10);
    *&a10 = *&a9 + *&a9;
    v12.i32[1] = *(a4 + v14);
    __asm { FMOV            V7.2S, #1.0 }

    v22 = vdup_lane_s32(*&a9, 0);
    v23 = vdiv_f32(vdup_lane_s32(*&a11, 0), vadd_f32(vabs_f32(v12), _D7));
    _D16 = vdiv_f32(vdup_lane_s32(*&a10, 0), vbsl_s8(vcgt_f32(v22, v23), v22, v23));
  }

  _S2 = 1058642330;
  v25 = v15 * a6;
  v26 = ((_D16.f32[0] * 0.6) + 0.25) / (v15 * a6);
  __asm { FMLA            S3, S2, V16.S[1] }

  v28 = a1 + 48;
  for (i = 72; i != 96; i += 4)
  {
    *(v28 - 48) = *(a4 + i - 72) - ((*(a4 + i - 48) - *(a4 + i - 72)) * v26);
    *(v28 + 24) = *(a4 + i - 48) + (((*(a4 + i - 48) - *(a4 + i - 72)) * (*(a4 + i - 48) - *(a4 + i - 72))) * (_S3 / v25));
    *(v28 - 24) = *(a4 + i - 72);
    *v28 = *(a4 + i - 48);
    v28 += 4;
  }

  v30 = (a2 + 32);
  v31 = (a5 + 16);
  v32 = 4;
  do
  {
    *(v30 - 8) = *(v31 - 4);
    v30[4] = *v31;
    *(v30 - 4) = *(v31 - 4);
    v33 = *v31++;
    *v30++ = v33;
    --v32;
  }

  while (v32);
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  return SetLightingColors((a3 + 32), a4, a7);
}

void DoWobble(float *a1, float *a2, double a3)
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  v4 = a3 * (a3 + a3 * 1.33333337 * a3 + 0.666666687) * 1.33333337;
  *a1 = v4;
  v5 = (a3 + 0.5) * 3.14159274;
  v6 = sqrt(((sinf(v5) + 1.0) * 0.5)) + 0.00001;
  if (v4 > 0.0)
  {
    v6 = (sinf(v4 * 3.1416) * v6) / (v4 + ((v4 * 0.5) * v4));
  }

  *a2 = v6;
}

void DoWobbleSlow(float *a1, float *a2, double a3)
{
  if (a3 > 1.0)
  {
    a3 = 1.0;
  }

  v4 = a3 * (a3 + a3 * 0.666666687 * a3 + 1.33333337) * 1.33333337;
  *a1 = v4;
  v5 = (a3 + 0.5) * 3.14159274;
  v6 = sqrt(((sinf(v5) + 1.0) * 0.5)) + 0.00001;
  if (v4 <= 0.0)
  {
    v7 = v6 * 3.1416;
  }

  else
  {
    v7 = (sinf(v4 * 3.1416) * v6) / (v4 + ((v4 * 0.5) * v4));
  }

  *a2 = v7;
}

float32x4_t MyGLRectFromString(void *a1, float32x4_t *a2)
{
  if (a1)
  {
    v15 = 0u;
    v16 = 0u;
    sscanf([a1 UTF8String], "{{%lf, %lf}, {%lf, %lf}}", &v15, &v15.f64[1], &v16, &v16.f64[1]);
    __asm { FMOV            V2.2D, #0.5 }

    v8 = vmulq_f64(v16, _Q2);
    *&_Q2.f64[0] = vcvt_f32_f64(v8);
    v9 = vcvtq_f64_f32(*&_Q2.f64[0]);
    v10 = vcvt_hight_f32_f64(*&_Q2.f64[0], v8);
    v11 = vaddq_f64(v15, v9);
    v12 = vcvt_hight_f32_f64(vcvt_f32_f64(v11), v11);
    result = vmlaq_f32(v12, *a2, v10);
    v14 = vmlaq_f32(v12, a2[1], v10);
    *a2 = result;
    a2[1] = v14;
  }

  return result;
}

BOOL TrianglesAreDisjoint(double *a1, double *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = v4 - v2;
  v7 = *a1 - v5;
  v8 = v5 * v2 - *a1 * v4;
  v9 = a1[4];
  v10 = a1[5];
  v11 = v8 + v7 * v10 + (v4 - v2) * v9;
  v12 = *a2;
  v13 = a2[1];
  result = 1;
  if (v11 * (v8 + v7 * v13 + (v4 - v2) * *a2) > 0.0 || v11 * (v8 + v7 * a2[3] + v6 * a2[2]) > 0.0 || v11 * (v8 + v7 * a2[5] + v6 * a2[4]) > 0.0)
  {
    v14 = v10 - v4;
    v15 = v5 - v9;
    v16 = v9 * v4 - v5 * v10;
    v17 = v2 * (v5 - v9) + (v10 - v4) * v3 + v16;
    if (v17 * (v16 + (v5 - v9) * v13 + (v10 - v4) * v12) > 0.0 || v17 * (v16 + v15 * a2[3] + v14 * a2[2]) > 0.0 || v17 * (v16 + v15 * a2[5] + v14 * a2[4]) > 0.0)
    {
      v18 = v2 - v10;
      v19 = v9 - v3;
      v20 = v3 * v10 - v9 * v2;
      v21 = v20 + v4 * (v9 - v3) + v18 * v5;
      if (v21 * (v20 + (v9 - v3) * v13 + v18 * v12) > 0.0 || v21 * (v20 + v19 * a2[3] + v18 * a2[2]) > 0.0 || v21 * (v20 + v19 * a2[5] + v18 * a2[4]) > 0.0)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL TrianglesAreEqual(double *a1, double *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((vabdd_f64(*a1, *a2) >= 0.00001 || vabdd_f64(a1[1], a2[1]) >= 0.00001) && (vabdd_f64(a1[2], v3) >= 0.00001 || vabdd_f64(a1[3], a2[1]) >= 0.00001) && (vabdd_f64(a1[4], v3) >= 0.00001 || vabdd_f64(a1[5], a2[1]) >= 0.00001))
  {
    return 0;
  }

  v4 = a2[2];
  if ((vabdd_f64(v2, v4) >= 0.00001 || vabdd_f64(a1[1], a2[3]) >= 0.00001) && (vabdd_f64(a1[2], v4) >= 0.00001 || vabdd_f64(a1[3], a2[3]) >= 0.00001) && (vabdd_f64(a1[4], v4) >= 0.00001 || vabdd_f64(a1[5], a2[3]) >= 0.00001))
  {
    return 0;
  }

  v5 = a2[4];
  if (vabdd_f64(v2, v5) < 0.00001 && vabdd_f64(a1[1], a2[5]) < 0.00001 || vabdd_f64(a1[2], v5) < 0.00001 && vabdd_f64(a1[3], a2[5]) < 0.00001)
  {
    return 1;
  }

  return vabdd_f64(a1[4], v5) < 0.00001 && vabdd_f64(a1[5], a2[5]) < 0.00001;
}

uint64_t SortByAngleAndDistance(uint64_t a1, unsigned int *a2, unsigned int *a3)
{
  v3 = *a2;
  v4 = *a3;
  v5 = *(a1 + 8 * v3);
  v6 = *(a1 + 8 * v4);
  if ((*(a1 + 144 + v4) & *(a1 + 144 + v3)) != 0 && fabs(vabdd_f64(v5, v6) + -3.14159274) > 1.0)
  {
    v7 = *(a1 + 72 + 8 * v3);
    v8 = *(a1 + 72 + 8 * v4);
    if (v7 < v8)
    {
      v9 = 1;
    }

    else
    {
      v9 = -1;
    }

    if (v7 >= v8)
    {
      v10 = 1;
    }

    else
    {
      v10 = -1;
    }

    if (v5 > 3.14160274)
    {
      return v10;
    }

    else
    {
      return v9;
    }
  }

  else if (v5 >= v6)
  {
    return 1;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t sortRectangles1(void *a1, void *a2, int *a3)
{
  if (a3)
  {
    v4 = *a3;
    [a1 CGRectValue];
    v6 = v5;
    v8 = v7;
    [a2 CGRectValue];
    switch(v4)
    {
      case 3:
        v11 = v8 < v10;
        v12 = v8 <= v10;
        goto LABEL_16;
      case 2:
        v14 = v8 < v10;
        v15 = v8 <= v10;
        goto LABEL_9;
      case 1:
        v11 = v6 < v9;
        v12 = v6 <= v9;
LABEL_16:
        v18 = v11;
        if (v12)
        {
          return v18;
        }

        else
        {
          return -1;
        }
    }
  }

  else
  {
    [a1 CGRectValue];
    v6 = v13;
    [a2 CGRectValue];
  }

  v14 = v6 < v9;
  v15 = v6 <= v9;
LABEL_9:
  v16 = !v15;
  if (v14)
  {
    return -1;
  }

  else
  {
    return v16;
  }
}

double CenterRectOverPoint(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  Width = CGRectGetWidth(*&a1);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetHeight(v12);
  return a5 - Width * 0.5;
}

double CenterRectOverRect(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8)
{
  v19.origin.x = a5;
  v19.origin.y = a6;
  v19.size.width = a7;
  v19.size.height = a8;
  MidX = CGRectGetMidX(v19);
  v20.origin.x = a5;
  v20.origin.y = a6;
  v20.size.width = a7;
  v20.size.height = a8;
  CGRectGetMidY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  Width = CGRectGetWidth(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetHeight(v22);
  return MidX - Width * 0.5;
}

CGImage *_GetImage(void *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v18 = [a1 imageManager];
  v19 = [a1 isEmbeddedAsset];
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = [objc_msgSend(v18 "baseContext")];
  }

  [a1 originalSize];
  v22 = v21;
  v24 = v23;
  if ((a5 & 1) == 0)
  {
    v35 = [objc_msgSend(v18 "baseContext")];
    v36 = a8 * v35;
    v37 = a7 * HIDWORD(v35);
    v38 = v36 < v37;
    v39 = v36 / a7;
    v40 = v37 / a8;
    if (v38)
    {
      v41 = v40;
    }

    else
    {
      v41 = v35;
    }

    if (v38)
    {
      v42 = HIDWORD(v35);
    }

    else
    {
      v42 = v39;
    }

    v43 = [a1 path];
    v26 = v43;
    v82 = 0;
    if (v19)
    {
      v44 = a2;
      v45 = 0;
      v77 = v43;
      v46 = v43;
      goto LABEL_42;
    }

    goto LABEL_25;
  }

  v25 = [a1 path];
  v26 = v25;
  v82 = 0;
  if ((v19 & 1) == 0)
  {
    v42 = 256.0;
    v41 = 256.0;
LABEL_25:
    v77 = v26;
    v47 = [v20 CGImageForAssetAtPath:v26 andSize:&v82 orientation:a5 thumbnailIfPossible:a6 now:{v41, v42}];
    v45 = 0;
    if (v47)
    {
      goto LABEL_73;
    }

    goto LABEL_26;
  }

  v77 = v25;
  v27 = [-[NSArray lastObject](NSSearchPathForDirectoriesInDomains(NSCachesDirectory 1uLL];
  if (!v27)
  {
    v44 = a2;
    v45 = 0;
    v42 = 256.0;
    v41 = 256.0;
    goto LABEL_35;
  }

  v28 = v27;
  v75 = v20;
  v76 = a4;
  v29 = [v77 pathComponents];
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v30 = [v29 countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (v30)
  {
    v31 = v30;
    v73 = a2;
    v74 = a3;
    v32 = *v79;
    while (2)
    {
      for (i = 0; i != v31; i = i + 1)
      {
        if (*v79 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v78 + 1) + 8 * i);
        if ([v34 rangeOfString:@".mrb"] != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (v34)
          {
            v28 = [v28 stringByAppendingPathComponent:v34];
          }

          goto LABEL_30;
        }
      }

      v31 = [v29 countByEnumeratingWithState:&v78 objects:v83 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }

LABEL_30:
    a3 = v74;
    a2 = v73;
  }

  v20 = v75;
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:v28 attributes:1 error:0, 0];
  v45 = [v28 stringByAppendingPathComponent:{objc_msgSend(v29, "lastObject")}];
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    v42 = 256.0;
    v47 = [v18 CGImageWithPath:v45 withOriginalSize:&v82 forSize:256.0 orientation:{256.0, 256.0, 256.0}];
    v41 = 256.0;
    a4 = v76;
    if (v47)
    {
      goto LABEL_73;
    }

LABEL_26:
    if (v19)
    {
LABEL_27:
      v44 = a2;
LABEL_35:
      v46 = v77;
      goto LABEL_42;
    }

    goto LABEL_37;
  }

  NSLog(@"Creating thumbnail at path %@ for path %@", v45, v77);
  v41 = 256.0;
  v42 = 256.0;
  a4 = v76;
  if (v19)
  {
    goto LABEL_27;
  }

LABEL_37:
  if (objc_opt_respondsToSelector())
  {
    v48 = [v20 dataForAssetAtPath:v77 andSize:{v41, v42}];
    if (v48)
    {
      v49 = v48;
      [a1 isSupportedMovie];
      v47 = [v18 CGImageWithData:v49 withOriginalSize:&v82 forSize:v22 orientation:{v24, v41, v42}];
      if (v47)
      {
        goto LABEL_58;
      }

      goto LABEL_72;
    }
  }

  v50 = v20;
  v44 = a2;
  v46 = [v50 absolutePathForAssetAtPath:v77 andSize:{v41, v42}];
LABEL_42:
  if (![a1 isSupportedMovie] || !v46)
  {
    if (!v46)
    {
      v47 = 0;
      goto LABEL_83;
    }

LABEL_57:
    v47 = [v18 CGImageWithPath:v46 withOriginalSize:&v82 forSize:v22 orientation:{v24, v41, v42}];
    a2 = v44;
    if (v47)
    {
LABEL_58:
      if (v45)
      {
        AlphaInfo = CGImageGetAlphaInfo(v47);
        v60 = [UIImage imageWithCGImage:v47];
        if (AlphaInfo - 1 > 3)
        {
          v61 = UIImageJPEGRepresentation(v60, 0.9);
        }

        else
        {
          v61 = UIImagePNGRepresentation(v60);
        }

        [(NSData *)v61 writeToFile:v45 atomically:0];
        if (a5)
        {
          goto LABEL_74;
        }

        goto LABEL_46;
      }
    }

LABEL_72:
    if (!v47)
    {
      goto LABEL_83;
    }

LABEL_73:
    if (a5)
    {
      goto LABEL_74;
    }

LABEL_46:
    Width = CGImageGetWidth(v47);
    Height = CGImageGetHeight(v47);
    v54 = Height;
    if (v82 <= 4u)
    {
      v55 = Width;
    }

    else
    {
      v55 = Height;
    }

    if (v82 > 4u)
    {
      v54 = Width;
    }

    v56 = a8 * v55;
    v57 = a8 * v55 / a7 - v54;
    v58 = a7 * v54 / v55;
    if (v54 > a8)
    {
      v57 = v58 - a8;
    }

    if (fabs(v57) >= 2.0)
    {
      if (v55 >= a7 * 1.5)
      {
        if (a7 * v54 <= v56)
        {
          v55 = v56 / v54;
          v58 = a8;
          a7 = v56 / v54;
        }

        else
        {
          v55 = a7;
          a8 = v58;
        }

LABEL_63:
        v62 = v18;
        v63 = [objc_msgSend(v18 "baseContext")];
        if (v82 <= 4u)
        {
          v64 = v63;
        }

        else
        {
          v64 = HIDWORD(v63);
        }

        if (v82 <= 4u)
        {
          v65 = HIDWORD(v63);
        }

        else
        {
          v65 = v63;
        }

        if (a4)
        {
          v66 = 1 << vcvtpd_u64_f64(log2(v64 * 0.8));
          v65 = (1 << vcvtpd_u64_f64(log2(v65 * 0.8)));
        }

        else
        {
          v66 = (v64 + 15) & 0xFFFFFFF0;
        }

        goto LABEL_75;
      }
    }

    else if (a7 <= v55)
    {
      v55 = v41;
      v58 = v42;
      goto LABEL_63;
    }

    v58 = v54;
    goto LABEL_63;
  }

  v51 = [v18 CGImageWithMoviePath:v46 withOriginalSize:&v82 forSize:v22 atTime:v24 orientation:{v41, v42, a9}];
  if (!v51)
  {
    goto LABEL_57;
  }

  v47 = v51;
  a2 = v44;
  if ((a5 & 1) == 0)
  {
    goto LABEL_46;
  }

LABEL_74:
  v62 = v18;
  v66 = 256;
  v65 = 256;
LABEL_75:
  v67 = [MRTextureSource alloc];
  v68 = [(MRTextureSource *)v67 initWithCGImage:v47 textureSize:v66 | (v65 << 32) orientation:v82 imageManager:v62 monochromatic:a2];
  *([(MRTextureSource *)v68 textureOptions]+ 5) = a4;
  if (a5)
  {
    [(MRTextureSource *)v68 setWantsSharedTexture:1];
  }

  else if (a3)
  {
    [(MRTextureSource *)v68 generateMipmap];
  }

  v47 = [[MRImage alloc] initWithTextureSource:v68 andSize:a7, a8];

  if (a5)
  {
    v69 = [NSString stringWithFormat:@"Marimba '%@' Thumbnail", v77, v71, v72];
  }

  else
  {
    v69 = [NSString stringWithFormat:@"Marimba '%@' %dx%d", v77, a7, a8];
  }

  [(CGImage *)v47 setLabel:v69];
LABEL_83:
  [(CGImage *)v47 texture];
  return v47;
}

void sub_DB624(uint64_t a1)
{
  [*(a1 + 32) cancelPendingPrerolls];
  [*(a1 + 40) cancelPendingSeeks];
  [*(a1 + 32) setRate:0.0];
  [*(a1 + 40) removeOutput:*(a1 + 48)];

  v2 = *(a1 + 56);
  if (v2)
  {

    CFRelease(v2);
  }
}

char *sub_DB7BC(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  CMTimeMake(&v6, (*(a1 + 40) * 1000000.0), 1000000);
  [v2 seekToTime:&v6];
  v3 = *(a1 + 32);
  if ((*(v3 + 140) & 1) == 0)
  {
    [*(v3 + 72) pause];
    v3 = *(a1 + 32);
  }

  result = [*(v3 + 72) rate];
  if (v5 == 0.0)
  {
    result = [*(*(a1 + 32) + 72) status];
    if (result == &dword_0 + 1)
    {
      return [*(*(a1 + 32) + 88) requestNotificationOfMediaDataChangeWithAdvanceInterval:0.0];
    }
  }

  return result;
}

char *sub_DB934(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = 0.0;
  if (*(v2 + 140))
  {
    *&v3 = 1.0;
  }

  [*(v2 + 72) setRate:v3];
  result = [*(*(a1 + 32) + 72) rate];
  if (v5 == 0.0)
  {
    result = [*(*(a1 + 32) + 72) status];
    if (result == &dword_0 + 1)
    {
      v6 = *(*(a1 + 32) + 88);

      return [v6 requestNotificationOfMediaDataChangeWithAdvanceInterval:0.0];
    }
  }

  return result;
}

id sub_DBACC(uint64_t a1)
{
  result = [*(*(a1 + 32) + 72) rate];
  *(*(*(a1 + 40) + 8) + 24) = *&v3 > 0.0;
  v4 = *(a1 + 32);
  if (*(v4 + 140) == 1 && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    v5 = *(v4 + 72);
    LODWORD(v3) = 1.0;

    return [v5 setRate:v3];
  }

  return result;
}

id sub_DBD00(double *a1)
{
  v2 = *(a1 + 4);
  v1 = *(a1 + 5);
  v3 = a1[7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DBD7C;
  v5[3] = &unk_1AA700;
  *&v5[4] = a1[6];
  return [v2 _finishLoadingAsset:v1 forTime:v5 completion:v3];
}

uint64_t sub_DBE40(uint64_t a1)
{
  [*(a1 + 32) _finishLoadingAsset:*(a1 + 40) andVideoTrack:*(a1 + 48) forTime:*(a1 + 64)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_DC62C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_DC67C(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = v2 >= 0.0 && v2 < *(v3 + 104);
  *(v3 + 140) &= v4;
  *(*(a1 + 32) + 137) = 0;
  v5 = *(a1 + 32);
  if (*(v5 + 40))
  {
    v6 = *(v5 + 88);
    buffer = *(a1 + 56);
    if (![v6 hasNewPixelBufferForItemTime:&buffer])
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  Current = CFAbsoluteTimeGetCurrent();
  v8 = *(*(a1 + 32) + 88);
  buffer = *(a1 + 56);
  if ([v8 hasNewPixelBufferForItemTime:&buffer])
  {
LABEL_10:
    v10 = *(*(a1 + 32) + 88);
    buffer = *(a1 + 56);
    v11 = [v10 copyPixelBufferForItemTime:&buffer itemTimeForDisplay:0];
    if (v11)
    {
      v12 = v11;
      v13 = *(*(*(a1 + 40) + 8) + 40);
      if (v13)
      {
        [v13 releaseByUser];
      }

      Width = CVPixelBufferGetWidth(v12);
      Height = CVPixelBufferGetHeight(v12);
      CVOpenGLESTextureCacheFlush(*(*(a1 + 32) + 112), 0);
      buffer.value = 0;
      CVOpenGLESTextureCacheCreateTextureFromImage(kCFAllocatorDefault, *(*(a1 + 32) + 112), v12, 0, 0xDE1u, 6408, Width, Height, 0x80E1u, 0x1401u, 0, &buffer);
      v16 = [MRTextureSource alloc];
      v17 = -[MRTextureSource initWithCVTexture:size:orientation:imageManager:monochromatic:](v16, "initWithCVTexture:size:orientation:imageManager:monochromatic:", buffer.value, Width | (Height << 32), *(*(a1 + 32) + 136), [*(*(a1 + 32) + 48) imageManager], 0);
      CVBufferRelease(buffer.value);
      *(*(*(a1 + 40) + 8) + 40) = [[MRImage alloc] initWithTextureSource:v17 andSize:*(*(a1 + 32) + 16), *(*(a1 + 32) + 24)];

      [*(*(*(a1 + 40) + 8) + 40) setLabel:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Marimba '%@' %dx%d %f", objc_msgSend(*(*(a1 + 32) + 48), "path"), *(*(a1 + 32) + 16), *(*(a1 + 32) + 24), *(a1 + 48))}];
      CFRelease(v12);
    }

    goto LABEL_14;
  }

  while (CFAbsoluteTimeGetCurrent() - Current < 1.0)
  {
    usleep(0x4E20u);
    v9 = *(*(a1 + 32) + 88);
    buffer = *(a1 + 56);
    if ([v9 hasNewPixelBufferForItemTime:&buffer])
    {
      goto LABEL_10;
    }
  }

LABEL_14:
  v18 = *(*(a1 + 32) + 72);
  if (v18)
  {
    [v18 currentTime];
  }

  else
  {
    memset(&buffer, 0, sizeof(buffer));
  }

  *(*(a1 + 32) + 32) = CMTimeGetSeconds(&buffer);
}

id sub_DCFB8(double *a1)
{
  v2 = *(a1 + 4);
  v1 = *(a1 + 5);
  v3 = a1[7];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_DD034;
  v5[3] = &unk_1AA700;
  *&v5[4] = a1[6];
  return [v2 _finishLoadingAsset:v1 forTime:v5 completion:v3];
}

uint64_t sub_DD0F8(uint64_t a1)
{
  [*(a1 + 32) _finishLoadingAsset:*(a1 + 40) andVideoTrack:*(a1 + 48) forTime:*(a1 + 64)];
  result = *(a1 + 56);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

void sub_DE4B8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

double StretchRectangle(double *a1, unsigned int a2, double a3, double a4)
{
  v4 = a3 / a4;
  v5 = a4 / a3;
  v6 = a1[1];
  v7 = *a1;
  v8 = *a1 + a1[2];
  v9 = v6 * a3;
  v10 = (v6 + a1[3]) * a3;
  v11 = v4;
  v12 = (v7 + -1.0) * v4 + 1.0;
  if ((a2 & 3) != 2)
  {
    v12 = v4 * v7;
  }

  v13 = (v7 + 1.0) * v11 + -1.0;
  if ((a2 & 3) == 0)
  {
    v13 = *a1;
  }

  if ((a2 & 3) > 1)
  {
    v13 = v12;
  }

  v14 = (a2 >> 2) & 3;
  v16 = v4 * v8;
  if (v14 == 2)
  {
    v15 = (v8 + -1.0) * v11 + 1.0;
    v16 = v15;
  }

  if (v14)
  {
    v17 = (v8 + 1.0) * v11 + -1.0;
    v8 = v17;
  }

  if (((a2 >> 2) & 3) <= 1)
  {
    v16 = v8;
  }

  v18 = (a2 >> 4) & 3;
  if (v18 <= 1)
  {
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = v9 + 1.0;
    v20 = v5;
    v21 = -1.0;
    goto LABEL_18;
  }

  if (v18 == 2)
  {
    v19 = v9 + -1.0;
    v20 = v5;
    v21 = 1.0;
LABEL_18:
    v9 = v21 + v19 * v20;
    goto LABEL_20;
  }

  v9 = v5 * v9;
LABEL_20:
  if ((a2 >> 6) > 1u)
  {
    if (a2 >> 6 != 2)
    {
      v10 = v5 * v10;
      goto LABEL_27;
    }

    v22 = v10 + -1.0;
    v23 = v5;
    v24 = 1.0;
    goto LABEL_25;
  }

  if (a2 >> 6)
  {
    v22 = v10 + 1.0;
    v23 = v5;
    v24 = -1.0;
LABEL_25:
    v10 = v24 + v22 * v23;
  }

LABEL_27:
  *a1 = v13;
  a1[1] = v9 / a4;
  result = (v10 - v9) / a4;
  a1[2] = (v16 - v13);
  a1[3] = result;
  return result;
}

id ComputeAnimationTimeBounds(void *a1, double *a2)
{
  v3 = +[NSMutableArray array];
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v44 objects:v48 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = @"subEffectID";
    v7 = @"unload";
    v8 = *v45;
    do
    {
      v9 = 0;
      do
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(a1);
        }

        v10 = *(*(&v44 + 1) + 8 * v9);
        v11 = [v10 objectForKey:v6];
        if (([v11 hasSuffix:@"still"] & 1) == 0 && (objc_msgSend(v11, "isEqualToString:", v7) & 1) == 0)
        {
          v12 = v6;
          v13 = a1;
          v14 = v7;
          [objc_msgSend(v10 objectForKey:{@"startTime", "doubleValue"}];
          v16 = v15;
          [objc_msgSend(v10 objectForKey:{@"duration", "doubleValue"}];
          v18 = v16 + v17;
          v19 = [v3 count];
          if (!v19)
          {
            goto LABEL_14;
          }

          v20 = v19;
          v21 = 0;
          v22 = 1;
          while (1)
          {
            [objc_msgSend(v3 objectAtIndex:{v21), "doubleValue"}];
            if (v16 < v23)
            {
              break;
            }

            ++v21;
            v22 ^= 1u;
            if (v20 == v21)
            {
              goto LABEL_14;
            }
          }

          if (v20 == v21)
          {
LABEL_14:
            [v3 addObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v16)}];
            [v3 addObject:{+[NSNumber numberWithDouble:](NSNumber, "numberWithDouble:", v18)}];
LABEL_15:
            v7 = v14;
            a1 = v13;
            v6 = v12;
            goto LABEL_16;
          }

          if (v22)
          {
            [objc_msgSend(v3 objectAtIndex:{v21), "doubleValue"}];
            v25 = v24;
            v26 = [NSNumber numberWithDouble:v16];
            if (v18 < v25)
            {
              [v3 insertObject:v26 atIndex:v21];
              [v3 insertObject:+[NSNumber numberWithDouble:](NSNumber atIndex:{"numberWithDouble:", v18), v21}];
              goto LABEL_15;
            }

            [v3 replaceObjectAtIndex:v21++ withObject:v26];
          }

          if (v21 < v20)
          {
            v27 = 0;
            v43 = v21 - v20;
            while (1)
            {
              [objc_msgSend(v3 objectAtIndex:{v21), "doubleValue"}];
              if (v18 < v28)
              {
                break;
              }

              [v3 removeObjectAtIndex:v21];
              --v20;
              v27 ^= 1u;
              if (v21 >= v20)
              {
                v27 = v43;
                break;
              }
            }

            if (v27)
            {
              [v3 insertObject:+[NSNumber numberWithDouble:](NSNumber atIndex:{"numberWithDouble:", v18), v21}];
            }
          }

          v7 = v14;
          a1 = v13;
          v6 = v12;
          if ([v3 count])
          {
            NSLog(@"Odd number of bounds on Origami effect, trouble ahead.\n");
          }
        }

LABEL_16:
        v9 = v9 + 1;
      }

      while (v9 != v5);
      v29 = [a1 countByEnumeratingWithState:&v44 objects:v48 count:16];
      v5 = v29;
    }

    while (v29);
  }

  v30 = [v3 count];
  if (!v30)
  {
    v34 = 0.0;
    v36 = a2;
    if (!a2)
    {
      return v3;
    }

    goto LABEL_38;
  }

  v31 = v30;
  v32 = 0;
  v33 = 0;
  v34 = 0.0;
  v35 = -1.0;
  v36 = a2;
  do
  {
    [objc_msgSend(v3 objectAtIndex:{v32), "doubleValue"}];
    v38 = v37;
    [objc_msgSend(v3 objectAtIndex:{v33 + 1), "doubleValue"}];
    v40 = v39;
    if (vabdd_f64(v38, v35) < 0.00001)
    {
      [v3 removeObjectsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:", v33 - 1, 2)}];
      v33 -= 2;
      v31 -= 2;
    }

    v34 = v34 + v40 - v38;
    v33 += 2;
    v32 = v33;
    v35 = v40;
  }

  while (v31 > v33);
  if (a2)
  {
LABEL_38:
    *v36 = v34;
  }

  return v3;
}

id StretchTime(void *a1, double a2, double a3)
{
  result = [a1 count];
  v7 = 0.0;
  if (result)
  {
    v8 = 0.0;
    if (a2 > 0.0)
    {
      v9 = result;
      v10 = 0;
      v11 = 2;
      do
      {
        v12 = v7;
        [objc_msgSend(a1 objectAtIndex:{v10), "doubleValue"}];
        v14 = v13;
        result = [objc_msgSend(a1 objectAtIndex:{v11 - 1), "doubleValue"}];
        if (v14 <= a2)
        {
          v15 = v14;
        }

        else
        {
          v15 = a2;
        }

        v16 = v8 + (v15 - v12) * a3;
        if (v7 <= a2)
        {
          v17 = v7;
        }

        else
        {
          v17 = a2;
        }

        v8 = v16 + v17 - v14;
        if (v9 <= v11)
        {
          break;
        }

        v10 = v11;
        v11 += 2;
      }

      while (v7 < a2);
    }
  }

  return result;
}

id sub_FD8F8(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) currentSlideInfoForElement:a2];
  if (result)
  {
    v5 = result;
    result = [result scale];
    if (v6 > 0.0)
    {
      result = [v5 index];
      if (result < *(a1 + 48))
      {
        v7 = *(a1 + 40);

        return [v7 setObject:v5 forKey:a2];
      }
    }
  }

  return result;
}

uint64_t sub_10F220(uint64_t a1)
{
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  v2 = [*(*(a1 + 32) + 176) numberOfMediaItems];
  v3 = *(a1 + 32);
  if (&v2[-*(v3 + 184)] > 0x63)
  {
    v5 = 100;
  }

  else
  {
    v4 = [*(v3 + 176) numberOfMediaItems];
    v3 = *(a1 + 32);
    v5 = v4 - *(v3 + 184);
  }

  v6 = [*(v3 + 176) mediaURLsAtIndexes:{+[NSIndexSet indexSetWithIndexesInRange:](NSIndexSet, "indexSetWithIndexesInRange:")}];
  [objc_msgSend(*(a1 + 32) "mediaURLs")];
  v7 = [[NSMutableArray alloc] initWithCapacity:v5];
  v24 = v5;
  v8 = [objc_msgSend(*(*(a1 + 32) + 104) "mediaProperties")];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v9 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v9)
  {
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [*(a1 + 32) _mediaPropertiesForMediaURL:v12];
        if (v13)
        {
          v14 = [v12 absoluteString];
          [v8 setObject:v13 forKey:v14];
          [v7 addObject:v14];
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v9);
  }

  [*(*(a1 + 32) + 104) setMediaProperties:v8];
  [*(*(a1 + 32) + 112) setMediaProperties:v8];

  v15 = *(a1 + 32);
  if (*(v15 + 184))
  {
    [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
    v16 = [[NSMutableDictionary alloc] initWithDictionary:*(*(a1 + 32) + 120)];
    v17 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [objc_msgSend(*(*(a1 + 32) + 104) "videoPaths")]);
    [v16 setObject:v17 forKey:kMPAuthoringLiveSlideIndex];
    [objc_msgSend(*(a1 + 32) "contentView")];
    if (v18 >= v19)
    {
      v20 = v18 / v19;
    }

    else
    {
      v20 = v19 / v18;
    }

    [+[MPCropController sharedController](MPCropController "sharedController")];
    v21 = [NSNumber numberWithDouble:v20];
    [v16 setObject:v21 forKey:kMPAuthoringAspectRatio];
    [*(*(a1 + 32) + 104) addVideoPaths:v7];
    [*(*(a1 + 32) + 104) setDocumentAttribute:v16 forKey:kMPDocumentAuthoringOptions];
    v22 = [NSNumber numberWithDouble:1.0 / v20];
    [v16 setObject:v22 forKey:kMPAuthoringAspectRatio];
    [*(*(a1 + 32) + 112) addVideoPaths:v7];
    [*(*(a1 + 32) + 112) setDocumentAttribute:v16 forKey:kMPDocumentAuthoringOptions];

    [+[MPCropController sharedController](MPCropController "sharedController")];
    [+[MPAuthoringController sharedController](MPAuthoringController "sharedController")];
  }

  else
  {
    [*(v15 + 104) setVideoPaths:v7];
    [*(*(a1 + 32) + 112) setVideoPaths:v7];
    [*(a1 + 32) _updateMarimbaDocument];
  }

  *(*(a1 + 32) + 184) += v24;
  return objc_sync_exit(obj);
}

id sub_10F758(uint64_t a1)
{
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  if (*(v4 + 168) == 1)
  {
    v6 = *(a1 + 40);
  }

  else
  {
    v6 = 0;
  }

  v8[5] = v1;
  v8[6] = v2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10F7FC;
  v8[3] = &unk_1AA700;
  v8[4] = v4;
  return [v5 warmupAndPlay:v6 & 1 completionBlock:v8];
}

id sub_10F7FC(uint64_t a1)
{
  [*(*(a1 + 32) + 216) setHidden:*(*(a1 + 32) + 168)];
  v2 = *(a1 + 32);

  return [v2 becomeReady];
}

id sub_10F934(uint64_t a1)
{
  [*(a1 + 32) becomeReady];
  v2 = *(*(a1 + 32) + 216);

  return [v2 setHidden:1];
}

id sub_10FC4C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (([objc_msgSend(*(*(a1 + 32) + 96) "marimbaLayer")] & 1) == 0)
    {
      v5 = *(*(a1 + 32) + 96);
      v6[0] = _NSConcreteStackBlock;
      v6[1] = 3221225472;
      v6[2] = sub_10FD40;
      v6[3] = &unk_1AB6D0;
      v6[4] = *(a1 + 40);
      return [v5 warmupAndPlay:1 completionBlock:v6];
    }

    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    v4 = *(result + 2);
  }

  else
  {
    result = *(a1 + 40);
    if (!result)
    {
      return result;
    }

    v4 = *(result + 2);
  }

  return v4();
}

uint64_t sub_10FD40(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 1);
  }

  return result;
}

unint64_t ExifOrientationForPlatformImageOrientation(unint64_t a1)
{
  v1 = 0x705040206080301uLL >> (8 * a1);
  if (a1 >= 8)
  {
    LOBYTE(v1) = 0;
  }

  return v1 & 0xF;
}

void sub_110694(id a1, NSString *a2, BOOL a3, JSValue *a4)
{
  v5 = a3;
  v7 = [(JSValue *)+[JSContext currentThis](JSContext toObject];
  if ([(NSString *)a2 isEqualToString:@"title"])
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_11083C;
    v13[3] = &unk_1AB040;
    v13[4] = a4;
    v8 = v13;
    v9 = v7;
    v10 = 0;
  }

  else
  {
    if ([(NSString *)a2 hasPrefix:@"media-"])
    {
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_1108C4;
      v12[3] = &unk_1AB040;
      v12[4] = a4;
      [v7 navigateToMediaWithIndex:-[NSString intValue](-[NSString substringFromIndex:](a2 animated:"substringFromIndex:" completion:{6), "intValue"), v5, v12}];
      return;
    }

    v10 = [[(NSString *)a2 substringFromIndex:5] intValue];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_11094C;
    v11[3] = &unk_1AB040;
    v11[4] = a4;
    v8 = v11;
    v9 = v7;
  }

  [v9 navigateToTextWithIndex:v10 animated:v5 completion:v8];
}

id sub_11083C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [NSNumber numberWithBool:a2];
  return [v2 callWithArguments:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v4, 1)}];
}

id sub_1108C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [NSNumber numberWithBool:a2];
  return [v2 callWithArguments:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v4, 1)}];
}

id sub_11094C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [NSNumber numberWithBool:a2];
  return [v2 callWithArguments:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v4, 1)}];
}

void sub_1109D4(id a1, JSValue *a2)
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_110A5C;
  v2[3] = &unk_1AB040;
  v2[4] = a2;
  [-[JSValue toObject](+[JSContext currentThis](JSContext "currentThis")];
}

id sub_110A5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v4 = [NSNumber numberWithBool:a2];
  return [v2 callWithArguments:{+[NSArray arrayWithObjects:count:](NSArray, "arrayWithObjects:count:", &v4, 1)}];
}

void sub_110AE4(id a1, BOOL a2, JSValue *a3)
{
  v3 = a2;
  v4 = [-[JSValue toObject](+[JSContext currentThis](JSContext currentThis];

  [v4 gotoNextSlide:v3];
}

void sub_110B2C(id a1, BOOL a2, JSValue *a3)
{
  v3 = a2;
  v4 = [-[JSValue toObject](+[JSContext currentThis](JSContext currentThis];

  [v4 gotoPreviousSlide:v3];
}

double RectToFitInRect(double a1, double a2, double a3, double a4, double a5)
{
  if (a3 / a5 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3 / a5;
  }

  return (a3 - v5 * a5) * 0.5;
}

void sub_11EB18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_11F810(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id sub_1214A8(id *a1)
{
  [a1[4] startTime];
  v3 = v2;
  [a1[4] duration];
  v5 = v3 + v4;
  [a1[4] outroTransitionDuration];
  v7 = v5 - v6;
  v8 = [a1[5] isPlaying];
  if (v8)
  {
    [a1[5] pause];
  }

  [a1[5] time];
  v10 = v9;
  v11 = [objc_msgSend(a1[5] "document")];
  v12 = [[NSIndexSet alloc] initWithIndexesInRange:{0, objc_msgSend(a1[4], "index") + 1}];
  [v11 lock];
  [a1[6] removeEffectContainersAtIndices:v12];
  [v11 unlock];

  result = [a1[5] setTime:v10 - v7];
  if (v8)
  {
    v14 = a1[5];

    return [v14 play];
  }

  return result;
}

void sub_122D14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_122D48(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [a2 sublayers];
    result = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
          ++v8;
        }

        while (v6 != v8);
        result = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v9 = [objc_msgSend(a2 slideProvidersForElementIDs];
      result = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (result)
      {
        v10 = result;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v13 + 1) + 8 * v12++) beginLiveUpdate];
          }

          while (v10 != v12);
          result = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
          v10 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

void sub_1230C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1230D8(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [a2 sublayers];
    result = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (result)
    {
      v6 = result;
      v7 = *v18;
      do
      {
        v8 = 0;
        do
        {
          if (*v18 != v7)
          {
            objc_enumerationMutation(v4);
          }

          (*(*(*(*(a1 + 32) + 8) + 40) + 16))();
          ++v8;
        }

        while (v6 != v8);
        result = [v4 countByEnumeratingWithState:&v17 objects:v22 count:16];
        v6 = result;
      }

      while (result);
    }
  }

  else
  {
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v9 = [objc_msgSend(a2 slideProvidersForElementIDs];
      result = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
      if (result)
      {
        v10 = result;
        v11 = *v14;
        do
        {
          v12 = 0;
          do
          {
            if (*v14 != v11)
            {
              objc_enumerationMutation(v9);
            }

            [*(*(&v13 + 1) + 8 * v12++) endLiveUpdate];
          }

          while (v10 != v12);
          result = [v9 countByEnumeratingWithState:&v13 objects:v21 count:16];
          v10 = result;
        }

        while (result);
      }
    }
  }

  return result;
}

id sub_123EEC(uint64_t a1)
{
  [*(a1 + 32) updateFramebuffer];
  v2 = *(a1 + 32);
  v3 = v2[2];

  return [v2 updateSizeOfRenderer:v3];
}

id sub_124100(uint64_t a1)
{
  [*(a1 + 32) updateFramebuffer];
  v2 = *(a1 + 32);
  v3 = v2[2];

  return [v2 updateSizeOfRenderer:v3];
}

id sub_12421C(uint64_t a1)
{
  [*(a1 + 32) updateFramebuffer];
  v2 = *(a1 + 32);
  v3 = v2[2];

  return [v2 updateSizeOfRenderer:v3];
}

id sub_1250B4(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *(a1 + 40);
    if (v2 == *(v3 + 24))
    {
      v5 = 0;
      v4 = 0;
    }

    else
    {
      v4 = [*(v3 + 16) currentStateForMontageSwap];
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  [*(*(a1 + 40) + 16) beginMorphingToAspectRatio:0 andOrientation:*(a1 + 48) withDuration:*(a1 + 56)];
  result = [*(a1 + 40) updateSizeOfRenderer:*(*(a1 + 40) + 16)];
  if (v5)
  {
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter removeObserver:"removeObserver:", *(a1 + 40)];

    *(*(a1 + 40) + 24) = *(a1 + 32);
    [*(*(a1 + 40) + 16) setAssetManagementDelegate:*(*(a1 + 40) + 24)];
    [*(*(a1 + 40) + 16) setFeatureDelegate:*(*(a1 + 40) + 24)];
    [*(*(a1 + 40) + 16) swapMontage:{objc_msgSend(*(*(a1 + 40) + 24), "montage")}];
    [*(*(a1 + 40) + 16) setTransitionLayerPlugObjectID:{objc_msgSend(objc_msgSend(objc_msgSend(objc_msgSend(*(*(a1 + 40) + 24), "mainLayers"), "lastObject"), "plug"), "objectID")}];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:*(a1 + 40) name:"didLiveChanged:" object:@"kMPAuthoringLiveDidChangeNotification", *(*(a1 + 40) + 24)];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:*(a1 + 40) name:"didAddEffects:" object:@"kMPAuthoringLiveDidAddEffectsNotification", *(*(a1 + 40) + 24)];
    [+[NSNotificationCenter defaultCenter](NSNotificationCenter addObserver:"addObserver:selector:name:object:" selector:*(a1 + 40) name:"didApplyStyle:" object:@"kMPAuthoringDidFinishApplyingStyleNotification", *(*(a1 + 40) + 24)];
    v7 = *(a1 + 40);
    if (*(v7 + 96) == 1)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [(NSNotificationCenter *)v8 addObserver:*(a1 + 40) selector:"_slideDidAppear:" name:kMRNotificationSlideIsOn object:0];
      v7 = *(a1 + 40);
    }

    [*(v7 + 16) applyStateForMontageSwap:v4];
    result = [*(*(a1 + 40) + 24) detectFacesInBackground];
    if (result)
    {
      v9 = *(a1 + 40);

      return [v9 setupFaceDetection];
    }
  }

  return result;
}

id sub_125474(uint64_t a1)
{
  v2 = [*(a1 + 32) isPlaying];
  if (v2)
  {
    [*(a1 + 32) pause];
  }

  v3 = [objc_msgSend(*(a1 + 32) "document")];
  [v3 lock];
  [*(a1 + 32) relativeTime];
  v5 = v4;
  v6 = *(a1 + 32);
  v7 = *(v6 + 24);
  [*(v6 + 16) size];
  v9 = v8;
  [*(*(a1 + 32) + 16) size];
  [v7 aspectRatioDidChange:v9 / v10 atTime:v5];
  v12 = v11;
  [v3 unlock];
  result = [*(a1 + 32) setTime:v12];
  if (v2)
  {
    v14 = *(a1 + 32);

    return [v14 play];
  }

  return result;
}

id sub_126CFC(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v7 = v6[3];
  v8 = v6[8];
  v9 = v8 >> 28;
  if (v7)
  {
    if (v9 <= ((v8 >> 24) & 0xF))
    {
      goto LABEL_14;
    }

    LODWORD(v10) = (BYTE3(v8) & 0xF) + 1;
  }

  else
  {
    LODWORD(v10) = 0;
  }

  *(*(a1 + 32) + 24) = malloc_type_calloc(v9 + 1, 8uLL, 0x80040B8603338uLL);
  *(*(a1 + 32) + 64) = *(*(a1 + 32) + 64) & 0xFFFFFFFFF0FFFFFFLL | ((*(*(a1 + 32) + 64) >> 28) << 24);
  if (v7)
  {
    memcpy(*(*(a1 + 32) + 24), v7, 8 * v10);
    free(v7);
  }

  if (v10)
  {
    v11 = *(*(*(a1 + 32) + 24) + 8 * v10 - 8);
    v13 = v11[3];
    v12 = v11[4];
    v15 = v11[5];
    v14 = *(v11 + 6);
    v16 = [v11 asset];
    v17 = [*(*(*(a1 + 32) + 24) + 8 * (v10 - 1)) kenBurnsType];
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v14 = 0;
    v12 = 0.5;
    v15 = 1.0;
    v13 = 0.5;
  }

  v6 = *(a1 + 32);
  if (((v6[8] >> 24) & 0xFuLL) >= v10)
  {
    v18 = 8 * v10;
    do
    {
      *(*(*(a1 + 32) + 24) + v18) = objc_alloc_init(MCSlideAsset);
      v19 = *(*(*(a1 + 32) + 24) + v18);
      *(v19 + 24) = v13;
      *(v19 + 32) = v12;
      *(*(*(*(a1 + 32) + 24) + v18) + 40) = v15;
      *(*(*(*(a1 + 32) + 24) + v18) + 48) = v14;
      [*(*(*(a1 + 32) + 24) + v18) setAsset:v16];
      [v16 addSlide:*(a1 + 32)];
      [*(*(*(a1 + 32) + 24) + v18) setKenBurnsType:v17];
      v10 = (v10 + 1);
      v6 = *(a1 + 32);
      v18 += 8;
    }

    while (((v6[8] >> 24) & 0xFuLL) >= v10);
  }

  v7 = v6[3];
LABEL_14:
  v20 = *(v7 + a3);
  if ([v6 isSnapshot])
  {
    v21 = +[MCObject objectWithImprint:andMontage:](MCObject, "objectWithImprint:andMontage:", [a2 objectForKey:@"asset"], *(a1 + 40));
  }

  else
  {
    v21 = [*(*(a1 + 32) + 8) videoAssetForObjectID:{objc_msgSend(a2, "objectForKey:", @"assetID"}];
  }

  v22 = v21;
  if (v21)
  {
    [(MCObject *)v21 addSlide:*(a1 + 32)];
  }

  [v20 setAsset:v22];
  [v20 setKenBurnsType:{objc_msgSend(a2, "objectForKey:", @"kenBurnsType"}];
  v23 = [a2 objectForKey:@"centerX"];
  v24 = 0.5;
  v25 = 0.5;
  if (v23)
  {
    [v23 floatValue];
    v25 = v26;
  }

  v27 = [a2 objectForKey:@"centerY"];
  if (v27)
  {
    [v27 floatValue];
    v24 = v28;
  }

  v20[3] = v25;
  v20[4] = v24;
  v29 = [a2 objectForKey:@"scale"];
  if (v29)
  {
    [v29 floatValue];
    v31 = v30;
  }

  else
  {
    v31 = 1.0;
  }

  result = [a2 objectForKey:@"rotation"];
  if (result)
  {
    result = [result floatValue];
    v34 = v33;
  }

  else
  {
    v34 = 0.0;
  }

  v20[5] = v31;
  v20[6] = v34;
  return result;
}

void sub_1295A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

void sub_12A2D8(_Unwind_Exception *a1)
{
  objc_sync_exit(v2);
  objc_sync_exit(v1);
  _Unwind_Resume(a1);
}

id sub_12B8D4(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [*(*(a1 + 40) + 24) currentItem];
  if (v2 != result)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 24);

    return [v5 replaceCurrentItemWithPlayerItem:v4];
  }

  return result;
}

id sub_12BAE8(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = [*(*(a1 + 40) + 24) currentItem];
  if (v2 != result)
  {
    v4 = *(a1 + 32);
    v5 = *(*(a1 + 40) + 24);

    return [v5 replaceCurrentItemWithPlayerItem:v4];
  }

  return result;
}

uint64_t sortSlidesByCaptureDate1(void *a1, void *a2, char *a3)
{
  if (a3)
  {
    v4 = *a3;
  }

  else
  {
    v4 = 1;
  }

  [objc_msgSend(a1 "captureDate")];
  v6 = v5;
  [objc_msgSend(a2 "captureDate")];
  v8 = 1;
  if ((v4 & 1) == 0)
  {
    v8 = -1;
  }

  if (v7 >= v6)
  {
    v8 = 0;
  }

  v9 = -1;
  if ((v4 & 1) == 0)
  {
    v9 = 1;
  }

  if (v6 < v7)
  {
    return v9;
  }

  else
  {
    return v8;
  }
}

uint64_t sortSlidesByUserDefinedOrder1(void *a1, void *a2)
{
  v3 = [a1 index];
  v4 = [a2 index];
  if (v3 < v4)
  {
    return -1;
  }

  else
  {
    return v4 < v3;
  }
}

void sub_12DC8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(v10);
  objc_sync_exit(obj);
  _Unwind_Resume(a1);
}

id sub_12EBC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [*(a1 + 32) objectForKey:@"positionX"];
  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    [v5 floatValue];
    v7 = v8;
  }

  v9 = [*(a1 + 32) objectForKey:@"positionY"];
  if (v9)
  {
    [v9 floatValue];
    v6 = v10;
  }

  v11 = *(a1 + 40);
  v12 = *(v11 + 24);
  v13 = *(v11 + 88);
  v14 = (v13 + 48 * a3);
  v15 = (v13 + 72 * a3);
  if ((v12 & 0x40) == 0)
  {
    v15 = v14;
  }

  *v15 = v7;
  v15[1] = v6;
  v16 = [*(a1 + 32) objectForKey:@"width"];
  v17 = 2.0;
  v18 = 2.0;
  if (v16)
  {
    [v16 floatValue];
    v18 = v19;
  }

  v20 = [*(a1 + 32) objectForKey:@"height"];
  if (v20)
  {
    [v20 floatValue];
    v17 = v21;
  }

  v22 = *(a1 + 40);
  v23 = *(v22 + 24);
  v24 = *(v22 + 88);
  v25 = v24 + 48 * a3 + 16;
  v26 = (v24 + 72 * a3 + 16);
  if ((v23 & 0x40) == 0)
  {
    v26 = v25;
  }

  *v26 = v18;
  v26[1] = v17;
  v27 = [*(a1 + 32) objectForKey:@"scale"];
  if (v27)
  {
    [v27 floatValue];
    v29 = v28;
  }

  else
  {
    v29 = 1.0;
  }

  v30 = *(a1 + 40);
  v31 = *(v30 + 24);
  v32 = *(v30 + 88);
  v33 = v32 + 48 * a3 + 40;
  v34 = (v32 + 72 * a3 + 40);
  if ((v31 & 0x40) == 0)
  {
    v34 = v33;
  }

  *v34 = v29;
  result = [*(a1 + 32) objectForKey:@"rotationZ"];
  if (result)
  {
    result = [result floatValue];
    v37 = v36;
  }

  else
  {
    v37 = 0.0;
  }

  v38 = *(a1 + 40);
  v39 = *(v38 + 24);
  v40 = *(v38 + 88);
  v41 = v40 + 48 * a3 + 32;
  v42 = (v40 + 72 * a3 + 32);
  if ((v39 & 0x40) == 0)
  {
    v42 = v41;
  }

  *v42 = v37;
  if ((*(*(a1 + 40) + 24) & 0x40) != 0)
  {
    v43 = [*(a1 + 32) objectForKey:@"positionZ"];
    v44 = 0.0;
    v45 = 0.0;
    if (v43)
    {
      [v43 floatValue];
      v45 = v46;
    }

    *(*(*(a1 + 40) + 88) + 72 * a3 + 48) = v45;
    v47 = [*(a1 + 32) objectForKey:@"rotationX"];
    if (v47)
    {
      [v47 floatValue];
      v44 = v48;
    }

    *(*(*(a1 + 40) + 88) + 72 * a3 + 56) = v44;
    result = [*(a1 + 32) objectForKey:@"rotationY"];
    if (result)
    {
      result = [result floatValue];
      v50 = v49;
    }

    else
    {
      v50 = 0.0;
    }

    *(*(*(a1 + 40) + 88) + 72 * a3 + 64) = v50;
  }

  return result;
}

uint64_t sub_13690C(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __cxa_begin_catch(a1);
  v7 = *v6;
  *(a3 + 16) = v6[2];
  *a3 = v7;
  result = *a4;
  if (*a4)
  {

    operator delete();
  }

  return result;
}

CGPoint CGPointFromString(NSString *string)
{
  v3 = _CGPointFromString(string);
  y = v3.y;
  x = v3.x;
  result.y = y;
  result.x = x;
  return result;
}

CGSize CGSizeFromString(NSString *string)
{
  v3 = _CGSizeFromString(string);
  height = v3.height;
  width = v3.width;
  result.height = height;
  result.width = width;
  return result;
}

CFRange CTFrameGetVisibleStringRange(CTFrameRef frame)
{
  VisibleStringRange = _CTFrameGetVisibleStringRange(frame);
  length = VisibleStringRange.length;
  location = VisibleStringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CTLineGetStringRange(CTLineRef line)
{
  StringRange = _CTLineGetStringRange(line);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

CFRange CTRunGetStringRange(CTRunRef run)
{
  StringRange = _CTRunGetStringRange(run);
  length = StringRange.length;
  location = StringRange.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v4 = _NSIntersectionRange(range1, range2);
  length = v4.length;
  location = v4.location;
  result.length = length;
  result.location = location;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v3 = _NSRangeFromString(aString);
  length = v3.length;
  location = v3.location;
  result.length = length;
  result.location = location;
  return result;
}

void operator delete[]()
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new[]()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  v3 = ___sincos_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  v3 = ___sincosf_stret(a1);
  cosval = v3.__cosval;
  sinval = v3.__sinval;
  result.__cosval = cosval;
  result.__sinval = sinval;
  return result;
}

lldiv_t div(uint64_t __x, uint64_t __y)
{
  v4 = _div(__x, __y);
  rem = v4.rem;
  quot = v4.quot;
  result.rem = rem;
  result.quot = quot;
  return result;
}