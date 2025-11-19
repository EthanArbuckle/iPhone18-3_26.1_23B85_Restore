uint64_t HGHWBlendFlipped::AllocateStates(HGHWBlendFlipped *this, HGRenderer *a2)
{
  result = (*(*a2 + 304))(a2);
  if (!result)
  {
    if ((*(this + 57) - *(this + 56)) >> 3)
    {
      return result;
    }

LABEL_5:
    operator new();
  }

  result = (*(*a2 + 128))(a2, 5);
  if (result > ((*(this + 57) - *(this + 56)) >> 3))
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t HGHWBlendFlipped::DeleteStates(uint64_t this)
{
  v1 = *(this + 456) - *(this + 448);
  if ((v1 >> 3) >= 1)
  {
    v2 = this;
    v3 = ((v1 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      this = *(*(v2 + 448) + 8 * v3);
      if (this)
      {
        this = MEMORY[0x2666E9F00](this, 0x1000C40811E05F4);
      }

      v4 = v3-- + 1;
    }

    while (v4 > 1);
  }

  return this;
}

uint64_t HGHWBlendFlipped::Bind(HGHWBlendFlipped *this, HGHandler *a2)
{
  if (*(this + 56) != *(this + 57))
  {
    (*(*this + 616))(this, 0);
    (*(*a2 + 144))(a2, 0, **(this + 56), 1);
    v4 = *(this + 106);
    if (v4 - 9 <= 0x20 && HGHWBlendFlipped::GetGammaBlendMode(this, v4, *(this + 105)) == 1)
    {
      (*(*a2 + 144))(a2, 1, **(this + 56) + 16, 1);
      if (*(this + 106) != 26)
      {
        (*(*a2 + 144))(a2, 2, **(this + 56) + 32, 1);
      }
    }
  }

  return 0;
}

float HGHWBlendFlipped::UpdateLocalParameters(float32x4_t *this, int a2, float result)
{
  v3 = this[28].i64[0];
  if (((this[28].i64[1] - v3) >> 3) > a2)
  {
    if ((this[26].i32[2] & 0xFFFFFFFE) == 0x24 && (this[30].i8[1] & 1) == 0)
    {
      v6 = this[26].f32[0];
      v7 = this[31];
      v5.i64[0] = vmulq_n_f32(v7, v6).u64[0];
      v5.i64[1] = __PAIR64__(LODWORD(v6), COERCE_UNSIGNED_INT(vmuls_lane_f32(v6, v7, 2)));
    }

    else
    {
      f32 = this[26].f32;
      v5 = vld1q_dup_f32(f32);
    }

    **(v3 + 8 * a2) = v5;
    __asm { FMOV            V1.4S, #1.0 }

    HIDWORD(v13) = HIDWORD(_Q1);
    *&v13 = 1.0 / this[26].f32[1];
    *(&v13 + 1) = *&v13;
    *(&v13 + 2) = *&v13;
    *(*(this[28].i64[0] + 8 * a2) + 16) = v13;
    result = this[26].f32[1];
    *&_Q1 = result;
    *(&_Q1 + 1) = result;
    *(&_Q1 + 2) = result;
    *(*(this[28].i64[0] + 8 * a2) + 32) = _Q1;
  }

  return result;
}

uint64_t HGHWBlendFlipped::RenderTile(float32x4_t *this, HGTile *a2, unsigned int a3, float *a4)
{
  v4 = *(*(a2 + 42) + 160);
  v5 = this[28].i64[0];
  if (v4 >= ((this[28].i64[1] - v5) >> 3))
  {
    return 0;
  }

  if ((a3 & 0xFFFFFFFE) == 0x24 && (this[30].i8[1] & 1) == 0)
  {
    v8 = this[31];
    *&v6 = vmul_f32(*a4, *v8.f32);
    DWORD2(v6) = vmuls_lane_f32(a4[2], v8, 2);
  }

  else
  {
    *&v6 = *a4;
    *(&v6 + 2) = a4[2];
  }

  *(&v6 + 3) = a4[3];
  **(v5 + 8 * v4) = v6;
  *(*(this[28].i64[0] + 8 * v4) + 16) = *(a4 + 1);
  *(*(this[28].i64[0] + 8 * v4) + 32) = *(a4 + 2);
  if (*(a2 + 10) && *(a2 + 12) && a3 - 9 <= 0x20)
  {
    v11 = *(&s_func_glblend_table[3 * a3 - 27] + HGHWBlendFlipped::GetGammaBlendMode(this, a3, a4[8]));
    v12 = *(this[28].i64[0] + 8 * v4);

    return v11(a2, v12, this);
  }

  else
  {

    return HGLegacyBlend::RenderTile(this, a2, a3, a4);
  }
}

uint64_t HGHWBlendFlipped::GetProgram(HGHWBlendFlipped *this, HGRenderer *a2)
{
  v2 = *(this + 106) - 9;
  if (v2 > 0x20)
  {

    return HGLegacyBlend::GetProgram(this, a2);
  }

  else
  {
    v4 = *(&s_arb_glblend_table[3 * v2] + HGHWBlendFlipped::GetGammaBlendMode(this, *(this + 106), *(this + 105)));

    return v4(a2);
  }
}

uint64_t HGHWBlendFlipped::InitProgramDescriptor(HGHWBlendFlipped *this, HGProgramDescriptor *a2)
{
  v2 = *(this + 106) - 9;
  if (v2 > 0x20)
  {

    return HGLegacyBlend::InitProgramDescriptor(this, a2);
  }

  else
  {
    v4 = *(&s_programdesc_glblend_table + 3 * v2 + HGHWBlendFlipped::GetGammaBlendMode(this, *(this + 106), *(this + 105)));

    return v4(a2);
  }
}

const char *HGHWBlendFlipped::GetOpacityProgram(HGHWBlendFlipped *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000236\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0)*hg_Params[0];\n    return output;\n}\n//MD5=5499c239:9891868e:bd9ea6d3:bd30d467\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000228\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0*hg_Params[0];\n    return output;\n}\n//MD5=6eae314a:ee581af3:fdfce447:74b07bd6\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001f6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0*hg_ProgramLocal0;\n}\n//MD5=78149511:5c47b7fc:9d3dfb0a:c601ba4b\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *HGHWBlendFlipped::GetMetalOpacityProgram(HGHWBlendFlipped *this, HGRenderer *a2)
{
  v3 = (*(*a2 + 128))(a2, 32);
  (*(*a2 + 120))(a2, 32, 396048);
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      v5 = "//Metal1.0     \n//LEN=0000000236\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0)*hg_Params[0];\n    return output;\n}\n//MD5=5499c239:9891868e:bd9ea6d3:bd30d467\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      v5 = "//Metal1.0     \n//LEN=0000000228\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0*hg_Params[0];\n    return output;\n}\n//MD5=6eae314a:ee581af3:fdfce447:74b07bd6\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    v5 = 0;
  }

  else
  {
    v5 = "//GLfs2.0      \n//LEN=00000001f6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0*hg_ProgramLocal0;\n}\n//MD5=78149511:5c47b7fc:9d3dfb0a:c601ba4b\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }

  (*(*a2 + 120))(a2, 32, v3);
  return v5;
}

double HGHWBlendFlipped::State::State(HGHWBlendFlipped::State *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  __asm { FMOV            V1.4S, #1.0 }

  *(this + 2) = 0u;
  *(this + 3) = _Q1;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 5) = xmmword_260344600;
  *(this + 6) = vdupq_n_s32(0x358637BDu);
  *(this + 7) = vdupq_n_s32(0x3F804020u);
  *(this + 8) = xmmword_260344C10;
  _Q1.i64[0] = 0x7F0000007FLL;
  _Q1.i64[1] = 0x7F0000007FLL;
  *(this + 9) = xmmword_260344C20;
  *(this + 10) = vnegq_f32(_Q1);
  *(this + 11) = xmmword_260344C40;
  *(this + 12) = xmmword_260344C50;
  *(this + 13) = xmmword_260344B50;
  *(this + 14) = xmmword_260344C60;
  *(this + 15) = xmmword_260344C70;
  *(this + 16) = xmmword_260344C80;
  *(this + 17) = xmmword_260344C90;
  *(this + 18) = xmmword_260344CA0;
  *(this + 19) = xmmword_260344CB0;
  *(this + 20) = xmmword_260344CC0;
  *(this + 21) = xmmword_260344CD0;
  *(this + 22) = xmmword_260344CE0;
  *(this + 23) = xmmword_260818860;
  *(this + 24) = xmmword_260818A10;
  *(this + 25) = xmmword_26034C6E0;
  *(this + 26) = xmmword_260818A20;
  _Q1.i64[0] = 0x80000000800000;
  _Q1.i64[1] = 0x80000000800000;
  *(this + 27) = xmmword_260345A50;
  *(this + 28) = vnegq_f32(_Q1);
  *(this + 29) = xmmword_260818A30;
  *(this + 30) = xmmword_260818A40;
  *(this + 31) = xmmword_260344B20;
  *(this + 32) = xmmword_2603427D0;
  _Q1.i64[0] = 0x3F0000003FLL;
  _Q1.i64[1] = 0x3F0000003FLL;
  *(this + 33) = xmmword_260818690;
  *(this + 34) = _Q1;
  *(this + 35) = xmmword_2608186A0;
  *(this + 36) = xmmword_2608186B0;
  *(this + 37) = xmmword_2608186C0;
  *(this + 38) = xmmword_2608186D0;
  *(this + 39) = xmmword_2608186E0;
  *(this + 40) = xmmword_2608186F0;
  *(this + 41) = xmmword_260818700;
  *(this + 42) = xmmword_260818710;
  *(this + 43) = xmmword_260818720;
  *(this + 44) = xmmword_260818730;
  *(this + 45) = xmmword_260818740;
  *(this + 46) = xmmword_260818750;
  *(this + 47) = xmmword_260818760;
  *(this + 48) = xmmword_260818770;
  *(this + 49) = xmmword_260818780;
  *(this + 50) = xmmword_260818790;
  *(this + 51) = xmmword_2608187A0;
  *(this + 52) = xmmword_2608187B0;
  *(this + 53) = xmmword_260818A50;
  *(this + 54) = xmmword_2608187D0;
  *(this + 55) = xmmword_260818A60;
  *(this + 56) = xmmword_260818A70;
  *(this + 57) = xmmword_260344BB0;
  *(this + 58) = xmmword_260346190;
  *(this + 59) = xmmword_260818A80;
  *(this + 60) = xmmword_260818A90;
  *(this + 61) = xmmword_260818AA0;
  *(this + 62) = xmmword_260818AB0;
  *(this + 63) = xmmword_260346D20;
  *(this + 64) = xmmword_2608185D0;
  *(this + 65) = xmmword_2608185E0;
  *(this + 66) = xmmword_2608185F0;
  *(this + 67) = xmmword_260818600;
  *(this + 68) = xmmword_260818610;
  *(this + 69) = xmmword_260818620;
  *(this + 70) = xmmword_260818630;
  *(this + 71) = xmmword_260818640;
  *(this + 72) = xmmword_260818650;
  *(this + 73) = xmmword_260818660;
  *(this + 74) = xmmword_260818670;
  *(this + 75) = xmmword_260818AC0;
  *(this + 76) = xmmword_260818AD0;
  *(this + 77) = xmmword_260818AE0;
  *(this + 78) = xmmword_260812F20;
  *(this + 79) = xmmword_260818AF0;
  *(this + 80) = xmmword_260818B00;
  *(this + 81) = xmmword_260818B10;
  *(this + 82) = xmmword_260818B20;
  *(this + 83) = xmmword_260818B30;
  *(this + 84) = xmmword_260812EA0;
  *(this + 85) = xmmword_260818B40;
  *(this + 86) = xmmword_260818B50;
  *&v6 = 0xC0000000C0000000;
  *(&v6 + 1) = 0xC0000000C0000000;
  *(this + 87) = v6;
  result = 0.0000878906136;
  *(this + 88) = xmmword_260818B60;
  return result;
}

uint64_t GetBlendNormalTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v39 = 0;
        v40 = 16 * v10;
        v41 = 16 * v9;
        v42 = 16 * v8;
        v43 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v44 = 0;
          do
          {
            v45 = vmulq_f32(v6[v44 / 0x10], *a2);
            v7[v44 / 0x10] = vaddq_f32(v45, vmulq_f32(v5[v44 / 0x10], vsubq_f32(a2[3], vdupq_laneq_s32(v45, 3))));
            v44 += 16;
          }

          while (v43 != v44);
          ++v39;
          v5 = (v5 + v40);
          v6 = (v6 + v41);
          v7 = (v7 + v42);
        }

        while (v39 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = vmulq_f32(v6[v18], *a2);
          v27 = vmulq_f32(v6[v18 + 1], *a2);
          v28 = vmulq_f32(v6[v18 + 2], *a2);
          v29 = vmulq_f32(v6[v18 + 3], *a2);
          v30 = a2[3];
          v31 = vaddq_f32(v27, vmulq_f32(v5[v18 + 1], vsubq_f32(v30, vdupq_laneq_s32(v27, 3))));
          v32 = vaddq_f32(v28, vmulq_f32(v5[v18 + 2], vsubq_f32(v30, vdupq_laneq_s32(v28, 3))));
          v33 = vaddq_f32(v29, vmulq_f32(v5[v18 + 3], vsubq_f32(v30, vdupq_laneq_s32(v29, 3))));
          v34 = &v7[v18];
          *v34 = vaddq_f32(v26, vmulq_f32(v5[v18], vsubq_f32(v30, vdupq_laneq_s32(v26, 3))));
          v34[1] = v31;
          v19 += 4;
          v18 += 4;
          v34[2] = v32;
          v34[3] = v33;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v35 = *v23++;
            v36 = v35;
            v37 = *v24++;
            v38 = vmulq_f32(v37, *a2);
            *v25++ = vaddq_f32(v38, vmulq_f32(v36, vsubq_f32(a2[3], vdupq_laneq_s32(v38, 3))));
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendSubtractTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v60 = 0;
        v61 = 16 * v10;
        v62 = 16 * v9;
        v63 = 16 * v8;
        v64 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v65 = 0;
          do
          {
            v66 = v5[v65 / 0x10];
            v67 = vmulq_f32(v6[v65 / 0x10], *a2);
            v68 = vmulq_laneq_f32(v67, v66, 3);
            v69 = vmulq_laneq_f32(v66, v67, 3);
            v70 = vsubq_f32(vaddq_f32(v66, v67), v68);
            v7[v65 / 0x10] = vaddq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v69, v68), *(a2 + 4)), *(a2 + 3)), vbslq_s8(*(a2 + 5), v70, vsubq_f32(v70, v69)));
            v65 += 16;
          }

          while (v64 != v65);
          ++v60;
          v5 = (v5 + v61);
          v6 = (v6 + v62);
          v7 = (v7 + v63);
        }

        while (v60 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v5[v18];
          v24 = v5[v18 + 1];
          v25 = v5[v18 + 2];
          v26 = v5[v18 + 3];
          v27 = vmulq_f32(v6[v18], *a2);
          v28 = vmulq_f32(v6[v18 + 1], *a2);
          v29 = vmulq_f32(v6[v18 + 2], *a2);
          v30 = vmulq_f32(v6[v18 + 3], *a2);
          v31 = vmulq_laneq_f32(v27, v23, 3);
          v32 = vmulq_laneq_f32(v28, v24, 3);
          v33 = vmulq_laneq_f32(v29, v25, 3);
          v34 = vmulq_laneq_f32(v30, v26, 3);
          v35 = vmulq_laneq_f32(v23, v27, 3);
          v36 = vmulq_laneq_f32(v24, v28, 3);
          v37 = vmulq_laneq_f32(v25, v29, 3);
          v38 = vmulq_laneq_f32(v26, v30, 3);
          v39 = vaddq_f32(v23, v27);
          v41 = *(a2 + 3);
          v40 = *(a2 + 4);
          v42 = v22;
          v43 = v21;
          v44 = v20;
          v45 = vminq_f32(vmaxq_f32(vsubq_f32(v35, v31), v40), v41);
          v46 = vsubq_f32(v39, v31);
          v47 = vsubq_f32(vaddq_f32(v24, v28), v32);
          v48 = vsubq_f32(vaddq_f32(v25, v29), v33);
          v49 = vsubq_f32(vaddq_f32(v26, v30), v34);
          v50 = vsubq_f32(v46, v35);
          v51 = *(a2 + 5);
          v52 = &v7[v18];
          *v52 = vaddq_f32(v45, vbslq_s8(v51, v46, v50));
          v52[1] = vaddq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v36, v32), v40), v41), vbslq_s8(v51, v47, vsubq_f32(v47, v36)));
          v19 += 4;
          v18 += 4;
          v52[2] = vaddq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v37, v33), v40), v41), vbslq_s8(v51, v48, vsubq_f32(v48, v37)));
          v52[3] = vaddq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v38, v34), v40), v41), vbslq_s8(v51, v49, vsubq_f32(v49, v38)));
          v22 += 4;
          v21 += 4;
          v20 = v44 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v53 = *v42++;
            v54 = v53;
            v55 = *v43++;
            v56 = vmulq_f32(v55, *a2);
            v57 = vmulq_laneq_f32(v56, v54, 3);
            v58 = vmulq_laneq_f32(v54, v56, 3);
            v59 = vsubq_f32(vaddq_f32(v54, v56), v57);
            *v44++ = vaddq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v58, v57), *(a2 + 4)), *(a2 + 3)), vbslq_s8(*(a2 + 5), v59, vsubq_f32(v59, v58)));
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendSubtractPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = *(a2 + 7);
        v16 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v17 = vmulq_f32(vrecpeq_f32(v16), v15);
        v18 = vmulq_f32(v13, vmulq_f32(v17, vrecpsq_f32(v17, v16)));
        v19 = *(a2 + 4);
        v20 = vmaxq_f32(v18, v19);
        v22 = *(a2 + 8);
        v21 = *(a2 + 9);
        v23 = *(a2 + 3);
        v24 = vorrq_s8(vandq_s8(v22, v20), v23);
        v26 = *(a2 + 10);
        v25 = *(a2 + 11);
        v27 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v21, v20))), v25);
        v29 = *(a2 + 12);
        v28 = *(a2 + 13);
        v30 = vandq_s8(v23, vcgtq_f32(v24, v29));
        v31 = vaddq_f32(v27, v30);
        v32 = vsubq_f32(vsubq_f32(v24, v23), vmulq_f32(vmulq_f32(v28, v30), v24));
        v33 = *(a2 + 14);
        v34 = *(a2 + 15);
        v35 = *(a2 + 16);
        v36 = *(a2 + 17);
        v37 = *(a2 + 1);
        v38 = vmulq_f32(v37, vaddq_f32(v31, vmulq_f32(v32, vaddq_f32(vaddq_f32(v35, vmulq_f32(v32, v36)), vmulq_f32(vmulq_f32(v32, v32), vaddq_f32(v33, vmulq_f32(v34, v32)))))));
        v40 = *(a2 + 18);
        v39 = *(a2 + 19);
        v41 = vmaxq_f32(v38, v40);
        v42 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
        v43 = vsubq_f32(v42, vandq_s8(v23, vcgtq_f32(v42, v41)));
        v44 = vsubq_f32(v41, v43);
        v46 = *(a2 + 20);
        v45 = *(a2 + 21);
        v47 = vcvtq_s32_f32(v43);
        v48 = *(a2 + 22);
        v49 = vmulq_f32(vaddq_f32(v23, vmulq_f32(v44, vaddq_f32(v45, vmulq_f32(v44, vaddq_f32(v39, vmulq_f32(v46, v44)))))), vshlq_n_s32(vaddq_s32(v48, v47), 0x17uLL));
        v50 = vmulq_f32(*(v6 + v12), *a2);
        v51 = vmaxq_f32(vdupq_laneq_s32(v50, 3), v14);
        v52 = vmulq_f32(v15, vrecpeq_f32(v51));
        v53 = vmulq_f32(v50, vmulq_f32(v52, vrecpsq_f32(v52, v51)));
        v54 = vmaxq_f32(v53, v19);
        v55 = vorrq_s8(vandq_s8(v22, v54), v23);
        v56 = vandq_s8(v23, vcgtq_f32(v55, v29));
        v57 = vsubq_f32(vsubq_f32(v55, v23), vmulq_f32(vmulq_f32(v28, v56), v55));
        v58 = vmaxq_f32(vmulq_f32(v37, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v54, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v21, v54))), v25), v56), vmulq_f32(v57, vaddq_f32(vaddq_f32(v35, vmulq_f32(v36, v57)), vmulq_f32(vmulq_f32(v57, v57), vaddq_f32(v33, vmulq_f32(v34, v57))))))), v40);
        v59 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
        v60 = vsubq_f32(v59, vandq_s8(v23, vcgtq_f32(v59, v58)));
        v61 = vsubq_f32(v58, v60);
        v62 = vminq_f32(vmaxq_f32(vsubq_f32(v49, vmulq_f32(vaddq_f32(v23, vmulq_f32(v61, vaddq_f32(v45, vmulq_f32(v61, vaddq_f32(v39, vmulq_f32(v46, v61)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v60), v48), 0x17uLL))), v19), v23);
        v63 = vorrq_s8(vandq_s8(v22, v62), v23);
        v64 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v62, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v21, v62))), v25);
        v65 = vandq_s8(v23, vcgtq_f32(v63, v29));
        v66 = vsubq_f32(vsubq_f32(v63, v23), vmulq_f32(vmulq_f32(v28, v65), v63));
        v67 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(v64, v65), vmulq_f32(v66, vaddq_f32(vaddq_f32(v35, vmulq_f32(v36, v66)), vmulq_f32(vmulq_f32(v66, v66), vaddq_f32(v33, vmulq_f32(v34, v66))))))), v40);
        v68 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
        v69 = vsubq_f32(v68, vandq_s8(v23, vcgtq_f32(v68, v67)));
        v70 = vsubq_f32(v67, v69);
        v71 = vmulq_f32(vaddq_f32(v23, vmulq_f32(v70, vaddq_f32(v45, vmulq_f32(v70, vaddq_f32(v39, vmulq_f32(v46, v70)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v69), v48), 0x17uLL));
        v71.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v71, vaddq_f32(v53, vmulq_laneq_f32(vsubq_f32(v71, v53), v13, 3))), v13), v50, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendSubtractQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v17 = *(a2 + 7);
        v16 = *(a2 + 8);
        v18 = vmulq_f32(vrecpeq_f32(v15), v17);
        v19 = vmulq_f32(v13, vmulq_f32(v18, vrecpsq_f32(v18, v15)));
        v20 = *(a2 + 3);
        v21 = *(a2 + 4);
        v22 = *(a2 + 23);
        v23 = *(a2 + 24);
        v24 = vminq_f32(vmaxq_f32(v19, v21), v22);
        v25 = vorrq_s8(vandq_s8(v16, v24), v20);
        v26 = *(a2 + 9);
        v27 = *(a2 + 10);
        v28 = *(a2 + 11);
        v29 = *(a2 + 12);
        v30 = vandq_s8(v20, vcgtq_f32(v25, v29));
        v31 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v26, v24))), v28), v30);
        v33 = *(a2 + 13);
        v32 = *(a2 + 14);
        v34 = vsubq_f32(vsubq_f32(v25, v20), vmulq_f32(vmulq_f32(v33, v30), v25));
        v36 = *(a2 + 15);
        v35 = *(a2 + 16);
        v38 = *(a2 + 17);
        v37 = *(a2 + 18);
        v39 = vmaxq_f32(vmulq_f32(v23, vaddq_f32(v31, vmulq_f32(v34, vaddq_f32(vaddq_f32(v35, vmulq_f32(v34, v38)), vmulq_f32(vmulq_f32(v34, v34), vaddq_f32(v32, vmulq_f32(v36, v34))))))), v37);
        v40 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
        v41 = vsubq_f32(v40, vandq_s8(v20, vcgtq_f32(v40, v39)));
        v42 = vsubq_f32(v39, v41);
        v43 = *(a2 + 19);
        v44 = *(a2 + 20);
        v46 = *(a2 + 21);
        v45 = *(a2 + 22);
        v47 = vmulq_f32(vaddq_f32(v20, vmulq_f32(v42, vaddq_f32(v46, vmulq_f32(v42, vaddq_f32(v43, vmulq_f32(v44, v42)))))), vshlq_n_s32(vaddq_s32(v45, vcvtq_s32_f32(v41)), 0x17uLL));
        v48 = vmulq_f32(*(v6 + v12), *a2);
        v49 = vmaxq_f32(vdupq_laneq_s32(v48, 3), v14);
        v50 = vmulq_f32(v17, vrecpeq_f32(v49));
        v51 = vmulq_f32(v48, vmulq_f32(v50, vrecpsq_f32(v50, v49)));
        v52 = vminq_f32(vmaxq_f32(v51, v21), v22);
        v53 = vorrq_s8(vandq_s8(v16, v52), v20);
        v54 = vandq_s8(v20, vcgtq_f32(v53, v29));
        v55 = vsubq_f32(vsubq_f32(v53, v20), vmulq_f32(vmulq_f32(v33, v54), v53));
        v56 = vmaxq_f32(vmulq_f32(v23, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v52, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v26, v52))), v28), v54), vmulq_f32(v55, vaddq_f32(vaddq_f32(v35, vmulq_f32(v38, v55)), vmulq_f32(vmulq_f32(v55, v55), vaddq_f32(v32, vmulq_f32(v36, v55))))))), v37);
        v57 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
        v58 = vsubq_f32(v57, vandq_s8(v20, vcgtq_f32(v57, v56)));
        v59 = vsubq_f32(v56, v58);
        v60 = vminq_f32(vmaxq_f32(vsubq_f32(v47, vmulq_f32(vaddq_f32(v20, vmulq_f32(v59, vaddq_f32(v46, vmulq_f32(v59, vaddq_f32(v43, vmulq_f32(v44, v59)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v58), v45), 0x17uLL))), v21), v20);
        v61 = vorrq_s8(vandq_s8(v16, v60), v20);
        v62 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v60, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v26, v60))), v28);
        v63 = vandq_s8(v20, vcgtq_f32(v61, v29));
        v64 = vsubq_f32(vsubq_f32(v61, v20), vmulq_f32(vmulq_f32(v33, v63), v61));
        v65 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(v62, v63), vmulq_f32(v64, vaddq_f32(vaddq_f32(v35, vmulq_f32(v38, v64)), vmulq_f32(vmulq_f32(v64, v64), vaddq_f32(v32, vmulq_f32(v36, v64))))))), v37);
        v66 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
        v67 = vsubq_f32(v66, vandq_s8(v20, vcgtq_f32(v66, v65)));
        v68 = vsubq_f32(v65, v67);
        v69 = vmulq_f32(vaddq_f32(v20, vmulq_f32(v68, vaddq_f32(v46, vmulq_f32(v68, vaddq_f32(v43, vmulq_f32(v44, v68)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v67), v45), 0x17uLL));
        v69.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v69, vaddq_f32(v51, vmulq_laneq_f32(vsubq_f32(v69, v51), v13, 3))), v13), v48, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendDarkenTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 3)
    {
      if (v4 >= 1)
      {
        v47 = 0;
        v48 = 16 * v10;
        v49 = 16 * v9;
        v50 = 16 * v8;
        v51 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v52 = 0;
          do
          {
            v53 = v5[v52 / 0x10];
            v54 = vmulq_f32(v6[v52 / 0x10], *a2);
            v55 = vmulq_laneq_f32(v54, v53, 3);
            v56 = vmulq_laneq_f32(v53, v54, 3);
            v7[v52 / 0x10] = vaddq_f32(vminq_f32(v55, v56), vsubq_f32(vsubq_f32(vaddq_f32(v53, v54), v55), v56));
            v52 += 16;
          }

          while (v51 != v52);
          ++v47;
          v5 = (v5 + v48);
          v6 = (v6 + v49);
          v7 = (v7 + v50);
        }

        while (v47 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 3;
      v16 = v6 + 3;
      v17 = v7 + 3;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = 3;
        v21 = v17;
        v22 = v16;
        v23 = v15;
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = v21;
          v27 = v20;
          v28 = v5[v18];
          v29 = v5[v18 + 1];
          v30 = v5[v18 + 2];
          v31 = vmulq_f32(v6[v18], *a2);
          v32 = vmulq_f32(v6[v18 + 1], *a2);
          v33 = vmulq_f32(v6[v18 + 2], *a2);
          v34 = vmulq_laneq_f32(v31, v28, 3);
          v35 = vmulq_laneq_f32(v32, v29, 3);
          v36 = vmulq_laneq_f32(v33, v30, 3);
          v37 = vmulq_laneq_f32(v28, v31, 3);
          v38 = vmulq_laneq_f32(v29, v32, 3);
          v39 = vmulq_laneq_f32(v30, v33, 3);
          v40 = &v7[v18];
          v19 += 3;
          v18 += 3;
          v23 += 3;
          *v40 = vaddq_f32(vminq_f32(v34, v37), vsubq_f32(vsubq_f32(vaddq_f32(v28, v31), v34), v37));
          v40[1] = vaddq_f32(vminq_f32(v35, v38), vsubq_f32(vsubq_f32(vaddq_f32(v29, v32), v35), v38));
          v40[2] = vaddq_f32(vminq_f32(v36, v39), vsubq_f32(vsubq_f32(vaddq_f32(v30, v33), v36), v39));
          v22 += 3;
          v21 += 3;
          v20 = v27 + 3;
        }

        while (v19 < v4 - 2);
        if (v4 > v19)
        {
          do
          {
            v41 = *v24++;
            v42 = v41;
            v43 = *v25++;
            v44 = vmulq_f32(v43, *a2);
            v45 = vmulq_laneq_f32(v44, v42, 3);
            v46 = vmulq_laneq_f32(v42, v44, 3);
            *v26++ = vaddq_f32(vminq_f32(v45, v46), vsubq_f32(vsubq_f32(vaddq_f32(v42, v44), v45), v46));
            ++v27;
          }

          while (v4 > v27);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendMultiplyTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v38 = 0;
        v39 = 16 * v10;
        v40 = 16 * v9;
        v41 = 16 * v8;
        v42 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v43 = 0;
          do
          {
            v44 = vmulq_f32(v6[v43 / 0x10], *a2);
            v7[v43 / 0x10] = vaddq_f32(vaddq_f32(vmulq_f32(v5[v43 / 0x10], v44), vsubq_f32(v44, vmulq_laneq_f32(v44, v5[v43 / 0x10], 3))), vsubq_f32(v5[v43 / 0x10], vmulq_laneq_f32(v5[v43 / 0x10], v44, 3)));
            v43 += 16;
          }

          while (v42 != v43);
          ++v38;
          v5 = (v5 + v39);
          v6 = (v6 + v40);
          v7 = (v7 + v41);
        }

        while (v38 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = vmulq_f32(v6[v18], *a2);
          v27 = vmulq_f32(v6[v18 + 1], *a2);
          v28 = vmulq_f32(v6[v18 + 2], *a2);
          v29 = vmulq_f32(v6[v18 + 3], *a2);
          v30 = vaddq_f32(vaddq_f32(vmulq_f32(v5[v18 + 1], v27), vsubq_f32(v27, vmulq_laneq_f32(v27, v5[v18 + 1], 3))), vsubq_f32(v5[v18 + 1], vmulq_laneq_f32(v5[v18 + 1], v27, 3)));
          v31 = vaddq_f32(vaddq_f32(vmulq_f32(v5[v18 + 2], v28), vsubq_f32(v28, vmulq_laneq_f32(v28, v5[v18 + 2], 3))), vsubq_f32(v5[v18 + 2], vmulq_laneq_f32(v5[v18 + 2], v28, 3)));
          v32 = vaddq_f32(vaddq_f32(vmulq_f32(v5[v18 + 3], v29), vsubq_f32(v29, vmulq_laneq_f32(v29, v5[v18 + 3], 3))), vsubq_f32(v5[v18 + 3], vmulq_laneq_f32(v5[v18 + 3], v29, 3)));
          v33 = &v7[v18];
          *v33 = vaddq_f32(vaddq_f32(vmulq_f32(v5[v18], v26), vsubq_f32(v26, vmulq_laneq_f32(v26, v5[v18], 3))), vsubq_f32(v5[v18], vmulq_laneq_f32(v5[v18], v26, 3)));
          v33[1] = v30;
          v19 += 4;
          v18 += 4;
          v33[2] = v31;
          v33[3] = v32;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v34 = *v23++;
            v35 = v34;
            v36 = *v24++;
            v37 = vmulq_f32(v36, *a2);
            *v25++ = vaddq_f32(vaddq_f32(vmulq_f32(v35, v37), vsubq_f32(v37, vmulq_laneq_f32(v37, v35, 3))), vsubq_f32(v35, vmulq_laneq_f32(v35, v37, 3)));
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendColorBurnTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = *(a1 + 12);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v15 = vmulq_f32(*(v8 + v13 - 16), *a2);
      v16 = vmulq_f32(*(v8 + v13), *a2);
      v18 = *(v7 + v13 - 16);
      v17 = *(v7 + v13);
      v19 = a2[5];
      v20 = a2[6];
      v21 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v20);
      v22 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v20);
      v23 = a2[7];
      v24 = vmulq_f32(vrecpeq_f32(v21), v23);
      v25 = vmulq_f32(vrecpeq_f32(v22), v23);
      v26 = vmulq_f32(v15, vmulq_f32(v24, vrecpsq_f32(v24, v21)));
      v27 = vmulq_f32(v16, vmulq_f32(v25, vrecpsq_f32(v25, v22)));
      v28 = a2[26];
      v29 = a2[27];
      v30 = vbslq_s8(v19, v15, vmaxq_f32(v26, v28));
      v31 = vbslq_s8(v19, v16, vmaxq_f32(v27, v28));
      v32 = vmaxq_f32(vdupq_laneq_s32(v18, 3), v20);
      v33 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v20);
      v34 = vmulq_f32(v23, vrecpeq_f32(v32));
      v35 = vmulq_f32(v23, vrecpeq_f32(v33));
      v36 = vmulq_f32(v18, vmulq_f32(v34, vrecpsq_f32(v34, v32)));
      v37 = vmulq_f32(v17, vmulq_f32(v35, vrecpsq_f32(v35, v33)));
      v39 = a2[3];
      v38 = a2[4];
      v40 = vandq_s8(v39, vceqq_f32(v26, v38));
      v41 = vandq_s8(v39, vceqq_f32(v36, v39));
      v42 = vandq_s8(v39, vceqq_f32(v37, v39));
      v43 = vsubq_f32(v39, v36);
      v44 = vandq_s8(v39, vceqq_f32(v27, v38));
      v45 = vsubq_f32(v39, v37);
      v46 = vmaxq_f32(vmulq_f32(v23, vrecpeq_f32(v30)), v29);
      v47 = vmaxq_f32(vmulq_f32(v23, vrecpeq_f32(v31)), v29);
      v48 = a2[28];
      v49 = a2[29];
      v50 = vminq_f32(v46, v48);
      v51 = vminq_f32(v47, v48);
      v52 = vmulq_f32(v51, vrecpsq_f32(v31, v51));
      v53 = vbslq_s8(v19, v15, vmulq_f32(vsubq_f32(v49, vbslq_s8(v19, v15, vminq_f32(vbslq_s8(v19, v15, vmulq_f32(v43, vmulq_f32(v50, vrecpsq_f32(v30, v50)))), v49))), vbslq_s8(v19, v15, vandq_s8(v49, vcgtq_f32(v26, v38)))));
      v54 = vbslq_s8(v19, v16, vmulq_f32(vsubq_f32(v49, vbslq_s8(v19, v16, vminq_f32(vbslq_s8(v19, v16, vmulq_f32(v45, v52)), v49))), vbslq_s8(v19, v16, vandq_s8(v49, vcgtq_f32(v27, v38)))));
      v26.i32[3] = 1.0;
      v55 = vbslq_s8(v19, v15, vbslq_s8(vcgtq_f32(vminq_f32(v40, v41), v38), v49, vbslq_s8(v19, v15, vbslq_s8(vcgtq_f32(v40, v38), v38, vbslq_s8(v19, v15, vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v53, 3), v38), v53, v38))))));
      v56 = vbslq_s8(v19, v16, vbslq_s8(vcgtq_f32(vminq_f32(v44, v42), v38), v49, vbslq_s8(v19, v16, vbslq_s8(vcgtq_f32(v44, v38), v38, vbslq_s8(v19, v16, vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v54, 3), v38), v54, v38))))));
      v27.i32[3] = 1.0;
      v57 = (v6 + v13);
      v57[-1] = vaddq_f32(v18, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v19, v26, vaddq_f32(v26, vmulq_laneq_f32(vsubq_f32(v55, v26), v18, 3))), v18), v55, 3));
      *v57 = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v19, v27, vaddq_f32(v27, vmulq_laneq_f32(vsubq_f32(v56, v27), v17, 3))), v17), v56, 3));
      v12 += 2;
      v13 += 32;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v58 = 16 * v12;
    v59 = *(v7 + v58);
    v60 = vmulq_f32(*(v8 + v58), *a2);
    v61 = a2[5];
    v62 = a2[6];
    v63 = vmaxq_f32(vdupq_laneq_s32(v60, 3), v62);
    v64 = a2[7];
    v65 = vmulq_f32(vrecpeq_f32(v63), v64);
    v66 = vmulq_f32(v60, vmulq_f32(v65, vrecpsq_f32(v65, v63)));
    v67 = vbslq_s8(v61, v60, vmaxq_f32(v66, a2[26]));
    v68 = vmaxq_f32(vdupq_laneq_s32(v59, 3), v62);
    v69 = vmulq_f32(v64, vrecpeq_f32(v68));
    v70 = vmulq_f32(v59, vmulq_f32(v69, vrecpsq_f32(v69, v68)));
    v72 = a2[3];
    v71 = a2[4];
    v73 = vandq_s8(v72, vceqq_f32(v66, v71));
    v74 = vandq_s8(v72, vceqq_f32(v70, v72));
    v75 = vsubq_f32(v72, v70);
    v76 = a2[29];
    v77 = vminq_f32(vmaxq_f32(vmulq_f32(v64, vrecpeq_f32(v67)), a2[27]), a2[28]);
    v78 = vbslq_s8(v61, v60, vmulq_f32(vsubq_f32(v76, vbslq_s8(v61, v60, vminq_f32(vbslq_s8(v61, v60, vmulq_f32(v75, vmulq_f32(v77, vrecpsq_f32(v67, v77)))), v76))), vbslq_s8(v61, v60, vandq_s8(v76, vcgtq_f32(v66, v71)))));
    v79 = vbslq_s8(v61, v60, vbslq_s8(vcgtq_f32(vminq_f32(v73, v74), v71), v76, vbslq_s8(v61, v60, vbslq_s8(vcgtq_f32(v73, v71), v71, vbslq_s8(v61, v60, vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v78, 3), v71), v78, v71))))));
    v66.i32[3] = 1.0;
    *(v6 + v58) = vaddq_f32(v59, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v61, v66, vaddq_f32(v66, vmulq_laneq_f32(vsubq_f32(v79, v66), v59, 3))), v59), v79, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendColorBurnPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v15 = *(a2 + 6);
        v14 = *(a2 + 7);
        v16 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v15);
        v17 = vmulq_f32(vrecpeq_f32(v16), v14);
        v18 = vmulq_f32(v13, vmulq_f32(v17, vrecpsq_f32(v17, v16)));
        v19 = *(a2 + 4);
        v20 = *(a2 + 5);
        v21 = vmaxq_f32(v18, v19);
        v23 = *(a2 + 8);
        v22 = *(a2 + 9);
        v24 = *(a2 + 29);
        v25 = vorrq_s8(vandq_s8(v23, v21), v24);
        v27 = *(a2 + 10);
        v26 = *(a2 + 11);
        v28 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v22, v21))), v26);
        v30 = *(a2 + 12);
        v29 = *(a2 + 13);
        v31 = vandq_s8(v24, vcgtq_f32(v25, v30));
        v32 = vaddq_f32(v28, v31);
        v33 = vsubq_f32(vsubq_f32(v25, v24), vmulq_f32(vmulq_f32(v29, v31), v25));
        v34 = *(a2 + 14);
        v35 = *(a2 + 15);
        v36 = *(a2 + 16);
        v37 = *(a2 + 17);
        v38 = *(a2 + 1);
        v39 = vmulq_f32(v38, vaddq_f32(v32, vmulq_f32(v33, vaddq_f32(vaddq_f32(v36, vmulq_f32(v33, v37)), vmulq_f32(vmulq_f32(v33, v33), vaddq_f32(v34, vmulq_f32(v35, v33)))))));
        v41 = *(a2 + 18);
        v40 = *(a2 + 19);
        v42 = vmaxq_f32(v39, v41);
        v43 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
        v44 = vsubq_f32(v43, vandq_s8(v24, vcgtq_f32(v43, v42)));
        v45 = vsubq_f32(v42, v44);
        v47 = *(a2 + 20);
        v46 = *(a2 + 21);
        v48 = vcvtq_s32_f32(v44);
        v49 = *(a2 + 22);
        v50 = vmulq_f32(vaddq_f32(v24, vmulq_f32(v45, vaddq_f32(v46, vmulq_f32(v45, vaddq_f32(v40, vmulq_f32(v47, v45)))))), vshlq_n_s32(vaddq_s32(v49, v48), 0x17uLL));
        v51 = vmulq_f32(*(v6 + v12), *a2);
        v52 = vmaxq_f32(vdupq_laneq_s32(v51, 3), v15);
        v53 = vmulq_f32(v14, vrecpeq_f32(v52));
        v54 = vmaxq_f32(vmulq_f32(v51, vmulq_f32(v53, vrecpsq_f32(v53, v52))), v19);
        v55 = vorrq_s8(vandq_s8(v23, v54), v24);
        v56 = vandq_s8(v24, vcgtq_f32(v55, v30));
        v57 = vsubq_f32(vsubq_f32(v55, v24), vmulq_f32(vmulq_f32(v29, v56), v55));
        v58 = vmaxq_f32(vmulq_f32(v38, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v54, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v22, v54))), v26), v56), vmulq_f32(v57, vaddq_f32(vaddq_f32(v36, vmulq_f32(v37, v57)), vmulq_f32(vmulq_f32(v57, v57), vaddq_f32(v34, vmulq_f32(v35, v57))))))), v41);
        v59 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
        v60 = vsubq_f32(v59, vandq_s8(v24, vcgtq_f32(v59, v58)));
        v61 = vsubq_f32(v58, v60);
        v62 = vbslq_s8(v20, v51, vmulq_f32(vaddq_f32(v24, vmulq_f32(v61, vaddq_f32(v46, vmulq_f32(v61, vaddq_f32(v40, vmulq_f32(v47, v61)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v60), v49), 0x17uLL)));
        v63 = *(a2 + 26);
        v64 = vmaxq_f32(v62, v63);
        v65 = vminq_f32(vmaxq_f32(vmulq_f32(v14, vrecpeq_f32(v64)), *(a2 + 27)), *(a2 + 28));
        v66 = vcgtq_f32(vandq_s8(v24, vcgeq_f32(v63, v62)), v19);
        v67 = vbslq_s8(v20, v51, vorrq_s8(vandq_s8(vandq_s8(v24, vcgeq_f32(v50, v24)), v66), vbicq_s8(vsubq_f32(v24, vminq_f32(vmulq_f32(vsubq_f32(v24, v50), vmulq_f32(v65, vrecpsq_f32(v64, v65))), v24)), v66)));
        v68 = vorrq_s8(vandq_s8(v67, v23), v24);
        v69 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v67, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v22, v67))), v26);
        v70 = vandq_s8(v24, vcgtq_f32(v68, v30));
        v71 = vsubq_f32(vsubq_f32(v68, v24), vmulq_f32(vmulq_f32(v29, v70), v68));
        v72 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(v69, v70), vmulq_f32(v71, vaddq_f32(vaddq_f32(v36, vmulq_f32(v37, v71)), vmulq_f32(vmulq_f32(v71, v71), vaddq_f32(v34, vmulq_f32(v35, v71))))))), v41);
        v73 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
        v74 = vsubq_f32(v73, vandq_s8(v24, vcgtq_f32(v73, v72)));
        v75 = vsubq_f32(v72, v74);
        v54.i32[3] = 1.0;
        v76 = vbslq_s8(v20, v51, vmulq_f32(vaddq_f32(v24, vmulq_f32(v75, vaddq_f32(v46, vmulq_f32(v75, vaddq_f32(v40, vmulq_f32(v47, v75)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v74), v49), 0x17uLL)));
        *(v7 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v20, v54, vaddq_f32(v54, vmulq_laneq_f32(vsubq_f32(v76, v54), v13, 3))), v13), v76, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendColorBurnQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v15 = *(a2 + 6);
        v14 = *(a2 + 7);
        v16 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v15);
        v17 = vmulq_f32(vrecpeq_f32(v16), v14);
        v18 = vmulq_f32(v13, vmulq_f32(v17, vrecpsq_f32(v17, v16)));
        v19 = *(a2 + 4);
        v20 = *(a2 + 5);
        v21 = vmaxq_f32(v18, v19);
        v22 = *(a2 + 22);
        v23 = *(a2 + 23);
        v24 = vminq_f32(v21, v23);
        v26 = *(a2 + 8);
        v25 = *(a2 + 9);
        v27 = *(a2 + 29);
        v28 = vorrq_s8(vandq_s8(v26, v24), v27);
        v30 = *(a2 + 10);
        v29 = *(a2 + 11);
        v31 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v25, v24))), v29);
        v33 = *(a2 + 12);
        v32 = *(a2 + 13);
        v34 = vandq_s8(v27, vcgtq_f32(v28, v33));
        v35 = vaddq_f32(v31, v34);
        v36 = vsubq_f32(vsubq_f32(v28, v27), vmulq_f32(vmulq_f32(v32, v34), v28));
        v37 = *(a2 + 14);
        v38 = *(a2 + 15);
        v39 = *(a2 + 16);
        v40 = *(a2 + 17);
        v41 = *(a2 + 24);
        v42 = vmulq_f32(v41, vaddq_f32(v35, vmulq_f32(v36, vaddq_f32(vaddq_f32(v39, vmulq_f32(v36, v40)), vmulq_f32(vmulq_f32(v36, v36), vaddq_f32(v37, vmulq_f32(v38, v36)))))));
        v44 = *(a2 + 18);
        v43 = *(a2 + 19);
        v45 = vmaxq_f32(v42, v44);
        v46 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
        v47 = vsubq_f32(v46, vandq_s8(v27, vcgtq_f32(v46, v45)));
        v48 = vsubq_f32(v45, v47);
        v49 = *(a2 + 20);
        v50 = *(a2 + 21);
        v51 = vmulq_f32(vaddq_f32(v27, vmulq_f32(v48, vaddq_f32(v50, vmulq_f32(v48, vaddq_f32(v43, vmulq_f32(v49, v48)))))), vshlq_n_s32(vaddq_s32(v22, vcvtq_s32_f32(v47)), 0x17uLL));
        v52 = vmulq_f32(*(v6 + v12), *a2);
        v53 = vmaxq_f32(vdupq_laneq_s32(v52, 3), v15);
        v54 = vmulq_f32(v14, vrecpeq_f32(v53));
        v55 = vmaxq_f32(vmulq_f32(v52, vmulq_f32(v54, vrecpsq_f32(v54, v53))), v19);
        v56 = vminq_f32(v55, v23);
        v57 = vorrq_s8(vandq_s8(v26, v56), v27);
        v58 = vandq_s8(v27, vcgtq_f32(v57, v33));
        v59 = vsubq_f32(vsubq_f32(v57, v27), vmulq_f32(vmulq_f32(v32, v58), v57));
        v60 = vmaxq_f32(vmulq_f32(v41, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v56, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v25, v56))), v29), v58), vmulq_f32(v59, vaddq_f32(vaddq_f32(v39, vmulq_f32(v40, v59)), vmulq_f32(vmulq_f32(v59, v59), vaddq_f32(v37, vmulq_f32(v38, v59))))))), v44);
        v61 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
        v62 = vsubq_f32(v61, vandq_s8(v27, vcgtq_f32(v61, v60)));
        v63 = vsubq_f32(v60, v62);
        v64 = vbslq_s8(v20, v52, vmulq_f32(vaddq_f32(v27, vmulq_f32(v63, vaddq_f32(v50, vmulq_f32(v63, vaddq_f32(v43, vmulq_f32(v49, v63)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v62), v22), 0x17uLL)));
        v65 = *(a2 + 26);
        v66 = vmaxq_f32(v64, v65);
        v67 = vminq_f32(vmaxq_f32(vmulq_f32(v14, vrecpeq_f32(v66)), *(a2 + 27)), *(a2 + 28));
        v68 = vcgtq_f32(vandq_s8(v27, vcgeq_f32(v65, v64)), v19);
        v69 = vminq_f32(vmaxq_f32(vbslq_s8(v20, v52, vorrq_s8(vandq_s8(vandq_s8(v27, vcgeq_f32(v51, v27)), v68), vbicq_s8(vsubq_f32(v27, vminq_f32(vmulq_f32(vsubq_f32(v27, v51), vmulq_f32(v67, vrecpsq_f32(v66, v67))), v27)), v68))), v19), *(a2 + 30));
        v70 = vorrq_s8(vandq_s8(v26, v69), v27);
        v71 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v69, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v25, v69))), v29);
        v72 = vandq_s8(v27, vcgtq_f32(v70, v33));
        v73 = vsubq_f32(vsubq_f32(v70, v27), vmulq_f32(vmulq_f32(v32, v72), v70));
        v74 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(v71, v72), vmulq_f32(v73, vaddq_f32(vaddq_f32(v39, vmulq_f32(v40, v73)), vmulq_f32(vmulq_f32(v73, v73), vaddq_f32(v37, vmulq_f32(v38, v73))))))), v44);
        v75 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
        v76 = vsubq_f32(v75, vandq_s8(v27, vcgtq_f32(v75, v74)));
        v77 = vsubq_f32(v74, v76);
        v55.i32[3] = 1.0;
        v78 = vbslq_s8(v20, v52, vmulq_f32(vaddq_f32(v27, vmulq_f32(v77, vaddq_f32(v50, vmulq_f32(v77, vaddq_f32(v43, vmulq_f32(v49, v77)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v76), v22), 0x17uLL)));
        *(v7 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v20, v55, vaddq_f32(v55, vmulq_laneq_f32(vsubq_f32(v78, v55), v13, 3))), v13), v78, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendLinearBurnTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = *(a1 + 2) - *a1;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 2)
    {
      if (v4 == 1)
      {
        v33 = 16 * v8;
        do
        {
          v34 = vmulq_f32(*v6, *a2);
          v35 = vmulq_laneq_f32(v34, *v5, 3);
          v36 = vmulq_laneq_f32(*v5, v34, 3);
          *v7 = vaddq_f32(vsubq_f32(vsubq_f32(vaddq_f32(*v5, v34), v35), v36), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v35, v36), vdupq_laneq_s32(vmulq_f32(*v5, v34), 3)), a2[4]), a2[3]));
          v5 += v10;
          v6 += v9;
          v7 = (v7 + v33);
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v8;
      v13 = 16 * v10;
      v14 = 16 * v9;
      do
      {
        v15 = 0;
        v16 = 0;
        for (i = v4; i > 1; i -= 2)
        {
          v18 = v5[v15];
          v19 = v5[v15 + 1];
          v20 = vmulq_f32(v6[v15], *a2);
          v21 = vmulq_f32(v6[v15 + 1], *a2);
          v22 = vmulq_laneq_f32(v20, v18, 3);
          v23 = vmulq_laneq_f32(v21, v19, 3);
          v24 = vmulq_laneq_f32(v18, v20, 3);
          v25 = vmulq_laneq_f32(v19, v21, 3);
          v27 = a2[3];
          v26 = a2[4];
          v28 = &v7[v15];
          *v28 = vaddq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v18, v20), v22), v24), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v22, v24), vdupq_laneq_s32(vmulq_f32(v18, v20), 3)), v26), v27));
          v28[1] = vaddq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v19, v21), v23), v25), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v23, v25), vdupq_laneq_s32(vmulq_f32(v19, v21), 3)), v26), v27));
          v16 += 2;
          v15 += 2;
        }

        if (v4 > v16)
        {
          v29 = v5[v15];
          v30 = vmulq_f32(v6[v15], *a2);
          v31 = vmulq_laneq_f32(v30, v29, 3);
          v32 = vmulq_laneq_f32(v29, v30, 3);
          v7[v15] = vaddq_f32(vsubq_f32(vsubq_f32(vaddq_f32(v29, v30), v31), v32), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v31, v32), vdupq_laneq_s32(vmulq_f32(v29, v30), 3)), a2[4]), a2[3]));
        }

        ++v11;
        v7 = (v7 + v12);
        v5 = (v5 + v13);
        v6 = (v6 + v14);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendLinearBurnPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v17 = *(v8 + v14 - 16);
      v16 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = *(a2 + 7);
      v20 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v21 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v22 = vmulq_f32(vrecpeq_f32(v20), v19);
      v23 = vmulq_f32(vrecpeq_f32(v21), v19);
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v20));
      v25 = vmulq_f32(v23, vrecpsq_f32(v23, v21));
      v26 = *(a2 + 4);
      v27 = *(a2 + 5);
      v28 = vmaxq_f32(vmulq_f32(v17, v24), v26);
      v29 = vmaxq_f32(vmulq_f32(v16, v25), v26);
      v30 = *(a2 + 8);
      v31 = *(a2 + 9);
      v32 = *(a2 + 29);
      v33 = vorrq_s8(vandq_s8(v30, v28), v32);
      v34 = vorrq_s8(vandq_s8(v30, v29), v32);
      v36 = *(a2 + 10);
      v35 = *(a2 + 11);
      v37 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v31, v28)));
      v38 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v31, v29)));
      v39 = *(a2 + 12);
      v40 = *(a2 + 13);
      v41 = vandq_s8(v32, vcgtq_f32(v33, v39));
      v42 = vandq_s8(v32, vcgtq_f32(v34, v39));
      v43 = vaddq_f32(vsubq_f32(v37, v35), v41);
      v44 = vaddq_f32(vsubq_f32(v38, v35), v42);
      v45 = vsubq_f32(vsubq_f32(v33, v32), vmulq_f32(vmulq_f32(v40, v41), v33));
      v46 = vsubq_f32(vsubq_f32(v34, v32), vmulq_f32(vmulq_f32(v40, v42), v34));
      v47 = *(a2 + 14);
      v48 = *(a2 + 15);
      v49 = *(a2 + 16);
      v50 = *(a2 + 17);
      v51 = *(a2 + 1);
      v52 = vmulq_f32(v51, vaddq_f32(v43, vmulq_f32(v45, vaddq_f32(vaddq_f32(v49, vmulq_f32(v45, v50)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v47, vmulq_f32(v48, v45)))))));
      v53 = vmulq_f32(v51, vaddq_f32(v44, vmulq_f32(v46, vaddq_f32(vaddq_f32(v49, vmulq_f32(v46, v50)), vmulq_f32(vmulq_f32(v46, v46), vaddq_f32(v47, vmulq_f32(v48, v46)))))));
      v55 = *(a2 + 18);
      v54 = *(a2 + 19);
      v56 = vmaxq_f32(v52, v55);
      v57 = vmaxq_f32(v53, v55);
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v61 = *(a2 + 20);
      v60 = *(a2 + 21);
      v62 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v63 = vmulq_f32(*(v7 + v14), *a2);
      v64 = vsubq_f32(v58, vandq_s8(v32, vcgtq_f32(v58, v56)));
      v65 = vmaxq_f32(vdupq_laneq_s32(v62, 3), v18);
      v66 = vmaxq_f32(vdupq_laneq_s32(v63, 3), v18);
      v67 = vmulq_f32(v19, vrecpeq_f32(v65));
      v68 = vsubq_f32(v59, vandq_s8(v32, vcgtq_f32(v59, v57)));
      v69 = vmulq_f32(v19, vrecpeq_f32(v66));
      v70 = vmulq_f32(v67, vrecpsq_f32(v67, v65));
      v71 = vmulq_f32(v69, vrecpsq_f32(v69, v66));
      v72 = vsubq_f32(v56, v64);
      v73 = *(a2 + 31);
      v74 = *(a2 + 32);
      v75 = vorrq_s8(vandq_s8(v73, v71), v74);
      v76 = vmulq_f32(v62, vorrq_s8(vandq_s8(v73, v70), v74));
      v77 = vmulq_f32(v63, v75);
      v78 = vmaxq_f32(v76, v74);
      v79 = vmaxq_f32(v77, v74);
      v80 = vorrq_s8(vandq_s8(v30, v78), v32);
      v81 = vorrq_s8(vandq_s8(v30, v79), v32);
      v82 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v79, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v31, v79))), v35);
      v83 = vandq_s8(v32, vcgtq_f32(v80, v39));
      v84 = vandq_s8(v32, vcgtq_f32(v81, v39));
      v85 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v78, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v31, v78))), v35), v83);
      v86 = vsubq_f32(vsubq_f32(v80, v32), vmulq_f32(vmulq_f32(v40, v83), v80));
      v87 = vsubq_f32(vsubq_f32(v81, v32), vmulq_f32(vmulq_f32(v40, v84), v81));
      v88 = vsubq_f32(v57, v68);
      v89 = vmulq_f32(v88, vaddq_f32(v60, vmulq_f32(v88, vaddq_f32(v54, vmulq_f32(v61, v88)))));
      v90 = *(a2 + 22);
      v91 = vmulq_f32(v51, vaddq_f32(vaddq_f32(v82, v84), vmulq_f32(v87, vaddq_f32(vaddq_f32(v49, vmulq_f32(v50, v87)), vmulq_f32(vmulq_f32(v87, v87), vaddq_f32(v47, vmulq_f32(v48, v87)))))));
      v92 = vmaxq_f32(vmulq_f32(v51, vaddq_f32(v85, vmulq_f32(v86, vaddq_f32(vaddq_f32(v49, vmulq_f32(v50, v86)), vmulq_f32(vmulq_f32(v86, v86), vaddq_f32(v47, vmulq_f32(v48, v86))))))), v55);
      v93 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v72, vaddq_f32(v60, vmulq_f32(v72, vaddq_f32(v54, vmulq_f32(v61, v72)))))), vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v64)), 0x17uLL));
      v94 = vmaxq_f32(v91, v55);
      v95 = vcvtq_f32_s32(vcvtq_s32_f32(v92));
      v96 = vcvtq_f32_s32(vcvtq_s32_f32(v94));
      v97 = vsubq_f32(v95, vandq_s8(v32, vcgtq_f32(v95, v92)));
      v98 = vsubq_f32(v96, vandq_s8(v32, vcgtq_f32(v96, v94)));
      v99 = vsubq_f32(v92, v97);
      v100 = vsubq_f32(v94, v98);
      v101 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v99, vaddq_f32(v60, vmulq_f32(v99, vaddq_f32(v54, vmulq_f32(v61, v99)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v97), v90), 0x17uLL));
      v102 = vcvtq_s32_f32(v98);
      v12 = 1.0;
      v103 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v93, v101), v32), v74), v32);
      v104 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v32, v89), vshlq_n_s32(vaddq_s32(v90, vcvtq_s32_f32(v68)), 0x17uLL)), vmulq_f32(vaddq_f32(v32, vmulq_f32(v100, vaddq_f32(v60, vmulq_f32(v100, vaddq_f32(v54, vmulq_f32(v61, v100)))))), vshlq_n_s32(vaddq_s32(v102, v90), 0x17uLL))), v32), v74), v32);
      v105 = vcgtq_f32(v31, v103);
      v106 = vandq_s8(v36, vcgtq_f32(v31, v104));
      v107 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v103, 0x17uLL)), vandq_s8(v36, v105));
      v108 = vandq_s8(v30, v103);
      v109 = vandq_s8(v30, v104);
      v110 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v104, 0x17uLL)), v106);
      v111 = vorrq_s8(v108, v32);
      v112 = vsubq_f32(v107, v35);
      v113 = vsubq_f32(v110, v35);
      v114 = vandq_s8(v32, vcgtq_f32(v111, v39));
      v115 = vaddq_f32(v112, v114);
      v116 = vsubq_f32(vsubq_f32(v111, v32), vmulq_f32(vmulq_f32(v40, v114), v111));
      v117 = vorrq_s8(v109, v32);
      v118 = vandq_s8(v32, vcgtq_f32(v117, v39));
      v119 = vsubq_f32(vsubq_f32(v117, v32), vmulq_f32(vmulq_f32(v40, v118), v117));
      v120 = vaddq_f32(vaddq_f32(v113, v118), vmulq_f32(v119, vaddq_f32(vaddq_f32(v49, vmulq_f32(v50, v119)), vmulq_f32(vmulq_f32(v119, v119), vaddq_f32(v47, vmulq_f32(v48, v119))))));
      v121 = *(a2 + 2);
      v122 = vmaxq_f32(vmulq_f32(v121, vaddq_f32(v115, vmulq_f32(v116, vaddq_f32(vaddq_f32(v49, vmulq_f32(v50, v116)), vmulq_f32(vmulq_f32(v116, v116), vaddq_f32(v47, vmulq_f32(v48, v116))))))), v55);
      v123 = vmaxq_f32(vmulq_f32(v121, v120), v55);
      v124 = vcvtq_f32_s32(vcvtq_s32_f32(v122));
      v125 = vcvtq_f32_s32(vcvtq_s32_f32(v123));
      v126 = vsubq_f32(v124, vandq_s8(v32, vcgtq_f32(v124, v122)));
      v127 = vsubq_f32(v125, vandq_s8(v32, vcgtq_f32(v125, v123)));
      v128 = vsubq_f32(v122, v126);
      v129 = vsubq_f32(v123, v127);
      v130 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v128, vaddq_f32(v60, vmulq_f32(v128, vaddq_f32(v54, vmulq_f32(v61, v128)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v126), v90), 0x17uLL));
      v130.i32[3] = 1.0;
      v131 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v129, vaddq_f32(v60, vmulq_f32(v129, vaddq_f32(v54, vmulq_f32(v61, v129)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v127), v90), 0x17uLL));
      v131.i32[3] = 1.0;
      v132 = vaddq_f32(*(v8 + v14), vmulq_laneq_f32(vsubq_f32(vbslq_s8(v27, v131, vaddq_f32(v77, vmulq_laneq_f32(vsubq_f32(v131, v77), *(v8 + v14), 3))), *(v8 + v14)), v77, 3));
      v133 = (v6 + v14);
      v133[-1] = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v27, v130, vaddq_f32(v76, vmulq_laneq_f32(vsubq_f32(v130, v76), v17, 3))), v17), v76, 3));
      *v133 = v132;
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v134 = 16 * v13;
    v135 = *(v8 + v134);
    v136 = *(a2 + 6);
    v137 = *(a2 + 7);
    v138 = vmaxq_f32(vdupq_laneq_s32(v135, 3), v136);
    v139 = vmulq_f32(vrecpeq_f32(v138), v137);
    v140 = vmaxq_f32(vmulq_f32(v135, vmulq_f32(v139, vrecpsq_f32(v139, v138))), *(a2 + 4));
    v142 = *(a2 + 8);
    v141 = *(a2 + 9);
    v143 = *(a2 + 29);
    v144 = vorrq_s8(vandq_s8(v142, v140), v143);
    v146 = *(a2 + 10);
    v145 = *(a2 + 11);
    v148 = *(a2 + 12);
    v147 = *(a2 + 13);
    v149 = vandq_s8(v143, vcgtq_f32(v144, v148));
    v150 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v140, 0x17uLL)), vandq_s8(v146, vcgtq_f32(v141, v140))), v145), v149);
    v151 = vsubq_f32(vsubq_f32(v144, v143), vmulq_f32(vmulq_f32(v147, v149), v144));
    v152 = *(a2 + 14);
    v153 = *(a2 + 15);
    v154 = *(a2 + 16);
    v155 = *(a2 + 17);
    v156 = *(a2 + 1);
    v157 = vmulq_f32(v156, vaddq_f32(v150, vmulq_f32(v151, vaddq_f32(vaddq_f32(v154, vmulq_f32(v151, v155)), vmulq_f32(vmulq_f32(v151, v151), vaddq_f32(v152, vmulq_f32(v153, v151)))))));
    v159 = *(a2 + 18);
    v158 = *(a2 + 19);
    v160 = vmaxq_f32(v157, v159);
    v161 = vcvtq_f32_s32(vcvtq_s32_f32(v160));
    v162 = vsubq_f32(v161, vandq_s8(v143, vcgtq_f32(v161, v160)));
    v163 = vsubq_f32(v160, v162);
    v165 = *(a2 + 20);
    v164 = *(a2 + 21);
    v166 = vcvtq_s32_f32(v162);
    v167 = *(a2 + 22);
    v168 = vmulq_f32(vaddq_f32(v143, vmulq_f32(v163, vaddq_f32(v164, vmulq_f32(v163, vaddq_f32(v158, vmulq_f32(v165, v163)))))), vshlq_n_s32(vaddq_s32(v167, v166), 0x17uLL));
    v169 = vmulq_f32(*(v7 + v134), *a2);
    v170 = vmaxq_f32(vdupq_laneq_s32(v169, 3), v136);
    v171 = vmulq_f32(v137, vrecpeq_f32(v170));
    v172 = *(a2 + 32);
    v173 = vmulq_f32(v169, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v171, vrecpsq_f32(v171, v170))), v172));
    v174 = vmaxq_f32(v173, v172);
    v175 = vorrq_s8(vandq_s8(v142, v174), v143);
    v176 = vandq_s8(v143, vcgtq_f32(v175, v148));
    v177 = vsubq_f32(vsubq_f32(v175, v143), vmulq_f32(vmulq_f32(v147, v176), v175));
    v178 = vmaxq_f32(vmulq_f32(v156, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v174, 0x17uLL)), vandq_s8(v146, vcgtq_f32(v141, v174))), v145), v176), vmulq_f32(v177, vaddq_f32(vaddq_f32(v154, vmulq_f32(v155, v177)), vmulq_f32(vmulq_f32(v177, v177), vaddq_f32(v152, vmulq_f32(v153, v177))))))), v159);
    v179 = vcvtq_f32_s32(vcvtq_s32_f32(v178));
    v180 = vsubq_f32(v179, vandq_s8(v143, vcgtq_f32(v179, v178)));
    v181 = vsubq_f32(v178, v180);
    v182 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v168, vmulq_f32(vaddq_f32(v143, vmulq_f32(v181, vaddq_f32(v164, vmulq_f32(v181, vaddq_f32(v158, vmulq_f32(v165, v181)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v180), v167), 0x17uLL))), v143), v172), v143);
    v183 = vorrq_s8(vandq_s8(v142, v182), v143);
    v184 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v182, 0x17uLL)), vandq_s8(v146, vcgtq_f32(v141, v182))), v145);
    v185 = vandq_s8(v143, vcgtq_f32(v183, v148));
    v186 = vsubq_f32(vsubq_f32(v183, v143), vmulq_f32(vmulq_f32(v147, v185), v183));
    v187 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(v184, v185), vmulq_f32(v186, vaddq_f32(vaddq_f32(v154, vmulq_f32(v155, v186)), vmulq_f32(vmulq_f32(v186, v186), vaddq_f32(v152, vmulq_f32(v153, v186))))))), v159);
    v188 = vcvtq_f32_s32(vcvtq_s32_f32(v187));
    v189 = vsubq_f32(v188, vandq_s8(v143, vcgtq_f32(v188, v187)));
    v190 = vsubq_f32(v187, v189);
    v191 = vmulq_f32(vaddq_f32(v143, vmulq_f32(v190, vaddq_f32(v164, vmulq_f32(v190, vaddq_f32(v158, vmulq_f32(v165, v190)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v189), v167), 0x17uLL));
    v191.f32[3] = v12;
    *(v6 + v134) = vaddq_f32(v135, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v191, vaddq_f32(v173, vmulq_laneq_f32(vsubq_f32(v191, v173), v135, 3))), v135), v173, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendLinearBurnQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v17 = *(v8 + v14 - 16);
      v16 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v26 = *(a2 + 31);
      v25 = *(a2 + 32);
      v28 = *(a2 + 23);
      v27 = *(a2 + 24);
      v29 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vmulq_f32(v23, vrecpsq_f32(v23, v19))), v25), v28);
      v30 = vminq_f32(vmaxq_f32(vmulq_f32(v16, vmulq_f32(v24, vrecpsq_f32(v24, v20))), v25), v28);
      v31 = *(a2 + 29);
      v32 = vorrq_s8(vandq_s8(v21, v29), v31);
      v34 = *(a2 + 9);
      v33 = *(a2 + 10);
      v35 = vorrq_s8(vandq_s8(v21, v30), v31);
      v36 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v29)));
      v38 = *(a2 + 11);
      v37 = *(a2 + 12);
      v39 = vandq_s8(v31, vcgtq_f32(v32, v37));
      v40 = vandq_s8(v31, vcgtq_f32(v35, v37));
      v41 = vaddq_f32(vsubq_f32(v36, v38), v39);
      v43 = *(a2 + 13);
      v42 = *(a2 + 14);
      v44 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v30))), v38), v40);
      v45 = vsubq_f32(vsubq_f32(v32, v31), vmulq_f32(vmulq_f32(v43, v39), v32));
      v46 = vsubq_f32(vsubq_f32(v35, v31), vmulq_f32(vmulq_f32(v43, v40), v35));
      v48 = *(a2 + 15);
      v47 = *(a2 + 16);
      v50 = *(a2 + 17);
      v49 = *(a2 + 18);
      v51 = vmulq_f32(v27, vaddq_f32(v44, vmulq_f32(v46, vaddq_f32(vaddq_f32(v47, vmulq_f32(v46, v50)), vmulq_f32(vmulq_f32(v46, v46), vaddq_f32(v42, vmulq_f32(v48, v46)))))));
      v52 = *(a2 + 19);
      v53 = *(a2 + 20);
      v54 = vmaxq_f32(vmulq_f32(v27, vaddq_f32(v41, vmulq_f32(v45, vaddq_f32(vaddq_f32(v47, vmulq_f32(v45, v50)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v42, vmulq_f32(v48, v45))))))), v49);
      v55 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v56 = vmulq_f32(*(v7 + v14), *a2);
      v57 = vmaxq_f32(v51, v49);
      v58 = vmaxq_f32(vdupq_laneq_s32(v55, 3), v18);
      v59 = vmaxq_f32(vdupq_laneq_s32(v56, 3), v18);
      v60 = vmulq_f32(v22, vrecpeq_f32(v58));
      v61 = vmulq_f32(v22, vrecpeq_f32(v59));
      v62 = vandq_s8(v26, vmulq_f32(v61, vrecpsq_f32(v61, v59)));
      v63 = vorrq_s8(vandq_s8(v26, vmulq_f32(v60, vrecpsq_f32(v60, v58))), v25);
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
      v65 = vmulq_f32(v55, v63);
      v66 = vmulq_f32(v56, vorrq_s8(v62, v25));
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v68 = vminq_f32(vmaxq_f32(v65, v25), v28);
      v69 = vminq_f32(vmaxq_f32(v66, v25), v28);
      v70 = vorrq_s8(vandq_s8(v21, v68), v31);
      v71 = vorrq_s8(vandq_s8(v21, v69), v31);
      v72 = vsubq_f32(v64, vandq_s8(v31, vcgtq_f32(v64, v54)));
      v73 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v69, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v69)));
      v74 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v68, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v68))), v38);
      v75 = vandq_s8(v31, vcgtq_f32(v70, v37));
      v76 = vandq_s8(v31, vcgtq_f32(v71, v37));
      v77 = vaddq_f32(v74, v75);
      v78 = vaddq_f32(vsubq_f32(v73, v38), v76);
      v79 = vsubq_f32(v67, vandq_s8(v31, vcgtq_f32(v67, v57)));
      v80 = vsubq_f32(vsubq_f32(v70, v31), vmulq_f32(vmulq_f32(v43, v75), v70));
      v81 = vsubq_f32(vsubq_f32(v71, v31), vmulq_f32(vmulq_f32(v43, v76), v71));
      v82 = vsubq_f32(v54, v72);
      v84 = *(a2 + 21);
      v83 = *(a2 + 22);
      v85 = vmulq_f32(v82, vaddq_f32(v84, vmulq_f32(v82, vaddq_f32(v52, vmulq_f32(v53, v82)))));
      v86 = vsubq_f32(v57, v79);
      v87 = vmulq_f32(v80, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v80)), vmulq_f32(vmulq_f32(v80, v80), vaddq_f32(v42, vmulq_f32(v48, v80)))));
      v12 = 1.0;
      v88 = vmaxq_f32(vmulq_f32(v27, vaddq_f32(v77, v87)), v49);
      v89 = vmaxq_f32(vmulq_f32(v27, vaddq_f32(v78, vmulq_f32(v81, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v81)), vmulq_f32(vmulq_f32(v81, v81), vaddq_f32(v42, vmulq_f32(v48, v81))))))), v49);
      v90 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
      v91 = vcvtq_f32_s32(vcvtq_s32_f32(v89));
      v92 = vsubq_f32(v90, vandq_s8(v31, vcgtq_f32(v90, v88)));
      v93 = vsubq_f32(v91, vandq_s8(v31, vcgtq_f32(v91, v89)));
      v94 = vsubq_f32(v88, v92);
      v95 = vsubq_f32(v89, v93);
      v96 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v31, v85), vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v72)), 0x17uLL)), vmulq_f32(vaddq_f32(v31, vmulq_f32(v94, vaddq_f32(v84, vmulq_f32(v94, vaddq_f32(v52, vmulq_f32(v53, v94)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v92), v83), 0x17uLL))), v31), v25), v31);
      v97 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v31, vmulq_f32(v86, vaddq_f32(v84, vmulq_f32(v86, vaddq_f32(v52, vmulq_f32(v53, v86)))))), vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v79)), 0x17uLL)), vmulq_f32(vaddq_f32(v31, vmulq_f32(v95, vaddq_f32(v84, vmulq_f32(v95, vaddq_f32(v52, vmulq_f32(v53, v95)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v93), v83), 0x17uLL))), v31), v25), v31);
      v98 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v96, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v96)));
      v99 = vorrq_s8(vandq_s8(v21, v96), v31);
      v100 = vandq_s8(v31, vcgtq_f32(v99, v37));
      v101 = vsubq_f32(vsubq_f32(v99, v31), vmulq_f32(vmulq_f32(v43, v100), v99));
      v102 = vorrq_s8(vandq_s8(v21, v97), v31);
      v103 = vandq_s8(v31, vcgtq_f32(v102, v37));
      v104 = vsubq_f32(vsubq_f32(v102, v31), vmulq_f32(vmulq_f32(v43, v103), v102));
      v105 = vaddq_f32(vaddq_f32(vsubq_f32(v98, v38), v100), vmulq_f32(v101, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v101)), vmulq_f32(vmulq_f32(v101, v101), vaddq_f32(v42, vmulq_f32(v48, v101))))));
      v106 = *(a2 + 25);
      v107 = vmaxq_f32(vmulq_f32(v106, v105), v49);
      v108 = vmaxq_f32(vmulq_f32(v106, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v97, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v97))), v38), v103), vmulq_f32(v104, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v104)), vmulq_f32(vmulq_f32(v104, v104), vaddq_f32(v42, vmulq_f32(v48, v104))))))), v49);
      v109 = vcvtq_f32_s32(vcvtq_s32_f32(v107));
      v110 = vcvtq_f32_s32(vcvtq_s32_f32(v108));
      v111 = vsubq_f32(v109, vandq_s8(v31, vcgtq_f32(v109, v107)));
      v112 = vsubq_f32(v110, vandq_s8(v31, vcgtq_f32(v110, v108)));
      v113 = vsubq_f32(v107, v111);
      v114 = vsubq_f32(v108, v112);
      v115 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v113, vaddq_f32(v84, vmulq_f32(v113, vaddq_f32(v52, vmulq_f32(v53, v113)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v111), v83), 0x17uLL));
      v115.i32[3] = 1.0;
      v116 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v114, vaddq_f32(v84, vmulq_f32(v114, vaddq_f32(v52, vmulq_f32(v53, v114)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v112), v83), 0x17uLL));
      v116.i32[3] = 1.0;
      v117 = *(a2 + 5);
      v118 = vaddq_f32(*(v8 + v14), vmulq_laneq_f32(vsubq_f32(vbslq_s8(v117, v116, vaddq_f32(v66, vmulq_laneq_f32(vsubq_f32(v116, v66), *(v8 + v14), 3))), *(v8 + v14)), v66, 3));
      v119 = (v6 + v14);
      v119[-1] = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v117, v115, vaddq_f32(v65, vmulq_laneq_f32(vsubq_f32(v115, v65), v17, 3))), v17), v65, 3));
      *v119 = v118;
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v120 = 16 * v13;
    v121 = *(v8 + v120);
    v122 = *(a2 + 6);
    v123 = vmaxq_f32(vdupq_laneq_s32(v121, 3), v122);
    v125 = *(a2 + 7);
    v124 = *(a2 + 8);
    v126 = vmulq_f32(vrecpeq_f32(v123), v125);
    v127 = *(a2 + 32);
    v129 = *(a2 + 23);
    v128 = *(a2 + 24);
    v130 = vminq_f32(vmaxq_f32(vmulq_f32(v121, vmulq_f32(v126, vrecpsq_f32(v126, v123))), v127), v129);
    v131 = *(a2 + 29);
    v132 = vorrq_s8(vandq_s8(v124, v130), v131);
    v133 = *(a2 + 9);
    v134 = *(a2 + 10);
    v135 = *(a2 + 11);
    v136 = *(a2 + 12);
    v137 = vandq_s8(v131, vcgtq_f32(v132, v136));
    v138 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v130, 0x17uLL)), vandq_s8(v134, vcgtq_f32(v133, v130))), v135), v137);
    v140 = *(a2 + 13);
    v139 = *(a2 + 14);
    v141 = vsubq_f32(vsubq_f32(v132, v131), vmulq_f32(vmulq_f32(v140, v137), v132));
    v143 = *(a2 + 15);
    v142 = *(a2 + 16);
    v145 = *(a2 + 17);
    v144 = *(a2 + 18);
    v146 = vmaxq_f32(vmulq_f32(v128, vaddq_f32(v138, vmulq_f32(v141, vaddq_f32(vaddq_f32(v142, vmulq_f32(v141, v145)), vmulq_f32(vmulq_f32(v141, v141), vaddq_f32(v139, vmulq_f32(v143, v141))))))), v144);
    v147 = vcvtq_f32_s32(vcvtq_s32_f32(v146));
    v148 = vsubq_f32(v147, vandq_s8(v131, vcgtq_f32(v147, v146)));
    v149 = vsubq_f32(v146, v148);
    v150 = *(a2 + 19);
    v151 = *(a2 + 20);
    v153 = *(a2 + 21);
    v152 = *(a2 + 22);
    v154 = vmulq_f32(vaddq_f32(v131, vmulq_f32(v149, vaddq_f32(v153, vmulq_f32(v149, vaddq_f32(v150, vmulq_f32(v151, v149)))))), vshlq_n_s32(vaddq_s32(v152, vcvtq_s32_f32(v148)), 0x17uLL));
    v155 = vmulq_f32(*(v7 + v120), *a2);
    v156 = vmaxq_f32(vdupq_laneq_s32(v155, 3), v122);
    v157 = vmulq_f32(v125, vrecpeq_f32(v156));
    v158 = vmulq_f32(v155, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v157, vrecpsq_f32(v157, v156))), v127));
    v159 = vminq_f32(vmaxq_f32(v158, v127), v129);
    v160 = vorrq_s8(vandq_s8(v124, v159), v131);
    v161 = vandq_s8(v131, vcgtq_f32(v160, v136));
    v162 = vsubq_f32(vsubq_f32(v160, v131), vmulq_f32(vmulq_f32(v140, v161), v160));
    v163 = vmaxq_f32(vmulq_f32(v128, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v159, 0x17uLL)), vandq_s8(v134, vcgtq_f32(v133, v159))), v135), v161), vmulq_f32(v162, vaddq_f32(vaddq_f32(v142, vmulq_f32(v145, v162)), vmulq_f32(vmulq_f32(v162, v162), vaddq_f32(v139, vmulq_f32(v143, v162))))))), v144);
    v164 = vcvtq_f32_s32(vcvtq_s32_f32(v163));
    v165 = vsubq_f32(v164, vandq_s8(v131, vcgtq_f32(v164, v163)));
    v166 = vsubq_f32(v163, v165);
    v167 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v154, vmulq_f32(vaddq_f32(v131, vmulq_f32(v166, vaddq_f32(v153, vmulq_f32(v166, vaddq_f32(v150, vmulq_f32(v151, v166)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v165), v152), 0x17uLL))), v131), v127), v131);
    v168 = vorrq_s8(vandq_s8(v124, v167), v131);
    v169 = vandq_s8(v131, vcgtq_f32(v168, v136));
    v170 = vsubq_f32(vsubq_f32(v168, v131), vmulq_f32(vmulq_f32(v140, v169), v168));
    v171 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v167, 0x17uLL)), vandq_s8(v134, vcgtq_f32(v133, v167))), v135), v169), vmulq_f32(v170, vaddq_f32(vaddq_f32(v142, vmulq_f32(v145, v170)), vmulq_f32(vmulq_f32(v170, v170), vaddq_f32(v139, vmulq_f32(v143, v170))))))), v144);
    v172 = vcvtq_f32_s32(vcvtq_s32_f32(v171));
    v173 = vsubq_f32(v172, vandq_s8(v131, vcgtq_f32(v172, v171)));
    v174 = vsubq_f32(v171, v173);
    v175 = vmulq_f32(vaddq_f32(v131, vmulq_f32(v174, vaddq_f32(v153, vmulq_f32(v174, vaddq_f32(v150, vmulq_f32(v151, v174)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v173), v152), 0x17uLL));
    v175.f32[3] = v12;
    *(v6 + v120) = vaddq_f32(v121, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v175, vaddq_f32(v158, vmulq_laneq_f32(vsubq_f32(v175, v158), v121, 3))), v121), v158, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendAddTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 10);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 22);
    v10 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v46 = 0;
        v47 = 16 * v10;
        v48 = 16 * v9;
        v49 = 16 * v8;
        v50 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v51 = 0;
          do
          {
            v52 = v6[v51 / 0x10];
            v53 = vmulq_f32(v5[v51 / 0x10], *a2);
            v54 = vaddq_f32(v52, v53);
            v7[v51 / 0x10] = vbslq_s8(*(a2 + 5), vsubq_f32(v54, vmulq_f32(v52, v53)), v54);
            v51 += 16;
          }

          while (v50 != v51);
          ++v46;
          v5 = (v5 + v47);
          v6 = (v6 + v48);
          v7 = (v7 + v49);
        }

        while (v46 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = v6[v18];
          v27 = v6[v18 + 1];
          v28 = v6[v18 + 2];
          v29 = v6[v18 + 3];
          v30 = vmulq_f32(v5[v18], *a2);
          v31 = vmulq_f32(v5[v18 + 1], *a2);
          v32 = vmulq_f32(v5[v18 + 2], *a2);
          v33 = vmulq_f32(v5[v18 + 3], *a2);
          v34 = vaddq_f32(v26, v30);
          v35 = vaddq_f32(v27, v31);
          v36 = vaddq_f32(v28, v32);
          v37 = vaddq_f32(v29, v33);
          v38 = vsubq_f32(v34, vmulq_f32(v26, v30));
          v39 = *(a2 + 5);
          v40 = &v7[v18];
          *v40 = vbslq_s8(v39, v38, v34);
          v40[1] = vbslq_s8(v39, vsubq_f32(v35, vmulq_f32(v27, v31)), v35);
          v19 += 4;
          v18 += 4;
          v40[2] = vbslq_s8(v39, vsubq_f32(v36, vmulq_f32(v28, v32)), v36);
          v40[3] = vbslq_s8(v39, vsubq_f32(v37, vmulq_f32(v29, v33)), v37);
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v41 = *v23++;
            v42 = v41;
            v43 = *v24++;
            v44 = vmulq_f32(v42, *a2);
            v45 = vaddq_f32(v43, v44);
            *v25++ = vbslq_s8(*(a2 + 5), vsubq_f32(v45, vmulq_f32(v43, v44)), v45);
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendLightenTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 3)
    {
      if (v4 >= 1)
      {
        v47 = 0;
        v48 = 16 * v10;
        v49 = 16 * v9;
        v50 = 16 * v8;
        v51 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v52 = 0;
          do
          {
            v53 = v5[v52 / 0x10];
            v54 = vmulq_f32(v6[v52 / 0x10], *a2);
            v55 = vmulq_laneq_f32(v54, v53, 3);
            v56 = vmulq_laneq_f32(v53, v54, 3);
            v7[v52 / 0x10] = vaddq_f32(vmaxq_f32(v55, v56), vsubq_f32(vsubq_f32(vaddq_f32(v53, v54), v55), v56));
            v52 += 16;
          }

          while (v51 != v52);
          ++v47;
          v5 = (v5 + v48);
          v6 = (v6 + v49);
          v7 = (v7 + v50);
        }

        while (v47 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 3;
      v16 = v6 + 3;
      v17 = v7 + 3;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = 3;
        v21 = v17;
        v22 = v16;
        v23 = v15;
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = v21;
          v27 = v20;
          v28 = v5[v18];
          v29 = v5[v18 + 1];
          v30 = v5[v18 + 2];
          v31 = vmulq_f32(v6[v18], *a2);
          v32 = vmulq_f32(v6[v18 + 1], *a2);
          v33 = vmulq_f32(v6[v18 + 2], *a2);
          v34 = vmulq_laneq_f32(v31, v28, 3);
          v35 = vmulq_laneq_f32(v32, v29, 3);
          v36 = vmulq_laneq_f32(v33, v30, 3);
          v37 = vmulq_laneq_f32(v28, v31, 3);
          v38 = vmulq_laneq_f32(v29, v32, 3);
          v39 = vmulq_laneq_f32(v30, v33, 3);
          v40 = &v7[v18];
          v19 += 3;
          v18 += 3;
          v23 += 3;
          *v40 = vaddq_f32(vmaxq_f32(v34, v37), vsubq_f32(vsubq_f32(vaddq_f32(v28, v31), v34), v37));
          v40[1] = vaddq_f32(vmaxq_f32(v35, v38), vsubq_f32(vsubq_f32(vaddq_f32(v29, v32), v35), v38));
          v40[2] = vaddq_f32(vmaxq_f32(v36, v39), vsubq_f32(vsubq_f32(vaddq_f32(v30, v33), v36), v39));
          v22 += 3;
          v21 += 3;
          v20 = v27 + 3;
        }

        while (v19 < v4 - 2);
        if (v4 > v19)
        {
          do
          {
            v41 = *v24++;
            v42 = v41;
            v43 = *v25++;
            v44 = vmulq_f32(v43, *a2);
            v45 = vmulq_laneq_f32(v44, v42, 3);
            v46 = vmulq_laneq_f32(v42, v44, 3);
            *v26++ = vaddq_f32(vmaxq_f32(v45, v46), vsubq_f32(vsubq_f32(vaddq_f32(v42, v44), v45), v46));
            ++v27;
          }

          while (v4 > v27);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendScreenTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v38 = 0;
        v39 = 16 * v10;
        v40 = 16 * v9;
        v41 = 16 * v8;
        v42 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v43 = 0;
          do
          {
            v44 = vmulq_f32(v6[v43 / 0x10], *a2);
            v7[v43 / 0x10] = vsubq_f32(vaddq_f32(v5[v43 / 0x10], v44), vminq_f32(vminq_f32(vmulq_f32(v5[v43 / 0x10], v44), v44), v5[v43 / 0x10]));
            v43 += 16;
          }

          while (v42 != v43);
          ++v38;
          v5 = (v5 + v39);
          v6 = (v6 + v40);
          v7 = (v7 + v41);
        }

        while (v38 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = vmulq_f32(v6[v18], *a2);
          v27 = vmulq_f32(v6[v18 + 1], *a2);
          v28 = vmulq_f32(v6[v18 + 2], *a2);
          v29 = vmulq_f32(v6[v18 + 3], *a2);
          v30 = vsubq_f32(vaddq_f32(v5[v18 + 1], v27), vminq_f32(vminq_f32(vmulq_f32(v5[v18 + 1], v27), v27), v5[v18 + 1]));
          v31 = vsubq_f32(vaddq_f32(v5[v18 + 2], v28), vminq_f32(vminq_f32(vmulq_f32(v5[v18 + 2], v28), v28), v5[v18 + 2]));
          v32 = vsubq_f32(vaddq_f32(v5[v18 + 3], v29), vminq_f32(vminq_f32(vmulq_f32(v5[v18 + 3], v29), v29), v5[v18 + 3]));
          v33 = &v7[v18];
          *v33 = vsubq_f32(vaddq_f32(v5[v18], v26), vminq_f32(vminq_f32(vmulq_f32(v5[v18], v26), v26), v5[v18]));
          v33[1] = v30;
          v19 += 4;
          v18 += 4;
          v33[2] = v31;
          v33[3] = v32;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v34 = *v23++;
            v35 = v34;
            v36 = *v24++;
            v37 = vmulq_f32(v36, *a2);
            *v25++ = vsubq_f32(vaddq_f32(v35, v37), vminq_f32(vminq_f32(vmulq_f32(v35, v37), v37), v35));
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendScreenPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 29);
        v15 = *(a2 + 27);
        v112 = *(a2 + 28);
        v16 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v13, *(a2 + 30)), 3), v15), v112);
        v17 = vminq_f32(vmaxq_f32(vrecpeq_f32(v16), v15), v112);
        v18 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpsq_f32(v16, v17)), v15), v112);
        v19 = *(a2 + 32);
        v101 = *(a2 + 1);
        v108 = vcgtq_f32(vandq_s8(v14, vceqq_f32(v101, v19)), v19);
        v20 = vbslq_s8(v108, v14, vmaxq_f32(vmulq_f32(v13, vmulq_f32(v18, vrecpsq_f32(v16, v18))), v19));
        v109 = *(a2 + 9);
        v110 = *(a2 + 33);
        v111 = *(a2 + 8);
        v21 = vcgtq_f32(v109, v20);
        v22 = vmulq_f32(v20, vaddq_f32(v14, vandq_s8(v110, v21)));
        v23 = vorrq_s8(vandq_s8(v111, v22), v14);
        v24 = *(a2 + 4);
        v26 = *(a2 + 10);
        v25 = *(a2 + 11);
        v28 = *(a2 + 34);
        v27 = *(a2 + 35);
        v29 = *(a2 + 12);
        v95 = *(a2 + 13);
        v30 = vandq_s8(v14, vcgtq_f32(v23, v29));
        v31 = vaddq_f32(vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v26, vceqq_f32(v20, v26)), vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v20, v24), v28), vandq_s8(v26, vceqq_f32(v20, v24))), vandq_s8(v27, v21))), v25), vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL))), v30);
        v32 = vsubq_f32(vsubq_f32(v23, v14), vmulq_f32(vmulq_f32(v95, v30), v23));
        v33 = vmulq_f32(v32, v32);
        v106 = *(a2 + 37);
        v107 = *(a2 + 36);
        v34 = *(a2 + 39);
        v94 = *(a2 + 38);
        v104 = *(a2 + 41);
        v105 = *(a2 + 40);
        v102 = *(a2 + 43);
        v103 = *(a2 + 42);
        v35 = *(a2 + 44);
        v93 = *(a2 + 45);
        v36 = vmulq_f32(v101, vaddq_f32(v31, vmulq_f32(v32, vaddq_f32(v35, vmulq_f32(v32, vaddq_f32(vmulq_f32(vmulq_f32(v33, v33), vaddq_f32(vaddq_f32(v94, vmulq_f32(v34, v32)), vmulq_f32(v33, vaddq_f32(v107, vmulq_f32(v106, v32))))), vaddq_f32(vmulq_f32(v33, vaddq_f32(v105, vmulq_f32(v32, v104))), vaddq_f32(v103, vmulq_f32(v32, v102)))))))));
        v99 = *(a2 + 47);
        v100 = *(a2 + 46);
        v37 = vminq_f32(vmaxq_f32(v36, v93), v100);
        v38 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
        v39 = vsubq_f32(v38, vandq_s8(v14, vcgtq_f32(v38, v37)));
        v40 = vsubq_f32(v37, v39);
        v42 = *(a2 + 48);
        v41 = *(a2 + 49);
        v97 = *(a2 + 51);
        v98 = *(a2 + 50);
        v43 = vmulq_f32(v40, v40);
        v44 = *(a2 + 52);
        v45 = *(a2 + 53);
        v46 = vcgtq_f32(v45, v39);
        v96 = *(a2 + 22);
        v47 = *(a2 + 54);
        v48 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(v36, v36)), v19), vmulq_f32(vaddq_f32(v14, vandq_s8(v47, v46)), vmulq_f32(vaddq_f32(v14, vmulq_f32(v40, vaddq_f32(vaddq_f32(v97, vmulq_f32(v40, v44)), vmulq_f32(v43, vaddq_f32(vaddq_f32(v41, vmulq_f32(v98, v40)), vmulq_f32(v43, vaddq_f32(v99, vmulq_f32(v42, v40)))))))), vshlq_n_s32(vaddq_s32(v96, vcvtq_s32_f32(vaddq_f32(v39, vandq_s8(v27, v46)))), 0x17uLL))), v36);
        v49 = vmulq_f32(*(v6 + v12), *a2);
        v50 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v49, v47), 3), v15), v112);
        v51 = vminq_f32(vmaxq_f32(vrecpeq_f32(v50), v15), v112);
        v52 = vminq_f32(vmaxq_f32(vmulq_f32(v51, vrecpsq_f32(v50, v51)), v15), v112);
        v53 = vmulq_f32(v52, vrecpsq_f32(v50, v52));
        v53.i32[3] = 1.0;
        v54 = vmulq_f32(v49, v53);
        v55 = vbslq_s8(v108, v14, vmaxq_f32(v54, v19));
        v56 = vcgtq_f32(v109, v55);
        v57 = vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v55, v24), v28), vandq_s8(v26, vceqq_f32(v55, v24))), vandq_s8(v27, v56));
        v58 = vmulq_f32(v55, vaddq_f32(v14, vandq_s8(v110, v56)));
        v59 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v26, vceqq_f32(v55, v26)), v57), v25), vcvtq_f32_u32(vshrq_n_u32(v58, 0x17uLL)));
        v60 = vorrq_s8(vandq_s8(v111, v58), v14);
        v61 = vandq_s8(v14, vcgtq_f32(v60, v29));
        v62 = vsubq_f32(vsubq_f32(v60, v14), vmulq_f32(vmulq_f32(v95, v61), v60));
        v63 = vmulq_f32(v62, v62);
        v64 = vmulq_f32(v101, vaddq_f32(vaddq_f32(v59, v61), vmulq_f32(v62, vaddq_f32(v35, vmulq_f32(v62, vaddq_f32(vaddq_f32(vaddq_f32(v103, vmulq_f32(v102, v62)), vmulq_f32(v63, vaddq_f32(v105, vmulq_f32(v104, v62)))), vmulq_f32(vmulq_f32(v63, v63), vaddq_f32(vaddq_f32(v94, vmulq_f32(v34, v62)), vmulq_f32(v63, vaddq_f32(v107, vmulq_f32(v106, v62)))))))))));
        v65 = vminq_f32(vmaxq_f32(v64, v93), v100);
        v66 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
        v67 = vsubq_f32(v66, vandq_s8(v14, vcgtq_f32(v66, v65)));
        v68 = vsubq_f32(v65, v67);
        v69 = vmulq_f32(v68, v68);
        v70 = vcgtq_f32(v45, v67);
        v71 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(v64, v64)), v19), vmulq_f32(vaddq_f32(v14, vandq_s8(v47, v70)), vmulq_f32(vaddq_f32(v14, vmulq_f32(v68, vaddq_f32(vaddq_f32(v97, vmulq_f32(v44, v68)), vmulq_f32(v69, vaddq_f32(vaddq_f32(v41, vmulq_f32(v98, v68)), vmulq_f32(v69, vaddq_f32(v99, vmulq_f32(v42, v68)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(vaddq_f32(v67, vandq_s8(v27, v70))), v96), 0x17uLL))), v64);
        v72 = vsubq_f32(vaddq_f32(v48, v71), vminq_f32(vminq_f32(vmulq_f32(v48, v71), v71), v48));
        v73 = *(a2 + 2);
        v74 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(v73, v19)), v19), v14, v72);
        v75 = vcgtq_f32(v109, v74);
        v76 = vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v74, v24), v28), vandq_s8(v26, vceqq_f32(v74, v24))), vandq_s8(v27, v75));
        v77 = vmulq_f32(v74, vaddq_f32(v14, vandq_s8(v110, v75)));
        v78 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v26, vceqq_f32(v74, v26)), v76), v25), vcvtq_f32_u32(vshrq_n_u32(v77, 0x17uLL)));
        v79 = vorrq_s8(vandq_s8(v111, v77), v14);
        v80 = vandq_s8(v14, vcgtq_f32(v79, v29));
        v81 = vsubq_f32(vsubq_f32(v79, v14), vmulq_f32(vmulq_f32(v95, v80), v79));
        v82 = vmulq_f32(v81, v81);
        v83 = vmulq_f32(v73, vaddq_f32(vaddq_f32(v78, v80), vmulq_f32(v81, vaddq_f32(v35, vmulq_f32(v81, vaddq_f32(vaddq_f32(vaddq_f32(v103, vmulq_f32(v102, v81)), vmulq_f32(v82, vaddq_f32(v105, vmulq_f32(v104, v81)))), vmulq_f32(vmulq_f32(v82, v82), vaddq_f32(vaddq_f32(v94, vmulq_f32(*(a2 + 39), v81)), vmulq_f32(v82, vaddq_f32(v107, vmulq_f32(v106, v81)))))))))));
        v84 = vminq_f32(vmaxq_f32(v83, v93), v100);
        v85 = vcvtq_f32_s32(vcvtq_s32_f32(v84));
        v86 = vsubq_f32(v85, vandq_s8(v14, vcgtq_f32(v85, v84)));
        v87 = vsubq_f32(v84, v86);
        v88 = vmulq_f32(v87, v87);
        v89 = vmulq_f32(v87, vaddq_f32(vaddq_f32(v97, vmulq_f32(v44, v87)), vmulq_f32(v88, vaddq_f32(vaddq_f32(v41, vmulq_f32(v98, v87)), vmulq_f32(v88, vaddq_f32(v99, vmulq_f32(v42, v87)))))));
        v90 = vcgtq_f32(v45, v86);
        v91 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(v83, v83)), v19), vmulq_f32(vaddq_f32(v14, vbslq_s8(v90, v47, 0)), vmulq_f32(vaddq_f32(v14, v89), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(vaddq_f32(v86, vandq_s8(v27, v90))), v96), 0x17uLL))), v83);
        v91.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(*(v5 + v12), vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v91, vaddq_f32(v54, vmulq_laneq_f32(vsubq_f32(v91, v54), *(v5 + v12), 3))), *(v5 + v12)), v54, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendScreenQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v16 = *(v8 + v14 - 16);
      v182 = *(v8 + v14);
      v17 = *(a2 + 6);
      v18 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v17);
      v19 = vmaxq_f32(vdupq_laneq_s32(v182, 3), v17);
      v21 = *(a2 + 7);
      v20 = *(a2 + 8);
      v22 = vmulq_f32(vrecpeq_f32(v18), v21);
      v23 = vmulq_f32(vrecpeq_f32(v19), v21);
      v24 = vmulq_f32(v16, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
      v25 = vmulq_f32(v182, vmulq_f32(v23, vrecpsq_f32(v23, v19)));
      v27 = *(a2 + 31);
      v26 = *(a2 + 32);
      v29 = *(a2 + 23);
      v28 = *(a2 + 24);
      v30 = vminq_f32(vmaxq_f32(v24, v26), v29);
      v31 = vminq_f32(vmaxq_f32(v25, v26), v29);
      v32 = *(a2 + 29);
      v33 = *(a2 + 30);
      v34 = vorrq_s8(vandq_s8(v20, v30), v32);
      v36 = *(a2 + 9);
      v35 = *(a2 + 10);
      v37 = vorrq_s8(vandq_s8(v20, v31), v32);
      v38 = vcgtq_f32(v36, v31);
      v39 = vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL));
      v41 = *(a2 + 11);
      v40 = *(a2 + 12);
      v42 = vsubq_f32(v39, vandq_s8(v35, v38));
      v43 = vandq_s8(v32, vcgtq_f32(v34, v40));
      v44 = vandq_s8(v32, vcgtq_f32(v37, v40));
      v45 = vsubq_f32(v42, v41);
      v46 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v35, vcgtq_f32(v36, v30))), v41), v43);
      v48 = *(a2 + 13);
      v47 = *(a2 + 14);
      v49 = vaddq_f32(v45, v44);
      v50 = vsubq_f32(vsubq_f32(v34, v32), vmulq_f32(vmulq_f32(v48, v43), v34));
      v51 = vsubq_f32(vsubq_f32(v37, v32), vmulq_f32(vmulq_f32(v48, v44), v37));
      v53 = *(a2 + 15);
      v52 = *(a2 + 16);
      v55 = *(a2 + 17);
      v54 = *(a2 + 18);
      v56 = vmulq_f32(v28, vaddq_f32(v49, vmulq_f32(v51, vaddq_f32(vaddq_f32(v52, vmulq_f32(v51, v55)), vmulq_f32(vmulq_f32(v51, v51), vaddq_f32(v47, vmulq_f32(v53, v51)))))));
      v57 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v58 = vmaxq_f32(vmulq_f32(v28, vaddq_f32(v46, vmulq_f32(v50, vaddq_f32(vaddq_f32(v52, vmulq_f32(v50, v55)), vmulq_f32(vmulq_f32(v50, v50), vaddq_f32(v47, vmulq_f32(v53, v50))))))), v54);
      v59 = vmulq_f32(*(v7 + v14), *a2);
      v60 = vmaxq_f32(v56, v54);
      v61 = vmaxq_f32(vdupq_laneq_s32(v57, 3), v17);
      v62 = vmaxq_f32(vdupq_laneq_s32(v59, 3), v17);
      v63 = vmulq_f32(v21, vrecpeq_f32(v61));
      v64 = vmulq_f32(v21, vrecpeq_f32(v62));
      v65 = vorrq_s8(vandq_s8(v27, vmulq_f32(v64, vrecpsq_f32(v64, v62))), v26);
      v66 = vmulq_f32(v57, vorrq_s8(vandq_s8(v27, vmulq_f32(v63, vrecpsq_f32(v63, v61))), v26));
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v68 = vmulq_f32(v59, v65);
      v69 = vminq_f32(vmaxq_f32(v66, v26), v29);
      v70 = vminq_f32(vmaxq_f32(v68, v26), v29);
      v71 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v72 = vorrq_s8(vandq_s8(v20, v69), v32);
      v73 = vorrq_s8(vandq_s8(v20, v70), v32);
      v74 = vandq_s8(v32, vcgtq_f32(v72, v40));
      v75 = vandq_s8(v32, vcgtq_f32(v73, v40));
      v76 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v69, 0x17uLL)), vandq_s8(v35, vcgtq_f32(v36, v69))), v41), v74);
      v77 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v70, 0x17uLL)), vandq_s8(v35, vcgtq_f32(v36, v70))), v41), v75);
      v78 = vsubq_f32(v67, vandq_s8(v32, vcgtq_f32(v67, v58)));
      v79 = vsubq_f32(vsubq_f32(v72, v32), vmulq_f32(vmulq_f32(v48, v74), v72));
      v80 = vsubq_f32(vsubq_f32(v73, v32), vmulq_f32(vmulq_f32(v48, v75), v73));
      v81 = vsubq_f32(v71, vandq_s8(v32, vcgtq_f32(v71, v60)));
      v82 = vsubq_f32(v58, v78);
      v84 = *(a2 + 19);
      v83 = *(a2 + 20);
      v86 = *(a2 + 21);
      v85 = *(a2 + 22);
      v87 = vsubq_f32(v60, v81);
      v12 = 1.0;
      v88 = vmaxq_f32(vmulq_f32(v28, vaddq_f32(v76, vmulq_f32(v79, vaddq_f32(vaddq_f32(v52, vmulq_f32(v55, v79)), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(v47, vmulq_f32(v53, v79))))))), v54);
      v89 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v82, vaddq_f32(v86, vmulq_f32(v82, vaddq_f32(v84, vmulq_f32(v83, v82)))))), vshlq_n_s32(vaddq_s32(v85, vcvtq_s32_f32(v78)), 0x17uLL));
      v90 = vmaxq_f32(vmulq_f32(v28, vaddq_f32(v77, vmulq_f32(v80, vaddq_f32(vaddq_f32(v52, vmulq_f32(v55, v80)), vmulq_f32(vmulq_f32(v80, v80), vaddq_f32(v47, vmulq_f32(v53, v80))))))), v54);
      v91 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
      v92 = vcvtq_f32_s32(vcvtq_s32_f32(v90));
      v93 = vsubq_f32(v91, vandq_s8(v32, vcgtq_f32(v91, v88)));
      v94 = vsubq_f32(v92, vandq_s8(v32, vcgtq_f32(v92, v90)));
      v95 = vsubq_f32(v88, v93);
      v96 = vsubq_f32(v90, v94);
      v97 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v87, vaddq_f32(v86, vmulq_f32(v87, vaddq_f32(v84, vmulq_f32(v83, v87)))))), vshlq_n_s32(vaddq_s32(v85, vcvtq_s32_f32(v81)), 0x17uLL));
      v98 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v95, vaddq_f32(v86, vmulq_f32(v95, vaddq_f32(v84, vmulq_f32(v83, v95)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v93), v85), 0x17uLL));
      v99 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v96, vaddq_f32(v86, vmulq_f32(v96, vaddq_f32(v84, vmulq_f32(v83, v96)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v94), v85), 0x17uLL));
      v100 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v89, v98), vminq_f32(vminq_f32(vmulq_f32(v89, v98), v98), v89)), v26), v33);
      v101 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v97, v99), vminq_f32(vminq_f32(vmulq_f32(v97, v99), v99), v97)), v26), v33);
      v102 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v100, 0x17uLL)), vandq_s8(v35, vcgtq_f32(v36, v100)));
      v103 = vorrq_s8(vandq_s8(v20, v100), v32);
      v104 = vandq_s8(v32, vcgtq_f32(v103, v40));
      v105 = vaddq_f32(vsubq_f32(v102, v41), v104);
      v106 = vsubq_f32(vsubq_f32(v103, v32), vmulq_f32(vmulq_f32(v48, v104), v103));
      v107 = vorrq_s8(vandq_s8(v20, v101), v32);
      v108 = vandq_s8(v32, vcgtq_f32(v107, v40));
      v109 = vsubq_f32(vsubq_f32(v107, v32), vmulq_f32(vmulq_f32(v48, v108), v107));
      v110 = vaddq_f32(v105, vmulq_f32(v106, vaddq_f32(vaddq_f32(v52, vmulq_f32(v55, v106)), vmulq_f32(vmulq_f32(v106, v106), vaddq_f32(v47, vmulq_f32(v53, v106))))));
      v111 = *(a2 + 25);
      v112 = vmaxq_f32(vmulq_f32(v111, v110), v54);
      v113 = vmaxq_f32(vmulq_f32(v111, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v101, 0x17uLL)), vandq_s8(v35, vcgtq_f32(v36, v101))), v41), v108), vmulq_f32(v109, vaddq_f32(vaddq_f32(v52, vmulq_f32(v55, v109)), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(v47, vmulq_f32(v53, v109))))))), v54);
      v114 = vcvtq_f32_s32(vcvtq_s32_f32(v112));
      v115 = vcvtq_f32_s32(vcvtq_s32_f32(v113));
      v116 = vsubq_f32(v114, vandq_s8(v32, vcgtq_f32(v114, v112)));
      v117 = vsubq_f32(v115, vandq_s8(v32, vcgtq_f32(v115, v113)));
      v118 = vsubq_f32(v112, v116);
      v119 = vsubq_f32(v113, v117);
      v120 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v118, vaddq_f32(v86, vmulq_f32(v118, vaddq_f32(v84, vmulq_f32(v83, v118)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v116), v85), 0x17uLL));
      v120.i32[3] = 1.0;
      v121 = vmulq_f32(vaddq_f32(v32, vmulq_f32(v119, vaddq_f32(v86, vmulq_f32(v119, vaddq_f32(v84, vmulq_f32(v83, v119)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v117), v85), 0x17uLL));
      v121.i32[3] = 1.0;
      v122 = *(a2 + 5);
      v123 = (v6 + v14);
      v123[-1] = vaddq_f32(*(v8 + v14 - 16), vmulq_laneq_f32(vsubq_f32(vbslq_s8(v122, v120, vaddq_f32(v66, vmulq_laneq_f32(vsubq_f32(v120, v66), *(v8 + v14 - 16), 3))), *(v8 + v14 - 16)), v66, 3));
      *v123 = vaddq_f32(v182, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v122, v121, vaddq_f32(v68, vmulq_laneq_f32(vsubq_f32(v121, v68), v182, 3))), v182), v68, 3));
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v124 = 16 * v13;
    v125 = *(v8 + v124);
    v126 = *(a2 + 6);
    v127 = vmaxq_f32(vdupq_laneq_s32(v125, 3), v126);
    v129 = *(a2 + 7);
    v128 = *(a2 + 8);
    v130 = vmulq_f32(vrecpeq_f32(v127), v129);
    v131 = *(a2 + 32);
    v132 = *(a2 + 23);
    v133 = *(a2 + 24);
    v134 = vminq_f32(vmaxq_f32(vmulq_f32(v125, vmulq_f32(v130, vrecpsq_f32(v130, v127))), v131), v132);
    v135 = *(a2 + 29);
    v136 = vorrq_s8(vandq_s8(v128, v134), v135);
    v137 = *(a2 + 9);
    v138 = *(a2 + 10);
    v139 = *(a2 + 11);
    v140 = *(a2 + 12);
    v141 = vandq_s8(v135, vcgtq_f32(v136, v140));
    v142 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v134, 0x17uLL)), vandq_s8(v138, vcgtq_f32(v137, v134))), v139), v141);
    v144 = *(a2 + 13);
    v143 = *(a2 + 14);
    v145 = vsubq_f32(vsubq_f32(v136, v135), vmulq_f32(vmulq_f32(v144, v141), v136));
    v147 = *(a2 + 15);
    v146 = *(a2 + 16);
    v149 = *(a2 + 17);
    v148 = *(a2 + 18);
    v150 = vmaxq_f32(vmulq_f32(v133, vaddq_f32(v142, vmulq_f32(v145, vaddq_f32(vaddq_f32(v146, vmulq_f32(v145, v149)), vmulq_f32(vmulq_f32(v145, v145), vaddq_f32(v143, vmulq_f32(v147, v145))))))), v148);
    v151 = vcvtq_f32_s32(vcvtq_s32_f32(v150));
    v152 = vsubq_f32(v151, vandq_s8(v135, vcgtq_f32(v151, v150)));
    v153 = vsubq_f32(v150, v152);
    v154 = *(a2 + 19);
    v155 = *(a2 + 20);
    v157 = *(a2 + 21);
    v156 = *(a2 + 22);
    v158 = vmulq_f32(*(v7 + v124), *a2);
    v159 = vmulq_f32(vaddq_f32(v135, vmulq_f32(v153, vaddq_f32(v157, vmulq_f32(v153, vaddq_f32(v154, vmulq_f32(v155, v153)))))), vshlq_n_s32(vaddq_s32(v156, vcvtq_s32_f32(v152)), 0x17uLL));
    v160 = vmaxq_f32(vdupq_laneq_s32(v158, 3), v126);
    v161 = vmulq_f32(v129, vrecpeq_f32(v160));
    v162 = vmulq_f32(v158, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v161, vrecpsq_f32(v161, v160))), v131));
    v163 = vminq_f32(vmaxq_f32(v162, v131), v132);
    v164 = vorrq_s8(vandq_s8(v128, v163), v135);
    v165 = vandq_s8(v135, vcgtq_f32(v164, v140));
    v166 = vsubq_f32(vsubq_f32(v164, v135), vmulq_f32(vmulq_f32(v144, v165), v164));
    v167 = vmaxq_f32(vmulq_f32(v133, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v163, 0x17uLL)), vandq_s8(v138, vcgtq_f32(v137, v163))), v139), v165), vmulq_f32(v166, vaddq_f32(vaddq_f32(v146, vmulq_f32(v149, v166)), vmulq_f32(vmulq_f32(v166, v166), vaddq_f32(v143, vmulq_f32(v147, v166))))))), v148);
    v168 = vcvtq_f32_s32(vcvtq_s32_f32(v167));
    v169 = vsubq_f32(v168, vandq_s8(v135, vcgtq_f32(v168, v167)));
    v170 = vsubq_f32(v167, v169);
    v171 = vmulq_f32(vaddq_f32(v135, vmulq_f32(v170, vaddq_f32(v157, vmulq_f32(v170, vaddq_f32(v154, vmulq_f32(v155, v170)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v169), v156), 0x17uLL));
    v172 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v159, v171), vminq_f32(vminq_f32(vmulq_f32(v159, v171), v171), v159)), v131), *(a2 + 30));
    v173 = vorrq_s8(vandq_s8(v128, v172), v135);
    v174 = vandq_s8(v135, vcgtq_f32(v173, v140));
    v175 = vsubq_f32(vsubq_f32(v173, v135), vmulq_f32(vmulq_f32(v144, v174), v173));
    v176 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v172, 0x17uLL)), vandq_s8(v138, vcgtq_f32(v137, v172))), v139), v174), vmulq_f32(v175, vaddq_f32(vaddq_f32(v146, vmulq_f32(v149, v175)), vmulq_f32(vmulq_f32(v175, v175), vaddq_f32(v143, vmulq_f32(v147, v175))))))), v148);
    v177 = vcvtq_f32_s32(vcvtq_s32_f32(v176));
    v178 = vsubq_f32(v177, vandq_s8(v135, vcgtq_f32(v177, v176)));
    v179 = vsubq_f32(v176, v178);
    v180 = vmulq_f32(vaddq_f32(v135, vmulq_f32(v179, vaddq_f32(v157, vmulq_f32(v179, vaddq_f32(v154, vmulq_f32(v155, v179)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v178), v156), 0x17uLL));
    v180.f32[3] = v12;
    *(v6 + v124) = vaddq_f32(v125, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v180, vaddq_f32(v162, vmulq_laneq_f32(vsubq_f32(v180, v162), v125, 3))), v125), v162, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendColorDodgeTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = *(a1 + 12);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v15 = vmulq_f32(*(v8 + v13 - 16), *a2);
      v16 = vmulq_f32(*(v8 + v13), *a2);
      v17 = vdupq_laneq_s32(v15, 3);
      v18 = vdupq_laneq_s32(v16, 3);
      v20 = *(a2 + 5);
      v19 = *(a2 + 6);
      v21 = vmaxq_f32(v17, v19);
      v22 = vmaxq_f32(v18, v19);
      v23 = *(a2 + 7);
      v24 = vmulq_f32(vrecpeq_f32(v21), v23);
      v25 = vmulq_f32(vrecpeq_f32(v22), v23);
      v26 = vrecpsq_f32(v25, v22);
      v27 = vmulq_f32(v24, vrecpsq_f32(v24, v21));
      v29 = *(v7 + v13 - 16);
      v28 = *(v7 + v13);
      v30 = vmulq_f32(v15, v27);
      v31 = vmaxq_f32(vdupq_laneq_s32(v29, 3), v19);
      v32 = vmaxq_f32(vdupq_laneq_s32(v28, 3), v19);
      v33 = vmulq_f32(v16, vmulq_f32(v25, v26));
      v34 = vmulq_f32(v23, vrecpeq_f32(v31));
      v36 = *(a2 + 28);
      v35 = *(a2 + 29);
      v37 = *(a2 + 26);
      v38 = *(a2 + 27);
      v39 = vmaxq_f32(vsubq_f32(v35, v30), v37);
      v40 = vmaxq_f32(vsubq_f32(v35, v33), v37);
      v41 = vmulq_f32(v23, vrecpeq_f32(v32));
      v42 = vmulq_f32(v34, vrecpsq_f32(v34, v31));
      v43 = vminq_f32(vmaxq_f32(vmulq_f32(v23, vrecpeq_f32(v39)), v38), v36);
      v44 = vminq_f32(vmaxq_f32(vmulq_f32(v23, vrecpeq_f32(v40)), v38), v36);
      v45 = vmulq_f32(v29, v42);
      v46 = vmulq_f32(v28, vmulq_f32(v41, vrecpsq_f32(v41, v32)));
      v47 = *(a2 + 32);
      v30.i32[3] = 1.0;
      v33.i32[3] = 1.0;
      v48 = (v6 + v13);
      v48[-1] = vaddq_f32(v29, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v20, v30, vaddq_f32(v30, vmulq_laneq_f32(vsubq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v35, vcgeq_f32(v15, v17)), v47), v35, vbslq_s8(vcgtq_f32(v45, v47), vminq_f32(vmulq_f32(v45, vmulq_f32(v43, vrecpsq_f32(v39, v43))), v35), v47)), v30), v29, 3))), v29), v15, 3));
      *v48 = vaddq_f32(v28, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v20, v33, vaddq_f32(v33, vmulq_laneq_f32(vsubq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v35, vcgeq_f32(v16, v18)), v47), v35, vbslq_s8(vcgtq_f32(v46, v47), vminq_f32(vmulq_f32(v46, vmulq_f32(v44, vrecpsq_f32(v40, v44))), v35), v47)), v33), v28, 3))), v28), v16, 3));
      v12 += 2;
      v13 += 32;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v49 = 16 * v12;
    v50 = vmulq_f32(*(v8 + v49), *a2);
    v51 = vdupq_laneq_s32(v50, 3);
    v52 = *(a2 + 6);
    v53 = vmaxq_f32(v51, v52);
    v54 = *(a2 + 7);
    v55 = vmulq_f32(vrecpeq_f32(v53), v54);
    v56 = vmulq_f32(v50, vmulq_f32(v55, vrecpsq_f32(v55, v53)));
    v57 = *(v7 + v49);
    v58 = vmaxq_f32(vdupq_laneq_s32(v57, 3), v52);
    v59 = vmulq_f32(v54, vrecpeq_f32(v58));
    v60 = vmulq_f32(v59, vrecpsq_f32(v59, v58));
    v61 = *(a2 + 29);
    v62 = vmaxq_f32(vsubq_f32(v61, v56), *(a2 + 26));
    v63 = vminq_f32(vmaxq_f32(vmulq_f32(v54, vrecpeq_f32(v62)), *(a2 + 27)), *(a2 + 28));
    v64 = vmulq_f32(v57, v60);
    v56.i32[3] = 1.0;
    *(v6 + v49) = vaddq_f32(v57, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v56, vaddq_f32(v56, vmulq_laneq_f32(vsubq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v61, vcgeq_f32(v50, v51)), *(a2 + 32)), v61, vbslq_s8(vcgtq_f32(v64, *(a2 + 32)), vminq_f32(vmulq_f32(v64, vmulq_f32(v63, vrecpsq_f32(v62, v63))), v61), *(a2 + 32))), v56), v57, 3))), v57), v50, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendColorDodgePOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = 16 * *(a1 + 22);
    v8 = 16 * *(a1 + 26);
    v9 = *(a1 + 2);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v17 = *(a2 + 7);
        v16 = *(a2 + 8);
        v18 = vmulq_f32(vrecpeq_f32(v15), v17);
        v19 = *(a2 + 32);
        v20 = vmaxq_f32(vmulq_f32(v13, vmulq_f32(v18, vrecpsq_f32(v18, v15))), v19);
        v21 = *(a2 + 29);
        v22 = vminq_f32(v20, v21);
        v23 = vorrq_s8(vandq_s8(v16, v22), v21);
        v24 = *(a2 + 9);
        v25 = *(a2 + 10);
        v26 = *(a2 + 11);
        v27 = *(a2 + 12);
        v28 = vandq_s8(v21, vcgtq_f32(v23, v27));
        v29 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v24, v22))), v26), v28);
        v31 = *(a2 + 13);
        v30 = *(a2 + 14);
        v32 = vsubq_f32(vsubq_f32(v23, v21), vmulq_f32(vmulq_f32(v31, v28), v23));
        v34 = *(a2 + 15);
        v33 = *(a2 + 16);
        v36 = *(a2 + 17);
        v35 = *(a2 + 18);
        v37 = *(a2 + 1);
        v38 = vmaxq_f32(vmulq_f32(v37, vaddq_f32(v29, vmulq_f32(v32, vaddq_f32(vaddq_f32(v33, vmulq_f32(v32, v36)), vmulq_f32(vmulq_f32(v32, v32), vaddq_f32(v30, vmulq_f32(v34, v32))))))), v35);
        v39 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
        v40 = vsubq_f32(v39, vandq_s8(v21, vcgtq_f32(v39, v38)));
        v41 = vsubq_f32(v38, v40);
        v42 = *(a2 + 19);
        v43 = *(a2 + 20);
        v45 = *(a2 + 21);
        v44 = *(a2 + 22);
        v46 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v41, vaddq_f32(v45, vmulq_f32(v41, vaddq_f32(v42, vmulq_f32(v43, v41)))))), vshlq_n_s32(vaddq_s32(v44, vcvtq_s32_f32(v40)), 0x17uLL));
        v47 = *(v6 + v12);
        v48 = vmulq_f32(v47, *a2);
        v49 = vmaxq_f32(vdupq_laneq_s32(v47, 3), v14);
        v50 = vmulq_f32(v17, vrecpeq_f32(v49));
        v51 = vmulq_f32(v47, vmulq_f32(v50, vrecpsq_f32(v50, v49)));
        v52 = vminq_f32(vmaxq_f32(v51, v19), v21);
        v53 = vorrq_s8(vandq_s8(v16, v52), v21);
        v54 = vandq_s8(v21, vcgtq_f32(v53, v27));
        v55 = vsubq_f32(vsubq_f32(v53, v21), vmulq_f32(vmulq_f32(v31, v54), v53));
        v56 = vmaxq_f32(vmulq_f32(v37, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v52, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v24, v52))), v26), v54), vmulq_f32(v55, vaddq_f32(vaddq_f32(v33, vmulq_f32(v36, v55)), vmulq_f32(vmulq_f32(v55, v55), vaddq_f32(v30, vmulq_f32(v34, v55))))))), v35);
        v57 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
        v58 = vsubq_f32(v57, vandq_s8(v21, vcgtq_f32(v57, v56)));
        v59 = vsubq_f32(v56, v58);
        v60 = vsubq_f32(v21, vmulq_f32(vaddq_f32(v21, vmulq_f32(v59, vaddq_f32(v45, vmulq_f32(v59, vaddq_f32(v42, vmulq_f32(v43, v59)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v58), v44), 0x17uLL)));
        v61 = *(a2 + 26);
        v62 = vmaxq_f32(v60, v61);
        v63 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpeq_f32(v62)), *(a2 + 27)), *(a2 + 28));
        v64 = vminq_f32(vmulq_f32(v46, vmulq_f32(v63, vrecpsq_f32(v62, v63))), v21);
        v65 = vcgtq_f32(v46, v19);
        v66 = vcgtq_f32(vandq_s8(v21, vcgeq_f32(v61, v60)), v19);
        v67 = vorrq_s8(vandq_s8(vandq_s8(v21, v65), v66), vbicq_s8(v64, v66));
        v68 = vorrq_s8(vandq_s8(v67, v16), v21);
        v69 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v67, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v24, v67))), v26);
        v70 = vandq_s8(v21, vcgtq_f32(v68, v27));
        v71 = vsubq_f32(vsubq_f32(v68, v21), vmulq_f32(vmulq_f32(v31, v70), v68));
        v72 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(v69, v70), vmulq_f32(v71, vaddq_f32(vaddq_f32(v33, vmulq_f32(v36, v71)), vmulq_f32(vmulq_f32(v71, v71), vaddq_f32(v30, vmulq_f32(v34, v71))))))), v35);
        v73 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
        v74 = vsubq_f32(v73, vandq_s8(v21, vcgtq_f32(v73, v72)));
        v75 = vsubq_f32(v72, v74);
        *(v9 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), *(a2 + 53), vaddq_f32(v51, vmulq_laneq_f32(vsubq_f32(vmulq_f32(vaddq_f32(v21, vmulq_f32(v75, vaddq_f32(v45, vmulq_f32(v75, vaddq_f32(v42, vmulq_f32(v43, v75)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v74), v44), 0x17uLL)), v51), v13, 3))), v13), v48, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v7;
      v6 += v8;
      v9 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendColorDodgeQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = 16 * *(a1 + 22);
    v8 = 16 * *(a1 + 26);
    v9 = *(a1 + 2);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v17 = *(a2 + 7);
        v16 = *(a2 + 8);
        v18 = vmulq_f32(vrecpeq_f32(v15), v17);
        v19 = vmulq_f32(v13, vmulq_f32(v18, vrecpsq_f32(v18, v15)));
        v20 = *(a2 + 32);
        v21 = vmaxq_f32(v19, v20);
        v22 = *(a2 + 29);
        v23 = vminq_f32(v21, v22);
        v24 = vorrq_s8(vandq_s8(v16, v23), v22);
        v25 = *(a2 + 9);
        v26 = *(a2 + 10);
        v27 = *(a2 + 11);
        v28 = *(a2 + 12);
        v29 = vandq_s8(v22, vcgtq_f32(v24, v28));
        v30 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v25, v23))), v27), v29);
        v32 = *(a2 + 13);
        v31 = *(a2 + 14);
        v33 = vsubq_f32(vsubq_f32(v24, v22), vmulq_f32(vmulq_f32(v32, v29), v24));
        v35 = *(a2 + 15);
        v34 = *(a2 + 16);
        v37 = *(a2 + 17);
        v36 = *(a2 + 18);
        v38 = *(a2 + 24);
        v39 = vmaxq_f32(vmulq_f32(v38, vaddq_f32(v30, vmulq_f32(v33, vaddq_f32(vaddq_f32(v34, vmulq_f32(v33, v37)), vmulq_f32(vmulq_f32(v33, v33), vaddq_f32(v31, vmulq_f32(v35, v33))))))), v36);
        v40 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
        v41 = vsubq_f32(v40, vandq_s8(v22, vcgtq_f32(v40, v39)));
        v42 = vsubq_f32(v39, v41);
        v43 = *(a2 + 19);
        v44 = *(a2 + 20);
        v46 = *(a2 + 21);
        v45 = *(a2 + 22);
        v47 = *(v6 + v12);
        v48 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v42, vaddq_f32(v46, vmulq_f32(v42, vaddq_f32(v43, vmulq_f32(v44, v42)))))), vshlq_n_s32(vaddq_s32(v45, vcvtq_s32_f32(v41)), 0x17uLL));
        v49 = vmulq_f32(v47, *a2);
        v50 = vmaxq_f32(vdupq_laneq_s32(v47, 3), v14);
        v51 = vmulq_f32(v17, vrecpeq_f32(v50));
        v52 = vmulq_f32(v47, vmulq_f32(v51, vrecpsq_f32(v51, v50)));
        v53 = vminq_f32(vmaxq_f32(v52, v20), v22);
        v54 = vorrq_s8(vandq_s8(v16, v53), v22);
        v55 = vandq_s8(v22, vcgtq_f32(v54, v28));
        v56 = vsubq_f32(vsubq_f32(v54, v22), vmulq_f32(vmulq_f32(v32, v55), v54));
        v57 = vmaxq_f32(vmulq_f32(v38, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v53, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v25, v53))), v27), v55), vmulq_f32(v56, vaddq_f32(vaddq_f32(v34, vmulq_f32(v37, v56)), vmulq_f32(vmulq_f32(v56, v56), vaddq_f32(v31, vmulq_f32(v35, v56))))))), v36);
        v58 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
        v59 = vsubq_f32(v58, vandq_s8(v22, vcgtq_f32(v58, v57)));
        v60 = vsubq_f32(v57, v59);
        v61 = vsubq_f32(v22, vmulq_f32(vaddq_f32(v22, vmulq_f32(v60, vaddq_f32(v46, vmulq_f32(v60, vaddq_f32(v43, vmulq_f32(v44, v60)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v59), v45), 0x17uLL)));
        v62 = *(a2 + 26);
        v63 = vmaxq_f32(v61, v62);
        v64 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpeq_f32(v63)), *(a2 + 27)), *(a2 + 28));
        v65 = vcgtq_f32(vandq_s8(v22, vcgeq_f32(v62, v61)), v20);
        v66 = vminq_f32(vmaxq_f32(vorrq_s8(vandq_s8(vandq_s8(v22, vcgtq_f32(v48, v20)), v65), vbicq_s8(vminq_f32(vmulq_f32(v48, vmulq_f32(v64, vrecpsq_f32(v63, v64))), v22), v65)), v20), *(a2 + 30));
        v67 = vorrq_s8(vandq_s8(v16, v66), v22);
        v68 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v66, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v25, v66))), v27);
        v69 = vandq_s8(v22, vcgtq_f32(v67, v28));
        v70 = vsubq_f32(vsubq_f32(v67, v22), vmulq_f32(vmulq_f32(v32, v69), v67));
        v71 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(v68, v69), vmulq_f32(v70, vaddq_f32(vaddq_f32(v34, vmulq_f32(v37, v70)), vmulq_f32(vmulq_f32(v70, v70), vaddq_f32(v31, vmulq_f32(v35, v70))))))), v36);
        v72 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
        v73 = vsubq_f32(v72, vandq_s8(v22, vcgtq_f32(v72, v71)));
        v74 = vsubq_f32(v71, v73);
        *(v9 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), *(a2 + 53), vaddq_f32(v52, vmulq_laneq_f32(vsubq_f32(vmulq_f32(vaddq_f32(v22, vmulq_f32(v74, vaddq_f32(v46, vmulq_f32(v74, vaddq_f32(v43, vmulq_f32(v44, v74)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v73), v45), 0x17uLL)), v52), v13, 3))), v13), v49, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v7;
      v6 += v8;
      v9 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendLinearDodgeTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    while (v5 < 3)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v8 += v9;
      v6 += v10;
      v7 += v11;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 32;
    for (i = v5; i > 2; i -= 3)
    {
      v16 = *(v8 + v13 - 32);
      v15 = *(v8 + v13 - 16);
      v17 = *(v8 + v13);
      v19 = *(a2 + 5);
      v18 = *(a2 + 6);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v21 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v18);
      v22 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v23 = *(a2 + 7);
      v24 = vmulq_f32(vrecpeq_f32(v20), v23);
      v25 = vmulq_f32(vrecpeq_f32(v21), v23);
      v26 = vmulq_f32(vrecpeq_f32(v22), v23);
      v27 = vmulq_f32(*(v7 + v13 - 32), *a2);
      v28 = vmulq_f32(*(v7 + v13 - 16), *a2);
      v29 = vmulq_f32(*(v7 + v13), *a2);
      v30 = vmulq_f32(v24, vrecpsq_f32(v24, v20));
      v31 = vmaxq_f32(vdupq_laneq_s32(v27, 3), v18);
      v32 = vmulq_f32(v25, vrecpsq_f32(v25, v21));
      v33 = vmaxq_f32(vdupq_laneq_s32(v28, 3), v18);
      v34 = vmaxq_f32(vdupq_laneq_s32(v29, 3), v18);
      v35 = vmulq_f32(v26, vrecpsq_f32(v26, v22));
      v36 = vmulq_f32(v23, vrecpeq_f32(v31));
      v37 = vmulq_f32(v23, vrecpeq_f32(v33));
      v38 = vmulq_f32(v23, vrecpeq_f32(v34));
      v39 = vmulq_f32(v37, vrecpsq_f32(v37, v33));
      v40 = vmulq_f32(v38, vrecpsq_f32(v38, v34));
      v41 = *(a2 + 31);
      v42 = *(a2 + 32);
      v43 = vmulq_f32(v27, vorrq_s8(vandq_s8(v41, vmulq_f32(v36, vrecpsq_f32(v36, v31))), v42));
      v44 = vmulq_f32(v28, vorrq_s8(vandq_s8(v41, v39), v42));
      v45 = vmulq_f32(v29, vorrq_s8(vandq_s8(v41, v40), v42));
      v46 = *(a2 + 29);
      v47 = vminq_f32(vaddq_f32(vmulq_f32(v16, v30), v43), v46);
      v48 = vminq_f32(vaddq_f32(vmulq_f32(v15, v32), v44), v46);
      v49 = vminq_f32(vaddq_f32(vmulq_f32(v17, v35), v45), v46);
      v47.i32[3] = 1.0;
      v48.i32[3] = 1.0;
      v49.i32[3] = 1.0;
      v50 = (v6 + v13);
      v50[-2] = vaddq_f32(v16, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v19, v47, vaddq_f32(v43, vmulq_laneq_f32(vsubq_f32(v47, v43), v16, 3))), v16), v43, 3));
      v50[-1] = vaddq_f32(v15, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v19, v48, vaddq_f32(v44, vmulq_laneq_f32(vsubq_f32(v48, v44), v15, 3))), v15), v44, 3));
      *v50 = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v19, v49, vaddq_f32(v45, vmulq_laneq_f32(vsubq_f32(v49, v45), v17, 3))), v17), v45, 3));
      v12 += 3;
      v13 += 48;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v51 = *(v8 + 16 * v12);
      v52 = *(a2 + 6);
      v53 = vmaxq_f32(vdupq_laneq_s32(v51, 3), v52);
      v54 = *(a2 + 7);
      v55 = vmulq_f32(*(v7 + 16 * v12), *a2);
      v56 = vmulq_f32(vrecpeq_f32(v53), v54);
      v57 = vmaxq_f32(vdupq_laneq_s32(v55, 3), v52);
      v58 = vmulq_f32(v54, vrecpeq_f32(v57));
      v59 = vmulq_f32(v55, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v58, vrecpsq_f32(v58, v57))), *(a2 + 32)));
      v60 = vminq_f32(vaddq_f32(vmulq_f32(v51, vmulq_f32(v56, vrecpsq_f32(v56, v53))), v59), *(a2 + 29));
      v60.i32[3] = 1.0;
      *(v6 + 16 * v12++) = vaddq_f32(v51, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v60, vaddq_f32(v59, vmulq_laneq_f32(vsubq_f32(v60, v59), v51, 3))), v51), v59, 3));
    }

    while (v12 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendLinearDodgePOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v17 = *(v8 + v14 - 16);
      v16 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v26 = *(a2 + 31);
      v25 = *(a2 + 32);
      v27 = vmaxq_f32(vmulq_f32(v17, vmulq_f32(v23, vrecpsq_f32(v23, v19))), v25);
      v28 = vmaxq_f32(vmulq_f32(v16, vmulq_f32(v24, vrecpsq_f32(v24, v20))), v25);
      v29 = *(a2 + 29);
      v30 = vorrq_s8(vandq_s8(v21, v27), v29);
      v32 = *(a2 + 9);
      v31 = *(a2 + 10);
      v33 = vorrq_s8(vandq_s8(v21, v28), v29);
      v34 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v27)));
      v36 = *(a2 + 11);
      v35 = *(a2 + 12);
      v37 = vandq_s8(v29, vcgtq_f32(v30, v35));
      v38 = vandq_s8(v29, vcgtq_f32(v33, v35));
      v39 = vaddq_f32(vsubq_f32(v34, v36), v37);
      v41 = *(a2 + 13);
      v40 = *(a2 + 14);
      v42 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v28))), v36), v38);
      v43 = vsubq_f32(vsubq_f32(v30, v29), vmulq_f32(vmulq_f32(v41, v37), v30));
      v44 = vsubq_f32(vsubq_f32(v33, v29), vmulq_f32(vmulq_f32(v41, v38), v33));
      v46 = *(a2 + 15);
      v45 = *(a2 + 16);
      v48 = *(a2 + 17);
      v47 = *(a2 + 18);
      v49 = vaddq_f32(v39, vmulq_f32(v43, vaddq_f32(vaddq_f32(v45, vmulq_f32(v43, v48)), vmulq_f32(vmulq_f32(v43, v43), vaddq_f32(v40, vmulq_f32(v46, v43))))));
      v50 = *(a2 + 1);
      v51 = vmaxq_f32(vmulq_f32(v50, v49), v47);
      v52 = vmaxq_f32(vmulq_f32(v50, vaddq_f32(v42, vmulq_f32(v44, vaddq_f32(vaddq_f32(v45, vmulq_f32(v44, v48)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v40, vmulq_f32(v46, v44))))))), v47);
      v53 = *(a2 + 19);
      v54 = *(a2 + 20);
      v55 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v56 = vcvtq_f32_s32(vcvtq_s32_f32(v51));
      v57 = vmulq_f32(*(v7 + v14), *a2);
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v59 = vmaxq_f32(vdupq_laneq_s32(v55, 3), v18);
      v60 = vmaxq_f32(vdupq_laneq_s32(v57, 3), v18);
      v61 = vmulq_f32(v22, vrecpeq_f32(v59));
      v62 = vmulq_f32(v22, vrecpeq_f32(v60));
      v63 = vmulq_f32(v62, vrecpsq_f32(v62, v60));
      v64 = vmulq_f32(v55, vorrq_s8(vandq_s8(v26, vmulq_f32(v61, vrecpsq_f32(v61, v59))), v25));
      v65 = vmulq_f32(v57, vorrq_s8(vandq_s8(v26, v63), v25));
      v66 = vmaxq_f32(v64, v25);
      v67 = vmaxq_f32(v65, v25);
      v68 = vorrq_s8(vandq_s8(v21, v66), v29);
      v69 = vorrq_s8(vandq_s8(v21, v67), v29);
      v70 = vsubq_f32(v56, vandq_s8(v29, vcgtq_f32(v56, v51)));
      v71 = vsubq_f32(v58, vandq_s8(v29, vcgtq_f32(v58, v52)));
      v72 = vsubq_f32(v51, v70);
      v73 = vandq_s8(v29, vcgtq_f32(v68, v35));
      v74 = vandq_s8(v29, vcgtq_f32(v69, v35));
      v75 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v66, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v66))), v36), v73);
      v76 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v67, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v67))), v36), v74);
      v77 = vsubq_f32(vsubq_f32(v68, v29), vmulq_f32(vmulq_f32(v41, v73), v68));
      v78 = vsubq_f32(vsubq_f32(v69, v29), vmulq_f32(vmulq_f32(v41, v74), v69));
      v80 = *(a2 + 21);
      v79 = *(a2 + 22);
      v81 = vsubq_f32(v52, v71);
      v82 = vaddq_f32(v76, vmulq_f32(v78, vaddq_f32(vaddq_f32(v45, vmulq_f32(v48, v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(v40, vmulq_f32(v46, v78))))));
      v83 = vcvtq_s32_f32(v71);
      v12 = 1.0;
      v84 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v72, vaddq_f32(v80, vmulq_f32(v72, vaddq_f32(v53, vmulq_f32(v54, v72)))))), vshlq_n_s32(vaddq_s32(v79, vcvtq_s32_f32(v70)), 0x17uLL));
      v85 = vmulq_f32(v50, v82);
      v86 = vmaxq_f32(vmulq_f32(v50, vaddq_f32(v75, vmulq_f32(v77, vaddq_f32(vaddq_f32(v45, vmulq_f32(v48, v77)), vmulq_f32(vmulq_f32(v77, v77), vaddq_f32(v40, vmulq_f32(v46, v77))))))), v47);
      v87 = vmaxq_f32(v85, v47);
      v88 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
      v89 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v90 = vsubq_f32(v88, vandq_s8(v29, vcgtq_f32(v88, v86)));
      v91 = vsubq_f32(v89, vandq_s8(v29, vcgtq_f32(v89, v87)));
      v92 = vsubq_f32(v86, v90);
      v93 = vsubq_f32(v87, v91);
      v94 = vminq_f32(vaddq_f32(v84, vmulq_f32(vaddq_f32(v29, vmulq_f32(v92, vaddq_f32(v80, vmulq_f32(v92, vaddq_f32(v53, vmulq_f32(v54, v92)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v90), v79), 0x17uLL))), v29);
      v95 = vminq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v29, vmulq_f32(v81, vaddq_f32(v80, vmulq_f32(v81, vaddq_f32(v53, vmulq_f32(v54, v81)))))), vshlq_n_s32(vaddq_s32(v79, v83), 0x17uLL)), vmulq_f32(vaddq_f32(v29, vmulq_f32(v93, vaddq_f32(v80, vmulq_f32(v93, vaddq_f32(v53, vmulq_f32(v54, v93)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v91), v79), 0x17uLL))), v29);
      v96 = vandq_s8(v31, vcgtq_f32(v32, v94));
      v97 = vandq_s8(v31, vcgtq_f32(v32, v95));
      v98 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), v96);
      v99 = vandq_s8(v21, v94);
      v100 = vandq_s8(v21, v95);
      v101 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v95, 0x17uLL)), v97);
      v102 = vorrq_s8(v99, v29);
      v103 = vsubq_f32(v98, v36);
      v104 = vandq_s8(v29, vcgtq_f32(v102, v35));
      v105 = vsubq_f32(vsubq_f32(v102, v29), vmulq_f32(vmulq_f32(v41, v104), v102));
      v106 = vorrq_s8(v100, v29);
      v107 = vandq_s8(v29, vcgtq_f32(v106, v35));
      v108 = vsubq_f32(vsubq_f32(v106, v29), vmulq_f32(vmulq_f32(v41, v107), v106));
      v109 = vaddq_f32(vaddq_f32(vsubq_f32(v101, v36), v107), vmulq_f32(v108, vaddq_f32(vaddq_f32(v45, vmulq_f32(v48, v108)), vmulq_f32(vmulq_f32(v108, v108), vaddq_f32(v40, vmulq_f32(v46, v108))))));
      v110 = *(a2 + 2);
      v111 = vmaxq_f32(vmulq_f32(v110, vaddq_f32(vaddq_f32(v103, v104), vmulq_f32(v105, vaddq_f32(vaddq_f32(v45, vmulq_f32(v48, v105)), vmulq_f32(vmulq_f32(v105, v105), vaddq_f32(v40, vmulq_f32(v46, v105))))))), v47);
      v112 = vmaxq_f32(vmulq_f32(v110, v109), v47);
      v113 = vcvtq_f32_s32(vcvtq_s32_f32(v111));
      v114 = vcvtq_f32_s32(vcvtq_s32_f32(v112));
      v115 = vsubq_f32(v113, vandq_s8(v29, vcgtq_f32(v113, v111)));
      v116 = vsubq_f32(v114, vandq_s8(v29, vcgtq_f32(v114, v112)));
      v117 = vsubq_f32(v111, v115);
      v118 = vsubq_f32(v112, v116);
      v119 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v117, vaddq_f32(v80, vmulq_f32(v117, vaddq_f32(v53, vmulq_f32(v54, v117)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v115), v79), 0x17uLL));
      v119.i32[3] = 1.0;
      v120 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v118, vaddq_f32(v80, vmulq_f32(v118, vaddq_f32(v53, vmulq_f32(v54, v118)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v116), v79), 0x17uLL));
      v120.i32[3] = 1.0;
      v121 = *(a2 + 5);
      v122 = (v6 + v14);
      v122[-1] = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v121, v119, vaddq_f32(v64, vmulq_laneq_f32(vsubq_f32(v119, v64), v17, 3))), v17), v64, 3));
      *v122 = vaddq_f32(v16, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v121, v120, vaddq_f32(v65, vmulq_laneq_f32(vsubq_f32(v120, v65), v16, 3))), v16), v65, 3));
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v123 = 16 * v13;
    v124 = *(v8 + v123);
    v125 = *(a2 + 6);
    v126 = vmaxq_f32(vdupq_laneq_s32(v124, 3), v125);
    v128 = *(a2 + 7);
    v127 = *(a2 + 8);
    v129 = vmulq_f32(vrecpeq_f32(v126), v128);
    v130 = *(a2 + 32);
    v131 = vmaxq_f32(vmulq_f32(v124, vmulq_f32(v129, vrecpsq_f32(v129, v126))), v130);
    v132 = *(a2 + 29);
    v133 = vorrq_s8(vandq_s8(v127, v131), v132);
    v134 = *(a2 + 9);
    v135 = *(a2 + 10);
    v136 = *(a2 + 11);
    v137 = *(a2 + 12);
    v138 = vandq_s8(v132, vcgtq_f32(v133, v137));
    v139 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v131, 0x17uLL)), vandq_s8(v135, vcgtq_f32(v134, v131))), v136), v138);
    v141 = *(a2 + 13);
    v140 = *(a2 + 14);
    v142 = vsubq_f32(vsubq_f32(v133, v132), vmulq_f32(vmulq_f32(v141, v138), v133));
    v144 = *(a2 + 15);
    v143 = *(a2 + 16);
    v146 = *(a2 + 17);
    v145 = *(a2 + 18);
    v147 = *(a2 + 1);
    v148 = vmaxq_f32(vmulq_f32(v147, vaddq_f32(v139, vmulq_f32(v142, vaddq_f32(vaddq_f32(v143, vmulq_f32(v142, v146)), vmulq_f32(vmulq_f32(v142, v142), vaddq_f32(v140, vmulq_f32(v144, v142))))))), v145);
    v149 = vcvtq_f32_s32(vcvtq_s32_f32(v148));
    v150 = vsubq_f32(v149, vandq_s8(v132, vcgtq_f32(v149, v148)));
    v151 = vsubq_f32(v148, v150);
    v152 = *(a2 + 19);
    v153 = *(a2 + 20);
    v155 = *(a2 + 21);
    v154 = *(a2 + 22);
    v156 = vmulq_f32(*(v7 + v123), *a2);
    v157 = vmaxq_f32(vdupq_laneq_s32(v156, 3), v125);
    v158 = vmulq_f32(v128, vrecpeq_f32(v157));
    v159 = vmulq_f32(v156, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v158, vrecpsq_f32(v158, v157))), v130));
    v160 = vmaxq_f32(v159, v130);
    v161 = vorrq_s8(vandq_s8(v127, v160), v132);
    v162 = vandq_s8(v132, vcgtq_f32(v161, v137));
    v163 = vsubq_f32(vsubq_f32(v161, v132), vmulq_f32(vmulq_f32(v141, v162), v161));
    v164 = vmaxq_f32(vmulq_f32(v147, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v160, 0x17uLL)), vandq_s8(v135, vcgtq_f32(v134, v160))), v136), v162), vmulq_f32(v163, vaddq_f32(vaddq_f32(v143, vmulq_f32(v146, v163)), vmulq_f32(vmulq_f32(v163, v163), vaddq_f32(v140, vmulq_f32(v144, v163))))))), v145);
    v165 = vcvtq_f32_s32(vcvtq_s32_f32(v164));
    v166 = vsubq_f32(v165, vandq_s8(v132, vcgtq_f32(v165, v164)));
    v167 = vsubq_f32(v164, v166);
    v168 = vminq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v132, vmulq_f32(v151, vaddq_f32(v155, vmulq_f32(v151, vaddq_f32(v152, vmulq_f32(v153, v151)))))), vshlq_n_s32(vaddq_s32(v154, vcvtq_s32_f32(v150)), 0x17uLL)), vmulq_f32(vaddq_f32(v132, vmulq_f32(v167, vaddq_f32(v155, vmulq_f32(v167, vaddq_f32(v152, vmulq_f32(v153, v167)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v166), v154), 0x17uLL))), v132);
    v169 = vorrq_s8(vandq_s8(v127, v168), v132);
    v170 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v168, 0x17uLL)), vandq_s8(v135, vcgtq_f32(v134, v168))), v136);
    v171 = vandq_s8(v132, vcgtq_f32(v169, v137));
    v172 = vsubq_f32(vsubq_f32(v169, v132), vmulq_f32(vmulq_f32(v141, v171), v169));
    v173 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(v170, v171), vmulq_f32(v172, vaddq_f32(vaddq_f32(v143, vmulq_f32(v146, v172)), vmulq_f32(vmulq_f32(v172, v172), vaddq_f32(v140, vmulq_f32(v144, v172))))))), v145);
    v174 = vcvtq_f32_s32(vcvtq_s32_f32(v173));
    v175 = vsubq_f32(v174, vandq_s8(v132, vcgtq_f32(v174, v173)));
    v176 = vsubq_f32(v173, v175);
    v177 = vmulq_f32(vaddq_f32(v132, vmulq_f32(v176, vaddq_f32(v155, vmulq_f32(v176, vaddq_f32(v152, vmulq_f32(v153, v176)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v175), v154), 0x17uLL));
    v177.f32[3] = v12;
    *(v6 + v123) = vaddq_f32(v124, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v177, vaddq_f32(v159, vmulq_laneq_f32(vsubq_f32(v177, v159), v124, 3))), v124), v159, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendLinearDodgeQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v17 = *(v8 + v14 - 16);
      v16 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v25 = vmulq_f32(v23, vrecpsq_f32(v23, v19));
      v26 = vmulq_f32(v24, vrecpsq_f32(v24, v20));
      v28 = *(a2 + 31);
      v27 = *(a2 + 32);
      v29 = *(a2 + 23);
      v30 = *(a2 + 24);
      v31 = vminq_f32(vmaxq_f32(vmulq_f32(v17, v25), v27), v29);
      v32 = vminq_f32(vmaxq_f32(vmulq_f32(v16, v26), v27), v29);
      v33 = *(a2 + 29);
      v34 = vorrq_s8(vandq_s8(v21, v31), v33);
      v35 = vorrq_s8(vandq_s8(v21, v32), v33);
      v37 = *(a2 + 9);
      v36 = *(a2 + 10);
      v39 = *(a2 + 11);
      v38 = *(a2 + 12);
      v40 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v31))), v39);
      v41 = vandq_s8(v33, vcgtq_f32(v34, v38));
      v42 = vandq_s8(v33, vcgtq_f32(v35, v38));
      v44 = *(a2 + 13);
      v43 = *(a2 + 14);
      v45 = vaddq_f32(v40, v41);
      v46 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v32))), v39), v42);
      v47 = vsubq_f32(vsubq_f32(v34, v33), vmulq_f32(vmulq_f32(v44, v41), v34));
      v48 = vsubq_f32(vsubq_f32(v35, v33), vmulq_f32(vmulq_f32(v44, v42), v35));
      v50 = *(a2 + 15);
      v49 = *(a2 + 16);
      v52 = *(a2 + 17);
      v51 = *(a2 + 18);
      v53 = vmaxq_f32(vmulq_f32(v30, vaddq_f32(v45, vmulq_f32(v47, vaddq_f32(vaddq_f32(v49, vmulq_f32(v47, v52)), vmulq_f32(vmulq_f32(v47, v47), vaddq_f32(v43, vmulq_f32(v50, v47))))))), v51);
      v54 = vmaxq_f32(vmulq_f32(v30, vaddq_f32(v46, vmulq_f32(v48, vaddq_f32(vaddq_f32(v49, vmulq_f32(v48, v52)), vmulq_f32(vmulq_f32(v48, v48), vaddq_f32(v43, vmulq_f32(v50, v48))))))), v51);
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v56 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
      v57 = *(a2 + 19);
      v58 = *(a2 + 20);
      v59 = vsubq_f32(v55, vandq_s8(v33, vcgtq_f32(v55, v53)));
      v60 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v61 = vmulq_f32(*(v7 + v14), *a2);
      v62 = vsubq_f32(v56, vandq_s8(v33, vcgtq_f32(v56, v54)));
      v63 = vmaxq_f32(vdupq_laneq_s32(v60, 3), v18);
      v64 = vmaxq_f32(vdupq_laneq_s32(v61, 3), v18);
      v65 = vsubq_f32(v53, v59);
      v66 = vmulq_f32(v22, vrecpeq_f32(v63));
      v67 = vmulq_f32(v22, vrecpeq_f32(v64));
      v68 = vmulq_f32(v66, vrecpsq_f32(v66, v63));
      v69 = vmulq_f32(v67, vrecpsq_f32(v67, v64));
      v71 = *(a2 + 21);
      v70 = *(a2 + 22);
      v72 = vmulq_f32(v60, vorrq_s8(vandq_s8(v28, v68), v27));
      v73 = vmulq_f32(v61, vorrq_s8(vandq_s8(v28, v69), v27));
      v74 = vminq_f32(vmaxq_f32(v72, v27), v29);
      v75 = vminq_f32(vmaxq_f32(v73, v27), v29);
      v76 = vorrq_s8(vandq_s8(v21, v74), v33);
      v77 = vorrq_s8(vandq_s8(v21, v75), v33);
      v78 = vandq_s8(v33, vcgtq_f32(v76, v38));
      v79 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v74, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v74))), v39), v78);
      v80 = vsubq_f32(vsubq_f32(v76, v33), vmulq_f32(vmulq_f32(v44, v78), v76));
      v81 = vandq_s8(v33, vcgtq_f32(v77, v38));
      v82 = vsubq_f32(v54, v62);
      v83 = vsubq_f32(vsubq_f32(v77, v33), vmulq_f32(vmulq_f32(v44, v81), v77));
      v84 = vaddq_f32(v79, vmulq_f32(v80, vaddq_f32(vaddq_f32(v49, vmulq_f32(v52, v80)), vmulq_f32(vmulq_f32(v80, v80), vaddq_f32(v43, vmulq_f32(v50, v80))))));
      v85 = vcvtq_s32_f32(v59);
      v12 = 1.0;
      v86 = vmaxq_f32(vmulq_f32(v30, v84), v51);
      v87 = vmaxq_f32(vmulq_f32(v30, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v75, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v75))), v39), v81), vmulq_f32(v83, vaddq_f32(vaddq_f32(v49, vmulq_f32(v52, v83)), vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(v43, vmulq_f32(v50, v83))))))), v51);
      v88 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
      v89 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v90 = vsubq_f32(v88, vandq_s8(v33, vcgtq_f32(v88, v86)));
      v91 = vsubq_f32(v89, vandq_s8(v33, vcgtq_f32(v89, v87)));
      v92 = vsubq_f32(v86, v90);
      v93 = vsubq_f32(v87, v91);
      v94 = vmaxq_f32(vminq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v33, vmulq_f32(v65, vaddq_f32(v71, vmulq_f32(v65, vaddq_f32(v57, vmulq_f32(v58, v65)))))), vshlq_n_s32(vaddq_s32(v70, v85), 0x17uLL)), vmulq_f32(vaddq_f32(v33, vmulq_f32(v92, vaddq_f32(v71, vmulq_f32(v92, vaddq_f32(v57, vmulq_f32(v58, v92)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v90), v70), 0x17uLL))), v33), v27);
      v95 = vmaxq_f32(vminq_f32(vaddq_f32(vmulq_f32(vaddq_f32(v33, vmulq_f32(v82, vaddq_f32(v71, vmulq_f32(v82, vaddq_f32(v57, vmulq_f32(v58, v82)))))), vshlq_n_s32(vaddq_s32(v70, vcvtq_s32_f32(v62)), 0x17uLL)), vmulq_f32(vaddq_f32(v33, vmulq_f32(v93, vaddq_f32(v71, vmulq_f32(v93, vaddq_f32(v57, vmulq_f32(v58, v93)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v91), v70), 0x17uLL))), v33), v27);
      v96 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v94)));
      v97 = vorrq_s8(vandq_s8(v21, v94), v33);
      v98 = vandq_s8(v33, vcgtq_f32(v97, v38));
      v99 = vaddq_f32(vsubq_f32(v96, v39), v98);
      v100 = vsubq_f32(vsubq_f32(v97, v33), vmulq_f32(vmulq_f32(v44, v98), v97));
      v101 = vorrq_s8(vandq_s8(v21, v95), v33);
      v102 = vandq_s8(v33, vcgtq_f32(v101, v38));
      v103 = vsubq_f32(vsubq_f32(v101, v33), vmulq_f32(vmulq_f32(v44, v102), v101));
      v104 = vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v95, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v95))), v39), v102), vmulq_f32(v103, vaddq_f32(vaddq_f32(v49, vmulq_f32(v52, v103)), vmulq_f32(vmulq_f32(v103, v103), vaddq_f32(v43, vmulq_f32(v50, v103))))));
      v105 = *(a2 + 25);
      v106 = vmaxq_f32(vmulq_f32(v105, vaddq_f32(v99, vmulq_f32(v100, vaddq_f32(vaddq_f32(v49, vmulq_f32(v52, v100)), vmulq_f32(vmulq_f32(v100, v100), vaddq_f32(v43, vmulq_f32(v50, v100))))))), v51);
      v107 = vmaxq_f32(vmulq_f32(v105, v104), v51);
      v108 = vcvtq_f32_s32(vcvtq_s32_f32(v106));
      v109 = vcvtq_f32_s32(vcvtq_s32_f32(v107));
      v110 = vsubq_f32(v108, vandq_s8(v33, vcgtq_f32(v108, v106)));
      v111 = vsubq_f32(v109, vandq_s8(v33, vcgtq_f32(v109, v107)));
      v112 = vsubq_f32(v106, v110);
      v113 = vsubq_f32(v107, v111);
      v114 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v112, vaddq_f32(v71, vmulq_f32(v112, vaddq_f32(v57, vmulq_f32(v58, v112)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v110), v70), 0x17uLL));
      v114.i32[3] = 1.0;
      v115 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v113, vaddq_f32(v71, vmulq_f32(v113, vaddq_f32(v57, vmulq_f32(v58, v113)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v111), v70), 0x17uLL));
      v115.i32[3] = 1.0;
      v116 = *(a2 + 5);
      v117 = vaddq_f32(*(v8 + v14), vmulq_laneq_f32(vsubq_f32(vbslq_s8(v116, v115, vaddq_f32(v73, vmulq_laneq_f32(vsubq_f32(v115, v73), *(v8 + v14), 3))), *(v8 + v14)), v73, 3));
      v118 = (v6 + v14);
      v118[-1] = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v116, v114, vaddq_f32(v72, vmulq_laneq_f32(vsubq_f32(v114, v72), v17, 3))), v17), v72, 3));
      *v118 = v117;
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v119 = 16 * v13;
    v120 = *(v8 + v119);
    v121 = *(a2 + 6);
    v122 = vmaxq_f32(vdupq_laneq_s32(v120, 3), v121);
    v124 = *(a2 + 7);
    v123 = *(a2 + 8);
    v125 = vmulq_f32(vrecpeq_f32(v122), v124);
    v126 = *(a2 + 32);
    v128 = *(a2 + 23);
    v127 = *(a2 + 24);
    v129 = vminq_f32(vmaxq_f32(vmulq_f32(v120, vmulq_f32(v125, vrecpsq_f32(v125, v122))), v126), v128);
    v130 = *(a2 + 29);
    v131 = vorrq_s8(vandq_s8(v123, v129), v130);
    v132 = *(a2 + 9);
    v133 = *(a2 + 10);
    v134 = *(a2 + 11);
    v135 = *(a2 + 12);
    v136 = vandq_s8(v130, vcgtq_f32(v131, v135));
    v137 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v129, 0x17uLL)), vandq_s8(v133, vcgtq_f32(v132, v129))), v134), v136);
    v139 = *(a2 + 13);
    v138 = *(a2 + 14);
    v140 = vsubq_f32(vsubq_f32(v131, v130), vmulq_f32(vmulq_f32(v139, v136), v131));
    v142 = *(a2 + 15);
    v141 = *(a2 + 16);
    v144 = *(a2 + 17);
    v143 = *(a2 + 18);
    v145 = vmaxq_f32(vmulq_f32(v127, vaddq_f32(v137, vmulq_f32(v140, vaddq_f32(vaddq_f32(v141, vmulq_f32(v140, v144)), vmulq_f32(vmulq_f32(v140, v140), vaddq_f32(v138, vmulq_f32(v142, v140))))))), v143);
    v146 = vcvtq_f32_s32(vcvtq_s32_f32(v145));
    v147 = vsubq_f32(v146, vandq_s8(v130, vcgtq_f32(v146, v145)));
    v148 = vsubq_f32(v145, v147);
    v149 = *(a2 + 19);
    v150 = *(a2 + 20);
    v152 = *(a2 + 21);
    v151 = *(a2 + 22);
    v153 = vmulq_f32(vaddq_f32(v130, vmulq_f32(v148, vaddq_f32(v152, vmulq_f32(v148, vaddq_f32(v149, vmulq_f32(v150, v148)))))), vshlq_n_s32(vaddq_s32(v151, vcvtq_s32_f32(v147)), 0x17uLL));
    v154 = vmulq_f32(*(v7 + v119), *a2);
    v155 = vmaxq_f32(vdupq_laneq_s32(v154, 3), v121);
    v156 = vmulq_f32(v124, vrecpeq_f32(v155));
    v157 = vmulq_f32(v154, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v156, vrecpsq_f32(v156, v155))), v126));
    v158 = vminq_f32(vmaxq_f32(v157, v126), v128);
    v159 = vorrq_s8(vandq_s8(v123, v158), v130);
    v160 = vandq_s8(v130, vcgtq_f32(v159, v135));
    v161 = vsubq_f32(vsubq_f32(v159, v130), vmulq_f32(vmulq_f32(v139, v160), v159));
    v162 = vmaxq_f32(vmulq_f32(v127, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v158, 0x17uLL)), vandq_s8(v133, vcgtq_f32(v132, v158))), v134), v160), vmulq_f32(v161, vaddq_f32(vaddq_f32(v141, vmulq_f32(v144, v161)), vmulq_f32(vmulq_f32(v161, v161), vaddq_f32(v138, vmulq_f32(v142, v161))))))), v143);
    v163 = vcvtq_f32_s32(vcvtq_s32_f32(v162));
    v164 = vsubq_f32(v163, vandq_s8(v130, vcgtq_f32(v163, v162)));
    v165 = vsubq_f32(v162, v164);
    v166 = vmaxq_f32(vminq_f32(vaddq_f32(v153, vmulq_f32(vaddq_f32(v130, vmulq_f32(v165, vaddq_f32(v152, vmulq_f32(v165, vaddq_f32(v149, vmulq_f32(v150, v165)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v164), v151), 0x17uLL))), v130), v126);
    v167 = vorrq_s8(vandq_s8(v123, v166), v130);
    v168 = vandq_s8(v130, vcgtq_f32(v167, v135));
    v169 = vsubq_f32(vsubq_f32(v167, v130), vmulq_f32(vmulq_f32(v139, v168), v167));
    v170 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v166, 0x17uLL)), vandq_s8(v133, vcgtq_f32(v132, v166))), v134), v168), vmulq_f32(v169, vaddq_f32(vaddq_f32(v141, vmulq_f32(v144, v169)), vmulq_f32(vmulq_f32(v169, v169), vaddq_f32(v138, vmulq_f32(v142, v169))))))), v143);
    v171 = vcvtq_f32_s32(vcvtq_s32_f32(v170));
    v172 = vsubq_f32(v171, vandq_s8(v130, vcgtq_f32(v171, v170)));
    v173 = vsubq_f32(v170, v172);
    v174 = vmulq_f32(vaddq_f32(v130, vmulq_f32(v173, vaddq_f32(v152, vmulq_f32(v173, vaddq_f32(v149, vmulq_f32(v150, v173)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v172), v151), 0x17uLL));
    v174.f32[3] = v12;
    *(v6 + v119) = vaddq_f32(v120, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v174, vaddq_f32(v157, vmulq_laneq_f32(vsubq_f32(v174, v157), v120, 3))), v120), v157, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendOverlayTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = *(a1 + 12);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v15 = vmulq_f32(*(v8 + v13 - 16), *a2);
      v16 = vmulq_f32(*(v8 + v13), *a2);
      v18 = *(v7 + v13 - 16);
      v17 = *(v7 + v13);
      v20 = *(a2 + 5);
      v19 = *(a2 + 6);
      v21 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v19);
      v22 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v19);
      v23 = *(a2 + 7);
      v24 = vmulq_f32(vrecpeq_f32(v21), v23);
      v25 = vmulq_f32(vrecpeq_f32(v22), v23);
      v26 = vmulq_f32(v24, vrecpsq_f32(v24, v21));
      v27 = vmulq_f32(v25, vrecpsq_f32(v25, v22));
      v28 = *(a2 + 31);
      v29 = *(a2 + 32);
      v30 = vorrq_s8(vandq_s8(v28, v26), v29);
      v31 = vmaxq_f32(vdupq_laneq_s32(v18, 3), v19);
      v32 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v19);
      v33 = vorrq_s8(vandq_s8(v28, v27), v29);
      v34 = vmulq_f32(v23, vrecpeq_f32(v31));
      v35 = vmulq_f32(v23, vrecpeq_f32(v32));
      v36 = vmulq_f32(v15, v30);
      v37 = vmulq_f32(v18, vmulq_f32(v34, vrecpsq_f32(v34, v31)));
      v38 = vmulq_f32(v17, vmulq_f32(v35, vrecpsq_f32(v35, v32)));
      v39 = vmulq_f32(v16, v33);
      v40 = vmulq_f32(v36, v37);
      v41 = vmulq_f32(v39, v38);
      v42 = vaddq_f32(v40, v40);
      v43 = vaddq_f32(v41, v41);
      v44 = *(a2 + 55);
      v45 = vsubq_f32(vmulq_n_f32(vaddq_f32(v36, v37), *&v44), v42);
      v46 = vmulq_n_f32(vaddq_f32(v39, v38), *&v44);
      v47 = *(a2 + 13);
      v48 = vcgtq_f32(v47, v37);
      v49 = vcgtq_f32(v47, v38);
      v50 = *(a2 + 29);
      v51 = vbslq_s8(vcgtq_f32(vandq_s8(v50, v48), v29), v42, vsubq_f32(v45, v50));
      v51.i32[3] = 1.0;
      v52 = vbslq_s8(vcgtq_f32(vandq_s8(v50, v49), v29), v43, vsubq_f32(vsubq_f32(v46, v43), v50));
      v52.i32[3] = 1.0;
      v53 = (v6 + v13);
      v53[-1] = vaddq_f32(v18, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v20, v51, vaddq_f32(v36, vmulq_laneq_f32(vsubq_f32(v51, v36), v18, 3))), v18), v36, 3));
      *v53 = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v20, v52, vaddq_f32(v39, vmulq_laneq_f32(vsubq_f32(v52, v39), v17, 3))), v17), v39, 3));
      v12 += 2;
      v13 += 32;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v54 = 16 * v12;
    v55 = *(v7 + v54);
    v56 = vmulq_f32(*(v8 + v54), *a2);
    v57 = *(a2 + 6);
    v58 = vmaxq_f32(vdupq_laneq_s32(v56, 3), v57);
    v59 = *(a2 + 7);
    v60 = vmulq_f32(vrecpeq_f32(v58), v59);
    v61 = *(a2 + 32);
    v62 = vmulq_f32(v56, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v60, vrecpsq_f32(v60, v58))), v61));
    v63 = vmaxq_f32(vdupq_laneq_s32(v55, 3), v57);
    v64 = vmulq_f32(v59, vrecpeq_f32(v63));
    v65 = vmulq_f32(v55, vmulq_f32(v64, vrecpsq_f32(v64, v63)));
    v66 = vmulq_f32(v62, v65);
    v67 = vaddq_f32(v66, v66);
    v68 = vbslq_s8(vcgtq_f32(vandq_s8(*(a2 + 29), vcgtq_f32(*(a2 + 13), v65)), v61), v67, vsubq_f32(vsubq_f32(vmulq_n_f32(vaddq_f32(v62, v65), COERCE_FLOAT(*(a2 + 55))), v67), *(a2 + 29)));
    v68.i32[3] = 1.0;
    *(v6 + v54) = vaddq_f32(v55, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v68, vaddq_f32(v62, vmulq_laneq_f32(vsubq_f32(v68, v62), v55, 3))), v55), v62, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendOverlayPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v17 = *(v8 + v14 - 16);
      v16 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v25 = *(a2 + 31);
      v26 = *(a2 + 32);
      v27 = vmaxq_f32(vmulq_f32(v17, vmulq_f32(v23, vrecpsq_f32(v23, v19))), v26);
      v28 = vmaxq_f32(vmulq_f32(v16, vmulq_f32(v24, vrecpsq_f32(v24, v20))), v26);
      v29 = *(a2 + 29);
      v30 = vorrq_s8(vandq_s8(v21, v27), v29);
      v31 = vorrq_s8(vandq_s8(v21, v28), v29);
      v33 = *(a2 + 9);
      v32 = *(a2 + 10);
      v35 = *(a2 + 11);
      v34 = *(a2 + 12);
      v36 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v28))), v35);
      v37 = vandq_s8(v29, vcgtq_f32(v30, v34));
      v38 = vandq_s8(v29, vcgtq_f32(v31, v34));
      v40 = *(a2 + 13);
      v39 = *(a2 + 14);
      v41 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v27))), v35), v37);
      v42 = vmulq_f32(v40, v37);
      v43 = vmulq_f32(vmulq_f32(v40, v38), v31);
      v44 = vaddq_f32(v36, v38);
      v45 = vsubq_f32(vsubq_f32(v30, v29), vmulq_f32(v42, v30));
      v46 = vsubq_f32(vsubq_f32(v31, v29), v43);
      v48 = *(a2 + 15);
      v47 = *(a2 + 16);
      v50 = *(a2 + 17);
      v49 = *(a2 + 18);
      v51 = *(a2 + 1);
      v52 = vmaxq_f32(vmulq_f32(v51, vaddq_f32(v41, vmulq_f32(v45, vaddq_f32(vaddq_f32(v47, vmulq_f32(v45, v50)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v39, vmulq_f32(v48, v45))))))), v49);
      v53 = vmaxq_f32(vmulq_f32(v51, vaddq_f32(v44, vmulq_f32(v46, vaddq_f32(vaddq_f32(v47, vmulq_f32(v46, v50)), vmulq_f32(vmulq_f32(v46, v46), vaddq_f32(v39, vmulq_f32(v48, v46))))))), v49);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v56 = vsubq_f32(v54, vandq_s8(v29, vcgtq_f32(v54, v52)));
      v57 = vsubq_f32(v55, vandq_s8(v29, vcgtq_f32(v55, v53)));
      v58 = *(a2 + 19);
      v59 = *(a2 + 20);
      v60 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v61 = vsubq_f32(v52, v56);
      v62 = vmulq_f32(*(v7 + v14), *a2);
      v63 = vmaxq_f32(vdupq_laneq_s32(v60, 3), v18);
      v64 = vmaxq_f32(vdupq_laneq_s32(v62, 3), v18);
      v65 = vmulq_f32(v22, vrecpeq_f32(v63));
      v66 = vmulq_f32(v22, vrecpeq_f32(v64));
      v67 = vmulq_f32(v65, vrecpsq_f32(v65, v63));
      v69 = *(a2 + 21);
      v68 = *(a2 + 22);
      v70 = vmulq_f32(v60, vorrq_s8(vandq_s8(v25, v67), v26));
      v71 = vmulq_f32(v62, vorrq_s8(vandq_s8(v25, vmulq_f32(v66, vrecpsq_f32(v66, v64))), v26));
      v72 = vmaxq_f32(v70, v26);
      v73 = vmaxq_f32(v71, v26);
      v74 = vmulq_f32(v61, vaddq_f32(v69, vmulq_f32(v61, vaddq_f32(v58, vmulq_f32(v59, v61)))));
      v75 = vorrq_s8(vandq_s8(v21, v72), v29);
      v76 = vorrq_s8(vandq_s8(v21, v73), v29);
      v77 = vandq_s8(v29, vcgtq_f32(v75, v34));
      v78 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v72, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v72))), v35), v77);
      v79 = vsubq_f32(vsubq_f32(v75, v29), vmulq_f32(vmulq_f32(v40, v77), v75));
      v80 = vandq_s8(v29, vcgtq_f32(v76, v34));
      v81 = vsubq_f32(v53, v57);
      v82 = vsubq_f32(vsubq_f32(v76, v29), vmulq_f32(vmulq_f32(v40, v80), v76));
      v83 = vmulq_f32(v51, vaddq_f32(v78, vmulq_f32(v79, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v79)), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(v39, vmulq_f32(v48, v79)))))));
      v84 = vmulq_f32(v51, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v73, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v73))), v35), v80), vmulq_f32(v82, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v82)), vmulq_f32(vmulq_f32(v82, v82), vaddq_f32(v39, vmulq_f32(v48, v82)))))));
      v85 = vaddq_f32(v29, v74);
      v86 = vmaxq_f32(v83, v49);
      v87 = vmaxq_f32(v84, v49);
      v88 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
      v89 = vmulq_f32(v85, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v56)), 0x17uLL));
      v90 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v91 = vsubq_f32(v88, vandq_s8(v29, vcgtq_f32(v88, v86)));
      v92 = vsubq_f32(v90, vandq_s8(v29, vcgtq_f32(v90, v87)));
      v93 = vaddq_f32(v29, vmulq_f32(v81, vaddq_f32(v69, vmulq_f32(v81, vaddq_f32(v58, vmulq_f32(v59, v81))))));
      v12 = 1.0;
      v94 = vmulq_f32(v93, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v57)), 0x17uLL));
      v95 = vsubq_f32(v86, v91);
      v96 = vsubq_f32(v87, v92);
      v97 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v95, vaddq_f32(v69, vmulq_f32(v95, vaddq_f32(v58, vmulq_f32(v59, v95)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v91), v68), 0x17uLL));
      v98 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v96, vaddq_f32(v69, vmulq_f32(v96, vaddq_f32(v58, vmulq_f32(v59, v96)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v92), v68), 0x17uLL));
      v99 = vaddq_f32(v89, v89);
      v100 = vmulq_f32(v99, v97);
      v101 = vsubq_f32(v99, v29);
      v102 = vsubq_f32(vaddq_f32(v101, v97), vminq_f32(vminq_f32(vmulq_f32(v101, v97), v101), v97));
      v103 = vaddq_f32(v94, v94);
      v104 = vbslq_s8(vcgtq_f32(vandq_s8(v29, vcgeq_f32(v40, v89)), v26), v100, v102);
      v105 = vmulq_f32(v103, v98);
      v106 = vsubq_f32(v103, v29);
      v107 = vbslq_s8(vcgtq_f32(vandq_s8(v29, vcgeq_f32(v40, v94)), v26), v105, vsubq_f32(vaddq_f32(v106, v98), vminq_f32(vminq_f32(vmulq_f32(v106, v98), v106), v98)));
      v108 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v104, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v104)));
      v109 = vorrq_s8(vandq_s8(v21, v104), v29);
      v110 = vandq_s8(v29, vcgtq_f32(v109, v34));
      v111 = vsubq_f32(vsubq_f32(v109, v29), vmulq_f32(vmulq_f32(v40, v110), v109));
      v112 = vorrq_s8(vandq_s8(v21, v107), v29);
      v113 = vandq_s8(v29, vcgtq_f32(v112, v34));
      v114 = vsubq_f32(vsubq_f32(v112, v29), vmulq_f32(vmulq_f32(v40, v113), v112));
      v115 = vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v107, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v107))), v35), v113), vmulq_f32(v114, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v114)), vmulq_f32(vmulq_f32(v114, v114), vaddq_f32(v39, vmulq_f32(v48, v114))))));
      v116 = *(a2 + 2);
      v117 = vmaxq_f32(vmulq_f32(v116, vaddq_f32(vaddq_f32(vsubq_f32(v108, v35), v110), vmulq_f32(v111, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v111)), vmulq_f32(vmulq_f32(v111, v111), vaddq_f32(v39, vmulq_f32(v48, v111))))))), v49);
      v118 = vmaxq_f32(vmulq_f32(v116, v115), v49);
      v119 = vcvtq_f32_s32(vcvtq_s32_f32(v117));
      v120 = vcvtq_f32_s32(vcvtq_s32_f32(v118));
      v121 = vsubq_f32(v119, vandq_s8(v29, vcgtq_f32(v119, v117)));
      v122 = vsubq_f32(v120, vandq_s8(v29, vcgtq_f32(v120, v118)));
      v123 = vsubq_f32(v117, v121);
      v124 = vsubq_f32(v118, v122);
      v125 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v123, vaddq_f32(v69, vmulq_f32(v123, vaddq_f32(v58, vmulq_f32(v59, v123)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v121), v68), 0x17uLL));
      v125.i32[3] = 1.0;
      v126 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v124, vaddq_f32(v69, vmulq_f32(v124, vaddq_f32(v58, vmulq_f32(v59, v124)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v122), v68), 0x17uLL));
      v126.i32[3] = 1.0;
      v127 = *(a2 + 5);
      v128 = vaddq_f32(*(v8 + v14), vmulq_laneq_f32(vsubq_f32(vbslq_s8(v127, v126, vaddq_f32(v71, vmulq_laneq_f32(vsubq_f32(v126, v71), *(v8 + v14), 3))), *(v8 + v14)), v71, 3));
      v129 = (v6 + v14);
      v129[-1] = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v127, v125, vaddq_f32(v70, vmulq_laneq_f32(vsubq_f32(v125, v70), v17, 3))), v17), v70, 3));
      *v129 = v128;
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v130 = 16 * v13;
    v131 = *(v8 + v130);
    v132 = *(a2 + 6);
    v133 = vmaxq_f32(vdupq_laneq_s32(v131, 3), v132);
    v135 = *(a2 + 7);
    v134 = *(a2 + 8);
    v136 = vmulq_f32(vrecpeq_f32(v133), v135);
    v137 = *(a2 + 32);
    v138 = vmaxq_f32(vmulq_f32(v131, vmulq_f32(v136, vrecpsq_f32(v136, v133))), v137);
    v139 = *(a2 + 29);
    v140 = vorrq_s8(vandq_s8(v134, v138), v139);
    v141 = *(a2 + 9);
    v142 = *(a2 + 10);
    v143 = *(a2 + 11);
    v144 = *(a2 + 12);
    v145 = vandq_s8(v139, vcgtq_f32(v140, v144));
    v146 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v138, 0x17uLL)), vandq_s8(v142, vcgtq_f32(v141, v138))), v143), v145);
    v148 = *(a2 + 13);
    v147 = *(a2 + 14);
    v149 = vsubq_f32(vsubq_f32(v140, v139), vmulq_f32(vmulq_f32(v148, v145), v140));
    v151 = *(a2 + 15);
    v150 = *(a2 + 16);
    v153 = *(a2 + 17);
    v152 = *(a2 + 18);
    v154 = *(a2 + 1);
    v155 = vmaxq_f32(vmulq_f32(v154, vaddq_f32(v146, vmulq_f32(v149, vaddq_f32(vaddq_f32(v150, vmulq_f32(v149, v153)), vmulq_f32(vmulq_f32(v149, v149), vaddq_f32(v147, vmulq_f32(v151, v149))))))), v152);
    v156 = vcvtq_f32_s32(vcvtq_s32_f32(v155));
    v157 = vsubq_f32(v156, vandq_s8(v139, vcgtq_f32(v156, v155)));
    v158 = vsubq_f32(v155, v157);
    v159 = *(a2 + 19);
    v160 = *(a2 + 20);
    v162 = *(a2 + 21);
    v161 = *(a2 + 22);
    v163 = vmulq_f32(vaddq_f32(v139, vmulq_f32(v158, vaddq_f32(v162, vmulq_f32(v158, vaddq_f32(v159, vmulq_f32(v160, v158)))))), vshlq_n_s32(vaddq_s32(v161, vcvtq_s32_f32(v157)), 0x17uLL));
    v164 = vmulq_f32(*(v7 + v130), *a2);
    v165 = vmaxq_f32(vdupq_laneq_s32(v164, 3), v132);
    v166 = vmulq_f32(v135, vrecpeq_f32(v165));
    v167 = vmulq_f32(v164, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v166, vrecpsq_f32(v166, v165))), v137));
    v168 = vmaxq_f32(v167, v137);
    v169 = vorrq_s8(vandq_s8(v134, v168), v139);
    v170 = vandq_s8(v139, vcgtq_f32(v169, v144));
    v171 = vsubq_f32(vsubq_f32(v169, v139), vmulq_f32(vmulq_f32(v148, v170), v169));
    v172 = vmaxq_f32(vmulq_f32(v154, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v168, 0x17uLL)), vandq_s8(v142, vcgtq_f32(v141, v168))), v143), v170), vmulq_f32(v171, vaddq_f32(vaddq_f32(v150, vmulq_f32(v153, v171)), vmulq_f32(vmulq_f32(v171, v171), vaddq_f32(v147, vmulq_f32(v151, v171))))))), v152);
    v173 = vcvtq_f32_s32(vcvtq_s32_f32(v172));
    v174 = vsubq_f32(v173, vandq_s8(v139, vcgtq_f32(v173, v172)));
    v175 = vsubq_f32(v172, v174);
    v176 = vmulq_f32(vaddq_f32(v139, vmulq_f32(v175, vaddq_f32(v162, vmulq_f32(v175, vaddq_f32(v159, vmulq_f32(v160, v175)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v174), v161), 0x17uLL));
    v177 = vaddq_f32(v163, v163);
    v178 = vmulq_f32(v177, v176);
    v179 = vsubq_f32(v177, v139);
    v180 = vbslq_s8(vcgtq_f32(vandq_s8(v139, vcgeq_f32(v148, v163)), v137), v178, vsubq_f32(vaddq_f32(v179, v176), vminq_f32(vminq_f32(vmulq_f32(v179, v176), v179), v176)));
    v181 = vorrq_s8(vandq_s8(v134, v180), v139);
    v182 = vandq_s8(v139, vcgtq_f32(v181, v144));
    v183 = vsubq_f32(vsubq_f32(v181, v139), vmulq_f32(vmulq_f32(v148, v182), v181));
    v184 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v180, 0x17uLL)), vandq_s8(v142, vcgtq_f32(v141, v180))), v143), v182), vmulq_f32(v183, vaddq_f32(vaddq_f32(v150, vmulq_f32(v153, v183)), vmulq_f32(vmulq_f32(v183, v183), vaddq_f32(v147, vmulq_f32(v151, v183))))))), v152);
    v185 = vcvtq_f32_s32(vcvtq_s32_f32(v184));
    v186 = vsubq_f32(v185, vandq_s8(v139, vcgtq_f32(v185, v184)));
    v187 = vsubq_f32(v184, v186);
    v188 = vmulq_f32(vaddq_f32(v139, vmulq_f32(v187, vaddq_f32(v162, vmulq_f32(v187, vaddq_f32(v159, vmulq_f32(v160, v187)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v186), v161), 0x17uLL));
    v188.f32[3] = v12;
    *(v6 + v130) = vaddq_f32(v131, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v188, vaddq_f32(v167, vmulq_laneq_f32(vsubq_f32(v188, v167), v131, 3))), v131), v167, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendOverlayQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v16 = *(v8 + v14 - 16);
      v17 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v25 = vmulq_f32(v16, vmulq_f32(v23, vrecpsq_f32(v23, v19)));
      v26 = vmulq_f32(v17, vmulq_f32(v24, vrecpsq_f32(v24, v20)));
      v28 = *(a2 + 31);
      v27 = *(a2 + 32);
      v30 = *(a2 + 23);
      v29 = *(a2 + 24);
      v31 = vminq_f32(vmaxq_f32(v25, v27), v30);
      v32 = vminq_f32(vmaxq_f32(v26, v27), v30);
      v33 = *(a2 + 29);
      v34 = *(a2 + 30);
      v35 = vorrq_s8(vandq_s8(v21, v31), v33);
      v37 = *(a2 + 9);
      v36 = *(a2 + 10);
      v38 = vorrq_s8(vandq_s8(v21, v32), v33);
      v39 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v31)));
      v41 = *(a2 + 11);
      v40 = *(a2 + 12);
      v42 = vandq_s8(v33, vcgtq_f32(v35, v40));
      v43 = vandq_s8(v33, vcgtq_f32(v38, v40));
      v44 = vaddq_f32(vsubq_f32(v39, v41), v42);
      v46 = *(a2 + 13);
      v45 = *(a2 + 14);
      v47 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v32))), v41), v43);
      v48 = vsubq_f32(vsubq_f32(v35, v33), vmulq_f32(vmulq_f32(v46, v42), v35));
      v49 = vsubq_f32(vsubq_f32(v38, v33), vmulq_f32(vmulq_f32(v46, v43), v38));
      v51 = *(a2 + 15);
      v50 = *(a2 + 16);
      v53 = *(a2 + 17);
      v52 = *(a2 + 18);
      v54 = vmulq_f32(v29, vaddq_f32(v44, vmulq_f32(v48, vaddq_f32(vaddq_f32(v50, vmulq_f32(v48, v53)), vmulq_f32(vmulq_f32(v48, v48), vaddq_f32(v45, vmulq_f32(v51, v48)))))));
      v55 = vmulq_f32(v29, vaddq_f32(v47, vmulq_f32(v49, vaddq_f32(vaddq_f32(v50, vmulq_f32(v49, v53)), vmulq_f32(vmulq_f32(v49, v49), vaddq_f32(v45, vmulq_f32(v51, v49)))))));
      v56 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v57 = vmaxq_f32(v54, v52);
      v58 = vmulq_f32(*(v7 + v14), *a2);
      v59 = vmaxq_f32(vdupq_laneq_s32(v56, 3), v18);
      v60 = vmaxq_f32(vdupq_laneq_s32(v58, 3), v18);
      v61 = vmaxq_f32(v55, v52);
      v62 = vmulq_f32(v22, vrecpeq_f32(v59));
      v63 = vmulq_f32(v22, vrecpeq_f32(v60));
      v64 = vandq_s8(v28, vmulq_f32(v63, vrecpsq_f32(v63, v60)));
      v65 = vmulq_f32(v56, vorrq_s8(vandq_s8(v28, vmulq_f32(v62, vrecpsq_f32(v62, v59))), v27));
      v66 = vmulq_f32(v58, vorrq_s8(v64, v27));
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v68 = vminq_f32(vmaxq_f32(v65, v27), v30);
      v69 = vminq_f32(vmaxq_f32(v66, v27), v30);
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v71 = vorrq_s8(vandq_s8(v21, v68), v33);
      v72 = vorrq_s8(vandq_s8(v21, v69), v33);
      v73 = vandq_s8(v33, vcgtq_f32(v71, v40));
      v74 = vandq_s8(v33, vcgtq_f32(v72, v40));
      v75 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v68, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v68))), v41), v73);
      v76 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v69, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v69))), v41), v74);
      v77 = vsubq_f32(v67, vandq_s8(v33, vcgtq_f32(v67, v57)));
      v78 = vsubq_f32(vsubq_f32(v71, v33), vmulq_f32(vmulq_f32(v46, v73), v71));
      v79 = vsubq_f32(vsubq_f32(v72, v33), vmulq_f32(vmulq_f32(v46, v74), v72));
      v80 = vsubq_f32(v70, vandq_s8(v33, vcgtq_f32(v70, v61)));
      v81 = vsubq_f32(v57, v77);
      v82 = *(a2 + 19);
      v83 = *(a2 + 20);
      v84 = vaddq_f32(v75, vmulq_f32(v78, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(v45, vmulq_f32(v51, v78))))));
      v85 = *(a2 + 21);
      v86 = *(a2 + 22);
      v87 = vsubq_f32(v61, v80);
      v88 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v81, vaddq_f32(v85, vmulq_f32(v81, vaddq_f32(v82, vmulq_f32(v83, v81)))))), vshlq_n_s32(vaddq_s32(v86, vcvtq_s32_f32(v77)), 0x17uLL));
      v89 = vmaxq_f32(vmulq_f32(v29, v84), v52);
      v90 = vmaxq_f32(vmulq_f32(v29, vaddq_f32(v76, vmulq_f32(v79, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v79)), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(v45, vmulq_f32(v51, v79))))))), v52);
      v91 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v87, vaddq_f32(v85, vmulq_f32(v87, vaddq_f32(v82, vmulq_f32(v83, v87)))))), vshlq_n_s32(vaddq_s32(v86, vcvtq_s32_f32(v80)), 0x17uLL));
      v92 = vcvtq_f32_s32(vcvtq_s32_f32(v89));
      v93 = vcvtq_f32_s32(vcvtq_s32_f32(v90));
      v94 = vsubq_f32(v92, vandq_s8(v33, vcgtq_f32(v92, v89)));
      v95 = vsubq_f32(v93, vandq_s8(v33, vcgtq_f32(v93, v90)));
      v96 = vsubq_f32(v89, v94);
      v97 = vsubq_f32(v90, v95);
      v98 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v96, vaddq_f32(v85, vmulq_f32(v96, vaddq_f32(v82, vmulq_f32(v83, v96)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v94), v86), 0x17uLL));
      v99 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v97, vaddq_f32(v85, vmulq_f32(v97, vaddq_f32(v82, vmulq_f32(v83, v97)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v95), v86), 0x17uLL));
      v100 = vaddq_f32(v88, v88);
      v101 = vmulq_f32(v100, v98);
      v102 = vsubq_f32(v100, v33);
      v103 = vsubq_f32(vaddq_f32(v102, v98), vminq_f32(vminq_f32(vmulq_f32(v102, v98), v102), v98));
      v12 = 1.0;
      v104 = vaddq_f32(v91, v91);
      v105 = vbslq_s8(vcgtq_f32(vandq_s8(v33, vcgeq_f32(v46, v88)), v27), v101, v103);
      v106 = vmulq_f32(v104, v99);
      v107 = vsubq_f32(v104, v33);
      v108 = vminq_f32(vmaxq_f32(v105, v27), v34);
      v109 = vminq_f32(vmaxq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v33, vcgeq_f32(v46, v91)), v27), v106, vsubq_f32(vaddq_f32(v107, v99), vminq_f32(vminq_f32(vmulq_f32(v107, v99), v107), v99))), v27), v34);
      v110 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v108, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v108)));
      v111 = vandq_s8(v21, v108);
      v112 = vandq_s8(v21, v109);
      v113 = vorrq_s8(v111, v33);
      v114 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v109, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v109))), v41);
      v115 = vandq_s8(v33, vcgtq_f32(v113, v40));
      v116 = vsubq_f32(vsubq_f32(v113, v33), vmulq_f32(vmulq_f32(v46, v115), v113));
      v117 = vorrq_s8(v112, v33);
      v118 = vandq_s8(v33, vcgtq_f32(v117, v40));
      v119 = vsubq_f32(vsubq_f32(v117, v33), vmulq_f32(vmulq_f32(v46, v118), v117));
      v120 = vaddq_f32(vaddq_f32(v114, v118), vmulq_f32(v119, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v119)), vmulq_f32(vmulq_f32(v119, v119), vaddq_f32(v45, vmulq_f32(v51, v119))))));
      v121 = *(a2 + 25);
      v122 = vmaxq_f32(vmulq_f32(v121, vaddq_f32(vaddq_f32(vsubq_f32(v110, v41), v115), vmulq_f32(v116, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v116)), vmulq_f32(vmulq_f32(v116, v116), vaddq_f32(v45, vmulq_f32(v51, v116))))))), v52);
      v123 = vmaxq_f32(vmulq_f32(v121, v120), v52);
      v124 = vcvtq_f32_s32(vcvtq_s32_f32(v122));
      v125 = vcvtq_f32_s32(vcvtq_s32_f32(v123));
      v126 = vsubq_f32(v124, vandq_s8(v33, vcgtq_f32(v124, v122)));
      v127 = vsubq_f32(v125, vandq_s8(v33, vcgtq_f32(v125, v123)));
      v128 = vsubq_f32(v122, v126);
      v129 = vsubq_f32(v123, v127);
      v130 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v128, vaddq_f32(v85, vmulq_f32(v128, vaddq_f32(v82, vmulq_f32(v83, v128)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v126), v86), 0x17uLL));
      v130.i32[3] = 1.0;
      v131 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v129, vaddq_f32(v85, vmulq_f32(v129, vaddq_f32(v82, vmulq_f32(v83, v129)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v127), v86), 0x17uLL));
      v131.i32[3] = 1.0;
      v132 = *(a2 + 5);
      v133 = (v6 + v14);
      v133[-1] = vaddq_f32(v16, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v132, v130, vaddq_f32(v65, vmulq_laneq_f32(vsubq_f32(v130, v65), v16, 3))), v16), v65, 3));
      *v133 = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v132, v131, vaddq_f32(v66, vmulq_laneq_f32(vsubq_f32(v131, v66), v17, 3))), v17), v66, 3));
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v134 = 16 * v13;
    v135 = *(v8 + v134);
    v136 = *(a2 + 6);
    v137 = vmaxq_f32(vdupq_laneq_s32(v135, 3), v136);
    v139 = *(a2 + 7);
    v138 = *(a2 + 8);
    v140 = vmulq_f32(vrecpeq_f32(v137), v139);
    v141 = *(a2 + 32);
    v142 = *(a2 + 23);
    v143 = *(a2 + 24);
    v144 = vminq_f32(vmaxq_f32(vmulq_f32(v135, vmulq_f32(v140, vrecpsq_f32(v140, v137))), v141), v142);
    v145 = *(a2 + 29);
    v146 = vorrq_s8(vandq_s8(v138, v144), v145);
    v147 = *(a2 + 9);
    v148 = *(a2 + 10);
    v149 = *(a2 + 11);
    v150 = *(a2 + 12);
    v151 = vandq_s8(v145, vcgtq_f32(v146, v150));
    v152 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v144, 0x17uLL)), vandq_s8(v148, vcgtq_f32(v147, v144))), v149), v151);
    v154 = *(a2 + 13);
    v153 = *(a2 + 14);
    v155 = vsubq_f32(vsubq_f32(v146, v145), vmulq_f32(vmulq_f32(v154, v151), v146));
    v157 = *(a2 + 15);
    v156 = *(a2 + 16);
    v159 = *(a2 + 17);
    v158 = *(a2 + 18);
    v160 = vmaxq_f32(vmulq_f32(v143, vaddq_f32(v152, vmulq_f32(v155, vaddq_f32(vaddq_f32(v156, vmulq_f32(v155, v159)), vmulq_f32(vmulq_f32(v155, v155), vaddq_f32(v153, vmulq_f32(v157, v155))))))), v158);
    v161 = vcvtq_f32_s32(vcvtq_s32_f32(v160));
    v162 = vsubq_f32(v161, vandq_s8(v145, vcgtq_f32(v161, v160)));
    v163 = vsubq_f32(v160, v162);
    v164 = *(a2 + 19);
    v165 = *(a2 + 20);
    v167 = *(a2 + 21);
    v166 = *(a2 + 22);
    v168 = vmulq_f32(vaddq_f32(v145, vmulq_f32(v163, vaddq_f32(v167, vmulq_f32(v163, vaddq_f32(v164, vmulq_f32(v165, v163)))))), vshlq_n_s32(vaddq_s32(v166, vcvtq_s32_f32(v162)), 0x17uLL));
    v169 = vmulq_f32(*(v7 + v134), *a2);
    v170 = vmaxq_f32(vdupq_laneq_s32(v169, 3), v136);
    v171 = vmulq_f32(v139, vrecpeq_f32(v170));
    v172 = vmulq_f32(v169, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v171, vrecpsq_f32(v171, v170))), v141));
    v173 = vminq_f32(vmaxq_f32(v172, v141), v142);
    v174 = vorrq_s8(vandq_s8(v138, v173), v145);
    v175 = vandq_s8(v145, vcgtq_f32(v174, v150));
    v176 = vsubq_f32(vsubq_f32(v174, v145), vmulq_f32(vmulq_f32(v154, v175), v174));
    v177 = vmaxq_f32(vmulq_f32(v143, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v173, 0x17uLL)), vandq_s8(v148, vcgtq_f32(v147, v173))), v149), v175), vmulq_f32(v176, vaddq_f32(vaddq_f32(v156, vmulq_f32(v159, v176)), vmulq_f32(vmulq_f32(v176, v176), vaddq_f32(v153, vmulq_f32(v157, v176))))))), v158);
    v178 = vcvtq_f32_s32(vcvtq_s32_f32(v177));
    v179 = vsubq_f32(v178, vandq_s8(v145, vcgtq_f32(v178, v177)));
    v180 = vsubq_f32(v177, v179);
    v181 = vmulq_f32(vaddq_f32(v145, vmulq_f32(v180, vaddq_f32(v167, vmulq_f32(v180, vaddq_f32(v164, vmulq_f32(v165, v180)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v179), v166), 0x17uLL));
    v182 = vaddq_f32(v168, v168);
    v183 = vmulq_f32(v182, v181);
    v184 = vsubq_f32(v182, v145);
    v185 = vminq_f32(vmaxq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v145, vcgeq_f32(v154, v168)), v141), v183, vsubq_f32(vaddq_f32(v184, v181), vminq_f32(vminq_f32(vmulq_f32(v184, v181), v184), v181))), v141), *(a2 + 30));
    v186 = vorrq_s8(vandq_s8(v138, v185), v145);
    v187 = vandq_s8(v145, vcgtq_f32(v186, v150));
    v188 = vsubq_f32(vsubq_f32(v186, v145), vmulq_f32(vmulq_f32(v154, v187), v186));
    v189 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v185, 0x17uLL)), vandq_s8(v148, vcgtq_f32(v147, v185))), v149), v187), vmulq_f32(v188, vaddq_f32(vaddq_f32(v156, vmulq_f32(v159, v188)), vmulq_f32(vmulq_f32(v188, v188), vaddq_f32(v153, vmulq_f32(v157, v188))))))), v158);
    v190 = vcvtq_f32_s32(vcvtq_s32_f32(v189));
    v191 = vsubq_f32(v190, vandq_s8(v145, vcgtq_f32(v190, v189)));
    v192 = vsubq_f32(v189, v191);
    v193 = vmulq_f32(vaddq_f32(v145, vmulq_f32(v192, vaddq_f32(v167, vmulq_f32(v192, vaddq_f32(v164, vmulq_f32(v165, v192)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v191), v166), 0x17uLL));
    v193.f32[3] = v12;
    *(v6 + v134) = vaddq_f32(v135, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v193, vaddq_f32(v172, vmulq_laneq_f32(vsubq_f32(v193, v172), v135, 3))), v135), v172, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendSoftLightTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    while (v5 < 2)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v16 = *(v8 + v13 - 16);
      v15 = *(v8 + v13);
      v17 = *(a2 + 55);
      v18 = *(a2 + 56);
      v20 = *(a2 + 27);
      v19 = *(a2 + 28);
      v21 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v16, v17), 3), v20), v19);
      v22 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v15, v17), 3), v20), v19);
      v23 = vminq_f32(vmaxq_f32(vrecpeq_f32(v21), v20), v19);
      v24 = vminq_f32(vmaxq_f32(vrecpeq_f32(v22), v20), v19);
      v25 = vminq_f32(vmaxq_f32(vmulq_f32(v23, vrecpsq_f32(v21, v23)), v20), v19);
      v26 = vminq_f32(vmaxq_f32(vmulq_f32(v24, vrecpsq_f32(v22, v24)), v20), v19);
      v27 = vmulq_f32(v26, vrecpsq_f32(v22, v26));
      v28 = vmulq_f32(v16, vmulq_f32(v25, vrecpsq_f32(v21, v25)));
      v29 = *(a2 + 57);
      v30 = *(a2 + 58);
      v31 = vmulq_f32(v15, v27);
      v32 = vaddq_f32(v18, vmulq_f32(v28, v29));
      v33 = vaddq_f32(v18, vmulq_f32(v31, v29));
      v34 = vaddq_f32(v30, vmulq_f32(v28, v32));
      v35 = vaddq_f32(v30, vmulq_f32(v31, v33));
      v36 = vcgtq_f32(v28, v19);
      v37 = vmulq_f32(v28, v34);
      v38 = vminq_f32(vrsqrteq_f32(v28), v19);
      v39 = vminq_f32(vrsqrteq_f32(v31), v19);
      v40 = vmulq_f32(v31, v35);
      v41 = vminq_f32(vmulq_f32(v38, vrsqrtsq_f32(vmulq_f32(v28, v38), v38)), v19);
      v42 = vminq_f32(vmulq_f32(v39, vrsqrtsq_f32(vmulq_f32(v31, v39), v39)), v19);
      v43 = *(a2 + 59);
      v44 = vmulq_f32(*(v7 + v13 - 16), *a2);
      v45 = vmulq_f32(*(v7 + v13), *a2);
      v46 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v44, v43), 3), v20), v19);
      v47 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v45, v43), 3), v20), v19);
      v48 = vminq_f32(vmaxq_f32(vrecpeq_f32(v46), v20), v19);
      v49 = vmulq_f32(v48, vrecpsq_f32(v46, v48));
      v50 = vminq_f32(vmaxq_f32(vrecpeq_f32(v47), v20), v19);
      v51 = vmulq_f32(v50, vrecpsq_f32(v47, v50));
      v52 = vcgtq_f32(v31, v19);
      v53 = vmulq_f32(v28, vminq_f32(vmulq_f32(v41, vrsqrtsq_f32(vmulq_f32(v28, v41), v41)), v19));
      v54 = vminq_f32(vmaxq_f32(v49, v20), v19);
      v55 = vmulq_f32(v31, vminq_f32(vmulq_f32(v42, vrsqrtsq_f32(vmulq_f32(v31, v42), v42)), v19));
      v56 = vminq_f32(vmaxq_f32(v51, v20), v19);
      v57 = *(a2 + 29);
      v58 = vbslq_s8(v36, v28, v53);
      v59 = vmulq_f32(v54, vrecpsq_f32(v46, v54));
      v60 = *(a2 + 32);
      v61 = vmulq_f32(v56, vrecpsq_f32(v47, v56));
      v59.i32[3] = 1.0;
      v61.i32[3] = 1.0;
      v62 = vbslq_s8(vcgtq_f32(vandq_s8(v57, vcgeq_f32(v43, v28)), v60), v37, v58);
      v63 = vmulq_f32(v44, v59);
      v64 = vmulq_f32(v45, v61);
      v65 = vsubq_f32(v57, vmulq_f32(v17, v63));
      v66 = vsubq_f32(v57, vmulq_f32(v17, v64));
      v67 = *(a2 + 13);
      v68 = vsubq_f32(v28, vbslq_s8(vcgtq_f32(vandq_s8(v57, vcgeq_f32(v67, v63)), v60), vmulq_f32(vsubq_f32(v57, v28), vmulq_f32(v28, v65)), vmulq_f32(vsubq_f32(v62, v28), v65)));
      v69 = vsubq_f32(v31, vbslq_s8(vcgtq_f32(vandq_s8(v57, vcgeq_f32(v67, v64)), v60), vmulq_f32(vsubq_f32(v57, v31), vmulq_f32(v31, v66)), vmulq_f32(vsubq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v57, vcgeq_f32(v43, v31)), v60), v40, vbslq_s8(v52, v31, v55)), v31), v66)));
      v68.i32[3] = 1.0;
      v69.i32[3] = 1.0;
      v70 = *(a2 + 5);
      v71 = (v6 + v13);
      v71[-1] = vaddq_f32(v16, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v70, v68, vaddq_f32(v63, vmulq_laneq_f32(vsubq_f32(v68, v63), v16, 3))), v16), v63, 3));
      *v71 = vaddq_f32(v15, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v70, v69, vaddq_f32(v64, vmulq_laneq_f32(vsubq_f32(v69, v64), v15, 3))), v15), v64, 3));
      v12 += 2;
      v13 += 32;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v72 = 16 * v12;
    v73 = *(v8 + v72);
    v74 = *(a2 + 55);
    v75 = *(a2 + 27);
    v76 = *(a2 + 28);
    v77 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v73, v74), 3), v75), v76);
    v78 = vminq_f32(vmaxq_f32(vrecpeq_f32(v77), v75), v76);
    v79 = vminq_f32(vmaxq_f32(vmulq_f32(v78, vrecpsq_f32(v77, v78)), v75), v76);
    v80 = vmulq_f32(v73, vmulq_f32(v79, vrecpsq_f32(v77, v79)));
    v81 = vminq_f32(vrsqrteq_f32(v80), v76);
    v82 = vminq_f32(vmulq_f32(v81, vrsqrtsq_f32(vmulq_f32(v80, v81), v81)), v76);
    v83 = vbslq_s8(vcgtq_f32(v80, v76), v80, vmulq_f32(v80, vminq_f32(vmulq_f32(v82, vrsqrtsq_f32(vmulq_f32(v80, v82), v82)), v76)));
    v84 = *(a2 + 59);
    v85 = *(a2 + 29);
    v86 = *(a2 + 32);
    v87 = vbslq_s8(vcgtq_f32(vandq_s8(v85, vcgeq_f32(v84, v80)), v86), vmulq_f32(v80, vaddq_f32(*(a2 + 58), vmulq_f32(v80, vaddq_f32(*(a2 + 56), vmulq_f32(v80, *(a2 + 57)))))), v83);
    v88 = vmulq_f32(*(v7 + v72), *a2);
    v89 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v88, v84), 3), v75), v76);
    v90 = vminq_f32(vmaxq_f32(vrecpeq_f32(v89), v75), v76);
    v91 = vminq_f32(vmaxq_f32(vmulq_f32(v90, vrecpsq_f32(v89, v90)), v75), v76);
    v92 = vmulq_f32(v91, vrecpsq_f32(v89, v91));
    v92.i32[3] = 1.0;
    v93 = vmulq_f32(v88, v92);
    v94 = vsubq_f32(v85, vmulq_f32(v74, v93));
    v95 = vsubq_f32(v80, vbslq_s8(vcgtq_f32(vandq_s8(v85, vcgeq_f32(*(a2 + 13), v93)), v86), vmulq_f32(vsubq_f32(v85, v80), vmulq_f32(v80, v94)), vmulq_f32(vsubq_f32(v87, v80), v94)));
    v95.i32[3] = 1.0;
    *(v6 + v72) = vaddq_f32(v73, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v95, vaddq_f32(v93, vmulq_laneq_f32(vsubq_f32(v95, v93), v73, 3))), v73), v93, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendSoftLightPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 59);
        v16 = *(a2 + 27);
        v15 = *(a2 + 28);
        v17 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v13, v14), 3), v16), v15);
        v18 = vminq_f32(vmaxq_f32(vrecpeq_f32(v17), v16), v15);
        v19 = vminq_f32(vmaxq_f32(vmulq_f32(v18, vrecpsq_f32(v17, v18)), v16), v15);
        v21 = *(a2 + 32);
        v20 = *(a2 + 33);
        v22 = vmaxq_f32(vmulq_f32(v13, vmulq_f32(v19, vrecpsq_f32(v17, v19))), v21);
        v23 = *(a2 + 1);
        v24 = *(a2 + 29);
        v25 = vcgtq_f32(vandq_s8(v24, vceqq_f32(v23, v21)), v21);
        v26 = vbslq_s8(v25, v24, v22);
        v27 = *(a2 + 9);
        v28 = vcgtq_f32(v27, v26);
        v29 = vmulq_f32(v26, vaddq_f32(v24, vandq_s8(v20, v28)));
        v30 = vorrq_s8(vandq_s8(*(a2 + 8), v29), v24);
        v31 = *(a2 + 4);
        v32 = *(a2 + 10);
        v101 = *(a2 + 34);
        v33 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v32, vceqq_f32(v26, v32)), vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v26, v31), v101), vandq_s8(v32, vceqq_f32(v26, v31))), vandq_s8(*(a2 + 35), v28))), *(a2 + 11)), vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)));
        v34 = *(a2 + 13);
        v116 = *(a2 + 11);
        v117 = *(a2 + 12);
        v35 = vandq_s8(v24, vcgtq_f32(v30, v117));
        v36 = vaddq_f32(v33, v35);
        v37 = vsubq_f32(vsubq_f32(v30, v24), vmulq_f32(vmulq_f32(v34, v35), v30));
        v38 = vmulq_f32(v37, v37);
        v115 = *(a2 + 36);
        v104 = *(a2 + 39);
        v39 = *(a2 + 40);
        v114 = *(a2 + 41);
        v102 = *(a2 + 43);
        v103 = *(a2 + 42);
        v112 = *(a2 + 44);
        v113 = *(a2 + 45);
        v40 = vmulq_f32(v23, vaddq_f32(v36, vmulq_f32(v37, vaddq_f32(v112, vmulq_f32(v37, vaddq_f32(vmulq_f32(vmulq_f32(v38, v38), vaddq_f32(vaddq_f32(*(a2 + 38), vmulq_f32(v104, v37)), vmulq_f32(v38, vaddq_f32(v115, vmulq_f32(*(a2 + 37), v37))))), vaddq_f32(vmulq_f32(v38, vaddq_f32(v39, vmulq_f32(v37, v114))), vaddq_f32(v103, vmulq_f32(v37, v102)))))))));
        v110 = *(a2 + 47);
        v111 = *(a2 + 46);
        v41 = vminq_f32(vmaxq_f32(v40, v113), v111);
        v42 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
        v43 = vsubq_f32(v42, vandq_s8(v24, vcgtq_f32(v42, v41)));
        v44 = vsubq_f32(v41, v43);
        v45 = *(a2 + 48);
        v109 = *(a2 + 49);
        v46 = *(a2 + 50);
        v47 = vmulq_f32(v44, v44);
        v106 = *(a2 + 52);
        v107 = *(a2 + 51);
        v108 = *(a2 + 53);
        v48 = vmulq_f32(v44, vaddq_f32(vaddq_f32(v107, vmulq_f32(v44, v106)), vmulq_f32(v47, vaddq_f32(vaddq_f32(v109, vmulq_f32(v46, v44)), vmulq_f32(v47, vaddq_f32(v110, vmulq_f32(v45, v44)))))));
        v49 = vcgtq_f32(v108, v43);
        v50 = *(a2 + 35);
        v105 = *(a2 + 22);
        v119 = *(a2 + 54);
        v51 = vbslq_s8(vcgtq_f32(vandq_s8(v24, vceqq_f32(v40, v40)), v21), vmulq_f32(vaddq_f32(v24, vandq_s8(v119, v49)), vmulq_f32(vaddq_f32(v24, v48), vshlq_n_s32(vaddq_s32(v105, vcvtq_s32_f32(vaddq_f32(v43, vandq_s8(v50, v49)))), 0x17uLL))), v40);
        v52 = vminq_f32(vrsqrteq_f32(v51), v15);
        v53 = vminq_f32(vmulq_f32(v52, vrsqrtsq_f32(vmulq_f32(v52, v51), v52)), v15);
        v54 = vbslq_s8(vcgtq_f32(vandq_s8(v24, vcgeq_f32(v14, v51)), v21), vmulq_f32(v51, vaddq_f32(*(a2 + 58), vmulq_f32(v51, vaddq_f32(*(a2 + 56), vmulq_f32(*(a2 + 57), v51))))), vbslq_s8(vcgtq_f32(v51, v15), v51, vmulq_f32(v51, vminq_f32(vmulq_f32(v53, vrsqrtsq_f32(vmulq_f32(v51, v53), v53)), v15))));
        v55 = vmulq_f32(*(v6 + v12), *a2);
        v56 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v55, v14), 3), v16), v15);
        v57 = vminq_f32(vmaxq_f32(vrecpeq_f32(v56), v16), v15);
        v58 = vminq_f32(vmaxq_f32(vmulq_f32(v57, vrecpsq_f32(v56, v57)), v16), v15);
        v118 = vmulq_f32(v55, vmulq_f32(v58, vrecpsq_f32(v56, v58)));
        v59 = *(a2 + 5);
        v60 = vbslq_s8(v25, v24, vbslq_s8(v59, v55, vmaxq_f32(v118, v21)));
        v61 = vcgtq_f32(v27, v60);
        v62 = vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v60, v31), v101), vandq_s8(v32, vceqq_f32(v31, v60))), vandq_s8(v50, v61));
        v63 = vmulq_f32(vaddq_f32(v24, vandq_s8(v20, v61)), v60);
        v64 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v32, vceqq_f32(v32, v60)), v62), v116), vcvtq_f32_u32(vshrq_n_u32(v63, 0x17uLL)));
        v65 = *(a2 + 8);
        v66 = vorrq_s8(vandq_s8(v65, v63), v24);
        v67 = vandq_s8(v24, vcgtq_f32(v66, v117));
        v68 = v34;
        v69 = vsubq_f32(vsubq_f32(v66, v24), vmulq_f32(vmulq_f32(v34, v67), v66));
        v70 = *(a2 + 38);
        v71 = vmulq_f32(v69, v69);
        v72 = vmulq_f32(v23, vaddq_f32(vaddq_f32(v64, v67), vmulq_f32(v69, vaddq_f32(v112, vmulq_f32(v69, vaddq_f32(vaddq_f32(vaddq_f32(v103, vmulq_f32(v102, v69)), vmulq_f32(v71, vaddq_f32(v39, vmulq_f32(v114, v69)))), vmulq_f32(vmulq_f32(v71, v71), vaddq_f32(vaddq_f32(v70, vmulq_f32(v104, v69)), vmulq_f32(v71, vaddq_f32(v115, vmulq_f32(*(a2 + 37), v69)))))))))));
        v73 = vminq_f32(vmaxq_f32(v72, v113), v111);
        v74 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
        v75 = vsubq_f32(v74, vandq_s8(v24, vcgtq_f32(v74, v73)));
        v76 = vsubq_f32(v73, v75);
        v77 = vaddq_f32(v109, vmulq_f32(v46, v76));
        v78 = vmulq_f32(v76, v76);
        v79 = vcgtq_f32(v108, v75);
        v80 = vbslq_s8(v59, v55, vbslq_s8(vcgtq_f32(vandq_s8(v24, vceqq_f32(v72, v72)), v21), vmulq_f32(vaddq_f32(v24, vandq_s8(v119, v79)), vmulq_f32(vaddq_f32(v24, vmulq_f32(v76, vaddq_f32(vaddq_f32(v107, vmulq_f32(v106, v76)), vmulq_f32(v78, vaddq_f32(v77, vmulq_f32(v78, vaddq_f32(v110, vmulq_f32(v45, v76)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(vaddq_f32(v75, vandq_s8(v50, v79))), v105), 0x17uLL))), v72));
        v81 = vsubq_f32(v24, vmulq_f32(*(a2 + 55), v80));
        v82 = *(a2 + 2);
        v83 = vbslq_s8(vcgtq_f32(vandq_s8(v24, vceqq_f32(v82, v21)), v21), v24, vsubq_f32(v51, vbslq_s8(vcgtq_f32(vandq_s8(v24, vcgeq_f32(v68, v80)), v21), vmulq_f32(vsubq_f32(v24, v51), vmulq_f32(v51, v81)), vmulq_f32(vsubq_f32(v54, v51), v81))));
        v84 = vcgtq_f32(v27, v83);
        v85 = vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v83, v31), v101), vandq_s8(v32, vceqq_f32(v83, v31))), vandq_s8(v50, v84));
        v86 = vmulq_f32(v83, vaddq_f32(v24, vandq_s8(v20, v84)));
        v87 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v32, vceqq_f32(v83, v32)), v85), v116), vcvtq_f32_u32(vshrq_n_u32(v86, 0x17uLL)));
        v88 = vorrq_s8(vandq_s8(v65, v86), v24);
        v89 = vandq_s8(v24, vcgtq_f32(v88, v117));
        v90 = vsubq_f32(vsubq_f32(v88, v24), vmulq_f32(vmulq_f32(v68, v89), v88));
        v91 = vmulq_f32(v90, v90);
        v92 = vmulq_f32(v82, vaddq_f32(vaddq_f32(v87, v89), vmulq_f32(v90, vaddq_f32(v112, vmulq_f32(v90, vaddq_f32(vaddq_f32(vaddq_f32(v103, vmulq_f32(v102, v90)), vmulq_f32(v91, vaddq_f32(v39, vmulq_f32(v114, v90)))), vmulq_f32(vmulq_f32(v91, v91), vaddq_f32(vaddq_f32(v70, vmulq_f32(v104, v90)), vmulq_f32(v91, vaddq_f32(v115, vmulq_f32(*(a2 + 37), v90)))))))))));
        v93 = vminq_f32(vmaxq_f32(v92, v113), v111);
        v94 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
        v95 = vsubq_f32(v94, vandq_s8(v24, vcgtq_f32(v94, v93)));
        v96 = vsubq_f32(v93, v95);
        v97 = vmulq_f32(v96, v96);
        v98 = vcgtq_f32(v108, v95);
        v99 = vbslq_s8(vcgtq_f32(vandq_s8(v24, vceqq_f32(v92, v92)), v21), vmulq_f32(vaddq_f32(v24, vbslq_s8(v98, v119, 0)), vmulq_f32(vaddq_f32(v24, vmulq_f32(v96, vaddq_f32(vaddq_f32(v107, vmulq_f32(v106, v96)), vmulq_f32(v97, vaddq_f32(vaddq_f32(v109, vmulq_f32(*(a2 + 50), v96)), vmulq_f32(v97, vaddq_f32(v110, vmulq_f32(v45, v96)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(vaddq_f32(v95, vandq_s8(v50, v98))), v105), 0x17uLL))), v92);
        v99.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(*(v5 + v12), vmulq_laneq_f32(vsubq_f32(vbslq_s8(v59, v99, vaddq_f32(v118, vmulq_laneq_f32(vsubq_f32(v99, v118), *(v5 + v12), 3))), *(v5 + v12)), v80, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendSoftLightQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(a2 + 59);
        v118 = *(v5 + v12);
        v14 = *(a2 + 27);
        v15 = *(a2 + 28);
        v16 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v118, v13), 3), v14), v15);
        v17 = vminq_f32(vmaxq_f32(vrecpeq_f32(v16), v14), v15);
        v18 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpsq_f32(v16, v17)), v14), v15);
        v19 = *(a2 + 32);
        v117 = *(a2 + 23);
        v101 = *(a2 + 22);
        v115 = *(a2 + 25);
        v105 = *(a2 + 24);
        v20 = *(a2 + 29);
        v114 = *(a2 + 33);
        v21 = vcgtq_f32(vandq_s8(v20, vceqq_f32(v105, v19)), v19);
        v22 = vbslq_s8(v21, v20, vminq_f32(vmaxq_f32(vmulq_f32(v118, vmulq_f32(v18, vrecpsq_f32(v16, v18))), v19), v117));
        v113 = *(a2 + 9);
        v23 = vcgtq_f32(v113, v22);
        v24 = vmulq_f32(v22, vaddq_f32(v20, vandq_s8(v114, v23)));
        v25 = vorrq_s8(vandq_s8(*(a2 + 8), v24), v20);
        v26 = *(a2 + 4);
        v27 = *(a2 + 10);
        v28 = *(a2 + 35);
        v93 = *(a2 + 34);
        v94 = *(a2 + 11);
        v29 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v27, vceqq_f32(v22, v27)), vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v22, v26), v93), vandq_s8(v27, vceqq_f32(v22, v26))), vandq_s8(v28, v23))), v94), vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)));
        v30 = *(a2 + 13);
        v111 = *(a2 + 5);
        v112 = *(a2 + 12);
        v31 = vandq_s8(v20, vcgtq_f32(v25, v112));
        v32 = vaddq_f32(v29, v31);
        v33 = vsubq_f32(vsubq_f32(v25, v20), vmulq_f32(vmulq_f32(v30, v31), v25));
        v34 = *(a2 + 37);
        v96 = *(a2 + 36);
        v109 = *(a2 + 38);
        v110 = *(a2 + 39);
        v35 = vmulq_f32(v33, v33);
        v107 = *(a2 + 41);
        v108 = *(a2 + 40);
        v36 = *(a2 + 43);
        v106 = *(a2 + 42);
        v37 = *(a2 + 44);
        v95 = *(a2 + 45);
        v38 = vmulq_f32(v105, vaddq_f32(v32, vmulq_f32(v33, vaddq_f32(v37, vmulq_f32(v33, vaddq_f32(vmulq_f32(vmulq_f32(v35, v35), vaddq_f32(vaddq_f32(v109, vmulq_f32(v110, v33)), vmulq_f32(v35, vaddq_f32(v96, vmulq_f32(v34, v33))))), vaddq_f32(vmulq_f32(v35, vaddq_f32(v108, vmulq_f32(v33, v107))), vaddq_f32(v106, vmulq_f32(v33, v36)))))))));
        v103 = *(a2 + 47);
        v104 = *(a2 + 46);
        v39 = vminq_f32(vmaxq_f32(v38, v95), v104);
        v40 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
        v41 = vsubq_f32(v40, vandq_s8(v20, vcgtq_f32(v40, v39)));
        v42 = vsubq_f32(v39, v41);
        v43 = *(a2 + 48);
        v97 = *(a2 + 49);
        v102 = *(a2 + 50);
        v44 = vmulq_f32(v42, v42);
        v98 = *(a2 + 52);
        v99 = *(a2 + 51);
        v100 = *(a2 + 53);
        v45 = vcgtq_f32(v100, v41);
        v46 = *(a2 + 54);
        v47 = vbslq_s8(vcgtq_f32(vandq_s8(v20, vceqq_f32(v38, v38)), v19), vmulq_f32(vaddq_f32(v20, vandq_s8(v46, v45)), vmulq_f32(vaddq_f32(v20, vmulq_f32(v42, vaddq_f32(vaddq_f32(v99, vmulq_f32(v42, v98)), vmulq_f32(v44, vaddq_f32(vaddq_f32(v97, vmulq_f32(v102, v42)), vmulq_f32(v44, vaddq_f32(v103, vmulq_f32(v43, v42)))))))), vshlq_n_s32(vaddq_s32(v101, vcvtq_s32_f32(vaddq_f32(v41, vandq_s8(v28, v45)))), 0x17uLL))), v38);
        v48 = vminq_f32(vrsqrteq_f32(v47), v15);
        v49 = vminq_f32(vmulq_f32(v48, vrsqrtsq_f32(vmulq_f32(v48, v47), v48)), v15);
        v50 = vbslq_s8(vcgtq_f32(v47, v15), v47, vmulq_f32(v47, vminq_f32(vmulq_f32(v49, vrsqrtsq_f32(vmulq_f32(v47, v49), v49)), v15)));
        v51 = vmulq_f32(*(v6 + v12), *a2);
        v52 = vbslq_s8(vcgtq_f32(vandq_s8(v20, vcgeq_f32(v13, v47)), v19), vmulq_f32(v47, vaddq_f32(*(a2 + 58), vmulq_f32(v47, vaddq_f32(*(a2 + 56), vmulq_f32(*(a2 + 57), v47))))), v50);
        v53 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v51, v13), 3), v14), v15);
        v54 = vminq_f32(vmaxq_f32(vrecpeq_f32(v53), v14), v15);
        v55 = vminq_f32(vmaxq_f32(vmulq_f32(v54, vrecpsq_f32(v53, v54)), v14), v15);
        v116 = vmulq_f32(v51, vmulq_f32(v55, vrecpsq_f32(v53, v55)));
        v56 = vbslq_s8(v21, v20, vminq_f32(vbslq_s8(v111, v51, vmaxq_f32(v116, v19)), v117));
        v57 = vcgtq_f32(v113, v56);
        v58 = vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v56, v26), v93), vandq_s8(v27, vceqq_f32(v56, v26))), vandq_s8(v28, v57));
        v59 = vmulq_f32(v56, vaddq_f32(v20, vandq_s8(v114, v57)));
        v60 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v27, vceqq_f32(v56, v27)), v58), v94), vcvtq_f32_u32(vshrq_n_u32(v59, 0x17uLL)));
        v61 = *(a2 + 8);
        v62 = vorrq_s8(vandq_s8(v61, v59), v20);
        v63 = vandq_s8(v20, vcgtq_f32(v62, v112));
        v64 = vsubq_f32(vsubq_f32(v62, v20), vmulq_f32(vmulq_f32(v30, v63), v62));
        v65 = vmulq_f32(v64, v64);
        v66 = vmulq_f32(v105, vaddq_f32(vaddq_f32(v60, v63), vmulq_f32(v64, vaddq_f32(v37, vmulq_f32(v64, vaddq_f32(vaddq_f32(vaddq_f32(v106, vmulq_f32(v36, v64)), vmulq_f32(v65, vaddq_f32(v108, vmulq_f32(v107, v64)))), vmulq_f32(vmulq_f32(v65, v65), vaddq_f32(vaddq_f32(v109, vmulq_f32(v110, v64)), vmulq_f32(v65, vaddq_f32(v96, vmulq_f32(v34, v64)))))))))));
        v67 = vminq_f32(vmaxq_f32(v66, v95), v104);
        v68 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
        v69 = vsubq_f32(v68, vandq_s8(v20, vcgtq_f32(v68, v67)));
        v70 = vsubq_f32(v67, v69);
        v71 = vmulq_f32(v70, v70);
        v72 = vcgtq_f32(v100, v69);
        v73 = vbslq_s8(v111, v51, vbslq_s8(vcgtq_f32(vandq_s8(v20, vceqq_f32(v66, v66)), v19), vmulq_f32(vaddq_f32(v20, vandq_s8(v46, v72)), vmulq_f32(vaddq_f32(v20, vmulq_f32(v70, vaddq_f32(vaddq_f32(v99, vmulq_f32(v98, v70)), vmulq_f32(v71, vaddq_f32(vaddq_f32(v97, vmulq_f32(v102, v70)), vmulq_f32(v71, vaddq_f32(v103, vmulq_f32(v43, v70)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(vaddq_f32(v69, vandq_s8(v28, v72))), v101), 0x17uLL))), v66));
        v74 = vsubq_f32(v20, vmulq_f32(*(a2 + 55), v73));
        v75 = vbslq_s8(vcgtq_f32(vandq_s8(v20, vceqq_f32(v115, v19)), v19), v20, vminq_f32(vmaxq_f32(vsubq_f32(v47, vbslq_s8(vcgtq_f32(vandq_s8(v20, vcgeq_f32(v30, v73)), v19), vmulq_f32(vsubq_f32(v20, v47), vmulq_f32(v47, v74)), vmulq_f32(vsubq_f32(v52, v47), v74))), v19), *(a2 + 30)));
        v76 = vcgtq_f32(v113, v75);
        v77 = vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v75, v26), v93), vandq_s8(v27, vceqq_f32(v75, v26))), vandq_s8(v28, v76));
        v78 = vmulq_f32(v75, vaddq_f32(v20, vandq_s8(v114, v76)));
        v79 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(v27, vceqq_f32(v75, v27)), v77), v94), vcvtq_f32_u32(vshrq_n_u32(v78, 0x17uLL)));
        v80 = vorrq_s8(vandq_s8(v61, v78), v20);
        v81 = vandq_s8(v20, vcgtq_f32(v80, v112));
        v82 = vsubq_f32(vsubq_f32(v80, v20), vmulq_f32(vmulq_f32(v30, v81), v80));
        v83 = vmulq_f32(v82, v82);
        v84 = vmulq_f32(v115, vaddq_f32(vaddq_f32(v79, v81), vmulq_f32(v82, vaddq_f32(v37, vmulq_f32(v82, vaddq_f32(vaddq_f32(vaddq_f32(v106, vmulq_f32(v36, v82)), vmulq_f32(v83, vaddq_f32(v108, vmulq_f32(v107, v82)))), vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(vaddq_f32(v109, vmulq_f32(v110, v82)), vmulq_f32(v83, vaddq_f32(v96, vmulq_f32(*(a2 + 37), v82)))))))))));
        v85 = vminq_f32(vmaxq_f32(v84, v95), v104);
        v86 = vcvtq_f32_s32(vcvtq_s32_f32(v85));
        v87 = vsubq_f32(v86, vandq_s8(v20, vcgtq_f32(v86, v85)));
        v88 = vsubq_f32(v85, v87);
        v89 = vmulq_f32(v88, v88);
        v90 = vcgtq_f32(v100, v87);
        v91 = vbslq_s8(vcgtq_f32(vandq_s8(v20, vceqq_f32(v84, v84)), v19), vmulq_f32(vaddq_f32(v20, vbslq_s8(v90, v46, 0)), vmulq_f32(vaddq_f32(v20, vmulq_f32(v88, vaddq_f32(vaddq_f32(v99, vmulq_f32(v98, v88)), vmulq_f32(v89, vaddq_f32(vaddq_f32(v97, vmulq_f32(v102, v88)), vmulq_f32(v89, vaddq_f32(v103, vmulq_f32(v43, v88)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(vaddq_f32(v87, vandq_s8(v28, v90))), v101), 0x17uLL))), v84);
        v91.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(v118, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v111, v91, vaddq_f32(v116, vmulq_laneq_f32(vsubq_f32(v91, v116), v118, 3))), v118), v73, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendHardLightTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = *(a1 + 12);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v15 = vmulq_f32(*(v8 + v13 - 16), *a2);
      v16 = vmulq_f32(*(v8 + v13), *a2);
      v17 = a2[5];
      v18 = a2[6];
      v19 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v21 = a2[7];
      v22 = vmulq_f32(vrecpeq_f32(v19), v21);
      v23 = vmulq_f32(vrecpeq_f32(v20), v21);
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v19));
      v25 = vmulq_f32(v23, vrecpsq_f32(v23, v20));
      v27 = *(v7 + v13 - 16);
      v26 = *(v7 + v13);
      v28 = vmulq_f32(v15, v24);
      v29 = vmaxq_f32(vdupq_laneq_s32(v27, 3), v18);
      v30 = vmaxq_f32(vdupq_laneq_s32(v26, 3), v18);
      v31 = vmulq_f32(v16, v25);
      v32 = vmulq_f32(v21, vrecpeq_f32(v29));
      v33 = vmulq_f32(v21, vrecpeq_f32(v30));
      v34 = vmulq_f32(v33, vrecpsq_f32(v33, v30));
      v35 = vmulq_f32(v27, vmulq_f32(v32, vrecpsq_f32(v32, v29)));
      v36 = vaddq_f32(v28, v28);
      v37 = vaddq_f32(v31, v31);
      v38 = a2[29];
      v39 = vmulq_f32(v26, v34);
      v40 = vsubq_f32(v36, v38);
      v41 = vsubq_f32(v37, v38);
      v42 = vsubq_f32(vaddq_f32(v35, v40), vminq_f32(v35, vminq_f32(v40, vmulq_f32(v35, v40))));
      v43 = vsubq_f32(vaddq_f32(v39, v41), vminq_f32(v39, vminq_f32(v41, vmulq_f32(v39, v41))));
      v44 = vmulq_f32(v36, v35);
      v45 = a2[60];
      v46 = vbslq_s8(v17, v15, vmulq_f32(v15, v45));
      v47 = vbslq_s8(v17, v16, vmulq_f32(v16, v45));
      v48 = vaddq_f32(v42, vmulq_f32(vsubq_f32(v44, v42), vbslq_s8(vcgeq_f32(v46, vnegq_f32(vdupq_laneq_s32(v46, 3))), v38, 0)));
      v48.i32[3] = 1.0;
      v49 = vaddq_f32(v43, vmulq_f32(vsubq_f32(vmulq_f32(v37, v39), v43), vbslq_s8(vcgeq_f32(v47, vnegq_f32(vdupq_laneq_s32(v47, 3))), v38, 0)));
      v49.i32[3] = 1.0;
      v50 = (v6 + v13);
      v50[-1] = vaddq_f32(v27, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v17, v48, vaddq_f32(v28, vmulq_laneq_f32(vsubq_f32(v48, v28), v27, 3))), v27), v46, 3));
      *v50 = vaddq_f32(v26, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v17, v49, vaddq_f32(v31, vmulq_laneq_f32(vsubq_f32(v49, v31), v26, 3))), v26), v47, 3));
      v12 += 2;
      v13 += 32;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v51 = 16 * v12;
    v52 = vmulq_f32(*(v8 + v51), *a2);
    v54 = a2[5];
    v53 = a2[6];
    v55 = vmaxq_f32(vdupq_laneq_s32(v52, 3), v53);
    v56 = a2[7];
    v57 = vmulq_f32(vrecpeq_f32(v55), v56);
    v58 = vmulq_f32(v52, vmulq_f32(v57, vrecpsq_f32(v57, v55)));
    v59 = *(v7 + v51);
    v60 = vmaxq_f32(vdupq_laneq_s32(v59, 3), v53);
    v61 = vmulq_f32(v56, vrecpeq_f32(v60));
    v62 = vmulq_f32(v59, vmulq_f32(v61, vrecpsq_f32(v61, v60)));
    v63 = vaddq_f32(v58, v58);
    v64 = a2[29];
    v65 = vsubq_f32(v63, v64);
    v66 = vsubq_f32(vaddq_f32(v62, v65), vminq_f32(v62, vminq_f32(v65, vmulq_f32(v62, v65))));
    v67 = vbslq_s8(v54, v52, vmulq_f32(v52, a2[60]));
    v68 = vaddq_f32(v66, vmulq_f32(vsubq_f32(vmulq_f32(v63, v62), v66), vbslq_s8(vcgeq_f32(v67, vnegq_f32(vdupq_laneq_s32(v67, 3))), v64, 0)));
    v68.i32[3] = 1.0;
    *(v6 + v51) = vaddq_f32(v59, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v54, v68, vaddq_f32(v58, vmulq_laneq_f32(vsubq_f32(v68, v58), v59, 3))), v59), v67, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendHardLightPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v17 = *(v8 + v14 - 16);
      v16 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v25 = *(a2 + 31);
      v26 = *(a2 + 32);
      v27 = vmaxq_f32(vmulq_f32(v17, vmulq_f32(v23, vrecpsq_f32(v23, v19))), v26);
      v28 = vmaxq_f32(vmulq_f32(v16, vmulq_f32(v24, vrecpsq_f32(v24, v20))), v26);
      v29 = *(a2 + 29);
      v30 = vorrq_s8(vandq_s8(v21, v27), v29);
      v31 = vorrq_s8(vandq_s8(v21, v28), v29);
      v33 = *(a2 + 9);
      v32 = *(a2 + 10);
      v35 = *(a2 + 11);
      v34 = *(a2 + 12);
      v36 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v28))), v35);
      v37 = vandq_s8(v29, vcgtq_f32(v30, v34));
      v38 = vandq_s8(v29, vcgtq_f32(v31, v34));
      v40 = *(a2 + 13);
      v39 = *(a2 + 14);
      v41 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v27))), v35), v37);
      v42 = vmulq_f32(v40, v37);
      v43 = vmulq_f32(vmulq_f32(v40, v38), v31);
      v44 = vaddq_f32(v36, v38);
      v45 = vsubq_f32(vsubq_f32(v30, v29), vmulq_f32(v42, v30));
      v46 = vsubq_f32(vsubq_f32(v31, v29), v43);
      v48 = *(a2 + 15);
      v47 = *(a2 + 16);
      v50 = *(a2 + 17);
      v49 = *(a2 + 18);
      v51 = *(a2 + 1);
      v52 = vmaxq_f32(vmulq_f32(v51, vaddq_f32(v41, vmulq_f32(v45, vaddq_f32(vaddq_f32(v47, vmulq_f32(v45, v50)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v39, vmulq_f32(v48, v45))))))), v49);
      v53 = vmaxq_f32(vmulq_f32(v51, vaddq_f32(v44, vmulq_f32(v46, vaddq_f32(vaddq_f32(v47, vmulq_f32(v46, v50)), vmulq_f32(vmulq_f32(v46, v46), vaddq_f32(v39, vmulq_f32(v48, v46))))))), v49);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v56 = vsubq_f32(v54, vandq_s8(v29, vcgtq_f32(v54, v52)));
      v57 = vsubq_f32(v55, vandq_s8(v29, vcgtq_f32(v55, v53)));
      v58 = *(a2 + 19);
      v59 = *(a2 + 20);
      v60 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v61 = vsubq_f32(v52, v56);
      v62 = vmulq_f32(*(v7 + v14), *a2);
      v63 = vmaxq_f32(vdupq_laneq_s32(v60, 3), v18);
      v64 = vmaxq_f32(vdupq_laneq_s32(v62, 3), v18);
      v65 = vmulq_f32(v22, vrecpeq_f32(v63));
      v66 = vmulq_f32(v22, vrecpeq_f32(v64));
      v67 = vmulq_f32(v65, vrecpsq_f32(v65, v63));
      v69 = *(a2 + 21);
      v68 = *(a2 + 22);
      v70 = vmulq_f32(v60, vorrq_s8(vandq_s8(v25, v67), v26));
      v71 = vmulq_f32(v62, vorrq_s8(vandq_s8(v25, vmulq_f32(v66, vrecpsq_f32(v66, v64))), v26));
      v72 = vmaxq_f32(v70, v26);
      v73 = vmaxq_f32(v71, v26);
      v74 = vmulq_f32(v61, vaddq_f32(v69, vmulq_f32(v61, vaddq_f32(v58, vmulq_f32(v59, v61)))));
      v75 = vorrq_s8(vandq_s8(v21, v72), v29);
      v76 = vorrq_s8(vandq_s8(v21, v73), v29);
      v77 = vandq_s8(v29, vcgtq_f32(v75, v34));
      v78 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v72, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v72))), v35), v77);
      v79 = vsubq_f32(vsubq_f32(v75, v29), vmulq_f32(vmulq_f32(v40, v77), v75));
      v80 = vandq_s8(v29, vcgtq_f32(v76, v34));
      v81 = vsubq_f32(v53, v57);
      v82 = vsubq_f32(vsubq_f32(v76, v29), vmulq_f32(vmulq_f32(v40, v80), v76));
      v83 = vmulq_f32(v51, vaddq_f32(v78, vmulq_f32(v79, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v79)), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(v39, vmulq_f32(v48, v79)))))));
      v84 = vmulq_f32(v51, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v73, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v73))), v35), v80), vmulq_f32(v82, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v82)), vmulq_f32(vmulq_f32(v82, v82), vaddq_f32(v39, vmulq_f32(v48, v82)))))));
      v85 = vaddq_f32(v29, v74);
      v86 = vmaxq_f32(v83, v49);
      v87 = vmaxq_f32(v84, v49);
      v88 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
      v89 = vmulq_f32(v85, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v56)), 0x17uLL));
      v90 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v91 = vsubq_f32(v88, vandq_s8(v29, vcgtq_f32(v88, v86)));
      v92 = vsubq_f32(v90, vandq_s8(v29, vcgtq_f32(v90, v87)));
      v93 = vsubq_f32(v86, v91);
      v94 = vsubq_f32(v87, v92);
      v95 = vaddq_f32(v29, vmulq_f32(v81, vaddq_f32(v69, vmulq_f32(v81, vaddq_f32(v58, vmulq_f32(v59, v81))))));
      v12 = 1.0;
      v96 = vmulq_f32(v95, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v57)), 0x17uLL));
      v97 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v93, vaddq_f32(v69, vmulq_f32(v93, vaddq_f32(v58, vmulq_f32(v59, v93)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v91), v68), 0x17uLL));
      v98 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v94, vaddq_f32(v69, vmulq_f32(v94, vaddq_f32(v58, vmulq_f32(v59, v94)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v92), v68), 0x17uLL));
      v99 = vaddq_f32(v97, v97);
      v100 = vmulq_f32(v89, v99);
      v101 = vsubq_f32(v99, v29);
      v102 = vsubq_f32(vaddq_f32(v89, v101), vminq_f32(vminq_f32(vmulq_f32(v89, v101), v101), v89));
      v103 = vaddq_f32(v98, v98);
      v104 = vbslq_s8(vcgtq_f32(vandq_s8(v29, vcgeq_f32(v40, v97)), v26), v100, v102);
      v105 = vmulq_f32(v96, v103);
      v106 = vsubq_f32(v103, v29);
      v107 = vbslq_s8(vcgtq_f32(vandq_s8(v29, vcgeq_f32(v40, v98)), v26), v105, vsubq_f32(vaddq_f32(v96, v106), vminq_f32(vminq_f32(vmulq_f32(v96, v106), v106), v96)));
      v108 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v104, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v104)));
      v109 = vorrq_s8(vandq_s8(v21, v104), v29);
      v110 = vandq_s8(v29, vcgtq_f32(v109, v34));
      v111 = vsubq_f32(vsubq_f32(v109, v29), vmulq_f32(vmulq_f32(v40, v110), v109));
      v112 = vorrq_s8(vandq_s8(v21, v107), v29);
      v113 = vandq_s8(v29, vcgtq_f32(v112, v34));
      v114 = vsubq_f32(vsubq_f32(v112, v29), vmulq_f32(vmulq_f32(v40, v113), v112));
      v115 = vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v107, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v33, v107))), v35), v113), vmulq_f32(v114, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v114)), vmulq_f32(vmulq_f32(v114, v114), vaddq_f32(v39, vmulq_f32(v48, v114))))));
      v116 = *(a2 + 2);
      v117 = vmaxq_f32(vmulq_f32(v116, vaddq_f32(vaddq_f32(vsubq_f32(v108, v35), v110), vmulq_f32(v111, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v111)), vmulq_f32(vmulq_f32(v111, v111), vaddq_f32(v39, vmulq_f32(v48, v111))))))), v49);
      v118 = vmaxq_f32(vmulq_f32(v116, v115), v49);
      v119 = vcvtq_f32_s32(vcvtq_s32_f32(v117));
      v120 = vcvtq_f32_s32(vcvtq_s32_f32(v118));
      v121 = vsubq_f32(v119, vandq_s8(v29, vcgtq_f32(v119, v117)));
      v122 = vsubq_f32(v120, vandq_s8(v29, vcgtq_f32(v120, v118)));
      v123 = vsubq_f32(v117, v121);
      v124 = vsubq_f32(v118, v122);
      v125 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v123, vaddq_f32(v69, vmulq_f32(v123, vaddq_f32(v58, vmulq_f32(v59, v123)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v121), v68), 0x17uLL));
      v125.i32[3] = 1.0;
      v126 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v124, vaddq_f32(v69, vmulq_f32(v124, vaddq_f32(v58, vmulq_f32(v59, v124)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v122), v68), 0x17uLL));
      v126.i32[3] = 1.0;
      v127 = *(a2 + 5);
      v128 = vaddq_f32(*(v8 + v14), vmulq_laneq_f32(vsubq_f32(vbslq_s8(v127, v126, vaddq_f32(v71, vmulq_laneq_f32(vsubq_f32(v126, v71), *(v8 + v14), 3))), *(v8 + v14)), v71, 3));
      v129 = (v6 + v14);
      v129[-1] = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v127, v125, vaddq_f32(v70, vmulq_laneq_f32(vsubq_f32(v125, v70), v17, 3))), v17), v70, 3));
      *v129 = v128;
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v130 = 16 * v13;
    v131 = *(v8 + v130);
    v132 = *(a2 + 6);
    v133 = vmaxq_f32(vdupq_laneq_s32(v131, 3), v132);
    v135 = *(a2 + 7);
    v134 = *(a2 + 8);
    v136 = vmulq_f32(vrecpeq_f32(v133), v135);
    v137 = *(a2 + 32);
    v138 = vmaxq_f32(vmulq_f32(v131, vmulq_f32(v136, vrecpsq_f32(v136, v133))), v137);
    v139 = *(a2 + 29);
    v140 = vorrq_s8(vandq_s8(v134, v138), v139);
    v141 = *(a2 + 9);
    v142 = *(a2 + 10);
    v143 = *(a2 + 11);
    v144 = *(a2 + 12);
    v145 = vandq_s8(v139, vcgtq_f32(v140, v144));
    v146 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v138, 0x17uLL)), vandq_s8(v142, vcgtq_f32(v141, v138))), v143), v145);
    v148 = *(a2 + 13);
    v147 = *(a2 + 14);
    v149 = vsubq_f32(vsubq_f32(v140, v139), vmulq_f32(vmulq_f32(v148, v145), v140));
    v151 = *(a2 + 15);
    v150 = *(a2 + 16);
    v153 = *(a2 + 17);
    v152 = *(a2 + 18);
    v154 = *(a2 + 1);
    v155 = vmaxq_f32(vmulq_f32(v154, vaddq_f32(v146, vmulq_f32(v149, vaddq_f32(vaddq_f32(v150, vmulq_f32(v149, v153)), vmulq_f32(vmulq_f32(v149, v149), vaddq_f32(v147, vmulq_f32(v151, v149))))))), v152);
    v156 = vcvtq_f32_s32(vcvtq_s32_f32(v155));
    v157 = vsubq_f32(v156, vandq_s8(v139, vcgtq_f32(v156, v155)));
    v158 = vsubq_f32(v155, v157);
    v159 = *(a2 + 19);
    v160 = *(a2 + 20);
    v162 = *(a2 + 21);
    v161 = *(a2 + 22);
    v163 = vmulq_f32(vaddq_f32(v139, vmulq_f32(v158, vaddq_f32(v162, vmulq_f32(v158, vaddq_f32(v159, vmulq_f32(v160, v158)))))), vshlq_n_s32(vaddq_s32(v161, vcvtq_s32_f32(v157)), 0x17uLL));
    v164 = vmulq_f32(*(v7 + v130), *a2);
    v165 = vmaxq_f32(vdupq_laneq_s32(v164, 3), v132);
    v166 = vmulq_f32(v135, vrecpeq_f32(v165));
    v167 = vmulq_f32(v164, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v166, vrecpsq_f32(v166, v165))), v137));
    v168 = vmaxq_f32(v167, v137);
    v169 = vorrq_s8(vandq_s8(v134, v168), v139);
    v170 = vandq_s8(v139, vcgtq_f32(v169, v144));
    v171 = vsubq_f32(vsubq_f32(v169, v139), vmulq_f32(vmulq_f32(v148, v170), v169));
    v172 = vmaxq_f32(vmulq_f32(v154, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v168, 0x17uLL)), vandq_s8(v142, vcgtq_f32(v141, v168))), v143), v170), vmulq_f32(v171, vaddq_f32(vaddq_f32(v150, vmulq_f32(v153, v171)), vmulq_f32(vmulq_f32(v171, v171), vaddq_f32(v147, vmulq_f32(v151, v171))))))), v152);
    v173 = vcvtq_f32_s32(vcvtq_s32_f32(v172));
    v174 = vsubq_f32(v173, vandq_s8(v139, vcgtq_f32(v173, v172)));
    v175 = vsubq_f32(v172, v174);
    v176 = vmulq_f32(vaddq_f32(v139, vmulq_f32(v175, vaddq_f32(v162, vmulq_f32(v175, vaddq_f32(v159, vmulq_f32(v160, v175)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v174), v161), 0x17uLL));
    v177 = vaddq_f32(v176, v176);
    v178 = vmulq_f32(v163, v177);
    v179 = vsubq_f32(v177, v139);
    v180 = vbslq_s8(vcgtq_f32(vandq_s8(v139, vcgeq_f32(v148, v176)), v137), v178, vsubq_f32(vaddq_f32(v163, v179), vminq_f32(vminq_f32(vmulq_f32(v163, v179), v179), v163)));
    v181 = vorrq_s8(vandq_s8(v134, v180), v139);
    v182 = vandq_s8(v139, vcgtq_f32(v181, v144));
    v183 = vsubq_f32(vsubq_f32(v181, v139), vmulq_f32(vmulq_f32(v148, v182), v181));
    v184 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v180, 0x17uLL)), vandq_s8(v142, vcgtq_f32(v141, v180))), v143), v182), vmulq_f32(v183, vaddq_f32(vaddq_f32(v150, vmulq_f32(v153, v183)), vmulq_f32(vmulq_f32(v183, v183), vaddq_f32(v147, vmulq_f32(v151, v183))))))), v152);
    v185 = vcvtq_f32_s32(vcvtq_s32_f32(v184));
    v186 = vsubq_f32(v185, vandq_s8(v139, vcgtq_f32(v185, v184)));
    v187 = vsubq_f32(v184, v186);
    v188 = vmulq_f32(vaddq_f32(v139, vmulq_f32(v187, vaddq_f32(v162, vmulq_f32(v187, vaddq_f32(v159, vmulq_f32(v160, v187)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v186), v161), 0x17uLL));
    v188.f32[3] = v12;
    *(v6 + v130) = vaddq_f32(v131, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v188, vaddq_f32(v167, vmulq_laneq_f32(vsubq_f32(v188, v167), v131, 3))), v131), v167, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendHardLightQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v16 = *(v8 + v14 - 16);
      v17 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v25 = vmulq_f32(v16, vmulq_f32(v23, vrecpsq_f32(v23, v19)));
      v26 = vmulq_f32(v17, vmulq_f32(v24, vrecpsq_f32(v24, v20)));
      v28 = *(a2 + 31);
      v27 = *(a2 + 32);
      v30 = *(a2 + 23);
      v29 = *(a2 + 24);
      v31 = vminq_f32(vmaxq_f32(v25, v27), v30);
      v32 = vminq_f32(vmaxq_f32(v26, v27), v30);
      v33 = *(a2 + 29);
      v34 = *(a2 + 30);
      v35 = vorrq_s8(vandq_s8(v21, v31), v33);
      v37 = *(a2 + 9);
      v36 = *(a2 + 10);
      v38 = vorrq_s8(vandq_s8(v21, v32), v33);
      v39 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v31)));
      v41 = *(a2 + 11);
      v40 = *(a2 + 12);
      v42 = vandq_s8(v33, vcgtq_f32(v35, v40));
      v43 = vandq_s8(v33, vcgtq_f32(v38, v40));
      v44 = vaddq_f32(vsubq_f32(v39, v41), v42);
      v46 = *(a2 + 13);
      v45 = *(a2 + 14);
      v47 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v32))), v41), v43);
      v48 = vsubq_f32(vsubq_f32(v35, v33), vmulq_f32(vmulq_f32(v46, v42), v35));
      v49 = vsubq_f32(vsubq_f32(v38, v33), vmulq_f32(vmulq_f32(v46, v43), v38));
      v51 = *(a2 + 15);
      v50 = *(a2 + 16);
      v53 = *(a2 + 17);
      v52 = *(a2 + 18);
      v54 = vmulq_f32(v29, vaddq_f32(v44, vmulq_f32(v48, vaddq_f32(vaddq_f32(v50, vmulq_f32(v48, v53)), vmulq_f32(vmulq_f32(v48, v48), vaddq_f32(v45, vmulq_f32(v51, v48)))))));
      v55 = vmulq_f32(v29, vaddq_f32(v47, vmulq_f32(v49, vaddq_f32(vaddq_f32(v50, vmulq_f32(v49, v53)), vmulq_f32(vmulq_f32(v49, v49), vaddq_f32(v45, vmulq_f32(v51, v49)))))));
      v56 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v57 = vmaxq_f32(v54, v52);
      v58 = vmulq_f32(*(v7 + v14), *a2);
      v59 = vmaxq_f32(vdupq_laneq_s32(v56, 3), v18);
      v60 = vmaxq_f32(vdupq_laneq_s32(v58, 3), v18);
      v61 = vmaxq_f32(v55, v52);
      v62 = vmulq_f32(v22, vrecpeq_f32(v59));
      v63 = vmulq_f32(v22, vrecpeq_f32(v60));
      v64 = vandq_s8(v28, vmulq_f32(v63, vrecpsq_f32(v63, v60)));
      v65 = vmulq_f32(v56, vorrq_s8(vandq_s8(v28, vmulq_f32(v62, vrecpsq_f32(v62, v59))), v27));
      v66 = vmulq_f32(v58, vorrq_s8(v64, v27));
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v68 = vminq_f32(vmaxq_f32(v65, v27), v30);
      v69 = vminq_f32(vmaxq_f32(v66, v27), v30);
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
      v71 = vorrq_s8(vandq_s8(v21, v68), v33);
      v72 = vorrq_s8(vandq_s8(v21, v69), v33);
      v73 = vandq_s8(v33, vcgtq_f32(v71, v40));
      v74 = vandq_s8(v33, vcgtq_f32(v72, v40));
      v75 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v68, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v68))), v41), v73);
      v76 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v69, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v69))), v41), v74);
      v77 = vsubq_f32(v67, vandq_s8(v33, vcgtq_f32(v67, v57)));
      v78 = vsubq_f32(vsubq_f32(v71, v33), vmulq_f32(vmulq_f32(v46, v73), v71));
      v79 = vsubq_f32(vsubq_f32(v72, v33), vmulq_f32(vmulq_f32(v46, v74), v72));
      v80 = vsubq_f32(v70, vandq_s8(v33, vcgtq_f32(v70, v61)));
      v81 = vsubq_f32(v57, v77);
      v82 = *(a2 + 19);
      v83 = *(a2 + 20);
      v84 = *(a2 + 21);
      v85 = *(a2 + 22);
      v86 = vsubq_f32(v61, v80);
      v87 = vmaxq_f32(vmulq_f32(v29, vaddq_f32(v75, vmulq_f32(v78, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(v45, vmulq_f32(v51, v78))))))), v52);
      v88 = vmaxq_f32(vmulq_f32(v29, vaddq_f32(v76, vmulq_f32(v79, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v79)), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(v45, vmulq_f32(v51, v79))))))), v52);
      v89 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v90 = vsubq_f32(v89, vandq_s8(v33, vcgtq_f32(v89, v87)));
      v91 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
      v92 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v81, vaddq_f32(v84, vmulq_f32(v81, vaddq_f32(v82, vmulq_f32(v83, v81)))))), vshlq_n_s32(vaddq_s32(v85, vcvtq_s32_f32(v77)), 0x17uLL));
      v93 = vsubq_f32(v91, vandq_s8(v33, vcgtq_f32(v91, v88)));
      v94 = vsubq_f32(v87, v90);
      v95 = vsubq_f32(v88, v93);
      v96 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v94, vaddq_f32(v84, vmulq_f32(v94, vaddq_f32(v82, vmulq_f32(v83, v94)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v90), v85), 0x17uLL));
      v97 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v95, vaddq_f32(v84, vmulq_f32(v95, vaddq_f32(v82, vmulq_f32(v83, v95)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v93), v85), 0x17uLL));
      v98 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v86, vaddq_f32(v84, vmulq_f32(v86, vaddq_f32(v82, vmulq_f32(v83, v86)))))), vshlq_n_s32(vaddq_s32(v85, vcvtq_s32_f32(v80)), 0x17uLL));
      v99 = vaddq_f32(v96, v96);
      v100 = vmulq_f32(v92, v99);
      v101 = vsubq_f32(v99, v33);
      v102 = vsubq_f32(vaddq_f32(v92, v101), vminq_f32(vminq_f32(vmulq_f32(v92, v101), v101), v92));
      v12 = 1.0;
      v103 = vaddq_f32(v97, v97);
      v104 = vbslq_s8(vcgtq_f32(vandq_s8(v33, vcgeq_f32(v46, v96)), v27), v100, v102);
      v105 = vmulq_f32(v98, v103);
      v106 = vsubq_f32(v103, v33);
      v107 = vminq_f32(vmaxq_f32(v104, v27), v34);
      v108 = vminq_f32(vmaxq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v33, vcgeq_f32(v46, v97)), v27), v105, vsubq_f32(vaddq_f32(v98, v106), vminq_f32(vminq_f32(vmulq_f32(v98, v106), v106), v98))), v27), v34);
      v109 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v107, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v107)));
      v110 = vandq_s8(v21, v107);
      v111 = vandq_s8(v21, v108);
      v112 = vorrq_s8(v110, v33);
      v113 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v108, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v108))), v41);
      v114 = vandq_s8(v33, vcgtq_f32(v112, v40));
      v115 = vsubq_f32(vsubq_f32(v112, v33), vmulq_f32(vmulq_f32(v46, v114), v112));
      v116 = vorrq_s8(v111, v33);
      v117 = vandq_s8(v33, vcgtq_f32(v116, v40));
      v118 = vsubq_f32(vsubq_f32(v116, v33), vmulq_f32(vmulq_f32(v46, v117), v116));
      v119 = vaddq_f32(vaddq_f32(v113, v117), vmulq_f32(v118, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v118)), vmulq_f32(vmulq_f32(v118, v118), vaddq_f32(v45, vmulq_f32(v51, v118))))));
      v120 = *(a2 + 25);
      v121 = vmaxq_f32(vmulq_f32(v120, vaddq_f32(vaddq_f32(vsubq_f32(v109, v41), v114), vmulq_f32(v115, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v115)), vmulq_f32(vmulq_f32(v115, v115), vaddq_f32(v45, vmulq_f32(v51, v115))))))), v52);
      v122 = vmaxq_f32(vmulq_f32(v120, v119), v52);
      v123 = vcvtq_f32_s32(vcvtq_s32_f32(v121));
      v124 = vcvtq_f32_s32(vcvtq_s32_f32(v122));
      v125 = vsubq_f32(v123, vandq_s8(v33, vcgtq_f32(v123, v121)));
      v126 = vsubq_f32(v124, vandq_s8(v33, vcgtq_f32(v124, v122)));
      v127 = vsubq_f32(v121, v125);
      v128 = vsubq_f32(v122, v126);
      v129 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v127, vaddq_f32(v84, vmulq_f32(v127, vaddq_f32(v82, vmulq_f32(v83, v127)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v125), v85), 0x17uLL));
      v129.i32[3] = 1.0;
      v130 = vmulq_f32(vaddq_f32(v33, vmulq_f32(v128, vaddq_f32(v84, vmulq_f32(v128, vaddq_f32(v82, vmulq_f32(v83, v128)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v126), v85), 0x17uLL));
      v130.i32[3] = 1.0;
      v131 = *(a2 + 5);
      v132 = (v6 + v14);
      v132[-1] = vaddq_f32(v16, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v131, v129, vaddq_f32(v65, vmulq_laneq_f32(vsubq_f32(v129, v65), v16, 3))), v16), v65, 3));
      *v132 = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v131, v130, vaddq_f32(v66, vmulq_laneq_f32(vsubq_f32(v130, v66), v17, 3))), v17), v66, 3));
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v133 = 16 * v13;
    v134 = *(v8 + v133);
    v135 = *(a2 + 6);
    v136 = vmaxq_f32(vdupq_laneq_s32(v134, 3), v135);
    v138 = *(a2 + 7);
    v137 = *(a2 + 8);
    v139 = vmulq_f32(vrecpeq_f32(v136), v138);
    v140 = *(a2 + 32);
    v141 = *(a2 + 23);
    v142 = *(a2 + 24);
    v143 = vminq_f32(vmaxq_f32(vmulq_f32(v134, vmulq_f32(v139, vrecpsq_f32(v139, v136))), v140), v141);
    v144 = *(a2 + 29);
    v145 = vorrq_s8(vandq_s8(v137, v143), v144);
    v146 = *(a2 + 9);
    v147 = *(a2 + 10);
    v148 = *(a2 + 11);
    v149 = *(a2 + 12);
    v150 = vandq_s8(v144, vcgtq_f32(v145, v149));
    v151 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v143, 0x17uLL)), vandq_s8(v147, vcgtq_f32(v146, v143))), v148), v150);
    v153 = *(a2 + 13);
    v152 = *(a2 + 14);
    v154 = vsubq_f32(vsubq_f32(v145, v144), vmulq_f32(vmulq_f32(v153, v150), v145));
    v156 = *(a2 + 15);
    v155 = *(a2 + 16);
    v158 = *(a2 + 17);
    v157 = *(a2 + 18);
    v159 = vmaxq_f32(vmulq_f32(v142, vaddq_f32(v151, vmulq_f32(v154, vaddq_f32(vaddq_f32(v155, vmulq_f32(v154, v158)), vmulq_f32(vmulq_f32(v154, v154), vaddq_f32(v152, vmulq_f32(v156, v154))))))), v157);
    v160 = vcvtq_f32_s32(vcvtq_s32_f32(v159));
    v161 = vsubq_f32(v160, vandq_s8(v144, vcgtq_f32(v160, v159)));
    v162 = vsubq_f32(v159, v161);
    v163 = *(a2 + 19);
    v164 = *(a2 + 20);
    v166 = *(a2 + 21);
    v165 = *(a2 + 22);
    v167 = vmulq_f32(vaddq_f32(v144, vmulq_f32(v162, vaddq_f32(v166, vmulq_f32(v162, vaddq_f32(v163, vmulq_f32(v164, v162)))))), vshlq_n_s32(vaddq_s32(v165, vcvtq_s32_f32(v161)), 0x17uLL));
    v168 = vmulq_f32(*(v7 + v133), *a2);
    v169 = vmaxq_f32(vdupq_laneq_s32(v168, 3), v135);
    v170 = vmulq_f32(v138, vrecpeq_f32(v169));
    v171 = vmulq_f32(v168, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v170, vrecpsq_f32(v170, v169))), v140));
    v172 = vminq_f32(vmaxq_f32(v171, v140), v141);
    v173 = vorrq_s8(vandq_s8(v137, v172), v144);
    v174 = vandq_s8(v144, vcgtq_f32(v173, v149));
    v175 = vsubq_f32(vsubq_f32(v173, v144), vmulq_f32(vmulq_f32(v153, v174), v173));
    v176 = vmaxq_f32(vmulq_f32(v142, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v172, 0x17uLL)), vandq_s8(v147, vcgtq_f32(v146, v172))), v148), v174), vmulq_f32(v175, vaddq_f32(vaddq_f32(v155, vmulq_f32(v158, v175)), vmulq_f32(vmulq_f32(v175, v175), vaddq_f32(v152, vmulq_f32(v156, v175))))))), v157);
    v177 = vcvtq_f32_s32(vcvtq_s32_f32(v176));
    v178 = vsubq_f32(v177, vandq_s8(v144, vcgtq_f32(v177, v176)));
    v179 = vsubq_f32(v176, v178);
    v180 = vmulq_f32(vaddq_f32(v144, vmulq_f32(v179, vaddq_f32(v166, vmulq_f32(v179, vaddq_f32(v163, vmulq_f32(v164, v179)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v178), v165), 0x17uLL));
    v181 = vaddq_f32(v180, v180);
    v182 = vmulq_f32(v167, v181);
    v183 = vsubq_f32(v181, v144);
    v184 = vminq_f32(vmaxq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v144, vcgeq_f32(v153, v180)), v140), v182, vsubq_f32(vaddq_f32(v167, v183), vminq_f32(vminq_f32(vmulq_f32(v167, v183), v183), v167))), v140), *(a2 + 30));
    v185 = vorrq_s8(vandq_s8(v137, v184), v144);
    v186 = vandq_s8(v144, vcgtq_f32(v185, v149));
    v187 = vsubq_f32(vsubq_f32(v185, v144), vmulq_f32(vmulq_f32(v153, v186), v185));
    v188 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v184, 0x17uLL)), vandq_s8(v147, vcgtq_f32(v146, v184))), v148), v186), vmulq_f32(v187, vaddq_f32(vaddq_f32(v155, vmulq_f32(v158, v187)), vmulq_f32(vmulq_f32(v187, v187), vaddq_f32(v152, vmulq_f32(v156, v187))))))), v157);
    v189 = vcvtq_f32_s32(vcvtq_s32_f32(v188));
    v190 = vsubq_f32(v189, vandq_s8(v144, vcgtq_f32(v189, v188)));
    v191 = vsubq_f32(v188, v190);
    v192 = vmulq_f32(vaddq_f32(v144, vmulq_f32(v191, vaddq_f32(v166, vmulq_f32(v191, vaddq_f32(v163, vmulq_f32(v164, v191)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v190), v165), 0x17uLL));
    v192.f32[3] = v12;
    *(v6 + v133) = vaddq_f32(v134, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v192, vaddq_f32(v171, vmulq_laneq_f32(vsubq_f32(v192, v171), v134, 3))), v134), v171, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendVividLightTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(a2 + 5);
        v14 = *(a2 + 6);
        v15 = vbslq_s8(v13, *(v5 + v12), vminq_f32(*(v5 + v12), vdupq_laneq_s32(*(v5 + v12), 3)));
        v16 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v14);
        v17 = vrecpeq_f32(v16);
        v18 = vmulq_f32(v17, vrecpsq_f32(v17, v16));
        v19 = *(a2 + 32);
        v20 = vmaxq_f32(vmulq_f32(vmulq_f32(v18, vrecpsq_f32(v18, v16)), v15), v19);
        v21 = *(a2 + 29);
        v22 = vmulq_f32(*(v6 + v12), *a2);
        v23 = vminq_f32(v20, v21);
        v24 = vbslq_s8(v13, v22, vminq_f32(v22, vdupq_laneq_s32(v22, 3)));
        v25 = vmaxq_f32(vdupq_laneq_s32(v24, 3), v14);
        v26 = vrecpeq_f32(v25);
        v27 = vmulq_f32(v26, vrecpsq_f32(v26, v25));
        v28 = vminq_f32(vmaxq_f32(vmulq_f32(v24, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v27, vrecpsq_f32(v27, v25))), v19)), *(a2 + 4)), *(a2 + 3));
        v29 = *(a2 + 13);
        v30 = *(a2 + 61);
        v31 = *(a2 + 62);
        v32 = vaddq_f32(v29, vmulq_f32(v23, v30));
        v33 = vcvtq_f32_s32(vcvtq_s32_f32(v32));
        v34 = vmulq_f32(v31, vsubq_f32(v33, vandq_s8(v21, vcgtq_f32(v33, v32))));
        v35 = vaddq_f32(v29, vmulq_f32(v28, v30));
        v36 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
        v37 = vbslq_s8(v13, v28, vmulq_f32(v31, vsubq_f32(v36, vandq_s8(v21, vcgtq_f32(v36, v35)))));
        v38 = vsubq_f32(v21, v34);
        v39 = vmaxq_f32(v37, v31);
        v40 = *(a2 + 27);
        v41 = *(a2 + 28);
        v42 = vminq_f32(vmaxq_f32(vrecpeq_f32(v39), v40), v41);
        v43 = vminq_f32(vmaxq_f32(vmulq_f32(v42, vrecpsq_f32(v39, v42)), v40), v41);
        v44 = vmulq_f32(vsubq_f32(v39, vmulq_laneq_f32(v38, v31, 3)), vmulq_f32(v43, vrecpsq_f32(v39, v43)));
        v45 = vmulq_f32(v29, v38);
        v46 = vandq_s8(v21, vcgtq_f32(vmulq_laneq_f32(v29, v24, 3), v24));
        v47 = vmulq_f32(v46, vmulq_f32(vbslq_s8(vcgtq_f32(v37, v45), v21, 0), v44));
        v48 = vsubq_f32(v21, v46);
        v49 = vminq_f32(v48, vandq_s8(v21, vcgtq_f32(vaddq_f32(v29, v45), v37)));
        v50 = vmaxq_f32(vsubq_f32(v21, v37), v31);
        v51 = vaddq_f32(v50, v50);
        v52 = vminq_f32(vmaxq_f32(vrecpeq_f32(v51), v40), v41);
        v53 = vminq_f32(vmaxq_f32(vmulq_f32(v52, vrecpsq_f32(v51, v52)), v40), v41);
        v54 = vaddq_f32(vmulq_f32(v48, vbslq_s8(vcgeq_f32(vnegq_f32(v49), *(a2 + 63)), v21, 0)), vaddq_f32(v47, vmulq_f32(v49, vmulq_f32(v34, vmulq_f32(v53, vrecpsq_f32(v51, v53))))));
        v54.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(vmulq_laneq_f32(vsubq_f32(vbslq_s8(v13, v54, vaddq_f32(vmulq_laneq_f32(vsubq_f32(v54, v37), v15, 3), v37)), v15), v37, 3), v15);
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendVividLightPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v16 = vrecpeq_f32(v15);
        v17 = vmulq_f32(v16, vrecpsq_f32(v16, v15));
        v18 = vmulq_f32(v13, vmulq_f32(v17, vrecpsq_f32(v17, v15)));
        v19 = *(a2 + 32);
        v20 = vmaxq_f32(v18, v19);
        v21 = *(a2 + 29);
        v22 = *(a2 + 1);
        v23 = vcgtq_f32(vandq_s8(v21, vceqq_f32(v22, v19)), v19);
        v24 = vbslq_s8(v23, v21, vminq_f32(v20, v21));
        v25 = *(a2 + 9);
        v104 = *(a2 + 8);
        v26 = vorrq_s8(vandq_s8(v104, v24), v21);
        v28 = *(a2 + 10);
        v27 = *(a2 + 11);
        v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v28, vcgtq_f32(v25, v24))), v27);
        v31 = *(a2 + 12);
        v30 = *(a2 + 13);
        v32 = vandq_s8(v21, vcgtq_f32(v26, v31));
        v33 = vaddq_f32(v29, v32);
        v34 = vsubq_f32(vsubq_f32(v26, v21), vmulq_f32(vmulq_f32(v30, v32), v26));
        v35 = vmulq_f32(v34, v34);
        v36 = *(a2 + 64);
        v37 = *(a2 + 65);
        v38 = *(a2 + 66);
        v39 = *(a2 + 67);
        v40 = *(a2 + 68);
        v41 = *(a2 + 69);
        v42 = vaddq_f32(vaddq_f32(v40, vmulq_f32(v41, v34)), vmulq_f32(v35, vaddq_f32(vaddq_f32(v36, vmulq_f32(v37, v34)), vmulq_f32(v35, vaddq_f32(v38, vmulq_f32(v39, v34))))));
        v43 = *(a2 + 70);
        v44 = vmulq_f32(v22, vaddq_f32(v33, vmulq_f32(v34, vaddq_f32(v43, vmulq_f32(v34, v42)))));
        v45 = *(a2 + 18);
        v46 = vmaxq_f32(v44, v45);
        v47 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
        v48 = vsubq_f32(v47, vandq_s8(v21, vcgtq_f32(v47, v46)));
        v49 = vsubq_f32(v46, v48);
        v50 = *(a2 + 71);
        v51 = *(a2 + 72);
        v52 = *(a2 + 73);
        v53 = *(a2 + 74);
        v54 = *(a2 + 75);
        v55 = vcvtq_s32_f32(v48);
        v56 = *(a2 + 22);
        v57 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v49, vaddq_f32(v54, vmulq_f32(v49, vaddq_f32(vaddq_f32(v52, vmulq_f32(v53, v49)), vmulq_f32(vmulq_f32(v49, v49), vaddq_f32(v50, vmulq_f32(v51, v49)))))))), vshlq_n_s32(vaddq_s32(v56, v55), 0x17uLL));
        v58 = vmulq_f32(*(v6 + v12), *a2);
        v59 = vmaxq_f32(vdupq_laneq_s32(v58, 3), v14);
        v60 = vrecpeq_f32(v59);
        v61 = vmulq_f32(v60, vrecpsq_f32(v60, v59));
        v62 = vmulq_f32(v58, vmulq_f32(v61, vrecpsq_f32(v61, v59)));
        v63 = vbslq_s8(v23, v21, vminq_f32(vmaxq_f32(v62, v19), v21));
        v64 = vorrq_s8(vandq_s8(v104, v63), v21);
        v65 = vandq_s8(v21, vcgtq_f32(v64, v31));
        v66 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v63, 0x17uLL)), vandq_s8(v28, vcgtq_f32(v25, v63))), v27), v65);
        v67 = vsubq_f32(vsubq_f32(v64, v21), vmulq_f32(vmulq_f32(v30, v65), v64));
        v68 = vmulq_f32(v67, v67);
        v69 = vmaxq_f32(vmulq_f32(v22, vaddq_f32(v66, vmulq_f32(v67, vaddq_f32(v43, vmulq_f32(v67, vaddq_f32(vaddq_f32(v40, vmulq_f32(v41, v67)), vmulq_f32(v68, vaddq_f32(vaddq_f32(v36, vmulq_f32(v37, v67)), vmulq_f32(v68, vaddq_f32(v38, vmulq_f32(v39, v67))))))))))), v45);
        v70 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
        v71 = vsubq_f32(v70, vandq_s8(v21, vcgtq_f32(v70, v69)));
        v72 = vsubq_f32(v69, v71);
        v73 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v72, vaddq_f32(v54, vmulq_f32(v72, vaddq_f32(vaddq_f32(v52, vmulq_f32(v53, v72)), vmulq_f32(vmulq_f32(v72, v72), vaddq_f32(v50, vmulq_f32(v51, v72)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v71), v56), 0x17uLL));
        v74 = *(a2 + 62);
        v75 = vmaxq_f32(v73, v74);
        v76 = *(a2 + 27);
        v77 = *(a2 + 28);
        v78 = vminq_f32(vmaxq_f32(vrecpeq_f32(v75), v76), v77);
        v79 = vminq_f32(vmaxq_f32(vmulq_f32(v78, vrecpsq_f32(v75, v78)), v76), v77);
        v80 = vmulq_f32(v79, vrecpsq_f32(v75, v79));
        v81 = *(a2 + 55);
        v82 = vaddq_f32(v81, vmulq_f32(v73, *(a2 + 60)));
        v83 = vmaxq_f32(v82, v74);
        v84 = vminq_f32(vmaxq_f32(vrecpeq_f32(v83), v76), v77);
        v85 = vminq_f32(vmaxq_f32(vmulq_f32(v84, vrecpsq_f32(v83, v84)), v76), v77);
        v86 = vmulq_f32(v57, vmulq_f32(v85, vrecpsq_f32(v83, v85)));
        v87 = vsubq_f32(v73, vmulq_laneq_f32(vsubq_f32(v21, v57), v54, 3));
        v88 = vmulq_f32(v80, v87);
        v89 = vandq_s8(v21, vcgtq_f32(v87, v19));
        v90 = vcgtq_f32(v19, vsubq_f32(v73, vaddq_f32(v21, vmulq_f32(v57, *(a2 + 76)))));
        v91 = vmaxq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v21, vcgeq_f32(v74, v89)), v19), v19, vbslq_s8(vcgtq_f32(vandq_s8(v21, vcgeq_f32(v74, v82)), v19), v21, vbslq_s8(v90, vbslq_s8(vcgtq_f32(vminq_f32(vandq_s8(v21, vcgeq_f32(v73, v30)), vandq_s8(v21, v90)), v19), v86, vmulq_f32(v88, vminq_f32(vandq_s8(v21, vcgtq_f32(v30, v73)), v89))), v81))), v19);
        v92 = *(a2 + 2);
        v93 = vbslq_s8(vcgtq_f32(vandq_s8(v21, vceqq_f32(v92, v19)), v19), v21, vminq_f32(v91, v21));
        v94 = vorrq_s8(vandq_s8(v104, v93), v21);
        v95 = vandq_s8(v21, vcgtq_f32(v94, v31));
        v96 = vsubq_f32(vsubq_f32(v94, v21), vmulq_f32(vmulq_f32(v30, v95), v94));
        v97 = vmulq_f32(v96, v96);
        v98 = vmaxq_f32(vmulq_f32(v92, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v93, 0x17uLL)), vandq_s8(v28, vcgtq_f32(*(a2 + 9), v93))), *(a2 + 11)), v95), vmulq_f32(v96, vaddq_f32(v43, vmulq_f32(v96, vaddq_f32(vaddq_f32(v40, vmulq_f32(v41, v96)), vmulq_f32(v97, vaddq_f32(vaddq_f32(v36, vmulq_f32(v37, v96)), vmulq_f32(v97, vaddq_f32(v38, vmulq_f32(v39, v96))))))))))), v45);
        v99 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
        v100 = vsubq_f32(v99, vandq_s8(v21, vcgtq_f32(v99, v98)));
        v101 = vsubq_f32(v98, v100);
        v102 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v101, vaddq_f32(v54, vmulq_f32(v101, vaddq_f32(vaddq_f32(v52, vmulq_f32(v53, v101)), vmulq_f32(vmulq_f32(v101, v101), vaddq_f32(v50, vmulq_f32(v51, v101)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v100), v56), 0x17uLL));
        v102.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(*(v5 + v12), vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v102, vaddq_f32(v62, vmulq_laneq_f32(vsubq_f32(v102, v62), *(v5 + v12), 3))), *(v5 + v12)), v58, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendVividLightQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v17 = *(a2 + 7);
        v16 = *(a2 + 8);
        v18 = vmulq_f32(vrecpeq_f32(v15), v17);
        v19 = vmulq_f32(v13, vmulq_f32(v18, vrecpsq_f32(v18, v15)));
        v20 = *(a2 + 32);
        v21 = vmaxq_f32(v19, v20);
        v22 = *(a2 + 29);
        v23 = vminq_f32(v21, v22);
        v24 = vorrq_s8(vandq_s8(v16, v23), v22);
        v25 = *(a2 + 9);
        v26 = *(a2 + 10);
        v28 = *(a2 + 11);
        v27 = *(a2 + 12);
        v29 = vandq_s8(v22, vcgtq_f32(v24, v27));
        v30 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v25, v23))), v28), v29);
        v32 = *(a2 + 13);
        v31 = *(a2 + 14);
        v33 = vsubq_f32(vsubq_f32(v24, v22), vmulq_f32(vmulq_f32(v32, v29), v24));
        v35 = *(a2 + 15);
        v34 = *(a2 + 16);
        v37 = *(a2 + 17);
        v36 = *(a2 + 18);
        v38 = *(a2 + 24);
        v39 = vmaxq_f32(vmulq_f32(v38, vaddq_f32(v30, vmulq_f32(v33, vaddq_f32(vaddq_f32(v34, vmulq_f32(v33, v37)), vmulq_f32(vmulq_f32(v33, v33), vaddq_f32(v31, vmulq_f32(v35, v33))))))), v36);
        v40 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
        v41 = vsubq_f32(v40, vandq_s8(v22, vcgtq_f32(v40, v39)));
        v42 = vsubq_f32(v39, v41);
        v43 = *(a2 + 19);
        v44 = *(a2 + 20);
        v46 = *(a2 + 21);
        v45 = *(a2 + 22);
        v47 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v42, vaddq_f32(v46, vmulq_f32(v42, vaddq_f32(v43, vmulq_f32(v44, v42)))))), vshlq_n_s32(vaddq_s32(v45, vcvtq_s32_f32(v41)), 0x17uLL));
        v48 = vmulq_f32(*(v6 + v12), *a2);
        v49 = vmaxq_f32(vdupq_laneq_s32(v48, 3), v14);
        v50 = vmulq_f32(v17, vrecpeq_f32(v49));
        v51 = vmulq_f32(v48, vmulq_f32(v50, vrecpsq_f32(v50, v49)));
        v52 = vminq_f32(vmaxq_f32(v51, v20), v22);
        v53 = vorrq_s8(vandq_s8(v16, v52), v22);
        v54 = vandq_s8(v22, vcgtq_f32(v53, v27));
        v55 = vsubq_f32(vsubq_f32(v53, v22), vmulq_f32(vmulq_f32(v32, v54), v53));
        v56 = vmaxq_f32(vmulq_f32(v38, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v52, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v25, v52))), v28), v54), vmulq_f32(v55, vaddq_f32(vaddq_f32(v34, vmulq_f32(v37, v55)), vmulq_f32(vmulq_f32(v55, v55), vaddq_f32(v31, vmulq_f32(v35, v55))))))), v36);
        v57 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
        v58 = vsubq_f32(v57, vandq_s8(v22, vcgtq_f32(v57, v56)));
        v59 = vsubq_f32(v56, v58);
        v60 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v59, vaddq_f32(v46, vmulq_f32(v59, vaddq_f32(v43, vmulq_f32(v44, v59)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v58), v45), 0x17uLL));
        v61 = *(a2 + 62);
        v62 = vmaxq_f32(v60, v61);
        v63 = *(a2 + 27);
        v64 = *(a2 + 28);
        v65 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpeq_f32(v62)), v63), v64);
        v66 = vmulq_f32(v65, vrecpsq_f32(v62, v65));
        v67 = *(a2 + 55);
        v68 = vaddq_f32(v67, vmulq_f32(v60, *(a2 + 60)));
        v69 = vmaxq_f32(v68, v61);
        v70 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpeq_f32(v69)), v63), v64);
        v71 = vmulq_f32(v70, vrecpsq_f32(v69, v70));
        v72 = *(a2 + 76);
        v73 = vsubq_f32(v60, vmulq_laneq_f32(vsubq_f32(v22, v47), v72, 3));
        v74 = vmulq_f32(v66, v73);
        v75 = vandq_s8(v22, vcgtq_f32(v73, v20));
        v76 = vcgtq_f32(v20, vsubq_f32(v60, vaddq_f32(v22, vmulq_f32(v47, v72))));
        v77 = vminq_f32(vmaxq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v22, vcgeq_f32(v61, v75)), v20), v20, vbslq_s8(vcgtq_f32(vandq_s8(v22, vcgeq_f32(v61, v68)), v20), v22, vbslq_s8(v76, vbslq_s8(vcgtq_f32(vminq_f32(vandq_s8(v22, vcgeq_f32(v60, v32)), vandq_s8(v22, v76)), v20), vmulq_f32(v47, v71), vmulq_f32(v74, vminq_f32(vandq_s8(v22, vcgtq_f32(v32, v60)), v75))), v67))), v20), v22);
        v78 = vorrq_s8(vandq_s8(v16, v77), v22);
        v79 = vandq_s8(v22, vcgtq_f32(v78, v27));
        v80 = vsubq_f32(vsubq_f32(v78, v22), vmulq_f32(vmulq_f32(v32, v79), v78));
        v81 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v77, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v25, v77))), v28), v79), vmulq_f32(v80, vaddq_f32(vaddq_f32(v34, vmulq_f32(v37, v80)), vmulq_f32(vmulq_f32(v80, v80), vaddq_f32(v31, vmulq_f32(v35, v80))))))), v36);
        v82 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
        v83 = vsubq_f32(v82, vandq_s8(v22, vcgtq_f32(v82, v81)));
        v84 = vsubq_f32(v81, v83);
        v85 = vmulq_f32(vaddq_f32(v22, vmulq_f32(v84, vaddq_f32(v46, vmulq_f32(v84, vaddq_f32(v43, vmulq_f32(v44, v84)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v83), v45), 0x17uLL));
        v85.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v85, vaddq_f32(v51, vmulq_laneq_f32(vsubq_f32(v85, v51), v13, 3))), v13), v48, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendLinearLightTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    while (v5 < 3)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v8 += v9;
      v6 += v10;
      v7 += v11;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 32;
    for (i = v5; i > 2; i -= 3)
    {
      v16 = *(v8 + v13 - 32);
      v15 = *(v8 + v13 - 16);
      v17 = *(v8 + v13);
      v19 = *(a2 + 5);
      v18 = *(a2 + 6);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v21 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v18);
      v22 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v23 = *(a2 + 7);
      v24 = vmulq_f32(vrecpeq_f32(v20), v23);
      v25 = vmulq_f32(vrecpeq_f32(v21), v23);
      v26 = vmulq_f32(vrecpeq_f32(v22), v23);
      v27 = vmulq_f32(*(v7 + v13 - 32), *a2);
      v28 = vmulq_f32(*(v7 + v13 - 16), *a2);
      v29 = vmulq_f32(*(v7 + v13), *a2);
      v30 = vmulq_f32(v24, vrecpsq_f32(v24, v20));
      v31 = vmulq_f32(v25, vrecpsq_f32(v25, v21));
      v32 = vmaxq_f32(vdupq_laneq_s32(v27, 3), v18);
      v33 = vmaxq_f32(vdupq_laneq_s32(v28, 3), v18);
      v34 = vmaxq_f32(vdupq_laneq_s32(v29, 3), v18);
      v35 = vmulq_f32(v26, vrecpsq_f32(v26, v22));
      v36 = vmulq_f32(v23, vrecpeq_f32(v32));
      v37 = vmulq_f32(v23, vrecpeq_f32(v33));
      v38 = vmulq_f32(v23, vrecpeq_f32(v34));
      v39 = vmulq_f32(v37, vrecpsq_f32(v37, v33));
      v40 = vmulq_f32(v38, vrecpsq_f32(v38, v34));
      v41 = *(a2 + 31);
      v42 = *(a2 + 32);
      v43 = vmulq_f32(v27, vorrq_s8(vandq_s8(v41, vmulq_f32(v36, vrecpsq_f32(v36, v32))), v42));
      v44 = vmulq_f32(v28, vorrq_s8(vandq_s8(v41, v39), v42));
      v45 = vmulq_f32(v29, vorrq_s8(vandq_s8(v41, v40), v42));
      v46 = *(a2 + 29);
      v47 = *(a2 + 60);
      v48 = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_f32(v16, v30), vaddq_f32(v46, vmulq_f32(v47, v43))), v42), v46);
      v49 = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_f32(v15, v31), vaddq_f32(v46, vmulq_f32(v47, v44))), v42), v46);
      v50 = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_f32(v17, v35), vaddq_f32(v46, vmulq_f32(v47, v45))), v42), v46);
      v48.i32[3] = 1.0;
      v49.i32[3] = 1.0;
      v50.i32[3] = 1.0;
      v51 = (v6 + v13);
      v51[-2] = vaddq_f32(v16, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v19, v48, vaddq_f32(v43, vmulq_laneq_f32(vsubq_f32(v48, v43), v16, 3))), v16), v43, 3));
      v51[-1] = vaddq_f32(v15, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v19, v49, vaddq_f32(v44, vmulq_laneq_f32(vsubq_f32(v49, v44), v15, 3))), v15), v44, 3));
      *v51 = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v19, v50, vaddq_f32(v45, vmulq_laneq_f32(vsubq_f32(v50, v45), v17, 3))), v17), v45, 3));
      v12 += 3;
      v13 += 48;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v52 = *(v8 + 16 * v12);
      v53 = *(a2 + 6);
      v54 = vmaxq_f32(vdupq_laneq_s32(v52, 3), v53);
      v55 = vmulq_f32(*(v7 + 16 * v12), *a2);
      v56 = *(a2 + 7);
      v57 = vmaxq_f32(vdupq_laneq_s32(v55, 3), v53);
      v58 = vmulq_f32(v56, vrecpeq_f32(v57));
      v59 = vmulq_f32(vrecpeq_f32(v54), v56);
      v60 = *(a2 + 32);
      v61 = vmulq_f32(v55, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v58, vrecpsq_f32(v58, v57))), v60));
      v62 = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_f32(v52, vmulq_f32(v59, vrecpsq_f32(v59, v54))), vaddq_f32(*(a2 + 29), vmulq_f32(*(a2 + 60), v61))), v60), *(a2 + 29));
      v62.i32[3] = 1.0;
      *(v6 + 16 * v12++) = vaddq_f32(v52, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v62, vaddq_f32(v61, vmulq_laneq_f32(vsubq_f32(v62, v61), v52, 3))), v52), v61, 3));
    }

    while (v12 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendLinearLightPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v17 = *(v8 + v14 - 16);
      v16 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v26 = *(a2 + 31);
      v25 = *(a2 + 32);
      v27 = vmaxq_f32(vmulq_f32(v17, vmulq_f32(v23, vrecpsq_f32(v23, v19))), v25);
      v28 = vmaxq_f32(vmulq_f32(v16, vmulq_f32(v24, vrecpsq_f32(v24, v20))), v25);
      v29 = *(a2 + 29);
      v30 = vorrq_s8(vandq_s8(v21, v27), v29);
      v32 = *(a2 + 9);
      v31 = *(a2 + 10);
      v33 = vorrq_s8(vandq_s8(v21, v28), v29);
      v34 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v27)));
      v36 = *(a2 + 11);
      v35 = *(a2 + 12);
      v37 = vandq_s8(v29, vcgtq_f32(v30, v35));
      v38 = vandq_s8(v29, vcgtq_f32(v33, v35));
      v39 = vaddq_f32(vsubq_f32(v34, v36), v37);
      v41 = *(a2 + 13);
      v40 = *(a2 + 14);
      v42 = vmulq_f32(vmulq_f32(v41, v38), v33);
      v43 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v28))), v36), v38);
      v44 = vsubq_f32(vsubq_f32(v30, v29), vmulq_f32(vmulq_f32(v41, v37), v30));
      v45 = vsubq_f32(vsubq_f32(v33, v29), v42);
      v47 = *(a2 + 15);
      v46 = *(a2 + 16);
      v49 = *(a2 + 17);
      v48 = *(a2 + 18);
      v50 = vaddq_f32(v39, vmulq_f32(v44, vaddq_f32(vaddq_f32(v46, vmulq_f32(v44, v49)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v40, vmulq_f32(v47, v44))))));
      v51 = *(a2 + 1);
      v52 = vmulq_f32(v51, vaddq_f32(v43, vmulq_f32(v45, vaddq_f32(vaddq_f32(v46, vmulq_f32(v45, v49)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v40, vmulq_f32(v47, v45)))))));
      v53 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v54 = vmulq_f32(*(v7 + v14), *a2);
      v55 = vmaxq_f32(vmulq_f32(v51, v50), v48);
      v56 = *(a2 + 19);
      v57 = *(a2 + 20);
      v58 = vmaxq_f32(v52, v48);
      v59 = vmaxq_f32(vdupq_laneq_s32(v53, 3), v18);
      v60 = vmaxq_f32(vdupq_laneq_s32(v54, 3), v18);
      v61 = vmulq_f32(v22, vrecpeq_f32(v59));
      v62 = vmulq_f32(v22, vrecpeq_f32(v60));
      v63 = vmulq_f32(v62, vrecpsq_f32(v62, v60));
      v64 = vorrq_s8(vandq_s8(v26, vmulq_f32(v61, vrecpsq_f32(v61, v59))), v25);
      v65 = vorrq_s8(vandq_s8(v26, v63), v25);
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v67 = vmulq_f32(v53, v64);
      v68 = vmulq_f32(v54, v65);
      v69 = vmaxq_f32(v67, v25);
      v70 = vmaxq_f32(v68, v25);
      v71 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v72 = vorrq_s8(vandq_s8(v21, v69), v29);
      v73 = vorrq_s8(vandq_s8(v21, v70), v29);
      v74 = vsubq_f32(v66, vandq_s8(v29, vcgtq_f32(v66, v55)));
      v75 = vandq_s8(v29, vcgtq_f32(v72, v35));
      v76 = vandq_s8(v29, vcgtq_f32(v73, v35));
      v77 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v69, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v69))), v36), v75);
      v78 = vsubq_f32(vsubq_f32(v72, v29), vmulq_f32(vmulq_f32(v41, v75), v72));
      v79 = vsubq_f32(vsubq_f32(v73, v29), vmulq_f32(vmulq_f32(v41, v76), v73));
      v80 = vsubq_f32(v71, vandq_s8(v29, vcgtq_f32(v71, v58)));
      v81 = vsubq_f32(v55, v74);
      v83 = *(a2 + 21);
      v82 = *(a2 + 22);
      v84 = vaddq_f32(v77, vmulq_f32(v78, vaddq_f32(vaddq_f32(v46, vmulq_f32(v49, v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(v40, vmulq_f32(v47, v78))))));
      v85 = vsubq_f32(v58, v80);
      v12 = 1.0;
      v86 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v81, vaddq_f32(v83, vmulq_f32(v81, vaddq_f32(v56, vmulq_f32(v57, v81)))))), vshlq_n_s32(vaddq_s32(v82, vcvtq_s32_f32(v74)), 0x17uLL));
      v87 = vmaxq_f32(vmulq_f32(v51, v84), v48);
      v88 = vmaxq_f32(vmulq_f32(v51, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v70, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v70))), v36), v76), vmulq_f32(v79, vaddq_f32(vaddq_f32(v46, vmulq_f32(v49, v79)), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(v40, vmulq_f32(v47, v79))))))), v48);
      v89 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v90 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
      v91 = vsubq_f32(v89, vandq_s8(v29, vcgtq_f32(v89, v87)));
      v92 = vsubq_f32(v90, vandq_s8(v29, vcgtq_f32(v90, v88)));
      v93 = vsubq_f32(v87, v91);
      v94 = vsubq_f32(v88, v92);
      v95 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v93, vaddq_f32(v83, vmulq_f32(v93, vaddq_f32(v56, vmulq_f32(v57, v93)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v91), v82), 0x17uLL));
      v96 = *(a2 + 60);
      v97 = vminq_f32(vmaxq_f32(vsubq_f32(v86, vaddq_f32(v29, vmulq_f32(v96, v95))), v25), v29);
      v98 = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_f32(vaddq_f32(v29, vmulq_f32(v85, vaddq_f32(v83, vmulq_f32(v85, vaddq_f32(v56, vmulq_f32(v57, v85)))))), vshlq_n_s32(vaddq_s32(v82, vcvtq_s32_f32(v80)), 0x17uLL)), vaddq_f32(v29, vmulq_f32(v96, vmulq_f32(vaddq_f32(v29, vmulq_f32(v94, vaddq_f32(v83, vmulq_f32(v94, vaddq_f32(v56, vmulq_f32(v57, v94)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v92), v82), 0x17uLL))))), v25), v29);
      v99 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v97, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v97)));
      v100 = vorrq_s8(vandq_s8(v21, v97), v29);
      v101 = vandq_s8(v29, vcgtq_f32(v100, v35));
      v102 = vsubq_f32(vsubq_f32(v100, v29), vmulq_f32(vmulq_f32(v41, v101), v100));
      v103 = vorrq_s8(vandq_s8(v21, v98), v29);
      v104 = vandq_s8(v29, vcgtq_f32(v103, v35));
      v105 = vsubq_f32(vsubq_f32(v103, v29), vmulq_f32(vmulq_f32(v41, v104), v103));
      v106 = vaddq_f32(vaddq_f32(vsubq_f32(v99, v36), v101), vmulq_f32(v102, vaddq_f32(vaddq_f32(v46, vmulq_f32(v49, v102)), vmulq_f32(vmulq_f32(v102, v102), vaddq_f32(v40, vmulq_f32(v47, v102))))));
      v107 = *(a2 + 2);
      v108 = vmaxq_f32(vmulq_f32(v107, v106), v48);
      v109 = vmaxq_f32(vmulq_f32(v107, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v98, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v32, v98))), v36), v104), vmulq_f32(v105, vaddq_f32(vaddq_f32(v46, vmulq_f32(v49, v105)), vmulq_f32(vmulq_f32(v105, v105), vaddq_f32(v40, vmulq_f32(v47, v105))))))), v48);
      v110 = vcvtq_f32_s32(vcvtq_s32_f32(v108));
      v111 = vcvtq_f32_s32(vcvtq_s32_f32(v109));
      v112 = vsubq_f32(v110, vandq_s8(v29, vcgtq_f32(v110, v108)));
      v113 = vsubq_f32(v111, vandq_s8(v29, vcgtq_f32(v111, v109)));
      v114 = vsubq_f32(v108, v112);
      v115 = vsubq_f32(v109, v113);
      v116 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v114, vaddq_f32(v83, vmulq_f32(v114, vaddq_f32(v56, vmulq_f32(v57, v114)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v112), v82), 0x17uLL));
      v116.i32[3] = 1.0;
      v117 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v115, vaddq_f32(v83, vmulq_f32(v115, vaddq_f32(v56, vmulq_f32(v57, v115)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v113), v82), 0x17uLL));
      v117.i32[3] = 1.0;
      v118 = *(a2 + 5);
      v119 = vaddq_f32(*(v8 + v14), vmulq_laneq_f32(vsubq_f32(vbslq_s8(v118, v117, vaddq_f32(v68, vmulq_laneq_f32(vsubq_f32(v117, v68), *(v8 + v14), 3))), *(v8 + v14)), v68, 3));
      v120 = (v6 + v14);
      v120[-1] = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v118, v116, vaddq_f32(v67, vmulq_laneq_f32(vsubq_f32(v116, v67), v17, 3))), v17), v67, 3));
      *v120 = v119;
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v121 = 16 * v13;
    v122 = *(v8 + v121);
    v123 = *(a2 + 6);
    v124 = vmaxq_f32(vdupq_laneq_s32(v122, 3), v123);
    v126 = *(a2 + 7);
    v125 = *(a2 + 8);
    v127 = vmulq_f32(vrecpeq_f32(v124), v126);
    v128 = *(a2 + 32);
    v129 = vmaxq_f32(vmulq_f32(v122, vmulq_f32(v127, vrecpsq_f32(v127, v124))), v128);
    v130 = *(a2 + 29);
    v131 = vorrq_s8(vandq_s8(v125, v129), v130);
    v132 = *(a2 + 9);
    v133 = *(a2 + 10);
    v134 = *(a2 + 11);
    v135 = *(a2 + 12);
    v136 = vandq_s8(v130, vcgtq_f32(v131, v135));
    v137 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v129, 0x17uLL)), vandq_s8(v133, vcgtq_f32(v132, v129))), v134), v136);
    v139 = *(a2 + 13);
    v138 = *(a2 + 14);
    v140 = vsubq_f32(vsubq_f32(v131, v130), vmulq_f32(vmulq_f32(v139, v136), v131));
    v142 = *(a2 + 15);
    v141 = *(a2 + 16);
    v144 = *(a2 + 17);
    v143 = *(a2 + 18);
    v145 = *(a2 + 1);
    v146 = vmaxq_f32(vmulq_f32(v145, vaddq_f32(v137, vmulq_f32(v140, vaddq_f32(vaddq_f32(v141, vmulq_f32(v140, v144)), vmulq_f32(vmulq_f32(v140, v140), vaddq_f32(v138, vmulq_f32(v142, v140))))))), v143);
    v147 = vcvtq_f32_s32(vcvtq_s32_f32(v146));
    v148 = vsubq_f32(v147, vandq_s8(v130, vcgtq_f32(v147, v146)));
    v149 = vsubq_f32(v146, v148);
    v150 = *(a2 + 19);
    v151 = *(a2 + 20);
    v153 = *(a2 + 21);
    v152 = *(a2 + 22);
    v154 = vmulq_f32(*(v7 + v121), *a2);
    v155 = vmaxq_f32(vdupq_laneq_s32(v154, 3), v123);
    v156 = vmulq_f32(v126, vrecpeq_f32(v155));
    v157 = vmulq_f32(v154, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v156, vrecpsq_f32(v156, v155))), v128));
    v158 = vmaxq_f32(v157, v128);
    v159 = vorrq_s8(vandq_s8(v125, v158), v130);
    v160 = vandq_s8(v130, vcgtq_f32(v159, v135));
    v161 = vsubq_f32(vsubq_f32(v159, v130), vmulq_f32(vmulq_f32(v139, v160), v159));
    v162 = vmaxq_f32(vmulq_f32(v145, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v158, 0x17uLL)), vandq_s8(v133, vcgtq_f32(v132, v158))), v134), v160), vmulq_f32(v161, vaddq_f32(vaddq_f32(v141, vmulq_f32(v144, v161)), vmulq_f32(vmulq_f32(v161, v161), vaddq_f32(v138, vmulq_f32(v142, v161))))))), v143);
    v163 = vcvtq_f32_s32(vcvtq_s32_f32(v162));
    v164 = vsubq_f32(v163, vandq_s8(v130, vcgtq_f32(v163, v162)));
    v165 = vsubq_f32(v162, v164);
    v166 = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_f32(vaddq_f32(v130, vmulq_f32(v149, vaddq_f32(v153, vmulq_f32(v149, vaddq_f32(v150, vmulq_f32(v151, v149)))))), vshlq_n_s32(vaddq_s32(v152, vcvtq_s32_f32(v148)), 0x17uLL)), vaddq_f32(v130, vmulq_f32(*(a2 + 60), vmulq_f32(vaddq_f32(v130, vmulq_f32(v165, vaddq_f32(v153, vmulq_f32(v165, vaddq_f32(v150, vmulq_f32(v151, v165)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v164), v152), 0x17uLL))))), v128), v130);
    v167 = vorrq_s8(vandq_s8(v125, v166), v130);
    v168 = vandq_s8(v130, vcgtq_f32(v167, v135));
    v169 = vsubq_f32(vsubq_f32(v167, v130), vmulq_f32(vmulq_f32(v139, v168), v167));
    v170 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v166, 0x17uLL)), vandq_s8(v133, vcgtq_f32(v132, v166))), v134), v168), vmulq_f32(v169, vaddq_f32(vaddq_f32(v141, vmulq_f32(v144, v169)), vmulq_f32(vmulq_f32(v169, v169), vaddq_f32(v138, vmulq_f32(v142, v169))))))), v143);
    v171 = vcvtq_f32_s32(vcvtq_s32_f32(v170));
    v172 = vsubq_f32(v171, vandq_s8(v130, vcgtq_f32(v171, v170)));
    v173 = vsubq_f32(v170, v172);
    v174 = vmulq_f32(vaddq_f32(v130, vmulq_f32(v173, vaddq_f32(v153, vmulq_f32(v173, vaddq_f32(v150, vmulq_f32(v151, v173)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v172), v152), 0x17uLL));
    v174.f32[3] = v12;
    *(v6 + v121) = vaddq_f32(v122, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v174, vaddq_f32(v157, vmulq_laneq_f32(vsubq_f32(v174, v157), v122, 3))), v122), v157, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendLinearLightQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v17 = *(v8 + v14 - 16);
      v16 = *(v8 + v14);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v26 = *(a2 + 31);
      v25 = *(a2 + 32);
      v28 = *(a2 + 23);
      v27 = *(a2 + 24);
      v29 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vmulq_f32(v23, vrecpsq_f32(v23, v19))), v25), v28);
      v30 = vminq_f32(vmaxq_f32(vmulq_f32(v16, vmulq_f32(v24, vrecpsq_f32(v24, v20))), v25), v28);
      v31 = *(a2 + 29);
      v32 = vorrq_s8(vandq_s8(v21, v29), v31);
      v33 = vorrq_s8(vandq_s8(v21, v30), v31);
      v35 = *(a2 + 9);
      v34 = *(a2 + 10);
      v37 = *(a2 + 11);
      v36 = *(a2 + 12);
      v38 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v35, v29))), v37);
      v39 = vandq_s8(v31, vcgtq_f32(v32, v36));
      v40 = vandq_s8(v31, vcgtq_f32(v33, v36));
      v42 = *(a2 + 13);
      v41 = *(a2 + 14);
      v43 = vaddq_f32(v38, v39);
      v44 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v35, v30))), v37), v40);
      v45 = vsubq_f32(vsubq_f32(v32, v31), vmulq_f32(vmulq_f32(v42, v39), v32));
      v46 = vsubq_f32(vsubq_f32(v33, v31), vmulq_f32(vmulq_f32(v42, v40), v33));
      v48 = *(a2 + 15);
      v47 = *(a2 + 16);
      v50 = *(a2 + 17);
      v49 = *(a2 + 18);
      v51 = vaddq_f32(v43, vmulq_f32(v45, vaddq_f32(vaddq_f32(v47, vmulq_f32(v45, v50)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v41, vmulq_f32(v48, v45))))));
      v52 = vaddq_f32(v44, vmulq_f32(v46, vaddq_f32(vaddq_f32(v47, vmulq_f32(v46, v50)), vmulq_f32(vmulq_f32(v46, v46), vaddq_f32(v41, vmulq_f32(v48, v46))))));
      v53 = *(a2 + 19);
      v54 = *(a2 + 20);
      v55 = vmulq_f32(v27, v52);
      v56 = vmulq_f32(*(v7 + v14 - 16), *a2);
      v57 = vmulq_f32(*(v7 + v14), *a2);
      v58 = vmaxq_f32(vmulq_f32(v27, v51), v49);
      v59 = vmaxq_f32(vdupq_laneq_s32(v56, 3), v18);
      v60 = vmaxq_f32(v55, v49);
      v61 = vmaxq_f32(vdupq_laneq_s32(v57, 3), v18);
      v62 = vmulq_f32(v22, vrecpeq_f32(v59));
      v63 = vmulq_f32(v22, vrecpeq_f32(v61));
      v64 = vmulq_f32(v63, vrecpsq_f32(v63, v61));
      v65 = vmulq_f32(v56, vorrq_s8(vandq_s8(v26, vmulq_f32(v62, vrecpsq_f32(v62, v59))), v25));
      v66 = vmulq_f32(v57, vorrq_s8(vandq_s8(v26, v64), v25));
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v68 = vminq_f32(vmaxq_f32(v65, v25), v28);
      v69 = vminq_f32(vmaxq_f32(v66, v25), v28);
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v71 = vorrq_s8(vandq_s8(v21, v68), v31);
      v72 = vorrq_s8(vandq_s8(v21, v69), v31);
      v73 = vsubq_f32(v67, vandq_s8(v31, vcgtq_f32(v67, v58)));
      v74 = vandq_s8(v31, vcgtq_f32(v71, v36));
      v75 = vandq_s8(v31, vcgtq_f32(v72, v36));
      v76 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v68, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v35, v68))), v37), v74);
      v77 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v69, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v35, v69))), v37), v75);
      v78 = vsubq_f32(vsubq_f32(v71, v31), vmulq_f32(vmulq_f32(v42, v74), v71));
      v79 = vsubq_f32(vsubq_f32(v72, v31), vmulq_f32(vmulq_f32(v42, v75), v72));
      v80 = vsubq_f32(v70, vandq_s8(v31, vcgtq_f32(v70, v60)));
      v81 = vsubq_f32(v58, v73);
      v83 = *(a2 + 21);
      v82 = *(a2 + 22);
      v84 = vsubq_f32(v60, v80);
      v85 = vaddq_f32(v31, vmulq_f32(v81, vaddq_f32(v83, vmulq_f32(v81, vaddq_f32(v53, vmulq_f32(v54, v81))))));
      v86 = vshlq_n_s32(vaddq_s32(v82, vcvtq_s32_f32(v80)), 0x17uLL);
      v87 = vmulq_f32(v27, vaddq_f32(v76, vmulq_f32(v78, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v78)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(v41, vmulq_f32(v48, v78)))))));
      v12 = 1.0;
      v88 = vmulq_f32(v85, vshlq_n_s32(vaddq_s32(v82, vcvtq_s32_f32(v73)), 0x17uLL));
      v89 = vmaxq_f32(v87, v49);
      v90 = vmaxq_f32(vmulq_f32(v27, vaddq_f32(v77, vmulq_f32(v79, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v79)), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(v41, vmulq_f32(v48, v79))))))), v49);
      v91 = vcvtq_f32_s32(vcvtq_s32_f32(v89));
      v92 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v84, vaddq_f32(v83, vmulq_f32(v84, vaddq_f32(v53, vmulq_f32(v54, v84)))))), v86);
      v93 = vcvtq_f32_s32(vcvtq_s32_f32(v90));
      v94 = vsubq_f32(v91, vandq_s8(v31, vcgtq_f32(v91, v89)));
      v95 = vsubq_f32(v93, vandq_s8(v31, vcgtq_f32(v93, v90)));
      v96 = vsubq_f32(v89, v94);
      v97 = vsubq_f32(v90, v95);
      v98 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v96, vaddq_f32(v83, vmulq_f32(v96, vaddq_f32(v53, vmulq_f32(v54, v96)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v94), v82), 0x17uLL));
      v99 = *(a2 + 60);
      v100 = vminq_f32(vmaxq_f32(vsubq_f32(v88, vaddq_f32(v31, vmulq_f32(v99, v98))), v25), v31);
      v101 = vminq_f32(vmaxq_f32(vsubq_f32(v92, vaddq_f32(v31, vmulq_f32(v99, vmulq_f32(vaddq_f32(v31, vmulq_f32(v97, vaddq_f32(v83, vmulq_f32(v97, vaddq_f32(v53, vmulq_f32(v54, v97)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v95), v82), 0x17uLL))))), v25), v31);
      v102 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v100, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v35, v100)));
      v103 = vorrq_s8(vandq_s8(v21, v100), v31);
      v104 = vandq_s8(v31, vcgtq_f32(v103, v36));
      v105 = vaddq_f32(vsubq_f32(v102, v37), v104);
      v106 = vsubq_f32(vsubq_f32(v103, v31), vmulq_f32(vmulq_f32(v42, v104), v103));
      v107 = vorrq_s8(vandq_s8(v21, v101), v31);
      v108 = vandq_s8(v31, vcgtq_f32(v107, v36));
      v109 = vsubq_f32(vsubq_f32(v107, v31), vmulq_f32(vmulq_f32(v42, v108), v107));
      v110 = vaddq_f32(v105, vmulq_f32(v106, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v106)), vmulq_f32(vmulq_f32(v106, v106), vaddq_f32(v41, vmulq_f32(v48, v106))))));
      v111 = *(a2 + 25);
      v112 = vmaxq_f32(vmulq_f32(v111, v110), v49);
      v113 = vmaxq_f32(vmulq_f32(v111, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v101, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v35, v101))), v37), v108), vmulq_f32(v109, vaddq_f32(vaddq_f32(v47, vmulq_f32(v50, v109)), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(v41, vmulq_f32(v48, v109))))))), v49);
      v114 = vcvtq_f32_s32(vcvtq_s32_f32(v112));
      v115 = vcvtq_f32_s32(vcvtq_s32_f32(v113));
      v116 = vsubq_f32(v114, vandq_s8(v31, vcgtq_f32(v114, v112)));
      v117 = vsubq_f32(v115, vandq_s8(v31, vcgtq_f32(v115, v113)));
      v118 = vsubq_f32(v112, v116);
      v119 = vsubq_f32(v113, v117);
      v120 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v118, vaddq_f32(v83, vmulq_f32(v118, vaddq_f32(v53, vmulq_f32(v54, v118)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v116), v82), 0x17uLL));
      v120.i32[3] = 1.0;
      v121 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v119, vaddq_f32(v83, vmulq_f32(v119, vaddq_f32(v53, vmulq_f32(v54, v119)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v117), v82), 0x17uLL));
      v121.i32[3] = 1.0;
      v122 = *(a2 + 5);
      v123 = vaddq_f32(*(v8 + v14), vmulq_laneq_f32(vsubq_f32(vbslq_s8(v122, v121, vaddq_f32(v66, vmulq_laneq_f32(vsubq_f32(v121, v66), *(v8 + v14), 3))), *(v8 + v14)), v66, 3));
      v124 = (v6 + v14);
      v124[-1] = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v122, v120, vaddq_f32(v65, vmulq_laneq_f32(vsubq_f32(v120, v65), v17, 3))), v17), v65, 3));
      *v124 = v123;
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v125 = 16 * v13;
    v126 = *(v8 + v125);
    v127 = *(a2 + 6);
    v128 = vmaxq_f32(vdupq_laneq_s32(v126, 3), v127);
    v130 = *(a2 + 7);
    v129 = *(a2 + 8);
    v131 = vmulq_f32(vrecpeq_f32(v128), v130);
    v132 = *(a2 + 32);
    v134 = *(a2 + 23);
    v133 = *(a2 + 24);
    v135 = vminq_f32(vmaxq_f32(vmulq_f32(v126, vmulq_f32(v131, vrecpsq_f32(v131, v128))), v132), v134);
    v136 = *(a2 + 29);
    v137 = vorrq_s8(vandq_s8(v129, v135), v136);
    v138 = *(a2 + 9);
    v139 = *(a2 + 10);
    v140 = *(a2 + 11);
    v141 = *(a2 + 12);
    v142 = vandq_s8(v136, vcgtq_f32(v137, v141));
    v143 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v135, 0x17uLL)), vandq_s8(v139, vcgtq_f32(v138, v135))), v140), v142);
    v145 = *(a2 + 13);
    v144 = *(a2 + 14);
    v146 = vsubq_f32(vsubq_f32(v137, v136), vmulq_f32(vmulq_f32(v145, v142), v137));
    v148 = *(a2 + 15);
    v147 = *(a2 + 16);
    v150 = *(a2 + 17);
    v149 = *(a2 + 18);
    v151 = vmaxq_f32(vmulq_f32(v133, vaddq_f32(v143, vmulq_f32(v146, vaddq_f32(vaddq_f32(v147, vmulq_f32(v146, v150)), vmulq_f32(vmulq_f32(v146, v146), vaddq_f32(v144, vmulq_f32(v148, v146))))))), v149);
    v152 = vcvtq_f32_s32(vcvtq_s32_f32(v151));
    v153 = vsubq_f32(v152, vandq_s8(v136, vcgtq_f32(v152, v151)));
    v154 = vsubq_f32(v151, v153);
    v155 = *(a2 + 19);
    v156 = *(a2 + 20);
    v158 = *(a2 + 21);
    v157 = *(a2 + 22);
    v159 = vmulq_f32(vaddq_f32(v136, vmulq_f32(v154, vaddq_f32(v158, vmulq_f32(v154, vaddq_f32(v155, vmulq_f32(v156, v154)))))), vshlq_n_s32(vaddq_s32(v157, vcvtq_s32_f32(v153)), 0x17uLL));
    v160 = vmulq_f32(*(v7 + v125), *a2);
    v161 = vmaxq_f32(vdupq_laneq_s32(v160, 3), v127);
    v162 = vmulq_f32(v130, vrecpeq_f32(v161));
    v163 = vmulq_f32(v160, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v162, vrecpsq_f32(v162, v161))), v132));
    v164 = vminq_f32(vmaxq_f32(v163, v132), v134);
    v165 = vorrq_s8(vandq_s8(v129, v164), v136);
    v166 = vandq_s8(v136, vcgtq_f32(v165, v141));
    v167 = vsubq_f32(vsubq_f32(v165, v136), vmulq_f32(vmulq_f32(v145, v166), v165));
    v168 = vmaxq_f32(vmulq_f32(v133, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v164, 0x17uLL)), vandq_s8(v139, vcgtq_f32(v138, v164))), v140), v166), vmulq_f32(v167, vaddq_f32(vaddq_f32(v147, vmulq_f32(v150, v167)), vmulq_f32(vmulq_f32(v167, v167), vaddq_f32(v144, vmulq_f32(v148, v167))))))), v149);
    v169 = vcvtq_f32_s32(vcvtq_s32_f32(v168));
    v170 = vsubq_f32(v169, vandq_s8(v136, vcgtq_f32(v169, v168)));
    v171 = vsubq_f32(v168, v170);
    v172 = vminq_f32(vmaxq_f32(vsubq_f32(v159, vaddq_f32(v136, vmulq_f32(*(a2 + 60), vmulq_f32(vaddq_f32(v136, vmulq_f32(v171, vaddq_f32(v158, vmulq_f32(v171, vaddq_f32(v155, vmulq_f32(v156, v171)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v170), v157), 0x17uLL))))), v132), v136);
    v173 = vorrq_s8(vandq_s8(v129, v172), v136);
    v174 = vandq_s8(v136, vcgtq_f32(v173, v141));
    v175 = vsubq_f32(vsubq_f32(v173, v136), vmulq_f32(vmulq_f32(v145, v174), v173));
    v176 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v172, 0x17uLL)), vandq_s8(v139, vcgtq_f32(v138, v172))), v140), v174), vmulq_f32(v175, vaddq_f32(vaddq_f32(v147, vmulq_f32(v150, v175)), vmulq_f32(vmulq_f32(v175, v175), vaddq_f32(v144, vmulq_f32(v148, v175))))))), v149);
    v177 = vcvtq_f32_s32(vcvtq_s32_f32(v176));
    v178 = vsubq_f32(v177, vandq_s8(v136, vcgtq_f32(v177, v176)));
    v179 = vsubq_f32(v176, v178);
    v180 = vmulq_f32(vaddq_f32(v136, vmulq_f32(v179, vaddq_f32(v158, vmulq_f32(v179, vaddq_f32(v155, vmulq_f32(v156, v179)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v178), v157), 0x17uLL));
    v180.f32[3] = v12;
    *(v6 + v125) = vaddq_f32(v126, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v180, vaddq_f32(v163, vmulq_laneq_f32(vsubq_f32(v180, v163), v126, 3))), v126), v163, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendPinLightTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = *(a1 + 12);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v15 = vmulq_f32(*(v8 + v13 - 16), *a2);
      v16 = vmulq_f32(*(v8 + v13), *a2);
      v18 = *(a2 + 5);
      v17 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v17);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v17);
      v21 = *(a2 + 7);
      v22 = vmulq_f32(vrecpeq_f32(v19), v21);
      v23 = vmulq_f32(vrecpeq_f32(v20), v21);
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v19));
      v25 = vmulq_f32(v23, vrecpsq_f32(v23, v20));
      v26 = *(a2 + 31);
      v27 = *(a2 + 32);
      v28 = vandq_s8(v26, v25);
      v29 = vorrq_s8(vandq_s8(v26, v24), v27);
      v30 = *(v7 + v13 - 16);
      v31 = *(v7 + v13);
      v32 = vmaxq_f32(vdupq_laneq_s32(v30, 3), v17);
      v33 = vmaxq_f32(vdupq_laneq_s32(v31, 3), v17);
      v34 = vmulq_f32(v15, v29);
      v35 = vmulq_f32(v21, vrecpeq_f32(v32));
      v36 = vmulq_f32(v21, vrecpeq_f32(v33));
      v37 = vmulq_f32(v16, vorrq_s8(v28, v27));
      v38 = vmulq_f32(v36, vrecpsq_f32(v36, v33));
      v39 = vmulq_f32(v30, vmulq_f32(v35, vrecpsq_f32(v35, v32)));
      v40 = vmulq_f32(v31, v38);
      v41 = vaddq_f32(v34, v34);
      v42 = vaddq_f32(v37, v37);
      v43 = *(a2 + 29);
      v44 = vandq_s8(v43, vcgtq_f32(v39, v41));
      v45 = vandq_s8(v43, vcgtq_f32(v40, v42));
      v46 = vmulq_f32(v41, v44);
      v47 = vmulq_f32(v42, v45);
      v48 = vsubq_f32(v41, v43);
      v49 = vsubq_f32(v42, v43);
      v50 = vandq_s8(v43, vcgeq_f32(v48, v39));
      v51 = vaddq_f32(v46, vmulq_f32(v48, v50));
      v52 = vandq_s8(v43, vcgeq_f32(v49, v40));
      v53 = vaddq_f32(v51, vmulq_f32(v39, vbslq_s8(vcgeq_f32(vnegq_f32(vaddq_f32(v44, v50)), v27), v43, 0)));
      v53.i32[3] = 1.0;
      v54 = vaddq_f32(vaddq_f32(vmulq_f32(v49, v52), v47), vmulq_f32(v40, vbslq_s8(vcgeq_f32(vnegq_f32(vaddq_f32(v45, v52)), v27), v43, 0)));
      v54.i32[3] = 1.0;
      v55 = (v6 + v13);
      v55[-1] = vaddq_f32(v30, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v18, v53, vaddq_f32(v34, vmulq_laneq_f32(vsubq_f32(v53, v34), v30, 3))), v30), v34, 3));
      *v55 = vaddq_f32(v31, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v18, v54, vaddq_f32(v37, vmulq_laneq_f32(vsubq_f32(v54, v37), v31, 3))), v31), v37, 3));
      v12 += 2;
      v13 += 32;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v56 = 16 * v12;
    v57 = vmulq_f32(*(v8 + v56), *a2);
    v58 = *(a2 + 6);
    v59 = vmaxq_f32(vdupq_laneq_s32(v57, 3), v58);
    v60 = *(a2 + 7);
    v61 = vmulq_f32(vrecpeq_f32(v59), v60);
    v62 = *(a2 + 32);
    v63 = vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v61, vrecpsq_f32(v61, v59))), v62);
    v64 = *(v7 + v56);
    v65 = vmulq_f32(v57, v63);
    v66 = vmaxq_f32(vdupq_laneq_s32(v64, 3), v58);
    v67 = vmulq_f32(v60, vrecpeq_f32(v66));
    v68 = vmulq_f32(v64, vmulq_f32(v67, vrecpsq_f32(v67, v66)));
    v69 = vaddq_f32(v65, v65);
    v70 = *(a2 + 29);
    v71 = vandq_s8(v70, vcgtq_f32(v68, v69));
    v72 = vmulq_f32(v69, v71);
    v73 = vsubq_f32(v69, v70);
    v74 = vandq_s8(v70, vcgeq_f32(v73, v68));
    v75 = vaddq_f32(vaddq_f32(vmulq_f32(v73, v74), v72), vmulq_f32(v68, vbslq_s8(vcgeq_f32(vnegq_f32(vaddq_f32(v71, v74)), v62), v70, 0)));
    v75.i32[3] = 1.0;
    *(v6 + v56) = vaddq_f32(v64, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v75, vaddq_f32(v65, vmulq_laneq_f32(vsubq_f32(v75, v65), v64, 3))), v64), v65, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendPinLightPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = *(a1 + 12);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 22);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v16 = vmulq_f32(*(v8 + v14 - 16), *a2);
      v17 = vmulq_f32(*(v8 + v14), *a2);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v25 = vmulq_f32(v23, vrecpsq_f32(v23, v19));
      v26 = *(a2 + 31);
      v27 = *(a2 + 32);
      v28 = vmulq_f32(v16, vorrq_s8(vandq_s8(v26, v25), v27));
      v190 = vmulq_f32(v17, vorrq_s8(vandq_s8(v26, vmulq_f32(v24, vrecpsq_f32(v24, v20))), v27));
      v29 = vmaxq_f32(v28, v27);
      v30 = vmaxq_f32(v190, v27);
      v31 = *(a2 + 29);
      v32 = vorrq_s8(vandq_s8(v21, v29), v31);
      v34 = *(a2 + 9);
      v33 = *(a2 + 10);
      v35 = vorrq_s8(vandq_s8(v21, v30), v31);
      v37 = *(a2 + 11);
      v36 = *(a2 + 12);
      v38 = vandq_s8(v31, vcgtq_f32(v32, v36));
      v39 = vandq_s8(v31, vcgtq_f32(v35, v36));
      v40 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v29))), v37), v38);
      v42 = *(a2 + 13);
      v41 = *(a2 + 14);
      v43 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v30))), v37), v39);
      v44 = vsubq_f32(vsubq_f32(v32, v31), vmulq_f32(vmulq_f32(v42, v38), v32));
      v45 = vsubq_f32(vsubq_f32(v35, v31), vmulq_f32(vmulq_f32(v42, v39), v35));
      v47 = *(a2 + 15);
      v46 = *(a2 + 16);
      v49 = *(a2 + 17);
      v48 = *(a2 + 18);
      v50 = *(a2 + 1);
      v51 = vmaxq_f32(vmulq_f32(v50, vaddq_f32(v40, vmulq_f32(v44, vaddq_f32(vaddq_f32(v46, vmulq_f32(v44, v49)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v41, vmulq_f32(v47, v44))))))), v48);
      v52 = vmaxq_f32(vmulq_f32(v50, vaddq_f32(v43, vmulq_f32(v45, vaddq_f32(vaddq_f32(v46, vmulq_f32(v45, v49)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v41, vmulq_f32(v47, v45))))))), v48);
      v53 = vcvtq_f32_s32(vcvtq_s32_f32(v51));
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vsubq_f32(v53, vandq_s8(v31, vcgtq_f32(v53, v51)));
      v56 = vsubq_f32(v54, vandq_s8(v31, vcgtq_f32(v54, v52)));
      v57 = vsubq_f32(v51, v55);
      v58 = *(a2 + 19);
      v59 = *(a2 + 20);
      v61 = *(v7 + v14 - 16);
      v60 = *(v7 + v14);
      v62 = vmaxq_f32(vdupq_laneq_s32(v61, 3), v18);
      v63 = vmaxq_f32(vdupq_laneq_s32(v60, 3), v18);
      v64 = vmulq_f32(v22, vrecpeq_f32(v62));
      v65 = vmulq_f32(v22, vrecpeq_f32(v63));
      v67 = *(a2 + 21);
      v66 = *(a2 + 22);
      v68 = vmaxq_f32(vmulq_f32(v61, vmulq_f32(v64, vrecpsq_f32(v64, v62))), v27);
      v69 = vmaxq_f32(vmulq_f32(v60, vmulq_f32(v65, vrecpsq_f32(v65, v63))), v27);
      v70 = vorrq_s8(vandq_s8(v21, v68), v31);
      v71 = vorrq_s8(vandq_s8(v21, v69), v31);
      v72 = vandq_s8(v31, vcgtq_f32(v70, v36));
      v73 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v68, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v68))), v37), v72);
      v74 = vsubq_f32(vsubq_f32(v70, v31), vmulq_f32(vmulq_f32(v42, v72), v70));
      v75 = vandq_s8(v31, vcgtq_f32(v71, v36));
      v76 = vsubq_f32(v52, v56);
      v77 = vsubq_f32(vsubq_f32(v71, v31), vmulq_f32(vmulq_f32(v42, v75), v71));
      v78 = vcvtq_s32_f32(v55);
      v79 = vshlq_n_s32(vaddq_s32(v66, vcvtq_s32_f32(v56)), 0x17uLL);
      v80 = vmaxq_f32(vmulq_f32(v50, vaddq_f32(v73, vmulq_f32(v74, vaddq_f32(vaddq_f32(v46, vmulq_f32(v49, v74)), vmulq_f32(vmulq_f32(v74, v74), vaddq_f32(v41, vmulq_f32(v47, v74))))))), v48);
      v81 = vmaxq_f32(vmulq_f32(v50, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v69, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v69))), v37), v75), vmulq_f32(v77, vaddq_f32(vaddq_f32(v46, vmulq_f32(v49, v77)), vmulq_f32(vmulq_f32(v77, v77), vaddq_f32(v41, vmulq_f32(v47, v77))))))), v48);
      v82 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v57, vaddq_f32(v67, vmulq_f32(v57, vaddq_f32(v58, vmulq_f32(v59, v57)))))), vshlq_n_s32(vaddq_s32(v66, v78), 0x17uLL));
      v83 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
      v84 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
      v85 = vsubq_f32(v83, vandq_s8(v31, vcgtq_f32(v83, v80)));
      v86 = vsubq_f32(v84, vandq_s8(v31, vcgtq_f32(v84, v81)));
      v87 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v76, vaddq_f32(v67, vmulq_f32(v76, vaddq_f32(v58, vmulq_f32(v59, v76)))))), v79);
      v88 = vsubq_f32(v80, v85);
      v89 = vsubq_f32(v81, v86);
      v90 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v88, vaddq_f32(v67, vmulq_f32(v88, vaddq_f32(v58, vmulq_f32(v59, v88)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v85), v66), 0x17uLL));
      v91 = vaddq_f32(v82, v82);
      v92 = vaddq_f32(v87, v87);
      v93 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v89, vaddq_f32(v67, vmulq_f32(v89, vaddq_f32(v58, vmulq_f32(v59, v89)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v86), v66), 0x17uLL));
      v94 = vandq_s8(v31, vcgtq_f32(v90, v91));
      v95 = vandq_s8(v31, vcgtq_f32(v93, v92));
      v96 = vsubq_f32(v91, v31);
      v97 = vandq_s8(v31, vcgeq_f32(v96, v90));
      v98 = vaddq_f32(vmulq_f32(v96, v97), vmulq_f32(v91, v94));
      v99 = vsubq_f32(v92, v31);
      v100 = vaddq_f32(v94, v97);
      v101 = vandq_s8(v31, vcgeq_f32(v99, v93));
      v102 = vaddq_f32(vmulq_f32(v99, v101), vmulq_f32(v92, v95));
      v103 = vcgeq_f32(vnegq_f32(v100), v27);
      v104 = vcgeq_f32(vnegq_f32(vaddq_f32(v95, v101)), v27);
      v12 = 1.0;
      v105 = vaddq_f32(v98, vmulq_f32(v90, vandq_s8(v31, v103)));
      v106 = vaddq_f32(v102, vmulq_f32(v93, vandq_s8(v31, v104)));
      v107 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v105, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v105)));
      v108 = vorrq_s8(vandq_s8(v21, v105), v31);
      v109 = vandq_s8(v31, vcgtq_f32(v108, v36));
      v110 = vsubq_f32(vsubq_f32(v108, v31), vmulq_f32(vmulq_f32(v42, v109), v108));
      v111 = vorrq_s8(vandq_s8(v21, v106), v31);
      v112 = vandq_s8(v31, vcgtq_f32(v111, v36));
      v113 = vsubq_f32(vsubq_f32(v111, v31), vmulq_f32(vmulq_f32(v42, v112), v111));
      v114 = vaddq_f32(vaddq_f32(vsubq_f32(v107, v37), v109), vmulq_f32(v110, vaddq_f32(vaddq_f32(v46, vmulq_f32(v49, v110)), vmulq_f32(vmulq_f32(v110, v110), vaddq_f32(v41, vmulq_f32(v47, v110))))));
      v115 = *(a2 + 2);
      v116 = vmaxq_f32(vmulq_f32(v115, v114), v48);
      v117 = vmaxq_f32(vmulq_f32(v115, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v106, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v34, v106))), v37), v112), vmulq_f32(v113, vaddq_f32(vaddq_f32(v46, vmulq_f32(v49, v113)), vmulq_f32(vmulq_f32(v113, v113), vaddq_f32(v41, vmulq_f32(v47, v113))))))), v48);
      v118 = vcvtq_f32_s32(vcvtq_s32_f32(v116));
      v119 = vcvtq_f32_s32(vcvtq_s32_f32(v117));
      v120 = vsubq_f32(v118, vandq_s8(v31, vcgtq_f32(v118, v116)));
      v121 = vsubq_f32(v119, vandq_s8(v31, vcgtq_f32(v119, v117)));
      v122 = vsubq_f32(v116, v120);
      v123 = vsubq_f32(v117, v121);
      v124 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v122, vaddq_f32(v67, vmulq_f32(v122, vaddq_f32(v58, vmulq_f32(v59, v122)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v120), v66), 0x17uLL));
      v124.i32[3] = 1.0;
      v125 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v123, vaddq_f32(v67, vmulq_f32(v123, vaddq_f32(v58, vmulq_f32(v59, v123)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v121), v66), 0x17uLL));
      v125.i32[3] = 1.0;
      v126 = *(a2 + 5);
      v127 = (v6 + v14);
      v127[-1] = vaddq_f32(v61, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v126, v124, vaddq_f32(v28, vmulq_laneq_f32(vsubq_f32(v124, v28), v61, 3))), v61), v28, 3));
      *v127 = vaddq_f32(v60, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v126, v125, vaddq_f32(v190, vmulq_laneq_f32(vsubq_f32(v125, v190), v60, 3))), v60), v190, 3));
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v128 = 16 * v13;
    v129 = *(a2 + 1);
    v130 = vmulq_f32(*(v8 + v128), *a2);
    v131 = *(a2 + 6);
    v132 = vmaxq_f32(vdupq_laneq_s32(v130, 3), v131);
    v134 = *(a2 + 7);
    v133 = *(a2 + 8);
    v135 = vmulq_f32(vrecpeq_f32(v132), v134);
    v136 = *(a2 + 32);
    v137 = vmulq_f32(v130, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v135, vrecpsq_f32(v135, v132))), v136));
    v138 = vmaxq_f32(v137, v136);
    v139 = *(a2 + 29);
    v140 = vorrq_s8(vandq_s8(v133, v138), v139);
    v141 = *(a2 + 9);
    v142 = *(a2 + 10);
    v143 = *(a2 + 11);
    v144 = *(a2 + 12);
    v145 = vandq_s8(v139, vcgtq_f32(v140, v144));
    v146 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v138, 0x17uLL)), vandq_s8(v142, vcgtq_f32(v141, v138))), v143), v145);
    v148 = *(a2 + 13);
    v147 = *(a2 + 14);
    v149 = vsubq_f32(vsubq_f32(v140, v139), vmulq_f32(vmulq_f32(v148, v145), v140));
    v151 = *(a2 + 15);
    v150 = *(a2 + 16);
    v153 = *(a2 + 17);
    v152 = *(a2 + 18);
    v154 = vmaxq_f32(vmulq_f32(v129, vaddq_f32(v146, vmulq_f32(v149, vaddq_f32(vaddq_f32(v150, vmulq_f32(v149, v153)), vmulq_f32(vmulq_f32(v149, v149), vaddq_f32(v147, vmulq_f32(v151, v149))))))), v152);
    v155 = vcvtq_f32_s32(vcvtq_s32_f32(v154));
    v156 = vsubq_f32(v155, vandq_s8(v139, vcgtq_f32(v155, v154)));
    v157 = vsubq_f32(v154, v156);
    v158 = *(a2 + 19);
    v159 = *(a2 + 20);
    v161 = *(a2 + 21);
    v160 = *(a2 + 22);
    v162 = vmulq_f32(vaddq_f32(v139, vmulq_f32(v157, vaddq_f32(v161, vmulq_f32(v157, vaddq_f32(v158, vmulq_f32(v159, v157)))))), vshlq_n_s32(vaddq_s32(v160, vcvtq_s32_f32(v156)), 0x17uLL));
    v163 = *(v7 + v128);
    v164 = vmaxq_f32(vdupq_laneq_s32(v163, 3), v131);
    v165 = vmulq_f32(v134, vrecpeq_f32(v164));
    v166 = vmaxq_f32(vmulq_f32(v163, vmulq_f32(v165, vrecpsq_f32(v165, v164))), v136);
    v167 = vorrq_s8(vandq_s8(v133, v166), v139);
    v168 = vandq_s8(v139, vcgtq_f32(v167, v144));
    v169 = vsubq_f32(vsubq_f32(v167, v139), vmulq_f32(vmulq_f32(v148, v168), v167));
    v170 = vmaxq_f32(vmulq_f32(v129, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v166, 0x17uLL)), vandq_s8(v142, vcgtq_f32(v141, v166))), v143), v168), vmulq_f32(v169, vaddq_f32(vaddq_f32(v150, vmulq_f32(v153, v169)), vmulq_f32(vmulq_f32(v169, v169), vaddq_f32(v147, vmulq_f32(v151, v169))))))), v152);
    v171 = vcvtq_f32_s32(vcvtq_s32_f32(v170));
    v172 = vsubq_f32(v171, vandq_s8(v139, vcgtq_f32(v171, v170)));
    v173 = vsubq_f32(v170, v172);
    v174 = vmulq_f32(vaddq_f32(v139, vmulq_f32(v173, vaddq_f32(v161, vmulq_f32(v173, vaddq_f32(v158, vmulq_f32(v159, v173)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v172), v160), 0x17uLL));
    v175 = vaddq_f32(v162, v162);
    v176 = vandq_s8(v139, vcgtq_f32(v174, v175));
    v177 = vmulq_f32(v175, v176);
    v178 = vsubq_f32(v175, v139);
    v179 = vandq_s8(v139, vcgeq_f32(v178, v174));
    v180 = vaddq_f32(vaddq_f32(vmulq_f32(v178, v179), v177), vmulq_f32(v174, vandq_s8(v139, vcgeq_f32(vnegq_f32(vaddq_f32(v176, v179)), v136))));
    v181 = vorrq_s8(vandq_s8(v133, v180), v139);
    v182 = vandq_s8(v139, vcgtq_f32(v181, v144));
    v183 = vsubq_f32(vsubq_f32(v181, v139), vmulq_f32(vmulq_f32(v148, v182), v181));
    v184 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v180, 0x17uLL)), vandq_s8(v142, vcgtq_f32(v141, v180))), v143), v182), vmulq_f32(v183, vaddq_f32(vaddq_f32(v150, vmulq_f32(v153, v183)), vmulq_f32(vmulq_f32(v183, v183), vaddq_f32(v147, vmulq_f32(v151, v183))))))), v152);
    v185 = vcvtq_f32_s32(vcvtq_s32_f32(v184));
    v186 = vsubq_f32(v185, vandq_s8(v139, vcgtq_f32(v185, v184)));
    v187 = vsubq_f32(v184, v186);
    v188 = vmulq_f32(vaddq_f32(v139, vmulq_f32(v187, vaddq_f32(v161, vmulq_f32(v187, vaddq_f32(v158, vmulq_f32(v159, v187)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v186), v160), 0x17uLL));
    v188.f32[3] = v12;
    *(v6 + v128) = vaddq_f32(v163, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v188, vaddq_f32(v137, vmulq_laneq_f32(vsubq_f32(v188, v137), v163, 3))), v163), v137, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendPinLightQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = *(a1 + 12);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 22);
    v12 = 1.0;
    while (v5 < 2)
    {
      v13 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v13 = 0;
    v14 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v16 = vmulq_f32(*(v8 + v14 - 16), *a2);
      v17 = vmulq_f32(*(v8 + v14), *a2);
      v18 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v18);
      v22 = *(a2 + 7);
      v21 = *(a2 + 8);
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v25 = vmulq_f32(v23, vrecpsq_f32(v23, v19));
      v26 = vmulq_f32(v24, vrecpsq_f32(v24, v20));
      v27 = *(a2 + 31);
      v28 = *(a2 + 32);
      v29 = vmulq_f32(v16, vorrq_s8(vandq_s8(v27, v25), v28));
      v30 = vmulq_f32(v17, vorrq_s8(vandq_s8(v27, v26), v28));
      v32 = *(a2 + 23);
      v31 = *(a2 + 24);
      v33 = vminq_f32(vmaxq_f32(v29, v28), v32);
      v34 = vminq_f32(vmaxq_f32(v30, v28), v32);
      v35 = *(a2 + 29);
      v199 = *(a2 + 30);
      v36 = vorrq_s8(vandq_s8(v21, v33), v35);
      v38 = *(a2 + 9);
      v37 = *(a2 + 10);
      v39 = vorrq_s8(vandq_s8(v21, v34), v35);
      v41 = *(a2 + 11);
      v40 = *(a2 + 12);
      v42 = vandq_s8(v35, vcgtq_f32(v36, v40));
      v43 = vandq_s8(v35, vcgtq_f32(v39, v40));
      v44 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v38, v33))), v41), v42);
      v46 = *(a2 + 13);
      v45 = *(a2 + 14);
      v47 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v38, v34))), v41), v43);
      v48 = vsubq_f32(vsubq_f32(v36, v35), vmulq_f32(vmulq_f32(v46, v42), v36));
      v49 = vsubq_f32(vsubq_f32(v39, v35), vmulq_f32(vmulq_f32(v46, v43), v39));
      v51 = *(a2 + 15);
      v50 = *(a2 + 16);
      v53 = *(a2 + 17);
      v52 = *(a2 + 18);
      v54 = vmulq_f32(v31, vaddq_f32(v47, vmulq_f32(v49, vaddq_f32(vaddq_f32(v50, vmulq_f32(v49, v53)), vmulq_f32(vmulq_f32(v49, v49), vaddq_f32(v45, vmulq_f32(v51, v49)))))));
      v55 = vmaxq_f32(vmulq_f32(v31, vaddq_f32(v44, vmulq_f32(v48, vaddq_f32(vaddq_f32(v50, vmulq_f32(v48, v53)), vmulq_f32(vmulq_f32(v48, v48), vaddq_f32(v45, vmulq_f32(v51, v48))))))), v52);
      v57 = *(v7 + v14 - 16);
      v56 = *(v7 + v14);
      v58 = vmaxq_f32(v54, v52);
      v59 = vmaxq_f32(vdupq_laneq_s32(v57, 3), v18);
      v60 = vmaxq_f32(vdupq_laneq_s32(v56, 3), v18);
      v61 = vmulq_f32(v22, vrecpeq_f32(v59));
      v62 = vmulq_f32(v22, vrecpeq_f32(v60));
      v63 = vmulq_f32(v62, vrecpsq_f32(v62, v60));
      v64 = vmaxq_f32(vmulq_f32(v57, vmulq_f32(v61, vrecpsq_f32(v61, v59))), v28);
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v66 = vminq_f32(v64, v32);
      v67 = vminq_f32(vmaxq_f32(vmulq_f32(v56, v63), v28), v32);
      v68 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v69 = vorrq_s8(vandq_s8(v21, v66), v35);
      v70 = vorrq_s8(vandq_s8(v21, v67), v35);
      v71 = vandq_s8(v35, vcgtq_f32(v69, v40));
      v72 = vandq_s8(v35, vcgtq_f32(v70, v40));
      v73 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v66, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v38, v66))), v41), v71);
      v74 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v67, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v38, v67))), v41), v72);
      v75 = vsubq_f32(v65, vandq_s8(v35, vcgtq_f32(v65, v55)));
      v76 = vsubq_f32(vsubq_f32(v69, v35), vmulq_f32(vmulq_f32(v46, v71), v69));
      v77 = vsubq_f32(vsubq_f32(v70, v35), vmulq_f32(vmulq_f32(v46, v72), v70));
      v78 = vsubq_f32(v68, vandq_s8(v35, vcgtq_f32(v68, v58)));
      v79 = vsubq_f32(v55, v75);
      v80 = *(a2 + 19);
      v81 = *(a2 + 20);
      v82 = vaddq_f32(v73, vmulq_f32(v76, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v76)), vmulq_f32(vmulq_f32(v76, v76), vaddq_f32(v45, vmulq_f32(v51, v76))))));
      v84 = *(a2 + 21);
      v83 = *(a2 + 22);
      v85 = vsubq_f32(v58, v78);
      v86 = vmaxq_f32(vmulq_f32(v31, v82), v52);
      v87 = vmaxq_f32(vmulq_f32(v31, vaddq_f32(v74, vmulq_f32(v77, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v77)), vmulq_f32(vmulq_f32(v77, v77), vaddq_f32(v45, vmulq_f32(v51, v77))))))), v52);
      v88 = vmulq_f32(v85, vaddq_f32(v84, vmulq_f32(v85, vaddq_f32(v80, vmulq_f32(v81, v85)))));
      v89 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
      v90 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v91 = vsubq_f32(v89, vandq_s8(v35, vcgtq_f32(v89, v86)));
      v92 = vsubq_f32(v90, vandq_s8(v35, vcgtq_f32(v90, v87)));
      v93 = vmulq_f32(vaddq_f32(v35, vmulq_f32(v79, vaddq_f32(v84, vmulq_f32(v79, vaddq_f32(v80, vmulq_f32(v81, v79)))))), vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v75)), 0x17uLL));
      v94 = vsubq_f32(v86, v91);
      v95 = vsubq_f32(v87, v92);
      v96 = vmulq_f32(vaddq_f32(v35, v88), vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v78)), 0x17uLL));
      v97 = vmulq_f32(vaddq_f32(v35, vmulq_f32(v94, vaddq_f32(v84, vmulq_f32(v94, vaddq_f32(v80, vmulq_f32(v81, v94)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v91), v83), 0x17uLL));
      v98 = vmulq_f32(vaddq_f32(v35, vmulq_f32(v95, vaddq_f32(v84, vmulq_f32(v95, vaddq_f32(v80, vmulq_f32(v81, v95)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v92), v83), 0x17uLL));
      v99 = vaddq_f32(v93, v93);
      v100 = vaddq_f32(v96, v96);
      v101 = vandq_s8(v35, vcgtq_f32(v97, v99));
      v102 = vandq_s8(v35, vcgtq_f32(v98, v100));
      v103 = vmulq_f32(v99, v101);
      v104 = vmulq_f32(v100, v102);
      v105 = vsubq_f32(v99, v35);
      v106 = vsubq_f32(v100, v35);
      v107 = vandq_s8(v35, vcgeq_f32(v105, v97));
      v108 = vaddq_f32(vmulq_f32(v105, v107), v103);
      v109 = vandq_s8(v35, vcgeq_f32(v106, v98));
      v110 = vaddq_f32(vmulq_f32(v106, v109), v104);
      v111 = vaddq_f32(v102, v109);
      v12 = 1.0;
      v112 = vminq_f32(vmaxq_f32(vaddq_f32(v108, vmulq_f32(v97, vandq_s8(v35, vcgeq_f32(vnegq_f32(vaddq_f32(v101, v107)), v28)))), v28), v199);
      v113 = vminq_f32(vmaxq_f32(vaddq_f32(v110, vmulq_f32(v98, vandq_s8(v35, vcgeq_f32(vnegq_f32(v111), v28)))), v28), v199);
      v114 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v112, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v38, v112)));
      v115 = vorrq_s8(vandq_s8(v21, v112), v35);
      v116 = vandq_s8(v35, vcgtq_f32(v115, v40));
      v117 = vaddq_f32(vsubq_f32(v114, v41), v116);
      v118 = vsubq_f32(vsubq_f32(v115, v35), vmulq_f32(vmulq_f32(v46, v116), v115));
      v119 = vorrq_s8(vandq_s8(v21, v113), v35);
      v120 = vandq_s8(v35, vcgtq_f32(v119, v40));
      v121 = vsubq_f32(vsubq_f32(v119, v35), vmulq_f32(vmulq_f32(v46, v120), v119));
      v122 = vaddq_f32(v117, vmulq_f32(v118, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v118)), vmulq_f32(vmulq_f32(v118, v118), vaddq_f32(v45, vmulq_f32(v51, v118))))));
      v123 = *(a2 + 25);
      v124 = vmaxq_f32(vmulq_f32(v123, v122), v52);
      v125 = vmaxq_f32(vmulq_f32(v123, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v113, 0x17uLL)), vandq_s8(v37, vcgtq_f32(v38, v113))), v41), v120), vmulq_f32(v121, vaddq_f32(vaddq_f32(v50, vmulq_f32(v53, v121)), vmulq_f32(vmulq_f32(v121, v121), vaddq_f32(v45, vmulq_f32(v51, v121))))))), v52);
      v126 = vcvtq_f32_s32(vcvtq_s32_f32(v124));
      v127 = vcvtq_f32_s32(vcvtq_s32_f32(v125));
      v128 = vsubq_f32(v126, vandq_s8(v35, vcgtq_f32(v126, v124)));
      v129 = vsubq_f32(v127, vandq_s8(v35, vcgtq_f32(v127, v125)));
      v130 = vsubq_f32(v124, v128);
      v131 = vsubq_f32(v125, v129);
      v132 = vmulq_f32(vaddq_f32(v35, vmulq_f32(v130, vaddq_f32(v84, vmulq_f32(v130, vaddq_f32(v80, vmulq_f32(v81, v130)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v128), v83), 0x17uLL));
      v132.i32[3] = 1.0;
      v133 = vmulq_f32(vaddq_f32(v35, vmulq_f32(v131, vaddq_f32(v84, vmulq_f32(v131, vaddq_f32(v80, vmulq_f32(v81, v131)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v129), v83), 0x17uLL));
      v133.i32[3] = 1.0;
      v134 = *(a2 + 5);
      v135 = (v6 + v14);
      v135[-1] = vaddq_f32(v57, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v134, v132, vaddq_f32(v29, vmulq_laneq_f32(vsubq_f32(v132, v29), v57, 3))), v57), v29, 3));
      *v135 = vaddq_f32(v56, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v134, v133, vaddq_f32(v30, vmulq_laneq_f32(vsubq_f32(v133, v30), v56, 3))), v56), v30, 3));
      v13 += 2;
      v14 += 32;
    }

    if (v13 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v136 = 16 * v13;
    v137 = vmulq_f32(*(v8 + v136), *a2);
    v138 = *(a2 + 6);
    v139 = vmaxq_f32(vdupq_laneq_s32(v137, 3), v138);
    v141 = *(a2 + 7);
    v140 = *(a2 + 8);
    v142 = vmulq_f32(vrecpeq_f32(v139), v141);
    v143 = *(a2 + 32);
    v144 = vmulq_f32(v137, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v142, vrecpsq_f32(v142, v139))), v143));
    v145 = *(a2 + 23);
    v146 = *(a2 + 24);
    v147 = vminq_f32(vmaxq_f32(v144, v143), v145);
    v148 = *(a2 + 29);
    v149 = vorrq_s8(vandq_s8(v140, v147), v148);
    v150 = *(a2 + 9);
    v151 = *(a2 + 10);
    v152 = *(a2 + 11);
    v153 = *(a2 + 12);
    v154 = vandq_s8(v148, vcgtq_f32(v149, v153));
    v155 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v147, 0x17uLL)), vandq_s8(v151, vcgtq_f32(v150, v147))), v152), v154);
    v157 = *(a2 + 13);
    v156 = *(a2 + 14);
    v158 = vsubq_f32(vsubq_f32(v149, v148), vmulq_f32(vmulq_f32(v157, v154), v149));
    v160 = *(a2 + 15);
    v159 = *(a2 + 16);
    v162 = *(a2 + 17);
    v161 = *(a2 + 18);
    v163 = vmaxq_f32(vmulq_f32(v146, vaddq_f32(v155, vmulq_f32(v158, vaddq_f32(vaddq_f32(v159, vmulq_f32(v158, v162)), vmulq_f32(vmulq_f32(v158, v158), vaddq_f32(v156, vmulq_f32(v160, v158))))))), v161);
    v164 = vcvtq_f32_s32(vcvtq_s32_f32(v163));
    v165 = vsubq_f32(v164, vandq_s8(v148, vcgtq_f32(v164, v163)));
    v166 = vsubq_f32(v163, v165);
    v167 = *(a2 + 19);
    v168 = *(a2 + 20);
    v170 = *(a2 + 21);
    v169 = *(a2 + 22);
    v171 = vmulq_f32(vaddq_f32(v148, vmulq_f32(v166, vaddq_f32(v170, vmulq_f32(v166, vaddq_f32(v167, vmulq_f32(v168, v166)))))), vshlq_n_s32(vaddq_s32(v169, vcvtq_s32_f32(v165)), 0x17uLL));
    v172 = *(v7 + v136);
    v173 = vmaxq_f32(vdupq_laneq_s32(v172, 3), v138);
    v174 = vmulq_f32(v141, vrecpeq_f32(v173));
    v175 = vminq_f32(vmaxq_f32(vmulq_f32(v172, vmulq_f32(v174, vrecpsq_f32(v174, v173))), v143), v145);
    v176 = vorrq_s8(vandq_s8(v140, v175), v148);
    v177 = vandq_s8(v148, vcgtq_f32(v176, v153));
    v178 = vsubq_f32(vsubq_f32(v176, v148), vmulq_f32(vmulq_f32(v157, v177), v176));
    v179 = vmaxq_f32(vmulq_f32(v146, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v175, 0x17uLL)), vandq_s8(v151, vcgtq_f32(v150, v175))), v152), v177), vmulq_f32(v178, vaddq_f32(vaddq_f32(v159, vmulq_f32(v162, v178)), vmulq_f32(vmulq_f32(v178, v178), vaddq_f32(v156, vmulq_f32(v160, v178))))))), v161);
    v180 = vcvtq_f32_s32(vcvtq_s32_f32(v179));
    v181 = vsubq_f32(v180, vandq_s8(v148, vcgtq_f32(v180, v179)));
    v182 = vsubq_f32(v179, v181);
    v183 = vmulq_f32(vaddq_f32(v148, vmulq_f32(v182, vaddq_f32(v170, vmulq_f32(v182, vaddq_f32(v167, vmulq_f32(v168, v182)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v181), v169), 0x17uLL));
    v184 = vaddq_f32(v171, v171);
    v185 = vandq_s8(v148, vcgtq_f32(v183, v184));
    v186 = vmulq_f32(v184, v185);
    v187 = vsubq_f32(v184, v148);
    v188 = vandq_s8(v148, vcgeq_f32(v187, v183));
    v189 = vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(vmulq_f32(v187, v188), v186), vmulq_f32(v183, vandq_s8(v148, vcgeq_f32(vnegq_f32(vaddq_f32(v185, v188)), v143)))), v143), *(a2 + 30));
    v190 = vorrq_s8(vandq_s8(v140, v189), v148);
    v191 = vandq_s8(v148, vcgtq_f32(v190, v153));
    v192 = vsubq_f32(vsubq_f32(v190, v148), vmulq_f32(vmulq_f32(v157, v191), v190));
    v193 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v189, 0x17uLL)), vandq_s8(v151, vcgtq_f32(v150, v189))), v152), v191), vmulq_f32(v192, vaddq_f32(vaddq_f32(v159, vmulq_f32(v162, v192)), vmulq_f32(vmulq_f32(v192, v192), vaddq_f32(v156, vmulq_f32(v160, v192))))))), v161);
    v194 = vcvtq_f32_s32(vcvtq_s32_f32(v193));
    v195 = vsubq_f32(v194, vandq_s8(v148, vcgtq_f32(v194, v193)));
    v196 = vsubq_f32(v193, v195);
    v197 = vmulq_f32(vaddq_f32(v148, vmulq_f32(v196, vaddq_f32(v170, vmulq_f32(v196, vaddq_f32(v167, vmulq_f32(v168, v196)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v195), v169), 0x17uLL));
    v197.f32[3] = v12;
    *(v6 + v136) = vaddq_f32(v172, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v197, vaddq_f32(v144, vmulq_laneq_f32(vsubq_f32(v197, v144), v172, 3))), v172), v144, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendHardMixTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 12);
    v8 = *(a1 + 10);
    v9 = 16 * *(a1 + 22);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 26);
    while (v5 < 2)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v16 = *(v8 + v13 - 16);
      v15 = *(v8 + v13);
      v18 = *(a2 + 5);
      v17 = *(a2 + 6);
      v19 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v17);
      v20 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v17);
      v21 = *(a2 + 7);
      v22 = vmulq_f32(vrecpeq_f32(v19), v21);
      v23 = vmulq_f32(vrecpeq_f32(v20), v21);
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v19));
      v25 = vmulq_f32(*(v7 + v13 - 16), *a2);
      v26 = vmulq_f32(v23, vrecpsq_f32(v23, v20));
      v27 = vmulq_f32(*(v7 + v13), *a2);
      v28 = vmulq_f32(v16, v24);
      v29 = vmaxq_f32(vdupq_laneq_s32(v25, 3), v17);
      v30 = vmaxq_f32(vdupq_laneq_s32(v27, 3), v17);
      v31 = vmulq_f32(v21, vrecpeq_f32(v29));
      v32 = vmulq_f32(v15, v26);
      v33 = vmulq_f32(v21, vrecpeq_f32(v30));
      v34 = vmulq_f32(v31, vrecpsq_f32(v31, v29));
      v35 = vmulq_f32(v33, vrecpsq_f32(v33, v30));
      v37 = *(a2 + 31);
      v36 = *(a2 + 32);
      v38 = vmulq_f32(v25, vorrq_s8(vandq_s8(v37, v34), v36));
      v39 = vmulq_f32(v27, vorrq_s8(vandq_s8(v37, v35), v36));
      v40 = *(a2 + 29);
      v41 = *(a2 + 77);
      v42 = vmulq_f32(vsubq_f32(v40, v28), v41);
      v43 = vmulq_f32(vsubq_f32(v40, v32), v41);
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v46 = vsubq_f32(v44, vandq_s8(v40, vcgtq_f32(v44, v42)));
      v47 = *(a2 + 78);
      v48 = vmulq_f32(v47, v46);
      v49 = vmulq_f32(v47, vsubq_f32(v45, vandq_s8(v40, vcgtq_f32(v45, v43))));
      v50 = *(a2 + 79);
      v51 = vsubq_f32(v48, vmulq_n_f32(v28, *&v50));
      v52 = vsubq_f32(v49, vmulq_n_f32(v32, *&v50));
      v53 = vmulq_lane_f32(*(a2 + 80), *&v50, 1);
      v54 = vsubq_f32(v51, v53);
      v55 = vsubq_f32(v52, v53);
      v56 = *(a2 + 81);
      v57 = vmulq_f32(v48, v56);
      v58 = vmulq_f32(v56, v49);
      v59 = vandq_s8(v40, vcgeq_f32(v38, v54));
      v60 = vandq_s8(v40, vcgeq_f32(v39, v55));
      v61 = *(a2 + 82);
      v62 = vmulq_f32(v61, vsubq_f32(v38, v54));
      v63 = vmulq_f32(v61, vsubq_f32(v39, v55));
      v64 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vsubq_f32(v64, vandq_s8(v40, vcgtq_f32(v64, v62)));
      v67 = *(a2 + 83);
      v68 = vmulq_f32(vminq_f32(v60, vandq_s8(v40, vcgtq_f32(v58, v39))), vmulq_f32(v67, vsubq_f32(v65, vandq_s8(v40, vcgtq_f32(v65, v63)))));
      v69 = *(a2 + 84);
      v70 = vaddq_f32(vandq_s8(v40, vcgeq_f32(v38, v57)), vmulq_f32(vminq_f32(v59, vandq_s8(v40, vcgtq_f32(v57, v38))), vmulq_f32(v67, v66)));
      v71 = vminq_f32(vandq_s8(v40, vcgtq_f32(v69, v28)), v59);
      v72 = vminq_f32(vandq_s8(v40, vcgtq_f32(v69, v32)), v60);
      v73 = *(a2 + 85);
      v74 = vaddq_f32(vandq_s8(v40, vcgeq_f32(v39, v58)), v68);
      v75 = vminq_f32(vmulq_f32(v71, vmulq_f32(v28, v73)), v70);
      v76 = vmulq_f32(v70, vandq_s8(v40, vcgeq_f32(vnegq_f32(v71), v36)));
      v77 = *(a2 + 86);
      v78 = vmaxq_f32(vmulq_f32(vminq_f32(vandq_s8(v40, vcgeq_f32(v28, v77)), vandq_s8(v40, vcgtq_f32(vminq_f32(v57, v40), v38))), vmulq_f32(v73, vsubq_f32(v28, v77))), vaddq_f32(v76, v75));
      v78.i32[3] = 1.0;
      v79 = vmaxq_f32(vmulq_f32(vmulq_f32(v73, vsubq_f32(v32, v77)), vminq_f32(vandq_s8(v40, vcgeq_f32(v32, v77)), vandq_s8(v40, vcgtq_f32(vminq_f32(v58, v40), v39)))), vaddq_f32(vmulq_f32(v74, vandq_s8(v40, vcgeq_f32(vnegq_f32(v72), v36))), vminq_f32(vmulq_f32(v72, vmulq_f32(v32, v73)), v74)));
      v79.i32[3] = 1.0;
      v80 = (v6 + v13);
      v80[-1] = vaddq_f32(v16, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v18, v78, vaddq_f32(v38, vmulq_laneq_f32(vsubq_f32(v78, v38), v16, 3))), v16), v38, 3));
      *v80 = vaddq_f32(v15, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v18, v79, vaddq_f32(v39, vmulq_laneq_f32(vsubq_f32(v79, v39), v15, 3))), v15), v39, 3));
      v12 += 2;
      v13 += 32;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v81 = 16 * v12;
    v82 = *(v8 + v81);
    v83 = *(a2 + 6);
    v84 = vmaxq_f32(vdupq_laneq_s32(v82, 3), v83);
    v85 = *(a2 + 7);
    v86 = vmulq_f32(vrecpeq_f32(v84), v85);
    v87 = vmulq_f32(v86, vrecpsq_f32(v86, v84));
    v88 = vmulq_f32(*(v7 + v81), *a2);
    v89 = vmulq_f32(v82, v87);
    v90 = vmaxq_f32(vdupq_laneq_s32(v88, 3), v83);
    v91 = vmulq_f32(v85, vrecpeq_f32(v90));
    v92 = *(a2 + 32);
    v93 = vmulq_f32(v88, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v91, vrecpsq_f32(v91, v90))), v92));
    v94 = *(a2 + 29);
    v95 = vmulq_f32(vsubq_f32(v94, v89), *(a2 + 77));
    v96 = vcvtq_f32_s32(vcvtq_s32_f32(v95));
    v97 = vmulq_f32(*(a2 + 78), vsubq_f32(v96, vandq_s8(v94, vcgtq_f32(v96, v95))));
    v98 = vsubq_f32(vsubq_f32(v97, vmulq_n_f32(v89, COERCE_FLOAT(*(a2 + 79)))), vmulq_lane_f32(*(a2 + 80), *(a2 + 1264), 1));
    v99 = vandq_s8(v94, vcgeq_f32(v93, v98));
    v100 = vmulq_f32(*(a2 + 81), v97);
    v101 = vmulq_f32(*(a2 + 82), vsubq_f32(v93, v98));
    v102 = vcvtq_f32_s32(vcvtq_s32_f32(v101));
    v103 = vaddq_f32(vandq_s8(v94, vcgeq_f32(v93, v100)), vmulq_f32(vminq_f32(v99, vandq_s8(v94, vcgtq_f32(v100, v93))), vmulq_f32(*(a2 + 83), vsubq_f32(v102, vandq_s8(v94, vcgtq_f32(v102, v101))))));
    v104 = vminq_f32(vandq_s8(v94, vcgtq_f32(*(a2 + 84), v89)), v99);
    v105 = vmaxq_f32(vmulq_f32(vminq_f32(vandq_s8(v94, vcgeq_f32(v89, *(a2 + 86))), vandq_s8(v94, vcgtq_f32(vminq_f32(v100, v94), v93))), vmulq_f32(*(a2 + 85), vsubq_f32(v89, *(a2 + 86)))), vaddq_f32(vminq_f32(vmulq_f32(v104, vmulq_f32(v89, *(a2 + 85))), v103), vmulq_f32(vandq_s8(v94, vcgeq_f32(vnegq_f32(v104), v92)), v103)));
    v105.i32[3] = 1.0;
    *(v6 + v81) = vaddq_f32(v82, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v105, vaddq_f32(v93, vmulq_laneq_f32(vsubq_f32(v105, v93), v82, 3))), v82), v93, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendHardMixPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = *(a1 + 12);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v15 = *(a2 + 1);
      v16 = vmulq_f32(*(v8 + v13 - 16), *a2);
      v17 = vmulq_f32(*(v8 + v13), *a2);
      v18 = *(a2 + 5);
      v19 = *(a2 + 6);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v19);
      v21 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v19);
      v23 = *(a2 + 7);
      v22 = *(a2 + 8);
      v24 = vmulq_f32(vrecpeq_f32(v20), v23);
      v25 = vmulq_f32(vrecpeq_f32(v21), v23);
      v26 = vmulq_f32(v24, vrecpsq_f32(v24, v20));
      v27 = vmulq_f32(v25, vrecpsq_f32(v25, v21));
      v28 = vmulq_f32(v16, v26);
      v29 = vmulq_f32(v17, v27);
      v30 = *(a2 + 32);
      v31 = *(a2 + 29);
      v32 = vbslq_s8(v18, v16, vminq_f32(vmaxq_f32(v28, v30), v31));
      v33 = vbslq_s8(v18, v17, vminq_f32(vmaxq_f32(v29, v30), v31));
      v34 = vorrq_s8(vandq_s8(v32, v22), v31);
      v35 = vorrq_s8(vandq_s8(v33, v22), v31);
      v37 = *(a2 + 9);
      v36 = *(a2 + 10);
      v39 = *(a2 + 11);
      v38 = *(a2 + 12);
      v40 = vandq_s8(v31, vcgtq_f32(v34, v38));
      v41 = vandq_s8(v31, vcgtq_f32(v35, v38));
      v43 = *(a2 + 13);
      v42 = *(a2 + 14);
      v44 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v32, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v32))), v39), v40);
      v45 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v37, v33))), v39), v41);
      v46 = vsubq_f32(vsubq_f32(v34, v31), vmulq_f32(vmulq_f32(v43, v40), v34));
      v47 = vsubq_f32(vsubq_f32(v35, v31), vmulq_f32(vmulq_f32(v43, v41), v35));
      v49 = *(a2 + 15);
      v48 = *(a2 + 16);
      v51 = *(a2 + 17);
      v50 = *(a2 + 18);
      v52 = vmaxq_f32(vmulq_f32(v15, vaddq_f32(v44, vmulq_f32(v46, vaddq_f32(vaddq_f32(v48, vmulq_f32(v46, v51)), vmulq_f32(vmulq_f32(v46, v46), vaddq_f32(v42, vmulq_f32(v49, v46))))))), v50);
      v53 = vmaxq_f32(vmulq_f32(v15, vaddq_f32(v45, vmulq_f32(v47, vaddq_f32(vaddq_f32(v48, vmulq_f32(v47, v51)), vmulq_f32(vmulq_f32(v47, v47), vaddq_f32(v42, vmulq_f32(v49, v47))))))), v50);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v57 = *(v7 + v13 - 16);
      v56 = *(v7 + v13);
      v58 = vsubq_f32(v54, vandq_s8(v31, vcgtq_f32(v54, v52)));
      v59 = vmaxq_f32(vdupq_laneq_s32(v57, 3), v19);
      v60 = vmaxq_f32(vdupq_laneq_s32(v56, 3), v19);
      v61 = vsubq_f32(v55, vandq_s8(v31, vcgtq_f32(v55, v53)));
      v62 = vmulq_f32(v23, vrecpeq_f32(v59));
      v63 = vmulq_f32(v23, vrecpeq_f32(v60));
      v64 = vmulq_f32(v62, vrecpsq_f32(v62, v59));
      v65 = vsubq_f32(v52, v58);
      v66 = *(a2 + 19);
      v67 = *(a2 + 20);
      v68 = vmulq_f32(v63, vrecpsq_f32(v63, v60));
      v69 = vsubq_f32(v53, v61);
      v70 = vminq_f32(vmaxq_f32(vmulq_f32(v57, v64), v30), v31);
      v71 = vminq_f32(vmaxq_f32(vmulq_f32(v56, v68), v30), v31);
      v72 = vandq_s8(v36, vcgtq_f32(v37, v70));
      v73 = vandq_s8(v36, vcgtq_f32(v37, v71));
      v74 = vorrq_s8(vandq_s8(v22, v70), v31);
      v75 = vorrq_s8(vandq_s8(v22, v71), v31);
      v76 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v71, 0x17uLL)), v73);
      v77 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v70, 0x17uLL)), v72), v39);
      v78 = vsubq_f32(v76, v39);
      v79 = vandq_s8(v31, vcgtq_f32(v74, v38));
      v80 = vandq_s8(v31, vcgtq_f32(v75, v38));
      v81 = vaddq_f32(v77, v79);
      v82 = vaddq_f32(v78, v80);
      v83 = vsubq_f32(vsubq_f32(v74, v31), vmulq_f32(vmulq_f32(v43, v79), v74));
      v85 = *(a2 + 21);
      v84 = *(a2 + 22);
      v86 = vsubq_f32(vsubq_f32(v75, v31), vmulq_f32(vmulq_f32(v43, v80), v75));
      v87 = vaddq_f32(v48, vmulq_f32(v51, v83));
      v88 = vaddq_f32(v48, vmulq_f32(v51, v86));
      v89 = vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(v42, vmulq_f32(v49, v83)));
      v90 = vaddq_f32(v88, vmulq_f32(vmulq_f32(v86, v86), vaddq_f32(v42, vmulq_f32(v49, v86))));
      v91 = vmulq_f32(v15, vaddq_f32(v81, vmulq_f32(v83, vaddq_f32(v87, v89))));
      v92 = vmulq_f32(v15, vaddq_f32(v82, vmulq_f32(v86, v90)));
      v93 = vmaxq_f32(v91, v50);
      v94 = vmaxq_f32(v92, v50);
      v95 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
      v96 = vcvtq_f32_s32(vcvtq_s32_f32(v94));
      v97 = vsubq_f32(v95, vandq_s8(v31, vcgtq_f32(v95, v93)));
      v98 = vsubq_f32(v96, vandq_s8(v31, vcgtq_f32(v96, v94)));
      v99 = vsubq_f32(v93, v97);
      v100 = vsubq_f32(v94, v98);
      v101 = vbslq_s8(v18, v16, vmulq_f32(vaddq_f32(v31, vmulq_f32(v65, vaddq_f32(v85, vmulq_f32(v65, vaddq_f32(v66, vmulq_f32(v67, v65)))))), vshlq_n_s32(vaddq_s32(v84, vcvtq_s32_f32(v58)), 0x17uLL)));
      v102 = vbslq_s8(v18, v17, vmulq_f32(vaddq_f32(v31, vmulq_f32(v69, vaddq_f32(v85, vmulq_f32(v69, vaddq_f32(v66, vmulq_f32(v67, v69)))))), vshlq_n_s32(vaddq_s32(v84, vcvtq_s32_f32(v61)), 0x17uLL)));
      v103 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v99, vaddq_f32(v85, vmulq_f32(v99, vaddq_f32(v66, vmulq_f32(v67, v99)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v97), v84), 0x17uLL));
      v104 = vmulq_f32(vaddq_f32(v31, vmulq_f32(v100, vaddq_f32(v85, vmulq_f32(v100, vaddq_f32(v66, vmulq_f32(v67, v100)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v98), v84), 0x17uLL));
      v105 = vsubq_f32(v31, v104);
      v106 = vcgeq_f32(v101, vsubq_f32(v31, v103));
      v107 = vcgtq_f32(vminq_f32(vandq_s8(v31, vcgeq_f32(v30, v103)), vandq_s8(v31, vcgeq_f32(v101, v31))), v30);
      v108 = vcgtq_f32(vminq_f32(vandq_s8(v31, vcgeq_f32(v30, v104)), vandq_s8(v31, vcgeq_f32(v102, v31))), v30);
      v109 = vorrq_s8(vandq_s8(v31, vbicq_s8(v106, v107)), vandq_s8(v30, v107));
      v109.i32[3] = 1.0;
      v110 = vorrq_s8(vandq_s8(v31, vbicq_s8(vcgeq_f32(v102, v105), v108)), vandq_s8(v30, v108));
      v110.i32[3] = 1.0;
      v111 = (v6 + v13);
      v111[-1] = vaddq_f32(v57, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v18, v109, vaddq_f32(v28, vmulq_laneq_f32(vsubq_f32(v109, v28), v57, 3))), v57), v101, 3));
      *v111 = vaddq_f32(v56, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v18, v110, vaddq_f32(v29, vmulq_laneq_f32(vsubq_f32(v110, v29), v56, 3))), v56), v102, 3));
      v12 += 2;
      v13 += 32;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v112 = 16 * v12;
    v113 = *(a2 + 1);
    v114 = vmulq_f32(*(v8 + v112), *a2);
    v115 = *(a2 + 5);
    v116 = *(a2 + 6);
    v117 = vmaxq_f32(vdupq_laneq_s32(v114, 3), v116);
    v119 = *(a2 + 7);
    v118 = *(a2 + 8);
    v120 = vmulq_f32(vrecpeq_f32(v117), v119);
    v121 = vmulq_f32(v114, vmulq_f32(v120, vrecpsq_f32(v120, v117)));
    v122 = *(a2 + 32);
    v123 = *(a2 + 29);
    v124 = vbslq_s8(v115, v114, vminq_f32(vmaxq_f32(v121, v122), v123));
    v125 = vorrq_s8(vandq_s8(v124, v118), v123);
    v126 = *(a2 + 9);
    v127 = *(a2 + 10);
    v128 = *(a2 + 11);
    v129 = *(a2 + 12);
    v130 = vandq_s8(v123, vcgtq_f32(v125, v129));
    v131 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v124, 0x17uLL)), vandq_s8(v127, vcgtq_f32(v126, v124))), v128), v130);
    v133 = *(a2 + 13);
    v132 = *(a2 + 14);
    v134 = vsubq_f32(vsubq_f32(v125, v123), vmulq_f32(vmulq_f32(v133, v130), v125));
    v136 = *(a2 + 15);
    v135 = *(a2 + 16);
    v138 = *(a2 + 17);
    v137 = *(a2 + 18);
    v139 = vmaxq_f32(vmulq_f32(v113, vaddq_f32(v131, vmulq_f32(v134, vaddq_f32(vaddq_f32(v135, vmulq_f32(v134, v138)), vmulq_f32(vmulq_f32(v134, v134), vaddq_f32(v132, vmulq_f32(v136, v134))))))), v137);
    v140 = vcvtq_f32_s32(vcvtq_s32_f32(v139));
    v141 = vsubq_f32(v140, vandq_s8(v123, vcgtq_f32(v140, v139)));
    v142 = vsubq_f32(v139, v141);
    v143 = *(a2 + 19);
    v144 = *(a2 + 20);
    v145 = *(a2 + 21);
    v146 = *(a2 + 22);
    v147 = vbslq_s8(v115, v114, vmulq_f32(vaddq_f32(v123, vmulq_f32(v142, vaddq_f32(v145, vmulq_f32(v142, vaddq_f32(v143, vmulq_f32(v144, v142)))))), vshlq_n_s32(vaddq_s32(v146, vcvtq_s32_f32(v141)), 0x17uLL)));
    v148 = *(v7 + v112);
    v149 = vmaxq_f32(vdupq_laneq_s32(v148, 3), v116);
    v150 = vmulq_f32(v119, vrecpeq_f32(v149));
    v151 = vminq_f32(vmaxq_f32(vmulq_f32(v148, vmulq_f32(v150, vrecpsq_f32(v150, v149))), v122), v123);
    v152 = vorrq_s8(vandq_s8(v118, v151), v123);
    v153 = vandq_s8(v123, vcgtq_f32(v152, v129));
    v154 = vsubq_f32(vsubq_f32(v152, v123), vmulq_f32(vmulq_f32(v133, v153), v152));
    v155 = vmaxq_f32(vmulq_f32(v113, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v151, 0x17uLL)), vandq_s8(v127, vcgtq_f32(v126, v151))), v128), v153), vmulq_f32(v154, vaddq_f32(vaddq_f32(v135, vmulq_f32(v138, v154)), vmulq_f32(vmulq_f32(v154, v154), vaddq_f32(v132, vmulq_f32(v136, v154))))))), v137);
    v156 = vcvtq_f32_s32(vcvtq_s32_f32(v155));
    v157 = vsubq_f32(v156, vandq_s8(v123, vcgtq_f32(v156, v155)));
    v158 = vsubq_f32(v155, v157);
    v159 = vmulq_f32(vaddq_f32(v123, vmulq_f32(v158, vaddq_f32(v145, vmulq_f32(v158, vaddq_f32(v143, vmulq_f32(v144, v158)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v157), v146), 0x17uLL));
    v160 = vcgeq_f32(v147, vsubq_f32(v123, v159));
    v161 = vcgtq_f32(vminq_f32(vandq_s8(v123, vcgeq_f32(v122, v159)), vandq_s8(v123, vcgeq_f32(v147, v123))), v122);
    v162 = vorrq_s8(vandq_s8(v123, vbicq_s8(v160, v161)), vandq_s8(v122, v161));
    v162.i32[3] = 1.0;
    *(v6 + v112) = vaddq_f32(v148, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v115, v162, vaddq_f32(v121, vmulq_laneq_f32(vsubq_f32(v162, v121), v148, 3))), v148), v147, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendHardMixQTTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = *(a1 + 12);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v12 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v9;
      v7 += v11;
      v6 += v10;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v15 = vmulq_f32(*(v8 + v13 - 16), *a2);
      v16 = vmulq_f32(*(v8 + v13), *a2);
      v17 = a2[5];
      v18 = a2[6];
      v19 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v18);
      v20 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v18);
      v22 = a2[7];
      v21 = a2[8];
      v23 = vmulq_f32(vrecpeq_f32(v19), v22);
      v24 = vmulq_f32(vrecpeq_f32(v20), v22);
      v25 = vmulq_f32(v15, vmulq_f32(v23, vrecpsq_f32(v23, v19)));
      v26 = a2[32];
      v27 = vmulq_f32(v16, vmulq_f32(v24, vrecpsq_f32(v24, v20)));
      v28 = a2[29];
      v29 = vbslq_s8(v17, v15, vminq_f32(vmaxq_f32(v25, v26), v28));
      v30 = vbslq_s8(v17, v16, vminq_f32(vmaxq_f32(v27, v26), v28));
      v31 = vorrq_s8(vandq_s8(v29, v21), v28);
      v32 = a2[9];
      v33 = a2[10];
      v34 = vorrq_s8(vandq_s8(v30, v21), v28);
      v35 = a2[11];
      v36 = a2[12];
      v37 = vandq_s8(v28, vcgtq_f32(v31, v36));
      v38 = vandq_s8(v28, vcgtq_f32(v34, v36));
      v39 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v32, v29))), v35), v37);
      v41 = a2[13];
      v40 = a2[14];
      v42 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v30, 0x17uLL)), vandq_s8(v33, vcgtq_f32(v32, v30))), v35), v38);
      v43 = vsubq_f32(vsubq_f32(v31, v28), vmulq_f32(vmulq_f32(v41, v37), v31));
      v44 = vsubq_f32(vsubq_f32(v34, v28), vmulq_f32(vmulq_f32(v41, v38), v34));
      v46 = a2[15];
      v45 = a2[16];
      v48 = a2[17];
      v47 = a2[18];
      v49 = vaddq_f32(v39, vmulq_f32(v43, vaddq_f32(vaddq_f32(v45, vmulq_f32(v43, v48)), vmulq_f32(vmulq_f32(v43, v43), vaddq_f32(v40, vmulq_f32(v46, v43))))));
      v50 = a2[24];
      v51 = vmulq_f32(v50, vaddq_f32(v42, vmulq_f32(v44, vaddq_f32(vaddq_f32(v45, vmulq_f32(v44, v48)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v40, vmulq_f32(v46, v44)))))));
      v52 = vmaxq_f32(vmulq_f32(v50, v49), v47);
      v53 = vmaxq_f32(v51, v47);
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v57 = *(v7 + v13 - 16);
      v56 = *(v7 + v13);
      v58 = vsubq_f32(v54, vandq_s8(v28, vcgtq_f32(v54, v52)));
      v59 = vmaxq_f32(vdupq_laneq_s32(v57, 3), v18);
      v60 = vmaxq_f32(vdupq_laneq_s32(v56, 3), v18);
      v61 = vsubq_f32(v55, vandq_s8(v28, vcgtq_f32(v55, v53)));
      v62 = vmulq_f32(v22, vrecpeq_f32(v59));
      v63 = vmulq_f32(v22, vrecpeq_f32(v60));
      v64 = vmulq_f32(v62, vrecpsq_f32(v62, v59));
      v65 = vsubq_f32(v52, v58);
      v66 = a2[19];
      v67 = a2[20];
      v68 = vmulq_f32(v63, vrecpsq_f32(v63, v60));
      v69 = vsubq_f32(v53, v61);
      v70 = vminq_f32(vmaxq_f32(vmulq_f32(v57, v64), v26), v28);
      v71 = vminq_f32(vmaxq_f32(vmulq_f32(v56, v68), v26), v28);
      v72 = vandq_s8(v33, vcgtq_f32(v32, v70));
      v73 = vandq_s8(v33, vcgtq_f32(v32, v71));
      v74 = vorrq_s8(vandq_s8(v21, v70), v28);
      v75 = vorrq_s8(vandq_s8(v21, v71), v28);
      v76 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v71, 0x17uLL)), v73);
      v77 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v70, 0x17uLL)), v72), v35);
      v78 = vsubq_f32(v76, v35);
      v79 = vandq_s8(v28, vcgtq_f32(v74, v36));
      v80 = vandq_s8(v28, vcgtq_f32(v75, v36));
      v81 = vaddq_f32(v77, v79);
      v82 = vaddq_f32(v78, v80);
      v83 = vmulq_f32(v41, v79);
      v84 = vmulq_f32(v41, v80);
      v85 = vsubq_f32(vsubq_f32(v74, v28), vmulq_f32(v83, v74));
      v87 = a2[21];
      v86 = a2[22];
      v88 = vsubq_f32(vsubq_f32(v75, v28), vmulq_f32(v84, v75));
      v89 = vaddq_f32(v45, vmulq_f32(v48, v85));
      v90 = vaddq_f32(v45, vmulq_f32(v48, v88));
      v91 = vmulq_f32(vmulq_f32(v85, v85), vaddq_f32(v40, vmulq_f32(v46, v85)));
      v92 = vaddq_f32(v82, vmulq_f32(v88, vaddq_f32(v90, vmulq_f32(vmulq_f32(v88, v88), vaddq_f32(v40, vmulq_f32(v46, v88))))));
      v93 = vmaxq_f32(vmulq_f32(v50, vaddq_f32(v81, vmulq_f32(v85, vaddq_f32(v89, v91)))), v47);
      v94 = vmaxq_f32(vmulq_f32(v50, v92), v47);
      v95 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
      v96 = vcvtq_f32_s32(vcvtq_s32_f32(v94));
      v97 = vaddq_f32(v28, vmulq_f32(v69, vaddq_f32(v87, vmulq_f32(v69, vaddq_f32(v66, vmulq_f32(v67, v69))))));
      v98 = vsubq_f32(v95, vandq_s8(v28, vcgtq_f32(v95, v93)));
      v99 = vsubq_f32(v96, vandq_s8(v28, vcgtq_f32(v96, v94)));
      v100 = vsubq_f32(v93, v98);
      v101 = vsubq_f32(v94, v99);
      v102 = vmulq_f32(vaddq_f32(v28, vmulq_f32(v65, vaddq_f32(v87, vmulq_f32(v65, vaddq_f32(v66, vmulq_f32(v67, v65)))))), vshlq_n_s32(vaddq_s32(v86, vcvtq_s32_f32(v58)), 0x17uLL));
      v103 = vaddq_f32(v66, vmulq_f32(v67, v100));
      v104 = vmulq_f32(v101, vaddq_f32(v87, vmulq_f32(v101, vaddq_f32(v66, vmulq_f32(v67, v101)))));
      v105 = vbslq_s8(v17, v15, v102);
      v106 = vbslq_s8(v17, v16, vmulq_f32(v97, vshlq_n_s32(vaddq_s32(v86, vcvtq_s32_f32(v61)), 0x17uLL)));
      v107 = vmulq_f32(vaddq_f32(v28, vmulq_f32(v100, vaddq_f32(v87, vmulq_f32(v100, v103)))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v98), v86), 0x17uLL));
      v108 = vmulq_f32(vaddq_f32(v28, v104), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v99), v86), 0x17uLL));
      v109 = vsubq_f32(v28, v108);
      v110 = vcgeq_f32(v105, vsubq_f32(v28, v107));
      v111 = vcgtq_f32(vminq_f32(vandq_s8(v28, vcgeq_f32(v26, v107)), vandq_s8(v28, vcgeq_f32(v105, v28))), v26);
      v112 = vcgtq_f32(vminq_f32(vandq_s8(v28, vcgeq_f32(v26, v108)), vandq_s8(v28, vcgeq_f32(v106, v28))), v26);
      v113 = vorrq_s8(vandq_s8(v28, vbicq_s8(v110, v111)), vandq_s8(v26, v111));
      v113.i32[3] = 1.0;
      v114 = vorrq_s8(vandq_s8(v28, vbicq_s8(vcgeq_f32(v106, v109), v112)), vandq_s8(v26, v112));
      v114.i32[3] = 1.0;
      v115 = (v6 + v13);
      v115[-1] = vaddq_f32(v57, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v17, v113, vaddq_f32(v25, vmulq_laneq_f32(vsubq_f32(v113, v25), v57, 3))), v57), v105, 3));
      *v115 = vaddq_f32(v56, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v17, v114, vaddq_f32(v27, vmulq_laneq_f32(vsubq_f32(v114, v27), v56, 3))), v56), v106, 3));
      v12 += 2;
      v13 += 32;
    }

    if (v12 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v116 = 16 * v12;
    v117 = vmulq_f32(*(v8 + v116), *a2);
    v118 = a2[5];
    v119 = a2[6];
    v120 = vmaxq_f32(vdupq_laneq_s32(v117, 3), v119);
    v122 = a2[7];
    v121 = a2[8];
    v123 = vmulq_f32(vrecpeq_f32(v120), v122);
    v124 = vmulq_f32(v117, vmulq_f32(v123, vrecpsq_f32(v123, v120)));
    v125 = a2[32];
    v126 = a2[29];
    v127 = vbslq_s8(v118, v117, vminq_f32(vmaxq_f32(v124, v125), v126));
    v128 = vorrq_s8(vandq_s8(v127, v121), v126);
    v129 = a2[9];
    v130 = a2[10];
    v131 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v127, 0x17uLL)), vandq_s8(v130, vcgtq_f32(v129, v127)));
    v132 = a2[11];
    v133 = a2[12];
    v134 = vandq_s8(v126, vcgtq_f32(v128, v133));
    v135 = vaddq_f32(vsubq_f32(v131, v132), v134);
    v136 = a2[13];
    v137 = a2[14];
    v138 = vsubq_f32(vsubq_f32(v128, v126), vmulq_f32(vmulq_f32(v136, v134), v128));
    v139 = a2[15];
    v140 = a2[16];
    v141 = a2[17];
    v142 = a2[18];
    v143 = vaddq_f32(v135, vmulq_f32(v138, vaddq_f32(vaddq_f32(v140, vmulq_f32(v138, v141)), vmulq_f32(vmulq_f32(v138, v138), vaddq_f32(v137, vmulq_f32(v139, v138))))));
    v144 = a2[24];
    v145 = vmaxq_f32(vmulq_f32(v144, v143), v142);
    v146 = vcvtq_f32_s32(vcvtq_s32_f32(v145));
    v147 = vsubq_f32(v146, vandq_s8(v126, vcgtq_f32(v146, v145)));
    v148 = vsubq_f32(v145, v147);
    v149 = a2[19];
    v150 = a2[20];
    v151 = a2[21];
    v152 = a2[22];
    v153 = vbslq_s8(v118, v117, vmulq_f32(vaddq_f32(v126, vmulq_f32(v148, vaddq_f32(v151, vmulq_f32(v148, vaddq_f32(v149, vmulq_f32(v150, v148)))))), vshlq_n_s32(vaddq_s32(v152, vcvtq_s32_f32(v147)), 0x17uLL)));
    v154 = *(v7 + v116);
    v155 = vmaxq_f32(vdupq_laneq_s32(v154, 3), v119);
    v156 = vmulq_f32(v122, vrecpeq_f32(v155));
    v157 = vminq_f32(vmaxq_f32(vmulq_f32(v154, vmulq_f32(v156, vrecpsq_f32(v156, v155))), v125), v126);
    v158 = vorrq_s8(vandq_s8(v121, v157), v126);
    v159 = vandq_s8(v126, vcgtq_f32(v158, v133));
    v160 = vsubq_f32(vsubq_f32(v158, v126), vmulq_f32(vmulq_f32(v136, v159), v158));
    v161 = vmaxq_f32(vmulq_f32(v144, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v157, 0x17uLL)), vandq_s8(v130, vcgtq_f32(v129, v157))), v132), v159), vmulq_f32(v160, vaddq_f32(vaddq_f32(v140, vmulq_f32(v141, v160)), vmulq_f32(vmulq_f32(v160, v160), vaddq_f32(v137, vmulq_f32(v139, v160))))))), v142);
    v162 = vcvtq_f32_s32(vcvtq_s32_f32(v161));
    v163 = vsubq_f32(v162, vandq_s8(v126, vcgtq_f32(v162, v161)));
    v164 = vsubq_f32(v161, v163);
    v165 = vmulq_f32(vaddq_f32(v126, vmulq_f32(v164, vaddq_f32(v151, vmulq_f32(v164, vaddq_f32(v149, vmulq_f32(v150, v164)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v163), v152), 0x17uLL));
    v166 = vcgeq_f32(v153, vsubq_f32(v126, v165));
    v167 = vcgtq_f32(vminq_f32(vandq_s8(v126, vcgeq_f32(v125, v165)), vandq_s8(v126, vcgeq_f32(v153, v126))), v125);
    v168 = vorrq_s8(vandq_s8(v126, vbicq_s8(v166, v167)), vandq_s8(v125, v167));
    v168.i32[3] = 1.0;
    *(v6 + v116) = vaddq_f32(v154, vmulq_laneq_f32(vsubq_f32(vbslq_s8(v118, v168, vaddq_f32(v124, vmulq_laneq_f32(vsubq_f32(v168, v124), v154, 3))), v154), v153, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t GetBlendDifferenceTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v55 = 0;
        v56 = 16 * v10;
        v57 = 16 * v9;
        v58 = 16 * v8;
        v59 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v60 = 0;
          do
          {
            v61 = v5[v60 / 0x10];
            v62 = vmulq_f32(v6[v60 / 0x10], *a2);
            v63 = vmulq_laneq_f32(v62, v61, 3);
            v64 = vmulq_laneq_f32(v61, v62, 3);
            v65 = vsubq_f32(vaddq_f32(v61, v62), v63);
            v7[v60 / 0x10] = vaddq_f32(vabdq_f32(v63, v64), vbslq_s8(*(a2 + 5), v65, vsubq_f32(v65, v64)));
            v60 += 16;
          }

          while (v59 != v60);
          ++v55;
          v5 = (v5 + v56);
          v6 = (v6 + v57);
          v7 = (v7 + v58);
        }

        while (v55 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = v5[v18];
          v27 = v5[v18 + 1];
          v28 = v5[v18 + 2];
          v29 = v5[v18 + 3];
          v30 = vmulq_f32(v6[v18], *a2);
          v31 = vmulq_f32(v6[v18 + 1], *a2);
          v32 = vmulq_f32(v6[v18 + 2], *a2);
          v33 = vmulq_f32(v6[v18 + 3], *a2);
          v34 = vmulq_laneq_f32(v30, v26, 3);
          v35 = vmulq_laneq_f32(v31, v27, 3);
          v36 = vmulq_laneq_f32(v32, v28, 3);
          v37 = vmulq_laneq_f32(v33, v29, 3);
          v38 = vmulq_laneq_f32(v26, v30, 3);
          v39 = vmulq_laneq_f32(v27, v31, 3);
          v40 = vmulq_laneq_f32(v28, v32, 3);
          v41 = vmulq_laneq_f32(v29, v33, 3);
          v42 = vsubq_f32(vaddq_f32(v26, v30), v34);
          v43 = vsubq_f32(vaddq_f32(v27, v31), v35);
          v44 = vsubq_f32(vaddq_f32(v28, v32), v36);
          v45 = vsubq_f32(vaddq_f32(v29, v33), v37);
          v46 = *(a2 + 5);
          v47 = &v7[v18];
          *v47 = vaddq_f32(vabdq_f32(v34, v38), vbslq_s8(v46, v42, vsubq_f32(v42, v38)));
          v47[1] = vaddq_f32(vabdq_f32(v35, v39), vbslq_s8(v46, v43, vsubq_f32(v43, v39)));
          v19 += 4;
          v18 += 4;
          v47[2] = vaddq_f32(vabdq_f32(v36, v40), vbslq_s8(v46, v44, vsubq_f32(v44, v40)));
          v47[3] = vaddq_f32(vabdq_f32(v37, v41), vbslq_s8(v46, v45, vsubq_f32(v45, v41)));
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v48 = *v23++;
            v49 = v48;
            v50 = *v24++;
            v51 = vmulq_f32(v50, *a2);
            v52 = vmulq_laneq_f32(v51, v49, 3);
            v53 = vmulq_laneq_f32(v49, v51, 3);
            v54 = vsubq_f32(vaddq_f32(v49, v51), v52);
            *v25++ = vaddq_f32(vabdq_f32(v52, v53), vbslq_s8(*(a2 + 5), v54, vsubq_f32(v54, v53)));
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendDifferencePOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v17 = *(a2 + 7);
        v16 = *(a2 + 8);
        v18 = vmulq_f32(vrecpeq_f32(v15), v17);
        v19 = *(a2 + 32);
        v20 = vmaxq_f32(vmulq_f32(v13, vmulq_f32(v18, vrecpsq_f32(v18, v15))), v19);
        v21 = *(a2 + 29);
        v22 = vorrq_s8(vandq_s8(v16, v20), v21);
        v23 = *(a2 + 9);
        v24 = *(a2 + 10);
        v25 = *(a2 + 11);
        v26 = *(a2 + 12);
        v27 = vandq_s8(v21, vcgtq_f32(v22, v26));
        v28 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v20))), v25), v27);
        v30 = *(a2 + 13);
        v29 = *(a2 + 14);
        v31 = vsubq_f32(vsubq_f32(v22, v21), vmulq_f32(vmulq_f32(v30, v27), v22));
        v33 = *(a2 + 15);
        v32 = *(a2 + 16);
        v35 = *(a2 + 17);
        v34 = *(a2 + 18);
        v36 = *(a2 + 1);
        v37 = vmaxq_f32(vmulq_f32(v36, vaddq_f32(v28, vmulq_f32(v31, vaddq_f32(vaddq_f32(v32, vmulq_f32(v31, v35)), vmulq_f32(vmulq_f32(v31, v31), vaddq_f32(v29, vmulq_f32(v33, v31))))))), v34);
        v38 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
        v39 = vsubq_f32(v38, vandq_s8(v21, vcgtq_f32(v38, v37)));
        v40 = vsubq_f32(v37, v39);
        v41 = *(a2 + 19);
        v42 = *(a2 + 20);
        v44 = *(a2 + 21);
        v43 = *(a2 + 22);
        v45 = vaddq_f32(v21, vmulq_f32(v40, vaddq_f32(v44, vmulq_f32(v40, vaddq_f32(v41, vmulq_f32(v42, v40))))));
        v46 = vmulq_f32(*(v6 + v12), *a2);
        v47 = vmaxq_f32(vdupq_laneq_s32(v46, 3), v14);
        v48 = vmulq_f32(v17, vrecpeq_f32(v47));
        v49 = vmulq_f32(v46, vmulq_f32(v48, vrecpsq_f32(v48, v47)));
        v50 = vmaxq_f32(v49, v19);
        v51 = vorrq_s8(vandq_s8(v16, v50), v21);
        v52 = vandq_s8(v21, vcgtq_f32(v51, v26));
        v53 = vsubq_f32(vsubq_f32(v51, v21), vmulq_f32(vmulq_f32(v30, v52), v51));
        v54 = vmaxq_f32(vmulq_f32(v36, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v50, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v50))), v25), v52), vmulq_f32(v53, vaddq_f32(vaddq_f32(v32, vmulq_f32(v35, v53)), vmulq_f32(vmulq_f32(v53, v53), vaddq_f32(v29, vmulq_f32(v33, v53))))))), v34);
        v55 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
        v56 = vsubq_f32(v55, vandq_s8(v21, vcgtq_f32(v55, v54)));
        v57 = vsubq_f32(v54, v56);
        v58 = vabdq_f32(vmulq_f32(v45, vshlq_n_s32(vaddq_s32(v43, vcvtq_s32_f32(v39)), 0x17uLL)), vmulq_f32(vaddq_f32(v21, vmulq_f32(v57, vaddq_f32(v44, vmulq_f32(v57, vaddq_f32(v41, vmulq_f32(v42, v57)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v56), v43), 0x17uLL)));
        v59 = vorrq_s8(vandq_s8(v16, v58), v21);
        v60 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v58, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v58))), v25);
        v61 = vandq_s8(v21, vcgtq_f32(v59, v26));
        v62 = vsubq_f32(vsubq_f32(v59, v21), vmulq_f32(vmulq_f32(v30, v61), v59));
        v63 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(v60, v61), vmulq_f32(v62, vaddq_f32(vaddq_f32(v32, vmulq_f32(v35, v62)), vmulq_f32(vmulq_f32(v62, v62), vaddq_f32(v29, vmulq_f32(v33, v62))))))), v34);
        v64 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
        v65 = vsubq_f32(v64, vandq_s8(v21, vcgtq_f32(v64, v63)));
        v66 = vsubq_f32(v63, v65);
        v67 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v66, vaddq_f32(v44, vmulq_f32(v66, vaddq_f32(v41, vmulq_f32(v42, v66)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v65), v43), 0x17uLL));
        v67.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v67, vaddq_f32(v49, vmulq_laneq_f32(vsubq_f32(v67, v49), v13, 3))), v13), v46, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendDifferenceQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v17 = *(a2 + 7);
        v16 = *(a2 + 8);
        v18 = vmulq_f32(vrecpeq_f32(v15), v17);
        v19 = *(a2 + 32);
        v20 = *(a2 + 23);
        v21 = *(a2 + 24);
        v22 = vminq_f32(vmaxq_f32(vmulq_f32(v13, vmulq_f32(v18, vrecpsq_f32(v18, v15))), v19), v20);
        v23 = *(a2 + 29);
        v24 = vorrq_s8(vandq_s8(v16, v22), v23);
        v25 = *(a2 + 9);
        v26 = *(a2 + 10);
        v27 = *(a2 + 11);
        v28 = *(a2 + 12);
        v29 = vandq_s8(v23, vcgtq_f32(v24, v28));
        v30 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v25, v22))), v27), v29);
        v32 = *(a2 + 13);
        v31 = *(a2 + 14);
        v33 = vsubq_f32(vsubq_f32(v24, v23), vmulq_f32(vmulq_f32(v32, v29), v24));
        v35 = *(a2 + 15);
        v34 = *(a2 + 16);
        v37 = *(a2 + 17);
        v36 = *(a2 + 18);
        v38 = vmaxq_f32(vmulq_f32(v21, vaddq_f32(v30, vmulq_f32(v33, vaddq_f32(vaddq_f32(v34, vmulq_f32(v33, v37)), vmulq_f32(vmulq_f32(v33, v33), vaddq_f32(v31, vmulq_f32(v35, v33))))))), v36);
        v39 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
        v40 = vsubq_f32(v39, vandq_s8(v23, vcgtq_f32(v39, v38)));
        v41 = vsubq_f32(v38, v40);
        v42 = *(a2 + 19);
        v43 = *(a2 + 20);
        v45 = *(a2 + 21);
        v44 = *(a2 + 22);
        v46 = vmulq_f32(vaddq_f32(v23, vmulq_f32(v41, vaddq_f32(v45, vmulq_f32(v41, vaddq_f32(v42, vmulq_f32(v43, v41)))))), vshlq_n_s32(vaddq_s32(v44, vcvtq_s32_f32(v40)), 0x17uLL));
        v47 = vmulq_f32(*(v6 + v12), *a2);
        v48 = vmaxq_f32(vdupq_laneq_s32(v47, 3), v14);
        v49 = vmulq_f32(v17, vrecpeq_f32(v48));
        v50 = vmulq_f32(v47, vmulq_f32(v49, vrecpsq_f32(v49, v48)));
        v51 = vminq_f32(vmaxq_f32(v50, v19), v20);
        v52 = vorrq_s8(vandq_s8(v16, v51), v23);
        v53 = vandq_s8(v23, vcgtq_f32(v52, v28));
        v54 = vsubq_f32(vsubq_f32(v52, v23), vmulq_f32(vmulq_f32(v32, v53), v52));
        v55 = vmaxq_f32(vmulq_f32(v21, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v51, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v25, v51))), v27), v53), vmulq_f32(v54, vaddq_f32(vaddq_f32(v34, vmulq_f32(v37, v54)), vmulq_f32(vmulq_f32(v54, v54), vaddq_f32(v31, vmulq_f32(v35, v54))))))), v36);
        v56 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
        v57 = vsubq_f32(v56, vandq_s8(v23, vcgtq_f32(v56, v55)));
        v58 = vsubq_f32(v55, v57);
        v59 = vminq_f32(vabdq_f32(v46, vmulq_f32(vaddq_f32(v23, vmulq_f32(v58, vaddq_f32(v45, vmulq_f32(v58, vaddq_f32(v42, vmulq_f32(v43, v58)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v57), v44), 0x17uLL))), *(a2 + 30));
        v60 = vorrq_s8(vandq_s8(v16, v59), v23);
        v61 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v59, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v25, v59))), v27);
        v62 = vandq_s8(v23, vcgtq_f32(v60, v28));
        v63 = vsubq_f32(vsubq_f32(v60, v23), vmulq_f32(vmulq_f32(v32, v62), v60));
        v64 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(v61, v62), vmulq_f32(v63, vaddq_f32(vaddq_f32(v34, vmulq_f32(v37, v63)), vmulq_f32(vmulq_f32(v63, v63), vaddq_f32(v31, vmulq_f32(v35, v63))))))), v36);
        v65 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
        v66 = vsubq_f32(v65, vandq_s8(v23, vcgtq_f32(v65, v64)));
        v67 = vsubq_f32(v64, v66);
        v68 = vmulq_f32(vaddq_f32(v23, vmulq_f32(v67, vaddq_f32(v45, vmulq_f32(v67, vaddq_f32(v42, vmulq_f32(v43, v67)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v66), v44), 0x17uLL));
        v68.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v68, vaddq_f32(v50, vmulq_laneq_f32(vsubq_f32(v68, v50), v13, 3))), v13), v47, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendExclusionTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = *(a1 + 2) - *a1;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 2)
    {
      if (v4 == 1)
      {
        v39 = 16 * v8;
        do
        {
          v40 = vmulq_f32(*v6, *a2);
          v41 = vmulq_laneq_f32(v40, *v5, 3);
          v42 = vmulq_laneq_f32(*v5, v40, 3);
          v43 = vsubq_f32(vaddq_f32(*v5, v40), v41);
          *v7 = vaddq_f32(vaddq_f32(v42, vaddq_f32(v41, vmulq_f32(*(a2 + 87), vmulq_f32(*v5, v40)))), vbslq_s8(*(a2 + 5), v43, vsubq_f32(v43, v42)));
          v5 += v10;
          v6 += v9;
          v7 = (v7 + v39);
          --v3;
        }

        while (v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v8;
      v13 = 16 * v10;
      v14 = 16 * v9;
      do
      {
        v15 = 0;
        v16 = 0;
        for (i = v4; i > 1; i -= 2)
        {
          v18 = v5[v15];
          v19 = v5[v15 + 1];
          v20 = vmulq_f32(v6[v15], *a2);
          v21 = vmulq_f32(v6[v15 + 1], *a2);
          v22 = vmulq_laneq_f32(v20, v18, 3);
          v23 = vmulq_laneq_f32(v21, v19, 3);
          v24 = vmulq_laneq_f32(v18, v20, 3);
          v25 = vmulq_laneq_f32(v19, v21, 3);
          v26 = *(a2 + 87);
          v27 = vaddq_f32(v24, vaddq_f32(v22, vmulq_f32(v26, vmulq_f32(v18, v20))));
          v28 = vaddq_f32(v25, vaddq_f32(v23, vmulq_f32(v26, vmulq_f32(v19, v21))));
          v29 = vsubq_f32(vaddq_f32(v18, v20), v22);
          v30 = vsubq_f32(vaddq_f32(v19, v21), v23);
          v31 = *(a2 + 5);
          v32 = &v7[v15];
          *v32 = vaddq_f32(v27, vbslq_s8(v31, v29, vsubq_f32(v29, v24)));
          v32[1] = vaddq_f32(v28, vbslq_s8(v31, v30, vsubq_f32(v30, v25)));
          v16 += 2;
          v15 += 2;
        }

        if (v4 > v16)
        {
          v33 = v5[v15];
          v34 = vmulq_f32(v6[v15], *a2);
          v35 = vmulq_laneq_f32(v34, v33, 3);
          v36 = vmulq_laneq_f32(v33, v34, 3);
          v37 = vaddq_f32(v36, vaddq_f32(v35, vmulq_f32(*(a2 + 87), vmulq_f32(v33, v34))));
          v38 = vsubq_f32(vaddq_f32(v33, v34), v35);
          v7[v15] = vaddq_f32(v37, vbslq_s8(*(a2 + 5), v38, vsubq_f32(v38, v36)));
        }

        ++v11;
        v7 = (v7 + v12);
        v5 = (v5 + v13);
        v6 = (v6 + v14);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendExclusionPOWTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v17 = *(a2 + 7);
        v16 = *(a2 + 8);
        v18 = vmulq_f32(vrecpeq_f32(v15), v17);
        v19 = *(a2 + 32);
        v20 = vmaxq_f32(vmulq_f32(v13, vmulq_f32(v18, vrecpsq_f32(v18, v15))), v19);
        v21 = *(a2 + 29);
        v22 = vorrq_s8(vandq_s8(v16, v20), v21);
        v23 = *(a2 + 9);
        v24 = *(a2 + 10);
        v25 = *(a2 + 11);
        v26 = *(a2 + 12);
        v27 = vandq_s8(v21, vcgtq_f32(v22, v26));
        v28 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v20))), v25), v27);
        v30 = *(a2 + 13);
        v29 = *(a2 + 14);
        v31 = vsubq_f32(vsubq_f32(v22, v21), vmulq_f32(vmulq_f32(v30, v27), v22));
        v33 = *(a2 + 15);
        v32 = *(a2 + 16);
        v35 = *(a2 + 17);
        v34 = *(a2 + 18);
        v36 = *(a2 + 1);
        v37 = vmaxq_f32(vmulq_f32(v36, vaddq_f32(v28, vmulq_f32(v31, vaddq_f32(vaddq_f32(v32, vmulq_f32(v31, v35)), vmulq_f32(vmulq_f32(v31, v31), vaddq_f32(v29, vmulq_f32(v33, v31))))))), v34);
        v38 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
        v39 = vsubq_f32(v38, vandq_s8(v21, vcgtq_f32(v38, v37)));
        v40 = vsubq_f32(v37, v39);
        v41 = *(a2 + 19);
        v42 = *(a2 + 20);
        v44 = *(a2 + 21);
        v43 = *(a2 + 22);
        v45 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v40, vaddq_f32(v44, vmulq_f32(v40, vaddq_f32(v41, vmulq_f32(v42, v40)))))), vshlq_n_s32(vaddq_s32(v43, vcvtq_s32_f32(v39)), 0x17uLL));
        v46 = vmulq_f32(*(v6 + v12), *a2);
        v47 = vmaxq_f32(vdupq_laneq_s32(v46, 3), v14);
        v48 = vmulq_f32(v17, vrecpeq_f32(v47));
        v49 = vmulq_f32(v46, vmulq_f32(v48, vrecpsq_f32(v48, v47)));
        v50 = vmaxq_f32(v49, v19);
        v51 = vorrq_s8(vandq_s8(v16, v50), v21);
        v52 = vandq_s8(v21, vcgtq_f32(v51, v26));
        v53 = vsubq_f32(vsubq_f32(v51, v21), vmulq_f32(vmulq_f32(v30, v52), v51));
        v54 = vmaxq_f32(vmulq_f32(v36, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v50, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v50))), v25), v52), vmulq_f32(v53, vaddq_f32(vaddq_f32(v32, vmulq_f32(v35, v53)), vmulq_f32(vmulq_f32(v53, v53), vaddq_f32(v29, vmulq_f32(v33, v53))))))), v34);
        v55 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
        v56 = vsubq_f32(v55, vandq_s8(v21, vcgtq_f32(v55, v54)));
        v57 = vsubq_f32(v54, v56);
        v58 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v57, vaddq_f32(v44, vmulq_f32(v57, vaddq_f32(v41, vmulq_f32(v42, v57)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v56), v43), 0x17uLL));
        v59 = vaddq_f32(vaddq_f32(v45, v58), vmulq_laneq_f32(vmulq_f32(v45, v58), *(a2 + 87), 2));
        v60 = vorrq_s8(vandq_s8(v16, v59), v21);
        v61 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v59, 0x17uLL)), vandq_s8(v24, vcgtq_f32(v23, v59))), v25);
        v62 = vandq_s8(v21, vcgtq_f32(v60, v26));
        v63 = vsubq_f32(vsubq_f32(v60, v21), vmulq_f32(vmulq_f32(v30, v62), v60));
        v64 = vmaxq_f32(vmulq_f32(*(a2 + 2), vaddq_f32(vaddq_f32(v61, v62), vmulq_f32(v63, vaddq_f32(vaddq_f32(v32, vmulq_f32(v35, v63)), vmulq_f32(vmulq_f32(v63, v63), vaddq_f32(v29, vmulq_f32(v33, v63))))))), v34);
        v65 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
        v66 = vsubq_f32(v65, vandq_s8(v21, vcgtq_f32(v65, v64)));
        v67 = vsubq_f32(v64, v66);
        v68 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v67, vaddq_f32(v44, vmulq_f32(v67, vaddq_f32(v41, vmulq_f32(v42, v67)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v66), v43), 0x17uLL));
        v68.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v68, vaddq_f32(v49, vmulq_laneq_f32(vsubq_f32(v68, v49), v13, 3))), v13), v46, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendExclusionQTTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 26);
    v10 = 16 * *(a1 + 6);
    v11 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v12 = 0;
      do
      {
        v13 = *(v5 + v12);
        v14 = *(a2 + 6);
        v15 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v14);
        v17 = *(a2 + 7);
        v16 = *(a2 + 8);
        v18 = vmulq_f32(vrecpeq_f32(v15), v17);
        v19 = vmulq_f32(v13, vmulq_f32(v18, vrecpsq_f32(v18, v15)));
        v20 = *(a2 + 32);
        v21 = *(a2 + 23);
        v22 = *(a2 + 24);
        v23 = vminq_f32(vmaxq_f32(v19, v20), v21);
        v24 = *(a2 + 29);
        v25 = vorrq_s8(vandq_s8(v16, v23), v24);
        v26 = *(a2 + 9);
        v27 = *(a2 + 10);
        v28 = *(a2 + 11);
        v29 = *(a2 + 12);
        v30 = vandq_s8(v24, vcgtq_f32(v25, v29));
        v31 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v26, v23))), v28), v30);
        v33 = *(a2 + 13);
        v32 = *(a2 + 14);
        v34 = vsubq_f32(vsubq_f32(v25, v24), vmulq_f32(vmulq_f32(v33, v30), v25));
        v36 = *(a2 + 15);
        v35 = *(a2 + 16);
        v38 = *(a2 + 17);
        v37 = *(a2 + 18);
        v39 = vmaxq_f32(vmulq_f32(v22, vaddq_f32(v31, vmulq_f32(v34, vaddq_f32(vaddq_f32(v35, vmulq_f32(v34, v38)), vmulq_f32(vmulq_f32(v34, v34), vaddq_f32(v32, vmulq_f32(v36, v34))))))), v37);
        v40 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
        v41 = vsubq_f32(v40, vandq_s8(v24, vcgtq_f32(v40, v39)));
        v42 = vsubq_f32(v39, v41);
        v43 = *(a2 + 19);
        v44 = *(a2 + 20);
        v46 = *(a2 + 21);
        v45 = *(a2 + 22);
        v47 = vmulq_f32(vaddq_f32(v24, vmulq_f32(v42, vaddq_f32(v46, vmulq_f32(v42, vaddq_f32(v43, vmulq_f32(v44, v42)))))), vshlq_n_s32(vaddq_s32(v45, vcvtq_s32_f32(v41)), 0x17uLL));
        v48 = vmulq_f32(*(v6 + v12), *a2);
        v49 = vmaxq_f32(vdupq_laneq_s32(v48, 3), v14);
        v50 = vmulq_f32(v17, vrecpeq_f32(v49));
        v51 = vmulq_f32(v48, vmulq_f32(v50, vrecpsq_f32(v50, v49)));
        v52 = vminq_f32(vmaxq_f32(v51, v20), v21);
        v53 = vorrq_s8(vandq_s8(v16, v52), v24);
        v54 = vandq_s8(v24, vcgtq_f32(v53, v29));
        v55 = vsubq_f32(vsubq_f32(v53, v24), vmulq_f32(vmulq_f32(v33, v54), v53));
        v56 = vmaxq_f32(vmulq_f32(v22, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v52, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v26, v52))), v28), v54), vmulq_f32(v55, vaddq_f32(vaddq_f32(v35, vmulq_f32(v38, v55)), vmulq_f32(vmulq_f32(v55, v55), vaddq_f32(v32, vmulq_f32(v36, v55))))))), v37);
        v57 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
        v58 = vsubq_f32(v57, vandq_s8(v24, vcgtq_f32(v57, v56)));
        v59 = vsubq_f32(v56, v58);
        v60 = vmulq_f32(vaddq_f32(v24, vmulq_f32(v59, vaddq_f32(v46, vmulq_f32(v59, vaddq_f32(v43, vmulq_f32(v44, v59)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v58), v45), 0x17uLL));
        v61 = vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(v47, v60), vmulq_laneq_f32(vmulq_f32(v47, v60), *(a2 + 87), 2)), v20), *(a2 + 30));
        v62 = vorrq_s8(vandq_s8(v16, v61), v24);
        v63 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v61, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v26, v61))), v28);
        v64 = vandq_s8(v24, vcgtq_f32(v62, v29));
        v65 = vsubq_f32(vsubq_f32(v62, v24), vmulq_f32(vmulq_f32(v33, v64), v62));
        v66 = vmaxq_f32(vmulq_f32(*(a2 + 25), vaddq_f32(vaddq_f32(v63, v64), vmulq_f32(v65, vaddq_f32(vaddq_f32(v35, vmulq_f32(v38, v65)), vmulq_f32(vmulq_f32(v65, v65), vaddq_f32(v32, vmulq_f32(v36, v65))))))), v37);
        v67 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
        v68 = vsubq_f32(v67, vandq_s8(v24, vcgtq_f32(v67, v66)));
        v69 = vsubq_f32(v66, v68);
        v70 = vmulq_f32(vaddq_f32(v24, vmulq_f32(v69, vaddq_f32(v46, vmulq_f32(v69, vaddq_f32(v43, vmulq_f32(v44, v69)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v68), v45), 0x17uLL));
        v70.i32[3] = 1.0;
        *(v7 + v12) = vaddq_f32(v13, vmulq_laneq_f32(vsubq_f32(vbslq_s8(*(a2 + 5), v70, vaddq_f32(v51, vmulq_laneq_f32(vsubq_f32(v70, v51), v13, 3))), v13), v48, 3));
        v12 += 16;
      }

      while (v11 != v12);
      ++v4;
      v5 += v8;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t GetBlendStencilAlphaTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 10);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 22);
    v10 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v34 = 0;
        v35 = 16 * v10;
        v36 = 16 * v9;
        v37 = 16 * v8;
        v38 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v39 = 0;
          do
          {
            v7[v39 / 0x10] = vmulq_laneq_f32(v6[v39 / 0x10], vmulq_f32(v5[v39 / 0x10], *a2), 3);
            v39 += 16;
          }

          while (v38 != v39);
          ++v34;
          v5 = (v5 + v35);
          v6 = (v6 + v36);
          v7 = (v7 + v37);
        }

        while (v34 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = vextq_s8(*a2, *a2, 0xCuLL);
          v27 = vmulq_n_f32(v6[v18 + 1], vmulq_laneq_f32(v26, v5[v18 + 1], 3).f32[0]);
          v28 = vmulq_n_f32(v6[v18 + 2], vmulq_laneq_f32(v26, v5[v18 + 2], 3).f32[0]);
          v29 = vmulq_n_f32(v6[v18 + 3], vmulq_laneq_f32(v26, v5[v18 + 3], 3).f32[0]);
          v30 = &v7[v18];
          *v30 = vmulq_n_f32(v6[v18], vmulq_laneq_f32(v26, v5[v18], 3).f32[0]);
          v30[1] = v27;
          v19 += 4;
          v18 += 4;
          v30[2] = v28;
          v30[3] = v29;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v31 = *v23++;
            v32 = v31;
            v33 = *v24++;
            *v25++ = vmulq_laneq_f32(v33, vmulq_f32(v32, *a2), 3);
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendStencilLumaTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 10);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 22);
    v10 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v39 = 0;
        v40 = 16 * v10;
        v41 = 16 * v9;
        v42 = 16 * v8;
        v43 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v44 = 0;
          do
          {
            v45 = vmulq_f32(vmulq_f32(v5[v44 / 0x10], *a2), a2[88]);
            v7[v44 / 0x10] = vmulq_n_f32(v6[v44 / 0x10], vaddq_f32(vdupq_laneq_s32(v45, 2), vaddq_f32(v45, vdupq_lane_s32(*v45.f32, 1))).f32[0]);
            v44 += 16;
          }

          while (v43 != v44);
          ++v39;
          v5 = (v5 + v40);
          v6 = (v6 + v41);
          v7 = (v7 + v42);
        }

        while (v39 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = a2[88];
          v27 = vmulq_f32(vmulq_f32(v5[v18], *a2), v26);
          v28 = vmulq_f32(vmulq_f32(v5[v18 + 1], *a2), v26);
          v29 = vmulq_f32(vmulq_f32(v5[v18 + 2], *a2), v26);
          v30 = vmulq_f32(vmulq_f32(v5[v18 + 3], *a2), v26);
          v31 = vmulq_n_f32(v6[v18 + 1], vaddq_f32(vdupq_laneq_s32(v28, 2), vaddq_f32(v28, vdupq_lane_s32(*v28.f32, 1))).f32[0]);
          v32 = vmulq_n_f32(v6[v18 + 2], vaddq_f32(vdupq_laneq_s32(v29, 2), vaddq_f32(v29, vdupq_lane_s32(*v29.f32, 1))).f32[0]);
          v33 = vmulq_n_f32(v6[v18 + 3], vaddq_f32(vdupq_laneq_s32(v30, 2), vaddq_f32(v30, vdupq_lane_s32(*v30.f32, 1))).f32[0]);
          v34 = &v7[v18];
          *v34 = vmulq_n_f32(v6[v18], vaddq_f32(vdupq_laneq_s32(v27, 2), vaddq_f32(v27, vdupq_lane_s32(*v27.f32, 1))).f32[0]);
          v34[1] = v31;
          v19 += 4;
          v18 += 4;
          v34[2] = v32;
          v34[3] = v33;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v35 = *v23++;
            v36 = vmulq_f32(v35, *a2);
            v37 = *v24++;
            v38 = vmulq_f32(v36, a2[88]);
            *v25++ = vmulq_n_f32(v37, vaddq_f32(vdupq_laneq_s32(v38, 2), vaddq_f32(v38, vdupq_lane_s32(*v38.f32, 1))).f32[0]);
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendSilhouetteAlphaTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 10);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 22);
    v10 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v34 = 0;
        v35 = 16 * v10;
        v36 = 16 * v9;
        v37 = 16 * v8;
        v38 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v39 = 0;
          do
          {
            v7[v39 / 0x10] = vaddq_f32(v6[v39 / 0x10], vmulq_n_f32(v6[v39 / 0x10], vmulq_laneq_f32(vnegq_f32(vdupq_laneq_s32(v5[v39 / 0x10], 3)), *a2, 3).f32[0]));
            v39 += 16;
          }

          while (v38 != v39);
          ++v34;
          v5 = (v5 + v35);
          v6 = (v6 + v36);
          v7 = (v7 + v37);
        }

        while (v34 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = vextq_s8(*a2, *a2, 0xCuLL);
          v27 = vaddq_f32(v6[v18 + 1], vmulq_n_f32(v6[v18 + 1], vmulq_f32(v26, vnegq_f32(vdupq_laneq_s32(v5[v18 + 1], 3))).f32[0]));
          v28 = vaddq_f32(v6[v18 + 2], vmulq_n_f32(v6[v18 + 2], vmulq_f32(v26, vnegq_f32(vdupq_laneq_s32(v5[v18 + 2], 3))).f32[0]));
          v29 = vaddq_f32(v6[v18 + 3], vmulq_n_f32(v6[v18 + 3], vmulq_f32(v26, vnegq_f32(vdupq_laneq_s32(v5[v18 + 3], 3))).f32[0]));
          v30 = &v7[v18];
          *v30 = vaddq_f32(v6[v18], vmulq_n_f32(v6[v18], vmulq_f32(v26, vnegq_f32(vdupq_laneq_s32(v5[v18], 3))).f32[0]));
          v30[1] = v27;
          v19 += 4;
          v18 += 4;
          v30[2] = v28;
          v30[3] = v29;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v31 = *v23++;
            LODWORD(v32) = vmulq_laneq_f32(vnegq_f32(vdupq_laneq_s32(v31, 3)), *a2, 3).u32[0];
            v33 = *v24++;
            *v25++ = vaddq_f32(v33, vmulq_n_f32(v33, v32));
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendSilhouetteLumaTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 10);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 22);
    v10 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v62 = 0;
        v63 = 16 * v10;
        v64 = 16 * v9;
        v65 = 16 * v8;
        v66 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v67 = 0;
          do
          {
            v68 = v5[v67 / 0x10];
            v69 = vmaxq_f32(vdupq_laneq_s32(v68, 3), a2[6]);
            v70 = vmulq_f32(vrecpeq_f32(v69), a2[7]);
            v71 = vmulq_f32(a2[88], vmulq_f32(*a2, vmulq_f32(v68, vmulq_f32(v70, vrecpsq_f32(v70, v69)))));
            v7[v67 / 0x10] = vmulq_n_f32(v6[v67 / 0x10], vsubq_f32(a2[29], vminq_f32(vmaxq_f32(vaddq_f32(vextq_s8(v71, v71, 8uLL), vaddq_f32(v71, vrev64q_s32(v71))), a2[32]), a2[29])).f32[0]);
            v67 += 16;
          }

          while (v66 != v67);
          ++v62;
          v5 = (v5 + v63);
          v6 = (v6 + v64);
          v7 = (v7 + v65);
        }

        while (v62 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v5[v18];
          v24 = v5[v18 + 1];
          v25 = v5[v18 + 2];
          v26 = v5[v18 + 3];
          v27 = v22;
          v28 = v21;
          v29 = a2[6];
          v30 = a2[7];
          v31 = vmaxq_f32(vdupq_laneq_s32(v23, 3), v29);
          v32 = vmaxq_f32(vdupq_laneq_s32(v24, 3), v29);
          v33 = vmaxq_f32(vdupq_laneq_s32(v25, 3), v29);
          v34 = vmaxq_f32(vdupq_laneq_s32(v26, 3), v29);
          v35 = vmulq_f32(vrecpeq_f32(v31), v30);
          v36 = vmulq_f32(vrecpeq_f32(v32), v30);
          v37 = vmulq_f32(vrecpeq_f32(v33), v30);
          v38 = vmulq_f32(vrecpeq_f32(v34), v30);
          v39 = vmulq_f32(vmulq_f32(v23, vmulq_f32(v35, vrecpsq_f32(v35, v31))), *a2);
          v40 = a2[88];
          v41 = vmulq_f32(v39, v40);
          v42 = vmulq_f32(vmulq_f32(vmulq_f32(v24, vmulq_f32(v36, vrecpsq_f32(v36, v32))), *a2), v40);
          v43 = vmulq_f32(vmulq_f32(vmulq_f32(v25, vmulq_f32(v37, vrecpsq_f32(v37, v33))), *a2), v40);
          v44 = vmulq_f32(v40, vmulq_f32(*a2, vmulq_f32(v26, vmulq_f32(v38, vrecpsq_f32(v38, v34)))));
          v45 = a2[32];
          v46 = vmaxq_f32(vaddq_f32(vextq_s8(v41, v41, 8uLL), vaddq_f32(v41, vrev64q_s32(v41))), v45);
          v47 = vmaxq_f32(vaddq_f32(vextq_s8(v42, v42, 8uLL), vaddq_f32(v42, vrev64q_s32(v42))), v45);
          v48 = vmaxq_f32(vaddq_f32(vextq_s8(v43, v43, 8uLL), vaddq_f32(v43, vrev64q_s32(v43))), v45);
          v49 = vmaxq_f32(vaddq_f32(vextq_s8(v44, v44, 8uLL), vaddq_f32(v44, vrev64q_s32(v44))), v45);
          v50 = a2[29];
          v51 = v20;
          v52 = vmulq_n_f32(v6[v18], vsubq_f32(v50, vminq_f32(v46, v50)).f32[0]);
          v53 = vmulq_n_f32(v6[v18 + 1], vsubq_f32(v50, vminq_f32(v47, v50)).f32[0]);
          v54 = vmulq_n_f32(v6[v18 + 2], vsubq_f32(v50, vminq_f32(v48, v50)).f32[0]);
          v55 = vmulq_n_f32(v6[v18 + 3], vsubq_f32(v50, vminq_f32(v49, v50)).f32[0]);
          v56 = &v7[v18];
          v19 += 4;
          v18 += 4;
          *v56 = v52;
          v56[1] = v53;
          v56[2] = v54;
          v56[3] = v55;
          v22 += 4;
          v21 += 4;
          v20 = v51 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v57 = *v27++;
            v58 = vmaxq_f32(vdupq_laneq_s32(v57, 3), a2[6]);
            v59 = vmulq_f32(vrecpeq_f32(v58), a2[7]);
            v60 = vmulq_f32(a2[88], vmulq_f32(*a2, vmulq_f32(v57, vmulq_f32(v59, vrecpsq_f32(v59, v58)))));
            v61 = *v28++;
            *v51++ = vmulq_n_f32(v61, vsubq_f32(a2[29], vminq_f32(vmaxq_f32(vaddq_f32(vextq_s8(v60, v60, 8uLL), vaddq_f32(v60, vrev64q_s32(v60))), a2[32]), a2[29])).f32[0]);
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendBehindTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v34 = 0;
        v35 = 16 * v10;
        v36 = 16 * v9;
        v37 = 16 * v8;
        v38 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v39 = 0;
          do
          {
            v7[v39 / 0x10] = vaddq_f32(v5[v39 / 0x10], vmulq_f32(vmulq_f32(v6[v39 / 0x10], *a2), vsubq_f32(a2[3], vdupq_laneq_s32(v5[v39 / 0x10], 3))));
            v39 += 16;
          }

          while (v38 != v39);
          ++v34;
          v5 = (v5 + v35);
          v6 = (v6 + v36);
          v7 = (v7 + v37);
        }

        while (v34 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = a2[3];
          v27 = vaddq_f32(v5[v18 + 1], vmulq_f32(vmulq_f32(v6[v18 + 1], *a2), vsubq_f32(v26, vdupq_laneq_s32(v5[v18 + 1], 3))));
          v28 = vaddq_f32(v5[v18 + 2], vmulq_f32(vmulq_f32(v6[v18 + 2], *a2), vsubq_f32(v26, vdupq_laneq_s32(v5[v18 + 2], 3))));
          v29 = vaddq_f32(v5[v18 + 3], vmulq_f32(vmulq_f32(v6[v18 + 3], *a2), vsubq_f32(v26, vdupq_laneq_s32(v5[v18 + 3], 3))));
          v30 = &v7[v18];
          *v30 = vaddq_f32(v5[v18], vmulq_f32(vmulq_f32(v6[v18], *a2), vsubq_f32(v26, vdupq_laneq_s32(v5[v18], 3))));
          v30[1] = v27;
          v19 += 4;
          v18 += 4;
          v30[2] = v28;
          v30[3] = v29;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v31 = *v23++;
            v32 = v31;
            v33 = *v24++;
            *v25++ = vaddq_f32(v32, vmulq_f32(vmulq_f32(v33, *a2), vsubq_f32(a2[3], vdupq_laneq_s32(v32, 3))));
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendAlphaAddTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 10);
    v6 = *(a1 + 12);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 26);
    v10 = *(a1 + 22);
    if (v4 < 3)
    {
      if (v4 >= 1)
      {
        v71 = 0;
        v72 = 16 * v10;
        v73 = 16 * v9;
        v74 = 16 * v8;
        v75 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v76 = 0;
          do
          {
            v77 = v5[v76 / 0x10];
            v78 = vmulq_f32(v6[v76 / 0x10], *a2);
            v79 = vmaxq_f32(vdupq_laneq_s32(v77, 3), *(a2 + 6));
            v80 = vmulq_f32(vrecpeq_f32(v79), *(a2 + 7));
            v81 = vmulq_f32(v77, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v80, vrecpsq_f32(v80, v79))), *(a2 + 32)));
            v7[v76 / 0x10] = vbslq_s8(*(a2 + 5), vminq_f32(vmaxq_f32(vaddq_f32(v78, v81), *(a2 + 88)), *(a2 + 86)), vaddq_f32(v78, vmulq_f32(vminq_f32(vdupq_laneq_s32(v81, 3), vdupq_lane_s32(*&vsubq_f32(*(a2 + 29), vdupq_laneq_s32(v78, 3)), 0)), v81)));
            v76 += 16;
          }

          while (v75 != v76);
          ++v71;
          v5 = (v5 + v72);
          v6 = (v6 + v73);
          v7 = (v7 + v74);
        }

        while (v71 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 3;
      v16 = v6 + 3;
      v17 = v7 + 3;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = 3;
        v21 = v17;
        v22 = v16;
        v23 = v15;
        do
        {
          v24 = v23;
          v25 = v22;
          v26 = v21;
          v27 = v20;
          v28 = v5[v18];
          v29 = v5[v18 + 1];
          v30 = v5[v18 + 2];
          v31 = vmulq_f32(v6[v18], *a2);
          v32 = vmulq_f32(v6[v18 + 1], *a2);
          v33 = *(a2 + 29);
          v34 = vmulq_f32(v6[v18 + 2], *a2);
          v36 = *(a2 + 5);
          v35 = *(a2 + 6);
          v37 = vmaxq_f32(vdupq_laneq_s32(v28, 3), v35);
          v38 = vmaxq_f32(vdupq_laneq_s32(v29, 3), v35);
          v39 = vmaxq_f32(vdupq_laneq_s32(v30, 3), v35);
          v40 = *(a2 + 7);
          v41 = vmulq_f32(vrecpeq_f32(v37), v40);
          v42 = vmulq_f32(vrecpeq_f32(v38), v40);
          v43 = vmulq_f32(vrecpeq_f32(v39), v40);
          v44 = vsubq_f32(v33, vdupq_laneq_s32(v32, 3)).u64[0];
          v45 = vmulq_f32(v41, vrecpsq_f32(v41, v37));
          v46 = vmulq_f32(v42, vrecpsq_f32(v42, v38));
          v47 = *(a2 + 31);
          v48 = *(a2 + 32);
          v49 = vmulq_f32(v28, vorrq_s8(vandq_s8(v47, v45), v48));
          v50 = vmulq_f32(v29, vorrq_s8(vandq_s8(v47, v46), v48));
          v51 = vmulq_f32(v30, vorrq_s8(vandq_s8(v47, vmulq_f32(v43, vrecpsq_f32(v43, v39))), v48));
          v52 = vaddq_f32(v31, vmulq_f32(vminq_f32(vdupq_laneq_s32(v49, 3), vdupq_lane_s32(*&vsubq_f32(v33, vdupq_laneq_s32(v31, 3)), 0)), v49));
          v53 = vmulq_f32(v51, vminq_f32(vdupq_laneq_s32(v51, 3), vdupq_lane_s32(*&vsubq_f32(v33, vdupq_laneq_s32(v34, 3)), 0)));
          v54 = vaddq_f32(v31, v49);
          v55 = vaddq_f32(v32, v50);
          v56 = vaddq_f32(v32, vmulq_f32(v50, vminq_f32(vdupq_laneq_s32(v50, 3), vdupq_lane_s32(v44, 0))));
          v57 = vaddq_f32(v34, v51);
          v58 = *(a2 + 88);
          v59 = vmaxq_f32(v54, v58);
          v60 = vmaxq_f32(v55, v58);
          v61 = vmaxq_f32(v57, v58);
          v62 = *(a2 + 86);
          v63 = &v7[v18];
          v19 += 3;
          v18 += 3;
          v23 += 3;
          *v63 = vbslq_s8(v36, vminq_f32(v59, v62), v52);
          v63[1] = vbslq_s8(v36, vminq_f32(v60, v62), v56);
          v63[2] = vbslq_s8(v36, vminq_f32(v61, v62), vaddq_f32(v34, v53));
          v22 += 3;
          v21 += 3;
          v20 = v27 + 3;
        }

        while (v19 < v4 - 2);
        if (v4 > v19)
        {
          do
          {
            v64 = *v24++;
            v65 = v64;
            v66 = *v25++;
            v67 = vmulq_f32(v66, *a2);
            v68 = vmaxq_f32(vdupq_laneq_s32(v65, 3), *(a2 + 6));
            v69 = vmulq_f32(vrecpeq_f32(v68), *(a2 + 7));
            v70 = vmulq_f32(v65, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v69, vrecpsq_f32(v69, v68))), *(a2 + 32)));
            *v26++ = vbslq_s8(*(a2 + 5), vminq_f32(vmaxq_f32(vaddq_f32(v67, v70), *(a2 + 88)), *(a2 + 86)), vaddq_f32(v67, vmulq_f32(vminq_f32(vdupq_laneq_s32(v70, 3), vdupq_lane_s32(*&vsubq_f32(*(a2 + 29), vdupq_laneq_s32(v67, 3)), 0)), v70)));
            ++v27;
          }

          while (v4 > v27);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendLuminescentPremulTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 10);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 22);
    v10 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v64 = 0;
        v65 = 16 * v10;
        v66 = 16 * v9;
        v67 = 16 * v8;
        v68 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v69 = 0;
          do
          {
            v70 = vmulq_f32(v5[v69 / 0x10], *a2);
            v71 = vdupq_laneq_s32(v70, 3);
            v72 = vmaxq_f32(v71, *(a2 + 6));
            v73 = vmulq_f32(vrecpeq_f32(v72), *(a2 + 7));
            v7[v69 / 0x10] = vaddq_f32(vmulq_f32(v70, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v73, vrecpsq_f32(v73, v72))), *(a2 + 32))), vmulq_n_f32(v6[v69 / 0x10], vsubq_f32(*(a2 + 29), v71).f32[0]));
            v69 += 16;
          }

          while (v68 != v69);
          ++v64;
          v5 = (v5 + v65);
          v6 = (v6 + v66);
          v7 = (v7 + v67);
        }

        while (v64 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = vmulq_f32(v5[v18], *a2);
          v25 = vmulq_f32(v5[v18 + 1], *a2);
          v26 = vmulq_f32(v5[v18 + 2], *a2);
          v27 = vdupq_laneq_s32(v24, 3);
          v28 = vdupq_laneq_s32(v25, 3);
          v29 = vmulq_f32(v5[v18 + 3], *a2);
          v30 = vdupq_laneq_s32(v26, 3);
          v31 = vdupq_laneq_s32(v29, 3);
          v32 = v21;
          v33 = v20;
          v34 = *(a2 + 6);
          v35 = *(a2 + 7);
          v36 = vmaxq_f32(v27, v34);
          v37 = vmaxq_f32(v28, v34);
          v38 = vmaxq_f32(v30, v34);
          v39 = vmaxq_f32(v31, v34);
          v40 = vmulq_f32(vrecpeq_f32(v36), v35);
          v41 = vmulq_f32(vrecpeq_f32(v37), v35);
          v42 = vmulq_f32(vrecpeq_f32(v38), v35);
          v43 = vmulq_f32(vrecpeq_f32(v39), v35);
          v44 = vmulq_f32(v40, vrecpsq_f32(v40, v36));
          v45 = vmulq_f32(v43, vrecpsq_f32(v43, v39));
          v47 = *(a2 + 31);
          v46 = *(a2 + 32);
          v48 = vorrq_s8(vandq_s8(v47, vmulq_f32(v41, vrecpsq_f32(v41, v37))), v46);
          v49 = vorrq_s8(vandq_s8(v47, vmulq_f32(v42, vrecpsq_f32(v42, v38))), v46);
          v50 = vorrq_s8(vandq_s8(v47, v45), v46);
          v51 = vmulq_f32(v24, vorrq_s8(vandq_s8(v47, v44), v46));
          v52 = *(a2 + 29);
          v53 = vaddq_f32(v51, vmulq_n_f32(v6[v18], vsubq_f32(v52, v27).f32[0]));
          v54 = vaddq_f32(vmulq_f32(v25, v48), vmulq_n_f32(v6[v18 + 1], vsubq_f32(v52, v28).f32[0]));
          v55 = vaddq_f32(vmulq_f32(v26, v49), vmulq_n_f32(v6[v18 + 2], vsubq_f32(v52, v30).f32[0]));
          v56 = vaddq_f32(vmulq_f32(v29, v50), vmulq_n_f32(v6[v18 + 3], vsubq_f32(v52, v31).f32[0]));
          v57 = &v7[v18];
          v19 += 4;
          v18 += 4;
          *v57 = v53;
          v57[1] = v54;
          v57[2] = v55;
          v57[3] = v56;
          v22 += 4;
          v21 += 4;
          v20 = v33 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v58 = *v23++;
            v59 = vmulq_f32(v58, *a2);
            v60 = vdupq_laneq_s32(v59, 3);
            v61 = vmaxq_f32(v60, *(a2 + 6));
            v62 = vmulq_f32(vrecpeq_f32(v61), *(a2 + 7));
            v63 = *v32++;
            *v33++ = vaddq_f32(vmulq_f32(v59, vorrq_s8(vandq_s8(*(a2 + 31), vmulq_f32(v62, vrecpsq_f32(v62, v61))), *(a2 + 32))), vmulq_n_f32(v63, vsubq_f32(*(a2 + 29), v60).f32[0]));
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendMinStraightTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 10);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 22);
    v10 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v33 = 0;
        v34 = 16 * v10;
        v35 = 16 * v9;
        v36 = 16 * v8;
        v37 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v38 = 0;
          do
          {
            v7[v38 / 0x10] = vminq_f32(v6[v38 / 0x10], v5[v38 / 0x10]);
            v38 += 16;
          }

          while (v37 != v38);
          ++v33;
          v5 = (v5 + v34);
          v6 = (v6 + v35);
          v7 = (v7 + v36);
        }

        while (v33 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = vminq_f32(v6[v18 + 1], v5[v18 + 1]);
          v27 = vminq_f32(v6[v18 + 2], v5[v18 + 2]);
          v28 = vminq_f32(v6[v18 + 3], v5[v18 + 3]);
          v29 = &v7[v18];
          *v29 = vminq_f32(v6[v18], v5[v18]);
          v29[1] = v26;
          v19 += 4;
          v18 += 4;
          v29[2] = v27;
          v29[3] = v28;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v30 = *v23++;
            v31 = v30;
            v32 = *v24++;
            *v25++ = vminq_f32(v32, v31);
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendMaxStraightTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 10);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 22);
    v10 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v33 = 0;
        v34 = 16 * v10;
        v35 = 16 * v9;
        v36 = 16 * v8;
        v37 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v38 = 0;
          do
          {
            v7[v38 / 0x10] = vmaxq_f32(v6[v38 / 0x10], v5[v38 / 0x10]);
            v38 += 16;
          }

          while (v37 != v38);
          ++v33;
          v5 = (v5 + v34);
          v6 = (v6 + v35);
          v7 = (v7 + v36);
        }

        while (v33 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v26 = vmaxq_f32(v6[v18 + 1], v5[v18 + 1]);
          v27 = vmaxq_f32(v6[v18 + 2], v5[v18 + 2]);
          v28 = vmaxq_f32(v6[v18 + 3], v5[v18 + 3]);
          v29 = &v7[v18];
          *v29 = vmaxq_f32(v6[v18], v5[v18]);
          v29[1] = v26;
          v19 += 4;
          v18 += 4;
          v29[2] = v27;
          v29[3] = v28;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v30 = *v23++;
            v31 = v30;
            v32 = *v24++;
            *v25++ = vmaxq_f32(v32, v31);
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendSubtractStraightTile(HGTile *a1, float32x4_t *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 10);
    v7 = *(a1 + 2);
    v8 = *(a1 + 6);
    v9 = *(a1 + 22);
    v10 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v35 = 0;
        v36 = 16 * v10;
        v37 = 16 * v9;
        v38 = 16 * v8;
        v39 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v40 = 0;
          do
          {
            v7[v40 / 0x10] = vminq_f32(vmaxq_f32(vsubq_f32(v6[v40 / 0x10], v5[v40 / 0x10]), a2[4]), a2[3]);
            v40 += 16;
          }

          while (v39 != v40);
          ++v35;
          v5 = (v5 + v36);
          v6 = (v6 + v37);
          v7 = (v7 + v38);
        }

        while (v35 != v3);
      }
    }

    else
    {
      v11 = 0;
      v12 = 16 * v9;
      v13 = 16 * v8;
      v14 = 16 * v10;
      v15 = v5 + 4;
      v16 = v6 + 4;
      v17 = v7 + 4;
      do
      {
        v18 = 0;
        v19 = 0;
        v20 = v17;
        v21 = v16;
        v22 = v15;
        do
        {
          v23 = v22;
          v24 = v21;
          v25 = v20;
          v27 = a2[3];
          v26 = a2[4];
          v28 = vminq_f32(vmaxq_f32(vsubq_f32(v6[v18 + 1], v5[v18 + 1]), v26), v27);
          v29 = vminq_f32(vmaxq_f32(vsubq_f32(v6[v18 + 2], v5[v18 + 2]), v26), v27);
          v30 = vminq_f32(vmaxq_f32(vsubq_f32(v6[v18 + 3], v5[v18 + 3]), v26), v27);
          v31 = &v7[v18];
          *v31 = vminq_f32(vmaxq_f32(vsubq_f32(v6[v18], v5[v18]), v26), v27);
          v31[1] = v28;
          v19 += 4;
          v18 += 4;
          v31[2] = v29;
          v31[3] = v30;
          v22 += 4;
          v21 += 4;
          v20 = v25 + 4;
        }

        while (v19 < (v4 - 3));
        if (v4 > v19)
        {
          do
          {
            v32 = *v23++;
            v33 = v32;
            v34 = *v24++;
            *v25++ = vminq_f32(vmaxq_f32(vsubq_f32(v34, v33), a2[4]), a2[3]);
            ++v19;
          }

          while (v19 < v4);
        }

        ++v11;
        v6 = (v6 + v12);
        v7 = (v7 + v13);
        v5 = (v5 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
        v17 = (v17 + v13);
      }

      while (v11 != v3);
    }
  }

  return 0;
}

uint64_t GetBlendReplaceTile(HGTile *a1, HGHWBlendFlipped::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = (*(a1 + 2) - *a1);
    v5 = *(a1 + 12);
    v6 = *(a1 + 2);
    v7 = *(a1 + 6);
    v8 = *(a1 + 26);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v25 = 0;
        v26 = 16 * v8;
        v27 = 16 * v7;
        v28 = 16 * (*(a1 + 2) - *a1);
        do
        {
          v29 = 0;
          do
          {
            *(v6 + v29) = *(v5 + v29);
            v29 += 16;
          }

          while (v28 != v29);
          ++v25;
          v5 += v26;
          v6 += v27;
        }

        while (v25 != v3);
      }
    }

    else
    {
      v9 = 0;
      v10 = 16 * v7;
      v11 = 16 * v8;
      v12 = (v5 + 64);
      v13 = (v6 + 64);
      do
      {
        v14 = 0;
        v15 = v13;
        v16 = v12;
        v17 = 32;
        do
        {
          v18 = v16;
          v19 = v15;
          v20 = *(v5 + v17 - 16);
          v21 = *(v5 + v17);
          v22 = *(v5 + v17 + 16);
          v23 = (v6 + v17);
          *(v23 - 2) = *(v5 + v17 - 32);
          *(v23 - 1) = v20;
          v14 += 4;
          *v23 = v21;
          v23[1] = v22;
          v17 += 64;
          v16 += 4;
          v15 = v19 + 4;
        }

        while (v14 < (v4 - 3));
        if (v4 > v14)
        {
          do
          {
            v24 = *v18++;
            *v19++ = v24;
            ++v14;
          }

          while (v14 < v4);
        }

        ++v9;
        v6 += v10;
        v5 += v11;
        v12 = (v12 + v11);
        v13 = (v13 + v10);
      }

      while (v9 != v3);
    }
  }

  return 0;
}

const char *GetBlendNormalProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000037c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = c0.xxxx - r1.wwww;\n    output.color0 = float4(r0)*float4(r2) + float4(r1);\n    return output;\n}\n//MD5=a17166cb:4ae482ef:781fc3b7:6143d1a9\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000352\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = c0.xxxx - r1.wwww;\n    output.color0 = r0*r2 + r1;\n    return output;\n}\n//MD5=72391b35:a8654f9f:aaa4f0df:bd71ee76\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000301\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = c0.xxxx - r1.wwww;\n    gl_FragColor = r0*r2 + r1;\n}\n//MD5=542a3d1f:8a8f31c6:53e2357c:1b7afc62\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendSubtractProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003a2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r1 = r1 + r0;\n    r0 = clamp(r3 - r2, 0.00000h, 1.00000h);\n    r1 = r1 - r2;\n    r1.xyz = r1.xyz - r3.xyz;\n    output.color0 = float4(r1) + float4(r0);\n    return output;\n}\n//MD5=5556c7ef:9907aedc:58ff1d84:51fc5242\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000037e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r1 = r1 + r0;\n    r0 = clamp(r3 - r2, 0.00000f, 1.00000f);\n    r1 = r1 - r2;\n    r1.xyz = r1.xyz - r3.xyz;\n    output.color0 = r1 + r0;\n    return output;\n}\n//MD5=eb3b3781:87b777cb:53a6f193:08ae603e\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000332\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r1 = r1 + r0;\n    r0 = clamp(r3 - r2, vec4(0.00000), vec4(1.00000));\n    r1 = r1 - r2;\n    r1.xyz = r1.xyz - r3.xyz;\n    gl_FragColor = r1 + r0;\n}\n//MD5=254c5683:f5388fc5:b71b3a31:31a6659c\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendSubtractPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000525\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, half3(hg_Params[1].xyz));\n    r1.xyz = clamp(r1.xyz - r4.xyz, 0.00000h, 1.00000h);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[2].xyz));\n    r1.w = c0.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=034ccae4:2e639f3d:9ea960d6:10ce456c\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004e6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, hg_Params[1].xyz);\n    r1.xyz = clamp(r1.xyz - r4.xyz, 0.00000f, 1.00000f);\n    r1.xyz = pow(r1.xyz, hg_Params[2].xyz);\n    r1.w = c0.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=ae2c251d:13023d9b:095473c3:7353733d\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004f0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = max(r3.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, hg_ProgramLocal1.xyz);\n    r1.xyz = clamp(r1.xyz - r4.xyz, vec3(0.00000), vec3(1.00000));\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal2.xyz);\n    r1.w = c0.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=84dc302c:232db03c:dcab2955:8389158c\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendSubtractQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000589\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 1.955999970);\n    const half4 c1 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = fmin(r4.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r1.xyz = clamp(r1.xyz - r4.xyz, 0.00000h, 1.00000h);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r1.w = c1.w;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=e6045bc0:ce073225:cd26248f:d1cec9f3\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000561\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 1.955999970);\n    const float4 c1 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = fmin(r4.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r1.xyz = clamp(r1.xyz - r4.xyz, 0.00000f, 1.00000f);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r1.w = c1.w;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=e5cd0c1d:31c65fb7:fa29cf4f:c5e5698b\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000513\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 1.955999970);\n    const mediump vec4 c1 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = max(r3.xyz, c0.xxx);\n    r4.xyz = min(r4.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r1.xyz = clamp(r1.xyz - r4.xyz, vec3(0.00000), vec3(1.00000));\n    r1.xyz = pow(r1.xyz, c0.www);\n    r1.w = c1.w;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=02349a7c:fed5d8f9:e2fcbb52:0a45f6f4\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendDarkenProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000384\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = fmin(r2, r3);\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1 = r1 - r3;\n    output.color0 = float4(r1) + float4(r4);\n    return output;\n}\n//MD5=c27f10d4:1c0c8ccb:86556908:22917918\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000360\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = fmin(r2, r3);\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1 = r1 - r3;\n    output.color0 = r1 + r4;\n    return output;\n}\n//MD5=fdd9d0ee:dddc8b61:10b27a4f:f7a7aa8e\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000309\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = min(r2, r3);\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1 = r1 - r3;\n    gl_FragColor = r1 + r4;\n}\n//MD5=c6b1e65f:1950bd8f:9345f58d:ea3a6afc\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendMultiplyProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000354\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = -r1*r0.wwww + r1;\n    r3 = -r0*r1.wwww + r0;\n    r0 = r1*r0 + r2;\n    output.color0 = float4(r0) + float4(r3);\n    return output;\n}\n//MD5=2db727f4:10641e46:bf7ee213:c988baf5\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000330\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = -r1*r0.wwww + r1;\n    r3 = -r0*r1.wwww + r0;\n    r0 = r1*r0 + r2;\n    output.color0 = r0 + r3;\n    return output;\n}\n//MD5=c5063fff:bf9e290b:1a9bab81:f35d0dd5\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002da\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = -r1*r0.wwww + r1;\n    r3 = -r0*r1.wwww + r0;\n    r0 = r1*r0 + r2;\n    gl_FragColor = r0 + r3;\n}\n//MD5=af7494ed:87347fbf:050c93a0:b950cd3d\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendColorBurnProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000627\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(9.999999717e-10, 0.000000000, 1.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r2.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r0.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = r1.xyz / fmax(r1.w, 6.10350e-05h);\n    r4.xyz = half3(r2.xyz == c0.yyy);\n    r5.xyz = r4.xyz;\n    r6.xyz = half3(r3.xyz == c0.zzz);\n    r6.xyz = fmin(r4.xyz, r6.xyz);\n    r3.xyz = c0.zzz - r3.xyz;\n    r0.xyz = r3.xyz/r0.xyz;\n    r0.xyz = fmin(r0.xyz, c0.zzz);\n    r4.xyz = c0.zzz - r0.xyz;\n    r0.xyz = half3(c0.yyy < r2.xyz);\n    r0.xyz = r0.xyz*r4.xyz;\n    r0.xyz = select(c0.yyy, r0.xyz, -r0.www < 0.00000h);\n    r0.xyz = select(r0.xyz, c0.yyy, -r5.xyz < 0.00000h);\n    r0.xyz = select(r0.xyz, c0.zzz, -r6.xyz < 0.00000h);\n    r2.w = c0.z;\n    r2.xyz = mix(r2.xyz, r0.xyz, r1.www);\n    output.color0 = mix(float4(r1), float4(r2), float4(r0.wwww));\n    return output;\n}\n//MD5=e3b571e8:4940a7ed:ce51028e:9c72262e\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000600\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(9.999999717e-10, 0.000000000, 1.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r2.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r0.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = r1.xyz / fmax(r1.w, 1.00000e-06f);\n    r4.xyz = float3(r2.xyz == c0.yyy);\n    r5.xyz = r4.xyz;\n    r6.xyz = float3(r3.xyz == c0.zzz);\n    r6.xyz = fmin(r4.xyz, r6.xyz);\n    r3.xyz = c0.zzz - r3.xyz;\n    r0.xyz = r3.xyz/r0.xyz;\n    r0.xyz = fmin(r0.xyz, c0.zzz);\n    r4.xyz = c0.zzz - r0.xyz;\n    r0.xyz = float3(c0.yyy < r2.xyz);\n    r0.xyz = r0.xyz*r4.xyz;\n    r0.xyz = select(c0.yyy, r0.xyz, -r0.www < 0.00000f);\n    r0.xyz = select(r0.xyz, c0.yyy, -r5.xyz < 0.00000f);\n    r0.xyz = select(r0.xyz, c0.zzz, -r6.xyz < 0.00000f);\n    r2.w = c0.z;\n    r2.xyz = mix(r2.xyz, r0.xyz, r1.www);\n    output.color0 = mix(r1, r2, r0.wwww);\n    return output;\n}\n//MD5=5b37b40a:6c2b9bdc:4847a80f:c21ea799\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000657\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(9.999999717e-10, 0.000000000, 1.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r2.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r0.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = r1.xyz / max(r1.w, 1.00000e-06);\n    r4.xyz = vec3(equal(r2.xyz, c0.yyy));\n    r5.xyz = r4.xyz;\n    r6.xyz = vec3(equal(r3.xyz, c0.zzz));\n    r6.xyz = min(r4.xyz, r6.xyz);\n    r3.xyz = c0.zzz - r3.xyz;\n    r0.xyz = r3.xyz/r0.xyz;\n    r0.xyz = min(r0.xyz, c0.zzz);\n    r4.xyz = c0.zzz - r0.xyz;\n    r0.xyz = vec3(lessThan(c0.yyy, r2.xyz));\n    r0.xyz = r0.xyz*r4.xyz;\n    r0.xyz = vec3(-r0.w < 0.00000 ? r0.x : c0.y, -r0.w < 0.00000 ? r0.y : c0.y, -r0.w < 0.00000 ? r0.z : c0.y);\n    r0.xyz = vec3(-r5.x < 0.00000 ? c0.y : r0.x, -r5.y < 0.00000 ? c0.y : r0.y, -r5.z < 0.00000 ? c0.y : r0.z);\n    r0.xyz = vec3(-r6.x < 0.00000 ? c0.z : r0.x, -r6.y < 0.00000 ? c0.z : r0.y, -r6.z < 0.00000 ? c0.z : r0.z);\n    r2.w = c0.z;\n    r2.xyz = mix(r2.xyz, r0.xyz, r1.www);\n    gl_FragColor = mix(r1, r2, r0.wwww);\n}\n//MD5=46eb5a7d:62f64092:72a1ef9e:d5f944bf\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendColorBurnPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000617\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 9.999999717e-10, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r2.xyz = pow(r3.xyz, half3(hg_Params[1].xyz));\n    r4.xyz = c0.yyy - r1.xyz;\n    r5.xyz = fmax(r2.xyz, c0.zzz);\n    r4.xyz = r4.xyz/r5.xyz;\n    r4.xyz = fmin(r4.xyz, c0.yyy);\n    r4.xyz = c0.yyy - r4.xyz;\n    r5.xyz = half3(r2.xyz <= c0.zzz);\n    r1.xyz = half3(r1.xyz >= c0.yyy);\n    r2.xyz = select(r4.xyz, r1.xyz, -r5.xyz < 0.00000h);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[2].xyz));\n    r3.w = c0.y;\n    r3.xyz = mix(r3.xyz, r2.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=570d76cb:990c55a1:9dbbc68d:b1868c41\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005da\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 9.999999717e-10, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r2.xyz = pow(r3.xyz, hg_Params[1].xyz);\n    r4.xyz = c0.yyy - r1.xyz;\n    r5.xyz = fmax(r2.xyz, c0.zzz);\n    r4.xyz = r4.xyz/r5.xyz;\n    r4.xyz = fmin(r4.xyz, c0.yyy);\n    r4.xyz = c0.yyy - r4.xyz;\n    r5.xyz = float3(r2.xyz <= c0.zzz);\n    r1.xyz = float3(r1.xyz >= c0.yyy);\n    r2.xyz = select(r4.xyz, r1.xyz, -r5.xyz < 0.00000f);\n    r2.xyz = pow(r2.xyz, hg_Params[2].xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r3.xyz, r2.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=94e0ae90:7e6a7b2c:b8290b58:4acf0b3c\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000628\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 9.999999717e-10, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r3.xyz = max(r3.xyz, c0.xxx);\n    r2.xyz = pow(r3.xyz, hg_ProgramLocal1.xyz);\n    r4.xyz = c0.yyy - r1.xyz;\n    r5.xyz = max(r2.xyz, c0.zzz);\n    r4.xyz = r4.xyz/r5.xyz;\n    r4.xyz = min(r4.xyz, c0.yyy);\n    r4.xyz = c0.yyy - r4.xyz;\n    r5.xyz = vec3(lessThanEqual(r2.xyz, c0.zzz));\n    r1.xyz = vec3(greaterThanEqual(r1.xyz, c0.yyy));\n    r2.xyz = vec3(-r5.x < 0.00000 ? r1.x : r4.x, -r5.y < 0.00000 ? r1.y : r4.y, -r5.z < 0.00000 ? r1.z : r4.z);\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal2.xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r3.xyz, r2.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=b8b6f47a:39f7acf9:ab910287:9769e876\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendColorBurnQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000006eb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const half4 c1 = half4(9.999999717e-10, 1.149999976, 1.955999970, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = fmin(r3.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r2.xyz = r4.xyz;\n    r4.xyz = c0.www - r1.xyz;\n    r5.xyz = fmax(r2.xyz, c1.xxx);\n    r4.xyz = r4.xyz/r5.xyz;\n    r4.xyz = fmin(r4.xyz, c0.www);\n    r4.xyz = c0.www - r4.xyz;\n    r5.xyz = half3(r2.xyz <= c1.xxx);\n    r1.xyz = half3(r1.xyz >= c0.www);\n    r2.xyz = select(r4.xyz, r1.xyz, -r5.xyz < 0.00000h);\n    r5.xyz = fmax(r2.xyz, c0.xxx);\n    r5.xyz = fmin(r5.xyz, c1.yyy);\n    r5.xyz = pow(r5.xyz, c1.zzz);\n    r2.xyz = r5.xyz;\n    r3.w = c0.w;\n    r3.xyz = mix(r3.xyz, r2.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=b24af1d8:c66873ac:1ac9e078:474f68f7\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000006c5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const float4 c1 = float4(9.999999717e-10, 1.149999976, 1.955999970, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = fmin(r3.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r2.xyz = r4.xyz;\n    r4.xyz = c0.www - r1.xyz;\n    r5.xyz = fmax(r2.xyz, c1.xxx);\n    r4.xyz = r4.xyz/r5.xyz;\n    r4.xyz = fmin(r4.xyz, c0.www);\n    r4.xyz = c0.www - r4.xyz;\n    r5.xyz = float3(r2.xyz <= c1.xxx);\n    r1.xyz = float3(r1.xyz >= c0.www);\n    r2.xyz = select(r4.xyz, r1.xyz, -r5.xyz < 0.00000f);\n    r5.xyz = fmax(r2.xyz, c0.xxx);\n    r5.xyz = fmin(r5.xyz, c1.yyy);\n    r5.xyz = pow(r5.xyz, c1.zzz);\n    r2.xyz = r5.xyz;\n    r3.w = c0.w;\n    r3.xyz = mix(r3.xyz, r2.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=a6e59c7c:6e77db2c:beaf9e2c:7f713442\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006b9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const mediump vec4 c1 = vec4(9.999999717e-10, 1.149999976, 1.955999970, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r3.xyz = max(r3.xyz, c0.xxx);\n    r4.xyz = min(r3.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r2.xyz = r4.xyz;\n    r4.xyz = c0.www - r1.xyz;\n    r5.xyz = max(r2.xyz, c1.xxx);\n    r4.xyz = r4.xyz/r5.xyz;\n    r4.xyz = min(r4.xyz, c0.www);\n    r4.xyz = c0.www - r4.xyz;\n    r5.xyz = vec3(lessThanEqual(r2.xyz, c1.xxx));\n    r1.xyz = vec3(greaterThanEqual(r1.xyz, c0.www));\n    r2.xyz = vec3(-r5.x < 0.00000 ? r1.x : r4.x, -r5.y < 0.00000 ? r1.y : r4.y, -r5.z < 0.00000 ? r1.z : r4.z);\n    r5.xyz = max(r2.xyz, c0.xxx);\n    r5.xyz = min(r5.xyz, c1.yyy);\n    r5.xyz = pow(r5.xyz, c1.zzz);\n    r2.xyz = r5.xyz;\n    r3.w = c0.w;\n    r3.xyz = mix(r3.xyz, r2.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=d00bfd1e:46e646ab:20a8e4c3:a66a4c56\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLinearBurnProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ba\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = r2 + r3;\n    r4 = clamp(-r0.wwww*r1.wwww + r4, 0.00000h, 1.00000h);\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1 = r1 - r3;\n    output.color0 = float4(r1) + float4(r4);\n    return output;\n}\n//MD5=1e101a38:54591478:d95a8dbd:601ba2c4\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000396\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = r2 + r3;\n    r4 = clamp(-r0.wwww*r1.wwww + r4, 0.00000f, 1.00000f);\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1 = r1 - r3;\n    output.color0 = r1 + r4;\n    return output;\n}\n//MD5=c72365fd:e4bc0949:da522ad9:1b6a1f34\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000034a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = r2 + r3;\n    r4 = clamp(-r0.wwww*r1.wwww + r4, vec4(0.00000), vec4(1.00000));\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1 = r1 - r3;\n    gl_FragColor = r1 + r4;\n}\n//MD5=9d2b7873:452b0865:aacc462f:f22ff194\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLinearBurnPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000544\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[1].xyz));\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = clamp(r3.xyz - c0.yyy, 0.00000h, 1.00000h);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[2].xyz));\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=a9713799:756f6449:5191fac6:7e9abec6\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000506\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_Params[1].xyz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = clamp(r3.xyz - c0.yyy, 0.00000f, 1.00000f);\n    r3.xyz = pow(r3.xyz, hg_Params[2].xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=42e95b47:a261d26c:4fe538a3:da7f5eaa\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000050e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal1.xyz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = clamp(r3.xyz - c0.yyy, vec3(0.00000), vec3(1.00000));\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal2.xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=0e9a47db:8ccb5db8:82974fe5:1f953a2d\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLinearBurnQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005a8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const half4 c1 = half4(1.955999970, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = clamp(r3.xyz - c0.www, 0.00000h, 1.00000h);\n    r3.xyz = pow(r3.xyz, c1.xxx);\n    r3.w = c0.w;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=ea3b487e:9feeec33:989fec51:af7bdd13\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000581\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const float4 c1 = float4(1.955999970, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = clamp(r3.xyz - c0.www, 0.00000f, 1.00000f);\n    r3.xyz = pow(r3.xyz, c1.xxx);\n    r3.w = c0.w;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=767767e7:fa948aa9:bec4bb27:9a9ec375\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000531\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const mediump vec4 c1 = vec4(1.955999970, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = min(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = clamp(r3.xyz - c0.www, vec3(0.00000), vec3(1.00000));\n    r3.xyz = pow(r3.xyz, c1.xxx);\n    r3.w = c0.w;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=97f98cb2:abd3d476:86b68c1d:f9f6d488\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendAddProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000367\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r2.x = r0.w + r1.w;\n    output.color0.xyz = float3(r0.xyz) + float3(r1.xyz);\n    output.color0.w = -float(r0.w)*float(r1.w) + float(r2.x);\n    return output;\n}\n//MD5=1077a5d1:4400e12a:074ef54d:d15010d2\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000032e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0*hg_Params[0];\n    r2.x = r0.w + r1.w;\n    output.color0.xyz = r0.xyz + r1.xyz;\n    output.color0.w = -r0.w*r1.w + r2.x;\n    return output;\n}\n//MD5=bebc6a57:5f9c4eeb:0ea65bab:3d4908ab\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002d7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r2.x = r0.w + r1.w;\n    gl_FragColor.xyz = r0.xyz + r1.xyz;\n    gl_FragColor.w = -r0.w*r1.w + r2.x;\n}\n//MD5=67b2e44f:8950f5a2:c10a502c:ed08d97b\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLightenProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000384\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = fmax(r2, r3);\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1 = r1 - r3;\n    output.color0 = float4(r1) + float4(r4);\n    return output;\n}\n//MD5=255abd10:393d4261:149de1f9:66e2ba1d\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000360\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = fmax(r2, r3);\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1 = r1 - r3;\n    output.color0 = r1 + r4;\n    return output;\n}\n//MD5=a08d3b39:c090c511:0017968a:c922b48e\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000309\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = max(r2, r3);\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1 = r1 - r3;\n    gl_FragColor = r1 + r4;\n}\n//MD5=10f025ae:65373697:69030409:e5173d3b\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendScreenProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000355\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = r1*r0;\n    r2 = fmin(r2, r1);\n    r2 = fmin(r2, r0);\n    r1 = r1 + r0;\n    output.color0 = float4(r1) - float4(r2);\n    return output;\n}\n//MD5=9771d01d:626a2747:a548b6f1:28e1d417\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000331\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = r1*r0;\n    r2 = fmin(r2, r1);\n    r2 = fmin(r2, r0);\n    r1 = r1 + r0;\n    output.color0 = r1 - r2;\n    return output;\n}\n//MD5=31490d41:d9f1dc14:0dca0a9a:b384361c\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002d9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = r1*r0;\n    r2 = min(r2, r1);\n    r2 = min(r2, r0);\n    r1 = r1 + r0;\n    gl_FragColor = r1 - r2;\n}\n//MD5=8190ca66:f656822d:4e06b98f:6e1ba269\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendScreenPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000058f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[1].xyz));\n    r4.xyz = r3.xyz*r1.xyz;\n    r4.xyz = fmin(r4.xyz, r3.xyz);\n    r4.xyz = fmin(r4.xyz, r1.xyz);\n    r3.xyz = r3.xyz + r1.xyz;\n    r3.xyz = r3.xyz - r4.xyz;\n    r3.xyz = pow(r3.xyz, half3(hg_Params[2].xyz));\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=9cb777d8:f315bb64:41240f63:eb3a88f5\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000551\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_Params[1].xyz);\n    r4.xyz = r3.xyz*r1.xyz;\n    r4.xyz = fmin(r4.xyz, r3.xyz);\n    r4.xyz = fmin(r4.xyz, r1.xyz);\n    r3.xyz = r3.xyz + r1.xyz;\n    r3.xyz = r3.xyz - r4.xyz;\n    r3.xyz = pow(r3.xyz, hg_Params[2].xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=9eb4b424:300923a1:73d6aee5:2c9b65f1\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000053d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal1.xyz);\n    r4.xyz = r3.xyz*r1.xyz;\n    r4.xyz = min(r4.xyz, r3.xyz);\n    r4.xyz = min(r4.xyz, r1.xyz);\n    r3.xyz = r3.xyz + r1.xyz;\n    r3.xyz = r3.xyz - r4.xyz;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal2.xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=6cd4fd6c:8997112f:cde379a7:0f37f6bd\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendScreenQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000639\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 1.149999976);\n    const half4 c1 = half4(1.955999970, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r4.xyz = r3.xyz*r1.xyz;\n    r4.xyz = fmin(r4.xyz, r3.xyz);\n    r4.xyz = fmin(r4.xyz, r1.xyz);\n    r3.xyz = r3.xyz + r1.xyz;\n    r3.xyz = r3.xyz - r4.xyz;\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.www);\n    r3.xyz = pow(r3.xyz, c1.xxx);\n    r3.w = c1.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=463725cf:d032ea9b:4288667c:a7f0289e\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000612\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 1.149999976);\n    const float4 c1 = float4(1.955999970, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r4.xyz = r3.xyz*r1.xyz;\n    r4.xyz = fmin(r4.xyz, r3.xyz);\n    r4.xyz = fmin(r4.xyz, r1.xyz);\n    r3.xyz = r3.xyz + r1.xyz;\n    r3.xyz = r3.xyz - r4.xyz;\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.www);\n    r3.xyz = pow(r3.xyz, c1.xxx);\n    r3.w = c1.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=5d9e90d5:f3ade941:b5ed64bc:6c6f4219\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005b4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 1.149999976);\n    const mediump vec4 c1 = vec4(1.955999970, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = min(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r4.xyz = r3.xyz*r1.xyz;\n    r4.xyz = min(r4.xyz, r3.xyz);\n    r4.xyz = min(r4.xyz, r1.xyz);\n    r3.xyz = r3.xyz + r1.xyz;\n    r3.xyz = r3.xyz - r4.xyz;\n    r3.xyz = max(r3.xyz, c0.xxx);\n    r3.xyz = min(r3.xyz, c0.www);\n    r3.xyz = pow(r3.xyz, c1.xxx);\n    r3.w = c1.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=1f12d7ed:2832c3f9:864a4c65:58ad5448\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendColorDodgeProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000529\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 9.999999717e-10, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = c0.xxx - r1.xyz;\n    r4.xyz = fmax(r4.xyz, c0.yyy);\n    r4.xyz = r3.xyz/r4.xyz;\n    r4.xyz = fmin(r4.xyz, c0.xxx);\n    r4.xyz = select(c0.zzz, r4.xyz, -r3.xyz < 0.00000h);\n    r3.xyz = half3(r0.xyz >= r0.www);\n    r4.xyz = select(r4.xyz, c0.xxx, -r3.xyz < 0.00000h);\n    r1.w = c0.x;\n    r1.xyz = mix(r1.xyz, r4.xyz, r2.www);\n    output.color0 = mix(float4(r2), float4(r1), float4(r0.wwww));\n    return output;\n}\n//MD5=eb46fb6d:135380f4:ebc9cb5e:140c4fdd\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000500\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 9.999999717e-10, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = c0.xxx - r1.xyz;\n    r4.xyz = fmax(r4.xyz, c0.yyy);\n    r4.xyz = r3.xyz/r4.xyz;\n    r4.xyz = fmin(r4.xyz, c0.xxx);\n    r4.xyz = select(c0.zzz, r4.xyz, -r3.xyz < 0.00000f);\n    r3.xyz = float3(r0.xyz >= r0.www);\n    r4.xyz = select(r4.xyz, c0.xxx, -r3.xyz < 0.00000f);\n    r1.w = c0.x;\n    r1.xyz = mix(r1.xyz, r4.xyz, r2.www);\n    output.color0 = mix(r2, r1, r0.wwww);\n    return output;\n}\n//MD5=5777bfff:41079900:ca302613:434c6b5b\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000522\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 9.999999717e-10, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = c0.xxx - r1.xyz;\n    r4.xyz = max(r4.xyz, c0.yyy);\n    r4.xyz = r3.xyz/r4.xyz;\n    r4.xyz = min(r4.xyz, c0.xxx);\n    r4.xyz = vec3(-r3.x < 0.00000 ? r4.x : c0.z, -r3.y < 0.00000 ? r4.y : c0.z, -r3.z < 0.00000 ? r4.z : c0.z);\n    r3.xyz = vec3(greaterThanEqual(r0.xyz, r0.www));\n    r4.xyz = vec3(-r3.x < 0.00000 ? c0.x : r4.x, -r3.y < 0.00000 ? c0.x : r4.y, -r3.z < 0.00000 ? c0.x : r4.z);\n    r1.w = c0.x;\n    r1.xyz = mix(r1.xyz, r4.xyz, r2.www);\n    gl_FragColor = mix(r2, r1, r0.wwww);\n}\n//MD5=5d4d2b6e:d26c940d:c6b5f085:80c4d725\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendColorDodgePOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000602\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 9.999999717e-10, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 6.10350e-05h), 0.00000h, 1.00000h);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r3.w = r2.w*half(hg_Params[0].w);\n    r2.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    r4.xyz = pow(r4.xyz, half3(hg_Params[1].xyz));\n    r4.xyz = c0.xxx - r4.xyz;\n    r5.xyz = fmax(r4.xyz, c0.yyy);\n    r5.xyz = r1.xyz/r5.xyz;\n    r5.xyz = fmin(r5.xyz, c0.xxx);\n    r4.xyz = half3(r4.xyz <= c0.yyy);\n    r1.xyz = half3(r1.xyz > c0.zzz);\n    r4.xyz = select(r5.xyz, r1.xyz, -r4.xyz < 0.00000h);\n    r4.xyz = pow(r4.xyz, half3(hg_Params[2].xyz));\n    r1.w = c0.x;\n    r1.xyz = mix(r2.xyz, r4.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r3.wwww));\n    return output;\n}\n//MD5=4848c2c8:05058208:3463283e:ea9b21ca\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005c6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 9.999999717e-10, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 1.00000e-06f), 0.00000f, 1.00000f);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r3.w = r2.w*hg_Params[0].w;\n    r2.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r4.xyz = pow(r4.xyz, hg_Params[1].xyz);\n    r4.xyz = c0.xxx - r4.xyz;\n    r5.xyz = fmax(r4.xyz, c0.yyy);\n    r5.xyz = r1.xyz/r5.xyz;\n    r5.xyz = fmin(r5.xyz, c0.xxx);\n    r4.xyz = float3(r4.xyz <= c0.yyy);\n    r1.xyz = float3(r1.xyz > c0.zzz);\n    r4.xyz = select(r5.xyz, r1.xyz, -r4.xyz < 0.00000f);\n    r4.xyz = pow(r4.xyz, hg_Params[2].xyz);\n    r1.w = c0.x;\n    r1.xyz = mix(r2.xyz, r4.xyz, r0.www);\n    output.color0 = mix(r0, r1, r3.wwww);\n    return output;\n}\n//MD5=823372e4:ca232079:b3360744:b919756b\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000626\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 9.999999717e-10, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = clamp(r0.xyz / max(r0.w, 1.00000e-06), vec3(0.00000), vec3(1.00000));\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r3.w = r2.w*hg_ProgramLocal0.w;\n    r2.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r4.xyz = pow(r4.xyz, hg_ProgramLocal1.xyz);\n    r4.xyz = c0.xxx - r4.xyz;\n    r5.xyz = max(r4.xyz, c0.yyy);\n    r5.xyz = r1.xyz/r5.xyz;\n    r5.xyz = min(r5.xyz, c0.xxx);\n    r4.xyz = vec3(lessThanEqual(r4.xyz, c0.yyy));\n    r1.xyz = vec3(greaterThan(r1.xyz, c0.zzz));\n    r4.xyz = vec3(-r4.x < 0.00000 ? r1.x : r5.x, -r4.y < 0.00000 ? r1.y : r5.y, -r4.z < 0.00000 ? r1.z : r5.z);\n    r4.xyz = pow(r4.xyz, hg_ProgramLocal2.xyz);\n    r1.w = c0.x;\n    r1.xyz = mix(r2.xyz, r4.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r3.wwww);\n}\n//MD5=a6379189:7d4fb9ae:eea59fd4:02257bc6\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendColorDodgeQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000666\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.5109999776, 1.000000000, 9.999999717e-10, 0.000000000);\n    const half4 c1 = half4(1.149999976, 1.955999970, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 6.10350e-05h), 0.00000h, 1.00000h);\n    r1.xyz = pow(r1.xyz, c0.xxx);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r3.w = r2.w*half(hg_Params[0].w);\n    r2.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    r4.xyz = pow(r4.xyz, c0.xxx);\n    r4.xyz = c0.yyy - r4.xyz;\n    r5.xyz = fmax(r4.xyz, c0.zzz);\n    r5.xyz = r1.xyz/r5.xyz;\n    r5.xyz = fmin(r5.xyz, c0.yyy);\n    r4.xyz = half3(r4.xyz <= c0.zzz);\n    r1.xyz = half3(r1.xyz > c0.www);\n    r4.xyz = select(r5.xyz, r1.xyz, -r4.xyz < 0.00000h);\n    r4.xyz = fmax(r4.xyz, c0.www);\n    r4.xyz = fmin(r4.xyz, c1.xxx);\n    r4.xyz = pow(r4.xyz, c1.yyy);\n    r1.w = c0.y;\n    r1.xyz = mix(r2.xyz, r4.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r3.wwww));\n    return output;\n}\n//MD5=a825f080:a4ac046d:ab7fcd15:0e541422\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000641\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.5109999776, 1.000000000, 9.999999717e-10, 0.000000000);\n    const float4 c1 = float4(1.149999976, 1.955999970, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 1.00000e-06f), 0.00000f, 1.00000f);\n    r1.xyz = pow(r1.xyz, c0.xxx);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r3.w = r2.w*hg_Params[0].w;\n    r2.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r4.xyz = pow(r4.xyz, c0.xxx);\n    r4.xyz = c0.yyy - r4.xyz;\n    r5.xyz = fmax(r4.xyz, c0.zzz);\n    r5.xyz = r1.xyz/r5.xyz;\n    r5.xyz = fmin(r5.xyz, c0.yyy);\n    r4.xyz = float3(r4.xyz <= c0.zzz);\n    r1.xyz = float3(r1.xyz > c0.www);\n    r4.xyz = select(r5.xyz, r1.xyz, -r4.xyz < 0.00000f);\n    r4.xyz = fmax(r4.xyz, c0.www);\n    r4.xyz = fmin(r4.xyz, c1.xxx);\n    r4.xyz = pow(r4.xyz, c1.yyy);\n    r1.w = c0.y;\n    r1.xyz = mix(r2.xyz, r4.xyz, r0.www);\n    output.color0 = mix(r0, r1, r3.wwww);\n    return output;\n}\n//MD5=6182d137:41b680cb:e86f79a1:e9c16f93\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000649\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.5109999776, 1.000000000, 9.999999717e-10, 0.000000000);\n    const mediump vec4 c1 = vec4(1.149999976, 1.955999970, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = clamp(r0.xyz / max(r0.w, 1.00000e-06), vec3(0.00000), vec3(1.00000));\n    r1.xyz = pow(r1.xyz, c0.xxx);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r3.w = r2.w*hg_ProgramLocal0.w;\n    r2.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r4.xyz = pow(r4.xyz, c0.xxx);\n    r4.xyz = c0.yyy - r4.xyz;\n    r5.xyz = max(r4.xyz, c0.zzz);\n    r5.xyz = r1.xyz/r5.xyz;\n    r5.xyz = min(r5.xyz, c0.yyy);\n    r4.xyz = vec3(lessThanEqual(r4.xyz, c0.zzz));\n    r1.xyz = vec3(greaterThan(r1.xyz, c0.www));\n    r4.xyz = vec3(-r4.x < 0.00000 ? r1.x : r5.x, -r4.y < 0.00000 ? r1.y : r5.y, -r4.z < 0.00000 ? r1.z : r5.z);\n    r4.xyz = max(r4.xyz, c0.www);\n    r4.xyz = min(r4.xyz, c1.xxx);\n    r4.xyz = pow(r4.xyz, c1.yyy);\n    r1.w = c0.y;\n    r1.xyz = mix(r2.xyz, r4.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r3.wwww);\n}\n//MD5=3331242c:7b9d6b7f:6e61b8e3:31fcd2bf\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLinearDodgeProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r1.xyz = r1.xyz + r2.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.w = c0.x;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=2994a515:9ecc05bf:f2990959:ef67ab18\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000422\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r1.xyz = r1.xyz + r2.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.w = c0.x;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=6c886f95:429aa15c:a9a60901:698f617f\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r1.xyz = r1.xyz + r2.xyz;\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r1.w = c0.x;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=67389797:72f13dd9:f45f9433:860ed739\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLinearDodgePOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000052e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[1].xyz));\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[2].xyz));\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=a575e245:a49bec3a:0ee60d69:989db91e\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004f0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_Params[1].xyz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, hg_Params[2].xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=a0d6d2f0:b1e11a71:8cbc1e87:86e1188c\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004ed\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal1.xyz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = min(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal2.xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=fcc38052:32e620d5:51813cad:d4a108bc\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLinearDodgeQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005b5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const half4 c1 = half4(1.955999970, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = fmin(r3.xyz, c0.www);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, c1.xxx);\n    r3.w = c0.w;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=ac3c62e7:7d110473:b80b8fa2:fc79b15b\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000058e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const float4 c1 = float4(1.955999970, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = fmin(r3.xyz, c0.www);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, c1.xxx);\n    r3.w = c0.w;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=7419b180:053dbc45:003c272d:25ce14a4\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000532\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const mediump vec4 c1 = vec4(1.955999970, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = min(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r3.xyz = r1.xyz + r3.xyz;\n    r3.xyz = min(r3.xyz, c0.www);\n    r3.xyz = max(r3.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, c1.xxx);\n    r3.w = c0.w;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=8a5bfb96:e7b90f62:cae30235:e7c2ce54\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendOverlayProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000050d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(2.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r2.xyz = r1.xyz / fmax(r1.w, 6.10350e-05h);\n    r3.xyz = r2.xyz*r0.xyz;\n    r3.xyz = r3.xyz + r3.xyz;\n    r4.xyz = r2.xyz + r0.xyz;\n    r4.xyz = r4.xyz*c0.xxx + -r3.xyz;\n    r4.xyz = r4.xyz - c0.yyy;\n    r2.xyz = half3(r2.xyz < c0.zzz);\n    r2.xyz = select(r4.xyz, r3.xyz, -r2.xyz < 0.00000h);\n    r2.w = c0.y;\n    r2.xyz = mix(r0.xyz, r2.xyz, r1.www);\n    output.color0 = mix(float4(r1), float4(r2), float4(r0.wwww));\n    return output;\n}\n//MD5=b28e7c1a:e0e82696:bcf63c43:105fbdea\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(2.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r2.xyz = r1.xyz / fmax(r1.w, 1.00000e-06f);\n    r3.xyz = r2.xyz*r0.xyz;\n    r3.xyz = r3.xyz + r3.xyz;\n    r4.xyz = r2.xyz + r0.xyz;\n    r4.xyz = r4.xyz*c0.xxx + -r3.xyz;\n    r4.xyz = r4.xyz - c0.yyy;\n    r2.xyz = float3(r2.xyz < c0.zzz);\n    r2.xyz = select(r4.xyz, r3.xyz, -r2.xyz < 0.00000f);\n    r2.w = c0.y;\n    r2.xyz = mix(r0.xyz, r2.xyz, r1.www);\n    output.color0 = mix(r1, r2, r0.wwww);\n    return output;\n}\n//MD5=9321f93f:7488729d:35a1a22a:a763d105\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004c9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r2.xyz = r1.xyz / max(r1.w, 1.00000e-06);\n    r3.xyz = r2.xyz*r0.xyz;\n    r3.xyz = r3.xyz + r3.xyz;\n    r4.xyz = r2.xyz + r0.xyz;\n    r4.xyz = r4.xyz*c0.xxx + -r3.xyz;\n    r4.xyz = r4.xyz - c0.yyy;\n    r2.xyz = vec3(lessThan(r2.xyz, c0.zzz));\n    r2.xyz = vec3(-r2.x < 0.00000 ? r3.x : r4.x, -r2.y < 0.00000 ? r3.y : r4.y, -r2.z < 0.00000 ? r3.z : r4.z);\n    r2.w = c0.y;\n    r2.xyz = mix(r0.xyz, r2.xyz, r1.www);\n    gl_FragColor = mix(r1, r2, r0.wwww);\n}\n//MD5=ae14c320:17f28241:54485286:f3a00e3c\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendOverlayPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000064f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[1].xyz));\n    r4.xyz = r1.xyz + r1.xyz;\n    r5.xyz = r3.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.yyy;\n    r6.xyz = r4.xyz*r3.xyz;\n    r6.xyz = fmin(r6.xyz, r4.xyz);\n    r6.xyz = fmin(r6.xyz, r3.xyz);\n    r4.xyz = r4.xyz + r3.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r1.xyz = half3(r1.xyz <= c0.zzz);\n    r1.xyz = select(r6.xyz, r5.xyz, -r1.xyz < 0.00000h);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[2].xyz));\n    r1.w = c0.y;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=9f416334:320ea46e:176f3d79:1a759af9\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000612\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_Params[1].xyz);\n    r4.xyz = r1.xyz + r1.xyz;\n    r5.xyz = r3.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.yyy;\n    r6.xyz = r4.xyz*r3.xyz;\n    r6.xyz = fmin(r6.xyz, r4.xyz);\n    r6.xyz = fmin(r6.xyz, r3.xyz);\n    r4.xyz = r4.xyz + r3.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r1.xyz = float3(r1.xyz <= c0.zzz);\n    r1.xyz = select(r6.xyz, r5.xyz, -r1.xyz < 0.00000f);\n    r1.xyz = pow(r1.xyz, hg_Params[2].xyz);\n    r1.w = c0.y;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=8e764b01:1ce75bdd:50cd5d13:7dd1e78f\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000650\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal1.xyz);\n    r4.xyz = r1.xyz + r1.xyz;\n    r5.xyz = r3.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.yyy;\n    r6.xyz = r4.xyz*r3.xyz;\n    r6.xyz = min(r6.xyz, r4.xyz);\n    r6.xyz = min(r6.xyz, r3.xyz);\n    r4.xyz = r4.xyz + r3.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r1.xyz = vec3(lessThanEqual(r1.xyz, c0.zzz));\n    r1.xyz = vec3(-r1.x < 0.00000 ? r5.x : r6.x, -r1.y < 0.00000 ? r5.y : r6.y, -r1.z < 0.00000 ? r5.z : r6.z);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal2.xyz);\n    r1.w = c0.y;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=81e7f4e5:5472836a:28cdb561:e2462c87\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendOverlayQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000006f9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const half4 c1 = half4(0.5000000000, 1.149999976, 1.955999970, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r4.xyz = r1.xyz + r1.xyz;\n    r5.xyz = r3.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.www;\n    r6.xyz = r4.xyz*r3.xyz;\n    r6.xyz = fmin(r6.xyz, r4.xyz);\n    r6.xyz = fmin(r6.xyz, r3.xyz);\n    r4.xyz = r4.xyz + r3.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r1.xyz = half3(r1.xyz <= c1.xxx);\n    r1.xyz = select(r6.xyz, r5.xyz, -r1.xyz < 0.00000h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c1.yyy);\n    r1.xyz = pow(r1.xyz, c1.zzz);\n    r1.w = c0.w;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=6f56df97:801925a4:63241fe7:a14a102e\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000006d3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const float4 c1 = float4(0.5000000000, 1.149999976, 1.955999970, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r4.xyz = r1.xyz + r1.xyz;\n    r5.xyz = r3.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.www;\n    r6.xyz = r4.xyz*r3.xyz;\n    r6.xyz = fmin(r6.xyz, r4.xyz);\n    r6.xyz = fmin(r6.xyz, r3.xyz);\n    r4.xyz = r4.xyz + r3.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r1.xyz = float3(r1.xyz <= c1.xxx);\n    r1.xyz = select(r6.xyz, r5.xyz, -r1.xyz < 0.00000f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c1.yyy);\n    r1.xyz = pow(r1.xyz, c1.zzz);\n    r1.w = c0.w;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=8271038f:3a3334ac:47a554cf:a42b31d8\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006b7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const mediump vec4 c1 = vec4(0.5000000000, 1.149999976, 1.955999970, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = min(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r4.xyz = r1.xyz + r1.xyz;\n    r5.xyz = r3.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.www;\n    r6.xyz = r4.xyz*r3.xyz;\n    r6.xyz = min(r6.xyz, r4.xyz);\n    r6.xyz = min(r6.xyz, r3.xyz);\n    r4.xyz = r4.xyz + r3.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r1.xyz = vec3(lessThanEqual(r1.xyz, c1.xxx));\n    r1.xyz = vec3(-r1.x < 0.00000 ? r5.x : r6.x, -r1.y < 0.00000 ? r5.y : r6.y, -r1.z < 0.00000 ? r5.z : r6.z);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c1.yyy);\n    r1.xyz = pow(r1.xyz, c1.zzz);\n    r1.w = c0.w;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=657329ef:7c68d51a:e62d0977:40fdf6dd\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendSoftLightProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000063c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(16.00000000, -12.00000000, 4.000000000, 0.2500000000);\n    const half4 c1 = half4(2.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2.xyz = r1.xyz*c0.xxx + c0.yyy;\n    r2.xyz = r1.xyz*r2.xyz + c0.zzz;\n    r2.xyz = r1.xyz*r2.xyz;\n    r3.xyz = sqrt(r1.xyz);\n    r4.xyz = half3(c0.www >= r1.xyz);\n    r3.xyz = select(r3.xyz, r2.xyz, -r4.xyz < 0.00000h);\n    r4 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r4 = r4*half4(hg_Params[0]);\n    r4 = r4 / half4(fmax(r4.www, 6.10350e-05h), 1.);\n    r2.xyz = -r4.xyz*c1.xxx + c1.yyy;\n    r3.xyz = mix(r1.xyz, r3.xyz, -r2.xyz);\n    r2.xyz = r2.xyz*r1.xyz;\n    r2.xyz = mix(r1.xyz, c1.yyy, -r2.xyz);\n    r1.xyz = half3(c1.zzz >= r4.xyz);\n    r1.xyz = select(r3.xyz, r2.xyz, -r1.xyz < 0.00000h);\n    r1.w = c1.y;\n    r1.xyz = mix(r4.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r4.wwww));\n    return output;\n}\n//MD5=f2885101:ca6d8f9e:6f4e5f49:743acf4a\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000617\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(16.00000000, -12.00000000, 4.000000000, 0.2500000000);\n    const float4 c1 = float4(2.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2.xyz = r1.xyz*c0.xxx + c0.yyy;\n    r2.xyz = r1.xyz*r2.xyz + c0.zzz;\n    r2.xyz = r1.xyz*r2.xyz;\n    r3.xyz = sqrt(r1.xyz);\n    r4.xyz = float3(c0.www >= r1.xyz);\n    r3.xyz = select(r3.xyz, r2.xyz, -r4.xyz < 0.00000f);\n    r4 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r4 = r4*hg_Params[0];\n    r4 = r4 / float4(fmax(r4.www, 1.00000e-06f), 1.);\n    r2.xyz = -r4.xyz*c1.xxx + c1.yyy;\n    r3.xyz = mix(r1.xyz, r3.xyz, -r2.xyz);\n    r2.xyz = r2.xyz*r1.xyz;\n    r2.xyz = mix(r1.xyz, c1.yyy, -r2.xyz);\n    r1.xyz = float3(c1.zzz >= r4.xyz);\n    r1.xyz = select(r3.xyz, r2.xyz, -r1.xyz < 0.00000f);\n    r1.w = c1.y;\n    r1.xyz = mix(r4.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r4.wwww);\n    return output;\n}\n//MD5=009bb21d:6ea0a9c1:3abdcf14:215477da\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000063d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(16.00000000, -12.00000000, 4.000000000, 0.2500000000);\n    const highp vec4 c1 = vec4(2.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2.xyz = r1.xyz*c0.xxx + c0.yyy;\n    r2.xyz = r1.xyz*r2.xyz + c0.zzz;\n    r2.xyz = r1.xyz*r2.xyz;\n    r3.xyz = sqrt(r1.xyz);\n    r4.xyz = vec3(greaterThanEqual(c0.www, r1.xyz));\n    r3.xyz = vec3(-r4.x < 0.00000 ? r2.x : r3.x, -r4.y < 0.00000 ? r2.y : r3.y, -r4.z < 0.00000 ? r2.z : r3.z);\n    r4 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r4 = r4*hg_ProgramLocal0;\n    r4 = r4 / vec4(max(r4.www, 1.00000e-06), 1.);\n    r2.xyz = -r4.xyz*c1.xxx + c1.yyy;\n    r3.xyz = mix(r1.xyz, r3.xyz, -r2.xyz);\n    r2.xyz = r2.xyz*r1.xyz;\n    r2.xyz = mix(r1.xyz, c1.yyy, -r2.xyz);\n    r1.xyz = vec3(greaterThanEqual(c1.zzz, r4.xyz));\n    r1.xyz = vec3(-r1.x < 0.00000 ? r2.x : r3.x, -r1.y < 0.00000 ? r2.y : r3.y, -r1.z < 0.00000 ? r2.z : r3.z);\n    r1.w = c1.y;\n    r1.xyz = mix(r4.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r4.wwww);\n}\n//MD5=b7f22967:b5ddbff9:c12d4f8a:fa380820\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendSoftLightPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000071a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 16.00000000, -12.00000000, 4.000000000);\n    const half4 c1 = half4(0.2500000000, 2.000000000, 1.000000000, 0.5000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2.xyz = r1.xyz*c0.yyy + c0.zzz;\n    r2.xyz = r1.xyz*r2.xyz + c0.www;\n    r2.xyz = r1.xyz*r2.xyz;\n    r3.xyz = sqrt(r1.xyz);\n    r4.xyz = half3(c1.xxx >= r1.xyz);\n    r3.xyz = select(r3.xyz, r2.xyz, -r4.xyz < 0.00000h);\n    r4 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r4 = r4*half4(hg_Params[0]);\n    r2.xyz = r4.xyz / fmax(r4.w, 6.10350e-05h);\n    r4.xyz = fmax(r2.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, half3(hg_Params[1].xyz));\n    r5.xyz = -r4.xyz*c1.yyy + c1.zzz;\n    r3.xyz = mix(r1.xyz, r3.xyz, -r5.xyz);\n    r5.xyz = r5.xyz*r1.xyz;\n    r5.xyz = mix(r1.xyz, c1.zzz, -r5.xyz);\n    r1.xyz = half3(c1.www >= r4.xyz);\n    r1.xyz = select(r3.xyz, r5.xyz, -r1.xyz < 0.00000h);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[2].xyz));\n    r1.w = c1.z;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r4.wwww));\n    return output;\n}\n//MD5=ac341a7a:4962d79f:36ee3b54:d9a2549e\n//SIG=00400000:00000003:00000003:00000003:0002:0003:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000006df\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 16.00000000, -12.00000000, 4.000000000);\n    const float4 c1 = float4(0.2500000000, 2.000000000, 1.000000000, 0.5000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2.xyz = r1.xyz*c0.yyy + c0.zzz;\n    r2.xyz = r1.xyz*r2.xyz + c0.www;\n    r2.xyz = r1.xyz*r2.xyz;\n    r3.xyz = sqrt(r1.xyz);\n    r4.xyz = float3(c1.xxx >= r1.xyz);\n    r3.xyz = select(r3.xyz, r2.xyz, -r4.xyz < 0.00000f);\n    r4 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r4 = r4*hg_Params[0];\n    r2.xyz = r4.xyz / fmax(r4.w, 1.00000e-06f);\n    r4.xyz = fmax(r2.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, hg_Params[1].xyz);\n    r5.xyz = -r4.xyz*c1.yyy + c1.zzz;\n    r3.xyz = mix(r1.xyz, r3.xyz, -r5.xyz);\n    r5.xyz = r5.xyz*r1.xyz;\n    r5.xyz = mix(r1.xyz, c1.zzz, -r5.xyz);\n    r1.xyz = float3(c1.www >= r4.xyz);\n    r1.xyz = select(r3.xyz, r5.xyz, -r1.xyz < 0.00000f);\n    r1.xyz = pow(r1.xyz, hg_Params[2].xyz);\n    r1.w = c1.z;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r4.wwww);\n    return output;\n}\n//MD5=57e12965:ab4896b2:a795f806:2f8ec6b3\n//SIG=00000000:00000003:00000003:00000000:0002:0003:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000075b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 16.00000000, -12.00000000, 4.000000000);\n    const highp vec4 c1 = vec4(0.2500000000, 2.000000000, 1.000000000, 0.5000000000);\n    highp vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2.xyz = r1.xyz*c0.yyy + c0.zzz;\n    r2.xyz = r1.xyz*r2.xyz + c0.www;\n    r2.xyz = r1.xyz*r2.xyz;\n    r3.xyz = sqrt(r1.xyz);\n    r4.xyz = vec3(greaterThanEqual(c1.xxx, r1.xyz));\n    r3.xyz = vec3(-r4.x < 0.00000 ? r2.x : r3.x, -r4.y < 0.00000 ? r2.y : r3.y, -r4.z < 0.00000 ? r2.z : r3.z);\n    r4 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r4 = r4*hg_ProgramLocal0;\n    r2.xyz = r4.xyz / max(r4.w, 1.00000e-06);\n    r4.xyz = max(r2.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, hg_ProgramLocal1.xyz);\n    r5.xyz = -r4.xyz*c1.yyy + c1.zzz;\n    r3.xyz = mix(r1.xyz, r3.xyz, -r5.xyz);\n    r5.xyz = r5.xyz*r1.xyz;\n    r5.xyz = mix(r1.xyz, c1.zzz, -r5.xyz);\n    r1.xyz = vec3(greaterThanEqual(c1.www, r4.xyz));\n    r1.xyz = vec3(-r1.x < 0.00000 ? r5.x : r3.x, -r1.y < 0.00000 ? r5.y : r3.y, -r1.z < 0.00000 ? r5.z : r3.z);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal2.xyz);\n    r1.w = c1.z;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r4.wwww);\n}\n//MD5=4c5b11f8:81aaea79:396d40ce:84da30a8\n//SIG=00000000:00000003:00000003:00000000:0002:0003:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendSoftLightQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000007d9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 16.00000000);\n    const half4 c1 = half4(-12.00000000, 4.000000000, 0.2500000000, 2.000000000);\n    const half4 c2 = half4(1.000000000, 0.5000000000, 1.149999976, 1.955999970);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r1.xyz*c0.www + c1.xxx;\n    r2.xyz = r1.xyz*r2.xyz + c1.yyy;\n    r2.xyz = r1.xyz*r2.xyz;\n    r3.xyz = sqrt(r1.xyz);\n    r4.xyz = half3(c1.zzz >= r1.xyz);\n    r3.xyz = select(r3.xyz, r2.xyz, -r4.xyz < 0.00000h);\n    r4 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r4 = r4*half4(hg_Params[0]);\n    r2.xyz = r4.xyz / fmax(r4.w, 6.10350e-05h);\n    r4.xyz = fmax(r2.xyz, c0.xxx);\n    r5.xyz = fmin(r4.xyz, c0.yyy);\n    r5.xyz = pow(r5.xyz, c0.zzz);\n    r4.xyz = r5.xyz;\n    r5.xyz = -r4.xyz*c1.www + c2.xxx;\n    r3.xyz = mix(r1.xyz, r3.xyz, -r5.xyz);\n    r5.xyz = r5.xyz*r1.xyz;\n    r5.xyz = mix(r1.xyz, c2.xxx, -r5.xyz);\n    r1.xyz = half3(c2.yyy >= r4.xyz);\n    r1.xyz = select(r3.xyz, r5.xyz, -r1.xyz < 0.00000h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c2.zzz);\n    r1.xyz = pow(r1.xyz, c2.www);\n    r1.w = c2.x;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r4.wwww));\n    return output;\n}\n//MD5=ae1ba670:608a990c:37e7c403:e6d1efee\n//SIG=00400000:00000003:00000003:00000003:0003:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000007b5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 16.00000000);\n    const float4 c1 = float4(-12.00000000, 4.000000000, 0.2500000000, 2.000000000);\n    const float4 c2 = float4(1.000000000, 0.5000000000, 1.149999976, 1.955999970);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r1.xyz*c0.www + c1.xxx;\n    r2.xyz = r1.xyz*r2.xyz + c1.yyy;\n    r2.xyz = r1.xyz*r2.xyz;\n    r3.xyz = sqrt(r1.xyz);\n    r4.xyz = float3(c1.zzz >= r1.xyz);\n    r3.xyz = select(r3.xyz, r2.xyz, -r4.xyz < 0.00000f);\n    r4 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r4 = r4*hg_Params[0];\n    r2.xyz = r4.xyz / fmax(r4.w, 1.00000e-06f);\n    r4.xyz = fmax(r2.xyz, c0.xxx);\n    r5.xyz = fmin(r4.xyz, c0.yyy);\n    r5.xyz = pow(r5.xyz, c0.zzz);\n    r4.xyz = r5.xyz;\n    r5.xyz = -r4.xyz*c1.www + c2.xxx;\n    r3.xyz = mix(r1.xyz, r3.xyz, -r5.xyz);\n    r5.xyz = r5.xyz*r1.xyz;\n    r5.xyz = mix(r1.xyz, c2.xxx, -r5.xyz);\n    r1.xyz = float3(c2.yyy >= r4.xyz);\n    r1.xyz = select(r3.xyz, r5.xyz, -r1.xyz < 0.00000f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c2.zzz);\n    r1.xyz = pow(r1.xyz, c2.www);\n    r1.w = c2.x;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r4.wwww);\n    return output;\n}\n//MD5=203ccc37:9ac4d81c:fcfebc9f:c4e646a8\n//SIG=00000000:00000003:00000003:00000000:0003:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000007d9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 16.00000000);\n    const highp vec4 c1 = vec4(-12.00000000, 4.000000000, 0.2500000000, 2.000000000);\n    const highp vec4 c2 = vec4(1.000000000, 0.5000000000, 1.149999976, 1.955999970);\n    highp vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r1.xyz*c0.www + c1.xxx;\n    r2.xyz = r1.xyz*r2.xyz + c1.yyy;\n    r2.xyz = r1.xyz*r2.xyz;\n    r3.xyz = sqrt(r1.xyz);\n    r4.xyz = vec3(greaterThanEqual(c1.zzz, r1.xyz));\n    r3.xyz = vec3(-r4.x < 0.00000 ? r2.x : r3.x, -r4.y < 0.00000 ? r2.y : r3.y, -r4.z < 0.00000 ? r2.z : r3.z);\n    r4 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r4 = r4*hg_ProgramLocal0;\n    r2.xyz = r4.xyz / max(r4.w, 1.00000e-06);\n    r4.xyz = max(r2.xyz, c0.xxx);\n    r5.xyz = min(r4.xyz, c0.yyy);\n    r5.xyz = pow(r5.xyz, c0.zzz);\n    r4.xyz = r5.xyz;\n    r5.xyz = -r4.xyz*c1.www + c2.xxx;\n    r3.xyz = mix(r1.xyz, r3.xyz, -r5.xyz);\n    r5.xyz = r5.xyz*r1.xyz;\n    r5.xyz = mix(r1.xyz, c2.xxx, -r5.xyz);\n    r1.xyz = vec3(greaterThanEqual(c2.yyy, r4.xyz));\n    r1.xyz = vec3(-r1.x < 0.00000 ? r5.x : r3.x, -r1.y < 0.00000 ? r5.y : r3.y, -r1.z < 0.00000 ? r5.z : r3.z);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c2.zzz);\n    r1.xyz = pow(r1.xyz, c2.www);\n    r1.w = c2.x;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r4.wwww);\n}\n//MD5=76e103f1:325cc33e:a0c3bd31:ef68dad9\n//SIG=00000000:00000003:00000003:00000000:0003:0001:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendHardLightProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000057e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = r1.xyz + r1.xyz;\n    r5.xyz = r4.xyz - c0.xxx;\n    r6.xyz = r3.xyz*r5.xyz;\n    r6.xyz = fmin(r5.xyz, r6.xyz);\n    r6.xyz = fmin(r3.xyz, r6.xyz);\n    r5.xyz = r3.xyz + r5.xyz;\n    r5.xyz = r5.xyz - r6.xyz;\n    r4.xyz = r4.xyz*r3.xyz + -r5.xyz;\n    r0.xyz = r0.xyz*c0.yyy;\n    r6.xyz = half3(r0.xyz >= -r0.www);\n    r6.xyz = r6.xyz*r4.xyz + r5.xyz;\n    r6.w = c0.x;\n    r6.xyz = mix(r1.xyz, r6.xyz, r2.www);\n    output.color0 = mix(float4(r2), float4(r6), float4(r0.wwww));\n    return output;\n}\n//MD5=4dc39e36:774dd9c2:12072e36:e7d0aa91\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000555\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = r1.xyz + r1.xyz;\n    r5.xyz = r4.xyz - c0.xxx;\n    r6.xyz = r3.xyz*r5.xyz;\n    r6.xyz = fmin(r5.xyz, r6.xyz);\n    r6.xyz = fmin(r3.xyz, r6.xyz);\n    r5.xyz = r3.xyz + r5.xyz;\n    r5.xyz = r5.xyz - r6.xyz;\n    r4.xyz = r4.xyz*r3.xyz + -r5.xyz;\n    r0.xyz = r0.xyz*c0.yyy;\n    r6.xyz = float3(r0.xyz >= -r0.www);\n    r6.xyz = r6.xyz*r4.xyz + r5.xyz;\n    r6.w = c0.x;\n    r6.xyz = mix(r1.xyz, r6.xyz, r2.www);\n    output.color0 = mix(r2, r6, r0.wwww);\n    return output;\n}\n//MD5=1df03d78:938bb1c5:7b299762:da0bfa4f\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000509\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = r1.xyz + r1.xyz;\n    r5.xyz = r4.xyz - c0.xxx;\n    r6.xyz = r3.xyz*r5.xyz;\n    r6.xyz = min(r5.xyz, r6.xyz);\n    r6.xyz = min(r3.xyz, r6.xyz);\n    r5.xyz = r3.xyz + r5.xyz;\n    r5.xyz = r5.xyz - r6.xyz;\n    r4.xyz = r4.xyz*r3.xyz + -r5.xyz;\n    r0.xyz = r0.xyz*c0.yyy;\n    r6.xyz = vec3(greaterThanEqual(r0.xyz, -r0.www));\n    r6.xyz = r6.xyz*r4.xyz + r5.xyz;\n    r6.w = c0.x;\n    r6.xyz = mix(r1.xyz, r6.xyz, r2.www);\n    gl_FragColor = mix(r2, r6, r0.wwww);\n}\n//MD5=f2c1d192:4fa88e30:a50dc5c5:819a4683\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendHardLightPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000064f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[1].xyz));\n    r4.xyz = r3.xyz + r3.xyz;\n    r5.xyz = r1.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.yyy;\n    r6.xyz = r4.xyz*r1.xyz;\n    r6.xyz = fmin(r6.xyz, r4.xyz);\n    r6.xyz = fmin(r6.xyz, r1.xyz);\n    r4.xyz = r4.xyz + r1.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r3.xyz = half3(r3.xyz <= c0.zzz);\n    r3.xyz = select(r6.xyz, r5.xyz, -r3.xyz < 0.00000h);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[2].xyz));\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=e71b1879:600fc532:2fe088c5:6a90dcf1\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000612\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_Params[1].xyz);\n    r4.xyz = r3.xyz + r3.xyz;\n    r5.xyz = r1.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.yyy;\n    r6.xyz = r4.xyz*r1.xyz;\n    r6.xyz = fmin(r6.xyz, r4.xyz);\n    r6.xyz = fmin(r6.xyz, r1.xyz);\n    r4.xyz = r4.xyz + r1.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r3.xyz = float3(r3.xyz <= c0.zzz);\n    r3.xyz = select(r6.xyz, r5.xyz, -r3.xyz < 0.00000f);\n    r3.xyz = pow(r3.xyz, hg_Params[2].xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=caed7240:b8b0b1a3:53add7ee:4c93bd3c\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000650\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal1.xyz);\n    r4.xyz = r3.xyz + r3.xyz;\n    r5.xyz = r1.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.yyy;\n    r6.xyz = r4.xyz*r1.xyz;\n    r6.xyz = min(r6.xyz, r4.xyz);\n    r6.xyz = min(r6.xyz, r1.xyz);\n    r4.xyz = r4.xyz + r1.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r3.xyz = vec3(lessThanEqual(r3.xyz, c0.zzz));\n    r3.xyz = vec3(-r3.x < 0.00000 ? r5.x : r6.x, -r3.y < 0.00000 ? r5.y : r6.y, -r3.z < 0.00000 ? r5.z : r6.z);\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal2.xyz);\n    r3.w = c0.y;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=208f68f0:03533ea7:c626a300:da37b88c\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendHardLightQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000006f9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const half4 c1 = half4(0.5000000000, 1.149999976, 1.955999970, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r4.xyz = r3.xyz + r3.xyz;\n    r5.xyz = r1.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.www;\n    r6.xyz = r4.xyz*r1.xyz;\n    r6.xyz = fmin(r6.xyz, r4.xyz);\n    r6.xyz = fmin(r6.xyz, r1.xyz);\n    r4.xyz = r4.xyz + r1.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r3.xyz = half3(r3.xyz <= c1.xxx);\n    r3.xyz = select(r6.xyz, r5.xyz, -r3.xyz < 0.00000h);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c1.yyy);\n    r3.xyz = pow(r3.xyz, c1.zzz);\n    r3.w = c0.w;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=d96dd13c:cb507d58:d5a78b44:b12a9aa0\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000006d3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const float4 c1 = float4(0.5000000000, 1.149999976, 1.955999970, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r4.xyz = r3.xyz + r3.xyz;\n    r5.xyz = r1.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.www;\n    r6.xyz = r4.xyz*r1.xyz;\n    r6.xyz = fmin(r6.xyz, r4.xyz);\n    r6.xyz = fmin(r6.xyz, r1.xyz);\n    r4.xyz = r4.xyz + r1.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r3.xyz = float3(r3.xyz <= c1.xxx);\n    r3.xyz = select(r6.xyz, r5.xyz, -r3.xyz < 0.00000f);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c1.yyy);\n    r3.xyz = pow(r3.xyz, c1.zzz);\n    r3.w = c0.w;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=ca1be53f:09e2be89:bbaafb83:4e65c87e\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006b7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const mediump vec4 c1 = vec4(0.5000000000, 1.149999976, 1.955999970, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = min(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r4.xyz = r3.xyz + r3.xyz;\n    r5.xyz = r1.xyz*r4.xyz;\n    r4.xyz = r4.xyz - c0.www;\n    r6.xyz = r4.xyz*r1.xyz;\n    r6.xyz = min(r6.xyz, r4.xyz);\n    r6.xyz = min(r6.xyz, r1.xyz);\n    r4.xyz = r4.xyz + r1.xyz;\n    r6.xyz = r4.xyz - r6.xyz;\n    r3.xyz = vec3(lessThanEqual(r3.xyz, c1.xxx));\n    r3.xyz = vec3(-r3.x < 0.00000 ? r5.x : r6.x, -r3.y < 0.00000 ? r5.y : r6.y, -r3.z < 0.00000 ? r5.z : r6.z);\n    r3.xyz = max(r3.xyz, c0.xxx);\n    r3.xyz = min(r3.xyz, c1.yyy);\n    r3.xyz = pow(r3.xyz, c1.zzz);\n    r3.w = c0.w;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=c4bb2fac:5c8cfa33:b1fe9701:c5e16e8f\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendVividLightProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000854\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(65536.00000, 0.5000000000, 1.525878906e-05, 1.000000000);\n    const half4 c1 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmin(r0.xyz, r0.www);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 6.10350e-05h), 0.00000h, 1.00000h);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2.xyz = fmin(r2.xyz, r2.www);\n    r3 = clamp(r2 / half4(fmax(r2.www, 6.10350e-05h), 1.), 0.00000h, 1.00000h);\n    r1.xyz = r1.xyz*c0.xxx + c0.yyy;\n    r1.xyz = floor(r1.xyz);\n    r1.xyz = r1.xyz*c0.zzz;\n    r4.xyz = r3.xyz*c0.xxx + c0.yyy;\n    r4.xyz = floor(r4.xyz);\n    r3.xyz = r4.xyz*c0.zzz;\n    r4.xyz = c0.www - r1.xyz;\n    r5.xyz = fmax(r3.xyz, c0.zzz);\n    r6.xyz = -c0.yyy*r4.xyz + r5.xyz;\n    r6.xyz = r6.xyz/r5.xyz;\n    r4.xyz = r4.xyz*c0.yyy;\n    r5.xyz = half3(-r3.xyz < -r4.xyz);\n    r6.xyz = r6.xyz*r5.xyz;\n    r5.xyz = c0.yyy*r2.www;\n    r5.xyz = half3(r2.xyz < r5.xyz);\n    r6.xyz = r6.xyz*r5.xyz;\n    r5.xyz = c0.www - r5.xyz;\n    r4.xyz = r4.xyz + c0.yyy;\n    r4.xyz = half3(r3.xyz < r4.xyz);\n    r4.xyz = fmin(r5.xyz, r4.xyz);\n    r2.xyz = c0.www - r3.xyz;\n    r2.xyz = fmax(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + r2.xyz;\n    r2.xyz = r1.xyz/r2.xyz;\n    r6.xyz = r2.xyz*r4.xyz + r6.xyz;\n    r4.xyz = half3(-r4.xyz >= c1.xxx);\n    r6.xyz = r5.xyz*r4.xyz + r6.xyz;\n    r6.w = c0.w;\n    r6.xyz = mix(r3.xyz, r6.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r6), float4(r3.wwww));\n    return output;\n}\n//MD5=860b139e:1d795f3e:df37c946:1fffbf4f\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000831\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(65536.00000, 0.5000000000, 1.525878906e-05, 1.000000000);\n    const float4 c1 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmin(r0.xyz, r0.www);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 1.00000e-06f), 0.00000f, 1.00000f);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2.xyz = fmin(r2.xyz, r2.www);\n    r3 = clamp(r2 / float4(fmax(r2.www, 1.00000e-06f), 1.), 0.00000f, 1.00000f);\n    r1.xyz = r1.xyz*c0.xxx + c0.yyy;\n    r1.xyz = floor(r1.xyz);\n    r1.xyz = r1.xyz*c0.zzz;\n    r4.xyz = r3.xyz*c0.xxx + c0.yyy;\n    r4.xyz = floor(r4.xyz);\n    r3.xyz = r4.xyz*c0.zzz;\n    r4.xyz = c0.www - r1.xyz;\n    r5.xyz = fmax(r3.xyz, c0.zzz);\n    r6.xyz = -c0.yyy*r4.xyz + r5.xyz;\n    r6.xyz = r6.xyz/r5.xyz;\n    r4.xyz = r4.xyz*c0.yyy;\n    r5.xyz = float3(-r3.xyz < -r4.xyz);\n    r6.xyz = r6.xyz*r5.xyz;\n    r5.xyz = c0.yyy*r2.www;\n    r5.xyz = float3(r2.xyz < r5.xyz);\n    r6.xyz = r6.xyz*r5.xyz;\n    r5.xyz = c0.www - r5.xyz;\n    r4.xyz = r4.xyz + c0.yyy;\n    r4.xyz = float3(r3.xyz < r4.xyz);\n    r4.xyz = fmin(r5.xyz, r4.xyz);\n    r2.xyz = c0.www - r3.xyz;\n    r2.xyz = fmax(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + r2.xyz;\n    r2.xyz = r1.xyz/r2.xyz;\n    r6.xyz = r2.xyz*r4.xyz + r6.xyz;\n    r4.xyz = float3(-r4.xyz >= c1.xxx);\n    r6.xyz = r5.xyz*r4.xyz + r6.xyz;\n    r6.w = c0.w;\n    r6.xyz = mix(r3.xyz, r6.xyz, r0.www);\n    output.color0 = mix(r0, r6, r3.wwww);\n    return output;\n}\n//MD5=bef7475f:dfb4827d:dc9666bf:9f365699\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000007ff\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(65536.00000, 0.5000000000, 1.525878906e-05, 1.000000000);\n    const highp vec4 c1 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = min(r0.xyz, r0.www);\n    r1.xyz = clamp(r0.xyz / max(r0.w, 1.00000e-06), vec3(0.00000), vec3(1.00000));\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2.xyz = min(r2.xyz, r2.www);\n    r3 = clamp(r2 / vec4(max(r2.www, 1.00000e-06), 1.), vec4(0.00000), vec4(1.00000));\n    r1.xyz = r1.xyz*c0.xxx + c0.yyy;\n    r1.xyz = floor(r1.xyz);\n    r1.xyz = r1.xyz*c0.zzz;\n    r4.xyz = r3.xyz*c0.xxx + c0.yyy;\n    r4.xyz = floor(r4.xyz);\n    r3.xyz = r4.xyz*c0.zzz;\n    r4.xyz = c0.www - r1.xyz;\n    r5.xyz = max(r3.xyz, c0.zzz);\n    r6.xyz = -c0.yyy*r4.xyz + r5.xyz;\n    r6.xyz = r6.xyz/r5.xyz;\n    r4.xyz = r4.xyz*c0.yyy;\n    r5.xyz = vec3(lessThan(-r3.xyz, -r4.xyz));\n    r6.xyz = r6.xyz*r5.xyz;\n    r5.xyz = c0.yyy*r2.www;\n    r5.xyz = vec3(lessThan(r2.xyz, r5.xyz));\n    r6.xyz = r6.xyz*r5.xyz;\n    r5.xyz = c0.www - r5.xyz;\n    r4.xyz = r4.xyz + c0.yyy;\n    r4.xyz = vec3(lessThan(r3.xyz, r4.xyz));\n    r4.xyz = min(r5.xyz, r4.xyz);\n    r2.xyz = c0.www - r3.xyz;\n    r2.xyz = max(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + r2.xyz;\n    r2.xyz = r1.xyz/r2.xyz;\n    r6.xyz = r2.xyz*r4.xyz + r6.xyz;\n    r4.xyz = vec3(greaterThanEqual(-r4.xyz, c1.xxx));\n    r6.xyz = r5.xyz*r4.xyz + r6.xyz;\n    r6.w = c0.w;\n    r6.xyz = mix(r3.xyz, r6.xyz, r0.www);\n    gl_FragColor = mix(r0, r6, r3.wwww);\n}\n//MD5=3385f905:b7f9aecb:b3a8cce1:6c362943\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendVividLightPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000008d1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, -0.5000000000, 1.525878906e-05, -2.000000000);\n    const half4 c1 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 6.10350e-05h), 0.00000h, 1.00000h);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r4.xyz = pow(r4.xyz, half3(hg_Params[1].xyz));\n    r5.xyz = c0.xxx - r1.xyz;\n    r5.xyz = c0.yyy*r5.xyz + r4.xyz;\n    r6.xyz = fmax(r4.xyz, c0.zzz);\n    r6.xyz = r5.xyz/r6.xyz;\n    r7.xyz = c0.yyy*r1.xyz + c0.xxx;\n    r7.xyz = r4.xyz - r7.xyz;\n    r8.xyz = c0.www*r4.xyz + -c0.www;\n    r9.xyz = fmax(r8.xyz, c0.zzz);\n    r9.xyz = r1.xyz/r9.xyz;\n    r1.xyz = half3(r4.xyz < -c0.yyy);\n    r5.xyz = half3(r5.xyz > c1.xxx);\n    r10.xyz = half3(r7.xyz < c1.xxx);\n    r1.xyz = fmin(r1.xyz, r5.xyz);\n    r1.xyz = r1.xyz*r6.xyz;\n    r4.xyz = half3(r4.xyz >= -c0.yyy);\n    r4.xyz = fmin(r4.xyz, r10.xyz);\n    r1.xyz = select(r1.xyz, r9.xyz, -r4.xyz < 0.00000h);\n    r1.xyz = select(-c0.www, r1.xyz, r7.xyz < 0.00000h);\n    r8.xyz = half3(r8.xyz <= c0.zzz);\n    r1.xyz = select(r1.xyz, c0.xxx, -r8.xyz < 0.00000h);\n    r5.xyz = half3(r5.xyz <= c0.zzz);\n    r1.xyz = clamp(select(r1.xyz, c1.xxx, -r5.xyz < 0.00000h), 0.00000h, 1.00000h);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[2].xyz));\n    r1.w = c0.x;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=0232deb4:a2a102a2:9272d2b4:911a63fb\n//SIG=00400000:00000003:00000003:00000003:0002:0003:000b:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000089a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, -0.5000000000, 1.525878906e-05, -2.000000000);\n    const float4 c1 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 1.00000e-06f), 0.00000f, 1.00000f);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r4.xyz = pow(r4.xyz, hg_Params[1].xyz);\n    r5.xyz = c0.xxx - r1.xyz;\n    r5.xyz = c0.yyy*r5.xyz + r4.xyz;\n    r6.xyz = fmax(r4.xyz, c0.zzz);\n    r6.xyz = r5.xyz/r6.xyz;\n    r7.xyz = c0.yyy*r1.xyz + c0.xxx;\n    r7.xyz = r4.xyz - r7.xyz;\n    r8.xyz = c0.www*r4.xyz + -c0.www;\n    r9.xyz = fmax(r8.xyz, c0.zzz);\n    r9.xyz = r1.xyz/r9.xyz;\n    r1.xyz = float3(r4.xyz < -c0.yyy);\n    r5.xyz = float3(r5.xyz > c1.xxx);\n    r10.xyz = float3(r7.xyz < c1.xxx);\n    r1.xyz = fmin(r1.xyz, r5.xyz);\n    r1.xyz = r1.xyz*r6.xyz;\n    r4.xyz = float3(r4.xyz >= -c0.yyy);\n    r4.xyz = fmin(r4.xyz, r10.xyz);\n    r1.xyz = select(r1.xyz, r9.xyz, -r4.xyz < 0.00000f);\n    r1.xyz = select(-c0.www, r1.xyz, r7.xyz < 0.00000f);\n    r8.xyz = float3(r8.xyz <= c0.zzz);\n    r1.xyz = select(r1.xyz, c0.xxx, -r8.xyz < 0.00000f);\n    r5.xyz = float3(r5.xyz <= c0.zzz);\n    r1.xyz = clamp(select(r1.xyz, c1.xxx, -r5.xyz < 0.00000f), 0.00000f, 1.00000f);\n    r1.xyz = pow(r1.xyz, hg_Params[2].xyz);\n    r1.w = c0.x;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=0f0a249f:bb6b0d3b:2c8c6c7c:237b4708\n//SIG=00000000:00000003:00000003:00000000:0002:0003:000b:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000009c0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, -0.5000000000, 1.525878906e-05, -2.000000000);\n    const highp vec4 c1 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = clamp(r0.xyz / max(r0.w, 1.00000e-06), vec3(0.00000), vec3(1.00000));\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r4.xyz = pow(r4.xyz, hg_ProgramLocal1.xyz);\n    r5.xyz = c0.xxx - r1.xyz;\n    r5.xyz = c0.yyy*r5.xyz + r4.xyz;\n    r6.xyz = max(r4.xyz, c0.zzz);\n    r6.xyz = r5.xyz/r6.xyz;\n    r7.xyz = c0.yyy*r1.xyz + c0.xxx;\n    r7.xyz = r4.xyz - r7.xyz;\n    r8.xyz = c0.www*r4.xyz + -c0.www;\n    r9.xyz = max(r8.xyz, c0.zzz);\n    r9.xyz = r1.xyz/r9.xyz;\n    r1.xyz = vec3(lessThan(r4.xyz, -c0.yyy));\n    r5.xyz = vec3(greaterThan(r5.xyz, c1.xxx));\n    r10.xyz = vec3(lessThan(r7.xyz, c1.xxx));\n    r1.xyz = min(r1.xyz, r5.xyz);\n    r1.xyz = r1.xyz*r6.xyz;\n    r4.xyz = vec3(greaterThanEqual(r4.xyz, -c0.yyy));\n    r4.xyz = min(r4.xyz, r10.xyz);\n    r1.xyz = vec3(-r4.x < 0.00000 ? r9.x : r1.x, -r4.y < 0.00000 ? r9.y : r1.y, -r4.z < 0.00000 ? r9.z : r1.z);\n    r1.xyz = vec3(r7.x < 0.00000 ? r1.x : -c0.w, r7.y < 0.00000 ? r1.y : -c0.w, r7.z < 0.00000 ? r1.z : -c0.w);\n    r8.xyz = vec3(lessThanEqual(r8.xyz, c0.zzz));\n    r1.xyz = vec3(-r8.x < 0.00000 ? c0.x : r1.x, -r8.y < 0.00000 ? c0.x : r1.y, -r8.z < 0.00000 ? c0.x : r1.z);\n    r5.xyz = vec3(lessThanEqual(r5.xyz, c0.zzz));\n    r1.xyz = clamp(vec3(-r5.x < 0.00000 ? c1.x : r1.x, -r5.y < 0.00000 ? c1.x : r1.y, -r5.z < 0.00000 ? c1.x : r1.z), vec3(0.00000), vec3(1.00000));\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal2.xyz);\n    r1.w = c0.x;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=ab1cfc80:d8d8806a:4a63a3ba:c4b495ff\n//SIG=00000000:00000003:00000003:00000000:0002:0003:000b:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}