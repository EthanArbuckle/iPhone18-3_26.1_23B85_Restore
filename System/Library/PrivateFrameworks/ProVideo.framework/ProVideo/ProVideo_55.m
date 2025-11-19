uint64_t HgcBlur_cs9s_es_noborder::GetDOD(HgcBlur_cs9s_es_noborder *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcBlur_cs9s_es_noborder::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcBlur_cs9s_es_noborder::HgcBlur_cs9s_es_noborder(HgcBlur_cs9s_es_noborder *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287239F30;
  operator new();
}

void HgcBlur_cs9s_es_noborder::~HgcBlur_cs9s_es_noborder(HgcBlur_cs9s_es_noborder *this)
{
  *this = &unk_287239F30;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4019FCA701);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287239F30;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4019FCA701);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlur_cs9s_es_noborder::~HgcBlur_cs9s_es_noborder(HGNode *this)
{
  *this = &unk_287239F30;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlur_cs9s_es_noborder::SetParameter(HgcBlur_cs9s_es_noborder *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 9)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBlur_cs9s_es_noborder::GetParameter(HgcBlur_cs9s_es_noborder *this, unsigned int a2, float *a3)
{
  if (a2 > 9)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcPixelFormatConversion_kV4S_BE_WXYZ_output::GetProgram(HgcPixelFormatConversion_kV4S_BE_WXYZ_output *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    return "//Metal1.0     \n//LEN=000000031d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(255.9960938, 256.0000000, 1.525902189e-05, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = clamp(hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy), 0.00000f, 1.00000f);\n    r0 = r0*c0.xxxx;\n    r1 = fract(r0);\n    r1 = r1*c0.yyyy;\n    r1 = floor(r1);\n    r0 = floor(r0);\n    r1 = r1*c0.yyyy + r0;\n    output.color0 = r1.wxyz*c0.zzzz;\n    return output;\n}\n//MD5=13ee12da:76615530:14d039ae:fe550c56\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
  }

  if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  return "//GLfs2.0      \n//LEN=00000002cc\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(255.9960938, 256.0000000, 1.525902189e-05, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = clamp(texture2D(hg_Texture0, hg_TexCoord0.xy), vec4(0.00000), vec4(1.00000));\n    r0 = r0*c0.xxxx;\n    r1 = fract(r0);\n    r1 = r1*c0.yyyy;\n    r1 = floor(r1);\n    r0 = floor(r0);\n    r1 = r1*c0.yyyy + r0;\n    gl_FragColor = r1.wxyz*c0.zzzz;\n}\n//MD5=6e72eee3:66e0366d:476be069:a678dd79\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
}

void sub_25FE1EA84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE1EAB4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE1EAACLL);
}

uint64_t HgcPixelFormatConversion_kV4S_BE_WXYZ_output::BindTexture(HgcPixelFormatConversion_kV4S_BE_WXYZ_output *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4S_BE_WXYZ_output::RenderTile(HgcPixelFormatConversion_kV4S_BE_WXYZ_output *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v59 = 0;
        v60 = 16 * v7;
        v61 = 16 * v6;
        v62 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v63 = 0;
          do
          {
            v64 = *(this + 51);
            v65 = v64[1];
            v66 = v64[3];
            v67 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v63 / 0x10], *v64), v65), v64[2]);
            v68 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
            v69 = vsubq_f32(v68, vandq_s8(v65, vcgtq_f32(v68, v67)));
            v70 = vmulq_f32(v66, vsubq_f32(v67, v69));
            v71 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
            v72 = vaddq_f32(v69, vmulq_f32(v66, vsubq_f32(v71, vandq_s8(v65, vcgtq_f32(v71, v70)))));
            v5[v63 / 0x10] = vmulq_f32(v64[4], vextq_s8(v72, v72, 0xCuLL));
            v63 += 16;
          }

          while (v62 != v63);
          ++v59;
          v4 = (v4 + v60);
          v5 = (v5 + v61);
        }

        while (v59 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = *(this + 51);
          v19 = v18[1];
          v20 = v14;
          v21 = v18[2];
          v22 = v18[3];
          v23 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v16 - 2], *v18), v19), v21);
          v24 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v16 - 1], *v18), v19), v21);
          v25 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v16], *v18), v19), v21);
          v26 = vmulq_f32(vminq_f32(vmaxq_f32(v4[v16 + 1], *v18), v19), v21);
          v27 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
          v28 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
          v29 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
          v30 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
          v31 = vsubq_f32(v27, vandq_s8(v19, vcgtq_f32(v27, v23)));
          v32 = vsubq_f32(v28, vandq_s8(v19, vcgtq_f32(v28, v24)));
          v33 = vsubq_f32(v29, vandq_s8(v19, vcgtq_f32(v29, v25)));
          v34 = vsubq_f32(v30, vandq_s8(v19, vcgtq_f32(v30, v26)));
          v35 = vmulq_f32(v22, vsubq_f32(v23, v31));
          v36 = vmulq_f32(v22, vsubq_f32(v24, v32));
          v37 = vmulq_f32(v22, vsubq_f32(v25, v33));
          v38 = vmulq_f32(v22, vsubq_f32(v26, v34));
          v39 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
          v40 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
          v41 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
          v42 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
          v43 = vaddq_f32(v31, vmulq_f32(v22, vsubq_f32(v39, vandq_s8(v19, vcgtq_f32(v39, v35)))));
          v44 = vaddq_f32(v32, vmulq_f32(v22, vsubq_f32(v40, vandq_s8(v19, vcgtq_f32(v40, v36)))));
          v45 = vaddq_f32(v33, vmulq_f32(v22, vsubq_f32(v41, vandq_s8(v19, vcgtq_f32(v41, v37)))));
          v46 = vaddq_f32(v34, vmulq_f32(v22, vsubq_f32(v42, vandq_s8(v19, vcgtq_f32(v42, v38)))));
          v47 = v18[4];
          v48 = &v5[v16];
          v13 += 4;
          v48[-2] = vmulq_f32(v47, vextq_s8(v43, v43, 0xCuLL));
          v48[-1] = vmulq_f32(v47, vextq_s8(v44, v44, 0xCuLL));
          *v48 = vmulq_f32(v47, vextq_s8(v45, v45, 0xCuLL));
          v48[1] = vmulq_f32(v47, vextq_s8(v46, v46, 0xCuLL));
          v16 += 4;
          v15 = v17 + 4;
          v14 += 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v49 = *v17++;
            v50 = *(this + 51);
            v51 = v50[1];
            v52 = v50[3];
            v53 = vmulq_f32(vminq_f32(vmaxq_f32(v49, *v50), v51), v50[2]);
            v54 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
            v55 = vsubq_f32(v54, vandq_s8(v51, vcgtq_f32(v54, v53)));
            v56 = vmulq_f32(v52, vsubq_f32(v53, v55));
            v57 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
            v58 = vaddq_f32(v55, vmulq_f32(v52, vsubq_f32(v57, vandq_s8(v51, vcgtq_f32(v57, v56)))));
            *v20++ = vmulq_f32(v50[4], vextq_s8(v58, v58, 0xCuLL));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4S_BE_WXYZ_output::GetDOD(HgcPixelFormatConversion_kV4S_BE_WXYZ_output *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPixelFormatConversion_kV4S_BE_WXYZ_output::GetROI(HgcPixelFormatConversion_kV4S_BE_WXYZ_output *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPixelFormatConversion_kV4S_BE_WXYZ_output::HgcPixelFormatConversion_kV4S_BE_WXYZ_output(HgcPixelFormatConversion_kV4S_BE_WXYZ_output *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723A198;
  operator new();
}

void HgcPixelFormatConversion_kV4S_BE_WXYZ_output::~HgcPixelFormatConversion_kV4S_BE_WXYZ_output(HgcPixelFormatConversion_kV4S_BE_WXYZ_output *this)
{
  *this = &unk_28723A198;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723A198;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcPixelFormatConversion_kV4S_BE_WXYZ_output::~HgcPixelFormatConversion_kV4S_BE_WXYZ_output(HGNode *this)
{
  *this = &unk_28723A198;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcUnpremultiply::GetProgram(HgcUnpremultiply *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000025a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0) / float4(fmax((float3)r0.www, 1.00000e-06f), 1.);\n    return output;\n}\n//MD5=164cdd96:703f1726:5bc85274:a1b49ed0\n//SIG=00400000:00000001:00000001:00000001:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000244\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    return output;\n}\n//MD5=c6ed00a3:77233d55:f54fcc5b:9f5ee2d3\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001e1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n}\n//MD5=4fca7993:d83f0755:ff909c75:c8074a19\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE1F4CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE1F4FC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE1F4F4);
}

uint64_t HgcUnpremultiply::BindTexture(HgcUnpremultiply *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcUnpremultiply::RenderTile(HgcUnpremultiply *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v42 = 0;
        v43 = 16 * v7;
        v44 = 16 * v6;
        v45 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v46 = 0;
          do
          {
            v47 = v4[v46 / 0x10];
            v48 = *(this + 51);
            v49 = vmaxq_f32(vdupq_laneq_s32(v47, 3), *v48);
            v50 = vmulq_f32(vrecpeq_f32(v49), *(v48 + 16));
            v5[v46 / 0x10] = vmulq_f32(v47, vorrq_s8(vandq_s8(*(v48 + 32), vmulq_f32(v50, vrecpsq_f32(v50, v49))), *(v48 + 48)));
            v46 += 16;
          }

          while (v45 != v46);
          ++v42;
          v4 = (v4 + v43);
          v5 = (v5 + v44);
        }

        while (v42 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v4[v16 - 2];
          v19 = v4[v16 - 1];
          v20 = v4[v16];
          v21 = v4[v16 + 1];
          v22 = *(this + 51);
          v23 = *(v22 + 16);
          v24 = vmaxq_f32(vdupq_laneq_s32(v18, 3), *v22);
          v25 = vmaxq_f32(vdupq_laneq_s32(v19, 3), *v22);
          v26 = vmaxq_f32(vdupq_laneq_s32(v20, 3), *v22);
          v27 = vmaxq_f32(vdupq_laneq_s32(v21, 3), *v22);
          v28 = vmulq_f32(vrecpeq_f32(v24), v23);
          v29 = vmulq_f32(vrecpeq_f32(v25), v23);
          v30 = vmulq_f32(vrecpeq_f32(v26), v23);
          v31 = vmulq_f32(vrecpeq_f32(v27), v23);
          v32 = vmulq_f32(v28, vrecpsq_f32(v28, v24));
          v33 = vmulq_f32(v31, vrecpsq_f32(v31, v27));
          v34 = *(v22 + 32);
          v35 = *(v22 + 48);
          v36 = v14;
          v37 = &v5[v16];
          v13 += 4;
          v37[-2] = vmulq_f32(v18, vorrq_s8(vandq_s8(v34, v32), v35));
          v37[-1] = vmulq_f32(v19, vorrq_s8(vandq_s8(v34, vmulq_f32(v29, vrecpsq_f32(v29, v25))), v35));
          *v37 = vmulq_f32(v20, vorrq_s8(vandq_s8(v34, vmulq_f32(v30, vrecpsq_f32(v30, v26))), v35));
          v37[1] = vmulq_f32(v21, vorrq_s8(vandq_s8(v34, v33), v35));
          v16 += 4;
          v15 += 4;
          v14 = v36 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v38 = *v17++;
            v39 = *(this + 51);
            v40 = vmaxq_f32(vdupq_laneq_s32(v38, 3), *v39);
            v41 = vmulq_f32(vrecpeq_f32(v40), *(v39 + 16));
            *v36++ = vmulq_f32(v38, vorrq_s8(vandq_s8(*(v39 + 32), vmulq_f32(v41, vrecpsq_f32(v41, v40))), *(v39 + 48)));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcUnpremultiply::GetDOD(HgcUnpremultiply *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcUnpremultiply::GetROI(HgcUnpremultiply *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcUnpremultiply::HgcUnpremultiply(HgcUnpremultiply *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723A400;
  operator new();
}

void HgcUnpremultiply::~HgcUnpremultiply(HgcUnpremultiply *this)
{
  *this = &unk_28723A400;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40FA0F61DDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcUnpremultiply::~HgcUnpremultiply(HGNode *this)
{
  *this = &unk_28723A400;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcUnpremultiplySanitized::GetProgram(HgcUnpremultiplySanitized *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000334\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 9.999999975e-07, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.y = half(r0.w >= c0.y);\n    r0.xyz = r1.yyy*r0.xyz;\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    output.color0.xyz = fmin(float3(r0.xyz), hg_Params[0].xyz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=8c43997a:1a09e3c5:feddaaaa:95fee0f9\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000323\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 9.999999975e-07, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.y = float(r0.w >= c0.y);\n    r0.xyz = r1.yyy*r0.xyz;\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    output.color0.xyz = fmin(r0.xyz, hg_Params[0].xyz);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=9aa70715:fed71175:863959e2:0a892a0e\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002ed\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 9.999999975e-07, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.y = float(r0.w >= c0.y);\n    r0.xyz = r1.yyy*r0.xyz;\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    gl_FragColor.xyz = min(r0.xyz, hg_ProgramLocal0.xyz);\n    gl_FragColor.w = r0.w;\n}\n//MD5=1eda26ab:681475ba:00ce9047:1b229bc3\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE1FD9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE1FDCC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE1FDC4);
}

uint64_t HgcUnpremultiplySanitized::BindTexture(HgcUnpremultiplySanitized *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcUnpremultiplySanitized::Bind(HgcUnpremultiplySanitized *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcUnpremultiplySanitized::RenderTile(HgcUnpremultiplySanitized *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v53 = 0;
        v54 = 16 * v7;
        v55 = 16 * v6;
        v56 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v57 = 0;
          do
          {
            v58 = *(this + 51);
            v59 = *(v58 + 16);
            v60 = *(v58 + 48);
            v61 = vbslq_s8(v60, v4[v57 / 0x10], vmulq_lane_f32(v4[v57 / 0x10], *&vandq_s8(*(v58 + 32), vcgeq_f32(vextq_s8(v4[v57 / 0x10], v4[v57 / 0x10], 8uLL), v59)), 1));
            v62 = vmaxq_f32(vdupq_laneq_s32(v61, 3), v59);
            v63 = vmulq_f32(vrecpeq_f32(v62), *(v58 + 64));
            v64 = vmulq_f32(v61, vorrq_s8(vandq_s8(*(v58 + 80), vmulq_f32(v63, vrecpsq_f32(v63, v62))), *(v58 + 96)));
            v5[v57 / 0x10] = vbslq_s8(v60, v64, vminq_f32(v64, *v58));
            v57 += 16;
          }

          while (v56 != v57);
          ++v53;
          v4 = (v4 + v54);
          v5 = (v5 + v55);
        }

        while (v53 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = *(this + 51);
          v19 = *v17;
          v18 = *(v17 + 1);
          v20 = *(v17 + 2);
          v21 = *(v17 + 3);
          v22 = vbslq_s8(v21, v4[v16 - 2], vmulq_lane_f32(v4[v16 - 2], *&vandq_s8(v20, vcgeq_f32(vextq_s8(v4[v16 - 2], v4[v16 - 2], 8uLL), v18)), 1));
          v23 = vbslq_s8(v21, v4[v16 - 1], vmulq_lane_f32(v4[v16 - 1], *&vandq_s8(v20, vcgeq_f32(vextq_s8(v4[v16 - 1], v4[v16 - 1], 8uLL), v18)), 1));
          v24 = vbslq_s8(v21, v4[v16], vmulq_lane_f32(v4[v16], *&vandq_s8(v20, vcgeq_f32(vextq_s8(v4[v16], v4[v16], 8uLL), v18)), 1));
          v25 = vbslq_s8(v21, v4[v16 + 1], vmulq_lane_f32(v4[v16 + 1], *&vandq_s8(v20, vcgeq_f32(vextq_s8(v4[v16 + 1], v4[v16 + 1], 8uLL), v18)), 1));
          v26 = vmaxq_f32(vdupq_laneq_s32(v22, 3), v18);
          v27 = vmaxq_f32(vdupq_laneq_s32(v23, 3), v18);
          v28 = vmaxq_f32(vdupq_laneq_s32(v24, 3), v18);
          v29 = vmaxq_f32(vdupq_laneq_s32(v25, 3), v18);
          v30 = *(v17 + 4);
          v31 = *(v17 + 5);
          v32 = vmulq_f32(vrecpeq_f32(v26), v30);
          v33 = vmulq_f32(vrecpeq_f32(v27), v30);
          v34 = vmulq_f32(vrecpeq_f32(v28), v30);
          v35 = vmulq_f32(vrecpeq_f32(v29), v30);
          v36 = v15;
          v37 = vandq_s8(v31, vmulq_f32(v32, vrecpsq_f32(v32, v26)));
          v38 = *(v17 + 6);
          v39 = vmulq_f32(v22, vorrq_s8(v37, v38));
          v40 = vmulq_f32(v23, vorrq_s8(vandq_s8(v31, vmulq_f32(v33, vrecpsq_f32(v33, v27))), v38));
          v41 = vmulq_f32(v24, vorrq_s8(vandq_s8(v31, vmulq_f32(v34, vrecpsq_f32(v34, v28))), v38));
          v42 = vmulq_f32(v25, vorrq_s8(vandq_s8(v31, vmulq_f32(v35, vrecpsq_f32(v35, v29))), v38));
          v43 = v14;
          v44 = &v5[v16];
          v13 += 4;
          v44[-2] = vbslq_s8(v21, v39, vminq_f32(v39, v19));
          v44[-1] = vbslq_s8(v21, v40, vminq_f32(v40, v19));
          *v44 = vbslq_s8(v21, v41, vminq_f32(v41, v19));
          v44[1] = vbslq_s8(v21, v42, vminq_f32(v42, v19));
          v16 += 4;
          v15 += 4;
          v14 = v43 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v45 = *v36++;
            v46 = *(this + 51);
            v47 = *(v46 + 16);
            v48 = *(v46 + 48);
            v49 = vbslq_s8(v48, v45, vmulq_lane_f32(v45, *&vandq_s8(*(v46 + 32), vcgeq_f32(vextq_s8(v45, v45, 8uLL), v47)), 1));
            v50 = vmaxq_f32(vdupq_laneq_s32(v49, 3), v47);
            v51 = vmulq_f32(vrecpeq_f32(v50), *(v46 + 64));
            v52 = vmulq_f32(v49, vorrq_s8(vandq_s8(*(v46 + 80), vmulq_f32(v51, vrecpsq_f32(v51, v50))), *(v46 + 96)));
            *v43++ = vbslq_s8(v48, v52, vminq_f32(v52, *v46));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcUnpremultiplySanitized::GetDOD(HgcUnpremultiplySanitized *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcUnpremultiplySanitized::GetROI(HgcUnpremultiplySanitized *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcUnpremultiplySanitized::HgcUnpremultiplySanitized(HgcUnpremultiplySanitized *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723A668;
  operator new();
}

void HgcUnpremultiplySanitized::~HgcUnpremultiplySanitized(HgcUnpremultiplySanitized *this)
{
  *this = &unk_28723A668;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcUnpremultiplySanitized::~HgcUnpremultiplySanitized(HGNode *this)
{
  *this = &unk_28723A668;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcUnpremultiplySanitized::SetParameter(HgcUnpremultiplySanitized *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (v8->n128_f32[0] == a3.n128_f32[0] && v8->n128_f32[1] == a3.n128_f32[0] && v8->n128_f32[2] == a3.n128_f32[0] && v8->n128_f32[3] == 0.0)
  {
    return 0;
  }

  v9 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
  v9.i32[2] = a3.n128_u32[0];
  a3.n128_f32[1] = a4;
  *v8 = v9;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v8[7] = a3;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcUnpremultiplySanitized::GetParameter(HgcUnpremultiplySanitized *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = v3[28];
    a3[1] = v3[29];
    a3[2] = v3[30];
    result = v3[31];
    a3[3] = result;
  }

  return result;
}

const char *HgcApply3DLUTTetrahedralFast_basekernel::GetProgram(HgcApply3DLUTTetrahedralFast_basekernel *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1210;
    }

    else
    {
      return "//Metal1.0     \n"
             "//LEN=0000000f3c\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< float > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]], \n"
             "    texture2d< float > hg_Texture1 [[ texture(1) ]], \n"
             "    sampler hg_Sampler1 [[ sampler(1) ]])\n"
             "{\n"
             "    const float4 c0 = float4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n"
             "    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n"
             "    r1.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n"
             "    r2.xyz = r1.xyz*r1.xyz;\n"
             "    r3.xyz = r2.xyz*r1.xyz;\n"
             "    r1.xyz = r1.xyz*hg_Params[3].yyy + hg_Params[3].xxx;\n"
             "    r1.xyz = r2.xyz*hg_Params[3].zzz + r1.xyz;\n"
             "    r1.xyz = r3.xyz*hg_Params[3].www + r1.xyz;\n"
             "    r1.xyz = fmax(r1.xyz, c0.xxx);\n"
             "    r2.xyz = hg_Params[1].yyy - c0.yyy;\n"
             "    r1.xyz = fmin(r1.xyz, r2.xyz);\n"
             "    r3.xyz = fract(r1.xyz);\n"
             "    r1.xyz = floor(r1.xyz);\n"
             "    r4.xyz = r1.xyz + c0.yyy;\n"
             "    r4.xyz = fmin(r4.xyz, r2.xyz);\n"
             "    r4.xyz = r4.xyz - r1.xyz;\n"
             "    r4.xyz = r4.xyz*hg_Params[1].xyz;\n"
             "    r2.x = dot(r1.xy, hg_Params[1].xy);\n"
             "    r2.y = r1.z;\n"
             "    r2.xy = r2.xy + c0.zz;\n"
             "    r1.xy = r2.xy + hg_Params[4].xy;\n"
             "    r1.xy = r1.xy*hg_Params[4].zw;\n"
             "    r1 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n"
             "    r2.x = r2.x + r4.x;\n"
             "    r5.xy = r2.xy + hg_Params[4].xy;\n"
             "    r5.xy = r5.xy*hg_Params[4].zw;\n"
             "    r5 = hg_Texture1.sample(hg_Sampler1, r5.xy);\n"
             "    r2.x = r2.x + r4.y;\n"
             "    r6.xy = r2.xy + hg_Params[4].xy;\n"
             "    r6.xy = r6.xy*hg_Params[4].zw;\n"
             "    r6 = hg_Texture1.sample(hg_Sampler1, r6.xy);\n"
             "    r2.x = r2.x - r4.x;\n"
             "    r7.xy = r2.xy + hg_Params[4].xy;\n"
             "    r7.xy = r7.xy*hg_Params[4].zw;\n"
             "    r7 = hg_Texture1.sample(hg_Sampler1, r7.xy);\n"
             "    r2.y = r2.y + r4.z;\n"
             "    r8.xy = r2.xy + hg_Params[4].xy;\n"
             "    r8.xy = r8.xy*hg_Params[4].zw;\n"
             "    r8 = hg_Texture1.sample(hg_Sampler1, r8.xy);\n"
             "    r2.x = r2.x - r4.y;\n"
             "    r9.xy = r2.xy + hg_Params[4].xy;\n"
             "    r9.xy = r9.xy*hg_Params[4].zw;\n"
             "    r9 = hg_Texture1.sample(hg_Sampler1, r9.xy);\n"
             "    r2.x = r2.x + r4.x;\n"
             "    r10.xy = r2.xy + hg_Params[4].xy;\n"
             "    r10.xy = r10.xy*hg_Params[4].zw;\n"
             "    r10 = hg_Texture1.sample(hg_Sampler1, r10.xy);\n"
             "    r2.x = r2.x + r4.y;\n"
             "    r2.xy = r2.xy + hg_Params[4].xy;\n"
             "    r2.xy = r2.xy*hg_Params[4].zw;\n"
             "    r2 = hg_Texture1.sample(hg_Sampler1, r2.xy);\n"
             "    r4 = float4(r3.xzzy > r3.yxyz);\n"
             "    r11.x = float(r3.y > r3.x);\n"
             "    r12 = float4(r3.yxxz >= r3.xyzy);\n"
             "    r13 = r2 - r8;\n"
             "    r14 = r7 - r1;\n"
             "    r15 = r8 - r7;\n"
             "    r16 = r13*r3.xxxx;\n"
             "    r16 = r14*r3.yyyy + r16;\n"
             "    r15 = r15*r3.zzzz + r16;\n"
             "    r16 = r10 - r9;\n"
             "    r17 = r2 - r10;\n"
             "    r18 = r9 - r1;\n"
             "    r16 = r16*r3.xxxx;\n"
             "    r16 = r17*r3.yyyy + r16;\n"
             "    r16 = r18*r3.zzzz + r16;\n"
             "    r19 = fmin(r4.xxxx, r4.yyyy);\n"
             "    r15 = select(r15, r16, r19 > 0.00000f);\n"
             "    r8 = r8 - r9;\n"
             "    r13 = r13*r3.xxxx;\n"
             "    r13 = r8*r3.yyyy + r13;\n"
             "    r13 = r18*r3.zzzz + r13;\n"
             "    r19 = fmin(r12.xxxx, r4.zzzz);\n"
             "    r15 = select(r15, r13, r19 > 0.00000f);\n"
             "    r16 = r5 - r1;\n"
             "    r9 = r6 - r5;\n"
             "    r2 = r2 - r6;\n"
             "    r8 = r16*r3.xxxx;\n"
             "    r8 = r9*r3.yyyy + r8;\n"
             "    r8 = r2*r3.zzzz + r8;\n"
             "    r4 = fmin(r4.wwww, r12.yyyy);\n"
             "    r15 = select(r15, r8, r4 > 0.00000f);\n"
             "    r6 = r6 - r7;\n"
             "    r6 = r6*r3.xxxx;\n"
             "    r6 = r14*r3.yyyy + r6;\n"
             "    r6 = r2*r3.zzzz + r6;\n"
             "    r11 = fmin(r12.zzzz, r11.xxxx);\n"
             "    r15 = select(r15, r6, r11 > 0.00000f);\n"
             "    r10 = r10 - r5;\n"
             "    r16 = r16*r3.xxxx;\n"
             "    r16 = r17*r3.yyyy + r16;\n"
             "    r16 = r10*r3.zzzz + r16;\n"
             "    r12 = fmin(r12.wwww, r12.zzzz);\n"
             "    r12 = select(r15, r16, r12 > 0.00000f);\n"
             "    r12 = r12 + r1;\n"
             "    r12 = r12*hg_Params[0].zzzz + hg_Params[0].wwww;\n"
             "    output.color0 = select(r12, r0, hg_Params[2] < 0.00000f);\n"
             "    return output;\n"
             "}\n"
             "//MD5=d988d904:dace4484:6b5f78dc:2808f41f\n"
             "//SIG=00000000:00000001:00000001:00000000:0001:0005:0014:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_452;
  }
}

void HgcApply3DLUTTetrahedralFast_basekernel::InitProgramDescriptor(HgcApply3DLUTTetrahedralFast_basekernel *this, HGProgramDescriptor *a2)
{
  HGProgramDescriptor::SetVisibleShaderWithSource( a2,  "HgcApply3DLUTTetrahedralFast_basekernel_hgc_visible",  "//Metal1.0     \n //LEN=0000000e0b\n [[ visible ]] FragmentOut HgcApply3DLUTTetrahedralFast_basekernel_hgc_visible(const constant float4* hg_Params,\n float4 color0, \n texture2d< float > hg_Texture1, \n sampler hg_Sampler1)\n {\n const float4 c0 = float4(0.000000000, 1.000000000, 0.5000000000, 0.000000000);\n"
    "    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19;\n"
    "    FragmentOut output;\n"
    "\n"
    "    r0 = color0;\n"
    "    r1.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n"
    "    r2.xyz = r1.xyz*r1.xyz;\n"
    "    r3.xyz = r2.xyz*r1.xyz;\n"
    "    r1.xyz = r1.xyz*hg_Params[3].yyy + hg_Params[3].xxx;\n"
    "    r1.xyz = r2.xyz*hg_Params[3].zzz + r1.xyz;\n"
    "    r1.xyz = r3.xyz*hg_Params[3].www + r1.xyz;\n"
    "    r1.xyz = fmax(r1.xyz, c0.xxx);\n"
    "    r2.xyz = hg_Params[1].yyy - c0.yyy;\n"
    "    r1.xyz = fmin(r1.xyz, r2.xyz);\n"
    "    r3.xyz = fract(r1.xyz);\n"
    "    r1.xyz = floor(r1.xyz);\n"
    "    r4.xyz = r1.xyz + c0.yyy;\n"
    "    r4.xyz = fmin(r4.xyz, r2.xyz);\n"
    "    r4.xyz = r4.xyz - r1.xyz;\n"
    "    r4.xyz = r4.xyz*hg_Params[1].xyz;\n"
    "    r2.x = dot(r1.xy, hg_Params[1].xy);\n"
    "    r2.y = r1.z;\n"
    "    r2.xy = r2.xy + c0.zz;\n"
    "    r1.xy = r2.xy + hg_Params[4].xy;\n"
    "    r1.xy = r1.xy*hg_Params[4].zw;\n"
    "    r1 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n"
    "    r2.x = r2.x + r4.x;\n"
    "    r5.xy = r2.xy + hg_Params[4].xy;\n"
    "    r5.xy = r5.xy*hg_Params[4].zw;\n"
    "    r5 = hg_Texture1.sample(hg_Sampler1, r5.xy);\n"
    "    r2.x = r2.x + r4.y;\n"
    "    r6.xy = r2.xy + hg_Params[4].xy;\n"
    "    r6.xy = r6.xy*hg_Params[4].zw;\n"
    "    r6 = hg_Texture1.sample(hg_Sampler1, r6.xy);\n"
    "    r2.x = r2.x - r4.x;\n"
    "    r7.xy = r2.xy + hg_Params[4].xy;\n"
    "    r7.xy = r7.xy*hg_Params[4].zw;\n"
    "    r7 = hg_Texture1.sample(hg_Sampler1, r7.xy);\n"
    "    r2.y = r2.y + r4.z;\n"
    "    r8.xy = r2.xy + hg_Params[4].xy;\n"
    "    r8.xy = r8.xy*hg_Params[4].zw;\n"
    "    r8 = hg_Texture1.sample(hg_Sampler1, r8.xy);\n"
    "    r2.x = r2.x - r4.y;\n"
    "    r9.xy = r2.xy + hg_Params[4].xy;\n"
    "    r9.xy = r9.xy*hg_Params[4].zw;\n"
    "    r9 = hg_Texture1.sample(hg_Sampler1, r9.xy);\n"
    "    r2.x = r2.x + r4.x;\n"
    "    r10.xy = r2.xy + hg_Params[4].xy;\n"
    "    r10.xy = r10.xy*hg_Params[4].zw;\n"
    "    r10 = hg_Texture1.sample(hg_Sampler1, r10.xy);\n"
    "    r2.x = r2.x + r4.y;\n"
    "    r2.xy = r2.xy + hg_Params[4].xy;\n"
    "    r2.xy = r2.xy*hg_Params[4].zw;\n"
    "    r2 = hg_Texture1.sample(hg_Sampler1, r2.xy);\n"
    "    r4 = float4(r3.xzzy > r3.yxyz);\n"
    "    r11.x = float(r3.y > r3.x);\n"
    "    r12 = float4(r3.yxxz >= r3.xyzy);\n"
    "    r13 = r2 - r8;\n"
    "    r14 = r7 - r1;\n"
    "    r15 = r8 - r7;\n"
    "    r16 = r13*r3.xxxx;\n"
    "    r16 = r14*r3.yyyy + r16;\n"
    "    r15 = r15*r3.zzzz + r16;\n"
    "    r16 = r10 - r9;\n"
    "    r17 = r2 - r10;\n"
    "    r18 = r9 - r1;\n"
    "    r16 = r16*r3.xxxx;\n"
    "    r16 = r17*r3.yyyy + r16;\n"
    "    r16 = r18*r3.zzzz + r16;\n"
    "    r19 = fmin(r4.xxxx, r4.yyyy);\n"
    "    r15 = select(r15, r16, r19 > 0.00000f);\n"
    "    r8 = r8 - r9;\n"
    "    r13 = r13*r3.xxxx;\n"
    "    r13 = r8*r3.yyyy + r13;\n"
    "    r13 = r18*r3.zzzz + r13;\n"
    "    r19 = fmin(r12.xxxx, r4.zzzz);\n"
    "    r15 = select(r15, r13, r19 > 0.00000f);\n"
    "    r16 = r5 - r1;\n"
    "    r9 = r6 - r5;\n"
    "    r2 = r2 - r6;\n"
    "    r8 = r16*r3.xxxx;\n"
    "    r8 = r9*r3.yyyy + r8;\n"
    "    r8 = r2*r3.zzzz + r8;\n"
    "    r4 = fmin(r4.wwww, r12.yyyy);\n"
    "    r15 = select(r15, r8, r4 > 0.00000f);\n"
    "    r6 = r6 - r7;\n"
    "    r6 = r6*r3.xxxx;\n"
    "    r6 = r14*r3.yyyy + r6;\n"
    "    r6 = r2*r3.zzzz + r6;\n"
    "    r11 = fmin(r12.zzzz, r11.xxxx);\n"
    "    r15 = select(r15, r6, r11 > 0.00000f);\n"
    "    r10 = r10 - r5;\n"
    "    r16 = r16*r3.xxxx;\n"
    "    r16 = r17*r3.yyyy + r16;\n"
    "    r16 = r10*r3.zzzz + r16;\n"
    "    r12 = fmin(r12.wwww, r12.zzzz);\n"
    "    r12 = select(r15, r16, r12 > 0.00000f);\n"
    "    r12 = r12 + r1;\n"
    "    r12 = r12*hg_Params[0].zzzz + hg_Params[0].wwww;\n"
    "    output.color0 = select(r12, r0, hg_Params[2] < 0.00000f);\n"
    "    return output;\n"
    "}\n");
  HGProgramDescriptor::SetFragmentFunctionName(a2, "HgcApply3DLUTTetrahedralFast_basekernel");
}

void sub_25FE20974(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE209AC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE209A4);
}

uint64_t HgcApply3DLUTTetrahedralFast_basekernel::BindTexture(HgcApply3DLUTTetrahedralFast_basekernel *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v8.n128_u32[0] = 1.0;
      v9.n128_u32[0] = 1.0;
    }

    else
    {
      v8.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v9.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v6.n128_f32[0] = *(a2 + 60);
    v7.n128_f32[0] = *(a2 + 61);
    (*(*a2 + 136))(a2, 4, v6, v7, v8, v9);
    return 0;
  }

  else if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (!v4)
    {
      (*(*a2 + 168))(a2);
      return 0;
    }
  }

  return result;
}

uint64_t HgcApply3DLUTTetrahedralFast_basekernel::Bind(HgcApply3DLUTTetrahedralFast_basekernel *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcApply3DLUTTetrahedralFast_basekernel::RenderTile(HgcApply3DLUTTetrahedralFast_basekernel *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = a2[1].i32[0] - v2.i32[0];
    if (v4 >= 1)
    {
      v5 = 0;
      *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
      v6.i64[1] = 0x3F80000000000000;
      v7 = a2[10];
      v8 = a2[2];
      v9 = 16 * a2[11].i32[0];
      v10 = 16 * a2[3].i32[0];
      v11 = 16 * v4;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      do
      {
        v13 = 0;
        do
        {
          v14 = *(*&v7 + v13);
          v15 = *(this + 51);
          v16 = *(v15 + 1);
          v17 = vaddq_f32(vdupq_lane_s32(*v15, 1), vmulq_n_f32(v14, COERCE_FLOAT(*v15)));
          v18 = vmulq_f32(v17, v17);
          v19 = *(v15 + 3);
          v20 = vmulq_f32(v17, v18);
          v21 = vaddq_f32(vaddq_f32(vdupq_lane_s32(*v19.f32, 0), vmulq_lane_f32(v17, *v19.f32, 1)), vmulq_laneq_f32(v18, v19, 2));
          v22 = vmulq_laneq_f32(v20, v19, 3);
          v23 = *(v15 + 4);
          v24 = *(v15 + 5);
          v25 = vmaxq_f32(vaddq_f32(v21, v22), v23);
          v26 = vsubq_f32(vdupq_lane_s32(*v16.f32, 1), v24);
          v27 = vminq_f32(v25, v26);
          v28 = vcvtq_f32_s32(vcvtq_s32_f32(v27));
          v29 = vsubq_f32(v28, vandq_s8(v24, vcgtq_f32(v28, v27)));
          v30 = vsubq_f32(v27, v29);
          v31 = vmulq_f32(v16, v29);
          v32 = vmulq_f32(v16, vsubq_f32(vminq_f32(vaddq_f32(v24, v29), v26), v29));
          v33 = *(v15 + 6);
          v34 = vaddq_f32(*(v15 + 7), vbslq_s8(v33, vaddq_f32(v31, vrev64q_s32(v31)), vextq_s8(v29, v29, 4uLL)));
          v35 = a2[12];
          v36 = &a2[13];
          v37 = vaddq_f32(vsubq_f32(v34, v6), v12);
          v38 = vcvtq_s32_f32(v37);
          v39 = vbslq_s8(v33, vaddq_f32(v32, v34), v34);
          v40 = vaddq_f32(vsubq_f32(v39, v6), v12);
          v41 = vcvtq_s32_f32(v40);
          *v40.f32 = vadd_s32(*v41.i8, *&vcgtq_f32(vcvtq_f32_s32(v41), v40));
          *v37.f32 = vadd_s32(*v38.i8, *&vcgtq_f32(vcvtq_f32_s32(v38), v37));
          *v41.i8 = vld1_dup_f32(v36);
          *v37.f32 = vmla_s32(vzip1_s32(*v37.f32, *v40.f32), vzip2_s32(*v37.f32, *v40.f32), *v41.i8);
          v42 = vrev64q_s32(v32);
          v43 = vbslq_s8(v33, vaddq_f32(v42, v39), v34);
          LODWORD(v36) = v37.i32[1];
          v44 = vaddq_f32(vsubq_f32(v43, v6), v12);
          v45 = vcvtq_s32_f32(v44);
          v46 = vsubq_f32(v43, v32);
          v47 = v37.i32[0];
          v48 = vbslq_s8(v33, v46, v34);
          v49 = vaddq_f32(vsubq_f32(v48, v6), v12);
          v50 = vcvtq_s32_f32(v49);
          v51 = *(*&v35 + 16 * v47);
          *v44.f32 = vadd_s32(*v45.i8, *&vcgtq_f32(vcvtq_f32_s32(v45), v44));
          *v45.i8 = vadd_s32(*v50.i8, *&vcgtq_f32(vcvtq_f32_s32(v50), v49));
          v52 = *(*&v35 + 16 * v36);
          *v44.f32 = vmla_s32(vzip1_s32(*v44.f32, *v45.i8), vzip2_s32(*v44.f32, *v45.i8), *v41.i8);
          v53 = vaddq_f32(vextq_s8(v32, v32, 4uLL), v48);
          v54 = vbslq_s8(v33, v46, v53);
          v55 = vaddq_f32(vsubq_f32(v54, v6), v12);
          v56 = vcvtq_s32_f32(v55);
          v57 = vbslq_s8(v33, vsubq_f32(v54, v42), v53);
          v58 = *(*&v35 + 16 * v44.i32[0]);
          v59 = vaddq_f32(vsubq_f32(v57, v6), v12);
          v60 = vcvtq_s32_f32(v59);
          v61 = *(*&v35 + 16 * v44.i32[1]);
          *v55.f32 = vadd_s32(*v56.i8, *&vcgtq_f32(vcvtq_f32_s32(v56), v55));
          *v56.i8 = vadd_s32(*v60.i8, *&vcgtq_f32(vcvtq_f32_s32(v60), v59));
          *v55.f32 = vmla_s32(vzip1_s32(*v55.f32, *v56.i8), vzip2_s32(*v55.f32, *v56.i8), *v41.i8);
          LODWORD(v36) = v55.i32[1];
          v62 = vbslq_s8(v33, vaddq_f32(v32, v57), v53);
          v63 = v55.i32[0];
          v64 = vaddq_f32(vsubq_f32(v62, v6), v12);
          v65 = vcvtq_s32_f32(v64);
          v66 = *(*&v35 + 16 * v63);
          v67 = vaddq_f32(vsubq_f32(vbslq_s8(v33, vaddq_f32(v42, v62), v53), v6), v12);
          v68 = *(*&v35 + 16 * v36);
          v69 = vcvtq_s32_f32(v67);
          *v42.f32 = vadd_s32(*v65.i8, *&vcgtq_f32(vcvtq_f32_s32(v65), v64));
          *v67.f32 = vadd_s32(*v69.i8, *&vcgtq_f32(vcvtq_f32_s32(v69), v67));
          *v69.i8 = vzip2_s32(*v42.f32, *v67.f32);
          v70 = *(v15 + 8);
          v71 = *(v15 + 9);
          *v59.f32 = vqtbl1_s8(v30, *v70.i8);
          *v67.f32 = vzip1_s32(*v42.f32, *v67.f32);
          *&v59.u32[2] = vqtbl1_s8(v30, *&vextq_s8(v70, v70, 8uLL));
          *v42.f32 = vqtbl1_s8(v30, *v71.f32);
          *v67.f32 = vmla_s32(*v67.f32, *v69.i8, *v41.i8);
          *&v42.u32[2] = vqtbl1_s8(v30, *&vextq_s8(v71, v71, 8uLL));
          v72 = vandq_s8(v24, vcgtq_f32(v42, v59));
          LODWORD(v36) = v67.i32[1];
          v73 = *(v15 + 10);
          v74 = *(v15 + 11);
          *v71.f32 = vqtbl1_s8(v30, *v73.f32);
          *&v71.u32[2] = vqtbl1_s8(v30, *&vextq_s8(v73, v73, 8uLL));
          v75 = *(*&v35 + 16 * v67.i32[0]);
          v69.i64[0] = vandq_s8(v24, vcgtq_f32(vrev64q_s32(v30), v30)).u64[0];
          *v73.f32 = vqtbl1_s8(v30, *v74.i8);
          v76 = *(*&v35 + 16 * v36);
          *&v73.u32[2] = vqtbl1_s8(v30, *&vextq_s8(v74, v74, 8uLL));
          v77 = vandq_s8(v24, vcgeq_f32(v73, v71));
          v78 = vmulq_lane_f32(vsubq_f32(v61, v51), *v30.f32, 1);
          v79 = vmulq_n_f32(vsubq_f32(v76, v66), v30.f32[0]);
          v80 = vmulq_n_f32(vsubq_f32(v75, v68), v30.f32[0]);
          v81 = vmulq_laneq_f32(vsubq_f32(v68, v51), v30, 2);
          v82 = vmulq_lane_f32(vsubq_f32(v76, v75), *v30.f32, 1);
          v83 = vmulq_lane_f32(vsubq_f32(v66, v68), *v30.f32, 1);
          v84 = vaddq_f32(vmulq_laneq_f32(vsubq_f32(v66, v61), v30, 2), vaddq_f32(v78, v79));
          v85 = vmulq_n_f32(vsubq_f32(v52, v51), v30.f32[0]);
          v86 = vaddq_f32(v85, vmulq_lane_f32(vsubq_f32(v58, v52), *v30.f32, 1));
          v87 = vmulq_laneq_f32(vsubq_f32(v76, v58), v30, 2);
          v88 = vaddq_f32(vmulq_n_f32(vsubq_f32(v58, v61), v30.f32[0]), v78);
          v89 = vdupq_laneq_s32(v77, 2);
          *(*&v8 + v13) = vbslq_s8(vcgtq_f32(v23, *(v15 + 2)), v14, vaddq_f32(vdupq_laneq_s32(*v15, 3), vmulq_laneq_f32(vaddq_f32(v51, vbslq_s8(vcgtq_f32(vminq_f32(vdupq_laneq_s32(v77, 3), v89), v23), vaddq_f32(vmulq_laneq_f32(vsubq_f32(v75, v52), v30, 2), vaddq_f32(v85, v82)), vbslq_s8(vcgtq_f32(vminq_f32(v89, vdupq_lane_s32(*v69.i8, 0)), v23), vaddq_f32(v88, v87), vbslq_s8(vcgtq_f32(vminq_f32(vdupq_laneq_s32(v72, 3), vdupq_lane_s32(*v77.i8, 1)), v23), vaddq_f32(v86, v87), vbslq_s8(vcgtq_f32(vminq_f32(vdupq_lane_s32(*v77.i8, 0), vdupq_laneq_s32(v72, 2)), v23), vaddq_f32(v81, vaddq_f32(v83, v79)), vbslq_s8(vcgtq_f32(vminq_f32(vdupq_lane_s32(*v72.i8, 0), vdupq_lane_s32(*v72.i8, 1)), v23), vaddq_f32(v81, vaddq_f32(v80, v82)), v84)))))), *v15, 2)));
          v13 += 16;
        }

        while (v11 != v13);
        ++v5;
        *&v7 += v9;
        *&v8 += v10;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

uint64_t HgcApply3DLUTTetrahedralFast_basekernel::GetDOD(HgcApply3DLUTTetrahedralFast_basekernel *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    return 0x8000000080000000;
  }

  if (a3)
  {
    return 0;
  }

  return *&a4.var0;
}

uint64_t HgcApply3DLUTTetrahedralFast_basekernel::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    return HGRenderer::GetDOD(a2, Input);
  }

  else
  {
    if (a3)
    {
      *&a4.var0 = 0;
    }

    return *&a4.var0;
  }
}

void HgcApply3DLUTTetrahedralFast_basekernel::HgcApply3DLUTTetrahedralFast_basekernel(HgcApply3DLUTTetrahedralFast_basekernel *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723A8D0;
  operator new();
}

void HgcApply3DLUTTetrahedralFast_basekernel::~HgcApply3DLUTTetrahedralFast_basekernel(HgcApply3DLUTTetrahedralFast_basekernel *this)
{
  *this = &unk_28723A8D0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C408070C27FLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723A8D0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C408070C27FLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcApply3DLUTTetrahedralFast_basekernel::~HgcApply3DLUTTetrahedralFast_basekernel(HGNode *this)
{
  *this = &unk_28723A8D0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcApply3DLUTTetrahedralFast_basekernel::SetParameter(HgcApply3DLUTTetrahedralFast_basekernel *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcApply3DLUTTetrahedralFast_basekernel::GetParameter(HgcApply3DLUTTetrahedralFast_basekernel *this, unsigned int a2, float *a3)
{
  if (a2 > 3)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcPixelFormatConversion_kV4F_WXYZ_input::GetProgram(HgcPixelFormatConversion_kV4F_WXYZ_input *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000023d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0.yzwx) - hg_Params[0];\n    return output;\n}\n//MD5=7f28c0de:80e0121d:8aa6daeb:92eb6aac\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000022f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0.yzwx - hg_Params[0];\n    return output;\n}\n//MD5=3c877c69:34cadceb:acdc9199:d64abffa\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001fd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0.yzwx - hg_ProgramLocal0;\n}\n//MD5=2fa037b7:8cefdd5b:5f08de08:8c22b023\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE21850(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE21880(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE21878);
}

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_input::BindTexture(HgcPixelFormatConversion_kV4F_WXYZ_input *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_input::Bind(HgcPixelFormatConversion_kV4F_WXYZ_input *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_input::RenderTile(HgcPixelFormatConversion_kV4F_WXYZ_input *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v25 = 0;
        v26 = 16 * v7;
        v27 = 16 * v6;
        v28 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v29 = 0;
          do
          {
            v5[v29 / 0x10] = vsubq_f32(vextq_s8(v4[v29 / 0x10], v4[v29 / 0x10], 4uLL), **(this + 51));
            v29 += 16;
          }

          while (v28 != v29);
          ++v25;
          v4 = (v4 + v26);
          v5 = (v5 + v27);
        }

        while (v25 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = **(this + 51);
          v20 = vsubq_f32(vextq_s8(v4[v16 - 1], v4[v16 - 1], 4uLL), v19);
          v21 = vsubq_f32(vextq_s8(v4[v16], v4[v16], 4uLL), v19);
          v22 = vsubq_f32(vextq_s8(v4[v16 + 1], v4[v16 + 1], 4uLL), v19);
          v23 = &v5[v16];
          v23[-2] = vsubq_f32(vextq_s8(v4[v16 - 2], v4[v16 - 2], 4uLL), v19);
          v23[-1] = v20;
          v13 += 4;
          *v23 = v21;
          v23[1] = v22;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v24 = *v17++;
            *v18++ = vsubq_f32(vextq_s8(v24, v24, 4uLL), **(this + 51));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_input::GetDOD(HgcPixelFormatConversion_kV4F_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_input::GetROI(HgcPixelFormatConversion_kV4F_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPixelFormatConversion_kV4F_WXYZ_input::HgcPixelFormatConversion_kV4F_WXYZ_input(HgcPixelFormatConversion_kV4F_WXYZ_input *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723AB38;
  operator new();
}

void HgcPixelFormatConversion_kV4F_WXYZ_input::~HgcPixelFormatConversion_kV4F_WXYZ_input(HgcPixelFormatConversion_kV4F_WXYZ_input *this)
{
  *this = &unk_28723AB38;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723AB38;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcPixelFormatConversion_kV4F_WXYZ_input::~HgcPixelFormatConversion_kV4F_WXYZ_input(HGNode *this)
{
  *this = &unk_28723AB38;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_input::SetParameter(HgcPixelFormatConversion_kV4F_WXYZ_input *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcPixelFormatConversion_kV4F_WXYZ_input::GetParameter(HgcPixelFormatConversion_kV4F_WXYZ_input *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

const char *HgcPixelFormatConversion_kV4S_WXYZ_input::GetProgram(HgcPixelFormatConversion_kV4S_WXYZ_input *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000023d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0.yzwx) - hg_Params[0];\n    return output;\n}\n//MD5=7f28c0de:80e0121d:8aa6daeb:92eb6aac\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000022f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0.yzwx - hg_Params[0];\n    return output;\n}\n//MD5=3c877c69:34cadceb:acdc9199:d64abffa\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001fd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0.yzwx - hg_ProgramLocal0;\n}\n//MD5=2fa037b7:8cefdd5b:5f08de08:8c22b023\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE22198(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE221C8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE221C0);
}

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_input::BindTexture(HgcPixelFormatConversion_kV4S_WXYZ_input *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_input::Bind(HgcPixelFormatConversion_kV4S_WXYZ_input *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_input::RenderTile(HgcPixelFormatConversion_kV4S_WXYZ_input *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v25 = 0;
        v26 = 16 * v7;
        v27 = 16 * v6;
        v28 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v29 = 0;
          do
          {
            v5[v29 / 0x10] = vsubq_f32(vextq_s8(v4[v29 / 0x10], v4[v29 / 0x10], 4uLL), **(this + 51));
            v29 += 16;
          }

          while (v28 != v29);
          ++v25;
          v4 = (v4 + v26);
          v5 = (v5 + v27);
        }

        while (v25 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = **(this + 51);
          v20 = vsubq_f32(vextq_s8(v4[v16 - 1], v4[v16 - 1], 4uLL), v19);
          v21 = vsubq_f32(vextq_s8(v4[v16], v4[v16], 4uLL), v19);
          v22 = vsubq_f32(vextq_s8(v4[v16 + 1], v4[v16 + 1], 4uLL), v19);
          v23 = &v5[v16];
          v23[-2] = vsubq_f32(vextq_s8(v4[v16 - 2], v4[v16 - 2], 4uLL), v19);
          v23[-1] = v20;
          v13 += 4;
          *v23 = v21;
          v23[1] = v22;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v24 = *v17++;
            *v18++ = vsubq_f32(vextq_s8(v24, v24, 4uLL), **(this + 51));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_input::GetDOD(HgcPixelFormatConversion_kV4S_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_input::GetROI(HgcPixelFormatConversion_kV4S_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPixelFormatConversion_kV4S_WXYZ_input::HgcPixelFormatConversion_kV4S_WXYZ_input(HgcPixelFormatConversion_kV4S_WXYZ_input *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723ADA0;
  operator new();
}

void HgcPixelFormatConversion_kV4S_WXYZ_input::~HgcPixelFormatConversion_kV4S_WXYZ_input(HgcPixelFormatConversion_kV4S_WXYZ_input *this)
{
  *this = &unk_28723ADA0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723ADA0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcPixelFormatConversion_kV4S_WXYZ_input::~HgcPixelFormatConversion_kV4S_WXYZ_input(HGNode *this)
{
  *this = &unk_28723ADA0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_input::SetParameter(HgcPixelFormatConversion_kV4S_WXYZ_input *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcPixelFormatConversion_kV4S_WXYZ_input::GetParameter(HgcPixelFormatConversion_kV4S_WXYZ_input *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

const char *HgcColorGamma_v216_yxzx_collapse::GetProgram(HgcColorGamma_v216_yxzx_collapse *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002a9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r1.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    output.color0.xyz = float3(r0.yxz);\n    output.color0.w = float(r1.x);\n    return output;\n}\n//MD5=8e7771c2:a06a6c11:9daa802a:96046119\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000028d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r1.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    output.color0.xyz = r0.yxz;\n    output.color0.w = r1.x;\n    return output;\n}\n//MD5=1f020ce8:91e1b790:66920186:95589d9d\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000243\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.xyz = texture2D(hg_Texture0, hg_TexCoord0.xy).xyz;\n    r1.x = texture2D(hg_Texture0, hg_TexCoord1.xy).x;\n    gl_FragColor.xyz = r0.yxz;\n    gl_FragColor.w = r1.x;\n}\n//MD5=36e2a11e:fad481c4:33936514:6896479c\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FE22C9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE22CD8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE22CD0);
}

uint64_t HgcColorGamma_v216_yxzx_collapse::BindTexture(HgcColorGamma_v216_yxzx_collapse *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 2.0, 1.0, 1.0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 2.0, 1.0, 1.0);
  return 0;
}

uint64_t HgcColorGamma_v216_yxzx_collapse::RenderTile(HgcColorGamma_v216_yxzx_collapse *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = (*(a2 + 2) - v3);
    v5 = *(a2 + 10);
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v41 = 0;
        v42 = 16 * v7;
        v43 = v5 + 16 * v3 + 16;
        v44 = 16 * v8;
        v45 = 16 * v4;
        do
        {
          v46 = 0;
          v47 = v43;
          do
          {
            v48 = v47[-1];
            v49 = *(this + 51);
            *v50.i8 = vqtbl1_s8(v48, *v49);
            v50.u64[1] = vqtbl1_s8(v48, *&vextq_s8(*v49, *v49, 8uLL));
            v6[v46 / 0x10] = vbslq_s8(*(v49 + 16), vextq_s8(*v47, *v47, 4uLL), v50);
            v46 += 16;
            v47 += 2;
          }

          while (v45 != v46);
          ++v41;
          v6 = (v6 + v42);
          v43 += v44;
        }

        while (v41 != v2);
      }
    }

    else
    {
      v9 = 0;
      v10 = (v5 + 16 * v3);
      v11 = v10 + 4;
      v12 = 16 * v8;
      v13 = v6 + 2;
      v14 = 16 * v7;
      v15 = v6 + 4;
      v16 = v10 + 9;
      do
      {
        v17 = 0;
        v18 = v16;
        v19 = v15;
        v20 = v13;
        v21 = v11;
        do
        {
          v22 = v21[-4];
          v23 = *(this + 51);
          v24 = *(v23 + 16);
          *v25.i8 = vqtbl1_s8(v22, *v23);
          v26 = vextq_s8(*v23, *v23, 8uLL).u64[0];
          v25.u64[1] = vqtbl1_s8(v22, v26);
          v27 = v21[-2];
          *v28.i8 = vqtbl1_s8(v27, *v23);
          v28.u64[1] = vqtbl1_s8(v27, v26);
          *v29.i8 = vqtbl1_s8(*v21, *v23);
          v29.u64[1] = vqtbl1_s8(*v21, v26);
          v30 = v21[2];
          *v31.i8 = vqtbl1_s8(v30, *v23);
          v32 = v19;
          v33 = v18;
          v31.u64[1] = vqtbl1_s8(v30, v26);
          v34 = vbslq_s8(v24, vextq_s8(v21[-3], v21[-3], 4uLL), v25);
          v35 = vbslq_s8(v24, vextq_s8(v21[-1], v21[-1], 4uLL), v28);
          v36 = vbslq_s8(v24, vextq_s8(v21[1], v21[1], 4uLL), v29);
          v37 = vbslq_s8(v24, vextq_s8(v21[3], v21[3], 4uLL), v31);
          v20[-2] = v34;
          v20[-1] = v35;
          v17 += 4;
          v21 += 8;
          *v20 = v36;
          v20[1] = v37;
          v20 += 4;
          v19 += 4;
          v18 += 8;
        }

        while (v17 < (v4 - 3));
        if (v4 > v17)
        {
          do
          {
            v38 = v33[-1];
            v39 = *(this + 51);
            *v40.i8 = vqtbl1_s8(v38, *v39);
            v40.u64[1] = vqtbl1_s8(v38, *&vextq_s8(*v39, *v39, 8uLL));
            *v32++ = vbslq_s8(*(v39 + 16), vextq_s8(*v33, *v33, 4uLL), v40);
            ++v17;
            v33 += 2;
          }

          while (v17 < v4);
        }

        ++v9;
        v11 = (v11 + v12);
        v13 = (v13 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
      }

      while (v9 != v2);
    }
  }

  return 0;
}

uint64_t HgcColorGamma_v216_yxzx_collapse::GetDOD(HgcColorGamma_v216_yxzx_collapse *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0, 0, 0xFFFFFFFF, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 0.5);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcColorGamma_v216_yxzx_collapse::GetROI(HgcColorGamma_v216_yxzx_collapse *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 2.0);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0, 0, 1u, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcColorGamma_v216_yxzx_collapse::HgcColorGamma_v216_yxzx_collapse(HgcColorGamma_v216_yxzx_collapse *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723B008;
  operator new();
}

void HgcColorGamma_v216_yxzx_collapse::~HgcColorGamma_v216_yxzx_collapse(HgcColorGamma_v216_yxzx_collapse *this)
{
  *this = &unk_28723B008;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723B008;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_v216_yxzx_collapse::~HgcColorGamma_v216_yxzx_collapse(HGNode *this)
{
  *this = &unk_28723B008;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcPixelFormatConversion_kV4B10Bit_BE_input::GetProgram(HgcPixelFormatConversion_kV4B10Bit_BE_input *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003c4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(255.0000000, 0.0009775171056, 1024.000000, 1.000000000);\n    const half4 c1 = half4(4.000000000, 0.01562500000, 0.06250000000, 0.2500000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0.zyxw*c0.xxxx + c0.yyyy;\n    r0 = floor(r0);\n    r0 = r0.zyxw*c1;\n    r1.yz = fract(r0.yz);\n    r0 = floor(r0);\n    r2.x = dot(r0.xy, 1.00000h);\n    r2.yz = r1.yz*c0.zz + r0.zw;\n    r2.xyz = r2.xyz*c0.yyy;\n    r2.w = c0.w;\n    output.color0 = float4(r2);\n    return output;\n}\n//MD5=6362bdc0:22917061:826e61ed:9e40a59e\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ba\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(255.0000000, 0.0009775171056, 1024.000000, 1.000000000);\n    const float4 c1 = float4(4.000000000, 0.01562500000, 0.06250000000, 0.2500000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0.zyxw*c0.xxxx + c0.yyyy;\n    r0 = floor(r0);\n    r0 = r0.zyxw*c1;\n    r1.yz = fract(r0.yz);\n    r0 = floor(r0);\n    r2.x = dot(r0.xy, 1.00000f);\n    r2.yz = r1.yz*c0.zz + r0.zw;\n    r2.xyz = r2.xyz*c0.yyy;\n    r2.w = c0.w;\n    output.color0 = r2;\n    return output;\n}\n//MD5=0e872e95:a0ea5bda:b3df1f87:fc314c5e\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000368\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(255.0000000, 0.0009775171056, 1024.000000, 1.000000000);\n    const mediump vec4 c1 = vec4(4.000000000, 0.01562500000, 0.06250000000, 0.2500000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0.zyxw*c0.xxxx + c0.yyyy;\n    r0 = floor(r0);\n    r0 = r0.zyxw*c1;\n    r1.yz = fract(r0.yz);\n    r0 = floor(r0);\n    r2.x = dot(r0.xy, vec2(1.00000));\n    r2.yz = r1.yz*c0.zz + r0.zw;\n    r2.xyz = r2.xyz*c0.yyy;\n    r2.w = c0.w;\n    gl_FragColor = r2;\n}\n//MD5=3ba21b75:19572493:8b20e9c9:500e949a\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE237F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE23828(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE23820);
}

uint64_t HgcPixelFormatConversion_kV4B10Bit_BE_input::BindTexture(HgcPixelFormatConversion_kV4B10Bit_BE_input *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4B10Bit_BE_input::RenderTile(HgcPixelFormatConversion_kV4B10Bit_BE_input *this, HGTile *a2, int8x16_t a3)
{
  v3 = *(a2 + 3) - *(a2 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 2) - *a2;
    v6 = *(a2 + 2);
    v7 = *(a2 + 10);
    v8 = 16 * *(a2 + 22);
    v9 = 16 * *(a2 + 6);
    a3.i32[0] = 1.0;
    while (v5 < 4)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v7 += v8;
      v6 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 32;
    for (i = v5; i > 3; i -= 4)
    {
      v13 = *(this + 51);
      v14 = *(v7 + v11 - 32);
      v15 = *(v7 + v11 - 16);
      v16 = *(v13 + 16);
      *v17.f32 = vqtbl1_s8(v14, *v13);
      v18 = vextq_s8(*v13, *v13, 8uLL).u64[0];
      *&v17.u32[2] = vqtbl1_s8(v14, v18);
      *v19.f32 = vqtbl1_s8(v15, *v13);
      *&v19.u32[2] = vqtbl1_s8(v15, v18);
      v20 = *(v7 + v11);
      v21 = *(v7 + v11 + 16);
      *v22.f32 = vqtbl1_s8(v20, *v13);
      *&v22.u32[2] = vqtbl1_s8(v20, v18);
      *v23.f32 = vqtbl1_s8(v21, *v13);
      *&v23.u32[2] = vqtbl1_s8(v21, v18);
      v25 = *(v13 + 32);
      v24 = *(v13 + 48);
      v26 = vaddq_f32(v16, vmulq_f32(v25, v17));
      v27 = vaddq_f32(v16, vmulq_f32(v25, v19));
      v28 = vaddq_f32(v16, vmulq_f32(v25, v22));
      v29 = vaddq_f32(v16, vmulq_f32(v25, v23));
      v30 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
      v31 = vcvtq_f32_s32(vcvtq_s32_f32(v27));
      v32 = vcvtq_f32_s32(vcvtq_s32_f32(v28));
      v33 = vcvtq_f32_s32(vcvtq_s32_f32(v29));
      v34 = vsubq_f32(v30, vandq_s8(v24, vcgtq_f32(v30, v26)));
      v35 = vsubq_f32(v31, vandq_s8(v24, vcgtq_f32(v31, v27)));
      v36 = vsubq_f32(v32, vandq_s8(v24, vcgtq_f32(v32, v28)));
      v37 = vsubq_f32(v33, vandq_s8(v24, vcgtq_f32(v33, v29)));
      *v29.f32 = vqtbl1_s8(v34, *v13);
      *&v29.u32[2] = vqtbl1_s8(v34, v18);
      *v34.f32 = vqtbl1_s8(v35, *v13);
      *&v34.u32[2] = vqtbl1_s8(v35, v18);
      *v35.f32 = vqtbl1_s8(v36, *v13);
      *v38.f32 = vqtbl1_s8(v37, *v13);
      *&v35.u32[2] = vqtbl1_s8(v36, v18);
      *&v38.u32[2] = vqtbl1_s8(v37, v18);
      v39 = *(v13 + 64);
      v40 = *(v13 + 80);
      v41 = vmulq_f32(v39, v29);
      v42 = vmulq_f32(v39, v34);
      v43 = vmulq_f32(v39, v35);
      v44 = vmulq_f32(v39, v38);
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v49 = vsubq_f32(v45, vandq_s8(v24, vcgtq_f32(v45, v41)));
      v50 = vsubq_f32(v46, vandq_s8(v24, vcgtq_f32(v46, v42)));
      v51 = vsubq_f32(v47, vandq_s8(v24, vcgtq_f32(v47, v43)));
      v52 = vsubq_f32(v48, vandq_s8(v24, vcgtq_f32(v48, v44)));
      v53 = vaddq_f32(v49, vrev64q_s32(v49));
      v54 = vaddq_f32(v52, vrev64q_s32(v52));
      v55 = vaddq_f32(vextq_s8(v49, a3, 4uLL), vmulq_lane_f32(vsubq_f32(v41, v49), *&v40, 1));
      v56 = vaddq_f32(vextq_s8(v52, a3, 4uLL), vmulq_lane_f32(vsubq_f32(v44, v52), *&v40, 1));
      v57 = *(v13 + 96);
      v58 = vbslq_s8(v57, vaddq_f32(v50, vrev64q_s32(v50)), vaddq_f32(vextq_s8(v50, a3, 4uLL), vmulq_lane_f32(vsubq_f32(v42, v50), *&v40, 1)));
      v59 = vbslq_s8(v57, vaddq_f32(v51, vrev64q_s32(v51)), vaddq_f32(vextq_s8(v51, a3, 4uLL), vmulq_lane_f32(vsubq_f32(v43, v51), *&v40, 1)));
      v60 = vbslq_s8(v57, v54, v56);
      v61 = vmulq_f32(v16, vbslq_s8(v57, v53, v55));
      v62 = vmulq_f32(v16, v58);
      v63 = vmulq_f32(v16, v59);
      v61.i32[3] = 1.0;
      v62.i32[3] = 1.0;
      v63.i32[3] = 1.0;
      v64 = vmulq_f32(v16, v60);
      v64.i32[3] = 1.0;
      v65 = (v6 + v11);
      v65[-2] = v61;
      v65[-1] = v62;
      *v65 = v63;
      v65[1] = v64;
      v10 += 4;
      v11 += 64;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v66 = *(v7 + 16 * v10);
      v67 = *(this + 51);
      v68 = *(v67 + 16);
      *v69.f32 = vqtbl1_s8(v66, *v67);
      v70 = vextq_s8(*v67, *v67, 8uLL).u64[0];
      *&v69.u32[2] = vqtbl1_s8(v66, v70);
      v71 = *(v67 + 48);
      v72 = vaddq_f32(v68, vmulq_f32(*(v67 + 32), v69));
      v73 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
      v74 = vsubq_f32(v73, vandq_s8(v71, vcgtq_f32(v73, v72)));
      *v75.f32 = vqtbl1_s8(v74, *v67);
      *&v75.u32[2] = vqtbl1_s8(v74, v70);
      v76 = vmulq_f32(*(v67 + 64), v75);
      v77 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v78 = vsubq_f32(v77, vandq_s8(v71, vcgtq_f32(v77, v76)));
      v79 = vmulq_f32(v68, vbslq_s8(*(v67 + 96), vaddq_f32(v78, vrev64q_s32(v78)), vaddq_f32(vextq_s8(v78, a3, 4uLL), vmulq_lane_f32(vsubq_f32(v76, v78), *(v67 + 80), 1))));
      v79.i32[3] = 1.0;
      *(v6 + 16 * v10++) = v79;
    }

    while (v10 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4B10Bit_BE_input::GetDOD(HgcPixelFormatConversion_kV4B10Bit_BE_input *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPixelFormatConversion_kV4B10Bit_BE_input::GetROI(HgcPixelFormatConversion_kV4B10Bit_BE_input *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPixelFormatConversion_kV4B10Bit_BE_input::HgcPixelFormatConversion_kV4B10Bit_BE_input(HgcPixelFormatConversion_kV4B10Bit_BE_input *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723B270;
  operator new();
}

void HgcPixelFormatConversion_kV4B10Bit_BE_input::~HgcPixelFormatConversion_kV4B10Bit_BE_input(HgcPixelFormatConversion_kV4B10Bit_BE_input *this)
{
  *this = &unk_28723B270;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723B270;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcPixelFormatConversion_kV4B10Bit_BE_input::~HgcPixelFormatConversion_kV4B10Bit_BE_input(HGNode *this)
{
  *this = &unk_28723B270;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcColorGamma_chroma_downsample_f1::GetProgram(HgcColorGamma_chroma_downsample_f1 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000035b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.5000000000, 0.000000000, 0.2500000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r0 = r0*c0.xyyx;\n    r0 = r1*c0.zwwz + r0;\n    output.color0 = float4(r2)*float4(c0.zwwz) + float4(r0);\n    return output;\n}\n//MD5=2f81be37:9af8fe44:59c646aa:51f8c5ae\n//SIG=00400000:00000000:00000000:00000001:0001:0000:0003:0000:0000:0000:000e:0000:0003:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000032f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.5000000000, 0.000000000, 0.2500000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r0 = r0*c0.xyyx;\n    r0 = r1*c0.zwwz + r0;\n    output.color0 = r2*c0.zwwz + r0;\n    return output;\n}\n//MD5=a66832cf:ae494a89:e4eb13a9:8c28c8fe\n//SIG=00000000:00000000:00000000:00000000:0001:0000:0003:0000:0000:0000:000e:0000:0003:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000300\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.5000000000, 0.000000000, 0.2500000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture0, hg_TexCoord2.xy);\n    r0 = r0*c0.xyyx;\n    r0 = r1*c0.zwwz + r0;\n    gl_FragColor = r2*c0.zwwz + r0;\n}\n//MD5=9c3b26ca:5bc9702c:64a3fe16:6dcbafa3\n//SIG=00000000:00000000:00000000:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
  }
}

void sub_25FE244C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE24500(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE244F8);
}

uint64_t HgcColorGamma_chroma_downsample_f1::BindTexture(HgcColorGamma_chroma_downsample_f1 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 1.0, 0.0, 0.0);
  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -1.0, 0.0, 0.0);
  return 0;
}

uint64_t HgcColorGamma_chroma_downsample_f1::RenderTile(HgcColorGamma_chroma_downsample_f1 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v37 = 0;
        v38 = 16 * (*(a2 + 2) - *a2);
        v39 = 16 * v7;
        v40 = 16 * v6;
        do
        {
          v41 = 0;
          do
          {
            v5[v41 / 0x10] = vaddq_f32(vmulq_f32(v4[v41 / 0x10 - 1], *(*(this + 51) + 16)), vaddq_f32(vmulq_f32(v4[v41 / 0x10], **(this + 51)), vmulq_f32(v4[v41 / 0x10 + 1], *(*(this + 51) + 16))));
            v41 += 16;
          }

          while (v38 != v41);
          ++v37;
          v4 = (v4 + v39);
          v5 = (v5 + v40);
        }

        while (v37 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v7;
      v10 = 16 * v6;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = 0;
        v15 = v12;
        v16 = v11;
        do
        {
          v17 = v16;
          v18 = v15;
          v19 = v4[v13 + 1];
          v20 = v4[v13 + 2];
          v14 += 4;
          v21 = v4[v13 + 3];
          v22 = v4[v13];
          v23 = *(this + 51);
          v24 = v23[1];
          v25 = vmulq_f32(v19, *v23);
          v26 = vmulq_f32(v20, *v23);
          v27 = vmulq_f32(v19, v24);
          v28 = vmulq_f32(v20, v24);
          v29 = vaddq_f32(vmulq_f32(v4[v13 - 1], v24), vaddq_f32(vmulq_f32(v22, *v23), v27));
          v30 = vaddq_f32(vmulq_f32(v22, v24), vaddq_f32(v25, v28));
          v31 = vaddq_f32(v28, vaddq_f32(vmulq_f32(v21, *v23), vmulq_f32(v4[v13 + 4], v24)));
          v32 = &v5[v13];
          *v32 = v29;
          v32[1] = v30;
          v32[2] = vaddq_f32(v27, vaddq_f32(v26, vmulq_f32(v21, v24)));
          v32[3] = v31;
          v13 += 4;
          v16 += 4;
          v15 = v18 + 4;
        }

        while (v14 < (v3 - 3));
        if (v3 > v14)
        {
          do
          {
            ++v14;
            v33 = v17[-1];
            v34 = *(this + 51);
            v35 = vmulq_f32(*v17, *v34);
            v36 = v17[1];
            ++v17;
            *v18++ = vaddq_f32(vmulq_f32(v33, v34[1]), vaddq_f32(v35, vmulq_f32(v36, v34[1])));
          }

          while (v14 < v3);
        }

        ++v8;
        v4 = (v4 + v9);
        v5 = (v5 + v10);
        v11 = (v11 + v9);
        v12 = (v12 + v10);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcColorGamma_chroma_downsample_f1::GetDOD(HgcColorGamma_chroma_downsample_f1 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFF, 0, 1u, 0);
  return HGRectGrow(v6, v5, v7);
}

uint64_t HgcColorGamma_chroma_downsample_f1::GetROI(HgcColorGamma_chroma_downsample_f1 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFF, 0, 1u, 0);
  return HGRectGrow(v6, v5, v7);
}

void HgcColorGamma_chroma_downsample_f1::HgcColorGamma_chroma_downsample_f1(HgcColorGamma_chroma_downsample_f1 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723B4D8;
  operator new();
}

void HgcColorGamma_chroma_downsample_f1::~HgcColorGamma_chroma_downsample_f1(HgcColorGamma_chroma_downsample_f1 *this)
{
  *this = &unk_28723B4D8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723B4D8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_chroma_downsample_f1::~HgcColorGamma_chroma_downsample_f1(HGNode *this)
{
  *this = &unk_28723B4D8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcColorGamma_v210_yxzx_rgba_collapse::GetProgram(HgcColorGamma_v210_yxzx_rgba_collapse *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000009de\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.2500000000, 1.000000000, 6.000000000, 0.5000000000);\n    const half4 c1 = half4(4.000000000, 1.000000000, 0.000000000, 3.000000000);\n    const half4 c2 = half4(2.000000000, 0.003910068423, 0.9960899353, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*float2(c0.xy);\n    s0.xy = floor(s0.xy);\n    s0.xy = s0.xy*float2(c0.zy) + float2(c0.ww);\n    s1.xyz = floor(frag._texCoord0.xxx);\n    s1.xyz = s1.xyz - float3(c1.xxx)*floor(s1.xyz/float3(c1.xxx));\n    s2.xy = s0.xy + hg_Params[0].xy;\n    s2.xy = s2.xy*hg_Params[0].zw;\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, s2.xy).xyz;\n    s0.xy = s0.xy + float2(c1.yz);\n    s2.xy = s0.xy + hg_Params[0].xy;\n    s2.xy = s2.xy*hg_Params[0].zw;\n    r1.x = (half) hg_Texture0.sample(hg_Sampler0, s2.xy).x;\n    s0.xy = s0.xy + float2(c1.yz);\n    s2.xy = s0.xy + hg_Params[0].xy;\n    s2.xy = s2.xy*hg_Params[0].zw;\n    r2.xyz = (half3) hg_Texture0.sample(hg_Sampler0, s2.xy).xyz;\n    s0.xy = s0.xy + float2(c1.yz);\n    s2.xy = s0.xy + hg_Params[0].xy;\n    s2.xy = s2.xy*hg_Params[0].zw;\n    r3.x = (half) hg_Texture0.sample(hg_Sampler0, s2.xy).x;\n    s0.xy = s0.xy + float2(c1.yz);\n    s2.xy = s0.xy + hg_Params[0].xy;\n    s2.xy = s2.xy*hg_Params[0].zw;\n    r4.xyz = (half3) hg_Texture0.sample(hg_Sampler0, s2.xy).xyz;\n    s0.xy = s0.xy + float2(c1.yz);\n    s0.xy = s0.xy + hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[0].zw;\n    r5.x = (half) hg_Texture0.sample(hg_Sampler0, s0.xy).x;\n    r6.yz = r2.yx;\n    r6.x = r1.x;\n    r2.x = r2.z;\n    r2.y = r3.x;\n    r2.z = r4.y;\n    r4.xy = r4.xz;\n    r4.z = r5.x;\n    s2.xyz = s1.xyz - float3(c1.www);\n    s2.xyz = select(float3(r4.xyz), float3(r2.xyz), s2.xyz < 0.00000h);\n    s0.xyz = s1.xyz - float3(c2.xxx);\n    s2.xyz = select(s2.xyz, float3(r6.xyz), s0.xyz < 0.00000h);\n    s1.xyz = s1.xyz - float3(c1.yyy);\n    s2.xyz = select(s2.xyz, float3(r0.yxz), s1.xyz < 0.00000h);\n    s2.xyz = fmax(s2.xyz, float3(c2.yyy));\n    s2.xyz = fmin(s2.xyz, float3(c2.zzz));\n    s2.w = float(c1.y);\n    output.color0 = s2;\n    return output;\n}\n//MD5=1c0e69ec:53ecdd8e:097f183e:5cdfa298\n//SIG=00400000:00000000:00000000:00000001:0003:0001:000a:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000907\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.2500000000, 1.000000000, 6.000000000, 0.5000000000);\n    const float4 c1 = float4(4.000000000, 1.000000000, 0.000000000, 3.000000000);\n    const float4 c2 = float4(2.000000000, 0.003910068423, 0.9960899353, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*c0.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = r0.xy*c0.zy + c0.ww;\n    r1.xyz = floor(frag._texCoord0.xxx);\n    r1.xyz = r1.xyz - c1.xxx*floor(r1.xyz/c1.xxx);\n    r2.xy = r0.xy + hg_Params[0].xy;\n    r2.xy = r2.xy*hg_Params[0].zw;\n    r2.xyz = hg_Texture0.sample(hg_Sampler0, r2.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r3.xy = r0.xy + hg_Params[0].xy;\n    r3.xy = r3.xy*hg_Params[0].zw;\n    r3.x = hg_Texture0.sample(hg_Sampler0, r3.xy).x;\n    r0.xy = r0.xy + c1.yz;\n    r4.xy = r0.xy + hg_Params[0].xy;\n    r4.xy = r4.xy*hg_Params[0].zw;\n    r4.xyz = hg_Texture0.sample(hg_Sampler0, r4.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r5.xy = r0.xy + hg_Params[0].xy;\n    r5.xy = r5.xy*hg_Params[0].zw;\n    r5.x = hg_Texture0.sample(hg_Sampler0, r5.xy).x;\n    r0.xy = r0.xy + c1.yz;\n    r6.xy = r0.xy + hg_Params[0].xy;\n    r6.xy = r6.xy*hg_Params[0].zw;\n    r6.xyz = hg_Texture0.sample(hg_Sampler0, r6.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r0.xy = r0.xy + hg_Params[0].xy;\n    r0.xy = r0.xy*hg_Params[0].zw;\n    r0.x = hg_Texture0.sample(hg_Sampler0, r0.xy).x;\n    r7.yz = r4.yx;\n    r7.x = r3.x;\n    r4.x = r4.z;\n    r4.y = r5.x;\n    r4.z = r6.y;\n    r6.xy = r6.xz;\n    r6.z = r0.x;\n    r3.xyz = r1.xyz - c1.www;\n    r6.xyz = select(r6.xyz, r4.xyz, r3.xyz < 0.00000f);\n    r5.xyz = r1.xyz - c2.xxx;\n    r6.xyz = select(r6.xyz, r7.xyz, r5.xyz < 0.00000f);\n    r1.xyz = r1.xyz - c1.yyy;\n    r6.xyz = select(r6.xyz, r2.yxz, r1.xyz < 0.00000f);\n    r6.xyz = fmax(r6.xyz, c2.yyy);\n    r6.xyz = fmin(r6.xyz, c2.zzz);\n    r6.w = c1.y;\n    output.color0 = r6;\n    return output;\n}\n//MD5=955a98b9:d83ed1c3:5b5e15df:a3665098\n//SIG=00000000:00000000:00000000:00000000:0003:0001:0008:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000095d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.2500000000, 1.000000000, 6.000000000, 0.5000000000);\n    const highp vec4 c1 = vec4(4.000000000, 1.000000000, 0.000000000, 3.000000000);\n    const highp vec4 c2 = vec4(2.000000000, 0.003910068423, 0.9960899353, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4, r5, r6, r7;\n\n    r0.xy = hg_TexCoord0.xy*c0.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = r0.xy*c0.zy + c0.ww;\n    r1.xyz = floor(hg_TexCoord0.xxx);\n    r1.xyz = mod(r1.xyz, c1.xxx);\n    r2.xy = r0.xy + hg_ProgramLocal0.xy;\n    r2.xy = r2.xy*hg_ProgramLocal0.zw;\n    r2.xyz = texture2D(hg_Texture0, r2.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r3.xy = r0.xy + hg_ProgramLocal0.xy;\n    r3.xy = r3.xy*hg_ProgramLocal0.zw;\n    r3.x = texture2D(hg_Texture0, r3.xy).x;\n    r0.xy = r0.xy + c1.yz;\n    r4.xy = r0.xy + hg_ProgramLocal0.xy;\n    r4.xy = r4.xy*hg_ProgramLocal0.zw;\n    r4.xyz = texture2D(hg_Texture0, r4.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r5.xy = r0.xy + hg_ProgramLocal0.xy;\n    r5.xy = r5.xy*hg_ProgramLocal0.zw;\n    r5.x = texture2D(hg_Texture0, r5.xy).x;\n    r0.xy = r0.xy + c1.yz;\n    r6.xy = r0.xy + hg_ProgramLocal0.xy;\n    r6.xy = r6.xy*hg_ProgramLocal0.zw;\n    r6.xyz = texture2D(hg_Texture0, r6.xy).xyz;\n    r0.xy = r0.xy + c1.yz;\n    r0.xy = r0.xy + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy*hg_ProgramLocal0.zw;\n    r0.x = texture2D(hg_Texture0, r0.xy).x;\n    r7.yz = r4.yx;\n    r7.x = r3.x;\n    r4.x = r4.z;\n    r4.y = r5.x;\n    r4.z = r6.y;\n    r6.xy = r6.xz;\n    r6.z = r0.x;\n    r3.xyz = r1.xyz - c1.www;\n    r6.xyz = vec3(r3.x < 0.00000 ? r4.x : r6.x, r3.y < 0.00000 ? r4.y : r6.y, r3.z < 0.00000 ? r4.z : r6.z);\n    r5.xyz = r1.xyz - c2.xxx;\n    r6.xyz = vec3(r5.x < 0.00000 ? r7.x : r6.x, r5.y < 0.00000 ? r7.y : r6.y, r5.z < 0.00000 ? r7.z : r6.z);\n    r1.xyz = r1.xyz - c1.yyy;\n    r6.xyz = vec3(r1.x < 0.00000 ? r2.y : r6.x, r1.y < 0.00000 ? r2.x : r6.y, r1.z < 0.00000 ? r2.z : r6.z);\n    r6.xyz = max(r6.xyz, c2.yyy);\n    r6.xyz = min(r6.xyz, c2.zzz);\n    r6.w = c1.y;\n    gl_FragColor = r6;\n}\n//MD5=48f15dc5:4d975e15:d41b2040:0394471d\n//SIG=00000000:00000000:00000000:00000000:0003:0001:0008:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE250AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE250E4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE250DCLL);
}

uint64_t HgcColorGamma_v210_yxzx_rgba_collapse::BindTexture(HgcColorGamma_v210_yxzx_rgba_collapse *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v5.n128_f32[0] = *(a2 + 60);
  v6.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 136))(a2, 0, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcColorGamma_v210_yxzx_rgba_collapse::Bind(HgcColorGamma_v210_yxzx_rgba_collapse *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorGamma_v210_yxzx_rgba_collapse::RenderTile(HgcColorGamma_v210_yxzx_rgba_collapse *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = a2[1].i32[0] - v2.i32[0];
    if (v4 >= 1)
    {
      v5 = 0;
      *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
      v6.i64[1] = 0x3F80000000000000;
      v7 = a2[2];
      v8 = 16 * a2[3].i32[0];
      v9 = 16 * v4;
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = v6;
      do
      {
        v12 = 0;
        v13 = v11;
        do
        {
          v14 = *(this + 51);
          v15 = *(v14 + 16);
          v16 = vmulq_f32(v13, *v14);
          v17 = vcvtq_f32_s32(vcvtq_s32_f32(v16));
          v18 = vdupq_lane_s32(*v13.f32, 0);
          v19 = vcvtq_f32_s32(vcvtq_s32_f32(v18));
          v20 = vmulq_f32(*(v14 + 64), vsubq_f32(v19, vandq_s8(v15, vcgtq_f32(v19, v18))));
          v21 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
          v22 = vaddq_f32(*(v14 + 32), vmulq_f32(*(v14 + 48), vsubq_f32(v17, vandq_s8(v15, vcgtq_f32(v17, v16)))));
          v23 = &a2[11];
          v24 = vmulq_f32(*(v14 + 80), vsubq_f32(v20, vsubq_f32(v21, vandq_s8(v15, vcgtq_f32(v21, v20)))));
          v25 = vaddq_f32(vsubq_f32(v22, v6), v10);
          v26 = vcvtq_s32_f32(v25);
          v27 = *(v14 + 96);
          v28 = *(v14 + 112);
          v29 = vaddq_f32(v22, v27);
          v30 = vaddq_f32(vsubq_f32(v29, v6), v10);
          v31 = vcvtq_s32_f32(v30);
          *v26.i8 = vadd_s32(*v26.i8, *&vcgtq_f32(vcvtq_f32_s32(v26), v25));
          *v25.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
          *v30.f32 = vld1_dup_f32(v23);
          *v31.i8 = vzip2_s32(*v26.i8, *v25.f32);
          v32 = vaddq_f32(v27, v29);
          v33 = vaddq_f32(vsubq_f32(v32, v6), v10);
          v34 = vcvtq_s32_f32(v33);
          *v26.i8 = vzip1_s32(*v26.i8, *v25.f32);
          v25.i64[0] = vcgtq_f32(vcvtq_f32_s32(v34), v33).u64[0];
          v35 = vaddq_f32(v27, v32);
          v36 = vaddq_f32(vsubq_f32(v35, v6), v10);
          v37 = vcvtq_s32_f32(v36);
          *v26.i8 = vmla_s32(*v26.i8, *v31.i8, *v30.f32);
          v38 = a2[10];
          v39 = v26.i32[1];
          v40 = v26.i32[0];
          *v26.i8 = vadd_s32(*v34.i8, *v25.f32);
          *v25.f32 = vadd_s32(*v37.i8, *&vcgtq_f32(vcvtq_f32_s32(v37), v36));
          *v31.i8 = vzip2_s32(*v26.i8, *v25.f32);
          *v26.i8 = vzip1_s32(*v26.i8, *v25.f32);
          v41 = *(*&v38 + 16 * v39);
          *v26.i8 = vmla_s32(*v26.i8, *v31.i8, *v30.f32);
          v42 = vaddq_f32(v27, v35);
          v43 = vaddq_f32(vsubq_f32(v42, v6), v10);
          v44 = v26.i32[1];
          v45 = vcvtq_s32_f32(v43);
          v46 = vaddq_f32(vsubq_f32(vaddq_f32(v27, v42), v6), v10);
          v47 = vcvtq_s32_f32(v46);
          v48 = *(*&v38 + 16 * v26.i32[0]);
          *v43.f32 = vadd_s32(*v45.i8, *&vcgtq_f32(vcvtq_f32_s32(v45), v43));
          *v46.f32 = vadd_s32(*v47.i8, *&vcgtq_f32(vcvtq_f32_s32(v47), v46));
          *v47.i8 = vzip2_s32(*v43.f32, *v46.f32);
          *v46.f32 = vzip1_s32(*v43.f32, *v46.f32);
          v49 = *(*&v38 + 16 * v44);
          *v46.f32 = vmla_s32(*v46.f32, *v47.i8, *v30.f32);
          v50 = v46.i32[1];
          v51 = *(*&v38 + 16 * v46.i32[0]);
          v52 = vbslq_s8(v28, v41, vdupq_lane_s64(v48.i64[0], 0));
          v48.i64[0] = vbslq_s8(v28, vdupq_laneq_s64(v48, 1), vrev64q_s32(v49)).u64[0];
          v53 = vextq_s8(v6, v51, 0xCuLL);
          *v51.i8 = vqtbl1_s8(v51, *(v14 + 128));
          v54 = *(v14 + 160);
          v53.i64[0] = v48.i64[0];
          v55 = vcgtq_f32(v54, vsubq_f32(v24, *(v14 + 144)));
          v56 = vcgtq_f32(v54, vsubq_f32(v24, *(v14 + 176)));
          v57 = vsubq_f32(v24, v15);
          v51.i64[1] = *(*&v38 + 16 * v50);
          v58 = *(*&v38 + 16 * v40);
          v59 = *(v14 + 192);
          *v34.i8 = vqtbl1_s8(v58, *v59.i8);
          v34.u64[1] = vqtbl1_s8(v58, *&vextq_s8(v59, v59, 8uLL));
          v60 = vminq_f32(vmaxq_f32(vbslq_s8(vcgtq_f32(v54, v57), v34, vbslq_s8(v56, v52, vbslq_s8(v55, v53, v51))), *(v14 + 208)), *(v14 + 224));
          v60.i32[3] = 1.0;
          *(*&v7 + v12) = v60;
          v13 = vaddq_f32(v13, xmmword_2603429B0);
          v12 += 16;
        }

        while (v9 != v12);
        v11 = vaddq_f32(v11, xmmword_2603429C0);
        ++v5;
        *&v7 += v8;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

uint64_t HgcColorGamma_v210_yxzx_rgba_collapse::GetDOD(HgcColorGamma_v210_yxzx_rgba_collapse *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcColorGamma_v210_yxzx_rgba_collapse::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcColorGamma_v210_yxzx_rgba_collapse::HgcColorGamma_v210_yxzx_rgba_collapse(HgcColorGamma_v210_yxzx_rgba_collapse *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723B740;
  operator new();
}

void HgcColorGamma_v210_yxzx_rgba_collapse::~HgcColorGamma_v210_yxzx_rgba_collapse(HgcColorGamma_v210_yxzx_rgba_collapse *this)
{
  *this = &unk_28723B740;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4019FCA701);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723B740;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4019FCA701);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_v210_yxzx_rgba_collapse::~HgcColorGamma_v210_yxzx_rgba_collapse(HGNode *this)
{
  *this = &unk_28723B740;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcColorGamma_2vuy_xyxz_collapse::GetProgram(HgcColorGamma_2vuy_xyxz_collapse *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000028e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    output.color0.yzw = float3(r0.yxz);\n    output.color0.x = (float) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    return output;\n}\n//MD5=03a1507a:010149b6:76881db1:e797c2f0\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0001:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000278\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    output.color0.yzw = r0.yxz;\n    output.color0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    return output;\n}\n//MD5=b3a548da:cd778fbd:9d5ae4a9:fb81f639\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0001:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000022e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0.xyz = texture2D(hg_Texture0, hg_TexCoord0.xy).xyz;\n    gl_FragColor.yzw = r0.yxz;\n    gl_FragColor.x = texture2D(hg_Texture0, hg_TexCoord1.xy).x;\n}\n//MD5=6dabeac5:cfd7b220:9dd1d489:c803d0b5\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FE25D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE25D98(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE25D90);
}

uint64_t HgcColorGamma_2vuy_xyxz_collapse::BindTexture(HgcColorGamma_2vuy_xyxz_collapse *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 2.0, 1.0, 1.0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 2.0, 1.0, 1.0);
  return 0;
}

uint64_t HgcColorGamma_2vuy_xyxz_collapse::RenderTile(HgcColorGamma_2vuy_xyxz_collapse *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = (*(a2 + 2) - v3);
    v5 = *(a2 + 10);
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v41 = 0;
        v42 = 16 * v7;
        v43 = v5 + 16 * v3 + 16;
        v44 = 16 * v8;
        v45 = 16 * v4;
        do
        {
          v46 = 0;
          v47 = v43;
          do
          {
            v48 = *(this + 51);
            v49 = v47[-1];
            *v50.i8 = vqtbl1_s8(v49, *v48);
            v50.u64[1] = vqtbl1_s8(v49, *&vextq_s8(*v48, *v48, 8uLL));
            v6[v46 / 0x10] = vbslq_s8(*(v48 + 16), *v47, v50);
            v46 += 16;
            v47 += 2;
          }

          while (v45 != v46);
          ++v41;
          v6 = (v6 + v42);
          v43 += v44;
        }

        while (v41 != v2);
      }
    }

    else
    {
      v9 = 0;
      v10 = (v5 + 16 * v3);
      v11 = v10 + 4;
      v12 = 16 * v8;
      v13 = v6 + 2;
      v14 = 16 * v7;
      v15 = v6 + 4;
      v16 = v10 + 9;
      do
      {
        v17 = 0;
        v18 = v16;
        v19 = v15;
        v20 = v13;
        v21 = v11;
        do
        {
          v22 = *(this + 51);
          v23 = v21[-4];
          v24 = *(v22 + 16);
          *v25.i8 = vqtbl1_s8(v23, *v22);
          v26 = vextq_s8(*v22, *v22, 8uLL).u64[0];
          v25.u64[1] = vqtbl1_s8(v23, v26);
          v27 = v21[-2];
          *v28.i8 = vqtbl1_s8(v27, *v22);
          v28.u64[1] = vqtbl1_s8(v27, v26);
          *v29.i8 = vqtbl1_s8(*v21, *v22);
          v29.u64[1] = vqtbl1_s8(*v21, v26);
          v30 = v21[2];
          *v31.i8 = vqtbl1_s8(v30, *v22);
          v31.u64[1] = vqtbl1_s8(v30, v26);
          v32 = v19;
          v33 = v18;
          v34 = vbslq_s8(v24, v21[-3], v25);
          v35 = vbslq_s8(v24, v21[-1], v28);
          v36 = vbslq_s8(v24, v21[1], v29);
          v37 = vbslq_s8(v24, v21[3], v31);
          v20[-2] = v34;
          v20[-1] = v35;
          v17 += 4;
          v21 += 8;
          *v20 = v36;
          v20[1] = v37;
          v20 += 4;
          v19 += 4;
          v18 += 8;
        }

        while (v17 < (v4 - 3));
        if (v4 > v17)
        {
          do
          {
            v38 = *(this + 51);
            v39 = v33[-1];
            *v40.i8 = vqtbl1_s8(v39, *v38);
            v40.u64[1] = vqtbl1_s8(v39, *&vextq_s8(*v38, *v38, 8uLL));
            *v32++ = vbslq_s8(*(v38 + 16), *v33, v40);
            ++v17;
            v33 += 2;
          }

          while (v17 < v4);
        }

        ++v9;
        v11 = (v11 + v12);
        v13 = (v13 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
      }

      while (v9 != v2);
    }
  }

  return 0;
}

uint64_t HgcColorGamma_2vuy_xyxz_collapse::GetDOD(HgcColorGamma_2vuy_xyxz_collapse *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0, 0, 0xFFFFFFFF, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 0.5);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcColorGamma_2vuy_xyxz_collapse::GetROI(HgcColorGamma_2vuy_xyxz_collapse *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 2.0);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0, 0, 1u, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcColorGamma_2vuy_xyxz_collapse::HgcColorGamma_2vuy_xyxz_collapse(HgcColorGamma_2vuy_xyxz_collapse *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723B9A8;
  operator new();
}

void HgcColorGamma_2vuy_xyxz_collapse::~HgcColorGamma_2vuy_xyxz_collapse(HgcColorGamma_2vuy_xyxz_collapse *this)
{
  *this = &unk_28723B9A8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723B9A8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_2vuy_xyxz_collapse::~HgcColorGamma_2vuy_xyxz_collapse(HGNode *this)
{
  *this = &unk_28723B9A8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcPixelFormatConversion_kV4S_WXYZ_output::GetProgram(HgcPixelFormatConversion_kV4S_WXYZ_output *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000022e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0.wxyz);\n    return output;\n}\n//MD5=cf796c8f:0088fb48:fbecfffa:bebd058b\n//SIG=00400000:00000001:00000001:00000001:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000220\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0.wxyz;\n    return output;\n}\n//MD5=6820d1f2:902f3939:8ad944e0:7499e717\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001c2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0.wxyz;\n}\n//MD5=3629bbaf:437df260:e6e61391:b5896e9d\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE268B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE268E0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE268D8);
}

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_output::BindTexture(HgcPixelFormatConversion_kV4S_WXYZ_output *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_output::RenderTile(HgcPixelFormatConversion_kV4S_WXYZ_output *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v24 = 0;
        v25 = 16 * v7;
        v26 = 16 * v6;
        v27 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v28 = 0;
          do
          {
            v5[v28 / 0x10] = vextq_s8(v4[v28 / 0x10], v4[v28 / 0x10], 0xCuLL);
            v28 += 16;
          }

          while (v27 != v28);
          ++v24;
          v4 = (v4 + v25);
          v5 = (v5 + v26);
        }

        while (v24 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = vextq_s8(v4[v16 - 1], v4[v16 - 1], 0xCuLL);
          v20 = vextq_s8(v4[v16], v4[v16], 0xCuLL);
          v21 = vextq_s8(v4[v16 + 1], v4[v16 + 1], 0xCuLL);
          v22 = &v5[v16];
          v22[-2] = vextq_s8(v4[v16 - 2], v4[v16 - 2], 0xCuLL);
          v22[-1] = v19;
          v13 += 4;
          *v22 = v20;
          v22[1] = v21;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v23 = *v17++;
            *v18++ = vextq_s8(v23, v23, 0xCuLL);
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_output::GetDOD(HgcPixelFormatConversion_kV4S_WXYZ_output *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPixelFormatConversion_kV4S_WXYZ_output::GetROI(HgcPixelFormatConversion_kV4S_WXYZ_output *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPixelFormatConversion_kV4S_WXYZ_output::~HgcPixelFormatConversion_kV4S_WXYZ_output(HgcPixelFormatConversion_kV4S_WXYZ_output *this)
{
  *this = &unk_28723BC10;
  if (*(this + 62))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 62), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  *this = &unk_28723BC10;
  if (*(this + 62))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 62), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  *this = &unk_28723BC10;
  v2 = *(this + 62);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGColorMatrix::~HGColorMatrix(this);

  HGObject::operator delete(v3);
}

HGNode *HgcPixelFormatConversion_kV4S_WXYZ_output::GetOutput(__n128 *this, HGRenderer *a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (this[31].n128_u32[2])
  {
    v5 = this[31].n128_u64[0];
    a4 = vextq_s8(v5[5], v5[5], 0xCuLL);
    a5 = vextq_s8(v5[6], v5[6], 0xCuLL);
    v6 = vextq_s8(v5[7], v5[7], 0xCuLL);
    *v5 = vextq_s8(v5[4], v5[4], 0xCuLL);
    *(this[31].n128_u64[0] + 16) = a4;
    *(this[31].n128_u64[0] + 32) = a5;
    *(this[31].n128_u64[0] + 48) = v6;
    v7 = this[31].n128_u64[0];
    this[27] = *v7;
    this[28] = v7[1];
    this[29] = v7[2];
    a3 = v7[3];
    this[30] = a3;
    this[31].n128_u32[2] = 0;
  }

  return HGColorMatrix::GetOutput(this, a2, a3.n128_f64[0], a4.n128_f64[0], a5.n128_u64[0]);
}

const char *HgcColorGamma_2vuy_yxzx_collapse::GetProgram(HgcColorGamma_2vuy_yxzx_collapse *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002a9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r1.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    output.color0.xyz = float3(r0.zxy);\n    output.color0.w = float(r1.x);\n    return output;\n}\n//MD5=137f9951:1ecff4bd:440988b0:a7a24e84\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000028d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r1.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    output.color0.xyz = r0.zxy;\n    output.color0.w = r1.x;\n    return output;\n}\n//MD5=26871f8e:7dbd704e:68fccc01:ba0d779a\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000243\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.xyz = texture2D(hg_Texture0, hg_TexCoord0.xy).xyz;\n    r1.x = texture2D(hg_Texture0, hg_TexCoord1.xy).x;\n    gl_FragColor.xyz = r0.zxy;\n    gl_FragColor.w = r1.x;\n}\n//MD5=690e075e:9a04c53e:3eba47dc:e08b8ec4\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FE27338(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE27374(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE2736CLL);
}

uint64_t HgcColorGamma_2vuy_yxzx_collapse::BindTexture(HgcColorGamma_2vuy_yxzx_collapse *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 2.0, 1.0, 1.0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 2.0, 1.0, 1.0);
  return 0;
}

uint64_t HgcColorGamma_2vuy_yxzx_collapse::RenderTile(HgcColorGamma_2vuy_yxzx_collapse *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = (*(a2 + 2) - v3);
    v5 = *(a2 + 10);
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v41 = 0;
        v42 = 16 * v7;
        v43 = v5 + 16 * v3 + 16;
        v44 = 16 * v8;
        v45 = 16 * v4;
        do
        {
          v46 = 0;
          v47 = v43;
          do
          {
            v48 = v47[-1];
            v49 = *(this + 51);
            *v50.i8 = vqtbl1_s8(v48, *v49);
            v50.u64[1] = vqtbl1_s8(v48, *&vextq_s8(*v49, *v49, 8uLL));
            v6[v46 / 0x10] = vbslq_s8(*(v49 + 16), vextq_s8(*v47, *v47, 4uLL), v50);
            v46 += 16;
            v47 += 2;
          }

          while (v45 != v46);
          ++v41;
          v6 = (v6 + v42);
          v43 += v44;
        }

        while (v41 != v2);
      }
    }

    else
    {
      v9 = 0;
      v10 = (v5 + 16 * v3);
      v11 = v10 + 4;
      v12 = 16 * v8;
      v13 = v6 + 2;
      v14 = 16 * v7;
      v15 = v6 + 4;
      v16 = v10 + 9;
      do
      {
        v17 = 0;
        v18 = v16;
        v19 = v15;
        v20 = v13;
        v21 = v11;
        do
        {
          v22 = v21[-4];
          v23 = *(this + 51);
          v24 = *(v23 + 16);
          *v25.i8 = vqtbl1_s8(v22, *v23);
          v26 = vextq_s8(*v23, *v23, 8uLL).u64[0];
          v25.u64[1] = vqtbl1_s8(v22, v26);
          v27 = v21[-2];
          *v28.i8 = vqtbl1_s8(v27, *v23);
          v28.u64[1] = vqtbl1_s8(v27, v26);
          *v29.i8 = vqtbl1_s8(*v21, *v23);
          v29.u64[1] = vqtbl1_s8(*v21, v26);
          v30 = v21[2];
          *v31.i8 = vqtbl1_s8(v30, *v23);
          v32 = v19;
          v33 = v18;
          v31.u64[1] = vqtbl1_s8(v30, v26);
          v34 = vbslq_s8(v24, vextq_s8(v21[-3], v21[-3], 4uLL), v25);
          v35 = vbslq_s8(v24, vextq_s8(v21[-1], v21[-1], 4uLL), v28);
          v36 = vbslq_s8(v24, vextq_s8(v21[1], v21[1], 4uLL), v29);
          v37 = vbslq_s8(v24, vextq_s8(v21[3], v21[3], 4uLL), v31);
          v20[-2] = v34;
          v20[-1] = v35;
          v17 += 4;
          v21 += 8;
          *v20 = v36;
          v20[1] = v37;
          v20 += 4;
          v19 += 4;
          v18 += 8;
        }

        while (v17 < (v4 - 3));
        if (v4 > v17)
        {
          do
          {
            v38 = v33[-1];
            v39 = *(this + 51);
            *v40.i8 = vqtbl1_s8(v38, *v39);
            v40.u64[1] = vqtbl1_s8(v38, *&vextq_s8(*v39, *v39, 8uLL));
            *v32++ = vbslq_s8(*(v39 + 16), vextq_s8(*v33, *v33, 4uLL), v40);
            ++v17;
            v33 += 2;
          }

          while (v17 < v4);
        }

        ++v9;
        v11 = (v11 + v12);
        v13 = (v13 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
      }

      while (v9 != v2);
    }
  }

  return 0;
}

uint64_t HgcColorGamma_2vuy_yxzx_collapse::GetDOD(HgcColorGamma_2vuy_yxzx_collapse *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0, 0, 0xFFFFFFFF, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 0.5);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcColorGamma_2vuy_yxzx_collapse::GetROI(HgcColorGamma_2vuy_yxzx_collapse *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 2.0);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0, 0, 1u, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcColorGamma_2vuy_yxzx_collapse::HgcColorGamma_2vuy_yxzx_collapse(HgcColorGamma_2vuy_yxzx_collapse *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723BE88;
  operator new();
}

void HgcColorGamma_2vuy_yxzx_collapse::~HgcColorGamma_2vuy_yxzx_collapse(HgcColorGamma_2vuy_yxzx_collapse *this)
{
  *this = &unk_28723BE88;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723BE88;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_2vuy_yxzx_collapse::~HgcColorGamma_2vuy_yxzx_collapse(HGNode *this)
{
  *this = &unk_28723BE88;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcPremultiplyWhiteToBlack::GetProgram(HgcPremultiplyWhiteToBlack *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.www - c0.xxx;\n    r0.xyz = r0.xyz + r1.xyz;\n    r1.xyz = half3(r0.xyz > c0.yyy);\n    r0.xyz = r0.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=6dd76864:48849d5a:13d5e8a8:54ff4049\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.www - c0.xxx;\n    r0.xyz = r0.xyz + r1.xyz;\n    r1.xyz = float3(r0.xyz > c0.yyy);\n    r0.xyz = r0.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=f31f1670:3fae15ce:30947a54:39732594\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002a0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.www - c0.xxx;\n    r0.xyz = r0.xyz + r1.xyz;\n    r1.xyz = vec3(greaterThan(r0.xyz, c0.yyy));\n    r0.xyz = r0.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=f5fa399d:5bc239fe:c2d365db:a86b532a\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE27E94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE27EC4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE27EBCLL);
}

uint64_t HgcPremultiplyWhiteToBlack::BindTexture(HgcPremultiplyWhiteToBlack *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPremultiplyWhiteToBlack::RenderTile(HgcPremultiplyWhiteToBlack *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v39 = 0;
        v40 = 16 * v7;
        v41 = 16 * v6;
        v42 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v43 = 0;
          do
          {
            v44 = v4[v43 / 0x10];
            v45 = *(this + 51);
            v46 = *(v45 + 16);
            v47 = vbslq_s8(v46, v44, vaddq_f32(v44, vsubq_f32(vdupq_laneq_s32(v44, 3), *v45)));
            v5[v43 / 0x10] = vbslq_s8(v46, v44, vmulq_f32(vandq_s8(*v45, vcgtq_f32(v47, *(v45 + 32))), v47));
            v43 += 16;
          }

          while (v42 != v43);
          ++v39;
          v4 = (v4 + v40);
          v5 = (v5 + v41);
        }

        while (v39 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = v4[v16 - 2];
          v20 = v4[v16 - 1];
          v21 = v4[v16];
          v22 = v4[v16 + 1];
          v23 = *(this + 51);
          v24 = *(v23 + 16);
          v25 = vbslq_s8(v24, v19, vaddq_f32(v19, vsubq_f32(vdupq_laneq_s32(v19, 3), *v23)));
          v26 = vbslq_s8(v24, v20, vaddq_f32(v20, vsubq_f32(vdupq_laneq_s32(v20, 3), *v23)));
          v27 = vbslq_s8(v24, v21, vaddq_f32(v21, vsubq_f32(vdupq_laneq_s32(v21, 3), *v23)));
          v28 = vbslq_s8(v24, v22, vaddq_f32(v22, vsubq_f32(vdupq_laneq_s32(v22, 3), *v23)));
          v29 = *(v23 + 32);
          v30 = vbslq_s8(v24, v19, vmulq_f32(vandq_s8(*v23, vcgtq_f32(v25, v29)), v25));
          v31 = vbslq_s8(v24, v20, vmulq_f32(vandq_s8(*v23, vcgtq_f32(v26, v29)), v26));
          v32 = vbslq_s8(v24, v21, vmulq_f32(vandq_s8(*v23, vcgtq_f32(v27, v29)), v27));
          v33 = vbslq_s8(v24, v22, vmulq_f32(vandq_s8(*v23, vcgtq_f32(v28, v29)), v28));
          v34 = &v5[v16];
          v34[-2] = v30;
          v34[-1] = v31;
          v13 += 4;
          *v34 = v32;
          v34[1] = v33;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v35 = *v17++;
            v36 = *(this + 51);
            v37 = *(v36 + 16);
            v38 = vbslq_s8(v37, v35, vaddq_f32(v35, vsubq_f32(vdupq_laneq_s32(v35, 3), *v36)));
            *v18++ = vbslq_s8(v37, v35, vmulq_f32(vandq_s8(*v36, vcgtq_f32(v38, *(v36 + 32))), v38));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPremultiplyWhiteToBlack::GetDOD(HgcPremultiplyWhiteToBlack *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPremultiplyWhiteToBlack::GetROI(HgcPremultiplyWhiteToBlack *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPremultiplyWhiteToBlack::HgcPremultiplyWhiteToBlack(HgcPremultiplyWhiteToBlack *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723C0F0;
  operator new();
}

void HgcPremultiplyWhiteToBlack::~HgcPremultiplyWhiteToBlack(HgcPremultiplyWhiteToBlack *this)
{
  *this = &unk_28723C0F0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40EED21634);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcPremultiplyWhiteToBlack::~HgcPremultiplyWhiteToBlack(HGNode *this)
{
  *this = &unk_28723C0F0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcApply3DLUTTetrahedralUniform_basekernel::GetProgram(HgcApply3DLUTTetrahedralUniform_basekernel *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1241;
    }

    else
    {
      return "//Metal1.0     \n"
             "//LEN=0000000e89\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< float > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]], \n"
             "    texture2d< float > hg_Texture1 [[ texture(1) ]], \n"
             "    sampler hg_Sampler1 [[ sampler(1) ]])\n"
             "{\n"
             "    const float4 c0 = float4(1.000000000, 0.000000000, 0.5000000000, 0.000000000);\n"
             "    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n"
             "    r1.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n"
             "    r2.xyz = hg_Params[1].yyy - c0.xxx;\n"
             "    r1.xyz = r1.xyz*r2.xyz;\n"
             "    r1.xyz = fmax(r1.xyz, c0.yyy);\n"
             "    r1.xyz = fmin(r1.xyz, r2.xyz);\n"
             "    r3.xyz = fract(r1.xyz);\n"
             "    r1.xyz = floor(r1.xyz);\n"
             "    r4.xyz = r1.xyz + c0.xxx;\n"
             "    r4.xyz = fmin(r4.xyz, r2.xyz);\n"
             "    r4.xyz = r4.xyz - r1.xyz;\n"
             "    r4.xyz = r4.xyz*hg_Params[1].xyz;\n"
             "    r2.x = dot(r1.xy, hg_Params[1].xy);\n"
             "    r2.y = r1.z;\n"
             "    r2.xy = r2.xy + c0.zz;\n"
             "    r1.xy = r2.xy + hg_Params[3].xy;\n"
             "    r1.xy = r1.xy*hg_Params[3].zw;\n"
             "    r1 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n"
             "    r2.x = r2.x + r4.x;\n"
             "    r5.xy = r2.xy + hg_Params[3].xy;\n"
             "    r5.xy = r5.xy*hg_Params[3].zw;\n"
             "    r5 = hg_Texture1.sample(hg_Sampler1, r5.xy);\n"
             "    r2.x = r2.x + r4.y;\n"
             "    r6.xy = r2.xy + hg_Params[3].xy;\n"
             "    r6.xy = r6.xy*hg_Params[3].zw;\n"
             "    r6 = hg_Texture1.sample(hg_Sampler1, r6.xy);\n"
             "    r2.x = r2.x - r4.x;\n"
             "    r7.xy = r2.xy + hg_Params[3].xy;\n"
             "    r7.xy = r7.xy*hg_Params[3].zw;\n"
             "    r7 = hg_Texture1.sample(hg_Sampler1, r7.xy);\n"
             "    r2.y = r2.y + r4.z;\n"
             "    r8.xy = r2.xy + hg_Params[3].xy;\n"
             "    r8.xy = r8.xy*hg_Params[3].zw;\n"
             "    r8 = hg_Texture1.sample(hg_Sampler1, r8.xy);\n"
             "    r2.x = r2.x - r4.y;\n"
             "    r9.xy = r2.xy + hg_Params[3].xy;\n"
             "    r9.xy = r9.xy*hg_Params[3].zw;\n"
             "    r9 = hg_Texture1.sample(hg_Sampler1, r9.xy);\n"
             "    r2.x = r2.x + r4.x;\n"
             "    r10.xy = r2.xy + hg_Params[3].xy;\n"
             "    r10.xy = r10.xy*hg_Params[3].zw;\n"
             "    r10 = hg_Texture1.sample(hg_Sampler1, r10.xy);\n"
             "    r2.x = r2.x + r4.y;\n"
             "    r2.xy = r2.xy + hg_Params[3].xy;\n"
             "    r2.xy = r2.xy*hg_Params[3].zw;\n"
             "    r2 = hg_Texture1.sample(hg_Sampler1, r2.xy);\n"
             "    r4 = float4(r3.xzzy > r3.yxyz);\n"
             "    r11.x = float(r3.y > r3.x);\n"
             "    r12 = float4(r3.yxxz >= r3.xyzy);\n"
             "    r13 = r2 - r8;\n"
             "    r14 = r7 - r1;\n"
             "    r15 = r8 - r7;\n"
             "    r16 = r13*r3.xxxx;\n"
             "    r16 = r14*r3.yyyy + r16;\n"
             "    r15 = r15*r3.zzzz + r16;\n"
             "    r16 = r10 - r9;\n"
             "    r17 = r2 - r10;\n"
             "    r18 = r9 - r1;\n"
             "    r16 = r16*r3.xxxx;\n"
             "    r16 = r17*r3.yyyy + r16;\n"
             "    r16 = r18*r3.zzzz + r16;\n"
             "    r19 = fmin(r4.xxxx, r4.yyyy);\n"
             "    r15 = select(r15, r16, r19 > 0.00000f);\n"
             "    r8 = r8 - r9;\n"
             "    r13 = r13*r3.xxxx;\n"
             "    r13 = r8*r3.yyyy + r13;\n"
             "    r13 = r18*r3.zzzz + r13;\n"
             "    r19 = fmin(r12.xxxx, r4.zzzz);\n"
             "    r15 = select(r15, r13, r19 > 0.00000f);\n"
             "    r16 = r5 - r1;\n"
             "    r9 = r6 - r5;\n"
             "    r2 = r2 - r6;\n"
             "    r8 = r16*r3.xxxx;\n"
             "    r8 = r9*r3.yyyy + r8;\n"
             "    r8 = r2*r3.zzzz + r8;\n"
             "    r4 = fmin(r4.wwww, r12.yyyy);\n"
             "    r15 = select(r15, r8, r4 > 0.00000f);\n"
             "    r6 = r6 - r7;\n"
             "    r6 = r6*r3.xxxx;\n"
             "    r6 = r14*r3.yyyy + r6;\n"
             "    r6 = r2*r3.zzzz + r6;\n"
             "    r11 = fmin(r12.zzzz, r11.xxxx);\n"
             "    r15 = select(r15, r6, r11 > 0.00000f);\n"
             "    r10 = r10 - r5;\n"
             "    r16 = r16*r3.xxxx;\n"
             "    r16 = r17*r3.yyyy + r16;\n"
             "    r16 = r10*r3.zzzz + r16;\n"
             "    r12 = fmin(r12.wwww, r12.zzzz);\n"
             "    r12 = select(r15, r16, r12 > 0.00000f);\n"
             "    r12 = r12 + r1;\n"
             "    r12 = r12*hg_Params[0].zzzz + hg_Params[0].wwww;\n"
             "    output.color0 = select(r12, r0, hg_Params[2] < 0.00000f);\n"
             "    return output;\n"
             "}\n"
             "//MD5=a220cc55:c2718b3d:efb1f626:1df26c2c\n"
             "//SIG=00000000:00000001:00000001:00000000:0001:0004:0014:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_462;
  }
}

void HgcApply3DLUTTetrahedralUniform_basekernel::InitProgramDescriptor(HgcApply3DLUTTetrahedralUniform_basekernel *this, HGProgramDescriptor *a2)
{
  HGProgramDescriptor::SetVisibleShaderWithSource( a2,  "HgcApply3DLUTTetrahedralUniform_basekernel_hgc_visible",  "//Metal1.0     \n //LEN=0000000d5b\n [[ visible ]] FragmentOut HgcApply3DLUTTetrahedralUniform_basekernel_hgc_visible(const constant float4* hg_Params,\n float4 color0, \n texture2d< float > hg_Texture1, \n sampler hg_Sampler1)\n {\n const float4 c0 = float4(1.000000000, 0.000000000, 0.5000000000, 0.000000000);\n"
    "    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14, r15, r16, r17, r18, r19;\n"
    "    FragmentOut output;\n"
    "\n"
    "    r0 = color0;\n"
    "    r1.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n"
    "    r2.xyz = hg_Params[1].yyy - c0.xxx;\n"
    "    r1.xyz = r1.xyz*r2.xyz;\n"
    "    r1.xyz = fmax(r1.xyz, c0.yyy);\n"
    "    r1.xyz = fmin(r1.xyz, r2.xyz);\n"
    "    r3.xyz = fract(r1.xyz);\n"
    "    r1.xyz = floor(r1.xyz);\n"
    "    r4.xyz = r1.xyz + c0.xxx;\n"
    "    r4.xyz = fmin(r4.xyz, r2.xyz);\n"
    "    r4.xyz = r4.xyz - r1.xyz;\n"
    "    r4.xyz = r4.xyz*hg_Params[1].xyz;\n"
    "    r2.x = dot(r1.xy, hg_Params[1].xy);\n"
    "    r2.y = r1.z;\n"
    "    r2.xy = r2.xy + c0.zz;\n"
    "    r1.xy = r2.xy + hg_Params[3].xy;\n"
    "    r1.xy = r1.xy*hg_Params[3].zw;\n"
    "    r1 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n"
    "    r2.x = r2.x + r4.x;\n"
    "    r5.xy = r2.xy + hg_Params[3].xy;\n"
    "    r5.xy = r5.xy*hg_Params[3].zw;\n"
    "    r5 = hg_Texture1.sample(hg_Sampler1, r5.xy);\n"
    "    r2.x = r2.x + r4.y;\n"
    "    r6.xy = r2.xy + hg_Params[3].xy;\n"
    "    r6.xy = r6.xy*hg_Params[3].zw;\n"
    "    r6 = hg_Texture1.sample(hg_Sampler1, r6.xy);\n"
    "    r2.x = r2.x - r4.x;\n"
    "    r7.xy = r2.xy + hg_Params[3].xy;\n"
    "    r7.xy = r7.xy*hg_Params[3].zw;\n"
    "    r7 = hg_Texture1.sample(hg_Sampler1, r7.xy);\n"
    "    r2.y = r2.y + r4.z;\n"
    "    r8.xy = r2.xy + hg_Params[3].xy;\n"
    "    r8.xy = r8.xy*hg_Params[3].zw;\n"
    "    r8 = hg_Texture1.sample(hg_Sampler1, r8.xy);\n"
    "    r2.x = r2.x - r4.y;\n"
    "    r9.xy = r2.xy + hg_Params[3].xy;\n"
    "    r9.xy = r9.xy*hg_Params[3].zw;\n"
    "    r9 = hg_Texture1.sample(hg_Sampler1, r9.xy);\n"
    "    r2.x = r2.x + r4.x;\n"
    "    r10.xy = r2.xy + hg_Params[3].xy;\n"
    "    r10.xy = r10.xy*hg_Params[3].zw;\n"
    "    r10 = hg_Texture1.sample(hg_Sampler1, r10.xy);\n"
    "    r2.x = r2.x + r4.y;\n"
    "    r2.xy = r2.xy + hg_Params[3].xy;\n"
    "    r2.xy = r2.xy*hg_Params[3].zw;\n"
    "    r2 = hg_Texture1.sample(hg_Sampler1, r2.xy);\n"
    "    r4 = float4(r3.xzzy > r3.yxyz);\n"
    "    r11.x = float(r3.y > r3.x);\n"
    "    r12 = float4(r3.yxxz >= r3.xyzy);\n"
    "    r13 = r2 - r8;\n"
    "    r14 = r7 - r1;\n"
    "    r15 = r8 - r7;\n"
    "    r16 = r13*r3.xxxx;\n"
    "    r16 = r14*r3.yyyy + r16;\n"
    "    r15 = r15*r3.zzzz + r16;\n"
    "    r16 = r10 - r9;\n"
    "    r17 = r2 - r10;\n"
    "    r18 = r9 - r1;\n"
    "    r16 = r16*r3.xxxx;\n"
    "    r16 = r17*r3.yyyy + r16;\n"
    "    r16 = r18*r3.zzzz + r16;\n"
    "    r19 = fmin(r4.xxxx, r4.yyyy);\n"
    "    r15 = select(r15, r16, r19 > 0.00000f);\n"
    "    r8 = r8 - r9;\n"
    "    r13 = r13*r3.xxxx;\n"
    "    r13 = r8*r3.yyyy + r13;\n"
    "    r13 = r18*r3.zzzz + r13;\n"
    "    r19 = fmin(r12.xxxx, r4.zzzz);\n"
    "    r15 = select(r15, r13, r19 > 0.00000f);\n"
    "    r16 = r5 - r1;\n"
    "    r9 = r6 - r5;\n"
    "    r2 = r2 - r6;\n"
    "    r8 = r16*r3.xxxx;\n"
    "    r8 = r9*r3.yyyy + r8;\n"
    "    r8 = r2*r3.zzzz + r8;\n"
    "    r4 = fmin(r4.wwww, r12.yyyy);\n"
    "    r15 = select(r15, r8, r4 > 0.00000f);\n"
    "    r6 = r6 - r7;\n"
    "    r6 = r6*r3.xxxx;\n"
    "    r6 = r14*r3.yyyy + r6;\n"
    "    r6 = r2*r3.zzzz + r6;\n"
    "    r11 = fmin(r12.zzzz, r11.xxxx);\n"
    "    r15 = select(r15, r6, r11 > 0.00000f);\n"
    "    r10 = r10 - r5;\n"
    "    r16 = r16*r3.xxxx;\n"
    "    r16 = r17*r3.yyyy + r16;\n"
    "    r16 = r10*r3.zzzz + r16;\n"
    "    r12 = fmin(r12.wwww, r12.zzzz);\n"
    "    r12 = select(r15, r16, r12 > 0.00000f);\n"
    "    r12 = r12 + r1;\n"
    "    r12 = r12*hg_Params[0].zzzz + hg_Params[0].wwww;\n"
    "    output.color0 = select(r12, r0, hg_Params[2] < 0.00000f);\n"
    "    return output;\n"
    "}\n");
  HGProgramDescriptor::SetFragmentFunctionName(a2, "HgcApply3DLUTTetrahedralUniform_basekernel");
}

void sub_25FE28858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE28890(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE28888);
}

uint64_t HgcApply3DLUTTetrahedralUniform_basekernel::BindTexture(HgcApply3DLUTTetrahedralUniform_basekernel *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      v8.n128_u32[0] = 1.0;
      v9.n128_u32[0] = 1.0;
    }

    else
    {
      v8.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v9.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v6.n128_f32[0] = *(a2 + 60);
    v7.n128_f32[0] = *(a2 + 61);
    (*(*a2 + 136))(a2, 3, v6, v7, v8, v9);
    return 0;
  }

  else if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (!v4)
    {
      (*(*a2 + 168))(a2);
      return 0;
    }
  }

  return result;
}

uint64_t HgcApply3DLUTTetrahedralUniform_basekernel::Bind(HgcApply3DLUTTetrahedralUniform_basekernel *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcApply3DLUTTetrahedralUniform_basekernel::RenderTile(HgcApply3DLUTTetrahedralUniform_basekernel *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = a2[1].i32[0] - v2.i32[0];
    if (v4 >= 1)
    {
      v5 = 0;
      *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
      v6.i64[1] = 0x3F80000000000000;
      v7 = a2[10];
      v8 = a2[2];
      v9 = 16 * a2[11].i32[0];
      v10 = 16 * a2[3].i32[0];
      v11 = 16 * v4;
      v12.i64[0] = 0x3F0000003F000000;
      v12.i64[1] = 0x3F0000003F000000;
      do
      {
        v13 = 0;
        do
        {
          v14 = *(this + 51);
          v15 = *(*&v7 + v13);
          v16 = *(v14 + 1);
          v17 = *(v14 + 3);
          v18 = vsubq_f32(vdupq_lane_s32(*v16.f32, 1), v17);
          v19 = *(v14 + 4);
          v20 = *(v14 + 5);
          v21 = vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(vdupq_lane_s32(*v14, 1), vmulq_n_f32(v15, COERCE_FLOAT(*v14))), v18), v19), v18);
          v22 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
          v23 = vsubq_f32(v22, vandq_s8(v17, vcgtq_f32(v22, v21)));
          v24 = vmulq_f32(v16, v23);
          v25 = vmulq_f32(v16, vsubq_f32(vminq_f32(vaddq_f32(v17, v23), v18), v23));
          v26 = *(v14 + 7);
          v27 = vaddq_f32(*(v14 + 6), vbslq_s8(v20, vaddq_f32(v24, vrev64q_s32(v24)), vextq_s8(v23, v23, 4uLL)));
          v28 = a2[12];
          v29 = &a2[13];
          v30 = vsubq_f32(v21, v23);
          v31 = vaddq_f32(vsubq_f32(v27, v6), v12);
          v32 = vcvtq_s32_f32(v31);
          v33 = vbslq_s8(v20, vaddq_f32(v25, v27), v27);
          v34 = vaddq_f32(vsubq_f32(v33, v6), v12);
          v35 = vcvtq_s32_f32(v34);
          *v35.i8 = vadd_s32(*v35.i8, *&vcgtq_f32(vcvtq_f32_s32(v35), v34));
          *v31.f32 = vadd_s32(*v32.i8, *&vcgtq_f32(vcvtq_f32_s32(v32), v31));
          *v34.f32 = vld1_dup_f32(v29);
          *v31.f32 = vmla_s32(vzip1_s32(*v31.f32, *v35.i8), vzip2_s32(*v31.f32, *v35.i8), *v34.f32);
          v36 = vrev64q_s32(v25);
          v37 = vbslq_s8(v20, vaddq_f32(v36, v33), v27);
          LODWORD(v29) = v31.i32[1];
          v38 = vaddq_f32(vsubq_f32(v37, v6), v12);
          v39 = vcvtq_s32_f32(v38);
          v40 = v31.i32[0];
          v41 = vsubq_f32(v37, v25);
          v42 = vbslq_s8(v20, v41, v27);
          v43 = vaddq_f32(vsubq_f32(v42, v6), v12);
          v44 = *(*&v28 + 16 * v40);
          v45 = vcvtq_s32_f32(v43);
          v46 = vcgtq_f32(vcvtq_f32_s32(v45), v43).u64[0];
          *v38.f32 = vadd_s32(*v39.i8, *&vcgtq_f32(vcvtq_f32_s32(v39), v38));
          v47 = *(*&v28 + 16 * v29);
          *v39.i8 = vadd_s32(*v45.i8, v46);
          *v38.f32 = vmla_s32(vzip1_s32(*v38.f32, *v39.i8), vzip2_s32(*v38.f32, *v39.i8), *v34.f32);
          LODWORD(v29) = v38.i32[1];
          v48 = vaddq_f32(vextq_s8(v25, v25, 4uLL), v42);
          v49 = vbslq_s8(v20, v41, v48);
          v50 = vaddq_f32(vsubq_f32(v49, v6), v12);
          v51 = v38.i32[0];
          v52 = vcvtq_s32_f32(v50);
          v53 = vsubq_f32(v49, v36);
          v54 = *(*&v28 + 16 * v51);
          v55 = vbslq_s8(v20, v53, v48);
          v56 = vaddq_f32(vsubq_f32(v55, v6), v12);
          v57 = vcvtq_s32_f32(v56);
          v58 = *(*&v28 + 16 * v29);
          *v50.f32 = vadd_s32(*v52.i8, *&vcgtq_f32(vcvtq_f32_s32(v52), v50));
          *v52.i8 = vadd_s32(*v57.i8, *&vcgtq_f32(vcvtq_f32_s32(v57), v56));
          *v50.f32 = vmla_s32(vzip1_s32(*v50.f32, *v52.i8), vzip2_s32(*v50.f32, *v52.i8), *v34.f32);
          v59 = vbslq_s8(v20, vaddq_f32(v25, v55), v48);
          v60 = vaddq_f32(vsubq_f32(v59, v6), v12);
          v61 = vcvtq_s32_f32(v60);
          v62 = vaddq_f32(vsubq_f32(vbslq_s8(v20, vaddq_f32(v36, v59), v48), v6), v12);
          v63 = vcvtq_s32_f32(v62);
          v64 = *(*&v28 + 16 * v50.i32[0]);
          *v48.i8 = vadd_s32(*v61.f32, *&vcgtq_f32(vcvtq_f32_s32(v61), v60));
          *v62.f32 = vadd_s32(*v63.i8, *&vcgtq_f32(vcvtq_f32_s32(v63), v62));
          v65 = *(*&v28 + 16 * v50.i32[1]);
          *v50.f32 = vqtbl1_s8(v30, *v26.i8);
          *&v50.u32[2] = vqtbl1_s8(v30, *&vextq_s8(v26, v26, 8uLL));
          *v26.i8 = vzip2_s32(*v48.i8, *v62.f32);
          *v62.f32 = vzip1_s32(*v48.i8, *v62.f32);
          v66 = *(v14 + 8);
          v67 = *(v14 + 9);
          *v61.f32 = vqtbl1_s8(v30, *v66.f32);
          *v62.f32 = vmla_s32(*v62.f32, *v26.i8, *v34.f32);
          *&v61.u32[2] = vqtbl1_s8(v30, *&vextq_s8(v66, v66, 8uLL));
          LODWORD(v29) = v62.i32[1];
          v68 = vandq_s8(v17, vcgtq_f32(v61, v50));
          v34.i64[0] = vandq_s8(v17, vcgtq_f32(vrev64q_s32(v30), v30)).u64[0];
          *v66.f32 = vqtbl1_s8(v30, *v67.f32);
          *&v66.u32[2] = vqtbl1_s8(v30, *&vextq_s8(v67, v67, 8uLL));
          v69 = *(*&v28 + 16 * v62.i32[0]);
          v70 = *(v14 + 10);
          *v67.f32 = vqtbl1_s8(v30, *v70.i8);
          v71 = *(*&v28 + 16 * v29);
          *&v67.u32[2] = vqtbl1_s8(v30, *&vextq_s8(v70, v70, 8uLL));
          v72 = vandq_s8(v17, vcgeq_f32(v67, v66));
          v73 = vmulq_lane_f32(vsubq_f32(v58, v44), *v30.f32, 1);
          v74 = vmulq_n_f32(vsubq_f32(v71, v64), v30.f32[0]);
          v75 = vmulq_n_f32(vsubq_f32(v69, v65), v30.f32[0]);
          v76 = vmulq_laneq_f32(vsubq_f32(v65, v44), v30, 2);
          v77 = vmulq_lane_f32(vsubq_f32(v71, v69), *v30.f32, 1);
          v78 = vmulq_lane_f32(vsubq_f32(v64, v65), *v30.f32, 1);
          v79 = vmulq_n_f32(vsubq_f32(v47, v44), v30.f32[0]);
          v80 = vaddq_f32(v79, vmulq_lane_f32(vsubq_f32(v54, v47), *v30.f32, 1));
          v81 = vmulq_laneq_f32(vsubq_f32(v71, v54), v30, 2);
          v82 = vaddq_f32(vmulq_n_f32(vsubq_f32(v54, v58), v30.f32[0]), v73);
          v83 = vbslq_s8(vcgtq_f32(vminq_f32(vdupq_lane_s32(*v68.i8, 0), vdupq_lane_s32(*v68.i8, 1)), v19), vaddq_f32(v76, vaddq_f32(v75, v77)), vaddq_f32(vmulq_laneq_f32(vsubq_f32(v64, v58), v30, 2), vaddq_f32(v73, v74)));
          v84 = vdupq_laneq_s32(v72, 2);
          *(*&v8 + v13) = vbslq_s8(vcgtq_f32(v19, *(v14 + 2)), v15, vaddq_f32(vdupq_laneq_s32(*v14, 3), vmulq_laneq_f32(vaddq_f32(v44, vbslq_s8(vcgtq_f32(vminq_f32(vdupq_laneq_s32(v72, 3), v84), v19), vaddq_f32(vmulq_laneq_f32(vsubq_f32(v69, v47), v30, 2), vaddq_f32(v79, v77)), vbslq_s8(vcgtq_f32(vminq_f32(v84, vdupq_lane_s32(*v34.f32, 0)), v19), vaddq_f32(v82, v81), vbslq_s8(vcgtq_f32(vminq_f32(vdupq_laneq_s32(v68, 3), vdupq_lane_s32(*v72.i8, 1)), v19), vaddq_f32(v80, v81), vbslq_s8(vcgtq_f32(vminq_f32(vdupq_lane_s32(*v72.i8, 0), vdupq_laneq_s32(v68, 2)), v19), vaddq_f32(v76, vaddq_f32(v78, v74)), v83))))), *v14, 2)));
          v13 += 16;
        }

        while (v11 != v13);
        ++v5;
        *&v7 += v9;
        *&v8 += v10;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

uint64_t HgcApply3DLUTTetrahedralUniform_basekernel::GetDOD(HgcApply3DLUTTetrahedralUniform_basekernel *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    return 0x8000000080000000;
  }

  if (a3)
  {
    return 0;
  }

  return *&a4.var0;
}

uint64_t HgcApply3DLUTTetrahedralUniform_basekernel::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    return HGRenderer::GetDOD(a2, Input);
  }

  else
  {
    if (a3)
    {
      *&a4.var0 = 0;
    }

    return *&a4.var0;
  }
}

void HgcApply3DLUTTetrahedralUniform_basekernel::HgcApply3DLUTTetrahedralUniform_basekernel(HgcApply3DLUTTetrahedralUniform_basekernel *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723C358;
  operator new();
}

void HgcApply3DLUTTetrahedralUniform_basekernel::~HgcApply3DLUTTetrahedralUniform_basekernel(HgcApply3DLUTTetrahedralUniform_basekernel *this)
{
  *this = &unk_28723C358;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40C3A7E6FCLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723C358;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40C3A7E6FCLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcApply3DLUTTetrahedralUniform_basekernel::~HgcApply3DLUTTetrahedralUniform_basekernel(HGNode *this)
{
  *this = &unk_28723C358;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40C3A7E6FCLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcApply3DLUTTetrahedralUniform_basekernel::SetParameter(HgcApply3DLUTTetrahedralUniform_basekernel *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcApply3DLUTTetrahedralUniform_basekernel::GetParameter(HgcApply3DLUTTetrahedralUniform_basekernel *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcToneParamCurve3::GetProgram(HgcToneParamCurve3 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000369\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = half3(hg_Params[1].xyz)*r0.xyz + half3(hg_Params[2].xyz);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xyz));\n    r2.xyz = r0.xyz - half3(hg_Params[4].xyz);\n    r3.xyz = r0.xyz*half3(hg_Params[3].xyz);\n    output.color0.xyz = select(float3(r1.xyz), float3(r3.xyz), float3(r2.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=a08c8d94:38f96d5c:26c0e933:55620f24\n//SIG=00400000:00000001:00000001:00000001:0000:0005:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000321\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = hg_Params[1].xyz*r0.xyz + hg_Params[2].xyz;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xyz);\n    r2.xyz = r0.xyz - hg_Params[4].xyz;\n    r3.xyz = r0.xyz*hg_Params[3].xyz;\n    output.color0.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=41552887:797b0b83:44ffd324:adfe9f8c\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003cd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = hg_ProgramLocal1.xyz*r0.xyz + hg_ProgramLocal2.xyz;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xyz);\n    r2.xyz = r0.xyz - hg_ProgramLocal4.xyz;\n    r3.xyz = r0.xyz*hg_ProgramLocal3.xyz;\n    gl_FragColor.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=1974bb9c:fd223adc:1fc4ae62:4edb9b94\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE296DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE2970C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE29704);
}

uint64_t HgcToneParamCurve3::BindTexture(HgcToneParamCurve3 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcToneParamCurve3::Bind(HgcToneParamCurve3 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcToneParamCurve3::RenderTile(HgcToneParamCurve3 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(v6 + v10 - 16);
      v13 = *(v6 + v10);
      v14 = *(this + 51);
      v15 = *(v14 + 16);
      v17 = *(v14 + 32);
      v16 = *(v14 + 48);
      v18 = vaddq_f32(v17, vmulq_f32(v12, v15));
      v19 = vaddq_f32(v17, vmulq_f32(v13, v15));
      v20 = *(v14 + 64);
      v21 = *(v14 + 80);
      v22 = *(v14 + 96);
      v23 = *(v14 + 112);
      v24 = vorrq_s8(vandq_s8(v21, v18), v22);
      v25 = *(v14 + 128);
      v26 = *(v14 + 144);
      v27 = vorrq_s8(vandq_s8(v21, v19), v22);
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v19)));
      v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v18))), v26);
      v30 = *(v14 + 160);
      v31 = *(v14 + 176);
      v32 = vandq_s8(v22, vcgtq_f32(v24, v30));
      v33 = vandq_s8(v22, vcgtq_f32(v27, v30));
      v34 = vaddq_f32(v29, v32);
      v35 = vaddq_f32(vsubq_f32(v28, v26), v33);
      v36 = vsubq_f32(vsubq_f32(v24, v22), vmulq_f32(vmulq_f32(v31, v32), v24));
      v37 = vsubq_f32(vsubq_f32(v27, v22), vmulq_f32(vmulq_f32(v31, v33), v27));
      v38 = *(v14 + 192);
      v39 = *(v14 + 208);
      v40 = vaddq_f32(v38, vmulq_f32(v39, v36));
      v41 = vaddq_f32(v38, vmulq_f32(v39, v37));
      v42 = *(v14 + 224);
      v43 = *(v14 + 240);
      v44 = vmulq_f32(*v14, vaddq_f32(v35, vmulq_f32(v37, vaddq_f32(vaddq_f32(v42, vmulq_f32(v37, v43)), vmulq_f32(vmulq_f32(v37, v37), v41)))));
      v45 = *(v14 + 256);
      v46 = *(v14 + 272);
      v47 = vmaxq_f32(vmulq_f32(*v14, vaddq_f32(v34, vmulq_f32(v36, vaddq_f32(vaddq_f32(v42, vmulq_f32(v36, v43)), vmulq_f32(vmulq_f32(v36, v36), v40))))), v45);
      v48 = vmaxq_f32(v44, v45);
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vsubq_f32(v49, vandq_s8(v22, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v50, vandq_s8(v22, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v47, v51);
      v54 = vsubq_f32(v48, v52);
      v55 = *(v14 + 288);
      v56 = *(v14 + 304);
      v57 = vmulq_f32(v54, vaddq_f32(v56, vmulq_f32(v54, vaddq_f32(v46, vmulq_f32(v55, v54)))));
      v58 = vaddq_f32(v22, vmulq_f32(v53, vaddq_f32(v56, vmulq_f32(v53, vaddq_f32(v46, vmulq_f32(v55, v53))))));
      v59 = vcvtq_s32_f32(v52);
      v60 = *(v14 + 320);
      v61 = *(v14 + 336);
      v62 = vaddq_f32(v22, v57);
      v63 = vaddq_s32(v60, vcvtq_s32_f32(v51));
      v64 = vshlq_n_s32(vaddq_s32(v60, v59), 0x17uLL);
      v65 = vsubq_f32(v12, v20);
      v66 = vbslq_s8(vcgtq_f32(v61, vsubq_f32(v13, v20)), vmulq_f32(v13, v16), vmulq_f32(v62, v64));
      v67 = *(v14 + 352);
      v68 = (v5 + v10);
      v68[-1] = vbslq_s8(v67, v12, vbslq_s8(vcgtq_f32(v61, v65), vmulq_f32(v12, v16), vmulq_f32(v58, vshlq_n_s32(v63, 0x17uLL))));
      *v68 = vbslq_s8(v67, v13, v66);
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v69 = 16 * v9;
    v70 = *(v6 + v69);
    v71 = *(this + 51);
    v72 = vaddq_f32(*(v71 + 32), vmulq_f32(v70, *(v71 + 16)));
    v73 = *(v71 + 96);
    v74 = vorrq_s8(vandq_s8(*(v71 + 80), v72), v73);
    v75 = vandq_s8(v73, vcgtq_f32(v74, *(v71 + 160)));
    v76 = vsubq_f32(vsubq_f32(v74, v73), vmulq_f32(vmulq_f32(*(v71 + 176), v75), v74));
    v77 = vmaxq_f32(vmulq_f32(*v71, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v72, 0x17uLL)), vandq_s8(*(v71 + 128), vcgtq_f32(*(v71 + 112), v72))), *(v71 + 144)), v75), vmulq_f32(v76, vaddq_f32(vaddq_f32(*(v71 + 224), vmulq_f32(v76, *(v71 + 240))), vmulq_f32(vmulq_f32(v76, v76), vaddq_f32(*(v71 + 192), vmulq_f32(*(v71 + 208), v76))))))), *(v71 + 256));
    v78 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
    v79 = vsubq_f32(v78, vandq_s8(v73, vcgtq_f32(v78, v77)));
    v80 = vsubq_f32(v77, v79);
    *(v5 + v69) = vbslq_s8(*(v71 + 352), v70, vbslq_s8(vcgtq_f32(*(v71 + 336), vsubq_f32(v70, *(v71 + 64))), vmulq_f32(v70, *(v71 + 48)), vmulq_f32(vaddq_f32(v73, vmulq_f32(v80, vaddq_f32(*(v71 + 304), vmulq_f32(v80, vaddq_f32(*(v71 + 272), vmulq_f32(*(v71 + 288), v80)))))), vshlq_n_s32(vaddq_s32(*(v71 + 320), vcvtq_s32_f32(v79)), 0x17uLL))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcToneParamCurve3::GetDOD(HgcToneParamCurve3 *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcToneParamCurve3::GetROI(HgcToneParamCurve3 *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcToneParamCurve3::HgcToneParamCurve3(HgcToneParamCurve3 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723C5C0;
  operator new();
}

void HgcToneParamCurve3::~HgcToneParamCurve3(HgcToneParamCurve3 *this)
{
  *this = &unk_28723C5C0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C409BD2D9E4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcToneParamCurve3::~HgcToneParamCurve3(HGNode *this)
{
  *this = &unk_28723C5C0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcToneParamCurve3::SetParameter(HgcToneParamCurve3 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 4)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcToneParamCurve3::GetParameter(HgcToneParamCurve3 *this, unsigned int a2, float *a3)
{
  if (a2 > 4)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcPixelFormatConversion_kV4S_BE_WXYZ_input::GetProgram(HgcPixelFormatConversion_kV4S_BE_WXYZ_input *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    return "//Metal1.0     \n//LEN=000000032e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(65535.00000, 0.003906250000, 256.0000000, 1.525902189e-05);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0*c0.xxxx;\n    r0 = floor(r0);\n    r0 = r0*c0.yyyy;\n    r1 = fract(r0);\n    r1 = r1*c0.zzzz;\n    r1 = floor(r1);\n    r0 = floor(r0);\n    r1 = c0.zzzz*r1 + r0;\n    output.color0 = r1.yzwx*c0.wwww;\n    return output;\n}\n//MD5=0b7535b4:5e0e2440:c1eacd8a:64887f82\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
  }

  if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  return "//GLfs2.0      \n//LEN=00000002d3\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(65535.00000, 0.003906250000, 256.0000000, 1.525902189e-05);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0*c0.xxxx;\n    r0 = floor(r0);\n    r0 = r0*c0.yyyy;\n    r1 = fract(r0);\n    r1 = r1*c0.zzzz;\n    r1 = floor(r1);\n    r0 = floor(r0);\n    r1 = c0.zzzz*r1 + r0;\n    gl_FragColor = r1.yzwx*c0.wwww;\n}\n//MD5=f4968c87:51150e17:f7500ea5:7d3e7928\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
}

void sub_25FE2A328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE2A358(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE2A350);
}

uint64_t HgcPixelFormatConversion_kV4S_BE_WXYZ_input::BindTexture(HgcPixelFormatConversion_kV4S_BE_WXYZ_input *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4S_BE_WXYZ_input::RenderTile(HgcPixelFormatConversion_kV4S_BE_WXYZ_input *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v71 = 0;
        v72 = 16 * v7;
        v73 = 16 * v6;
        v74 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v75 = 0;
          do
          {
            v76 = *(this + 51);
            v77 = *(v76 + 16);
            v78 = vmulq_f32(v4[v75 / 0x10], *v76);
            v79 = vcvtq_f32_s32(vcvtq_s32_f32(v78));
            v80 = *(v76 + 48);
            v81 = vmulq_f32(*(v76 + 32), vsubq_f32(v79, vandq_s8(v77, vcgtq_f32(v79, v78))));
            v82 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
            v83 = vsubq_f32(v82, vandq_s8(v77, vcgtq_f32(v82, v81)));
            v84 = vmulq_f32(v80, vsubq_f32(v81, v83));
            v85 = vcvtq_f32_s32(vcvtq_s32_f32(v84));
            v86 = vaddq_f32(v83, vmulq_f32(v80, vsubq_f32(v85, vandq_s8(v77, vcgtq_f32(v85, v84)))));
            v5[v75 / 0x10] = vmulq_f32(*(v76 + 64), vextq_s8(v86, v86, 4uLL));
            v75 += 16;
          }

          while (v74 != v75);
          ++v71;
          v4 = (v4 + v72);
          v5 = (v5 + v73);
        }

        while (v71 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = *(this + 51);
          v20 = *(v19 + 16);
          v21 = vmulq_f32(v4[v16 - 2], *v19);
          v22 = vmulq_f32(v4[v16 - 1], *v19);
          v23 = vmulq_f32(v4[v16], *v19);
          v24 = vmulq_f32(v4[v16 + 1], *v19);
          v25 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
          v26 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
          v27 = vcvtq_f32_s32(vcvtq_s32_f32(v23));
          v28 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
          v29 = vsubq_f32(v25, vandq_s8(v20, vcgtq_f32(v25, v21)));
          v30 = vsubq_f32(v26, vandq_s8(v20, vcgtq_f32(v26, v22)));
          v31 = *(v19 + 32);
          v32 = *(v19 + 48);
          v33 = vmulq_f32(v31, v29);
          v34 = vmulq_f32(v31, v30);
          v35 = vmulq_f32(v31, vsubq_f32(v27, vandq_s8(v20, vcgtq_f32(v27, v23))));
          v36 = vmulq_f32(v31, vsubq_f32(v28, vandq_s8(v20, vcgtq_f32(v28, v24))));
          v37 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
          v38 = vcvtq_f32_s32(vcvtq_s32_f32(v34));
          v39 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
          v40 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
          v41 = vsubq_f32(v37, vandq_s8(v20, vcgtq_f32(v37, v33)));
          v42 = vsubq_f32(v38, vandq_s8(v20, vcgtq_f32(v38, v34)));
          v43 = vsubq_f32(v39, vandq_s8(v20, vcgtq_f32(v39, v35)));
          v44 = vsubq_f32(v40, vandq_s8(v20, vcgtq_f32(v40, v36)));
          v45 = vmulq_f32(v32, vsubq_f32(v33, v41));
          v46 = vmulq_f32(v32, vsubq_f32(v34, v42));
          v47 = vmulq_f32(v32, vsubq_f32(v35, v43));
          v48 = vmulq_f32(v32, vsubq_f32(v36, v44));
          v49 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
          v50 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
          v51 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
          v52 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
          v53 = vaddq_f32(v41, vmulq_f32(v32, vsubq_f32(v49, vandq_s8(v20, vcgtq_f32(v49, v45)))));
          v54 = vaddq_f32(v42, vmulq_f32(v32, vsubq_f32(v50, vandq_s8(v20, vcgtq_f32(v50, v46)))));
          v55 = vaddq_f32(v43, vmulq_f32(v32, vsubq_f32(v51, vandq_s8(v20, vcgtq_f32(v51, v47)))));
          v56 = vaddq_f32(v44, vmulq_f32(v32, vsubq_f32(v52, vandq_s8(v20, vcgtq_f32(v52, v48)))));
          v57 = *(v19 + 64);
          v58 = &v5[v16];
          v13 += 4;
          v58[-2] = vmulq_f32(v57, vextq_s8(v53, v53, 4uLL));
          v58[-1] = vmulq_f32(v57, vextq_s8(v54, v54, 4uLL));
          *v58 = vmulq_f32(v57, vextq_s8(v55, v55, 4uLL));
          v58[1] = vmulq_f32(v57, vextq_s8(v56, v56, 4uLL));
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v59 = *v17++;
            v60 = *(this + 51);
            v61 = *(v60 + 16);
            v62 = vmulq_f32(v59, *v60);
            v63 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
            v64 = *(v60 + 48);
            v65 = vmulq_f32(*(v60 + 32), vsubq_f32(v63, vandq_s8(v61, vcgtq_f32(v63, v62))));
            v66 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
            v67 = vsubq_f32(v66, vandq_s8(v61, vcgtq_f32(v66, v65)));
            v68 = vmulq_f32(v64, vsubq_f32(v65, v67));
            v69 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
            v70 = vaddq_f32(v67, vmulq_f32(v64, vsubq_f32(v69, vandq_s8(v61, vcgtq_f32(v69, v68)))));
            *v18++ = vmulq_f32(*(v60 + 64), vextq_s8(v70, v70, 4uLL));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4S_BE_WXYZ_input::GetDOD(HgcPixelFormatConversion_kV4S_BE_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPixelFormatConversion_kV4S_BE_WXYZ_input::GetROI(HgcPixelFormatConversion_kV4S_BE_WXYZ_input *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPixelFormatConversion_kV4S_BE_WXYZ_input::HgcPixelFormatConversion_kV4S_BE_WXYZ_input(HgcPixelFormatConversion_kV4S_BE_WXYZ_input *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723C828;
  operator new();
}

void HgcPixelFormatConversion_kV4S_BE_WXYZ_input::~HgcPixelFormatConversion_kV4S_BE_WXYZ_input(HgcPixelFormatConversion_kV4S_BE_WXYZ_input *this)
{
  *this = &unk_28723C828;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723C828;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcPixelFormatConversion_kV4S_BE_WXYZ_input::~HgcPixelFormatConversion_kV4S_BE_WXYZ_input(HGNode *this)
{
  *this = &unk_28723C828;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcPixelFormatConversion_kV4F_WXYZ_output::GetProgram(HgcPixelFormatConversion_kV4F_WXYZ_output *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000022e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0.wxyz);\n    return output;\n}\n//MD5=cf796c8f:0088fb48:fbecfffa:bebd058b\n//SIG=00400000:00000001:00000001:00000001:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000220\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0.wxyz;\n    return output;\n}\n//MD5=6820d1f2:902f3939:8ad944e0:7499e717\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001c2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0.wxyz;\n}\n//MD5=3629bbaf:437df260:e6e61391:b5896e9d\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE2ADD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE2AE04(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE2ADFCLL);
}

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_output::BindTexture(HgcPixelFormatConversion_kV4F_WXYZ_output *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_output::RenderTile(HgcPixelFormatConversion_kV4F_WXYZ_output *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v24 = 0;
        v25 = 16 * v7;
        v26 = 16 * v6;
        v27 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v28 = 0;
          do
          {
            v5[v28 / 0x10] = vextq_s8(v4[v28 / 0x10], v4[v28 / 0x10], 0xCuLL);
            v28 += 16;
          }

          while (v27 != v28);
          ++v24;
          v4 = (v4 + v25);
          v5 = (v5 + v26);
        }

        while (v24 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = vextq_s8(v4[v16 - 1], v4[v16 - 1], 0xCuLL);
          v20 = vextq_s8(v4[v16], v4[v16], 0xCuLL);
          v21 = vextq_s8(v4[v16 + 1], v4[v16 + 1], 0xCuLL);
          v22 = &v5[v16];
          v22[-2] = vextq_s8(v4[v16 - 2], v4[v16 - 2], 0xCuLL);
          v22[-1] = v19;
          v13 += 4;
          *v22 = v20;
          v22[1] = v21;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v23 = *v17++;
            *v18++ = vextq_s8(v23, v23, 0xCuLL);
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_output::GetDOD(HgcPixelFormatConversion_kV4F_WXYZ_output *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPixelFormatConversion_kV4F_WXYZ_output::GetROI(HgcPixelFormatConversion_kV4F_WXYZ_output *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPixelFormatConversion_kV4F_WXYZ_output::~HgcPixelFormatConversion_kV4F_WXYZ_output(HgcPixelFormatConversion_kV4F_WXYZ_output *this)
{
  *this = &unk_28723CA90;
  if (*(this + 62))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 62), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  *this = &unk_28723CA90;
  if (*(this + 62))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 62), 0x1000C40AE2C30F4);
    this = v2;
    v1 = vars8;
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  *this = &unk_28723CA90;
  v2 = *(this + 62);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGColorMatrix::~HGColorMatrix(this);

  HGObject::operator delete(v3);
}

HGNode *HgcPixelFormatConversion_kV4F_WXYZ_output::GetOutput(__n128 *this, HGRenderer *a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (this[31].n128_u32[2])
  {
    v5 = this[31].n128_u64[0];
    a4 = vextq_s8(v5[5], v5[5], 0xCuLL);
    a5 = vextq_s8(v5[6], v5[6], 0xCuLL);
    v6 = vextq_s8(v5[7], v5[7], 0xCuLL);
    *v5 = vextq_s8(v5[4], v5[4], 0xCuLL);
    *(this[31].n128_u64[0] + 16) = a4;
    *(this[31].n128_u64[0] + 32) = a5;
    *(this[31].n128_u64[0] + 48) = v6;
    v7 = this[31].n128_u64[0];
    this[27] = *v7;
    this[28] = v7[1];
    this[29] = v7[2];
    a3 = v7[3];
    this[30] = a3;
    this[31].n128_u32[2] = 0;
  }

  return HGColorMatrix::GetOutput(this, a2, a3.n128_f64[0], a4.n128_f64[0], a5.n128_u64[0]);
}

const char *HgcColorGamma_bias::GetProgram(HgcColorGamma_bias *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000245\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0)*hg_Params[1] + hg_Params[0];\n    return output;\n}\n//MD5=fa49cb7d:1e053eea:12e2489c:1692af72\n//SIG=00400000:00000001:00000001:00000001:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000237\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0*hg_Params[1] + hg_Params[0];\n    return output;\n}\n//MD5=ad9db7bc:ac24aee5:0faf9a1f:d9021699\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000231\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0*hg_ProgramLocal1 + hg_ProgramLocal0;\n}\n//MD5=bfef74a1:370b9177:d2ba98d4:b569923b\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE2B6A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE2B6D0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE2B6C8);
}

uint64_t HgcColorGamma_bias::BindTexture(HgcColorGamma_bias *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcColorGamma_bias::Bind(HgcColorGamma_bias *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorGamma_bias::RenderTile(HgcColorGamma_bias *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v27 = 0;
        v28 = 16 * v7;
        v29 = 16 * v6;
        v30 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v31 = 0;
          do
          {
            v5[v31 / 0x10] = vaddq_f32(**(this + 51), vmulq_f32(v4[v31 / 0x10], *(*(this + 51) + 16)));
            v31 += 16;
          }

          while (v30 != v31);
          ++v27;
          v4 = (v4 + v28);
          v5 = (v5 + v29);
        }

        while (v27 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = *(this + 51);
          v20 = v19[1];
          v21 = vaddq_f32(*v19, vmulq_f32(v4[v16 - 2], v20));
          v22 = vaddq_f32(*v19, vmulq_f32(v4[v16 - 1], v20));
          v23 = vaddq_f32(*v19, vmulq_f32(v4[v16], v20));
          v24 = vaddq_f32(*v19, vmulq_f32(v4[v16 + 1], v20));
          v25 = &v5[v16];
          v25[-2] = v21;
          v25[-1] = v22;
          v13 += 4;
          *v25 = v23;
          v25[1] = v24;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v26 = *v17++;
            *v18++ = vaddq_f32(**(this + 51), vmulq_f32(v26, *(*(this + 51) + 16)));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcColorGamma_bias::GetDOD(HgcColorGamma_bias *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcColorGamma_bias::GetROI(HgcColorGamma_bias *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcColorGamma_bias::HgcColorGamma_bias(HgcColorGamma_bias *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723CD08;
  operator new();
}

void HgcColorGamma_bias::~HgcColorGamma_bias(HgcColorGamma_bias *this)
{
  *this = &unk_28723CD08;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28723CD08;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_bias::~HgcColorGamma_bias(HGNode *this)
{
  *this = &unk_28723CD08;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcColorGamma_bias::SetParameter(HgcColorGamma_bias *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcColorGamma_bias::GetParameter(HgcColorGamma_bias *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcColorGamma_bias_clamp::GetProgram(HgcColorGamma_bias_clamp *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000274\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0*half4(hg_Params[1]) + half4(hg_Params[0]);\n    output.color0 = fmax(float4(r0), hg_Params[2]);\n    return output;\n}\n//MD5=948bba88:2cd0d942:4e7bd5c2:de20170e\n//SIG=00400000:00000001:00000001:00000001:0000:0003:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000258\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0*hg_Params[1] + hg_Params[0];\n    output.color0 = fmax(r0, hg_Params[2]);\n    return output;\n}\n//MD5=61fc2441:8cd63a5e:fe3bbe94:65cb2e74\n//SIG=00000000:00000001:00000001:00000000:0000:0003:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000027d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0*hg_ProgramLocal1 + hg_ProgramLocal0;\n    gl_FragColor = max(r0, hg_ProgramLocal2);\n}\n//MD5=18efcb7d:7d440686:c0833abc:66ba06e3\n//SIG=00000000:00000001:00000001:00000000:0000:0003:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE2C034(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE2C064(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE2C05CLL);
}

uint64_t HgcColorGamma_bias_clamp::BindTexture(HgcColorGamma_bias_clamp *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcColorGamma_bias_clamp::Bind(HgcColorGamma_bias_clamp *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorGamma_bias_clamp::RenderTile(HgcColorGamma_bias_clamp *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 6);
    v7 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v28 = 0;
        v29 = 16 * v7;
        v30 = 16 * v6;
        v31 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v32 = 0;
          do
          {
            v5[v32 / 0x10] = vmaxq_f32(vaddq_f32(**(this + 51), vmulq_f32(v4[v32 / 0x10], *(*(this + 51) + 16))), *(*(this + 51) + 32));
            v32 += 16;
          }

          while (v31 != v32);
          ++v28;
          v4 = (v4 + v29);
          v5 = (v5 + v30);
        }

        while (v28 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v4 + 4;
      v12 = v5 + 4;
      do
      {
        v13 = 0;
        v14 = v12;
        v15 = v11;
        v16 = 2;
        do
        {
          v17 = v15;
          v18 = v14;
          v19 = *(this + 51);
          v20 = v19[1];
          v21 = v19[2];
          v22 = vmaxq_f32(vaddq_f32(*v19, vmulq_f32(v4[v16 - 2], v20)), v21);
          v23 = vmaxq_f32(vaddq_f32(*v19, vmulq_f32(v4[v16 - 1], v20)), v21);
          v24 = vmaxq_f32(vaddq_f32(*v19, vmulq_f32(v4[v16], v20)), v21);
          v25 = vmaxq_f32(vaddq_f32(*v19, vmulq_f32(v4[v16 + 1], v20)), v21);
          v26 = &v5[v16];
          v26[-2] = v22;
          v26[-1] = v23;
          v13 += 4;
          *v26 = v24;
          v26[1] = v25;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v27 = *v17++;
            *v18++ = vmaxq_f32(vaddq_f32(**(this + 51), vmulq_f32(v27, *(*(this + 51) + 16))), *(*(this + 51) + 32));
            ++v13;
          }

          while (v13 < v3);
        }

        ++v8;
        v5 = (v5 + v9);
        v4 = (v4 + v10);
        v11 = (v11 + v10);
        v12 = (v12 + v9);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcColorGamma_bias_clamp::GetDOD(HgcColorGamma_bias_clamp *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcColorGamma_bias_clamp::GetROI(HgcColorGamma_bias_clamp *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcColorGamma_bias_clamp::HgcColorGamma_bias_clamp(HgcColorGamma_bias_clamp *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723CF70;
  operator new();
}

void HgcColorGamma_bias_clamp::~HgcColorGamma_bias_clamp(HgcColorGamma_bias_clamp *this)
{
  *this = &unk_28723CF70;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40FA0F61DDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorGamma_bias_clamp::~HgcColorGamma_bias_clamp(HGNode *this)
{
  *this = &unk_28723CF70;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcColorGamma_bias_clamp::SetParameter(HgcColorGamma_bias_clamp *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v10 = *(this + 51);
      if (*v10 != a3.n128_f32[0] || *(v10 + 4) != a4 || *(v10 + 8) != a5 || *(v10 + 12) != a6)
      {
        *v10 = a3.n128_u32[0];
        *(v10 + 4) = a4;
        *(v10 + 8) = a5;
        *(v10 + 12) = a6;
        HGNode::ClearBits(this, a2, a7);
        return 1;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v8 = *(this + 51);
      if (*(v8 + 16) != a3.n128_f32[0] || *(v8 + 20) != a4 || *(v8 + 24) != a5 || *(v8 + 28) != a6)
      {
        *(v8 + 16) = a3.n128_u32[0];
        *(v8 + 20) = a4;
        *(v8 + 24) = a5;
        *(v8 + 28) = a6;
        HGNode::ClearBits(this, a2, a7);
        return 1;
      }

      return 0;
    }

    return v7;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v7 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 51) + 48) = a3;
    }

    return v7;
  }

  v11 = *(this + 51);
  if (*(v11 + 32) != a3.n128_f32[0] || *(v11 + 36) != a4 || *(v11 + 40) != a5 || *(v11 + 44) != a6)
  {
    *(v11 + 32) = a3.n128_u32[0];
    *(v11 + 36) = a4;
    *(v11 + 40) = a5;
    *(v11 + 44) = a6;
    HGNode::ClearBits(this, a2, a7);
    return 1;
  }

  return 0;
}

float HgcColorGamma_bias_clamp::GetParameter(HgcColorGamma_bias_clamp *this, int a2, float *a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = *(this + 51);
      *a3 = v7[8];
      a3[1] = v7[9];
      a3[2] = v7[10];
      v4 = v7 + 11;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v5 = *(this + 51);
      *a3 = v5[12];
      a3[1] = v5[13];
      a3[2] = v5[14];
      v4 = v5 + 15;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v3 = *(this + 51);
    *a3 = v3[4];
    a3[1] = v3[5];
    a3[2] = v3[6];
    v4 = v3 + 7;
  }

  else
  {
    v6 = *(this + 51);
    *a3 = *v6;
    a3[1] = v6[1];
    a3[2] = v6[2];
    v4 = v6 + 3;
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcST2084_EOTF::GetProgram(HgcST2084_EOTF *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000404\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = clamp(r0.xyz, 0.00000h, 1.00000h);\n    r0.xyz = pow(r0.xyz, half3(hg_Params[0].yyy));\n    r1.xyz = r0.xyz - half3(hg_Params[1].xxx);\n    r0.xyz = r0.xyz*half3(hg_Params[1].zzz) + half3(hg_Params[1].yyy);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    r0.xyz = pow(r0.xyz, half3(hg_Params[0].xxx));\n    output.color0.xyz = float3(r0.xyz)*hg_Params[1].www;\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=c1c59994:6a4309cd:322adf23:26162d23\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ce\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = clamp(r0.xyz, 0.00000f, 1.00000f);\n    r0.xyz = pow(r0.xyz, hg_Params[0].yyy);\n    r1.xyz = r0.xyz - hg_Params[1].xxx;\n    r0.xyz = r0.xyz*hg_Params[1].zzz + hg_Params[1].yyy;\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    r0.xyz = pow(r0.xyz, hg_Params[0].xxx);\n    output.color0.xyz = r0.xyz*hg_Params[1].www;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=dfda7509:99458374:6e062eb7:63abe617\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003e1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = clamp(r0.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = pow(r0.xyz, hg_ProgramLocal0.yyy);\n    r1.xyz = r0.xyz - hg_ProgramLocal1.xxx;\n    r0.xyz = r0.xyz*hg_ProgramLocal1.zzz + hg_ProgramLocal1.yyy;\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    r0.xyz = pow(r0.xyz, hg_ProgramLocal0.xxx);\n    gl_FragColor.xyz = r0.xyz*hg_ProgramLocal1.www;\n    gl_FragColor.w = r0.w;\n}\n//MD5=6997d0cc:8e8a000b:d380b926:8b993188\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE2CB1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE2CB4C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE2CB44);
}

uint64_t HgcST2084_EOTF::BindTexture(HgcST2084_EOTF *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcST2084_EOTF::Bind(HgcST2084_EOTF *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcST2084_EOTF::RenderTile(HgcST2084_EOTF *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(this + 51);
      v14 = *(v12 + 2);
      v13 = *(v12 + 3);
      v15 = vminq_f32(vmaxq_f32(*(v6 + v10 - 16), v14), v13);
      v16 = vminq_f32(vmaxq_f32(*(v6 + v10), v14), v13);
      v17 = *(v12 + 4);
      v18 = *(v12 + 5);
      v19 = vorrq_s8(vandq_s8(v17, v15), v13);
      v20 = vorrq_s8(vandq_s8(v17, v16), v13);
      v22 = *(v12 + 6);
      v21 = *(v12 + 7);
      v23 = *(v12 + 8);
      v24 = *(v12 + 9);
      v25 = vandq_s8(v13, vcgtq_f32(v19, v23));
      v26 = vandq_s8(v13, vcgtq_f32(v20, v23));
      v27 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v15, 0x17uLL)), vandq_s8(v22, vcgtq_f32(v18, v15))), v21), v25);
      v28 = vsubq_f32(vsubq_f32(v19, v13), vmulq_f32(vmulq_f32(v24, v25), v19));
      v29 = vsubq_f32(vsubq_f32(v20, v13), vmulq_f32(vmulq_f32(v24, v26), v20));
      v30 = *(v12 + 10);
      v31 = *(v12 + 11);
      v32 = *(v12 + 12);
      v33 = *(v12 + 13);
      v34 = vaddq_f32(v27, vmulq_f32(v28, vaddq_f32(vaddq_f32(v32, vmulq_f32(v28, v33)), vmulq_f32(vmulq_f32(v28, v28), vaddq_f32(v30, vmulq_f32(v31, v28))))));
      v35 = *(v12 + 1);
      v36 = vmulq_lane_f32(v34, *v12, 1);
      v38 = *(v12 + 14);
      v37 = *(v12 + 15);
      v39 = vmaxq_f32(v36, v38);
      v40 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v16, 0x17uLL)), vandq_s8(v22, vcgtq_f32(v18, v16))), v21), v26), vmulq_f32(v29, vaddq_f32(vaddq_f32(v32, vmulq_f32(v29, v33)), vmulq_f32(vmulq_f32(v29, v29), vaddq_f32(v30, vmulq_f32(v31, v29)))))), *v12, 1), v38);
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
      v42 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
      v43 = vsubq_f32(v41, vandq_s8(v13, vcgtq_f32(v41, v39)));
      v44 = vsubq_f32(v42, vandq_s8(v13, vcgtq_f32(v42, v40)));
      v45 = vsubq_f32(v39, v43);
      v46 = vsubq_f32(v40, v44);
      v48 = *(v12 + 16);
      v47 = *(v12 + 17);
      v49 = vmulq_f32(v46, vaddq_f32(v47, vmulq_f32(v46, vaddq_f32(v37, vmulq_f32(v48, v46)))));
      v50 = vcvtq_s32_f32(v44);
      v52 = *(v12 + 18);
      v51 = *(v12 + 19);
      v53 = vbslq_s8(v51, v15, vmulq_f32(vaddq_f32(v13, vmulq_f32(v45, vaddq_f32(v47, vmulq_f32(v45, vaddq_f32(v37, vmulq_f32(v48, v45)))))), vshlq_n_s32(vaddq_s32(v52, vcvtq_s32_f32(v43)), 0x17uLL)));
      v54 = vbslq_s8(v51, v16, vmulq_f32(vaddq_f32(v13, v49), vshlq_n_s32(vaddq_s32(v52, v50), 0x17uLL)));
      v55 = vdupq_lane_s32(*v35.f32, 1);
      v56 = vdupq_lane_s32(*v35.f32, 0);
      v57 = vsubq_f32(v53, v56);
      v58 = vaddq_f32(v55, vmulq_laneq_f32(v53, v35, 2));
      v59 = vaddq_f32(v55, vmulq_laneq_f32(v54, v35, 2));
      v60 = vsubq_f32(v54, v56);
      v61 = vbslq_s8(v51, v15, v58);
      v62 = vbslq_s8(v51, v16, v59);
      v63 = vmaxq_f32(v57, v14);
      v64 = vmaxq_f32(v60, v14);
      v65 = *(v12 + 20);
      v66 = *(v12 + 21);
      v67 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v61), v65), v66);
      v68 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v62), v65), v66);
      v69 = *(v12 + 22);
      v70 = vminq_f32(v67, v69);
      v71 = vminq_f32(v68, v69);
      v72 = vbslq_s8(v51, v15, vmulq_f32(v63, vmulq_f32(v70, vrecpsq_f32(v61, v70))));
      v73 = vbslq_s8(v51, v16, vmulq_f32(v64, vmulq_f32(v71, vrecpsq_f32(v62, v71))));
      v74 = vorrq_s8(vandq_s8(v72, v17), v13);
      v75 = vorrq_s8(vandq_s8(v73, v17), v13);
      v76 = vandq_s8(v22, vcgtq_f32(v18, v72));
      v77 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v73, 0x17uLL)), vandq_s8(v22, vcgtq_f32(v18, v73)));
      v78 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v72, 0x17uLL)), v76), v21);
      v79 = vandq_s8(v13, vcgtq_f32(v74, v23));
      v80 = vsubq_f32(v77, v21);
      v81 = vandq_s8(v13, vcgtq_f32(v75, v23));
      v82 = vaddq_f32(v78, v79);
      v83 = vsubq_f32(vsubq_f32(v74, v13), vmulq_f32(vmulq_f32(v24, v79), v74));
      v84 = vsubq_f32(vsubq_f32(v75, v13), vmulq_f32(vmulq_f32(v24, v81), v75));
      v85 = vaddq_f32(vaddq_f32(v80, v81), vmulq_f32(v84, vaddq_f32(vaddq_f32(v32, vmulq_f32(v33, v84)), vmulq_f32(vmulq_f32(v84, v84), vaddq_f32(v30, vmulq_f32(v31, v84))))));
      v86 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v82, vmulq_f32(v83, vaddq_f32(vaddq_f32(v32, vmulq_f32(v33, v83)), vmulq_f32(vmulq_f32(v83, v83), vaddq_f32(v30, vmulq_f32(v31, v83)))))), COERCE_FLOAT(*v12)), v38);
      v87 = vmaxq_f32(vmulq_n_f32(v85, COERCE_FLOAT(*v12)), v38);
      v88 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
      v89 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
      v90 = vsubq_f32(v88, vandq_s8(v13, vcgtq_f32(v88, v86)));
      v91 = vsubq_f32(v89, vandq_s8(v13, vcgtq_f32(v89, v87)));
      v92 = vsubq_f32(v86, v90);
      v93 = vsubq_f32(v87, v91);
      v94 = (v5 + v10);
      v94[-1] = vbslq_s8(v51, v15, vmulq_laneq_f32(vbslq_s8(v51, v15, vmulq_f32(vaddq_f32(v13, vmulq_f32(v92, vaddq_f32(v47, vmulq_f32(v92, vaddq_f32(v37, vmulq_f32(v48, v92)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v90), v52), 0x17uLL))), v35, 3));
      *v94 = vbslq_s8(v51, v16, vmulq_laneq_f32(vbslq_s8(v51, v16, vmulq_f32(vaddq_f32(v13, vmulq_f32(v93, vaddq_f32(v47, vmulq_f32(v93, vaddq_f32(v37, vmulq_f32(v48, v93)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v91), v52), 0x17uLL))), v35, 3));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v95 = 16 * v9;
    v96 = *(this + 51);
    v98 = *(v96 + 2);
    v97 = *(v96 + 3);
    v99 = vminq_f32(vmaxq_f32(*(v6 + v95), v98), v97);
    v100 = *(v96 + 4);
    v101 = *(v96 + 5);
    v102 = vorrq_s8(vandq_s8(v100, v99), v97);
    v103 = *(v96 + 6);
    v104 = *(v96 + 7);
    v105 = *(v96 + 8);
    v106 = *(v96 + 9);
    v107 = vandq_s8(v97, vcgtq_f32(v102, v105));
    v108 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v99, 0x17uLL)), vandq_s8(v103, vcgtq_f32(v101, v99))), v104), v107);
    v109 = vsubq_f32(vsubq_f32(v102, v97), vmulq_f32(vmulq_f32(v106, v107), v102));
    v110 = *(v96 + 10);
    v111 = *(v96 + 11);
    v112 = *(v96 + 12);
    v113 = *(v96 + 13);
    v114 = vaddq_f32(v108, vmulq_f32(v109, vaddq_f32(vaddq_f32(v112, vmulq_f32(v109, v113)), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(v110, vmulq_f32(v111, v109))))));
    v115 = *(v96 + 1);
    v116 = vmulq_lane_f32(v114, *v96, 1);
    v118 = *(v96 + 14);
    v117 = *(v96 + 15);
    v119 = vmaxq_f32(v116, v118);
    v120 = vcvtq_f32_s32(vcvtq_s32_f32(v119));
    v121 = vsubq_f32(v120, vandq_s8(v97, vcgtq_f32(v120, v119)));
    v122 = vsubq_f32(v119, v121);
    v124 = *(v96 + 16);
    v123 = *(v96 + 17);
    v125 = vcvtq_s32_f32(v121);
    v127 = *(v96 + 18);
    v126 = *(v96 + 19);
    v128 = vbslq_s8(v126, v99, vmulq_f32(vaddq_f32(v97, vmulq_f32(v122, vaddq_f32(v123, vmulq_f32(v122, vaddq_f32(v117, vmulq_f32(v124, v122)))))), vshlq_n_s32(vaddq_s32(v127, v125), 0x17uLL)));
    v129 = vsubq_f32(v128, vdupq_lane_s32(*v115.f32, 0));
    v130 = vbslq_s8(v126, v99, vaddq_f32(vdupq_lane_s32(*v115.f32, 1), vmulq_laneq_f32(v128, v115, 2)));
    v131 = vmaxq_f32(v129, v98);
    v132 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v130), *(v96 + 20)), *(v96 + 21)), *(v96 + 22));
    v133 = vbslq_s8(v126, v99, vmulq_f32(v131, vmulq_f32(v132, vrecpsq_f32(v130, v132))));
    v134 = vorrq_s8(vandq_s8(v133, v100), v97);
    v135 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v133, 0x17uLL)), vandq_s8(v103, vcgtq_f32(v101, v133))), v104);
    v136 = vandq_s8(v97, vcgtq_f32(v134, v105));
    v137 = vsubq_f32(vsubq_f32(v134, v97), vmulq_f32(vmulq_f32(v106, v136), v134));
    v138 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(v135, v136), vmulq_f32(v137, vaddq_f32(vaddq_f32(v112, vmulq_f32(v113, v137)), vmulq_f32(vmulq_f32(v137, v137), vaddq_f32(v110, vmulq_f32(v111, v137)))))), COERCE_FLOAT(*v96)), v118);
    v139 = vcvtq_f32_s32(vcvtq_s32_f32(v138));
    v140 = vsubq_f32(v139, vandq_s8(v97, vcgtq_f32(v139, v138)));
    v141 = vsubq_f32(v138, v140);
    *(v5 + v95) = vbslq_s8(v126, v99, vmulq_laneq_f32(vbslq_s8(v126, v99, vmulq_f32(vaddq_f32(v97, vmulq_f32(v141, vaddq_f32(v123, vmulq_f32(v141, vaddq_f32(v117, vmulq_f32(v124, v141)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v140), v127), 0x17uLL))), v115, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcST2084_EOTF::GetDOD(HgcST2084_EOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcST2084_EOTF::GetROI(HgcST2084_EOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcST2084_EOTF::HgcST2084_EOTF(HgcST2084_EOTF *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723D1D8;
  operator new();
}

void HgcST2084_EOTF::~HgcST2084_EOTF(HgcST2084_EOTF *this)
{
  *this = &unk_28723D1D8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C409BD2D9E4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcST2084_EOTF::~HgcST2084_EOTF(HGNode *this)
{
  *this = &unk_28723D1D8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcST2084_EOTF::SetParameter(HgcST2084_EOTF *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcST2084_EOTF::GetParameter(HgcST2084_EOTF *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcST2084_InverseEOTF::GetProgram(HgcST2084_InverseEOTF *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ae\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = pow(r0.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = r1.xyz*half3(hg_Params[1].zzz) + c0.yyy;\n    r1.xyz = r1.xyz*half3(hg_Params[1].yyy) + half3(hg_Params[1].xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    output.color0.xyz = pow(float3(r0.xyz), hg_Params[0].yyy);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=2444afad:3db4a253:10709704:a6232534\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000037f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = pow(r0.xyz, hg_Params[0].xxx);\n    r0.xyz = r1.xyz*hg_Params[1].zzz + c0.yyy;\n    r1.xyz = r1.xyz*hg_Params[1].yyy + hg_Params[1].xxx;\n    r0.xyz = r1.xyz/r0.xyz;\n    output.color0.xyz = pow(r0.xyz, hg_Params[0].yyy);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=81f92e6d:ccf1bbeb:6804da4c:060ade07\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000384\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = pow(r0.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = r1.xyz*hg_ProgramLocal1.zzz + c0.yyy;\n    r1.xyz = r1.xyz*hg_ProgramLocal1.yyy + hg_ProgramLocal1.xxx;\n    r0.xyz = r1.xyz/r0.xyz;\n    gl_FragColor.xyz = pow(r0.xyz, hg_ProgramLocal0.yyy);\n    gl_FragColor.w = r0.w;\n}\n//MD5=1cee2dfd:bd24937f:dc7ace33:9840809d\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE2D990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE2D9C0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE2D9B8);
}

uint64_t HgcST2084_InverseEOTF::BindTexture(HgcST2084_InverseEOTF *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcST2084_InverseEOTF::Bind(HgcST2084_InverseEOTF *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcST2084_InverseEOTF::RenderTile(HgcST2084_InverseEOTF *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(v6 + v10 - 16);
      v13 = *(v6 + v10);
      v14 = *(this + 51);
      v16 = *v14[4].f32;
      v15 = *v14[6].f32;
      v17 = vbslq_s8(v15, v12, vmaxq_f32(v12, v16));
      v18 = vbslq_s8(v15, v13, vmaxq_f32(v13, v16));
      v20 = *v14[8].f32;
      v19 = *v14[10].f32;
      v21 = vorrq_s8(vandq_s8(v17, v20), v19);
      v23 = *v14[12].f32;
      v22 = *v14[14].f32;
      v24 = vorrq_s8(vandq_s8(v18, v20), v19);
      v25 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v22, vcgtq_f32(v23, v17)));
      v26 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v22, vcgtq_f32(v23, v18)));
      v27 = *v14[16].f32;
      v28 = *v14[18].f32;
      v29 = vsubq_f32(v25, v27);
      v30 = vandq_s8(v19, vcgtq_f32(v21, v28));
      v31 = vandq_s8(v19, vcgtq_f32(v24, v28));
      v33 = *v14[20].f32;
      v32 = *v14[22].f32;
      v34 = vsubq_f32(v26, v27);
      v35 = vmulq_f32(vmulq_f32(v33, v30), v21);
      v36 = vaddq_f32(v29, v30);
      v37 = vsubq_f32(vsubq_f32(v21, v19), v35);
      v38 = vsubq_f32(vsubq_f32(v24, v19), vmulq_f32(vmulq_f32(v33, v31), v24));
      v39 = *v14[24].f32;
      v40 = *v14[26].f32;
      v41 = *v14[28].f32;
      v42 = *v14[30].f32;
      v43 = vaddq_f32(v34, v31);
      v44 = *v14[2].f32;
      v45 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v36, vmulq_f32(v37, vaddq_f32(vaddq_f32(v40, vmulq_f32(v37, v41)), vmulq_f32(vmulq_f32(v37, v37), vaddq_f32(v32, vmulq_f32(v39, v37)))))), COERCE_FLOAT(*v14->f32)), v42);
      v46 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v43, vmulq_f32(v38, vaddq_f32(vaddq_f32(v40, vmulq_f32(v38, v41)), vmulq_f32(vmulq_f32(v38, v38), vaddq_f32(v32, vmulq_f32(v39, v38)))))), COERCE_FLOAT(*v14->f32)), v42);
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
      v49 = vsubq_f32(v47, vandq_s8(v19, vcgtq_f32(v47, v45)));
      v50 = vsubq_f32(v48, vandq_s8(v19, vcgtq_f32(v48, v46)));
      v51 = vsubq_f32(v45, v49);
      v52 = vsubq_f32(v46, v50);
      v53 = *v14[32].f32;
      v54 = *v14[34].f32;
      v56 = *v14[36].f32;
      v55 = *v14[38].f32;
      v57 = vmulq_f32(vaddq_f32(v19, vmulq_f32(v51, vaddq_f32(v56, vmulq_f32(v51, vaddq_f32(v53, vmulq_f32(v54, v51)))))), vshlq_n_s32(vaddq_s32(v55, vcvtq_s32_f32(v49)), 0x17uLL));
      v58 = vmulq_f32(vaddq_f32(v19, vmulq_f32(v52, vaddq_f32(v56, vmulq_f32(v52, vaddq_f32(v53, vmulq_f32(v54, v52)))))), vshlq_n_s32(vaddq_s32(v55, vcvtq_s32_f32(v50)), 0x17uLL));
      v59 = vbslq_s8(v15, v12, vaddq_f32(v19, vmulq_laneq_f32(v57, v44, 2)));
      v60 = vbslq_s8(v15, v13, vaddq_f32(v19, vmulq_laneq_f32(v58, v44, 2)));
      v61 = vdupq_lane_s32(*v44.f32, 0);
      v62 = vaddq_f32(v61, vmulq_lane_f32(v57, *v44.f32, 1));
      v63 = *v14[40].f32;
      v64 = *v14[42].f32;
      v65 = vaddq_f32(v61, vmulq_lane_f32(v58, *v44.f32, 1));
      v66 = *v14[44].f32;
      v67 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v59), v63), v64), v66);
      v68 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v60), v63), v64), v66);
      v69 = vbslq_s8(v15, v12, vmulq_f32(v62, vmulq_f32(v67, vrecpsq_f32(v59, v67))));
      v70 = vbslq_s8(v15, v13, vmulq_f32(v65, vmulq_f32(v68, vrecpsq_f32(v60, v68))));
      v71 = vorrq_s8(vandq_s8(v69, v20), v19);
      v72 = vorrq_s8(vandq_s8(v70, v20), v19);
      v73 = vandq_s8(v22, vcgtq_f32(v23, v69));
      v74 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v70, 0x17uLL)), vandq_s8(v22, vcgtq_f32(v23, v70)));
      v75 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v69, 0x17uLL)), v73), v27);
      v76 = vsubq_f32(v74, v27);
      v77 = vandq_s8(v19, vcgtq_f32(v71, v28));
      v78 = vandq_s8(v19, vcgtq_f32(v72, v28));
      v79 = vaddq_f32(v75, v77);
      v80 = vsubq_f32(vsubq_f32(v71, v19), vmulq_f32(vmulq_f32(v33, v77), v71));
      v81 = vsubq_f32(vsubq_f32(v72, v19), vmulq_f32(vmulq_f32(v33, v78), v72));
      v82 = vaddq_f32(vaddq_f32(v76, v78), vmulq_f32(v81, vaddq_f32(vaddq_f32(v40, vmulq_f32(v41, v81)), vmulq_f32(vmulq_f32(v81, v81), vaddq_f32(v32, vmulq_f32(v39, v81))))));
      v83 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v79, vmulq_f32(v80, vaddq_f32(vaddq_f32(v40, vmulq_f32(v41, v80)), vmulq_f32(vmulq_f32(v80, v80), vaddq_f32(v32, vmulq_f32(v39, v80)))))), *v14, 1), v42);
      v84 = vmaxq_f32(vmulq_lane_f32(v82, *v14, 1), v42);
      v85 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
      v86 = vcvtq_f32_s32(vcvtq_s32_f32(v84));
      v87 = vsubq_f32(v85, vandq_s8(v19, vcgtq_f32(v85, v83)));
      v88 = vsubq_f32(v86, vandq_s8(v19, vcgtq_f32(v86, v84)));
      v89 = vsubq_f32(v83, v87);
      v90 = vsubq_f32(v84, v88);
      v91 = (v5 + v10);
      v91[-1] = vbslq_s8(v15, v12, vmulq_f32(vaddq_f32(v19, vmulq_f32(v89, vaddq_f32(v56, vmulq_f32(v89, vaddq_f32(v53, vmulq_f32(v54, v89)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v87), v55), 0x17uLL)));
      *v91 = vbslq_s8(v15, v13, vmulq_f32(vaddq_f32(v19, vmulq_f32(v90, vaddq_f32(v56, vmulq_f32(v90, vaddq_f32(v53, vmulq_f32(v54, v90)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v88), v55), 0x17uLL)));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v92 = 16 * v9;
    v93 = *(v6 + v92);
    v94 = *(this + 51);
    v95 = *v94[6].f32;
    v96 = vbslq_s8(v95, v93, vmaxq_f32(v93, *v94[4].f32));
    v98 = *v94[8].f32;
    v97 = *v94[10].f32;
    v99 = vorrq_s8(vandq_s8(v96, v98), v97);
    v100 = *v94[12].f32;
    v101 = *v94[14].f32;
    v102 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v96, 0x17uLL)), vandq_s8(v101, vcgtq_f32(v100, v96)));
    v103 = *v94[16].f32;
    v104 = *v94[18].f32;
    v105 = vandq_s8(v97, vcgtq_f32(v99, v104));
    v106 = vaddq_f32(vsubq_f32(v102, v103), v105);
    v107 = *v94[20].f32;
    v108 = *v94[22].f32;
    v109 = vsubq_f32(vsubq_f32(v99, v97), vmulq_f32(vmulq_f32(v107, v105), v99));
    v110 = *v94[24].f32;
    v111 = *v94[26].f32;
    v112 = *v94[28].f32;
    v113 = *v94[30].f32;
    v114 = *v94[2].f32;
    v115 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v106, vmulq_f32(v109, vaddq_f32(vaddq_f32(v111, vmulq_f32(v109, v112)), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(v108, vmulq_f32(v110, v109)))))), COERCE_FLOAT(*v94->f32)), v113);
    v116 = vcvtq_f32_s32(vcvtq_s32_f32(v115));
    v117 = vsubq_f32(v116, vandq_s8(v97, vcgtq_f32(v116, v115)));
    v118 = vsubq_f32(v115, v117);
    v119 = *v94[32].f32;
    v120 = *v94[34].f32;
    v122 = *v94[36].f32;
    v121 = *v94[38].f32;
    v123 = vmulq_f32(vaddq_f32(v97, vmulq_f32(v118, vaddq_f32(v122, vmulq_f32(v118, vaddq_f32(v119, vmulq_f32(v120, v118)))))), vshlq_n_s32(vaddq_s32(v121, vcvtq_s32_f32(v117)), 0x17uLL));
    v124 = vbslq_s8(v95, v93, vaddq_f32(v97, vmulq_laneq_f32(v123, v114, 2)));
    v125 = vaddq_f32(vdupq_lane_s32(*v114.f32, 0), vmulq_lane_f32(v123, *v114.f32, 1));
    v126 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v124), *v94[40].f32), *v94[42].f32), *v94[44].f32);
    v127 = vbslq_s8(v95, v93, vmulq_f32(vmulq_f32(v126, vrecpsq_f32(v124, v126)), v125));
    v128 = vorrq_s8(vandq_s8(v127, v98), v97);
    v129 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v127, 0x17uLL)), vandq_s8(v101, vcgtq_f32(v100, v127))), v103);
    v130 = vandq_s8(v97, vcgtq_f32(v128, v104));
    v131 = vsubq_f32(vsubq_f32(v128, v97), vmulq_f32(vmulq_f32(v107, v130), v128));
    v132 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(vaddq_f32(v129, v130), vmulq_f32(v131, vaddq_f32(vaddq_f32(v111, vmulq_f32(v112, v131)), vmulq_f32(vmulq_f32(v131, v131), vaddq_f32(v108, vmulq_f32(v110, v131)))))), *v94, 1), v113);
    v133 = vcvtq_f32_s32(vcvtq_s32_f32(v132));
    v134 = vsubq_f32(v133, vandq_s8(v97, vcgtq_f32(v133, v132)));
    v135 = vsubq_f32(v132, v134);
    *(v5 + v92) = vbslq_s8(v95, v93, vmulq_f32(vaddq_f32(v97, vmulq_f32(v135, vaddq_f32(v122, vmulq_f32(v135, vaddq_f32(v119, vmulq_f32(v120, v135)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v134), v121), 0x17uLL)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcST2084_InverseEOTF::GetDOD(HgcST2084_InverseEOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcST2084_InverseEOTF::GetROI(HgcST2084_InverseEOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcST2084_InverseEOTF::HgcST2084_InverseEOTF(HgcST2084_InverseEOTF *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723D440;
  operator new();
}

void HgcST2084_InverseEOTF::~HgcST2084_InverseEOTF(HgcST2084_InverseEOTF *this)
{
  *this = &unk_28723D440;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C409BD2D9E4);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcST2084_InverseEOTF::~HgcST2084_InverseEOTF(HGNode *this)
{
  *this = &unk_28723D440;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcST2084_InverseEOTF::SetParameter(HgcST2084_InverseEOTF *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcST2084_InverseEOTF::GetParameter(HgcST2084_InverseEOTF *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBT2100_PQ_OOTF::GetProgram(HgcBT2100_PQ_OOTF *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003fc\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r2.xyz = r1.xyz*half3(hg_Params[0].zzz);\n    r0.xyz = pow(r1.xyz, half3(hg_Params[1].xxx));\n    r0.xyz = r0.xyz*half3(hg_Params[0].xxx) + half3(hg_Params[0].yyy);\n    r1.xyz = half3(half3(hg_Params[0].www) < r1.xyz);\n    r0.xyz = select(r2.xyz, r0.xyz, -r1.xyz < 0.00000h);\n    output.color0.xyz = pow(float3(r0.xyz), hg_Params[1].yyy);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=497acd98:5770f8f6:3d0f2d43:8aa16af4\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003c7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r2.xyz = r1.xyz*hg_Params[0].zzz;\n    r0.xyz = pow(r1.xyz, hg_Params[1].xxx);\n    r0.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n    r1.xyz = float3(hg_Params[0].www < r1.xyz);\n    r0.xyz = select(r2.xyz, r0.xyz, -r1.xyz < 0.00000f);\n    output.color0.xyz = pow(r0.xyz, hg_Params[1].yyy);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=ba549f37:722664fb:6e7f959f:a25bfb26\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000040e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r2.xyz = r1.xyz*hg_ProgramLocal0.zzz;\n    r0.xyz = pow(r1.xyz, hg_ProgramLocal1.xxx);\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xxx + hg_ProgramLocal0.yyy;\n    r1.xyz = vec3(lessThan(hg_ProgramLocal0.www, r1.xyz));\n    r0.xyz = vec3(-r1.x < 0.00000 ? r0.x : r2.x, -r1.y < 0.00000 ? r0.y : r2.y, -r1.z < 0.00000 ? r0.z : r2.z);\n    gl_FragColor.xyz = pow(r0.xyz, hg_ProgramLocal1.yyy);\n    gl_FragColor.w = r0.w;\n}\n//MD5=16c6aa6a:26df20c3:449175b2:08fdb222\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE2E81C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE2E84C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE2E844);
}

uint64_t HgcBT2100_PQ_OOTF::BindTexture(HgcBT2100_PQ_OOTF *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcBT2100_PQ_OOTF::Bind(HgcBT2100_PQ_OOTF *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_PQ_OOTF::RenderTile(HgcBT2100_PQ_OOTF *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(v6 + v10 - 16);
      v13 = *(v6 + v10);
      v14 = *(this + 51);
      v15 = *(v14 + 2);
      v16 = *(v14 + 3);
      v17 = vmaxq_f32(v12, v15);
      v18 = vmaxq_f32(v13, v15);
      v19 = *(v14 + 4);
      v20 = *(v14 + 5);
      v21 = vorrq_s8(vandq_s8(v16, v17), v19);
      v22 = vorrq_s8(vandq_s8(v16, v18), v19);
      v23 = *(v14 + 6);
      v24 = *(v14 + 7);
      v25 = *(v14 + 8);
      v26 = *(v14 + 9);
      v27 = vandq_s8(v19, vcgtq_f32(v21, v25));
      v28 = vandq_s8(v19, vcgtq_f32(v22, v25));
      v29 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v23, vcgtq_f32(v20, v17))), v24), v27);
      v30 = vsubq_f32(vsubq_f32(v21, v19), vmulq_f32(vmulq_f32(v26, v27), v21));
      v31 = vsubq_f32(vsubq_f32(v22, v19), vmulq_f32(vmulq_f32(v26, v28), v22));
      v32 = *(v14 + 10);
      v33 = *(v14 + 11);
      v34 = *(v14 + 12);
      v35 = *(v14 + 13);
      v36 = vaddq_f32(v29, vmulq_f32(v30, vaddq_f32(vaddq_f32(v34, vmulq_f32(v30, v35)), vmulq_f32(vmulq_f32(v30, v30), vaddq_f32(v32, vmulq_f32(v33, v30))))));
      v37 = vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v23, vcgtq_f32(v20, v18))), v24), v28), vmulq_f32(v31, vaddq_f32(vaddq_f32(v34, vmulq_f32(v31, v35)), vmulq_f32(vmulq_f32(v31, v31), vaddq_f32(v32, vmulq_f32(v33, v31))))));
      v38 = v14[1];
      v39 = vmulq_n_f32(v36, *&v38);
      v40 = *(v14 + 14);
      v41 = *(v14 + 15);
      v42 = vmaxq_f32(v39, v40);
      v43 = vmaxq_f32(vmulq_n_f32(v37, *&v38), v40);
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v46 = vmulq_laneq_f32(v17, *v14, 2);
      v47 = vsubq_f32(v44, vandq_s8(v19, vcgtq_f32(v44, v42)));
      v48 = vsubq_f32(v45, vandq_s8(v19, vcgtq_f32(v45, v43)));
      v49 = vsubq_f32(v42, v47);
      v50 = vsubq_f32(v43, v48);
      v51 = *(v14 + 16);
      v52 = *(v14 + 17);
      v53 = vmulq_laneq_f32(v18, *v14, 2);
      v54 = vcvtq_s32_f32(v47);
      v55 = vcvtq_s32_f32(v48);
      v56 = *(v14 + 18);
      v57 = *(v14 + 19);
      v58 = vbslq_s8(v57, v12, vmulq_f32(vaddq_f32(v19, vmulq_f32(v49, vaddq_f32(v52, vmulq_f32(v49, vaddq_f32(v41, vmulq_f32(v51, v49)))))), vshlq_n_s32(vaddq_s32(v56, v54), 0x17uLL)));
      v59 = vdupq_lane_s32(*v14, 1);
      v60 = vdupq_laneq_s32(*v14, 3);
      v61 = vcgtq_f32(vandq_s8(v19, vcgtq_f32(v17, v60)), v15);
      v62 = vcgtq_f32(vandq_s8(v19, vcgtq_f32(v18, v60)), v15);
      v63 = vbslq_s8(v57, v12, vbslq_s8(v61, vbslq_s8(v57, v12, vaddq_f32(v59, vmulq_n_f32(v58, COERCE_FLOAT(*v14)))), v46));
      v64 = vbslq_s8(v57, v13, vbslq_s8(v62, vbslq_s8(v57, v13, vaddq_f32(v59, vmulq_n_f32(vbslq_s8(v57, v13, vmulq_f32(vaddq_f32(v19, vmulq_f32(v50, vaddq_f32(v52, vmulq_f32(v50, vaddq_f32(v41, vmulq_f32(v51, v50)))))), vshlq_n_s32(vaddq_s32(v56, v55), 0x17uLL))), COERCE_FLOAT(*v14)))), v53));
      v65 = vorrq_s8(vandq_s8(v63, v16), v19);
      v66 = vorrq_s8(vandq_s8(v64, v16), v19);
      v67 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v64, 0x17uLL)), vandq_s8(v23, vcgtq_f32(v20, v64)));
      v68 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v63, 0x17uLL)), vandq_s8(v23, vcgtq_f32(v20, v63))), v24);
      v69 = vsubq_f32(v67, v24);
      v70 = vandq_s8(v19, vcgtq_f32(v65, v25));
      v71 = vandq_s8(v19, vcgtq_f32(v66, v25));
      v72 = vaddq_f32(v68, v70);
      v73 = vsubq_f32(vsubq_f32(v65, v19), vmulq_f32(vmulq_f32(v26, v70), v65));
      v74 = vsubq_f32(vsubq_f32(v66, v19), vmulq_f32(vmulq_f32(v26, v71), v66));
      v75 = vaddq_f32(vaddq_f32(v69, v71), vmulq_f32(v74, vaddq_f32(vaddq_f32(v34, vmulq_f32(v35, v74)), vmulq_f32(vmulq_f32(v74, v74), vaddq_f32(v32, vmulq_f32(v33, v74))))));
      v76 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v72, vmulq_f32(v73, vaddq_f32(vaddq_f32(v34, vmulq_f32(v35, v73)), vmulq_f32(vmulq_f32(v73, v73), vaddq_f32(v32, vmulq_f32(v33, v73)))))), *&v38, 1), v40);
      v77 = vmaxq_f32(vmulq_lane_f32(v75, *&v38, 1), v40);
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
      v79 = vcvtq_f32_s32(vcvtq_s32_f32(v77));
      v80 = vsubq_f32(v78, vandq_s8(v19, vcgtq_f32(v78, v76)));
      v81 = vsubq_f32(v79, vandq_s8(v19, vcgtq_f32(v79, v77)));
      v82 = vsubq_f32(v76, v80);
      v83 = vsubq_f32(v77, v81);
      v84 = (v5 + v10);
      v84[-1] = vbslq_s8(v57, v12, vmulq_f32(vaddq_f32(v19, vmulq_f32(v82, vaddq_f32(v52, vmulq_f32(v82, vaddq_f32(v41, vmulq_f32(v51, v82)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v80), v56), 0x17uLL)));
      *v84 = vbslq_s8(v57, v13, vmulq_f32(vaddq_f32(v19, vmulq_f32(v83, vaddq_f32(v52, vmulq_f32(v83, vaddq_f32(v41, vmulq_f32(v51, v83)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v81), v56), 0x17uLL)));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v85 = 16 * v9;
    v86 = *(v6 + v85);
    v87 = *(this + 51);
    v88 = *(v87 + 2);
    v89 = *(v87 + 3);
    v90 = vmaxq_f32(v86, v88);
    v91 = v87[1];
    v92 = *(v87 + 4);
    v93 = *(v87 + 5);
    v94 = vorrq_s8(vandq_s8(v89, v90), v92);
    v96 = *(v87 + 6);
    v95 = *(v87 + 7);
    v98 = *(v87 + 8);
    v97 = *(v87 + 9);
    v99 = vandq_s8(v92, vcgtq_f32(v94, v98));
    v100 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v90, 0x17uLL)), vandq_s8(v96, vcgtq_f32(v93, v90))), v95), v99);
    v101 = vsubq_f32(vsubq_f32(v94, v92), vmulq_f32(vmulq_f32(v97, v99), v94));
    v102 = *(v87 + 10);
    v103 = *(v87 + 11);
    v104 = *(v87 + 12);
    v105 = *(v87 + 13);
    v106 = vmulq_n_f32(vaddq_f32(v100, vmulq_f32(v101, vaddq_f32(vaddq_f32(v104, vmulq_f32(v101, v105)), vmulq_f32(vmulq_f32(v101, v101), vaddq_f32(v102, vmulq_f32(v103, v101)))))), *&v91);
    v107 = *(v87 + 14);
    v108 = *(v87 + 15);
    v109 = vmaxq_f32(v106, v107);
    v110 = vcvtq_f32_s32(vcvtq_s32_f32(v109));
    v111 = vsubq_f32(v110, vandq_s8(v92, vcgtq_f32(v110, v109)));
    v112 = vsubq_f32(v109, v111);
    v113 = *(v87 + 16);
    v114 = *(v87 + 17);
    v116 = *(v87 + 18);
    v115 = *(v87 + 19);
    v117 = vbslq_s8(v115, v86, vbslq_s8(vcgtq_f32(vandq_s8(v92, vcgtq_f32(v90, vdupq_laneq_s32(*v87, 3))), v88), vbslq_s8(v115, v86, vaddq_f32(vdupq_lane_s32(*v87, 1), vmulq_n_f32(vbslq_s8(v115, v86, vmulq_f32(vaddq_f32(v92, vmulq_f32(v112, vaddq_f32(v114, vmulq_f32(v112, vaddq_f32(v108, vmulq_f32(v113, v112)))))), vshlq_n_s32(vaddq_s32(v116, vcvtq_s32_f32(v111)), 0x17uLL))), COERCE_FLOAT(*v87)))), vmulq_laneq_f32(v90, *v87, 2)));
    v118 = vorrq_s8(vandq_s8(v117, v89), v92);
    v119 = vandq_s8(v92, vcgtq_f32(v118, v98));
    v120 = vsubq_f32(vsubq_f32(v118, v92), vmulq_f32(vmulq_f32(v97, v119), v118));
    v121 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v117, 0x17uLL)), vandq_s8(v96, vcgtq_f32(v93, v117))), v95), v119), vmulq_f32(v120, vaddq_f32(vaddq_f32(v104, vmulq_f32(v105, v120)), vmulq_f32(vmulq_f32(v120, v120), vaddq_f32(v102, vmulq_f32(v103, v120)))))), *&v91, 1), v107);
    v122 = vcvtq_f32_s32(vcvtq_s32_f32(v121));
    v123 = vsubq_f32(v122, vandq_s8(v92, vcgtq_f32(v122, v121)));
    v124 = vsubq_f32(v121, v123);
    *(v5 + v85) = vbslq_s8(v115, v86, vmulq_f32(vaddq_f32(v92, vmulq_f32(v124, vaddq_f32(v114, vmulq_f32(v124, vaddq_f32(v108, vmulq_f32(v113, v124)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v123), v116), 0x17uLL)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2100_PQ_OOTF::GetDOD(HgcBT2100_PQ_OOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_PQ_OOTF::GetROI(HgcBT2100_PQ_OOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_PQ_OOTF::HgcBT2100_PQ_OOTF(HgcBT2100_PQ_OOTF *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723D6A8;
  operator new();
}

void HgcBT2100_PQ_OOTF::~HgcBT2100_PQ_OOTF(HgcBT2100_PQ_OOTF *this)
{
  *this = &unk_28723D6A8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40B2834900);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_PQ_OOTF::~HgcBT2100_PQ_OOTF(HGNode *this)
{
  *this = &unk_28723D6A8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B2834900);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_PQ_OOTF::SetParameter(HgcBT2100_PQ_OOTF *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBT2100_PQ_OOTF::GetParameter(HgcBT2100_PQ_OOTF *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBT2100_PQ_OOTF_qtApprox::GetProgram(HgcBT2100_PQ_OOTF_qtApprox *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000338\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r0.xyz = r0.xyz*half3(hg_Params[0].xxx);\n    r0.xyz = pow(r0.xyz, half3(hg_Params[0].yyy));\n    output.color0.xyz = float3(r0.xyz)*hg_Params[0].zzz;\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=56795360:c329840e:57b872f7:276b1e06\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000317\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r0.xyz = r0.xyz*hg_Params[0].xxx;\n    r0.xyz = pow(r0.xyz, hg_Params[0].yyy);\n    output.color0.xyz = r0.xyz*hg_Params[0].zzz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=cd043c2b:d3f1596d:4cb96176:dc8cdb49\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002ed\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xxx;\n    r0.xyz = pow(r0.xyz, hg_ProgramLocal0.yyy);\n    gl_FragColor.xyz = r0.xyz*hg_ProgramLocal0.zzz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=37349320:63679db7:9c06dc59:4d215346\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE2F640(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE2F670(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE2F668);
}

uint64_t HgcBT2100_PQ_OOTF_qtApprox::BindTexture(HgcBT2100_PQ_OOTF_qtApprox *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcBT2100_PQ_OOTF_qtApprox::Bind(HgcBT2100_PQ_OOTF_qtApprox *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_PQ_OOTF_qtApprox::RenderTile(HgcBT2100_PQ_OOTF_qtApprox *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(v6 + v10 - 16);
      v13 = *(v6 + v10);
      v14 = *(this + 51);
      v15 = *(v14 + 1);
      v16 = vmaxq_f32(v12, v15);
      v17 = vmaxq_f32(v13, v15);
      v18 = *(v14 + 2);
      v19 = *(v14 + 3);
      v20 = vbslq_s8(v18, v12, vmulq_n_f32(vbslq_s8(v18, v12, v16), COERCE_FLOAT(*v14)));
      v21 = vbslq_s8(v18, v13, vmulq_n_f32(vbslq_s8(v18, v13, v17), COERCE_FLOAT(*v14)));
      v22 = *(v14 + 4);
      v23 = *(v14 + 5);
      v24 = vorrq_s8(vandq_s8(v20, v19), v22);
      v25 = *(v14 + 6);
      v26 = *(v14 + 7);
      v27 = vorrq_s8(vandq_s8(v21, v19), v22);
      v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v21)));
      v29 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v23, v20))), v26);
      v30 = *(v14 + 8);
      v31 = *(v14 + 9);
      v32 = vandq_s8(v22, vcgtq_f32(v24, v30));
      v33 = vandq_s8(v22, vcgtq_f32(v27, v30));
      v34 = vaddq_f32(v29, v32);
      v35 = vsubq_f32(vsubq_f32(v24, v22), vmulq_f32(vmulq_f32(v31, v32), v24));
      v36 = vsubq_f32(vsubq_f32(v27, v22), vmulq_f32(vmulq_f32(v31, v33), v27));
      v37 = *(v14 + 10);
      v38 = *(v14 + 11);
      v39 = *(v14 + 12);
      v40 = *(v14 + 13);
      v41 = vaddq_f32(vaddq_f32(vsubq_f32(v28, v26), v33), vmulq_f32(v36, vaddq_f32(vaddq_f32(v39, vmulq_f32(v40, v36)), vmulq_f32(vmulq_f32(v36, v36), vaddq_f32(v37, vmulq_f32(v38, v36))))));
      v42 = vmulq_lane_f32(vaddq_f32(v34, vmulq_f32(v35, vaddq_f32(vaddq_f32(v39, vmulq_f32(v40, v35)), vmulq_f32(vmulq_f32(v35, v35), vaddq_f32(v37, vmulq_f32(v38, v35)))))), *v14, 1);
      v43 = *(v14 + 14);
      v44 = *(v14 + 15);
      v45 = vmaxq_f32(v42, v43);
      v46 = vmaxq_f32(vmulq_lane_f32(v41, *v14, 1), v43);
      v47 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
      v48 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
      v49 = vsubq_f32(v47, vandq_s8(v22, vcgtq_f32(v47, v45)));
      v50 = vsubq_f32(v48, vandq_s8(v22, vcgtq_f32(v48, v46)));
      v51 = vsubq_f32(v45, v49);
      v52 = vsubq_f32(v46, v50);
      v53 = *(v14 + 16);
      v54 = *(v14 + 17);
      v55 = vmulq_f32(v52, vaddq_f32(v54, vmulq_f32(v52, vaddq_f32(v44, vmulq_f32(v53, v52)))));
      v56 = vaddq_f32(v22, vmulq_f32(v51, vaddq_f32(v54, vmulq_f32(v51, vaddq_f32(v44, vmulq_f32(v53, v51))))));
      v57 = vcvtq_s32_f32(v50);
      v58 = *(v14 + 18);
      v59 = vbslq_s8(v18, v12, vmulq_laneq_f32(vbslq_s8(v18, v12, vmulq_f32(v56, vshlq_n_s32(vaddq_s32(v58, vcvtq_s32_f32(v49)), 0x17uLL))), *v14, 2));
      v60 = vbslq_s8(v18, v13, vmulq_laneq_f32(vbslq_s8(v18, v13, vmulq_f32(vaddq_f32(v22, v55), vshlq_n_s32(vaddq_s32(v58, v57), 0x17uLL))), *v14, 2));
      v61 = (v5 + v10);
      v61[-1] = v59;
      *v61 = v60;
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v62 = 16 * v9;
    v63 = *(v6 + v62);
    v64 = *(this + 51);
    v65 = *(v64 + 32);
    v66 = vbslq_s8(v65, v63, vmulq_n_f32(vbslq_s8(v65, v63, vmaxq_f32(v63, *(v64 + 16))), COERCE_FLOAT(*v64)));
    v67 = *(v64 + 64);
    v68 = vorrq_s8(vandq_s8(v66, *(v64 + 48)), v67);
    v69 = vandq_s8(v67, vcgtq_f32(v68, *(v64 + 128)));
    v70 = vsubq_f32(vsubq_f32(v68, v67), vmulq_f32(vmulq_f32(*(v64 + 144), v69), v68));
    v71 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v66, 0x17uLL)), vandq_s8(*(v64 + 96), vcgtq_f32(*(v64 + 80), v66))), *(v64 + 112)), v69), vmulq_f32(v70, vaddq_f32(vaddq_f32(*(v64 + 192), vmulq_f32(*(v64 + 208), v70)), vmulq_f32(vmulq_f32(v70, v70), vaddq_f32(*(v64 + 160), vmulq_f32(*(v64 + 176), v70)))))), *v64, 1), *(v64 + 224));
    v72 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
    v73 = vsubq_f32(v72, vandq_s8(v67, vcgtq_f32(v72, v71)));
    v74 = vsubq_f32(v71, v73);
    *(v5 + v62) = vbslq_s8(v65, v63, vmulq_laneq_f32(vbslq_s8(v65, v63, vmulq_f32(vaddq_f32(v67, vmulq_f32(v74, vaddq_f32(*(v64 + 272), vmulq_f32(v74, vaddq_f32(*(v64 + 240), vmulq_f32(*(v64 + 256), v74)))))), vshlq_n_s32(vaddq_s32(*(v64 + 288), vcvtq_s32_f32(v73)), 0x17uLL))), *v64, 2));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2100_PQ_OOTF_qtApprox::GetDOD(HgcBT2100_PQ_OOTF_qtApprox *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_PQ_OOTF_qtApprox::GetROI(HgcBT2100_PQ_OOTF_qtApprox *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_PQ_OOTF_qtApprox::HgcBT2100_PQ_OOTF_qtApprox(HgcBT2100_PQ_OOTF_qtApprox *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723D910;
  operator new();
}

void HgcBT2100_PQ_OOTF_qtApprox::~HgcBT2100_PQ_OOTF_qtApprox(HgcBT2100_PQ_OOTF_qtApprox *this)
{
  *this = &unk_28723D910;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40FDACBBE0);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_PQ_OOTF_qtApprox::~HgcBT2100_PQ_OOTF_qtApprox(HGNode *this)
{
  *this = &unk_28723D910;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FDACBBE0);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_PQ_OOTF_qtApprox::SetParameter(HgcBT2100_PQ_OOTF_qtApprox *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcBT2100_PQ_OOTF_qtApprox::GetParameter(HgcBT2100_PQ_OOTF_qtApprox *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

const char *HgcBT2100_PQ_InverseOOTF::GetProgram(HgcBT2100_PQ_InverseOOTF *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000413\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = pow(r0.xyz, half3(hg_Params[1].xxx));\n    r0.xyz = r1.xyz*half3(hg_Params[0].xxx) + half3(hg_Params[0].yyy);\n    r2.xyz = r1.xyz*half3(hg_Params[0].zzz);\n    r0.xyz = pow(r0.xyz, half3(hg_Params[1].yyy));\n    r1.xyz = half3(half3(hg_Params[0].www) < r1.xyz);\n    output.color0.xyz = select(float3(r2.xyz), float3(r0.xyz), -float3(r1.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=a5d8e794:3395fdf7:d7923219:174ddda5\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003c7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = pow(r0.xyz, hg_Params[1].xxx);\n    r0.xyz = r1.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n    r2.xyz = r1.xyz*hg_Params[0].zzz;\n    r0.xyz = pow(r0.xyz, hg_Params[1].yyy);\n    r1.xyz = float3(hg_Params[0].www < r1.xyz);\n    output.color0.xyz = select(r2.xyz, r0.xyz, -r1.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=2f1f52de:ad2f008b:df44194e:84e296bb\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000403\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = pow(r0.xyz, hg_ProgramLocal1.xxx);\n    r0.xyz = r1.xyz*hg_ProgramLocal0.xxx + hg_ProgramLocal0.yyy;\n    r2.xyz = r1.xyz*hg_ProgramLocal0.zzz;\n    r0.xyz = pow(r0.xyz, hg_ProgramLocal1.yyy);\n    r1.xyz = vec3(lessThan(hg_ProgramLocal0.www, r1.xyz));\n    gl_FragColor.xyz = vec3(-r1.x < 0.00000 ? r0.x : r2.x, -r1.y < 0.00000 ? r0.y : r2.y, -r1.z < 0.00000 ? r0.z : r2.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=b9a478a9:481ead68:896d40e0:012e2e2e\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE301C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE301F8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE301F0);
}

uint64_t HgcBT2100_PQ_InverseOOTF::BindTexture(HgcBT2100_PQ_InverseOOTF *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcBT2100_PQ_InverseOOTF::Bind(HgcBT2100_PQ_InverseOOTF *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_PQ_InverseOOTF::RenderTile(HgcBT2100_PQ_InverseOOTF *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1 && *(a2 + 2) - *a2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 10);
    v5 = 16 * *(a2 + 22);
    v6 = *(a2 + 2);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * (*(a2 + 2) - *a2);
    do
    {
      v9 = 0;
      do
      {
        v10 = *(v4 + v9);
        v11 = *(this + 51);
        v12 = *(v11 + 2);
        v13 = *(v11 + 3);
        v14 = v11[1];
        v15 = *(v11 + 4);
        v16 = *(v11 + 5);
        v17 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vdupq_lane_s32(*&v14, 0), v12)), v12), v15, vbslq_s8(v13, v10, vmaxq_f32(v10, v12)));
        v18 = vorrq_s8(vandq_s8(v17, v16), v15);
        v19 = *(v11 + 6);
        v20 = *(v11 + 7);
        v21 = *(v11 + 8);
        v22 = *(v11 + 9);
        v23 = vandq_s8(v15, vcgtq_f32(v18, v22));
        v24 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v20, vcgtq_f32(v19, v17))), v21), v23);
        v26 = *(v11 + 10);
        v25 = *(v11 + 11);
        v27 = vsubq_f32(vsubq_f32(v18, v15), vmulq_f32(vmulq_f32(v26, v23), v18));
        v28 = vmulq_f32(v27, v27);
        v30 = *(v11 + 12);
        v29 = *(v11 + 13);
        v32 = *(v11 + 14);
        v31 = *(v11 + 15);
        v34 = *(v11 + 16);
        v33 = *(v11 + 17);
        v35 = vmulq_n_f32(vaddq_f32(v24, vmulq_f32(v27, vaddq_f32(v33, vmulq_f32(v27, vaddq_f32(vaddq_f32(v31, vmulq_f32(v27, v34)), vmulq_f32(v28, vaddq_f32(vaddq_f32(v25, vmulq_f32(v30, v27)), vmulq_f32(v28, vaddq_f32(v29, vmulq_f32(v32, v27)))))))))), *&v14);
        v37 = *(v11 + 18);
        v36 = *(v11 + 19);
        v38 = vmaxq_f32(v35, v37);
        v39 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
        v40 = vsubq_f32(v39, vandq_s8(v15, vcgtq_f32(v39, v38)));
        v41 = vsubq_f32(v38, v40);
        v43 = *(v11 + 20);
        v42 = *(v11 + 21);
        v44 = *(v11 + 22);
        v45 = *(v11 + 23);
        v46 = *(v11 + 24);
        v47 = vmulq_f32(vaddq_f32(v15, vmulq_f32(v41, vaddq_f32(v45, vmulq_f32(v41, vaddq_f32(vaddq_f32(v42, vmulq_f32(v44, v41)), vmulq_f32(vmulq_f32(v41, v41), vaddq_f32(v36, vmulq_f32(v43, v41)))))))), vshlq_n_s32(vaddq_s32(v46, vcvtq_s32_f32(v40)), 0x17uLL));
        v48 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vdupq_lane_s32(*&v14, 1), v12)), v12), v15, vbslq_s8(v13, v10, vaddq_f32(vdupq_lane_s32(*v11, 1), vmulq_n_f32(v47, COERCE_FLOAT(*v11)))));
        v49 = vorrq_s8(vandq_s8(v48, v16), v15);
        v50 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v48, 0x17uLL)), vandq_s8(v20, vcgtq_f32(v19, v48))), v21);
        v51 = vandq_s8(v15, vcgtq_f32(v49, v22));
        v52 = vaddq_f32(v50, v51);
        v53 = vsubq_f32(vsubq_f32(v49, v15), vmulq_f32(vmulq_f32(v26, v51), v49));
        v54 = vmulq_f32(v53, v53);
        v55 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v52, vmulq_f32(v53, vaddq_f32(v33, vmulq_f32(v53, vaddq_f32(vaddq_f32(v31, vmulq_f32(v34, v53)), vmulq_f32(v54, vaddq_f32(vaddq_f32(v25, vmulq_f32(v30, v53)), vmulq_f32(v54, vaddq_f32(v29, vmulq_f32(v32, v53)))))))))), *&v14, 1), v37);
        v56 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
        v57 = vsubq_f32(v56, vandq_s8(v15, vcgtq_f32(v56, v55)));
        v58 = vsubq_f32(v55, v57);
        *(v6 + v9) = vbslq_s8(v13, v10, vbslq_s8(vcgtq_f32(vandq_s8(v15, vcgtq_f32(v47, vdupq_laneq_s32(*v11, 3))), v12), vbslq_s8(v13, v10, vmulq_f32(vaddq_f32(v15, vmulq_f32(v58, vaddq_f32(v45, vmulq_f32(v58, vaddq_f32(vaddq_f32(v42, vmulq_f32(v44, v58)), vmulq_f32(vmulq_f32(v58, v58), vaddq_f32(v36, vmulq_f32(v43, v58)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v57), v46), 0x17uLL))), vmulq_laneq_f32(v47, *v11, 2)));
        v9 += 16;
      }

      while (v8 != v9);
      ++v3;
      v4 += v5;
      v6 += v7;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcBT2100_PQ_InverseOOTF::GetDOD(HgcBT2100_PQ_InverseOOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_PQ_InverseOOTF::GetROI(HgcBT2100_PQ_InverseOOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_PQ_InverseOOTF::HgcBT2100_PQ_InverseOOTF(HgcBT2100_PQ_InverseOOTF *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723DB78;
  operator new();
}

void HgcBT2100_PQ_InverseOOTF::~HgcBT2100_PQ_InverseOOTF(HgcBT2100_PQ_InverseOOTF *this)
{
  *this = &unk_28723DB78;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C402BC884A0);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_PQ_InverseOOTF::~HgcBT2100_PQ_InverseOOTF(HGNode *this)
{
  *this = &unk_28723DB78;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C402BC884A0);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_PQ_InverseOOTF::SetParameter(HgcBT2100_PQ_InverseOOTF *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBT2100_PQ_InverseOOTF::GetParameter(HgcBT2100_PQ_InverseOOTF *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBT2100_PQ_OETF::GetProgram(HgcBT2100_PQ_OETF *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004c8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r2.xyz = r1.xyz*half3(hg_Params[0].zzz);\n    r0.xyz = pow(r1.xyz, half3(hg_Params[1].xxx));\n    r0.xyz = r0.xyz*half3(hg_Params[0].xxx) + half3(hg_Params[0].yyy);\n    r1.xyz = half3(half3(hg_Params[0].www) < r1.xyz);\n    r0.xyz = select(r2.xyz, r0.xyz, -r1.xyz < 0.00000h);\n    r1.xyz = pow(r0.xyz, half3(hg_Params[1].yyy));\n    r0.xyz = r1.xyz*half3(hg_Params[2].zzz) + c0.yyy;\n    r1.xyz = r1.xyz*half3(hg_Params[2].yyy) + half3(hg_Params[2].xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    output.color0.xyz = pow(float3(r0.xyz), hg_Params[1].zzz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=d5425b59:33d8338b:91a6001c:97c5c49c\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000477\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r2.xyz = r1.xyz*hg_Params[0].zzz;\n    r0.xyz = pow(r1.xyz, hg_Params[1].xxx);\n    r0.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n    r1.xyz = float3(hg_Params[0].www < r1.xyz);\n    r0.xyz = select(r2.xyz, r0.xyz, -r1.xyz < 0.00000f);\n    r1.xyz = pow(r0.xyz, hg_Params[1].yyy);\n    r0.xyz = r1.xyz*hg_Params[2].zzz + c0.yyy;\n    r1.xyz = r1.xyz*hg_Params[2].yyy + hg_Params[2].xxx;\n    r0.xyz = r1.xyz/r0.xyz;\n    output.color0.xyz = pow(r0.xyz, hg_Params[1].zzz);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=67636bc1:21de775e:88d8bf75:0b21046f\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004e8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r2.xyz = r1.xyz*hg_ProgramLocal0.zzz;\n    r0.xyz = pow(r1.xyz, hg_ProgramLocal1.xxx);\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xxx + hg_ProgramLocal0.yyy;\n    r1.xyz = vec3(lessThan(hg_ProgramLocal0.www, r1.xyz));\n    r0.xyz = vec3(-r1.x < 0.00000 ? r0.x : r2.x, -r1.y < 0.00000 ? r0.y : r2.y, -r1.z < 0.00000 ? r0.z : r2.z);\n    r1.xyz = pow(r0.xyz, hg_ProgramLocal1.yyy);\n    r0.xyz = r1.xyz*hg_ProgramLocal2.zzz + c0.yyy;\n    r1.xyz = r1.xyz*hg_ProgramLocal2.yyy + hg_ProgramLocal2.xxx;\n    r0.xyz = r1.xyz/r0.xyz;\n    gl_FragColor.xyz = pow(r0.xyz, hg_ProgramLocal1.zzz);\n    gl_FragColor.w = r0.w;\n}\n//MD5=95633a79:b3a4b859:c6f0cae4:5db01d33\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE30D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE30D70(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE30D68);
}

uint64_t HgcBT2100_PQ_OETF::BindTexture(HgcBT2100_PQ_OETF *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcBT2100_PQ_OETF::Bind(HgcBT2100_PQ_OETF *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_PQ_OETF::RenderTile(HgcBT2100_PQ_OETF *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1 && *(a2 + 2) - *a2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 10);
    v5 = 16 * *(a2 + 22);
    v6 = *(a2 + 2);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * (*(a2 + 2) - *a2);
    do
    {
      v9 = 0;
      do
      {
        v10 = *(v4 + v9);
        v11 = *(this + 51);
        v12 = *(v11 + 1);
        v14 = *(v11 + 2);
        v13 = *(v11 + 3);
        v15 = *(v11 + 4);
        v16 = *(v11 + 5);
        v17 = vmaxq_f32(v10, v13);
        v18 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vdupq_lane_s32(*v12.f32, 0), v13)), v13), v15, v17);
        v19 = vorrq_s8(vandq_s8(v16, v18), v15);
        v20 = *(v11 + 6);
        v21 = *(v11 + 7);
        v22 = *(v11 + 8);
        v23 = *(v11 + 9);
        v24 = vandq_s8(v15, vcgtq_f32(v19, v23));
        v25 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v21, vcgtq_f32(v20, v18))), v22);
        v27 = *(v11 + 10);
        v26 = *(v11 + 11);
        v28 = vsubq_f32(vsubq_f32(v19, v15), vmulq_f32(vmulq_f32(v27, v24), v19));
        v29 = vmulq_f32(v28, v28);
        v31 = *(v11 + 12);
        v30 = *(v11 + 13);
        v33 = *(v11 + 14);
        v32 = *(v11 + 15);
        v35 = *(v11 + 16);
        v34 = *(v11 + 17);
        v36 = vmulq_n_f32(vaddq_f32(vaddq_f32(v25, v24), vmulq_f32(v28, vaddq_f32(v34, vmulq_f32(v28, vaddq_f32(vaddq_f32(v32, vmulq_f32(v35, v28)), vmulq_f32(v29, vaddq_f32(vaddq_f32(v26, vmulq_f32(v31, v28)), vmulq_f32(v29, vaddq_f32(v30, vmulq_f32(v33, v28)))))))))), v12.f32[0]);
        v38 = *(v11 + 18);
        v37 = *(v11 + 19);
        v39 = vmaxq_f32(v36, v38);
        v40 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
        v41 = vsubq_f32(v40, vandq_s8(v15, vcgtq_f32(v40, v39)));
        v42 = vsubq_f32(v39, v41);
        v44 = *(v11 + 20);
        v43 = *(v11 + 21);
        v46 = *(v11 + 22);
        v45 = *(v11 + 23);
        v47 = vaddq_f32(v15, vmulq_f32(v42, vaddq_f32(v45, vmulq_f32(v42, vaddq_f32(vaddq_f32(v43, vmulq_f32(v46, v42)), vmulq_f32(vmulq_f32(v42, v42), vaddq_f32(v37, vmulq_f32(v44, v42))))))));
        v48 = vcvtq_s32_f32(v41);
        v50 = *(v11 + 24);
        v49 = *(v11 + 25);
        v51 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vdupq_lane_s32(*v12.f32, 1), v13)), v13), v15, vbslq_s8(v49, v10, vbslq_s8(vcgtq_f32(vandq_s8(v15, vcgtq_f32(v17, vdupq_laneq_s32(*v11, 3))), v13), vbslq_s8(v49, v10, vaddq_f32(vdupq_lane_s32(*v11, 1), vmulq_n_f32(vbslq_s8(v49, v10, vmulq_f32(v47, vshlq_n_s32(vaddq_s32(v50, v48), 0x17uLL))), COERCE_FLOAT(*v11)))), vmulq_laneq_f32(v17, *v11, 2))));
        v52 = vorrq_s8(vandq_s8(v51, v16), v15);
        v53 = vandq_s8(v15, vcgtq_f32(v52, v23));
        v54 = vsubq_f32(vsubq_f32(v52, v15), vmulq_f32(vmulq_f32(v27, v53), v52));
        v55 = vmulq_f32(v54, v54);
        v56 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v51, 0x17uLL)), vandq_s8(v21, vcgtq_f32(v20, v51))), v22), v53), vmulq_f32(v54, vaddq_f32(v34, vmulq_f32(v54, vaddq_f32(vaddq_f32(v32, vmulq_f32(v35, v54)), vmulq_f32(v55, vaddq_f32(vaddq_f32(v26, vmulq_f32(v31, v54)), vmulq_f32(v55, vaddq_f32(v30, vmulq_f32(v33, v54)))))))))), *v12.f32, 1), v38);
        v57 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
        v58 = vsubq_f32(v57, vandq_s8(v15, vcgtq_f32(v57, v56)));
        v59 = vsubq_f32(v56, v58);
        v60 = vmulq_f32(vaddq_f32(v15, vmulq_f32(v59, vaddq_f32(v45, vmulq_f32(v59, vaddq_f32(vaddq_f32(v43, vmulq_f32(v46, v59)), vmulq_f32(vmulq_f32(v59, v59), vaddq_f32(v37, vmulq_f32(v44, v59)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v58), v50), 0x17uLL));
        v61 = vbslq_s8(v49, v10, vaddq_f32(v15, vmulq_laneq_f32(v60, v14, 2)));
        v62 = vdupq_lane_s32(*v14.f32, 0);
        v63 = vmulq_lane_f32(v60, *v14.f32, 1);
        v64 = *(v11 + 26);
        v65 = *(v11 + 27);
        v66 = vminq_f32(vmaxq_f32(vrecpeq_f32(v61), v64), v65);
        v67 = vminq_f32(vmaxq_f32(vmulq_f32(v66, vrecpsq_f32(v61, v66)), v64), v65);
        v68 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vdupq_laneq_s32(v12, 2), v13)), v13), v15, vbslq_s8(v49, v10, vmulq_f32(vmulq_f32(v67, vrecpsq_f32(v61, v67)), vaddq_f32(v62, v63))));
        v69 = vorrq_s8(vandq_s8(v68, v16), v15);
        v70 = vandq_s8(v15, vcgtq_f32(v69, v23));
        v71 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v68, 0x17uLL)), vandq_s8(v21, vcgtq_f32(v20, v68))), v22);
        v72 = vsubq_f32(vsubq_f32(v69, v15), vmulq_f32(vmulq_f32(v27, v70), v69));
        v73 = vmulq_f32(v72, v72);
        v74 = vmaxq_f32(vmulq_laneq_f32(vaddq_f32(vaddq_f32(v71, v70), vmulq_f32(v72, vaddq_f32(v34, vmulq_f32(v72, vaddq_f32(vaddq_f32(v32, vmulq_f32(v35, v72)), vmulq_f32(v73, vaddq_f32(vaddq_f32(v26, vmulq_f32(v31, v72)), vmulq_f32(v73, vaddq_f32(v30, vmulq_f32(v33, v72)))))))))), v12, 2), v38);
        v75 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
        v76 = vsubq_f32(v75, vandq_s8(v15, vcgtq_f32(v75, v74)));
        v77 = vsubq_f32(v74, v76);
        *(v6 + v9) = vbslq_s8(v49, v10, vmulq_f32(vaddq_f32(v15, vmulq_f32(v77, vaddq_f32(v45, vmulq_f32(v77, vaddq_f32(vaddq_f32(v43, vmulq_f32(v46, v77)), vmulq_f32(vmulq_f32(v77, v77), vaddq_f32(v37, vmulq_f32(v44, v77)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v76), v50), 0x17uLL)));
        v9 += 16;
      }

      while (v8 != v9);
      ++v3;
      v4 += v5;
      v6 += v7;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcBT2100_PQ_OETF::GetDOD(HgcBT2100_PQ_OETF *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_PQ_OETF::GetROI(HgcBT2100_PQ_OETF *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_PQ_OETF::HgcBT2100_PQ_OETF(HgcBT2100_PQ_OETF *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723DDE0;
  operator new();
}

void HgcBT2100_PQ_OETF::~HgcBT2100_PQ_OETF(HgcBT2100_PQ_OETF *this)
{
  *this = &unk_28723DDE0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40502CBA4ALL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_PQ_OETF::~HgcBT2100_PQ_OETF(HGNode *this)
{
  *this = &unk_28723DDE0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40502CBA4ALL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_PQ_OETF::SetParameter(HgcBT2100_PQ_OETF *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBT2100_PQ_OETF::GetParameter(HgcBT2100_PQ_OETF *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBT2100_PQ_OETF_qtApprox::GetProgram(HgcBT2100_PQ_OETF_qtApprox *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ae\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = pow(r0.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = r1.xyz*half3(hg_Params[1].zzz) + c0.yyy;\n    r1.xyz = r1.xyz*half3(hg_Params[1].yyy) + half3(hg_Params[1].xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    output.color0.xyz = pow(float3(r0.xyz), hg_Params[0].yyy);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=2444afad:3db4a253:10709704:a6232534\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000037f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = pow(r0.xyz, hg_Params[0].xxx);\n    r0.xyz = r1.xyz*hg_Params[1].zzz + c0.yyy;\n    r1.xyz = r1.xyz*hg_Params[1].yyy + hg_Params[1].xxx;\n    r0.xyz = r1.xyz/r0.xyz;\n    output.color0.xyz = pow(r0.xyz, hg_Params[0].yyy);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=81f92e6d:ccf1bbeb:6804da4c:060ade07\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000379\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = pow(r0.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = r1.xyz*hg_ProgramLocal1.zzz + c0.yyy;\n    r1.xyz = r1.xyz*hg_ProgramLocal1.yyy + hg_ProgramLocal1.xxx;\n    r0.xyz = r1.xyz/r0.xyz;\n    gl_FragColor.xyz = pow(r0.xyz, hg_ProgramLocal0.yyy);\n    gl_FragColor.w = r0.w;\n}\n//MD5=5ec190f3:0ef06f06:f7c965f7:c1522525\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE31A30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE31A60(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE31A58);
}

uint64_t HgcBT2100_PQ_OETF_qtApprox::BindTexture(HgcBT2100_PQ_OETF_qtApprox *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcBT2100_PQ_OETF_qtApprox::Bind(HgcBT2100_PQ_OETF_qtApprox *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_PQ_OETF_qtApprox::RenderTile(HgcBT2100_PQ_OETF_qtApprox *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(this + 51);
      v13 = *(v6 + v10 - 16);
      v14 = *(v12 + 2);
      v15 = *(v12 + 3);
      v16 = vmaxq_f32(v13, v14);
      v17 = vmaxq_f32(*(v6 + v10), v14);
      v18 = *(v6 + v10);
      v19 = *(v12 + 1);
      v20 = vbslq_s8(v15, v13, v16);
      v21 = *(v12 + 4);
      v22 = vcgtq_f32(vandq_s8(v21, vceqq_f32(vdupq_lane_s32(*v12, 0), *(v12 + 2))), *(v12 + 2));
      v23 = vbslq_s8(v22, v21, v20);
      v24 = vbslq_s8(v22, v21, vbslq_s8(v15, v18, v17));
      v168 = *(v12 + 5);
      v25 = vorrq_s8(vandq_s8(v23, v168), v21);
      v27 = *(v12 + 6);
      v26 = *(v12 + 7);
      v28 = vorrq_s8(vandq_s8(v24, v168), v21);
      v30 = *(v12 + 8);
      v29 = *(v12 + 9);
      v31 = vandq_s8(v21, vcgtq_f32(v25, v29));
      v32 = vandq_s8(v21, vcgtq_f32(v28, v29));
      v33 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v27, v23))), v30), v31);
      v35 = *(v12 + 10);
      v34 = *(v12 + 11);
      v36 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v27, v24))), v30), v32);
      v37 = vsubq_f32(vsubq_f32(v25, v21), vmulq_f32(vmulq_f32(v35, v31), v25));
      v38 = vsubq_f32(vsubq_f32(v28, v21), vmulq_f32(vmulq_f32(v35, v32), v28));
      v39 = vmulq_f32(v37, v37);
      v40 = vmulq_f32(v38, v38);
      v42 = *(v12 + 12);
      v41 = *(v12 + 13);
      v44 = *(v12 + 14);
      v43 = *(v12 + 15);
      v46 = *(v12 + 16);
      v45 = *(v12 + 17);
      v47 = vaddq_f32(v36, vmulq_f32(v38, vaddq_f32(v45, vmulq_f32(v38, vaddq_f32(vaddq_f32(v43, vmulq_f32(v38, v46)), vmulq_f32(v40, vaddq_f32(vaddq_f32(v34, vmulq_f32(v42, v38)), vmulq_f32(v40, vaddq_f32(v41, vmulq_f32(v44, v38))))))))));
      v48 = *(v12 + 18);
      v49 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v33, vmulq_f32(v37, vaddq_f32(v45, vmulq_f32(v37, vaddq_f32(vaddq_f32(v43, vmulq_f32(v37, v46)), vmulq_f32(v39, vaddq_f32(vaddq_f32(v34, vmulq_f32(v42, v37)), vmulq_f32(v39, vaddq_f32(v41, vmulq_f32(v44, v37)))))))))), COERCE_FLOAT(*v12)), v48);
      v50 = vmaxq_f32(vmulq_n_f32(v47, COERCE_FLOAT(*v12)), v48);
      v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
      v52 = vcvtq_f32_s32(vcvtq_s32_f32(v50));
      v53 = vsubq_f32(v51, vandq_s8(v21, vcgtq_f32(v51, v49)));
      v54 = vsubq_f32(v52, vandq_s8(v21, vcgtq_f32(v52, v50)));
      v55 = vsubq_f32(v49, v53);
      v56 = vsubq_f32(v50, v54);
      v58 = *(v12 + 20);
      v57 = *(v12 + 21);
      v167 = *(v12 + 19);
      v60 = *(v12 + 22);
      v59 = *(v12 + 23);
      v61 = vmulq_f32(v56, vaddq_f32(v59, vmulq_f32(v56, vaddq_f32(vaddq_f32(v57, vmulq_f32(v60, v56)), vmulq_f32(vmulq_f32(v56, v56), vaddq_f32(v167, vmulq_f32(v58, v56)))))));
      v62 = vcvtq_s32_f32(v53);
      v63 = *(v12 + 24);
      v64 = *(v12 + 25);
      v65 = vmulq_f32(vaddq_f32(v21, vmulq_f32(v55, vaddq_f32(v59, vmulq_f32(v55, vaddq_f32(vaddq_f32(v57, vmulq_f32(v55, v60)), vmulq_f32(vmulq_f32(v55, v55), vaddq_f32(v167, vmulq_f32(v58, v55)))))))), vshlq_n_s32(vaddq_s32(v63, v62), 0x17uLL));
      v66 = vmulq_f32(vaddq_f32(v21, v61), vshlq_n_s32(vaddq_s32(v63, vcvtq_s32_f32(v54)), 0x17uLL));
      v67 = *(v6 + v10 - 16);
      v68 = vbslq_s8(v15, v67, vaddq_f32(v21, vmulq_laneq_f32(v65, v19, 2)));
      v69 = *(v12 + 26);
      v70 = vminq_f32(vmaxq_f32(vrecpeq_f32(v68), v64), v69);
      v71 = vmulq_f32(v70, vrecpsq_f32(v68, v70));
      v72 = vbslq_s8(v15, v18, vaddq_f32(v21, vmulq_laneq_f32(v66, v19, 2)));
      v73 = vminq_f32(vmaxq_f32(vrecpeq_f32(v72), v64), v69);
      v74 = vmaxq_f32(vmulq_f32(v73, vrecpsq_f32(v72, v73)), v64);
      v75 = vmulq_lane_f32(v65, *v19.f32, 1);
      v76 = vmulq_lane_f32(v66, *v19.f32, 1);
      v77 = vdupq_lane_s32(*v19.f32, 0);
      v78 = vminq_f32(vmaxq_f32(v71, v64), v69);
      v79 = vminq_f32(v74, v69);
      v80 = vmulq_f32(vaddq_f32(v77, v76), vmulq_f32(v79, vrecpsq_f32(v72, v79)));
      v81 = vcgtq_f32(vandq_s8(v21, vceqq_f32(vdupq_lane_s32(*v12, 1), *(v12 + 2))), *(v12 + 2));
      v82 = vbslq_s8(v15, v67, vmulq_f32(vaddq_f32(v77, v75), vmulq_f32(v78, vrecpsq_f32(v68, v78))));
      v83 = v15;
      v84 = vbslq_s8(v81, v21, v82);
      v85 = vbslq_s8(v81, v21, vbslq_s8(v15, *(v6 + v10), v80));
      v86 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v84, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v27, v84)));
      v87 = vorrq_s8(vandq_s8(v84, v168), v21);
      v88 = vorrq_s8(vandq_s8(v85, v168), v21);
      v89 = vandq_s8(v21, vcgtq_f32(v87, v29));
      v90 = vandq_s8(v21, vcgtq_f32(v88, v29));
      v91 = vaddq_f32(vsubq_f32(v86, v30), v89);
      v92 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v85, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v27, v85))), v30), v90);
      v93 = vsubq_f32(vsubq_f32(v87, v21), vmulq_f32(vmulq_f32(v35, v89), v87));
      v94 = vsubq_f32(vsubq_f32(v88, v21), vmulq_f32(vmulq_f32(v35, v90), v88));
      v95 = vaddq_f32(v34, vmulq_f32(v42, v94));
      v96 = vmulq_f32(v93, v93);
      v97 = vaddq_f32(vaddq_f32(v34, vmulq_f32(v42, v93)), vmulq_f32(v96, vaddq_f32(v41, vmulq_f32(v44, v93))));
      v98 = vmulq_f32(v94, v94);
      v99 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v91, vmulq_f32(v93, vaddq_f32(v45, vmulq_f32(v93, vaddq_f32(vaddq_f32(v43, vmulq_f32(v46, v93)), vmulq_f32(v96, v97)))))), *v12, 1), v48);
      v100 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v92, vmulq_f32(v94, vaddq_f32(v45, vmulq_f32(v94, vaddq_f32(vaddq_f32(v43, vmulq_f32(v46, v94)), vmulq_f32(v98, vaddq_f32(v95, vmulq_f32(v98, vaddq_f32(v41, vmulq_f32(v44, v94)))))))))), *v12, 1), v48);
      v101 = vcvtq_f32_s32(vcvtq_s32_f32(v99));
      v102 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
      v103 = vsubq_f32(v101, vandq_s8(v21, vcgtq_f32(v101, v99)));
      v104 = vsubq_f32(v102, vandq_s8(v21, vcgtq_f32(v102, v100)));
      v105 = vsubq_f32(v99, v103);
      v106 = vsubq_f32(v100, v104);
      v107 = vbslq_s8(v83, *(v6 + v10), vmulq_f32(vaddq_f32(v21, vmulq_f32(v106, vaddq_f32(v59, vmulq_f32(v106, vaddq_f32(vaddq_f32(v57, vmulq_f32(v60, v106)), vmulq_f32(vmulq_f32(v106, v106), vaddq_f32(v167, vmulq_f32(v58, v106)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v104), v63), 0x17uLL)));
      v108 = (v5 + v10);
      v108[-1] = vbslq_s8(v83, v67, vmulq_f32(vaddq_f32(v21, vmulq_f32(v105, vaddq_f32(v59, vmulq_f32(v105, vaddq_f32(vaddq_f32(v57, vmulq_f32(v60, v105)), vmulq_f32(vmulq_f32(v105, v105), vaddq_f32(v167, vmulq_f32(v58, v105)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v103), v63), 0x17uLL)));
      *v108 = v107;
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v109 = 16 * v9;
    v110 = *(v6 + v109);
    v111 = *(this + 51);
    v113 = *(v111 + 2);
    v112 = *(v111 + 3);
    v114 = *(v111 + 1);
    v115 = *(v111 + 4);
    v116 = *(v111 + 5);
    v117 = vbslq_s8(vcgtq_f32(vandq_s8(v115, vceqq_f32(vdupq_lane_s32(*v111, 0), v113)), v113), v115, vbslq_s8(v112, v110, vmaxq_f32(v110, v113)));
    v118 = vorrq_s8(vandq_s8(v117, v116), v115);
    v119 = *(v111 + 6);
    v120 = *(v111 + 7);
    v121 = *(v111 + 8);
    v122 = *(v111 + 9);
    v123 = vandq_s8(v115, vcgtq_f32(v118, v122));
    v124 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v117, 0x17uLL)), vandq_s8(v120, vcgtq_f32(v119, v117))), v121), v123);
    v126 = *(v111 + 10);
    v125 = *(v111 + 11);
    v127 = vsubq_f32(vsubq_f32(v118, v115), vmulq_f32(vmulq_f32(v126, v123), v118));
    v128 = vmulq_f32(v127, v127);
    v130 = *(v111 + 12);
    v129 = *(v111 + 13);
    v132 = *(v111 + 14);
    v131 = *(v111 + 15);
    v134 = *(v111 + 16);
    v133 = *(v111 + 17);
    v135 = vmulq_n_f32(vaddq_f32(v124, vmulq_f32(v127, vaddq_f32(v133, vmulq_f32(v127, vaddq_f32(vaddq_f32(v131, vmulq_f32(v127, v134)), vmulq_f32(v128, vaddq_f32(vaddq_f32(v125, vmulq_f32(v130, v127)), vmulq_f32(v128, vaddq_f32(v129, vmulq_f32(v132, v127)))))))))), COERCE_FLOAT(*v111));
    v137 = *(v111 + 18);
    v136 = *(v111 + 19);
    v138 = vmaxq_f32(v135, v137);
    v139 = vcvtq_f32_s32(vcvtq_s32_f32(v138));
    v140 = vsubq_f32(v139, vandq_s8(v115, vcgtq_f32(v139, v138)));
    v141 = vsubq_f32(v138, v140);
    v143 = *(v111 + 20);
    v142 = *(v111 + 21);
    v144 = *(v111 + 22);
    v145 = *(v111 + 23);
    v146 = vcvtq_s32_f32(v140);
    v147 = *(v111 + 24);
    v148 = *(v111 + 25);
    v149 = vmulq_f32(vaddq_f32(v115, vmulq_f32(v141, vaddq_f32(v145, vmulq_f32(v141, vaddq_f32(vaddq_f32(v142, vmulq_f32(v144, v141)), vmulq_f32(vmulq_f32(v141, v141), vaddq_f32(v136, vmulq_f32(v143, v141)))))))), vshlq_n_s32(vaddq_s32(v147, v146), 0x17uLL));
    v150 = vbslq_s8(v112, v110, vaddq_f32(v115, vmulq_laneq_f32(v149, v114, 2)));
    v151 = vaddq_f32(vdupq_lane_s32(*v114.f32, 0), vmulq_lane_f32(v149, *v114.f32, 1));
    v152 = *(v111 + 26);
    v153 = vminq_f32(vmaxq_f32(vrecpeq_f32(v150), v148), v152);
    v154 = vminq_f32(vmaxq_f32(vmulq_f32(v153, vrecpsq_f32(v150, v153)), v148), v152);
    v155 = vbslq_s8(vcgtq_f32(vandq_s8(v115, vceqq_f32(vdupq_lane_s32(*v111, 1), v113)), v113), v115, vbslq_s8(v112, v110, vmulq_f32(v151, vmulq_f32(v154, vrecpsq_f32(v150, v154)))));
    v156 = vorrq_s8(vandq_s8(v155, v116), v115);
    v157 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v155, 0x17uLL)), vandq_s8(v120, vcgtq_f32(v119, v155))), v121);
    v158 = vandq_s8(v115, vcgtq_f32(v156, v122));
    v159 = vaddq_f32(v157, v158);
    v160 = vsubq_f32(vsubq_f32(v156, v115), vmulq_f32(vmulq_f32(v126, v158), v156));
    v161 = vmulq_f32(v160, v160);
    v162 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v159, vmulq_f32(v160, vaddq_f32(v133, vmulq_f32(v160, vaddq_f32(vaddq_f32(v131, vmulq_f32(v134, v160)), vmulq_f32(v161, vaddq_f32(vaddq_f32(v125, vmulq_f32(v130, v160)), vmulq_f32(v161, vaddq_f32(v129, vmulq_f32(v132, v160)))))))))), *v111, 1), v137);
    v163 = vcvtq_f32_s32(vcvtq_s32_f32(v162));
    v164 = vsubq_f32(v163, vandq_s8(v115, vcgtq_f32(v163, v162)));
    v165 = vsubq_f32(v162, v164);
    *(v5 + v109) = vbslq_s8(v112, v110, vmulq_f32(vaddq_f32(v115, vmulq_f32(v165, vaddq_f32(v145, vmulq_f32(v165, vaddq_f32(vaddq_f32(v142, vmulq_f32(v144, v165)), vmulq_f32(vmulq_f32(v165, v165), vaddq_f32(v136, vmulq_f32(v143, v165)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v164), v147), 0x17uLL)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2100_PQ_OETF_qtApprox::GetDOD(HgcBT2100_PQ_OETF_qtApprox *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_PQ_OETF_qtApprox::GetROI(HgcBT2100_PQ_OETF_qtApprox *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_PQ_OETF_qtApprox::HgcBT2100_PQ_OETF_qtApprox(HgcBT2100_PQ_OETF_qtApprox *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723E048;
  operator new();
}

void HgcBT2100_PQ_OETF_qtApprox::~HgcBT2100_PQ_OETF_qtApprox(HgcBT2100_PQ_OETF_qtApprox *this)
{
  *this = &unk_28723E048;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4003455651);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_PQ_OETF_qtApprox::~HgcBT2100_PQ_OETF_qtApprox(HGNode *this)
{
  *this = &unk_28723E048;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4003455651);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_PQ_OETF_qtApprox::SetParameter(HgcBT2100_PQ_OETF_qtApprox *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBT2100_PQ_OETF_qtApprox::GetParameter(HgcBT2100_PQ_OETF_qtApprox *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBT2100_PQ_InverseOETF::GetProgram(HgcBT2100_PQ_InverseOETF *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000508\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = clamp(r0.xyz, 0.00000h, 1.00000h);\n    r0.xyz = pow(r0.xyz, half3(hg_Params[1].yyy));\n    r1.xyz = r0.xyz - half3(hg_Params[0].xxx);\n    r0.xyz = r0.xyz*half3(hg_Params[0].zzz) + half3(hg_Params[0].yyy);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    r1.xyz = pow(r0.xyz, half3(hg_Params[1].xxx));\n    r0.xyz = r1.xyz*half3(hg_Params[2].xxx) + half3(hg_Params[2].yyy);\n    r2.xyz = r1.xyz*half3(hg_Params[2].zzz);\n    r0.xyz = pow(r0.xyz, half3(hg_Params[1].zzz));\n    r1.xyz = half3(half3(hg_Params[2].www) < r1.xyz);\n    output.color0.xyz = select(float3(r2.xyz), float3(r0.xyz), -float3(r1.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=1b378797:123e3885:5939c817:bd9b6770\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004a0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = clamp(r0.xyz, 0.00000f, 1.00000f);\n    r0.xyz = pow(r0.xyz, hg_Params[1].yyy);\n    r1.xyz = r0.xyz - hg_Params[0].xxx;\n    r0.xyz = r0.xyz*hg_Params[0].zzz + hg_Params[0].yyy;\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    r1.xyz = pow(r0.xyz, hg_Params[1].xxx);\n    r0.xyz = r1.xyz*hg_Params[2].xxx + hg_Params[2].yyy;\n    r2.xyz = r1.xyz*hg_Params[2].zzz;\n    r0.xyz = pow(r0.xyz, hg_Params[1].zzz);\n    r1.xyz = float3(hg_Params[2].www < r1.xyz);\n    output.color0.xyz = select(r2.xyz, r0.xyz, -r1.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=a07f4f72:4373c56a:f9551245:ece12833\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000051b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = clamp(r0.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = pow(r0.xyz, hg_ProgramLocal1.yyy);\n    r1.xyz = r0.xyz - hg_ProgramLocal0.xxx;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.zzz + hg_ProgramLocal0.yyy;\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    r1.xyz = pow(r0.xyz, hg_ProgramLocal1.xxx);\n    r0.xyz = r1.xyz*hg_ProgramLocal2.xxx + hg_ProgramLocal2.yyy;\n    r2.xyz = r1.xyz*hg_ProgramLocal2.zzz;\n    r0.xyz = pow(r0.xyz, hg_ProgramLocal1.zzz);\n    r1.xyz = vec3(lessThan(hg_ProgramLocal2.www, r1.xyz));\n    gl_FragColor.xyz = vec3(-r1.x < 0.00000 ? r0.x : r2.x, -r1.y < 0.00000 ? r0.y : r2.y, -r1.z < 0.00000 ? r0.z : r2.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=4c6efd1c:68a5dad6:d015ee40:c1eec704\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE32AC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE32AF4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE32AECLL);
}

uint64_t HgcBT2100_PQ_InverseOETF::BindTexture(HgcBT2100_PQ_InverseOETF *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcBT2100_PQ_InverseOETF::Bind(HgcBT2100_PQ_InverseOETF *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_PQ_InverseOETF::RenderTile(HgcBT2100_PQ_InverseOETF *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1 && *(a2 + 2) - *a2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 10);
    v5 = 16 * *(a2 + 22);
    v6 = *(a2 + 2);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * (*(a2 + 2) - *a2);
    do
    {
      v9 = 0;
      do
      {
        v10 = *(this + 51);
        v11 = *(v10 + 16);
        v13 = *(v10 + 32);
        v12 = *(v10 + 48);
        v14 = *(v10 + 64);
        v15 = *(v10 + 80);
        v16 = vminq_f32(vmaxq_f32(*(v4 + v9), v12), v14);
        v17 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(vdupq_lane_s32(*v11.f32, 1), v12)), v12), v14, v16);
        v19 = *(v10 + 96);
        v18 = *(v10 + 112);
        v20 = vorrq_s8(vandq_s8(v15, v17), v14);
        v21 = *(v10 + 128);
        v22 = *(v10 + 144);
        v23 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v18, vcgtq_f32(v19, v17)));
        v24 = vandq_s8(v14, vcgtq_f32(v20, v22));
        v26 = *(v10 + 160);
        v25 = *(v10 + 176);
        v27 = vsubq_f32(vsubq_f32(v20, v14), vmulq_f32(vmulq_f32(v26, v24), v20));
        v29 = *(v10 + 192);
        v28 = *(v10 + 208);
        v30 = vmulq_f32(v27, v27);
        v32 = *(v10 + 224);
        v31 = *(v10 + 240);
        v34 = *(v10 + 256);
        v33 = *(v10 + 272);
        v35 = vmulq_lane_f32(vaddq_f32(vaddq_f32(vsubq_f32(v23, v21), v24), vmulq_f32(v27, vaddq_f32(v33, vmulq_f32(v27, vaddq_f32(vaddq_f32(v31, vmulq_f32(v34, v27)), vmulq_f32(v30, vaddq_f32(vaddq_f32(v25, vmulq_f32(v29, v27)), vmulq_f32(v30, vaddq_f32(v28, vmulq_f32(v32, v27)))))))))), *v11.f32, 1);
        v37 = *(v10 + 288);
        v36 = *(v10 + 304);
        v38 = vmaxq_f32(v35, v37);
        v39 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
        v40 = vsubq_f32(v39, vandq_s8(v14, vcgtq_f32(v39, v38)));
        v41 = vsubq_f32(v38, v40);
        v42 = *(v10 + 320);
        v43 = *(v10 + 336);
        v44 = *(v10 + 352);
        v45 = *(v10 + 368);
        v46 = vmulq_f32(v41, vaddq_f32(v45, vmulq_f32(v41, vaddq_f32(vaddq_f32(v43, vmulq_f32(v44, v41)), vmulq_f32(vmulq_f32(v41, v41), vaddq_f32(v36, vmulq_f32(v42, v41)))))));
        v47 = vcvtq_s32_f32(v40);
        v48 = *(v10 + 384);
        v49 = *(v10 + 400);
        v50 = vbslq_s8(v49, v16, vmulq_f32(vaddq_f32(v14, v46), vshlq_n_s32(vaddq_s32(v48, v47), 0x17uLL)));
        v51 = vbslq_s8(v49, v16, vaddq_f32(vdupq_lane_s32(*v10, 1), vmulq_laneq_f32(v50, *v10, 2)));
        v52 = *(v10 + 416);
        v53 = *(v10 + 432);
        v54 = vminq_f32(vmaxq_f32(vrecpeq_f32(v51), v52), v53);
        v55 = vminq_f32(vmaxq_f32(vmulq_f32(v54, vrecpsq_f32(v51, v54)), v52), v53);
        v56 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(vdupq_lane_s32(*v11.f32, 0), v12)), v12), v14, vbslq_s8(v49, v16, vmulq_f32(vmaxq_f32(vsubq_f32(v50, vdupq_lane_s32(*v10, 0)), v12), vmulq_f32(v55, vrecpsq_f32(v51, v55)))));
        v57 = vorrq_s8(vandq_s8(v56, v15), v14);
        v58 = vandq_s8(v14, vcgtq_f32(v57, v22));
        v59 = vsubq_f32(vsubq_f32(v57, v14), vmulq_f32(vmulq_f32(v26, v58), v57));
        v60 = vmulq_f32(v59, v59);
        v61 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v56, 0x17uLL)), vandq_s8(v18, vcgtq_f32(v19, v56))), v21), v58), vmulq_f32(v59, vaddq_f32(v33, vmulq_f32(v59, vaddq_f32(vaddq_f32(v31, vmulq_f32(v34, v59)), vmulq_f32(v60, vaddq_f32(vaddq_f32(v25, vmulq_f32(v29, v59)), vmulq_f32(v60, vaddq_f32(v28, vmulq_f32(v32, v59)))))))))), v11.f32[0]), v37);
        v62 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
        v63 = vsubq_f32(v62, vandq_s8(v14, vcgtq_f32(v62, v61)));
        v64 = vsubq_f32(v61, v63);
        v65 = vmulq_f32(vaddq_f32(v14, vmulq_f32(v64, vaddq_f32(v45, vmulq_f32(v64, vaddq_f32(vaddq_f32(v43, vmulq_f32(v44, v64)), vmulq_f32(vmulq_f32(v64, v64), vaddq_f32(v36, vmulq_f32(v42, v64)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v63), v48), 0x17uLL));
        v66 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(vdupq_laneq_s32(v11, 2), v12)), v12), v14, vbslq_s8(v49, v16, vaddq_f32(vdupq_lane_s32(*v13.f32, 1), vmulq_n_f32(v65, v13.f32[0]))));
        v67 = vorrq_s8(vandq_s8(v66, v15), v14);
        v68 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v66, 0x17uLL)), vandq_s8(v18, vcgtq_f32(v19, v66))), v21);
        v69 = vandq_s8(v14, vcgtq_f32(v67, v22));
        v70 = vsubq_f32(vsubq_f32(v67, v14), vmulq_f32(vmulq_f32(v26, v69), v67));
        v71 = vmulq_f32(v70, v70);
        v72 = vmaxq_f32(vmulq_laneq_f32(vaddq_f32(vaddq_f32(v68, v69), vmulq_f32(v70, vaddq_f32(v33, vmulq_f32(v70, vaddq_f32(vaddq_f32(v31, vmulq_f32(v34, v70)), vmulq_f32(v71, vaddq_f32(vaddq_f32(v25, vmulq_f32(v29, v70)), vmulq_f32(v71, vaddq_f32(v28, vmulq_f32(v32, v70)))))))))), v11, 2), v37);
        v73 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
        v74 = vsubq_f32(v73, vandq_s8(v14, vcgtq_f32(v73, v72)));
        v75 = vsubq_f32(v72, v74);
        *(v6 + v9) = vbslq_s8(v49, v16, vbslq_s8(vcgtq_f32(vandq_s8(v14, vcgtq_f32(v65, vdupq_laneq_s32(v13, 3))), v12), vbslq_s8(v49, v16, vmulq_f32(vaddq_f32(v14, vmulq_f32(v75, vaddq_f32(v45, vmulq_f32(v75, vaddq_f32(vaddq_f32(v43, vmulq_f32(v44, v75)), vmulq_f32(vmulq_f32(v75, v75), vaddq_f32(v36, vmulq_f32(v42, v75)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v74), v48), 0x17uLL))), vmulq_laneq_f32(v65, v13, 2)));
        v9 += 16;
      }

      while (v8 != v9);
      ++v3;
      v4 += v5;
      v6 += v7;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcBT2100_PQ_InverseOETF::GetDOD(HgcBT2100_PQ_InverseOETF *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_PQ_InverseOETF::GetROI(HgcBT2100_PQ_InverseOETF *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_PQ_InverseOETF::HgcBT2100_PQ_InverseOETF(HgcBT2100_PQ_InverseOETF *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723E2B0;
  operator new();
}

void HgcBT2100_PQ_InverseOETF::~HgcBT2100_PQ_InverseOETF(HgcBT2100_PQ_InverseOETF *this)
{
  *this = &unk_28723E2B0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40502CBA4ALL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_PQ_InverseOETF::~HgcBT2100_PQ_InverseOETF(HGNode *this)
{
  *this = &unk_28723E2B0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40502CBA4ALL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_PQ_InverseOETF::SetParameter(HgcBT2100_PQ_InverseOETF *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBT2100_PQ_InverseOETF::GetParameter(HgcBT2100_PQ_InverseOETF *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBT2100_PQ_InverseOETF_qtApprox::GetProgram(HgcBT2100_PQ_InverseOETF_qtApprox *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000404\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = clamp(r0.xyz, 0.00000h, 1.00000h);\n    r0.xyz = pow(r0.xyz, half3(hg_Params[1].yyy));\n    r1.xyz = r0.xyz - half3(hg_Params[0].xxx);\n    r0.xyz = r0.xyz*half3(hg_Params[0].zzz) + half3(hg_Params[0].yyy);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    r0.xyz = pow(r0.xyz, half3(hg_Params[1].xxx));\n    output.color0.xyz = float3(r0.xyz)*hg_Params[1].zzz;\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=c51a250f:d66e2ef0:88aa222a:e56ce852\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ce\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = clamp(r0.xyz, 0.00000f, 1.00000f);\n    r0.xyz = pow(r0.xyz, hg_Params[1].yyy);\n    r1.xyz = r0.xyz - hg_Params[0].xxx;\n    r0.xyz = r0.xyz*hg_Params[0].zzz + hg_Params[0].yyy;\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    r0.xyz = pow(r0.xyz, hg_Params[1].xxx);\n    output.color0.xyz = r0.xyz*hg_Params[1].zzz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=f22f319c:ea07886b:9fc4354b:118627e0\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = clamp(r0.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = pow(r0.xyz, hg_ProgramLocal1.yyy);\n    r1.xyz = r0.xyz - hg_ProgramLocal0.xxx;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.zzz + hg_ProgramLocal0.yyy;\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r0.xyz = r1.xyz/r0.xyz;\n    r0.xyz = pow(r0.xyz, hg_ProgramLocal1.xxx);\n    gl_FragColor.xyz = r0.xyz*hg_ProgramLocal1.zzz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=5e7cd0eb:313d5ea6:0c763ff4:65122675\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE337C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE337F8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE337F0);
}

uint64_t HgcBT2100_PQ_InverseOETF_qtApprox::BindTexture(HgcBT2100_PQ_InverseOETF_qtApprox *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcBT2100_PQ_InverseOETF_qtApprox::Bind(HgcBT2100_PQ_InverseOETF_qtApprox *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_PQ_InverseOETF_qtApprox::RenderTile(HgcBT2100_PQ_InverseOETF_qtApprox *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(this + 51);
      v14 = *(v12 + 32);
      v13 = *(v12 + 48);
      v15 = vminq_f32(vmaxq_f32(*(v6 + v10 - 16), v14), v13);
      v16 = *(v12 + 16);
      v17 = vminq_f32(vmaxq_f32(*(v6 + v10), v14), v13);
      v18 = vcgtq_f32(vandq_s8(v13, vceqq_f32(vdupq_lane_s32(*&v16, 1), v14)), v14);
      v19 = vbslq_s8(v18, v13, v15);
      v20 = vbslq_s8(v18, v13, v17);
      v21 = v17;
      v22 = *(v12 + 80);
      v166 = *(v12 + 64);
      v23 = vorrq_s8(vandq_s8(v166, v19), v13);
      v24 = vorrq_s8(vandq_s8(v166, v20), v13);
      v26 = *(v12 + 96);
      v25 = *(v12 + 112);
      v27 = *(v12 + 128);
      v28 = vandq_s8(v13, vcgtq_f32(v23, v27));
      v29 = vandq_s8(v13, vcgtq_f32(v24, v27));
      v30 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v22, v19))), v25), v28);
      v164 = *(v12 + 144);
      v165 = v25;
      v31 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v22, v20))), v25), v29);
      v32 = vmulq_f32(vmulq_f32(v164, v29), v24);
      v33 = vsubq_f32(vsubq_f32(v23, v13), vmulq_f32(vmulq_f32(v164, v28), v23));
      v34 = vsubq_f32(vsubq_f32(v24, v13), v32);
      v35 = vmulq_f32(v33, v33);
      v36 = vmulq_f32(v34, v34);
      v37 = *(v12 + 160);
      v38 = *(v12 + 176);
      v39 = *(v12 + 192);
      v40 = *(v12 + 208);
      v41 = *(v12 + 224);
      v42 = *(v12 + 240);
      v43 = vaddq_f32(vaddq_f32(v41, vmulq_f32(v42, v34)), vmulq_f32(v36, vaddq_f32(vaddq_f32(v37, vmulq_f32(v38, v34)), vmulq_f32(v36, vaddq_f32(v39, vmulq_f32(v40, v34))))));
      v44 = vmulq_f32(v33, vaddq_f32(vaddq_f32(v41, vmulq_f32(v42, v33)), vmulq_f32(v35, vaddq_f32(vaddq_f32(v37, vmulq_f32(v38, v33)), vmulq_f32(v35, vaddq_f32(v39, vmulq_f32(v40, v33)))))));
      v46 = *(v12 + 256);
      v45 = *(v12 + 272);
      v47 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v30, vmulq_f32(v33, vaddq_f32(v46, v44))), *&v16, 1), v45);
      v48 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v31, vmulq_f32(v34, vaddq_f32(v46, vmulq_f32(v34, v43)))), *&v16, 1), v45);
      v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vsubq_f32(v49, vandq_s8(v13, vcgtq_f32(v49, v47)));
      v52 = vsubq_f32(v50, vandq_s8(v13, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v47, v51);
      v54 = vsubq_f32(v48, v52);
      v55 = *(v12 + 288);
      v56 = *(v12 + 304);
      v58 = *(v12 + 320);
      v57 = *(v12 + 336);
      v60 = *(v12 + 352);
      v59 = *(v12 + 368);
      v61 = vmulq_f32(vaddq_f32(v13, vmulq_f32(v53, vaddq_f32(v60, vmulq_f32(v53, vaddq_f32(vaddq_f32(v58, vmulq_f32(v53, v57)), vmulq_f32(vmulq_f32(v53, v53), vaddq_f32(v55, vmulq_f32(v56, v53)))))))), vshlq_n_s32(vaddq_s32(v59, vcvtq_s32_f32(v51)), 0x17uLL));
      v62 = vmulq_f32(vaddq_f32(v13, vmulq_f32(v54, vaddq_f32(v60, vmulq_f32(v54, vaddq_f32(vaddq_f32(v58, vmulq_f32(v57, v54)), vmulq_f32(vmulq_f32(v54, v54), vaddq_f32(v55, vmulq_f32(v56, v54)))))))), vshlq_n_s32(vaddq_s32(v59, vcvtq_s32_f32(v52)), 0x17uLL));
      v63 = vdupq_lane_s32(*v12, 1);
      v65 = *(v12 + 384);
      v64 = *(v12 + 400);
      v66 = v15;
      v67 = vbslq_s8(v65, v15, v61);
      v68 = vbslq_s8(v65, v21, v62);
      v69 = vaddq_f32(v63, vmulq_laneq_f32(v68, *v12, 2));
      v70 = vbslq_s8(v65, v15, vaddq_f32(v63, vmulq_laneq_f32(v67, *v12, 2)));
      v71 = *(v12 + 416);
      v72 = vminq_f32(vmaxq_f32(vrecpeq_f32(v70), v64), v71);
      v73 = vmulq_f32(v72, vrecpsq_f32(v70, v72));
      v74 = vbslq_s8(v65, v21, v69);
      v75 = vminq_f32(vmaxq_f32(vrecpeq_f32(v74), v64), v71);
      v76 = vdupq_lane_s32(*v12, 0);
      v77 = vminq_f32(vmaxq_f32(v73, v64), v71);
      v78 = vminq_f32(vmaxq_f32(vmulq_f32(v75, vrecpsq_f32(v74, v75)), v64), v71);
      v79 = vmulq_f32(v78, vrecpsq_f32(v74, v78));
      v80 = vmulq_f32(vmaxq_f32(vsubq_f32(v67, v76), v14), vmulq_f32(v77, vrecpsq_f32(v70, v77)));
      v81 = vmulq_f32(vmaxq_f32(vsubq_f32(v68, v76), v14), v79);
      v82 = *(v12 + 16);
      v83 = vcgtq_f32(vandq_s8(v13, vceqq_f32(vdupq_lane_s32(*v82.f32, 0), v14)), v14);
      v84 = v66;
      v85 = v21;
      v86 = vbslq_s8(v83, v13, vbslq_s8(v65, v66, v80));
      v87 = vbslq_s8(v83, v13, vbslq_s8(v65, v21, v81));
      v88 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v86, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v22, v86)));
      v89 = vorrq_s8(vandq_s8(v86, v166), v13);
      v90 = vorrq_s8(vandq_s8(v87, v166), v13);
      v91 = vandq_s8(v13, vcgtq_f32(v89, v27));
      v92 = vandq_s8(v13, vcgtq_f32(v90, v27));
      v93 = vsubq_f32(vsubq_f32(v89, v13), vmulq_f32(vmulq_f32(v164, v91), v89));
      v94 = vsubq_f32(vsubq_f32(v90, v13), vmulq_f32(vmulq_f32(v164, v92), v90));
      v95 = vmulq_f32(v93, v93);
      v96 = vmulq_f32(v94, v94);
      v97 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(v88, v165), v91), vmulq_f32(v93, vaddq_f32(v46, vmulq_f32(v93, vaddq_f32(vaddq_f32(v41, vmulq_f32(v42, v93)), vmulq_f32(v95, vaddq_f32(vaddq_f32(v37, vmulq_f32(v38, v93)), vmulq_f32(v95, vaddq_f32(v39, vmulq_f32(v40, v93)))))))))), v82.f32[0]), v45);
      v98 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v87, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v22, v87))), v165), v92), vmulq_f32(v94, vaddq_f32(v46, vmulq_f32(v94, vaddq_f32(vaddq_f32(v41, vmulq_f32(v42, v94)), vmulq_f32(v96, vaddq_f32(vaddq_f32(v37, vmulq_f32(v38, v94)), vmulq_f32(v96, vaddq_f32(v39, vmulq_f32(v40, v94)))))))))), v82.f32[0]), v45);
      v99 = vcvtq_f32_s32(vcvtq_s32_f32(v97));
      v100 = vcvtq_f32_s32(vcvtq_s32_f32(v98));
      v101 = vsubq_f32(v99, vandq_s8(v13, vcgtq_f32(v99, v97)));
      v102 = vsubq_f32(v100, vandq_s8(v13, vcgtq_f32(v100, v98)));
      v103 = vsubq_f32(v97, v101);
      v104 = vsubq_f32(v98, v102);
      v105 = (v5 + v10);
      v105[-1] = vbslq_s8(v65, v84, vmulq_laneq_f32(vbslq_s8(v65, v84, vmulq_f32(vaddq_f32(v13, vmulq_f32(v103, vaddq_f32(v60, vmulq_f32(v103, vaddq_f32(vaddq_f32(v58, vmulq_f32(v57, v103)), vmulq_f32(vmulq_f32(v103, v103), vaddq_f32(v55, vmulq_f32(v56, v103)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v101), v59), 0x17uLL))), v82, 2));
      *v105 = vbslq_s8(v65, v85, vmulq_laneq_f32(vbslq_s8(v65, v85, vmulq_f32(vaddq_f32(v13, vmulq_f32(v104, vaddq_f32(v60, vmulq_f32(v104, vaddq_f32(vaddq_f32(v58, vmulq_f32(v57, v104)), vmulq_f32(vmulq_f32(v104, v104), vaddq_f32(v55, vmulq_f32(v56, v104)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v102), v59), 0x17uLL))), v82, 2));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v106 = 16 * v9;
    v107 = *(this + 51);
    v109 = *(v107 + 32);
    v108 = *(v107 + 48);
    v110 = vminq_f32(vmaxq_f32(*(v6 + v106), v109), v108);
    v111 = *(v107 + 16);
    v112 = vbslq_s8(vcgtq_f32(vandq_s8(v108, vceqq_f32(vdupq_lane_s32(*v111.f32, 1), v109)), v109), v108, v110);
    v114 = *(v107 + 64);
    v113 = *(v107 + 80);
    v115 = vorrq_s8(vandq_s8(v114, v112), v108);
    v117 = *(v107 + 96);
    v116 = *(v107 + 112);
    v118 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v112, 0x17uLL)), vandq_s8(v117, vcgtq_f32(v113, v112))), v116);
    v120 = *(v107 + 128);
    v119 = *(v107 + 144);
    v121 = vandq_s8(v108, vcgtq_f32(v115, v120));
    v122 = vaddq_f32(v118, v121);
    v123 = vsubq_f32(vsubq_f32(v115, v108), vmulq_f32(vmulq_f32(v119, v121), v115));
    v124 = vmulq_f32(v123, v123);
    v125 = *(v107 + 160);
    v126 = *(v107 + 176);
    v127 = *(v107 + 192);
    v128 = *(v107 + 208);
    v129 = *(v107 + 224);
    v130 = *(v107 + 240);
    v131 = vmulq_f32(v123, vaddq_f32(vaddq_f32(v129, vmulq_f32(v130, v123)), vmulq_f32(v124, vaddq_f32(vaddq_f32(v125, vmulq_f32(v126, v123)), vmulq_f32(v124, vaddq_f32(v127, vmulq_f32(v128, v123)))))));
    v133 = *(v107 + 256);
    v132 = *(v107 + 272);
    v134 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v122, vmulq_f32(v123, vaddq_f32(v133, v131))), *v111.f32, 1), v132);
    v135 = vcvtq_f32_s32(vcvtq_s32_f32(v134));
    v136 = vsubq_f32(v135, vandq_s8(v108, vcgtq_f32(v135, v134)));
    v137 = vsubq_f32(v134, v136);
    v138 = *(v107 + 288);
    v139 = *(v107 + 304);
    v140 = *(v107 + 320);
    v141 = *(v107 + 336);
    v142 = *(v107 + 352);
    v143 = *(v107 + 368);
    v144 = vmulq_f32(vaddq_f32(v108, vmulq_f32(v137, vaddq_f32(v142, vmulq_f32(v137, vaddq_f32(vaddq_f32(v140, vmulq_f32(v141, v137)), vmulq_f32(vmulq_f32(v137, v137), vaddq_f32(v138, vmulq_f32(v139, v137)))))))), vshlq_n_s32(vaddq_s32(v143, vcvtq_s32_f32(v136)), 0x17uLL));
    v145 = *(v107 + 384);
    v146 = *(v107 + 400);
    v147 = vbslq_s8(v145, v110, v144);
    v148 = vbslq_s8(v145, v110, vaddq_f32(vdupq_lane_s32(*v107, 1), vmulq_laneq_f32(v147, *v107, 2)));
    v149 = *(v107 + 416);
    v150 = vminq_f32(vmaxq_f32(vrecpeq_f32(v148), v146), v149);
    v151 = vminq_f32(vmaxq_f32(vmulq_f32(v150, vrecpsq_f32(v148, v150)), v146), v149);
    v152 = vbslq_s8(vcgtq_f32(vandq_s8(v108, vceqq_f32(vdupq_lane_s32(*v111.f32, 0), v109)), v109), v108, vbslq_s8(v145, v110, vmulq_f32(vmaxq_f32(vsubq_f32(v147, vdupq_lane_s32(*v107, 0)), v109), vmulq_f32(v151, vrecpsq_f32(v148, v151)))));
    v153 = vorrq_s8(vandq_s8(v152, v114), v108);
    v154 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v152, 0x17uLL)), vandq_s8(v117, vcgtq_f32(v113, v152))), v116);
    v155 = vandq_s8(v108, vcgtq_f32(v153, v120));
    v156 = vaddq_f32(v154, v155);
    v157 = vsubq_f32(vsubq_f32(v153, v108), vmulq_f32(vmulq_f32(v119, v155), v153));
    v158 = vmulq_f32(v157, v157);
    v159 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v156, vmulq_f32(v157, vaddq_f32(v133, vmulq_f32(v157, vaddq_f32(vaddq_f32(v129, vmulq_f32(v130, v157)), vmulq_f32(v158, vaddq_f32(vaddq_f32(v125, vmulq_f32(v126, v157)), vmulq_f32(v158, vaddq_f32(v127, vmulq_f32(v128, v157)))))))))), v111.f32[0]), v132);
    v160 = vcvtq_f32_s32(vcvtq_s32_f32(v159));
    v161 = vsubq_f32(v160, vandq_s8(v108, vcgtq_f32(v160, v159)));
    v162 = vsubq_f32(v159, v161);
    *(v5 + v106) = vbslq_s8(v145, v110, vmulq_laneq_f32(vbslq_s8(v145, v110, vmulq_f32(vaddq_f32(v108, vmulq_f32(v162, vaddq_f32(v142, vmulq_f32(v162, vaddq_f32(vaddq_f32(v140, vmulq_f32(v141, v162)), vmulq_f32(vmulq_f32(v162, v162), vaddq_f32(v138, vmulq_f32(v139, v162)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v161), v143), 0x17uLL))), v111, 2));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2100_PQ_InverseOETF_qtApprox::GetDOD(HgcBT2100_PQ_InverseOETF_qtApprox *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_PQ_InverseOETF_qtApprox::GetROI(HgcBT2100_PQ_InverseOETF_qtApprox *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_PQ_InverseOETF_qtApprox::HgcBT2100_PQ_InverseOETF_qtApprox(HgcBT2100_PQ_InverseOETF_qtApprox *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723E518;
  operator new();
}

void HgcBT2100_PQ_InverseOETF_qtApprox::~HgcBT2100_PQ_InverseOETF_qtApprox(HgcBT2100_PQ_InverseOETF_qtApprox *this)
{
  *this = &unk_28723E518;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4003455651);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_PQ_InverseOETF_qtApprox::~HgcBT2100_PQ_InverseOETF_qtApprox(HGNode *this)
{
  *this = &unk_28723E518;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4003455651);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_PQ_InverseOETF_qtApprox::SetParameter(HgcBT2100_PQ_InverseOETF_qtApprox *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBT2100_PQ_InverseOETF_qtApprox::GetParameter(HgcBT2100_PQ_InverseOETF_qtApprox *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBT2100_HLG_OETF::GetProgram(HgcBT2100_HLG_OETF *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000470\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r2.xyz = fmax(r0.xyz, half3(hg_Params[0].xxx));\n    r2.xyz = r2.xyz - half3(hg_Params[1].zzz);\n    r1.x = sqrt(r1.x);\n    r1.z = sqrt(r1.z);\n    r1.y = sqrt(r1.y);\n    r1.xyz = r1.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = log2(r2.xyz);\n    r2.xyz = r2.xyz*half3(hg_Params[1].yyy) + half3(hg_Params[1].www);\n    r0.xyz = half3(half3(hg_Params[0].xxx) < r0.xyz);\n    output.color0.xyz = select(float3(r1.xyz), float3(r2.xyz), -float3(r0.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=a246f9f9:66d6029c:84c9338d:ea089985\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000424\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r2.xyz = fmax(r0.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz - hg_Params[1].zzz;\n    r1.x = sqrt(r1.x);\n    r1.z = sqrt(r1.z);\n    r1.y = sqrt(r1.y);\n    r1.xyz = r1.xyz*hg_Params[1].xxx;\n    r2.xyz = log2(r2.xyz);\n    r2.xyz = r2.xyz*hg_Params[1].yyy + hg_Params[1].www;\n    r0.xyz = float3(hg_Params[0].xxx < r0.xyz);\n    output.color0.xyz = select(r1.xyz, r2.xyz, -r0.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=5c824207:76fd8e2e:0a00acd2:9472bca2\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000046a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r2.xyz = max(r0.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz - hg_ProgramLocal1.zzz;\n    r1.x = sqrt(r1.x);\n    r1.z = sqrt(r1.z);\n    r1.y = sqrt(r1.y);\n    r1.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = log2(r2.xyz);\n    r2.xyz = r2.xyz*hg_ProgramLocal1.yyy + hg_ProgramLocal1.www;\n    r0.xyz = vec3(lessThan(hg_ProgramLocal0.xxx, r0.xyz));\n    gl_FragColor.xyz = vec3(-r0.x < 0.00000 ? r2.x : r1.x, -r0.y < 0.00000 ? r2.y : r1.y, -r0.z < 0.00000 ? r2.z : r1.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=56011197:b8fa2ca6:c303b796:50fed9e5\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE34880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE348B0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE348A8);
}

uint64_t HgcBT2100_HLG_OETF::BindTexture(HgcBT2100_HLG_OETF *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcBT2100_HLG_OETF::Bind(HgcBT2100_HLG_OETF *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_HLG_OETF::RenderTile(HgcBT2100_HLG_OETF *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(v6 + v10 - 16);
      v13 = *(v6 + v10);
      v14 = *(this + 51);
      v15 = *(v14 + 32);
      v16 = *(v14 + 48);
      v17 = vmaxq_f32(v12, v15);
      v18 = vmaxq_f32(v13, v15);
      v19 = *(v14 + 16);
      v20 = vdupq_lane_s32(*v14, 0);
      v21 = vdupq_laneq_s32(v19, 2);
      v22 = vsubq_f32(vmaxq_f32(v12, v20), v21);
      v23 = *(v14 + 64);
      v24 = vminq_f32(vmulq_f32(vrsqrteq_f32(v17), v16), v23);
      v25 = vminq_f32(vmulq_f32(vrsqrteq_f32(v18), v16), v23);
      v26 = vmulq_f32(v18, vminq_f32(vmulq_f32(v25, vrsqrtsq_f32(vmulq_f32(v18, v25), v25)), v23));
      v27 = vbslq_s8(*(v14 + 80), vmulq_f32(v17, vminq_f32(vmulq_f32(v24, vrsqrtsq_f32(vmulq_f32(v17, v24), v24)), v23)), v17);
      v28 = vbslq_s8(*(v14 + 80), v26, v18);
      v29 = vminq_f32(vmulq_f32(v23, vrsqrteq_f32(v27)), v16);
      v30 = vminq_f32(vmulq_f32(v23, vrsqrteq_f32(v28)), v16);
      v31 = vsubq_f32(vmaxq_f32(v13, v20), v21);
      v27.i64[1] = vmulq_f32(vminq_f32(vmulq_f32(v29, vrsqrtsq_f32(vmulq_f32(v29, v27), v29)), v16), v27).i64[1];
      v28.i64[1] = vmulq_f32(vminq_f32(vmulq_f32(v30, vrsqrtsq_f32(vmulq_f32(v30, v28), v30)), v16), v28).i64[1];
      v32 = *(v14 + 96);
      v33 = *(v14 + 112);
      v34 = vandq_s8(v33, v22);
      v35 = vandq_s8(v33, v31);
      v36 = *(v14 + 128);
      v37 = *(v14 + 144);
      v38 = vorrq_s8(v34, v36);
      v39 = vorrq_s8(v35, v36);
      v40 = *(v14 + 160);
      v41 = *(v14 + 176);
      v42 = vminq_f32(vmulq_f32(v23, vrsqrteq_f32(v27)), v16);
      v43 = vminq_f32(vmulq_f32(v23, vrsqrteq_f32(v28)), v16);
      v44 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v22))), v41);
      v45 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v31, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v31))), v41);
      v46 = *(v14 + 192);
      v47 = *(v14 + 208);
      v48 = vandq_s8(v36, vcgtq_f32(v38, v46));
      v49 = vandq_s8(v36, vcgtq_f32(v39, v46));
      v50 = vaddq_f32(v45, v49);
      v51 = vsubq_f32(vsubq_f32(v38, v36), vmulq_f32(vmulq_f32(v47, v48), v38));
      v52 = vsubq_f32(vsubq_f32(v39, v36), vmulq_f32(vmulq_f32(v47, v49), v39));
      v53 = *(v14 + 224);
      v54 = *(v14 + 240);
      v55 = vaddq_f32(v53, vmulq_f32(v54, v51));
      v56 = vaddq_f32(v53, vmulq_f32(v54, v52));
      v57 = *(v14 + 256);
      v58 = *(v14 + 272);
      v59 = vminq_f32(vmulq_f32(v42, vrsqrtsq_f32(vmulq_f32(v27, v42), v42)), v16);
      v60 = vminq_f32(vmulq_f32(v43, vrsqrtsq_f32(vmulq_f32(v28, v43), v43)), v16);
      v61 = vbslq_s8(v32, vmulq_f32(v27, v59), v27);
      v62 = vaddq_f32(v50, vmulq_f32(v52, vaddq_f32(vaddq_f32(v57, vmulq_f32(v52, v58)), vmulq_f32(vmulq_f32(v52, v52), v56))));
      v63 = vdupq_laneq_s32(v19, 3);
      v64 = vbslq_s8(v32, vmulq_f32(v28, v60), v28);
      v65 = vandq_s8(v36, vcgtq_f32(v12, v20));
      v66 = vandq_s8(v36, vcgtq_f32(v13, v20));
      v67 = *(v14 + 288);
      v68 = (v5 + v10);
      v68[-1] = vbslq_s8(v67, v12, vbslq_s8(vcgtq_f32(vbslq_s8(v67, v12, v65), v15), vaddq_f32(v63, vmulq_lane_f32(vaddq_f32(vaddq_f32(v44, v48), vmulq_f32(v51, vaddq_f32(vaddq_f32(v57, vmulq_f32(v51, v58)), vmulq_f32(vmulq_f32(v51, v51), v55)))), *v19.i8, 1)), vmulq_n_f32(v61, *v19.i32)));
      *v68 = vbslq_s8(v67, v13, vbslq_s8(vcgtq_f32(vbslq_s8(v67, v13, v66), v15), vaddq_f32(v63, vmulq_lane_f32(v62, *v19.i8, 1)), vmulq_n_f32(v64, *v19.i32)));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v69 = 16 * v9;
    v70 = *(v6 + v69);
    v71 = *(this + 51);
    v72 = *(v71 + 32);
    v73 = *(v71 + 48);
    v74 = vmaxq_f32(v70, v72);
    v75 = *(v71 + 16);
    v76 = vdupq_lane_s32(*v71, 0);
    v77 = *(v71 + 64);
    v78 = vminq_f32(vmulq_f32(vrsqrteq_f32(v74), v73), v77);
    v79 = vbslq_s8(*(v71 + 80), vmulq_f32(v74, vminq_f32(vmulq_f32(v78, vrsqrtsq_f32(vmulq_f32(v74, v78), v78)), v77)), v74);
    v80 = vminq_f32(vmulq_f32(v77, vrsqrteq_f32(v79)), v73);
    v79.i64[1] = vmulq_f32(vminq_f32(vmulq_f32(v80, vrsqrtsq_f32(vmulq_f32(v80, v79), v80)), v73), v79).i64[1];
    v81 = vsubq_f32(vmaxq_f32(v70, v76), vdupq_laneq_s32(v75, 2));
    v82 = vminq_f32(vmulq_f32(v77, vrsqrteq_f32(v79)), v73);
    v83 = vmulq_n_f32(vbslq_s8(*(v71 + 96), vmulq_f32(v79, vminq_f32(vmulq_f32(v82, vrsqrtsq_f32(vmulq_f32(v82, v79), v82)), v73)), v79), *v75.i32);
    v84 = *(v71 + 128);
    v85 = vorrq_s8(vandq_s8(*(v71 + 112), v81), v84);
    v86 = vandq_s8(v84, vcgtq_f32(v85, *(v71 + 192)));
    v87 = vsubq_f32(vsubq_f32(v85, v84), vmulq_f32(vmulq_f32(*(v71 + 208), v86), v85));
    *(v5 + v69) = vbslq_s8(*(v71 + 288), v70, vbslq_s8(vcgtq_f32(vbslq_s8(*(v71 + 288), v70, vandq_s8(v84, vcgtq_f32(v70, v76))), v72), vaddq_f32(vdupq_laneq_s32(v75, 3), vmulq_lane_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v81, 0x17uLL)), vandq_s8(*(v71 + 160), vcgtq_f32(*(v71 + 144), v81))), *(v71 + 176)), v86), vmulq_f32(v87, vaddq_f32(vaddq_f32(*(v71 + 256), vmulq_f32(v87, *(v71 + 272))), vmulq_f32(vmulq_f32(v87, v87), vaddq_f32(*(v71 + 224), vmulq_f32(*(v71 + 240), v87)))))), *v75.i8, 1)), v83));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2100_HLG_OETF::GetDOD(HgcBT2100_HLG_OETF *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_HLG_OETF::GetROI(HgcBT2100_HLG_OETF *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_HLG_OETF::HgcBT2100_HLG_OETF(HgcBT2100_HLG_OETF *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723E780;
  operator new();
}

void HgcBT2100_HLG_OETF::~HgcBT2100_HLG_OETF(HgcBT2100_HLG_OETF *this)
{
  *this = &unk_28723E780;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40FDACBBE0);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_HLG_OETF::~HgcBT2100_HLG_OETF(HGNode *this)
{
  *this = &unk_28723E780;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FDACBBE0);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_HLG_OETF::SetParameter(HgcBT2100_HLG_OETF *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBT2100_HLG_OETF::GetParameter(HgcBT2100_HLG_OETF *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBT2100_HLG_InverseOETF::GetProgram(HgcBT2100_HLG_InverseOETF *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000459\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.004999999888, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r0.xyz = r1.xyz*half3(hg_Params[1].xxx) + half3(hg_Params[1].yyy);\n    r2.xyz = r1.xyz*r1.xyz;\n    r1.w = half(r0.w >= c0.y);\n    r2.xyz = r2.xyz*half3(hg_Params[0].yyy);\n    r0.xyz = exp2(r0.xyz);\n    r0.xyz = r0.xyz*half3(hg_Params[1].zzz) + half3(hg_Params[1].www);\n    r1.xyz = half3(half3(hg_Params[0].xxx) < r1.xyz);\n    output.color0.xyz = select(float3(r2.xyz), float3(r0.xyz), -float3(r1.xyz) < 0.00000h);\n    output.color0.w = float(r1.w)*float(r0.w);\n    return output;\n}\n//MD5=0e64def9:549efc1e:2c24ba50:d3e12153\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000407\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.004999999888, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r0.xyz = r1.xyz*hg_Params[1].xxx + hg_Params[1].yyy;\n    r2.xyz = r1.xyz*r1.xyz;\n    r1.w = float(r0.w >= c0.y);\n    r2.xyz = r2.xyz*hg_Params[0].yyy;\n    r0.xyz = exp2(r0.xyz);\n    r0.xyz = r0.xyz*hg_Params[1].zzz + hg_Params[1].www;\n    r1.xyz = float3(hg_Params[0].xxx < r1.xyz);\n    output.color0.xyz = select(r2.xyz, r0.xyz, -r1.xyz < 0.00000f);\n    output.color0.w = r1.w*r0.w;\n    return output;\n}\n//MD5=9d3926b3:95147086:aed26591:6ed500f8\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000044e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.004999999888, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r0.xyz = r1.xyz*hg_ProgramLocal1.xxx + hg_ProgramLocal1.yyy;\n    r2.xyz = r1.xyz*r1.xyz;\n    r1.w = float(r0.w >= c0.y);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.yyy;\n    r0.xyz = exp2(r0.xyz);\n    r0.xyz = r0.xyz*hg_ProgramLocal1.zzz + hg_ProgramLocal1.www;\n    r1.xyz = vec3(lessThan(hg_ProgramLocal0.xxx, r1.xyz));\n    gl_FragColor.xyz = vec3(-r1.x < 0.00000 ? r0.x : r2.x, -r1.y < 0.00000 ? r0.y : r2.y, -r1.z < 0.00000 ? r0.z : r2.z);\n    gl_FragColor.w = r1.w*r0.w;\n}\n//MD5=b0b6d9ae:948ec756:c093cb52:9ea2171d\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE35508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE35538(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE35530);
}

uint64_t HgcBT2100_HLG_InverseOETF::BindTexture(HgcBT2100_HLG_InverseOETF *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v5 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v5)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcBT2100_HLG_InverseOETF::Bind(HgcBT2100_HLG_InverseOETF *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_HLG_InverseOETF::RenderTile(HgcBT2100_HLG_InverseOETF *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 6);
    v8 = 16 * *(a2 + 22);
    while (v4 < 2)
    {
      v9 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v8;
      v5 += v7;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v9 = 0;
    v10 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v12 = *(this + 51);
      v13 = *(v12 + 16);
      v15 = *(v6 + v10 - 16);
      v14 = *(v6 + v10);
      v16 = vdupq_lane_s32(*v13.f32, 1);
      v18 = *(v12 + 32);
      v17 = *(v12 + 48);
      v19 = vmaxq_f32(v15, v18);
      v20 = vmaxq_f32(v14, v18);
      v21 = vbslq_s8(v17, v15, vaddq_f32(v16, vmulq_n_f32(v19, v13.f32[0])));
      v22 = vbslq_s8(v17, v14, vaddq_f32(v16, vmulq_n_f32(v20, v13.f32[0])));
      v24 = *(v12 + 64);
      v23 = *(v12 + 80);
      v25 = vcgeq_f32(v22, v18);
      v26 = vandq_s8(v24, vcgeq_f32(v21, v18));
      v27 = vmaxq_f32(v21, v24);
      v28 = vmaxq_f32(v22, v24);
      v29 = vcvtq_f32_s32(vcvtq_s32_f32(v27));
      v30 = vcvtq_f32_s32(vcvtq_s32_f32(v28));
      v31 = vsubq_f32(v29, vandq_s8(v23, vcgtq_f32(v29, v27)));
      v32 = vsubq_f32(v30, vandq_s8(v23, vcgtq_f32(v30, v28)));
      v33 = vsubq_f32(v27, v31);
      v34 = vsubq_f32(v28, v32);
      v35 = *(v12 + 96);
      v36 = *(v12 + 112);
      v37 = vandq_s8(v24, v25);
      v38 = vaddq_f32(v35, vmulq_f32(v36, v33));
      v39 = vaddq_f32(v35, vmulq_f32(v36, v34));
      v40 = *(v12 + 128);
      v41 = *(v12 + 144);
      v42 = vmulq_f32(vaddq_f32(v23, vmulq_f32(v33, vaddq_f32(v40, vmulq_f32(v33, v38)))), vshlq_n_s32(vaddq_s32(v41, vcvtq_s32_f32(v31)), 0x17uLL));
      v43 = vdupq_laneq_s32(v13, 3);
      v44 = vbslq_s8(v17, v15, vaddq_f32(v43, vmulq_laneq_f32(vbslq_s8(v17, v15, v42), v13, 2)));
      v45 = vdupq_lane_s32(*v12, 0);
      v46 = vbslq_s8(v17, v14, vaddq_f32(v43, vmulq_laneq_f32(vbslq_s8(v17, v14, vmulq_f32(vaddq_f32(v23, vmulq_f32(v34, vaddq_f32(v40, vmulq_f32(v34, v39)))), vshlq_n_s32(vaddq_s32(v41, vcvtq_s32_f32(v32)), 0x17uLL))), v13, 2)));
      v47 = vandq_s8(v23, vcgtq_f32(vbslq_s8(v17, v37, v20), v45));
      v48 = vbslq_s8(v17, v26, vandq_s8(v23, vcgtq_f32(vbslq_s8(v17, v26, v19), v45)));
      v49 = vbslq_s8(v17, v37, v47);
      v50 = vbslq_s8(v17, vmulq_f32(v48, v44), vbslq_s8(vcgtq_f32(v48, v18), v44, vmulq_lane_f32(vmulq_f32(v19, v19), *v12, 1)));
      v51 = vbslq_s8(v17, vmulq_f32(v49, v46), vbslq_s8(vcgtq_f32(v49, v18), v46, vmulq_lane_f32(vmulq_f32(v20, v20), *v12, 1)));
      v52 = (v5 + v10);
      v52[-1] = v50;
      *v52 = v51;
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v53 = 16 * v9;
    v54 = *(v6 + v53);
    v55 = *(this + 51);
    v56 = *(v55 + 32);
    v57 = *(v55 + 48);
    v58 = vmaxq_f32(v54, v56);
    v59 = *(v55 + 16);
    v60 = vbslq_s8(v57, v54, vaddq_f32(vdupq_lane_s32(*v59.f32, 1), vmulq_n_f32(v58, v59.f32[0])));
    v61 = *(v55 + 64);
    v62 = *(v55 + 80);
    v63 = vandq_s8(v61, vcgeq_f32(v60, v56));
    v64 = vmaxq_f32(v60, v61);
    v65 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
    v66 = vsubq_f32(v65, vandq_s8(v62, vcgtq_f32(v65, v64)));
    v67 = vsubq_f32(v64, v66);
    v68 = vmulq_f32(v58, v58);
    v69 = vbslq_s8(v57, v54, vaddq_f32(vdupq_laneq_s32(v59, 3), vmulq_laneq_f32(vbslq_s8(v57, v54, vmulq_f32(vaddq_f32(v62, vmulq_f32(v67, vaddq_f32(*(v55 + 128), vmulq_f32(v67, vaddq_f32(*(v55 + 96), vmulq_f32(*(v55 + 112), v67)))))), vshlq_n_s32(vaddq_s32(*(v55 + 144), vcvtq_s32_f32(v66)), 0x17uLL))), v59, 2)));
    v70 = vbslq_s8(v57, v63, vandq_s8(v62, vcgtq_f32(vbslq_s8(v57, v63, v58), vdupq_lane_s32(*v55, 0))));
    *(v5 + v53) = vbslq_s8(v57, vmulq_f32(v70, v69), vbslq_s8(vcgtq_f32(v70, v56), v69, vmulq_lane_f32(v68, *v55, 1)));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2100_HLG_InverseOETF::GetDOD(HgcBT2100_HLG_InverseOETF *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_HLG_InverseOETF::GetROI(HgcBT2100_HLG_InverseOETF *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_HLG_InverseOETF::HgcBT2100_HLG_InverseOETF(HgcBT2100_HLG_InverseOETF *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723E9E8;
  operator new();
}

void HgcBT2100_HLG_InverseOETF::~HgcBT2100_HLG_InverseOETF(HgcBT2100_HLG_InverseOETF *this)
{
  *this = &unk_28723E9E8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40B8406A4ELL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_HLG_InverseOETF::~HgcBT2100_HLG_InverseOETF(HGNode *this)
{
  *this = &unk_28723E9E8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_HLG_InverseOETF::SetParameter(HgcBT2100_HLG_InverseOETF *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = (*(this + 51) + 16 * a2);
  if (*v7 == a3 && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
  {
    return 0;
  }

  *v7 = a3;
  v7[1] = a4;
  v7[2] = a5;
  v7[3] = a6;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

uint64_t HgcBT2100_HLG_InverseOETF::GetParameter(HgcBT2100_HLG_InverseOETF *this, unsigned int a2, float *a3)
{
  if (a2 > 1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = *v5;
  a3[1] = v5[1];
  a3[2] = v5[2];
  a3[3] = v5[3];
  return result;
}

const char *HgcBT2100_HLG_OOTF_InverseOOTF::GetProgram(HgcBT2100_HLG_OOTF_InverseOOTF *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000389\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = dot(r0.xyz, half3(hg_Params[0].xyz));\n    r1.y = half(c0.y < r1.x);\n    r1.x = pow(r1.x, half(hg_Params[1].x));\n    r1.x = select(c0.y, r1.x, -r1.y < 0.00000h);\n    r1.x = r1.x*half(hg_Params[1].y);\n    output.color0.xyz = float3(r0.xyz)*float3(r1.xxx);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=518f3182:06a5d829:280589ce:1e93e94a\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000035c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = dot(r0.xyz, hg_Params[0].xyz);\n    r1.y = float(c0.y < r1.x);\n    r1.x = pow(r1.x, hg_Params[1].x);\n    r1.x = select(c0.y, r1.x, -r1.y < 0.00000f);\n    r1.x = r1.x*hg_Params[1].y;\n    output.color0.xyz = r0.xyz*r1.xxx;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=c18f2b64:8869268a:5dc9c39b:c72920aa\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000353\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = dot(r0.xyz, hg_ProgramLocal0.xyz);\n    r1.y = float(c0.y < r1.x);\n    r1.x = pow(r1.x, hg_ProgramLocal1.x);\n    r1.x = -r1.y < 0.00000 ? r1.x : c0.y;\n    r1.x = r1.x*hg_ProgramLocal1.y;\n    gl_FragColor.xyz = r0.xyz*r1.xxx;\n    gl_FragColor.w = r0.w;\n}\n//MD5=e6fecf5f:0e29aa5b:51d59bfe:b6c20fae\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}