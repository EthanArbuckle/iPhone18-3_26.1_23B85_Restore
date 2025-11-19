uint64_t LiHeLightProgramSurfaceFinalPass::GetROI(LiHeLightProgramSurfaceFinalPass *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeLightProgramSurfaceFinalPass::LiHeLightProgramSurfaceFinalPass(LiHeLightProgramSurfaceFinalPass *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287275A08;
  operator new();
}

void LiHeLightProgramSurfaceFinalPass::~LiHeLightProgramSurfaceFinalPass(HGNode *this)
{
  *this = &unk_287275A08;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);
}

{
  LiHeLightProgramSurfaceFinalPass::~LiHeLightProgramSurfaceFinalPass(this);

  HGObject::operator delete(v1);
}

const char *LiHeLimit::GetProgram(LiHeLimit *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000381\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000012e-07, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r1.wwww + c0.xxxx;\n    r0 = r0.wwww + c0.xxxx;\n    r2 = r0/r2;\n    output.color0 = float4(r1)*float4(r2);\n    return output;\n}\n//MD5=b7076390:9181d49e:56f4b253:3d458ea1\n//SIG=00400000:00000003:00000003:00000003:0001:0000:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000367\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000012e-07, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r1.wwww + c0.xxxx;\n    r0 = r0.wwww + c0.xxxx;\n    r2 = r0/r2;\n    output.color0 = r1*r2;\n    return output;\n}\n//MD5=05bd07f9:67c60093:0ce557d1:a4a34b2d\n//SIG=00000000:00000003:00000003:00000000:0001:0000:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002e8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000012e-07, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r1.wwww + c0.xxxx;\n    r0 = r0.wwww + c0.xxxx;\n    r2 = r0/r2;\n    gl_FragColor = r1*r2;\n}\n//MD5=0e095ec1:dc210556:f533a650:c09eeb46\n//SIG=00000000:00000003:00000003:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_2600643B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344AF0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_2600644F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26006453C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260064534);
}

uint64_t LiHeLimit::BindTexture(LiHeLimit *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t LiHeLimit::RenderTile(LiHeLimit *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 12);
    v7 = 16 * *(a2 + 22);
    v8 = *(a2 + 10);
    v9 = 16 * *(a2 + 26);
    v10 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v14 = *(v6 + v12 - 32);
          v15 = *(v6 + v12 - 16);
          v16 = *(v6 + v12);
          v17 = *(v6 + v12 + 16);
          v18 = *(this + 51);
          v19 = v18[1];
          v20 = vaddq_f32(vdupq_laneq_s32(v14, 3), *v18);
          v21 = vaddq_f32(vdupq_laneq_s32(v15, 3), *v18);
          v22 = vaddq_f32(vdupq_laneq_s32(v16, 3), *v18);
          v23 = vaddq_f32(vdupq_laneq_s32(v17, 3), *v18);
          v24 = v18[2];
          v25 = v18[3];
          v26 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v20), v19), v24), v25);
          v27 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v21), v19), v24), v25);
          v28 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v22), v19), v24), v25);
          v29 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v23), v19), v24), v25);
          v30 = vmulq_f32(v14, vmulq_f32(vaddq_f32(vdupq_laneq_s32(*(v8 + v12 - 32), 3), *v18), vmulq_f32(v26, vrecpsq_f32(v20, v26))));
          v31 = vmulq_f32(v15, vmulq_f32(vaddq_f32(vdupq_laneq_s32(*(v8 + v12 - 16), 3), *v18), vmulq_f32(v27, vrecpsq_f32(v21, v27))));
          v32 = vmulq_f32(v16, vmulq_f32(vaddq_f32(vdupq_laneq_s32(*(v8 + v12), 3), *v18), vmulq_f32(v28, vrecpsq_f32(v22, v28))));
          v33 = vmulq_f32(v17, vmulq_f32(vaddq_f32(vdupq_laneq_s32(*(v8 + v12 + 16), 3), *v18), vmulq_f32(v29, vrecpsq_f32(v23, v29))));
          v34 = (v5 + v12);
          v34[-2] = v30;
          v34[-1] = v31;
          *v34 = v32;
          v34[1] = v33;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v35 = *(v6 + 16 * v11);
          v36 = *(this + 51);
          v37 = vaddq_f32(vdupq_laneq_s32(v35, 3), *v36);
          v38 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v37), v36[1]), v36[2]), v36[3]);
          *(v5 + 16 * v11) = vmulq_f32(v35, vmulq_f32(vaddq_f32(vdupq_laneq_s32(*(v8 + 16 * v11), 3), *v36), vmulq_f32(v38, vrecpsq_f32(v37, v38))));
          ++v11;
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v6 += v9;
      v5 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeLimit::GetDOD(LiHeLimit *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeLimit::GetROI(LiHeLimit *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeLimit::LiHeLimit(LiHeLimit *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287275C70;
  operator new();
}

void LiHeLimit::~LiHeLimit(HGNode *this)
{
  *this = &unk_287275C70;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  LiHeLimit::~LiHeLimit(this);

  HGObject::operator delete(v1);
}

const char *HgcNormalMapToBumpMap::GetProgram(HgcNormalMapToBumpMap *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000035c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, -1.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r0.xy = r0.xy*c0.xx + c0.yy;\n    r0.xy = select(r0.xy, -r0.xy, half2(hg_Params[0].xy) < 0.00000h);\n    r0.w = dot(r0.xyz, r0.xyz);\n    r0.w = rsqrt(r0.w);\n    output.color0.xyz = float3(r0.xyz)*float3(r0.www);\n    output.color0.w = -float(c0.y);\n    return output;\n}\n//MD5=10198cd1:ea4abf9a:d884c6f7:78cfbf92\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000033a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, -1.000000000, 0.000000000, 0.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r0.xy = r0.xy*c0.xx + c0.yy;\n    r0.xy = select(r0.xy, -r0.xy, hg_Params[0].xy < 0.00000f);\n    r0.w = dot(r0.xyz, r0.xyz);\n    r0.w = rsqrt(r0.w);\n    output.color0.xyz = r0.xyz*r0.www;\n    output.color0.w = -c0.y;\n    return output;\n}\n//MD5=23b14d5c:a8d7ef2a:5b8e81ac:4eb15f99\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000338\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, -1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0;\n\n    r0.xyz = texture2D(hg_Texture0, hg_TexCoord0.xy).xyz;\n    r0.xy = r0.xy*c0.xx + c0.yy;\n    r0.xy = vec2(hg_ProgramLocal0.x < 0.00000 ? -r0.x : r0.x, hg_ProgramLocal0.y < 0.00000 ? -r0.y : r0.y);\n    r0.w = dot(r0.xyz, r0.xyz);\n    r0.w = inversesqrt(r0.w);\n    gl_FragColor.xyz = r0.xyz*r0.www;\n    gl_FragColor.w = -c0.y;\n}\n//MD5=496e9195:f0226dec:8bdbfc4f:49645a41\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_260064B98(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_260064C98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260064CD8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260064CD0);
}

uint64_t HgcNormalMapToBumpMap::BindTexture(HgcNormalMapToBumpMap *this, HGHandler *a2, int a3)
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

uint64_t HgcNormalMapToBumpMap::Bind(HgcNormalMapToBumpMap *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcNormalMapToBumpMap::RenderTile(HgcNormalMapToBumpMap *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 22);
    v8 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v12 = *(this + 51);
          v13 = *(v12 + 32);
          v14 = *(v12 + 16);
          v15 = vandq_s8(*v12, *(v12 + 48));
          v16.i64[0] = veorq_s8(v15, vaddq_f32(v14, vmulq_f32(*(v6 + v10 - 32), v13))).u64[0];
          v17.i64[0] = veorq_s8(v15, vaddq_f32(v14, vmulq_f32(*(v6 + v10 - 16), v13))).u64[0];
          v18.i64[0] = veorq_s8(v15, vaddq_f32(v14, vmulq_f32(*(v6 + v10), v13))).u64[0];
          v15.i64[0] = veorq_s8(v15, vaddq_f32(v14, vmulq_f32(*(v6 + v10 + 16), v13))).u64[0];
          v16.i64[1] = *(v6 + v10 - 24);
          v17.i64[1] = *(v6 + v10 - 8);
          v18.i64[1] = *(v6 + v10 + 8);
          v15.i64[1] = *(v6 + v10 + 24);
          v19 = vmulq_f32(v16, v16);
          v20 = vmulq_f32(v17, v17);
          v21 = vmulq_f32(v18, v18);
          v22 = vmulq_f32(v15, v15);
          v23 = *(v12 + 64);
          v24 = vbslq_s8(v23, vaddq_f32(vrev64q_s32(v19), vaddq_f32(vextq_s8(v19, v19, 4uLL), vextq_s8(v19, v19, 8uLL))), v16);
          v25 = vbslq_s8(v23, vaddq_f32(vrev64q_s32(v20), vaddq_f32(vextq_s8(v20, v20, 4uLL), vextq_s8(v20, v20, 8uLL))), v17);
          v26 = vbslq_s8(v23, vaddq_f32(vrev64q_s32(v21), vaddq_f32(vextq_s8(v21, v21, 4uLL), vextq_s8(v21, v21, 8uLL))), v18);
          v27 = vbslq_s8(v23, vaddq_f32(vrev64q_s32(v22), vaddq_f32(vextq_s8(v22, v22, 4uLL), vextq_s8(v22, v22, 8uLL))), v15);
          v28 = vminq_f32(vmulq_f32(v13, vrsqrteq_f32(v24)), v14);
          v29 = vminq_f32(vmulq_f32(v13, vrsqrteq_f32(v25)), v14);
          v30 = vminq_f32(vmulq_f32(v13, vrsqrteq_f32(v26)), v14);
          v31 = vminq_f32(vmulq_f32(v13, vrsqrteq_f32(v27)), v14);
          v32 = vbslq_s8(v23, vmulq_f32(v28, vrsqrtsq_f32(vmulq_f32(v28, v24), v28)), v16);
          v33 = vbslq_s8(v23, vmulq_f32(v29, vrsqrtsq_f32(vmulq_f32(v29, v25), v29)), v17);
          v34 = vbslq_s8(v23, vmulq_f32(v30, vrsqrtsq_f32(vmulq_f32(v30, v26), v30)), v18);
          v35 = vbslq_s8(v23, vmulq_f32(v31, vrsqrtsq_f32(vmulq_f32(v31, v27), v31)), v15);
          v36 = vmulq_laneq_f32(v32, v32, 3);
          v37 = vmulq_laneq_f32(v33, v33, 3);
          v38 = vmulq_laneq_f32(v34, v34, 3);
          v36.i32[3] = 1.0;
          v37.i32[3] = 1.0;
          v38.i32[3] = 1.0;
          v39 = vmulq_laneq_f32(v35, v35, 3);
          v39.i32[3] = 1.0;
          v40 = (v5 + v10);
          v40[-2] = v36;
          v40[-1] = v37;
          *v40 = v38;
          v40[1] = v39;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v41 = *(this + 51);
          v42 = *(v41 + 32);
          v43 = *(v41 + 16);
          v44.i64[0] = veorq_s8(vandq_s8(*v41, *(v41 + 48)), vaddq_f32(v43, vmulq_f32(*(v6 + 16 * v9), v42))).u64[0];
          v44.i64[1] = *(v6 + 16 * v9 + 8);
          v45 = vmulq_f32(v44, v44);
          v46 = *(v41 + 64);
          v47 = vbslq_s8(v46, vaddq_f32(vrev64q_s32(v45), vaddq_f32(vextq_s8(v45, v45, 4uLL), vextq_s8(v45, v45, 8uLL))), v44);
          v48 = vminq_f32(vmulq_f32(v42, vrsqrteq_f32(v47)), v43);
          v49 = vbslq_s8(v46, vmulq_f32(v48, vrsqrtsq_f32(vmulq_f32(v48, v47), v48)), v44);
          v50 = vmulq_laneq_f32(v49, v49, 3);
          v50.i32[3] = 1.0;
          *(v5 + 16 * v9++) = v50;
        }

        while (v9 < v4);
      }

      ++v3;
      v6 += v7;
      v5 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcNormalMapToBumpMap::GetDOD(HgcNormalMapToBumpMap *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcNormalMapToBumpMap::GetROI(HgcNormalMapToBumpMap *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcNormalMapToBumpMap::HgcNormalMapToBumpMap(HgcNormalMapToBumpMap *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287275ED8;
  operator new();
}

void HgcNormalMapToBumpMap::~HgcNormalMapToBumpMap(HGNode *this)
{
  *this = &unk_287275ED8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcNormalMapToBumpMap::~HgcNormalMapToBumpMap(this);

  HGObject::operator delete(v1);
}

uint64_t HgcNormalMapToBumpMap::SetParameter(HgcNormalMapToBumpMap *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = -a3.n128_f32[0];
  v9 = *(this + 51);
  if (v9->n128_f32[0] == -a3.n128_f32[0] && v9->n128_f32[1] == v8 && v9->n128_f32[2] == 0.0 && v9->n128_f32[3] == 0.0)
  {
    return 0;
  }

  v9->n128_f32[0] = v8;
  v9->n128_f32[1] = v8;
  a3.n128_f32[1] = a4;
  v9->n128_u64[1] = 0;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v9[5] = a3;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcNormalMapToBumpMap::GetParameter(HgcNormalMapToBumpMap *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = v3[20];
    a3[1] = v3[21];
    a3[2] = v3[22];
    result = v3[23];
    a3[3] = result;
  }

  return result;
}

const char *LiHeMixShader::GetProgram(LiHeMixShader *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003a2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.w = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).w;\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=22108b0f:e3e984e4:8c3278e3:cb8e1271\n//SIG=00400000:00000007:00000007:00000007:0000:0000:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000377\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.w = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).w;\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=6a883b3e:ee5a8f1f:266bcc18:932206aa\n//SIG=00000000:00000007:00000007:00000000:0000:0000:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002d1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2.w = texture2D(hg_Texture2, hg_TexCoord2.xy).w;\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=6540cc42:c8bb85fa:ae1830a8:6bdd8d2b\n//SIG=00000000:00000007:00000007:00000000:0000:0000:0003:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_260065468(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344AF0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_2600655E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260065638()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260065630);
}

uint64_t LiHeMixShader::BindTexture(LiHeMixShader *this, HGHandler *a2, int a3)
{
  if (a3 == 2)
  {
    (*(*a2 + 72))(a2, 2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 2;
  }

  else if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t LiHeMixShader::RenderTile(LiHeMixShader *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 14);
    v7 = *(a2 + 12);
    v8 = 16 * *(a2 + 26);
    v9 = 16 * *(a2 + 22);
    v10 = *(a2 + 10);
    v11 = 16 * *(a2 + 30);
    v12 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v14 = 0;
      }

      else
      {
        v13 = 0;
        v14 = 0;
        for (i = v4; i > 3; i -= 4)
        {
          v16 = vaddq_f32(*(v10 + v13 + 16), vmulq_laneq_f32(vsubq_f32(*(v7 + v13 + 16), *(v10 + v13 + 16)), *(v6 + v13 + 16), 3));
          v17 = vaddq_f32(*(v10 + v13 + 32), vmulq_laneq_f32(vsubq_f32(*(v7 + v13 + 32), *(v10 + v13 + 32)), *(v6 + v13 + 32), 3));
          v18 = vaddq_f32(*(v10 + v13 + 48), vmulq_laneq_f32(vsubq_f32(*(v7 + v13 + 48), *(v10 + v13 + 48)), *(v6 + v13 + 48), 3));
          v19 = (v5 + v13);
          *v19 = vaddq_f32(*(v10 + v13), vmulq_laneq_f32(vsubq_f32(*(v7 + v13), *(v10 + v13)), *(v6 + v13), 3));
          v19[1] = v16;
          v19[2] = v17;
          v19[3] = v18;
          v14 += 4;
          v13 += 64;
        }
      }

      if (v14 < v4)
      {
        do
        {
          *(v5 + 16 * v14) = vaddq_f32(*(v10 + 16 * v14), vmulq_laneq_f32(vsubq_f32(*(v7 + 16 * v14), *(v10 + 16 * v14)), *(v6 + 16 * v14), 3));
          ++v14;
        }

        while (v14 < v4);
      }

      ++v3;
      v7 += v8;
      v10 += v9;
      v6 += v11;
      v5 += v12;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeMixShader::GetDOD(LiHeMixShader *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeMixShader::GetROI(LiHeMixShader *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeMixShader::LiHeMixShader(LiHeMixShader *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287276140;
  operator new();
}

void LiHeMixShader::~LiHeMixShader(HGNode *this)
{
  *this = &unk_287276140;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);
}

{
  LiHeMixShader::~LiHeMixShader(this);

  HGObject::operator delete(v1);
}

const char *LiHeProgramMaxBlend::GetProgram(LiHeProgramMaxBlend *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = fmax(float4(r1), float4(r0));\n    return output;\n}\n//MD5=03194d2d:d20b76be:1b007e7e:6478a81a\n//SIG=00400000:00000003:00000003:00000003:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002c8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = fmax(r1, r0);\n    return output;\n}\n//MD5=171e71e1:20e2dcdc:551a9dc4:7e3e5749\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000245\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = max(r1, r0);\n}\n//MD5=e85b8e93:7e9743a9:dad95728:be4f740e\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_260065C28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344AF0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_260065D68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260065DB0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260065DA8);
}

uint64_t LiHeProgramMaxBlend::BindTexture(LiHeProgramMaxBlend *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t LiHeProgramMaxBlend::RenderTile(LiHeProgramMaxBlend *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 26);
    v8 = *(a2 + 12);
    v9 = 16 * *(a2 + 22);
    v10 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v14 = vmaxq_f32(*(v6 + v12 - 16), *(v8 + v12 - 16));
          v15 = vmaxq_f32(*(v6 + v12), *(v8 + v12));
          v16 = vmaxq_f32(*(v6 + v12 + 16), *(v8 + v12 + 16));
          v17 = (v5 + v12);
          v17[-2] = vmaxq_f32(*(v6 + v12 - 32), *(v8 + v12 - 32));
          v17[-1] = v14;
          *v17 = v15;
          v17[1] = v16;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          *(v5 + 16 * v11) = vmaxq_f32(*(v6 + 16 * v11), *(v8 + 16 * v11));
          ++v11;
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v6 += v9;
      v5 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeProgramMaxBlend::GetDOD(LiHeProgramMaxBlend *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeProgramMaxBlend::GetROI(LiHeProgramMaxBlend *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeProgramMaxBlend::LiHeProgramMaxBlend(LiHeProgramMaxBlend *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872763A8;
  operator new();
}

void LiHeProgramMaxBlend::~LiHeProgramMaxBlend(HGNode *this)
{
  *this = &unk_2872763A8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);
}

{
  LiHeProgramMaxBlend::~LiHeProgramMaxBlend(this);

  HGObject::operator delete(v1);
}

const char *LiHeProgramPointLightStencil::GetProgram(LiHeProgramPointLightStencil *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004a7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 9.999999747e-06, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0 = frag._texCoord1.yyyy*hg_Params[3];\n    s0 = frag._texCoord1.xxxx*hg_Params[2] + s0;\n    s0 = frag._texCoord1.zzzz*hg_Params[4] + s0;\n    s1 = s0 + hg_Params[5];\n    s0.x = float(s0.w < -hg_Params[5].w);\n    s0.y = fmax(s1.w, float(c0.y));\n    s0.z = fmin(s1.w, -float(c0.y));\n    s0.x = select(s0.y, s0.z, -s0.x < 0.00000h);\n    s0.x = 1.00000f / s0.x;\n    s0.xyz = -s1.xyz*s0.xxx + hg_Params[0].xyz;\n    s0.xyz = normalize(s0.xyz).xyz;\n    s0.x = dot(s0.xyz, hg_Params[1].xyz);\n    s0.x = float(s0.x >= float(c0.x));\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0)*s0.xxxx;\n    return output;\n}\n//MD5=f3248f7c:e2089f42:fd62fa93:ddb2264e\n//SIG=00400000:00000001:00000001:00000001:0001:0006:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000477\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 9.999999747e-06, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = frag._texCoord1.yyyy*hg_Params[3];\n    r0 = frag._texCoord1.xxxx*hg_Params[2] + r0;\n    r0 = frag._texCoord1.zzzz*hg_Params[4] + r0;\n    r1 = r0 + hg_Params[5];\n    r0.x = float(r0.w < -hg_Params[5].w);\n    r0.y = fmax(r1.w, c0.y);\n    r0.z = fmin(r1.w, -c0.y);\n    r0.x = select(r0.y, r0.z, -r0.x < 0.00000f);\n    r0.x = 1.00000f / r0.x;\n    r0.xyz = -r1.xyz*r0.xxx + hg_Params[0].xyz;\n    r0.xyz = normalize(r0.xyz).xyz;\n    r0.x = dot(r0.xyz, hg_Params[1].xyz);\n    r0.x = float(r0.x >= c0.x);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r1*r0.xxxx;\n    return output;\n}\n//MD5=186997ae:552a6b82:5d8d19fb:5c377193\n//SIG=00000000:00000001:00000001:00000000:0001:0006:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000520\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 9.999999747e-06, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0 = hg_TexCoord1.yyyy*hg_ProgramLocal3;\n    r0 = hg_TexCoord1.xxxx*hg_ProgramLocal2 + r0;\n    r0 = hg_TexCoord1.zzzz*hg_ProgramLocal4 + r0;\n    r1 = r0 + hg_ProgramLocal5;\n    r0.x = float(r0.w < -hg_ProgramLocal5.w);\n    r0.y = max(r1.w, c0.y);\n    r0.z = min(r1.w, -c0.y);\n    r0.x = -r0.x < 0.00000 ? r0.z : r0.y;\n    r0.x = 1.00000 / r0.x;\n    r0.xyz = -r1.xyz*r0.xxx + hg_ProgramLocal0.xyz;\n    r0.xyz = normalize(r0.xyz).xyz;\n    r0.x = dot(r0.xyz, hg_ProgramLocal1.xyz);\n    r0.x = float(r0.x >= c0.x);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r1*r0.xxxx;\n}\n//MD5=be7527a7:0daf95f9:c43730d9:cece744b\n//SIG=00000000:00000001:00000001:00000000:0001:0006:0002:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_2600662E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260346000;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_260066424(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26006646C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260066464);
}

uint64_t LiHeProgramPointLightStencil::BindTexture(LiHeProgramPointLightStencil *this, HGHandler *a2, int a3)
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

uint64_t LiHeProgramPointLightStencil::Bind(LiHeProgramPointLightStencil *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeProgramPointLightStencil::RenderTile(LiHeProgramPointLightStencil *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = a2[2];
    v7 = a2[10];
    *v8.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v8.i64[1] = 0x3F80000000000000;
    v9 = 16 * a2[3].i32[0];
    v10 = 16 * a2[11].i32[0];
    do
    {
      if (v5 < 3)
      {
        v12 = 0;
        v14 = v8;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = v5;
        v14 = v8;
        do
        {
          v15 = vaddq_f32(v14, xmmword_2603429B0);
          v16 = vaddq_f32(v15, xmmword_2603429B0);
          v17 = *(this + 51);
          v19 = *(v17 + 32);
          v18 = *(v17 + 48);
          v20 = vaddq_f32(vmulq_lane_f32(v18, *v14.f32, 1), vmulq_n_f32(v19, v14.f32[0]));
          v21 = vaddq_f32(vmulq_lane_f32(v18, *v15.f32, 1), vmulq_n_f32(v19, v15.f32[0]));
          v22 = vaddq_f32(vmulq_lane_f32(v18, *v16.f32, 1), vmulq_n_f32(v19, v16.f32[0]));
          v23 = *(v17 + 64);
          v24 = *(v17 + 80);
          v25 = vaddq_f32(v20, vmulq_laneq_f32(v23, v14, 2));
          v26 = vaddq_f32(v21, vmulq_laneq_f32(v23, v15, 2));
          v27 = vaddq_f32(v22, vmulq_laneq_f32(v23, v16, 2));
          v28 = vaddq_f32(v24, v25);
          v29 = vaddq_f32(v24, v26);
          v30 = vaddq_f32(v24, v27);
          v31 = vnegq_f32(v24);
          v32 = vcgtq_f32(v31, v25);
          v33 = vcgtq_f32(v31, v26);
          v34 = *(v17 + 96);
          v35 = *(v17 + 112);
          v36 = vcgtq_f32(v31, v27);
          v37 = vandq_s8(v34, v32);
          v38 = vandq_s8(v34, v33);
          v39 = vandq_s8(v34, v36);
          v40 = vbslq_s8(v35, vextq_s8(v37, v37, 0xCuLL), vmaxq_f32(vextq_s8(v28, v28, 8uLL), v34));
          v41 = vbslq_s8(v35, vextq_s8(v38, v38, 0xCuLL), vmaxq_f32(vextq_s8(v29, v29, 8uLL), v34));
          v42 = vbslq_s8(v35, vextq_s8(v39, v39, 0xCuLL), vmaxq_f32(vextq_s8(v30, v30, 8uLL), v34));
          v43 = vminq_f32(vrev64q_s32(v28), v34);
          v44 = vminq_f32(vrev64q_s32(v29), v34);
          v45 = vminq_f32(vrev64q_s32(v30), v34);
          v46.i64[0] = v40.i64[0];
          v46.i64[1] = v43.i64[1];
          v47.i64[0] = v41.i64[0];
          v47.i64[1] = v44.i64[1];
          v48.i64[0] = v42.i64[0];
          v48.i64[1] = v45.i64[1];
          v49 = vdupq_laneq_s64(v43, 1).u64[0];
          v50 = vextq_s8(v43, v40, 8uLL);
          v40.i64[1] = v49;
          v51 = vdupq_laneq_s64(v44, 1).u64[0];
          v52 = vextq_s8(v44, v41, 8uLL);
          v41.i64[1] = v51;
          v53 = vdupq_laneq_s64(v45, 1).u64[0];
          v54 = vextq_s8(v45, v42, 8uLL);
          v42.i64[1] = v53;
          v55 = vbslq_s8(vcgtq_f32(v46, v34), v50, vrev64q_s32(v40));
          v56 = vbslq_s8(vcgtq_f32(v47, v34), v52, vrev64q_s32(v41));
          v57 = vbslq_s8(vcgtq_f32(v48, v34), v54, vrev64q_s32(v42));
          v59 = *(v17 + 128);
          v58 = *(v17 + 144);
          v60 = vminq_f32(vmaxq_f32(vrecpeq_f32(v55), v59), v58);
          v61 = vminq_f32(vmaxq_f32(vrecpeq_f32(v56), v59), v58);
          v62 = vminq_f32(vmaxq_f32(vrecpeq_f32(v57), v59), v58);
          v63 = vminq_f32(vmaxq_f32(vmulq_f32(v60, vrecpsq_f32(v55, v60)), v59), v58);
          v64 = vminq_f32(vmaxq_f32(vmulq_f32(v61, vrecpsq_f32(v56, v61)), v59), v58);
          v65 = vminq_f32(vmaxq_f32(vmulq_f32(v62, vrecpsq_f32(v57, v62)), v59), v58);
          v66 = vmulq_n_f32(v28, vmulq_f32(v63, vrecpsq_f32(v55, v63)).f32[0]);
          v67 = *(v17 + 16);
          v68 = vsubq_f32(*v17, v66);
          v69 = vsubq_f32(*v17, vmulq_n_f32(v29, vmulq_f32(v64, vrecpsq_f32(v56, v64)).f32[0]));
          v70 = vsubq_f32(*v17, vmulq_n_f32(v30, vmulq_f32(v65, vrecpsq_f32(v57, v65)).f32[0]));
          v71 = vmulq_f32(v68, v68);
          v72 = vmulq_f32(v69, v69);
          v73 = vmulq_f32(v70, v70);
          v74 = vaddq_f32(vdupq_laneq_s32(v71, 2), vaddq_f32(vdupq_lane_s32(*v71.i8, 0), vdupq_lane_s32(*v71.i8, 1)));
          v75 = vaddq_f32(vdupq_laneq_s32(v72, 2), vaddq_f32(vdupq_lane_s32(*v72.i8, 0), vdupq_lane_s32(*v72.i8, 1)));
          v76 = vaddq_f32(vdupq_laneq_s32(v73, 2), vaddq_f32(vdupq_lane_s32(*v73.i8, 0), vdupq_lane_s32(*v73.i8, 1)));
          v77 = vminq_f32(vrsqrteq_f32(v74), v58);
          v78 = vminq_f32(vrsqrteq_f32(v75), v58);
          v79 = vminq_f32(vrsqrteq_f32(v76), v58);
          v80 = vminq_f32(vmulq_f32(v77, vrsqrtsq_f32(vmulq_f32(v77, v74), v77)), v58);
          v81 = vminq_f32(vmulq_f32(v78, vrsqrtsq_f32(vmulq_f32(v78, v75), v78)), v58);
          v82 = vminq_f32(vmulq_f32(v79, vrsqrtsq_f32(vmulq_f32(v79, v76), v79)), v58);
          v83 = vmulq_f32(v70, vmulq_f32(v82, vrsqrtsq_f32(vmulq_f32(v76, v82), v82)));
          v84 = vmulq_f32(vmulq_f32(v68, vmulq_f32(v80, vrsqrtsq_f32(vmulq_f32(v74, v80), v80))), v67);
          v85 = vmulq_f32(vmulq_f32(v69, vmulq_f32(v81, vrsqrtsq_f32(vmulq_f32(v75, v81), v81))), v67);
          v86 = vmulq_f32(v67, v83);
          v87 = vcgeq_f32(vaddq_f32(vextq_s8(v84, v84, 8uLL), vaddq_f32(v84, vrev64q_s32(v84))), v34);
          v88 = vcgeq_f32(vaddq_f32(vextq_s8(v85, v85, 8uLL), vaddq_f32(v85, vrev64q_s32(v85))), v34);
          v89 = vcgeq_f32(vaddq_f32(vextq_s8(v86, v86, 8uLL), vaddq_f32(v86, vrev64q_s32(v86))), v34);
          v90 = *(v17 + 160);
          v91 = vmulq_n_f32(*(*&v7 + v11 + 16), *vandq_s8(v90, v88).i32);
          v92 = vmulq_n_f32(*(*&v7 + v11 + 32), *vandq_s8(v90, v89).i32);
          v93 = (*&v6 + v11);
          *v93 = vmulq_n_f32(*(*&v7 + v11), *vandq_s8(v90, v87).i32);
          v93[1] = v91;
          v93[2] = v92;
          v14 = vaddq_f32(v16, xmmword_2603429B0);
          v13 -= 3;
          v12 += 3;
          v11 += 48;
        }

        while (v13 > 2);
      }

      if (v12 < v5)
      {
        do
        {
          v94 = *(this + 51);
          v95 = *(v94 + 80);
          v96 = vaddq_f32(vaddq_f32(vmulq_lane_f32(*(v94 + 48), *v14.f32, 1), vmulq_n_f32(*(v94 + 32), v14.f32[0])), vmulq_laneq_f32(*(v94 + 64), v14, 2));
          v97 = vaddq_f32(v95, v96);
          v98 = vcgtq_f32(vnegq_f32(v95), v96);
          v99 = *(v94 + 96);
          v100 = vandq_s8(v99, v98);
          v101 = vbslq_s8(*(v94 + 112), vextq_s8(v100, v100, 0xCuLL), vmaxq_f32(vextq_s8(v97, v97, 8uLL), v99));
          v102 = vminq_f32(vrev64q_s32(v97), v99);
          v103.i64[0] = v101.i64[0];
          v103.i64[1] = v102.i64[1];
          v104 = vdupq_laneq_s64(v102, 1).u64[0];
          v105 = vextq_s8(v102, v101, 8uLL);
          v101.i64[1] = v104;
          v106 = vbslq_s8(vcgtq_f32(v103, v99), v105, vrev64q_s32(v101));
          v107 = *(v94 + 128);
          v108 = *(v94 + 144);
          v109 = vminq_f32(vmaxq_f32(vrecpeq_f32(v106), v107), v108);
          v110 = vminq_f32(vmaxq_f32(vmulq_f32(v109, vrecpsq_f32(v106, v109)), v107), v108);
          v111 = vsubq_f32(*v94, vmulq_n_f32(v97, vmulq_f32(v110, vrecpsq_f32(v106, v110)).f32[0]));
          v112 = vmulq_f32(v111, v111);
          v113 = vaddq_f32(vdupq_laneq_s32(v112, 2), vaddq_f32(vdupq_lane_s32(*v112.i8, 0), vdupq_lane_s32(*v112.i8, 1)));
          v114 = vminq_f32(vrsqrteq_f32(v113), v108);
          v115 = vminq_f32(vmulq_f32(v114, vrsqrtsq_f32(vmulq_f32(v114, v113), v114)), v108);
          v116 = vmulq_f32(*(v94 + 16), vmulq_f32(v111, vmulq_f32(v115, vrsqrtsq_f32(vmulq_f32(v115, v113), v115))));
          *(*&v6 + 16 * v12) = vmulq_n_f32(*(*&v7 + 16 * v12), *vandq_s8(*(v94 + 160), vcgeq_f32(vaddq_f32(vextq_s8(v116, v116, 8uLL), vaddq_f32(v116, vrev64q_s32(v116))), v99)).i32);
          v14 = vaddq_f32(v14, xmmword_2603429B0);
          ++v12;
        }

        while (v12 < v5);
      }

      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      *&v6 += v9;
      *&v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeProgramPointLightStencil::GetDOD(LiHeProgramPointLightStencil *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t LiHeProgramPointLightStencil::GetROI(LiHeProgramPointLightStencil *this, HGRenderer *a2, int a3, HGRect a4)
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

void LiHeProgramPointLightStencil::LiHeProgramPointLightStencil(LiHeProgramPointLightStencil *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287276610;
  operator new();
}

void LiHeProgramPointLightStencil::~LiHeProgramPointLightStencil(HGNode *this)
{
  *this = &unk_287276610;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40C3A7E6FCLL);
  }

  HGNode::~HGNode(this);
}

{
  LiHeProgramPointLightStencil::~LiHeProgramPointLightStencil(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeProgramPointLightStencil::SetParameter(LiHeProgramPointLightStencil *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 5)
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

uint64_t LiHeProgramPointLightStencil::GetParameter(LiHeProgramPointLightStencil *this, unsigned int a2, float *a3)
{
  if (a2 > 5)
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

const char *LiHeProgramRGBAdditionNode::GetProgram(LiHeProgramRGBAdditionNode *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000322\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = float3(r1.xyz) + float3(r0.xyz);\n    output.color0.w = fmax(float(r1.w), float(r0.w));\n    return output;\n}\n//MD5=b4e4d934:d319af5c:a0e8018d:4fdadd31\n//SIG=00400000:00000003:00000003:00000003:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002f7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = r1.xyz + r0.xyz;\n    output.color0.w = fmax(r1.w, r0.w);\n    return output;\n}\n//MD5=99a00e71:87dec5e5:0a7a34fb:fe9db88a\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000273\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor.xyz = r1.xyz + r0.xyz;\n    gl_FragColor.w = max(r1.w, r0.w);\n}\n//MD5=492545fd:3a9a64b4:fbc44298:ccb0ccd5\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_260066F94(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344AF0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_2600670D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26006711C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260067114);
}

uint64_t LiHeProgramRGBAdditionNode::BindTexture(LiHeProgramRGBAdditionNode *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t LiHeProgramRGBAdditionNode::RenderTile(LiHeProgramRGBAdditionNode *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 26);
    v8 = *(a2 + 12);
    v9 = 16 * *(a2 + 22);
    v10 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v14 = *(v8 + v12 - 32);
          v15 = *(v6 + v12 - 32);
          v16 = vaddq_f32(v14, v15);
          v17 = vmaxq_f32(v15, v14);
          v18 = **(this + 51);
          v19 = vbslq_s8(v18, vmaxq_f32(*(v6 + v12 - 16), *(v8 + v12 - 16)), vaddq_f32(*(v8 + v12 - 16), *(v6 + v12 - 16)));
          v20 = vbslq_s8(v18, vmaxq_f32(*(v6 + v12), *(v8 + v12)), vaddq_f32(*(v8 + v12), *(v6 + v12)));
          v21 = vbslq_s8(v18, vmaxq_f32(*(v6 + v12 + 16), *(v8 + v12 + 16)), vaddq_f32(*(v8 + v12 + 16), *(v6 + v12 + 16)));
          v22 = (v5 + v12);
          v22[-2] = vbslq_s8(v18, v17, v16);
          v22[-1] = v19;
          *v22 = v20;
          v22[1] = v21;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          *(v5 + 16 * v11) = vbslq_s8(**(this + 51), vmaxq_f32(*(v6 + 16 * v11), *(v8 + 16 * v11)), vaddq_f32(*(v8 + 16 * v11), *(v6 + 16 * v11)));
          ++v11;
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v6 += v9;
      v5 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeProgramRGBAdditionNode::GetDOD(LiHeProgramRGBAdditionNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeProgramRGBAdditionNode::GetROI(LiHeProgramRGBAdditionNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeProgramRGBAdditionNode::LiHeProgramRGBAdditionNode(LiHeProgramRGBAdditionNode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287276878;
  operator new();
}

void LiHeProgramRGBAdditionNode::~LiHeProgramRGBAdditionNode(HGNode *this)
{
  *this = &unk_287276878;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  LiHeProgramRGBAdditionNode::~LiHeProgramRGBAdditionNode(this);

  HGObject::operator delete(v1);
}

const char *LiHeProgramSpotLightStencil::GetProgram(LiHeProgramSpotLightStencil *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000078a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 9.999999747e-06, -2.000000000, 3.000000000);\n    const half4 c1 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0 = frag._texCoord1.yyyy*hg_Params[6];\n    s0 = frag._texCoord1.xxxx*hg_Params[5] + s0;\n    s0 = frag._texCoord1.zzzz*hg_Params[7] + s0;\n    s1 = s0 + hg_Params[8];\n    r0.w = half(hg_Params[3].x) - half(hg_Params[4].x);\n    s0.x = float(s0.w < -hg_Params[8].w);\n    s0.y = fmax(s1.w, float(c0.y));\n    s0.z = fmin(s1.w, -float(c0.y));\n    s0.x = select(s0.y, s0.z, -s0.x < 0.00000h);\n    s0.x = 1.00000f / s0.x;\n    s0.xyz = -s1.xyz*s0.xxx + hg_Params[0].xyz;\n    s0.xyz = normalize(s0.xyz).xyz;\n    s0.w = dot(-s0.xyz, hg_Params[2].xyz);\n    r0.x = half(half(s0.w) < half(hg_Params[4].x));\n    r0.y = half(half(s0.w) < half(hg_Params[3].x));\n    r0.x = half(-r0.x >= c0.x);\n    r0.z = fmin(r0.x, r0.y);\n    r0.y = half(-r0.y >= c0.x);\n    r0.x = fmin(r0.x, r0.y);\n    s0.x = dot(s0.xyz, hg_Params[1].xyz);\n    s0.w = s0.w - hg_Params[4].x;\n    s0.w = clamp(s0.w/float(r0.w), 0.00000f, 1.00000f);\n    r0.w = half(s0.w)*c0.z + c0.w;\n    s0.w = s0.w*s0.w;\n    s0.w = s0.w*float(r0.w);\n    s0.w = select(float(c0.x), s0.w, -float(r0.z) < 0.00000h);\n    r0.x = select(half(s0.w), c1.x, -r0.x < 0.00000h);\n    r0.y = half(half(s0.x) >= c0.x);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s1 = float4(r1)*float4(r0.xxxx);\n    output.color0 = s1*float4(r0.yyyy);\n    return output;\n}\n//MD5=0c6af7d6:4256c98c:dfc94b14:08c886b1\n//SIG=00400000:00000001:00000001:00000001:0002:0009:0004:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000706\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 9.999999747e-06, -2.000000000, 3.000000000);\n    const float4 c1 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = frag._texCoord1.yyyy*hg_Params[6];\n    r0 = frag._texCoord1.xxxx*hg_Params[5] + r0;\n    r0 = frag._texCoord1.zzzz*hg_Params[7] + r0;\n    r1 = r0 + hg_Params[8];\n    r2.w = hg_Params[3].x - hg_Params[4].x;\n    r0.x = float(r0.w < -hg_Params[8].w);\n    r0.y = fmax(r1.w, c0.y);\n    r0.z = fmin(r1.w, -c0.y);\n    r0.x = select(r0.y, r0.z, -r0.x < 0.00000f);\n    r0.x = 1.00000f / r0.x;\n    r0.xyz = -r1.xyz*r0.xxx + hg_Params[0].xyz;\n    r0.xyz = normalize(r0.xyz).xyz;\n    r0.w = dot(-r0.xyz, hg_Params[2].xyz);\n    r2.x = float(r0.w < hg_Params[4].x);\n    r2.y = float(r0.w < hg_Params[3].x);\n    r2.x = float(-r2.x >= c0.x);\n    r2.z = fmin(r2.x, r2.y);\n    r2.y = float(-r2.y >= c0.x);\n    r2.x = fmin(r2.x, r2.y);\n    r0.x = dot(r0.xyz, hg_Params[1].xyz);\n    r0.w = r0.w - hg_Params[4].x;\n    r0.w = clamp(r0.w/r2.w, 0.00000f, 1.00000f);\n    r2.w = r0.w*c0.z + c0.w;\n    r0.w = r0.w*r0.w;\n    r0.w = r0.w*r2.w;\n    r0.w = select(c0.x, r0.w, -r2.z < 0.00000f);\n    r2.x = select(r0.w, c1.x, -r2.x < 0.00000f);\n    r2.y = float(r0.x >= c0.x);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r1*r2.xxxx;\n    output.color0 = r1*r2.yyyy;\n    return output;\n}\n//MD5=9f87ae4d:9343216d:64112ba7:a3753792\n//SIG=00000000:00000001:00000001:00000000:0002:0009:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000826\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 9.999999747e-06, -2.000000000, 3.000000000);\n    const highp vec4 c1 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = hg_TexCoord1.yyyy*hg_ProgramLocal6;\n    r0 = hg_TexCoord1.xxxx*hg_ProgramLocal5 + r0;\n    r0 = hg_TexCoord1.zzzz*hg_ProgramLocal7 + r0;\n    r1 = r0 + hg_ProgramLocal8;\n    r2.w = hg_ProgramLocal3.x - hg_ProgramLocal4.x;\n    r0.x = float(r0.w < -hg_ProgramLocal8.w);\n    r0.y = max(r1.w, c0.y);\n    r0.z = min(r1.w, -c0.y);\n    r0.x = -r0.x < 0.00000 ? r0.z : r0.y;\n    r0.x = 1.00000 / r0.x;\n    r0.xyz = -r1.xyz*r0.xxx + hg_ProgramLocal0.xyz;\n    r0.xyz = normalize(r0.xyz).xyz;\n    r0.w = dot(-r0.xyz, hg_ProgramLocal2.xyz);\n    r2.x = float(r0.w < hg_ProgramLocal4.x);\n    r2.y = float(r0.w < hg_ProgramLocal3.x);\n    r2.x = float(-r2.x >= c0.x);\n    r2.z = min(r2.x, r2.y);\n    r2.y = float(-r2.y >= c0.x);\n    r2.x = min(r2.x, r2.y);\n    r0.x = dot(r0.xyz, hg_ProgramLocal1.xyz);\n    r0.w = r0.w - hg_ProgramLocal4.x;\n    r0.w = clamp(r0.w/r2.w, 0.00000, 1.00000);\n    r2.w = r0.w*c0.z + c0.w;\n    r0.w = r0.w*r0.w;\n    r0.w = r0.w*r2.w;\n    r0.w = -r2.z < 0.00000 ? r0.w : c0.x;\n    r2.x = -r2.x < 0.00000 ? c1.x : r0.w;\n    r2.y = float(r0.x >= c0.x);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = r1*r2.xxxx;\n    gl_FragColor = r1*r2.yyyy;\n}\n//MD5=9366bdf4:502f0aa6:50468ebd:79856a20\n//SIG=00000000:00000001:00000001:00000000:0002:0009:0003:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_26006769C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_2603459A0;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_2600677DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260067824()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26006781CLL);
}

uint64_t LiHeProgramSpotLightStencil::BindTexture(LiHeProgramSpotLightStencil *this, HGHandler *a2, int a3)
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

uint64_t LiHeProgramSpotLightStencil::Bind(LiHeProgramSpotLightStencil *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeProgramSpotLightStencil::RenderTile(LiHeProgramSpotLightStencil *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = a2[2];
    *v7.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v7.i64[1] = 0x3F80000000000000;
    v8 = a2[10];
    v9 = 16 * a2[3].i32[0];
    v10 = 16 * a2[11].i32[0];
    do
    {
      if (v5 < 2)
      {
        v11 = 0;
        v14 = v7;
      }

      else
      {
        v11 = 0;
        v12 = 16;
        v13 = v5;
        v14 = v7;
        do
        {
          v15 = vaddq_f32(v14, xmmword_2603429B0);
          v16 = *(this + 51);
          v17 = *(v16 + 96);
          v18 = *(v16 + 112);
          v19 = *(v16 + 64);
          v20 = *(v16 + 80);
          v21 = vaddq_f32(vaddq_f32(vmulq_lane_f32(v17, *v14.f32, 1), vmulq_n_f32(v20, v14.f32[0])), vmulq_laneq_f32(v18, v14, 2));
          v22 = vaddq_f32(vaddq_f32(vmulq_lane_f32(v17, *v15.f32, 1), vmulq_n_f32(v20, v15.f32[0])), vmulq_laneq_f32(v18, v15, 2));
          v24 = *(v16 + 128);
          v23 = *(v16 + 144);
          v25 = vaddq_f32(v24, v21);
          v26 = vaddq_f32(v24, v22);
          v27 = vnegq_f32(v24);
          v28 = vandq_s8(v23, vcgtq_f32(v27, v21));
          v29 = vandq_s8(v23, vcgtq_f32(v27, v22));
          v30 = vextq_s8(v28, v28, 0xCuLL);
          v31 = vextq_s8(v29, v29, 0xCuLL);
          v32 = *(v16 + 160);
          v33 = *(v16 + 176);
          v34 = vbslq_s8(v32, v30, vmaxq_f32(vextq_s8(v25, v25, 8uLL), v23));
          v35 = vminq_f32(vrev64q_s32(v25), v23);
          v36 = vminq_f32(vrev64q_s32(v26), v23);
          v37 = vbslq_s8(v32, v31, vmaxq_f32(vextq_s8(v26, v26, 8uLL), v23));
          v38.i64[0] = v34.i64[0];
          v38.i64[1] = v35.i64[1];
          v39.i64[0] = v37.i64[0];
          v39.i64[1] = v36.i64[1];
          v40 = vdupq_laneq_s64(v35, 1).u64[0];
          v41 = vextq_s8(v35, v34, 8uLL);
          v34.i64[1] = v40;
          v42 = vdupq_laneq_s64(v36, 1).u64[0];
          v43 = vextq_s8(v36, v37, 8uLL);
          v37.i64[1] = v42;
          v44 = vbslq_s8(vcgtq_f32(v38, v23), v41, vrev64q_s32(v34));
          v45 = vbslq_s8(vcgtq_f32(v39, v23), v43, vrev64q_s32(v37));
          v46 = *(v16 + 192);
          v47 = *(v16 + 208);
          v48 = vminq_f32(vmaxq_f32(vrecpeq_f32(v44), v33), v46);
          v49 = vminq_f32(vmaxq_f32(vrecpeq_f32(v45), v33), v46);
          v50 = vminq_f32(vmaxq_f32(vmulq_f32(v48, vrecpsq_f32(v44, v48)), v33), v46);
          v51 = vminq_f32(vmaxq_f32(vmulq_f32(v49, vrecpsq_f32(v45, v49)), v33), v46);
          v52 = vmulq_n_f32(v25, vmulq_f32(v50, vrecpsq_f32(v44, v50)).f32[0]);
          v53 = *(v16 + 16);
          v54 = vsubq_f32(*v16, v52);
          v55 = vsubq_f32(*v16, vmulq_n_f32(v26, vmulq_f32(v51, vrecpsq_f32(v45, v51)).f32[0]));
          v56 = vmulq_f32(v54, v54);
          v57 = vmulq_f32(v55, v55);
          v59 = *(v16 + 32);
          v58 = *(v16 + 48);
          v60 = vsubq_f32(v58, v19);
          v61 = vaddq_f32(vdupq_laneq_s32(v56, 2), vaddq_f32(vdupq_lane_s32(*v56.i8, 0), vdupq_lane_s32(*v56.i8, 1)));
          v62 = vaddq_f32(vdupq_laneq_s32(v57, 2), vaddq_f32(vdupq_lane_s32(*v57.i8, 0), vdupq_lane_s32(*v57.i8, 1)));
          v63 = vminq_f32(vrsqrteq_f32(v61), v46);
          v64 = vminq_f32(vrsqrteq_f32(v62), v46);
          v65 = vminq_f32(vmulq_f32(v63, vrsqrtsq_f32(vmulq_f32(v63, v61), v63)), v46);
          v66 = vminq_f32(vmulq_f32(v64, vrsqrtsq_f32(vmulq_f32(v64, v62), v64)), v46);
          v67 = vmulq_f32(v54, vmulq_f32(v65, vrsqrtsq_f32(vmulq_f32(v61, v65), v65)));
          v68 = vmulq_f32(v55, vmulq_f32(v66, vrsqrtsq_f32(vmulq_f32(v62, v66), v66)));
          v69 = vmulq_f32(v59, vnegq_f32(v67));
          v70 = vmulq_f32(v59, vnegq_f32(v68));
          v71 = vbslq_s8(v47, vaddq_f32(vrev64q_s32(v69), vaddq_f32(vextq_s8(v69, v69, 4uLL), vextq_s8(v69, v69, 8uLL))), v67);
          v72 = vbslq_s8(v47, vaddq_f32(vrev64q_s32(v70), vaddq_f32(vextq_s8(v70, v70, 4uLL), vextq_s8(v70, v70, 8uLL))), v68);
          v73 = vextq_s8(v60, v60, 4uLL);
          v74 = *(v16 + 224);
          v75 = *(v16 + 240);
          v76.i64[1] = v73.i64[1];
          v76.i64[0] = vandq_s8(v74, vcgtq_f32(v19, vextq_s8(v71, v71, 0xCuLL))).u64[0];
          v77 = vrev64q_s32(v58);
          v73.i64[0] = vandq_s8(v74, vcgtq_f32(v19, vextq_s8(v72, v72, 0xCuLL))).u64[0];
          v78 = vbslq_s8(v75, vandq_s8(v74, vcgtq_f32(v77, vextq_s8(v71, v71, 8uLL))), v76);
          v79 = vbslq_s8(v75, vandq_s8(v74, vcgtq_f32(v77, vextq_s8(v72, v72, 8uLL))), v73);
          v80 = vbslq_s8(v32, vandq_s8(v74, vcgeq_f32(vnegq_f32(v78), v23)), v78);
          v81 = vbslq_s8(v32, vandq_s8(v74, vcgeq_f32(vnegq_f32(v79), v23)), v79);
          v83 = *(v16 + 256);
          v82 = *(v16 + 272);
          v84 = vbslq_s8(v83, vminq_f32(vextq_s8(v80, v80, 8uLL), vextq_s8(v80, v80, 0xCuLL)), v80);
          v85 = vbslq_s8(v83, vminq_f32(vextq_s8(v81, v81, 8uLL), vextq_s8(v81, v81, 0xCuLL)), v81);
          v86 = vbslq_s8(v75, vandq_s8(v74, vcgeq_f32(vnegq_f32(v84), v33)), v84);
          v87 = vbslq_s8(v75, vandq_s8(v74, vcgeq_f32(vnegq_f32(v85), v33)), v85);
          v85.i64[0] = vminq_f32(v86, vrev64q_s32(v86)).u64[0];
          v76.i64[0] = vminq_f32(v87, vrev64q_s32(v87)).u64[0];
          v85.i64[1] = v86.i64[1];
          v76.i64[1] = v87.i64[1];
          v88 = vmulq_f32(v53, v71);
          v89 = vmulq_f32(v53, v72);
          v90 = vaddq_f32(v89, vrev64q_s32(v89));
          v91 = vdupq_laneq_s64(v89, 1);
          v89.i64[0] = vaddq_f32(vdupq_laneq_s64(v88, 1), vaddq_f32(v88, vrev64q_s32(v88))).u64[0];
          v88.i64[0] = vaddq_f32(v91, v90).u64[0];
          v92 = vextq_s8(v19, v19, 4uLL);
          v93 = vsubq_f32(v71, v92);
          v94 = vsubq_f32(v72, v92);
          v72.i64[0] = v89.i64[0];
          v72.i64[1] = v93.i64[1];
          v93.i64[0] = v88.i64[0];
          v93.i64[1] = v94.i64[1];
          v95 = vminq_f32(vmaxq_f32(vrecpeq_f32(v85), v74), v46);
          v96 = vminq_f32(vmaxq_f32(vrecpeq_f32(v76), v74), v46);
          v97 = vminq_f32(vmaxq_f32(vmulq_f32(v95, vrecpsq_f32(v85, v95)), v74), v46);
          v98 = vminq_f32(vmaxq_f32(vmulq_f32(v96, vrecpsq_f32(v76, v96)), v74), v46);
          v99 = vminq_f32(vmaxq_f32(vmulq_f32(v72, vmulq_f32(v97, vrecpsq_f32(v85, v97))), v33), v23);
          v100 = vminq_f32(vmaxq_f32(vmulq_f32(v93, vmulq_f32(v98, vrecpsq_f32(v76, v98))), v33), v23);
          v98.i64[0] = v89.i64[0];
          v98.i64[1] = v99.i64[1];
          v74.i64[0] = v88.i64[0];
          v74.i64[1] = v100.i64[1];
          v101 = *(v16 + 288);
          v102 = vbslq_s8(v47, vaddq_f32(v82, vmulq_f32(v98, v101)), v85);
          v103 = vbslq_s8(v47, vaddq_f32(v82, vmulq_f32(v74, v101)), v76);
          v89.i64[1] = vbslq_s8(vcgtq_f32(vrev64q_s32(*&v102), v33), vmulq_f32(vmulq_f32(v99, v99), v102), *&v33).i64[1];
          v88.i64[1] = vbslq_s8(vcgtq_f32(vrev64q_s32(*&v103), v33), vmulq_f32(vmulq_f32(v100, v100), v103), *&v33).i64[1];
          v100.i64[0] = vbslq_s8(v32, vbslq_s8(vcgtq_f32(v102, v82), v101, vextq_s8(v89, v89, 0xCuLL)), vrev64q_s32(vandq_s8(v101, vcgeq_f32(v89, v82)))).u64[0];
          v32.i64[0] = vbslq_s8(v32, vbslq_s8(vcgtq_f32(v103, v82), v101, vextq_s8(v88, v88, 0xCuLL)), vrev64q_s32(vandq_s8(v101, vcgeq_f32(v88, v82)))).u64[0];
          v104 = vmulq_lane_f32(vmulq_n_f32(*(*&v8 + v12), *v32.i32), *v32.i8, 1);
          v105 = (*&v6 + v12);
          v105[-1] = vmulq_lane_f32(vmulq_n_f32(*(*&v8 + v12 - 16), v100.f32[0]), *v100.f32, 1);
          *v105 = v104;
          v14 = vaddq_f32(v15, xmmword_2603429B0);
          v13 -= 2;
          v11 += 2;
          v12 += 32;
        }

        while (v13 > 1);
      }

      if (v11 < v5)
      {
        v106 = *(this + 51);
        v107 = *(v106 + 64);
        v108 = vaddq_f32(vaddq_f32(vmulq_lane_f32(*(v106 + 96), *v14.f32, 1), vmulq_n_f32(*(v106 + 80), v14.f32[0])), vmulq_laneq_f32(*(v106 + 112), v14, 2));
        v110 = *(v106 + 128);
        v109 = *(v106 + 144);
        v111 = vaddq_f32(v110, v108);
        v112 = vandq_s8(v109, vcgtq_f32(vnegq_f32(v110), v108));
        v113 = vextq_s8(v112, v112, 0xCuLL);
        v114 = *(v106 + 160);
        v115 = *(v106 + 176);
        v116 = vbslq_s8(v114, v113, vmaxq_f32(vextq_s8(v111, v111, 8uLL), v109));
        v117 = vminq_f32(vrev64q_s32(v111), v109);
        v118.i64[0] = v116.i64[0];
        v118.i64[1] = v117.i64[1];
        v119 = *(v106 + 48);
        v120 = vsubq_f32(v119, v107);
        v121 = vdupq_laneq_s64(v117, 1).u64[0];
        v122 = vextq_s8(v117, v116, 8uLL);
        v116.i64[1] = v121;
        v123 = vextq_s8(v120, v120, 4uLL);
        v124 = vbslq_s8(vcgtq_f32(v118, v109), v122, vrev64q_s32(v116));
        v126 = *(v106 + 192);
        v125 = *(v106 + 208);
        v127 = vminq_f32(vmaxq_f32(vrecpeq_f32(v124), v115), v126);
        v128 = vminq_f32(vmaxq_f32(vmulq_f32(v127, vrecpsq_f32(v124, v127)), v115), v126);
        v129 = vsubq_f32(*v106, vmulq_n_f32(v111, vmulq_f32(v128, vrecpsq_f32(v124, v128)).f32[0]));
        v130 = vmulq_f32(v129, v129);
        v131 = vaddq_f32(vdupq_laneq_s32(v130, 2), vaddq_f32(vdupq_lane_s32(*v130.i8, 0), vdupq_lane_s32(*v130.i8, 1)));
        v132 = vminq_f32(vrsqrteq_f32(v131), v126);
        v133 = vminq_f32(vmulq_f32(v132, vrsqrtsq_f32(vmulq_f32(v132, v131), v132)), v126);
        v134 = vmulq_f32(v129, vmulq_f32(v133, vrsqrtsq_f32(vmulq_f32(v133, v131), v133)));
        v135 = vmulq_f32(*(v106 + 32), vnegq_f32(v134));
        v136 = vbslq_s8(v125, vaddq_f32(vrev64q_s32(v135), vaddq_f32(vextq_s8(v135, v135, 4uLL), vextq_s8(v135, v135, 8uLL))), v134);
        v137 = *(v106 + 224);
        v138 = *(v106 + 240);
        v123.i64[0] = vandq_s8(v137, vcgtq_f32(v107, vextq_s8(v136, v136, 0xCuLL))).u64[0];
        v139 = vbslq_s8(v138, vandq_s8(v137, vcgtq_f32(vrev64q_s32(v119), vextq_s8(v136, v136, 8uLL))), v123);
        v140 = vbslq_s8(v114, vandq_s8(v137, vcgeq_f32(vnegq_f32(v139), v109)), v139);
        v141 = *(v106 + 272);
        v142 = vbslq_s8(*(v106 + 256), vminq_f32(vextq_s8(v140, v140, 8uLL), vextq_s8(v140, v140, 0xCuLL)), v140);
        v143 = vbslq_s8(v138, vandq_s8(v137, vcgeq_f32(vnegq_f32(v142), v115)), v142);
        v123.i64[0] = vminq_f32(v143, vrev64q_s32(v143)).u64[0];
        v123.i64[1] = v143.i64[1];
        v144 = vmulq_f32(*(v106 + 16), v136);
        v144.i64[0] = vaddq_f32(vdupq_laneq_s64(v144, 1), vaddq_f32(v144, vrev64q_s32(v144))).u64[0];
        v111.i64[0] = v144.i64[0];
        v111.i64[1] = vsubq_f32(v136, vextq_s8(*&v107, *&v107, 4uLL)).i64[1];
        v145 = vminq_f32(vmaxq_f32(vrecpeq_f32(v123), v137), v126);
        v146 = vminq_f32(vmaxq_f32(vmulq_f32(v145, vrecpsq_f32(v123, v145)), v137), v126);
        v147 = vminq_f32(vmaxq_f32(vmulq_f32(vmulq_f32(v146, vrecpsq_f32(v123, v146)), v111), v115), v109);
        v146.i64[0] = v144.i64[0];
        v146.i64[1] = v147.i64[1];
        v148 = *(v106 + 288);
        v149 = vbslq_s8(v125, vaddq_f32(v141, vmulq_f32(v146, v148)), v123);
        v144.i64[1] = vbslq_s8(vcgtq_f32(vrev64q_s32(*&v149), v115), vmulq_f32(vmulq_f32(v147, v147), v149), *&v115).i64[1];
        v114.i64[0] = vbslq_s8(v114, vbslq_s8(vcgtq_f32(v149, v141), v148, vextq_s8(v144, v144, 0xCuLL)), vrev64q_s32(vandq_s8(v148, vcgeq_f32(v144, v141)))).u64[0];
        *(*&v6 + 16 * v11) = vmulq_lane_f32(vmulq_n_f32(*(*&v8 + 16 * v11), *v114.i32), *v114.i8, 1);
      }

      v7 = vaddq_f32(v7, xmmword_2603429C0);
      *&v8 += v10;
      *&v6 += v9;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeProgramSpotLightStencil::GetDOD(LiHeProgramSpotLightStencil *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t LiHeProgramSpotLightStencil::GetROI(LiHeProgramSpotLightStencil *this, HGRenderer *a2, int a3, HGRect a4)
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

void LiHeProgramSpotLightStencil::LiHeProgramSpotLightStencil(LiHeProgramSpotLightStencil *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287276AE0;
  operator new();
}

void LiHeProgramSpotLightStencil::~LiHeProgramSpotLightStencil(HGNode *this)
{
  *this = &unk_287276AE0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FDACBBE0);
  }

  HGNode::~HGNode(this);
}

{
  LiHeProgramSpotLightStencil::~LiHeProgramSpotLightStencil(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeProgramSpotLightStencil::SetParameter(LiHeProgramSpotLightStencil *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 8)
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

uint64_t LiHeProgramSpotLightStencil::GetParameter(LiHeProgramSpotLightStencil *this, unsigned int a2, float *a3)
{
  if (a2 > 8)
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

const char *LiHeReflectionShader::GetProgram(LiHeReflectionShader *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003bc\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0].xxxx);\n    r1 = r1*half4(hg_Params[0].yyyy);\n    r2 = c0.xxxx - r1.wwww;\n    r1 = r1*r0.wwww;\n    output.color0 = float4(r0)*float4(r2) + float4(r1);\n    return output;\n}\n//MD5=a3de96a9:0da5fe21:d01c01a5:5596c784\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000038b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0].xxxx;\n    r1 = r1*hg_Params[0].yyyy;\n    r2 = c0.xxxx - r1.wwww;\n    r1 = r1*r0.wwww;\n    output.color0 = r0*r2 + r1;\n    return output;\n}\n//MD5=decc026a:4c0f49d4:4af9b62c:3edbd803\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000033e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0.xxxx;\n    r1 = r1*hg_ProgramLocal0.yyyy;\n    r2 = c0.xxxx - r1.wwww;\n    r1 = r1*r0.wwww;\n    gl_FragColor = r0*r2 + r1;\n}\n//MD5=a1320015:d5a104c3:60e25e8f:8b0a3e1c\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_260068664(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_2600687A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_2600687EC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x2600687E4);
}

uint64_t LiHeReflectionShader::BindTexture(LiHeReflectionShader *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t LiHeReflectionShader::Bind(LiHeReflectionShader *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeReflectionShader::RenderTile(LiHeReflectionShader *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 12);
    v7 = 16 * *(a2 + 22);
    v8 = *(a2 + 10);
    v9 = 16 * *(a2 + 26);
    v10 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v14 = *(this + 51);
          v15 = *v14[2].f32;
          v16 = vmulq_n_f32(*(v8 + v12 - 32), COERCE_FLOAT(*v14->f32));
          v17 = vmulq_n_f32(*(v8 + v12 - 16), COERCE_FLOAT(*v14->f32));
          v18 = vmulq_n_f32(*(v8 + v12), COERCE_FLOAT(*v14->f32));
          v19 = vmulq_n_f32(*(v8 + v12 + 16), COERCE_FLOAT(*v14->f32));
          v20 = vmulq_lane_f32(*(v6 + v12 - 32), *v14, 1);
          v21 = vmulq_lane_f32(*(v6 + v12 - 16), *v14, 1);
          v22 = vmulq_lane_f32(*(v6 + v12), *v14, 1);
          v23 = vmulq_lane_f32(*(v6 + v12 + 16), *v14, 1);
          v24 = (v5 + v12);
          v24[-2] = vaddq_f32(vmulq_laneq_f32(v20, v16, 3), vmulq_f32(v16, vsubq_f32(v15, vdupq_laneq_s32(v20, 3))));
          v24[-1] = vaddq_f32(vmulq_laneq_f32(v21, v17, 3), vmulq_f32(v17, vsubq_f32(v15, vdupq_laneq_s32(v21, 3))));
          *v24 = vaddq_f32(vmulq_laneq_f32(v22, v18, 3), vmulq_f32(v18, vsubq_f32(v15, vdupq_laneq_s32(v22, 3))));
          v24[1] = vaddq_f32(vmulq_laneq_f32(v23, v19, 3), vmulq_f32(v19, vsubq_f32(v15, vdupq_laneq_s32(v23, 3))));
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v25 = *(this + 51);
          v26 = vmulq_n_f32(*(v8 + 16 * v11), COERCE_FLOAT(*v25));
          v27 = vmulq_lane_f32(*(v6 + 16 * v11), *v25->f32, 1);
          *(v5 + 16 * v11++) = vaddq_f32(vmulq_laneq_f32(v27, v26, 3), vmulq_f32(v26, vsubq_f32(v25[1], vdupq_laneq_s32(v27, 3))));
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v6 += v9;
      v5 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeReflectionShader::GetDOD(LiHeReflectionShader *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeReflectionShader::GetROI(LiHeReflectionShader *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeReflectionShader::LiHeReflectionShader(LiHeReflectionShader *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287276D48;
  operator new();
}

void LiHeReflectionShader::~LiHeReflectionShader(HGNode *this)
{
  *this = &unk_287276D48;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  LiHeReflectionShader::~LiHeReflectionShader(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeReflectionShader::SetParameter(LiHeReflectionShader *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float LiHeReflectionShader::GetParameter(LiHeReflectionShader *this, int a2, float *a3)
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

const char *LiHeShadowProgramPCSS::GetProgram(LiHeShadowProgramPCSS *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000008b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const half4 c0 = half4(9.999999747e-06, 0.000000000, 0.009999999776, 1.000000000);\n    float4 s0, s1, s2, s3;\n    FragmentOut output;\n\n    s0 = frag._texCoord0.yyyy*hg_Params[1];\n    s0 = frag._texCoord0.xxxx*hg_Params[0] + s0;\n    s0 = frag._texCoord0.zzzz*hg_Params[2] + s0;\n    s0 = hg_Params[3] + s0;\n    s1.x = hg_Params[9].z - s0.z;\n    s1.x = 1.00000f / s1.x;\n    s1.x = -s0.z*s1.x;\n    s1 = mix(s0, hg_Params[9], s1.xxxx);\n    s2 = s1.yyyy*hg_Params[5];\n    s2 = s1.xxxx*hg_Params[4] + s2;\n    s3 = s1.wwww*hg_Params[7];\n    s2 = s1.zzzz*hg_Params[6] + s2;\n    s1 = s2 + s3;\n    s2.x = float(s2.w < -s3.w);\n    s3.x = fmax(s1.w, float(c0.x));\n    s3.z = fmin(s1.w, -float(c0.x));\n    s1.w = float(-fabs(hg_Params[10].x) >= float(c0.y));\n    s2.x = float(-s2.x >= float(c0.y));\n    s3.y = fmin(s1.w, s2.x);\n    s2 = s0.yyyy*hg_Params[5];\n    s0.y = select(s3.z, s3.x, -s3.y < 0.00000h);\n    s2 = s0.xxxx*hg_Params[4] + s2;\n    s3 = s0.wwww*hg_Params[7];\n    s2 = s0.zzzz*hg_Params[6] + s2;\n    s0.x = float(s2.w < -s3.w);\n    s2 = s2 + s3;\n    s0.w = fmax(s2.w, float(c0.x));\n    s3.xyz = s1.xyz/s0.yyy;\n    s2.w = fmin(s2.w, -float(c0.x));\n    s0.x = s1.w*s0.x + -s1.w;\n    s0.x = select(s2.w, s0.w, s0.x < 0.00000h);\n    s2.xyz = s2.xyz/s0.xxx;\n    s0.y = dot(s2.xyz, s2.xyz);\n    s0.w = rsqrt(s0.y);\n    s0.z = -s0.z/hg_Params[6].z;\n    s0.x = dot(s3.xyz, s3.xyz);\n    s0.x = rsqrt(s0.x);\n    s0.yw = 1.00000f / s0.xw;\n    s2.x = s0.w - s0.y;\n    s0.y = float(s0.y < s0.w);\n    s0.x = s0.x*hg_Params[8].x;\n    s2.y = s0.z*float(c0.z);\n    s0.x = s2.x*s0.x;\n    s2.x = s0.z*s2.y;\n    s0.w = s2.x*hg_Params[8].x;\n    s0.z = float(float(c0.y) < s0.z);\n    s0.w = s0.w*float(c0.z);\n    s0.z = s0.z*-hg_Params[10].x;\n    s0.z = select(float(c0.y), s0.w, s0.z < 0.00000h);\n    s0.y = fmin(s0.y, s1.w);\n    output.color0.x = select(s0.z, s0.x, -s0.y < 0.00000h);\n    output.color0.yzw = float3(c0.yyw);\n    return output;\n}\n//MD5=e8f99b28:46547f5f:3f85fdff:3e4ee8e1\n//SIG=00400000:00000000:00000000:00000000:0001:000b:0004:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000866\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(9.999999747e-06, 0.000000000, 0.009999999776, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = frag._texCoord0.yyyy*hg_Params[1];\n    r0 = frag._texCoord0.xxxx*hg_Params[0] + r0;\n    r0 = frag._texCoord0.zzzz*hg_Params[2] + r0;\n    r0 = hg_Params[3] + r0;\n    r1.x = hg_Params[9].z - r0.z;\n    r1.x = 1.00000f / r1.x;\n    r1.x = -r0.z*r1.x;\n    r1 = mix(r0, hg_Params[9], r1.xxxx);\n    r2 = r1.yyyy*hg_Params[5];\n    r2 = r1.xxxx*hg_Params[4] + r2;\n    r3 = r1.wwww*hg_Params[7];\n    r2 = r1.zzzz*hg_Params[6] + r2;\n    r1 = r2 + r3;\n    r2.x = float(r2.w < -r3.w);\n    r3.x = fmax(r1.w, c0.x);\n    r3.z = fmin(r1.w, -c0.x);\n    r1.w = float(-fabs(hg_Params[10].x) >= c0.y);\n    r2.x = float(-r2.x >= c0.y);\n    r3.y = fmin(r1.w, r2.x);\n    r2 = r0.yyyy*hg_Params[5];\n    r0.y = select(r3.z, r3.x, -r3.y < 0.00000f);\n    r2 = r0.xxxx*hg_Params[4] + r2;\n    r3 = r0.wwww*hg_Params[7];\n    r2 = r0.zzzz*hg_Params[6] + r2;\n    r0.x = float(r2.w < -r3.w);\n    r2 = r2 + r3;\n    r0.w = fmax(r2.w, c0.x);\n    r3.xyz = r1.xyz/r0.yyy;\n    r2.w = fmin(r2.w, -c0.x);\n    r0.x = r1.w*r0.x + -r1.w;\n    r0.x = select(r2.w, r0.w, r0.x < 0.00000f);\n    r2.xyz = r2.xyz/r0.xxx;\n    r0.y = dot(r2.xyz, r2.xyz);\n    r0.w = rsqrt(r0.y);\n    r0.z = -r0.z/hg_Params[6].z;\n    r0.x = dot(r3.xyz, r3.xyz);\n    r0.x = rsqrt(r0.x);\n    r0.yw = 1.00000f / r0.xw;\n    r2.x = r0.w - r0.y;\n    r0.y = float(r0.y < r0.w);\n    r0.x = r0.x*hg_Params[8].x;\n    r2.y = r0.z*c0.z;\n    r0.x = r2.x*r0.x;\n    r2.x = r0.z*r2.y;\n    r0.w = r2.x*hg_Params[8].x;\n    r0.z = float(c0.y < r0.z);\n    r0.w = r0.w*c0.z;\n    r0.z = r0.z*-hg_Params[10].x;\n    r0.z = select(c0.y, r0.w, r0.z < 0.00000f);\n    r0.y = fmin(r0.y, r1.w);\n    output.color0.x = select(r0.z, r0.x, -r0.y < 0.00000f);\n    output.color0.yzw = c0.yyw;\n    return output;\n}\n//MD5=8057bd78:20502bc7:2259d772:e60813d5\n//SIG=00000000:00000000:00000000:00000000:0001:000b:0004:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000a13\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nuniform highp vec4 hg_ProgramLocal10;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(9.999999747e-06, 0.000000000, 0.009999999776, 1.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = hg_TexCoord0.yyyy*hg_ProgramLocal1;\n    r0 = hg_TexCoord0.xxxx*hg_ProgramLocal0 + r0;\n    r0 = hg_TexCoord0.zzzz*hg_ProgramLocal2 + r0;\n    r0 = hg_ProgramLocal3 + r0;\n    r1.x = hg_ProgramLocal9.z - r0.z;\n    r1.x = 1.00000 / r1.x;\n    r1.x = -r0.z*r1.x;\n    r1 = mix(r0, hg_ProgramLocal9, r1.xxxx);\n    r2 = r1.yyyy*hg_ProgramLocal5;\n    r2 = r1.xxxx*hg_ProgramLocal4 + r2;\n    r3 = r1.wwww*hg_ProgramLocal7;\n    r2 = r1.zzzz*hg_ProgramLocal6 + r2;\n    r1 = r2 + r3;\n    r2.x = float(r2.w < -r3.w);\n    r3.x = max(r1.w, c0.x);\n    r3.z = min(r1.w, -c0.x);\n    r1.w = float(-abs(hg_ProgramLocal10.x) >= c0.y);\n    r2.x = float(-r2.x >= c0.y);\n    r3.y = min(r1.w, r2.x);\n    r2 = r0.yyyy*hg_ProgramLocal5;\n    r0.y = -r3.y < 0.00000 ? r3.x : r3.z;\n    r2 = r0.xxxx*hg_ProgramLocal4 + r2;\n    r3 = r0.wwww*hg_ProgramLocal7;\n    r2 = r0.zzzz*hg_ProgramLocal6 + r2;\n    r0.x = float(r2.w < -r3.w);\n    r2 = r2 + r3;\n    r0.w = max(r2.w, c0.x);\n    r3.xyz = r1.xyz/r0.yyy;\n    r2.w = min(r2.w, -c0.x);\n    r0.x = r1.w*r0.x + -r1.w;\n    r0.x = r0.x < 0.00000 ? r0.w : r2.w;\n    r2.xyz = r2.xyz/r0.xxx;\n    r0.y = dot(r2.xyz, r2.xyz);\n    r0.w = inversesqrt(r0.y);\n    r0.z = -r0.z/hg_ProgramLocal6.z;\n    r0.x = dot(r3.xyz, r3.xyz);\n    r0.x = inversesqrt(r0.x);\n    r0.yw = vec2(1.00000) / r0.xw;\n    r2.x = r0.w - r0.y;\n    r0.y = float(r0.y < r0.w);\n    r0.x = r0.x*hg_ProgramLocal8.x;\n    r2.y = r0.z*c0.z;\n    r0.x = r2.x*r0.x;\n    r2.x = r0.z*r2.y;\n    r0.w = r2.x*hg_ProgramLocal8.x;\n    r0.z = float(c0.y < r0.z);\n    r0.w = r0.w*c0.z;\n    r0.z = r0.z*-hg_ProgramLocal10.x;\n    r0.z = r0.z < 0.00000 ? r0.w : c0.y;\n    r0.y = min(r0.y, r1.w);\n    gl_FragColor.x = -r0.y < 0.00000 ? r0.x : r0.z;\n    gl_FragColor.yzw = c0.yyw;\n}\n//MD5=591eb457:f8969871:cb49d240:64bc7bae\n//SIG=00000000:00000000:00000000:00000000:0001:000b:0004:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_260068EA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344B10;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_260068FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260068FE4()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260068FDCLL);
}

uint64_t LiHeShadowProgramPCSS::Bind(LiHeShadowProgramPCSS *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*a2 + 144))(a2, 7, *(this + 51) + 112, 1);
  (*(*a2 + 144))(a2, 8, *(this + 51) + 128, 1);
  (*(*a2 + 144))(a2, 9, *(this + 51) + 144, 1);
  (*(*a2 + 144))(a2, 10, *(this + 51) + 160, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeShadowProgramPCSS::RenderTile(LiHeShadowProgramPCSS *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v6.i64[1] = 0x3F80000000000000;
    v7 = xmmword_2603429C0;
    v8 = a2[2];
    v9 = 16 * a2[3].i32[0];
    do
    {
      if (v5 < 2)
      {
        v10 = 0;
        v12 = v6;
      }

      else
      {
        v10 = 0;
        v11 = v5;
        v12 = v6;
        do
        {
          v13 = vaddq_f32(v12, xmmword_2603429B0);
          v14 = *(this + 51);
          v15 = *(v14 + 16);
          v16 = *(v14 + 32);
          v17 = *(v14 + 48);
          v18 = vaddq_f32(v17, vaddq_f32(vaddq_f32(vmulq_lane_f32(v15, *v12.f32, 1), vmulq_n_f32(*v14, v12.f32[0])), vmulq_laneq_f32(v16, v12, 2)));
          v19 = vaddq_f32(v17, vaddq_f32(vaddq_f32(vmulq_lane_f32(v15, *v13.f32, 1), vmulq_n_f32(*v14, v13.f32[0])), vmulq_laneq_f32(v16, v13, 2)));
          v21 = *(v14 + 128);
          v20 = *(v14 + 144);
          v22 = vsubq_f32(v20, v18);
          v23 = vsubq_f32(v20, v19);
          v24 = vextq_s8(v22, v22, 8uLL);
          v25 = vextq_s8(v23, v23, 8uLL);
          v26 = *(v14 + 160);
          v27 = *(v14 + 176);
          v29 = *(v14 + 192);
          v28 = *(v14 + 208);
          v30 = vminq_f32(vmaxq_f32(vrecpeq_f32(v24), v27), v29);
          v31 = vminq_f32(vmaxq_f32(vrecpeq_f32(v25), v27), v29);
          v32 = vminq_f32(vmaxq_f32(vmulq_f32(v30, vrecpsq_f32(v24, v30)), v27), v29);
          v33 = vminq_f32(vmaxq_f32(vmulq_f32(v31, vrecpsq_f32(v25, v31)), v27), v29);
          v34 = vaddq_f32(v18, vmulq_n_f32(v22, vmulq_f32(vmulq_f32(v32, vrecpsq_f32(v24, v32)), vnegq_f32(vdupq_laneq_s32(v18, 2))).f32[0]));
          v35 = vaddq_f32(v19, vmulq_n_f32(v23, vmulq_f32(vmulq_f32(v33, vrecpsq_f32(v25, v33)), vnegq_f32(vdupq_laneq_s32(v19, 2))).f32[0]));
          v37 = *(v14 + 64);
          v36 = *(v14 + 80);
          v38 = *(v14 + 96);
          v39 = *(v14 + 112);
          v40 = vmulq_laneq_f32(v39, v34, 3);
          v41 = vmulq_laneq_f32(v39, v35, 3);
          v42 = vaddq_f32(vmulq_laneq_f32(v38, v34, 2), vaddq_f32(vmulq_lane_f32(v36, *v34.f32, 1), vmulq_n_f32(v37, v34.f32[0])));
          v43 = vaddq_f32(vmulq_laneq_f32(v38, v35, 2), vaddq_f32(vmulq_lane_f32(v36, *v35.f32, 1), vmulq_n_f32(v37, v35.f32[0])));
          v44 = vaddq_f32(v40, v42);
          v45 = vaddq_f32(v41, v43);
          v46 = vandq_s8(v27, vcgtq_f32(vnegq_f32(v40), v42));
          v47 = vandq_s8(v27, vcgtq_f32(vnegq_f32(v41), v43));
          v48.i64[0] = vmaxq_f32(vextq_s8(v44, v44, 0xCuLL), v28).u64[0];
          v49.i64[0] = vmaxq_f32(vextq_s8(v45, v45, 0xCuLL), v28).u64[0];
          v50 = *(v14 + 224);
          v51 = *(v14 + 240);
          v48.i64[1] = vminq_f32(vrev64q_s32(v44), v28).i64[1];
          v53 = *(v14 + 256);
          v52 = *(v14 + 272);
          v54 = vandq_s8(v53, vcgeq_f32(vorrq_s8(v51, v26), v50));
          v55 = vextq_s8(v54, v54, 4uLL);
          v56 = vbslq_s8(v52, v55, v44);
          v49.i64[1] = vminq_f32(vrev64q_s32(v45), v28).i64[1];
          v57 = vbslq_s8(v52, v55, v45);
          v58 = vandq_s8(v53, vcgeq_f32(vnegq_f32(vextq_s8(v47, v47, 0xCuLL)), v50));
          v59 = vextq_s8(v56, v56, 8uLL);
          v60 = vextq_s8(v57, v57, 8uLL);
          v61 = vminq_f32(v59, vrev64q_s32(vandq_s8(v53, vcgeq_f32(vnegq_f32(vextq_s8(v46, v46, 0xCuLL)), v50))));
          v62 = vminq_f32(v60, vrev64q_s32(v58));
          v64 = *(v14 + 288);
          v63 = *(v14 + 304);
          v65 = vbslq_s8(v64, v61, v48);
          v66 = vbslq_s8(v64, v62, v49);
          v67 = vmulq_lane_f32(v36, *v18.f32, 1);
          v68 = vmulq_lane_f32(v36, *v19.f32, 1);
          v69 = vbslq_s8(v64, vbslq_s8(vcgtq_f32(v65, v53), vrev64q_s32(v65), vextq_s8(v65, v65, 4uLL)), v18);
          v70 = vbslq_s8(v64, vbslq_s8(vcgtq_f32(v66, v53), vrev64q_s32(v66), vextq_s8(v66, v66, 4uLL)), v19);
          v71 = vaddq_f32(v67, vmulq_n_f32(v37, v69.f32[0]));
          v72 = vaddq_f32(v68, vmulq_n_f32(v37, v70.f32[0]));
          v73 = vmulq_laneq_f32(v39, v69, 3);
          v74 = vmulq_laneq_f32(v39, v70, 3);
          v75 = vaddq_f32(vmulq_laneq_f32(v38, v69, 2), v71);
          v76 = vaddq_f32(vmulq_laneq_f32(v38, v70, 2), v72);
          v77 = vandq_s8(v53, vcgtq_f32(vnegq_f32(v73), v75));
          v78 = vandq_s8(v53, vcgtq_f32(vnegq_f32(v74), v76));
          v79 = vaddq_f32(v73, v75);
          v80 = vaddq_f32(v74, v76);
          v81 = vbslq_s8(v52, vmaxq_f32(v79, v50), vbslq_s8(v63, vextq_s8(v77, v77, 0xCuLL), v69));
          v82 = vbslq_s8(v52, vmaxq_f32(v80, v50), vbslq_s8(v63, vextq_s8(v78, v78, 0xCuLL), v70));
          v83 = vdupq_lane_s32(*v81.f32, 1);
          v84 = vdupq_lane_s32(*v82.f32, 1);
          v85 = vminq_f32(vmaxq_f32(vrecpeq_f32(v83), v27), v29);
          v86 = vminq_f32(vmaxq_f32(vrecpeq_f32(v84), v27), v29);
          v87 = vmaxq_f32(vmulq_f32(v85, vrecpsq_f32(v83, v85)), v27);
          v89 = *(v14 + 320);
          v88 = *(v14 + 336);
          v90 = vbslq_s8(v52, vminq_f32(v79, v89), v79);
          v91 = vbslq_s8(v52, vminq_f32(v80, v89), v80);
          v92 = vminq_f32(v87, v29);
          v89.i64[0] = vsubq_f32(vmulq_laneq_f32(v81, v56, 3), vextq_s8(v56, v56, 0xCuLL)).u64[0];
          v93 = vminq_f32(vmaxq_f32(vmulq_f32(v86, vrecpsq_f32(v84, v86)), v27), v29);
          v94.i64[0] = vsubq_f32(vmulq_laneq_f32(v82, v57, 3), vextq_s8(v57, v57, 0xCuLL)).u64[0];
          v89.i64[1] = v81.i64[1];
          v94.i64[1] = v82.i64[1];
          v95 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v50, v89), vdupq_laneq_s32(v89, 3), vdupq_laneq_s32(v90, 3)), 0);
          v96 = vmulq_f32(vmulq_f32(v92, vrecpsq_f32(v83, v92)), v56);
          v97 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v50, v94), vdupq_laneq_s32(v94, 3), vdupq_laneq_s32(v91, 3)), 0);
          v98 = vmulq_f32(vmulq_f32(v93, vrecpsq_f32(v84, v93)), v57);
          v99 = vminq_f32(vmaxq_f32(vrecpeq_f32(v95), v27), v29);
          v100 = vminq_f32(vmaxq_f32(vrecpeq_f32(v97), v27), v29);
          v101 = vmaxq_f32(vmulq_f32(v99, vrecpsq_f32(v95, v99)), v27);
          v102 = vmaxq_f32(vmulq_f32(v100, vrecpsq_f32(v97, v100)), v27);
          v103 = vminq_f32(v101, v29);
          v104 = vminq_f32(v102, v29);
          v105 = vmulq_f32(vmulq_f32(v103, vrecpsq_f32(v95, v103)), v90);
          v106 = vmulq_f32(vmulq_f32(v104, vrecpsq_f32(v97, v104)), v91);
          v107 = vmulq_f32(v105, v105);
          v108 = vmulq_f32(v106, v106);
          v109 = vaddq_f32(vextq_s8(v107, v6, 4uLL), vaddq_f32(v107, vrev64q_s32(v107)));
          v110 = vextq_s8(v81, v109, 8uLL);
          v109.i64[1] = v81.i64[1];
          v111 = vaddq_f32(vextq_s8(v108, v6, 4uLL), vaddq_f32(v108, vrev64q_s32(v108)));
          v112 = vextq_s8(v82, v111, 8uLL);
          v111.i64[1] = v82.i64[1];
          v113 = vminq_f32(vrsqrteq_f32(v110), v28);
          v114 = vminq_f32(vrsqrteq_f32(v112), v28);
          v115 = vminq_f32(vmulq_f32(v113, vrsqrtsq_f32(vmulq_f32(v113, v110), v113)), v28);
          v116 = vminq_f32(vmulq_f32(v114, vrsqrtsq_f32(vmulq_f32(v114, v112), v114)), v28);
          v117 = vmulq_f32(v115, vrsqrtsq_f32(vmulq_f32(v115, v110), v115));
          v118 = vmulq_f32(v116, vrsqrtsq_f32(vmulq_f32(v116, v112), v116));
          v119 = vminq_f32(vmaxq_f32(vrecpeq_f32(v38), v53), v29);
          v120 = vminq_f32(vmaxq_f32(vmulq_f32(v119, vrecpsq_f32(v38, v119)), v53), v29);
          v121 = vmulq_f32(v120, vrecpsq_f32(v38, v120));
          v122 = vmulq_f32(v121, vnegq_f32(vbslq_s8(v88, v109, v117)));
          v123 = vmulq_f32(v121, vnegq_f32(vbslq_s8(v88, v111, v118)));
          v124 = vmulq_f32(v96, v96);
          v125 = vmulq_f32(v98, v98);
          v126 = vbslq_s8(v88, v122, v117);
          v124.i64[0] = vaddq_f32(vdupq_laneq_s64(v124, 1), vaddq_f32(v124, vrev64q_s32(v124))).u64[0];
          v117.i64[0] = vaddq_f32(vdupq_laneq_s64(v125, 1), vaddq_f32(v125, vrev64q_s32(v125))).u64[0];
          v124.i64[1] = v126.i64[1];
          v117.i64[1] = vbslq_s8(v88, v123, v118).i64[1];
          v127 = vminq_f32(vrsqrteq_f32(v124), v29);
          v128 = vminq_f32(vrsqrteq_f32(v117), v29);
          v129 = vminq_f32(vmulq_f32(v127, vrsqrtsq_f32(vmulq_f32(v127, v124), v127)), v29);
          v130 = vminq_f32(vmulq_f32(v128, vrsqrtsq_f32(vmulq_f32(v128, v117), v128)), v29);
          v124.i64[0] = vmulq_f32(v129, vrsqrtsq_f32(vmulq_f32(v129, v124), v129)).u64[0];
          v129.i64[0] = vmulq_f32(v130, vrsqrtsq_f32(vmulq_f32(v130, v117), v130)).u64[0];
          v124.i64[1] = v126.i64[1];
          v129.i64[1] = v117.i64[1];
          *v126.f32 = vqtbl1_s8(v124, *v51.f32);
          v117.i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
          *v51.f32 = vqtbl1_s8(v129, *v51.f32);
          *&v126.u32[2] = vqtbl1_s8(v124, *v117.f32);
          *&v51.u32[2] = vqtbl1_s8(v129, *v117.f32);
          v131 = *(v14 + 352);
          v132 = *(v14 + 368);
          v133 = vminq_f32(vmaxq_f32(vrecpeq_f32(v126), v131), v29);
          v134 = vminq_f32(vmaxq_f32(vrecpeq_f32(v51), v131), v29);
          v135 = vminq_f32(vmaxq_f32(vmulq_f32(v133, vrecpsq_f32(v126, v133)), v131), v29);
          v136 = vminq_f32(vmaxq_f32(vmulq_f32(v134, vrecpsq_f32(v51, v134)), v131), v29);
          v137 = vbslq_s8(v132, v124, vmulq_f32(v135, vrecpsq_f32(v126, v135)));
          v138 = vbslq_s8(v132, v129, vmulq_f32(v136, vrecpsq_f32(v51, v136)));
          v139 = vsubq_f32(vextq_s8(v137, v137, 0xCuLL), vrev64q_s32(v137));
          v140 = vsubq_f32(vextq_s8(v138, v138, 0xCuLL), vrev64q_s32(v138));
          v141 = vbslq_s8(v64, vandq_s8(v50, vcgtq_f32(vextq_s8(v137, v137, 8uLL), v137)), v137);
          v142 = vbslq_s8(v64, vandq_s8(v50, vcgtq_f32(vextq_s8(v138, v138, 8uLL), v138)), v138);
          v143 = vbslq_s8(v63, vmulq_f32(v21, v141), v141);
          v144 = vbslq_s8(v63, vmulq_f32(v21, v142), v142);
          v145 = vbslq_s8(v63, v139, vmulq_f32(v28, vextq_s8(v143, v143, 4uLL)));
          v146 = vbslq_s8(v63, v140, vmulq_f32(v28, vextq_s8(v144, v144, 4uLL)));
          v147 = vbslq_s8(v63, vmulq_f32(v143, v145), v141);
          v148 = vbslq_s8(v63, vmulq_f32(v144, v146), v142);
          v149 = vextq_s8(v21, v21, 4uLL);
          v150 = vbslq_s8(v52, vmulq_n_f32(v149, vmulq_laneq_f32(vdupq_lane_s32(*v145.f32, 1), v147, 2).f32[0]), v147);
          v151 = vbslq_s8(v52, vmulq_n_f32(v149, vmulq_laneq_f32(vdupq_lane_s32(*v146.f32, 1), v148, 2).f32[0]), v148);
          v152 = vandq_s8(v50, vcgtq_f32(v151, v131));
          v153 = vbslq_s8(v88, vandq_s8(v50, vcgtq_f32(v150, v131)), v150);
          v154 = *(v14 + 384);
          v155 = *(v14 + 400);
          v156 = vbslq_s8(v88, v152, v151);
          v157 = vbslq_s8(v52, vmulq_f32(v154, v153), v153);
          v158 = vbslq_s8(v52, vmulq_f32(v154, v156), v156);
          v159 = vnegq_f32(vdupq_lane_s32(*v26.i8, 0));
          v160 = vbslq_s8(v88, vmulq_f32(v159, v157), v157);
          v161 = vbslq_s8(v88, vmulq_f32(v159, v158), v158);
          v160.i64[1] = vbslq_s8(vcgtq_f32(v131, v160), vrev64q_s32(*&v160), *&v131).i64[1];
          v161.i64[1] = vbslq_s8(vcgtq_f32(v131, v161), vrev64q_s32(*&v161), *&v131).i64[1];
          v162 = vbslq_s8(v64, vminq_f32(v160, v59), v160);
          v163 = vbslq_s8(v64, vminq_f32(v161, v60), v161);
          v164 = (*&v8 + 16 * v10);
          *v164 = vbslq_s8(v63, vbslq_s8(vcgtq_f32(vrev64q_s32(v162), v131), v162, vextq_s8(v162, v162, 8uLL)), v155);
          v164[1] = vbslq_s8(v63, vbslq_s8(vcgtq_f32(vrev64q_s32(v163), v131), v163, vextq_s8(v163, v163, 8uLL)), v155);
          v12 = vaddq_f32(v13, xmmword_2603429B0);
          v10 += 2;
          v11 -= 2;
        }

        while (v11 > 1);
        v10 = v10;
        v7 = xmmword_2603429C0;
      }

      if (v10 < v5)
      {
        v165 = *(this + 51);
        v166 = vaddq_f32(*(v165 + 48), vaddq_f32(vaddq_f32(vmulq_lane_f32(*(v165 + 16), *v12.f32, 1), vmulq_n_f32(*v165, v12.f32[0])), vmulq_laneq_f32(*(v165 + 32), v12, 2)));
        v167 = *(v165 + 128);
        v168 = vsubq_f32(*(v165 + 144), v166);
        v169 = vextq_s8(v168, v168, 8uLL);
        v170 = *(v165 + 160);
        v171 = *(v165 + 176);
        v173 = *(v165 + 192);
        v172 = *(v165 + 208);
        v174 = vminq_f32(vmaxq_f32(vrecpeq_f32(v169), v171), v173);
        v175 = vminq_f32(vmaxq_f32(vmulq_f32(v174, vrecpsq_f32(v169, v174)), v171), v173);
        v176 = vaddq_f32(v166, vmulq_n_f32(v168, vmulq_f32(vmulq_f32(v175, vrecpsq_f32(v169, v175)), vnegq_f32(vdupq_laneq_s32(v166, 2))).f32[0]));
        v178 = *(v165 + 64);
        v177 = *(v165 + 80);
        v179 = *(v165 + 96);
        v180 = *(v165 + 112);
        v181 = vmulq_laneq_f32(v180, v176, 3);
        v182 = vaddq_f32(vmulq_laneq_f32(v179, v176, 2), vaddq_f32(vmulq_lane_f32(v177, *v176.f32, 1), vmulq_n_f32(v178, v176.f32[0])));
        v183 = vaddq_f32(v181, v182);
        v184 = vandq_s8(v171, vcgtq_f32(vnegq_f32(v181), v182));
        v185.i64[0] = vmaxq_f32(vextq_s8(v183, v183, 0xCuLL), v172).u64[0];
        v185.i64[1] = vminq_f32(vrev64q_s32(v183), v172).i64[1];
        v186 = *(v165 + 224);
        v187 = *(v165 + 240);
        v189 = *(v165 + 256);
        v188 = *(v165 + 272);
        v190 = vandq_s8(v189, vcgeq_f32(vorrq_s8(v187, v170), v186));
        v191 = vbslq_s8(v188, vextq_s8(v190, v190, 4uLL), v183);
        v192 = vextq_s8(v191, v191, 8uLL);
        v194 = *(v165 + 288);
        v193 = *(v165 + 304);
        v195 = vbslq_s8(v194, vminq_f32(v192, vrev64q_s32(vandq_s8(v189, vcgeq_f32(vnegq_f32(vextq_s8(v184, v184, 0xCuLL)), v186)))), v185);
        v196 = vbslq_s8(v194, vbslq_s8(vcgtq_f32(v195, v189), vrev64q_s32(v195), vextq_s8(v195, v195, 4uLL)), v166);
        v197 = vaddq_f32(vmulq_lane_f32(v177, *v166.f32, 1), vmulq_n_f32(v178, v196.f32[0]));
        v198 = vmulq_laneq_f32(v180, v196, 3);
        v199 = vaddq_f32(vmulq_laneq_f32(v179, v196, 2), v197);
        v200 = vandq_s8(v189, vcgtq_f32(vnegq_f32(v198), v199));
        v201 = vaddq_f32(v198, v199);
        v202 = vbslq_s8(v188, vmaxq_f32(v201, v186), vbslq_s8(v193, vextq_s8(v200, v200, 0xCuLL), v196));
        v203 = vdupq_lane_s32(*v202.f32, 1);
        v204 = vminq_f32(vmaxq_f32(vrecpeq_f32(v203), v171), v173);
        v205 = vminq_f32(vmaxq_f32(vmulq_f32(v204, vrecpsq_f32(v203, v204)), v171), v173);
        v206 = vmulq_f32(vmulq_f32(v205, vrecpsq_f32(v203, v205)), v191);
        v207 = *(v165 + 336);
        v185.i64[0] = vsubq_f32(vmulq_laneq_f32(v202, v191, 3), vextq_s8(v191, v191, 0xCuLL)).u64[0];
        v185.i64[1] = v202.i64[1];
        v208 = vbslq_s8(v188, vminq_f32(v201, *(v165 + 320)), v201);
        v209 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v186, v185), vdupq_laneq_s32(v185, 3), vdupq_laneq_s32(v208, 3)), 0);
        v210 = vminq_f32(vmaxq_f32(vrecpeq_f32(v209), v171), v173);
        v211 = vminq_f32(vmaxq_f32(vmulq_f32(v210, vrecpsq_f32(v209, v210)), v171), v173);
        v212 = vmulq_f32(vmulq_f32(v211, vrecpsq_f32(v209, v211)), v208);
        v213 = vmulq_f32(v212, v212);
        v214 = vaddq_f32(vextq_s8(v213, v6, 4uLL), vaddq_f32(v213, vrev64q_s32(v213)));
        v215 = vextq_s8(v202, v214, 8uLL);
        v214.i64[1] = v202.i64[1];
        v216 = vminq_f32(vrsqrteq_f32(v215), v172);
        v217 = vminq_f32(vmulq_f32(v216, vrsqrtsq_f32(vmulq_f32(v216, v215), v216)), v172);
        v218 = vmulq_f32(v217, vrsqrtsq_f32(vmulq_f32(v217, v215), v217));
        v219 = vminq_f32(vmaxq_f32(vrecpeq_f32(v179), v189), v173);
        v220 = vminq_f32(vmaxq_f32(vmulq_f32(v219, vrecpsq_f32(v179, v219)), v189), v173);
        v221 = vbslq_s8(v207, vmulq_f32(vmulq_f32(v220, vrecpsq_f32(v179, v220)), vnegq_f32(vbslq_s8(v207, v214, v218))), v218);
        v222 = vmulq_f32(v206, v206);
        v222.i64[0] = vaddq_f32(vdupq_laneq_s64(v222, 1), vaddq_f32(v222, vrev64q_s32(v222))).u64[0];
        v222.i64[1] = v221.i64[1];
        v223 = vminq_f32(vrsqrteq_f32(v222), v173);
        v224 = vminq_f32(vmulq_f32(v223, vrsqrtsq_f32(vmulq_f32(v223, v222), v223)), v173);
        v222.i64[0] = vmulq_f32(v224, vrsqrtsq_f32(vmulq_f32(v224, v222), v224)).u64[0];
        v222.i64[1] = v221.i64[1];
        *v221.f32 = vqtbl1_s8(v222, *v187.i8);
        *&v221.u32[2] = vqtbl1_s8(v222, *&vextq_s8(v187, v187, 8uLL));
        v225 = *(v165 + 352);
        v226 = vminq_f32(vmaxq_f32(vrecpeq_f32(v221), v225), v173);
        v227 = vminq_f32(vmaxq_f32(vmulq_f32(v226, vrecpsq_f32(v221, v226)), v225), v173);
        v228 = vbslq_s8(*(v165 + 368), v222, vmulq_f32(v227, vrecpsq_f32(v221, v227)));
        v229 = vsubq_f32(vextq_s8(v228, v228, 0xCuLL), vrev64q_s32(v228));
        v230 = vbslq_s8(v194, vandq_s8(v186, vcgtq_f32(vextq_s8(v228, v228, 8uLL), v228)), v228);
        v231 = vbslq_s8(v193, vmulq_f32(v167, v230), v230);
        v232 = vbslq_s8(v193, v229, vmulq_f32(v172, vextq_s8(v231, v231, 4uLL)));
        v233 = vbslq_s8(v193, vmulq_f32(v231, v232), v230);
        v234 = vbslq_s8(v188, vmulq_n_f32(vextq_s8(v167, v167, 4uLL), vmulq_laneq_f32(vdupq_lane_s32(*v232.f32, 1), v233, 2).f32[0]), v233);
        v235 = vbslq_s8(v207, vandq_s8(v186, vcgtq_f32(v234, v225)), v234);
        v236 = vbslq_s8(v188, vmulq_f32(*(v165 + 384), v235), v235);
        v237 = vbslq_s8(v207, vmulq_f32(vnegq_f32(vdupq_lane_s32(*v170.i8, 0)), v236), v236);
        v237.i64[1] = vbslq_s8(vcgtq_f32(v225, v237), vrev64q_s32(*&v237), *&v225).i64[1];
        v238 = vbslq_s8(v194, vminq_f32(v237, v192), v237);
        *(*&v8 + 16 * v10) = vbslq_s8(v193, vbslq_s8(vcgtq_f32(vrev64q_s32(v238), v225), v238, vextq_s8(v238, v238, 8uLL)), *(v165 + 400));
      }

      v6 = vaddq_f32(v6, v7);
      *&v8 += v9;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t LiHeShadowProgramPCSS::GetDOD(LiHeShadowProgramPCSS *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

void LiHeShadowProgramPCSS::LiHeShadowProgramPCSS(LiHeShadowProgramPCSS *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287276FB0;
  operator new();
}

void LiHeShadowProgramPCSS::~LiHeShadowProgramPCSS(HGNode *this)
{
  *this = &unk_287276FB0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C407DC911DDLL);
  }

  HGNode::~HGNode(this);
}

{
  LiHeShadowProgramPCSS::~LiHeShadowProgramPCSS(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeShadowProgramPCSS::SetParameter(LiHeShadowProgramPCSS *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 0xA)
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

uint64_t LiHeShadowProgramPCSS::GetParameter(LiHeShadowProgramPCSS *this, unsigned int a2, float *a3)
{
  if (a2 > 0xA)
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

const char *LiHeShadowProgramSoft::GetProgram(LiHeShadowProgramSoft *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.3333333433);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.y = dot(r0.xyz, 1.00000h);\n    r1.x = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r2.x = r1.x*half(hg_Params[0].w);\n    r1.w = r1.y*c0.w;\n    r1.x = fmin(r1.w, c0.x);\n    r2.y = r2.x*half(hg_Params[0].w);\n    r1.xyz = r1.xxx*half3(hg_Params[0].xyz);\n    r1 = r2.xxxy*r1;\n    r0 = select(r0, r1, -half4(hg_Params[1].xxxx) < 0.00000h);\n    r2.x = c0.x - r2.x;\n    r1.xyz = r2.xxx*r0.xyz + r1.xyz;\n    output.color0.xyz = select(float3(r1.xyz), float3(r0.xyz), -fabs(hg_Params[1].xxx) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=ec1e19ab:fed14f6b:8580d8b4:f7462dfb\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004b6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.3333333433);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.y = dot(r0.xyz, 1.00000f);\n    r1.x = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r2.x = r1.x*hg_Params[0].w;\n    r1.w = r1.y*c0.w;\n    r1.x = fmin(r1.w, c0.x);\n    r2.y = r2.x*hg_Params[0].w;\n    r1.xyz = r1.xxx*hg_Params[0].xyz;\n    r1 = r2.xxxy*r1;\n    r0 = select(r0, r1, -hg_Params[1].xxxx < 0.00000f);\n    r2.x = c0.x - r2.x;\n    r1.xyz = r2.xxx*r0.xyz + r1.xyz;\n    output.color0.xyz = select(r1.xyz, r0.xyz, -fabs(hg_Params[1].xxx) < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=04a4f7a2:b09ba2de:3c1fdedc:8ce5d38c\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000583\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.3333333433);\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.y = dot(r0.xyz, vec3(1.00000));\n    r1.x = texture2D(hg_Texture1, hg_TexCoord1.xy).x;\n    r2.x = r1.x*hg_ProgramLocal0.w;\n    r1.w = r1.y*c0.w;\n    r1.x = min(r1.w, c0.x);\n    r2.y = r2.x*hg_ProgramLocal0.w;\n    r1.xyz = r1.xxx*hg_ProgramLocal0.xyz;\n    r1 = r2.xxxy*r1;\n    r0 = vec4(-hg_ProgramLocal1.x < 0.00000 ? r1.x : r0.x, -hg_ProgramLocal1.x < 0.00000 ? r1.y : r0.y, -hg_ProgramLocal1.x < 0.00000 ? r1.z : r0.z, -hg_ProgramLocal1.x < 0.00000 ? r1.w : r0.w);\n    r2.x = c0.x - r2.x;\n    r1.xyz = r2.xxx*r0.xyz + r1.xyz;\n    gl_FragColor.xyz = vec3(-abs(hg_ProgramLocal1.x) < 0.00000 ? r0.x : r1.x, -abs(hg_ProgramLocal1.x) < 0.00000 ? r0.y : r1.y, -abs(hg_ProgramLocal1.x) < 0.00000 ? r0.z : r1.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=2737da65:6525a9f8:07553ebd:c29f6e0e\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_26006A13C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344940;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26006A27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26006A2C4()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26006A2BCLL);
}

uint64_t LiHeShadowProgramSoft::BindTexture(LiHeShadowProgramSoft *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v4 = a2;
    v5 = 0;
  }

  HGHandler::TexCoord(v4, v5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t LiHeShadowProgramSoft::Bind(LiHeShadowProgramSoft *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeShadowProgramSoft::RenderTile(LiHeShadowProgramSoft *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 12);
    v7 = 16 * *(a2 + 22);
    v8 = *(a2 + 10);
    v9 = 16 * *(a2 + 26);
    v10 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v14 = *(v8 + v12 - 32);
          v15 = *(v8 + v12 - 16);
          v16 = *(v8 + v12);
          v17 = *(v8 + v12 + 16);
          v18 = *(this + 51);
          v20 = *(v18 + 32);
          v19 = *(v18 + 48);
          v21 = vbslq_s8(v20, *(v6 + v12 - 32), vaddq_f32(vextq_s8(v14, v14, 4uLL), vaddq_f32(v14, vrev64q_s32(v14))));
          v22 = vbslq_s8(v20, *(v6 + v12 - 16), vaddq_f32(vextq_s8(v15, v15, 4uLL), vaddq_f32(v15, vrev64q_s32(v15))));
          v23 = vbslq_s8(v20, *(v6 + v12), vaddq_f32(vextq_s8(v16, v16, 4uLL), vaddq_f32(v16, vrev64q_s32(v16))));
          v24 = vbslq_s8(v20, *(v6 + v12 + 16), vaddq_f32(vextq_s8(v17, v17, 4uLL), vaddq_f32(v17, vrev64q_s32(v17))));
          v25 = vmulq_laneq_f32(v21, *v18, 3);
          v26 = vmulq_laneq_f32(v22, *v18, 3);
          v27 = vmulq_laneq_f32(v23, *v18, 3);
          v28 = vextq_s8(v24, v24, 8uLL);
          v29 = vmulq_laneq_f32(v24, *v18, 3);
          v30 = vmulq_f32(v19, vextq_s8(v21, v21, 8uLL));
          v31 = vmulq_f32(v19, vextq_s8(v22, v22, 8uLL));
          v32 = vmulq_f32(v19, vextq_s8(v23, v23, 8uLL));
          v33 = vmulq_f32(v19, v28);
          v34.i64[0] = vminq_f32(vextq_s8(v30, v30, 0xCuLL), v19).u64[0];
          v35.i64[0] = vminq_f32(vextq_s8(v31, v31, 0xCuLL), v19).u64[0];
          v36 = vextq_s8(*v18, *v18, 8uLL);
          v37.i64[0] = vminq_f32(vextq_s8(v32, v32, 0xCuLL), v19).u64[0];
          v38 = vbslq_s8(v20, v25, vmulq_n_f32(v36, *v25.i32));
          v39 = vbslq_s8(v20, v26, vmulq_n_f32(v36, *v26.i32));
          v40 = vbslq_s8(v20, v27, vmulq_n_f32(v36, *v27.i32));
          v41 = vbslq_s8(v20, v29, vmulq_n_f32(v36, *v29.i32));
          v42 = *(v18 + 64);
          v43 = *(v18 + 80);
          *v44.f32 = vqtbl1_s8(v38, *v43.i8);
          v45 = vextq_s8(v43, v43, 8uLL).u64[0];
          v34.i64[1] = v30.i64[1];
          *&v44.u32[2] = vqtbl1_s8(v38, v45);
          *v30.f32 = vqtbl1_s8(v39, *v43.i8);
          v35.i64[1] = v31.i64[1];
          *&v30.u32[2] = vqtbl1_s8(v39, v45);
          v37.i64[1] = v32.i64[1];
          v32.i64[0] = vminq_f32(vextq_s8(v33, v33, 0xCuLL), v19).u64[0];
          v32.i64[1] = v33.i64[1];
          v46 = vbslq_s8(v42, v34, vmulq_n_f32(*v18, *v34.i32));
          *v34.i8 = vqtbl1_s8(v40, *v43.i8);
          v34.u64[1] = vqtbl1_s8(v40, v45);
          v47 = vbslq_s8(v42, v35, vmulq_n_f32(*v18, *v35.i32));
          *v35.i8 = vqtbl1_s8(v41, *v43.i8);
          v35.u64[1] = vqtbl1_s8(v41, v45);
          v48 = vbslq_s8(v42, v32, vmulq_n_f32(*v18, *v32.i32));
          v49 = vmulq_f32(v44, v46);
          v50 = vmulq_f32(v30, v47);
          v51 = vmulq_f32(v34, vbslq_s8(v42, v37, vmulq_n_f32(*v18, *v37.i32)));
          v52 = vdupq_lane_s32(*(v18 + 16), 0);
          v53 = vmulq_f32(v35, v48);
          v54 = *(v18 + 96);
          v55 = vcgtq_f32(v52, v54);
          v56 = vbslq_s8(v55, v49, v14);
          v57 = vbslq_s8(v55, v50, v15);
          v58 = vbslq_s8(v55, v51, v16);
          v59 = vbslq_s8(v55, v53, v17);
          v38.i32[0] = vsubq_f32(v19, v38).u32[0];
          v39.i32[0] = vsubq_f32(v19, v39).u32[0];
          v40.i32[0] = vsubq_f32(v19, v40).u32[0];
          v60 = vaddq_f32(v53, vmulq_n_f32(v59, vsubq_f32(v19, v41).f32[0]));
          v61 = vceqq_f32(v52, v54);
          v62 = (v5 + v12);
          v62[-2] = vbslq_s8(v42, v56, vbslq_s8(v61, v56, vaddq_f32(v49, vmulq_n_f32(v56, v38.f32[0]))));
          v62[-1] = vbslq_s8(v42, v57, vbslq_s8(v61, v57, vaddq_f32(v50, vmulq_n_f32(v57, v39.f32[0]))));
          *v62 = vbslq_s8(v42, v58, vbslq_s8(v61, v58, vaddq_f32(v51, vmulq_n_f32(v58, v40.f32[0]))));
          v62[1] = vbslq_s8(v42, v59, vbslq_s8(v61, v59, v60));
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v63 = *(v8 + 16 * v11);
          v64 = *(this + 51);
          v65 = *(v64 + 32);
          v66 = *(v64 + 48);
          v67 = vbslq_s8(v65, *(v6 + 16 * v11), vaddq_f32(vextq_s8(v63, v63, 4uLL), vaddq_f32(v63, vrev64q_s32(v63))));
          v68 = vmulq_laneq_f32(v67, *v64, 3);
          v69 = vmulq_f32(v66, vextq_s8(v67, v67, 8uLL));
          v70 = vbslq_s8(v65, v68, vmulq_n_f32(vextq_s8(*v64, *v64, 8uLL), v68.f32[0]));
          v68.i64[0] = vminq_f32(vextq_s8(v69, v69, 0xCuLL), v66).u64[0];
          v68.i64[1] = v69.i64[1];
          v71 = *(v64 + 64);
          v72 = *(v64 + 80);
          v73 = vbslq_s8(v71, v68, vmulq_n_f32(*v64, v68.f32[0]));
          *v68.f32 = vqtbl1_s8(v70, *v72.i8);
          *&v68.u32[2] = vqtbl1_s8(v70, *&vextq_s8(v72, v72, 8uLL));
          v74 = vmulq_f32(v68, v73);
          v75 = vdupq_lane_s32(*(v64 + 16), 0);
          v76 = *(v64 + 96);
          v77 = vbslq_s8(vcgtq_f32(v75, v76), v74, v63);
          *(v5 + 16 * v11++) = vbslq_s8(v71, v77, vbslq_s8(vceqq_f32(v75, v76), v77, vaddq_f32(v74, vmulq_n_f32(v77, vsubq_f32(v66, v70).f32[0]))));
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v6 += v9;
      v5 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeShadowProgramSoft::GetDOD(LiHeShadowProgramSoft *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t LiHeShadowProgramSoft::GetROI(LiHeShadowProgramSoft *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void LiHeShadowProgramSoft::LiHeShadowProgramSoft(LiHeShadowProgramSoft *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287277218;
  operator new();
}

void LiHeShadowProgramSoft::~LiHeShadowProgramSoft(HGNode *this)
{
  *this = &unk_287277218;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);
}

{
  LiHeShadowProgramSoft::~LiHeShadowProgramSoft(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeShadowProgramSoft::SetParameter(LiHeShadowProgramSoft *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t LiHeShadowProgramSoft::GetParameter(LiHeShadowProgramSoft *this, unsigned int a2, float *a3)
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

const char *HgcSolidRendererBumpMap::GetProgram(HgcSolidRendererBumpMap *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000827\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.2500000000, 1.000000000, 2.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    float4 s0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord4.xy);\n    r2.x = dot(r1, half4(hg_Params[2]));\n    r0.x = dot(r0, half4(hg_Params[2]));\n    r0.z = r0.x*c0.z + r2.x;\n    r3 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord5.xy);\n    r2.y = dot(r3, half4(hg_Params[2]));\n    r3 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord6.xy);\n    r2.z = dot(r3, half4(hg_Params[2]));\n    r2.w = r0.z + r2.y;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord7.xy);\n    r0.y = dot(r0, half4(hg_Params[2]));\n    r4 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    r4.x = dot(r4, half4(hg_Params[2]));\n    r4.x = r4.x*c0.z + r0.y;\n    r4.z = r4.x + r2.z;\n    r0.x = r2.w - r4.z;\n    r5 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    s0.xy = float2(r0.xy);\n    r2.w = dot(r5, half4(hg_Params[2]));\n    r5 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r5.x = dot(r5, half4(hg_Params[2]));\n    s0.z = float(r2.w)*float(c0.z) + float(r2.x);\n    r5.x = r5.x*c0.z + r2.y;\n    r5.y = half(s0.y) + half(s0.z);\n    r5.x = r2.z + r5.x;\n    s0.y = float(r5.y) - float(r5.x);\n    r5.z = half(hg_Params[0].z)*c0.x;\n    r5.x = select(r5.z, -r5.z, half(hg_Params[1].x) < 0.00000h);\n    r5.z = c0.y;\n    r5.xy = half2(s0.xy)*r5.xx;\n    r5.w = dot(r5.xyz, r5.xyz);\n    r5.w = rsqrt(r5.w);\n    output.color0.xyz = float3(r5.xyz)*float3(r5.www);\n    output.color0.w = float(c0.y);\n    return output;\n}\n//MD5=b02ff63d:5075d64b:abb44289:27f3515b\n//SIG=00400000:00000000:00000000:00000001:0001:0003:0007:0000:0000:0000:01fe:0000:0008:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000724\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.2500000000, 1.000000000, 2.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord4.xy);\n    r1.x = dot(r1, hg_Params[2]);\n    r0.x = dot(r0, hg_Params[2]);\n    r0.z = r0.x*c0.z + r1.x;\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord5.xy);\n    r1.y = dot(r2, hg_Params[2]);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord6.xy);\n    r1.z = dot(r2, hg_Params[2]);\n    r1.w = r0.z + r1.y;\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord7.xy);\n    r2.y = dot(r2, hg_Params[2]);\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    r0.x = dot(r0, hg_Params[2]);\n    r0.x = r0.x*c0.z + r2.y;\n    r0.z = r0.x + r1.z;\n    r2.x = r1.w - r0.z;\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r1.w = dot(r0, hg_Params[2]);\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r0.x = dot(r0, hg_Params[2]);\n    r2.z = r1.w*c0.z + r1.x;\n    r0.x = r0.x*c0.z + r1.y;\n    r0.y = r2.y + r2.z;\n    r0.x = r1.z + r0.x;\n    r2.y = r0.y - r0.x;\n    r1.z = hg_Params[0].z*c0.x;\n    r1.x = select(r1.z, -r1.z, hg_Params[1].x < 0.00000f);\n    r1.z = c0.y;\n    r1.xy = r2.xy*r1.xx;\n    r1.w = dot(r1.xyz, r1.xyz);\n    r1.w = rsqrt(r1.w);\n    output.color0.xyz = r1.xyz*r1.www;\n    output.color0.w = c0.y;\n    return output;\n}\n//MD5=d5163f50:b9b29186:c5c889b3:ddee76a0\n//SIG=00000000:00000000:00000000:00000000:0001:0003:0003:0000:0000:0000:01fe:0000:0008:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000007f7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvarying highp vec4 hg_TexCoord6;\nvarying highp vec4 hg_TexCoord7;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.2500000000, 1.000000000, 2.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord4.xy);\n    r1.x = dot(r1, hg_ProgramLocal2);\n    r0.x = dot(r0, hg_ProgramLocal2);\n    r0.z = r0.x*c0.z + r1.x;\n    r2 = texture2D(hg_Texture0, hg_TexCoord5.xy);\n    r1.y = dot(r2, hg_ProgramLocal2);\n    r2 = texture2D(hg_Texture0, hg_TexCoord6.xy);\n    r1.z = dot(r2, hg_ProgramLocal2);\n    r1.w = r0.z + r1.y;\n    r2 = texture2D(hg_Texture0, hg_TexCoord7.xy);\n    r2.y = dot(r2, hg_ProgramLocal2);\n    r0 = texture2D(hg_Texture0, hg_TexCoord1.xy);\n    r0.x = dot(r0, hg_ProgramLocal2);\n    r0.x = r0.x*c0.z + r2.y;\n    r0.z = r0.x + r1.z;\n    r2.x = r1.w - r0.z;\n    r0 = texture2D(hg_Texture0, hg_TexCoord2.xy);\n    r1.w = dot(r0, hg_ProgramLocal2);\n    r0 = texture2D(hg_Texture0, hg_TexCoord3.xy);\n    r0.x = dot(r0, hg_ProgramLocal2);\n    r2.z = r1.w*c0.z + r1.x;\n    r0.x = r0.x*c0.z + r1.y;\n    r0.y = r2.y + r2.z;\n    r0.x = r1.z + r0.x;\n    r2.y = r0.y - r0.x;\n    r1.z = hg_ProgramLocal0.z*c0.x;\n    r1.x = hg_ProgramLocal1.x < 0.00000 ? -r1.z : r1.z;\n    r1.z = c0.y;\n    r1.xy = r2.xy*r1.xx;\n    r1.w = dot(r1.xyz, r1.xyz);\n    r1.w = inversesqrt(r1.w);\n    gl_FragColor.xyz = r1.xyz*r1.www;\n    gl_FragColor.w = c0.y;\n}\n//MD5=1f61d63d:88e928e0:dd637bf7:5069746a\n//SIG=00000000:00000000:00000000:00000000:0001:0003:0003:0000:0000:0000:0000:0000:0008:01:0:1:0\n";
  }
}

void sub_26006ABA4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344A30;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 9;
  std::string::basic_string[abi:ne200100]<0>(v34, "texture2d<float>");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 6;
  std::string::basic_string[abi:ne200100]<0>(v34, "sampler");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 8;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26006AEE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26006AF6C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26006AF64);
}

uint64_t HgcSolidRendererBumpMap::BindTexture(HgcSolidRendererBumpMap *this, HGHandler *a2, int a3)
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

  (*(*a2 + 96))(a2, -1.0, 0.0, 0.0);
  HGHandler::TexCoord(a2, 4, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -1.0, -1.0, 0.0);
  HGHandler::TexCoord(a2, 5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -1.0, 1.0, 0.0);
  HGHandler::TexCoord(a2, 6, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 1.0, 1.0, 0.0);
  HGHandler::TexCoord(a2, 7, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 1.0, -1.0, 0.0);
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

  (*(*a2 + 96))(a2, 0.0, -1.0, 0.0);
  HGHandler::TexCoord(a2, 3, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 0.0, 1.0, 0.0);
  return 0;
}

uint64_t HgcSolidRendererBumpMap::Bind(HgcSolidRendererBumpMap *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSolidRendererBumpMap::RenderTile(HgcSolidRendererBumpMap *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 22);
    v6 = *(a2 + 6);
    v7 = *(a2 + 2);
    v8 = *(a2 + 10);
    v9 = 16 * v5;
    v10 = v8 + 16 * v5 + 32;
    v11 = ~v5;
    v12 = 16 * v6;
    v13 = v8 + 16;
    do
    {
      if (v4 < 4)
      {
        v14 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 32;
        v16 = v10;
        v17 = v4;
        do
        {
          v18 = *(this + 51);
          v20 = *(v18 + 32);
          v19 = *(v18 + 48);
          v21 = vmulq_f32(*(v8 + 16 * (v11 + v14)), v20);
          v22 = vmulq_f32(*(v8 + 16 * (v14 - v5)), v20);
          v23 = vmulq_f32(*(v8 + 16 * (v14 - v5 + 1)), v20);
          v24 = vmulq_f32(*(v8 + 16 * (v14 - v5 + 2)), v20);
          v25 = vaddq_f32(v21, vextq_s8(v21, v21, 4uLL));
          v26 = vaddq_f32(v22, vextq_s8(v22, v22, 4uLL));
          v27 = vaddq_f32(v23, vextq_s8(v23, v23, 4uLL));
          v28 = vaddq_f32(v24, vextq_s8(v24, v24, 4uLL));
          v29 = vaddq_f32(v25, vextq_s8(v25, v25, 8uLL));
          v30 = vmulq_f32(*(v8 + v15 - 48), v20);
          v31 = vmulq_f32(*(v8 + v15 - 32), v20);
          v32 = vmulq_f32(*(v8 + v15 - 16), v20);
          v33 = vaddq_f32(v26, vextq_s8(v26, v26, 8uLL));
          v34 = vmulq_f32(*(v8 + v15), v20);
          v35 = vaddq_f32(v27, vextq_s8(v27, v27, 8uLL));
          v36 = vaddq_f32(v30, vextq_s8(v30, v30, 4uLL));
          v37 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
          v38 = vaddq_f32(v32, vextq_s8(v32, v32, 4uLL));
          v39 = vaddq_f32(v28, vextq_s8(v28, v28, 8uLL));
          v40 = vaddq_f32(v34, vextq_s8(v34, v34, 4uLL));
          v41 = vaddq_f32(v38, vextq_s8(v38, v38, 8uLL));
          v42 = vaddq_f32(v40, vextq_s8(v40, v40, 8uLL));
          v43 = vextq_s8(v29, v29, 8uLL);
          v44 = vmulq_f32(v20, v16[-3]);
          v45 = vmulq_f32(v20, v16[-2]);
          v46 = vmulq_f32(v20, v16[-1]);
          v47 = vmulq_f32(v20, *v16);
          LODWORD(v48) = vaddq_f32(v37, vdupq_laneq_s32(v37, 2)).u32[0];
          v49 = vaddq_f32(v44, vextq_s8(v44, v44, 4uLL));
          v50 = vaddq_f32(v45, vextq_s8(v45, v45, 4uLL));
          v51 = vaddq_f32(v46, vextq_s8(v46, v46, 4uLL));
          v52 = vaddq_f32(v47, vextq_s8(v47, v47, 4uLL));
          v53 = vaddq_f32(v49, vdupq_laneq_s64(v49, 1));
          v54 = vaddq_f32(v50, vextq_s8(v50, v50, 8uLL));
          v55 = vaddq_f32(v51, vextq_s8(v51, v51, 8uLL));
          v56 = vmulq_n_f32(v19, vaddq_f32(v36, vdupq_laneq_s32(v36, 2)).f32[0]);
          v57 = vaddq_f32(v52, vextq_s8(v52, v52, 8uLL));
          v59 = *(v18 + 64);
          v58 = *(v18 + 80);
          v60 = vbslq_s8(v59, v33, v54);
          v61 = vbslq_s8(v59, v35, v55);
          v62 = vbslq_s8(v59, v39, v57);
          v63 = vmulq_f32(v20, v16[1]);
          v64 = vmulq_f32(v20, v16[2]);
          v65 = vbslq_s8(v59, v29, v53);
          v66 = vaddq_f32(v63, vextq_s8(v63, v63, 4uLL));
          v67 = vaddq_f32(v64, vextq_s8(v64, v64, 4uLL));
          v68 = vaddq_f32(v43, v56);
          v69 = vaddq_f32(v66, vextq_s8(v66, v66, 8uLL));
          v70 = vaddq_f32(v67, vdupq_lane_s64(v67.i64[0], 0));
          v71 = vextq_s8(v70, v62, 8uLL);
          v72.i64[0] = v62.i64[0];
          v72.i64[1] = v70.i64[1];
          v73 = vextq_s8(v55, v65, 8uLL);
          v74 = vextq_s8(v57, v60, 8uLL);
          v60.i64[1] = v57.i64[1];
          v75 = vextq_s8(v69, v61, 8uLL);
          v65.i64[1] = v55.i64[1];
          v61.i64[1] = v69.i64[1];
          v76 = vaddq_f32(vrev64q_s32(vaddq_f32(vextq_s8(v39, v39, 8uLL), vmulq_n_f32(v19, v42.f32[0]))), v71);
          v77 = vbslq_s8(v58, vaddq_f32(vrev64q_s32(vaddq_f32(vextq_s8(v35, v35, 8uLL), vmulq_n_f32(v19, v41.f32[0]))), v75), v61);
          v78 = vmulq_f32(v20, *(v8 + 16 * (v14 - v5 + 3)));
          v79 = vmulq_f32(v20, *(v8 + 16 * (v14 - v5 + 4)));
          v80 = vaddq_f32(vrev64q_s32(v68), v73);
          v81 = vaddq_f32(v78, vextq_s8(v78, v78, 4uLL));
          v82 = vaddq_f32(v79, vextq_s8(v79, v79, 4uLL));
          v83 = vaddq_f32(v81, vextq_s8(v81, v81, 8uLL));
          v84 = vaddq_f32(vrev64q_s32(vaddq_f32(vextq_s8(v33, v33, 8uLL), vmulq_n_f32(v19, v48))), v74);
          v85 = vaddq_f32(v82, vextq_s8(v82, v82, 8uLL));
          v86 = vmulq_f32(v20, *(v8 + v15 + 16));
          v87 = vmulq_f32(v20, *(v8 + v15 + 32));
          v88 = vbslq_s8(v58, v76, v72);
          v89 = vaddq_f32(v86, vextq_s8(v86, v86, 4uLL));
          v90 = vbslq_s8(v58, v80, v65);
          v91 = vaddq_f32(v87, vextq_s8(v87, v87, 4uLL));
          v92 = vbslq_s8(v58, v84, v60);
          v93 = vextq_s8(v90, v90, 0xCuLL);
          v94 = vextq_s8(v92, v92, 0xCuLL);
          v95 = vaddq_f32(vaddq_f32(vrev64q_s32(v35), vmulq_laneq_f32(v41, v19, 3)), vdupq_laneq_s64(v90, 1));
          v96 = vaddq_f32(vaddq_f32(vrev64q_s32(v39), vmulq_laneq_f32(v42, v19, 3)), vdupq_laneq_s64(v92, 1));
          v97 = vsubq_f32(vextq_s8(v77, v77, 0xCuLL), vaddq_f32(vaddq_f32(vrev64q_s32(v83), vmulq_laneq_f32(vaddq_f32(v89, vdupq_laneq_s64(v89, 1)), v19, 3)), vdupq_laneq_s64(v77, 1)));
          v98 = vsubq_f32(vextq_s8(v88, v88, 0xCuLL), vaddq_f32(vaddq_f32(vrev64q_s32(v85), vmulq_laneq_f32(vaddq_f32(v91, vdupq_laneq_s64(v91, 1)), v19, 3)), vdupq_laneq_s64(v88, 1)));
          v99 = vbslq_s8(v59, v97, v83);
          v100 = vbslq_s8(v58, v33, v65);
          v101 = vbslq_s8(v58, v35, v60);
          v102 = vsubq_f32(v93, v95);
          v103 = vbslq_s8(v58, v39, v61);
          v104 = vsubq_f32(v94, v96);
          v105 = vbslq_s8(v58, v83, v72);
          v106 = vaddq_f32(vdupq_lane_s64(v100.i64[0], 0), vmulq_laneq_f32(v19, v100, 3));
          v107 = vbslq_s8(v59, v98, v85);
          v108 = vaddq_f32(vdupq_lane_s64(v101.i64[0], 0), vmulq_laneq_f32(v19, v101, 3));
          v109 = vaddq_f32(vdupq_lane_s64(v103.i64[0], 0), vmulq_laneq_f32(v19, v103, 3));
          v110 = vbslq_s8(v59, v102, v35);
          v111 = vaddq_f32(vdupq_lane_s64(v105.i64[0], 0), vmulq_laneq_f32(v19, v105, 3));
          *v85.f32 = vext_s8(*v99.f32, *&vextq_s8(v109, v109, 8uLL), 4uLL);
          v96.i64[0] = vextq_s8(v109, v99, 0xCuLL).u64[0];
          v112 = vbslq_s8(v59, v104, v39);
          v99.i64[1] = v109.i64[1];
          *v109.f32 = vext_s8(*v110.f32, *&vextq_s8(v106, v106, 8uLL), 4uLL);
          v83.i64[0] = vextq_s8(v106, v110, 0xCuLL).u64[0];
          v39.i64[0] = v110.i64[0];
          *v110.f32 = vext_s8(*v112.f32, *&vextq_s8(v108, v108, 8uLL), 4uLL);
          v93.i64[0] = vextq_s8(v108, v112, 0xCuLL).u64[0];
          *v89.f32 = vext_s8(*v107.f32, *&vextq_s8(v111, v111, 8uLL), 4uLL);
          v94.i64[0] = vextq_s8(v111, v107, 0xCuLL).u64[0];
          v107.i64[1] = v111.i64[1];
          v113 = vaddq_f32(vmulq_laneq_f32(v54, v19, 3), vrev64q_s32(v100));
          v39.i64[1] = v106.i64[1];
          v114 = vaddq_f32(vmulq_laneq_f32(v55, v19, 3), vrev64q_s32(v101));
          v115 = vaddq_f32(vmulq_laneq_f32(v57, v19, 3), vrev64q_s32(v103));
          v112.i64[1] = v108.i64[1];
          v116 = vaddq_f32(vmulq_laneq_f32(v69, v19, 3), vrev64q_s32(v105));
          v109.i64[1] = v83.i64[0];
          v110.i64[1] = v93.i64[0];
          v85.i64[1] = v96.i64[0];
          v89.i64[1] = v94.i64[0];
          v117 = vaddq_f32(v39, v109);
          v118 = vaddq_f32(v112, v110);
          v119 = vaddq_f32(v99, v85);
          v120 = vaddq_f32(v107, v89);
          v121 = vbslq_s8(v59, vaddq_f32(vextq_s8(v100, v100, 8uLL), vbslq_s8(v59, v113, v117)), v117);
          v122 = vbslq_s8(v59, vaddq_f32(vextq_s8(v103, v103, 8uLL), vbslq_s8(v59, v115, v119)), v119);
          v123 = vbslq_s8(v59, vaddq_f32(vextq_s8(v105, v105, 8uLL), vbslq_s8(v59, v116, v120)), v120);
          v124 = vbslq_s8(v59, vaddq_f32(vextq_s8(v101, v101, 8uLL), vbslq_s8(v59, v114, v118)), v118);
          v125 = vsubq_f32(v124, vrev64q_s32(v124));
          v126 = vbslq_s8(v59, v107, vsubq_f32(v123, vrev64q_s32(v123)));
          v127 = vbslq_s8(v59, v39, vsubq_f32(v121, vrev64q_s32(v121)));
          v128 = *(v18 + 96);
          v129 = vmulq_f32(*v18, v128);
          v130 = veorq_s8(vandq_s8(*(v18 + 16), *(v18 + 112)), vextq_s8(v129, v129, 8uLL));
          v127.i64[0] = vmulq_n_f32(v127, v130.f32[0]).u64[0];
          v59.i64[0] = vmulq_n_f32(vbslq_s8(v59, v112, v125), v130.f32[0]).u64[0];
          v39.i64[0] = vmulq_n_f32(vbslq_s8(*(v18 + 64), v99, vsubq_f32(v122, vrev64q_s32(v122))), v130.f32[0]).u64[0];
          v130.i64[0] = vmulq_n_f32(v126, v130.f32[0]).u64[0];
          v130.i64[1] = __PAIR64__(v130.u32[3], 1.0);
          v39.i64[1] = v130.i64[1];
          v59.i64[1] = v130.i64[1];
          v127.i64[1] = v130.i64[1];
          v131 = vmulq_f32(v127, v127);
          v132 = vmulq_f32(v59, v59);
          v133 = vmulq_f32(v39, v39);
          v134 = vmulq_f32(v130, v130);
          v135 = vbslq_s8(v58, vaddq_f32(vrev64q_s32(v131), vaddq_f32(vextq_s8(v131, v131, 4uLL), vextq_s8(v131, v131, 8uLL))), v127);
          v136 = vbslq_s8(v58, vaddq_f32(vrev64q_s32(v132), vaddq_f32(vextq_s8(v132, v132, 4uLL), vextq_s8(v132, v132, 8uLL))), v59);
          v137 = vbslq_s8(v58, vaddq_f32(vrev64q_s32(v133), vaddq_f32(vextq_s8(v133, v133, 4uLL), vextq_s8(v133, v133, 8uLL))), v39);
          v138 = vbslq_s8(v58, vaddq_f32(vrev64q_s32(v134), vaddq_f32(vextq_s8(v134, v134, 4uLL), vextq_s8(v134, v134, 8uLL))), v130);
          v139 = *(v18 + 128);
          v140 = vminq_f32(vmulq_f32(v128, vrsqrteq_f32(v135)), v139);
          v141 = vminq_f32(vmulq_f32(v128, vrsqrteq_f32(v136)), v139);
          v142 = vminq_f32(vmulq_f32(v128, vrsqrteq_f32(v137)), v139);
          v143 = vminq_f32(vmulq_f32(v128, vrsqrteq_f32(v138)), v139);
          v144 = vbslq_s8(v58, vmulq_f32(v140, vrsqrtsq_f32(vmulq_f32(v140, v135), v140)), v127);
          v145 = vbslq_s8(v58, vmulq_f32(v141, vrsqrtsq_f32(vmulq_f32(v141, v136), v141)), v59);
          v146 = vbslq_s8(v58, vmulq_f32(v142, vrsqrtsq_f32(vmulq_f32(v142, v137), v142)), v39);
          v147 = vbslq_s8(v58, vmulq_f32(v143, vrsqrtsq_f32(vmulq_f32(v143, v138), v143)), v130);
          v148 = vmulq_laneq_f32(v144, v144, 3);
          v149 = vmulq_laneq_f32(v145, v145, 3);
          v150 = vmulq_laneq_f32(v146, v146, 3);
          v151 = vmulq_laneq_f32(v147, v147, 3);
          v148.i32[3] = 1.0;
          v149.i32[3] = 1.0;
          v150.i32[3] = 1.0;
          v151.i32[3] = 1.0;
          v152 = (v7 + v15);
          v17 -= 4;
          v152[-2] = v148;
          v152[-1] = v149;
          *v152 = v150;
          v152[1] = v151;
          v14 += 4;
          v16 += 4;
          v15 += 64;
        }

        while (v17 > 3);
      }

      if (v14 < v4)
      {
        v153 = v14;
        v154 = (v13 + 16 * v14);
        v155 = (v13 + 16 * (v5 + v14));
        do
        {
          v156 = *(this + 51);
          v158 = *(v156 + 32);
          v157 = *(v156 + 48);
          v159 = vmulq_f32(*(v8 + 16 * (v11 + v153)), v158);
          v160 = vaddq_f32(v159, vextq_s8(v159, v159, 4uLL));
          v161 = vaddq_f32(v160, vextq_s8(v160, v160, 8uLL));
          v162 = vmulq_f32(v154[-2], v158);
          v163 = vaddq_f32(v162, vextq_s8(v162, v162, 4uLL));
          v164 = vaddq_f32(vextq_s8(v161, v161, 8uLL), vmulq_n_f32(v157, vaddq_f32(v163, vdupq_laneq_s32(v163, 2)).f32[0]));
          v165 = v155[-1];
          v166 = vmulq_f32(v158, v155[-2]);
          v167 = vaddq_f32(v166, vextq_s8(v166, v166, 4uLL));
          v168 = vaddq_f32(v167, vdupq_laneq_s64(v167, 1));
          v169 = *v155++;
          v170 = vmulq_f32(v158, v169);
          v171 = vaddq_f32(v170, vextq_s8(v170, v170, 4uLL));
          v173 = *(v156 + 64);
          v172 = *(v156 + 80);
          v174 = vbslq_s8(v173, v161, v168);
          v175 = vaddq_f32(v171, vdupq_lane_s64(v171.i64[0], 0));
          v176 = vextq_s8(v175, v174, 8uLL);
          v174.i64[1] = v175.i64[1];
          v177 = vbslq_s8(v172, vaddq_f32(vrev64q_s32(v164), v176), v174);
          v178 = vmulq_f32(v158, *(v8 + 16 * (v153 - v5 + 1)));
          v179 = vaddq_f32(v178, vextq_s8(v178, v178, 4uLL));
          v180 = vaddq_f32(v179, vextq_s8(v179, v179, 8uLL));
          v181 = *v154++;
          v182 = vmulq_f32(v158, v181);
          v183 = vaddq_f32(v182, vextq_s8(v182, v182, 4uLL));
          v184 = vbslq_s8(v173, vsubq_f32(vextq_s8(v177, v177, 0xCuLL), vaddq_f32(vaddq_f32(vrev64q_s32(v180), vmulq_laneq_f32(vaddq_f32(v183, vdupq_laneq_s64(v183, 1)), v157, 3)), vdupq_laneq_s64(v177, 1))), v180);
          v185 = vmulq_f32(v158, *(v8 + 16 * (v153 - v5)));
          v186 = vaddq_f32(v185, vextq_s8(v185, v185, 4uLL));
          v187 = vbslq_s8(v172, vaddq_f32(v186, vextq_s8(v186, v186, 8uLL)), v174);
          v188 = vmulq_f32(v158, v165);
          v189 = vaddq_f32(v188, vextq_s8(v188, v188, 4uLL));
          v190 = vaddq_f32(vdupq_lane_s64(v187.i64[0], 0), vmulq_laneq_f32(v157, v187, 3));
          *v186.f32 = vext_s8(*v184.f32, *&vextq_s8(v190, v190, 8uLL), 4uLL);
          v183.i64[0] = vextq_s8(v190, v184, 0xCuLL).u64[0];
          v184.i64[1] = v190.i64[1];
          v186.i64[1] = v183.i64[0];
          v191 = vaddq_f32(vmulq_laneq_f32(vaddq_f32(v189, vextq_s8(v189, v189, 8uLL)), v157, 3), vrev64q_s32(v187));
          v192 = vaddq_f32(v184, v186);
          v193 = vbslq_s8(v173, vaddq_f32(vextq_s8(v187, v187, 8uLL), vbslq_s8(v173, v191, v192)), v192);
          v194 = vbslq_s8(v173, v184, vsubq_f32(v193, vrev64q_s32(v193)));
          v195 = *(v156 + 96);
          v196 = vmulq_f32(*v156, v195);
          v197 = veorq_s8(vandq_s8(*(v156 + 16), *(v156 + 112)), vextq_s8(v196, v196, 8uLL));
          v194.i64[0] = vmulq_n_f32(v194, *v197.i32).u64[0];
          v197.i32[2] = 1.0;
          v194.i64[1] = v197.i64[1];
          v198 = vmulq_f32(v194, v194);
          v199 = vbslq_s8(v172, vaddq_f32(vrev64q_s32(v198), vaddq_f32(vextq_s8(v198, v198, 4uLL), vextq_s8(v198, v198, 8uLL))), v194);
          v200 = vminq_f32(vmulq_f32(v195, vrsqrteq_f32(v199)), *(v156 + 128));
          v201 = vbslq_s8(v172, vmulq_f32(v200, vrsqrtsq_f32(vmulq_f32(v200, v199), v200)), v194);
          v202 = vmulq_laneq_f32(v201, v201, 3);
          v202.i32[3] = 1.0;
          *(v7 + 16 * v153++) = v202;
        }

        while (v153 < v4);
      }

      v8 += v9;
      ++v3;
      v10 += v9;
      v7 += v12;
      v13 += v9;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcSolidRendererBumpMap::GetDOD(HgcSolidRendererBumpMap *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(v6, v5, v7);
}

uint64_t HgcSolidRendererBumpMap::GetROI(HgcSolidRendererBumpMap *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(v6, v5, v7);
}

void HgcSolidRendererBumpMap::HgcSolidRendererBumpMap(HgcSolidRendererBumpMap *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287277480;
  operator new();
}

void HgcSolidRendererBumpMap::~HgcSolidRendererBumpMap(HGNode *this)
{
  *this = &unk_287277480;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40C3A7E6FCLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcSolidRendererBumpMap::~HgcSolidRendererBumpMap(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSolidRendererBumpMap::SetParameter(HgcSolidRendererBumpMap *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 2)
  {
    v9 = *(this + 51);
    if (*(v9 + 32) != a3.n128_f32[0] || *(v9 + 36) != a4 || *(v9 + 40) != a5 || *(v9 + 44) != a6)
    {
      *(v9 + 32) = a3.n128_u32[0];
      *(v9 + 36) = a4;
      *(v9 + 40) = a5;
      *(v9 + 44) = a6;
      goto LABEL_19;
    }
  }

  else if (a2 == 1)
  {
    v8 = *(this + 51);
    if (v8[1].n128_f32[0] != -a3.n128_f32[0] || v8[1].n128_f32[1] != 0.0 || v8[1].n128_f32[2] != 0.0 || v8[1].n128_f32[3] != 0.0)
    {
      v8[1].n128_f32[0] = -a3.n128_f32[0];
      v8[1].n128_u64[1] = 0;
      v8[1].n128_u32[1] = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v8[10] = a3;
      goto LABEL_19;
    }
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(this + 51);
    if (v7->n128_f32[0] != 0.0 || v7->n128_f32[1] != 0.0 || v7->n128_f32[2] != a3.n128_f32[0] || v7->n128_f32[3] != 0.0)
    {
      v7->n128_u64[0] = 0;
      v7->n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v7->n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v7[9] = a3;
LABEL_19:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcSolidRendererBumpMap::GetParameter(HgcSolidRendererBumpMap *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = qword_26084F0F8[a2];
  v6 = qword_26084F110[a2];
  v7 = qword_26084F128[a2];
  v8 = *(this + 51);
  *a3 = *(v8 + qword_26084F0E0[a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

const char *LiHeAlphaFill::GetProgram(LiHeAlphaFill *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000027f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0.x = clamp(r0.w*half(hg_Params[1].x), 0.00000h, 1.00000h);\n    output.color0 = float4(r0.xxxx)*hg_Params[0];\n    return output;\n}\n//MD5=1313a19a:2f5a4de3:21a49b0a:6b2012eb\n//SIG=00400000:00000001:00000001:00000001:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000026c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0.x = clamp(r0.w*hg_Params[1].x, 0.00000f, 1.00000f);\n    output.color0 = r0.xxxx*hg_Params[0];\n    return output;\n}\n//MD5=d10bdb12:54ddf532:0e36d11f:59b899ba\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000264\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r0.x = clamp(r0.w*hg_ProgramLocal1.x, 0.00000, 1.00000);\n    gl_FragColor = r0.xxxx*hg_ProgramLocal0;\n}\n//MD5=9a761c45:a1fc489c:940dabd1:9b30d9e5\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_26006C3C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
{
  *(v32 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v32 - 56), "FragmentOut");
  *(v32 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v31, v32 - 64);
  if (*(v32 - 33) < 0)
  {
    operator delete(*(v32 - 56));
  }

  memset(v37, 0, 24);
  LODWORD(v33) = 2;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260344940;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  LODWORD(v33) = 10;
  std::string::basic_string[abi:ne200100]<0>(v34, "float4");
  v36 = xmmword_260343E00;
  std::vector<HGBinding>::push_back[abi:ne200100](v37, &v33);
  if (v35 < 0)
  {
    operator delete(v34[0]);
  }

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26006C4C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26006C504()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26006C4FCLL);
}

uint64_t LiHeAlphaFill::BindTexture(LiHeAlphaFill *this, HGHandler *a2, int a3)
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

uint64_t LiHeAlphaFill::Bind(LiHeAlphaFill *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t LiHeAlphaFill::RenderTile(LiHeAlphaFill *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 10);
    v7 = 16 * *(a2 + 22);
    v8 = 16 * *(a2 + 6);
    do
    {
      if (v4 < 4)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 32;
        for (i = v4; i > 3; i -= 4)
        {
          v12 = *(this + 51);
          v13 = v12[1];
          v14 = vmulq_laneq_f32(v13, *(v6 + v10 - 32), 3);
          v15 = vmulq_laneq_f32(v13, *(v6 + v10 - 16), 3);
          v16 = vmulq_laneq_f32(v13, *(v6 + v10), 3);
          v17 = vmulq_laneq_f32(v13, *(v6 + v10 + 16), 3);
          v18 = v12[2];
          v19 = v12[3];
          v20 = vmulq_n_f32(*v12, vminq_f32(vmaxq_f32(v14, v18), v19).f32[0]);
          v21 = vmulq_n_f32(*v12, vminq_f32(vmaxq_f32(v15, v18), v19).f32[0]);
          v22 = vmulq_n_f32(*v12, vminq_f32(vmaxq_f32(v16, v18), v19).f32[0]);
          v23 = vmulq_n_f32(*v12, vminq_f32(vmaxq_f32(v17, v18), v19).f32[0]);
          v24 = (v5 + v10);
          v24[-2] = v20;
          v24[-1] = v21;
          *v24 = v22;
          v24[1] = v23;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          *(v5 + 16 * v9) = vmulq_n_f32(**(this + 51), vminq_f32(vmaxq_f32(vmulq_laneq_f32(*(*(this + 51) + 16), *(v6 + 16 * v9), 3), *(*(this + 51) + 32)), *(*(this + 51) + 48)).f32[0]);
          ++v9;
        }

        while (v9 < v4);
      }

      ++v3;
      v6 += v7;
      v5 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t LiHeAlphaFill::GetDOD(LiHeAlphaFill *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t LiHeAlphaFill::GetROI(LiHeAlphaFill *this, HGRenderer *a2, int a3, HGRect a4)
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

void LiHeAlphaFill::LiHeAlphaFill(LiHeAlphaFill *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872776E8;
  operator new();
}

void LiHeAlphaFill::~LiHeAlphaFill(HGNode *this)
{
  *this = &unk_2872776E8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  LiHeAlphaFill::~LiHeAlphaFill(this);

  HGObject::operator delete(v1);
}

uint64_t LiHeAlphaFill::SetParameter(LiHeAlphaFill *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t LiHeAlphaFill::GetParameter(LiHeAlphaFill *this, unsigned int a2, float *a3)
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

uint64_t MalformedKeyError(uint64_t a1, uint64_t a2, objc_class *a3, uint64_t a4)
{
  v7 = objc_alloc(MEMORY[0x277CBEAC0]);
  v8 = MEMORY[0x277CCACA8];
  v9 = [objc_msgSend(MEMORY[0x277CCA8D8] bundleForClass:{objc_opt_class()), "localizedStringForKey:value:table:", @"Plug-In dictionary has a malformed key. Key %@ is required to be of class %@.", &stru_2872E16E0, @"PROPlug"}];
  v10 = [v7 initWithObjectsAndKeys:{objc_msgSend(v8, "stringWithFormat:", v9, a2, NSStringFromClass(a3)), *MEMORY[0x277CCA450], a2, @"MalformedKey", a4, @"NSDictionary", 0}];
  v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PROPlug" code:-501 userInfo:v10];

  return v11;
}

uint64_t RequiredKeyIsPresent(uint64_t a1, uint64_t a2, objc_class *a3, void *a4, uint64_t *a5)
{
  if ([a4 objectForKey:a2])
  {
    if (objc_opt_isKindOfClass())
    {
      return 1;
    }

    if (a5)
    {
      v13 = MalformedKeyError(a1, a2, a3, a4);
      goto LABEL_8;
    }
  }

  else if (a5)
  {
    v11 = objc_alloc(MEMORY[0x277CBEAC0]);
    v12 = [v11 initWithObjectsAndKeys:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", objc_msgSend(objc_msgSend(MEMORY[0x277CCA8D8], "bundleForClass:", objc_opt_class()), "localizedStringForKey:value:table:", @"Plug-In dictionary is missing required key %@.", &stru_2872E16E0, @"PROPlug", a2), *MEMORY[0x277CCA450], a2, @"MissingKey", a4, @"NSDictionary", 0}];
    v13 = [MEMORY[0x277CCA9B8] errorWithDomain:@"PROPlug" code:-500 userInfo:v12];

LABEL_8:
    result = 0;
    *a5 = v13;
    return result;
  }

  return 0;
}

uint64_t OptionalKeyIsWellFormed(uint64_t a1, uint64_t a2, objc_class *a3, void *a4, uint64_t *a5)
{
  if (![a4 objectForKey:a2] || (objc_opt_isKindOfClass() & 1) != 0)
  {
    return 1;
  }

  if (!a5)
  {
    return 0;
  }

  v11 = MalformedKeyError(a1, a2, a3, a4);
  result = 0;
  *a5 = v11;
  return result;
}

void sub_260073670(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

void *OZMEChannelTimeConverter::GetCurrentConversion(OZMEChannelTimeConverter *this)
{
  perThreadTimeStack();
  result = pthread_getspecific(perThreadTimeStack(void)::result);
  if (result)
  {
    v2 = result[5];
    if (v2)
    {
      return (*(result[1] + 8 * ((v2 + result[4] - 1) / 0x28uLL)) + 100 * ((v2 + result[4] - 1) % 0x28uLL));
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void perThreadTimeStack(void)
{
  {
    pthread_key_create(&perThreadTimeStack(void)::result, PCThreadSpecific<std::stack<OZMETimeConverterData>>::destroy);
  }
}

void *PCThreadSpecific<std::stack<OZMETimeConverterData>>::destroy(void *result)
{
  if (result)
  {
    std::deque<OZMETimeConverterData>::~deque[abi:ne200100](result);

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

uint64_t std::deque<OZMETimeConverterData>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 20;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 40;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<unsigned long *>::~__split_buffer(a1);
}

void OZRotoshape::getReparametrizedContourLength(uint64_t a1, __int128 *a2, int a3, double *a4)
{
  OZShapeRenderState::OZShapeRenderState(&v8);
  v8 = *a2;
  v9 = *(a2 + 2);
  v10 = *(a2 + 202);
  v11 = *(a2 + 220);
  v12 = *(a2 + 24);
  v13 = 1;
  OZShape::getReparametrizedContourLength(a1 + 18976, &v8, a3, a4);
}

void OZRotoshape::getReparametrizedPointOnContour(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, double *a8)
{
  OZShapeRenderState::OZShapeRenderState(&v16);
  v16 = *a2;
  v17 = *(a2 + 2);
  v18 = *(a2 + 202);
  v19 = *(a2 + 220);
  v20 = *(a2 + 24);
  v21 = 1;
  OZShape::getReparametrizedPointOnContour(a1 + 18976, &v16, a3, a4, a5, a6, a7, a8);
}

void sub_260076330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void OZGLGradientRadial::OZGLGradientRadial(OZGLGradientRadial *this, OZChannelGradient *a2, CGColorSpace *a3, CGColorSpace *a4, char a5)
{
  *(this + 60) = &unk_2872DEA38;
  *(this + 61) = 0;
  *(this + 496) = 1;
  *this = &unk_287277BC8;
  v7 = (this + 8);
  OZGradient::OZGradient((this + 8), off_287277A48, a2, a3, a4);
  *this = &unk_287277978;
  *(this + 1) = &unk_2872779D8;
  *(this + 60) = &unk_287277A28;
  *(this + 37) = 0x3FF0000000000000;
  *(this + 32) = 0x3FF0000000000000;
  *(this + 27) = 0x3FF0000000000000;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 43) = 0;
  *(this + 44) = 0;
  *(this + 42) = 0x3FF0000000000000;
  *(this + 359) = 0;
  *(this + 363) = 1;
  *(this + 208) = 1;
  *(this + 419) = 0;
  *(this + 420) = a5;
  PCColor::PCColor((this + 424));
  PCImageAttributes::PCImageAttributes(v16);
  v8 = vcvtd_n_f64_s32(*(*(this + 2) + 12), 2uLL);
  v16[0] = 2;
  v16[1] = v8;
  v17 = xmmword_26084F1E0;
  UserTag = HGRenderJob::GetUserTag(v7);
  PCColorSpaceHandle::setColorSpace(v18, UserTag);
  v18[1] = 3553;
  v19 = 0;
  PGCreatePooledImage(v16, &v13);
  PCDynamicCast<PGTexture,PCImage>(&v13, &v15);
  v10 = v15;
  v15 = 0uLL;
  v11 = *(this + 44);
  *(this + 344) = v10;
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
    if (*(&v15 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v15 + 1));
    }
  }

  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  v12 = HGRenderJob::GetUserTag(v7);
  (*(*this + 48))(this, v12);
  PCCFRef<CGColorSpace *>::~PCCFRef(v18);
}

void sub_260076568(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  PCCFRef<CGColorSpace *>::~PCCFRef((v9 + 472));
  v13 = *(v9 + 352);
  if (v13)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  }

  OZGradient::~OZGradient(v11, off_287277A48);
  *(v9 + 480) = v10;
  *(v9 + 496) = 0;
  PCWeakCount::~PCWeakCount((v9 + 488));
  _Unwind_Resume(a1);
}

void OZGLGradientRadial::~OZGLGradientRadial(OZGLGradientRadial *this, uint64_t *a2)
{
  v4 = *a2;
  *this = *a2;
  v5 = (this + 8);
  *(this + 1) = a2[5];
  *(this + *(v4 - 24)) = a2[6];
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 59);
  v6 = *(this + 44);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }

  OZGradient::~OZGradient(v5, a2 + 1);
}

void OZGLGradientRadial::~OZGLGradientRadial(OZGLGradientRadial *this)
{
  *(v1 + 480) = &unk_2872DEA38;
  *(v1 + 496) = 0;
  PCWeakCount::~PCWeakCount((v1 + 488));
}

{
  *(v1 + 480) = &unk_2872DEA38;
  *(v1 + 496) = 0;
  PCWeakCount::~PCWeakCount((v1 + 488));

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZGLGradientRadial::~OZGLGradientRadial(OZGLGradientRadial *this)
{
  *(this + 59) = &unk_2872DEA38;
  *(this + 488) = 0;

  PCWeakCount::~PCWeakCount(this + 60);
}

{
  OZGLGradientRadial::~OZGLGradientRadial((this - 8));
}

void virtual thunk toOZGLGradientRadial::~OZGLGradientRadial(OZGLGradientRadial *this)
{
  *(v1 + 480) = &unk_2872DEA38;
  *(v1 + 496) = 0;
  v2 = (v1 + 488);

  PCWeakCount::~PCWeakCount(v2);
}

{
  OZGLGradientRadial::~OZGLGradientRadial((this + *(*this - 24)));
}

double OZGLGradientRadial::init(ProGL::Private::TextureImpl ***this, CGColorSpace *a2)
{
  if ((atomic_load_explicit(&qword_280C5EA10, memory_order_acquire) & 1) == 0)
  {
    OZGLGradientRadial::init();
  }

  Instance = OZShaderManager::getInstance(this);
  v17 = &_MergedGlobals_39;
  PCSpinLock::lock(&_MergedGlobals_39);
  if (!OZShaderManager::getShader(Instance, "radialGradient"))
  {
    PGPerThreadSetCurrentContextSentry::PGPerThreadSetCurrentContextSentry(v16);
    operator new();
  }

  PCSpinLock::unlock(&_MergedGlobals_39);
  v6 = OZShaderManager::getInstance(v5);
  Shader = OZShaderManager::getShader(v6, "radialGradient");
  if (Shader)
  {
  }

  this[46] = Shader;
  v8 = OZShaderManager::getShader(v6, "radialGradientFloat");
  if (v8)
  {
  }

  this[47] = v8;
  if (*(this + 420))
  {
    v9 = "radialGradientMultiText";
  }

  else
  {
    v9 = "radialGradientMulti";
  }

  v10 = OZShaderManager::getShader(v6, v9);
  if (v10)
  {
  }

  this[48] = v10;
  v11 = OZShaderManager::getShader(v6, "radialGradientMultiFloat");
  if (v11)
  {
  }

  this[49] = v11;
  v12 = OZShaderManager::getShader(v6, "radialGradientMultiColor");
  if (v12)
  {
  }

  this[50] = v12;
  v13 = OZShaderManager::getShader(v6, "radialGradientMultiColorFloat");
  if (v13)
  {
  }

  this[51] = v13;
  OZGradient::init((this + 1), a2);
  PGTexture::bind(this[43]);
  PGTexture::setParameteri(this[43], 10240, 9729);
  PGTexture::setParameteri(this[43], 10241, 9729);
  PGTexture::setParameteri(this[43], 10242, 33071);
  v14 = this[43];
  if (v14)
  {
  }

  PGTexture2D::setDataPtr(v14, this[2][3], 0x1908u, 0x1406u);
  return OZGLGradientRadial::computeTexgenCoefficients(this);
}

void sub_260076E98(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va1, a2);
  va_start(va, a2);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  MEMORY[0x2666E9F00](v2, 0x10A1C40878AE62CLL);
  PGPerThreadSetCurrentContextSentry::~PGPerThreadSetCurrentContextSentry(va);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va1);
  _Unwind_Resume(a1);
}

double OZGLGradientRadial::computeTexgenCoefficients(OZGLGradientRadial *this)
{
  v1 = *(this + 6);
  v2 = *(this + 7);
  v3 = *(this + 8) - v1;
  v4 = *(this + 9) - v2;
  v5 = fmaxf((v3 * v3) + (v4 * v4), 0.0000001);
  v6 = (v3 / v5);
  *(this + 27) = v6;
  v7 = this + 216;
  *(v7 + 15) = 0x3FF0000000000000;
  *(v7 + 10) = 0x3FF0000000000000;
  *(v7 + 2) = 0;
  *(v7 + 4) = 0;
  *(v7 + 5) = 0x3FF0000000000000;
  *(v7 + 3) = 0u;
  *(v7 + 4) = 0u;
  *(v7 + 88) = 0u;
  *(v7 + 104) = 0u;
  v8 = (v4 / v5);
  *(v7 + 1) = v8;
  *(v7 + 3) = -(v1 * v6 + v2 * v8 + 0.0);
  return PCMatrix44Tmpl<double>::rightMult(v7, v7 - 20);
}

void OZGLGradientRadial::getHash(OZGLGradientRadial *this, CMTime *a2)
{
  v2 = MEMORY[0x28223BE20](this);
  v4 = v3;
  v7[520] = *MEMORY[0x277D85DE8];
  OZGradient::getHash((v2 + 8), v5);
  PCHashWriteStream::PCHashWriteStream(v7);
  PCHashWriteStream::writeValue(v7, v2[417]);
  PCHashWriteStream::writeValue(v7, v2[419]);
  Hash = PCHashWriteStream::getHash(v7);
  PCHash128::operator+=(v4, Hash);
  PCHashWriteStream::~PCHashWriteStream(v7);
}

uint64_t OZGLGradientRadial::update(OZGLGradientRadial *this, CMTime *a2)
{
  v16 = *a2;
  v3 = OZGradient::update((this + 8), &v16);
  if (v3)
  {
    if (*(this + 417) == 1)
    {
      v4 = *(this + 2);
      v5 = vcvtd_n_f64_s32(*(v4 + 12), 2uLL);
      if (v5)
      {
        v6 = *(v4 + 24);
        __asm { FMOV            V0.2S, #1.0 }

        do
        {
          *v6 = _D0;
          *(v6 + 8) = 1065353216;
          v6 += 16;
          --v5;
        }

        while (v5);
      }
    }

    if (*(this + 419) == 1)
    {
      v12 = (*(*(this + 2) + 24) + 4 * (4 * vcvtd_n_f64_s32(*(*(this + 2) + 12), 2uLL) - 4));
      UserTag = HGRenderJob::GetUserTag((this + 8));
      PCColor::getRGBA((this + 424), v12, v12 + 1, v12 + 2, v12 + 3, UserTag);
    }

    v14 = *(this + 43);
    if (v14)
    {
    }

    PGTexture2D::setDataPtr(v14, *(*(this + 2) + 24), 0x1908u, 0x1406u);
  }

  return v3;
}

void OZGLGradientRadial::enable(OZGLGradientRadial *this)
{
  ProGL::GL::GL(v17);
  PGTexture::bind(*(this + 43));
  PGTexture::enable(*(this + 43));
  if (*(this + 416))
  {
    v3 = *(this + 24);
    v4 = vsub_f32(*(this + 32), v3);
    v4.f32[0] = sqrtf(vaddv_f32(vmul_f32(v4, v4)));
    v5 = 1.0 / v4.f32[0];
    v6 = v4.f32[0] == 0.0;
    v7 = 1000.0;
    if (!v6)
    {
      v7 = v5;
    }

    v8 = v7;
    v9 = *(this + 23) * v8;
    *(this + 27) = v9;
    *(this + 42) = 0x3FF0000000000000;
    *(this + 37) = 0x3FF0000000000000;
    *(this + 15) = 0u;
    *(this + 14) = 0u;
    *(this + 264) = 0u;
    *(this + 280) = 0u;
    *(this + 19) = 0u;
    *(this + 20) = 0u;
    v10 = v3.f32[0];
    v11 = v3.f32[1];
    *(this + 30) = -(v9 * v10 + v11 * 0.0 + 0.0);
    *(this + 32) = v8;
    *(this + 34) = -(v11 * v8 + v10 * 0.0 + 0.0);
    v2.n128_f64[0] = PCMatrix44Tmpl<double>::rightMult(this + 216, this + 7);
  }

  if (*(this + 360) != 1)
  {
    v14 = 368;
    if (*(this + 361))
    {
      v14 = 376;
    }

    v15 = 400;
    if (*(this + 361))
    {
      v15 = 408;
    }

    if (*(this + 418) == 1)
    {
      v16 = v15;
    }

    else
    {
      v16 = v14;
    }

    goto LABEL_16;
  }

  if (*(this + 361) != 1)
  {
    v16 = 384;
LABEL_16:
    (*(**(this + v16) + 16))(*(this + v16), v2);
    goto LABEL_17;
  }

  v12 = (*(**(this + 49) + 16))(*(this + 49), v2);
  v12.n128_u8[0] = *(this + 362);
  LOBYTE(v13) = *(this + 363);
  PGProgram::setLocalParameter(*(this + 49), v12.n128_u32[0], v13, 0.0, 0.0);
LABEL_17:
  ProGL::GL::~GL(v17);
}

void sub_260077390(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  ProGL::GL::~GL(va);
  _Unwind_Resume(a1);
}

uint64_t OZGLGradientRadial::disable(OZGLGradientRadial *this)
{
  if (*(this + 360) == 1)
  {
    v2 = 384;
    if (*(this + 361))
    {
      v2 = 392;
    }
  }

  else
  {
    v3 = 368;
    if (*(this + 361))
    {
      v3 = 376;
    }

    v4 = 400;
    if (*(this + 361))
    {
      v4 = 408;
    }

    if (*(this + 418) == 1)
    {
      v2 = v4;
    }

    else
    {
      v2 = v3;
    }
  }

  (*(**(this + v2) + 24))(*(this + v2));
  v5 = *(this + 43);

  return PGTexture::disable(v5);
}

void PGARBFragmentProgram::~PGARBFragmentProgram(PGARBFragmentProgram *this)
{
  PGProgram::~PGProgram(this);

  JUMPOUT(0x2666E9F00);
}

void OZGLGradientRadial::init()
{
  if (__cxa_guard_acquire(&qword_280C5EA10))
  {
    _MergedGlobals_39 = 0;
    __cxa_atexit(PCSpinLock::~PCSpinLock, &_MergedGlobals_39, &dword_25F8F0000);

    __cxa_guard_release(&qword_280C5EA10);
  }
}

void OZWriteOnBehavior::OZWriteOnBehavior(OZWriteOnBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v10 = *MEMORY[0x277D85DE8];
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_287277C50;
  v5[2] = &unk_287277F00;
  v5[6] = &unk_287278158;
  v5[42] = &unk_2872781B0;
  PCURL::PCURL(v8, @"Write On  Parameter Outline");
  PCURL::PCURL(&v7, @"Write On Behavior Outline");
  OZChannelEnum::OZChannelEnum((this + 536), 0, v8, &v7, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(v8);
  PCURL::PCURL(v8, @"Write On Behavior Length");
  OZChannelPercent::OZChannelPercent((this + 792), 1.0, v8, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(v8);
  PCURL::PCURL(v8, @"Write On Behavior Offset");
  OZChannelDouble::OZChannelDouble((this + 944), 0.0, v8, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(v8);
  PCURL::PCURL(v8, @"Write On Parameter Direction");
  PCURL::PCURL(&v7, @"Write On Behavior Direction");
  OZChannelEnum::OZChannelEnum((this + 1096), 0, v8, &v7, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(v8);
  PCURL::PCURL(v8, @"Write On Parameter Speed");
  PCURL::PCURL(&v7, @"Write On Behavior Speed");
  OZChannelEnum::OZChannelEnum((this + 1352), 0, v8, &v7, (this + 56), 0xCCu, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::~PCString(v8);
  PCURL::PCURL(v8, @"Write On Behavior Custom Speed");
  OZChannelPercent::OZChannelPercent((this + 1608), 0.0, v8, (this + 56), 0xCDu, 0, 0, 0);
  PCString::~PCString(v8);
  PCURL::PCURL(v8, @"Write On Behavior End Frame Offset");
  OZChannelDouble::OZChannelDouble((this + 1760), v8, (this + 56), 0xCEu, 0, 0, 0);
  PCString::~PCString(v8);
  PCSharedCount::PCSharedCount(v8);
  OZChannelBool::OZChannelBool((this + 1912), 0, v8, (this + 56), 0xCFu, 2u, 0, 0);
  PCString::~PCString(v8);
  *(this + 2064) = 0;
  *(this + 2072) = 0u;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  *&v8[0].var0 = xmmword_26084F260;
  v9 = unk_26084F270;
  OZChannelEnum::setTags((this + 1352), v8, 8);
  OZChannel::setKeyframable((this + 1760), 0);
  OZChannelBase::resetFlag((this + 1760), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1760));
  OZChannel::setScale((this + 944), 100.0);
  OZChannel::setSuffix((this + 944), "%");
  OZChannel::setCoarseDelta((this + 944), 0.01);
  OZChannel::setFineDelta((this + 944), 0.0001);
  OZChannel::setSliderMax((this + 944), 1.0);
  OZChannel::setSliderMin((this + 944), 0.0);
  OZChannel::setMin((this + 944), 0.0);
  v6 = MEMORY[0x277CC08F0];
  *(this + 2120) = *MEMORY[0x277CC08F0];
  *(this + 267) = *(v6 + 16);
  OZChannel::setDiscrete((this + 1608), 0, 0);
}

void sub_260077994(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  PCString::~PCString(&a11);
  OZChannel::~OZChannel((v11 + 1760));
  OZChannelPercent::~OZChannelPercent((v11 + 1608));
  OZChannelEnum::~OZChannelEnum((v11 + 1352));
  OZChannelEnum::~OZChannelEnum((v11 + 1096));
  OZChannel::~OZChannel((v11 + 944));
  OZChannelPercent::~OZChannelPercent((v11 + 792));
  OZChannelEnum::~OZChannelEnum((v11 + 536));
  OZChannelBehavior::~OZChannelBehavior(v11);
  _Unwind_Resume(a1);
}

void OZWriteOnBehavior::OZWriteOnBehavior(OZWriteOnBehavior *this, const OZWriteOnBehavior *a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v5 = &unk_287277C50;
  v5[2] = &unk_287277F00;
  v5[6] = &unk_287278158;
  v5[42] = &unk_2872781B0;
  OZChannelEnum::OZChannelEnum((v5 + 67), (a2 + 536), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 792), (a2 + 792), (this + 56));
  OZChannel::OZChannel((this + 944), (a2 + 944), (this + 56));
  *(this + 118) = &unk_287245C60;
  *(this + 120) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 1096), (a2 + 1096), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1352), (a2 + 1352), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 1608), (a2 + 1608), (this + 56));
  OZChannel::OZChannel((this + 1760), (a2 + 1760), (this + 56));
  *(this + 220) = &unk_287245C60;
  *(this + 222) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 1912), (a2 + 1912), (this + 56));
  *(this + 2064) = *(a2 + 2064);
  *(this + 2072) = 0u;
  *(this + 2088) = 0u;
  *(this + 2104) = 0u;
  OZChannel::setScale((this + 944), 100.0);
  OZChannel::setSuffix((this + 944), "%");
  OZChannel::setCoarseDelta((this + 944), 0.01);
  OZChannel::setFineDelta((this + 944), 0.0001);
  OZChannel::setSliderMax((this + 944), 1.0);
  OZChannel::setSliderMin((this + 944), 0.0);
  v6 = MEMORY[0x277CC08F0];
  *(this + 2120) = *MEMORY[0x277CC08F0];
  *(this + 267) = *(v6 + 16);
}

void sub_260077D40(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v3);
  OZChannelPercent::~OZChannelPercent((v1 + 1608));
  OZChannelEnum::~OZChannelEnum((v1 + 1352));
  OZChannelEnum::~OZChannelEnum((v1 + 1096));
  OZChannel::~OZChannel(v2);
  OZChannelPercent::~OZChannelPercent((v1 + 792));
  OZChannelEnum::~OZChannelEnum((v1 + 536));
  OZChannelBehavior::~OZChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZWriteOnBehavior::~OZWriteOnBehavior(OZWriteOnBehavior *this)
{
  *this = &unk_287277C50;
  *(this + 2) = &unk_287277F00;
  *(this + 6) = &unk_287278158;
  *(this + 42) = &unk_2872781B0;
  v2 = *(this + 262);
  if (v2)
  {
    *(this + 263) = v2;
    operator delete(v2);
  }

  v3 = *(this + 259);
  if (v3)
  {
    *(this + 260) = v3;
    operator delete(v3);
  }

  OZChannelBool::~OZChannelBool((this + 1912));
  OZChannel::~OZChannel((this + 1760));
  OZChannelPercent::~OZChannelPercent((this + 1608));
  OZChannelEnum::~OZChannelEnum((this + 1352));
  OZChannelEnum::~OZChannelEnum((this + 1096));
  OZChannel::~OZChannel((this + 944));
  OZChannelPercent::~OZChannelPercent((this + 792));
  OZChannelEnum::~OZChannelEnum((this + 536));

  OZChannelBehavior::~OZChannelBehavior(this);
}

{
  OZWriteOnBehavior::~OZWriteOnBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZWriteOnBehavior::~OZWriteOnBehavior(OZWriteOnBehavior *this)
{
  OZWriteOnBehavior::~OZWriteOnBehavior((this - 16));
}

{
  OZWriteOnBehavior::~OZWriteOnBehavior((this - 48));
}

{
  OZWriteOnBehavior::~OZWriteOnBehavior((this - 336));
}

{
  OZWriteOnBehavior::~OZWriteOnBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZWriteOnBehavior::~OZWriteOnBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZWriteOnBehavior::~OZWriteOnBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

__n128 OZWriteOnBehavior::operator=(uint64_t a1, const void *a2)
{
  OZChannelBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 536, v4 + 536);
  OZChannelBase::operator=(a1 + 792, v5 + 792);
  OZChannelBase::operator=(a1 + 944, v5 + 944);
  OZChannelBase::operator=(a1 + 1096, v5 + 1096);
  OZChannelBase::operator=(a1 + 1352, v5 + 1352);
  OZChannelBase::operator=(a1 + 1608, v5 + 1608);
  OZChannelBase::operator=(a1 + 1912, v5 + 1912);
  OZChannelBase::operator=(a1 + 1760, v5 + 1760);
  v6 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *(a1 + 2120) = *MEMORY[0x277CC08F0];
  *(a1 + 2136) = *(v6 + 16);
  return result;
}

void OZWriteOnBehavior::didAddToNode(OZWriteOnBehavior *this, OZSceneNode *a2)
{
  OZChannelBehavior::didAddToNode(this, a2);
  if (a2)
  {
  }

  operator new();
}

double OZWriteOnBehavior::solveWriteOnNode(OZWriteOnBehavior *this, OZChannelBase *a2, const CMTime *a3, double a4, double a5)
{
  v52 = *a3;
  v51 = *a3;
  memset(&v50, 0, sizeof(v50));
  FrameDuration = OZBehavior::getFrameDuration(this, &v50);
  (*(*this + 608))(&v47, this, FrameDuration);
  v9 = (*(*this + 320))(this);
  if (v9)
  {
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v10 = 0;
    if (!a2)
    {
LABEL_9:
      v11 = (*(*this + 312))(this);
      if (!OZChannelBase::isEnabled(v11, 0, 1) || (*((*(*this + 320))(this) + 1024) & 2) != 0)
      {
        return a5;
      }

      OZChannelObjectRootBase::getTimeOffset((this + 56), &v54);
      time2 = v47;
      *&time1.value = v54;
      time1.epoch = v55;
      PC_CMTimeSaferSubtract(&time1, &time2, &v56);
      time1 = v56;
      time2 = v51;
      v12.n128_f64[0] = PC_CMTimeSaferAdd(&time1, &time2, &v51);
      (*(**(*(this + 47) + 32) + 320))(&v54, v12);
      time1 = v51;
      *&time2.value = v54;
      time2.epoch = v55;
      PC_CMTimeSaferAdd(&time1, &time2, &v56);
      OZChannelObjectRootBase::getTimeOffset((this + 56), &v53);
      time1 = v56;
      time2 = v53;
      PC_CMTimeSaferSubtract(&time1, &time2, &v46);
      v51 = v46;
      v54 = v48;
      v55 = v49;
      v13 = MEMORY[0x277CC08F0];
      ValueAsInt = OZChannel::getValueAsInt((this + 1760), MEMORY[0x277CC08F0], 0.0);
      operator*(&v50, &v53, ValueAsInt + -1.0);
      *&time1.value = v54;
      time1.epoch = v55;
      time2 = v53;
      PC_CMTimeSaferSubtract(&time1, &time2, &v56);
      time1 = v51;
      time2 = v56;
      if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
      {
        v54 = v48;
        v55 = v49;
        v15 = OZChannel::getValueAsInt((this + 1760), MEMORY[0x277CC08F0], 0.0);
        operator*(&v50, &v53, v15 + -1.0);
        *&time1.value = v54;
        time1.epoch = v55;
        time2 = v53;
        PC_CMTimeSaferSubtract(&time1, &time2, &v56);
        v51 = v56;
      }

      time1 = v51;
      time2 = *v13;
      if (CMTimeCompare(&time1, &time2) < 0)
      {
        v51 = *v13;
        if (!a2)
        {
          goto LABEL_21;
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      {
        OZChannel::getValueAsDouble((this + 944), &v51, 0.0);
        return v26;
      }

LABEL_21:
      (*(**(*(this + 47) + 32) + 320))(&v54);
      time1 = v51;
      *&time2.value = v54;
      time2.epoch = v55;
      PC_CMTimeSaferSubtract(&time1, &time2, &v56);
      OZChannelObjectRootBase::getTimeOffset((this + 56), &v53);
      time1 = v56;
      time2 = v53;
      PC_CMTimeSaferAdd(&time1, &time2, &v46);
      v52 = v46;
      OZChannelObjectRootBase::getTimeOffset((this + 56), &v53);
      time2 = v47;
      time1 = v53;
      PC_CMTimeSaferSubtract(&time1, &time2, &v54);
      time1 = v52;
      *&time2.value = v54;
      time2.epoch = v55;
      PC_CMTimeSaferSubtract(&time1, &time2, &v56);
      v52 = v56;
      (*(**(*(this + 47) + 32) + 336))(&time1);
      v52 = time1;
      Position = OZWriteOnBehavior::getPosition(this, &v52, &v51);
      if (*(this + 320) == 1)
      {
        time1 = v52;
        time2 = *(this + 2120);
        PC_CMTimeSaferSubtract(&time1, &time2, &v56);
        operator/(&v56.value, &v50, &time1);
        CurveValueForNode = *(*(this + 259) + 8 * CMTimeGetSeconds(&time1));
        time1 = v52;
        time2 = *(this + 2120);
        PC_CMTimeSaferSubtract(&time1, &time2, &v56);
        operator/(&v56.value, &v50, &time1);
        v19 = 0;
        value = 0;
        v21 = *(*(this + 262) + 8 * CMTimeGetSeconds(&time1));
      }

      else
      {
        OZChannel::enumerateCurveProcessingNodes((v10 + 28952), &time1);
        value = time1.value;
        v22 = *&time1.timescale;
        CurveValueForNode = 0.0;
        if (*&time1.timescale != time1.value)
        {
          while (1)
          {
            v24 = *(v22 - 1);
            v22 -= 8;
            v23 = v24;
            if (v24)
            {
              if (v25)
              {
                if (v25[1] == this)
                {
                  break;
                }
              }
            }

            if (v22 == value)
            {
              goto LABEL_31;
            }
          }

          PreviousProcessingNode = OZChannel::getPreviousProcessingNode((v10 + 28952), v25);
          (*(*(v10 + 3619) + 320))(&v54, v10 + 28952);
          time1 = v52;
          *&time2.value = v54;
          time2.epoch = v55;
          PC_CMTimeSaferSubtract(&time1, &time2, &v56);
          CurveValueForNode = OZChannel::getCurveValueForNode((v10 + 28952), &v56, PreviousProcessingNode, 0.0);
        }

LABEL_31:
        v28 = (v10 + 29104);
        OZChannel::enumerateCurveProcessingNodes((v10 + 29104), &time1);
        v19 = time1.value;
        v29 = *&time1.timescale;
        v21 = 1.0;
        if (*&time1.timescale != time1.value)
        {
          while (1)
          {
            v31 = *(v29 - 1);
            v29 -= 8;
            v30 = v31;
            if (v31)
            {
              if (v32)
              {
                if (v32[1] == this)
                {
                  break;
                }
              }
            }

            if (v29 == v19)
            {
              goto LABEL_38;
            }
          }

          v33 = OZChannel::getPreviousProcessingNode(v28, v32);
          (*(v28->var0 + 40))(&v54, v28);
          time1 = v52;
          *&time2.value = v54;
          time2.epoch = v55;
          PC_CMTimeSaferSubtract(&time1, &time2, &v56);
          v21 = OZChannel::getCurveValueForNode(v28, &v56, v33, 0.0);
        }
      }

LABEL_38:
      v34 = v21 - CurveValueForNode;
      if (v34 < 0.0)
      {
LABEL_52:
        if (v19)
        {
          operator delete(v19);
        }

        if (value)
        {
          operator delete(value);
        }

        if (v34 < 0.0)
        {
          return a5;
        }

        return Position;
      }

      var3 = a2->var3;
      if (var3 == 127)
      {
        if (OZChannel::getValueAsInt((this + 1096), MEMORY[0x277CC08F0], 0.0) != 1)
        {
          v36 = 1.0;
          if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) != 1)
          {
            if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 2)
            {
              if (Position <= 0.5)
              {
                v36 = Position + Position;
              }

              else
              {
                v36 = 1.0;
              }

              goto LABEL_51;
            }

            v36 = Position;
            if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 3)
            {
              v42 = 1.0;
              v43 = Position < 0.5;
              v45 = Position + Position + -1.0;
              goto LABEL_79;
            }
          }

          goto LABEL_51;
        }

        if (!OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0))
        {
          OZChannel::getValueAsDouble((this + 792), &v52, 0.0);
          v36 = 1.0 - Position + v41;
          goto LABEL_51;
        }

        if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 1)
        {
          goto LABEL_49;
        }

        if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 2)
        {
          v42 = 1.0;
          v43 = Position < 0.5;
          v44 = 1.0 - Position;
LABEL_78:
          v45 = v44 + v44;
LABEL_79:
          if (v43)
          {
            v36 = v42;
          }

          else
          {
            v36 = v45;
          }

          goto LABEL_51;
        }

        v36 = Position;
        if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 3)
        {
          v37 = 1.0;
          v38 = Position < 0.5;
          v39 = 1.0 - (Position + Position);
LABEL_84:
          if (v38)
          {
            v36 = v39;
          }

          else
          {
            v36 = v37;
          }
        }
      }

      else
      {
        if (var3 != 126)
        {
          v36 = Position;
          goto LABEL_51;
        }

        if (OZChannel::getValueAsInt((this + 1096), MEMORY[0x277CC08F0], 0.0) == 1)
        {
          if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0))
          {
            v36 = 0.0;
            if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) != 1)
            {
              if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 2)
              {
                v37 = 0.0;
                v38 = Position < 0.5;
                v39 = 1.0 - (Position + Position);
                goto LABEL_84;
              }

              v36 = Position;
              if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 3)
              {
                v42 = 0.0;
                v43 = Position < 0.5;
                v44 = 1.0 - Position;
                goto LABEL_78;
              }
            }

            goto LABEL_51;
          }

LABEL_49:
          v36 = 1.0 - Position;
          goto LABEL_51;
        }

        if (!OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0))
        {
          OZChannel::getValueAsDouble((this + 792), &v52, 0.0);
          v36 = Position - v40;
          goto LABEL_51;
        }

        if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 2)
        {
          if (Position > 0.5)
          {
            v36 = Position + Position + -1.0;
          }

          else
          {
            v36 = 0.0;
          }

          goto LABEL_51;
        }

        v36 = Position;
        if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 3)
        {
          v37 = 0.0;
          v38 = Position < 0.5;
          v39 = Position + Position;
          goto LABEL_84;
        }
      }

LABEL_51:
      Position = CurveValueForNode + v34 * v36;
      goto LABEL_52;
    }
  }

  {
    goto LABEL_9;
  }

  a5 = 0.0;
  if (OZChannel::getValueAsInt((this + 1352), MEMORY[0x277CC08F0], 0.0) == 8)
  {
    return 1.0;
  }

  return a5;
}

void sub_2600794C4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

double OZWriteOnBehavior::getPosition(OZWriteOnBehavior *this, const CMTime *a2, const CMTime *a3)
{
  v6 = MEMORY[0x277CC08F0];
  v37 = **&MEMORY[0x277CC08F0];
  v36 = 0.0;
  v7 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((this + 1352), MEMORY[0x277CC08F0], 0.0);
  (*(*this + 608))(v34, this);
  if (ValueAsInt == 7)
  {
    OZChannel::getValueAsDouble((this + 1608), a2, 0.0);
    return v9;
  }

  if (!(*(*this + 336))(this))
  {
    return v7;
  }

  v33 = *v6;
  v32 = v35;
  v10 = (*(*this + 336))(this);
  OZSceneSettings::getFrameDuration((v10 + 336), &time);
  time1 = v32;
  time2 = time;
  PC_CMTimeSaferSubtract(&time1, &time2, &v33);
  v32 = *a3;
  time1 = v33;
  time2 = *v6;
  if (CMTimeCompare(&time1, &time2) < 1)
  {
    v36 = 1.0;
    goto LABEL_38;
  }

  if (ValueAsInt <= 3)
  {
    if (ValueAsInt > 1)
    {
      if (ValueAsInt == 2)
      {
        if (OZChannel::getValueAsInt((this + 1912), MEMORY[0x277CC08F0], 0.0))
        {
          operator/(&v32.value, &v33, &time1);
          Seconds = CMTimeGetSeconds(&time1);
          v17 = sin(Seconds * 1.57079633);
          goto LABEL_37;
        }

        operator/(&v32.value, &v33, &time1);
        v26 = CMTimeGetSeconds(&time1);
        v36 = v26;
        v27 = 1.0;
        v28 = 0.0;
      }

      else
      {
        if (OZChannel::getValueAsInt((this + 1912), MEMORY[0x277CC08F0], 0.0))
        {
          operator/(&v32.value, &v33, &time1);
          v16 = CMTimeGetSeconds(&time1);
          v17 = (cos((v16 + 1.0) * 3.14159265) + 1.0) * 0.5;
LABEL_37:
          v36 = v17;
          goto LABEL_38;
        }

        operator/(&v32.value, &v33, &time1);
        v26 = CMTimeGetSeconds(&time1);
        v36 = v26;
        v27 = 0.5;
        v28 = 0.5;
      }
    }

    else
    {
      if (!ValueAsInt)
      {
LABEL_23:
        operator/(&v32.value, &v33, &time1);
        v17 = CMTimeGetSeconds(&time1);
        goto LABEL_37;
      }

      if (ValueAsInt != 1)
      {
        goto LABEL_38;
      }

      if (OZChannel::getValueAsInt((this + 1912), MEMORY[0x277CC08F0], 0.0))
      {
        operator/(&v32.value, &v33, &time1);
        v13 = CMTimeGetSeconds(&time1);
        v14 = cos((v13 + 2.0) * 1.57079633);
        v15 = 1.0;
        goto LABEL_29;
      }

      operator/(&v32.value, &v33, &time1);
      v26 = CMTimeGetSeconds(&time1);
      v36 = v26;
      v27 = 0.0;
      v28 = 1.0;
    }

    PCMath::easeInOut(&v36, v26, v27, v28, 0.0, 1.0, 0, v25);
    goto LABEL_38;
  }

  if (ValueAsInt <= 5)
  {
    if (ValueAsInt != 4)
    {
      time1 = v33;
      v18 = CMTimeGetSeconds(&time1);
      time1 = v32;
      v19 = 1.0 / (v18 * v18);
      v20 = CMTimeGetSeconds(&time1);
      v17 = v19 * (v20 * v20);
      goto LABEL_37;
    }

    operator*(&v33, &v37, 0.5);
    time1 = v32;
    time2 = v37;
    if (CMTimeCompare(&time1, &time2) <= 0)
    {
      operator*(&v37.value, &v32, &time1);
      v17 = 1.0 / CMTimeGetSeconds(&time1);
      goto LABEL_37;
    }

    operator*(&v37.value, &v32, &time1);
    v14 = -1.0 / CMTimeGetSeconds(&time1);
    v15 = 2.0;
LABEL_29:
    v17 = v14 + v15;
    goto LABEL_37;
  }

  switch(ValueAsInt)
  {
    case 6:
      time1 = v33;
      v22 = CMTimeGetSeconds(&time1);
      time1 = v33;
      time2 = v32;
      v23 = 1.0 / (v22 * v22);
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      v24 = CMTimeGetSeconds(&time);
      v17 = 1.0 - v23 * (v24 * v24);
      goto LABEL_37;
    case 8:
      goto LABEL_23;
    case 9:
      v11 = (*(*this + 320))(this);
      if (v11)
      {
      }

      else
      {
        v12 = 0;
      }

      operator/(&v32.value, &v33, &time1);
      v36 = CMTimeGetSeconds(&time1);
      OZFigTimeForChannelSeconds(&time1, v36, 0x40000);
      OZChannel::getValueAsDouble((v12 + 29256), &time1, 0.0);
      goto LABEL_37;
  }

LABEL_38:
  v29 = 1.0;
  if (v36 <= 1.0)
  {
    v29 = v36;
  }

  if (v36 >= 0.0)
  {
    return v29;
  }

  else
  {
    return 0.0;
  }
}

void OZWriteOnBehavior::solveWriteOnNode(OZWriteOnBehavior *this, OZChannelBase *a2, OZCurveNodeParam *a3)
{
  v3 = *(a3 + 19);
  v4 = *(a3 + 10);
  v11 = *(a3 + 5);
  v5 = *(a3 + 6);
  *&v10.value = v5;
  v10.epoch = *(a3 + 14);
  if (*(a3 + 36))
  {
    v9 = 0;
    do
    {
      *(v3 + 8 * v9) = OZWriteOnBehavior::solveWriteOnNode(this, a2, &v10, *&v5, *(v4 + 8 * v9));
      v13 = v10;
      v12 = v11;
      *&v5 = PC_CMTimeSaferAdd(&v13, &v12, &v10);
      ++v9;
    }

    while (v9 < *(a3 + 36));
  }
}

OZChannelBase *OZWriteOnBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  result = OZChannel::getValueAsInt((a1 + 1352), MEMORY[0x277CC08F0], 0.0);
  v4 = result;
  v5 = *(a2 + 8);
  if (v5 == a2)
  {
LABEL_6:
    while (v5 != a2)
    {
      result = OZChannelBase::enable((v8 + 1608), v4 == 7, 1);
      v5 = *(v5 + 8);
    }
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    while (1)
    {
      result = OZChannel::getValueAsInt((v7 + 1352), v6, 0.0);
      if (v4 != result)
      {
        break;
      }

      v5 = *(v5 + 8);
      if (v5 == a2)
      {
        v5 = *(a2 + 8);
        goto LABEL_6;
      }
    }

    for (i = *(a2 + 8); i != a2; i = *(i + 8))
    {
      result = OZChannelBase::enable((v10 + 1608), 1, 1);
    }
  }

  return result;
}

void OZWriteOnBehavior::setDefaultSpeedType(OZWriteOnBehavior *this, unsigned int a2)
{
  OZChannel::setDefaultValue((this + 1352), a2);

  OZChannelBase::reset((this + 1352), 0);
}

uint64_t OZWriteOnBehavior::reset(OZWriteOnBehavior *this)
{
  (*(*this + 608))(v7);
  OZChannelBase::reset((this + 1608), 0);
  OZChannel::setInterpolation((this + 1608), 4);
  OZChannel::setKeyframe((this + 1608), MEMORY[0x277CC08F0], 0.0, 1);
  v5 = v8;
  OZBehavior::getFrameDuration(this, &v3);
  v10 = v5;
  *&v9.value = v3;
  v9.epoch = v4;
  PC_CMTimeSaferSubtract(&v10, &v9, &v6);
  return OZChannel::setKeyframe((this + 1608), &v6, 100.0, 1);
}

uint64_t OZWriteOnBehavior::parseBegin(OZWriteOnBehavior *this, PCSerializerReadStream *a2)
{
  OZChannelBase::reset((this + 1608), 0);
  if (*(a2 + 26) <= 4u)
  {
    OZChannel::setValue((this + 1912), MEMORY[0x277CC08F0], 1.0, 0);
  }

  return OZBehavior::parseBegin(this, a2);
}

uint64_t OZWriteOnBehavior::getCurveNodeForChannel(OZWriteOnBehavior *this, OZChannel *a2)
{
  OZChannel::enumerateCurveProcessingNodes(a2, &v10);
  v3 = v10;
  v4 = v11;
  if (v10 != v11)
  {
    v5 = 0;
    while (1)
    {
      v6 = *&v3[v5];
      if (v6)
      {
        if (v7)
        {
          if (v7[1] == this)
          {
            break;
          }
        }
      }

      v5 += 8;
      if (&v3[v5] == v4)
      {
        goto LABEL_7;
      }
    }

    if (v5)
    {
      v8 = *&v3[v5 - 8];
      if (!v3)
      {
        return v8;
      }

      goto LABEL_8;
    }
  }

LABEL_7:
  v8 = 0;
  if (v3)
  {
LABEL_8:
    operator delete(v3);
  }

  return v8;
}

char *OZWriteOnBehavior::willBake(OZWriteOnBehavior *this, PCTimeRange *a2)
{
  result = (*(*this + 320))(this);
  if (result)
  {
    if (result)
    {
      v5 = result;
      v9 = *(a2 + 24);
      v10 = *(a2 + 5);
      v6 = (*(*this + 336))(this);
      OZSceneSettings::getFrameDuration((v6 + 336), &v8);
      operator/(&v9, &v8, &time);
      Seconds = CMTimeGetSeconds(&time);
      *(this + 260) = *(this + 259);
      *(this + 263) = *(this + 262);
      v7 = *(a2 + 2);
      *(this + 2120) = *a2;
      *(this + 267) = v7;
      OZWriteOnBehavior::getCurveNodeForChannel(this, (v5 + 28952));
      v9 = *a2;
      v10 = *(a2 + 2);
      (*(*(v5 + 3619) + 328))(&time, v5 + 28952, &v9);
      CMTimeMake(&v8, 1, 1);
      OZChannel::getSamples((v5 + 28952));
      OZWriteOnBehavior::getCurveNodeForChannel(this, (v5 + 29104));
      v9 = *a2;
      v10 = *(a2 + 2);
      (*(*(v5 + 3638) + 328))(&time, v5 + 29104, &v9);
      CMTimeMake(&v8, 1, 1);
      result = OZChannel::getSamples((v5 + 29104));
    }
  }

  *(this + 320) = 1;
  return result;
}

__n128 OZWriteOnBehavior::didBake(OZWriteOnBehavior *this)
{
  *(this + 260) = *(this + 259);
  *(this + 263) = *(this + 262);
  v1 = MEMORY[0x277CC08F0];
  result = *MEMORY[0x277CC08F0];
  *(this + 2120) = *MEMORY[0x277CC08F0];
  *(this + 267) = *(v1 + 16);
  *(this + 320) = 0;
  return result;
}

void OZ3DEngineApplyForceBehavior::OZ3DEngineApplyForceBehavior(OZ3DEngineApplyForceBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZBehavior::OZBehavior(this, a2, a3, a4);
  OZLocking::OZLocking((v5 + 336));
  *this = &unk_2872781F0;
  *(this + 2) = &unk_287278488;
  *(this + 6) = &unk_2872786E0;
  *(this + 42) = &unk_287278738;
  PCString::PCString(&v7, "Fixed;Towards Object");
  PCString::PCString(&v6, "Direction Mode");
  OZChannelEnum::OZChannelEnum((this + 536), 0, &v7, &v6, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Direction");
  OZChannel3D::OZChannel3D((this + 792), 0.0, 1.0, 0.0, &v7, (this + 56), 0xC8u, 0, 3u, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Target Object");
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 1384), &v7, (this + 56), 0xCCu, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Strength");
  OZChannelDouble::OZChannelDouble((this + 1544), 1.0, &v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCString::PCString(&v7, "Instantaneous");
  OZChannelBool::OZChannelBool((this + 1696), 1, &v7, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v7);
  *(this + 231) = 0;
}

void sub_26007A500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 1544));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v12 + 1384));
  OZChannel3D::~OZChannel3D((v12 + 792));
  OZChannelEnum::~OZChannelEnum((v12 + 536));
  OZLocking::~OZLocking(v13);
  OZBehavior::~OZBehavior(v12);
  _Unwind_Resume(a1);
}

void OZ3DEngineApplyForceBehavior::OZ3DEngineApplyForceBehavior(OZ3DEngineApplyForceBehavior *this, const OZ3DEngineApplyForceBehavior *a2, char a3)
{
  OZBehavior::OZBehavior(this, a2, a3);
  OZLocking::OZLocking((v5 + 336));
  *this = &unk_2872781F0;
  *(this + 2) = &unk_287278488;
  *(this + 6) = &unk_2872786E0;
  *(this + 42) = &unk_287278738;
  OZChannelEnum::OZChannelEnum((this + 536), (a2 + 536), (this + 56));
  OZChannel3D::OZChannel3D((this + 792), (a2 + 792), (this + 56));
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 1384), (a2 + 1384), (this + 56));
  OZChannel::OZChannel((this + 1544), (a2 + 1544), (this + 56));
  *(this + 193) = &unk_287245C60;
  *(this + 195) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 1696), (a2 + 1696), (this + 56));
  *(this + 231) = 0;
}

void sub_26007A714(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v3);
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v1 + 1384));
  OZChannel3D::~OZChannel3D((v1 + 792));
  OZChannelEnum::~OZChannelEnum((v1 + 536));
  OZLocking::~OZLocking(v2);
  OZBehavior::~OZBehavior(v1);
  _Unwind_Resume(a1);
}

void OZ3DEngineApplyForceBehavior::~OZ3DEngineApplyForceBehavior(OZ3DEngineApplyForceBehavior *this)
{
  *this = &unk_2872781F0;
  *(this + 2) = &unk_287278488;
  *(this + 6) = &unk_2872786E0;
  *(this + 42) = &unk_287278738;

  OZChannelBool::~OZChannelBool((this + 1696));
  OZChannel::~OZChannel((this + 1544));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((this + 1384));
  *(this + 99) = &unk_28724B1C8;
  *(this + 101) = &unk_28724B528;
  OZChannel::~OZChannel((this + 1232));
  OZChannel2D::~OZChannel2D((this + 792));
  OZChannelEnum::~OZChannelEnum((this + 536));
  *(this + 42) = &unk_2872018B0;
  PCMutex::~PCMutex((this + 464));
  PCSharedMutex::~PCSharedMutex((this + 344));

  OZBehavior::~OZBehavior(this);
}

{
  OZ3DEngineApplyForceBehavior::~OZ3DEngineApplyForceBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZ3DEngineApplyForceBehavior::~OZ3DEngineApplyForceBehavior(OZ3DEngineApplyForceBehavior *this)
{
  OZ3DEngineApplyForceBehavior::~OZ3DEngineApplyForceBehavior((this - 16));
}

{
  OZ3DEngineApplyForceBehavior::~OZ3DEngineApplyForceBehavior((this - 48));
}

{
  OZ3DEngineApplyForceBehavior::~OZ3DEngineApplyForceBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZ3DEngineApplyForceBehavior::~OZ3DEngineApplyForceBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZ3DEngineApplyForceBehavior::operator=(uint64_t a1, const void *a2)
{
  OZBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelFolder::operator=(a1 + 792);
  OZChannelBase::operator=(a1 + 928, v5 + 928);
  OZChannelBase::operator=(a1 + 1080, v5 + 1080);
  OZChannelBase::operator=(a1 + 1232, v5 + 1232);
  OZChannelBase::operator=(a1 + 1544, v5 + 1544);
  OZChannelBase::operator=(a1 + 1696, v5 + 1696);

  return OZChanSceneNodeRef::operator=(a1 + 1384, v5 + 1384);
}

void *OZ3DEngineApplyForceBehavior::didAddToNode(void *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    if (this)
    {
      *(v3 + 328) = lpsrc;
    }
  }

  return this;
}

double OZ3DEngineApplyForceBehavior::fixedDirection@<D0>(OZ3DEngineApplyForceBehavior *this@<X0>, const CMTime *a2@<X1>, double *a3@<X8>)
{
  v8 = 0.0;
  v9 = 0.0;
  v7 = 0.0;
  OZChannelScale3D::getValue((this + 792), a2, &v9, &v8, &v7, 0.0);
  v5 = v8;
  result = v9;
  v6 = v7;
  *a3 = v9;
  a3[1] = v5;
  a3[2] = v6;
  return result;
}

id OZ3DEngineApplyForceBehavior::UUID(OZ3DEngineApplyForceBehavior *this)
{
  result = *(this + 231);
  if (!result)
  {
    result = [MEMORY[0x277CCAD78] UUID];
    *(this + 231) = result;
  }

  return result;
}

char *OZ3DEngineApplyForceBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  v10 = **&MEMORY[0x277CC08F0];
  result = OZChannel::getValueAsInt((a1 + 536), &v10, 0.0);
  v4 = result;
  v5 = *(a2 + 8);
  if (v5 == a2)
  {
    v6 = 1;
  }

  else
  {
    while (1)
    {
      result = *(v5 + 16);
      if (result)
      {
        if (result)
        {
          result = OZChannel::getValueAsInt((result + 536), &v10, 0.0);
          if (result != v4)
          {
            break;
          }
        }
      }

      v5 = *(v5 + 8);
      if (v5 == a2)
      {
        v6 = 1;
        goto LABEL_9;
      }
    }

    v6 = 0;
LABEL_9:
    v5 = *(a2 + 8);
  }

  for (; v5 != a2; v5 = *(v5 + 8))
  {
    v7 = *(v5 + 16);
    if (v7)
    {
    }

    else
    {
      v8 = 0;
    }

    v9 = (v8 + 1384);
    if (v6)
    {
      if (!v4)
      {
        OZChannelBase::setFlag(v9, 0x400000, 1);
        result = OZChannelBase::resetFlag((v8 + 792), 0x400000, 1);
        continue;
      }

      OZChannelBase::resetFlag(v9, 0x400000, 1);
    }

    else
    {
      OZChannelBase::setFlag(v9, 0x400000, 1);
    }

    result = OZChannelBase::setFlag((v8 + 792), 0x400000, 1);
  }

  return result;
}

uint64_t OZ3DEngineApplyForceBehavior::getLockDependencies(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = (result + 336);
  for (i = *(a4 + 8); i; i = *i)
  {
    v9 = i[4];
    if (v7 >= v9)
    {
      if (v9 >= v7)
      {
        return result;
      }

      ++i;
    }
  }

  v11 = (result + 336);
  std::__tree<OZLocking *>::__emplace_unique_key_args<OZLocking *,OZLocking *>(a4, &v11);
  v10 = (*(*v6 + 336))(v6);
  OZLocking::addLockDependenciesForDependents(v7, v10, a3, a4);
  v11 = v7;
  return std::__tree<OZLocking *>::__erase_unique<OZLocking *>(a4, &v11);
}

uint64_t OZ3DEngineApplyForceBehavior::getLockingGroups(OZ3DEngineApplyForceBehavior *this)
{
  result = (*(*this + 336))(this);
  if (result)
  {
    return (*(*this + 336))(this) + 1784;
  }

  return result;
}

uint64_t non-virtual thunk toOZ3DEngineApplyForceBehavior::getLockingGroups(OZ3DEngineApplyForceBehavior *this)
{
  v1 = this - 336;
  result = (*(*(this - 42) + 336))(this - 336);
  if (result)
  {
    return (*(*v1 + 336))(v1) + 1784;
  }

  return result;
}

void OZWriteOnCurveNode::~OZWriteOnCurveNode(OZWriteOnCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double OZWriteOnCurveNode::solveNode(OZWriteOnCurveNode *this, const CMTime *a2, double a3, double a4)
{
  v8 = *(this + 1);
  if (v8)
  {
  }

  v9 = *(this + 2);

  return OZWriteOnBehavior::solveWriteOnNode(v8, v9, a2, a3, a4);
}

void OZWriteOnCurveNode::solveNode(OZWriteOnCurveNode *this, OZCurveNodeParam *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
  }

  v5 = *(this + 2);

  OZWriteOnBehavior::solveWriteOnNode(v4, v5, a2);
}

__n128 OZWriteOnCurveNode::getNeededRange(OZWriteOnCurveNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

uint64_t PGMetalTexture::toBitmap@<X0>(PGMetalTexture *this@<X0>, void *a2@<X8>)
{
  result = *(this + 8);
  if (result)
  {
    v4 = *(this + 9);
    if (v4)
    {
      HGMetalTexture::CreateBitmapCopy(result, v4, *(result + 20), &v5);
      operator new();
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void sub_26007B33C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  (*(*v12 + 8))(v12);
  if (a12)
  {
    (*(*a12 + 24))(a12);
  }

  _Unwind_Resume(a1);
}

uint64_t PCCreateBitmap<FxBitmapRepHGBitmap>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 48))(*a1);
  switch(result)
  {
    case 1:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 2:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 3:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 4:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 5:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 6:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 7:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 8:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 9:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>,std::allocator<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 10:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 11:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 12:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 13:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 14:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 15:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 16:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    case 17:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,0>();
    default:
      *a2 = 0;
      a2[1] = 0;
      return result;
  }
}

void PGMetalTexture::~PGMetalTexture(PGMetalTexture *this)
{
  *this = &unk_2872788B0;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  PCImage::~PCImage(this);
}

{
  *this = &unk_2872788B0;
  v2 = *(this + 8);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  PCImage::~PCImage(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t PGMetalTexture::getWidth(PGMetalTexture *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return (*(v1 + 28) - *(v1 + 20));
  }

  else
  {
    return 0;
  }
}

uint64_t PGMetalTexture::getHeight(PGMetalTexture *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return (*(v1 + 32) - *(v1 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t PGMetalTexture::getSize(PGMetalTexture *this)
{
  v1 = *(this + 8);
  if (v1)
  {
    return *(v1 + 72);
  }

  else
  {
    return 0;
  }
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207BA8;
  std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007B8EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2871F8C88;
  return a1;
}

void sub_26007B994(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (*(**a2 + 32))();
  v7 = (*(**a2 + 40))();
  v8 = (*(**a2 + 48))();
  BitsPerChannel = PCPixelFormat::getBitsPerChannel(v8);
  v10 = (*(**a2 + 48))();
  NumChannels = PCPixelFormat::getNumChannels(v10);
  v12 = (*(**a2 + 48))();
  v13 = PCBitmap::sanitizeColorSpace(a3, v12);
  PCImage::PCImage(a1, v6, v7, BitsPerChannel, NumChannels, v13);
  *a1 = &unk_2872075C0;
  v14 = *a2;
  *a2 = 0;
  *(a1 + 64) = v14;
  *(a1 + 24) = 1;
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207BF8;
  std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007BC98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207C48;
  return a1;
}

void sub_26007BD40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207CC0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007BECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2872077B8;
  return a1;
}

void sub_26007BF74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207D10;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007C100(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207830;
  return a1;
}

void sub_26007C1A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207D60;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007C334(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2871F8AA8;
  return a1;
}

void sub_26007C3DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207DB0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007C568(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2872078A8;
  return a1;
}

void sub_26007C610(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207E00;
  std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007C79C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2871F8B98;
  return a1;
}

void sub_26007C844(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207E50;
  std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007C9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207EA0;
  return a1;
}

void sub_26007CA78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207F18;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007CC04(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_2871F89B8;
  return a1;
}

void sub_26007CCAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287207F68;
  std::allocator<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007CE38(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207FB8;
  return a1;
}

void sub_26007CEE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287208030;
  std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007D06C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287208080;
  return a1;
}

void sub_26007D114(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872080F8;
  std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007D2A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287208148;
  return a1;
}

void sub_26007D348(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872081C0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007D4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207920;
  return a1;
}

void sub_26007D57C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_287208210;
  std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007D708(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287208260;
  return a1;
}

void sub_26007D7B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872082D8;
  std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>::construct[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007D93C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287208328;
  return a1;
}

void sub_26007D9E4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872083A0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007DB70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207998;
  return a1;
}

void sub_26007DC18(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2872083F0;
  std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(&v5, a1 + 3, a2, a3);
  return a1;
}

uint64_t std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>::construct[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>,std::unique_ptr<FxBitmapRepHGBitmap>,CGColorSpace *&>(uint64_t a1, void *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  *a3 = 0;
  v6 = v4;
  PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>::PCBitmap_t<FxBitmapRepHGBitmap>(a2, &v6, *a4);
  result = v6;
  v6 = 0;
  if (result)
  {
    return (*(*result + 8))(result);
  }

  return result;
}

void sub_26007DDA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void *PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>::PCBitmap_t<FxBitmapRepHGBitmap>(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  *a2 = 0;
  v7 = v4;
  PCBitmap::PCBitmap<FxBitmapRepHGBitmap>(a1, &v7, a3);
  v5 = v7;
  v7 = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  *a1 = &unk_287207A10;
  return a1;
}

void sub_26007DE4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void OZTextStyle::OZTextStyle(OZTextStyle *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZStyle::OZStyle(this, a2, a3, a4);
  *v4 = &unk_287278928;
  v4[2] = &unk_287278A58;
  v4[6] = &unk_287278CB0;
}

void OZTextStyle::OZTextStyle(OZTextStyle *this, const OZTextStyle *a2, OZSceneNode *a3, char a4)
{
  OZStyle::OZStyle(this, a2, a3, a4);
  *v4 = &unk_287278928;
  v4[2] = &unk_287278A58;
  v4[6] = &unk_287278CB0;
}

void OZMotionPathBehavior::OZMotionPathBehavior(OZMotionPathBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v33 = *MEMORY[0x277D85DE8];
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_287278D20;
  v5[2] = &unk_287278FD8;
  v5[6] = &unk_287279230;
  v5[42] = &unk_287279288;
  PCURL::PCURL(v31, @"Motion Path Parameter Path Shape");
  PCURL::PCURL(&v30, @"Motion Path Behavior Path Shape");
  OZChannelEnum::OZChannelEnum((this + 536), v31, &v30, (this + 56), 0xCFu, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Channel Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 792), v31, (this + 56), 0xC8u, 0x28210002u, 3u);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Channel Position");
  OZChannelPosition3D::OZChannelPosition3D((this + 1680), v31, (this + 56), 0xCEu, 0x28210002u, 3u);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Parameter Path Type");
  PCURL::PCURL(&v30, @"Motion Path Behavior Path Type");
  OZChannelEnum::OZChannelEnum((this + 2568), 0, v31, &v30, (this + 56), 0xCDu, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Circle Radius");
  Instance = OZMotionPathBehavior::OZMotionPathBehavior_radiusImpl::getInstance(v6);
  v8 = OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo::getInstance(Instance);
  OZChannel2D::OZChannel2D((this + 2824), 200.0, 200.0, v31, (this + 56), 0xD4u, 0, 2u, Instance, v8);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Rect Size");
  v10 = OZMotionPathBehavior::OZMotionPathBehavior_rectSizeImpl::getInstance(v9);
  v11 = OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo::getInstance(v10);
  OZChannel2D::OZChannel2D((this + 3264), 400.0, 400.0, v31, (this + 56), 0xD5u, 0, 2u, v10, v11);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Wave Start Point");
  OZChannelPosition::OZChannelPosition((this + 3704), 0.0, 0.0, v31, (this + 56), 0xD6u, 0x10002u, 2u, 0, 0);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Wave End Point");
  OZChannelPosition::OZChannelPosition((this + 4408), 0.0, 0.0, v31, (this + 56), 0xD7u, 0, 2u, 0, 0);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Wave Amplitude");
  v13 = OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeImpl::getInstance(v12);
  v14 = OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo::getInstance(v13);
  OZChannelDouble::OZChannelDouble((this + 5112), 100.0, v31, (this + 56), 0xD8u, 0, v13, v14);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Wave Frequency");
  v16 = OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyImpl::getInstance(v15);
  v17 = OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo::getInstance(v16);
  OZChannelDouble::OZChannelDouble((this + 5264), 1.0, v31, (this + 56), 0xD9u, 0, v16, v17);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Wave Phase");
  v19 = OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo::getInstance(v18);
  OZChannelAngle::OZChannelAngle((this + 5416), 0.0, v31, (this + 56), 0xDAu, 0, 0, v19);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Wave Damping");
  v21 = OZMotionPathBehavior::OZMotionPathBehavior_waveDampingImpl::getInstance(v20);
  v22 = OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo::getInstance(v21);
  OZChannelDouble::OZChannelDouble((this + 5568), 0.0, v31, (this + 56), 0xDDu, 0, v21, v22);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Emitter Geometry Node Ref");
  OZChanRotoshapeRefWithPicker::OZChanRotoshapeRefWithPicker((this + 5720), v31, (this + 56), 0xD2u, 0);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Offset");
  v24 = OZMotionPathBehavior::OZMotionPathBehavior_offsetImpl::getInstance(v23);
  OZChannelPercent::OZChannelPercent(this + 39, 0.0, v31, (this + 56), 0xD3u, 0, v24, 0);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Transform");
  OZChannelBool::OZChannelBool(this + 40, 1, v31, (this + 56), 0xDCu, 0, 0, 0);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Parameter Path Direction");
  PCURL::PCURL(&v30, @"Motion Path Behavior Path Direction");
  OZChannelEnum::OZChannelEnum((this + 6232), 0, v31, &v30, (this + 56), 0xDBu, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Parameter Speed");
  PCURL::PCURL(&v30, @"Motion Path Behavior Speed");
  OZChannelEnum::OZChannelEnum((this + 6488), 0, v31, &v30, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Velocity");
  OZChannelPercent::OZChannelPercent((this + 6744), 0.0, v31, (this + 56), 0xCCu, 0, 0, 0);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Parameter Frequency Mode");
  PCURL::PCURL(&v30, @"Motion Path Behavior Frequency Mode");
  OZChannelEnum::OZChannelEnum((this + 6896), 0, v31, &v30, (this + 56), 0xD1u, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior Frequency");
  v26 = OZMotionPathBehavior::OZMotionPathBehavior_frequencyImpl::getInstance(v25);
  v27 = OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo::getInstance(v26);
  OZChannelUint32::OZChannelUint32((this + 7152), 1, v31, (this + 56), 0xD0u, 0, v26, v27);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Parameter Path End Condition");
  PCURL::PCURL(&v30, @"Motion Path Behavior Path End Condition");
  OZChannelEnum::OZChannelEnum((this + 7304), 0, v31, &v30, (this + 56), 0xDEu, 0, 0, 0);
  PCString::~PCString(&v30);
  PCString::~PCString(v31);
  PCURL::PCURL(v31, @"Motion Path Behavior End Frame Offset");
  v29 = OZMotionPathBehavior::OZMotionPathBehavior_endTimeOffsetChanImpl::getInstance(v28);
  OZChannelDouble::OZChannelDouble((this + 7560), v31, (this + 56), 0xCBu, 10, v29, 0);
  PCString::~PCString(v31);
  PCString::PCString(v31, "");
  OZChannelBool::OZChannelBool((this + 7712), 0, v31, (this + 56), 0xDFu, 2u, 0, 0);
  PCString::~PCString(v31);
  PCSharedMutex::PCSharedMutex((this + 7864));
  *(this + 1992) = -1;
  *&v31[0].var0 = xmmword_26084F2D4;
  v32 = unk_26084F2E4;
  OZChannelEnum::setTags((this + 6488), v31, 8);
  OZChannelBase::setFlag((this + 928), 0x20000, 0);
  (*(*(this + 116) + 128))(this + 928);
  OZChannelBase::setFlag((this + 1080), 0x20000, 0);
  (*(*(this + 135) + 128))(this + 1080);
  OZChannelBase::setFlag((this + 1528), 0x20000, 0);
  (*(*(this + 191) + 128))(this + 1528);
  OZChannelBase::setFlag((this + 1816), 0x20000, 0);
  (*(*(this + 227) + 128))(this + 1816);
  OZChannelBase::setFlag((this + 1968), 0x20000, 0);
  (*(*(this + 246) + 128))(this + 1968);
  OZChannelBase::setFlag((this + 2416), 0x20000, 0);
  (*(*(this + 302) + 128))(this + 2416);
  OZChannelBase::resetFlag((this + 7560), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 7560));
  OZChannel::setIsSpline((this + 6744), 1);
  OZChannelBase::setFlag((this + 6744), 0x10000, 0);
  OZChannelBase::saveStateAsDefault((this + 6744));
  OZChannel::setExtrapolation((this + 6744), 0, 0);
  OZChannel::setExtrapolation((this + 6744), 0, 1);
  OZChannel::setInterpolation((this + 6744), 4);
  OZChannelBase::enable((this + 6744), 0, 0);
  *(this + 2120) = 0;
  *(this + 1232) = 0;
}

void sub_26007EA9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  OZChannelBool::~OZChannelBool((v11 + v12));
  OZChannel::~OZChannel((v11 + v17));
  OZChannelEnum::~OZChannelEnum((v11 + v18));
  OZChannel::~OZChannel((v11 + v13));
  OZChannelEnum::~OZChannelEnum((v11 + v15));
  OZChannelPercent::~OZChannelPercent((v11 + v14));
  OZChannelEnum::~OZChannelEnum((v11 + 6488));
  OZChannelEnum::~OZChannelEnum((v11 + v16));
  OZChannelBool::~OZChannelBool((v11 + 6080));
  OZChannelPercent::~OZChannelPercent((v11 + 5928));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v11 + 5720));
  OZChannel::~OZChannel((v11 + 5568));
  OZChannel::~OZChannel((v11 + 5416));
  OZChannel::~OZChannel((v11 + 5264));
  OZChannel::~OZChannel((v11 + 5112));
  OZChannelPosition::~OZChannelPosition((v11 + 4408));
  OZChannelPosition::~OZChannelPosition((v11 + 3704));
  OZChannel2D::~OZChannel2D((v11 + 3264));
  OZChannel2D::~OZChannel2D((v11 + 2824));
  OZChannelEnum::~OZChannelEnum((v11 + 2568));
  OZChannelPosition3D::~OZChannelPosition3D((v11 + 1680));
  OZChannelPosition3D::~OZChannelPosition3D((v11 + 792));
  OZChannelEnum::~OZChannelEnum((v11 + 536));
  OZChannelBehavior::~OZChannelBehavior(v11);
  _Unwind_Resume(a1);
}

void OZMotionPathBehavior::OZMotionPathBehavior(OZMotionPathBehavior *this, const OZMotionPathBehavior *a2, char a3)
{
  v8 = *MEMORY[0x277D85DE8];
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v5 = &unk_287278D20;
  v5[2] = &unk_287278FD8;
  v5[6] = &unk_287279230;
  v5[42] = &unk_287279288;
  OZChannelEnum::OZChannelEnum((v5 + 67), (a2 + 536), (this + 56));
  OZChannelPosition3D::OZChannelPosition3D((this + 792), (a2 + 792), (this + 56));
  OZChannelPosition3D::OZChannelPosition3D((this + 1680), (a2 + 1680), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 2568), (a2 + 2568), (this + 56));
  OZChannel2D::OZChannel2D((this + 2824), (a2 + 2824), (this + 56));
  OZChannel2D::OZChannel2D((this + 3264), (a2 + 3264), (this + 56));
  OZChannelPosition::OZChannelPosition((this + 3704), (a2 + 3704), (this + 56));
  OZChannelPosition::OZChannelPosition((this + 4408), (a2 + 4408), (this + 56));
  OZChannel::OZChannel((this + 5112), (a2 + 5112), (this + 56));
  *(this + 639) = &unk_287245C60;
  *(this + 641) = &unk_287245FC0;
  OZChannel::OZChannel((this + 5264), a2 + 47, (this + 56));
  *(this + 658) = &unk_287245C60;
  *(this + 660) = &unk_287245FC0;
  OZChannel::OZChannel((this + 5416), (a2 + 5416), (this + 56));
  *(this + 677) = &unk_287246030;
  *(this + 679) = &unk_287246390;
  OZChannel::OZChannel((this + 5568), (a2 + 5568), (this + 56));
  *(this + 696) = &unk_287245C60;
  *(this + 698) = &unk_287245FC0;
  OZChanRotoshapeRefWithPicker::OZChanRotoshapeRefWithPicker((this + 5720), (a2 + 5720), (this + 56));
  OZChannelPercent::OZChannelPercent(this + 39, (a2 + 5928), (this + 56));
  OZChannelBool::OZChannelBool(this + 40, (a2 + 6080), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 6232), (a2 + 6232), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 6488), (a2 + 6488), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 6744), (a2 + 6744), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 6896), (a2 + 6896), (this + 56));
  OZChannel::OZChannel((this + 7152), (a2 + 7152), (this + 56));
  *(this + 894) = &unk_287246400;
  *(this + 896) = &unk_287246760;
  OZChannelEnum::OZChannelEnum((this + 7304), (a2 + 7304), (this + 56));
  OZChannel::OZChannel((this + 7560), (a2 + 7560), (this + 56));
  *(this + 945) = &unk_287245C60;
  *(this + 947) = &unk_287245FC0;
  OZChannelBool::OZChannelBool((this + 7712), (a2 + 7712), (this + 56));
  PCSharedMutex::PCSharedMutex((this + 7864));
  *(this + 1992) = *(a2 + 1992);
  *v6 = xmmword_26084F2D4;
  v7 = unk_26084F2E4;
  OZChannelEnum::setTags((this + 6488), v6, 8);
  OZChannelBase::resetFlag((this + 7560), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 7560));
  OZChannel::setIsSpline((this + 6744), 1);
  OZChannel::setExtrapolation((this + 6744), 0, 0);
  OZChannel::setExtrapolation((this + 6744), 0, 1);
  OZChannel::setInterpolation((this + 6744), 4);
  OZChannelBase::resetFlag((this + 2568), 2, 0);
  OZChannelBase::saveStateAsDefault((this + 2568));
}

void sub_26007F38C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, OZChannel *a9, OZChannel *a10)
{
  OZChannelBool::~OZChannelBool((v10 + v12));
  OZChannel::~OZChannel(v16);
  OZChannelEnum::~OZChannelEnum((v10 + v11));
  OZChannel::~OZChannel(v15);
  OZChannelEnum::~OZChannelEnum((v10 + 6896));
  OZChannelPercent::~OZChannelPercent((v10 + v17));
  OZChannelEnum::~OZChannelEnum((v10 + 6488));
  OZChannelEnum::~OZChannelEnum((v10 + 6232));
  OZChannelBool::~OZChannelBool((v10 + 6080));
  OZChannelPercent::~OZChannelPercent((v10 + 5928));
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((v10 + 5720));
  OZChannel::~OZChannel(v14);
  OZChannel::~OZChannel(v13);
  OZChannel::~OZChannel(a9);
  OZChannel::~OZChannel(a10);
  OZChannelPosition::~OZChannelPosition((v10 + 4408));
  OZChannelPosition::~OZChannelPosition((v10 + 3704));
  OZChannel2D::~OZChannel2D((v10 + 3264));
  OZChannel2D::~OZChannel2D((v10 + 2824));
  OZChannelEnum::~OZChannelEnum((v10 + 2568));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 1680));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 792));
  OZChannelEnum::~OZChannelEnum((v10 + 536));
  OZChannelBehavior::~OZChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void OZMotionPathBehavior::~OZMotionPathBehavior(OZMotionPathBehavior *this)
{
  *this = &unk_287278D20;
  *(this + 2) = &unk_287278FD8;
  *(this + 6) = &unk_287279230;
  *(this + 42) = &unk_287279288;
  PCSharedMutex::~PCSharedMutex((this + 7864));
  OZChannelBool::~OZChannelBool((this + 7712));
  OZChannel::~OZChannel((this + 7560));
  OZChannelEnum::~OZChannelEnum((this + 7304));
  OZChannel::~OZChannel((this + 7152));
  OZChannelEnum::~OZChannelEnum((this + 6896));
  OZChannelPercent::~OZChannelPercent((this + 6744));
  OZChannelEnum::~OZChannelEnum((this + 6488));
  OZChannelEnum::~OZChannelEnum((this + 6232));
  OZChannelBool::~OZChannelBool(this + 40);
  OZChannelPercent::~OZChannelPercent(this + 39);
  OZChanObjectRefWithPicker::~OZChanObjectRefWithPicker((this + 5720));
  OZChannel::~OZChannel((this + 5568));
  OZChannel::~OZChannel((this + 5416));
  OZChannel::~OZChannel((this + 5264));
  OZChannel::~OZChannel((this + 5112));
  OZChannelPosition::~OZChannelPosition((this + 4408));
  OZChannelPosition::~OZChannelPosition((this + 3704));
  OZChannel2D::~OZChannel2D((this + 3264));
  OZChannel2D::~OZChannel2D((this + 2824));
  OZChannelEnum::~OZChannelEnum((this + 2568));
  OZChannelPosition3D::~OZChannelPosition3D((this + 1680));
  OZChannelPosition3D::~OZChannelPosition3D((this + 792));
  OZChannelEnum::~OZChannelEnum((this + 536));

  OZChannelBehavior::~OZChannelBehavior(this);
}

{
  OZMotionPathBehavior::~OZMotionPathBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZMotionPathBehavior::~OZMotionPathBehavior(OZMotionPathBehavior *this)
{
  OZMotionPathBehavior::~OZMotionPathBehavior((this - 16));
}

{
  OZMotionPathBehavior::~OZMotionPathBehavior((this - 48));
}

{
  OZMotionPathBehavior::~OZMotionPathBehavior((this - 336));
}

{
  OZMotionPathBehavior::~OZMotionPathBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZMotionPathBehavior::~OZMotionPathBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZMotionPathBehavior::~OZMotionPathBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

OZChannelBase *OZMotionPathBehavior::operator=(uint64_t a1, const void *a2)
{
  OZChannelBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelPosition::operator=(a1 + 792, (v4 + 198));
  OZChannelPosition::operator=(a1 + 1680, (v5 + 420));
  OZChannelBase::operator=(a1 + 536, (v5 + 134));
  OZChanObjectRefWithPicker::operator=(a1 + 5720, (v5 + 1430));
  OZChannelFolder::operator=(a1 + 2824);
  OZChannelBase::operator=(a1 + 2960, (v5 + 740));
  OZChannelBase::operator=(a1 + 3112, (v5 + 778));
  OZChannelFolder::operator=(a1 + 3264);
  OZChannelBase::operator=(a1 + 3400, (v5 + 850));
  OZChannelBase::operator=(a1 + 3552, (v5 + 888));
  OZChannelPosition::operator=(a1 + 3704, (v5 + 926));
  OZChannelPosition::operator=(a1 + 4408, (v5 + 1102));
  OZChannelBase::operator=(a1 + 5112, (v5 + 1278));
  OZChannelBase::operator=(a1 + 5264, (v5 + 1316));
  OZChannelBase::operator=(a1 + 5416, (v5 + 1354));
  OZChannelBase::operator=(a1 + 5568, (v5 + 1392));
  OZChannelBase::operator=(a1 + 5928, (v5 + 1482));
  OZChannelBase::operator=(a1 + 6080, (v5 + 1520));
  OZChannelBase::operator=(a1 + 6232, (v5 + 1558));
  OZChannelBase::operator=(a1 + 7304, (v5 + 1826));
  OZChannelBase::operator=(a1 + 2568, (v5 + 642));
  OZChannelBase::operator=(a1 + 6744, (v5 + 1686));
  OZChannelBase::operator=(a1 + 7152, (v5 + 1788));
  OZChannelBase::operator=(a1 + 6896, (v5 + 1724));
  OZChannelBase::operator=(a1 + 6488, (v5 + 1622));
  OZChannelBase::operator=(a1 + 7560, (v5 + 1890));
  OZChannelBase::operator=(a1 + 7712, (v5 + 1928));
  *(a1 + 7968) = v5[1992];

  return OZChannelBase::resetFlag((a1 + 2568), 2, 0);
}

uint64_t OZMotionPathBehavior::parseBegin(OZMotionPathBehavior *this, PCSerializerReadStream *a2)
{
  OZChannelBase::reset((this + 792), 0);
  OZChannelBase::reset(this + 15, 0);
  if (*(a2 + 26) <= 4u)
  {
    OZChannel::setValue((this + 7712), MEMORY[0x277CC08F0], 1.0, 0);
  }

  return OZBehavior::parseBegin(this, a2);
}

uint64_t OZMotionPathBehavior::parseEnd(OZMotionPathBehavior *this, PCSerializerReadStream *a2)
{
  if (OZChannel::getValueAsInt((this + 6488), MEMORY[0x277CC08F0], 0.0) == 4)
  {
    v4 = MEMORY[0x277CC08F0];
    OZChannel::setValue((this + 6488), MEMORY[0x277CC08F0], 0.0, 0);
    OZChannel::setValue((this + 7304), v4, 1.0, 0);
    OZChannel::setValue((this + 7152), v4, 2.0, 0);
  }

  return OZBehavior::parseEnd(this, a2);
}

void OZMotionPathBehavior::didAddToNode(OZMotionPathBehavior *this, OZSceneNode *a2)
{
  OZChannelBehavior::didAddToNode(this, a2);
  if (a2)
  {
  }

  OZChannel::setDiscrete((this + 6744), 0, 0);
  OZChannel::setDiscrete((this + 6744), 0, 0);
  OZChannel::reparametrizeChannel((this + 928));
  OZChannel::reparametrizeChannel((this + 1080));
  OZChannel::reparametrizeChannel((this + 1528));
  v4 = (*(*a2 + 272))(a2);
  if (v4)
  {
    if ((*(v4 + 1576) & 1) == 0)
    {
      OZMotionPathBehavior::initializePaths(this);
    }
  }

  operator new();
}

uint64_t OZMotionPathBehavior::initializePaths(os_unfair_lock_s *this)
{
  result = (*(*&this->_os_unfair_lock_opaque + 336))(this);
  if (result)
  {
    v3 = *((*(*&this->_os_unfair_lock_opaque + 336))(this) + 344);
    if (((*(*&this[232]._os_unfair_lock_opaque + 552))(this + 232, 0) & 1) == 0)
    {
      v4 = v3;
      OZChannelPosition3D::willBeModified(this + 198, 1);
      (*(*&this[232]._os_unfair_lock_opaque + 480))(this + 232, 1);
      (*(*&this[270]._os_unfair_lock_opaque + 480))(this + 270, 1);
      (*(*&this[382]._os_unfair_lock_opaque + 480))(this + 382, 1);
      OZChannel::setDiscrete(&this[232], 0, 0);
      OZChannel::setDiscrete(&this[270], 0, 0);
      OZChannel::setDiscrete(&this[382], 0, 0);
      OZChannel::setParametric(&this[232], 1);
      OZChannel::setParametric(&this[270], 1);
      OZChannel::setParametric(&this[382], 1);
      v5 = MEMORY[0x277CC08F0];
      OZChannel::setKeyframe(&this[232], MEMORY[0x277CC08F0], 0.0, 0);
      OZChannel::setKeyframe(&this[270], v5, 0.0, 0);
      OZChannel::setKeyframe(&this[382], v5, 0.0, 0);
      CMTimeMake(&v19, 1, 1);
      OZChannel::setKeyframe(&this[232], &v19, v4 * 0.8, 0);
      CMTimeMake(&v19, 1, 1);
      OZChannel::setKeyframe(&this[270], &v19, 0.0, 0);
      CMTimeMake(&v19, 1, 1);
      OZChannel::setKeyframe(&this[382], &v19, 0.0, 0);
    }

    result = (*(*&this[454]._os_unfair_lock_opaque + 552))(this + 454, 0);
    if ((result & 1) == 0)
    {
      v6 = *((*(*&this->_os_unfair_lock_opaque + 336))(this) + 344) * 0.75;
      v7 = (*(*&this->_os_unfair_lock_opaque + 336))(this);
      if (v6 <= *(v7 + 348) * 0.75)
      {
        v8 = v6;
      }

      else
      {
        v8 = *(v7 + 348) * 0.75;
      }

      v9 = 1.0 / *((*(*&this->_os_unfair_lock_opaque + 336))(this) + 384);
      OZChannelPosition3D::willBeModified(this + 420, 1);
      OZChannel::setDiscrete(&this[454], 0, 0);
      OZChannel::setDiscrete(&this[492], 0, 0);
      OZChannel::setDiscrete(&this[604], 0, 0);
      OZChannel::setParametric(&this[454], 1);
      OZChannel::setParametric(&this[492], 1);
      OZChannel::setParametric(&this[604], 1);
      v10 = MEMORY[0x277CC08F0];
      OZChannel::setKeyframe(&this[454], MEMORY[0x277CC08F0], 0.0, 1);
      OZChannel::setKeyframe(&this[492], v10, 0.0, 1);
      OZChannel::setKeyframe(&this[604], v10, 0.0, 1);
      OZFigTimeForChannelSeconds(&v19, 1.0, 0x40000);
      OZChannel::setKeyframe(&this[454], &v19, v8 * 0.5 * v9, 1);
      OZFigTimeForChannelSeconds(&v19, 1.0, 0x40000);
      OZChannel::setKeyframe(&this[492], &v19, v8 * 0.5, 1);
      OZFigTimeForChannelSeconds(&v19, 1.0, 0x40000);
      Keyframe = OZChannel::getKeyframe(&this[454], &v19);
      OZFigTimeForChannelSeconds(&v19, 1.0, 0x40000);
      v12 = OZChannel::getKeyframe(&this[492], &v19);
      OZChannel::setKeyframeInputTangents(&this[454], Keyframe, 0.0, v8 * 0.5 * -0.546761902 * v9, 1);
      OZChannel::setKeyframeInputTangents(&this[492], v12, 0.0, 0.0, 1);
      OZChannel::setKeyframeOutputTangents(&this[454], Keyframe, 0.0, v8 * 0.5 * 0.546761902 * v9, 1);
      OZChannel::setKeyframeOutputTangents(&this[492], v12, 0.0, 0.0, 1);
      OZFigTimeForChannelSeconds(&v19, 1.0, 0x40000);
      OZChannel::setKeyframe(&this[604], &v19, 0.0, 1);
      OZFigTimeForChannelSeconds(&v19, 2.0, 0x40000);
      OZChannel::setKeyframe(&this[454], &v19, (v8 * 0.5 + v8 * 0.5) * v9, 1);
      OZFigTimeForChannelSeconds(&v19, 2.0, 0x40000);
      OZChannel::setKeyframe(&this[492], &v19, 0.0, 1);
      OZFigTimeForChannelSeconds(&v19, 2.0, 0x40000);
      v13 = OZChannel::getKeyframe(&this[454], &v19);
      OZFigTimeForChannelSeconds(&v19, 2.0, 0x40000);
      v14 = OZChannel::getKeyframe(&this[492], &v19);
      OZChannel::setKeyframeInputTangents(&this[454], v13, 0.0, 0.0, 1);
      OZChannel::setKeyframeInputTangents(&this[492], v14, 0.0, v8 * 0.5 * 0.546761902, 1);
      OZChannel::setKeyframeOutputTangents(&this[454], v13, 0.0, 0.0, 1);
      OZChannel::setKeyframeOutputTangents(&this[492], v14, 0.0, v8 * 0.5 * -0.546761902, 1);
      OZFigTimeForChannelSeconds(&v19, 2.0, 0x40000);
      OZChannel::setKeyframe(&this[604], &v19, 0.0, 1);
      OZFigTimeForChannelSeconds(&v19, 3.0, 0x40000);
      OZChannel::setKeyframe(&this[454], &v19, v8 * 0.5 * v9, 1);
      OZFigTimeForChannelSeconds(&v19, 3.0, 0x40000);
      OZChannel::setKeyframe(&this[492], &v19, -(v8 * 0.5), 1);
      OZFigTimeForChannelSeconds(&v19, 3.0, 0x40000);
      v15 = OZChannel::getKeyframe(&this[454], &v19);
      OZFigTimeForChannelSeconds(&v19, 3.0, 0x40000);
      v16 = OZChannel::getKeyframe(&this[492], &v19);
      OZChannel::setKeyframeInputTangents(&this[454], v15, 0.0, v8 * 0.5 * 0.546761902 * v9, 1);
      OZChannel::setKeyframeInputTangents(&this[492], v16, 0.0, 0.0, 1);
      OZChannel::setKeyframeOutputTangents(&this[454], v15, 0.0, v8 * 0.5 * -0.546761902 * v9, 1);
      OZChannel::setKeyframeOutputTangents(&this[492], v16, 0.0, 0.0, 1);
      OZFigTimeForChannelSeconds(&v19, 3.0, 0x40000);
      OZChannel::setKeyframe(&this[604], &v19, 0.0, 1);
      v17 = OZChannel::getKeyframe(&this[454], v10);
      v18 = OZChannel::getKeyframe(&this[492], v10);
      OZChannel::setKeyframeInputTangents(&this[454], v17, 0.0, 0.0, 1);
      OZChannel::setKeyframeInputTangents(&this[492], v18, 0.0, v8 * 0.5 * -0.546761902, 1);
      OZChannel::setKeyframeOutputTangents(&this[454], v17, 0.0, 0.0, 1);
      OZChannel::setKeyframeOutputTangents(&this[492], v18, 0.0, v8 * 0.5 * 0.546761902, 1);
      OZChannel::closeParametricCurve(&this[454]);
      OZChannel::closeParametricCurve(&this[492]);
      return OZChannel::closeParametricCurve(&this[604]);
    }
  }

  return result;
}

void OZMotionPathBehavior::sceneNodeDidLoad(OZMotionPathBehavior *this)
{
  OZChannel::reparametrizeChannel((this + 928));
  OZChannel::reparametrizeChannel((this + 1080));
  OZChannel::reparametrizeChannel((this + 1528));
  if (!(*(*(this + 191) + 832))(this + 1528))
  {
    OZChannel::getKeyframes((this + 928), 0, &v10);
    v2 = v10;
    if (v11 != v10)
    {
      v3 = 0;
      v4 = 1;
      do
      {
        OZChannel::getKeyframe((this + 928), v2[v3], &v9, 0);
        OZChannel::setKeyframe((this + 1528), &v9);
        v3 = v4;
        v2 = v10;
        ++v4;
      }

      while (v3 < v11 - v10);
    }

    if (v2)
    {
      v11 = v2;
      operator delete(v2);
    }
  }

  OZChannel::reparametrizeChannel((this + 1816));
  OZChannel::reparametrizeChannel((this + 1968));
  OZChannel::reparametrizeChannel((this + 2416));
  if (!(*(*(this + 302) + 832))(this + 2416))
  {
    OZChannel::getKeyframes((this + 1816), 0, &v10);
    v5 = v10;
    if (v11 != v10)
    {
      v6 = 0;
      v7 = 1;
      do
      {
        OZChannel::getKeyframe((this + 1816), v5[v6], &v9, 0);
        OZChannel::setKeyframe((this + 2416), &v9);
        v6 = v7;
        v5 = v10;
        ++v7;
      }

      while (v6 < v11 - v10);
    }

    if (v5)
    {
      v11 = v5;
      operator delete(v5);
    }
  }

  OZChannelBase::resetFlag((this + 2568), 2, 0);
  OZChannel::getValueAsDouble((this + 7560), MEMORY[0x277CC08F0], 0.0);
  if (vabdd_f64(v8, OZChannel::getDefaultValue((this + 7560))) >= 0.0000001)
  {
    OZChannelBase::resetFlag((this + 7560), 2, 0);
  }
}

void sub_260080838(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

char *OZMotionPathBehavior::getEvalDepChansForRef(char *result, char *a2, uint64_t a3)
{
  if (a3)
  {
    if (result + 5720 == a2)
    {
      result = OZChannel::getValueAsInt((result + 536), MEMORY[0x277CC08F0], 0.0);
      if (result == 5)
      {
        result = (*(*a3 + 232))(a3);
        if (result)
        {
          if (result)
          {
            v4 = result;
            do
            {
              if (result)
              {
                operator new();
              }

              v4 = v4[120];
            }

            while (v4);
          }
        }
      }
    }
  }

  return result;
}

uint64_t OZMotionPathBehavior::isEvalCyclic(OZMotionPathBehavior *this)
{
  if (OZMotionPathBehavior::isGeometryRecursive(this))
  {
    return 1;
  }

  ValueAsInt = OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0);
  PCSharedMutex::lock_shared((this + 7864));
  v4 = *(this + 1992);
  PCSharedMutex::unlock_shared((this + 7864));
  if (v4 != ValueAsInt)
  {
    PCSharedMutex::lock((this + 7864));
    if (*(this + 1992) != ValueAsInt)
    {
      OZChannelBehavior::dirtyIsEvalCyclicCache(this);
      *(this + 1992) = ValueAsInt;
    }

    PCSharedMutex::unlock((this + 7864));
  }

  return OZChannelBehavior::isEvalCyclic(this);
}

BOOL OZMotionPathBehavior::isGeometryRecursive(OZMotionPathBehavior *this)
{
  result = 0;
  if (OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0) == 5)
  {
    v2 = (*(*this + 320))(this);
    if (v2)
    {
      if (v3)
      {
        v4 = v3;
        Node = OZChanSceneNodeRef::getNode((this + 5720));
        if (Node)
        {
          if (v6)
          {
            if (OZGroup::hasDescendant(v4, (v6 + 200)))
            {
              return 1;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t OZMotionPathBehavior::sceneDidChange(OZMotionPathBehavior *this)
{
  result = OZMotionPathBehavior::isGeometryRecursive(this);
  if (result)
  {

    return OZChanObjectManipRef::setObject((this + 5720), 0, 0);
  }

  return result;
}

uint64_t OZMotionPathBehavior::enableCustomSpeed(uint64_t this, int a2)
{
  if (a2)
  {
    v2 = this;
    (*(*this + 608))(&v9);
    v11 = v9;
    v12 = v10;
    this = OZChannel::getNumberOfKeyframes((v2 + 6744));
    if (this <= 1)
    {
      OZChannel::setInterpolation((v2 + 6744), 4);
      v9 = v11;
      OZChannel::setKeyframe((v2 + 6744), &v9, 0.0, 1);
      v9 = v11;
      v13 = v12;
      v3.n128_f64[0] = PC_CMTimeSaferAdd(&v9, &v13, &v7);
      v4 = (*(*v2 + 336))(v2, v3);
      OZSceneSettings::getFrameDuration((v4 + 336), &v5);
      v9 = v7;
      *&v13.value = v5;
      v13.epoch = v6;
      PC_CMTimeSaferSubtract(&v9, &v13, &v8);
      return OZChannel::setKeyframe((v2 + 6744), &v8, 100.0, 1);
    }
  }

  return this;
}

uint64_t OZMotionPathBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  result = OZChannel::getValueAsInt((a1 + 6488), MEMORY[0x277CC08F0], 0.0);
  v4 = result;
  v5 = *(a2 + 8);
  if (v5 == a2)
  {
LABEL_6:
    while (v5 != a2)
    {
      v8 = *(v5 + 16);
      if (v8)
      {
      }

      else
      {
        v9 = 0;
      }

      v10 = (v9 + 6744);
      if (v4 == 7)
      {
        OZChannelBase::enable(v10, 1, 0);
        OZChannelBase::resetFlag((v9 + 6744), 0x10000, 1);
        result = OZMotionPathBehavior::enableCustomSpeed(v9, 1);
      }

      else
      {
        OZChannelBase::enable(v10, 0, 0);
        result = OZChannelBase::setFlag((v9 + 6744), 0x10000, 1);
      }

      v5 = *(v5 + 8);
    }
  }

  else
  {
    v6 = MEMORY[0x277CC08F0];
    while (1)
    {
      result = OZChannel::getValueAsInt((v7 + 6488), v6, 0.0);
      if (v4 != result)
      {
        break;
      }

      v5 = *(v5 + 8);
      if (v5 == a2)
      {
        v5 = *(a2 + 8);
        goto LABEL_6;
      }
    }

    for (i = *(a2 + 8); i != a2; i = *(i + 8))
    {
      OZChannelBase::enable((v12 + 6744), 1, 0);
      OZChannelBase::resetFlag((v12 + 6744), 0x10000, 1);
      result = OZMotionPathBehavior::enableCustomSpeed(v12, 1);
    }
  }

  return result;
}

uint64_t OZMotionPathBehavior::getPositionChannel(OZMotionPathBehavior *this)
{
  ValueAsInt = OZChannel::getValueAsInt((this + 536), MEMORY[0x277CC08F0], 0.0);
  v3 = 1680;
  if (!ValueAsInt)
  {
    v3 = 792;
  }

  return this + v3;
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_radiusImpl::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_radiusImpl *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_radiusImpl::getInstance(void)::OZMotionPathBehavior_radiusImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_radiusImpl::getInstance(void)::OZMotionPathBehavior_radiusImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_radiusImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_radiusImpl::_OZMotionPathBehavior_radius;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_radiusImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_radiusImpl::_OZMotionPathBehavior_radius)
  {
    operator new();
  }
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo::getInstance(void)::OZMotionPathBehavior_radiusInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo::getInstance(void)::OZMotionPathBehavior_radiusInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo::_OZMotionPathBehavior_radiusInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo::_OZMotionPathBehavior_radiusInfo)
  {
    operator new();
  }
}

OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo *OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo::OZMotionPathBehavior_radiusInfo(OZMotionPathBehavior::OZMotionPathBehavior_radiusInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 500.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287279340;
  *(this + 10) = &unk_287279360;
  return this;
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_rectSizeImpl::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_rectSizeImpl *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_rectSizeImpl::getInstance(void)::OZMotionPathBehavior_rectSizeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_rectSizeImpl::getInstance(void)::OZMotionPathBehavior_rectSizeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_rectSizeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_rectSizeImpl::_OZMotionPathBehavior_rectSize;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_rectSizeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_rectSizeImpl::_OZMotionPathBehavior_rectSize)
  {
    operator new();
  }
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo::getInstance(void)::OZMotionPathBehavior_rectSizeInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo::getInstance(void)::OZMotionPathBehavior_rectSizeInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo::_OZMotionPathBehavior_rectSizeInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo::_OZMotionPathBehavior_rectSizeInfo)
  {
    operator new();
  }
}

OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo *OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo::OZMotionPathBehavior_rectSizeInfo(OZMotionPathBehavior::OZMotionPathBehavior_rectSizeInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 500.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287279430;
  *(this + 10) = &unk_287279450;
  return this;
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeImpl::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeImpl *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeImpl::getInstance(void)::OZMotionPathBehavior_waveAmplitudeImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeImpl::getInstance(void)::OZMotionPathBehavior_waveAmplitudeImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeImpl::_OZMotionPathBehavior_waveAmplitude;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeImpl::_OZMotionPathBehavior_waveAmplitude)
  {
    operator new();
  }
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo::getInstance(void)::OZMotionPathBehavior_waveAmplitudeInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo::getInstance(void)::OZMotionPathBehavior_waveAmplitudeInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo::_OZMotionPathBehavior_waveAmplitudeInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo::_OZMotionPathBehavior_waveAmplitudeInfo)
  {
    operator new();
  }
}

OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo *OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo::OZMotionPathBehavior_waveAmplitudeInfo(OZMotionPathBehavior::OZMotionPathBehavior_waveAmplitudeInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 500.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287279520;
  *(this + 10) = &unk_287279540;
  return this;
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyImpl::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyImpl *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyImpl::getInstance(void)::OZMotionPathBehavior_waveFrequencyImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyImpl::getInstance(void)::OZMotionPathBehavior_waveFrequencyImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyImpl::_OZMotionPathBehavior_waveFrequency;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyImpl::_OZMotionPathBehavior_waveFrequency)
  {
    operator new();
  }
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo::getInstance(void)::OZMotionPathBehavior_waveFrequencyInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo::getInstance(void)::OZMotionPathBehavior_waveFrequencyInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo::_OZMotionPathBehavior_waveFrequencyInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo::_OZMotionPathBehavior_waveFrequencyInfo)
  {
    operator new();
  }
}

OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo *OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo::OZMotionPathBehavior_waveFrequencyInfo(OZMotionPathBehavior::OZMotionPathBehavior_waveFrequencyInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287279610;
  *(this + 10) = &unk_287279630;
  return this;
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo::getInstance(void)::OZMotionPathBehavior_wavePhaseInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo::getInstance(void)::OZMotionPathBehavior_wavePhaseInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo::_OZMotionPathBehavior_wavePhaseInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo::_OZMotionPathBehavior_wavePhaseInfo)
  {
    operator new();
  }
}

OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo *OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo::OZMotionPathBehavior_wavePhaseInfo(OZMotionPathBehavior::OZMotionPathBehavior_wavePhaseInfo *this)
{
  PCString::PCString(&v3, "°");
  OZChannelInfo::OZChannelInfo(this, -6.28318531, 6.28318531, 0.0174532925, 0.000174532925, 57.2957795, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287279688;
  *(this + 10) = &unk_2872796A8;
  return this;
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_waveDampingImpl::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_waveDampingImpl *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_waveDampingImpl::getInstance(void)::OZMotionPathBehavior_waveDampingImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_waveDampingImpl::getInstance(void)::OZMotionPathBehavior_waveDampingImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveDampingImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_waveDampingImpl::_OZMotionPathBehavior_waveDamping;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveDampingImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_waveDampingImpl::_OZMotionPathBehavior_waveDamping)
  {
    operator new();
  }
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo::getInstance(void)::OZMotionPathBehavior_waveDampingInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo::getInstance(void)::OZMotionPathBehavior_waveDampingInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo::_OZMotionPathBehavior_waveDampingInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo::_OZMotionPathBehavior_waveDampingInfo)
  {
    operator new();
  }
}

OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo *OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo::OZMotionPathBehavior_waveDampingInfo(OZMotionPathBehavior::OZMotionPathBehavior_waveDampingInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -20.0, 20.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_287279778;
  *(this + 10) = &unk_287279798;
  return this;
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_offsetImpl::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_offsetImpl *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_offsetImpl::getInstance(void)::OZMotionPathBehavior_offsetImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_offsetImpl::getInstance(void)::OZMotionPathBehavior_offsetImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_offsetImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_offsetImpl::_OZMotionPathBehavior_offset;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_offsetImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_offsetImpl::_OZMotionPathBehavior_offset)
  {
    operator new();
  }
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_frequencyImpl::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_frequencyImpl *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_frequencyImpl::getInstance(void)::OZMotionPathBehavior_frequencyImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_frequencyImpl::getInstance(void)::OZMotionPathBehavior_frequencyImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_frequencyImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_frequencyImpl::_OZMotionPathBehavior_frequency;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_frequencyImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_frequencyImpl::_OZMotionPathBehavior_frequency)
  {
    operator new();
  }
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo::getInstance(void)::OZMotionPathBehavior_frequencyInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo::getInstance(void)::OZMotionPathBehavior_frequencyInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo::_OZMotionPathBehavior_frequencyInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo::_OZMotionPathBehavior_frequencyInfo)
  {
    operator new();
  }
}

OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo *OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo::OZMotionPathBehavior_frequencyInfo(OZMotionPathBehavior::OZMotionPathBehavior_frequencyInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 5.0, 1.0, 1.0, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872798E0;
  *(this + 10) = &unk_287279900;
  return this;
}

uint64_t OZMotionPathBehavior::OZMotionPathBehavior_endTimeOffsetChanImpl::getInstance(OZMotionPathBehavior::OZMotionPathBehavior_endTimeOffsetChanImpl *this)
{
  if (atomic_load_explicit(&OZMotionPathBehavior::OZMotionPathBehavior_endTimeOffsetChanImpl::getInstance(void)::OZMotionPathBehavior_endTimeOffsetChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZMotionPathBehavior::OZMotionPathBehavior_endTimeOffsetChanImpl::getInstance(void)::OZMotionPathBehavior_endTimeOffsetChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_endTimeOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZMotionPathBehavior::OZMotionPathBehavior_endTimeOffsetChanImpl::_OZMotionPathBehavior_endTimeOffsetChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZMotionPathBehavior::OZMotionPathBehavior_endTimeOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZMotionPathBehavior::OZMotionPathBehavior_endTimeOffsetChanImpl::_OZMotionPathBehavior_endTimeOffsetChan)
  {
    operator new();
  }
}

void OZMotionPathCurveNode::OZMotionPathCurveNode(OZMotionPathCurveNode *this, OZBehavior *a2, OZChannel *a3)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, a2, a3);
  *v5 = &unk_2872799D0;
  *(v5 + 32) = 0;
  PCEvaluator::PCEvaluator((v5 + 40));
  *(this + 7) = a3->var3;
}

void sub_260082A50(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock(v2);
  OZEaseInInterpolator::~OZEaseInInterpolator(v1);
  _Unwind_Resume(a1);
}

void OZMotionPathCurveNode::OZMotionPathCurveNode(OZMotionPathCurveNode *this, const OZMotionPathCurveNode *a2)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, a2);
  *v4 = &unk_2872799D0;
  *(v4 + 32) = 0;
  PCEvaluator::PCEvaluator((v4 + 40));
  *(this + 7) = *(a2 + 7);
}

void sub_260082AD8(_Unwind_Exception *a1)
{
  PCSpinLock::~PCSpinLock(v2);
  OZEaseInInterpolator::~OZEaseInInterpolator(v1);
  _Unwind_Resume(a1);
}

void OZMotionPathCurveNode::~OZMotionPathCurveNode(OZMotionPathCurveNode *this)
{
  *this = &unk_2872799D0;
  v2 = (this + 32);
  PCEvaluator::~PCEvaluator((this + 40));
  PCSpinLock::~PCSpinLock(v2);

  OZEaseInInterpolator::~OZEaseInInterpolator(this);
}

{
  OZMotionPathCurveNode::~OZMotionPathCurveNode(this);

  JUMPOUT(0x2666E9F00);
}

double OZMotionPathCurveNode::solveNode(OZMotionPathCurveNode *this, const CMTime *a2, double a3, double a4)
{
  v23 = *a2;
  v22 = *a2;
  v6 = *(this + 1);
  if (v6)
  {
    if (v7)
    {
      v8 = v7;
      if (((*(*v7 + 640))(v7) & 1) == 0)
      {
        (*(*v8 + 608))(&v19, v8);
        v9 = (*(*v8 + 312))(v8);
        if (OZChannelBase::isEnabled(v9, 0, 1))
        {
          if ((*((*(*v8 + 320))(v8) + 1024) & 2) == 0 && (*(*v8 + 336))(v8))
          {
            OZChannelObjectRootBase::getTimeOffset((v8 + 56), &v26);
            time2 = v19;
            *&time1.value = v26;
            time1.epoch = v27;
            PC_CMTimeSaferSubtract(&time1, &time2, &v28);
            time1 = v28;
            time2 = v22;
            v10.n128_f64[0] = PC_CMTimeSaferAdd(&time1, &time2, &v22);
            (*(**(*(v8 + 47) + 32) + 320))(&v26, v10);
            time1 = v22;
            *&time2.value = v26;
            time2.epoch = v27;
            PC_CMTimeSaferAdd(&time1, &time2, &v28);
            OZChannelObjectRootBase::getTimeOffset((v8 + 56), &v24);
            time1 = v28;
            *&time2.value = v24;
            time2.epoch = v25;
            PC_CMTimeSaferSubtract(&time1, &time2, &v18);
            v22 = v18;
            memset(&v28, 0, sizeof(v28));
            OZBehavior::getFrameDuration(*(this + 1), &v28);
            v24 = v20;
            v25 = v21;
            v11 = MEMORY[0x277CC08F0];
            ValueAsInt = OZChannel::getValueAsInt((v8 + 7560), MEMORY[0x277CC08F0], 0.0);
            operator*(&v28, ValueAsInt, &v18);
            *&time1.value = v24;
            time1.epoch = v25;
            time2 = v18;
            PC_CMTimeSaferSubtract(&time1, &time2, &v26);
            time1 = v22;
            *&time2.value = v26;
            time2.epoch = v27;
            if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
            {
              v24 = v20;
              v25 = v21;
              v13 = OZChannel::getValueAsInt((v8 + 7560), MEMORY[0x277CC08F0], 0.0);
              operator*(&v28, v13, &v18);
              *&time1.value = v24;
              time1.epoch = v25;
              time2 = v18;
              PC_CMTimeSaferSubtract(&time1, &time2, &v26);
              *&v22.value = v26;
              v22.epoch = v27;
            }

            time1 = v22;
            time2 = *v11;
            if (CMTimeCompare(&time1, &time2) < 0)
            {
              v22 = *v11;
            }

            OZMotionPathCurveNode::getLength(this, &v22);
            v15 = v14;
            if (fabs(v14) >= 0.0000001)
            {
              PositionOnPath = OZMotionPathCurveNode::getPositionOnPath(this, &v23, &v22, v14);
              return OZMotionPathCurveNode::getPosition(this, PositionOnPath, &v23, &v22, a4, v15);
            }
          }
        }
      }
    }
  }

  return a4;
}

void OZMotionPathCurveNode::getLength(OZMotionPathCurveNode *this, const CMTime *a2)
{
  v4 = *(this + 1);
  if (v4)
  {
  }

  else
  {
    v5 = 0;
  }

  ValueAsInt = OZChannel::getValueAsInt((v5 + 536), MEMORY[0x277CC08F0], 0.0);
  if (ValueAsInt > 1)
  {
    if (ValueAsInt > 3)
    {
      if (ValueAsInt == 4)
      {
        OZChannel::getValueAsDouble((v5 + 4544), a2, 0.0);
        OZChannel::getValueAsDouble((v5 + 4696), a2, 0.0);
      }

      else if (ValueAsInt == 5)
      {
        Node = OZChanSceneNodeRef::getNode((v5 + 5720));
        if (Node)
        {
          if (v10)
          {
            v11 = v10;
            OZRenderState::OZRenderState(&v16);
            *&v16.var0.var0 = *&a2->value;
            v16.var0.var3 = a2->epoch;
            OZRotoshape::getReparametrizedContourLength(v11, &v16.var0.var0, 1, 0);
          }
        }
      }
    }

    else if (ValueAsInt == 2)
    {
      OZChannel::getValueAsDouble((v5 + 2960), a2, 0.0);
      v13 = fabs(v12);
      OZChannel::getValueAsDouble((v5 + 3112), a2, 0.0);
      v15 = fabs(v14);

      PCEvaluator::findLengthOfEllipse((this + 40), v13, v15, 0.0, 0.0);
    }

    else if (ValueAsInt == 3)
    {
      OZChannel::getValueAsDouble((v5 + 3400), a2, 0.0);
      OZChannel::getValueAsDouble((v5 + 3552), a2, 0.0);
    }
  }

  else
  {
    PositionChannel = OZMotionPathBehavior::getPositionChannel(v5);
    v8 = MEMORY[0x277CC08F0];

    OZChannelPosition3D::getLength(PositionChannel, v8);
  }
}

double OZMotionPathCurveNode::getPositionOnPath(OZMotionPathCurveNode *this, const CMTime *a2, const CMTime *a3, double a4)
{
  v64 = **&MEMORY[0x277CC08F0];
  v63 = 0.0;
  v8 = *(this + 1);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  v10 = MEMORY[0x277CC08F0];
  ValueAsInt = OZChannel::getValueAsInt((v9 + 6896), MEMORY[0x277CC08F0], 0.0);
  v12 = OZChannel::getValueAsInt((v9 + 6488), v10, 0.0);
  v13 = OZChannel::getValueAsInt((v9 + 7152), v10, 0.0);
  (*(*v9 + 608))(v61, v9);
  if (v12 == 7)
  {
    OZChannel::getValueAsDouble((v9 + 6744), a2, 0.0);
    return v14 * a4;
  }

  v60 = *v10;
  v59 = v60;
  v58 = *a3;
  v56 = 0uLL;
  v57 = 0;
  v15 = (*(**(this + 1) + 336))();
  OZSceneSettings::getFrameDuration((v15 + 336), &v56);
  preferredTimescale = *a3;
  if (ValueAsInt == 1)
  {
    *&time.value = *&v62.value;
    epoch = v62.epoch;
    goto LABEL_18;
  }

  operator/(&preferredTimescale.value, &v56, &time);
  Seconds = CMTimeGetSeconds(&time);
  time2 = v62;
  operator/(&time2.value, &v56, &time);
  v18 = CMTimeGetSeconds(&time);
  operator/(&v58.value, &v56, &time);
  v19 = CMTimeGetSeconds(&time);
  v20 = v18 + -1.0;
  if (vabdd_f64(Seconds, v20) >= 0.0000001 && Seconds < v20)
  {
    v21 = fmod(Seconds * v13, v20);
    if (OZChannel::getValueAsInt((v9 + 7304), MEMORY[0x277CC08F0], 0.0) == 1)
    {
      v22 = floor(v19 * v13 / v20) * 0.5;
      if (vabdd_f64(v22, floor(v22)) >= 0.0000001)
      {
        v21 = v20 - v21;
      }
    }

    OZFigTimeForChannelSeconds(&time2, v21, preferredTimescale.timescale);
    operator*(&time2.value, &v56, &time);
    *&preferredTimescale.value = *&time.value;
    v23 = time.epoch;
    goto LABEL_16;
  }

  v24 = MEMORY[0x277CC08F0];
  if (OZChannel::getValueAsInt((v9 + 7304), MEMORY[0x277CC08F0], 0.0) == 1)
  {
    *&preferredTimescale.value = *v24;
    v23 = *(v24 + 16);
LABEL_16:
    preferredTimescale.epoch = v23;
  }

  *&time.value = *&v62.value;
  epoch = v62.epoch;
LABEL_18:
  time.epoch = epoch;
  *&time2.value = v56;
  time2.epoch = v57;
  PC_CMTimeSaferSubtract(&time, &time2, &v60);
  v59 = preferredTimescale;
  if ((v12 & 0xFFFFFFF7) == 0)
  {
    operator/(&v59.value, &v60, &time);
    v26 = CMTimeGetSeconds(&time);
    goto LABEL_45;
  }

  if (v12 > 3)
  {
    if (v12 != 4)
    {
      if (v12 == 5)
      {
        operator/(&v60.value, &v56, &time);
        v37 = CMTimeGetSeconds(&time);
        v38 = 1.0 / (v37 * v37);
        operator/(&v59.value, &v56, &time);
        v39 = CMTimeGetSeconds(&time);
        v26 = v38 * (v39 * v39);
      }

      else
      {
        if (v12 != 6)
        {
          goto LABEL_46;
        }

        operator/(&v60.value, &v56, &time);
        v27 = CMTimeGetSeconds(&time);
        time = v60;
        time2 = v59;
        v28 = 1.0 / (v27 * v27);
        PC_CMTimeSaferSubtract(&time, &time2, &v54);
        operator/(&v54, &v56, &time);
        v29 = CMTimeGetSeconds(&time);
        v30 = v28 * (v29 * v29);
        if (v30 <= 1.0)
        {
          v31 = v30;
        }

        else
        {
          v31 = 1.0;
        }

        v32 = 1.0 - v31;
        if (v30 >= 0.0)
        {
          v26 = v32;
        }

        else
        {
          v26 = 1.0;
        }
      }

      goto LABEL_45;
    }

    operator*(&v60, &v64, 0.5);
    time = v59;
    time2 = v64;
    if (CMTimeCompare(&time, &time2) <= 0)
    {
      operator*(&v64.value, &v59, &time);
      v26 = 1.0 / CMTimeGetSeconds(&time);
      goto LABEL_45;
    }

    operator*(&v64.value, &v59, &time);
    v34 = -1.0 / CMTimeGetSeconds(&time);
    v35 = 2.0;
    goto LABEL_39;
  }

  switch(v12)
  {
    case 1:
      if (!OZChannel::getValueAsInt((v9 + 7712), MEMORY[0x277CC08F0], 0.0))
      {
        operator/(&v59.value, &v60, &time);
        v41 = CMTimeGetSeconds(&time);
        v63 = v41;
        v42 = 1.0;
        v43 = 0.0;
        break;
      }

      operator/(&v59.value, &v60, &time);
      v33 = CMTimeGetSeconds(&time);
      v34 = cos((v33 + 2.0) * 1.57079633);
      v35 = 1.0;
LABEL_39:
      v26 = v34 + v35;
      goto LABEL_45;
    case 2:
      if (OZChannel::getValueAsInt((v9 + 7712), MEMORY[0x277CC08F0], 0.0))
      {
        operator/(&v59.value, &v60, &time);
        v36 = CMTimeGetSeconds(&time);
        v26 = sin(v36 * 1.57079633);
        goto LABEL_45;
      }

      operator/(&v59.value, &v60, &time);
      v41 = CMTimeGetSeconds(&time);
      v63 = v41;
      v42 = 0.0;
      v43 = 1.0;
      break;
    case 3:
      if (OZChannel::getValueAsInt((v9 + 7712), MEMORY[0x277CC08F0], 0.0))
      {
        operator/(&v59.value, &v60, &time);
        v25 = CMTimeGetSeconds(&time);
        v26 = (cos((v25 + 1.0) * 3.14159265) + 1.0) * 0.5;
LABEL_45:
        v63 = v26;
        goto LABEL_46;
      }

      operator/(&v59.value, &v60, &time);
      v41 = CMTimeGetSeconds(&time);
      v63 = v41;
      v42 = 0.5;
      v43 = 0.5;
      break;
    default:
      goto LABEL_46;
  }

  PCMath::easeInOut(&v63, v41, v42, v43, 0.0, 1.0, 0, v40);
LABEL_46:
  v44 = 1.0;
  if (v63 <= 1.0)
  {
    v44 = v63;
  }

  v14 = 0.0;
  if (v63 >= 0.0)
  {
    v14 = v44;
  }

  v63 = v14;
  if (ValueAsInt == 1)
  {
    operator*(&v60, &time, v14);
    v59 = time;
    v58 = time;
    operator/(&v59.value, &v56, &time);
    v45 = CMTimeGetSeconds(&time);
    time2 = v62;
    operator/(&time2.value, &v56, &time);
    v46 = CMTimeGetSeconds(&time);
    operator/(&v58.value, &v56, &time);
    v47 = CMTimeGetSeconds(&time);
    v48 = v46 + -1.0;
    if (vabdd_f64(v45, v48) < 0.0000001 || v45 >= v48)
    {
      v52 = MEMORY[0x277CC08F0];
      if (OZChannel::getValueAsInt((v9 + 7304), MEMORY[0x277CC08F0], 0.0) != 1)
      {
LABEL_60:
        operator/(&v59.value, &v60, &time);
        v14 = CMTimeGetSeconds(&time);
        return v14 * a4;
      }

      *&v59.value = *v52;
      v51 = *(v52 + 16);
    }

    else
    {
      v49 = fmod(v45 * v13, v48);
      if (OZChannel::getValueAsInt((v9 + 7304), MEMORY[0x277CC08F0], 0.0) == 1)
      {
        v50 = floor(v47 * v13 / v48) * 0.5;
        if (vabdd_f64(v50, floor(v50)) >= 0.0000001)
        {
          v49 = v48 - v49;
        }
      }

      OZFigTimeForChannelSeconds(&time2, v49, v59.timescale);
      operator*(&time2.value, &v56, &time);
      *&v59.value = *&time.value;
      v51 = time.epoch;
    }

    v59.epoch = v51;
    goto LABEL_60;
  }

  return v14 * a4;
}

double OZMotionPathCurveNode::getPosition(OZMotionPathCurveNode *this, double a2, const CMTime *a3, const CMTime *a4, double a5, double a6)
{
  v12 = *(this + 1);
  if (v12)
  {
  }

  else
  {
    v13 = 0;
  }

  v14 = 0.0;
  ValueAsInt = OZChannel::getValueAsInt((v13 + 536), MEMORY[0x277CC08F0], 0.0);
  v145 = 0.0;
  v146 = 0.0;
  v143 = 0.0;
  v144 = 0.0;
  v142 = 0.0;
  if (ValueAsInt <= 1)
  {
    var0 = *a4;
    v16 = MEMORY[0x277CC08F0];
    if (OZChannel::getValueAsInt(v13 + 41, MEMORY[0x277CC08F0], 0.0) == 1)
    {
      a2 = a6 - a2;
    }

    if (OZChannel::getValueAsInt((v13 + 6488), v16, 0.0) == 8 && OZChannel::getValueAsInt((v13 + 2568), MEMORY[0x277CC08F0], 0.0) != 1)
    {
      memset(&seconds, 0, 24);
      PositionChannel = OZMotionPathBehavior::getPositionChannel(v13);
      OZChannel::getKeyframeParametricRange((PositionChannel + 136), &seconds);
      operator*(&seconds, &var0, a2 / a6);
    }

    else
    {
      seconds.var0.var0 = 0;
      if (a2 >= a6)
      {
        v17 = OZMotionPathBehavior::getPositionChannel(v13);
        v18 = MEMORY[0x277CC08F0];
        v19 = a6;
      }

      else
      {
        v17 = OZMotionPathBehavior::getPositionChannel(v13);
        v18 = MEMORY[0x277CC08F0];
        if (a2 <= 0.0)
        {
          v19 = 0.0;
        }

        else
        {
          v19 = a2;
        }
      }

      OZChannelPosition3D::getPositionReparametrizedWithRange(v17, v18, v19, &v144, &v143, &v142, &seconds.var0.var0);
      OZFigTimeForChannelSeconds(&var0, *&seconds.var0.var0, 0x40000);
    }

    (*(**(*(v13 + 47) + 32) + 320))(&time2);
    seconds.var0 = var0;
    time1 = time2;
    PC_CMTimeSaferSubtract(&seconds, &time1, &time);
    OZChannelObjectRootBase::getTimeOffset((v13 + 56), &v147);
    seconds.var0 = time;
    *&time1.value = v147;
    time1.epoch = epoch;
    PC_CMTimeSaferAdd(&seconds, &time1, &v140);
    var0 = v140;
    (*(**(*(v13 + 47) + 32) + 336))(&seconds);
    var0 = seconds.var0;
    v76 = OZMotionPathBehavior::getPositionChannel(v13);
    Descendant = OZChannelFolder::getDescendant(v76, *(this + 7));
    OZChannel::getValueAsDouble(Descendant, &var0, 0.0);
    return v74 + a5;
  }

  if (ValueAsInt > 3)
  {
    if (ValueAsInt == 4)
    {
      v54 = 0.0;
      OZChannel::getValueAsDouble((v13 + 4544), a4, 0.0);
      v56 = v55;
      OZChannel::getValueAsDouble((v13 + 4696), a4, 0.0);
      v58 = v57;
      OZChannel::getValueAsDouble((v13 + 5112), a4, 0.0);
      v117 = v59;
      OZChannel::getValueAsDouble((v13 + 5264), a4, 0.0);
      v115 = v60;
      OZChannel::getValueAsDouble((v13 + 5416), a4, 0.0);
      v114 = v61;
      OZChannel::getValueAsDouble((v13 + 5568), a4, 0.0);
      v63 = v62;
      OZMotionPathCurveNode::getLength(this, a4);
      v65 = v64;
      if (fabs(v64) >= 0.0000001)
      {
        v66 = a2 / v64;
      }

      else
      {
        v66 = 0.0;
      }

      if (OZChannel::getValueAsInt(v13 + 41, MEMORY[0x277CC08F0], 0.0) == 1)
      {
        v66 = 1.0 - v66;
      }

      v67 = v65 <= 0.0;
      v68 = v56 / v65;
      if (v65 > 0.0)
      {
        v69 = -v58 / v65;
      }

      else
      {
        v69 = 0.0;
      }

      if (!v67)
      {
        v54 = v68;
      }

      if (OZChannel::getValueAsInt((v13 + 6488), MEMORY[0x277CC08F0], 0.0) == 8)
      {
        v70 = fabs(v63);
        v71 = 1.0 - v66;
        if (v63 >= 0.0)
        {
          v71 = v66;
        }

        v72 = v117 * exp(-(v70 * v71));
        v73 = sin(v114 + v115 * (v66 * 6.28318531)) * v72;
        v74 = v56 * v66 + 0.0 + v69 * v73;
        v75 = v58 * v66 + 0.0 + v54 * v73;
      }

      else
      {
        v147.n128_u64[0] = 0;
        var0.value = 0;
        memset(&time1, 0, sizeof(time1));
        v79 = (*(**(this + 1) + 336))();
        FrameDuration = OZSceneSettings::getFrameDuration((v79 + 336), &time1);
        (*(*v13 + 608))(&seconds, v13, FrameDuration);
        time2 = *&seconds.var1;
        operator/(&time2.value, &time1, &time);
        v81 = CMTimeGetSeconds(&time);
        PCEvaluator::findPointOnSineWave(this + 10, v66, v117, v115, v114, v63, v56, v58, v81, v147.n128_f64, &var0.value);
        v74 = v56 * v147.n128_f64[0] + 0.0 + v69 * *&var0.value;
        v75 = v58 * v147.n128_f64[0] + 0.0 + v54 * *&var0.value;
      }

      v82 = *(this + 7);
      if (v82 != 2)
      {
        if (v82 != 1)
        {
          return a5 + 0.0;
        }

        return v74 + a5;
      }

      return v75 + a5;
    }

    if (ValueAsInt != 5)
    {
      return v14;
    }

    Node = OZChanSceneNodeRef::getNode((v13 + 5720));
    if (!Node)
    {
      return v14;
    }

    if (!v35)
    {
      return v14;
    }

    v36 = v35;
    OZRenderState::OZRenderState(&seconds);
    *&seconds.var0.var0 = *&a4->value;
    seconds.var0.var3 = a4->epoch;
    OZChannel::getValueAsDouble(v13 + 39, a4, 0.0);
    v38 = v37;
    v137 = 0.0;
    v138 = 0.0;
    if (OZChannel::getValueAsInt((v13 + 6488), MEMORY[0x277CC08F0], 0.0) != 8 || OZChannel::getValueAsInt((v36 + 20048), MEMORY[0x277CC08F0], 0.0) == 3 || OZChannel::getValueAsInt((v36 + 20048), MEMORY[0x277CC08F0], 0.0) == 2)
    {
      OZRotoshape::getReparametrizedPointOnContour(v36, &seconds.var0.var0, &v138, &v137, 0, 0, 1, 0);
    }

    v102 = a2 / a6;
    ParametricRange = OZChannelCurve::getParametricRange((v36 + 19184), a4);
    if (OZChannel::getValueAsInt((v36 + 20304), MEMORY[0x277CC08F0], 0.0))
    {
      if (OZChannel::getValueAsInt(v13 + 41, MEMORY[0x277CC08F0], 0.0) == 1)
      {
        *v106.i64 = v102 + v38;
        *v107.i64 = v102 + v38 - trunc(v102 + v38);
        v108.f64[0] = NAN;
        v108.f64[1] = NAN;
        v109 = (1.0 - *vbslq_s8(vnegq_f64(v108), v107, v106).i64) * ParametricRange;
      }

      else
      {
        v109 = fmod(v102 * ParametricRange + v38 * ParametricRange, ParametricRange);
      }
    }

    else
    {
      *v104.i64 = v102 + v38;
      if (fabs(v102 + v38) < 0.0000001 || (*&v110 = 1.0, vabdd_f64(*v104.i64, floor(*v104.i64)) >= 0.0000001))
      {
        *v105.i64 = *v104.i64 - trunc(*v104.i64);
        v111.f64[0] = NAN;
        v111.f64[1] = NAN;
        v110 = vbslq_s8(vnegq_f64(v111), v105, v104).u64[0];
      }

      v118 = *&v110;
      v112 = OZChannel::getValueAsInt(v13 + 41, MEMORY[0x277CC08F0], 0.0);
      v113 = 1.0 - v102;
      if (v112 != 1)
      {
        v113 = v118;
      }

      v109 = ParametricRange * v113;
    }

    OZChannelCurve::getCurveValueWithParameter((v36 + 19184), &seconds, 0.0, &v138, &v137);
    OZChannelCurve::getCurveValueWithParameter((v36 + 19184), &seconds, v109, &v146, &v145);
    v90 = MEMORY[0x277CC08F0];
    if (!OZChannel::getValueAsInt(v13 + 40, MEMORY[0x277CC08F0], 0.0))
    {
      v93 = *(this + 7);
      if (v93 == 2)
      {
        v94 = v145;
        v95 = v137;
      }

      else
      {
        if (v93 != 1)
        {
          return a5 + 0.0;
        }

        v94 = v146;
        v95 = v138;
      }

      v74 = v94 - v95;
      return v74 + a5;
    }

    v147 = *&a3->value;
    epoch = a3->epoch;
    time1 = *a3;
    time = *v90;
    if ((CMTimeCompare(&time1, &time) & 0x80000000) == 0)
    {
      memset(&var0, 0, sizeof(var0));
      v91 = OZBehavior::getFrameDuration(*(this + 1), &var0);
      (*(*v13 + 608))(&time1, v13, v91);
      time2 = time1;
      *&time.value = v147;
      time.epoch = epoch;
      if (CMTimeCompare(&time, &time2) < 0)
      {
        v147 = *&time1.value;
        v92 = time1.epoch;
        goto LABEL_95;
      }

      PCTimeRange::getEnd(&time1, &var0, &v140);
      *&time.value = v147;
      time.epoch = epoch;
      time2 = v140;
      if (CMTimeCompare(&time, &time2) >= 1)
      {
        PCTimeRange::getEnd(&time1, &var0, &time);
        v147 = *&time.value;
        v92 = time.epoch;
LABEL_95:
        epoch = v92;
      }
    }

    seconds.var0.var3 = epoch;
    *&seconds.var0.var0 = v147;
    *&time1.timescale = 0u;
    v129 = 0u;
    v134 = 0u;
    v135 = 0u;
    v136 = 0x3FF0000000000000;
    v133 = 0x3FF0000000000000;
    v130 = 0x3FF0000000000000;
    v127 = 0x3FF0000000000000;
    time1.value = 0x3FF0000000000000;
    v131 = 0u;
    v132 = 0u;
    v124 = 0x3FF0000000000000;
    v121 = 0x3FF0000000000000;
    time.value = 0x3FF0000000000000;
    *&time.timescale = 0u;
    v120 = 0u;
    v122 = 0u;
    v123 = 0u;
    v125 = 0u;
    v126 = 0u;
    if (*((*(*v13 + 320))(v13) + 960))
    {
      v100 = *((*(*v13 + 320))(v13) + 960);
      if (v100)
      {
      }

      (*(*v100 + 1264))(v100, &time, &seconds);
    }

    (*(*(v36 + 200) + 1256))(v36 + 200, &time1, &seconds);
    *&time2.value = v146;
    *&time2.timescale = v145;
    time2.epoch = 0;
    PCMatrix44Tmpl<double>::transform<double>(&time1.value, &time2.value, &time2.value);
    PCMatrix44Tmpl<double>::transform<double>(&time.value, &time2.value, &time2.value);
    v101 = *(this + 7);
    if (v101 == 2)
    {
      return *&time2.timescale;
    }

    if (v101 == 1)
    {
      return *&time2.value;
    }

    return *&time2.epoch;
  }

  if (ValueAsInt == 2)
  {
    v40 = 1.0 / *((*(**(this + 1) + 336))(*(this + 1)) + 384);
    v116 = 0.0;
    OZChannel::getValueAsDouble((v13 + 2960), a4, 0.0);
    v42 = v41;
    OZChannel::getValueAsDouble((v13 + 3112), a4, 0.0);
    v44 = v43;
    OZMotionPathCurveNode::getLength(this, a4);
    v46 = v45;
    OZChannel::getValueAsDouble(v13 + 39, a4, 0.0);
    v48 = v47;
    if (fabs(v46) >= 0.0000001)
    {
      v49 = OZChannel::getValueAsInt(v13 + 41, MEMORY[0x277CC08F0], 0.0);
      *v50.i64 = a2 / v46 + v48;
      *v51.i64 = *v50.i64 - trunc(*v50.i64);
      v52.f64[0] = NAN;
      v52.f64[1] = NAN;
      *&v53 = vbslq_s8(vnegq_f64(v52), v51, v50).u64[0];
      if (v49 == 1)
      {
        v116 = v46 * (1.0 - v53) / v46;
      }

      else
      {
        v116 = v53;
      }
    }

    v87 = v42 * v40;
    if (OZChannel::getValueAsInt((v13 + 6488), MEMORY[0x277CC08F0], 0.0) == 8)
    {
      v88 = __sincos_stret(v116 * 3.14159265 + v116 * 3.14159265);
      v75 = v87 - v87 * v88.__cosval;
      v145 = v44 * v88.__sinval;
    }

    else
    {
      PCEvaluator::findPointOnEllipse((this + 40), v116, fabs(v87), fabs(v44), 0.0, 0.0, &v146, &v145, 0);
      if (v87 < 0.0)
      {
        v146 = -v146;
      }

      if (v44 < 0.0)
      {
        v145 = -v145;
      }

      v75 = v87 + v146;
    }

    v89 = *(this + 7);
    if (v89 == 2)
    {
      v74 = v145;
      return v74 + a5;
    }

    if (v89 != 1)
    {
      return a5 + 0.0;
    }

    return v75 + a5;
  }

  if (ValueAsInt == 3)
  {
    v20 = 1.0 / *((*(**(this + 1) + 336))(*(this + 1)) + 384);
    OZChannel::getValueAsDouble((v13 + 3400), a4, 0.0);
    v22 = v20 * fabs(v21);
    OZChannel::getValueAsDouble((v13 + 3552), a4, 0.0);
    v24 = fabs(v23);
    OZMotionPathCurveNode::getLength(this, a4);
    v26 = v25;
    OZChannel::getValueAsDouble(v13 + 39, a4, 0.0);
    v28 = v27;
    v29 = 0.0;
    if (fabs(v26) >= 0.0000001)
    {
      if (OZChannel::getValueAsInt(v13 + 41, MEMORY[0x277CC08F0], 0.0) == 1)
      {
        *v31.i64 = a2 / v26 + v28;
        *v32.i64 = *v31.i64 - trunc(*v31.i64);
        v33.f64[0] = NAN;
        v33.f64[1] = NAN;
        v29 = (v22 + v22 + v24 + v24) * (1.0 - *vbslq_s8(vnegq_f64(v33), v32, v31).i64);
      }

      else
      {
        *v30.i64 = a2 / v26 + v28;
        *v31.i64 = *v30.i64 - trunc(*v30.i64);
        v83.f64[0] = NAN;
        v83.f64[1] = NAN;
        v29 = (v22 + v22 + v24 + v24) * *vbslq_s8(vnegq_f64(v83), v31, v30).i64;
      }
    }

    v84 = v24 * 0.5;
    if (v29 <= v24 * 0.5)
    {
      v84 = v29;
    }

    else
    {
      if (v29 <= v22 + v84)
      {
        v22 = v29 - v84;
        goto LABEL_85;
      }

      v85 = v24 * 3.0 * 0.5;
      if (v29 <= v22 + v85)
      {
        v84 = v84 - (v29 - v22 - v84);
        goto LABEL_85;
      }

      v86 = v22 + v22 + v85;
      if (v29 <= v86)
      {
        v22 = v22 - (v29 - v22 - v85);
        v84 = v24 * -0.5;
        goto LABEL_85;
      }

      v84 = v29 - v86 - v84;
    }

    v22 = 0.0;
LABEL_85:
    OZChannel::getValueAsDouble((v13 + 3400), a4, 0.0);
    v97 = v96;
    OZChannel::getValueAsDouble((v13 + 3552), a4, 0.0);
    v99 = *(this + 7);
    if (v99 != 2)
    {
      if (v99 == 1)
      {
        v74 = -v22;
        if (v97 >= 0.0)
        {
          v74 = v22;
        }

        return v74 + a5;
      }

      return a5 + 0.0;
    }

    if (v98 >= 0.0)
    {
      v74 = v84;
    }

    else
    {
      v74 = -v84;
    }

    return v74 + a5;
  }

  return v14;
}

__n128 OZMotionPathCurveNode::solveNode(OZMotionPathCurveNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v3 = *(a2 + 10);
  v9 = *(a2 + 5);
  result = *(a2 + 6);
  *&v8.value = result;
  v8.epoch = *(a2 + 14);
  if (*(a2 + 36))
  {
    v7 = 0;
    do
    {
      *(v2 + 8 * v7) = (*(*this + 16))(this, &v8, 0.0, *(v3 + 8 * v7));
      v11 = v8;
      v10 = v9;
      PC_CMTimeSaferAdd(&v11, &v10, &v12);
      result = *&v12.value;
      v8 = v12;
      ++v7;
    }

    while (v7 < *(a2 + 36));
  }

  return result;
}

__n128 OZMotionPathCurveNode::getNeededRange(OZMotionPathCurveNode *this, OZCurveNodeParam *a2)
{
  *(a2 + 24) = *(a2 + 6);
  *(a2 + 5) = *(a2 + 14);
  result = *(a2 + 120);
  *(a2 + 3) = result;
  *(a2 + 8) = *(a2 + 17);
  *(a2 + 18) = *(a2 + 36);
  *(a2 + 88) = 0;
  *(a2 + 10) = *(a2 + 19);
  return result;
}

double PCTimeRange::getEnd@<D0>(PCTimeRange *this@<X0>, const CMTime *a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *this;
  v7 = *(this + 1);
  PC_CMTimeSaferAdd(&v8, &v7, &v6);
  v8 = v6;
  v7 = *a2;
  return PC_CMTimeSaferSubtract(&v8, &v7, a3);
}

uint64_t OZSystemSimulator::OZSystemSimulator(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_287279AC8;
  *(a1 + 8) = a2;
  *(a1 + 16) = a1 + 16;
  *(a1 + 24) = a1 + 16;
  *(a1 + 48) = 0;
  *(a1 + 40) = a1 + 48;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = a1 + 64;
  *(a1 + 72) = a1 + 64;
  *(a1 + 80) = 0;
  PCMutex::PCMutex((a1 + 88));
  PCMutex::PCMutex((a1 + 160), 1);
  *(a1 + 160) = &unk_2871D83A0;
  *(a1 + 232) = 0;
  *(a1 + 236) = 1;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0;
  *(a1 + 240) = a1 + 248;
  *(a1 + 272) = 0;
  return a1;
}

void sub_260084F90(_Unwind_Exception *a1)
{
  PCMutex::~PCMutex((v2 + 88));
  std::__list_imp<unsigned int>::clear(v4);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v3, *v5);
  std::__list_imp<unsigned int>::clear(v1);
  _Unwind_Resume(a1);
}

void OZSystemSimulator::~OZSystemSimulator(OZSystemSimulator *this)
{
  *this = &unk_287279AC8;
  OZSystemSimulator::flushCache(this, 1, 0);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 240, *(this + 31));
  PCMutex::~PCMutex((this + 160));
  PCMutex::~PCMutex((this + 88));
  std::__list_imp<unsigned int>::clear(this + 8);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 40, *(this + 6));
  std::__list_imp<unsigned int>::clear(this + 2);
}

{
  OZSystemSimulator::~OZSystemSimulator(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t OZSystemSimulator::flushCache(OZSystemSimulator *this, int a2, int a3)
{
  result = (*(**(this + 1) + 152))(*(this + 1));
  if ((result & 1) == 0)
  {
    if (a2)
    {
      PCMutex::lock((this + 160));
      PCMutex::lock((this + 88));
    }

    std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 240, *(this + 31));
    *(this + 31) = 0;
    *(this + 32) = 0;
    *(this + 30) = this + 248;
    for (i = *(this + 4); i; i = *(this + 4))
    {
      v8 = *(this + 3);
      if (v8[2])
      {
        OZSimStateArray::~OZSimStateArray(v8[2]);
        MEMORY[0x2666E9F00]();
        v8 = *(this + 3);
        i = *(this + 4);
      }

      v10 = *v8;
      v9 = v8[1];
      v10[1].var0 = v9;
      *v9 = v10;
      *(this + 4) = i - 1;
      operator delete(v8);
    }

    while (*(this + 7))
    {
      v11 = *(this + 5);
      v12 = v11[7];
      if (v12)
      {
        OZSimStateArray::~OZSimStateArray(v12);
        MEMORY[0x2666E9F00]();
      }

      std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(this + 5, v11);
      operator delete(v11);
    }

    while (1)
    {
      v14 = *(this + 10);
      if (!v14)
      {
        break;
      }

      v13 = *(this + 9);
      if (v13[2])
      {
        OZSimStateArray::~OZSimStateArray(v13[2]);
        MEMORY[0x2666E9F00]();
        v13 = *(this + 9);
        v14 = *(this + 10);
      }

      v16 = *v13;
      v15 = v13[1];
      v16[1].var0 = v15;
      *v15 = v16;
      *(this + 10) = v14 - 1;
      operator delete(v13);
    }

    result = (*(**(this + 1) + 160))(*(this + 1), this);
    if (a3)
    {
      v18 = &v18;
      v19 = &v18;
      v20 = 0;
      (*(**(this + 1) + 48))(*(this + 1), &v18);
      for (j = v19; j != &v18; j = j[1])
      {
        (*(*j[2] + 712))(j[2]);
      }

      result = std::__list_imp<unsigned int>::clear(&v18);
    }

    if (a2)
    {
      PCMutex::unlock((this + 88));
      return PCMutex::unlock((this + 160));
    }
  }

  return result;
}