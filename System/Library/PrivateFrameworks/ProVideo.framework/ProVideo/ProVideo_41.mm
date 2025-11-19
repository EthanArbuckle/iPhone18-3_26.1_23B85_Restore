uint64_t HGApply3DLUT::SetLUT(uint64_t a1, char *__src, int a3, int a4, int a5, int a6)
{
  *(a1 + 464) = 1;
  if (*(a1 + 472) != a3)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = __src;
  v8 = *(a1 + 468);
  if (v8 > 23)
  {
    if (v8 > 26)
    {
      if (v8 != 27)
      {
        if (v8 == 28)
        {
          v11 = 16 * a3;
        }

        else
        {
          v11 = a3;
        }

        if (!a6)
        {
          goto LABEL_70;
        }

        goto LABEL_25;
      }
    }

    else
    {
      if (v8 == 24)
      {
        v11 = 4 * a3;
        if (!a6)
        {
          goto LABEL_70;
        }

        goto LABEL_25;
      }

      v11 = a3;
      if (v8 != 25)
      {
LABEL_24:
        if (!a6)
        {
          goto LABEL_70;
        }

        goto LABEL_25;
      }
    }

    v11 = 8 * a3;
    goto LABEL_24;
  }

  v9 = 3 * a3;
  v10 = 12 * a3;
  if (v8 != 21)
  {
    v10 = a3;
  }

  if (v8 != 17)
  {
    v9 = v10;
  }

  if ((v8 - 19) >= 2)
  {
    v11 = v9;
  }

  else
  {
    v11 = 6 * a3;
  }

  if (!a6)
  {
LABEL_70:
    if (a3 >= 1)
    {
      v87 = 0;
      v88 = v11;
      v89 = a4;
      v90 = a5;
      do
      {
        while (a3 <= 0)
        {
          ++v87;
          v6 += v90;
          if (v87 >= a3)
          {
            return 0;
          }
        }

        v91 = 0;
        v92 = 0;
        v93 = v6;
        do
        {
          memcpy((*(*(a1 + 416) + 80) + v87 * *(*(a1 + 416) + 64) + v91), v93, v88);
          ++v92;
          a3 = *(a1 + 472);
          v91 += v88;
          v93 += v89;
        }

        while (v92 < a3);
        ++v87;
        v6 += v90;
      }

      while (v87 < a3);
    }

    return 0;
  }

LABEL_25:
  if (v8 == a6)
  {
    goto LABEL_70;
  }

  if (a6 == 28 && v8 == 27)
  {
    if (a3 >= 1)
    {
      v13 = 0;
      v14 = *(a1 + 416);
      v15 = *(v14 + 80);
      v16 = *(v14 + 64);
      v17 = a4;
      v18 = a3 & 0x7FFFFFF8;
      v19 = vdupq_n_s32(0xC7800000);
      v20 = vdupq_n_s32(0x47800000u);
      v21 = vdupq_n_s32(0x7800000u);
      v22.i64[0] = 0x7F0000007FLL;
      v22.i64[1] = 0x7F0000007FLL;
      v23.i64[0] = 0x800000008000;
      v23.i64[1] = 0x800000008000;
      v24 = v15;
      do
      {
        v25 = 0;
        v26 = v24;
        v27 = __src;
        do
        {
          v28 = &v6[v13 * a5 + v25 * v17];
          v29 = (v15 + v16 * v13 + v25 * v11);
          if (a3 < 8)
          {
            v30 = 0;
LABEL_38:
            v47 = a3 - v30;
            do
            {
              v48 = *v28++;
              v49 = vbslq_s8(vcgtq_f32(v19, v48), v19, v48);
              v50 = vmulq_f32(vbslq_s8(vcgtq_f32(v49, v20), v20, v49), v21);
              *v29++ = vmovn_s32(vorrq_s8(vandq_s8(vshlq_u32(v50, xmmword_260816CB0), xmmword_260816CC0), vandq_s8(vshlq_u32(v50, xmmword_260816CD0), xmmword_260816CE0)));
              --v47;
            }

            while (v47);
            goto LABEL_32;
          }

          v29 += v18;
          v28 += v18;
          v31 = a3 & 0x7FFFFFF8;
          v32 = v26;
          v33 = v27;
          do
          {
            v34 = v33;
            v98 = vld4q_f32(v34);
            v34 += 16;
            v35 = vbslq_s8(vcgtq_f32(v19, v98.val[0]), v19, v98.val[0]);
            v36 = vmulq_f32(vbslq_s8(vcgtq_f32(v35, v20), v20, v35), v21);
            v99 = vld4q_f32(v34);
            v37 = vbslq_s8(vcgtq_f32(v19, v99.val[0]), v19, v99.val[0]);
            v38 = vbslq_s8(vcgtq_f32(v19, v98.val[1]), v19, v98.val[1]);
            v39 = vbslq_s8(vcgtq_f32(v19, v99.val[1]), v19, v99.val[1]);
            v40 = vmulq_f32(vbslq_s8(vcgtq_f32(v38, v20), v20, v38), v21);
            v41 = vbslq_s8(vcgtq_f32(v39, v20), v20, v39);
            v42 = vbslq_s8(vcgtq_f32(v19, v98.val[2]), v19, v98.val[2]);
            v43 = vbslq_s8(vcgtq_f32(v19, v99.val[2]), v19, v99.val[2]);
            v44 = vmulq_f32(vbslq_s8(vcgtq_f32(v37, v20), v20, v37), v21);
            v45 = vmulq_f32(vbslq_s8(vcgtq_f32(v42, v20), v20, v42), v21);
            v46 = vmulq_f32(v41, v21);
            v98.val[0] = vbslq_s8(vcgtq_f32(v19, v98.val[3]), v19, v98.val[3]);
            v98.val[1] = vbslq_s8(vcgtq_f32(v19, v99.val[3]), v19, v99.val[3]);
            v98.val[3] = vmulq_f32(vbslq_s8(vcgtq_f32(v43, v20), v20, v43), v21);
            v98.val[1] = vmulq_f32(vbslq_s8(vcgtq_f32(v98.val[1], v20), v20, v98.val[1]), v21);
            v98.val[0] = vmulq_f32(vbslq_s8(vcgtq_f32(v98.val[0], v20), v20, v98.val[0]), v21);
            v97.val[1] = vuzp1q_s16(vorrq_s8(vandq_s8(vshrq_n_u32(v40, 0xDuLL), v22), vandq_s8(vshrq_n_u32(v40, 0x10uLL), v23)), vorrq_s8(vandq_s8(vshrq_n_u32(v46, 0xDuLL), v22), vandq_s8(vshrq_n_u32(v46, 0x10uLL), v23)));
            v97.val[0] = vuzp1q_s16(vorrq_s8(vandq_s8(vshrq_n_u32(v36, 0xDuLL), v22), vandq_s8(vshrq_n_u32(v36, 0x10uLL), v23)), vorrq_s8(vandq_s8(vshrq_n_u32(v44, 0xDuLL), v22), vandq_s8(vshrq_n_u32(v44, 0x10uLL), v23)));
            v97.val[3] = vuzp1q_s16(vorrq_s8(vandq_s8(vshrq_n_u32(v98.val[0], 0xDuLL), v22), vandq_s8(vshrq_n_u32(v98.val[0], 0x10uLL), v23)), vorrq_s8(vandq_s8(vshrq_n_u32(v98.val[1], 0xDuLL), v22), vandq_s8(vshrq_n_u32(v98.val[1], 0x10uLL), v23)));
            v97.val[2] = vuzp1q_s16(vorrq_s8(vandq_s8(vshrq_n_u32(v45, 0xDuLL), v22), vandq_s8(vshrq_n_u32(v45, 0x10uLL), v23)), vorrq_s8(vandq_s8(vshrq_n_u32(v98.val[3], 0xDuLL), v22), vandq_s8(vshrq_n_u32(v98.val[3], 0x10uLL), v23)));
            vst4q_s16(v32, v97);
            v32 += 32;
            v33 += 32;
            v31 -= 8;
          }

          while (v31);
          v30 = a3 & 0x7FFFFFF8;
          if (v18 != a3)
          {
            goto LABEL_38;
          }

LABEL_32:
          ++v25;
          v27 = (v27 + v17);
          v26 = (v26 + v11);
        }

        while (v25 != a3);
        ++v13;
        __src += a5;
        v24 = (v24 + v16);
      }

      while (v13 != a3);
    }

    return 0;
  }

  result = 0xFFFFFFFFLL;
  if (a6 == 21 && v8 == 20)
  {
    if (a3 <= 0)
    {
      return 0;
    }

    v51 = 0;
    v52 = *(a1 + 416);
    v53 = *(v52 + 80);
    v54 = *(v52 + 64);
    v55 = a5;
    v56 = a3 & 0x7FFFFFF8;
    v57 = vdupq_n_s32(0xC7800000);
    v58 = vdupq_n_s32(0x47800000u);
    v59 = vdupq_n_s32(0x7800000u);
    v60.i64[0] = 0x7F0000007FLL;
    v60.i64[1] = 0x7F0000007FLL;
    v61.i64[0] = 0x800000008000;
    v61.i64[1] = 0x800000008000;
    v62 = v53;
    v63 = __src;
LABEL_46:
    v64 = 0;
    v65 = v62;
    v66 = v63;
    while (1)
    {
      v67 = &__src[v51 * v55 + v64 * a4];
      v68 = (v53 + v54 * v51 + v64 * v11);
      if (a3 < 8)
      {
        break;
      }

      v68 += 3 * v56;
      v67 += 3 * v56;
      v70 = v65;
      v71 = v66;
      v72 = a3 & 0x7FFFFFF8;
      do
      {
        v73 = v71;
        v94 = vld3q_f32(v73);
        v73 += 12;
        v74 = vbslq_s8(vcgtq_f32(v57, v94.val[0]), v57, v94.val[0]);
        v75 = vmulq_f32(vbslq_s8(vcgtq_f32(v74, v58), v58, v74), v59);
        v95 = vld3q_f32(v73);
        v76 = vbslq_s8(vcgtq_f32(v57, v95.val[0]), v57, v95.val[0]);
        v77 = vbslq_s8(vcgtq_f32(v57, v94.val[1]), v57, v94.val[1]);
        v78 = vbslq_s8(vcgtq_f32(v57, v95.val[1]), v57, v95.val[1]);
        v79 = vmulq_f32(vbslq_s8(vcgtq_f32(v77, v58), v58, v77), v59);
        v94.val[0] = vbslq_s8(vcgtq_f32(v57, v94.val[2]), v57, v94.val[2]);
        v94.val[1] = vmulq_f32(vbslq_s8(vcgtq_f32(v76, v58), v58, v76), v59);
        v94.val[2] = vbslq_s8(vcgtq_f32(v57, v95.val[2]), v57, v95.val[2]);
        v95.val[0] = vmulq_f32(vbslq_s8(vcgtq_f32(v78, v58), v58, v78), v59);
        v94.val[2] = vmulq_f32(vbslq_s8(vcgtq_f32(v94.val[2], v58), v58, v94.val[2]), v59);
        v94.val[0] = vmulq_f32(vbslq_s8(vcgtq_f32(v94.val[0], v58), v58, v94.val[0]), v59);
        v96.val[2] = vuzp1q_s16(vorrq_s8(vandq_s8(vshrq_n_u32(v94.val[0], 0xDuLL), v60), vandq_s8(vshrq_n_u32(v94.val[0], 0x10uLL), v61)), vorrq_s8(vandq_s8(vshrq_n_u32(v94.val[2], 0xDuLL), v60), vandq_s8(vshrq_n_u32(v94.val[2], 0x10uLL), v61)));
        v96.val[1] = vuzp1q_s16(vorrq_s8(vandq_s8(vshrq_n_u32(v79, 0xDuLL), v60), vandq_s8(vshrq_n_u32(v79, 0x10uLL), v61)), vorrq_s8(vandq_s8(vshrq_n_u32(v95.val[0], 0xDuLL), v60), vandq_s8(vshrq_n_u32(v95.val[0], 0x10uLL), v61)));
        v96.val[0] = vuzp1q_s16(vorrq_s8(vandq_s8(vshrq_n_u32(v75, 0xDuLL), v60), vandq_s8(vshrq_n_u32(v75, 0x10uLL), v61)), vorrq_s8(vandq_s8(vshrq_n_u32(v94.val[1], 0xDuLL), v60), vandq_s8(vshrq_n_u32(v94.val[1], 0x10uLL), v61)));
        vst3q_s16(v70, v96);
        v70 += 24;
        v71 += 24;
        v72 -= 8;
      }

      while (v72);
      v69 = a3 & 0x7FFFFFF8;
      if (v56 != a3)
      {
        goto LABEL_53;
      }

LABEL_47:
      ++v64;
      v66 = (v66 + a4);
      v65 = (v65 + v11);
      if (v64 == a3)
      {
        ++v51;
        v63 = (v63 + v55);
        v62 = (v62 + v54);
        if (v51 == a3)
        {
          return 0;
        }

        goto LABEL_46;
      }
    }

    v69 = 0;
LABEL_53:
    v80 = a3 - v69;
    do
    {
      v81 = -65536.0;
      v82 = *v67;
      v83 = v67[1];
      if (*v67 < -65536.0)
      {
        v82 = -65536.0;
      }

      if (v82 > 65536.0)
      {
        v82 = 65536.0;
      }

      v84 = v82 * 1.9259e-34;
      *v68 = HIWORD(v84) & 0x8000 | (LODWORD(v84) >> 13) & 0x7FFF;
      if (v83 >= -65536.0)
      {
        v85 = v83;
      }

      else
      {
        v85 = -65536.0;
      }

      if (v85 > 65536.0)
      {
        v85 = 65536.0;
      }

      if (v67[2] >= -65536.0)
      {
        v81 = v67[2];
      }

      if (v81 > 65536.0)
      {
        v81 = 65536.0;
      }

      v86 = v81 * 1.9259e-34;
      v68[1] = HIWORD(COERCE_UNSIGNED_INT(v85 * 1.9259e-34)) & 0x8000 | (COERCE_UNSIGNED_INT(v85 * 1.9259e-34) >> 13) & 0x7FFF;
      v68[2] = HIWORD(v86) & 0x8000 | (LODWORD(v86) >> 13) & 0x7FFF;
      v68 += 3;
      v67 += 3;
      --v80;
    }

    while (v80);
    goto LABEL_47;
  }

  return result;
}

uint64_t HGApply3DLUT::SetLUTBitmap(HGRect *this, HGBitmap *a2)
{
  if (!a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (!HGRect::IsEqual((a2 + 20), this[27]))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = *(a2 + 4);
  v5 = v4 > 0x1C;
  v6 = (1 << v4) & 0x1B3A0000;
  if (v5 || v6 == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *&this[26].var0;
  if (v8 != a2)
  {
    LOBYTE(this[29].var0) = 1;
    if (v8)
    {
      (*(*v8 + 24))(v8);
    }

    *&this[26].var0 = a2;
    (*(*a2 + 16))(a2);
  }

  return 0;
}

uint64_t HGApply3DLUT::GetOutput(HGNode *this, HGRenderer *a2)
{
  v4 = *(this + 51);
  Input = HGRenderer::GetInput(a2, this, 0);
  (*(*v4 + 120))(v4, 0, Input);
  if (HGRenderer::GetInput(a2, this, 1u))
  {
    v6 = *(this + 51);
    v7 = HGRenderer::GetInput(a2, this, 1u);
    (*(*v6 + 120))(v6, 1, v7);
    return *(this + 51);
  }

  if (*(this + 464) != 1)
  {
    return *(this + 51);
  }

  *(this + 464) = 0;
  v9 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v9, *(this + 52));
  (*(**(this + 51) + 120))(*(this + 51), 1, v9);
  (*(*v9 + 24))(v9);
  return *(this + 51);
}

void HgcApply3DLUTTrilinearUniform::~HgcApply3DLUTTrilinearUniform(HgcApply3DLUTTrilinearUniform *this)
{
  HgcApply3DLUTTrilinearUniform_basekernel::~HgcApply3DLUTTrilinearUniform_basekernel(this);

  HGObject::operator delete(v1);
}

uint64_t HgcApply3DLUTTrilinearUniform::GetDOD(HgcApply3DLUTTrilinearUniform *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcApply3DLUTTrilinearUniform::GetROI(HgcApply3DLUTTrilinearUniform *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var0;
  result = HGRectMake4i(0, 0, *(this + 104) * *(this + 104) + 1, *(this + 104) + 1);
  if (a3 != 1)
  {
    if (a3)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void HgcApply3DLUTTrilinearFast::~HgcApply3DLUTTrilinearFast(HgcApply3DLUTTrilinearFast *this)
{
  HgcApply3DLUTTrilinearFast_basekernel::~HgcApply3DLUTTrilinearFast_basekernel(this);

  HGObject::operator delete(v1);
}

uint64_t HgcApply3DLUTTrilinearFast::GetDOD(HgcApply3DLUTTrilinearFast *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcApply3DLUTTrilinearFast::GetROI(HgcApply3DLUTTrilinearFast *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var0;
  result = HGRectMake4i(0, 0, *(this + 104) * *(this + 104) + 1, *(this + 104) + 1);
  if (a3 != 1)
  {
    if (a3)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void HgcApply3DLUTTrilinear::~HgcApply3DLUTTrilinear(HgcApply3DLUTTrilinear *this)
{
  HgcApply3DLUTTrilinear_basekernel::~HgcApply3DLUTTrilinear_basekernel(this);

  HGObject::operator delete(v1);
}

uint64_t HgcApply3DLUTTrilinear::GetDOD(HgcApply3DLUTTrilinear *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcApply3DLUTTrilinear::GetROI(HgcApply3DLUTTrilinear *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var0;
  v7 = HGRectMake4i(0, 0, *(this + 104) * *(this + 104) + 1, *(this + 104) + 1);
  result = HGRectMake4i(0, 0, *(this + 104), 1u);
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      return v7;
    }

    else if (a3)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void HgcApply3DLUTTetrahedralUniform::~HgcApply3DLUTTetrahedralUniform(HgcApply3DLUTTetrahedralUniform *this)
{
  HgcApply3DLUTTetrahedralUniform_basekernel::~HgcApply3DLUTTetrahedralUniform_basekernel(this);

  HGObject::operator delete(v1);
}

uint64_t HgcApply3DLUTTetrahedralUniform::GetDOD(HgcApply3DLUTTetrahedralUniform *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcApply3DLUTTetrahedralUniform::GetROI(HgcApply3DLUTTetrahedralUniform *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var0;
  result = HGRectMake4i(0, 0, *(this + 104) * *(this + 104) + 1, *(this + 104) + 1);
  if (a3 != 1)
  {
    if (a3)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void HgcApply3DLUTTetrahedralFast::~HgcApply3DLUTTetrahedralFast(HgcApply3DLUTTetrahedralFast *this)
{
  HgcApply3DLUTTetrahedralFast_basekernel::~HgcApply3DLUTTetrahedralFast_basekernel(this);

  HGObject::operator delete(v1);
}

uint64_t HgcApply3DLUTTetrahedralFast::GetDOD(HgcApply3DLUTTetrahedralFast *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcApply3DLUTTetrahedralFast::GetROI(HgcApply3DLUTTetrahedralFast *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var0;
  result = HGRectMake4i(0, 0, *(this + 104) * *(this + 104) + 1, *(this + 104) + 1);
  if (a3 != 1)
  {
    if (a3)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void HgcApply3DLUTTetrahedral::~HgcApply3DLUTTetrahedral(HgcApply3DLUTTetrahedral *this)
{
  HgcApply3DLUTTetrahedral_basekernel::~HgcApply3DLUTTetrahedral_basekernel(this);

  HGObject::operator delete(v1);
}

uint64_t HgcApply3DLUTTetrahedral::GetDOD(HgcApply3DLUTTetrahedral *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcApply3DLUTTetrahedral::GetROI(HgcApply3DLUTTetrahedral *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var0;
  v7 = HGRectMake4i(0, 0, *(this + 104) * *(this + 104) + 1, *(this + 104) + 1);
  result = HGRectMake4i(0, 0, *(this + 104), 1u);
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      return v7;
    }

    else if (a3)
    {
      return 0;
    }

    else
    {
      return v4;
    }
  }

  return result;
}

void HGStorage3DLUT::~HGStorage3DLUT(HGStorage3DLUT *this)
{
  *this = &unk_287220DA8;
  if (*(this + 3))
  {
    v2 = this;
    MEMORY[0x2666E9ED0](*(this + 3), 0x1000C8077774924);
    this = v2;
    v1 = vars8;
  }

  *(this + 2) = 0;
  *(this + 3) = 0;

  HGObject::~HGObject(this);
}

{
  *this = &unk_287220DA8;
  v2 = *(this + 3);
  if (v2)
  {
    MEMORY[0x2666E9ED0](v2, 0x1000C8077774924);
  }

  *(this + 2) = 0;
  *(this + 3) = 0;
  HGObject::~HGObject(this);

  HGObject::operator delete(v3);
}

void HGMetalTexture::~HGMetalTexture(HGMetalTexture *this)
{
  *this = &unk_287220DF8;
  v2 = (this + 176);
  v6.__m_ = (this + 176);
  v6.__owns_ = 1;
  std::mutex::lock((this + 176));
  m = v2;
  if (*(this + 171) == 1)
  {
    do
    {
      std::condition_variable::wait(this + 5, &v6);
    }

    while ((*(this + 171) & 1) != 0);
    if (!v6.__owns_)
    {
      goto LABEL_6;
    }

    m = v6.__m_;
  }

  std::mutex::unlock(m);
LABEL_6:
  v4 = *(this + 16);
  if (v4)
  {
    HGMetalTexturePool::releaseTexture(v4, *(this + 18));
  }

  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 18) = 0;
  std::condition_variable::~condition_variable(this + 5);
  std::mutex::~mutex(v2);
  HGBitmap::~HGBitmap(this, v5);
}

{
  HGMetalTexture::~HGMetalTexture(this);

  HGObject::operator delete(v1);
}

void HGMetalTexture::WaitForCopy(HGMetalTexture *this)
{
  v2.__m_ = (this + 176);
  v2.__owns_ = 1;
  std::mutex::lock((this + 176));
  if (*(this + 171) != 1)
  {
    goto LABEL_4;
  }

  do
  {
    std::condition_variable::wait(this + 5, &v2);
  }

  while ((*(this + 171) & 1) != 0);
  if (v2.__owns_)
  {
LABEL_4:
    std::mutex::unlock(v2.__m_);
  }
}

void *HGMetalTexture::hasComputeUsage(HGMetalTexture *this)
{
  result = *(this + 18);
  if (result)
  {
    return (([result usage] >> 1) & 1);
  }

  return result;
}

uint64_t HGMetalTexture::GetTextureRect(HGMetalTexture *this)
{
  IsZero = HGRect::IsZero((this + 152));
  v3 = 152;
  if (IsZero)
  {
    v3 = 20;
  }

  return *(this + v3);
}

void HGMetalTexture::CopyManagedTextureData(HGMetalTexture *this, HGBitmap *a2, HGRect a3)
{
  v3 = *&a3.var2;
  v4 = *&a3.var0;
  v7 = *(this + 18);
  if (v7 && [v7 storageMode] == 2)
  {
    v8 = "HGMetalTexture::CopyTextureData failed. Texture has private storage.";
LABEL_17:

    HGLogger::warning(v8, a2, *&a3.var0);
    return;
  }

  if (!a2 || !*(a2 + 10))
  {
    v8 = "HGMetalTexture::ReplaceManagedTextureData failed. No destination data.";
    goto LABEL_17;
  }

  v9 = HGRectIntersection(*(this + 20), *(this + 28), *(a2 + 20), *(a2 + 28));
  *&v30.var0 = HGRectIntersection(v9, v10, v4, v3);
  *&v30.var2 = v11;
  if (!HGRect::IsNull(&v30))
  {
    HGTraceGuard::HGTraceGuard(v29, "metal_osx", 1, "HGMetalTexture::CopyManagedTextureData()");
    v28 = 4612;
    kdebug_trace();
    v12 = HGBitmap::byteOffset(a2, v30.var0, v30.var1);
    v13 = *(a2 + 10);
    v14 = HGFormatUtils::collapseRectForFormat(&v30.var0, *(this + 4));
    v16 = v15;
    if (HGRect::IsZero((this + 152)))
    {
      v17 = this + 20;
    }

    else
    {
      v17 = this + 152;
    }

    v18 = *v17;
    IsZero = HGRect::IsZero((this + 152));
    v20 = 152;
    if (IsZero)
    {
      v20 = 20;
    }

    v21 = *(this + 18);
    v22 = *(a2 + 8);
    v23 = (HIDWORD(v14) - *(this + v20 + 4));
    v27[0] = (v14 - v18);
    v27[1] = v23;
    v27[2] = 0;
    v27[3] = (v16 - v14);
    v27[4] = (HIDWORD(v16) - HIDWORD(v14));
    v27[5] = 1;
    [v21 getBytes:v13 + v12 bytesPerRow:v22 fromRegion:v27 mipmapLevel:0];
    v26 = atomic_load(HGLogger::_enabled);
    if (v26)
    {
      HGLogger::log("mtl_perf_validation", 1, "HGMTL PERF WARNING - MTLTexture.getBytes: slow download from managed texture (prefer a BlitEncoder)\n", v24, v25);
    }

    kdebug_trace();
    HGTraceGuard::~HGTraceGuard(v29);
  }
}

void sub_25FCE7984(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17, __int16 a18, char a19)
{
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a17);
  HGTraceGuard::~HGTraceGuard(&a19);
  _Unwind_Resume(a1);
}

void HGMetalTexture::ReplaceManagedTextureData(HGMetalTexture *this, HGBitmap *a2, HGRect a3, int a4)
{
  v5 = *&a3.var2;
  v6 = *&a3.var0;
  v9 = *(this + 18);
  if (v9 && [v9 storageMode] == 2)
  {
    v10 = "HGMetalTexture::ReplaceManagedTextureData failed. Texture has private storage.";
LABEL_16:

    HGLogger::warning(v10, a2, *&a3.var0);
    return;
  }

  if (!a2 || !*(a2 + 10))
  {
    v10 = "HGMetalTexture::ReplaceManagedTextureData failed. No source data.";
    goto LABEL_16;
  }

  v11 = HGRectIntersection(*(this + 20), *(this + 28), *(a2 + 20), *(a2 + 28));
  *&v38.var0 = HGRectIntersection(v11, v12, v6, v5);
  *&v38.var2 = v13;
  if (!HGRect::IsNull(&v38))
  {
    HGTraceGuard::HGTraceGuard(v37, "metal_osx", 1, "HGMetalTexture::ReplaceManagedTextureData()");
    v14 = HGBitmap::byteOffset(a2, v38.var0, v38.var1);
    v15 = *(a2 + 10);
    v16 = HGFormatUtils::collapseRectForFormat(&v38.var0, *(this + 4));
    v18 = v17;
    if (HGRect::IsZero((this + 152)))
    {
      v19 = this + 20;
    }

    else
    {
      v19 = this + 152;
    }

    v20 = *v19;
    IsZero = HGRect::IsZero((this + 152));
    v22 = v15 + v14;
    v23 = HIDWORD(v16);
    v24 = (v16 - v20);
    if (IsZero)
    {
      v25 = this + 20;
    }

    else
    {
      v25 = this + 152;
    }

    v26 = (HIDWORD(v16) - *(v25 + 1));
    v27 = (v18 - v16);
    v28 = (HIDWORD(v18) - v23);
    if (a4)
    {
      HGBitmap::SetStorage(this, a2);
      std::mutex::lock((this + 176));
      *(this + 171) = 1;
      std::condition_variable::notify_all(this + 5);
      std::mutex::unlock((this + 176));
      global_queue = dispatch_get_global_queue(2, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = *"";
      block[2] = ___ZN14HGMetalTexture25ReplaceManagedTextureDataEP8HGBitmap6HGRectb_block_invoke;
      block[3] = &__block_descriptor_104_e5_v8__0l;
      block[4] = this;
      block[5] = v24;
      block[6] = v26;
      block[7] = 0;
      block[8] = v27;
      block[9] = v28;
      block[10] = 1;
      block[11] = v22;
      block[12] = a2;
      dispatch_async(global_queue, block);
    }

    else
    {
      v35 = 4614;
      kdebug_trace();
      v32 = *(this + 18);
      v34[0] = v24;
      v34[1] = v26;
      v34[2] = 0;
      v34[3] = v27;
      v34[4] = v28;
      v34[5] = 1;
      [v32 replaceRegion:v34 mipmapLevel:0 withBytes:v22 bytesPerRow:*(a2 + 8)];
      kdebug_trace();
    }

    v33 = atomic_load(HGLogger::_enabled);
    if (v33)
    {
      HGLogger::log("mtl_perf_validation", 1, "HGMTL PERF WARNING - MTLTexture.replaceRegion: slow upload into managed texture (%d x %d) (data is probably not page-aligned)\n", v30, v31, (*(a2 + 7) - *(a2 + 5)), (*(a2 + 8) - *(a2 + 6)));
    }

    HGTraceGuard::~HGTraceGuard(v37);
  }
}

void sub_25FCE7C90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, int a18, char a19)
{
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a19);
  HGTraceGuard::~HGTraceGuard((v19 - 120));
  _Unwind_Resume(a1);
}

uint64_t ___ZN14HGMetalTexture25ReplaceManagedTextureDataEP8HGBitmap6HGRectb_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = 4614;
  kdebug_trace();
  v3 = *(v2 + 144);
  v4 = *(a1 + 56);
  v6[0] = *(a1 + 40);
  v6[1] = v4;
  v6[2] = *(a1 + 72);
  [v3 replaceRegion:v6 mipmapLevel:0 withBytes:*(a1 + 88) bytesPerRow:*(*(a1 + 96) + 64)];
  std::mutex::lock((v2 + 176));
  *(v2 + 171) = 0;
  std::condition_variable::notify_all((v2 + 240));
  std::mutex::unlock((v2 + 176));
  return kdebug_trace();
}

void HGMetalTexture::InitializeBorders(HGMetalTexture *this)
{
  HGTraceGuard::HGTraceGuard(v12, "metal_osx", 1, "HGMetalTexture::InitializeBorders()");
  v2 = HGFormatUtils::collapseRectForFormat((this + 20), *(this + 4));
  v4 = v3;
  if (HGRect::IsZero((this + 152)))
  {
    v5 = (this + 20);
  }

  else
  {
    v5 = (this + 152);
  }

  v6 = *v5;
  v7 = v5[1];
  if (!HGRectIsEqual(v2, v4, *v5, v7))
  {
    if (SHIDWORD(v6) < SHIDWORD(v2))
    {
      HGRectMake4i(v6, HIDWORD(v6), v7, HIDWORD(v2));
      operator new();
    }

    if (SHIDWORD(v7) > SHIDWORD(v4))
    {
      HGRectMake4i(v6, HIDWORD(v4), v7, HIDWORD(v7));
      operator new();
    }

    if (v6 < v2)
    {
      HGRectMake4i(v6, HIDWORD(v2), v2, HIDWORD(v4));
      operator new();
    }

    if (v7 > v4)
    {
      HGRectMake4i(v4, HIDWORD(v2), v7, HIDWORD(v4));
      operator new();
    }

    v8 = HGMetalUtils::metalFormat(*(this + 4));
    HGMetalUtils::bytesPerPixel(v8);
    v10 = HGMemory::allocate(0, 0, v9);
    bzero(v10, 0);
    HGMemory::release(v10, v11);
  }

  HGTraceGuard::~HGTraceGuard(v12);
}

void sub_25FCE8374(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  HGTraceGuard::~HGTraceGuard((v16 - 120));
  _Unwind_Resume(a1);
}

void HGMetalTexture::CopyTexture(HGMetalTexture *this, id *a2, HGBitmap *a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  HGTraceGuard::HGTraceGuard(v18, "metal_osx", 1, "HGMetalTexture::CopyTexture() to bitmap");
  v9 = *(this + 18);
  if (!v9)
  {
LABEL_11:
    *&v19.var0 = v5;
    *&v19.var2 = v4;
    HGMetalTexture::CopyManagedTextureData(this, a3, v19);
    goto LABEL_12;
  }

  if ([v9 storageMode] != 2)
  {
    v11 = *(this + 18);
    if (v11 && ![v11 storageMode])
    {
      v14 = atomic_load(HGLogger::_enabled);
      if (v14)
      {
        HGLogger::log("mtl_perf_validation", 1, "HGMTL PERF WARNING - [MTLTexture getBytes] with MTLStorageModeShared texture!? This sync'ed copy should have been avoidable...\n", v12, v13);
      }

      HGMetalContext::synchronizeCommandQueue(a2);
    }

    goto LABEL_11;
  }

  v10 = HGMetalContext::bufferInfiniPool(a2);
  if (!HGMetalBuffer::canCreateFromBytes(*(a2[2] + 2), a3))
  {
    v15 = HGObject::operator new(0x80uLL);
    HGBitmap::HGBitmap(v15, *(a3 + 20), *(a3 + 28), *(a3 + 4));
    HGMetalBuffer::createFromBytes(v15, *(a2[2] + 2), v10, 1, &v17);
    HGMetalUtils::blitTextureToBuffer(a2[4], this, v17, v5, v4, 1, 0);
    HGRenderUtils::BufferCopier::BufferCopier(&v16);
  }

  HGMetalBuffer::createFromBytes(a3, *(a2[2] + 2), v10, 1, &v17);
  HGMetalUtils::blitTextureToBuffer(a2[4], this, v17, v5, v4, 1, 0);
  if (v17)
  {
    (*(*v17 + 24))(v17);
  }

LABEL_12:
  HGTraceGuard::~HGTraceGuard(v18);
}

void sub_25FCE8654(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (a3)
  {
    (*(*a3 + 24))(a3);
  }

  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGMetalTexture::CreateBitmapCopy(HGMetalTexture *this@<X0>, id *a2@<X1>, HGRect a3@<0:X2, 8:X3>, HGBitmap **a4@<X8>)
{
  v7 = HGRectIntersection(*(this + 20), *(this + 28), *&a3.var0, *&a3.var2);
  v9 = v8;
  v10 = HGObject::operator new(0x80uLL);
  HGBitmap::HGBitmap(v10, v7, v9, *(this + 4));
  *a4 = v10;
  *&v11.var0 = v7;
  *&v11.var2 = v9;
  HGMetalTexture::CopyTexture(this, a2, v10, v11);
}

void sub_25FCE87D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMetalTexture::_canCreateLinearTexture<(HGMetalTexture::CreationStrategyFlags)16>(void *a1, HGBitmap *this)
{
  Storage = HGBitmap::GetStorage(this);
  {
    v6 = this;
  }

  v7 = HGMetalUtils::metalFormat(*(v6 + 4));
  v8 = [a1 minimumLinearTextureAlignmentForPixelFormat:v7];
  v9 = getpagesize();
  v10 = !(*(v6 + 10) % v9) && !(*(v6 + 9) % v9) && *(v6 + 8) % v8 == 0;
  v11 = *(HGMetalDeviceInfo::getDeviceInfo(a1) + 48);
  if (*(v6 + 7) - *(v6 + 5) <= v11)
  {
    v12 = *(v6 + 8) - *(v6 + 6) <= v11;
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    v12 = 0;
    if (!v10)
    {
      return 0;
    }
  }

  return (v7 != 0) & v12;
}

id HGMetalTexture::createFromTexture@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v4 = a1;
  v5 = HGRectMake4i(0, 0, [a1 width], objc_msgSend(a1, "height"));
  v7 = v6;
  v8 = HGMetalUtils::hgFormat([a1 pixelFormat]);
  v9 = [a1 device];
  v10 = HGObject::operator new(0x120uLL);
  result = HGBitmap::HGBitmap(v10, v5, v7, v8, 0);
  *v10 = &unk_287220DF8;
  *(v10 + 17) = 0;
  *(v10 + 18) = 0;
  *(v10 + 16) = 0;
  *(v10 + 152) = HGRectNull;
  *(v10 + 42) = 1;
  *(v10 + 22) = 850045863;
  *(v10 + 184) = 0u;
  *(v10 + 200) = 0u;
  *(v10 + 216) = 0u;
  *(v10 + 29) = 0;
  *(v10 + 30) = 1018212795;
  *(v10 + 248) = 0u;
  *(v10 + 35) = 0;
  *(v10 + 264) = 0u;
  *(v10 + 3) |= 0x220u;
  if (v9)
  {
    *(v10 + 17) = v9;
    result = v9;
  }

  *a2 = v10;
  *(v10 + 18) = a1;
  v10[169] = 1;
  return result;
}

void sub_25FCE8AE0(_Unwind_Exception *a1)
{
  std::condition_variable::~condition_variable(v3);
  std::mutex::~mutex(v2);
  HGBitmap::~HGBitmap(v1, v5);
  HGObject::operator delete(v6);
  _Unwind_Resume(a1);
}

void HGMetalTexture::createFromBitmap(HGMetalTexture *this@<X0>, HGMetalContext *a2@<X1>, HGBitmap *a3@<X3>, HGRect a4@<0:X4, 8:X5>, HGBitmap *a5@<X2>, uint64_t a6@<X6>, HGMetalContext **a7@<X8>)
{
  var2 = a4.var2;
  v9 = *&a4.var0;
  v12 = a2;
  v15 = *(*(this + 2) + 16);
  v16 = HGMetalContext::texturePool(this);
  *a7 = 0;
  if (!a5 || (!*(a5 + 10) ? (v19 = (*(a5 + 3) & 1) == 0) : (v19 = 0), v19))
  {

    HGLogger::warning("HGMetalTexture::createFromBitmap() failed. HGBitmap doesn't have any data!", v17, v18);
  }

  else
  {
    if ((*(a5 + 3) & 1) == 0)
    {
      v33 = v16;
      (*(*a5 + 16))(a5);
      v39 = a5;
      v21 = v38;
      v22 = HGRectIntersection(*(v38 + 20), *(v38 + 28), a3, v9);
      v34 = v23;
      v35 = v22;
      v24 = *(v21 + 4);
      LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(this);
      v26 = *(this + 24);
      if (v26)
      {
        if (LUTEnd)
        {
          if (HGMetalDeviceInfo::isAMD(LUTEnd))
          {
            v27 = HGMetalUtils::metalFormat(v24);
            if (v26 < ((HIDWORD(v34) - HIDWORD(v35)) * (v34 - v35) * HGMetalUtils::bytesPerPixel(v27)) >> 20)
            {
              v12 &= 0xFu;
            }
          }
        }
      }

      if ((v12 & 0x78) != 0 && HGMetalBuffer::canCreateFromBytes(v15, v21))
      {
        v28 = HGMetalContext::bufferInfiniPool(this);
        HGMetalBuffer::createFromBytes(v21, v15, v28, 1, &v37);
        if (v37)
        {
          *&v41.var0 = v34;
          *&v41.var2 = a6;
          HGMetalTexture::createFromBuffer(this, (v12 & 0x78), v37, v35, v41, &v36);
          v29 = v36;
          if (v36)
          {
            *a7 = v36;
          }

          if (v37)
          {
            (*(*v37 + 24))(v37);
          }
        }

        else
        {
          v29 = 0;
        }

        v32 = v29 != 0;
        if ((v12 & 4) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v32 = 0;
        if ((v12 & 4) == 0)
        {
LABEL_31:
          (*(*v21 + 24))(v21);
          (*(*a5 + 24))(a5);
          return;
        }
      }

      if (!v32)
      {
        HGMetalTexture::createWithCopy(v15, v33, v21, v35, v34, var2, a6 ^ 1, &v37);
        if (v37)
        {
          *a7 = v37;
        }
      }

      goto LABEL_31;
    }

    CVBitmapStorage = HGCVBitmap::getCVBitmapStorage(a5, v17);
    HGMetalTexture::createFromIOSurface(this, (v12 & 3), v31, CVBitmapStorage, &v39);
    if (v39)
    {
      *a7 = v39;
    }
  }
}

void sub_25FCE8E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a14)
  {
    (*(*a14 + 24))(a14);
  }

  (*(*v15 + 24))(v15);
  (*(*v14 + 24))(v14);
  _Unwind_Resume(a1);
}

void HGMetalTexture::createFromIOSurface(HGMetalTexture *this@<X0>, HGMetalContext *a2@<X1>, HGCVBitmap *a3@<X3>, char *a4@<X2>, void *a5@<X8>)
{
  *a5 = 0;
  if (!a4)
  {
    goto LABEL_14;
  }

  v5 = a2;
  if ((a2 & 3) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(*(this + 2) + 16);
  CVTextureCacheRetainedRef = HGMetalContext::getCVTextureCacheRetainedRef(this);
  v10 = CVTextureCacheRetainedRef;
  v11 = 0;
  if (v5)
  {
    if (CVTextureCacheRetainedRef)
    {
      HGMetalTexture::createFromIOSurface(v8, CVTextureCacheRetainedRef, a4, &v12);
      v11 = v12;
      if (v12)
      {
        *a5 = v12;
      }
    }
  }

  if ((v5 & 2) != 0 && !v11)
  {
    HGMetalTexture::createFromIOSurface(v8, a4, a4, &v12);
    v11 = v12;
    if (v12)
    {
      *a5 = v12;
    }
  }

  if (v10)
  {
    CFRelease(v10);
  }

  if (!v11)
  {
LABEL_14:

    HGLogger::warning("HGMetalTexture::createFromIOSurface failed. Invalid cvbmp or strategy.", a2, a4, a3);
  }
}

void sub_25FCE8FB4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t anonymous namespace::adjustBitmapForTexture(void *a1, const char *a2, char *a3)
{
  v5 = HGFormatUtils::RGBtoRGBA(*(*a2 + 16), a2, a3);
  v6 = *a2;
  if (v5 != *(*a2 + 16))
  {
    HGTraceGuard::HGTraceGuard(v12, "metal_osx", 1, "adjustBitmapForTexture() -- HGMetalTexture reformat");
    v9 = *a2;
    v10 = HGObject::operator new(0x80uLL);
    HGBitmap::HGBitmap(v10, *(v9 + 20), *(v9 + 28), v5);
    *a1 = v10;
    HGRenderUtils::BufferReformatter::BufferReformatter(v11);
  }

  *a1 = v6;
  v7 = *(*v6 + 16);

  return v7();
}

void sub_25FCE9128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGMetalTexture::createFromBuffer(HGMetalTexture *this@<X0>, HGMetalContext *a2@<X1>, HGMetalContext *a3@<X2>, HGMetalBuffer *a4@<X3>, HGRect a5@<0:X4, 8:X5>, void *a6@<X8>)
{
  v6 = *&a5.var2;
  v7 = *&a5.var0;
  v10 = a2;
  v13 = *(*(this + 2) + 16);
  *a6 = 0;
  if ((a2 & 0x10) != 0 && HGMetalTexture::_canCreateLinearTexture<(HGMetalTexture::CreationStrategyFlags)16>(v13, a3) && (HGMetalTexture::_createFromBufferStorage<(HGMetalTexture::CreationStrategyFlags)16>(v13, a3, a4, v7, &v18), v18))
  {
    *a6 = v18;
  }

  else if ((v10 & 8) != 0)
  {
    v14 = v10 & 0x70;
    *&v19.var0 = v7;
    *&v19.var2 = v6;
    HGMetalTexture::createWithBlitEncoder(this, a3, a4, v19, &v18);
    if (v18)
    {
      *a6 = v18;
    }

    if (v14)
    {
      v17 = atomic_load(HGLogger::_enabled);
      if (v17)
      {
        HGLogger::log("mtl_perf_validation", 1, "HGMTL PERF WARNING - HGMetalTexture::createFromBitmap: BlitEncoder isn't the preferred upload path on Intel IG (check rowbytes alignment). Mixed results on discrete GPUs.\n", v15, v16);
      }
    }
  }
}

void sub_25FCE92AC(_Unwind_Exception *exception_object)
{
  if (*v1)
  {
    (*(**v1 + 24))(*v1);
  }

  _Unwind_Resume(exception_object);
}

const char *HGMetalTexture::createWithCopy@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, int a7@<W6>, HGMetalTexture **a8@<X8>)
{
  *a8 = 0;
  if (a3 && *(a3 + 80))
  {
    v26 = 4622;
    kdebug_trace();
    (*(*a3 + 16))(a3);
    *v25 = a3;
    v17 = v24;
    v18 = HGRectIntersection(*(v24 + 20), *(v24 + 28), a4, a5);
    v20 = v19;
    HGMetalTexture::_create(a1, a2, v18, v19, *(v17 + 16), a6, 0, 0, &v23, 0, 1u);
    v21 = v23;
    if (v23)
    {
      *a8 = v23;
      HGMetalTexture::InitializeBorders(v21);
      *&v28.var0 = v18;
      *&v28.var2 = v20;
      HGMetalTexture::ReplaceManagedTextureData(v21, v17, v28, a7);
      *(v21 + 168) = 1;
    }

    (*(*v17 + 24))(v17);
    (*(*a3 + 24))(a3);
    return kdebug_trace();
  }

  else
  {

    return HGLogger::warning("HGMetalTexture::createWithCopy() failed. No bitmap provided.", a2, a3);
  }
}

void sub_25FCE94F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  (*(*v16 + 24))(v16);
  (*(*v15 + 24))(v15);
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a15);
  _Unwind_Resume(a1);
}

const char *HGMetalTexture::createFromIOSurface@<X0>(void *a1@<X0>, __CVMetalTextureCache *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  if (a3)
  {
    if (a2)
    {
      v30 = 4630;
      kdebug_trace();
      v8 = *(*(a3 + 128) + 24);
      IOSurface = CVPixelBufferGetIOSurface(v8);
      v10 = HGMetalUtils::metalFormat(*(a3 + 16));
      v11 = HGFormatUtils::collapseRectForFormat((a3 + 20), *(a3 + 16));
      v13 = v12;
      v14 = HGMetalUtils::bytesPerPixel(v10);
      if (v14 == HGFormatUtils::bytesPerPixel(*(a3 + 16)) && HGRectIsEqual(v11, v13, *(a3 + 20), *(a3 + 28)) || IOSurfaceAllowsPixelSizeCasting(IOSurface))
      {
        v17 = HIDWORD(v11);
        image = 0;
        v18 = (v13 - v11);
        v19 = (HIDWORD(v13) - v17);
        if (!CVMetalTextureCacheCreateTextureFromImage(0, a2, v8, 0, v10, v18, v19, *(a3 + 136), &image))
        {
          v20 = HGObject::operator new(0x120uLL);
          HGBitmap::HGBitmap(v20, *(a3 + 20), *(a3 + 28), *(a3 + 16), 0);
          *v20 = &unk_287220DF8;
          *(v20 + 17) = 0;
          *(v20 + 18) = 0;
          *(v20 + 16) = 0;
          *(v20 + 152) = HGRectNull;
          *(v20 + 42) = 1;
          *(v20 + 22) = 850045863;
          *(v20 + 184) = 0u;
          *(v20 + 200) = 0u;
          *(v20 + 216) = 0u;
          *(v20 + 29) = 0;
          *(v20 + 30) = 1018212795;
          *(v20 + 248) = 0u;
          *(v20 + 35) = 0;
          *(v20 + 264) = 0u;
          *(v20 + 3) |= 0x220u;
          if (a1)
          {
            *(v20 + 17) = a1;
            v21 = a1;
          }

          *a4 = v20;
          Texture = CVMetalTextureGetTexture(image);
          *(v20 + 18) = Texture;
          v23 = Texture;
          *(v20 + 3) |= 1u;
          v24 = HGObject::operator new(0x20uLL);
          HGCVBufferPairStorage::HGCVBufferPairStorage(v24, a3, image);
          HGBitmap::SetStorage(v20, v24);
          CFRelease(image);
          v25 = HGMetalUtils::metalFormat(*(a3 + 16));
          ID = IOSurfaceGetID(IOSurface);
          if (v24)
          {
            (*(*v24 + 24))(v24, v18, v19, v25, ID);
          }
        }
      }

      else
      {
        HGLogger::warning("HGMetalTexture::createFromIOSurface() failed. Pixel size casting is not allowed by IOSurface.", v15, v16);
      }

      return kdebug_trace();
    }

    v27 = "HGMetalTexture::createFromIOSurface() failed. No HGCVMetalTextureCacheRef provided.";
  }

  else
  {
    v27 = "HGMetalTexture::createFromIOSurface() failed. Buffer is not a HGCVBitmap.";
  }

  return HGLogger::warning(v27, a2, a3);
}

void sub_25FCE98D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, char a13)
{
  std::condition_variable::~condition_variable(v15);
  std::mutex::~mutex(v14);
  HGBitmap::~HGBitmap(v13, v17);
  HGObject::operator delete(v13);
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a13);
  _Unwind_Resume(a1);
}

void sub_25FCE9994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, int a13)
{
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  HGSignPost::EventScopeGuard::~EventScopeGuard(&a13);
  (*(*v13 + 24))(v13);
  _Unwind_Resume(a1);
}

void HGMetalTexture::createFromIOSurface(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char **a4@<X8>)
{
  *a4 = 0;
  if (a2)
  {
    HGTraceGuard::HGTraceGuard(v26, "metal_osx", 1, "HGMetalTexture::createFromIOSurface()");
    kdebug_trace();
    IOSurface = CVPixelBufferGetIOSurface(*(*(a2 + 128) + 24));
    v8 = HGFormatUtils::collapseRectForFormat((a2 + 20), *(a2 + 16));
    v10 = v9;
    v11 = HGMetalUtils::metalFormat(*(a2 + 16));
    v12 = HGMetalUtils::bytesPerPixel(v11);
    if ((v12 != HGFormatUtils::bytesPerPixel(*(a2 + 16)) || !HGRectIsEqual(v8, v10, *(a2 + 20), *(a2 + 28))) && !IOSurfaceAllowsPixelSizeCasting(IOSurface))
    {
      HGLogger::warning("HGMetalTexture::createFromIOSurface() failed. Pixel size casting is not allowed by IOSurface.", v13, v14);
      goto LABEL_21;
    }

    v15 = HIDWORD(v8);
    v16 = (v10 - v8);
    v17 = (HIDWORD(v10) - v15);
    v18 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v11 width:v16 height:v17 mipmapped:0];
    [v18 setUsage:7];
    DeviceInfo = HGMetalDeviceInfo::getDeviceInfo(a1);
    if (DeviceInfo && [v18 width] && objc_msgSend(v18, "width") <= *(DeviceInfo + 48) && objc_msgSend(v18, "height") && objc_msgSend(v18, "height") <= *(DeviceInfo + 48) && objc_msgSend(v18, "pixelFormat"))
    {
      v22 = HGObject::operator new(0x120uLL);
      HGBitmap::HGBitmap(v22, *(a2 + 20), *(a2 + 28), *(a2 + 16), 0);
      *v22 = &unk_287220DF8;
      *(v22 + 17) = 0;
      *(v22 + 18) = 0;
      *(v22 + 16) = 0;
      *(v22 + 152) = HGRectNull;
      *(v22 + 42) = 1;
      *(v22 + 22) = 850045863;
      *(v22 + 184) = 0u;
      *(v22 + 200) = 0u;
      *(v22 + 216) = 0u;
      *(v22 + 29) = 0;
      *(v22 + 30) = 1018212795;
      *(v22 + 248) = 0u;
      *(v22 + 35) = 0;
      *(v22 + 264) = 0u;
      *(v22 + 3) |= 0x220u;
      if (a1)
      {
        *(v22 + 17) = a1;
        v23 = a1;
      }

      *a4 = v22;
      *(v22 + 18) = [a1 newTextureWithDescriptor:v18 iosurface:IOSurface plane:{*(a2 + 136), v22 + 176}];
      *(v22 + 3) |= 1u;
      ID = IOSurfaceGetID(IOSurface);
      if (*(v22 + 18))
      {
        HGBitmap::SetStorage(v22, a2);
LABEL_21:
        kdebug_trace();
        HGTraceGuard::~HGTraceGuard(v26);
        return;
      }

      (*(*v22 + 24))(v22, v16, v17, v11, ID);
      *a4 = 0;
      v25 = "HGMetalTexture::createFromIOSurface() failed. newTextureWithDescriptor failed.";
    }

    else
    {
      v25 = "HGMetalTexture::createFromIOSurface() failed. Invalid texture description.";
    }

    HGLogger::warning(v25, v19, v20);
    goto LABEL_21;
  }

  HGLogger::warning("HGMetalTexture::createFromIOSurface() failed. Buffer is not a HGCVBitmap.", 0, a3);
}

void sub_25FCE9DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, std::mutex *a9, int a10, char a11, __int16 a12, char a13, char a14)
{
  std::condition_variable::~condition_variable(v15);
  std::mutex::~mutex(a9);
  HGBitmap::~HGBitmap(v14, v17);
  HGObject::operator delete(v14);
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a11);
  HGTraceGuard::~HGTraceGuard(&a13);
  _Unwind_Resume(a1);
}

HGObject *HGMetalTexture::createWithBlitEncoder@<X0>(HGObject *this@<X0>, HGMetalContext *a2@<X1>, HGMetalBuffer *a3@<X2>, HGRect a4@<0:X3, 8:X4>, HGBitmap **a5@<X8>)
{
  *a5 = 0;
  if (a2)
  {
    var2 = a4.var2;
    v6 = *&a4.var0;
    v9 = this;
    v11 = *(*(this + 2) + 16);
    v12 = HGMetalContext::texturePool(this);
    this = HGMetalTexture::_create(v11, v12, a3, v6, *(a2 + 4), 0, 0, 0, &v15, 2, 1u);
    v13 = v15;
    if (v15)
    {
      *a5 = v15;
      v14 = *(v9 + 24);
      if (v14)
      {
        HGMetalUtils::tiledBlitBufferToTexture(*(v9 + 4), a2, v13, a3, v6, var2, 0, v14);
      }

      else
      {
        HGMetalUtils::blitBufferToTexture(*(v9 + 4), a2, v13, a3, v6, var2, 0);
      }

      return HGBitmap::SetStorage(v13, a2);
    }
  }

  return this;
}

const char *HGMetalTexture::_createFromBufferStorage<(HGMetalTexture::CreationStrategyFlags)16>@<X0>(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = 0;
  if (a2)
  {
    *&v37.var0 = 0;
    *&v37.var2 = 0;
    *&v37.var0 = HGRectIntersection(*(a2 + 20), *(a2 + 28), a3, a4);
    *&v37.var2 = v7;
    if (HGRect::IsNull(&v37))
    {
      return HGLogger::warning("HGMetalTexture::_createFromBufferStorage() failed. Empty ROI.", v8, v9);
    }

    kdebug_trace();
    if (HGFormatUtils::isPackedFormat(*(a2 + 16)))
    {
      v37.var0 = *(a2 + 20);
    }

    v11 = [a1 minimumLinearTextureAlignmentForPixelFormat:HGMetalUtils::metalFormat(*(a2 + 16))];
    var1 = v37.var1;
    v13 = *(a2 + 20);
    v14 = v37.var0 - v13;
    v15 = *(a2 + 56);
    if (*(a2 + 16) == 31)
    {
      v16 = ((3 * ((4 * v15 * v14 / 6) / v11 * v11 / v15)) >> 1) & 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v16 = (v15 * v14) / v11 * v11 / v15;
    }

    v17 = (v13 + v16);
    *&v37.var0 = *&v37.var0 & 0xFFFFFFFF00000000 | v17;
    v18 = HGBitmap::byteOffset(a2, v17, var1);
    v19 = HGFormatUtils::collapseRectForFormat(&v37.var0, *(a2 + 16));
    v21 = v20;
    v22 = HGMetalUtils::metalFormat(*(a2 + 16));
    v23 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v22 width:(v21 - v19) height:(HIDWORD(v21) - HIDWORD(v19)) mipmapped:0];
    [v23 setUsage:1];
    DeviceInfo = HGMetalDeviceInfo::getDeviceInfo(a1);
    if (HGMetalDeviceInfo::isApple(DeviceInfo))
    {
      [v23 setUsage:{objc_msgSend(v23, "usage") | 6}];
    }

    v25 = *(a2 + 144);
    if (HGMetalTexture::_canCreateLinearTexture<(HGMetalTexture::CreationStrategyFlags)16>(a1, a2))
    {
      kdebug_trace();
      v28 = [v25 newTextureWithDescriptor:v23 offset:v18 bytesPerRow:*(a2 + 64)];
      v29 = 0;
      v30 = (v21 - v19);
      v31 = (HIDWORD(v21) - HIDWORD(v19));
      v32 = v22;
      v33 = v25;
      if (v28)
      {
        v34 = HGObject::operator new(0x120uLL);
        HGBitmap::HGBitmap(v34, *&v37.var0, *&v37.var2, *(a2 + 16), 0);
        *v34 = &unk_287220DF8;
        *(v34 + 17) = 0;
        *(v34 + 18) = 0;
        *(v34 + 16) = 0;
        *(v34 + 152) = HGRectNull;
        *(v34 + 42) = 1;
        *(v34 + 22) = 850045863;
        *(v34 + 184) = 0u;
        *(v34 + 200) = 0u;
        *(v34 + 216) = 0u;
        *(v34 + 29) = 0;
        *(v34 + 30) = 1018212795;
        *(v34 + 248) = 0u;
        *(v34 + 35) = 0;
        *(v34 + 264) = 0u;
        *(v34 + 3) |= 0x220u;
        if (a1)
        {
          *(v34 + 17) = a1;
          v35 = a1;
        }

        *a5 = v34;
        *(v34 + 19) = v19;
        *(v34 + 20) = v21;
        *(v34 + 18) = v28;
        HGBitmap::SetStorage(v34, a2);
        return kdebug_trace();
      }
    }

    else
    {
      HGLogger::warning("HGMetalTexture::_createFromBufferStorage() failed. Bad alignment.", v26, v27);
    }

    HGLogger::warning("HGMetalTexture::_createFromBufferStorage() failed. MTLTexture creation failed.", v29, v30, v31, v32, v33, a5);
    return kdebug_trace();
  }

  return HGLogger::warning("HGMetalTexture::_createFromBufferStorage() failed. No MTLBuffer provided.", 0, a3);
}

void sub_25FCEA310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, char a11)
{
  std::condition_variable::~condition_variable(v13);
  std::mutex::~mutex(v12);
  HGBitmap::~HGBitmap(v11, v15);
  HGObject::operator delete(v11);
  HGSignPost::EventScopeGuard::~EventScopeGuard(&a11);
  _Unwind_Resume(a1);
}

uint64_t HGMetalTexture::create@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, char a10)
{
  v10 = 2;
  if (!a10)
  {
    v10 = 0;
  }

  return HGMetalTexture::_create(a1, a2, a3, a4, a5, a6, a7, a8, a9, v10, 1u);
}

uint64_t HGMetalTexture::_create@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, char a6@<W5>, int a7@<W6>, int a8@<W7>, void *a9@<X8>, uint64_t a10, unsigned int a11)
{
  v53 = a3;
  v54 = a4;
  v52 = 4624;
  kdebug_trace();
  v15 = HGFormatUtils::collapseRectForFormat(&v53, a5);
  v17 = v16;
  v18 = HGRectMake4i(0, 0, 0, 0);
  v39 = HGRectGrow(v15, v17, v18);
  v41 = HIDWORD(v39);
  v20 = (v19 - v39);
  v22 = (v21 - HIDWORD(v39));
  *&v46 = v20;
  *(&v46 + 1) = v22;
  v23 = HGMetalUtils::metalFormat(a5);
  v47 = v23;
  v49 = a10;
  if (a11 >= 2)
  {
    v24 = 4;
  }

  else
  {
    v24 = 2;
  }

  v50 = v24;
  v51 = a11;
  if (a7)
  {
    v25 = 5;
  }

  else
  {
    v25 = 1;
  }

  if (a8)
  {
    v26 = v25 | 2;
  }

  else
  {
    v26 = v25;
  }

  v48 = v26;
  *a9 = 0;
  DeviceInfo = HGMetalDeviceInfo::getDeviceInfo(a1);
  if (DeviceInfo && v20 && (v30 = *(DeviceInfo + 48), v20 <= v30) && v22 - 1 < v30 && v23 && *(DeviceInfo + 52) >= a11)
  {
    if (a2)
    {
      HGMetalTexturePool::newTexture(a2, &v46, a6);
    }

    v37 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v23 width:v20 height:v22 mipmapped:0];
    [v37 setUsage:v26];
    [v37 setStorageMode:a10];
    [v37 setTextureType:v24];
    [v37 setSampleCount:a11];
    v38 = [a1 newTextureWithDescriptor:v37];
    if (v38)
    {
      v32 = HGObject::operator new(0x120uLL);
      HGBitmap::HGBitmap(v32, v53, v54, a5, 0);
      *v32 = &unk_287220DF8;
      *(v32 + 17) = 0;
      *(v32 + 18) = 0;
      *(v32 + 16) = 0;
      *(v32 + 152) = HGRectNull;
      *(v32 + 42) = 1;
      *(v32 + 22) = 850045863;
      *(v32 + 184) = 0u;
      *(v32 + 200) = 0u;
      *(v32 + 216) = 0u;
      *(v32 + 29) = 0;
      *(v32 + 30) = 1018212795;
      *(v32 + 248) = 0u;
      *(v32 + 35) = 0;
      *(v32 + 264) = 0u;
      *(v32 + 3) |= 0x220u;
      if (a1)
      {
        *(v32 + 17) = a1;
        v33 = a1;
      }

      *a9 = v32;
      *(v32 + 18) = v38;
      *(v32 + 16) = 0;
      *(v32 + 84) = 256;
      v34 = [v38 width];
      v35 = [v38 height];
      if (v34 != v54 - v53 || v35 != HIDWORD(v54) - HIDWORD(v53))
      {
        *(v32 + 19) = HGRectMake4i(v40, v42, v34 + v40, v35 + v42);
        *(v32 + 20) = v36;
      }
    }

    else
    {
      HGLogger::warning("HGMetalTexture::_create() failed. Failed to allocate texture object.", 0, v20, v22, v23, v39, v41);
    }
  }

  else
  {
    HGLogger::warning("HGMetalTexture::_create() failed. Invalid texture description.", v28, v29, v39, v41);
  }

  return kdebug_trace();
}

const char *HGMetalTexture::createMSAA@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, unsigned int a6@<W5>, void *a7@<X8>)
{
  if (a6 > 1)
  {
    return HGMetalTexture::_create(a1, a2, a3, a4, a5, 0, 1, 0, a7, 2, a6);
  }

  result = HGLogger::warning("HGMetalTexture::createMSAA failed. 'sampleCount' must be greater than 1.", a2, a3);
  *a7 = 0;
  return result;
}

void *HGMetalTexture::getMetalStorage(HGBitmap *this, HGBitmap *a2)
{
  if (!this)
  {
    return 0;
  }

  do
  {
    v2 = this;
    Storage = HGBitmap::GetStorage(v2);
    if (!Storage)
    {
      break;
    }
  }

  while (!v3 && this != 0);
  return v3;
}

uint64_t project_util::getUniformLocation(project_util *this, const GLchar *a2, const char *a3)
{
  result = glGetUniformLocation(this, a2);
  if (result == -1)
  {
    v5 = result;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "no uniform location for: ", 25);
    v7 = strlen(a2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, a2, v7);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v10);
    std::ostream::put();
    std::ostream::flush();
    return v5;
  }

  return result;
}

uint64_t project_util::getAttribLocation(project_util *this, const GLchar *a2, const char *a3)
{
  result = glGetAttribLocation(this, a2);
  if (result == -1)
  {
    v5 = result;
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], "no attrib location for: ", 24);
    v7 = strlen(a2);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, a2, v7);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v10, MEMORY[0x277D82680]);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v10);
    std::ostream::put();
    std::ostream::flush();
    return v5;
  }

  return result;
}

uint64_t project_util::prettyPrintShaderText(project_util *this, const char *a2)
{
  v2 = this;
  v3 = strlen(this);
  v4 = MEMORY[0x277D82670];
  if (v3)
  {
    v5 = v3;
    v6 = 1;
    v7 = 1;
    do
    {
      if (v6)
      {
        *(v4 + *(*v4 - 24) + 24) = 3;
        v10 = MEMORY[0x2666E9B80](v4, v7);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ": ", 2);
      }

      v9 = *v2;
      v2 = (v2 + 1);
      v8 = v9;
      v6 = v9 == 10;
      if (v9 == 10)
      {
        ++v7;
      }

      v13 = v8;
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, &v13, 1);
      --v5;
    }

    while (v5);
  }

  std::ios_base::getloc((v4 + *(*v4 - 24)));
  v11 = std::locale::use_facet(&v14, MEMORY[0x277D82680]);
  (v11->__vftable[2].~facet_0)(v11, 10);
  std::locale::~locale(&v14);
  std::ostream::put();
  return std::ostream::flush();
}

uint64_t project_util::compileShaderProgram(GLchar *this, GLchar *a2, const char *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v21 = a2;
  string = this;
  Shader = glCreateShader(0x8B31u);
  glShaderSource(Shader, 1, &string, 0);
  glCompileShader(Shader);
  params = 0;
  glGetShaderiv(Shader, 0x8B81u, &params);
  if (params != 1)
  {
    length = 0;
    glGetShaderInfoLog(Shader, 2048, &length, infolog);
    v4 = strlen(infolog);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], infolog, v4);
    std::ios_base::getloc((v5 + *(*v5 - 24)));
    v6 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v6->__vftable[2].~facet_0)(v6, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    project_util::prettyPrintShaderText(string, v7);
  }

  v8 = glCreateShader(0x8B30u);
  glShaderSource(v8, 1, &v21, 0);
  glCompileShader(v8);
  params = 0;
  glGetShaderiv(v8, 0x8B81u, &params);
  if (params != 1)
  {
    length = 0;
    glGetShaderInfoLog(v8, 2048, &length, infolog);
    v9 = strlen(infolog);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], infolog, v9);
    std::ios_base::getloc((v10 + *(*v10 - 24)));
    v11 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v11->__vftable[2].~facet_0)(v11, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
    project_util::prettyPrintShaderText(v21, v12);
  }

  Program = glCreateProgram();
  glAttachShader(Program, Shader);
  glAttachShader(Program, v8);
  glLinkProgram(Program);
  length = 0;
  glGetProgramiv(Program, 0x8B82u, &length);
  if (length != 1)
  {
    v18 = 0;
    glGetProgramInfoLog(Program, 2048, &v18, infolog);
    v14 = strlen(infolog);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], infolog, v14);
    std::ios_base::getloc((v15 + *(*v15 - 24)));
    v16 = std::locale::use_facet(&v23, MEMORY[0x277D82680]);
    (v16->__vftable[2].~facet_0)(v16, 10);
    std::locale::~locale(&v23);
    std::ostream::put();
    std::ostream::flush();
  }

  glDeleteShader(Shader);
  glDeleteShader(v8);
  return Program;
}

void project_util::fill_flat_array(void *a1, uint64_t a2)
{
  if (a1[1] != *a1)
  {
    v4 = 0;
    v5 = 0;
    v6 = *(a2 + 8);
    do
    {
      v32 = v5;
      v33 = v4;
      v7 = 3;
      do
      {
        v8 = *(*a1 + v4);
        v9 = vmulq_f32(v8, v8);
        *&v10 = v9.f32[2] + vaddv_f32(*v9.f32);
        *v9.f32 = vrsqrte_f32(v10);
        *v9.f32 = vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32)));
        v11 = vmulq_n_f32(v8, vmul_f32(*v9.f32, vrsqrts_f32(v10, vmul_f32(*v9.f32, *v9.f32))).f32[0]);
        v12 = *(a2 + 16);
        v34 = v11;
        if (v6 >= v12)
        {
          v17 = *a2;
          v18 = v6 - *a2;
          v19 = v18 >> 2;
          v20 = (v18 >> 2) + 1;
          if (v20 >> 62)
          {
            goto LABEL_47;
          }

          if ((v12 - v17) >> 1 > v20)
          {
            v20 = (v12 - v17) >> 1;
          }

          if (v12 - v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v21 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            if (!(v21 >> 62))
            {
              operator new();
            }

LABEL_48:
            std::__throw_bad_array_new_length[abi:ne200100]();
          }

          v12 = 0;
          *(4 * v19) = v11.i32[0];
          v13 = (4 * v19 + 4);
          memcpy(0, v17, v18);
          *a2 = 0;
          *(a2 + 8) = v13;
          *(a2 + 16) = 0;
          if (v17)
          {
            operator delete(v17);
            v12 = *(a2 + 16);
          }

          v11.i32[2] = v34.i32[2];
          *(a2 + 8) = v13;
          v14 = v34.i32[1];
          if (v13 < v12)
          {
LABEL_9:
            *v13 = v14;
            v15 = v13 + 1;
            *(a2 + 8) = v15;
            v16 = v11.i32[2];
            if (v15 < v12)
            {
              goto LABEL_5;
            }

            goto LABEL_35;
          }
        }

        else
        {
          *v6 = v11.i32[0];
          v13 = v6 + 1;
          *(a2 + 8) = v13;
          v14 = v11.i32[1];
          if (v13 < v12)
          {
            goto LABEL_9;
          }
        }

        v22 = *a2;
        v23 = v13 - *a2;
        v24 = v23 >> 2;
        v25 = (v23 >> 2) + 1;
        if (v25 >> 62)
        {
          goto LABEL_47;
        }

        if ((v12 - v22) >> 1 > v25)
        {
          v25 = (v12 - v22) >> 1;
        }

        if (v12 - v22 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v26 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v26 = v25;
        }

        if (v26)
        {
          if (!(v26 >> 62))
          {
            operator new();
          }

          goto LABEL_48;
        }

        v12 = 0;
        *(4 * v24) = v14;
        v15 = (4 * v24 + 4);
        memcpy(0, v22, v23);
        *a2 = 0;
        *(a2 + 8) = v15;
        *(a2 + 16) = 0;
        if (v22)
        {
          operator delete(v22);
          v12 = *(a2 + 16);
        }

        *(a2 + 8) = v15;
        v16 = v34.i32[2];
        if (v15 < v12)
        {
LABEL_5:
          *v15 = v16;
          v6 = v15 + 1;
          goto LABEL_6;
        }

LABEL_35:
        v27 = *a2;
        v28 = v15 - *a2;
        v29 = v28 >> 2;
        v30 = (v28 >> 2) + 1;
        if (v30 >> 62)
        {
LABEL_47:
          std::vector<double>::__throw_length_error[abi:ne200100]();
        }

        if ((v12 - v27) >> 1 > v30)
        {
          v30 = (v12 - v27) >> 1;
        }

        if (v12 - v27 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v31 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v31 = v30;
        }

        if (v31)
        {
          if (!(v31 >> 62))
          {
            operator new();
          }

          goto LABEL_48;
        }

        *(4 * v29) = v16;
        v6 = (4 * v29 + 4);
        memcpy(0, v27, v28);
        *a2 = 0;
        *(a2 + 8) = v6;
        *(a2 + 16) = 0;
        if (v27)
        {
          operator delete(v27);
        }

LABEL_6:
        *(a2 + 8) = v6;
        v4 += 16;
        --v7;
      }

      while (v7);
      v5 = v32 + 1;
      v4 = v33 + 48;
    }

    while (v32 + 1 < 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 4));
  }
}

void sub_25FCED51C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22)
{
  if (!a22)
  {
    operator delete(__p);
    _Unwind_Resume(a1);
  }

  operator delete(a22);
  operator delete(__p);
  _Unwind_Resume(a1);
}

void HGEquirectProject::HGEquirectProject(HGEquirectProject *this)
{
  v2 = (this + 408);
  HGNode::HGNode(this);
  *v3 = &unk_287220E78;
  *v2 = xmmword_2603429B0;
  v2[1] = xmmword_2603429B0;
  *(v3 + 440) = 0x423400003F800000;
  *(v3 + 448) = 1110704128;
  *(v3 + 452) = 0;
  *(v3 + 480) = 0;
  *(v3 + 488) = 0;
  *(v3 + 496) = 0;
  *(v2 + 92) = xmmword_2603431B0;
  *(v2 + 108) = xmmword_260343890;
  *(v2 + 124) = xmmword_2603431B0;
  *(v2 + 140) = xmmword_260343890;
  HGNode::SetFlags(v3, 0, 2);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 512);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 1024);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 32);
}

void HGEquirectProject::~HGEquirectProject(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGEquirectProject::GetDOD(HGEquirectProject *this, HGRenderer *a2, int a3, HGRect a4)
{
  v36 = a4;
  if (!a3 && HGRect::IsNull(&v36))
  {
    return 0;
  }

  v6 = HGRectMake4f(*(this + 122), vcvts_n_f32_s32(-*(this + 122), 1uLL), vcvts_n_f32_s32(-*(this + 123), 1uLL), vcvts_n_f32_s32(*(this + 122), 1uLL), vcvts_n_f32_s32(*(this + 123), 1uLL));
  v8 = *(this + 125);
  v9 = 1.0 / v8;
  v10 = -*(this + 128) / v8;
  v11 = *(this + 130);
  v12 = 1.0 / v11;
  *v13.i32 = v6;
  *v14.i32 = v7;
  *v15.i32 = SHIDWORD(v6);
  v16 = -*(this + 132) / v11;
  *v17.i32 = SHIDWORD(v7);
  v18 = v9 * v6;
  v19.i64[0] = 0;
  v20.i64[0] = 0x8000000080000000;
  v20.i64[1] = 0x8000000080000000;
  v21 = *vbslq_s8(v20, v19, v15).i32;
  v22 = v10 + (v18 + v21);
  v13.i32[0] = vbslq_s8(v20, v19, v13).i32[0];
  *v15.i32 = v12 * SHIDWORD(v6);
  v23 = v16 + (*v13.i32 + *v15.i32);
  v24 = v9 * v7;
  v25 = v10 + (v24 + v21);
  v14.i32[0] = vbslq_s8(v20, v19, v14).i32[0];
  v26 = v16 + (*v14.i32 + *v15.i32);
  v19.i32[0] = vbslq_s8(v20, v19, v17).i32[0];
  v27 = v10 + (v18 + *v19.i32);
  v28 = v12 * SHIDWORD(v7);
  v29 = v16 + (*v13.i32 + v28);
  v30 = v10 + (v24 + *v19.i32);
  v31 = v16 + (*v14.i32 + v28);
  if (v25 >= v22)
  {
    v32 = v22;
  }

  else
  {
    v32 = v25;
  }

  if (v27 < v32)
  {
    v32 = v27;
  }

  if (v30 < v32)
  {
    v32 = v30;
  }

  if (v26 >= v23)
  {
    v33 = v23;
  }

  else
  {
    v33 = v26;
  }

  if (v29 < v33)
  {
    v33 = v29;
  }

  if (v31 < v33)
  {
    v33 = v31;
  }

  if (v22 >= v25)
  {
    v34 = v22;
  }

  else
  {
    v34 = v25;
  }

  if (v34 < v27)
  {
    v34 = v27;
  }

  if (v34 >= v30)
  {
    v30 = v34;
  }

  if (v23 >= v26)
  {
    v35 = v23;
  }

  else
  {
    v35 = v26;
  }

  if (v35 >= v29)
  {
    v29 = v35;
  }

  if (v29 >= v31)
  {
    v31 = v29;
  }

  return HGRectMake4f(HIDWORD(v7), v32, v33, v30, v31);
}

uint64_t HGEquirectProject::GetROI(HGEquirectProject *this, HGRenderer *a2, int a3, HGRect a4)
{
  v5 = HGRectMake4f(*(this + 120), vcvts_n_f32_s32(-*(this + 120), 1uLL), vcvts_n_f32_s32(-*(this + 121), 1uLL), vcvts_n_f32_s32(*(this + 120), 1uLL), vcvts_n_f32_s32(*(this + 121), 1uLL));
  v7 = *(this + 133);
  v8 = v7 * v5;
  v9 = *(this + 134);
  v10 = v9 * SHIDWORD(v5);
  v11 = *(this + 136);
  v12 = v11 + (v8 + v10);
  v13 = *(this + 137);
  v14 = v13 * v5;
  v15 = *(this + 138);
  v16 = v15 * SHIDWORD(v5);
  v17 = *(this + 140);
  v18 = v17 + (v14 + v16);
  v19 = v7 * v6;
  v20 = v11 + (v19 + v10);
  v21 = v13 * v6;
  v22 = v17 + (v21 + v16);
  v23 = v9 * SHIDWORD(v6);
  v24 = v11 + (v8 + v23);
  v25 = v15 * SHIDWORD(v6);
  v26 = v17 + (v14 + v25);
  v27 = v11 + (v19 + v23);
  v28 = v17 + (v21 + v25);
  if (v20 >= v12)
  {
    v29 = v12;
  }

  else
  {
    v29 = v20;
  }

  if (v24 < v29)
  {
    v29 = v24;
  }

  if (v27 < v29)
  {
    v29 = v27;
  }

  if (v22 >= v18)
  {
    v30 = v18;
  }

  else
  {
    v30 = v22;
  }

  if (v26 < v30)
  {
    v30 = v26;
  }

  if (v28 < v30)
  {
    v30 = v28;
  }

  if (v12 >= v20)
  {
    v31 = v12;
  }

  else
  {
    v31 = v20;
  }

  if (v31 < v24)
  {
    v31 = v24;
  }

  if (v31 >= v27)
  {
    v27 = v31;
  }

  if (v18 >= v22)
  {
    v32 = v18;
  }

  else
  {
    v32 = v22;
  }

  if (v32 < v26)
  {
    v32 = v26;
  }

  if (v32 >= v28)
  {
    v28 = v32;
  }

  return HGRectMake4f(HIDWORD(v6), v29, v30, v27, v28);
}

HGNode *HGEquirectProject::GetOutput(HGNode *this, HGRenderer *a2)
{
  if (!(*(*a2 + 304))(a2))
  {
    return this;
  }

  return HGRenderer::GetInput(a2, this, 0);
}

const char *HGEquirectProject::GetProgram(HGEquirectProject *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) <= 0x60B0F)
  {
    return 0;
  }

  else
  {
    return "\n"
           "\n"
           "constant float pi = 3.14159265358979323846;\n"
           "\n"
           "float2 pointToAngles(const float3 p)\n"
           "{\n"
           "    float2 angle;\n"
           "    \n"
           "    angle.x = atan2(p.z, p.x);  // longitude, the angle around the z axis, theta [-pi, pi]\n"
           "    angle.x = angle.x + pi/2.;  // align the equator and prime meridian to be in center of view\n"
           "    angle.y = asin(p.y);        // latitude, the angle with the z axis, phi [0, pi]\n"
           "\n"
           "    return angle;\n"
           "}\n"
           "\n"
           "float2 equirect2uv(const float3 p)\n"
           "{\n"
           "    float2 angles = pointToAngles(p);\n"
           "    float phi = angles.y;\n"
           "    float theta = angles.x;\n"
           "\n"
           "    /* wrap theta appropriately since we've added pi/2. for alignment */\n"
           "    float theta_larger_than_pi = step(pi, theta);\n"
           "    float amount_larger_than_pi = theta - pi;\n"
           "    theta = (1. - theta_larger_than_pi) * theta +                   // theta < pi\n"
           "            theta_larger_than_pi * (-pi + amount_larger_than_pi) ;  // theta >= pi\n"
           "\n"
           "    float2 t;\n"
           "    t.x = 0.5 + theta / (2.*pi);\n"
           "    t.y = 0.5 - phi/pi;\n"
           "\n"
           "    // reverse the y sampling direction\n"
           "    t.y = 1. - t.y;\n"
           "    \n"
           "    return t;\n"
           "}\n"
           "\n"
           "float wrapXTexCoordAbout0(float s, float2 texLBorder, float2 texSize)\n"
           "{\n"
           "    s += texLBorder.x;\n"
           "    float edge = texLBorder.x;\n"
           "    float shouldWrapLeft = 1. - step(edge,s);\n"
           "    s = mix(s, texLBorder.x + texSize.x - (edge - s), shouldWrapLeft);\n"
           "    return s;\n"
           "}\n"
           "\n"
           "float wrapXTexCoordAboutMaxW(float s, float2 texLBorder, float2 texSize)\n"
           "{\n"
           "    float edge = texLBorder.x + texSize.x;\n"
           "    float shouldWrapRight = step(edge,s);\n"
           "    s = mix(s, texLBorder.x + (s - edge), shouldWrapRight);\n"
           "    return s;\n"
           "}\n"
           "\n"
           "float wrapYTexCoordAbout0(float t, float2 texLBorder, float2 texSize)\n"
           "{\n"
           "    t += texLBorder.y;\n"
           "    float edge = texLBorder.y;\n"
           "    float shouldWrapBottom = 1. - step(edge,t);\n"
           "    t = mix(t, texLBorder.y + texSize.y - (edge - t), shouldWrapBottom);\n"
           "    return t;\n"
           "}\n"
           "\n"
           "float clampYTexCoordAboutMaxH(float t, float2 texLBorder, float2 texSize)\n"
           "{\n"
           "    float edge = texLBorder.y + texSize.y;\n"
           "    float shouldWrapTop = step(edge,t);\n"
           "    t = mix(t, edge-1., shouldWrapTop);\n"
           "    return t;\n"
           "}\n"
           "\n"
           "float4 bilinearSample(float2 uv, float2 texLBorder, float2 texSize,\n"
           "                      texture2d<float> tex, sampler sampler)\n"
           "{\n"
           "    float s = uv.x*texSize.x;\n"
           "    float t = uv.y*texSize.y;\n"
           "    \n"
           "    float sl = floor(s);\n"
           "    float sr = ceil(s);\n"
           "    float tl = floor(t);\n"
           "    float tu = ceil(t);\n"
           "    \n"
           "    sl = wrapXTexCoordAbout0(sl, texLBorder, texSize);\n"
           "    sr = wrapXTexCoordAbout0(sr, texLBorder, texSize);\n"
           "    sl = wrapXTexCoordAboutMaxW(sl, texLBorder, texSize);\n"
           "    sr = wrapXTexCoordAboutMaxW(sr, texLBorder, texSize);\n"
           "    tl = wrapYTexCoordAbout0(tl, texLBorder, texSize);\n"
           "    tu = wrapYTexCoordAbout0(tu, texLBorder, texSize);\n"
           "    tl = clampYTexCoordAboutMaxH(tl, texLBorder, texSize);\n"
           "    tu = clampYTexCoordAboutMaxH(tu, texLBorder, texSize);\n"
           "    \n"
           "    float4 ll = tex.sample(sampler, float2(sl, tl));\n"
           "    float4 lr = tex.sample(sampler, float2(sr, tl));\n"
           "    float4 ul = tex.sample(sampler, float2(sl, tu));\n"
           "    float4 ur = tex.sample(sampler, float2(sr, tu));\n"
           "\n"
           "    float q = fract(s);\n"
           "    float4 lowerColor = mix(ll, lr, q);\n"
           "    float4 upperColor = mix(ul, ur, q);\n"
           "    \n"
           "    float r = fract(t);\n"
           "    float4 finalColor = mix(lowerColor,upperColor,r);\n"
           "    \n"
           "    return finalColor;\n"
           "}\n"
           "\n"
           "fragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n"
           "                                  const constant float4* hg_Params   [[ buffer(0) ]],\n"
           "                                  texture2d< float >     hg_Texture0 [[ texture(0) ]],\n"
           "                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n"
           "{\n"
           "    float3 p = normalize(frag._texCoord0.xyz);\n"
           "    float2 uv = equirect2uv(p);\n"
           "    float2 texLBorder = hg_Params[0].xy;\n"
           "    float2 texSize = hg_Params[1].xy;\n"
           "    \n"
           "    FragmentOut out;\n"
           "    out.color0 = bilinearSample(uv, texLBorder, texSize, hg_Texture0, hg_Sampler0);\n"
           "    return out;\n"
           "}\n";
  }
}

void sub_25FCEDCE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *HGEquirectProject::getRenderResources(HGEquirectProject *this, HGGPURenderer *a2)
{
  if (atomic_load_explicit(&_MergedGlobals_22, memory_order_acquire))
  {
    if (atomic_load_explicit(&qword_280C5E450, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  else
  {
    HGEquirectProject::getRenderResources();
    if (atomic_load_explicit(&qword_280C5E450, memory_order_acquire))
    {
      goto LABEL_3;
    }
  }

  HGEquirectProject::getRenderResources();
LABEL_3:
  std::mutex::lock(&HGEquirectProject::getRenderResources(HGGPURenderer *)::mutex);
  v3 = qword_280C5E470;
  if (!qword_280C5E470)
  {
    goto LABEL_17;
  }

  v4 = &qword_280C5E470;
  v5 = qword_280C5E470;
  do
  {
    v6 = *(v5 + 32);
    v7 = v6 >= a2;
    v8 = v6 < a2;
    if (v7)
    {
      v4 = v5;
    }

    v5 = *(v5 + 8 * v8);
  }

  while (v5);
  if (v4 == &qword_280C5E470 || v4[4] > a2)
  {
    do
    {
      while (1)
      {
        v9 = v3;
        v10 = *(v3 + 32);
        if (v10 <= a2)
        {
          break;
        }

        v3 = *v9;
        if (!*v9)
        {
          goto LABEL_17;
        }
      }

      if (v10 >= a2)
      {
        HGEquirectProject::initRenderResources();
      }

      v3 = v9[1];
    }

    while (v3);
LABEL_17:
    operator new();
  }

  if (!qword_280C5E470)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v11 = v3;
      v12 = *(v3 + 32);
      if (v12 <= a2)
      {
        break;
      }

      v3 = *v11;
      if (!*v11)
      {
        goto LABEL_22;
      }
    }

    if (v12 >= a2)
    {
      break;
    }

    v3 = v11[1];
    if (!v3)
    {
      goto LABEL_22;
    }
  }

  std::mutex::unlock(&HGEquirectProject::getRenderResources(HGGPURenderer *)::mutex);
  return v11 + 5;
}

uint64_t _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEED1B8ne200100Ev(uint64_t result)
{
  v1 = *result;
  if (*result)
  {
    *(result + 8) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

void HGEquirectProject::render(uint64_t a1, int *lpsrc, uint64_t a3, uint64_t a4)
{
  v26 = *MEMORY[0x277D85DE8];
  v8 = *(a3 + 168);
  if (lpsrc)
  {
    v10 = lpsrc[5];
    v11 = lpsrc[6];
    v12 = (lpsrc + 5);
    v13 = *(v12 + 8);
    v14 = *(v12 + 12);
    if (v9)
    {
      v16 = v9[34];
      v15 = v9[35];
    }

    else
    {
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    v15 = 0;
    v16 = 0;
    v10 = MEMORY[0x14];
    v11 = MEMORY[0x18];
    v12 = 20;
    v13 = MEMORY[0x1C];
    v14 = MEMORY[0x20];
  }

  glViewport(v10 - v16, v11 - v15, v13 - v10, v14 - v11);
  glClearColor(0.0, 0.0, 0.0, 1.0);
  glClear(0x4000u);
  glUseProgram(*(a4 + 8));
  glBindBuffer(0x8892u, *a4);
  glEnableVertexAttribArray(*(a4 + 12));
  glVertexAttribPointer(*(a4 + 12), 3, 0x1406u, 0, 0, 0);
  *x = 0;
  *v20 = 0;
  *v18 = 0;
  *value = HGGLTexture::GetTextureRect(a3);
  *&value[2] = v17;
  calculateUniforms(a1 + 408, (a3 + 20), value, v12, v21, v20, x, v18, 0);
  *value = v21[0];
  v23 = v21[1];
  v24 = v21[2];
  v25 = v21[3];
  glUniformMatrix4fv(*(a4 + 16), 1, 0, value);
  glActiveTexture(0x84C0u);
  glUniform1i(*(a4 + 20), 0);
  glUniform1i(*(a4 + 36), *(a1 + 496));
  glBindTexture(0xDE1u, v8);
  glTexParameteri(0xDE1u, 0x2800u, 9728);
  glTexParameteri(0xDE1u, 0x2801u, 9728);
  glUniform2f(*(a4 + 24), x[0], x[1]);
  glUniform2f(*(a4 + 28), v20[0], v20[1]);
  glUniform2f(*(a4 + 32), v18[0], v18[1]);
  glDrawArrays(4u, 0, *(a4 + 4));
  glUseProgram(0);
  glActiveTexture(0x84C0u);
  glBindTexture(0xDE1u, 0);
  glDisableVertexAttribArray(*(a4 + 12));
  glBindBuffer(0x8892u, 0);
}

__n64 calculateUniforms(uint64_t a1, int32x2_t *a2, int32x2_t *a3, int *a4, float32x4_t *a5, float32x2_t *a6, _DWORD *a7, __n64 *a8, char a9)
{
  v16 = HGRectMake4i(0, 0, *(a1 + 80), *(a1 + 84));
  v18 = *(a1 + 92);
  v19 = *(a1 + 96);
  v20 = v18 * v16;
  v21 = v19 * SHIDWORD(v16);
  v22 = *(a1 + 104);
  v23 = *(a1 + 108);
  v24 = v22 + (v20 + v21);
  v25 = v23 * v16;
  v26 = *(a1 + 112);
  v27 = v26 * SHIDWORD(v16);
  v28 = *(a1 + 120);
  v29 = v28 + (v25 + v27);
  v30 = v18 * v17;
  v31 = v22 + (v30 + v21);
  v32 = v23 * v17;
  v33 = v28 + (v32 + v27);
  v34 = v19 * SHIDWORD(v17);
  v35 = v22 + (v20 + v34);
  v36 = v26 * SHIDWORD(v17);
  v37 = v28 + (v25 + v36);
  v38 = v22 + (v30 + v34);
  v39 = v28 + (v32 + v36);
  if (v31 >= v24)
  {
    v40 = v24;
  }

  else
  {
    v40 = v31;
  }

  if (v35 < v40)
  {
    v40 = v35;
  }

  if (v38 < v40)
  {
    v40 = v38;
  }

  if (v33 >= v29)
  {
    v41 = v29;
  }

  else
  {
    v41 = v33;
  }

  if (v37 < v41)
  {
    v41 = v37;
  }

  if (v39 < v41)
  {
    v41 = v39;
  }

  if (v24 >= v31)
  {
    v42 = v24;
  }

  else
  {
    v42 = v31;
  }

  if (v42 < v35)
  {
    v42 = v35;
  }

  if (v42 >= v38)
  {
    v38 = v42;
  }

  if (v29 >= v33)
  {
    v43 = v29;
  }

  else
  {
    v43 = v33;
  }

  if (v43 < v37)
  {
    v43 = v37;
  }

  if (v43 >= v39)
  {
    v39 = v43;
  }

  v44 = HGRectMake4f(HIDWORD(v17), v40, v41, v38, v39);
  v46 = v44;
  v48 = v47;
  v49 = HIDWORD(v44);
  v50 = *a4;
  v51 = a4[2];
  v52 = a4[1];
  v53 = a4[3];
  v54 = *(a1 + 92);
  v55 = *(a1 + 96);
  v56 = v54 * v50;
  v57 = v55 * v52;
  v58 = *(a1 + 104);
  v59 = *(a1 + 108);
  v60 = v58 + ((v54 * v50) + (v55 * v52));
  v61 = v59 * v50;
  v62 = *(a1 + 112);
  v63 = v62 * v52;
  v64 = *(a1 + 120);
  v65 = v64 + (v61 + v63);
  v66 = v54 * v51;
  v67 = v58 + (v66 + v57);
  v68 = v59 * v51;
  v69 = v64 + (v68 + v63);
  v70 = v55 * v53;
  v71 = v58 + (v56 + (v55 * v53));
  v72 = v62 * v53;
  v73 = v64 + (v61 + v72);
  v74 = v58 + (v66 + v70);
  v75 = v64 + (v68 + v72);
  if (v67 >= v60)
  {
    v76 = v60;
  }

  else
  {
    v76 = v67;
  }

  if (v71 < v76)
  {
    v76 = v71;
  }

  if (v74 < v76)
  {
    v76 = v74;
  }

  if (v69 >= v65)
  {
    v77 = v65;
  }

  else
  {
    v77 = v69;
  }

  if (v73 < v77)
  {
    v77 = v73;
  }

  if (v75 < v77)
  {
    v77 = v75;
  }

  if (v60 >= v67)
  {
    v78 = v60;
  }

  else
  {
    v78 = v67;
  }

  if (v78 < v71)
  {
    v78 = v71;
  }

  if (v78 < v74)
  {
    v78 = v74;
  }

  if (v65 >= v69)
  {
    v79 = v65;
  }

  else
  {
    v79 = v69;
  }

  if (v79 < v73)
  {
    v79 = v73;
  }

  if (v79 >= v75)
  {
    v75 = v79;
  }

  v80 = HGRectMake4f(v45, v76, v77, v78, v75);
  v81 = (v48 - v46);
  v82 = v80 / v81;
  v84 = v83 / v81;
  v85 = (HIDWORD(v48) - v49);
  v86 = SHIDWORD(v80) / v85;
  v88 = v87 / v85;
  if (*(a1 + 44) == 1)
  {
    v90 = *(a1 + 48);
    v89 = *(a1 + 52);
    v91 = *(a1 + 56);
    v92 = *(a1 + 60);
    v93 = 0.0;
    v94 = *(a1 + 64);
    v95 = *(a1 + 68);
  }

  else
  {
    v96 = *(a1 + 80) / *(a1 + 84);
    v97 = __sincos_stret(*(a1 + 36) * 0.0174532925 * 0.5);
    v98 = v97.__cosval + v97.__sinval / -0.608761429 * 0.79335334;
    v99 = -v98;
    if (v98 >= 0.0)
    {
      v99 = 0.01;
    }

    v94 = v99;
    v95 = fabs(v98 + -1.0) + 0.25;
    v100 = v98;
    v132 = v100;
    v101 = v96;
    v102 = tanf(0.6545);
    v93 = v132;
    v92 = v102 * v94;
    v89 = v92 * v101;
    v91 = -(v102 * v94);
    v90 = -(v92 * v101);
  }

  v103 = v89;
  v104 = v103 - v90;
  v105 = v103 - (0.5 - v82) * v104;
  v106 = v103 - (0.5 - v84) * v104;
  v107 = v92;
  v108 = v107 - v91;
  v109 = v107 - (0.5 - v86) * v108;
  v110 = v107 - (0.5 - v88) * v108;
  v111 = *(a1 + 16);
  v112 = *(a1 + 12);
  v113 = *(a1 + 20);
  v114 = *(a1 + 24);
  v115 = *(a1 + 28);
  v116 = *(a1 + 32);
  *&v105 = v105;
  *&v106 = v106;
  v117 = *&v105 + *&v106;
  *&v105 = *&v106 - *&v105;
  *&v106 = v109;
  *&v109 = v110;
  *&v110 = *&v106 + *&v109;
  *&v106 = *&v109 - *&v106;
  *&v110 = *&v110 / *&v106;
  v118 = (v94 + v94) / *&v106;
  v119 = COERCE_UNSIGNED_INT((v94 + v94) / *&v105);
  v120.i32[0] = 0;
  v120.i64[1] = 0;
  v120.f32[1] = v118;
  __asm { FMOV            V22.4S, #-1.0 }

  _Q22.f32[0] = v117 / *&v105;
  v126 = _Q22;
  v126.i32[1] = LODWORD(v110);
  v127 = v126;
  v127.f32[2] = -(v95 + v94) / (v95 - v94);
  v128.i64[0] = 0;
  v128.i32[3] = 0;
  v128.f32[2] = ((v95 * -2.0) * v94) / (v95 - v94);
  if (a9)
  {
    v119 = vaddq_f32(vaddq_f32(vmulq_n_f32(xmmword_2603429B0, v119.f32[0]), xmmword_260345040), 0);
    v120 = vaddq_f32(vmlaq_lane_f32(0, xmmword_260816F10, *v120.f32, 1), 0);
    v127 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_2603429B0, _Q22.f32[0]), xmmword_260816F10, *v126.f32, 1), xmmword_260342E80, v127, 2), xmmword_260816F20);
    v128 = vaddq_f32(vmlaq_laneq_f32(0, xmmword_260342E80, v128, 2), 0);
  }

  *a5 = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v119, COERCE_FLOAT(*a1)), v120, COERCE_FLOAT(*(a1 + 4))), v127, COERCE_FLOAT(*(a1 + 8))), 0, v128);
  a5[1] = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v119, *&v112), v120, *&v111), v127, *&v113), 0, v128);
  a5[2] = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v119, *&v114), v120, *&v115), v127, *&v116), 0, v128);
  a5[3] = vaddq_f32(v128, vmlaq_n_f32(vmlaq_f32(vmulq_f32(v119, 0), 0, v120), v127, v93));
  v129 = vcvt_f32_s32(vsub_s32(*a2, *a3));
  *&v130 = (a2[1].i32[0] - a2->u32[0]);
  *a7 = v130;
  *(&v130 + 1) = (a2[1].i32[1] - a2->i32[1]);
  *a7 = v130;
  result.n64_f32[0] = (a3[1].i32[0] - a3->i32[0]);
  a8->n64_u32[0] = result.n64_u32[0];
  result.n64_f32[1] = (a3[1].i32[1] - a3->i32[1]);
  a8->n64_u64[0] = result.n64_u64[0];
  *a6 = v129;
  return result;
}

int *HGEquirectProject::RenderPage(HGNode *this, HGRect *a2)
{
  HGPagePullTexturesGuard::HGPagePullTexturesGuard(&v10, this, a2);
  Buffer = *&a2->var2;
  if (Buffer)
  {
    (*(*Buffer + 16))(*&a2->var2);
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(*&a2->var0, a2[1], a2[2].var0, 0, (*(this + 4) >> 12) & 1, LOBYTE(a2[15].var2));
    *&a2->var2 = Buffer;
  }

  (*(**&a2->var0 + 144))(*&a2->var0, Buffer);
  (*(**&a2->var0 + 152))(*&a2->var0, 0, *&a2[10].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 1, *&a2[11].var0, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 2, *&a2[11].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 3, *&a2[12].var0, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 4, *&a2[12].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 5, *&a2[13].var0, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 6, *&a2[13].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 7, *&a2[14].var0, 0, 0);
  if (*&a2[10].var2)
  {
    v5 = (*(**&a2->var0 + 304))(*&a2->var0);
    if (v5)
    {
      Buffer = *&a2[10].var2;
    }

    else
    {
      RenderResources = HGEquirectProject::getRenderResources(v5, *&a2->var0);
      v7 = *&a2[10].var2;
      if (v7)
      {
      }

      else
      {
        v8 = 0;
      }

      HGEquirectProject::render(this, Buffer, v8, RenderResources);
    }
  }

  else
  {
    fwrite("HGEquirectProject: no equirect input image.\n", 0x2CuLL, 1uLL, *MEMORY[0x277D85DF8]);
  }

  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(&v10);
  return Buffer;
}

void sub_25FCEEB4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCEEB60(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCEEB74(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCEEB88(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(va);
  _Unwind_Resume(a1);
}

char *HGEquirectProject::RenderPageMetal(HGNode *this, HGPage *a2)
{
  HGPagePullMetalTexturesGuard::HGPagePullMetalTexturesGuard(&v28, this, a2);
  (*(**a2 + 144))(*a2, 0);
  Buffer = *(a2 + 1);
  if (Buffer)
  {
    (*(*Buffer + 16))(*(a2 + 1));
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(*a2, *(a2 + 1), *(a2 + 8), 1, (*(this + 4) >> 12) & 1, *(a2 + 248));
  }

  HGGPURenderer::ClearMetal(*a2, Buffer, *(a2 + 1), v5);
  v6 = (*(**a2 + 368))(*a2, *(this + 8), this);
  if (v6)
  {
    if (v7)
    {
      v8 = v7;
      v9 = (*(*this + 48))(this);
      v10 = strlen(v9);
      if (v10 >= 0x7FFFFFFFFFFFFFF8)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v11 = v10;
      if (v10 >= 0x17)
      {
        operator new();
      }

      BYTE7(v25) = v10;
      if (v10)
      {
        memmove(&__dst, v9, v10);
      }

      *(&__dst + v11) = 0;
      HGMetalHandler::SetDebugLabel(v8, &__dst);
      if (SBYTE7(v25) < 0)
      {
        operator delete(__dst);
      }

      HGMetalHandler::BindBuffer(v8, Buffer);
      if (*(a2 + 21))
      {
        (*(v8->__r_.__value_.__r.__words[0] + 72))(v8, 0, 0);
        (*(v8->__r_.__value_.__r.__words[0] + 48))(v8, 0, 0);
        v12 = HGMetalHandler::BindTexture(v8, 0, *(a2 + 21));
      }

      if (*(a2 + 22))
      {
        (*(v8->__r_.__value_.__r.__words[0] + 72))(v8, 1, 0, v12);
        (*(v8->__r_.__value_.__r.__words[0] + 48))(v8, 0, 0);
        v12 = HGMetalHandler::BindTexture(v8, 1, *(a2 + 22));
      }

      if (*(a2 + 23))
      {
        (*(v8->__r_.__value_.__r.__words[0] + 72))(v8, 2, 0, v12);
        (*(v8->__r_.__value_.__r.__words[0] + 48))(v8, 0, 0);
        v12 = HGMetalHandler::BindTexture(v8, 2, *(a2 + 23));
      }

      if (*(a2 + 24))
      {
        (*(v8->__r_.__value_.__r.__words[0] + 72))(v8, 3, 0, v12);
        (*(v8->__r_.__value_.__r.__words[0] + 48))(v8, 0, 0);
        v12 = HGMetalHandler::BindTexture(v8, 3, *(a2 + 24));
      }

      if (*(a2 + 25))
      {
        (*(v8->__r_.__value_.__r.__words[0] + 72))(v8, 4, 0, v12);
        (*(v8->__r_.__value_.__r.__words[0] + 48))(v8, 0, 0);
        v12 = HGMetalHandler::BindTexture(v8, 4, *(a2 + 25));
      }

      if (*(a2 + 26))
      {
        (*(v8->__r_.__value_.__r.__words[0] + 72))(v8, 5, 0, v12);
        (*(v8->__r_.__value_.__r.__words[0] + 48))(v8, 0, 0);
        v12 = HGMetalHandler::BindTexture(v8, 5, *(a2 + 26));
      }

      if (*(a2 + 27))
      {
        (*(v8->__r_.__value_.__r.__words[0] + 72))(v8, 6, 0, v12);
        (*(v8->__r_.__value_.__r.__words[0] + 48))(v8, 0, 0);
        v12 = HGMetalHandler::BindTexture(v8, 6, *(a2 + 27));
      }

      if (*(a2 + 28))
      {
        (*(v8->__r_.__value_.__r.__words[0] + 72))(v8, 7, 0, v12);
        (*(v8->__r_.__value_.__r.__words[0] + 48))(v8, 0, 0);
        HGMetalHandler::BindTexture(v8, 7, *(a2 + 28));
      }

      v22 = 0.0;
      v23 = 0.0;
      v21.n64_u64[0] = 0;
      calculateUniforms(this + 408, (*(a2 + 21) + 20), (*(a2 + 21) + 20), Buffer + 5, &__dst, &v23, &v22, &v21, 1);
      v17 = xmmword_2603429B0;
      v18 = xmmword_2603429C0;
      v19 = xmmword_2603429D0;
      v20 = xmmword_2603427D0;
      (*(v8->__r_.__value_.__r.__words[0] + 184))(v8, &v17);
      v17 = __dst;
      v18 = v25;
      v19 = v26;
      v20 = v27;
      (*(v8->__r_.__value_.__r.__words[0] + 176))(v8, &v17);
      (*(v8->__r_.__value_.__r.__words[0] + 136))(v8, 0, v23, *(&v23 + 1), 0.0, 0.0);
      (*(v8->__r_.__value_.__r.__words[0] + 136))(v8, 1, v22, *(&v22 + 1), 0.0, 0.0);
      (*(*this + 488))(this, a2, 0, v8);
      if (HGNode::IsInPlaceHardwareBlendingEnabled(this))
      {
        HGMetalHandler::EnableBlending(v8);
        v13 = (*(*this + 256))(this);
        v14 = HGMetalHandler::SetBlendingInfo(v8, v13);
        v15 = (*(*this + 272))(this, v14);
        HGMetalHandler::SetBlendingColor(v8, v15);
      }

      if (atomic_load_explicit(&qword_280C5E458, memory_order_acquire))
      {
        if (atomic_load_explicit(&qword_280C5E460, memory_order_acquire) == -1)
        {
LABEL_35:
          HGMetalHandler::PrimitivesDraw(v8, 3u, qword_280C5E480, (qword_280C5E488 - qword_280C5E480) >> 4, qword_280C5E480);
          (*(*this + 496))(this, a2, 0, v8);
          goto LABEL_36;
        }
      }

      else
      {
        HGEquirectProject::RenderPageMetal();
        if (atomic_load_explicit(&qword_280C5E460, memory_order_acquire) == -1)
        {
          goto LABEL_35;
        }
      }

      *&v17 = &v29;
      v30 = &v17;
      std::__call_once(&qword_280C5E460, &v30, std::__call_once_proxy[abi:ne200100]<std::tuple<getIcosphereP(void)::$_0 &&>>);
      goto LABEL_35;
    }
  }

LABEL_36:
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&v28);
  return Buffer;
}

float HGEquirectProject::setParams(HGEquirectProject *this, const HGEquirectProjectParams *a2)
{
  v2 = *&a2->var1[1];
  *(this + 408) = *a2->var0;
  *(this + 424) = v2;
  v3 = *&a2->var2[2];
  v4 = *&a2->var6;
  v5 = *&a2->var14;
  *(this + 472) = *&a2->var10;
  *(this + 488) = v5;
  *(this + 440) = v3;
  *(this + 456) = v4;
  v6 = *&a2->var18[1];
  v7 = *&a2->var19[1];
  v8 = *&a2->var20[1];
  *(this + 548) = *a2->var21;
  *(this + 520) = v7;
  *(this + 536) = v8;
  *(this + 504) = v6;
  if ((*(this + 497) & 1) == 0)
  {
    *(this + 133) = 1065353216;
    *(this + 67) = 0;
    *(this + 136) = (*(this + 120) / 2);
    *(this + 137) = 0;
    *(this + 69) = 1065353216;
    *(this + 140) = (*(this + 121) / 2);
    *(this + 125) = 1065353216;
    *(this + 63) = 0;
    *(this + 128) = vcvts_n_f32_s32(-*(this + 122), 1uLL);
    *(this + 129) = 0;
    *(this + 65) = 1065353216;
    *&v6 = vcvts_n_f32_s32(-*(this + 123), 1uLL);
    *(this + 132) = v6;
  }

  return *&v6;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<getIcosphereP(void)::$_0 &&>>()
{
  v0 = 0;
  v1 = 0;
  v2 = 0;
  project_util::generateIcosphere();
}

void sub_25FCEF6E0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (v12)
  {
    operator delete(v12);
  }

  _Unwind_Resume(exception_object);
}

void _ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEE9push_backB8ne200100ERKS1_(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

uint64_t OUTLINED_FUNCTION_0_10(uint64_t a1, void *a2, void *a3)
{

  return __cxa_atexit(_ZNSt3__16vectorIDv4_fNS_9allocatorIS1_EEED1B8ne200100Ev, a2, a3);
}

void HGEquirectProject::getRenderResources()
{
  if (__cxa_guard_acquire(&_MergedGlobals_22))
  {
    qword_280C5E478 = 0;
    qword_280C5E470 = 0;
    qword_280C5E468 = &qword_280C5E470;
    __cxa_atexit(std::map<HGGPURenderer *,RenderResources>::~map[abi:ne200100], &qword_280C5E468, &dword_25F8F0000);

    __cxa_guard_release(&_MergedGlobals_22);
  }
}

{
  if (__cxa_guard_acquire(&qword_280C5E450))
  {
    __cxa_atexit(MEMORY[0x277D82690], &HGEquirectProject::getRenderResources(HGGPURenderer *)::mutex, &dword_25F8F0000);

    __cxa_guard_release(&qword_280C5E450);
  }
}

void HGEquirectProject::RenderPageMetal()
{
  v0 = __cxa_guard_acquire(&qword_280C5E458);
  if (v0)
  {
    qword_280C5E488 = 0;
    qword_280C5E490 = 0;
    qword_280C5E480 = 0;
    OUTLINED_FUNCTION_0_10(v0, &qword_280C5E480, &dword_25F8F0000);
    __cxa_guard_release(&qword_280C5E458);
  }
}

void HGComicQuantize::HGComicQuantize(HGComicQuantize *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872210E0;
  *(v1 + 408) = 0x3F80000000000000;
  *(v1 + 16) |= 0x620u;
}

void HGComicQuantize::~HGComicQuantize(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGComicQuantize::SetParameter(HGComicQuantize *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2 == 1)
  {
    if (*(this + 103) != a3)
    {
      *(this + 103) = a3;
      return 1;
    }
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(this + 102) != a3)
    {
      *(this + 102) = a3;
      return 1;
    }
  }

  return 0;
}

uint64_t HGComicQuantize::GetDOD(HGComicQuantize *this, HGRenderer *a2, int a3, HGRect a4)
{
  v13 = a4;
  if (a3)
  {
    return 0;
  }

  if (HGRect::IsInfinite(&v13))
  {
    return *&v13.var0;
  }

  v6 = *(this + 103);
  HGTransform::HGTransform(v12);
  HGTransform::Scale(v12, v6, v6, 1.0);
  v7 = *&v13.var0;
  v8 = *&v13.var2;
  v10 = HGTransformUtils::MinW(v9);
  *&v14.var0 = v8;
  DOD = HGTransformUtils::GetDOD(v12, v7, v14, 0.5, v10);
  HGTransform::~HGTransform(v12);
  return DOD;
}

uint64_t HGComicQuantize::GetROI(HGComicQuantize *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return HGRectNull;
  }

  v5 = *&a4.var0;
  v6 = *&a4.var2;
  v7 = 1.0 / *(this + 103);
  HGTransform::HGTransform(v14);
  HGTransform::Scale(v14, v7, v7, 1.0);
  *&v15.var0 = 0;
  *&v15.var2 = 0;
  v9 = HGTransformUtils::MinW(v8);
  *&v17.var0 = v6;
  *&v15.var0 = HGTransformUtils::GetROI(v14, v5, v17, 0.5, v9);
  *&v15.var2 = v10;
  v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  v13 = v12;
  *&v16.var0 = v11;
  *&v16.var2 = v13;
  HGRect::Grow(&v15, v16);
  HGTransform::~HGTransform(v14);
  return *&v15.var0;
}

uint64_t HGComicQuantize::RenderTile(HGComicQuantize *this, float32x4_t **a2)
{
  v4 = *(this + 103);
  v5 = HGTile::Renderer(a2);
  v6 = (*(*this + 312))(this, v5);
  v7 = *a2;
  v74 = *(a2 + 3) - (*a2 >> 32);
  if (v74 >= 1)
  {
    v73 = (*(a2 + 2) - v7.i32[0]);
    if (v73 >= 1)
    {
      v8 = v6;
      v9 = 0;
      *v10.f32 = vadd_f32(vcvt_f32_s32(v7), 0x3F0000003F000000);
      v10.i64[1] = 0x3F80000000000000;
      v11 = *(this + 102);
      v12 = a2[2];
      v89 = vdupq_n_s32(0x42C80000u);
      v78 = v10;
      do
      {
        v77 = v9;
        v13 = v73;
        v76 = v12;
        v75 = v10;
        do
        {
          v88 = v10;
          v18 = a2[10];
          v19 = *(a2 + 22);
          v20 = vsubq_f32(vmulq_n_f32(v10, 1.0 / v4), v78);
          if (v8)
          {
            v21 = vaddq_s32(vcvtq_s32_f32(v20), vcltzq_f32(v20));
            v22 = vsubq_f32(v20, vcvtq_f32_s32(v21)).u64[0];
            v23 = &v18[v21.i32[0] + v21.i32[1] * v19];
            v24 = vaddq_f32(*v23, vmulq_n_f32(vsubq_f32(v23[1], *v23), v22.f32[0]));
            v25 = vaddq_f32(v24, vmulq_lane_f32(vsubq_f32(vaddq_f32(v23[v19], vmulq_n_f32(vsubq_f32(v23[v19 + 1], v23[v19]), v22.f32[0])), v24), v22, 1));
            v90 = v25;
            if (v25.f32[0] > 0.04045)
            {
              goto LABEL_10;
            }
          }

          else
          {
            v31.i64[0] = 0x3F0000003F000000;
            v31.i64[1] = 0x3F0000003F000000;
            v32 = vaddq_f32(v20, v31);
            v33 = vcvtq_s32_f32(v32);
            v32.i64[0] = vaddq_s32(v33, vcgtq_f32(vcvtq_f32_s32(v33), v32)).u64[0];
            v25 = v18[v32.i32[0] + v32.i32[1] * v19];
            v90 = v25;
            if (v25.f32[0] > 0.04045)
            {
LABEL_10:
              v26 = powf((v25.f32[0] + 0.055) / 1.055, 2.4);
              v25.i32[2] = v90.i32[2];
              v85 = v26;
              v27 = v90.f32[1];
              if (v90.f32[1] <= 0.04045)
              {
                goto LABEL_11;
              }

              goto LABEL_15;
            }
          }

          v85 = v25.f32[0] / 12.92;
          v27 = v25.f32[1];
          if (v25.f32[1] <= 0.04045)
          {
LABEL_11:
            v28 = v27 / 12.92;
            v29 = v25.f32[2];
            if (v25.f32[2] <= 0.04045)
            {
              goto LABEL_12;
            }

            goto LABEL_16;
          }

LABEL_15:
          v28 = powf((v27 + 0.055) / 1.055, 2.4);
          v29 = v90.f32[2];
          if (v90.f32[2] <= 0.04045)
          {
LABEL_12:
            v30 = v29 / 12.92;
            goto LABEL_17;
          }

LABEL_16:
          v81 = v28;
          v30 = powf((v29 + 0.055) / 1.055, 2.4);
          v28 = v81;
LABEL_17:
          v34.i64[0] = __PAIR64__(LODWORD(v28), LODWORD(v85));
          v34.i64[1] = LODWORD(v30);
          v35 = vmulq_f32(v34, xmmword_260816F60);
          *v35.f32 = vadd_f32(*v35.f32, *&vextq_s8(v35, v35, 8uLL));
          v36 = vmulq_f32(v34, xmmword_260344CF0);
          *v36.i8 = vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
          *v37.f32 = vzip1_s32(*v35.f32, *v36.i8);
          *v35.f32 = vzip2_s32(*v35.f32, *v36.i8);
          v38 = vmulq_f32(v34, xmmword_260816F70);
          *&v37.u32[2] = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
          *&v35.u32[2] = vdup_lane_s32(*&v37.u32[2], 1);
          v39 = vdivq_f32(vmulq_f32(vaddq_f32(v37, v35), v89), xmmword_260816F80);
          v82 = v39;
          if (v39.f32[0] <= 0.008856)
          {
            v86 = (v39.f32[0] * 7.787) + 0.13793;
            v41 = v39.f32[1];
            if (v39.f32[1] <= 0.008856)
            {
LABEL_19:
              v42.f32[0] = (v41 * 7.787) + 0.13793;
              v43 = v39.f32[2];
              if (v39.f32[2] <= 0.008856)
              {
                goto LABEL_20;
              }

              goto LABEL_23;
            }
          }

          else
          {
            v40 = powf(v39.f32[0], 0.33333);
            v39.i32[2] = v82.i32[2];
            v86 = v40;
            v41 = v82.f32[1];
            if (v82.f32[1] <= 0.008856)
            {
              goto LABEL_19;
            }
          }

          v42.i32[0] = powf(v41, 0.33333);
          v43 = v82.f32[2];
          if (v82.f32[2] <= 0.008856)
          {
LABEL_20:
            v44 = (v43 * 7.787) + 0.13793;
            goto LABEL_24;
          }

LABEL_23:
          v83 = v42.i32[0];
          v44 = powf(v43, 0.33333);
          v42.i32[0] = v83;
LABEL_24:
          v42.f32[1] = v44;
          v45 = vadd_f32(vmul_f32(vdiv_f32(vmul_f32(vsub_f32(__PAIR64__(v42.u32[0], LODWORD(v86)), v42), 0x4348000043FA0000), vdup_n_s32(0x42FE0000u)), 0x3F0000003F000000), 0x3F0000003F000000);
          v46.f32[0] = ((v42.f32[0] * 116.0) + -16.0) / 100.0;
          v46.i32[1] = v45.i32[0];
          v46.i64[1] = v45.u32[1];
          __asm { FMOV            V2.4S, #1.0 }

          v87 = _Q2;
          v51 = vminnmq_f32(vmaxnmq_f32(v46, 0), _Q2);
          v52 = ((((1.0 / v11) * floorf((v11 * v51.f32[0]) + 0.5)) * 100.0) + 16.0) / 116.0;
          _Q2.f32[0] = (((v51.f32[1] + -0.5) * 254.0) / 500.0) + v52;
          v53 = v52 + (((v51.f32[2] + -0.5) * 254.0) / -200.0);
          v54 = _Q2.f32[0] <= 0.2069;
          v55 = _Q2.f32[0] * (_Q2.f32[0] * _Q2.f32[0]);
          _Q2.f32[0] = (_Q2.f32[0] + -0.13793) / 7.787;
          if (!v54)
          {
            _Q2.f32[0] = v55;
          }

          v54 = v52 <= 0.2069;
          v57 = v52 * (v52 * v52);
          v58 = (v52 + -0.13793) / 7.787;
          if (!v54)
          {
            v58 = v57;
          }

          v54 = v53 <= 0.2069;
          v59 = v53 * (v53 * v53);
          v60 = (v53 + -0.13793) / 7.787;
          if (!v54)
          {
            v60 = v59;
          }

          _Q2.f32[1] = v58;
          *v61.f32 = vmul_f32(*_Q2.f32, 0x42C8000042BE1810);
          v61.f32[2] = v60 * 108.88;
          v61.i32[3] = 0;
          v62 = vdivq_f32(v61, v89);
          v63 = vmulq_f32(v62, xmmword_260816F90);
          v64 = vaddv_f32(vadd_f32(*v63.i8, *&vextq_s8(v63, v63, 8uLL)));
          v80 = v62;
          if (v64 <= 0.0031308)
          {
            v66 = v64 * 12.92;
          }

          else
          {
            v65 = powf(v64, 0.41667);
            v62 = v80;
            v66 = (v65 * 1.055) + -0.055;
          }

          v84 = v66;
          v67 = vmulq_f32(v62, xmmword_260816FA0);
          v68 = vaddv_f32(vadd_f32(*v67.i8, *&vextq_s8(v67, v67, 8uLL)));
          if (v68 <= 0.0031308)
          {
            v15 = v68 * 12.92;
          }

          else
          {
            v69 = powf(v68, 0.41667);
            v62 = v80;
            v15 = (v69 * 1.055) + -0.055;
          }

          v70 = vmulq_f32(v62, xmmword_260816FB0);
          v71 = vaddv_f32(vadd_f32(*v70.i8, *&vextq_s8(v70, v70, 8uLL)));
          if (v71 > 0.0031308)
          {
            v79 = v15;
            v14 = powf(v71, 0.41667);
            v15 = v79;
            v16 = (v14 * 1.055) + -0.055;
          }

          else
          {
            v16 = v71 * 12.92;
          }

          v17.i64[0] = __PAIR64__(LODWORD(v15), LODWORD(v84));
          v17.i64[1] = __PAIR64__(v90.u32[3], LODWORD(v16));
          *v12++ = vmaxnmq_f32(vminnmq_f32(v17, v87), 0);
          v10 = vaddq_f32(v88, xmmword_2603429B0);
          --v13;
        }

        while (v13);
        v10 = vaddq_f32(v75, xmmword_2603429C0);
        v12 = &v76[*(a2 + 6)];
        v9 = v77 + 1;
      }

      while (v77 + 1 != v74);
    }
  }

  return 0;
}

const char *HGComicQuantize::GetProgram(HGComicQuantize *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) > 0x60B0F)
  {
    return aMetal10Len0000_401;
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    return aGlfs10Len00000_5;
  }

  return 0;
}

uint64_t HGComicQuantize::BindTexture(HGComicQuantize *this, HGHandler *a2, uint64_t a3)
{
  if ((a3 & 0x80000000) == 0)
  {
    v5 = 1.0 / *(this + 103);
    HGHandler::TexCoord(a2, a3, 0, 0, 0);
    (*(*a2 + 104))(a2, v5, v5, 1.0);
  }

  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 56))(a2, 0);
  (*(*a2 + 48))(a2, 1, 1);
  return 0;
}

void HGProfiler::HGProfiler(HGProfiler *this)
{
  if (HGProfiler::_first == 1)
  {
    v1 = this;
    mach_timebase_info(&HGProfiler::_tb_init(void)::s_tbinfo);
    this = v1;
    LODWORD(v2) = HGProfiler::_tb_init(void)::s_tbinfo;
    LODWORD(v3) = *algn_280C5C9B4;
    *&v2 = v2 * 0.000001 / v3;
    HGProfiler::_tbfreq = v2;
    HGProfiler::_first = 0;
  }

  *(this + 1) = 0;
}

uint64_t HGProfiler::start(HGProfiler *this)
{
  result = mach_absolute_time();
  *this = result;
  return result;
}

uint64_t HGProfiler::stop(HGProfiler *this)
{
  result = mach_absolute_time();
  *(this + 1) += result - *this;
  return result;
}

uint64_t **HGProfilerGuard<(HGProfilerGuardMode)0>::HGProfilerGuard(uint64_t **result, uint64_t *a2)
{
  *result = a2;
  if (a2)
  {
    v3 = result;
    v4 = mach_absolute_time();
    result = v3;
    *a2 = v4;
  }

  return result;
}

void **HGProfilerGuard<(HGProfilerGuardMode)0>::~HGProfilerGuard(void **a1)
{
  if (*a1)
  {
    v2 = *a1;
    v2[1] += mach_absolute_time() - *v2;
  }

  return a1;
}

void *HGProfilerGuard<(HGProfilerGuardMode)1>::HGProfilerGuard(void *result, void *a2)
{
  *result = a2;
  if (a2)
  {
    v3 = result;
    v4 = mach_absolute_time();
    result = v3;
    a2[1] += v4 - *a2;
  }

  return result;
}

uint64_t **HGProfilerGuard<(HGProfilerGuardMode)1>::~HGProfilerGuard(uint64_t **a1)
{
  if (*a1)
  {
    v2 = *a1;
    *v2 = mach_absolute_time();
  }

  return a1;
}

void HGBitmapLoader::HGBitmapLoader(HGBitmapLoader *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287221348;
  *(v1 + 416) = 0;
  *(v1 + 424) = 0;
  *(v1 + 408) = 0;
  *(v1 + 432) = 0;
  *(v1 + 434) = 1;
  *(v1 + 436) = 0u;
  *(v1 + 452) = 0u;
  *(v1 + 468) = 0u;
  *(v1 + 484) = 0;
  v2 = *(v1 + 16) | 0x600;
  *(v1 + 12) = 1112363084;
  *(v1 + 16) = v2;
}

void HGBitmapLoader::HGBitmapLoader(HGBitmapLoader *this, HGBitmap *a2)
{
  HGNode::HGNode(this);
  *v4 = &unk_287221348;
  *(v4 + 416) = 0;
  *(v4 + 424) = 0;
  *(v4 + 408) = 0;
  *(v4 + 12) = 1112363084;
  if (a2)
  {
    (*(*a2 + 16))(a2);
    v5 = *(this + 51);
    if (v5 == a2)
    {
      (*(*a2 + 24))(a2);
    }

    else
    {
      if (v5)
      {
        (*(*v5 + 24))(v5);
      }

      *(this + 51) = a2;
    }
  }

  *(this + 216) = 0;
  *(this + 434) = 1;
  *(this + 121) = 0;
  *(this + 436) = 0u;
  *(this + 452) = 0u;
  *(this + 468) = 0u;
  *(this + 4) |= 0x600u;
}

void sub_25FCF0964(_Unwind_Exception *a1)
{
  v3 = v2;
  (*(*v3 + 24))(v3);
  v5 = *(v1 + 424);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(v1 + 416);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  v7 = *(v1 + 408);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGBitmapLoader::~HGBitmapLoader(HGBitmapLoader *this)
{
  *this = &unk_287221348;
  HGBitmapLoader::ReleaseNodes(this);
  v2 = *(this + 53);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 52);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 51);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  HGNode::~HGNode(this);
}

{
  HGBitmapLoader::~HGBitmapLoader(this);

  HGObject::operator delete(v1);
}

uint64_t HGBitmapLoader::ReleaseNodes(HGBitmapLoader *this)
{
  v2 = *(this + 55);
  if (v2)
  {
    (*(*v2 + 24))(v2);
    *(this + 55) = 0;
  }

  v3 = *(this + 56);
  if (v3)
  {
    (*(*v3 + 24))(v3);
    *(this + 56) = 0;
  }

  v4 = *(this + 57);
  if (v4)
  {
    (*(*v4 + 24))(v4);
    *(this + 57) = 0;
  }

  v5 = *(this + 58);
  if (v5)
  {
    (*(*v5 + 24))(v5);
    *(this + 58) = 0;
  }

  v6 = *(this + 59);
  if (v6)
  {
    (*(*v6 + 24))(v6);
    *(this + 59) = 0;
  }

  result = *(this + 60);
  if (result)
  {
    result = (*(*result + 24))(result);
    *(this + 60) = 0;
  }

  return result;
}

HGBitmap *HGBitmapLoader::SetBitmap(HGNode *this, HGBitmap *a2, char *a3)
{
  if (*(this + 51) != a2)
  {
    HGNode::ClearBits(this, a2, a3);
    *(this + 434) = 1;
  }

  if (a2)
  {
    (*(*a2 + 16))(a2);
    result = *(this + 51);
    if (result == a2)
    {
      return (*(*a2 + 24))(a2);
    }
  }

  else
  {
    result = *(this + 51);
    if (!result)
    {
      return result;
    }
  }

  if (result)
  {
    result = (*(*result + 24))(result);
  }

  *(this + 51) = a2;
  return result;
}

void sub_25FCF0D80(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL HGBitmapLoader::CanBypassTiling(HGBitmapLoader *this, HGRenderer *a2)
{
  if (!*(this + 51))
  {
    return 0;
  }

  if ((*(*a2 + 304))(a2))
  {
    return 0;
  }

  if (TXParagraphStyleFolder_Factory::version(v5))
  {
    return 1;
  }

  if (*(this + 53))
  {
    return 1;
  }

  return (*(*(this + 51) + 12) & 0x30) != 0;
}

unint64_t HGBitmapLoader::GetDOD(HGBitmapLoader *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v4 = *(this + 51);
  if (!v4)
  {
    return 0;
  }

  v5 = *(this + 109);
  v6 = *(v4 + 24);
  v7 = v6 - v5;
  v8 = v5 < 1;
  if (v5 >= 1)
  {
    v9 = *(v4 + 20) - v5;
  }

  else
  {
    v9 = *(v4 + 20);
  }

  if (v8)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  return v9 | (v10 << 32);
}

uint64_t HGBitmapLoader::GetBitmapFormat(HGBitmapLoader *this)
{
  v1 = *(this + 51);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0;
  }
}

uint64_t HGBitmapLoader::PreRenderOption(uint64_t this, HGRenderer *a2)
{
  if (*(this + 432) == 1)
  {
    v14 = v2;
    v15 = v3;
    v5 = this;
    this = (*(*a2 + 304))(a2);
    if ((this & 1) == 0)
    {
      this = (*(*a2 + 128))(a2, 43);
      if (this == 1)
      {
        v6 = *(v5 + 433);
        this = HGGPURenderer::GetNodeRenderAPI(a2, v5);
        if (this == 1)
        {
          v7 = v6 ^ 1;
          *&v13.var0 = HGRenderer::GetROI(a2, v5);
          *&v13.var2 = v8;
          v9 = &v13;
          if (HGRect::IsNull(&v13))
          {
            v9 = (*(v5 + 408) + 20);
          }

          v10 = *&v9->var0;
          v11 = *&v9->var2;
          MetalContext = HGGPURenderer::GetMetalContext(a2);
          *&v16.var0 = v10;
          *&v16.var2 = v11;
          return HGBitmapLoader::UploadBitmap(v5, v16, MetalContext, v7 & 1);
        }
      }
    }
  }

  return this;
}

HGMetalContext *HGBitmapLoader::UploadBitmap(HGMetalContext *this, HGRect a2, HGMetalContext *a3, uint64_t a4)
{
  *&v5.var0 = *&a2.var2;
  *&a2.var2 = *(this + 51);
  if (*&a2.var2 && !*(this + 53))
  {
    v6 = this;
    *&v5.var2 = 1;
    HGMetalTexture::createFromBitmap(a3, 0xD, *&a2.var0, v5, *&a2.var2, a4, &v9);
    this = *(v6 + 53);
    v7 = v9;
    if (this == v9)
    {
      if (this)
      {
        return (*(*v9 + 24))(v9);
      }
    }

    else
    {
      v8 = v6;
      if (this)
      {
        this = (*(*this + 24))(this);
        v7 = v9;
        v8 = v6;
      }

      *(v8 + 53) = v7;
    }
  }

  return this;
}

void sub_25FCF1160(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGBitmapLoader::RenderTile(HGBitmapLoader *this, int32x2_t *a2)
{
  (*(**(this + 51) + 72))(*(this + 51), *&a2[2]);
  v4 = vsub_s32(a2[1], *a2);
  v5 = vmul_lane_s32(v4, v4, 1).i32[0];
  HGStats::UnitStats::readTile(*(*&a2[42] + 424), this, v5, *(*(this + 51) + 56) * v5);
  return 0;
}

HGBitmap *HGBitmapLoader::RenderPage(uint64_t a1, const char **a2, char *a3)
{
  v3 = a3;
  v6 = *(a1 + 408);
  if (v6 && (*(v6 + 12) & 0x10) != 0)
  {
    HGGPURenderer::ValidateGLSharegroupSupport(*a2, "OpenGL sharegroup : HGBitmapLoader's bitmap is an OpenGL object.", a3);
  }

  v7 = (a1 + 408);
  if ((*(a1 + 16) & 4) != 0)
  {
    v8 = *v7;
    HGEdgePolicy::HGEdgePolicy(v27, 1);
    HGBitmap::SetEdgePolicy(v8, v27);
  }

  MetalContext = HGGPURenderer::GetMetalContext(*a2);
  v10 = MetalContext;
  if (!MetalContext)
  {
    LUTEnd = 0;
    ROI = HGRenderer::GetROI(*a2, a1);
    v14 = v15;
    goto LABEL_13;
  }

  LUTEnd = PCICCTransferFunctionLUT::getLUTEnd(MetalContext);
  ROI = HGRenderer::GetROI(*a2, a1);
  v14 = v13;
  if (!LUTEnd || !HGMetalDeviceInfo::isApple(LUTEnd))
  {
LABEL_13:
    Texture = HGGPURenderer::ShouldAllocateTexture(*a2, v14 - ROI, HIDWORD(v14) - HIDWORD(ROI), *(*v7 + 4), v3 == 1, v3 == 0);
    v17 = (a1 + 424);
    v18 = *(a1 + 424);
    if (v18)
    {
      goto LABEL_41;
    }

    goto LABEL_14;
  }

  Texture = 1;
  v17 = (a1 + 424);
  v18 = *(a1 + 424);
  if (v18)
  {
    goto LABEL_41;
  }

LABEL_14:
  v19 = *v7;
  if (!LUTEnd)
  {
    Texture = 0;
  }

  if ((*(v19 + 12) & 0x30) != 0 || Texture == 0 || HG_RENDERER_ENV::FORCE_FULLSIZE_TEXTURE_UPLOAD != 1)
  {
    goto LABEL_36;
  }

  if (v3)
  {
    v22 = *(v10 + 12);
    *&v28.var0 = ROI;
    *&v28.var2 = v14;
    v23 = HGGPURenderer::ConvertToMetalTexture(*a2, v28, v19);
    v24 = *v17;
    if (*v17 == v23)
    {
      if (v23)
      {
        (*(*v23 + 24))(v23);
      }
    }

    else
    {
      if (v24)
      {
        (*(*v24 + 24))(v24);
      }

      *v17 = v23;
    }

    *(v10 + 12) = v22;
    goto LABEL_36;
  }

  *&v29.var0 = ROI;
  *&v29.var2 = v14;
  v25 = HGGPURenderer::ConvertToGLTexture(*a2, v29, v19);
  v18 = *v17;
  if (*v17 != v25)
  {
    if (v18)
    {
      (*(*v18 + 24))(v18);
    }

    *v17 = v25;
    v18 = v25;
    goto LABEL_37;
  }

  if (v25)
  {
    (*(*v25 + 24))(v25);
LABEL_36:
    v18 = *v17;
  }

LABEL_37:
  if (!v18)
  {
    v18 = *(a1 + 416);
    if (v18)
    {
      v17 = (a1 + 416);
    }

    else
    {
      v18 = *v7;
      v17 = (a1 + 408);
    }
  }

LABEL_41:
  (*(*v18 + 16))(v18);
  return *v17;
}

void sub_25FCF150C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGBitmapLoader::SetState(HGBitmapLoader *this, HGRenderer *a2, int a3)
{
  if (a3 == 2)
  {
    v4 = *(this + 52);
    if (v4)
    {
      v5 = this;
      v6 = a3;
      v7 = a2;
      (*(*v4 + 24))(*(this + 52));
      this = v5;
      a2 = v7;
      a3 = v6;
    }

    *(this + 52) = 0;
    v8 = *(this + 53);
    if (v8)
    {
      v9 = this;
      v10 = a3;
      v11 = a2;
      (*(*v8 + 24))(*(this + 53));
      this = v9;
      a2 = v11;
      a3 = v10;
    }

    *(this + 53) = 0;
  }

  return HGNode::SetState(this, a2, a3);
}

HGBitmapLoader *HGBitmapLoader::GetOutput(HGBitmapLoader *this, HGRenderer *a2)
{
  if (!*(this + 51))
  {
    return this;
  }

  if ((*(*a2 + 304))(a2))
  {
    return this;
  }

  if (*(this + 434) != 1)
  {
    return this;
  }

  v4 = *(*(this + 51) + 16);
  *(this + 434) = 0;
  HGBitmapLoader::ReleaseNodes(this);
  if (v4 <= 28)
  {
    if (v4 == 22)
    {
      result = *(this + 56);
      if (!result)
      {
        v9 = HGObject::operator new(0x1A0uLL);
        *v9 = 0u;
        *(v9 + 1) = 0u;
        *(v9 + 2) = 0u;
        *(v9 + 3) = 0u;
        *(v9 + 4) = 0u;
        *(v9 + 5) = 0u;
        *(v9 + 6) = 0u;
        *(v9 + 7) = 0u;
        *(v9 + 8) = 0u;
        *(v9 + 9) = 0u;
        *(v9 + 10) = 0u;
        *(v9 + 11) = 0u;
        *(v9 + 12) = 0u;
        *(v9 + 13) = 0u;
        *(v9 + 14) = 0u;
        *(v9 + 15) = 0u;
        *(v9 + 16) = 0u;
        *(v9 + 17) = 0u;
        *(v9 + 18) = 0u;
        *(v9 + 19) = 0u;
        *(v9 + 20) = 0u;
        *(v9 + 21) = 0u;
        *(v9 + 22) = 0u;
        *(v9 + 23) = 0u;
        *(v9 + 24) = 0u;
        *(v9 + 25) = 0u;
        HgcPixelFormatConversion_kV4B_WXYZ_input::HgcPixelFormatConversion_kV4B_WXYZ_input(v9);
      }

      goto LABEL_23;
    }

    if (v4 == 26)
    {
      result = *(this + 57);
      if (!result)
      {
        v6 = HGObject::operator new(0x1A0uLL);
        *v6 = 0u;
        *(v6 + 1) = 0u;
        *(v6 + 2) = 0u;
        *(v6 + 3) = 0u;
        *(v6 + 4) = 0u;
        *(v6 + 5) = 0u;
        *(v6 + 6) = 0u;
        *(v6 + 7) = 0u;
        *(v6 + 8) = 0u;
        *(v6 + 9) = 0u;
        *(v6 + 10) = 0u;
        *(v6 + 11) = 0u;
        *(v6 + 12) = 0u;
        *(v6 + 13) = 0u;
        *(v6 + 14) = 0u;
        *(v6 + 15) = 0u;
        *(v6 + 16) = 0u;
        *(v6 + 17) = 0u;
        *(v6 + 18) = 0u;
        *(v6 + 19) = 0u;
        *(v6 + 20) = 0u;
        *(v6 + 21) = 0u;
        *(v6 + 22) = 0u;
        *(v6 + 23) = 0u;
        *(v6 + 24) = 0u;
        *(v6 + 25) = 0u;
        HgcPixelFormatConversion_kV4S_WXYZ_input::HgcPixelFormatConversion_kV4S_WXYZ_input(v6);
      }

      goto LABEL_23;
    }

    return this;
  }

  if (v4 == 29)
  {
    result = *(this + 58);
    if (!result)
    {
      v7 = HGObject::operator new(0x1A0uLL);
      *v7 = 0u;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *(v7 + 3) = 0u;
      *(v7 + 4) = 0u;
      *(v7 + 5) = 0u;
      *(v7 + 6) = 0u;
      *(v7 + 7) = 0u;
      *(v7 + 8) = 0u;
      *(v7 + 9) = 0u;
      *(v7 + 10) = 0u;
      *(v7 + 11) = 0u;
      *(v7 + 12) = 0u;
      *(v7 + 13) = 0u;
      *(v7 + 14) = 0u;
      *(v7 + 15) = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 17) = 0u;
      *(v7 + 18) = 0u;
      *(v7 + 19) = 0u;
      *(v7 + 20) = 0u;
      *(v7 + 21) = 0u;
      *(v7 + 22) = 0u;
      *(v7 + 23) = 0u;
      *(v7 + 24) = 0u;
      *(v7 + 25) = 0u;
      HgcPixelFormatConversion_kV4F_WXYZ_input::HgcPixelFormatConversion_kV4F_WXYZ_input(v7);
    }

    goto LABEL_23;
  }

  if (v4 == 33)
  {
    result = *(this + 59);
    if (!result)
    {
      v8 = HGObject::operator new(0x1A0uLL);
      *v8 = 0u;
      *(v8 + 1) = 0u;
      *(v8 + 2) = 0u;
      *(v8 + 3) = 0u;
      *(v8 + 4) = 0u;
      *(v8 + 5) = 0u;
      *(v8 + 6) = 0u;
      *(v8 + 7) = 0u;
      *(v8 + 8) = 0u;
      *(v8 + 9) = 0u;
      *(v8 + 10) = 0u;
      *(v8 + 11) = 0u;
      *(v8 + 12) = 0u;
      *(v8 + 13) = 0u;
      *(v8 + 14) = 0u;
      *(v8 + 15) = 0u;
      *(v8 + 16) = 0u;
      *(v8 + 17) = 0u;
      *(v8 + 18) = 0u;
      *(v8 + 19) = 0u;
      *(v8 + 20) = 0u;
      *(v8 + 21) = 0u;
      *(v8 + 22) = 0u;
      *(v8 + 23) = 0u;
      *(v8 + 24) = 0u;
      *(v8 + 25) = 0u;
      HgcPixelFormatConversion_kV4S_BE_WXYZ_input::HgcPixelFormatConversion_kV4S_BE_WXYZ_input(v8);
    }

    goto LABEL_23;
  }

  if (v4 != 32)
  {
    return this;
  }

  result = *(this + 60);
  if (!result)
  {
    v5 = HGObject::operator new(0x1A0uLL);
    *v5 = 0u;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 4) = 0u;
    *(v5 + 5) = 0u;
    *(v5 + 6) = 0u;
    *(v5 + 7) = 0u;
    *(v5 + 8) = 0u;
    *(v5 + 9) = 0u;
    *(v5 + 10) = 0u;
    *(v5 + 11) = 0u;
    *(v5 + 12) = 0u;
    *(v5 + 13) = 0u;
    *(v5 + 14) = 0u;
    *(v5 + 15) = 0u;
    *(v5 + 16) = 0u;
    *(v5 + 17) = 0u;
    *(v5 + 18) = 0u;
    *(v5 + 19) = 0u;
    *(v5 + 20) = 0u;
    *(v5 + 21) = 0u;
    *(v5 + 22) = 0u;
    *(v5 + 23) = 0u;
    *(v5 + 24) = 0u;
    *(v5 + 25) = 0u;
    HgcPixelFormatConversion_kV4B10Bit_BE_input::HgcPixelFormatConversion_kV4B10Bit_BE_input(v5);
  }

LABEL_23:
  if (result != this)
  {
    v10 = result;
    v11 = (*(*this + 584))(this);
    *(this + 55) = v11;
    *(v11 + 434) = 0;
    (*(*v10 + 120))(v10, 0, v11);
    return v10;
  }

  return result;
}

HGBitmapLoader *HGBitmapLoader::Duplicate(HGBitmap **this)
{
  v2 = HGObject::operator new(0x1F0uLL);
  HGBitmapLoader::HGBitmapLoader(v2, this[51]);
  return v2;
}

void HGCPixelFormatConversion_kV4B_WXYZ_input::~HGCPixelFormatConversion_kV4B_WXYZ_input(HGCPixelFormatConversion_kV4B_WXYZ_input *this)
{
  HgcPixelFormatConversion_kV4B_WXYZ_input::~HgcPixelFormatConversion_kV4B_WXYZ_input(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4B_WXYZ_input::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4B_WXYZ_input::GetROI(HGCPixelFormatConversion_kV4B_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HGCPixelFormatConversion_kV4S_WXYZ_input::~HGCPixelFormatConversion_kV4S_WXYZ_input(HGCPixelFormatConversion_kV4S_WXYZ_input *this)
{
  HgcPixelFormatConversion_kV4S_WXYZ_input::~HgcPixelFormatConversion_kV4S_WXYZ_input(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4S_WXYZ_input::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4S_WXYZ_input::GetROI(HGCPixelFormatConversion_kV4S_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HGCPixelFormatConversion_kV4F_WXYZ_input::~HGCPixelFormatConversion_kV4F_WXYZ_input(HGCPixelFormatConversion_kV4F_WXYZ_input *this)
{
  HgcPixelFormatConversion_kV4F_WXYZ_input::~HgcPixelFormatConversion_kV4F_WXYZ_input(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4F_WXYZ_input::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4F_WXYZ_input::GetROI(HGCPixelFormatConversion_kV4F_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HGCPixelFormatConversion_kV4S_BE_WXYZ_input::~HGCPixelFormatConversion_kV4S_BE_WXYZ_input(HGCPixelFormatConversion_kV4S_BE_WXYZ_input *this)
{
  HgcPixelFormatConversion_kV4S_BE_WXYZ_input::~HgcPixelFormatConversion_kV4S_BE_WXYZ_input(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4S_BE_WXYZ_input::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4S_BE_WXYZ_input::GetROI(HGCPixelFormatConversion_kV4S_BE_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HGCPixelFormatConversion_kV4B10Bit_BE_input::~HGCPixelFormatConversion_kV4B10Bit_BE_input(HGCPixelFormatConversion_kV4B10Bit_BE_input *this)
{
  HgcPixelFormatConversion_kV4B10Bit_BE_input::~HgcPixelFormatConversion_kV4B10Bit_BE_input(this);

  HGObject::operator delete(v1);
}

uint64_t HGCPixelFormatConversion_kV4B10Bit_BE_input::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

uint64_t HGCPixelFormatConversion_kV4B10Bit_BE_input::GetROI(HGCPixelFormatConversion_kV4B10Bit_BE_input *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HGComicSobelOperator::HGComicSobelOperator(HGComicSobelOperator *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872221C8;
  *(v1 + 408) = 1065353216;
  *(v1 + 412) = 0;
  *(v1 + 16) |= 0x600u;
}

void HGComicSobelOperator::~HGComicSobelOperator(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGComicSobelOperator::SetParameter(HGComicSobelOperator *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (*(this + 102) != a3)
      {
        *(this + 102) = a3;
        return 1;
      }

      return 0;
    }

    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = a3 == 1.0;
    if (*(this + 412) == v7)
    {
      return 0;
    }

    *(this + 412) = v7;
    return 1;
  }
}

HGComicSobelOperator *HGComicSobelOperator::GetOutput(HGComicSobelOperator *this, HGRenderer *a2, char *a3)
{
  v4 = 0.0;
  if (*(this + 412))
  {
    v4 = 1.0;
  }

  HGNode::SetParameter(this, 0, v4, 0.0, 0.0, 0.0, a3);
  return this;
}

uint64_t HGComicSobelOperator::RenderTile(HGComicSobelOperator *this, float32x4_t **a2)
{
  v4 = *(this + 102);
  v5 = HGTile::Renderer(a2);
  v6 = (*(*this + 312))(this, v5);
  v7 = *a2;
  v8 = *(a2 + 3) - (*a2 >> 32);
  if (v8 >= 1)
  {
    v9 = (*(a2 + 2) - v7.i32[0]);
    if (v9 >= 1)
    {
      v10 = 0;
      *v11.f32 = vadd_f32(vcvt_f32_s32(v7), 0x3F0000003F000000);
      v11.i64[1] = 0x3F80000000000000;
      v12 = *(this + 412);
      v13 = 1.0 / v4;
      v14 = a2[2];
      v15.i64[0] = 0x3F0000003F000000;
      v15.i64[1] = 0x3F0000003F000000;
      v16.i64[0] = 0xC0000000C0000000;
      v16.i64[1] = 0xC0000000C0000000;
      v17 = v11;
      do
      {
        v18 = v9;
        v19 = v14;
        v20 = v17;
        do
        {
          v31 = vmulq_n_f32(v20, v13);
          v32 = a2[10];
          v33 = *(a2 + 22);
          v34 = vsubq_f32(vaddq_f32(v31, xmmword_2603461C0), v11);
          if (v6)
          {
            v35 = vaddq_s32(vcvtq_s32_f32(v34), vcltzq_f32(v34));
            v36 = vsubq_f32(v34, vcvtq_f32_s32(v35)).u64[0];
            v37 = &v32[v35.i32[0] + v35.i32[1] * v33];
            v38 = vaddq_f32(*v37, vmulq_n_f32(vsubq_f32(v37[1], *v37), v36.f32[0]));
            v39 = vaddq_f32(v38, vmulq_lane_f32(vsubq_f32(vaddq_f32(v37[v33], vmulq_n_f32(vsubq_f32(v37[v33 + 1], v37[v33]), v36.f32[0])), v38), v36, 1));
            if (!v12)
            {
              goto LABEL_12;
            }
          }

          else
          {
            v96 = vaddq_f32(v34, v15);
            v38 = vcvtq_s32_f32(v96);
            v96.i64[0] = vaddq_s32(v38, vcgtq_f32(vcvtq_f32_s32(v38), v96)).u64[0];
            v39 = v32[v96.i32[0] + v96.i32[1] * v33];
            if (!v12)
            {
              goto LABEL_12;
            }
          }

          v38.i32[0] = v39.i32[3];
          if (v39.f32[3] < 0.000001)
          {
            v38.f32[0] = 0.000001;
          }

          v40 = vdivq_f32(v39, vdupq_lane_s32(*v38.f32, 0));
          v40.i32[3] = v39.i32[3];
          v39 = v40;
LABEL_12:
          v41 = vsubq_f32(vaddq_f32(v31, xmmword_2608170C0), v11);
          if (v6)
          {
            v42 = vaddq_s32(vcvtq_s32_f32(v41), vcltzq_f32(v41));
            v43 = vsubq_f32(v41, vcvtq_f32_s32(v42)).u64[0];
            v44 = &v32[v42.i32[0] + v42.i32[1] * v33];
            v45 = vaddq_f32(*v44, vmulq_n_f32(vsubq_f32(v44[1], *v44), v43.f32[0]));
            v46 = vaddq_f32(v45, vmulq_lane_f32(vsubq_f32(vaddq_f32(v44[v33], vmulq_n_f32(vsubq_f32(v44[v33 + 1], v44[v33]), v43.f32[0])), v45), v43, 1));
            if (!v12)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v97 = vaddq_f32(v41, v15);
            v45 = vcvtq_s32_f32(v97);
            v97.i64[0] = vaddq_s32(v45, vcgtq_f32(vcvtq_f32_s32(v45), v97)).u64[0];
            v46 = v32[v97.i32[0] + v97.i32[1] * v33];
            if (!v12)
            {
              goto LABEL_17;
            }
          }

          v45.i32[0] = v46.i32[3];
          if (v46.f32[3] < 0.000001)
          {
            v45.f32[0] = 0.000001;
          }

          v47 = vdivq_f32(v46, vdupq_lane_s32(*v45.f32, 0));
          v47.i32[3] = v46.i32[3];
          v46 = v47;
LABEL_17:
          v48 = vsubq_f32(vaddq_f32(v31, xmmword_2608170D0), v11);
          if (v6)
          {
            v49 = vaddq_s32(vcvtq_s32_f32(v48), vcltzq_f32(v48));
            v50 = vsubq_f32(v48, vcvtq_f32_s32(v49)).u64[0];
            v51 = &v32[v49.i32[0] + v49.i32[1] * v33];
            v52 = vaddq_f32(*v51, vmulq_n_f32(vsubq_f32(v51[1], *v51), v50.f32[0]));
            v53 = vaddq_f32(v52, vmulq_lane_f32(vsubq_f32(vaddq_f32(v51[v33], vmulq_n_f32(vsubq_f32(v51[v33 + 1], v51[v33]), v50.f32[0])), v52), v50, 1));
            if (!v12)
            {
              goto LABEL_22;
            }
          }

          else
          {
            v98 = vaddq_f32(v48, v15);
            v52 = vcvtq_s32_f32(v98);
            v98.i64[0] = vaddq_s32(v52, vcgtq_f32(vcvtq_f32_s32(v52), v98)).u64[0];
            v53 = v32[v98.i32[0] + v98.i32[1] * v33];
            if (!v12)
            {
              goto LABEL_22;
            }
          }

          v52.i32[0] = v53.i32[3];
          if (v53.f32[3] < 0.000001)
          {
            v52.f32[0] = 0.000001;
          }

          v54 = vdivq_f32(v53, vdupq_lane_s32(*v52.f32, 0));
          v54.i32[3] = v53.i32[3];
          v53 = v54;
LABEL_22:
          v55 = vsubq_f32(vaddq_f32(v31, xmmword_2603461B0), v11);
          if (v6)
          {
            v56 = vaddq_s32(vcvtq_s32_f32(v55), vcltzq_f32(v55));
            v57 = vsubq_f32(v55, vcvtq_f32_s32(v56)).u64[0];
            v58 = &v32[v56.i32[0] + v56.i32[1] * v33];
            v59 = vaddq_f32(*v58, vmulq_n_f32(vsubq_f32(v58[1], *v58), v57.f32[0]));
            v60 = vaddq_f32(v59, vmulq_lane_f32(vsubq_f32(vaddq_f32(v58[v33], vmulq_n_f32(vsubq_f32(v58[v33 + 1], v58[v33]), v57.f32[0])), v59), v57, 1));
            if (!v12)
            {
              goto LABEL_27;
            }
          }

          else
          {
            v99 = vaddq_f32(v55, v15);
            v59 = vcvtq_s32_f32(v99);
            v99.i64[0] = vaddq_s32(v59, vcgtq_f32(vcvtq_f32_s32(v59), v99)).u64[0];
            v60 = v32[v99.i32[0] + v99.i32[1] * v33];
            if (!v12)
            {
              goto LABEL_27;
            }
          }

          v59.i32[0] = v60.i32[3];
          if (v60.f32[3] < 0.000001)
          {
            v59.f32[0] = 0.000001;
          }

          v61 = vdivq_f32(v60, vdupq_lane_s32(*v59.f32, 0));
          v61.i32[3] = v60.i32[3];
          v60 = v61;
LABEL_27:
          v62 = vsubq_f32(vaddq_f32(v31, xmmword_2603429B0), v11);
          if (v6)
          {
            v63 = vaddq_s32(vcvtq_s32_f32(v62), vcltzq_f32(v62));
            v64 = vsubq_f32(v62, vcvtq_f32_s32(v63)).u64[0];
            v65 = &v32[v63.i32[0] + v63.i32[1] * v33];
            v66 = vaddq_f32(*v65, vmulq_n_f32(vsubq_f32(v65[1], *v65), v64.f32[0]));
            v67 = vaddq_f32(v66, vmulq_lane_f32(vsubq_f32(vaddq_f32(v65[v33], vmulq_n_f32(vsubq_f32(v65[v33 + 1], v65[v33]), v64.f32[0])), v66), v64, 1));
            if (!v12)
            {
              goto LABEL_32;
            }
          }

          else
          {
            v100 = vaddq_f32(v62, v15);
            v66 = vcvtq_s32_f32(v100);
            v100.i64[0] = vaddq_s32(v66, vcgtq_f32(vcvtq_f32_s32(v66), v100)).u64[0];
            v67 = v32[v100.i32[0] + v100.i32[1] * v33];
            if (!v12)
            {
              goto LABEL_32;
            }
          }

          v66.i32[0] = v67.i32[3];
          if (v67.f32[3] < 0.000001)
          {
            v66.f32[0] = 0.000001;
          }

          v68 = vdivq_f32(v67, vdupq_lane_s32(*v66.f32, 0));
          v68.i32[3] = v67.i32[3];
          v67 = v68;
LABEL_32:
          v69 = vsubq_f32(vaddq_f32(v31, xmmword_260345850), v11);
          if (v6)
          {
            v70 = vaddq_s32(vcvtq_s32_f32(v69), vcltzq_f32(v69));
            v71 = vsubq_f32(v69, vcvtq_f32_s32(v70)).u64[0];
            v72 = &v32[v70.i32[0] + v70.i32[1] * v33];
            v73 = vaddq_f32(*v72, vmulq_n_f32(vsubq_f32(v72[1], *v72), v71.f32[0]));
            v74 = vaddq_f32(v73, vmulq_lane_f32(vsubq_f32(vaddq_f32(v72[v33], vmulq_n_f32(vsubq_f32(v72[v33 + 1], v72[v33]), v71.f32[0])), v73), v71, 1));
            if (!v12)
            {
              goto LABEL_37;
            }
          }

          else
          {
            v101 = vaddq_f32(v69, v15);
            v73 = vcvtq_s32_f32(v101);
            v101.i64[0] = vaddq_s32(v73, vcgtq_f32(vcvtq_f32_s32(v73), v101)).u64[0];
            v74 = v32[v101.i32[0] + v101.i32[1] * v33];
            if (!v12)
            {
              goto LABEL_37;
            }
          }

          v73.i32[0] = v74.i32[3];
          if (v74.f32[3] < 0.000001)
          {
            v73.f32[0] = 0.000001;
          }

          v75 = vdivq_f32(v74, vdupq_lane_s32(*v73.f32, 0));
          v75.i32[3] = v74.i32[3];
          v74 = v75;
LABEL_37:
          v76 = vsubq_f32(vaddq_f32(v31, xmmword_260816F10), v11);
          if (v6)
          {
            v77 = vaddq_s32(vcvtq_s32_f32(v76), vcltzq_f32(v76));
            v78 = vsubq_f32(v76, vcvtq_f32_s32(v77)).u64[0];
            v79 = &v32[v77.i32[0] + v77.i32[1] * v33];
            v80 = vaddq_f32(*v79, vmulq_n_f32(vsubq_f32(v79[1], *v79), v78.f32[0]));
            v81 = vaddq_f32(v80, vmulq_lane_f32(vsubq_f32(vaddq_f32(v79[v33], vmulq_n_f32(vsubq_f32(v79[v33 + 1], v79[v33]), v78.f32[0])), v80), v78, 1));
            if (!v12)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v102 = vaddq_f32(v76, v15);
            v80 = vcvtq_s32_f32(v102);
            v102.i64[0] = vaddq_s32(v80, vcgtq_f32(vcvtq_f32_s32(v80), v102)).u64[0];
            v81 = v32[v102.i32[0] + v102.i32[1] * v33];
            if (!v12)
            {
              goto LABEL_42;
            }
          }

          v80.i32[0] = v81.i32[3];
          if (v81.f32[3] < 0.000001)
          {
            v80.f32[0] = 0.000001;
          }

          v82 = vdivq_f32(v81, vdupq_lane_s32(*v80.f32, 0));
          v82.i32[3] = v81.i32[3];
          v81 = v82;
LABEL_42:
          v83 = vsubq_f32(vaddq_f32(v31, xmmword_2603429C0), v11);
          if (v6)
          {
            v84 = vaddq_s32(vcvtq_s32_f32(v83), vcltzq_f32(v83));
            v85 = vsubq_f32(v83, vcvtq_f32_s32(v84)).u64[0];
            v86 = &v32[v84.i32[0] + v84.i32[1] * v33];
            v87 = vaddq_f32(*v86, vmulq_n_f32(vsubq_f32(v86[1], *v86), v85.f32[0]));
            v88 = vaddq_f32(v87, vmulq_lane_f32(vsubq_f32(vaddq_f32(v86[v33], vmulq_n_f32(vsubq_f32(v86[v33 + 1], v86[v33]), v85.f32[0])), v87), v85, 1));
            if (!v12)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v103 = vaddq_f32(v83, v15);
            v87 = vcvtq_s32_f32(v103);
            v103.i64[0] = vaddq_s32(v87, vcgtq_f32(vcvtq_f32_s32(v87), v103)).u64[0];
            v88 = v32[v103.i32[0] + v103.i32[1] * v33];
            if (!v12)
            {
              goto LABEL_47;
            }
          }

          v87.i32[0] = v88.i32[3];
          if (v88.f32[3] < 0.000001)
          {
            v87.f32[0] = 0.000001;
          }

          v89 = vdivq_f32(v88, vdupq_lane_s32(*v87.f32, 0));
          v89.i32[3] = v88.i32[3];
          v88 = v89;
LABEL_47:
          v90 = vsubq_f32(v31, v11);
          if (v6)
          {
            v91 = vaddq_s32(vcvtq_s32_f32(v90), vcltzq_f32(v90));
            v92 = vsubq_f32(v90, vcvtq_f32_s32(v91)).u64[0];
            v93 = &v32[v91.i32[0] + v91.i32[1] * v33];
            v94 = vaddq_f32(*v93, vmulq_n_f32(vsubq_f32(v93[1], *v93), v92.f32[0]));
            v95 = vaddq_f32(v94, vmulq_lane_f32(vsubq_f32(vaddq_f32(v93[v33], vmulq_n_f32(vsubq_f32(v93[v33 + 1], v93[v33]), v92.f32[0])), v94), v92, 1));
          }

          else
          {
            v104 = vaddq_f32(v90, v15);
            v105 = vcvtq_s32_f32(v104);
            v104.i64[0] = vaddq_s32(v105, vcgtq_f32(vcvtq_f32_s32(v105), v104)).u64[0];
            v95 = v32[v104.i32[0] + v104.i32[1] * v33];
          }

          v21 = vaddq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vmulq_f32(v46, v16), v39), v53), v60), vaddq_f32(v67, v67)), v74);
          v22 = vaddq_f32(v74, vaddq_f32(vaddq_f32(v53, vsubq_f32(vsubq_f32(vmulq_f32(v81, v16), v39), v60)), vaddq_f32(v88, v88)));
          v23 = vmulq_f32(v21, v21);
          *v23.f32 = vadd_f32(*v23.f32, *&vextq_s8(v23, v23, 8uLL));
          v24 = vmulq_f32(v22, v22);
          *v24.i8 = vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
          *v23.f32 = vadd_f32(vzip1_s32(*v23.f32, *v24.i8), vzip2_s32(*v23.f32, *v24.i8));
          v25 = vmulq_f32(v21, v22);
          v23.f32[2] = (vaddv_f32(vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL))) + 1.0) * 0.5;
          v23.i32[3] = v95.i32[3];
          __asm { FMOV            V25.4S, #1.0 }

          *v19++ = vmaxnmq_f32(vminnmq_f32(v23, _Q25), 0);
          v20 = vaddq_f32(v20, xmmword_2603429B0);
          --v18;
        }

        while (v18);
        v17 = vaddq_f32(v17, xmmword_2603429C0);
        v14 += *(a2 + 6);
        ++v10;
      }

      while (v10 != v8);
    }
  }

  return 0;
}

uint64_t HGComicSobelOperator::GetDOD(HGComicSobelOperator *this, HGRenderer *a2, int a3, HGRect a4)
{
  v13 = a4;
  if (a3)
  {
    return 0;
  }

  if (HGRect::IsInfinite(&v13))
  {
    return *&v13.var0;
  }

  v6 = *(this + 102);
  HGTransform::HGTransform(v12);
  HGTransform::Scale(v12, v6, v6, 1.0);
  v7 = *&v13.var0;
  v8 = *&v13.var2;
  v10 = HGTransformUtils::MinW(v9);
  *&v14.var0 = v8;
  DOD = HGTransformUtils::GetDOD(v12, v7, v14, 0.5, v10);
  HGTransform::~HGTransform(v12);
  return DOD;
}

uint64_t HGComicSobelOperator::GetROI(HGComicSobelOperator *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return HGRectNull;
  }

  v5 = *&a4.var0;
  v6 = *&a4.var2;
  v7 = 1.0 / *(this + 102);
  HGTransform::HGTransform(v17);
  HGTransform::Scale(v17, v7, v7, 1.0);
  *&v18.var0 = 0;
  *&v18.var2 = 0;
  v9 = HGTransformUtils::MinW(v8);
  *&v21.var0 = v6;
  *&v18.var0 = HGTransformUtils::GetROI(v17, v5, v21, 0.5, v9);
  *&v18.var2 = v10;
  v11 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  v13 = v12;
  *&v19.var0 = v11;
  *&v19.var2 = v13;
  HGRect::Grow(&v18, v19);
  v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  v16 = v15;
  *&v20.var0 = v14;
  *&v20.var2 = v16;
  HGRect::Grow(&v18, v20);
  HGTransform::~HGTransform(v17);
  return *&v18.var0;
}

const char *HGComicSobelOperator::GetProgram(HGComicSobelOperator *this, HGRenderer *a2)
{
  if (HGRenderer::GetTarget(a2, 393216) > 0x60B0F)
  {
    return "//Metal1.0     \n//LEN=0000000ac6\nstatic half3 texelFetch(texture2d<half> inTex, sampler samp, const float2 uv, const float unpremultiplyAlpha)\n{\n    half4 texel = inTex.sample(samp, uv);\n    \n    if (unpremultiplyAlpha)\n        texel.rgb /= max(texel.a, 1e-6h);\n    \n    return texel.rgb;\n}\n\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    const float2 d {1.0f, 1.0f};\n    const float2 uv = frag._texCoord0.xy;\n    const float unpremultiplyAlpha = hg_Params[0].x;\n    \n    const float2 NegNeg     = uv + float2(-d.x, -d.y);\n    const float2 NegZero    = uv + float2(-d.x,  0.0f);\n    const float2 NegPos     = uv + float2(-d.x, d.y);\n    const float2 PosNeg     = uv + float2(d.x, -d.y);\n    const float2 PosZero    = uv + float2(d.x, 0.0f);\n    const float2 PosPos     = uv + float2(d.x, d.y);\n    const float2 ZeroNeg    = uv + float2(0.0f, -d.y);\n    const float2 ZeroPos    = uv + float2(0.0f, d.y);\n\n    const half3 Gx =\n          (-1.0h * texelFetch(hg_Texture0, hg_Sampler0, NegNeg, unpremultiplyAlpha) +\n           -2.0h * texelFetch(hg_Texture0, hg_Sampler0, NegZero, unpremultiplyAlpha) +\n           -1.0h * texelFetch(hg_Texture0, hg_Sampler0, NegPos, unpremultiplyAlpha) +\n           +1.0h * texelFetch(hg_Texture0, hg_Sampler0, PosNeg, unpremultiplyAlpha) +\n           +2.0h * texelFetch(hg_Texture0, hg_Sampler0, PosZero, unpremultiplyAlpha) +\n           +1.0h * texelFetch(hg_Texture0, hg_Sampler0, PosPos, unpremultiplyAlpha));\n\n    const half3 Gy =\n          (-1.0h * texelFetch(hg_Texture0, hg_Sampler0, NegNeg, unpremultiplyAlpha) +\n           -2.0h * texelFetch(hg_Texture0, hg_Sampler0, ZeroNeg, unpremultiplyAlpha) +\n           -1.0h * texelFetch(hg_Texture0, hg_Sampler0, PosNeg, unpremultiplyAlpha) +\n           +1.0h * texelFetch(hg_Texture0, hg_Sampler0, NegPos, unpremultiplyAlpha) +\n           +2.0h * texelFetch(hg_Texture0, hg_Sampler0, ZeroPos, unpremultiplyAlpha) +\n           +1.0h * texelFetch(hg_Texture0, hg_Sampler0, PosPos, unpremultiplyAlpha));\n    \n    FragmentOut out {float4(dot(Gx, Gx), \n                            dot(Gy, Gy), \n                            0.5h * (1.0h + dot(Gx, Gy)),\n                            hg_Texture0.sample(hg_Sampler0, uv).a)};\n\n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    out.color0 = clamp(out.color0, 0.0f, 1.0f);\n\n    return out;\n}\n//MD5=eef67a33:7b0e8e00:aeded09b:2240fcf5\n//SIG=00000000:00000000:00000000:00000001:0018:0001:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
  }

  if ((*(*a2 + 128))(a2, 46))
  {
    return "//GLfs1.0      \n//LEN=0000000a47\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp\n\nuniform sampler2DRect inputTexture;\nuniform highp vec4 hg_ProgramLocal0; // {.x == unpremultiply alpha}\n\nhighp vec3 texelFetch(sampler2DRect inTex, highp vec2 uv, lowp float unpremultiplyAlpha)\n{\n    vec4 texel = texture2DRect(inTex, uv);\n    \n    // Select for alpha-premultiplication (or) depending on wether the flag (unpremultiplyAlpha)\n    // is set (1.0) or not (0.0).\n    return  (texel.rgb /= max(texel.a, 1e-6)) * unpremultiplyAlpha +\n            texel.rgb * (1.0 - unpremultiplyAlpha);\n}\n\nvoid main()\n{\n    highp vec2 d = vec2(1.0, 1.0);\n    highp vec2 uv = gl_TexCoord[0].xy;\n    lowp float unpremultiplyAlpha = hg_ProgramLocal0.x;\n    \n    vec2 NegNeg     = uv + vec2(-d.x, -d.y);\n    vec2 NegZero    = uv + vec2(-d.x,  0.0);\n    vec2 NegPos     = uv + vec2(-d.x, d.y);\n    vec2 PosNeg     = uv + vec2(d.x, -d.y);\n    vec2 PosZero    = uv + vec2(d.x, 0.0);\n    vec2 PosPos     = uv + vec2(d.x, d.y);\n    vec2 ZeroNeg    = uv + vec2(0.0, -d.y);\n    vec2 ZeroPos    = uv + vec2(0.0, d.y);\n\n    highp vec3 Gx = (\n               -1.0 * texelFetch(inputTexture, NegNeg, unpremultiplyAlpha) +\n               -2.0 * texelFetch(inputTexture, NegZero, unpremultiplyAlpha) +\n               -1.0 * texelFetch(inputTexture, NegPos, unpremultiplyAlpha) +\n               +1.0 * texelFetch(inputTexture, PosNeg, unpremultiplyAlpha) +\n               +2.0 * texelFetch(inputTexture, PosZero, unpremultiplyAlpha) +\n               +1.0 * texelFetch(inputTexture, PosPos, unpremultiplyAlpha))  ;\n\n    highp vec3 Gy =(\n                -1.0 * texelFetch(inputTexture, NegNeg, unpremultiplyAlpha) +\n                -2.0 * texelFetch(inputTexture, ZeroNeg, unpremultiplyAlpha) +\n                -1.0 * texelFetch(inputTexture, PosNeg, unpremultiplyAlpha) +\n                +1.0 * texelFetch(inputTexture, NegPos, unpremultiplyAlpha) +\n                +2.0 * texelFetch(inputTexture, ZeroPos, unpremultiplyAlpha) +\n                +1.0 * texelFetch(inputTexture, PosPos, unpremultiplyAlpha))  ;\n    \n    highp vec4 result = vec4(dot(Gx, Gx), \n                             dot(Gy, Gy), \n                             0.5 * (1.0 + dot(Gx, Gy)),\n                             texture2DRect(inputTexture, uv).a);\n    \n    // Ensure the result is clamped [0..1]; this is the default behavior of the original\n    // comic effect - this was implicit due to non-float, 8-bit, intermediate buffers.\n    gl_FragColor = clamp(result, 0.0, 1.0);\n}\n//MD5=776e3a33:fba055f3:576fbb1b:bf6537a1\n//SIG=00000000:00000000:00000000:00000000:0030:0001:0000:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }

  return 0;
}

uint64_t HGComicSobelOperator::BindTexture(HGComicSobelOperator *this, HGHandler *a2, uint64_t a3)
{
  if (a3)
  {
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
  }

  else
  {
    v5 = 1.0 / *(this + 102);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    (*(*a2 + 104))(a2, v5, v5, 1.0);
  }

  (*(*a2 + 72))(a2, a3, 0);
  (*(*a2 + 56))(a2, 0);
  (*(*a2 + 48))(a2, 1, 1);
  return 0;
}

void HGLodFilter::HGLodFilter(HGLodFilter *this)
{
  HGMipmapLevel::HGMipmapLevel(this);
  *v1 = &unk_287222430;
  operator new();
}

void HGLodFilter::~HGLodFilter(HGLodFilter *this)
{
  *this = &unk_287222430;
  v2 = *(this + 54);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 55);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(this + 52);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  v5 = *(this + 53);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = *(this + 72);
  if (v6)
  {
    MEMORY[0x2666E9F00](v6, 0x1000C40FA0F61DDLL);
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  HGLodFilter::~HGLodFilter(this);

  HGObject::operator delete(v1);
}

uint64_t HGLodFilter::SetInput(HGNode *this, int a2, HGNode *a3)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return HGNode::SetInput(this, 0, a3);
  }
}

uint64_t HGLodFilter::SetLevel(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  *(a1 + 408) = a6;
  *(a1 + 412) = a7;
  if (!a7)
  {
    result = 0;
    *(a1 + 456) = 0;
    *(a1 + 488) = 0;
    return result;
  }

  *(a1 + 484) = 0;
  v9 = (a1 + 488);
  *(a1 + 516) = 0;
  v10 = (a1 + 552);
  *(a1 + 552) = a2;
  *(a1 + 560) = a3;
  if (a7 != 3)
  {
    *(a1 + 520) = HGRectMake4i(0x80000000, 0x80000000, 0x7FFFFFFFu, 0x7FFFFFFFu);
    *(a1 + 528) = v25;
    v26 = *(a1 + 520);
    *(a1 + 536) = v26;
    *v10 = v26;
    *(a1 + 488) = a7;
    *(a1 + 456) = a7;
    *(a1 + 492) = a6;
    *(a1 + 460) = a6;
    *(a1 + 496) = 1;
    *(a1 + 464) = 1;
    *(a1 + 508) = 0x100000000;
    *(a1 + 476) = 0x100000000;
    goto LABEL_16;
  }

  v11 = HIDWORD(a3) - HIDWORD(a2);
  v12 = a3 - a2;
  if ((a3 - a2) < 2)
  {
    v30 = 0;
    *(a1 + 520) = a2;
    *(a1 + 536) = a2;
    *(a1 + 528) = a3;
    *(a1 + 544) = a3;
    *(a1 + 464) = 0;
    *(a1 + 456) = 0;
    v31 = 0uLL;
    v32 = 0uLL;
    *(a1 + 476) = 0;
    *(a1 + 484) = a2;
    v33 = 1;
    *(a1 + 480) = 1;
    if (v11 >= 2)
    {
      goto LABEL_46;
    }

LABEL_35:
    v36 = 0;
    *(a1 + 524) = HIDWORD(a2);
    *(a1 + 540) = HIDWORD(a2);
    *(a1 + 532) = HIDWORD(a3);
    *(a1 + 548) = HIDWORD(a3);
    *(a1 + 496) = 0;
    *(a1 + 488) = 0;
    v37 = 0uLL;
    v38 = 0uLL;
    *(a1 + 508) = 0;
    *(a1 + 516) = HIDWORD(a2);
    *(a1 + 512) = 1;
    if (v30)
    {
      goto LABEL_71;
    }

    goto LABEL_60;
  }

  v13 = 1;
  if (a6 >= 2)
  {
    do
    {
      v14 = __CFADD__(v12, 1);
      v12 = (v12 + 1) >> 1;
      if (v14)
      {
        v12 = 0x80000000;
      }

      ++v13;
    }

    while (v12 >= 2 && v13 < a6);
  }

  v16 = v13 - (v13 == a6);
  v17 = a2;
  v18 = 1 << v16;
  if ((a2 & 0x80000000) == 0)
  {
    v19 = rint(trunc(v17 / v18));
    *(a1 + 536) = v19;
    v20 = v12 + v19;
    *(a1 + 544) = v12 + v19;
    if (v12 != 1)
    {
      v21 = v16 + 1;
      v22 = rint(trunc(v17 / (1 << v21)));
      goto LABEL_39;
    }

    goto LABEL_34;
  }

  v34 = (v18 + 0x7FFFFFFF);
  v35 = rint(trunc((v17 - (v18 - 1)) / v18));
  LODWORD(v19) = 0x80000000 / v18;
  if (v34 <= v17)
  {
    LODWORD(v19) = v35;
  }

  *(a1 + 536) = v19;
  v20 = v19 + v12;
  *(a1 + 544) = v19 + v12;
  if (v12 == 1)
  {
LABEL_34:
    v30 = 0;
    *(a1 + 520) = v19;
    *(a1 + 528) = v20;
    *(a1 + 456) = 0;
    *(a1 + 464) = 0;
    v31 = 0uLL;
    v32 = 0uLL;
    *(a1 + 460) = v16;
    *(a1 + 476) = 0;
    *(a1 + 484) = v19;
    v33 = 1;
    *(a1 + 480) = 1;
    if (v11 >= 2)
    {
      goto LABEL_46;
    }

    goto LABEL_35;
  }

  v21 = v16 + 1;
  v39 = rint(trunc((v17 - ((1 << v21) - 1)) / (1 << v21)));
  LODWORD(v22) = 0x80000000 / (1 << v21);
  if (((1 << v21) + 0x7FFFFFFF) <= v17)
  {
    LODWORD(v22) = v39;
  }

LABEL_39:
  *(a1 + 520) = v22;
  if (v12 == -1)
  {
    v40 = 0x80000000;
  }

  else
  {
    v40 = (v12 + 1) >> 1;
  }

  *(a1 + 528) = v22 + v40;
  v30 = v12 & 1;
  if (v12)
  {
    v41 = 1.0 / (v40 + v40);
    *&v42 = v41;
    HIDWORD(v31) = 0;
    *&v31 = v42;
    LODWORD(v32) = 0;
    *(&v31 + 2) = -*&v42;
    v43 = v41 * (v40 + 1);
    *&v41 = v41 * (v40 - 1);
    *(&v32 + 1) = v43;
    *(&v32 + 1) = LODWORD(v41);
    v44 = 3;
  }

  else
  {
    v44 = 2;
    v31 = 0uLL;
    v32 = 0uLL;
  }

  *(a1 + 456) = v44;
  *(a1 + 464) = 1;
  *(a1 + 460) = v21;
  *(a1 + 476) = v19 - 2 * v22;
  *(a1 + 484) = v22;
  v33 = 1;
  *(a1 + 480) = 1;
  if (v11 < 2)
  {
    goto LABEL_35;
  }

LABEL_46:
  if (a6 >= 2)
  {
    do
    {
      v14 = __CFADD__(v11, 1);
      v11 = (v11 + 1) >> 1;
      if (v14)
      {
        v11 = 0x80000000;
      }

      ++v33;
    }

    while (v11 >= 2 && v33 < a6);
  }

  v46 = v33 - (v33 == a6);
  v47 = SHIDWORD(a2);
  v48 = 1 << v46;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v49 = rint(trunc(v47 / v48));
    *(a1 + 540) = v49;
    v50 = v11 + v49;
    *(a1 + 548) = v11 + v49;
    if (v11 != 1)
    {
      v51 = v46 + 1;
      v52 = rint(trunc(v47 / (1 << v51)));
      goto LABEL_64;
    }

LABEL_59:
    v36 = 0;
    *(a1 + 524) = v49;
    *(a1 + 532) = v50;
    *(a1 + 488) = 0;
    *(a1 + 496) = 0;
    v37 = 0uLL;
    v38 = 0uLL;
    *(a1 + 492) = v46;
    *(a1 + 508) = 0;
    *(a1 + 516) = v49;
    *(a1 + 512) = 1;
    if (v30)
    {
      goto LABEL_71;
    }

    goto LABEL_60;
  }

  v53 = (v48 + 0x7FFFFFFF);
  v54 = rint(trunc((v47 - (v48 - 1)) / v48));
  LODWORD(v49) = 0x80000000 / v48;
  if (v53 <= v47)
  {
    LODWORD(v49) = v54;
  }

  *(a1 + 540) = v49;
  v50 = v49 + v11;
  *(a1 + 548) = v49 + v11;
  if (v11 == 1)
  {
    goto LABEL_59;
  }

  v51 = v46 + 1;
  v52 = rint(trunc((v47 - ((1 << v51) - 1)) / (1 << v51)));
  if (((1 << v51) + 0x7FFFFFFF) > v47)
  {
    LODWORD(v52) = 0x80000000 / (1 << v51);
  }

LABEL_64:
  *(a1 + 524) = v52;
  if (v11 == -1)
  {
    v55 = 0x80000000;
  }

  else
  {
    v55 = (v11 + 1) >> 1;
  }

  *(a1 + 532) = v52 + v55;
  v36 = v11 & 1;
  if (v11)
  {
    v56 = 1.0 / (v55 + v55);
    *&v57 = v56;
    HIDWORD(v37) = 0;
    *&v37 = v57;
    LODWORD(v38) = 0;
    *(&v37 + 2) = -*&v57;
    v58 = v56 * (v55 + 1);
    *&v56 = v56 * (v55 - 1);
    *(&v38 + 1) = v58;
    *(&v38 + 1) = LODWORD(v56);
    v59 = 3;
  }

  else
  {
    v59 = 2;
    v37 = 0uLL;
    v38 = 0uLL;
  }

  *(a1 + 488) = v59;
  *(a1 + 496) = 1;
  *(a1 + 492) = v51;
  *(a1 + 508) = v49 - 2 * v52;
  *(a1 + 516) = v52;
  *(a1 + 512) = 1;
  if (v30)
  {
LABEL_71:
    if (v36)
    {
      v60 = *(a1 + 416);
      if (!v60)
      {
        v61 = HGObject::operator new(0x250uLL);
        HGMipmapLevel::HGMipmapLevel(v61);
        *v61 = &unk_287222430;
        operator new();
      }

      v62 = *(a1 + 472);
      *(v60 + 456) = *(a1 + 456);
      *(v60 + 472) = v62;
      *(*(a1 + 416) + 552) = *v10;
      *(*(a1 + 416) + 536) = *(a1 + 536);
      v63 = *(a1 + 416);
      *(v63 + 520) = *(a1 + 520);
      *(v63 + 528) = *(a1 + 528);
      *(v63 + 524) = *(a1 + 540);
      *(v63 + 532) = *(a1 + 548);
      **(v63 + 576) = v31;
      *(*(*(a1 + 416) + 576) + 32) = v32;
      v64 = *(a1 + 416);
      LODWORD(v63) = *(a1 + 492) - 1;
      *(v64 + 488) = 0;
      *(v64 + 492) = v63;
      *(v64 + 496) = 0x3F00000000000000;
      *(v64 + 504) = xmmword_26038F230;
      v65 = *(a1 + 424);
      if (!v65)
      {
        v66 = HGObject::operator new(0x250uLL);
        HGMipmapLevel::HGMipmapLevel(v66);
        *v66 = &unk_287222430;
        operator new();
      }

      v67 = *(a1 + 460);
      *(v65 + 456) = 0;
      *(v65 + 460) = v67;
      *(v65 + 464) = 0x3F00000000000000;
      *(v65 + 472) = xmmword_26038F230;
      v68 = *(a1 + 504);
      *(v65 + 488) = *v9;
      *(v65 + 504) = v68;
      *(*(a1 + 424) + 552) = *v10;
      *(*(a1 + 424) + 536) = *(*(a1 + 416) + 520);
      *(*(a1 + 424) + 520) = *(a1 + 520);
      **(*(a1 + 424) + 576) = v37;
      *(*(*(a1 + 424) + 576) + 32) = v38;
    }

    else
    {
      **(a1 + 576) = v31;
      *(*(a1 + 576) + 32) = v32;
    }

    goto LABEL_16;
  }

LABEL_60:
  if (v36)
  {
    **(a1 + 576) = v37;
    *(*(a1 + 576) + 32) = v38;
  }

LABEL_16:
  *(a1 + 472) = 1 << *(a1 + 464);
  *(a1 + 504) = 1 << *(a1 + 496);
  v27 = *(a1 + 456);
  if ((v27 == 4 || *v9 == 4) && !*(a1 + 432))
  {
    v28 = HGObject::operator new(0x220uLL);
    HGBlur::HGBlur(v28);
    *(a1 + 432) = v28;
    *(v28 + 106) = 1;
    v27 = *(a1 + 456);
    if (v27 == 5)
    {
      goto LABEL_24;
    }
  }

  else if (v27 == 5)
  {
    goto LABEL_24;
  }

  if ((v27 & 0xFFFFFFFE) == 6 || (*v9 - 5) <= 2)
  {
LABEL_24:
    if (!*(a1 + 440))
    {
      v29 = HGObject::operator new(0x220uLL);
      HGConvolution::HGConvolution(v29);
      *(a1 + 440) = v29;
      v27 = *(a1 + 456);
    }
  }

  if (*v9 | v27)
  {
    return (a6 - 1);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

void sub_25FCF36B8(_Unwind_Exception *a1)
{
  HGMipmapLevel::~HGMipmapLevel(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

uint64_t HGLodFilter::SetParameter(HGLodFilter *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(this + 116) != a3)
  {
    *(this + 116) = a3;
    v8 = 1;
    v9 = a4;
    if (*(this + 124) == a4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 0;
  v9 = a4;
  if (*(this + 124) != a4)
  {
LABEL_7:
    *(this + 124) = v9;
    v8 = 1;
  }

LABEL_8:
  if (*(this + 117) != a5)
  {
    *(this + 117) = a5;
    if (*(this + 125) == a6)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (*(this + 125) != a6)
  {
LABEL_12:
    *(this + 125) = a6;
LABEL_13:
    HGNode::ClearBits(this, a2, a7);
    return 1;
  }

  if (v8)
  {
    goto LABEL_13;
  }

  return 0;
}

HGNode *HGLodFilter::GetOutput(HGLodFilter *this, HGRenderer *a2)
{
  v4 = (*(*this + 128))(this, 0);
  v5 = *(this + 114);
  if (!v5)
  {
    v6 = *(this + 122);
    if (!v6)
    {
      v43 = *(this + 71);
      result = HGRenderer::GetInput(a2, this, 0);
      if (!v43)
      {
        return result;
      }

      (*(*v43 + 120))(v43, 0, result);
      return *(this + 71);
    }

LABEL_5:
    if (v6 == 4)
    {
      goto LABEL_6;
    }

    if ((v5 - 5) < 3 || (v6 - 5) <= 2)
    {
      (*(**(this + 55) + 120))(*(this + 55), 0, v4);
      v27 = (1 << *(this + 116));
      v28 = (1 << *(this + 124));
      v29 = atomic_load(HGLogger::_enabled);
      if (v29)
      {
        HGLogger::log("lodfilter", 1, "scalex = %.3f, scaley = %.3f, level = %d\n", v25, v26, v27, v28, *(this + 115));
      }

      HGLinearFilter2D::HGLinearFilter2D(v47);
      HGLinearFilter2D::HGLinearFilter2D(v46);
      v30 = *(this + 114);
      if (v30 == 7)
      {
        v31 = 2;
      }

      else
      {
        v31 = v30 == 6;
      }

      v32 = *(this + 122);
      if (v32 == 7)
      {
        v33 = 2;
      }

      else
      {
        v33 = v32 == 6;
      }

      *(this + 112) = HGPrefilterUtils::GetPrefilterRadius(v31, *(this + 117), v27);
      *(this + 113) = HGPrefilterUtils::GetPrefilterRadius(v33, *(this + 125), v28);
      HGPrefilterUtils::GetSeparablePrefilter(v47, v31, 0, *(this + 117), v27, 1.0 / v27);
      HGPrefilterUtils::GetSeparablePrefilter(v46, v33, 1, *(this + 125), v28, 1.0 / v28);
      HGConvolution::SeparableFilter2D(*(this + 55), v47, v46);
      v34 = *(this + 116);
      if (v34 <= 0 && *(this + 124) < 1)
      {
        v45 = *(this + 71);
        if (!v45)
        {
          v35 = this + 440;
          goto LABEL_39;
        }

        (*(*v45 + 120))(v45, 0, *(this + 55));
      }

      else
      {
        v35 = this + 424;
        v36 = *(this + 53);
        if (!v36)
        {
          v37 = HGObject::operator new(0x250uLL);
          HGMipmapLevel::HGMipmapLevel(v37);
          *v37 = &unk_287222430;
          operator new();
        }

        v36[114] = v34 != 0;
        v36[122] = *(this + 124) != 0;
        v36[116] = v34;
        v36[124] = *(this + 124);
        v38 = *(this + 71);
        if (!v38)
        {
          goto LABEL_39;
        }

        (*(*v38 + 120))(v38, 0);
      }

      v35 = this + 568;
LABEL_39:
      v39 = *v35;
      HGLinearFilter2D::~HGLinearFilter2D(v46);
      HGLinearFilter2D::~HGLinearFilter2D(v47);
      return v39;
    }

    if (v5 == 3 && v6 == 3)
    {
      (*(**(this + 52) + 120))(*(this + 52), 0, v4);
      (*(**(this + 53) + 120))(*(this + 53), 0, *(this + 52));
      v42 = *(this + 71);
      result = *(this + 53);
      if (!v42)
      {
        return result;
      }

      (*(*v42 + 120))(*(this + 71), 0, *(this + 53));
    }

    else
    {
      *(this + 118) = 1 << *(this + 116);
      *(this + 126) = 1 << *(this + 124);
      v44 = *(this + 71);
      if (!v44)
      {
        return this;
      }

      (*(*v44 + 120))(v44, 0, this);
    }

    return *(this + 71);
  }

  if (v5 != 4)
  {
    v6 = *(this + 122);
    goto LABEL_5;
  }

LABEL_6:
  v7 = *(this + 116);
  v8 = *(this + 124);
  v9 = 1.0;
  (*(**(this + 54) + 120))(*(this + 54), 0, v4);
  v10 = 1.0;
  if (*(this + 114) == 4)
  {
    v11 = 1.0 / (1 << v7);
    v10 = 0.0;
    if (v11 < 1.0)
    {
      v12 = v11 * 3.14159265;
      v10 = (sqrtf(logf(*(this + 117)) * -2.0) * 3.0) / v12;
    }

    *(this + 112) = v10;
  }

  if (*(this + 122) == 4)
  {
    v13 = 1.0 / (1 << v8);
    v9 = 0.0;
    if (v13 < 1.0)
    {
      v14 = v13 * 3.14159265;
      v9 = (sqrtf(logf(*(this + 125)) * -2.0) * 3.0) / v14;
    }

    *(this + 113) = v9;
  }

  (*(**(this + 54) + 96))(*(this + 54), 0, v10, v9, 0.0, 0.0);
  HGBlur::GetDecimation(*(this + 54), v10);
  v16 = v15;
  v18.n128_f32[0] = HGBlur::GetDecimation(*(this + 54), v9);
  v19 = *(this + 116);
  if (v16 >= v19 && v17 >= *(this + 124))
  {
    v40 = this + 432;
    v41 = *(this + 71);
    if (v41)
    {
      (*(*v41 + 120))(v41, 0, *v40, v18.n128_f32[0]);
      v40 = this + 568;
    }

    return *v40;
  }

  else
  {
    v20 = *(this + 53);
    if (!v20)
    {
      v21 = HGObject::operator new(0x250uLL);
      HGMipmapLevel::HGMipmapLevel(v21);
      *v21 = &unk_287222430;
      operator new();
    }

    v20[114] = v19 != 0;
    v20[122] = *(this + 124) != 0;
    v20[116] = v19 - v16;
    v20[124] = *(this + 124) - v17;
    v22 = *(this + 71);
    if (v22)
    {
      (*(*v22 + 120))(v22, 0, v18);
      return *(this + 71);
    }

    else
    {
      return *(this + 53);
    }
  }
}

void sub_25FCF401C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17)
{
  HGMipmapLevel::~HGMipmapLevel(v17);
  HGObject::operator delete(v17);
  HGLinearFilter2D::~HGLinearFilter2D(&a13);
  HGLinearFilter2D::~HGLinearFilter2D(&a17);
  _Unwind_Resume(a1);
}

void sub_25FCF4050(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  HGLinearFilter2D::~HGLinearFilter2D(va);
  _Unwind_Resume(a1);
}

void sub_25FCF4064(_Unwind_Exception *a1)
{
  HGMipmapLevel::~HGMipmapLevel(v1);
  HGObject::operator delete(v3);
  _Unwind_Resume(a1);
}

void sub_25FCF4090(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  HGLinearFilter2D::~HGLinearFilter2D(va);
  HGLinearFilter2D::~HGLinearFilter2D(va1);
  _Unwind_Resume(a1);
}

unint64_t HGLodFilter::GetRect(HGLodFilter *this, HGRect a2, int a3, int a4)
{
  v4 = *&a2.var2;
  if (!a3)
  {
    v9 = HGRectFloat(a2.var0);
    v13 = *(this + 114);
    if ((v13 - 4) >= 4)
    {
      if (!v13)
      {
        goto LABEL_26;
      }

      v14 = 0.0;
      if (v13 == 3)
      {
        v14 = 1.0;
      }
    }

    else
    {
      v14 = *(this + 112);
    }

    v28 = *(this + 118);
    v29 = *(this + 119);
    v9 = ((v9 * v28) + v29) - v14;
    v11 = v14 + ((v11 * v28) + v29);
LABEL_26:
    v30 = *(this + 122);
    if ((v30 - 4) >= 4)
    {
      if (!v30)
      {
LABEL_50:
        v50 = HGRectIntegral(v30, v9, v10, v11, v12);
        goto LABEL_51;
      }

      v31 = 0.0;
      if (v30 == 3)
      {
        v31 = 1.0;
      }
    }

    else
    {
      v31 = *(this + 113);
    }

    v51 = *(this + 126);
    v52 = *(this + 127);
    v10 = ((v10 * v51) + v52) - v31;
    v12 = v31 + ((v12 * v51) + v52);
    goto LABEL_50;
  }

  var1 = a2.var1;
  v7 = *(this + 114);
  if ((v7 - 4) >= 4)
  {
    if (!v7)
    {
      goto LABEL_20;
    }

    v8 = 0.0;
    if (v7 == 3)
    {
      v8 = 1.0;
    }
  }

  else
  {
    v8 = *(this + 112);
  }

  v15 = *(this + 119);
  v16 = a2.var0 - v15 - v8;
  v17 = *(this + 118);
  v18 = v17;
  v19 = rint(trunc(v16 / v17));
  v20 = (v17 - 1);
  v21 = rint(trunc((v16 - v20) / v17));
  if (v16 < (v17 + 0x7FFFFFFF))
  {
    LODWORD(v21) = 0x80000000 / v17;
  }

  if (v16 < 0.0)
  {
    a2.var0 = v21;
  }

  else
  {
    a2.var0 = v19;
  }

  v22 = v8 + a2.var2 - v15;
  v23 = (0x80000000 - v17);
  v24 = rint(trunc((v22 + v20) / v18));
  LODWORD(v25) = 0x7FFFFFFF / v17;
  if (v22 <= v23)
  {
    LODWORD(v25) = v24;
  }

  if (v22 < 0.0)
  {
    v25 = (v22 / v18);
  }

  else
  {
    v25 = v25;
  }

  v4 = *&a2.var2 & 0xFFFFFFFF00000000 | v25;
LABEL_20:
  v26 = *(this + 122);
  if ((v26 - 4) >= 4)
  {
    if (!v26)
    {
      goto LABEL_41;
    }

    v27 = 0.0;
    if (v26 == 3)
    {
      v27 = 1.0;
    }
  }

  else
  {
    v27 = *(this + 113);
  }

  v32 = *(this + 127);
  v33 = a2.var1 - v32 - v27;
  v34 = *(this + 126);
  v35 = v34;
  var1 = rint(trunc(v33 / v34));
  v36 = (v34 - 1);
  v37 = rint(trunc((v33 - v36) / v34));
  if (v33 < (v34 + 0x7FFFFFFF))
  {
    LODWORD(v37) = 0x80000000 / v34;
  }

  if (v33 < 0.0)
  {
    var1 = v37;
  }

  else
  {
    var1 = var1;
  }

  v38 = v27 + SHIDWORD(v4) - v32;
  v39 = (0x80000000 - v34);
  v40 = rint(trunc((v38 + v36) / v35));
  v41 = 0x7FFFFFFF / v34;
  if (v38 <= v39)
  {
    v41 = v40;
  }

  if (v38 < 0.0)
  {
    v41 = (v38 / v35);
  }

  v4 = v4 | (v41 << 32);
LABEL_41:
  if (a4 >= 2)
  {
    v42 = a2.var0 | (var1 << 32);
    v43 = *(this + 65);
    v44 = *(this + 66);
    v45 = HGRectMake4i(1 - a4, 1 - a4, a4 - 1, a4 - 1);
    v46 = HGRectGrow(v43, v44, v45);
    v48 = v47;
    v49 = v42;
LABEL_45:
    v50 = HGRectIntersection(v49, v4, v46, v48);
LABEL_51:
    var1 = HIDWORD(v50);
    a2.var0 = v50;
    return a2.var0 | (var1 << 32);
  }

  if (a4 == 1)
  {
    v49 = a2.var0 | (var1 << 32);
    v46 = *(this + 65);
    v48 = *(this + 66);
    goto LABEL_45;
  }

  return a2.var0 | (var1 << 32);
}

unint64_t HGLodFilter::GetDOD(HGLodFilter *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return HGLodFilter::GetRect(this, a4, 1, 1);
  }
}

uint64_t HGLodFilter::GetROI(HGLodFilter *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v6 = HGRectFloat(a4.var0);
  v10 = *(this + 114);
  if ((v10 - 4) >= 4)
  {
    if (!v10)
    {
      goto LABEL_9;
    }

    v11 = 0.0;
    if (v10 == 3)
    {
      v11 = 1.0;
    }
  }

  else
  {
    v11 = *(this + 112);
  }

  v12 = *(this + 118);
  v13 = *(this + 119);
  v6 = ((v6 * v12) + v13) - v11;
  v8 = v11 + ((v8 * v12) + v13);
LABEL_9:
  v14 = *(this + 122);
  if ((v14 - 4) < 4)
  {
    v15 = *(this + 113);
LABEL_14:
    v16 = *(this + 126);
    v17 = *(this + 127);
    v7 = ((v7 * v16) + v17) - v15;
    v9 = v15 + ((v9 * v16) + v17);
    return HGRectIntegral(v14, v6, v7, v8, v9);
  }

  if (v14)
  {
    v15 = 0.0;
    if (v14 == 3)
    {
      v15 = 1.0;
    }

    goto LABEL_14;
  }

  return HGRectIntegral(v14, v6, v7, v8, v9);
}

const char *HGLodFilter::GetProgram(HGLodFilter *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  v4 = *(this + 114) + 8 * *(this + 122);
  if (Target < 0x60B10)
  {
    if (v4 > 23)
    {
      if (v4 == 26 || v4 == 24)
      {
        return "//GLfs2.0      \n//LEN=000000038c\n#define defaultp mediump\nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\n\nvoid main()\n{\n\thighp vec4 r0 = texture2D(hg_Texture0, hg_TexCoord0.st / hg_ProgramLocal3.xy);\n\thighp vec4 r1 = texture2D(hg_Texture0, hg_TexCoord1.st / hg_ProgramLocal3.xy);\n\thighp vec4 r2 = texture2D(hg_Texture0, hg_TexCoord2.st / hg_ProgramLocal3.xy);\n\thighp vec4 r3 = hg_ProgramLocal0 * hg_TexCoord3.y + hg_ProgramLocal1;\n\tr0 *= r3.x;\n\tr0 = r1 * r3.y + r0;\n\tgl_FragColor = r2 * r3.z + r0;\n}\n//MD5=4e8fa7bf:c2658db0:334235ed:cff07d69\n//SIG=00000000:00000000:00000000:00000000:0000:0004:0000:0000:0000:0000:0000:0000:0004:01:0:1:0\n";
      }
    }

    else if (v4 == 3 || v4 == 19)
    {
      return "//GLfs2.0      \n//LEN=0000000391\n#define defaultp mediump\nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\n            \nvoid main()\n{\nhighp vec4 r0 = texture2D(hg_Texture0, hg_TexCoord0.st / hg_ProgramLocal3.xy);\nhighp vec4 r1 = texture2D(hg_Texture0, hg_TexCoord1.st / hg_ProgramLocal3.xy);\nhighp vec4 r2 = texture2D(hg_Texture0, hg_TexCoord2.st / hg_ProgramLocal3.xy);\nhighp vec4 r3 = hg_ProgramLocal0 * hg_TexCoord3.x + hg_ProgramLocal1;\nr0 *= r3.x;\nr0 = r1 * r3.y + r0;\ngl_FragColor = r2 * r3.z + r0;\n}\n//MD5=ff36303c:ca5fc06a:7e48861a:299c157e\n//SIG=00000000:00000000:00000000:00000000:0000:0004:0000:0000:0000:0000:0000:0000:0004:01:0:1:0\n";
    }

    return "//GLfs2.0      \n//LEN=00000001fe\n#define defaultp mediump\nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\n\nvoid main()\n{\n\tgl_FragColor = texture2D(hg_Texture0, hg_TexCoord0.st / hg_ProgramLocal3.xy);\n}\n//MD5=5b088dad:7525d40f:06ef5ff0:4b21e5e1\n//SIG=00000000:00000000:00000000:00000000:0000:0004:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }

  else
  {
    if (v4 > 23)
    {
      if (v4 == 26 || v4 == 24)
      {
        return "//Metal1.0     \n//LEN=0000000386\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >     hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    float4 r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    float4 r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    float4 r3 = hg_Params[0] * frag._texCoord3.y + hg_Params[1];\n    \n    r0 *= r3.x;\n    r0 = r1 * r3.y + r0;\n    \n    FragmentOut out {r2 * r3.z + r0};\n    \n    return out;\n}\n//MD5=8278e286:74ca626e:6f50889b:3d54e426\n//SIG=00000000:00000000:00000000:00000000:0000:0002:0000:0000:0000:0000:001e:0000:0004:01:0:1:0\n";
      }
    }

    else if (v4 == 3 || v4 == 19)
    {
      return "//Metal1.0     \n//LEN=0000000386\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >     hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    float4 r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    float4 r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    float4 r3 = hg_Params[0] * frag._texCoord3.x + hg_Params[1];\n    \n    r0 *= r3.x;\n    r0 = r1 * r3.y + r0;\n    \n    FragmentOut out {r2 * r3.z + r0};\n    \n    return out;\n}\n//MD5=41a05813:cf28d4aa:3695a778:5f7a073f\n//SIG=00000000:00000000:00000000:00000000:0000:0002:0000:0000:0000:0000:001e:0000:0004:01:0:1:0\n";
    }

    return "//Metal1.0     \n//LEN=0000000287\nfragment FragmentOut fragmentFunc(VertexInOut            frag        [[ stage_in ]],\n                                  const constant float4* hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >     hg_Texture0 [[ texture(0) ]],\n                                  sampler                hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 texel = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    \n    FragmentOut out {texel};\n    \n    return out;\n}\n//MD5=b8f77c2b:532d0d81:5b63a9b7:6edf9352\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
  }
}

void sub_25FCF4E5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, void *__p, int a13, __int16 a14, char a15, char a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100]((v46 - 128));
  if (*(v46 - 73) < 0)
  {
    operator delete(*(v46 - 96));
  }

  _Unwind_Resume(a1);
}

uint64_t HGLodFilter::Bind(HGLodFilter *this, HGRenderer **a2)
{
  Target = HGRenderer::GetTarget(a2[18], 393216);
  if (Target > 0x6043F || Target - 394016 <= 0xEF)
  {
    v10 = *(this + 114) + 8 * *(this + 122);
    if (v10 > 23)
    {
      if (v10 != 24 && v10 != 26)
      {
        return 0;
      }

      HGHandler::TexCoord(a2, 3, 0, 0, 0);
      (*(*a2 + 13))(a2, 1.0, *(this + 128), 1.0);
      v15.n128_f64[0] = -*(this + 129) + -0.5;
      v16.n128_u64[0] = 0;
      (*(*a2 + 12))(a2, v16, v15, 0.0);
    }

    else
    {
      if (v10 != 3 && v10 != 19)
      {
        return 0;
      }

      HGHandler::TexCoord(a2, 3, 0, 0, 0);
      (*(*a2 + 13))(a2, *(this + 120), 1.0, 1.0);
      v12.n128_f64[0] = -*(this + 121) + -0.5;
      v13.n128_u64[0] = 0;
      (*(*a2 + 12))(a2, v12, v13, 0.0);
    }

    (*(*a2 + 18))(a2, 0, *(this + 72), 1);
    (*(*a2 + 18))(a2, 1, *(this + 72) + 32, 1);
    return 0;
  }

  v5 = *(this + 72);
  v18 = v5[2];
  v19 = *v5;
  v20 = v18;
  v21 = v19;
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v6 = 0;
  v7 = *(this + 122);
  v8 = *(this + 114) + 8 * v7;
  if (v8 <= 0x1A)
  {
    if (((1 << v8) & 0x10004) != 0)
    {
      v6 = v7 == 2;
      goto LABEL_25;
    }

    if (((1 << v8) & 0x1000008) != 0)
    {
      goto LABEL_8;
    }

    if (((1 << v8) & 0x4080000) != 0)
    {
      v9.i64[0] = 0x3F0000003F000000;
      v9.i64[1] = 0x3F0000003F000000;
      v20 = vmulq_f32(v18, v9);
      v21 = vmulq_f32(v19, v9);
LABEL_8:
      (*(*a2 + 18))(a2, 2, &v21, 1);
      (*(*a2 + 18))(a2, 3, &v20, 1);
      v6 = 0;
    }
  }

LABEL_25:
  (*(*a2 + 17))(a2, 0, *(this + 118), *(this + 126), *(this + 8 * v6 + 120), *(this + 8 * !v6 + 120));
  return 0;
}

uint64_t HGLodFilter::BindTexture(HGLodFilter *this, HGRenderer **a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 9))(a2, 0);
  (*(*a2 + 7))(a2, 0);
  Target = HGRenderer::GetTarget(a2[18], 393216);
  if (Target > 0x6043F || Target - 394016 <= 0xEF)
  {
    v11 = *(this + 114);
    v12 = *(this + 122);
    v13 = v11 + 8 * v12;
    if (v13 > 23)
    {
      if (v13 == 24 || v13 == 26)
      {
        if (v11 == 2)
        {
          v17 = 0.0;
        }

        else
        {
          v17 = 0.5;
        }

        HGHandler::TexCoord(a2, 0, 0, 0, 0);
        (*(*a2 + 12))(a2, v17 + *(this + 119), *(this + 127) + 0.5 - *(this + 128), 0.0);
        (*(*a2 + 13))(a2, *(this + 118), *(this + 126), 1.0);
        (*(*a2 + 12))(a2, -v17, -0.5, 0.0);
        if (*(this + 114) == 2)
        {
          (*(*a2 + 6))(a2, 1, 1);
        }

        HGHandler::TexCoord(a2, 1, 0, 0, 0);
        (*(*a2 + 12))(a2, v17 + *(this + 119), *(this + 127) + 0.5, 0.0);
        (*(*a2 + 13))(a2, *(this + 118), *(this + 126), 1.0);
        (*(*a2 + 12))(a2, -v17, -0.5, 0.0);
        HGHandler::TexCoord(a2, 2, 0, 0, 0);
        (*(*a2 + 12))(a2, v17 + *(this + 119), *(this + 127) + 0.5 + *(this + 128), 0.0);
        (*(*a2 + 13))(a2, *(this + 118), *(this + 126), 1.0);
        (*(*a2 + 12))(a2, -v17, -0.5, 0.0);
        return 0;
      }
    }

    else if (v13 == 3 || v13 == 19)
    {
      if (v12 == 2)
      {
        v15 = 0.0;
      }

      else
      {
        v15 = 0.5;
      }

      HGHandler::TexCoord(a2, 0, 0, 0, 0);
      (*(*a2 + 12))(a2, *(this + 119) + 0.5 - *(this + 120), v15 + *(this + 127), 0.0);
      (*(*a2 + 13))(a2, *(this + 118), *(this + 126), 1.0);
      (*(*a2 + 12))(a2, -0.5, -v15, 0.0);
      if (*(this + 122) == 2)
      {
        (*(*a2 + 6))(a2, 1, 1);
      }

      HGHandler::TexCoord(a2, 1, 0, 0, 0);
      (*(*a2 + 12))(a2, *(this + 119) + 0.5, v15 + *(this + 127), 0.0);
      (*(*a2 + 13))(a2, *(this + 118), *(this + 126), 1.0);
      (*(*a2 + 12))(a2, -0.5, -v15, 0.0);
      HGHandler::TexCoord(a2, 2, 0, 0, 0);
      (*(*a2 + 12))(a2, *(this + 119) + 0.5 + *(this + 120), v15 + *(this + 127), 0.0);
      (*(*a2 + 13))(a2, *(this + 118), *(this + 126), 1.0);
      (*(*a2 + 12))(a2, -0.5, -v15, 0.0);
      return 0;
    }

    if (v11 == 2)
    {
      v18 = 0.0;
    }

    else
    {
      v18 = 0.5;
    }

    if (v12 == 2)
    {
      v19 = 0.0;
    }

    else
    {
      v19 = 0.5;
    }

    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    (*(*a2 + 12))(a2, v18 + *(this + 119), v19 + *(this + 127), 0.0);
    (*(*a2 + 13))(a2, *(this + 118), *(this + 126), 1.0);
    (*(*a2 + 12))(a2, -v18, -v19, 0.0);
    if (*(this + 114) == 2 || *(this + 122) == 2)
    {
      (*(*a2 + 6))(a2, 1, 1);
    }

    else
    {
      (*(*a2 + 6))(a2, 0, 0);
    }
  }

  else
  {
    v7.n128_f32[0] = (*(this + 119) + 0.5) + *(a2 + 60);
    v8.n128_f32[0] = (*(this + 127) + 0.5) + *(a2 + 61);
    if (*(this + 114) == 3)
    {
      v7.n128_f64[0] = v7.n128_f32[0] - *(this + 120);
      v7.n128_f32[0] = v7.n128_f64[0];
    }

    v9 = *(this + 128);
    if (*(this + 122) == 3)
    {
      v10 = v8.n128_f32[0] - v9;
      v8.n128_f32[0] = v10;
    }

    (*(*a2 + 17))(a2, 1, v7, v8, -(*(this + 120) * *(this + 121)), -(v9 * *(this + 129)));
  }

  return 0;
}

uint64_t HGLodFilter::RenderTile(HGLodFilter *this, HGTile *a2, double a3, float32x4_t a4, float32x4_t a5)
{
  v6 = *a2;
  v5 = *(a2 + 1);
  v7 = *(a2 + 2) - *a2;
  v8 = *(a2 + 3) - v5;
  v9 = *(a2 + 22);
  v10 = *(a2 + 10);
  v11 = *(this + 127) * v9;
  v12 = *(this + 119);
  v13 = *(a2 + 2);
  v14 = *(a2 + 6);
  v15 = *(this + 118);
  v16 = *(this + 120);
  v17 = *(this + 126);
  v18 = *(this + 128);
  v19 = v18 * v9;
  v20 = *(this + 114) + 8 * *(this + 122);
  if (v20 <= 17)
  {
    v37 = v10 + 16 * v11 + 16 * v12;
    switch(v20)
    {
      case 2:
        if (v8 >= 1 && v7 >= 1)
        {
          v62 = 0;
          v63 = 16 * (v15 - 1) * v6;
          v64 = v37 + v63;
          v65 = 16 * v14;
          v66 = v10 + v63 + 16 * v16 + 16 * v12 + 16 * v11;
          v67 = 16 * v9;
          v68 = 16 * v15;
          v69 = 16 * v7;
          v70.i64[0] = 0x3F0000003F000000;
          v70.i64[1] = 0x3F0000003F000000;
          do
          {
            v71 = 0;
            v72 = 0;
            do
            {
              *(v13 + v72) = vmulq_f32(vaddq_f32(*(v64 + v71), *(v66 + v71)), v70);
              v72 += 16;
              v71 += v68;
            }

            while (v69 != v72);
            ++v62;
            v13 += v65;
            v66 += v67;
            v64 += v67;
          }

          while (v62 != v8);
        }

        return 0;
      case 3:
        if (v8 >= 1)
        {
          v109 = 0;
          v110 = (v37 + 16 * (v15 - 1) * v6);
          v111 = 16 * v15;
          v112 = 16 * v14;
          __asm { FMOV            V0.4S, #1.0 }

          do
          {
            if (v7 >= 1)
            {
              v114 = 0;
              a4.f32[0] = ((*a2 - *(this + 121)) * v16);
              a4 = vdupq_lane_s32(*a4.f32, 0);
              v115 = v110;
              do
              {
                v116 = vaddq_f32(*(*(this + 72) + 32), vmulq_f32(a4, **(this + 72)));
                *(v13 + v114) = vaddq_f32(vmulq_laneq_f32(v115[v16], v116, 2), vaddq_f32(vmulq_lane_f32(*v115, *v116.f32, 1), vmulq_n_f32(v115[-v16], v116.f32[0])));
                a4 = vaddq_f32(a4, _Q0);
                v115 = (v115 + v111);
                v114 += 16;
              }

              while (16 * v7 != v114);
            }

            ++v109;
            v110 += v9;
            v13 += v112;
          }

          while (v109 != v8);
        }

        return 0;
      case 16:
        if (v8 >= 1 && v7 >= 1)
        {
          v38 = 0;
          v39 = 16 * v12 + 16 * v9 * v5 * (v17 - 1) + 16 * v11;
          v40 = v10 + v39 + 16 * v19;
          v41 = 16 * v17 * v9;
          v42 = v10 + v39;
          v43 = 16 * v14;
          v44 = 16 * (*(a2 + 2) - *a2);
          v45.i64[0] = 0x3F0000003F000000;
          v45.i64[1] = 0x3F0000003F000000;
          do
          {
            v46 = 0;
            do
            {
              *(v13 + v46) = vmulq_f32(vaddq_f32(*(v42 + v46), *(v40 + v46)), v45);
              v46 += 16;
            }

            while (v44 != v46);
            ++v38;
            v40 += v41;
            v42 += v41;
            v13 += v43;
          }

          while (v38 != v8);
        }

        return 0;
    }

LABEL_38:
    if (v8 >= 1 && v7 >= 1)
    {
      v73 = 0;
      v74 = 16 * v14;
      v75 = 16 * v17 * v9;
      v76 = v10 + 16 * v12 + 16 * v11 + 16 * ((v15 - 1) * v6 + v9 * v5 * (v17 - 1));
      v77 = 16 * v15;
      v78 = 16 * (*(a2 + 2) - *a2);
      do
      {
        v79 = 0;
        v80 = 0;
        do
        {
          *(v13 + v80) = *(v76 + v79);
          v80 += 16;
          v79 += v77;
        }

        while (v78 != v80);
        ++v73;
        v13 += v74;
        v76 += v75;
      }

      while (v73 != v8);
    }

    return 0;
  }

  if (v20 > 23)
  {
    if (v20 == 24)
    {
      if (v8 >= 1 && v7 >= 1)
      {
        v94 = 0;
        v95 = v17 * v9;
        *&a3 = ((v5 - *(this + 129)) * v18);
        v96 = 16 * v12 + 16 * v9 * v5 * (v17 - 1);
        v97 = 16 * v19;
        v98 = v96 + 16 * v11;
        v99 = vdupq_lane_s32(*&a3, 0);
        v100 = v10 + v97 + v98;
        v101 = 16 * v95;
        v102 = v10 + v98;
        v103 = 16 * v14;
        v104 = v10 + v98 - v97;
        v105 = 16 * v7;
        __asm { FMOV            V1.4S, #1.0 }

        do
        {
          v107 = 0;
          v108 = vaddq_f32(*(*(this + 72) + 32), vmulq_f32(v99, **(this + 72)));
          do
          {
            *(v13 + v107) = vaddq_f32(vmulq_laneq_f32(*(v100 + v107), v108, 2), vaddq_f32(vmulq_n_f32(*(v104 + v107), v108.f32[0]), vmulq_lane_f32(*(v102 + v107), *v108.f32, 1)));
            v107 += 16;
          }

          while (v105 != v107);
          ++v94;
          v100 += v101;
          v99 = vaddq_f32(v99, _Q1);
          v102 += v101;
          v13 += v103;
          v104 += v101;
        }

        while (v94 != v8);
      }

      return 0;
    }

    if (v20 == 26)
    {
      if (v8 >= 1 && v7 >= 1)
      {
        v47 = 0;
        v48 = v17 * v9;
        *&a3 = ((v5 - *(this + 129)) * v18);
        v49 = 16 * v14;
        v50 = 16 * v12 + 16 * v11 + 16 * ((v15 - 1) * v6 + v9 * v5 * (v17 - 1));
        v51 = vdupq_lane_s32(*&a3, 0);
        v52 = v16 + v19;
        v53 = (v10 + v50);
        v54 = 16 * v15;
        v55 = v16;
        v56 = 16 * v7;
        v57.i64[0] = 0x3F0000003F000000;
        v57.i64[1] = 0x3F0000003F000000;
        __asm { FMOV            V2.4S, #1.0 }

        do
        {
          v59 = 0;
          v60 = vaddq_f32(*(*(this + 72) + 32), vmulq_f32(v51, **(this + 72)));
          v61 = v53;
          do
          {
            *(v13 + v59) = vmulq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(v61[-v19], *(v61 + v55 * 16 - 16 * v19)), v60.f32[0]), vmulq_lane_f32(vaddq_f32(*v61, v61[v55]), *v60.f32, 1)), vmulq_laneq_f32(vaddq_f32(v61[v19], v61[v52]), v60, 2)), v57);
            v59 += 16;
            v61 = (v61 + v54);
          }

          while (v56 != v59);
          v51 = vaddq_f32(v51, _Q2);
          ++v47;
          v13 += v49;
          v53 += v48;
        }

        while (v47 != v8);
      }

      return 0;
    }

    goto LABEL_38;
  }

  if (v20 != 18)
  {
    if (v20 == 19)
    {
      if (v8 >= 1)
      {
        v21 = 0;
        v22 = 16 * v12 + 16 * v11 + 16 * ((v15 - 1) * v6 + v9 * v5 * (v17 - 1));
        v23 = 16 * v15;
        v24 = v16 + v19;
        v25 = (v10 + v22);
        v26 = v19;
        v27 = 16 * v14;
        v28.i64[0] = 0x3F0000003F000000;
        v28.i64[1] = 0x3F0000003F000000;
        __asm { FMOV            V1.4S, #1.0 }

        do
        {
          if (v7 >= 1)
          {
            v34 = 0;
            a5.f32[0] = ((*a2 - *(this + 121)) * v16);
            a5 = vdupq_lane_s32(*a5.f32, 0);
            v35 = v25;
            do
            {
              v36 = vaddq_f32(*(*(this + 72) + 32), vmulq_f32(a5, **(this + 72)));
              *(v13 + v34) = vmulq_f32(vaddq_f32(vaddq_f32(vmulq_n_f32(vaddq_f32(v35[-v16], *(v35 + v26 * 16 - 16 * v16)), v36.f32[0]), vmulq_lane_f32(vaddq_f32(*v35, v35[v26]), *v36.f32, 1)), vmulq_laneq_f32(vaddq_f32(v35[v16], v35[v24]), v36, 2)), v28);
              a5 = vaddq_f32(a5, _Q1);
              v35 = (v35 + v23);
              v34 += 16;
            }

            while (16 * v7 != v34);
          }

          ++v21;
          v25 += v17 * v9;
          v13 += v27;
        }

        while (v21 != v8);
      }

      return 0;
    }

    goto LABEL_38;
  }

  if (v8 >= 1 && v7 >= 1)
  {
    v81 = 0;
    v82 = (v15 - 1) * v6;
    v83 = v17 * v9;
    v84 = v82 + v9 * v5 * (v17 - 1);
    v85 = v19;
    v86 = 16 * v14;
    v87 = v16 + v19;
    v88 = (v10 + 16 * v12 + 16 * v11 + 16 * v84);
    v89 = 16 * v15;
    v90 = 16 * v7;
    __asm { FMOV            V0.4S, #0.25 }

    do
    {
      v92 = 0;
      v93 = v88;
      do
      {
        *(v13 + v92) = vmulq_f32(vaddq_f32(vaddq_f32(*v93, v93[v16]), vaddq_f32(v93[v85], v93[v87])), _Q0);
        v92 += 16;
        v93 = (v93 + v89);
      }

      while (v90 != v92);
      ++v81;
      v13 += v86;
      v88 += v83;
    }

    while (v81 != v8);
  }

  return 0;
}

char *HGLodFilter::RenderPage(HGLodFilter *this, HGRect *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  (*(*this + 472))(this, a2, 0);
  v4 = ((*(*(*this - 8) + 8) & 0x7FFFFFFFFFFFFFFFLL) - 1);
  do
  {
    v5 = *++v4;
  }

  while ((v5 - 48) < 0xA);
  snprintf(__str, 0x100uLL, "%s::RenderPage( [%d %d %d %d])", v4, a2[1].var0, a2[1].var1, a2[1].var2, a2[1].var3);
  HGTraceGuard::HGTraceGuard(v22, "gpu", 1, __str);
  Buffer = *&a2->var2;
  if (Buffer)
  {
    (*(*Buffer + 16))(*&a2->var2);
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(*&a2->var0, a2[1], a2[2].var0, 0, (*(this + 4) >> 12) & 1, LOBYTE(a2[15].var2));
    *&a2->var2 = Buffer;
  }

  (*(**&a2->var0 + 144))(*&a2->var0, Buffer);
  (*(**&a2->var0 + 152))(*&a2->var0, 0, *&a2[10].var2, 0, 0);
  v7 = *&a2[10].var2;
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  (*(**&a2->var0 + 152))(*&a2->var0, 1, *&a2[11].var0, 0, 0);
  v8 = *&a2[11].var0;
  if (v8)
  {
    (*(*v8 + 24))(v8);
  }

  (*(**&a2->var0 + 152))(*&a2->var0, 2, *&a2[11].var2, 0, 0);
  v9 = *&a2[11].var2;
  if (v9)
  {
    (*(*v9 + 24))(v9);
  }

  (*(**&a2->var0 + 152))(*&a2->var0, 3, *&a2[12].var0, 0, 0);
  v10 = *&a2[12].var0;
  if (v10)
  {
    (*(*v10 + 24))(v10);
  }

  (*(**&a2->var0 + 152))(*&a2->var0, 4, *&a2[12].var2, 0, 0);
  v11 = *&a2[12].var2;
  if (v11)
  {
    (*(*v11 + 24))(v11);
  }

  (*(**&a2->var0 + 152))(*&a2->var0, 5, *&a2[13].var0, 0, 0);
  v12 = *&a2[13].var0;
  if (v12)
  {
    (*(*v12 + 24))(v12);
  }

  (*(**&a2->var0 + 152))(*&a2->var0, 6, *&a2[13].var2, 0, 0);
  v13 = *&a2[13].var2;
  if (v13)
  {
    (*(*v13 + 24))(v13);
  }

  (*(**&a2->var0 + 152))(*&a2->var0, 7, *&a2[14].var0, 0, 0);
  v14 = *&a2[14].var0;
  if (v14)
  {
    (*(*v14 + 24))(v14);
  }

  v15 = (*(**&a2->var0 + 368))(*&a2->var0, *(this + 8), this);
  v16 = *&a2[10].var2;
  {
    TextureRect = HGGLTexture::GetTextureRect(v17);
    (*(*v15 + 136))(v15, 3, (v19 - TextureRect), (v20 - HIDWORD(TextureRect)), 0.0, 0.0);
    (*(*v15 + 40))(v15);
    (*(*this + 488))(this, a2, 0, v15);
    HGGPURenderer::Rect(*&a2->var0, v15, a2[1], 8);
    (*(*this + 496))(this, a2, 0, v15);
  }

  else
  {
    Buffer = 0;
  }

  HGTraceGuard::~HGTraceGuard(v22);
  return Buffer;
}

void sub_25FCF6998(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCF69B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCF69C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FCF69D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  HGTraceGuard::~HGTraceGuard(va);
  _Unwind_Resume(a1);
}

void HGLodFilter::GetTransform(HGLodFilter *this@<X0>, int a2@<W1>, HGTransform *a3@<X8>)
{
  HGTransform::HGTransform(a3);
  HGTransform::LoadIdentity(a3);
  v6 = *(this + 103);
  if (!v6)
  {
    return;
  }

  v7 = *(this + 115);
  v8 = 0.0;
  v9 = 0.0;
  if (v7)
  {
    v10 = *(this + 114);
    v9 = 0.5;
    if (v10 <= 7)
    {
      v9 = dbl_260817120[v10];
    }
  }

  v11 = *(this + 123);
  if (v11)
  {
    v12 = *(this + 122);
    v8 = 0.5;
    if (v12 <= 7)
    {
      v8 = dbl_260817120[v12];
    }
  }

  if (v6 == 3)
  {
    v13 = *(this + 70);
    v14.i64[0] = v13;
    v14.i64[1] = SHIDWORD(v13);
    v15 = vcvtq_f64_s64(v14);
    v16 = *(this + 69);
    v14.i64[0] = v16;
    v14.i64[1] = SHIDWORD(v16);
    v17 = vsubq_f64(v15, vcvtq_f64_s64(v14));
    v18 = *(this + 66);
    v14.i64[0] = v18;
    v14.i64[1] = SHIDWORD(v18);
    v19 = vcvtq_f64_s64(v14);
    v20 = *(this + 65);
    v14.i64[0] = v20;
    v14.i64[1] = SHIDWORD(v20);
    v31 = vdivq_f64(v17, vsubq_f64(v19, vcvtq_f64_s64(v14)));
    v21 = v20;
    if (v20 != 0x80000000)
    {
LABEL_10:
      v22 = 552;
      goto LABEL_14;
    }
  }

  else
  {
    v23 = vshl_u32(0x100000001, __PAIR64__(v11, v7));
    v24.i64[0] = v23.i32[0];
    v24.i64[1] = v23.i32[1];
    v31 = vcvtq_f64_s64(v24);
    v21 = *(this + 130);
    if (v21 != 0x80000000)
    {
      goto LABEL_10;
    }
  }

  v21 = *(this + 132);
  v25 = 0.0;
  v26 = 0.0;
  if (v21 == 0x7FFFFFFF)
  {
    goto LABEL_15;
  }

  v22 = 560;
LABEL_14:
  v25 = -v21;
  v26 = *(this + v22);
LABEL_15:
  v27 = *(this + 131);
  if (v27 != 0x80000000)
  {
    v30 = 556;
    goto LABEL_19;
  }

  v27 = *(this + 133);
  v28 = 0.0;
  v29 = 0.0;
  if (v27 != 0x7FFFFFFF)
  {
    v30 = 564;
LABEL_19:
    v28 = -v27;
    v29 = *(this + v30);
  }

  if (a2)
  {
    HGTransform::Translate(a3, v25 - v9, v28 - v8, 0.0);
    HGTransform::Scale(a3, v31.f64[0], v31.f64[1], 1.0);
  }

  else
  {
    HGTransform::Translate(a3, -v26, -v29, 0.0);
    HGTransform::Scale(a3, 1.0 / v31.f64[0], 1.0 / v31.f64[1], 1.0);
    v26 = v9 - v25;
    v29 = v8 - v28;
  }

  HGTransform::Translate(a3, v26, v29, 0.0);
}

uint64_t HGLodFilter::info(unsigned int *a1, int a2, uint64_t a3, uint64_t a4)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v63);
  if (a2 >= 2)
  {
    v8 = *(a3 + 23);
    if (v8 >= 0)
    {
      v9 = a3;
    }

    else
    {
      v9 = *a3;
    }

    if (v8 >= 0)
    {
      v10 = *(a3 + 23);
    }

    else
    {
      v10 = *(a3 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, v9, v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "lodfilter, ", 11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "axis[", 5);
    v14 = MEMORY[0x2666E9B50](v13, 0);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "]: ", 3);
    v18 = a1[114];
    if (v18 >= 8)
    {
      HGLogger::error("HGLodFilter::info: Invalid filter mode: %d", v15, v16, a1[114]);
      v19 = "INVALID FILTER MODE";
    }

    else
    {
      v19 = off_279AA9278[v18];
    }

    v20 = strlen(v19);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, v19, v20);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", ", 2);
    v23 = MEMORY[0x2666E9B50](v22, a1[115]);
    v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", ", 2);
    v25 = MEMORY[0x2666E9B50](v24, a1[116]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, ", ", 2);
    v26 = std::ostream::operator<<();
    v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", ", 2);
    v28 = MEMORY[0x2666E9B50](v27, a1[118]);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ", ", 2);
    v30 = MEMORY[0x2666E9B50](v29, a1[119]);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ", ", 2);
    v32 = MEMORY[0x2666E9B50](v31, a1[120]);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ", ", 2);
    v34 = MEMORY[0x2666E9B50](v33, a1[121]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "\n", 1);
    v35 = *(a4 + 23);
    if (v35 >= 0)
    {
      v36 = a4;
    }

    else
    {
      v36 = *a4;
    }

    if (v35 >= 0)
    {
      v37 = *(a4 + 23);
    }

    else
    {
      v37 = *(a4 + 8);
    }

    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v63, v36, v37);
    v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "lodfilter, ", 11);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "axis[", 5);
    v41 = MEMORY[0x2666E9B50](v40, 1);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, "]: ", 3);
    v45 = a1[122];
    if (v45 >= 8)
    {
      HGLogger::error("HGLodFilter::info: Invalid filter mode: %d", v42, v43, a1[122]);
      v46 = "INVALID FILTER MODE";
    }

    else
    {
      v46 = off_279AA9278[v45];
    }

    v47 = strlen(v46);
    v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, v46, v47);
    v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ", ", 2);
    v50 = MEMORY[0x2666E9B50](v49, a1[123]);
    v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, ", ", 2);
    v52 = MEMORY[0x2666E9B50](v51, a1[124]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, ", ", 2);
    v53 = std::ostream::operator<<();
    v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ", ", 2);
    v55 = MEMORY[0x2666E9B50](v54, a1[126]);
    v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, ", ", 2);
    v57 = MEMORY[0x2666E9B50](v56, a1[127]);
    v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, ", ", 2);
    v59 = MEMORY[0x2666E9B50](v58, a1[128]);
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, ", ", 2);
    v61 = MEMORY[0x2666E9B50](v60, a1[129]);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "\n", 1);
  }

  std::stringbuf::str();
  v63 = *MEMORY[0x277D82828];
  *(&v63 + *(v63 - 24)) = *(MEMORY[0x277D82828] + 24);
  v64 = MEMORY[0x277D82878] + 16;
  if (v66 < 0)
  {
    operator delete(v65[7].__locale_);
  }

  v64 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v65);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v67);
}

void sub_25FCF7078(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v3 = va_arg(va1, void);
  v5 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  std::ostringstream::~ostringstream(va, MEMORY[0x277D82828]);
  MEMORY[0x2666E9E10](va1);
  _Unwind_Resume(a1);
}

void HGLodPreFilter::HGLodPreFilter(HGNode *a1, uint64_t a2, int a3)
{
  HGNode::HGNode(a1);
  *v5 = &unk_287222688;
  *(v5 + 408) = a2;
  *(v5 + 416) = a3;
}

void HGLodPreFilter::~HGLodPreFilter(HGNode *this)
{
  HGNode::~HGNode(this);

  HGObject::operator delete(v1);
}

uint64_t HGLodPreFilter::GetDOD(HGLodPreFilter *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFF0, 0xFFFFFFF0, 0x10u, 0x10u);
  return HGRectGrow(v6, v5, v7);
}

uint64_t HGLodPreFilter::GetROI(HGLodPreFilter *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFF0, 0xFFFFFFF0, 0x10u, 0x10u);
  return HGRectGrow(v6, v5, v7);
}

const char *HGLodPreFilter::GetProgram(HGLodPreFilter *this, HGRenderer *a2)
{
  if (*(this + 104))
  {
    return "!!ARBfp1.0     \n##LEN=00000006f8\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\n##%\nTEMP r0,r1,r2,r3;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\nRCP r2.w,$f1.w;\nMUL r3,$f1.xyxy,r2.w;\nMAD r3,-r3,$p0,$p1;\nMUL r2.w,r3.y,r3.z;\nMAD r2.w,r3.x,r3.w,-r2.w;\nMUL r3,r3,$f1.w;\nRCP r2.w,r2.w;\nMUL r3,r3,r2.w;\nSWZ r3,r3,-z,x,w,-y;\nMAX r3,r3,-16.;\nMIN r3,r3,16.;\nMAD r1,.125,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.125,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.25,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.25,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.375,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.375,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.5,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.5,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.625,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.625,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.75,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.75,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.875,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.875,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nADD r1,$f0,r3;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nSUB r1,$f0,r3;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMUL $o0,0.0588235294117647,r0;\nEND\n##MD5=103181ed:3a2f2b1d:dd57ff36:42e782ba\n##SIG=00000000:00000000:00000000:00000000:0000:0002:0004:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }

  else
  {
    return "!!ARBfp1.0     \n##LEN=00000006f8\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\n##%\nTEMP r0,r1,r2,r3;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\nRCP r2.w,$f1.w;\nMUL r3,$f1.xyxy,r2.w;\nMAD r3,-r3,$p0,$p1;\nMUL r2.w,r3.y,r3.z;\nMAD r2.w,r3.x,r3.w,-r2.w;\nMUL r3,r3,$f1.w;\nRCP r2.w,r2.w;\nMUL r3,r3,r2.w;\nSWZ r3,r3,w,-y,-z,x;\nMAX r3,r3,-16.;\nMIN r3,r3,16.;\nMAD r1,.125,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.125,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.25,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.25,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.375,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.375,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.5,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.5,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.625,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.625,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.75,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.75,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,.875,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMAD r1,-.875,r3,$f0;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nADD r1,$f0,r3;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nSUB r1,$f0,r3;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r0,r1,r0;\nMUL $o0,0.0588235294117647,r0;\nEND\n##MD5=871a4a85:797b62fd:7f3669a5:784289d5\n##SIG=00000000:00000000:00000000:00000000:0000:0002:0004:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

uint64_t HGLodPreFilter::BindTexture(HGLodPreFilter *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  HGHandler::TexCoord(a2, 0, a3, 0, 0);
  return 0;
}

uint64_t HGLodPreFilter::Bind(HGLodPreFilter *this, HGHandler *a2)
{
  MatrixPtr = HGTransform::GetMatrixPtr((*(this + 51) + 448));
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 112))(a2, MatrixPtr);
  v5 = MatrixPtr[3] + MatrixPtr[3];
  v6 = MatrixPtr[7] + MatrixPtr[7];
  (*(*a2 + 136))(a2, 0, v5, v5, v6, v6);
  v7 = *MatrixPtr + *MatrixPtr;
  v8 = MatrixPtr[1] + MatrixPtr[1];
  v9 = MatrixPtr[4] + MatrixPtr[4];
  v10 = MatrixPtr[5] + MatrixPtr[5];
  (*(*a2 + 136))(a2, 1, v7, v8, v9, v10);
  (*(*a2 + 136))(a2, 2, *(*(this + 51) + 736), 0.0, 0.0, 0.0);
  return 0;
}

void HGColorConform::HGColorConform(HGColorConform *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287222908;
  *(v2 + 776) = 0u;
  pthread_once(&hgColorConformNodeListCacheLockInit, hgColorConformNodeListCacheLockInitFunction);
  *(this + 216) = 0;
  *(this + 434) = 0;
  *(this + 51) = 0;
  *(this + 52) = 0;
  *(this + 436) = 1;
  *(this + 236) = 257;
  *(this + 474) = 0;
  *(this + 113) = 1;
  *(this + 456) = HGRectInfinite;
  *(this + 121) = -1;
  v3 = HGObject::operator new(0x78uLL);
  HGObject::HGObject(v3);
  *v3 = &unk_287222BB8;
  *(v3 + 2) = 0;
  *(v3 + 8) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 6) = 1065353216;
  *(v3 + 28) = 0;
  *(v3 + 13) = 0;
  *(v3 + 36) = 0u;
  v3[56] = 1;
  *(v3 + 15) = 2;
  *(v3 + 88) = xmmword_260817160;
  v3[104] = 1;
  *(v3 + 108) = 0x100000000;
  *(this + 67) = v3;
  HGColorConform::ClearConversionParams(this);
  *(this + 444) = 0;
  *(this + 476) = 0xBF00000040000000;
  *(this + 748) = 0x3F8000003F800000;
  *(this + 716) = xmmword_260344BA0;
  *(this + 732) = xmmword_260346870;
  *(this + 756) = 1;
  *(this + 95) = 0x3F80000000000320;
  *(this + 768) = 0;
  *(this + 53) = 0;
}

void sub_25FCF75A8(_Unwind_Exception *a1)
{
  HGObject::operator delete(v3);
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void sub_25FCF75CC(_Unwind_Exception *a1)
{
  std::shared_ptr<HGPool::ServicingPolicy>::~shared_ptr[abi:ne200100](v2);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

double HGColorConform::ClearConversionParams(HGColorConform *this)
{
  *(this + 488) = xmmword_260817170;
  *(this + 132) = 0;
  *(this + 504) = 0u;
  *(this + 65) = 0xFFFFFFFFLL;
  *(this + 69) = 0;
  *(this + 35) = xmmword_260817180;
  *(this + 36) = xmmword_260817190;
  *(this + 74) = 0x31AAAC00321E8A92;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 40) = xmmword_2603429B0;
  *(this + 41) = xmmword_2603429C0;
  *(this + 42) = xmmword_2603429D0;
  *(this + 43) = xmmword_2603427D0;
  *(this + 88) = 0x300000003;
  *(this + 178) = 0;
  v2 = *(this + 67);
  if (v2)
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      CFRelease(v3);
      *(v2 + 16) = 0;
    }

    *(v2 + 24) = 1065353216;
    *(v2 + 28) = 0;
    *(v2 + 52) = 0;
    *(v2 + 36) = 0u;
    *(v2 + 56) = 1;
    *(v2 + 60) = 2;
    *(v2 + 72) = *(v2 + 64);
    *(v2 + 88) = xmmword_260817160;
    *(v2 + 104) = 1;
    *(v2 + 108) = 0x100000000;
  }

  result = 0.0;
  *(this + 68) = 0;
  return result;
}

void HGColorConform::~HGColorConform(HGColorConform *this)
{
  *this = &unk_287222908;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 67);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = HGColorConform::s_NodeListCacheLock;
  HGSynchronizable::Lock(HGColorConform::s_NodeListCacheLock);
  v5 = *(this + 53);
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  HGSynchronizable::Unlock(v4);
  v6 = *(this + 98);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    v7 = this;
  }

  else
  {
    v7 = this;
  }

  HGNode::~HGNode(v7);
}

{
  HGColorConform::~HGColorConform(this);

  HGObject::operator delete(v1);
}

HGNode *HGColorConform::SetInputPixelFormat(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a2;
  result = HGNode::ClearBits(a1, a2, a3);
  *(a1 + 444) = v3;
  return result;
}

HGNode *HGColorConform::SetOutputPixelFormat(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = a3;
  v4 = a2;
  result = HGNode::ClearBits(a1, a2, a3);
  *(a1 + 440) = v4;
  *(a1 + 448) = v3;
  return result;
}

HGNode *HGColorConform::SetPremultiplyState(HGNode *this, uint64_t a2, char *a3)
{
  v3 = a3;
  v4 = this;
  if (*(this + 472) == a2)
  {
    if (*(this + 473) == a3)
    {
      return this;
    }

LABEL_5:
    this = HGNode::ClearBits(v4, a2, a3);
    *(v4 + 473) = v3;
    return this;
  }

  v5 = a2;
  this = HGNode::ClearBits(this, a2, a3);
  *(v4 + 472) = v5;
  if (*(v4 + 473) != v3)
  {
    goto LABEL_5;
  }

  return this;
}

double HGColorConformLook3DLUT::Clear(HGColorConformLook3DLUT *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  *(this + 6) = 1065353216;
  *(this + 28) = 0;
  *(this + 13) = 0;
  *(this + 36) = 0u;
  *(this + 56) = 1;
  *(this + 15) = 2;
  *(this + 9) = *(this + 8);
  *(this + 88) = xmmword_260817160;
  *(this + 104) = 1;
  *&result = 0x100000000;
  *(this + 108) = 0x100000000;
  return result;
}

uint64_t HGColorConform::SetLook3DLutConversion(uint64_t a1, uint64_t a2, char *a3, int a4)
{
  v5 = a3;
  HGNode::ClearBits(a1, a2, a3);
  *(a1 + 484) = 5;
  v8.n128_f64[0] = HGColorConform::ClearConversionParams(a1);
  v9 = *(a1 + 536);
  if (v9 != a2)
  {
    if (v9)
    {
      (*(*v9 + 24))(v9, v8.n128_f64[0]);
    }

    *(a1 + 536) = a2;
    if (a2)
    {
      (*(*a2 + 16))(a2, v8);
    }
  }

  *(a1 + 544) = v5;
  *(a1 + 548) = a4;
  return 1;
}

void HGColorConform::Prep3DLUTBitmap()
{
  {
    HGColorConform::Prep3DLUTBitmap();
  }

  operator new();
}

{
  if (v0)
  {
    OUTLINED_FUNCTION_0_11(v0, &HGColorConform::Prep3DLUTBitmap(HGRenderer *,unsigned char const*,unsigned long,unsigned long,unsigned long,BOOL,HGColorConform::hgLookLUTEndian)::lutFactory, &dword_25F8F0000);
  }
}

HGNode *HGColorConform::SetToneQualityMode(HGNode *result, uint64_t a2, char *a3)
{
  if (*(result + 109) != a2)
  {
    v3 = a2;
    v4 = result;
    result = HGNode::ClearBits(result, a2, a3);
    *(v4 + 109) = v3;
  }

  return result;
}

HGColorGamma *HGColorConform::CreateColorGammaNode(HGColorConform *this)
{
  v2 = HGObject::operator new(0x4A0uLL);
  HGColorGamma::HGColorGamma(v2);
  HGColorGamma::SetAntiSymmetricToneCurves(v2, *(this + 474));
  return v2;
}

uint64_t HGColorConform::PrepareOutputNode(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 452) == 1)
  {
    *(result + 456) = a3;
    *(result + 464) = a4;
  }

  return result;
}

uint64_t HGColorConform::SetConversion(HGNode *this, CGColorSpace *a2, CGColorSpace *a3)
{
  HGNode::ClearBits(this, a2, a3);
  *(this + 121) = -1;
  v8 = HGColorConform::ClearConversionParams(this);
  if (!a2 || !a3)
  {
    HGLogger::warning("SetConversion does not allow NULL CGColorSpaceRef", v6, v7, v8);
    return 0;
  }

  if (CFEqual(a2, a3))
  {
    return 1;
  }

  v10 = CGColorSpaceCopyICCData(a2);
  if (v10)
  {
    v11 = v10;
    v12 = ColorSyncProfileCreate(v10, 0);
    CFRelease(v11);
    result = CGColorSpaceCopyICCData(a3);
    if (!result)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  result = CGColorSpaceCopyICCData(a3);
  if (result)
  {
    v12 = 0;
LABEL_13:
    v13 = result;
    v14 = ColorSyncProfileCreate(result, 0);
    CFRelease(v13);
    if (v12 && v14)
    {
      v15 = HGColorConform::SetConversion(this, v12, v14);
      CFRelease(v12);
      CFRelease(v14);
      return v15;
    }

    if (v14)
    {
      CFRelease(v14);
    }

LABEL_18:
    if (v12)
    {
      CFRelease(v12);
      return 0;
    }

    return 0;
  }

  return result;
}

uint64_t HGColorConform::SetConversion(HGColorConform *this, const ColorSyncProfile *a2, const ColorSyncProfile *a3)
{
  HGNode::ClearBits(this, a2, a3);
  *(this + 121) = -1;
  HGColorConform::ClearConversionParams(this);
  v6 = HGColorConform::s_NodeListCacheLock;
  HGSynchronizable::Lock(HGColorConform::s_NodeListCacheLock);
  v7 = *(this + 53);
  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  HGSynchronizable::Unlock(v6);
  MD5 = ColorSyncProfileGetMD5(a2);
  v9 = ColorSyncProfileGetMD5(a3);
  if (*MD5.digest == *v9.digest && *&MD5.digest[8] == *&v9.digest[8])
  {
    return 1;
  }

  v11 = HGColorConform::s_NodeListCacheLock;
  HGSynchronizable::Lock(HGColorConform::s_NodeListCacheLock);
  if ((HGColorConform::DecodeFragmentList(a2, a3, (this + 424), 0) & 1) != 0 || HGColorConform::DecodeFragmentList(a2, a3, (this + 424), 1))
  {
    (*(**(this + 53) + 16))(*(this + 53));
    v12 = 1;
  }

  else
  {
    v12 = 0;
    *(this + 53) = 0;
  }

  HGSynchronizable::Unlock(v11);
  return v12;
}

void sub_25FCF82FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGColorConform::DecodeFragmentList(HGColorConform *this, const ColorSyncProfile *a2, const ColorSyncProfile *a3, HGColorConformNodeListCacheItem **a4)
{
  v4 = a4;
  v47 = *MEMORY[0x277D85DE8];
  if (HGColorConform::GetNodeListFromCache(this, a2, a3, a4))
  {
    return 1;
  }

  v37 = v4;
  v8 = atomic_load(HGLogger::_enabled);
  if (v8)
  {
    HGLogger::log("colorConform", 1, "HGColorConform processing ColorSync fragment list.\n", v5, v6);
  }

  v45 = 0;
  v46 = 0;
  v9 = MEMORY[0x277CBCA30];
  v10 = MEMORY[0x277CBCA38];
  v11 = *MEMORY[0x277CBCA38];
  v12 = MEMORY[0x277CBCA90];
  keys[0] = *MEMORY[0x277CBCA30];
  keys[1] = v11;
  keys[2] = *MEMORY[0x277CBCA90];
  v13 = MEMORY[0x277CBCA60];
  v14 = *MEMORY[0x277CBCA60];
  values[0] = this;
  values[1] = v14;
  values[2] = *MEMORY[0x277CBCA70];
  v45 = CFDictionaryCreate(0, keys, values, 3, 0, 0);
  v15 = *v10;
  v42[0] = *v9;
  v42[1] = v15;
  v42[2] = *v12;
  v16 = *v13;
  v41[0] = a2;
  v41[1] = v16;
  v41[2] = *MEMORY[0x277CBCA80];
  v46 = CFDictionaryCreate(0, v42, v41, 3, 0, 0);
  v17 = CFArrayCreate(0, &v45, 2, 0);
  v18 = ColorSyncTransformCreate(v17, 0);
  CFRelease(v45);
  CFRelease(v46);
  CFRelease(v17);
  if (v18)
  {
    v21 = MEMORY[0x277CBCA78];
    if (v37)
    {
      v21 = MEMORY[0x277CBCA88];
    }

    v22 = *v21;
    v23 = atomic_load(HGLogger::_enabled);
    if (v23)
    {
      v24 = "false";
      if (v37)
      {
        v24 = "true";
      }

      HGLogger::log("colorConform", 1, "HGColorConform using simplified conversion data? %s", v19, v20, v24);
    }

    theArray = MEMORY[0x2666E96B0](v18, v22, 0);
    CFRelease(v18);
    if (theArray)
    {
      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        v29 = atomic_load(HGLogger::_enabled);
        if (v29)
        {
          HGLogger::log("colorConform", 1, "\tRetrieved %i fragments\n", v27, v28, Count);
        }

        operator new();
      }

      CFRelease(theArray);
      v34 = atomic_load(HGLogger::_enabled);
      if (v34)
      {
        HGLogger::log("colorConform", 1, "HGColorConform finished processing ColorSync fragment list: FAILURE (0 fragments).\n", v32, v33);
      }
    }

    else
    {
      v31 = atomic_load(HGLogger::_enabled);
      if (v31)
      {
        HGLogger::log("colorConform", 1, "HGColorConform finished processing ColorSync fragment list: FAILURE (ColorSyncTransformCopyProperty).\n", v25, v26);
      }
    }
  }

  else
  {
    v30 = atomic_load(HGLogger::_enabled);
    if (v30)
    {
      HGLogger::log("colorConform", 1, "HGColorConform finished processing ColorSync fragment list: FAILURE (ColorSyncTransformCreate).\n", v19, v20);
    }
  }

  return 0;
}

void sub_25FCF9D88(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGColorConform::SetConversion(uint64_t a1, uint64_t a2, char *a3)
{
  if ((a2 & 0xFFFFFFFE) != 0x16 && (a2 - 1) >= 5)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (*(a1 + 484) != v4)
  {
    HGNode::ClearBits(a1, a2, a3);
    *(a1 + 484) = v4;
    HGColorConform::ClearConversionParams(a1);
  }

  return 1;
}

uint64_t HGColorConform::SetConversion(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7)
{
  if (*(a1 + 484) == 1 && *(a1 + 488) == a2 && *(a1 + 496) == a3 && *(a1 + 504) == a4 && *(a1 + 492) == a5 && *(a1 + 500) == a6 && *(a1 + 508) == a7)
  {
    return 1;
  }

  if ((HGColorGamma::TestConversion(a2, a3, a4, a5, a6, a7) & 1) != 0 || HGColorGamma::TestConversion(a2, a3, a4, a5, 8, 0) && HGColorGamma::TestConversion(a5, 8, 0, a5, a6, a7))
  {
    HGNode::ClearBits(a1, v15, v16);
    v14 = 1;
    *(a1 + 484) = 1;
    HGColorConform::ClearConversionParams(a1);
    *(a1 + 488) = a2;
    *(a1 + 496) = a3;
    *(a1 + 504) = a4;
    *(a1 + 492) = a5;
    *(a1 + 500) = a6;
    *(a1 + 508) = a7;
  }

  else
  {
    if (*(a1 + 484))
    {
      HGNode::ClearBits(a1, v15, v16);
      *(a1 + 484) = 0;
      HGColorConform::ClearConversionParams(a1);
    }

    return 0;
  }

  return v14;
}

uint64_t HGColorConform::SetConversion(HGNode *this, uint64_t a2, char *a3, int a4, int a5)
{
  v6 = a3;
  v7 = a2;
  if (a5)
  {
    v9 = 3;
  }

  else
  {
    v9 = 0;
  }

  if (*(this + 121) != 3 || *(this + 128) != a2 || *(this + 130) != a3 || *(this + 131) != a4 || *(this + 132) != v9)
  {
    HGNode::ClearBits(this, a2, a3);
    *(this + 121) = 3;
    HGColorConform::ClearConversionParams(this);
    *(this + 128) = v7;
    *(this + 130) = v6;
    *(this + 131) = a4;
    *(this + 132) = v9;
  }

  return 1;
}

HGNode *HGColorConform::SetAntiSymmetricToneCurves(HGNode *this, uint64_t a2, char *a3)
{
  if (*(this + 474) != a2)
  {
    v3 = a2;
    v4 = this;
    this = HGNode::ClearBits(this, a2, a3);
    *(v4 + 474) = v3;
  }

  return this;
}

HGColorGamma *HGColorConform::GetOutput(HGColorConform *this, HGRenderer *a2)
{
  v4 = *(this + 121);
  if (v4 == -1)
  {
    if (HGColorConform::CreateColorConformHeliumGraph(this, a2))
    {
      goto LABEL_3;
    }
  }

  else if (HGColorConform::CreateColorConformHeliumGraph(this, a2, v4))
  {
LABEL_3:
    v5 = *(this + 51);
    Input = HGRenderer::GetInput(a2, this, 0);
    (*(*v5 + 120))(v5, 0, Input);
    return *(this + 52);
  }

  v8 = HGObject::operator new(0x4A0uLL);
  HGColorGamma::HGColorGamma(v8);
  HGColorGamma::SetAntiSymmetricToneCurves(v8, *(this + 474));
  v9 = HGRenderer::GetInput(a2, this, 0);
  (*(*v8 + 120))(v8, 0, v9);
  HGColorGamma::SetConversionPreset(v8, 0, v10);
  HGColorGamma::SetFallbackMode(v8, *(this + 432), v11);
  HGColorGamma::SetDitherMode(v8, *(this + 433), v12);
  HGColorGamma::SetInputPixelFormat(v8, *(this + 111), v13);
  HGColorGamma::SetOutputPixelFormat(v8, *(this + 110), *(this + 112));
  HGColorGamma::SetInOut422FilterMode(v8, *(this + 113), v14);
  HGColorGamma::SetInOut422FilterRect(v8, *(this + 456));
  HGColorGamma::SetFixedPointPrecisionMode(v8, *(this + 434), v15);
  HGColorGamma::SetPremultiplyState(v8, *(this + 472), *(this + 473));
  HGColorGamma::Set1DLutScaleAndOffset(v8, *(this + 119), *(this + 120), v16, v17);
  *(this + 51) = v8;
  *(this + 52) = v8;
  return v8;
}

uint64_t HGColorConform::CreateColorConformHeliumGraph(HGColorConform *this, uint64_t a2, int a3)
{
  v112 = *MEMORY[0x277D85DE8];
  v5 = *(this + 52);
  if (v5)
  {
    (*(*v5 + 24))(v5);
    *(this + 52) = 0;
  }

  if (a3 <= 2)
  {
    if (a3 == 1)
    {
      ColorGammaNode = HGObject::operator new(0x4A0uLL);
      HGColorGamma::HGColorGamma(ColorGammaNode);
      HGColorGamma::SetAntiSymmetricToneCurves(ColorGammaNode, *(this + 474));
      *(this + 51) = ColorGammaNode;
      HGColorGamma::Set1DLutScaleAndOffset(ColorGammaNode, *(this + 119), *(this + 120), v22, v23);
      if (HGColorGamma::SetConversion(ColorGammaNode, *(this + 122), *(this + 124), *(this + 126), *(this + 123), *(this + 125), *(this + 127)))
      {
        v11 = 0;
        *(this + 52) = ColorGammaNode;
        if (!ColorGammaNode)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v11 = HGObject::operator new(0x4A0uLL);
        HGColorGamma::HGColorGamma(v11);
        HGColorGamma::SetAntiSymmetricToneCurves(v11, *(this + 474));
        (*(*v11 + 120))(v11, 0, ColorGammaNode);
        (*(*ColorGammaNode + 24))(ColorGammaNode);
        HGColorGamma::SetConversion(ColorGammaNode, *(this + 122), *(this + 124), *(this + 126), *(this + 123), 8, 0);
        HGColorGamma::Set1DLutScaleAndOffset(v11, *(this + 119), *(this + 120), v29, v30);
        HGColorGamma::SetConversion(v11, *(this + 123), 8, 0, *(this + 123), *(this + 125), *(this + 127));
        *(this + 52) = v11;
      }

      goto LABEL_84;
    }

    if (a3 != 2)
    {
      goto LABEL_27;
    }

    v9 = *(this + 129);
    if (v9 <= 5)
    {
      if ((v9 - 1) < 2)
      {
        v11 = HGObject::operator new(0x4A0uLL);
        HGColorGamma::HGColorGamma(v11);
        HGColorGamma::SetAntiSymmetricToneCurves(v11, *(this + 474));
        *(this + 51) = v11;
        *(this + 52) = v11;
        v50 = *(this + 128);
        v51 = *(this + 132);
        if (*(this + 129) == 1)
        {
          HGColorGamma::SetConversion(v11, v50, 1, 3u, v51);
        }

        else
        {
          HGColorGamma::SetConversion(v11, v50, 4, 0, v51);
        }

        goto LABEL_85;
      }

      if ((v9 - 4) < 2)
      {
        ColorGammaNode = HGObject::operator new(0x4A0uLL);
        HGColorGamma::HGColorGamma(ColorGammaNode);
        HGColorGamma::SetAntiSymmetricToneCurves(ColorGammaNode, *(this + 474));
        v10 = HGObject::operator new(0x4A0uLL);
        HGColorGamma::HGColorGamma(v10);
        HGColorGamma::SetAntiSymmetricToneCurves(v10, *(this + 474));
        v11 = HGObject::operator new(0x4A0uLL);
        HGColorGamma::HGColorGamma(v11);
        HGColorGamma::SetAntiSymmetricToneCurves(v11, *(this + 474));
        (*(*v10 + 120))(v10, 0, ColorGammaNode);
        (*(*v11 + 120))(v11, 0, v10);
        (*(*ColorGammaNode + 24))(ColorGammaNode);
        (*(*v10 + 24))(v10);
        *(this + 51) = ColorGammaNode;
        *(this + 52) = v11;
        if (*(this + 129) == 4)
        {
          v12 = 12;
          v13 = 11;
        }

        else
        {
          v12 = 13;
          v13 = 12;
        }

        HGColorGamma::SetConversion(ColorGammaNode, *(this + 128), v12, v13, *(this + 132));
        __asm { FMOV            V0.4S, #1.0 }

        HGColorGamma::SetGammaFunction(v10, 18, v71, _Q0, 0, 0, 0, 0, 0, 0);
        HGColorGamma::SetToneQualityMode(v10, *(this + 109), v72);
        HGColorGamma::SetPremultiplyState(v10, 0, 0);
        HGColorGamma::SetConversion(v11, *(this + 132), 1, 0, *(this + 132), 8, 0);
        goto LABEL_84;
      }

      if (v9 == 3)
      {
        ColorGammaNode = HGColorConform::CreateColorGammaNode(this);
        v11 = HGColorConform::CreateColorGammaNode(this);
        (*(*v11 + 120))(v11, 0, ColorGammaNode);
        (*(*ColorGammaNode + 24))(ColorGammaNode);
        *(this + 51) = ColorGammaNode;
        *(this + 52) = v11;
        HGColorGamma::SetConversion(ColorGammaNode, *(this + 128), 0, 3u, *(this + 132));
        HGColorGamma::SetConversionPreset(v11, 0, v55);
        HGColorGamma::SetGammaFunction(v11, 0, v56, xmmword_2608171A0, 0, 0, 0, 0, 0, 0);
        HGColorGamma::Set1DLutScaleAndOffset(v11, *(this + 119), *(this + 120), v57, v58);
        goto LABEL_84;
      }

      goto LABEL_62;
    }

    if ((v9 - 6) >= 4)
    {
LABEL_62:
      v11 = HGColorConform::CreateColorGammaNode(this);
      *(this + 51) = v11;
      *(this + 52) = v11;
      HGColorGamma::Set1DLutScaleAndOffset(v11, *(this + 119), *(this + 120), v64, v65);
LABEL_63:
      HGColorGamma::SetConversionPreset(v11, 0, v27);
      goto LABEL_85;
    }

    ColorGammaNode = HGObject::operator new(0x4A0uLL);
    HGColorGamma::HGColorGamma(ColorGammaNode);
    HGColorGamma::SetAntiSymmetricToneCurves(ColorGammaNode, *(this + 474));
    v31 = HGObject::operator new(0x4A0uLL);
    HGColorGamma::HGColorGamma(v31);
    HGColorGamma::SetAntiSymmetricToneCurves(v31, *(this + 474));
    v11 = HGObject::operator new(0x4A0uLL);
    HGColorGamma::HGColorGamma(v11);
    HGColorGamma::SetAntiSymmetricToneCurves(v11, *(this + 474));
    v32 = *(this + 129);
    if (v32 == 9 || v32 == 7)
    {
      v33 = HGObject::operator new(0x1A0uLL);
      HgcColorGamma_bias_clamp::HgcColorGamma_bias_clamp(v33);
    }

    (*(*v31 + 120))(v31, 0, ColorGammaNode);
    (*(*v11 + 120))(v11, 0, v31);
    (*(*ColorGammaNode + 24))(ColorGammaNode);
    (*(*v31 + 24))(v31);
    *(this + 51) = ColorGammaNode;
    *(this + 52) = v11;
    v59 = *(this + 129);
    if (v59 == 9 || v59 == 7)
    {
      HGColorGamma::SetConversion(ColorGammaNode, 0, 1, *(this + 128), 0, 1, 0);
      v63 = *(this + 129);
      if (v63 == 9)
      {
        goto LABEL_70;
      }
    }

    else
    {
      if (v59 == 6)
      {
        v60 = 8;
        v61 = 5;
      }

      else
      {
        v60 = 9;
        v61 = 8;
      }

      HGColorGamma::SetConversion(ColorGammaNode, *(this + 128), v60, v61, *(this + 132));
      v63 = *(this + 129);
      if (v63 == 9)
      {
        goto LABEL_70;
      }
    }

    if (v63 != 7)
    {
LABEL_74:
      if (v63 == 7)
      {
        v75 = 7;
      }

      else if (v63 == 6)
      {
        v75 = 5;
        if (*(this + 768))
        {
          v75 = 6;
        }
      }

      else
      {
        v75 = 8;
      }

      v76 = v75 << 6;
      v77 = (&HGColorGamma::logGamutRGBToRec2020RGB + v76);
      v78 = (&HGColorGamma::logGamutRGBToRec709RGB + v76);
      if (*(this + 132) == 3)
      {
        v78 = v77;
      }

      v79 = (this + 764);
      v80 = vld1q_dup_f32(v79);
      v80.i32[3] = 1.0;
      v81 = vmulq_f32(v80, v78[1]);
      v108 = vmulq_f32(*v78, v80);
      v109 = v81;
      v82 = vmulq_f32(v80, v78[2]);
      v83 = vmulq_f32(v80, v78[3]);
      v110 = v82;
      v111 = v83;
      HGColorGamma::LoadMatrix2(ColorGammaNode, &v108, v62);
      __asm { FMOV            V0.4S, #1.0 }

      HGColorGamma::SetGammaFunction(v31, 18, v85, _Q0, 0, 0, 0, 0, 0, 0);
      HGColorGamma::SetToneQualityMode(v31, *(this + 109), v86);
      HGColorGamma::SetPremultiplyState(v31, 0, 0);
      HGColorGamma::SetConversion(v11, *(this + 132), 1, 0, *(this + 132), 8, 0);
      goto LABEL_84;
    }

LABEL_70:
    (*(MEMORY[0] + 96))(0, 0, 0.062561, 0.062561, 0.062561, 0.0);
    (*(MEMORY[0] + 96))(0, 1, 0.85631, 0.85631, 0.85631, 1.0);
    (*(MEMORY[0] + 96))(0, 2, -3.4028e38, -3.4028e38, -3.4028e38, -3.4028e38);
    (*(MEMORY[0] + 96))(0, 3, 3.4028e38, 3.4028e38, 3.4028e38, 3.4028e38);
    if (*(this + 129) == 7)
    {
      v73 = 7;
    }

    else
    {
      v73 = 8;
    }

    HGColorGamma::SetConversion(ColorGammaNode, 0, 9, v73, *(this + 132));
    HGColorGamma::SetToneQualityMode(ColorGammaNode, *(this + 109), v74);
    HGColorGamma::SetPremultiplyState(ColorGammaNode, 0, 0);
    v63 = *(this + 129);
    goto LABEL_74;
  }

  if (a3 != 3)
  {
    if (a3 == 4)
    {
      v19 = *(this + 139);
      v20 = HGObject::operator new(0x1A0uLL);
      v21 = v20;
      if (v19)
      {
        *(v20 + 24) = 0u;
        *(v20 + 25) = 0u;
        *(v20 + 22) = 0u;
        *(v20 + 23) = 0u;
        *(v20 + 20) = 0u;
        *(v20 + 21) = 0u;
        *(v20 + 18) = 0u;
        *(v20 + 19) = 0u;
        *(v20 + 16) = 0u;
        *(v20 + 17) = 0u;
        *(v20 + 14) = 0u;
        *(v20 + 15) = 0u;
        *(v20 + 12) = 0u;
        *(v20 + 13) = 0u;
        *(v20 + 10) = 0u;
        *(v20 + 11) = 0u;
        *(v20 + 8) = 0u;
        *(v20 + 9) = 0u;
        *(v20 + 6) = 0u;
        *(v20 + 7) = 0u;
        *(v20 + 4) = 0u;
        *(v20 + 5) = 0u;
        *(v20 + 2) = 0u;
        *(v20 + 3) = 0u;
        *v20 = 0u;
        *(v20 + 1) = 0u;
        HgcWhiteBalanceRAW::HgcWhiteBalanceRAW(v20);
      }

      HGDemosaic::HGDemosaic(v20);
      *(this + 51) = v21;
      (*(*v21 + 96))(v21, 0, *(this + 138), 0.0, 0.0, 0.0);
      (*(*v21 + 96))(v21, 1, *(this + 141), 0.0, 0.0, 0.0);
      (*(*v21 + 96))(v21, 2, 65535.0 / *(this + 140), 0.0, 0.0, 0.0);
      (*(*v21 + 96))(v21, 3, *(this + 145), *(this + 146), 0.0, 0.0);
      (*(*v21 + 96))(v21, 4, *(this + 142), 0.0, 0.0, 0.0);
      (*(*v21 + 96))(v21, 5, *(this + 147), 0.0, 0.0, 0.0);
      (*(*v21 + 96))(v21, 6, *(this + 148), 0.0, 0.0, 0.0);
      (*(*v21 + 96))(v21, 7, *(this + 149), 0.0, 0.0, 0.0);
      v34.n128_u32[0] = *(this + 143);
      v35.n128_u32[0] = *(this + 144);
      v36.n128_u64[0] = 0;
      v37.n128_u64[0] = 0;
      (*(*v21 + 96))(v21, 8, v34, v35, v36, v37);
      v38 = HGObject::operator new(0x1F0uLL);
      HGColorMatrix::HGColorMatrix(v38);
    }

    if (a3 == 5)
    {
      ColorGammaNode = HGObject::operator new(0x4A0uLL);
      HGColorGamma::HGColorGamma(ColorGammaNode);
      HGColorGamma::SetAntiSymmetricToneCurves(ColorGammaNode, *(this + 474));
      if (*(*(this + 67) + 16))
      {
        if ((*(this + 756) & 1) == 0)
        {
          v7 = HGObject::operator new(0x1A0uLL);
          HgcASC_CDL::HgcASC_CDL(v7);
          (*(*v7 + 120))(v7, 0, ColorGammaNode);
          (*(*ColorGammaNode + 24))(ColorGammaNode);
          (*(*v7 + 96))(v7, 0, *(this + 179), *(this + 180), *(this + 181), 1.0);
          (*(*v7 + 96))(v7, 1, *(this + 182), *(this + 183), *(this + 184), 0.0);
          (*(*v7 + 96))(v7, 2, *(this + 185), *(this + 186), *(this + 187), 1.0);
          (*(*v7 + 96))(v7, 3, *(this + 188), 0.0, 0.0, 0.0);
        }

        v8 = HGObject::operator new(0x210uLL);
        HGApply3DLUT::HGApply3DLUT(v8, *(*(this + 67) + 32), 0x19u, 1, 1, 1, 1, 1, *(*(this + 67) + 24), *(*(this + 67) + 28), 0.0, 1.0, 0.0, 0.0, 0);
      }

      v11 = HGObject::operator new(0x4A0uLL);
      HGColorGamma::HGColorGamma(v11);
      HGColorGamma::SetAntiSymmetricToneCurves(v11, *(this + 474));
      (*(*v11 + 120))(v11, 0, ColorGammaNode);
      (*(*ColorGammaNode + 24))(ColorGammaNode);
      *(this + 51) = ColorGammaNode;
      *(this + 52) = v11;
      v52 = *(this + 136);
      if (v52)
      {
        HGColorGamma::SetConversion(ColorGammaNode, 0, 1, v52, 0, 1, 0);
      }

      HGColorGamma::SetConversion(v11, *(*(this + 67) + 108), *(*(this + 67) + 112), 0, *(this + 137), 8, 0);
      if (!ColorGammaNode)
      {
        goto LABEL_85;
      }

LABEL_84:
      HGColorGamma::SetToneQualityMode(ColorGammaNode, *(this + 109), v24);
      HGColorGamma::SetFallbackMode(ColorGammaNode, *(this + 432), v87);
      HGColorGamma::SetInOut422FilterMode(ColorGammaNode, *(this + 113), v88);
      HGColorGamma::SetInOut422FilterRect(ColorGammaNode, *(this + 456));
      HGColorGamma::SetFixedPointPrecisionMode(ColorGammaNode, *(this + 434), v89);
      goto LABEL_85;
    }

LABEL_27:
    v11 = HGObject::operator new(0x4A0uLL);
    HGColorGamma::HGColorGamma(v11);
    HGColorGamma::SetAntiSymmetricToneCurves(v11, *(this + 474));
    *(this + 51) = v11;
    *(this + 52) = v11;
    HGColorGamma::Set1DLutScaleAndOffset(v11, *(this + 119), *(this + 120), v25, v26);
    switch(a3)
    {
      case 6:
        HGColorGamma::SetConversionPreset(v11, 1, v27);
        goto LABEL_85;
      case 7:
        HGColorGamma::SetConversionPreset(v11, 2, v27);
        goto LABEL_85;
      case 8:
        HGColorGamma::SetConversionPreset(v11, 3, v27);
        goto LABEL_85;
      case 9:
        HGColorGamma::SetConversionPreset(v11, 4, v27);
        goto LABEL_85;
      case 10:
        HGColorGamma::SetConversionPreset(v11, 5, v27);
        goto LABEL_85;
      case 11:
        HGColorGamma::SetConversionPreset(v11, 6, v27);
        goto LABEL_85;
      case 12:
        v103 = v11;
        v104 = 0;
        v105 = 1;
        v106 = 1;
        goto LABEL_120;
      case 13:
        v103 = v11;
        v104 = 2;
        goto LABEL_119;
      case 14:
        v103 = v11;
        v104 = 1;
LABEL_119:
        v105 = 1;
        v106 = 2;
        goto LABEL_120;
      case 15:
        v103 = v11;
        v104 = 0;
        goto LABEL_109;
      case 16:
        v103 = v11;
        v104 = 2;
LABEL_109:
        v105 = 1;
        v106 = 0;
LABEL_120:
        v107 = 8;
        goto LABEL_123;
      case 17:
        HGColorGamma::SetConversion(v11, 0, 8, 0, 0, 1, 1u);
        goto LABEL_85;
      case 18:
        v101 = v11;
        v102 = 2;
        goto LABEL_115;
      case 19:
        v101 = v11;
        v102 = 1;
LABEL_115:
        HGColorGamma::SetConversion(v101, 0, 8, 0, v102, 1, 2u);
        goto LABEL_85;
      case 20:
        v103 = v11;
        v104 = 0;
        v105 = 8;
        v106 = 0;
        goto LABEL_122;
      case 21:
        v103 = v11;
        v104 = 0;
        v105 = 1;
        v106 = 1;
LABEL_122:
        v107 = 1;
LABEL_123:
        HGColorGamma::SetConversion(v103, v104, v105, v106, 0, v107, 0);
        break;
      default:
        goto LABEL_63;
    }

    goto LABEL_85;
  }

  v14 = *(this + 130);
  if ((v14 & 0xFFFFFFFE) == 8)
  {
    v15 = HGObject::operator new(0x4A0uLL);
    v16 = v15;
    if (v14 != 8)
    {
      HGColorGamma::HGColorGamma(v15);
      HGColorGamma::SetAntiSymmetricToneCurves(v16, *(this + 474));
      v39 = HGObject::operator new(0x1A0uLL);
      HgcColorGamma_bias_clamp::HgcColorGamma_bias_clamp(v39);
    }

    HGColorGamma::HGColorGamma(v15);
    HGColorGamma::SetAntiSymmetricToneCurves(v16, *(this + 474));
    *(this + 51) = v16;
    *(this + 52) = v16;
    v11 = v16;
    v17 = *(this + 130);
    if (v17 == 8)
    {
      v18 = *(this + 128);
    }

    else
    {
      v18 = 0;
    }

    HGColorGamma::SetConversion(v16, v18, v17, *(this + 131), *(this + 132));
    v41 = *(this + 131);
    if (v41 - 5 <= 1)
    {
      if (*(this + 768))
      {
        v41 = 6;
      }

      else
      {
        v41 = 5;
      }
    }

    v42 = v41 << 6;
    v43 = (&HGColorGamma::logGamutRGBToRec709RGB + v42);
    v44 = (&HGColorGamma::logGamutRGBToRec2020RGB + v42);
    if (!*(this + 132))
    {
      v44 = v43;
    }

    v45 = (this + 764);
    v46 = vld1q_dup_f32(v45);
    v46.i32[3] = 1.0;
    v47 = vmulq_f32(v46, v44[1]);
    v108 = vmulq_f32(*v44, v46);
    v109 = v47;
    v48 = vmulq_f32(v46, v44[2]);
    v49 = vmulq_f32(v46, v44[3]);
    v110 = v48;
    v111 = v49;
    HGColorGamma::LoadMatrix2(v16, &v108, v40);
  }

  else
  {
    v11 = HGObject::operator new(0x4A0uLL);
    HGColorGamma::HGColorGamma(v11);
    HGColorGamma::SetAntiSymmetricToneCurves(v11, *(this + 474));
    *(this + 51) = v11;
    *(this + 52) = v11;
    v28 = *(this + 130);
    if (v28 == -1)
    {
      HGColorGamma::SetConversionPreset(v11, 0, v28);
      HGColorGamma::Set1DLutScaleAndOffset(v11, *(this + 119), *(this + 120), v53, v54);
    }

    else
    {
      HGColorGamma::SetConversion(v11, *(this + 128), v28, *(this + 131), *(this + 132));
      if (*(this + 130) == 2)
      {
        HGColorGamma::SetARRILogCExposureIndex(v11, *(this + 190), v24);
      }
    }
  }

LABEL_85:
  if (v11)
  {
    HGColorGamma::SetToneQualityMode(v11, *(this + 109), v24);
    HGColorGamma::SetFallbackMode(v11, *(this + 432), v90);
    HGColorGamma::SetInOut422FilterMode(v11, *(this + 113), v91);
    HGColorGamma::SetInOut422FilterRect(v11, *(this + 456));
    HGColorGamma::SetFixedPointPrecisionMode(v11, *(this + 434), v92);
  }

  v93 = *(this + 52);
  if (!v93)
  {
    return 0;
  }

  v94 = *(this + 51);
  if (v94)
  {
  }

  else
  {
    v95 = 0;
  }

  if (v98)
  {
    if (!v95)
    {
      goto LABEL_97;
    }

    goto LABEL_96;
  }

  v98 = HGObject::operator new(0x4A0uLL);
  HGColorGamma::HGColorGamma(v98);
  HGColorGamma::SetAntiSymmetricToneCurves(v98, *(this + 474));
  (*(*v98 + 120))(v98, 0, *(this + 52));
  (*(**(this + 52) + 24))(*(this + 52));
  *(this + 52) = v98;
  if (v95)
  {
LABEL_96:
    HGColorGamma::SetInputPixelFormat(v95, *(this + 111), v97);
  }

LABEL_97:
  HGColorGamma::SetOutputPixelFormat(v98, *(this + 110), *(this + 112));
  HGColorGamma::SetDitherMode(v98, *(this + 433), v99);
  HGColorGamma::SetFixedPointPrecisionMode(v98, *(this + 434), v100);
  if (*(this + 51) == *(this + 52))
  {
    HGColorGamma::SetPremultiplyState(v98, *(this + 472), *(this + 473));
  }

  else
  {
    if (v95)
    {
      HGColorGamma::SetPremultiplyState(v95, *(this + 472), 0);
    }

    HGColorGamma::SetPremultiplyState(v98, 0, *(this + 473));
  }

  return 1;
}

uint64_t HGColorConform::CreateColorConformHeliumGraph(HGColorConform *this, HGRenderer *a2)
{
  v92 = *MEMORY[0x277D85DE8];
  v2 = *(this + 53);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 16);
  v4 = (v3[1] - *v3) >> 3;
  if (!v4)
  {
    return 0;
  }

  v6 = *(this + 52);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  if (v4 >= 1)
  {
    v7 = v4;
    v8 = 0;
    v9 = 0;
    v87 = v7;
    while (1)
    {
      v11 = v7 - v8;
      if (v11 >= 3)
      {
        break;
      }

      if (v11 == 2)
      {
        v13 = *v3;
        v12 = v8;
        v14 = (v3[1] - *v3) >> 3;
        goto LABEL_32;
      }

      if (v11 >= 1)
      {
        v13 = *v3;
        v12 = v8;
        v14 = (v3[1] - *v3) >> 3;
LABEL_63:
        if (v14 <= v12)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v53 = **(v13 + 8 * v12);
        if (v53 < 2)
        {
          if (v53 == 1)
          {
            v10 = HGObject::operator new(0x4A0uLL);
            HGColorGamma::HGColorGamma(v10);
            HGColorGamma::SetAntiSymmetricToneCurves(v10, *(this + 474));
            HGColorGamma::SetPremultiplyState(v10, 0, 0);
            HGColorGamma::Set1DLutScaleAndOffset(v10, *(this + 119), *(this + 120), v63, v64);
            HGColorGamma::SetToneQualityMode(v10, *(this + 109), v65);
            HGColorGamma::SetFallbackMode(v10, *(this + 432), v66);
            HGColorGamma::SetInOut422FilterMode(v10, *(this + 113), v67);
            HGColorGamma::SetInOut422FilterRect(v10, *(this + 456));
            HGColorGamma::SetFixedPointPrecisionMode(v10, *(this + 434), v68);
            if (v12 >= (v3[1] - *v3) >> 3)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            v88 = *(*(*v3 + 8 * v12) + 16);
            if (v12 >= (v3[1] - *v3) >> 3)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            v89 = *(*(*v3 + 8 * v12) + 32);
            if (v12 >= (v3[1] - *v3) >> 3)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            v90 = *(*(*v3 + 8 * v12) + 48);
            if (v12 >= (v3[1] - *v3) >> 3)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            v91 = *(*(*v3 + 8 * v12) + 64);
            Matrix1 = HGColorGamma::LoadMatrix1(v10, &v88, v69);
            if (v8)
            {
              (*(*v10 + 120))(v10, 0, v9, Matrix1);
              (*(*v9 + 24))(v9);
              goto LABEL_103;
            }

LABEL_102:
            *(this + 51) = v10;
            goto LABEL_103;
          }
        }

        else
        {
          if (v53 <= 6)
          {
            v10 = HGObject::operator new(0x4A0uLL);
            HGColorGamma::HGColorGamma(v10);
            HGColorGamma::SetAntiSymmetricToneCurves(v10, *(this + 474));
            HGColorGamma::SetPremultiplyState(v10, 0, 0);
            HGColorGamma::Set1DLutScaleAndOffset(v10, *(this + 119), *(this + 120), v54, v55);
            HGColorGamma::SetToneQualityMode(v10, *(this + 109), v56);
            HGColorGamma::SetFallbackMode(v10, *(this + 432), v57);
            HGColorGamma::SetInOut422FilterMode(v10, *(this + 113), v58);
            HGColorGamma::SetInOut422FilterRect(v10, *(this + 456));
            HGColorGamma::SetFixedPointPrecisionMode(v10, *(this + 434), v59);
            if (v12 >= (v3[1] - *v3) >> 3)
            {
              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            v61 = *(*v3 + 8 * v12);
            if ((*v61 - 3) >= 4)
            {
              v62 = 0;
            }

            else
            {
              v62 = (*v61 - 2);
            }

            HGColorGamma::SetGammaFunction(v10, v62, v60, *(v61 + 80), *(v61 + 96), *(v61 + 112), *(v61 + 128), *(v61 + 144), *(v61 + 160), *(v61 + 176));
            if (v8)
            {
              (*(*v10 + 120))(v10, 0, v9);
              (*(*v9 + 24))(v9);
LABEL_103:
              ++v8;
              goto LABEL_8;
            }

            goto LABEL_102;
          }

          if (v53 == 8)
          {
            if ((atomic_load_explicit(&qword_27FE4B5A8, memory_order_acquire) & 1) == 0)
            {
              HGColorConform::CreateColorConformHeliumGraph();
            }

            HGLUTCacheManager::getLUTCache(*(a2 + 69), &off_280C5C508);
            if (v12 < (v3[1] - *v3) >> 3)
            {
              v73 = *(*(*v3 + 8 * v12) + 204);
              if (v73 != 25 && v73 != 19)
              {
                v76 = HGObject::operator new(0x210uLL);
                if (v12 < (v3[1] - *v3) >> 3)
                {
                  HGApply3DLUT::HGApply3DLUT(v76, *(*(*v3 + 8 * v12) + 200), *(*(*v3 + 8 * v12) + 204), 1, 1, 1, 1, 1, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0);
                }

                std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
              }

              v75 = HGObject::operator new(0x210uLL);
              if (v12 < (v3[1] - *v3) >> 3)
              {
                HGApply3DLUT::HGApply3DLUT(v75, *(*(*v3 + 8 * v12) + 200), 0x19u, 1, 1, 1, 1, 1, 1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0);
              }

              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          if (v53 == 7)
          {
            v71 = HGObject::operator new(0x1D0uLL);
            HGApply1DLUT::HGApply1DLUT(v71);
            if (v12 < (v3[1] - *v3) >> 3)
            {
              HGApply1DLUT::Init(v71, *(*(*v3 + 8 * v12) + 200), 1.0, 0.0, 1, 1, 1, *(*(*v3 + 8 * v12) + 216), 1, 1);
              if ((atomic_load_explicit(&_MergedGlobals_103, memory_order_acquire) & 1) == 0)
              {
                HGColorConform::CreateColorConformHeliumGraph();
              }

              if (v12 < (v3[1] - *v3) >> 3)
              {
                v72 = *(*(*v3 + 8 * v12) + 208);
                if (v72)
                {
                  (*(*v72 + 16))(v72);
                }

                operator new();
              }

              std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
            }

            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }
        }
      }

      v10 = v9;
LABEL_8:
      v9 = v10;
      v7 = v87;
      if (v8 >= v87)
      {
        goto LABEL_106;
      }
    }

    v12 = v8;
    v13 = *v3;
    v14 = (v3[1] - *v3) >> 3;
    if (v14 <= v8)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    if (**(v13 + 8 * v8) == 1)
    {
      v15 = v8 + 1;
      if (v14 <= v15)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      if ((**(v13 + 8 * v15) - 2) <= 4)
      {
        v16 = v8 + 2;
        if (v14 <= v16)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        if (**(v13 + 8 * v16) == 1)
        {
          v10 = HGObject::operator new(0x4A0uLL);
          HGColorGamma::HGColorGamma(v10);
          HGColorGamma::SetAntiSymmetricToneCurves(v10, *(this + 474));
          HGColorGamma::SetPremultiplyState(v10, 0, 0);
          HGColorGamma::Set1DLutScaleAndOffset(v10, *(this + 119), *(this + 120), v17, v18);
          if (v8 >= ((v3[1] - *v3) >> 3))
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v88 = *(*(*v3 + 8 * v8) + 16);
          if (v8 >= ((v3[1] - *v3) >> 3))
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v89 = *(*(*v3 + 8 * v8) + 32);
          if (v8 >= ((v3[1] - *v3) >> 3))
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v90 = *(*(*v3 + 8 * v8) + 48);
          if (v8 >= ((v3[1] - *v3) >> 3))
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v91 = *(*(*v3 + 8 * v8) + 64);
          HGColorGamma::LoadMatrix1(v10, &v88, v19);
          HGColorGamma::SetToneQualityMode(v10, *(this + 109), v20);
          HGColorGamma::SetFallbackMode(v10, *(this + 432), v21);
          HGColorGamma::SetInOut422FilterMode(v10, *(this + 113), v22);
          HGColorGamma::SetInOut422FilterRect(v10, *(this + 456));
          HGColorGamma::SetFixedPointPrecisionMode(v10, *(this + 434), v23);
          if (v15 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v25 = *(*v3 + 8 * v15);
          if ((*v25 - 3) >= 4)
          {
            v26 = 0;
          }

          else
          {
            v26 = (*v25 - 2);
          }

          HGColorGamma::SetGammaFunction(v10, v26, v24, *(v25 + 80), *(v25 + 96), *(v25 + 112), *(v25 + 128), *(v25 + 144), *(v25 + 160), *(v25 + 176));
          if (v16 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v88 = *(*(*v3 + 8 * v16) + 16);
          if (v16 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v89 = *(*(*v3 + 8 * v16) + 32);
          if (v16 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v90 = *(*(*v3 + 8 * v16) + 48);
          if (v16 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v91 = *(*(*v3 + 8 * v16) + 64);
          Matrix2 = HGColorGamma::LoadMatrix2(v10, &v88, v27);
          if (v8)
          {
            (*(*v10 + 120))(v10, 0, v9, Matrix2);
            (*(*v9 + 24))(v9);
            v8 += 3;
          }

          else
          {
            *(this + 51) = v10;
            v8 = 3;
          }

          goto LABEL_8;
        }
      }
    }

LABEL_32:
    if (v14 <= v12)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    v29 = **(v13 + 8 * v12);
    if (v29 < 2)
    {
      if (v29 == 1)
      {
        v42 = v8 + 1;
        if (v14 <= v42)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        if ((**(v13 + 8 * v42) - 2) <= 4)
        {
          v10 = HGObject::operator new(0x4A0uLL);
          HGColorGamma::HGColorGamma(v10);
          HGColorGamma::SetAntiSymmetricToneCurves(v10, *(this + 474));
          HGColorGamma::SetPremultiplyState(v10, 0, 0);
          HGColorGamma::Set1DLutScaleAndOffset(v10, *(this + 119), *(this + 120), v43, v44);
          HGColorGamma::SetToneQualityMode(v10, *(this + 109), v45);
          HGColorGamma::SetFallbackMode(v10, *(this + 432), v46);
          HGColorGamma::SetInOut422FilterMode(v10, *(this + 113), v47);
          HGColorGamma::SetInOut422FilterRect(v10, *(this + 456));
          HGColorGamma::SetFixedPointPrecisionMode(v10, *(this + 434), v48);
          if (v12 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v88 = *(*(*v3 + 8 * v12) + 16);
          if (v12 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v89 = *(*(*v3 + 8 * v12) + 32);
          if (v12 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v90 = *(*(*v3 + 8 * v12) + 48);
          if (v12 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v91 = *(*(*v3 + 8 * v12) + 64);
          HGColorGamma::LoadMatrix1(v10, &v88, v49);
          if (v42 >= (v3[1] - *v3) >> 3)
          {
            std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
          }

          v51 = *(*v3 + 8 * v42);
          if ((*v51 - 3) >= 4)
          {
            v52 = 0;
          }

          else
          {
            v52 = (*v51 - 2);
          }

          HGColorGamma::SetGammaFunction(v10, v52, v50, *(v51 + 80), *(v51 + 96), *(v51 + 112), *(v51 + 128), *(v51 + 144), *(v51 + 160), *(v51 + 176));
          if (!v8)
          {
LABEL_88:
            *(this + 51) = v10;
            v8 += 2;
            goto LABEL_8;
          }

          (*(*v10 + 120))(v10, 0, v9);
          (*(*v9 + 24))(v9);
          goto LABEL_60;
        }
      }
    }

    else if (v29 <= 6)
    {
      v30 = v8 + 1;
      if (v14 <= v30)
      {
        std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
      }

      if (**(v13 + 8 * v30) == 1)
      {
        v10 = HGObject::operator new(0x4A0uLL);
        HGColorGamma::HGColorGamma(v10);
        HGColorGamma::SetAntiSymmetricToneCurves(v10, *(this + 474));
        HGColorGamma::SetPremultiplyState(v10, 0, 0);
        HGColorGamma::Set1DLutScaleAndOffset(v10, *(this + 119), *(this + 120), v31, v32);
        HGColorGamma::SetToneQualityMode(v10, *(this + 109), v33);
        HGColorGamma::SetFallbackMode(v10, *(this + 432), v34);
        HGColorGamma::SetInOut422FilterMode(v10, *(this + 113), v35);
        HGColorGamma::SetInOut422FilterRect(v10, *(this + 456));
        HGColorGamma::SetFixedPointPrecisionMode(v10, *(this + 434), v36);
        if (v12 >= (v3[1] - *v3) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v38 = *(*v3 + 8 * v12);
        if ((*v38 - 3) >= 4)
        {
          v39 = 0;
        }

        else
        {
          v39 = (*v38 - 2);
        }

        HGColorGamma::SetGammaFunction(v10, v39, v37, *(v38 + 80), *(v38 + 96), *(v38 + 112), *(v38 + 128), *(v38 + 144), *(v38 + 160), *(v38 + 176));
        if (v30 >= (v3[1] - *v3) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v88 = *(*(*v3 + 8 * v30) + 16);
        if (v30 >= (v3[1] - *v3) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v89 = *(*(*v3 + 8 * v30) + 32);
        if (v30 >= (v3[1] - *v3) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v90 = *(*(*v3 + 8 * v30) + 48);
        if (v30 >= (v3[1] - *v3) >> 3)
        {
          std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
        }

        v91 = *(*(*v3 + 8 * v30) + 64);
        v41 = HGColorGamma::LoadMatrix2(v10, &v88, v40);
        if (!v8)
        {
          goto LABEL_88;
        }

        (*(*v10 + 120))(v10, 0, v9, v41);
        (*(*v9 + 24))(v9);
LABEL_60:
        v8 += 2;
        goto LABEL_8;
      }
    }

    goto LABEL_63;
  }

  v10 = 0;
LABEL_106:
  *(this + 52) = v10;
  v78 = *(this + 51);
  {
    if (!v10)
    {
      goto LABEL_112;
    }
  }

  else
  {
    v79 = HGObject::operator new(0x4A0uLL);
    HGColorGamma::HGColorGamma(v79);
    HGColorGamma::SetAntiSymmetricToneCurves(v79, *(this + 474));
    (*(**(this + 51) + 120))(*(this + 51), 0, v79);
    (*(*v79 + 24))(v79);
    *(this + 51) = v79;
    v10 = *(this + 52);
    if (!v10)
    {
LABEL_112:
      v81 = HGObject::operator new(0x4A0uLL);
      HGColorGamma::HGColorGamma(v81);
      HGColorGamma::SetAntiSymmetricToneCurves(v81, *(this + 474));
      (*(*v81 + 120))(v81, 0, *(this + 52));
      (*(**(this + 52) + 24))(*(this + 52));
      *(this + 52) = v81;
      goto LABEL_113;
    }
  }

  if (!v81)
  {
    goto LABEL_112;
  }

LABEL_113:
  HGColorGamma::SetInputPixelFormat(v79, *(this + 111), v80);
  HGColorGamma::SetOutputPixelFormat(v81, *(this + 110), *(this + 112));
  HGColorGamma::SetDitherMode(v81, *(this + 433), v82);
  HGColorGamma::SetFixedPointPrecisionMode(v79, *(this + 434), v83);
  HGColorGamma::SetFixedPointPrecisionMode(v81, *(this + 434), v84);
  v85 = *(this + 472);
  if (*(this + 51) == *(this + 52))
  {
    HGColorGamma::SetPremultiplyState(v79, v85, *(this + 473));
  }

  else
  {
    HGColorGamma::SetPremultiplyState(v79, v85, 0);
    HGColorGamma::SetPremultiplyState(v81, 0, *(this + 473));
  }

  return 1;
}