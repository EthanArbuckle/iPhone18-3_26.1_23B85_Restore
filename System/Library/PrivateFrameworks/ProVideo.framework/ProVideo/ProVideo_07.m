const char *HgcChannelBlur::GetProgram(HgcChannelBlur *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000378\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1.xyz = r1.xyz / fmax(r1.w, 6.10350e-05h);\n    r1.xyz = mix(r0.xyz, r1.xyz, half3(hg_Params[0].xyz));\n    output.color0.xyz = float3(r1.xyz)*float3(r0.www);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=bf7ff0fe:d2f0c9da:e48c02b2:a9c85d76\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000034d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1.xyz = r1.xyz / fmax(r1.w, 1.00000e-06f);\n    r1.xyz = mix(r0.xyz, r1.xyz, hg_Params[0].xyz);\n    output.color0.xyz = r1.xyz*r0.www;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=1eb47937:0a22926f:7a54733b:05d12848\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002f2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1.xyz = r1.xyz / max(r1.w, 1.00000e-06);\n    r1.xyz = mix(r0.xyz, r1.xyz, hg_ProgramLocal0.xyz);\n    gl_FragColor.xyz = r1.xyz*r0.www;\n    gl_FragColor.w = r0.w;\n}\n//MD5=7511d386:542c3bfe:06b0257c:faba6f39\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA662A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA663E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA66430()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA66428);
}

uint64_t HgcChannelBlur::BindTexture(HgcChannelBlur *this, HGHandler *a2, int a3)
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

uint64_t HgcChannelBlur::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcChannelBlur::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 96);
    v7 = 16 * *(a2 + 88);
    v8 = *(a2 + 80);
    v9 = 16 * *(a2 + 104);
    v10 = 16 * *(a2 + 24);
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
          v18 = *(a1 + 408);
          v19 = *(v18 + 16);
          v20 = *(v18 + 32);
          v21 = *(v18 + 48);
          v22 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v19);
          v23 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v19);
          v24 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v19);
          v25 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v19);
          v26 = vmulq_f32(vrecpeq_f32(v22), v20);
          v27 = vmulq_f32(vrecpeq_f32(v23), v20);
          v28 = vmulq_f32(vrecpeq_f32(v24), v20);
          v29 = vmulq_f32(vrecpeq_f32(v25), v20);
          v30 = vbslq_s8(v21, *(v8 + v12 - 32), vmulq_laneq_f32(vaddq_f32(*(v8 + v12 - 32), vmulq_f32(vsubq_f32(vmulq_f32(v14, vmulq_f32(v26, vrecpsq_f32(v26, v22))), *(v8 + v12 - 32)), *v18)), *(v8 + v12 - 32), 3));
          v31 = vbslq_s8(v21, *(v8 + v12 - 16), vmulq_laneq_f32(vaddq_f32(*(v8 + v12 - 16), vmulq_f32(*v18, vsubq_f32(vmulq_f32(v15, vmulq_f32(v27, vrecpsq_f32(v27, v23))), *(v8 + v12 - 16)))), *(v8 + v12 - 16), 3));
          v32 = vbslq_s8(v21, *(v8 + v12), vmulq_laneq_f32(vaddq_f32(*(v8 + v12), vmulq_f32(*v18, vsubq_f32(vmulq_f32(v16, vmulq_f32(v28, vrecpsq_f32(v28, v24))), *(v8 + v12)))), *(v8 + v12), 3));
          v33 = vbslq_s8(v21, *(v8 + v12 + 16), vmulq_laneq_f32(vaddq_f32(*(v8 + v12 + 16), vmulq_f32(*v18, vsubq_f32(vmulq_f32(v17, vmulq_f32(v29, vrecpsq_f32(v29, v25))), *(v8 + v12 + 16)))), *(v8 + v12 + 16), 3));
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
          v36 = *(a1 + 408);
          v37 = vmaxq_f32(vdupq_laneq_s32(v35, 3), *(v36 + 16));
          v38 = vmulq_f32(vrecpeq_f32(v37), *(v36 + 32));
          *(v5 + 16 * v11) = vbslq_s8(*(v36 + 48), *(v8 + 16 * v11), vmulq_laneq_f32(vaddq_f32(*(v8 + 16 * v11), vmulq_f32(*v36, vsubq_f32(vmulq_f32(v35, vmulq_f32(v38, vrecpsq_f32(v38, v37))), *(v8 + 16 * v11)))), *(v8 + 16 * v11), 3));
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

uint64_t HgcChannelBlur::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcChannelBlur::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcChannelBlur::HgcChannelBlur(HgcChannelBlur *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DE7E8;
  operator new();
}

void HgcChannelBlur::~HgcChannelBlur(HGNode *this)
{
  *this = &unk_2871DE7E8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcChannelBlur::~HgcChannelBlur(this);

  HGObject::operator delete(v1);
}

uint64_t HgcChannelBlur::SetParameter(HgcChannelBlur *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcChannelBlur::GetParameter(HgcChannelBlur *this, int a2, float *a3)
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

const char *HgcChannelBlurNoPremult::GetProgram(HgcChannelBlurNoPremult *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002f2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    output.color0 = mix(float4(r0), float4(r1), hg_Params[0]);\n    return output;\n}\n//MD5=71e089ca:82dc604d:921d323b:8c63d522\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002d5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    output.color0 = mix(r0, r1, hg_Params[0]);\n    return output;\n}\n//MD5=19049a07:c1b7d36e:88d051c2:edb06ce9\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000027f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    gl_FragColor = mix(r0, r1, hg_ProgramLocal0);\n}\n//MD5=e59d54b8:dcfffceb:e9177f14:9c43910d\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA66B74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA66CB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA66CFC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA66CF4);
}

uint64_t HgcChannelBlurNoPremult::BindTexture(HgcChannelBlurNoPremult *this, HGHandler *a2, int a3)
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

uint64_t HgcChannelBlurNoPremult::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcChannelBlurNoPremult::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 96);
    v7 = 16 * *(a2 + 88);
    v8 = *(a2 + 80);
    v9 = 16 * *(a2 + 104);
    v10 = 16 * *(a2 + 24);
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
          v14 = **(a1 + 408);
          v15 = vaddq_f32(*(v8 + v12 - 16), vmulq_f32(vsubq_f32(*(v6 + v12 - 16), *(v8 + v12 - 16)), v14));
          v16 = vaddq_f32(*(v8 + v12), vmulq_f32(vsubq_f32(*(v6 + v12), *(v8 + v12)), v14));
          v17 = vaddq_f32(*(v8 + v12 + 16), vmulq_f32(vsubq_f32(*(v6 + v12 + 16), *(v8 + v12 + 16)), v14));
          v18 = (v5 + v12);
          v18[-2] = vaddq_f32(*(v8 + v12 - 32), vmulq_f32(vsubq_f32(*(v6 + v12 - 32), *(v8 + v12 - 32)), v14));
          v18[-1] = v15;
          *v18 = v16;
          v18[1] = v17;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          *(v5 + 16 * v11) = vaddq_f32(*(v8 + 16 * v11), vmulq_f32(vsubq_f32(*(v6 + 16 * v11), *(v8 + 16 * v11)), **(a1 + 408)));
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

uint64_t HgcChannelBlurNoPremult::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcChannelBlurNoPremult::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcChannelBlurNoPremult::HgcChannelBlurNoPremult(HgcChannelBlurNoPremult *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DEA50;
  operator new();
}

void HgcChannelBlurNoPremult::~HgcChannelBlurNoPremult(HGNode *this)
{
  *this = &unk_2871DEA50;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  HgcChannelBlurNoPremult::~HgcChannelBlurNoPremult(this);

  HGObject::operator delete(v1);
}

uint64_t HgcChannelBlurNoPremult::SetParameter(HgcChannelBlurNoPremult *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcChannelBlurNoPremult::GetParameter(HgcChannelBlurNoPremult *this, int a2, float *a3)
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

const char *HgcSunburst::GetProgram(HgcSunburst *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n"
             "//LEN=0000000e50\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]])\n"
             "{\n"
             "    const half4 c0 = half4(0.05747731403, -0.01348046958, -0.1212390736, 0.1956359297);\n"
             "    const half4 c1 = half4(0.9999956489, -0.3329946101, 1.570796371, 3.141592741);\n"
             "    const half4 c2 = half4(0.000000000, 6.283185482, 0.5000000000, 2.000000000);\n"
             "    const half4 c3 = half4(3.000000000, 0.000000000, 0.000000000, 0.000000000);\n"
             "    half4 r0, r1;\n"
             "    float4 s0, s1, s2, s3;\n"
             "    FragmentOut output;\n"
             "\n"
             "    s0.z = dot(frag._texCoord0, hg_Params[4]);\n"
             "    s0.x = dot(frag._texCoord0, hg_Params[3]);\n"
             "    s1.z = abs(s0.z);\n"
             "    s0.w = abs(s0.x);\n"
             "    s0.y = fmax(s0.w, s1.z);\n"
             "    s1.x = 1.00000f / s0.y;\n"
             "    s0.y = fmin(s0.w, s1.z);\n"
             "    s1.w = s0.y*s1.x;\n"
             "    s1.x = s1.w*s1.w;\n"
             "    s0.y = s1.x*float(c0.y) + float(c0.x);\n"
             "    s0.y = s0.y*s1.x + float(c0.z);\n"
             "    s0.y = s0.y*s1.x + float(c0.w);\n"
             "    s1.y = s0.y*s1.x + float(c1.y);\n"
             "    s0.w = s1.z - s0.w;\n"
             "    s0.y = s0.z;\n"
             "    s2.x = s1.y*s1.x + float(c1.x);\n"
             "    s1.x = dot(s0.xy, s0.xy);\n"
             "    s0.y = s2.x*s1.w;\n"
             "    s1.y = float(c1.z) - s0.y;\n"
             "    s0.y = select(s0.y, s1.y, s0.w < 0.00000h);\n"
             "    s1.x = sqrt(s1.x);\n"
             "    s2.x = float(c1.w) - s0.y;\n"
             "    s0.y = select(s0.y, s2.x, s0.z < 0.00000h);\n"
             "    s0.z = s1.x*hg_Params[12].z + hg_Params[13].z;\n"
             "    s0.x = select(s0.y, -s0.y, s0.x < 0.00000h);\n"
             "    s0.y = sin(s0.z);\n"
             "    s0.x = s0.y*hg_Params[11].x + s0.x;\n"
             "    s0.y = s0.x + float(c2.y);\n"
             "    s0.x = select(s0.x, s0.y, s0.x < 0.00000h);\n"
             "    s0.z = 1.00000f / hg_Params[0].x;\n"
             "    s0.y = s0.x*s0.z;\n"
             "    s0.y = floor(s0.y);\n"
             "    s0.x = s0.x*s0.z + -s0.y;\n"
             "    s0.y = s0.x*hg_Params[0].x;\n"
             "    s0.x = cos(s0.y);\n"
             "    r0.zw = half2(hg_Params[7].zw) - half2(hg_Params[8].xy);\n"
             "    r1.x = dot(r0.zw, r0.zw);\n"
             "    s0.y = sin(s0.y);\n"
             "    s0.zw = s1.xx*s0.xy;\n"
             "    s0.xy = s0.zw - hg_Params[8].xy;\n"
             "    s0.x = dot(s0.xy, float2(r0.zw));\n"
             "    s0.x = s0.x/float(r1.x);\n"
             "    s0.xy = s0.xx*float2(r0.zw) + hg_Params[8].xy;\n"
             "    s2.xy = s0.zw - s0.xy;\n"
             "    s0.x = dot(s2.xy, s2.xy);\n"
             "    s1.y = rsqrt(s0.x);\n"
             "    r0.xy = half2(s1.yy)*half2(s2.xy);\n"
             "    r1.xy = half2(hg_Params[5].xy) - half2(hg_Params[6].xy);\n"
             "    s0.xy = s0.zw - hg_Params[6].xy;\n"
             "    s2.x = dot(s0.xy, float2(r1.xy));\n"
             "    s2.y = dot(float2(r1.xy), float2(r1.xy));\n"
             "    s0.y = -float(r0.z);\n"
             "    s0.x = float(r0.w);\n"
             "    r1.w = half(s2.x)/half(s2.y);\n"
             "    r1.zw = r1.ww*r1.xy + half2(hg_Params[6].xy);\n"
             "    s0.zw = s0.zw - float2(r1.zw);\n"
             "    r1.z = dot(half2(s0.zw), half2(s0.zw));\n"
             "    s2.w = rsqrt(float(r1.z));\n"
             "    s0.zw = s2.ww*s0.zw;\n"
             "    s0.xy = normalize(s0.xy).xy;\n"
             "    s2.z = dot(s0.xy, float2(r0.xy));\n"
             "    s0.y = -float(r1.x);\n"
             "    s0.x = float(r1.y);\n"
             "    r0.xy = r1.xy;\n"
             "    r0.w = r1.x;\n"
             "    r0.z = -r0.y;\n"
             "    s2.x = float(-float(fabs(r0.x)) >= float(c2.x));\n"
             "    r1.xy = select(half2(s0.xy), r0.zw, -half2(s2.xx) < 0.00000h);\n"
             "    s0.xy = normalize(float2(r1.xy)).xy;\n"
             "    s0.x = dot(s0.xy, s0.zw);\n"
             "    s3.x = fabs(s0.x)*s2.w;\n"
             "    s0.x = s0.x/s3.x;\n"
             "    s3.z = fabs(s2.z)*s1.y;\n"
             "    s0.z = s2.z/s3.z;\n"
             "    s0.x = fmin(s0.x, s0.z);\n"
             "    s0.x = clamp(mix(float(c2.z), s0.x, hg_Params[9].x), 0.00000f, 1.00000f);\n"
             "    s0.y = s0.x*s0.x;\n"
             "    s0.z = hg_Params[10].z - s1.x;\n"
             "    s0.x = -s0.x*float(c2.w) + float(c3.x);\n"
             "    s0.x = s0.y*s0.x;\n"
             "    s0.y = clamp(mix(float(c2.z), s0.z, hg_Params[9].x), 0.00000f, 1.00000f);\n"
             "    s0.z = -s0.y*float(c2.w) + float(c3.x);\n"
             "    s0.y = s0.y*s0.y;\n"
             "    s0.y = s0.y*s0.z;\n"
             "    s0.x = s0.x*s0.y;\n"
             "    output.color0 = mix(hg_Params[2], hg_Params[1], s0.xxxx);\n"
             "    return output;\n"
             "}\n"
             "//MD5=74961cca:f23dedd6:326fab47:bc4a156c\n"
             "//SIG=00400000:00000000:00000000:00000000:0004:000e:0006:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n"
             "//LEN=0000000cfd\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]])\n"
             "{\n"
             "    const float4 c0 = float4(0.05747731403, -0.01348046958, -0.1212390736, 0.1956359297);\n"
             "    const float4 c1 = float4(0.9999956489, -0.3329946101, 1.570796371, 3.141592741);\n"
             "    const float4 c2 = float4(0.000000000, 6.283185482, 0.5000000000, 2.000000000);\n"
             "    const float4 c3 = float4(3.000000000, 0.000000000, 0.000000000, 0.000000000);\n"
             "    float4 r0, r1, r2, r3, r4;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0.z = dot(frag._texCoord0, hg_Params[4]);\n"
             "    r0.x = dot(frag._texCoord0, hg_Params[3]);\n"
             "    r1.z = abs(r0.z);\n"
             "    r0.w = abs(r0.x);\n"
             "    r0.y = fmax(r0.w, r1.z);\n"
             "    r1.x = 1.00000f / r0.y;\n"
             "    r0.y = fmin(r0.w, r1.z);\n"
             "    r1.w = r0.y*r1.x;\n"
             "    r1.x = r1.w*r1.w;\n"
             "    r0.y = r1.x*c0.y + c0.x;\n"
             "    r0.y = r0.y*r1.x + c0.z;\n"
             "    r0.y = r0.y*r1.x + c0.w;\n"
             "    r1.y = r0.y*r1.x + c1.y;\n"
             "    r0.w = r1.z - r0.w;\n"
             "    r0.y = r0.z;\n"
             "    r2.x = r1.y*r1.x + c1.x;\n"
             "    r1.x = dot(r0.xy, r0.xy);\n"
             "    r0.y = r2.x*r1.w;\n"
             "    r1.y = c1.z - r0.y;\n"
             "    r0.y = select(r0.y, r1.y, r0.w < 0.00000f);\n"
             "    r1.x = sqrt(r1.x);\n"
             "    r2.x = c1.w - r0.y;\n"
             "    r0.y = select(r0.y, r2.x, r0.z < 0.00000f);\n"
             "    r0.z = r1.x*hg_Params[12].z + hg_Params[13].z;\n"
             "    r0.x = select(r0.y, -r0.y, r0.x < 0.00000f);\n"
             "    r0.y = sin(r0.z);\n"
             "    r0.x = r0.y*hg_Params[11].x + r0.x;\n"
             "    r0.y = r0.x + c2.y;\n"
             "    r0.x = select(r0.x, r0.y, r0.x < 0.00000f);\n"
             "    r0.z = 1.00000f / hg_Params[0].x;\n"
             "    r0.y = r0.x*r0.z;\n"
             "    r0.y = floor(r0.y);\n"
             "    r0.x = r0.x*r0.z + -r0.y;\n"
             "    r0.y = r0.x*hg_Params[0].x;\n"
             "    r0.x = cos(r0.y);\n"
             "    r2.zw = hg_Params[7].zw - hg_Params[8].xy;\n"
             "    r3.x = dot(r2.zw, r2.zw);\n"
             "    r0.y = sin(r0.y);\n"
             "    r0.zw = r1.xx*r0.xy;\n"
             "    r0.xy = r0.zw - hg_Params[8].xy;\n"
             "    r0.x = dot(r0.xy, r2.zw);\n"
             "    r0.x = r0.x/r3.x;\n"
             "    r0.xy = r0.xx*r2.zw + hg_Params[8].xy;\n"
             "    r3.xy = r0.zw - r0.xy;\n"
             "    r0.x = dot(r3.xy, r3.xy);\n"
             "    r1.y = rsqrt(r0.x);\n"
             "    r2.xy = r1.yy*r3.xy;\n"
             "    r3.xy = hg_Params[5].xy - hg_Params[6].xy;\n"
             "    r0.xy = r0.zw - hg_Params[6].xy;\n"
             "    r4.x = dot(r0.xy, r3.xy);\n"
             "    r4.y = dot(r3.xy, r3.xy);\n"
             "    r0.y = -r2.z;\n"
             "    r0.x = r2.w;\n"
             "    r3.w = r4.x/r4.y;\n"
             "    r3.zw = r3.ww*r3.xy + hg_Params[6].xy;\n"
             "    r0.zw = r0.zw - r3.zw;\n"
             "    r3.z = dot(r0.zw, r0.zw);\n"
             "    r4.w = rsqrt(r3.z);\n"
             "    r0.zw = r4.ww*r0.zw;\n"
             "    r0.xy = normalize(r0.xy).xy;\n"
             "    r4.z = dot(r0.xy, r2.xy);\n"
             "    r0.y = -r3.x;\n"
             "    r0.x = r3.y;\n"
             "    r3.w = r3.x;\n"
             "    r3.z = -r3.y;\n"
             "    r4.x = float(-fabs(r3.x) >= c2.x);\n"
             "    r3.xy = select(r0.xy, r3.zw, -r4.xx < 0.00000f);\n"
             "    r0.xy = normalize(r3.xy).xy;\n"
             "    r0.x = dot(r0.xy, r0.zw);\n"
             "    r2.x = fabs(r0.x)*r4.w;\n"
             "    r0.x = r0.x/r2.x;\n"
             "    r3.z = fabs(r4.z)*r1.y;\n"
             "    r0.z = r4.z/r3.z;\n"
             "    r0.x = fmin(r0.x, r0.z);\n"
             "    r0.x = clamp(mix(c2.z, r0.x, hg_Params[9].x), 0.00000f, 1.00000f);\n"
             "    r0.y = r0.x*r0.x;\n"
             "    r0.z = hg_Params[10].z - r1.x;\n"
             "    r0.x = -r0.x*c2.w + c3.x;\n"
             "    r0.x = r0.y*r0.x;\n"
             "    r0.y = clamp(mix(c2.z, r0.z, hg_Params[9].x), 0.00000f, 1.00000f);\n"
             "    r0.z = -r0.y*c2.w + c3.x;\n"
             "    r0.y = r0.y*r0.y;\n"
             "    r0.y = r0.y*r0.z;\n"
             "    r0.x = r0.x*r0.y;\n"
             "    output.color0 = mix(hg_Params[2], hg_Params[1], r0.xxxx);\n"
             "    return output;\n"
             "}\n"
             "//MD5=fb86d404:1e650e8f:989e6e84:ee2d82fe\n"
             "//SIG=00000000:00000000:00000000:00000000:0004:000e:0005:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000f3c\n"
           "#ifndef GL_ES\n"
           "#define lowp\n"
           "#define mediump\n"
           "#define highp\n"
           "#endif\n"
           "#define defaultp mediump\n"
           "uniform highp vec4 hg_ProgramLocal0;\n"
           "uniform highp vec4 hg_ProgramLocal1;\n"
           "uniform highp vec4 hg_ProgramLocal2;\n"
           "uniform highp vec4 hg_ProgramLocal3;\n"
           "uniform highp vec4 hg_ProgramLocal4;\n"
           "uniform highp vec4 hg_ProgramLocal5;\n"
           "uniform highp vec4 hg_ProgramLocal6;\n"
           "uniform highp vec4 hg_ProgramLocal7;\n"
           "uniform highp vec4 hg_ProgramLocal8;\n"
           "uniform highp vec4 hg_ProgramLocal9;\n"
           "uniform highp vec4 hg_ProgramLocal10;\n"
           "uniform highp vec4 hg_ProgramLocal11;\n"
           "uniform highp vec4 hg_ProgramLocal12;\n"
           "uniform highp vec4 hg_ProgramLocal13;\n"
           "varying highp vec4 hg_TexCoord0;\n"
           "void main()\n"
           "{\n"
           "    const highp vec4 c0 = vec4(0.05747731403, -0.01348046958, -0.1212390736, 0.1956359297);\n"
           "    const highp vec4 c1 = vec4(0.9999956489, -0.3329946101, 1.570796371, 3.141592741);\n"
           "    const highp vec4 c2 = vec4(0.000000000, 6.283185482, 0.5000000000, 2.000000000);\n"
           "    const highp vec4 c3 = vec4(3.000000000, 0.000000000, 0.000000000, 0.000000000);\n"
           "    highp vec4 r0, r1, r2, r3, r4;\n"
           "\n"
           "    r0.z = dot(hg_TexCoord0, hg_ProgramLocal4);\n"
           "    r0.x = dot(hg_TexCoord0, hg_ProgramLocal3);\n"
           "    r1.z = abs(r0.z);\n"
           "    r0.w = abs(r0.x);\n"
           "    r0.y = max(r0.w, r1.z);\n"
           "    r1.x = 1.00000 / r0.y;\n"
           "    r0.y = min(r0.w, r1.z);\n"
           "    r1.w = r0.y*r1.x;\n"
           "    r1.x = r1.w*r1.w;\n"
           "    r0.y = r1.x*c0.y + c0.x;\n"
           "    r0.y = r0.y*r1.x + c0.z;\n"
           "    r0.y = r0.y*r1.x + c0.w;\n"
           "    r1.y = r0.y*r1.x + c1.y;\n"
           "    r0.w = r1.z - r0.w;\n"
           "    r0.y = r0.z;\n"
           "    r2.x = r1.y*r1.x + c1.x;\n"
           "    r1.x = dot(r0.xy, r0.xy);\n"
           "    r0.y = r2.x*r1.w;\n"
           "    r1.y = c1.z - r0.y;\n"
           "    r0.y = r0.w < 0.00000 ? r1.y : r0.y;\n"
           "    r1.x = sqrt(r1.x);\n"
           "    r2.x = c1.w - r0.y;\n"
           "    r0.y = r0.z < 0.00000 ? r2.x : r0.y;\n"
           "    r0.z = r1.x*hg_ProgramLocal12.z + hg_ProgramLocal13.z;\n"
           "    r0.x = r0.x < 0.00000 ? -r0.y : r0.y;\n"
           "    r0.y = sin(r0.z);\n"
           "    r0.x = r0.y*hg_ProgramLocal11.x + r0.x;\n"
           "    r0.y = r0.x + c2.y;\n"
           "    r0.x = r0.x < 0.00000 ? r0.y : r0.x;\n"
           "    r0.z = 1.00000 / hg_ProgramLocal0.x;\n"
           "    r0.y = r0.x*r0.z;\n"
           "    r0.y = floor(r0.y);\n"
           "    r0.x = r0.x*r0.z + -r0.y;\n"
           "    r0.y = r0.x*hg_ProgramLocal0.x;\n"
           "    r0.x = cos(r0.y);\n"
           "    r2.zw = hg_ProgramLocal7.zw - hg_ProgramLocal8.xy;\n"
           "    r3.x = dot(r2.zw, r2.zw);\n"
           "    r0.y = sin(r0.y);\n"
           "    r0.zw = r1.xx*r0.xy;\n"
           "    r0.xy = r0.zw - hg_ProgramLocal8.xy;\n"
           "    r0.x = dot(r0.xy, r2.zw);\n"
           "    r0.x = r0.x/r3.x;\n"
           "    r0.xy = r0.xx*r2.zw + hg_ProgramLocal8.xy;\n"
           "    r3.xy = r0.zw - r0.xy;\n"
           "    r0.x = dot(r3.xy, r3.xy);\n"
           "    r1.y = inversesqrt(r0.x);\n"
           "    r2.xy = r1.yy*r3.xy;\n"
           "    r3.xy = hg_ProgramLocal5.xy - hg_ProgramLocal6.xy;\n"
           "    r0.xy = r0.zw - hg_ProgramLocal6.xy;\n"
           "    r4.x = dot(r0.xy, r3.xy);\n"
           "    r4.y = dot(r3.xy, r3.xy);\n"
           "    r0.y = -r2.z;\n"
           "    r0.x = r2.w;\n"
           "    r3.w = r4.x/r4.y;\n"
           "    r3.zw = r3.ww*r3.xy + hg_ProgramLocal6.xy;\n"
           "    r0.zw = r0.zw - r3.zw;\n"
           "    r3.z = dot(r0.zw, r0.zw);\n"
           "    r4.w = inversesqrt(r3.z);\n"
           "    r0.zw = r4.ww*r0.zw;\n"
           "    r0.xy = normalize(r0.xy).xy;\n"
           "    r4.z = dot(r0.xy, r2.xy);\n"
           "    r0.y = -r3.x;\n"
           "    r0.x = r3.y;\n"
           "    r3.w = r3.x;\n"
           "    r3.z = -r3.y;\n"
           "    r4.x = float(-abs(r3.x) >= c2.x);\n"
           "    r3.xy = vec2(-r4.x < 0.00000 ? r3.z : r0.x, -r4.x < 0.00000 ? r3.w : r0.y);\n"
           "    r0.xy = normalize(r3.xy).xy;\n"
           "    r0.x = dot(r0.xy, r0.zw);\n"
           "    r2.x = abs(r0.x)*r4.w;\n"
           "    r0.x = r0.x/r2.x;\n"
           "    r3.z = abs(r4.z)*r1.y;\n"
           "    r0.z = r4.z/r3.z;\n"
           "    r0.x = min(r0.x, r0.z);\n"
           "    r0.x = clamp(mix(c2.z, r0.x, hg_ProgramLocal9.x), 0.00000, 1.00000);\n"
           "    r0.y = r0.x*r0.x;\n"
           "    r0.z = hg_ProgramLocal10.z - r1.x;\n"
           "    r0.x = -r0.x*c2.w + c3.x;\n"
           "    r0.x = r0.y*r0.x;\n"
           "    r0.y = clamp(mix(c2.z, r0.z, hg_ProgramLocal9.x), 0.00000, 1.00000);\n"
           "    r0.z = -r0.y*c2.w + c3.x;\n"
           "    r0.y = r0.y*r0.y;\n"
           "    r0.y = r0.y*r0.z;\n"
           "    r0.x = r0.x*r0.y;\n"
           "    gl_FragColor = mix(hg_ProgramLocal2, hg_ProgramLocal1, r0.xxxx);\n"
           "}\n"
           "//MD5=637b6a09:19bbf311:4eb52fad:46dd2e12\n"
           "//SIG=00000000:00000000:00000000:00000000:0004:000e:0005:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void HgcSunburst::InitProgramDescriptor(HgcSunburst *this, HGProgramDescriptor *a2)
{
  HGProgramDescriptor::SetVisibleShaderWithSource( a2,  "HgcSunburst_hgc_visible",  "//Metal1.0     \n //LEN=0000000c57\n [[ visible ]] FragmentOut HgcSunburst_hgc_visible(const constant float4* hg_Params,\n float4 texCoord0)\n {\n const float4 c0 = float4(0.05747731403, -0.01348046958, -0.1212390736, 0.1956359297);\n"
    "    const float4 c1 = float4(0.9999956489, -0.3329946101, 1.570796371, 3.141592741);\n"
    "    const float4 c2 = float4(0.000000000, 6.283185482, 0.5000000000, 2.000000000);\n"
    "    const float4 c3 = float4(3.000000000, 0.000000000, 0.000000000, 0.000000000);\n"
    "    float4 r0, r1, r2, r3, r4;\n"
    "    FragmentOut output;\n"
    "\n"
    "    r0.z = dot(texCoord0, hg_Params[4]);\n"
    "    r0.x = dot(texCoord0, hg_Params[3]);\n"
    "    r1.z = abs(r0.z);\n"
    "    r0.w = abs(r0.x);\n"
    "    r0.y = fmax(r0.w, r1.z);\n"
    "    r1.x = 1.00000f / r0.y;\n"
    "    r0.y = fmin(r0.w, r1.z);\n"
    "    r1.w = r0.y*r1.x;\n"
    "    r1.x = r1.w*r1.w;\n"
    "    r0.y = r1.x*c0.y + c0.x;\n"
    "    r0.y = r0.y*r1.x + c0.z;\n"
    "    r0.y = r0.y*r1.x + c0.w;\n"
    "    r1.y = r0.y*r1.x + c1.y;\n"
    "    r0.w = r1.z - r0.w;\n"
    "    r0.y = r0.z;\n"
    "    r2.x = r1.y*r1.x + c1.x;\n"
    "    r1.x = dot(r0.xy, r0.xy);\n"
    "    r0.y = r2.x*r1.w;\n"
    "    r1.y = c1.z - r0.y;\n"
    "    r0.y = select(r0.y, r1.y, r0.w < 0.00000f);\n"
    "    r1.x = sqrt(r1.x);\n"
    "    r2.x = c1.w - r0.y;\n"
    "    r0.y = select(r0.y, r2.x, r0.z < 0.00000f);\n"
    "    r0.z = r1.x*hg_Params[12].z + hg_Params[13].z;\n"
    "    r0.x = select(r0.y, -r0.y, r0.x < 0.00000f);\n"
    "    r0.y = sin(r0.z);\n"
    "    r0.x = r0.y*hg_Params[11].x + r0.x;\n"
    "    r0.y = r0.x + c2.y;\n"
    "    r0.x = select(r0.x, r0.y, r0.x < 0.00000f);\n"
    "    r0.z = 1.00000f / hg_Params[0].x;\n"
    "    r0.y = r0.x*r0.z;\n"
    "    r0.y = floor(r0.y);\n"
    "    r0.x = r0.x*r0.z + -r0.y;\n"
    "    r0.y = r0.x*hg_Params[0].x;\n"
    "    r0.x = cos(r0.y);\n"
    "    r2.zw = hg_Params[7].zw - hg_Params[8].xy;\n"
    "    r3.x = dot(r2.zw, r2.zw);\n"
    "    r0.y = sin(r0.y);\n"
    "    r0.zw = r1.xx*r0.xy;\n"
    "    r0.xy = r0.zw - hg_Params[8].xy;\n"
    "    r0.x = dot(r0.xy, r2.zw);\n"
    "    r0.x = r0.x/r3.x;\n"
    "    r0.xy = r0.xx*r2.zw + hg_Params[8].xy;\n"
    "    r3.xy = r0.zw - r0.xy;\n"
    "    r0.x = dot(r3.xy, r3.xy);\n"
    "    r1.y = rsqrt(r0.x);\n"
    "    r2.xy = r1.yy*r3.xy;\n"
    "    r3.xy = hg_Params[5].xy - hg_Params[6].xy;\n"
    "    r0.xy = r0.zw - hg_Params[6].xy;\n"
    "    r4.x = dot(r0.xy, r3.xy);\n"
    "    r4.y = dot(r3.xy, r3.xy);\n"
    "    r0.y = -r2.z;\n"
    "    r0.x = r2.w;\n"
    "    r3.w = r4.x/r4.y;\n"
    "    r3.zw = r3.ww*r3.xy + hg_Params[6].xy;\n"
    "    r0.zw = r0.zw - r3.zw;\n"
    "    r3.z = dot(r0.zw, r0.zw);\n"
    "    r4.w = rsqrt(r3.z);\n"
    "    r0.zw = r4.ww*r0.zw;\n"
    "    r0.xy = normalize(r0.xy).xy;\n"
    "    r4.z = dot(r0.xy, r2.xy);\n"
    "    r0.y = -r3.x;\n"
    "    r0.x = r3.y;\n"
    "    r3.w = r3.x;\n"
    "    r3.z = -r3.y;\n"
    "    r4.x = float(-fabs(r3.x) >= c2.x);\n"
    "    r3.xy = select(r0.xy, r3.zw, -r4.xx < 0.00000f);\n"
    "    r0.xy = normalize(r3.xy).xy;\n"
    "    r0.x = dot(r0.xy, r0.zw);\n"
    "    r2.x = fabs(r0.x)*r4.w;\n"
    "    r0.x = r0.x/r2.x;\n"
    "    r3.z = fabs(r4.z)*r1.y;\n"
    "    r0.z = r4.z/r3.z;\n"
    "    r0.x = fmin(r0.x, r0.z);\n"
    "    r0.x = clamp(mix(c2.z, r0.x, hg_Params[9].x), 0.00000f, 1.00000f);\n"
    "    r0.y = r0.x*r0.x;\n"
    "    r0.z = hg_Params[10].z - r1.x;\n"
    "    r0.x = -r0.x*c2.w + c3.x;\n"
    "    r0.x = r0.y*r0.x;\n"
    "    r0.y = clamp(mix(c2.z, r0.z, hg_Params[9].x), 0.00000f, 1.00000f);\n"
    "    r0.z = -r0.y*c2.w + c3.x;\n"
    "    r0.y = r0.y*r0.y;\n"
    "    r0.y = r0.y*r0.z;\n"
    "    r0.x = r0.x*r0.y;\n"
    "    output.color0 = mix(hg_Params[2], hg_Params[1], r0.xxxx);\n"
    "    return output;\n"
    "}\n");
  HGProgramDescriptor::SetFragmentFunctionName(a2, "HgcSunburst");
}

void sub_25FA67360(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260345180;
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

void sub_25FA67460(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA674A0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA67498);
}

uint64_t HgcSunburst::Bind(HgcSunburst *this, HGHandler *a2)
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
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*a2 + 144))(a2, 12, *(this + 51) + 192, 1);
  (*(*a2 + 144))(a2, 13, *(this + 51) + 208, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSunburst::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 8) - *a2;
    v7.f32[0] = *a2 + 0.5;
    v7.f32[1] = v2 + 0.5;
    v6 = *(a2 + 16);
    v7.i32[2] = 0;
    v7.i32[3] = 1.0;
    v8 = 16 * *(a2 + 24);
    do
    {
      if (v5 >= 1)
      {
        v9 = 0;
        v10 = v7;
        do
        {
          v11 = *(a1 + 408);
          v12 = vmulq_f32(v10, *(v11 + 64));
          v13 = vaddq_f32(v12, vextq_s8(v12, v12, 4uLL));
          v14 = vmulq_f32(v10, *(v11 + 48));
          v15 = vaddq_f32(v14, vextq_s8(v14, v14, 4uLL));
          v16 = vextq_s8(v15, v13, 8uLL);
          v15.i64[1] = v13.i64[1];
          v17 = vaddq_f32(v15, v16);
          v18 = *(v11 + 224);
          *v19.i8 = vqtbl1_s8(v17, *v18.i8);
          v19.u64[1] = vqtbl1_s8(v17, *&vextq_s8(v18, v18, 8uLL));
          v20 = vabsq_f32(v17);
          v21 = vandq_s8(*(v11 + 240), v19);
          v22 = *(v11 + 256);
          v23 = *(v11 + 272);
          v24 = vbslq_s8(v22, vmaxq_f32(vextq_s8(v21, v21, 8uLL), vextq_s8(v20, v20, 4uLL)), v21);
          v25 = vrev64q_s32(v24);
          v26 = *(v11 + 288);
          v27 = *(v11 + 304);
          v28 = vminq_f32(vmaxq_f32(vrecpeq_f32(v25), v23), v26);
          v29 = vminq_f32(vmaxq_f32(vmulq_f32(v28, vrecpsq_f32(v25, v28)), v23), v26);
          v30 = vmulq_f32(v29, vrecpsq_f32(v25, v29));
          *v29.f32 = vext_s8(*v30.i8, *&vextq_s8(v20, v20, 8uLL), 4uLL);
          v31.i64[0] = v30.i64[0];
          v31.i64[1] = v20.i64[1];
          v29.i64[1] = vextq_s8(v20, v30, 0xCuLL).u64[0];
          v32 = vbslq_s8(v27, v31, vmulq_lane_f32(v29, *&vbslq_s8(v22, vminq_f32(vextq_s8(v24, v24, 8uLL), v29), v21), 1));
          v29.i64[0] = vmulq_laneq_f32(vextq_s8(v32, v32, 0xCuLL), v32, 3).u64[0];
          v24.i64[0] = v29.i64[0];
          v24.i64[1] = vdupq_laneq_s64(v32, 1).u64[0];
          v33 = vrev64q_s32(v24);
          v34 = *(v11 + 320);
          v35 = *(v11 + 336);
          v36 = vmulq_n_f32(vbslq_s8(v22, vaddq_f32(v35, vmulq_n_f32(vbslq_s8(v22, vaddq_f32(v23, vmulq_f32(v34, v33)), v21), v29.f32[0])), v21), v29.f32[0]);
          v38 = *(v11 + 352);
          v37 = *(v11 + 368);
          v39 = vbslq_s8(v22, vaddq_f32(v38, v36), v21);
          v29.i64[1] = v32.i64[1];
          v40 = vbslq_s8(v22, vaddq_f32(v37, vmulq_n_f32(v39, v29.f32[0])), v29);
          v41 = *(v11 + 400);
          v42 = vbslq_s8(*(v11 + 384), vsubq_f32(vrev64q_s32(v40), v39), v39);
          v43 = vbslq_s8(v22, vextq_s8(v42, v42, 4uLL), v42);
          v44 = vmulq_f32(v43, v43);
          v45 = vaddq_f32(v44, vrev64q_s32(v44));
          v46.i64[0] = v45.i64[0];
          v46.i64[1] = v40.i64[1];
          v47 = vbslq_s8(v22, vmulq_n_f32(vextq_s8(v40, v45, 8uLL), vaddq_f32(v37, vmulq_lane_f32(v40, *v40.f32, 1)).f32[0]), v42);
          v48 = *(v11 + 416);
          v49 = *(v11 + 432);
          v50 = vbslq_s8(v48, v46, vsubq_f32(v41, v47));
          v51 = vminq_f32(vrsqrteq_f32(v50), v49);
          v52 = vbslq_s8(v22, vbslq_s8(vcgtq_f32(v49, vextq_s8(v47, v47, 8uLL)), v50, v47), v42);
          v53 = vminq_f32(vmulq_f32(v51, vrsqrtsq_f32(vmulq_f32(v51, v50), v51)), v49);
          v54 = vmulq_f32(vminq_f32(vmulq_f32(v53, vrsqrtsq_f32(vmulq_f32(v53, v50), v53)), v49), v50);
          v55 = vbslq_s8(v48, v52, vbslq_s8(vcgtq_f32(v49, vextq_s8(v52, v52, 4uLL)), vrev64q_s32(vsubq_f32(v41, vrev64q_s32(v52))), v52));
          v56 = vaddq_f32(*(v11 + 208), vmulq_n_f32(*(v11 + 192), *v54.i32));
          v57 = *(v11 + 448);
          v58 = *(v11 + 464);
          v59 = veorq_s8(vandq_s8(v55, v57), vrev64q_s32(v55));
          *v50.f32 = vext_s8(*v59.i8, *&vextq_s8(v56, v56, 8uLL), 4uLL);
          v50.i64[1] = vextq_s8(v56, v59, 0xCuLL).u64[0];
          v60 = *(v11 + 480);
          v61 = *(v11 + 496);
          v62 = vaddq_f32(v58, vmulq_f32(v60, v50));
          v63 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
          v64 = vsubq_f32(v62, vsubq_f32(v63, vandq_s8(v61, vcgtq_f32(v63, v62))));
          v65 = *(v11 + 512);
          v66 = *(v11 + 528);
          v67 = vaddq_f32(v58, vabdq_f32(v64, v65));
          v51.i64[0] = v59.i64[0];
          v68 = vmulq_f32(v67, v67);
          v69 = *(v11 + 544);
          v70 = *(v11 + 560);
          v51.i64[1] = v56.i64[1];
          v72 = *(v11 + 576);
          v71 = *(v11 + 592);
          v73 = vbslq_s8(v48, v51, vmulq_f32(v67, vaddq_f32(v72, vmulq_f32(v68, vaddq_f32(v70, vmulq_f32(v68, vaddq_f32(v66, vmulq_f32(v69, v68))))))));
          v74 = vaddq_f32(vmulq_lane_f32(*(v11 + 176), *v73.f32, 1), v73);
          v75 = vbslq_s8(v48, v74, vaddq_f32(v72, vrev64q_s32(v74)));
          v76 = vextq_s8(*v11, *v11, 8uLL);
          v77 = vbslq_s8(vcgtq_f32(v72, v75), vrev64q_s32(v75), v75);
          v78 = vminq_f32(vmaxq_f32(vmulq_f32(v72, vrecpeq_f32(v76)), v70), v26);
          v79 = vmulq_f32(v78, vrecpsq_f32(v76, v78));
          *v80.f32 = vext_s8(*v77.i8, *&vextq_s8(v79, v79, 8uLL), 4uLL);
          v81.i64[0] = v77.i64[0];
          v80.i64[1] = vextq_s8(v79, v77, 0xCuLL).u64[0];
          v81.i64[1] = v79.i64[1];
          v82 = vbslq_s8(v22, vmulq_n_f32(v80, *v77.i32), v81);
          v83 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
          v84 = vbslq_s8(v22, vsubq_f32(v83, vandq_s8(v61, vcgtq_f32(v83, v82))), v81);
          v85 = vmulq_n_f32(vrev64q_s32(*v11), vsubq_f32(vmulq_laneq_f32(v84, v84, 2), vdupq_lane_s32(*v84.f32, 1)).f32[0]);
          v86 = vmulq_f32(v70, vrev64q_s32(v85));
          v87 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
          v88 = vsubq_f32(vabdq_f32(vsubq_f32(v86, vsubq_f32(v87, vandq_s8(v69, vcgtq_f32(v87, v86)))), v66), v65);
          v89 = vmulq_f32(v88, v88);
          v90 = vmulq_f32(v88, vaddq_f32(v38, vmulq_f32(v89, vaddq_f32(v58, vmulq_f32(v89, vaddq_f32(v61, vmulq_f32(v60, v89)))))));
          v91 = vbslq_s8(v48, v90, v85);
          v92 = *(v11 + 128);
          v93 = *(v11 + 144);
          v94 = *(v11 + 96);
          v95 = vsubq_f32(*(v11 + 112), vextq_s8(v92, v92, 8uLL));
          v96 = vaddq_f32(v58, vmulq_f32(v60, v91));
          v97 = vmulq_f32(v95, v95);
          v98 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
          v99 = vsubq_f32(v96, vsubq_f32(v98, vandq_s8(v61, vcgtq_f32(v98, v96))));
          v96.i64[0] = vdupq_laneq_s64(v97, 1).u64[0];
          v96.i64[1] = v97.i64[0];
          v100 = vaddq_f32(v58, vabdq_f32(v99, v65));
          v101 = vmulq_f32(v100, v100);
          v102 = vbslq_s8(v48, v90, vmulq_f32(v100, vaddq_f32(v72, vmulq_f32(v101, vaddq_f32(v70, vmulq_f32(v101, vaddq_f32(v66, vmulq_f32(v69, v101))))))));
          v103 = vmulq_n_f32(vextq_s8(v102, v102, 8uLL), *v54.i32);
          v104 = vdupq_laneq_s64(v103, 1);
          v65.i64[0] = vsubq_f32(v104, v92).u64[0];
          v65.i64[1] = v103.i64[1];
          v105 = vaddq_f32(vextq_s8(v97, v97, 8uLL), vrev64q_s32(v96));
          v106 = vextq_s8(v95, v95, 8uLL);
          v107 = vminq_f32(vmaxq_f32(vrecpeq_f32(v105), v35), v26);
          v108 = vmulq_f32(v106, v65);
          v109 = vminq_f32(vmaxq_f32(vmulq_f32(v107, vrecpsq_f32(v105, v107)), v35), v26);
          v110 = vaddq_f32(v92, vmulq_n_f32(v106, vmulq_f32(vmulq_f32(v109, vrecpsq_f32(v105, v109)), vaddq_f32(v108, vdupq_lane_s32(*v108.f32, 1))).f32[0]));
          v111 = vextq_s8(v103, v110, 8uLL);
          v110.i64[1] = v103.i64[1];
          v112 = vsubq_f32(v111, v110);
          v113 = vmulq_f32(v112, v112);
          v113.i64[0] = vaddq_f32(v113, vrev64q_s32(v113)).u64[0];
          v113.i64[1] = v104.i64[0];
          v114 = vrev64q_s32(v113);
          v115 = vminq_f32(vrsqrteq_f32(v114), v26);
          v116 = vminq_f32(vmulq_f32(v115, vrsqrtsq_f32(vmulq_f32(v115, v114), v115)), v26);
          v117 = vmulq_f32(v116, vrsqrtsq_f32(vmulq_f32(v116, v114), v116));
          v116.i64[0] = vextq_s8(v103, v103, 8uLL).u64[0];
          v54.i64[0] = vbslq_s8(v48, v54, v117).u64[0];
          v118 = vsubq_f32(*(v11 + 80), v94);
          v104.i64[0] = vsubq_f32(v104, v94).u64[0];
          v112.i64[0] = vmulq_lane_f32(v112, *v54.i8, 1).u64[0];
          v104.i64[1] = v103.i64[1];
          v119 = vmulq_f32(v118, v104);
          *v106.f32 = vext_s8(*v112.f32, *v106.f32, 4uLL);
          v104.i64[0] = v112.i64[0];
          v120 = vmulq_f32(v118, v118);
          v104.i64[1] = v95.i64[1];
          v121 = vbslq_s8(v48, vaddq_f32(v119, vrev64q_s32(v119)), vaddq_f32(v120, vrev64q_s32(v120)));
          *v120.f32 = vneg_f32(*v106.f32);
          v122 = vextq_s8(v121, v121, 8uLL);
          v120.i64[1] = v116.i64[0];
          v123 = vminq_f32(vmaxq_f32(vrecpeq_f32(v122), v72), v26);
          v124 = vminq_f32(vmaxq_f32(vmulq_f32(v123, vrecpsq_f32(v122, v123)), v72), v26);
          v125 = vbslq_s8(v48, vextq_s8(v104, v104, 0xCuLL), v120);
          v126 = vsubq_f32(v125, vaddq_f32(vdupq_lane_s64(v94.i64[0], 0), vmulq_laneq_f32(vdupq_lane_s64(v118.i64[0], 0), vmulq_n_f32(vmulq_f32(v124, vrecpsq_f32(v122, v124)), *v121.i32), 3)));
          v94.i64[0] = v125.i64[0];
          v94.i64[1] = v126.i64[1];
          v127 = vmulq_f32(v94, v94);
          v128 = vaddq_f32(v127, vextq_s8(v127, v127, 4uLL));
          v124.i64[0] = v118.i64[0];
          v124.i64[1] = vdupq_laneq_s64(v128, 1).u64[0];
          v129 = vrev64q_s32(v124);
          v130 = vminq_f32(vrsqrteq_f32(v129), v70);
          v131 = vminq_f32(vmulq_f32(v130, vrsqrtsq_f32(vmulq_f32(v130, v129), v130)), v70);
          v132 = vmulq_f32(v131, vrsqrtsq_f32(vmulq_f32(v131, v129), v131));
          v133 = vmulq_laneq_f32(v94, v132, 3);
          v130.i64[0] = v125.i64[0];
          v130.i64[1] = v133.i64[1];
          *v116.f32 = vneg_f32(vrev64_s32(*v118.f32));
          v116.i64[1] = vextq_s8(v133, v133, 8uLL).u64[0];
          v130.i64[0] = vmulq_f32(v130, v130).u64[0];
          v134 = vaddq_f32(vdupq_lane_s32(*v130.f32, 0), vdupq_lane_s32(*v130.f32, 1));
          v135 = vminq_f32(vmulq_f32(vrsqrteq_f32(v134), v71), v26);
          v125.i64[0] = vmulq_f32(vmulq_f32(v135, vrsqrtsq_f32(vmulq_f32(v135, v134), v135)), v125).u64[0];
          v118.i64[1] = vextq_s8(v128, v118, 0xCuLL).u64[0];
          v125.i64[1] = v133.i64[1];
          v136 = vbslq_s8(v48, v129, v116);
          v137 = vnegq_f32(v118);
          v138 = vbslq_s8(v27, vextq_s8(v137, v137, 0xCuLL), v118);
          v139 = vmulq_f32(v104, v125);
          v72.i64[0] = vandq_s8(v69, vcgeq_f32(vorrq_s8(v138, v57), v72)).u64[0];
          v140 = vextq_s8(v138, v138, 8uLL);
          v142 = *(v11 + 608);
          v141 = *(v11 + 624);
          v143 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v72.f32, 0), v142), v140, v136);
          v140.i64[0] = vmulq_f32(v143, v143).u64[0];
          v144 = vaddq_f32(vdupq_lane_s32(*v140.i8, 0), vdupq_lane_s32(*v140.i8, 1));
          v145 = vminq_f32(vmulq_f32(v71, vrsqrteq_f32(v144)), v26);
          v146 = vbslq_s8(v27, vaddq_f32(vdupq_lane_s64(v139.i64[0], 0), vextq_s8(v7, v139, 0xCuLL)), v132);
          v147 = vmulq_f32(vmulq_f32(v145, vrsqrtsq_f32(vmulq_f32(v145, v144), v145)), v143);
          v148 = vextq_s8(v136, v147, 8uLL);
          v72.i64[1] = v146.i64[1];
          v147.i64[1] = v136.i64[1];
          v149 = vmulq_f32(v147, v148);
          v150 = vaddq_f32(v149, vrev64q_s32(v149));
          v151 = vmulq_laneq_f32(vabsq_f32(v150), v146, 3);
          v152 = vminq_f32(vmaxq_f32(vrecpeq_f32(v151), v35), v26);
          v153 = vminq_f32(vmaxq_f32(vmulq_f32(v152, vrecpsq_f32(v151, v152)), v35), v26);
          v154 = vmulq_f32(v153, vrecpsq_f32(v151, v153));
          v155 = vmulq_lane_f32(vabsq_f32(v72), *v54.i8, 1);
          v156 = vminq_f32(vmaxq_f32(vrecpeq_f32(v155), v142), v26);
          v157 = vmulq_f32(v154, v150);
          v158 = vminq_f32(vmaxq_f32(vmulq_f32(v156, vrecpsq_f32(v155, v156)), v142), v26);
          v159 = vmulq_f32(vmulq_f32(v158, vrecpsq_f32(v155, v158)), v72);
          v160 = vextq_s8(v159, v157, 8uLL);
          v157.i64[1] = v159.i64[1];
          v161 = vminq_f32(vmaxq_f32(vaddq_f32(v66, vmulq_f32(v93, vsubq_f32(vminq_f32(v157, v160), v66))), v142), v69);
          v161.i64[0] = vbslq_s8(v48, v161, vmulq_n_f32(vrev64q_s32(v161), v161.f32[0])).u64[0];
          v161.i64[1] = vsubq_f32(*(v11 + 160), vdupq_lane_s64(*&v54, 0)).i64[1];
          v162 = vbslq_s8(v48, vsubq_f32(v34, vmulq_f32(v141, v161)), v161);
          v159.i64[0] = vmulq_lane_f32(v162, *v162.f32, 1).u64[0];
          v34.i64[0] = vextq_s8(v162, v162, 8uLL).u64[0];
          *v160.f32 = vext_s8(*v34.f32, *v159.i8, 4uLL);
          *v34.f32 = vext_s8(*v159.i8, *v34.f32, 4uLL);
          v34.i64[1] = v160.i64[0];
          v159.i64[1] = v162.i64[1];
          v163 = vbslq_s8(v48, v159, vminq_f32(vmaxq_f32(vaddq_f32(v141, vmulq_n_f32(vsubq_f32(v34, v141), v93.f32[0])), v142), v61));
          v163.i64[1] = vsubq_f32(v141, vmulq_f32(v71, vextq_s8(*&v7, *&v163, 0xCuLL))).i64[1];
          v164 = vbslq_s8(v22, vmulq_f32(v163, v163), v163);
          v165 = vbslq_s8(v48, v164, vmulq_laneq_f32(v164, v164, 2));
          *(v6 + v9) = vaddq_f32(*(v11 + 32), vmulq_n_f32(vsubq_f32(*(v11 + 16), *(v11 + 32)), vmulq_lane_f32(v165, *v165.f32, 1).f32[0]));
          v10 = vaddq_f32(v10, xmmword_2603429B0);
          v9 += 16;
        }

        while (16 * v5 != v9);
      }

      v7 = vaddq_f32(v7, xmmword_2603429C0);
      ++v4;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcSunburst::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcSunburst::HgcSunburst(HgcSunburst *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DECB8;
  operator new();
}

void HgcSunburst::~HgcSunburst(HGNode *this)
{
  *this = &unk_2871DECB8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4033510130);
  }

  HGNode::~HGNode(this);
}

{
  HgcSunburst::~HgcSunburst(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSunburst::SetParameter(HgcSunburst *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  switch(a2)
  {
    case 0:
      v7 = *(this + 51);
      if (*v7 == a3.n128_f32[0] && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
      {
        return 0;
      }

      *v7 = a3.n128_f32[0];
      v7[1] = a4;
      v7[2] = a5;
      v7[3] = a6;
      goto LABEL_72;
    case 1:
      v15 = *(this + 51);
      if (v15[4] == a3.n128_f32[0] && v15[5] == a4 && v15[6] == a5 && v15[7] == a6)
      {
        return 0;
      }

      v15[4] = a3.n128_f32[0];
      v15[5] = a4;
      v15[6] = a5;
      v15[7] = a6;
      goto LABEL_72;
    case 2:
      v12 = *(this + 51);
      if (v12[8] == a3.n128_f32[0] && v12[9] == a4 && v12[10] == a5 && v12[11] == a6)
      {
        return 0;
      }

      v12[8] = a3.n128_f32[0];
      v12[9] = a4;
      v12[10] = a5;
      v12[11] = a6;
      goto LABEL_72;
    case 3:
      v13 = *(this + 51);
      if (v13[12] == a3.n128_f32[0] && v13[13] == a4 && v13[14] == a5 && v13[15] == a6)
      {
        return 0;
      }

      v13[12] = a3.n128_f32[0];
      v13[13] = a4;
      v13[14] = a5;
      v13[15] = a6;
      goto LABEL_72;
    case 4:
      v9 = *(this + 51);
      if (v9[16] == a3.n128_f32[0] && v9[17] == a4 && v9[18] == a5 && v9[19] == a6)
      {
        return 0;
      }

      v9[16] = a3.n128_f32[0];
      v9[17] = a4;
      v9[18] = a5;
      v9[19] = a6;
      goto LABEL_72;
    case 5:
      v16 = *(this + 51);
      if (v16[20] == a3.n128_f32[0] && v16[21] == a4 && v16[22] == a5 && v16[23] == a6)
      {
        return 0;
      }

      v16[20] = a3.n128_f32[0];
      v16[21] = a4;
      v16[22] = a5;
      v16[23] = a6;
      goto LABEL_72;
    case 6:
      v18 = *(this + 51);
      if (v18[24] == a3.n128_f32[0] && v18[25] == a4 && v18[26] == a5 && v18[27] == a6)
      {
        return 0;
      }

      v18[24] = a3.n128_f32[0];
      v18[25] = a4;
      v18[26] = a5;
      v18[27] = a6;
      goto LABEL_72;
    case 7:
      v14 = *(this + 51);
      if (v14[7].n128_f32[0] == 0.0 && v14[7].n128_f32[1] == 0.0 && v14[7].n128_f32[2] == a3.n128_f32[0] && v14[7].n128_f32[3] == a4)
      {
        return 0;
      }

      v14[7].n128_u64[0] = 0;
      v14[7].n128_u32[2] = a3.n128_u32[0];
      v14[7].n128_f32[3] = a4;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v14[40] = a3;
      goto LABEL_72;
    case 8:
      v20 = *(this + 51);
      if (v20[32] == a3.n128_f32[0] && v20[33] == a4 && v20[34] == a5 && v20[35] == a6)
      {
        return 0;
      }

      v20[32] = a3.n128_f32[0];
      v20[33] = a4;
      v20[34] = a5;
      v20[35] = a6;
      goto LABEL_72;
    case 9:
      v11 = *(this + 51);
      if (v11[36] == a3.n128_f32[0] && v11[37] == a4 && v11[38] == a5 && v11[39] == a6)
      {
        return 0;
      }

      v11[36] = a3.n128_f32[0];
      v11[37] = a4;
      v11[38] = a5;
      v11[39] = a6;
      goto LABEL_72;
    case 10:
      v19 = *(this + 51);
      if (v19[10].n128_f32[0] == 0.0 && v19[10].n128_f32[1] == 0.0 && v19[10].n128_f32[2] == a3.n128_f32[0] && v19[10].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v19[10].n128_u64[0] = 0;
      v19[10].n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v19[10].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v19[41] = a3;
      goto LABEL_72;
    case 11:
      v8 = *(this + 51);
      if (v8[44] == a3.n128_f32[0] && v8[45] == a4 && v8[46] == a5 && v8[47] == a6)
      {
        return 0;
      }

      v8[44] = a3.n128_f32[0];
      v8[45] = a4;
      v8[46] = a5;
      v8[47] = a6;
      goto LABEL_72;
    case 12:
      v10 = *(this + 51);
      if (v10[12].n128_f32[0] == 0.0 && v10[12].n128_f32[1] == 0.0 && v10[12].n128_f32[2] == a3.n128_f32[0] && v10[12].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v10[12].n128_u64[0] = 0;
      v10[12].n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v10[12].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v10[42] = a3;
      goto LABEL_72;
    case 13:
      v17 = *(this + 51);
      if (v17[13].n128_f32[0] == 0.0 && v17[13].n128_f32[1] == 0.0 && v17[13].n128_f32[2] == a3.n128_f32[0] && v17[13].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v17[13].n128_u64[0] = 0;
      v17[13].n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v17[13].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v17[43] = a3;
LABEL_72:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t HgcSunburst::GetParameter(HgcSunburst *this, int a2, float *a3)
{
  switch(a2)
  {
    case 0:
      v3 = *(this + 51);
      *a3 = *v3;
      a3[1] = v3[1];
      a3[2] = v3[2];
      v4 = v3 + 3;
      goto LABEL_16;
    case 1:
      v12 = *(this + 51);
      *a3 = v12[4];
      a3[1] = v12[5];
      a3[2] = v12[6];
      v4 = v12 + 7;
      goto LABEL_16;
    case 2:
      v9 = *(this + 51);
      *a3 = v9[8];
      a3[1] = v9[9];
      a3[2] = v9[10];
      v4 = v9 + 11;
      goto LABEL_16;
    case 3:
      v10 = *(this + 51);
      *a3 = v10[12];
      a3[1] = v10[13];
      a3[2] = v10[14];
      v4 = v10 + 15;
      goto LABEL_16;
    case 4:
      v6 = *(this + 51);
      *a3 = v6[16];
      a3[1] = v6[17];
      a3[2] = v6[18];
      v4 = v6 + 19;
      goto LABEL_16;
    case 5:
      v13 = *(this + 51);
      *a3 = v13[20];
      a3[1] = v13[21];
      a3[2] = v13[22];
      v4 = v13 + 23;
      goto LABEL_16;
    case 6:
      v15 = *(this + 51);
      *a3 = v15[24];
      a3[1] = v15[25];
      a3[2] = v15[26];
      v4 = v15 + 27;
      goto LABEL_16;
    case 7:
      v11 = *(this + 51);
      *a3 = v11[160];
      a3[1] = v11[161];
      a3[2] = v11[162];
      v4 = v11 + 163;
      goto LABEL_16;
    case 8:
      v17 = *(this + 51);
      *a3 = v17[32];
      a3[1] = v17[33];
      a3[2] = v17[34];
      v4 = v17 + 35;
      goto LABEL_16;
    case 9:
      v8 = *(this + 51);
      *a3 = v8[36];
      a3[1] = v8[37];
      a3[2] = v8[38];
      v4 = v8 + 39;
      goto LABEL_16;
    case 10:
      v16 = *(this + 51);
      *a3 = v16[164];
      a3[1] = v16[165];
      a3[2] = v16[166];
      v4 = v16 + 167;
      goto LABEL_16;
    case 11:
      v5 = *(this + 51);
      *a3 = v5[44];
      a3[1] = v5[45];
      a3[2] = v5[46];
      v4 = v5 + 47;
      goto LABEL_16;
    case 12:
      v7 = *(this + 51);
      *a3 = v7[168];
      a3[1] = v7[169];
      a3[2] = v7[170];
      v4 = v7 + 171;
      goto LABEL_16;
    case 13:
      v14 = *(this + 51);
      *a3 = v14[172];
      a3[1] = v14[173];
      a3[2] = v14[174];
      v4 = v14 + 175;
LABEL_16:
      result = 0;
      a3[3] = *v4;
      break;
    default:
      result = 0xFFFFFFFFLL;
      break;
  }

  return result;
}

double HgcSunburst::State::State(HgcSunburst::State *this)
{
  result = 0.0;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 14) = xmmword_260345190;
  *(this + 15) = xmmword_260345010;
  *(this + 16) = xmmword_260344670;
  *(this + 17) = xmmword_2603451A0;
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(this + 18) = vnegq_f32(v2);
  *(this + 19) = xmmword_260344660;
  *(this + 20) = xmmword_2603451B0;
  *(this + 21) = xmmword_2603451C0;
  *(this + 22) = xmmword_2603451D0;
  *(this + 23) = xmmword_2603451E0;
  *(this + 24) = xmmword_260344600;
  *(this + 25) = xmmword_2603451F0;
  *(this + 26) = xmmword_2603444B0;
  *(this + 27) = xmmword_260345200;
  *(this + 28) = xmmword_260344700;
  *(this + 29) = xmmword_260345210;
  *(this + 30) = xmmword_260345220;
  *(this + 31) = xmmword_260345230;
  *(this + 32) = xmmword_260345240;
  *(this + 33) = xmmword_260345250;
  *(this + 34) = xmmword_260345260;
  *(this + 35) = xmmword_260345270;
  *(this + 36) = xmmword_260345280;
  *(this + 37) = xmmword_260345290;
  *(this + 38) = xmmword_2603452A0;
  *(this + 39) = xmmword_2603452B0;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  return result;
}

const char *HgcBadTV::GetProgram(HgcBadTV *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000a0a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.5000000000, -1.000000000, 0.000000000);\n    const half4 c1 = half4(0.000000000, 3.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1, s2, s3;\n    FragmentOut output;\n\n    s0.x = dot(frag._texCoord0, hg_Params[3]);\n    s1.y = s0.x + hg_Params[6].y;\n    s0.y = float(c0.y)*hg_Params[9].x + s0.x;\n    s0.z = s0.y/hg_Params[9].x;\n    s0.w = floor(s0.z);\n    s0.w = -s0.w*hg_Params[9].x + s0.y;\n    s0.z = float(c0.y);\n    s0.xy = s0.zw + hg_Params[13].xy;\n    s0.xy = s0.xy*hg_Params[13].zw;\n    s1.x = (float) hg_Texture0.sample(hg_Sampler0, s0.xy).x;\n    s1.z = dot(frag._texCoord0, hg_Params[4]);\n    s1.w = dot(frag._texCoord0, hg_Params[5]);\n    r0.z = half(s1.x)*c0.x + c0.z;\n    r0.y = dot(half4(frag._texCoord0), half4(hg_Params[2]));\n    s1.x = float(r0.z)*hg_Params[8].x + float(r0.y);\n    r0.yzw = c0.www;\n    r0.x = half(hg_Params[11].x);\n    s0 = s1 - float4(r0);\n    s2 = s1 + float4(r0);\n    s3.x = dot(s0, hg_Params[0]);\n    s3.y = dot(s0, hg_Params[1]);\n    s0.y = dot(s2, hg_Params[1]);\n    s0.x = dot(s2, hg_Params[0]);\n    s2.x = dot(s1, hg_Params[1]);\n    s2.z = dot(s1, hg_Params[0]);\n    s0.xy = s0.xy + hg_Params[14].xy;\n    s0.xy = s0.xy*hg_Params[14].zw;\n    r0.x = (half) hg_Texture1.sample(hg_Sampler1, s0.xy).x;\n    s2.w = s2.x;\n    s1.xy = s2.zw + hg_Params[14].xy;\n    s1.xy = s1.xy*hg_Params[14].zw;\n    r0.yw = (half2) hg_Texture1.sample(hg_Sampler1, s1.xy).yw;\n    s2.y = s2.x*hg_Params[10].y;\n    s3.xy = s3.xy + hg_Params[14].xy;\n    s3.xy = s3.xy*hg_Params[14].zw;\n    r0.z = (half) hg_Texture1.sample(hg_Sampler1, s3.xy).z;\n    s2.x = fract(s2.y);\n    s2.x = clamp(s2.x*hg_Params[10].z + -hg_Params[10].x, 0.00000f, 1.00000f);\n    s2.y = -s2.x - s2.x;\n    r1.w = dot(r0, half4(hg_Params[12]));\n    s2.x = s2.x*s2.x;\n    s2.y = s2.y + float(c1.y);\n    s2.x = s2.x*s2.y;\n    s2.x = mix(hg_Params[10].w, -float(c0.z), s2.x);\n    r1.xyz = mix(r1.www, r0.xyz, half3(hg_Params[7].xyz));\n    output.color0.xyz = float3(r1.xyz)*s2.xxx;\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=2abb2c53:70ff5636:9b411af0:96cc0ba5\n//SIG=00400000:00000000:00000000:00000003:0002:000f:0006:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000096f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.5000000000, -1.000000000, 0.000000000);\n    const float4 c1 = float4(0.000000000, 3.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.x = dot(frag._texCoord0, hg_Params[3]);\n    r1.y = r0.x + hg_Params[6].y;\n    r0.y = c0.y*hg_Params[9].x + r0.x;\n    r0.z = r0.y/hg_Params[9].x;\n    r0.w = floor(r0.z);\n    r0.w = -r0.w*hg_Params[9].x + r0.y;\n    r0.z = c0.y;\n    r0.xy = r0.zw + hg_Params[13].xy;\n    r0.xy = r0.xy*hg_Params[13].zw;\n    r1.x = hg_Texture0.sample(hg_Sampler0, r0.xy).x;\n    r1.z = dot(frag._texCoord0, hg_Params[4]);\n    r1.w = dot(frag._texCoord0, hg_Params[5]);\n    r0.z = r1.x*c0.x + c0.z;\n    r0.y = dot(frag._texCoord0, hg_Params[2]);\n    r1.x = r0.z*hg_Params[8].x + r0.y;\n    r0.yzw = c0.www;\n    r0.x = hg_Params[11].x;\n    r2 = r1 - r0;\n    r0 = r1 + r0;\n    r3.x = dot(r2, hg_Params[0]);\n    r3.y = dot(r2, hg_Params[1]);\n    r2.y = dot(r0, hg_Params[1]);\n    r2.x = dot(r0, hg_Params[0]);\n    r0.x = dot(r1, hg_Params[1]);\n    r0.z = dot(r1, hg_Params[0]);\n    r2.xy = r2.xy + hg_Params[14].xy;\n    r2.xy = r2.xy*hg_Params[14].zw;\n    r2.x = hg_Texture1.sample(hg_Sampler1, r2.xy).x;\n    r0.w = r0.x;\n    r1.xy = r0.zw + hg_Params[14].xy;\n    r1.xy = r1.xy*hg_Params[14].zw;\n    r2.yw = hg_Texture1.sample(hg_Sampler1, r1.xy).yw;\n    r0.y = r0.x*hg_Params[10].y;\n    r3.xy = r3.xy + hg_Params[14].xy;\n    r3.xy = r3.xy*hg_Params[14].zw;\n    r2.z = hg_Texture1.sample(hg_Sampler1, r3.xy).z;\n    r0.x = fract(r0.y);\n    r0.x = clamp(r0.x*hg_Params[10].z + -hg_Params[10].x, 0.00000f, 1.00000f);\n    r0.y = -r0.x - r0.x;\n    r1.w = dot(r2, hg_Params[12]);\n    r0.x = r0.x*r0.x;\n    r0.y = r0.y + c1.y;\n    r0.x = r0.x*r0.y;\n    r0.x = mix(hg_Params[10].w, -c0.z, r0.x);\n    r1.xyz = mix(r1.www, r2.xyz, hg_Params[7].xyz);\n    output.color0.xyz = r1.xyz*r0.xxx;\n    output.color0.w = r2.w;\n    return output;\n}\n//MD5=11b19c4d:d942f3cf:da282a43:c3f6e35e\n//SIG=00000000:00000000:00000000:00000000:0002:000f:0004:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000b5a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nuniform highp vec4 hg_ProgramLocal10;\nuniform highp vec4 hg_ProgramLocal11;\nuniform highp vec4 hg_ProgramLocal12;\nuniform highp vec4 hg_ProgramLocal13;\nuniform highp vec4 hg_ProgramLocal14;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.5000000000, -1.000000000, 0.000000000);\n    const highp vec4 c1 = vec4(0.000000000, 3.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0.x = dot(hg_TexCoord0, hg_ProgramLocal3);\n    r1.y = r0.x + hg_ProgramLocal6.y;\n    r0.y = c0.y*hg_ProgramLocal9.x + r0.x;\n    r0.z = r0.y/hg_ProgramLocal9.x;\n    r0.w = floor(r0.z);\n    r0.w = -r0.w*hg_ProgramLocal9.x + r0.y;\n    r0.z = c0.y;\n    r0.xy = r0.zw + hg_ProgramLocal13.xy;\n    r0.xy = r0.xy*hg_ProgramLocal13.zw;\n    r1.x = texture2D(hg_Texture0, r0.xy).x;\n    r1.z = dot(hg_TexCoord0, hg_ProgramLocal4);\n    r1.w = dot(hg_TexCoord0, hg_ProgramLocal5);\n    r0.z = r1.x*c0.x + c0.z;\n    r0.y = dot(hg_TexCoord0, hg_ProgramLocal2);\n    r1.x = r0.z*hg_ProgramLocal8.x + r0.y;\n    r0.yzw = c0.www;\n    r0.x = hg_ProgramLocal11.x;\n    r2 = r1 - r0;\n    r0 = r1 + r0;\n    r3.x = dot(r2, hg_ProgramLocal0);\n    r3.y = dot(r2, hg_ProgramLocal1);\n    r2.y = dot(r0, hg_ProgramLocal1);\n    r2.x = dot(r0, hg_ProgramLocal0);\n    r0.x = dot(r1, hg_ProgramLocal1);\n    r0.z = dot(r1, hg_ProgramLocal0);\n    r2.xy = r2.xy + hg_ProgramLocal14.xy;\n    r2.xy = r2.xy*hg_ProgramLocal14.zw;\n    r2.x = texture2D(hg_Texture1, r2.xy).x;\n    r0.w = r0.x;\n    r1.xy = r0.zw + hg_ProgramLocal14.xy;\n    r1.xy = r1.xy*hg_ProgramLocal14.zw;\n    r2.yw = texture2D(hg_Texture1, r1.xy).yw;\n    r0.y = r0.x*hg_ProgramLocal10.y;\n    r3.xy = r3.xy + hg_ProgramLocal14.xy;\n    r3.xy = r3.xy*hg_ProgramLocal14.zw;\n    r2.z = texture2D(hg_Texture1, r3.xy).z;\n    r0.x = fract(r0.y);\n    r0.x = clamp(r0.x*hg_ProgramLocal10.z + -hg_ProgramLocal10.x, 0.00000, 1.00000);\n    r0.y = -r0.x - r0.x;\n    r1.w = dot(r2, hg_ProgramLocal12);\n    r0.x = r0.x*r0.x;\n    r0.y = r0.y + c1.y;\n    r0.x = r0.x*r0.y;\n    r0.x = mix(hg_ProgramLocal10.w, -c0.z, r0.x);\n    r1.xyz = mix(r1.www, r2.xyz, hg_ProgramLocal7.xyz);\n    gl_FragColor.xyz = r1.xyz*r0.xxx;\n    gl_FragColor.w = r2.w;\n}\n//MD5=0b2bb717:11fa548a:6dd858f6:4ce3e43b\n//SIG=00000000:00000000:00000000:00000000:0002:000f:0004:0000:0000:0000:0000:0000:0001:02:0:1:0\n";
  }
}

void sub_25FA68A14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_2603448D0;
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FA68C14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA68C74()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA68C6CLL);
}

uint64_t HgcBadTV::BindTexture(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 1)
  {
    v10 = (*(**(a2 + 144) + 128))(*(a2 + 144), 46);
    v7.n128_f32[0] = *(a2 + 240);
    v8.n128_f32[0] = *(a2 + 244);
    if (v10)
    {
      v9 = *(*a2 + 136);
      v5.n128_u32[0] = 1.0;
      v6.n128_u32[0] = 1.0;
    }

    else
    {
      v5.n128_f32[0] = 1.0 / (*(a2 + 228) - *(a2 + 220));
      v9 = *(*a2 + 136);
      v6.n128_f32[0] = 1.0 / (*(a2 + 232) - *(a2 + 224));
    }

    v12 = a2;
    v13 = 14;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    v4 = (*(**(a2 + 144) + 128))(*(a2 + 144), 46);
    v7.n128_f32[0] = *(a2 + 240);
    v8.n128_f32[0] = *(a2 + 244);
    if (v4)
    {
      v9 = *(*a2 + 136);
      v5.n128_u32[0] = 1.0;
      v6.n128_u32[0] = 1.0;
    }

    else
    {
      v5.n128_f32[0] = 1.0 / (*(a2 + 228) - *(a2 + 220));
      v9 = *(*a2 + 136);
      v6.n128_f32[0] = 1.0 / (*(a2 + 232) - *(a2 + 224));
    }

    v12 = a2;
    v13 = 13;
  }

  v9(v12, v13, v7, v8, v5, v6);
  return 0;
}

uint64_t HgcBadTV::Bind(HgcBadTV *this, HGHandler *a2)
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
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*a2 + 144))(a2, 12, *(this + 51) + 192, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBadTV::RenderTile(HgcBadTV *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = 0;
    *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
    v9.i64[1] = 0x3F80000000000000;
    v10 = *(a2 + 2) - v6.i32[0];
    v11 = *(a2 + 2);
    v12 = 16 * *(a2 + 6);
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = v9;
    do
    {
      if (v10 < 2)
      {
        v15 = 0;
        v17 = v14;
      }

      else
      {
        v15 = 0;
        v16 = v10;
        v17 = v14;
        do
        {
          v18 = vaddq_f32(v17, xmmword_2603429B0);
          v19 = *(this + 51);
          v20 = *(v19 + 48);
          v21 = vmulq_f32(v17, v20);
          v22 = vmulq_f32(v18, v20);
          v23 = vaddq_f32(v21, vextq_s8(v21, v21, 4uLL));
          v24 = vaddq_f32(v22, vextq_s8(v22, v22, 4uLL));
          v25 = vaddq_f32(v24, vextq_s8(v24, v24, 8uLL));
          v26 = vrev64q_s32(vaddq_f32(v23, vextq_s8(v23, v23, 8uLL)));
          v27 = vrev64q_s32(v25);
          v28 = *(v19 + 144);
          v29 = *(v19 + 208);
          v30 = *(v19 + 224);
          v31 = vmulq_n_f32(v29, *v28.i32);
          v32 = vaddq_f32(v31, v26);
          v33 = vaddq_f32(v31, v27);
          v34 = vextq_s8(v28, v28, 8uLL);
          v35 = vminq_f32(vmaxq_f32(vrecpeq_f32(v34), v29), v30);
          v36 = vminq_f32(vmaxq_f32(vmulq_f32(v35, vrecpsq_f32(v34, v35)), v29), v30);
          v37 = vmulq_f32(v36, vrecpsq_f32(v34, v36));
          v35.i64[0] = v32.i64[0];
          v35.i64[1] = vdupq_laneq_s64(vmulq_lane_f32(v37, *v32.f32, 1), 1).u64[0];
          v38 = vrev64q_s32(v35);
          v35.i64[0] = v33.i64[0];
          v35.i64[1] = vdupq_laneq_s64(vmulq_lane_f32(v37, *v33.f32, 1), 1).u64[0];
          v39 = vrev64q_s32(v35);
          v40 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
          v41 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
          v42 = vbslq_s8(vcgtq_f32(v40, v38), v29, 0);
          v43 = vbslq_s8(vcgtq_f32(v41, v39), v29, 0);
          v44 = vsubq_f32(v40, v42);
          v45 = vsubq_f32(v41, v43);
          v46 = vextq_s8(v44, v32, 8uLL);
          v32.i32[3] = v44.i32[3];
          v47 = vextq_s8(v45, v33, 8uLL);
          v33.i32[3] = v45.i32[3];
          v48 = vsubq_f32(v46, vmulq_n_f32(v32, *v28.i32));
          v49 = vsubq_f32(v47, vmulq_n_f32(v33, *v28.i32));
          v48.i32[2] = 0.5;
          v49.i32[2] = 0.5;
          v50 = vextq_s8(v49, v49, 8uLL);
          v51 = *(a2 + 22);
          v52 = vsubq_f32(vextq_s8(v48, v48, 8uLL), v9);
          v53 = *(a2 + 10);
          if (v5)
          {
            v54 = vaddq_s32(vcvtq_s32_f32(v52), vcltzq_f32(v52));
            v55 = vsubq_f32(v52, vcvtq_f32_s32(v54)).u64[0];
            v56 = vsubq_f32(v50, v9);
            v57 = vaddq_s32(vcvtq_s32_f32(v56), vcltzq_f32(v56));
            v58 = vsubq_f32(v56, vcvtq_f32_s32(v57)).u64[0];
            *v54.i8 = vmla_s32(vzip1_s32(*v54.i8, *v57.i8), vzip2_s32(*v54.i8, *v57.i8), vdup_n_s32(v51));
            v59 = (v53 + 16 * v54.i32[0]);
            v60 = vaddq_f32(*v59, vmulq_n_f32(vsubq_f32(v59[1], *v59), v55.f32[0]));
            v61 = vaddq_f32(v60, vmulq_lane_f32(vsubq_f32(vaddq_f32(v59[v51], vmulq_n_f32(vsubq_f32(v59[v51 + 1], v59[v51]), v55.f32[0])), v60), v55, 1));
            v62 = (v53 + 16 * v54.i32[1]);
            v63 = vaddq_f32(*v62, vmulq_n_f32(vsubq_f32(v62[1], *v62), v58.f32[0]));
            v64 = vaddq_f32(v63, vmulq_lane_f32(vsubq_f32(vaddq_f32(v62[v51], vmulq_n_f32(vsubq_f32(v62[v51 + 1], v62[v51]), v58.f32[0])), v63), v58, 1));
          }

          else
          {
            v65 = vaddq_f32(v52, v13);
            v66 = vcvtq_s32_f32(v65);
            v67 = vaddq_f32(vsubq_f32(v50, v9), v13);
            v68 = vcvtq_s32_f32(v67);
            *v65.f32 = vadd_s32(*v66.i8, *&vcgtq_f32(vcvtq_f32_s32(v66), v65));
            *v67.f32 = vadd_s32(*v68.i8, *&vcgtq_f32(vcvtq_f32_s32(v68), v67));
            *v67.f32 = vmla_s32(vzip1_s32(*v65.f32, *v67.f32), vzip2_s32(*v65.f32, *v67.f32), vdup_n_s32(v51));
            v69 = v67.i32[1];
            v61 = *(v53 + 16 * v67.i32[0]);
            v64 = *(v53 + 16 * v69);
          }

          v70 = *(v19 + 96);
          v71 = vaddq_f32(v70, v26);
          v72 = vaddq_f32(v70, v27);
          v74 = *(v19 + 240);
          v73 = *(v19 + 256);
          v75.i64[0] = vbslq_s8(v74, v61, v71).u64[0];
          v76.i64[0] = vbslq_s8(v74, v64, v72).u64[0];
          v77 = *(v19 + 64);
          v78 = *(v19 + 80);
          v79 = vmulq_f32(v17, v77);
          v80 = vmulq_f32(v18, v77);
          v81 = vaddq_f32(v79, vextq_s8(v79, v79, 4uLL));
          v82 = vaddq_f32(v80, vextq_s8(v80, v80, 4uLL));
          v83 = vmulq_f32(v17, v78);
          v84 = vmulq_f32(v18, v78);
          v85 = vaddq_f32(v83, vextq_s8(v83, v83, 4uLL));
          v86 = vaddq_f32(v84, vextq_s8(v84, v84, 4uLL));
          v75.i64[1] = vaddq_f32(v81, vdupq_lane_s64(*&v81, 0)).i64[1];
          v76.i64[1] = vaddq_f32(v82, vdupq_lane_s64(*&v82, 0)).i64[1];
          v87 = vbslq_s8(v73, vaddq_f32(v85, vextq_s8(v85, v85, 8uLL)), v75);
          v88 = vbslq_s8(v73, vaddq_f32(v86, vextq_s8(v86, v86, 8uLL)), v76);
          v90 = *(v19 + 272);
          v89 = *(v19 + 288);
          v91 = vaddq_f32(v90, vmulq_f32(v89, vdupq_lane_s64(v87.i64[0], 0)));
          v92 = vaddq_f32(v90, vmulq_f32(v89, vdupq_lane_s64(v88.i64[0], 0)));
          v93 = *(v19 + 32);
          v94 = vmulq_f32(v17, v93);
          v95 = vmulq_f32(v18, v93);
          v96 = vaddq_f32(v94, vextq_s8(v94, v94, 4uLL));
          v97 = vaddq_f32(v95, vextq_s8(v95, v95, 4uLL));
          v98 = *(v19 + 128);
          v99 = vmulq_laneq_f32(v98, v91, 2);
          v91.i64[0] = vaddq_f32(v96, vdupq_laneq_s64(v96, 1)).u64[0];
          v96.i64[0] = vaddq_f32(v97, vdupq_laneq_s64(v97, 1)).u64[0];
          v100 = vmulq_laneq_f32(v98, v92, 2);
          v92.i64[0] = v96.i64[0];
          v101 = vaddq_f32(vrev64q_s32(v92), v100);
          v102 = vbslq_s8(v74, vaddq_f32(vrev64q_s32(v91), v99), v87);
          v103 = vbslq_s8(v74, v101, v88);
          v104 = vandq_s8(*(v19 + 176), v74);
          v105 = vaddq_f32(v104, v102);
          v106 = vaddq_f32(v104, v103);
          v108 = *v19;
          v107 = *(v19 + 16);
          v109 = vmulq_f32(v107, v105);
          v110 = vmulq_f32(v107, v106);
          v111 = vaddq_f32(v109, vextq_s8(v109, v109, 4uLL));
          v112 = vaddq_f32(v110, vextq_s8(v110, v110, 4uLL));
          v113 = vmulq_f32(*v19, v105);
          v114 = vmulq_f32(*v19, v106);
          v115 = vaddq_f32(v113, vextq_s8(v113, v113, 4uLL));
          v116 = vaddq_f32(v114, vextq_s8(v114, v114, 4uLL));
          v117 = vbslq_s8(v74, vaddq_f32(v115, vextq_s8(v115, v115, 8uLL)), vaddq_f32(v111, vextq_s8(v111, v111, 8uLL)));
          v118 = vbslq_s8(v74, vaddq_f32(v116, vextq_s8(v116, v116, 8uLL)), vaddq_f32(v112, vextq_s8(v112, v112, 8uLL)));
          v119 = *(a2 + 26);
          v120 = vsubq_f32(v117, v9);
          v121 = *(a2 + 12);
          if (v5)
          {
            v122 = vaddq_s32(vcvtq_s32_f32(v120), vcltzq_f32(v120));
            v123 = vsubq_f32(v120, vcvtq_f32_s32(v122)).u64[0];
            v124 = vsubq_f32(v118, v9);
            v125 = vaddq_s32(vcvtq_s32_f32(v124), vcltzq_f32(v124));
            v124.i64[0] = vsubq_f32(v124, vcvtq_f32_s32(v125)).u64[0];
            *v122.i8 = vmla_s32(vzip1_s32(*v122.i8, *v125.i8), vzip2_s32(*v122.i8, *v125.i8), vdup_n_s32(v119));
            v126 = v122.i32[1];
            v127 = (v121 + 16 * v122.i32[0]);
            v128 = vaddq_f32(*v127, vmulq_n_f32(vsubq_f32(v127[1], *v127), v123.f32[0]));
            v129 = vaddq_f32(v128, vmulq_lane_f32(vsubq_f32(vaddq_f32(v127[v119], vmulq_n_f32(vsubq_f32(v127[v119 + 1], v127[v119]), v123.f32[0])), v128), v123, 1));
            v130 = (v121 + 16 * v126);
            v131 = vaddq_f32(*v130, vmulq_n_f32(vsubq_f32(v130[1], *v130), v124.f32[0]));
            v132 = vaddq_f32(v131, vmulq_lane_f32(vsubq_f32(vaddq_f32(v130[v119], vmulq_n_f32(vsubq_f32(v130[v119 + 1], v130[v119]), v124.f32[0])), v131), *v124.f32, 1));
          }

          else
          {
            v133 = vaddq_f32(v120, v13);
            v134 = vcvtq_s32_f32(v133);
            v135 = vaddq_f32(vsubq_f32(v118, v9), v13);
            v136 = vcvtq_s32_f32(v135);
            *v133.f32 = vadd_s32(*v134.i8, *&vcgtq_f32(vcvtq_f32_s32(v134), v133));
            *v135.f32 = vadd_s32(*v136.i8, *&vcgtq_f32(vcvtq_f32_s32(v136), v135));
            *v135.f32 = vmla_s32(vzip1_s32(*v133.f32, *v135.f32), vzip2_s32(*v133.f32, *v135.f32), vdup_n_s32(v119));
            v129 = *(v121 + 16 * v135.i32[0]);
            v132 = *(v121 + 16 * v135.i32[1]);
          }

          v137 = vmvnq_s8(v73);
          v138 = vmulq_f32(v107, v102);
          v139 = vmulq_f32(v107, v103);
          v140 = vaddq_f32(v138, vextq_s8(v138, v138, 4uLL));
          v141 = vaddq_f32(v139, vextq_s8(v139, v139, 4uLL));
          v142 = vmulq_f32(v108, v102);
          v143 = vmulq_f32(v108, v103);
          v144 = vaddq_f32(v142, vextq_s8(v142, v142, 4uLL));
          v145 = vaddq_f32(v143, vextq_s8(v143, v143, 4uLL));
          v146 = vextq_s8(v140, v144, 8uLL);
          v140.i64[1] = v144.i64[1];
          v147 = vaddq_f32(v140, v146);
          v148 = vextq_s8(v141, v145, 8uLL);
          v141.i64[1] = v145.i64[1];
          v149 = vaddq_f32(v141, v148);
          v150 = vorrq_s8(vandq_s8(vextq_s8(v147, v147, 4uLL), v73), vandq_s8(v147, v137));
          v151 = vorrq_s8(vandq_s8(vextq_s8(v149, v149, 4uLL), v73), vandq_s8(v149, v137));
          v152 = vextq_s8(v151, v151, 8uLL);
          v153 = vsubq_f32(vextq_s8(v150, v150, 8uLL), v9);
          if (v5)
          {
            v154 = vaddq_s32(vcvtq_s32_f32(v153), vcltzq_f32(v153));
            v155 = vsubq_f32(v153, vcvtq_f32_s32(v154)).u64[0];
            v156 = vsubq_f32(v152, v9);
            v157 = vaddq_s32(vcvtq_s32_f32(v156), vcltzq_f32(v156));
            v158 = vsubq_f32(v156, vcvtq_f32_s32(v157)).u64[0];
            *v154.i8 = vmla_s32(vzip1_s32(*v154.i8, *v157.i8), vzip2_s32(*v154.i8, *v157.i8), vdup_n_s32(v119));
            v159 = (v121 + 16 * v154.i32[0]);
            v160 = vaddq_f32(*v159, vmulq_n_f32(vsubq_f32(v159[1], *v159), v155.f32[0]));
            v161 = vaddq_f32(v160, vmulq_lane_f32(vsubq_f32(vaddq_f32(v159[v119], vmulq_n_f32(vsubq_f32(v159[v119 + 1], v159[v119]), v155.f32[0])), v160), v155, 1));
            v162 = (v121 + 16 * v154.i32[1]);
            v163 = vaddq_f32(*v162, vmulq_n_f32(vsubq_f32(v162[1], *v162), v158.f32[0]));
            v164 = vaddq_f32(v163, vmulq_lane_f32(vsubq_f32(vaddq_f32(v162[v119], vmulq_n_f32(vsubq_f32(v162[v119 + 1], v162[v119]), v158.f32[0])), v163), v158, 1));
          }

          else
          {
            v165 = vaddq_f32(v153, v13);
            v166 = vcvtq_s32_f32(v165);
            v167 = vaddq_f32(vsubq_f32(v152, v9), v13);
            v168 = vcvtq_s32_f32(v167);
            *v165.f32 = vadd_s32(*v166.i8, *&vcgtq_f32(vcvtq_f32_s32(v166), v165));
            *v167.f32 = vadd_s32(*v168.i8, *&vcgtq_f32(vcvtq_f32_s32(v168), v167));
            *v167.f32 = vmla_s32(vzip1_s32(*v165.f32, *v167.f32), vzip2_s32(*v165.f32, *v167.f32), vdup_n_s32(v119));
            v169 = v167.i32[1];
            v161 = *(v121 + 16 * v167.i32[0]);
            v164 = *(v121 + 16 * v169);
          }

          v170 = vsubq_f32(v102, v104);
          v171 = vsubq_f32(v103, v104);
          v172 = vmulq_f32(v108, v170);
          v173 = vmulq_f32(v108, v171);
          v174 = vaddq_f32(v172, vextq_s8(v172, v172, 4uLL));
          v175 = vaddq_f32(v173, vextq_s8(v173, v173, 4uLL));
          v176 = vmulq_f32(v107, v170);
          v177 = vmulq_f32(v107, v171);
          v178 = vaddq_f32(v176, vextq_s8(v176, v176, 4uLL));
          v179 = vaddq_f32(v177, vextq_s8(v177, v177, 4uLL));
          v180 = vbslq_s8(v74, vaddq_f32(v175, vextq_s8(v175, v175, 8uLL)), vaddq_f32(v179, vextq_s8(v179, v179, 8uLL)));
          v181 = vsubq_f32(vbslq_s8(v74, vaddq_f32(v174, vextq_s8(v174, v174, 8uLL)), vaddq_f32(v178, vextq_s8(v178, v178, 8uLL))), v9);
          if (v5)
          {
            v182 = vaddq_s32(vcvtq_s32_f32(v181), vcltzq_f32(v181));
            v183 = vsubq_f32(v181, vcvtq_f32_s32(v182)).u64[0];
            v184 = vsubq_f32(v180, v9);
            v185 = vaddq_s32(vcvtq_s32_f32(v184), vcltzq_f32(v184));
            v186 = vsubq_f32(v184, vcvtq_f32_s32(v185)).u64[0];
            *v182.i8 = vmla_s32(vzip1_s32(*v182.i8, *v185.i8), vzip2_s32(*v182.i8, *v185.i8), vdup_n_s32(v119));
            v187 = (v121 + 16 * v182.i32[0]);
            v188 = vaddq_f32(*v187, vmulq_n_f32(vsubq_f32(v187[1], *v187), v183.f32[0]));
            v189 = vaddq_f32(v188, vmulq_lane_f32(vsubq_f32(vaddq_f32(v187[v119], vmulq_n_f32(vsubq_f32(v187[v119 + 1], v187[v119]), v183.f32[0])), v188), v183, 1));
            v190 = (v121 + 16 * v182.i32[1]);
            v191 = vaddq_f32(*v190, vmulq_n_f32(vsubq_f32(v190[1], *v190), v186.f32[0]));
            v192 = vaddq_f32(v191, vmulq_lane_f32(vsubq_f32(vaddq_f32(v190[v119], vmulq_n_f32(vsubq_f32(v190[v119 + 1], v190[v119]), v186.f32[0])), v191), v186, 1));
          }

          else
          {
            v193 = vaddq_f32(v181, v13);
            v194 = vcvtq_s32_f32(v193);
            v195 = vaddq_f32(vsubq_f32(v180, v9), v13);
            v196 = vcvtq_s32_f32(v195);
            *v193.f32 = vadd_s32(*v194.i8, *&vcgtq_f32(vcvtq_f32_s32(v194), v193));
            *v195.f32 = vadd_s32(*v196.i8, *&vcgtq_f32(vcvtq_f32_s32(v196), v195));
            *v195.f32 = vmla_s32(vzip1_s32(*v193.f32, *v195.f32), vzip2_s32(*v193.f32, *v195.f32), vdup_n_s32(v119));
            v197 = v195.i32[1];
            v189 = *(v121 + 16 * v195.i32[0]);
            v192 = *(v121 + 16 * v197);
          }

          v198 = vmvnq_s8(v74);
          v199 = vorrq_s8(vandq_s8(v164, v198), vandq_s8(v74, v132));
          v200 = *(v19 + 160);
          v201 = vbslq_s8(*(v19 + 304), v189, vorrq_s8(vandq_s8(v161, v198), vandq_s8(v74, v129)));
          v202 = vbslq_s8(*(v19 + 304), v192, v199);
          v203 = vrev64q_s32(vmulq_n_f32(v200, *v150.i32));
          v204 = vrev64q_s32(vmulq_n_f32(v200, *v151.i32));
          v205 = vcvtq_f32_s32(vcvtq_s32_f32(v203));
          v206 = vcvtq_f32_s32(vcvtq_s32_f32(v204));
          v207 = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_laneq_f32(vsubq_f32(v203, vsubq_f32(v205, vandq_s8(v89, vcgtq_f32(v205, v203)))), v200, 2), v200), v90), v89);
          v208 = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_laneq_f32(vsubq_f32(v204, vsubq_f32(v206, vandq_s8(v89, vcgtq_f32(v206, v204)))), v200, 2), v200), v90), v89);
          v209 = vandq_s8(vrev64q_s32(vsubq_f32(vnegq_f32(v207), v207)), v198);
          v210 = vorrq_s8(v209, vandq_s8(v74, v207));
          v211 = vandq_s8(vrev64q_s32(vsubq_f32(vnegq_f32(v208), v208)), v198);
          v212 = vorrq_s8(v211, vandq_s8(v74, v208));
          v213 = *(v19 + 192);
          v214 = vmulq_f32(v213, v201);
          v215 = vmulq_f32(v213, v202);
          v216 = vaddq_f32(v214, vextq_s8(v214, v214, 4uLL));
          v217 = vaddq_f32(v215, vextq_s8(v215, v215, 4uLL));
          v218 = vandq_s8(v74, vmulq_f32(v210, v210));
          v219 = vandq_s8(v74, vmulq_f32(v212, v212));
          v220 = vorrq_s8(vandq_s8(vaddq_f32(v90, vorrq_s8(v218, v209)), v198), v218);
          v221 = vorrq_s8(vandq_s8(vaddq_f32(v90, vorrq_s8(v219, v211)), v198), v219);
          v222 = vsubq_f32(v89, v200);
          v223 = vextq_s8(v222, v222, 0xCuLL);
          v224 = vextq_s8(v200, v200, 0xCuLL);
          LODWORD(v225) = vaddq_f32(v224, vmulq_f32(v223, vmulq_lane_f32(v220, *v220.f32, 1))).u32[0];
          v221.i32[0] = vaddq_f32(v224, vmulq_f32(v223, vmulq_lane_f32(v221, *v221.f32, 1))).u32[0];
          v226 = vdupq_laneq_s32(vaddq_f32(v216, vdupq_lane_s32(*v216.f32, 1)), 3);
          v227 = vdupq_laneq_s32(vaddq_f32(v217, vdupq_lane_s32(*v217.f32, 1)), 3);
          v228 = *(v19 + 112);
          v229 = (v11 + 16 * v15);
          *v229 = vorrq_s8(vandq_s8(vmulq_n_f32(vaddq_f32(v226, vmulq_f32(v228, vsubq_f32(v201, v226))), v225), v137), vandq_s8(v201, v73));
          v229[1] = vorrq_s8(vandq_s8(vmulq_n_f32(vaddq_f32(v227, vmulq_f32(v228, vsubq_f32(v202, v227))), v221.f32[0]), v137), vandq_s8(v202, v73));
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v230 = *(this + 51);
        v231 = vmulq_f32(v17, *(v230 + 48));
        v232 = vaddq_f32(v231, vextq_s8(v231, v231, 4uLL));
        v233 = vrev64q_s32(vaddq_f32(v232, vextq_s8(v232, v232, 8uLL)));
        v234 = *(v230 + 144);
        v235 = *(v230 + 208);
        v236 = *(v230 + 224);
        v237 = vaddq_f32(vmulq_n_f32(v235, *v234.i32), v233);
        v238 = vextq_s8(v234, v234, 8uLL);
        v239 = vminq_f32(vmaxq_f32(vrecpeq_f32(v238), v235), v236);
        v240 = vminq_f32(vmaxq_f32(vmulq_f32(v239, vrecpsq_f32(v238, v239)), v235), v236);
        v240.i64[0] = vdupq_laneq_s64(vmulq_lane_f32(vmulq_f32(v240, vrecpsq_f32(v238, v240)), *v237.f32, 1), 1).u64[0];
        v238.i64[0] = v237.i64[0];
        v238.i64[1] = v240.i64[0];
        v241 = vrev64q_s32(v238);
        v242 = vcvtq_f32_s32(vcvtq_s32_f32(v241));
        v243 = vsubq_f32(v242, vbslq_s8(vcgtq_f32(v242, v241), v235, 0));
        v244 = vextq_s8(v243, v237, 8uLL);
        v237.i32[3] = v243.i32[3];
        v245 = vsubq_f32(v244, vmulq_n_f32(v237, *v234.i32));
        v245.i32[2] = 0.5;
        v246 = *(a2 + 22);
        v247 = vsubq_f32(vextq_s8(v245, v245, 8uLL), v9);
        v248 = *(a2 + 10);
        if (v5)
        {
          v249 = vaddq_s32(vcvtq_s32_f32(v247), vcltzq_f32(v247));
          v250 = vsubq_f32(v247, vcvtq_f32_s32(v249)).u64[0];
          v251 = (v248 + 16 * (v249.i32[0] + v249.i32[1] * v246));
          v252 = vaddq_f32(*v251, vmulq_n_f32(vsubq_f32(v251[1], *v251), v250.f32[0]));
          v253 = vaddq_f32(v252, vmulq_lane_f32(vsubq_f32(vaddq_f32(v251[v246], vmulq_n_f32(vsubq_f32(v251[v246 + 1], v251[v246]), v250.f32[0])), v252), v250, 1));
        }

        else
        {
          v254 = vaddq_f32(v247, v13);
          v255 = vcvtq_s32_f32(v254);
          v254.i64[0] = vaddq_s32(v255, vcgtq_f32(vcvtq_f32_s32(v255), v254)).u64[0];
          v253 = *(v248 + 16 * (v254.i32[0] + v254.i32[1] * v246));
        }

        v256 = vaddq_f32(*(v230 + 96), v233);
        v258 = *(v230 + 240);
        v257 = *(v230 + 256);
        v256.i64[0] = vbslq_s8(v258, v253, v256).u64[0];
        v259 = vmulq_f32(v17, *(v230 + 64));
        v260 = vaddq_f32(v259, vextq_s8(v259, v259, 4uLL));
        v261 = vmulq_f32(v17, *(v230 + 80));
        v262 = vaddq_f32(v261, vextq_s8(v261, v261, 4uLL));
        v256.i64[1] = vaddq_f32(v260, vdupq_lane_s64(*&v260, 0)).i64[1];
        v263 = vmvnq_s8(v257);
        v264 = vbslq_s8(v257, vaddq_f32(v262, vextq_s8(v262, v262, 8uLL)), v256);
        v266 = *(v230 + 272);
        v265 = *(v230 + 288);
        v267 = vaddq_f32(v266, vmulq_f32(v265, vdupq_lane_s64(v264.i64[0], 0)));
        v268 = vmulq_f32(v17, *(v230 + 32));
        v269 = vaddq_f32(v268, vextq_s8(v268, v268, 4uLL));
        v270 = vmulq_laneq_f32(*(v230 + 128), v267, 2);
        v267.i64[0] = vaddq_f32(v269, vdupq_laneq_s64(v269, 1)).u64[0];
        v271 = vbslq_s8(v258, vaddq_f32(vrev64q_s32(v267), v270), v264);
        v272 = vandq_s8(*(v230 + 176), v258);
        v273 = vaddq_f32(v272, v271);
        v274 = *(v230 + 16);
        v275 = vmulq_f32(v274, v273);
        v276 = vaddq_f32(v275, vextq_s8(v275, v275, 4uLL));
        v277 = vmulq_f32(*v230, v273);
        v278 = vaddq_f32(v277, vextq_s8(v277, v277, 4uLL));
        v279 = vbslq_s8(v258, vaddq_f32(v278, vextq_s8(v278, v278, 8uLL)), vaddq_f32(v276, vextq_s8(v276, v276, 8uLL)));
        v280 = vmulq_f32(v274, v271);
        v281 = vaddq_f32(v280, vextq_s8(v280, v280, 4uLL));
        v282 = vmulq_f32(*v230, v271);
        v283 = vaddq_f32(v282, vextq_s8(v282, v282, 4uLL));
        v284 = vextq_s8(v281, v283, 8uLL);
        v281.i64[1] = v283.i64[1];
        v285 = vaddq_f32(v281, v284);
        v286 = *(a2 + 26);
        v287 = vsubq_f32(v279, v9);
        v288 = *(a2 + 12);
        v289 = vextq_s8(v285, v285, 4uLL);
        v290 = vandq_s8(v285, v263);
        if (v5)
        {
          v291 = vaddq_s32(vcvtq_s32_f32(v287), vcltzq_f32(v287));
          v292 = vsubq_f32(v287, vcvtq_f32_s32(v291)).u64[0];
          v293 = vorrq_s8(vandq_s8(v289, v257), v290);
          v294 = vsubq_f32(vextq_s8(v293, v293, 8uLL), v9);
          v295 = vaddq_s32(vcvtq_s32_f32(v294), vcltzq_f32(v294));
          v296 = vsubq_f32(v294, vcvtq_f32_s32(v295)).u64[0];
          *v291.i8 = vmla_s32(vzip1_s32(*v291.i8, *v295.i8), vzip2_s32(*v291.i8, *v295.i8), vdup_n_s32(v286));
          v297 = (v288 + 16 * v291.i32[0]);
          v298 = vaddq_f32(*v297, vmulq_n_f32(vsubq_f32(v297[1], *v297), v292.f32[0]));
          v299 = vaddq_f32(v298, vmulq_lane_f32(vsubq_f32(vaddq_f32(v297[v286], vmulq_n_f32(vsubq_f32(v297[v286 + 1], v297[v286]), v292.f32[0])), v298), v292, 1));
          v300 = (v288 + 16 * v291.i32[1]);
          v301 = vaddq_f32(*v300, vmulq_n_f32(vsubq_f32(v300[1], *v300), v296.f32[0]));
          v302 = vaddq_f32(v301, vmulq_lane_f32(vsubq_f32(vaddq_f32(v300[v286], vmulq_n_f32(vsubq_f32(v300[v286 + 1], v300[v286]), v296.f32[0])), v301), v296, 1));
        }

        else
        {
          v303 = vaddq_f32(v287, v13);
          v304 = vcvtq_s32_f32(v303);
          v293 = vorrq_s8(vandq_s8(v289, v257), v290);
          v305 = vaddq_f32(vsubq_f32(vextq_s8(v293, v293, 8uLL), v9), v13);
          v306 = vcvtq_s32_f32(v305);
          *v305.f32 = vadd_s32(*v306.i8, *&vcgtq_f32(vcvtq_f32_s32(v306), v305));
          *v303.f32 = vadd_s32(*v304.i8, *&vcgtq_f32(vcvtq_f32_s32(v304), v303));
          *v305.f32 = vmla_s32(vzip1_s32(*v303.f32, *v305.f32), vzip2_s32(*v303.f32, *v305.f32), vdup_n_s32(v286));
          v307 = v305.i32[1];
          v299 = *(v288 + 16 * v305.i32[0]);
          v302 = *(v288 + 16 * v307);
        }

        v308 = vsubq_f32(v271, v272);
        v309 = vmulq_f32(*v230, v308);
        v310 = vaddq_f32(v309, vextq_s8(v309, v309, 4uLL));
        v311 = vmulq_f32(v274, v308);
        v312 = vaddq_f32(v311, vextq_s8(v311, v311, 4uLL));
        v313 = vsubq_f32(vbslq_s8(v258, vaddq_f32(v310, vextq_s8(v310, v310, 8uLL)), vaddq_f32(v312, vextq_s8(v312, v312, 8uLL))), v9);
        if (v5)
        {
          v314 = vaddq_s32(vcvtq_s32_f32(v313), vcltzq_f32(v313));
          v315 = vsubq_f32(v313, vcvtq_f32_s32(v314)).u64[0];
          v316 = (v288 + 16 * (v314.i32[0] + v314.i32[1] * v286));
          v317 = vaddq_f32(*v316, vmulq_n_f32(vsubq_f32(v316[1], *v316), v315.f32[0]));
          v318 = vaddq_f32(v317, vmulq_lane_f32(vsubq_f32(vaddq_f32(v316[v286], vmulq_n_f32(vsubq_f32(v316[v286 + 1], v316[v286]), v315.f32[0])), v317), v315, 1));
        }

        else
        {
          v319 = vaddq_f32(v313, v13);
          v320 = vcvtq_s32_f32(v319);
          v319.i64[0] = vaddq_s32(v320, vcgtq_f32(vcvtq_f32_s32(v320), v319)).u64[0];
          v318 = *(v288 + 16 * (v319.i32[0] + v319.i32[1] * v286));
        }

        v321 = vmvnq_s8(v258);
        v322 = *(v230 + 160);
        v323 = vbslq_s8(*(v230 + 304), v318, vorrq_s8(vandq_s8(v302, v321), vandq_s8(v258, v299)));
        v324 = vrev64q_s32(vmulq_n_f32(v322, *v293.i32));
        v325 = vcvtq_f32_s32(vcvtq_s32_f32(v324));
        v326 = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_laneq_f32(vsubq_f32(v324, vsubq_f32(v325, vandq_s8(v265, vcgtq_f32(v325, v324)))), v322, 2), v322), v266), v265);
        v327 = vandq_s8(vrev64q_s32(vsubq_f32(vnegq_f32(v326), v326)), v321);
        v328 = vorrq_s8(v327, vandq_s8(v258, v326));
        v329 = vmulq_f32(*(v230 + 192), v323);
        v330 = vaddq_f32(v329, vextq_s8(v329, v329, 4uLL));
        v331 = vandq_s8(v258, vmulq_f32(v328, v328));
        v332 = vorrq_s8(vandq_s8(vaddq_f32(v266, vorrq_s8(v331, v327)), v321), v331);
        v332.i32[0] = vaddq_f32(vdupq_laneq_s32(v322, 3), vmulq_laneq_f32(vmulq_lane_f32(v332, *v332.f32, 1), vsubq_f32(v265, v322), 3)).u32[0];
        v333 = vdupq_laneq_s32(vaddq_f32(v330, vdupq_lane_s32(*v330.f32, 1)), 3);
        *(v11 + 16 * v15) = vorrq_s8(vandq_s8(vmulq_n_f32(vaddq_f32(v333, vmulq_f32(*(v230 + 112), vsubq_f32(v323, v333))), v332.f32[0]), v263), vandq_s8(v323, v257));
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcBadTV::GetDOD(HgcBadTV *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 1)
  {
    if ((*(*this + 312))(this, a2) < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a3)
  {
    v7 = &HGRectNull;
    return *v7;
  }

  if ((*(*this + 312))(this, a2) > 0)
  {
LABEL_4:
    v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    HGRectGrow(v5, v4, v6);
  }

LABEL_5:
  v7 = &HGRectInfinite;
  return *v7;
}

uint64_t HgcBadTV::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 > 1)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(DOD, v9, v10);
  }

  return DOD;
}

void HgcBadTV::HgcBadTV(HgcBadTV *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DEF20;
  operator new();
}

void HgcBadTV::~HgcBadTV(HGNode *this)
{
  *this = &unk_2871DEF20;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F47AF14);
  }

  HGNode::~HGNode(this);
}

{
  HgcBadTV::~HgcBadTV(this);

  HGObject::operator delete(v1);
}

uint64_t HgcBadTV::SetParameter(HgcBadTV *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  switch(a2)
  {
    case 0:
      v7 = *(this + 51);
      if (*v7 == a3.n128_f32[0] && v7[1] == a4 && v7[2] == a5 && v7[3] == a6)
      {
        return 0;
      }

      *v7 = a3.n128_f32[0];
      v7[1] = a4;
      v7[2] = a5;
      v7[3] = a6;
      goto LABEL_70;
    case 1:
      v16 = *(this + 51);
      if (v16[4] == a3.n128_f32[0] && v16[5] == a4 && v16[6] == a5 && v16[7] == a6)
      {
        return 0;
      }

      v16[4] = a3.n128_f32[0];
      v16[5] = a4;
      v16[6] = a5;
      v16[7] = a6;
      goto LABEL_70;
    case 2:
      v14 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 51) + 320) = a3;
      return v14;
    case 3:
      v14 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 51) + 336) = a3;
      return v14;
    case 4:
      v10 = *(this + 51);
      if (v10[8] == a3.n128_f32[0] && v10[9] == a4 && v10[10] == a5 && v10[11] == a6)
      {
        return 0;
      }

      v10[8] = a3.n128_f32[0];
      v10[9] = a4;
      v10[10] = a5;
      v10[11] = a6;
      goto LABEL_70;
    case 5:
      v17 = *(this + 51);
      if (v17[12] == a3.n128_f32[0] && v17[13] == a4 && v17[14] == a5 && v17[15] == a6)
      {
        return 0;
      }

      v17[12] = a3.n128_f32[0];
      v17[13] = a4;
      v17[14] = a5;
      v17[15] = a6;
      goto LABEL_70;
    case 6:
      v19 = *(this + 51);
      if (v19[16] == a3.n128_f32[0] && v19[17] == a4 && v19[18] == a5 && v19[19] == a6)
      {
        return 0;
      }

      v19[16] = a3.n128_f32[0];
      v19[17] = a4;
      v19[18] = a5;
      v19[19] = a6;
      goto LABEL_70;
    case 7:
      v15 = *(this + 51);
      if (v15[20] == a3.n128_f32[0] && v15[21] == a4 && v15[22] == a5 && v15[23] == a6)
      {
        return 0;
      }

      v15[20] = a3.n128_f32[0];
      v15[21] = a4;
      v15[22] = a5;
      v15[23] = a6;
      goto LABEL_70;
    case 8:
      v21 = *(this + 51);
      if (v21[6].n128_f32[0] == 0.0 && v21[6].n128_f32[1] == a3.n128_f32[0] && v21[6].n128_f32[2] == 0.0 && v21[6].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v21[6].n128_u32[0] = 0;
      v21[6].n128_u32[1] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v21[6].n128_u64[1] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v21[22] = a3;
      goto LABEL_70;
    case 9:
      v12 = *(this + 51);
      if (v12[7].n128_f32[0] == a3.n128_f32[0] && v12[7].n128_f32[1] == a3.n128_f32[0] && v12[7].n128_f32[2] == a3.n128_f32[0] && v12[7].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v13 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v13.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v12[7] = v13;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v12[23] = a3;
      goto LABEL_70;
    case 10:
      v20 = *(this + 51);
      if (v20[32] == a3.n128_f32[0] && v20[33] == a4 && v20[34] == a5 && v20[35] == a6)
      {
        return 0;
      }

      v20[32] = a3.n128_f32[0];
      v20[33] = a4;
      v20[34] = a5;
      v20[35] = a6;
      goto LABEL_70;
    case 11:
      v9 = *(this + 51);
      if (v9[36] == a3.n128_f32[0] && v9[37] == a4 && v9[38] == a5 && v9[39] == a6)
      {
        return 0;
      }

      v9[36] = a3.n128_f32[0];
      v9[37] = a4;
      v9[38] = a5;
      v9[39] = a6;
      goto LABEL_70;
    case 12:
      v11 = *(this + 51);
      if (v11[40] == a3.n128_f32[0] && v11[41] == a4 && v11[42] == a5 && v11[43] == a6)
      {
        return 0;
      }

      v11[40] = a3.n128_f32[0];
      v11[41] = a4;
      v11[42] = a5;
      v11[43] = a6;
      goto LABEL_70;
    case 13:
      v18 = *(this + 51);
      if (v18[44] == a3.n128_f32[0] && v18[45] == a4 && v18[46] == a5 && v18[47] == a6)
      {
        return 0;
      }

      v18[44] = a3.n128_f32[0];
      v18[45] = a4;
      v18[46] = a5;
      v18[47] = a6;
      goto LABEL_70;
    case 14:
      v8 = *(this + 51);
      if (v8[48] == a3.n128_f32[0] && v8[49] == a4 && v8[50] == a5 && v8[51] == a6)
      {
        return 0;
      }

      v8[48] = a3.n128_f32[0];
      v8[49] = a4;
      v8[50] = a5;
      v8[51] = a6;
LABEL_70:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

float HgcBadTV::GetParameter(HgcBadTV *this, int a2, float *a3)
{
  switch(a2)
  {
    case 0:
      v3 = *(this + 51);
      *a3 = *v3;
      a3[1] = v3[1];
      a3[2] = v3[2];
      v4 = v3 + 3;
      goto LABEL_17;
    case 1:
      v13 = *(this + 51);
      *a3 = v13[4];
      a3[1] = v13[5];
      a3[2] = v13[6];
      v4 = v13 + 7;
      goto LABEL_17;
    case 2:
      v10 = *(this + 51);
      *a3 = v10[80];
      a3[1] = v10[81];
      a3[2] = v10[82];
      v4 = v10 + 83;
      goto LABEL_17;
    case 3:
      v11 = *(this + 51);
      *a3 = v11[84];
      a3[1] = v11[85];
      a3[2] = v11[86];
      v4 = v11 + 87;
      goto LABEL_17;
    case 4:
      v7 = *(this + 51);
      *a3 = v7[8];
      a3[1] = v7[9];
      a3[2] = v7[10];
      v4 = v7 + 11;
      goto LABEL_17;
    case 5:
      v14 = *(this + 51);
      *a3 = v14[12];
      a3[1] = v14[13];
      a3[2] = v14[14];
      v4 = v14 + 15;
      goto LABEL_17;
    case 6:
      v16 = *(this + 51);
      *a3 = v16[16];
      a3[1] = v16[17];
      a3[2] = v16[18];
      v4 = v16 + 19;
      goto LABEL_17;
    case 7:
      v12 = *(this + 51);
      *a3 = v12[20];
      a3[1] = v12[21];
      a3[2] = v12[22];
      v4 = v12 + 23;
      goto LABEL_17;
    case 8:
      v18 = *(this + 51);
      *a3 = v18[88];
      a3[1] = v18[89];
      a3[2] = v18[90];
      v4 = v18 + 91;
      goto LABEL_17;
    case 9:
      v9 = *(this + 51);
      *a3 = v9[92];
      a3[1] = v9[93];
      a3[2] = v9[94];
      v4 = v9 + 95;
      goto LABEL_17;
    case 10:
      v17 = *(this + 51);
      *a3 = v17[32];
      a3[1] = v17[33];
      a3[2] = v17[34];
      v4 = v17 + 35;
      goto LABEL_17;
    case 11:
      v6 = *(this + 51);
      *a3 = v6[36];
      a3[1] = v6[37];
      a3[2] = v6[38];
      v4 = v6 + 39;
      goto LABEL_17;
    case 12:
      v8 = *(this + 51);
      *a3 = v8[40];
      a3[1] = v8[41];
      a3[2] = v8[42];
      v4 = v8 + 43;
      goto LABEL_17;
    case 13:
      v15 = *(this + 51);
      *a3 = v15[44];
      a3[1] = v15[45];
      a3[2] = v15[46];
      v4 = v15 + 47;
      goto LABEL_17;
    case 14:
      v5 = *(this + 51);
      *a3 = v5[48];
      a3[1] = v5[49];
      a3[2] = v5[50];
      v4 = v5 + 51;
LABEL_17:
      result = *v4;
      a3[3] = *v4;
      break;
    default:
      return result;
  }

  return result;
}

const char *HgcBadFilmGrain::GetProgram(HgcBadFilmGrain *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000057c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(2.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2.xyz = (half3) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).xyz;\n    r1.xyz = r2.xyz*c0.xxx + r1.xyz;\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.w = -r2.w + c0.y;\n    r1.xyz = r1.xyz - c0.yyy;\n    r1.xyz = r2.www*r1.xyz + r2.xyz;\n    r1.w = r0.w;\n    r2.w = c0.y;\n    r2.xyz = half3(hg_Params[0].xyz);\n    r2 = r1*r2;\n    r2.w = dot(r2, half4(hg_Params[2]));\n    r2.xyz = mix(r2.www, r2.xyz, half3(hg_Params[1].xyz));\n    output.color0.xyz = float3(r0.www)*float3(r2.xyz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=b7f95722:d7eb99b3:dc5bc7d2:bb9c022f\n//SIG=00400000:00000007:00000007:00000007:0001:0003:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000053e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(2.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2.xyz = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).xyz;\n    r1.xyz = r2.xyz*c0.xxx + r1.xyz;\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.w = -r2.w + c0.y;\n    r1.xyz = r1.xyz - c0.yyy;\n    r1.xyz = r2.www*r1.xyz + r2.xyz;\n    r1.w = r0.w;\n    r2.w = c0.y;\n    r2.xyz = hg_Params[0].xyz;\n    r2 = r1*r2;\n    r2.w = dot(r2, hg_Params[2]);\n    r2.xyz = mix(r2.www, r2.xyz, hg_Params[1].xyz);\n    output.color0.xyz = r0.www*r2.xyz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=dfb87f00:b205b4a3:c2e2b10f:0e279a93\n//SIG=00000000:00000007:00000007:00000000:0001:0003:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000519\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2.xyz = texture2D(hg_Texture2, hg_TexCoord2.xy).xyz;\n    r1.xyz = r2.xyz*c0.xxx + r1.xyz;\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2.w = -r2.w + c0.y;\n    r1.xyz = r1.xyz - c0.yyy;\n    r1.xyz = r2.www*r1.xyz + r2.xyz;\n    r1.w = r0.w;\n    r2.w = c0.y;\n    r2.xyz = hg_ProgramLocal0.xyz;\n    r2 = r1*r2;\n    r2.w = dot(r2, hg_ProgramLocal2);\n    r2.xyz = mix(r2.www, r2.xyz, hg_ProgramLocal1.xyz);\n    gl_FragColor.xyz = r0.www*r2.xyz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=8133aa43:73a39584:bedabd76:ccf31031\n//SIG=00000000:00000007:00000007:00000000:0001:0003:0003:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FA6AB68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA6ACE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA6AD38()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA6AD30);
}

uint64_t HgcBadFilmGrain::BindTexture(HgcBadFilmGrain *this, HGHandler *a2, int a3)
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

uint64_t HgcBadFilmGrain::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcBadFilmGrain::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 24);
    v6 = *(a2 + 16);
    v7 = *(a2 + 96);
    v8 = *(a2 + 112);
    v9 = 16 * *(a2 + 120);
    v10 = 16 * *(a2 + 88);
    v11 = *(a2 + 80);
    v12 = 16 * *(a2 + 104);
    v13 = 16 * v5;
    do
    {
      if (v4 < 4)
      {
        v15 = 0;
      }

      else
      {
        v14 = 0;
        v15 = 0;
        for (i = v4; i > 3; i -= 4)
        {
          v17 = *(v11 + v14);
          v18 = *(v11 + v14 + 16);
          v19 = *(v11 + v14 + 32);
          v20 = *(v11 + v14 + 48);
          v21 = *(a1 + 408);
          v22 = *(v21 + 32);
          v23 = *(v21 + 48);
          v24 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v23);
          v25 = vmaxq_f32(vdupq_laneq_s32(v18, 3), v23);
          v26 = vmaxq_f32(vdupq_laneq_s32(v19, 3), v23);
          v27 = vmaxq_f32(vdupq_laneq_s32(v20, 3), v23);
          v28 = *(v21 + 64);
          v29 = *(v21 + 80);
          v30 = vmulq_f32(vrecpeq_f32(v24), v28);
          v31 = vmulq_f32(vrecpeq_f32(v25), v28);
          v32 = vmulq_f32(vrecpeq_f32(v26), v28);
          v33 = vmulq_f32(vrecpeq_f32(v27), v28);
          v34 = vmulq_f32(v20, vmulq_f32(v33, vrecpsq_f32(v33, v27)));
          v35 = vaddq_f32(vmulq_f32(v17, vmulq_f32(v30, vrecpsq_f32(v30, v24))), vmulq_laneq_f32(*(v8 + v14), v29, 2));
          v36 = vaddq_f32(vmulq_f32(v18, vmulq_f32(v31, vrecpsq_f32(v31, v25))), vmulq_laneq_f32(*(v8 + v14 + 16), v29, 2));
          v37 = vaddq_f32(vmulq_f32(v19, vmulq_f32(v32, vrecpsq_f32(v32, v26))), vmulq_laneq_f32(*(v8 + v14 + 32), v29, 2));
          v38 = *(v21 + 96);
          v39 = *(v21 + 112);
          v40 = vbslq_s8(v38, vsubq_f32(v29, *(v7 + v14)), *(v7 + v14));
          v41 = vbslq_s8(v38, vsubq_f32(v29, *(v7 + v14 + 16)), *(v7 + v14 + 16));
          v42 = vbslq_s8(v38, vsubq_f32(v29, *(v7 + v14 + 32)), *(v7 + v14 + 32));
          v43 = vbslq_s8(v38, vsubq_f32(v29, *(v7 + v14 + 48)), *(v7 + v14 + 48));
          v44 = vbslq_s8(v38, v17, vaddq_f32(vmulq_laneq_f32(vsubq_f32(v35, v39), v40, 3), v40));
          v45 = vbslq_s8(v38, v18, vaddq_f32(vmulq_laneq_f32(vsubq_f32(v36, v39), v41, 3), v41));
          v46 = *(v21 + 16);
          v47 = vbslq_s8(v38, v39, *v21);
          v48 = vmulq_f32(v47, v44);
          v49 = vmulq_f32(v47, v45);
          v50 = vmulq_f32(v47, vbslq_s8(v38, v19, vaddq_f32(vmulq_laneq_f32(vsubq_f32(v37, v39), v42, 3), v42)));
          v51 = vmulq_f32(v47, vbslq_s8(v38, v20, vaddq_f32(vmulq_laneq_f32(vsubq_f32(vaddq_f32(v34, vmulq_laneq_f32(*(v8 + v14 + 48), v29, 2)), v39), v43, 3), v43)));
          v52 = vmulq_f32(v22, v48);
          v53 = vmulq_f32(v22, v49);
          v54 = vmulq_f32(v22, v50);
          v55 = vmulq_f32(v22, v51);
          v56 = vaddq_f32(v52, vextq_s8(v52, v52, 4uLL));
          v57 = vaddq_f32(v53, vextq_s8(v53, v53, 4uLL));
          v58 = vaddq_f32(v54, vextq_s8(v54, v54, 4uLL));
          v59 = vaddq_f32(v55, vextq_s8(v55, v55, 4uLL));
          v60 = vbslq_s8(v38, vaddq_f32(v56, vextq_s8(v56, v56, 8uLL)), v48);
          v61 = vbslq_s8(v38, vaddq_f32(v57, vextq_s8(v57, v57, 8uLL)), v49);
          v62 = vbslq_s8(v38, vaddq_f32(v58, vextq_s8(v58, v58, 8uLL)), v50);
          v63 = vbslq_s8(v38, vaddq_f32(v59, vextq_s8(v59, v59, 8uLL)), v51);
          v64 = vdupq_laneq_s32(v60, 3);
          v65 = vdupq_laneq_s32(v61, 3);
          v66 = vdupq_laneq_s32(v62, 3);
          v67 = vdupq_laneq_s32(v63, 3);
          v68 = (v6 + v14);
          *v68 = vbslq_s8(v38, v17, vmulq_laneq_f32(vaddq_f32(v64, vmulq_f32(v46, vsubq_f32(v60, v64))), v17, 3));
          v68[1] = vbslq_s8(v38, v18, vmulq_laneq_f32(vaddq_f32(v65, vmulq_f32(v46, vsubq_f32(v61, v65))), v18, 3));
          v68[2] = vbslq_s8(v38, v19, vmulq_laneq_f32(vaddq_f32(v66, vmulq_f32(v46, vsubq_f32(v62, v66))), v19, 3));
          v68[3] = vbslq_s8(v38, v20, vmulq_laneq_f32(vaddq_f32(v67, vmulq_f32(v46, vsubq_f32(v63, v67))), v20, 3));
          v15 += 4;
          v14 += 64;
        }
      }

      if (v15 < v4)
      {
        do
        {
          v69 = *(v11 + 16 * v15);
          v70 = *(a1 + 408);
          v71 = vmaxq_f32(vdupq_laneq_s32(v69, 3), *(v70 + 48));
          v72 = *(v70 + 80);
          v73 = vmulq_f32(vrecpeq_f32(v71), *(v70 + 64));
          v74 = *(v7 + 16 * v15);
          v75 = vaddq_f32(vmulq_f32(v69, vmulq_f32(v73, vrecpsq_f32(v73, v71))), vmulq_laneq_f32(*(v8 + 16 * v15), v72, 2));
          v76 = vsubq_f32(v72, v74);
          v77 = *(v70 + 96);
          v78 = vbslq_s8(v77, v76, v74);
          v79 = vmulq_f32(vbslq_s8(v77, *(v70 + 112), *v70), vbslq_s8(v77, v69, vaddq_f32(vmulq_laneq_f32(vsubq_f32(v75, *(v70 + 112)), v78, 3), v78)));
          v80 = vmulq_f32(*(v70 + 32), v79);
          v81 = vaddq_f32(v80, vextq_s8(v80, v80, 4uLL));
          v82 = vbslq_s8(v77, vaddq_f32(v81, vextq_s8(v81, v81, 8uLL)), v79);
          v83 = vdupq_laneq_s32(v82, 3);
          *(v6 + 16 * v15++) = vbslq_s8(v77, v69, vmulq_laneq_f32(vaddq_f32(v83, vmulq_f32(*(v70 + 16), vsubq_f32(v82, v83))), v69, 3));
        }

        while (v15 < v4);
      }

      ++v3;
      v8 += v9;
      v11 += v10;
      v7 += v12;
      v6 += v13;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcBadFilmGrain::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcBadFilmGrain::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcBadFilmGrain::HgcBadFilmGrain(HgcBadFilmGrain *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DF188;
  operator new();
}

void HgcBadFilmGrain::~HgcBadFilmGrain(HGNode *this)
{
  *this = &unk_2871DF188;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);
}

{
  HgcBadFilmGrain::~HgcBadFilmGrain(this);

  HGObject::operator delete(v1);
}

uint64_t HgcBadFilmGrain::SetParameter(HgcBadFilmGrain *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 2)
  {
    v11 = *(this + 51);
    if (*(v11 + 32) != a3.n128_f32[0] || *(v11 + 36) != a4 || *(v11 + 40) != a5 || *(v11 + 44) != a6)
    {
      *(v11 + 32) = a3.n128_u32[0];
      *(v11 + 36) = a4;
      *(v11 + 40) = a5;
      *(v11 + 44) = a6;
      goto LABEL_19;
    }
  }

  else if (a2 == 1)
  {
    v9 = *(this + 51);
    if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a3.n128_f32[0] || *(v9 + 24) != a3.n128_f32[0] || *(v9 + 28) != 0.0)
    {
      v10 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v10.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *(v9 + 16) = v10;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v9 + 144) = a3;
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
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != 0.0)
    {
      v8 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v8.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 128) = a3;
LABEL_19:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcBadFilmGrain::GetParameter(HgcBadFilmGrain *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = qword_260345350[a2];
  v6 = qword_260345368[a2];
  v7 = qword_260345380[a2];
  v8 = *(this + 51);
  *a3 = *(v8 + qword_260345338[a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

const char *HgcBadFilm::GetProgram(HgcBadFilm *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000048b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1.w = -r1.w + c0.w;\n    r2.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2.xyz = r1.www*r2.xyz + r1.xyz;\n    r2.w = r0.w;\n    r1.w = c0.w;\n    r1.xyz = half3(hg_Params[0].xyz);\n    r1 = r2*r1;\n    r1.w = dot(r1, half4(hg_Params[2]));\n    r1.xyz = mix(r1.www, r1.xyz, half3(hg_Params[1].xyz));\n    output.color0.xyz = float3(r0.www)*float3(r1.xyz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=7f3b73ff:77860bf1:8da1611f:77735ce2\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000454\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1.w = -r1.w + c0.w;\n    r2.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2.xyz = r1.www*r2.xyz + r1.xyz;\n    r2.w = r0.w;\n    r1.w = c0.w;\n    r1.xyz = hg_Params[0].xyz;\n    r1 = r2*r1;\n    r1.w = dot(r1, hg_Params[2]);\n    r1.xyz = mix(r1.www, r1.xyz, hg_Params[1].xyz);\n    output.color0.xyz = r0.www*r1.xyz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=16e1c220:63c2dd20:172b69a4:32b2b359\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000453\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1.w = -r1.w + c0.w;\n    r2.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2.xyz = r1.www*r2.xyz + r1.xyz;\n    r2.w = r0.w;\n    r1.w = c0.w;\n    r1.xyz = hg_ProgramLocal0.xyz;\n    r1 = r2*r1;\n    r1.w = dot(r1, hg_ProgramLocal2);\n    r1.xyz = mix(r1.www, r1.xyz, hg_ProgramLocal1.xyz);\n    gl_FragColor.xyz = r0.www*r1.xyz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=8e2ff0e1:0003b2b7:40890114:42824d09\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA6B7EC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA6B92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA6B974()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA6B96CLL);
}

uint64_t HgcBadFilm::BindTexture(HgcBadFilm *this, HGHandler *a2, int a3)
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

uint64_t HgcBadFilm::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcBadFilm::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 96);
    v7 = 16 * *(a2 + 88);
    v8 = *(a2 + 80);
    v9 = 16 * *(a2 + 104);
    v10 = 16 * *(a2 + 24);
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
          v18 = *(a1 + 408);
          v20 = *(v18 + 32);
          v19 = *(v18 + 48);
          v21 = *(v18 + 64);
          v22 = *(v18 + 80);
          v23 = vbslq_s8(v21, vsubq_f32(v19, *(v6 + v12 - 32)), *(v6 + v12 - 32));
          v24 = vbslq_s8(v21, vsubq_f32(v19, *(v6 + v12 - 16)), *(v6 + v12 - 16));
          v25 = vbslq_s8(v21, vsubq_f32(v19, *(v6 + v12)), *(v6 + v12));
          v26 = vbslq_s8(v21, vsubq_f32(v19, *(v6 + v12 + 16)), *(v6 + v12 + 16));
          v27 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v22);
          v28 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v22);
          v29 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v22);
          v30 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v22);
          v31 = vmulq_f32(v19, vrecpeq_f32(v27));
          v32 = vmulq_f32(v19, vrecpeq_f32(v28));
          v33 = vmulq_f32(v19, vrecpeq_f32(v29));
          v34 = vmulq_f32(v19, vrecpeq_f32(v30));
          v35 = vbslq_s8(v21, v16, vaddq_f32(vmulq_laneq_f32(vmulq_f32(v16, vmulq_f32(v33, vrecpsq_f32(v33, v29))), v25, 3), v25));
          v36 = *(v18 + 16);
          v37 = vbslq_s8(v21, v19, *v18);
          v38 = vmulq_f32(v37, vbslq_s8(v21, v14, vaddq_f32(vmulq_laneq_f32(vmulq_f32(v14, vmulq_f32(v31, vrecpsq_f32(v31, v27))), v23, 3), v23)));
          v39 = vmulq_f32(v37, vbslq_s8(v21, v15, vaddq_f32(vmulq_laneq_f32(vmulq_f32(v15, vmulq_f32(v32, vrecpsq_f32(v32, v28))), v24, 3), v24)));
          v40 = vmulq_f32(v37, v35);
          v41 = vmulq_f32(v37, vbslq_s8(v21, v17, vaddq_f32(vmulq_laneq_f32(vmulq_f32(v17, vmulq_f32(v34, vrecpsq_f32(v34, v30))), v26, 3), v26)));
          v42 = vmulq_f32(v20, v38);
          v43 = vmulq_f32(v20, v39);
          v44 = vmulq_f32(v20, v40);
          v45 = vmulq_f32(v20, v41);
          v46 = vaddq_f32(v42, vextq_s8(v42, v42, 4uLL));
          v47 = vaddq_f32(v43, vextq_s8(v43, v43, 4uLL));
          v48 = vaddq_f32(v44, vextq_s8(v44, v44, 4uLL));
          v49 = vaddq_f32(v45, vextq_s8(v45, v45, 4uLL));
          v50 = vbslq_s8(v21, vaddq_f32(v46, vextq_s8(v46, v46, 8uLL)), v38);
          v51 = vbslq_s8(v21, vaddq_f32(v47, vextq_s8(v47, v47, 8uLL)), v39);
          v52 = vbslq_s8(v21, vaddq_f32(v48, vextq_s8(v48, v48, 8uLL)), v40);
          v53 = vbslq_s8(v21, vaddq_f32(v49, vextq_s8(v49, v49, 8uLL)), v41);
          v54 = vdupq_laneq_s32(v50, 3);
          v55 = vdupq_laneq_s32(v51, 3);
          v56 = vdupq_laneq_s32(v52, 3);
          v57 = vdupq_laneq_s32(v53, 3);
          v58 = (v5 + v12);
          v58[-2] = vbslq_s8(v21, v14, vmulq_laneq_f32(vaddq_f32(v54, vmulq_f32(v36, vsubq_f32(v50, v54))), v14, 3));
          v58[-1] = vbslq_s8(v21, v15, vmulq_laneq_f32(vaddq_f32(v55, vmulq_f32(v36, vsubq_f32(v51, v55))), v15, 3));
          *v58 = vbslq_s8(v21, v16, vmulq_laneq_f32(vaddq_f32(v56, vmulq_f32(v36, vsubq_f32(v52, v56))), v16, 3));
          v58[1] = vbslq_s8(v21, v17, vmulq_laneq_f32(vaddq_f32(v57, vmulq_f32(v36, vsubq_f32(v53, v57))), v17, 3));
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v59 = *(v8 + 16 * v11);
          v60 = *(a1 + 408);
          v61 = *(v60 + 48);
          v62 = *(v60 + 64);
          v63 = vbslq_s8(v62, vsubq_f32(v61, *(v6 + 16 * v11)), *(v6 + 16 * v11));
          v64 = vmaxq_f32(vdupq_laneq_s32(v59, 3), *(v60 + 80));
          v65 = vmulq_f32(v61, vrecpeq_f32(v64));
          v66 = vmulq_f32(vbslq_s8(v62, v61, *v60), vbslq_s8(v62, v59, vaddq_f32(vmulq_laneq_f32(vmulq_f32(v59, vmulq_f32(v65, vrecpsq_f32(v65, v64))), v63, 3), v63)));
          v67 = vmulq_f32(*(v60 + 32), v66);
          v68 = vaddq_f32(v67, vextq_s8(v67, v67, 4uLL));
          v69 = vbslq_s8(v62, vaddq_f32(v68, vextq_s8(v68, v68, 8uLL)), v66);
          v70 = vdupq_laneq_s32(v69, 3);
          *(v5 + 16 * v11++) = vbslq_s8(v62, v59, vmulq_laneq_f32(vaddq_f32(v70, vmulq_f32(*(v60 + 16), vsubq_f32(v69, v70))), v59, 3));
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

uint64_t HgcBadFilm::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcBadFilm::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcBadFilm::HgcBadFilm(HgcBadFilm *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DF3F0;
  operator new();
}

void HgcBadFilm::~HgcBadFilm(HGNode *this)
{
  *this = &unk_2871DF3F0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGNode::~HGNode(this);
}

{
  HgcBadFilm::~HgcBadFilm(this);

  HGObject::operator delete(v1);
}

uint64_t HgcBadFilm::SetParameter(HgcBadFilm *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 2)
  {
    v11 = *(this + 51);
    if (*(v11 + 32) != a3.n128_f32[0] || *(v11 + 36) != a4 || *(v11 + 40) != a5 || *(v11 + 44) != a6)
    {
      *(v11 + 32) = a3.n128_u32[0];
      *(v11 + 36) = a4;
      *(v11 + 40) = a5;
      *(v11 + 44) = a6;
      goto LABEL_19;
    }
  }

  else if (a2 == 1)
  {
    v9 = *(this + 51);
    if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a3.n128_f32[0] || *(v9 + 24) != a3.n128_f32[0] || *(v9 + 28) != 0.0)
    {
      v10 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v10.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *(v9 + 16) = v10;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v9 + 112) = a3;
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
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != 0.0)
    {
      v8 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v8.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 96) = a3;
LABEL_19:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcBadFilm::GetParameter(HgcBadFilm *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = *&aD_7[8 * a2];
  v6 = *&aH_1[8 * a2];
  v7 = *&aL[8 * a2];
  v8 = *(this + 51);
  *a3 = *(v8 + *&asc_2603453C0[8 * a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

const char *HgcPrism::GetProgram(HgcPrism *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000042b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xw = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xw;\n    r1.yw = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).yw;\n    r2.zw = (half2) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).zw;\n    output.color0.x = float(r0.x);\n    output.color0.y = float(r1.y);\n    output.color0.z = float(r2.z);\n    r0.w = fmax(r0.w, r1.w);\n    output.color0.w = fmax(float(r0.w), float(r2.w));\n    return output;\n}\n//MD5=e654a3e1:34bc99dd:e96e2a9d:a9cdaa6e\n//SIG=00400000:00000007:00000007:00000007:0000:0000:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003f4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xw = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xw;\n    r1.yw = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).yw;\n    r2.zw = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).zw;\n    output.color0.x = r0.x;\n    output.color0.y = r1.y;\n    output.color0.z = r2.z;\n    r0.w = fmax(r0.w, r1.w);\n    output.color0.w = fmax(r0.w, r2.w);\n    return output;\n}\n//MD5=922c027f:e9701412:b8e336b5:f88230fc\n//SIG=00000000:00000007:00000007:00000000:0000:0000:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000349\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2;\n\n    r0.xw = texture2D(hg_Texture0, hg_TexCoord0.xy).xw;\n    r1.yw = texture2D(hg_Texture1, hg_TexCoord1.xy).yw;\n    r2.zw = texture2D(hg_Texture2, hg_TexCoord2.xy).zw;\n    gl_FragColor.x = r0.x;\n    gl_FragColor.y = r1.y;\n    gl_FragColor.z = r2.z;\n    r0.w = max(r0.w, r1.w);\n    gl_FragColor.w = max(r0.w, r2.w);\n}\n//MD5=4e6e7057:d79f48ee:b15cedc0:30878a3d\n//SIG=00000000:00000007:00000007:00000000:0000:0000:0003:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FA6C340(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA6C4C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA6C510()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA6C508);
}

uint64_t HgcPrism::BindTexture(HgcPrism *this, HGHandler *a2, int a3)
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

uint64_t HgcPrism::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 112);
    v7 = *(a2 + 96);
    v8 = 16 * *(a2 + 104);
    v9 = 16 * *(a2 + 120);
    v10 = 16 * *(a2 + 24);
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
          v14 = *(*(a1 + 408) + 16);
          v15 = vbslq_s8(v14, vmaxq_f32(vmaxq_f32(*(v7 + v12 - 16), 0), *(v6 + v12 - 16)), *(v7 + v12 - 16));
          v16 = vbslq_s8(v14, vmaxq_f32(vmaxq_f32(*(v7 + v12), 0), *(v6 + v12)), *(v7 + v12));
          v17 = vbslq_s8(v14, vmaxq_f32(vmaxq_f32(*(v7 + v12 + 16), 0), *(v6 + v12 + 16)), *(v7 + v12 + 16));
          v18 = (v5 + v12);
          v18[-2] = vbslq_s8(v14, vmaxq_f32(vmaxq_f32(*(v7 + v12 - 32), 0), *(v6 + v12 - 32)), *(v7 + v12 - 32));
          v18[-1] = v15;
          *v18 = v16;
          v18[1] = v17;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          *(v5 + 16 * v11) = vbslq_s8(*(*(a1 + 408) + 16), vmaxq_f32(vmaxq_f32(*(v7 + 16 * v11), 0), *(v6 + 16 * v11)), *(v7 + 16 * v11));
          ++v11;
        }

        while (v11 < v4);
      }

      ++v3;
      v7 += v8;
      v6 += v9;
      v5 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcPrism::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcPrism::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcPrism::HgcPrism(HgcPrism *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DF658;
  operator new();
}

void HgcPrism::~HgcPrism(HGNode *this)
{
  *this = &unk_2871DF658;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  HgcPrism::~HgcPrism(this);

  HGObject::operator delete(v1);
}

const char *HgcVariableBlurIntensity::GetProgram(HgcVariableBlurIntensity *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000307\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    FragmentOut output;\n\n    r0.zw = c0.zz;\n    r0.x = dot(half4(frag._texCoord0), half4(hg_Params[3]));\n    r0.y = dot(half4(frag._texCoord0), half4(hg_Params[4]));\n    r0 = r0 - half4(hg_Params[0]);\n    r0.x = dot(r0, r0);\n    r0.x = sqrt(r0.x);\n    r0.x = r0.x - half(hg_Params[2].x);\n    output.color0 = clamp(float4(r0.xxxx)*hg_Params[1], 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=e1f018d2:5a1b5082:fd5acce8:74cf3a05\n//SIG=00400000:00000000:00000000:00000000:0001:0005:0001:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002d9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0.zw = c0.zz;\n    r0.x = dot(frag._texCoord0, hg_Params[3]);\n    r0.y = dot(frag._texCoord0, hg_Params[4]);\n    r0 = r0 - hg_Params[0];\n    r0.x = dot(r0, r0);\n    r0.x = sqrt(r0.x);\n    r0.x = r0.x - hg_Params[2].x;\n    output.color0 = clamp(r0.xxxx*hg_Params[1], 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=ccd81247:4273da42:e852416e:94c39b7c\n//SIG=00000000:00000000:00000000:00000000:0001:0005:0001:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000390\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0;\n\n    r0.zw = c0.zz;\n    r0.x = dot(hg_TexCoord0, hg_ProgramLocal3);\n    r0.y = dot(hg_TexCoord0, hg_ProgramLocal4);\n    r0 = r0 - hg_ProgramLocal0;\n    r0.x = dot(r0, r0);\n    r0.x = sqrt(r0.x);\n    r0.x = r0.x - hg_ProgramLocal2.x;\n    gl_FragColor = clamp(r0.xxxx*hg_ProgramLocal1, vec4(0.00000), vec4(1.00000));\n}\n//MD5=e3684308:62925a6e:e5e2c473:74fc23c7\n//SIG=00000000:00000000:00000000:00000000:0001:0005:0001:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_25FA6CB14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260344F60;
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

void sub_25FA6CC14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA6CC54()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA6CC4CLL);
}

uint64_t HgcVariableBlurIntensity::Bind(HgcVariableBlurIntensity *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcVariableBlurIntensity::RenderTile(uint64_t a1, int32x2_t *a2)
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
    v8 = v6 + 2;
    v9 = 16 * a2[3].i32[0];
    do
    {
      if (v5 < 4)
      {
        v10 = 0;
        v13 = v7;
      }

      else
      {
        v10 = 0;
        v11 = v8;
        v12 = v5;
        v13 = v7;
        do
        {
          v14 = vaddq_f32(v13, xmmword_2603429B0);
          v15 = vaddq_f32(v14, xmmword_2603429B0);
          v16 = *(a1 + 408);
          v18 = *(v16 + 32);
          v17 = *(v16 + 48);
          v19 = vaddq_f32(v15, xmmword_2603429B0);
          v20 = vmulq_f32(v13, v17);
          v21 = vmulq_f32(v14, v17);
          v22 = vmulq_f32(v15, v17);
          v23 = vmulq_f32(v19, v17);
          v24 = vaddq_f32(v20, vextq_s8(v20, v20, 4uLL));
          v25 = vaddq_f32(v21, vextq_s8(v21, v21, 4uLL));
          v26 = vaddq_f32(v22, vextq_s8(v22, v22, 4uLL));
          v27 = vaddq_f32(v23, vextq_s8(v23, v23, 4uLL));
          *v24.i8 = vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
          *v25.i8 = vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL));
          v29 = *(v16 + 64);
          v28 = *(v16 + 80);
          v30 = vmulq_f32(v13, v29);
          v31 = vmulq_f32(v14, v29);
          v32 = vmulq_f32(v15, v29);
          v33 = vmulq_f32(v19, v29);
          *v26.i8 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
          v34 = vaddq_f32(v30, vextq_s8(v30, v30, 4uLL));
          v35 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
          v36 = vaddq_f32(v32, vextq_s8(v32, v32, 4uLL));
          v37 = vaddq_f32(v33, vextq_s8(v33, v33, 4uLL));
          *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
          v38 = vbslq_s8(v28, vaddq_f32(v34, vextq_s8(v34, v34, 8uLL)), v24);
          v39 = *(v16 + 16);
          v40 = vsubq_f32(v38, *v16);
          v41 = vsubq_f32(vbslq_s8(v28, vaddq_f32(v35, vextq_s8(v35, v35, 8uLL)), v25), *v16);
          v42 = vsubq_f32(vbslq_s8(v28, vaddq_f32(v36, vextq_s8(v36, v36, 8uLL)), v26), *v16);
          v43 = vsubq_f32(vbslq_s8(v28, vaddq_f32(v37, vextq_s8(v37, v37, 8uLL)), v27), *v16);
          v44 = vmulq_f32(v40, v40);
          v45 = vmulq_f32(v41, v41);
          v46 = vmulq_f32(v42, v42);
          v47 = vmulq_f32(v43, v43);
          v48 = vaddq_f32(v44, vextq_s8(v44, v44, 4uLL));
          v49 = vaddq_f32(v45, vextq_s8(v45, v45, 4uLL));
          v50 = vaddq_f32(v46, vextq_s8(v46, v46, 4uLL));
          v51 = vaddq_f32(v47, vextq_s8(v47, v47, 4uLL));
          v52 = vaddq_f32(v48, vextq_s8(v48, v48, 8uLL));
          v53 = vaddq_f32(v49, vextq_s8(v49, v49, 8uLL));
          v54 = vaddq_f32(v50, vextq_s8(v50, v50, 8uLL));
          v55 = vaddq_f32(v51, vextq_s8(v51, v51, 8uLL));
          v56 = *(v16 + 96);
          v57 = *(v16 + 112);
          v58 = vminq_f32(vrsqrteq_f32(v52), v56);
          v59 = vminq_f32(vrsqrteq_f32(v53), v56);
          v60 = vminq_f32(vrsqrteq_f32(v54), v56);
          v61 = vminq_f32(vrsqrteq_f32(v55), v56);
          v62 = vminq_f32(vmulq_f32(v58, vrsqrtsq_f32(vmulq_f32(v58, v52), v58)), v56);
          v63 = vminq_f32(vmulq_f32(v59, vrsqrtsq_f32(vmulq_f32(v59, v53), v59)), v56);
          v64 = vminq_f32(vmulq_f32(v60, vrsqrtsq_f32(vmulq_f32(v60, v54), v60)), v56);
          v65 = vminq_f32(vmulq_f32(v61, vrsqrtsq_f32(vmulq_f32(v61, v55), v61)), v56);
          v53.i32[0] = vsubq_f32(vmulq_f32(v53, vminq_f32(vmulq_f32(v63, vrsqrtsq_f32(vmulq_f32(v53, v63), v63)), v56)), v18).u32[0];
          v54.i32[0] = vsubq_f32(vmulq_f32(v54, vminq_f32(vmulq_f32(v64, vrsqrtsq_f32(vmulq_f32(v54, v64), v64)), v56)), v18).u32[0];
          v55.i32[0] = vsubq_f32(vmulq_f32(v55, vminq_f32(vmulq_f32(v65, vrsqrtsq_f32(vmulq_f32(v55, v65), v65)), v56)), v18).u32[0];
          v66 = vmulq_n_f32(v39, vsubq_f32(vmulq_f32(v52, vminq_f32(vmulq_f32(v62, vrsqrtsq_f32(vmulq_f32(v62, v52), v62)), v56)), v18).f32[0]);
          v67 = vmulq_n_f32(v39, v53.f32[0]);
          v68 = vmulq_n_f32(v39, v54.f32[0]);
          v69 = vmulq_n_f32(v39, v55.f32[0]);
          v70 = vmaxq_f32(v66, v57);
          v71 = *(v16 + 128);
          v11[-2] = vminq_f32(v70, v71);
          v11[-1] = vminq_f32(vmaxq_f32(v67, v57), v71);
          *v11 = vminq_f32(vmaxq_f32(v68, v57), v71);
          v11[1] = vminq_f32(vmaxq_f32(v69, v57), v71);
          v11 += 4;
          v13 = vaddq_f32(v19, xmmword_2603429B0);
          v12 -= 4;
          v10 += 4;
        }

        while (v12 > 3);
      }

      if (v10 < v5)
      {
        do
        {
          v72 = *(a1 + 408);
          v73 = vmulq_f32(v13, *(v72 + 48));
          v74 = vaddq_f32(v73, vextq_s8(v73, v73, 4uLL));
          v75 = vmulq_f32(v13, *(v72 + 64));
          *v74.i8 = vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL));
          v76 = vaddq_f32(v75, vextq_s8(v75, v75, 4uLL));
          v77 = vsubq_f32(vbslq_s8(*(v72 + 80), vaddq_f32(v76, vextq_s8(v76, v76, 8uLL)), v74), *v72);
          v78 = vmulq_f32(v77, v77);
          v79 = vaddq_f32(v78, vextq_s8(v78, v78, 4uLL));
          v80 = vaddq_f32(v79, vextq_s8(v79, v79, 8uLL));
          v81 = *(v72 + 96);
          v82 = vminq_f32(vrsqrteq_f32(v80), v81);
          v83 = vminq_f32(vmulq_f32(v82, vrsqrtsq_f32(vmulq_f32(v82, v80), v82)), v81);
          v6[v10] = vminq_f32(vmaxq_f32(vmulq_n_f32(*(v72 + 16), vsubq_f32(vmulq_f32(vminq_f32(vmulq_f32(v83, vrsqrtsq_f32(vmulq_f32(v83, v80), v83)), v81), v80), *(v72 + 32)).f32[0]), *(v72 + 112)), *(v72 + 128));
          v13 = vaddq_f32(v13, xmmword_2603429B0);
          ++v10;
        }

        while (v10 < v5);
      }

      v7 = vaddq_f32(v7, xmmword_2603429C0);
      ++v4;
      v8 = (v8 + v9);
      v6 = (v6 + v9);
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcVariableBlurIntensity::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcVariableBlurIntensity::HgcVariableBlurIntensity(HgcVariableBlurIntensity *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DF8C0;
  operator new();
}

void HgcVariableBlurIntensity::~HgcVariableBlurIntensity(HGNode *this)
{
  *this = &unk_2871DF8C0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);
}

{
  HgcVariableBlurIntensity::~HgcVariableBlurIntensity(this);

  HGObject::operator delete(v1);
}

uint64_t HgcVariableBlurIntensity::SetParameter(HgcVariableBlurIntensity *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v13 = *(this + 51);
      if (*v13 != a3.n128_f32[0] || *(v13 + 4) != a4 || *(v13 + 8) != a5 || *(v13 + 12) != a6)
      {
        *v13 = a3.n128_u32[0];
        *(v13 + 4) = a4;
        *(v13 + 8) = a5;
        *(v13 + 12) = a6;
        goto LABEL_32;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v9 = *(this + 51);
      if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a3.n128_f32[0] || *(v9 + 24) != a3.n128_f32[0] || *(v9 + 28) != a3.n128_f32[0])
      {
        v10 = vdupq_lane_s32(a3.n128_u64[0], 0);
        a3.n128_f32[1] = a4;
        *(v9 + 16) = v10;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        *(v9 + 144) = a3;
        goto LABEL_32;
      }

      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v11 = *(this + 51);
        if (*(v11 + 32) != a3.n128_f32[0] || *(v11 + 36) != a4 || *(v11 + 40) != a5 || *(v11 + 44) != a6)
        {
          *(v11 + 32) = a3.n128_u32[0];
          *(v11 + 36) = a4;
          *(v11 + 40) = a5;
          *(v11 + 44) = a6;
          goto LABEL_32;
        }

        return 0;
      case 3:
        v12 = *(this + 51);
        if (*(v12 + 48) != a3.n128_f32[0] || *(v12 + 52) != a4 || *(v12 + 56) != a5 || *(v12 + 60) != a6)
        {
          *(v12 + 48) = a3.n128_u32[0];
          *(v12 + 52) = a4;
          *(v12 + 56) = a5;
          *(v12 + 60) = a6;
          goto LABEL_32;
        }

        return 0;
      case 4:
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a4 || *(v8 + 72) != a5 || *(v8 + 76) != a6)
        {
          *(v8 + 64) = a3.n128_u32[0];
          *(v8 + 68) = a4;
          *(v8 + 72) = a5;
          *(v8 + 76) = a6;
LABEL_32:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

float HgcVariableBlurIntensity::GetParameter(HgcVariableBlurIntensity *this, int a2, float *a3)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      v5 = *(this + 51);
      *a3 = v5[36];
      a3[1] = v5[37];
      a3[2] = v5[38];
      v4 = v5 + 39;
    }

    else
    {
      v8 = *(this + 51);
      *a3 = *v8;
      a3[1] = v8[1];
      a3[2] = v8[2];
      v4 = v8 + 3;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v6 = *(this + 51);
        *a3 = v6[8];
        a3[1] = v6[9];
        a3[2] = v6[10];
        v4 = v6 + 11;
        break;
      case 3:
        v7 = *(this + 51);
        *a3 = v7[12];
        a3[1] = v7[13];
        a3[2] = v7[14];
        v4 = v7 + 15;
        break;
      case 4:
        v3 = *(this + 51);
        *a3 = v3[16];
        a3[1] = v3[17];
        a3[2] = v3[18];
        v4 = v3 + 19;
        break;
      default:
        return result;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcConcentricSquareChecker::GetProgram(HgcConcentricSquareChecker *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n"
             "//LEN=0000000d26\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]])\n"
             "{\n"
             "    const half4 c0 = half4(0.05747731403, -0.01348046958, -0.1212390736, 0.1956359297);\n"
             "    const half4 c1 = half4(0.9999956489, -0.3329946101, 1.570796371, 3.141592741);\n"
             "    const half4 c2 = half4(6.283185482, 0.1591549367, 1.000000000, 57.29577637);\n"
             "    const half4 c3 = half4(2.000000000, 3.000000000, 0.5000000000, 0.000000000);\n"
             "    float4 s0, s1, s2;\n"
             "    FragmentOut output;\n"
             "\n"
             "    s0.x = dot(frag._texCoord0, hg_Params[10]);\n"
             "    s0.z = dot(frag._texCoord0, hg_Params[11]);\n"
             "    s1.z = abs(s0.x);\n"
             "    s0.w = abs(s0.z);\n"
             "    s0.y = fmax(s0.w, s1.z);\n"
             "    s1.x = 1.00000f / s0.y;\n"
             "    s0.y = fmin(s0.w, s1.z);\n"
             "    s0.y = s0.y*s1.x;\n"
             "    s1.x = s0.y*s0.y;\n"
             "    s1.y = s1.x*float(c0.y) + float(c0.x);\n"
             "    s1.y = s1.y*s1.x + float(c0.z);\n"
             "    s1.y = s1.y*s1.x + float(c0.w);\n"
             "    s1.y = s1.y*s1.x + float(c1.y);\n"
             "    s1.x = s1.y*s1.x + float(c1.x);\n"
             "    s1.w = s1.x*s0.y;\n"
             "    s0.y = s0.z;\n"
             "    s1.xy = s0.xy*s0.xy;\n"
             "    s0.y = s1.z - s0.w;\n"
             "    s2.x = float(c1.z) - s1.w;\n"
             "    s0.w = dot(s1.xy, 1.00000f);\n"
             "    s0.y = select(s1.w, s2.x, s0.y < 0.00000h);\n"
             "    s2.x = float(c1.w) - s0.y;\n"
             "    s0.y = select(s0.y, s2.x, s0.x < 0.00000h);\n"
             "    s0.w = sqrt(s0.w);\n"
             "    s1.x = pow(s0.w, hg_Params[3].x);\n"
             "    s0.y = select(s0.y, -s0.y, s0.z < 0.00000h);\n"
             "    s0.y = s1.x*hg_Params[4].x + s0.y;\n"
             "    s1.y = s0.y*float(c2.y);\n"
             "    s1.y = floor(s1.y);\n"
             "    s1.y = -s1.y*float(c2.x) + s0.y;\n"
             "    s1.z = s1.y + float(c2.x);\n"
             "    s0.y = select(s0.y, s1.z, s0.y < 0.00000h);\n"
             "    s1.y = s0.y/hg_Params[2].x;\n"
             "    s1.z = s1.x*hg_Params[4].x;\n"
             "    s1.y = floor(s1.y);\n"
             "    s1.w = s1.y*hg_Params[2].x + -s1.z;\n"
             "    s2.x = sin(s1.w);\n"
             "    s1.y = s1.y + float(c2.z);\n"
             "    s1.y = s1.y*hg_Params[2].x + -s1.z;\n"
             "    s2.y = s0.z*s2.x;\n"
             "    s1.w = cos(s1.w);\n"
             "    s2.y = s0.x*s1.w + s2.y;\n"
             "    s2.x = -s2.y*s2.x + s0.z;\n"
             "    s1.w = -s2.y*s1.w + s0.x;\n"
             "    s2.x = s2.x*s2.x;\n"
             "    s1.z = s1.w*s1.w + s2.x;\n"
             "    s1.w = sin(s1.y);\n"
             "    s2.x = s0.z*s1.w;\n"
             "    s1.y = cos(s1.y);\n"
             "    s2.x = s0.x*s1.y + s2.x;\n"
             "    s0.xz = -s2.xx*s1.yw + s0.xz;\n"
             "    s0.z = s0.z*s0.z;\n"
             "    s0.x = s0.x*s0.x + s0.z;\n"
             "    s0.z = s1.x/hg_Params[1].x;\n"
             "    s1.x = floor(s0.z);\n"
             "    s1.y = 1.00000f / hg_Params[3].x;\n"
             "    s0.z = s1.x*hg_Params[1].x;\n"
             "    s0.z = pow(s0.z, s1.y);\n"
             "    s1.w = s1.x*hg_Params[1].x + hg_Params[1].x;\n"
             "    s1.w = pow(s1.w, s1.y);\n"
             "    s1.y = s1.w - s0.w;\n"
             "    s0.z = s0.w - s0.z;\n"
             "    s0.z = fmin(s0.z, s1.y);\n"
             "    s1.z = sqrt(s1.z);\n"
             "    s0.x = sqrt(s0.x);\n"
             "    s0.x = fmin(s1.z, s0.x);\n"
             "    s0.x = fmin(s0.x, s0.z);\n"
             "    s0.z = s0.y/hg_Params[0].z;\n"
             "    s0.x = clamp(s0.x*hg_Params[8].x, 0.00000f, 1.00000f);\n"
             "    s0.w = s0.z*float(c2.w);\n"
             "    s1.y = floor(s0.w);\n"
             "    s1.z = s1.y*float(c3.z);\n"
             "    s0.w = s1.x*float(c3.z);\n"
             "    s1.z = floor(s1.z);\n"
             "    s0.w = floor(s0.w);\n"
             "    s0.w = -s0.w*float(c3.x) + s1.x;\n"
             "    s1.y = -s1.z*float(c3.x) + s1.y;\n"
             "    s0.w = s0.w - s1.y;\n"
             "    s0.y = s0.x*s0.x;\n"
             "    s0.z = -s0.x*float(c3.x) + float(c3.y);\n"
             "    s0.y = s0.y*s0.z;\n"
             "    s2 = select(hg_Params[6], hg_Params[5], -fabs(s0.wwww) < 0.00000h);\n"
             "    s0.x = select(s0.x, s0.y, hg_Params[9].x < 0.00000h);\n"
             "    output.color0 = mix(hg_Params[7], s2, s0.xxxx);\n"
             "    return output;\n"
             "}\n"
             "//MD5=dbac2526:79b17fd5:8be5b65d:46f882f6\n"
             "//SIG=00400000:00000000:00000000:00000000:0004:000c:0003:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n"
             "//LEN=0000000ca9\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]])\n"
             "{\n"
             "    const float4 c0 = float4(0.05747731403, -0.01348046958, -0.1212390736, 0.1956359297);\n"
             "    const float4 c1 = float4(0.9999956489, -0.3329946101, 1.570796371, 3.141592741);\n"
             "    const float4 c2 = float4(6.283185482, 0.1591549367, 1.000000000, 57.29577637);\n"
             "    const float4 c3 = float4(2.000000000, 3.000000000, 0.5000000000, 0.000000000);\n"
             "    float4 r0, r1, r2;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0.x = dot(frag._texCoord0, hg_Params[10]);\n"
             "    r0.z = dot(frag._texCoord0, hg_Params[11]);\n"
             "    r1.z = abs(r0.x);\n"
             "    r0.w = abs(r0.z);\n"
             "    r0.y = fmax(r0.w, r1.z);\n"
             "    r1.x = 1.00000f / r0.y;\n"
             "    r0.y = fmin(r0.w, r1.z);\n"
             "    r0.y = r0.y*r1.x;\n"
             "    r1.x = r0.y*r0.y;\n"
             "    r1.y = r1.x*c0.y + c0.x;\n"
             "    r1.y = r1.y*r1.x + c0.z;\n"
             "    r1.y = r1.y*r1.x + c0.w;\n"
             "    r1.y = r1.y*r1.x + c1.y;\n"
             "    r1.x = r1.y*r1.x + c1.x;\n"
             "    r1.w = r1.x*r0.y;\n"
             "    r0.y = r0.z;\n"
             "    r1.xy = r0.xy*r0.xy;\n"
             "    r0.y = r1.z - r0.w;\n"
             "    r2.x = c1.z - r1.w;\n"
             "    r0.w = dot(r1.xy, 1.00000f);\n"
             "    r0.y = select(r1.w, r2.x, r0.y < 0.00000f);\n"
             "    r2.x = c1.w - r0.y;\n"
             "    r0.y = select(r0.y, r2.x, r0.x < 0.00000f);\n"
             "    r0.w = sqrt(r0.w);\n"
             "    r1.x = pow(r0.w, hg_Params[3].x);\n"
             "    r0.y = select(r0.y, -r0.y, r0.z < 0.00000f);\n"
             "    r0.y = r1.x*hg_Params[4].x + r0.y;\n"
             "    r1.y = r0.y*c2.y;\n"
             "    r1.y = floor(r1.y);\n"
             "    r1.y = -r1.y*c2.x + r0.y;\n"
             "    r1.z = r1.y + c2.x;\n"
             "    r0.y = select(r0.y, r1.z, r0.y < 0.00000f);\n"
             "    r1.y = r0.y/hg_Params[2].x;\n"
             "    r1.z = r1.x*hg_Params[4].x;\n"
             "    r1.y = floor(r1.y);\n"
             "    r1.w = r1.y*hg_Params[2].x + -r1.z;\n"
             "    r2.x = sin(r1.w);\n"
             "    r1.y = r1.y + c2.z;\n"
             "    r1.y = r1.y*hg_Params[2].x + -r1.z;\n"
             "    r2.y = r0.z*r2.x;\n"
             "    r1.w = cos(r1.w);\n"
             "    r2.y = r0.x*r1.w + r2.y;\n"
             "    r2.x = -r2.y*r2.x + r0.z;\n"
             "    r1.w = -r2.y*r1.w + r0.x;\n"
             "    r2.x = r2.x*r2.x;\n"
             "    r1.z = r1.w*r1.w + r2.x;\n"
             "    r1.w = sin(r1.y);\n"
             "    r2.x = r0.z*r1.w;\n"
             "    r1.y = cos(r1.y);\n"
             "    r2.x = r0.x*r1.y + r2.x;\n"
             "    r0.xz = -r2.xx*r1.yw + r0.xz;\n"
             "    r0.z = r0.z*r0.z;\n"
             "    r0.x = r0.x*r0.x + r0.z;\n"
             "    r0.z = r1.x/hg_Params[1].x;\n"
             "    r1.x = floor(r0.z);\n"
             "    r1.y = 1.00000f / hg_Params[3].x;\n"
             "    r0.z = r1.x*hg_Params[1].x;\n"
             "    r0.z = pow(r0.z, r1.y);\n"
             "    r1.w = r1.x*hg_Params[1].x + hg_Params[1].x;\n"
             "    r1.w = pow(r1.w, r1.y);\n"
             "    r1.y = r1.w - r0.w;\n"
             "    r0.z = r0.w - r0.z;\n"
             "    r0.z = fmin(r0.z, r1.y);\n"
             "    r1.z = sqrt(r1.z);\n"
             "    r0.x = sqrt(r0.x);\n"
             "    r0.x = fmin(r1.z, r0.x);\n"
             "    r0.x = fmin(r0.x, r0.z);\n"
             "    r0.z = r0.y/hg_Params[0].z;\n"
             "    r0.x = clamp(r0.x*hg_Params[8].x, 0.00000f, 1.00000f);\n"
             "    r0.w = r0.z*c2.w;\n"
             "    r1.y = floor(r0.w);\n"
             "    r1.z = r1.y*c3.z;\n"
             "    r0.w = r1.x*c3.z;\n"
             "    r1.z = floor(r1.z);\n"
             "    r0.w = floor(r0.w);\n"
             "    r0.w = -r0.w*c3.x + r1.x;\n"
             "    r1.y = -r1.z*c3.x + r1.y;\n"
             "    r0.w = r0.w - r1.y;\n"
             "    r0.y = r0.x*r0.x;\n"
             "    r0.z = -r0.x*c3.x + c3.y;\n"
             "    r0.y = r0.y*r0.z;\n"
             "    r2 = select(hg_Params[6], hg_Params[5], -fabs(r0.wwww) < 0.00000f);\n"
             "    r0.x = select(r0.x, r0.y, hg_Params[9].x < 0.00000f);\n"
             "    output.color0 = mix(hg_Params[7], r2, r0.xxxx);\n"
             "    return output;\n"
             "}\n"
             "//MD5=84a1ae38:6df132d1:7ca06595:7126459f\n"
             "//SIG=00000000:00000000:00000000:00000000:0004:000c:0003:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000f31\n"
           "#ifndef GL_ES\n"
           "#define lowp\n"
           "#define mediump\n"
           "#define highp\n"
           "#endif\n"
           "#define defaultp mediump\n"
           "uniform highp vec4 hg_ProgramLocal0;\n"
           "uniform highp vec4 hg_ProgramLocal1;\n"
           "uniform highp vec4 hg_ProgramLocal2;\n"
           "uniform highp vec4 hg_ProgramLocal3;\n"
           "uniform highp vec4 hg_ProgramLocal4;\n"
           "uniform highp vec4 hg_ProgramLocal5;\n"
           "uniform highp vec4 hg_ProgramLocal6;\n"
           "uniform highp vec4 hg_ProgramLocal7;\n"
           "uniform highp vec4 hg_ProgramLocal8;\n"
           "uniform highp vec4 hg_ProgramLocal9;\n"
           "uniform highp vec4 hg_ProgramLocal10;\n"
           "uniform highp vec4 hg_ProgramLocal11;\n"
           "varying highp vec4 hg_TexCoord0;\n"
           "void main()\n"
           "{\n"
           "    const highp vec4 c0 = vec4(0.05747731403, -0.01348046958, -0.1212390736, 0.1956359297);\n"
           "    const highp vec4 c1 = vec4(0.9999956489, -0.3329946101, 1.570796371, 3.141592741);\n"
           "    const highp vec4 c2 = vec4(6.283185482, 0.1591549367, 1.000000000, 57.29577637);\n"
           "    const highp vec4 c3 = vec4(2.000000000, 3.000000000, 0.5000000000, 0.000000000);\n"
           "    highp vec4 r0, r1, r2;\n"
           "\n"
           "    r0.x = dot(hg_TexCoord0, hg_ProgramLocal10);\n"
           "    r0.z = dot(hg_TexCoord0, hg_ProgramLocal11);\n"
           "    r1.z = abs(r0.x);\n"
           "    r0.w = abs(r0.z);\n"
           "    r0.y = max(r0.w, r1.z);\n"
           "    r1.x = 1.00000 / r0.y;\n"
           "    r0.y = min(r0.w, r1.z);\n"
           "    r0.y = r0.y*r1.x;\n"
           "    r1.x = r0.y*r0.y;\n"
           "    r1.y = r1.x*c0.y + c0.x;\n"
           "    r1.y = r1.y*r1.x + c0.z;\n"
           "    r1.y = r1.y*r1.x + c0.w;\n"
           "    r1.y = r1.y*r1.x + c1.y;\n"
           "    r1.x = r1.y*r1.x + c1.x;\n"
           "    r1.w = r1.x*r0.y;\n"
           "    r0.y = r0.z;\n"
           "    r1.xy = r0.xy*r0.xy;\n"
           "    r0.y = r1.z - r0.w;\n"
           "    r2.x = c1.z - r1.w;\n"
           "    r0.w = dot(r1.xy, vec2(1.00000));\n"
           "    r0.y = r0.y < 0.00000 ? r2.x : r1.w;\n"
           "    r2.x = c1.w - r0.y;\n"
           "    r0.y = r0.x < 0.00000 ? r2.x : r0.y;\n"
           "    r0.w = sqrt(r0.w);\n"
           "    r1.x = pow(r0.w, hg_ProgramLocal3.x);\n"
           "    r0.y = r0.z < 0.00000 ? -r0.y : r0.y;\n"
           "    r0.y = r1.x*hg_ProgramLocal4.x + r0.y;\n"
           "    r1.y = r0.y*c2.y;\n"
           "    r1.y = floor(r1.y);\n"
           "    r1.y = -r1.y*c2.x + r0.y;\n"
           "    r1.z = r1.y + c2.x;\n"
           "    r0.y = r0.y < 0.00000 ? r1.z : r0.y;\n"
           "    r1.y = r0.y/hg_ProgramLocal2.x;\n"
           "    r1.z = r1.x*hg_ProgramLocal4.x;\n"
           "    r1.y = floor(r1.y);\n"
           "    r1.w = r1.y*hg_ProgramLocal2.x + -r1.z;\n"
           "    r2.x = sin(r1.w);\n"
           "    r1.y = r1.y + c2.z;\n"
           "    r1.y = r1.y*hg_ProgramLocal2.x + -r1.z;\n"
           "    r2.y = r0.z*r2.x;\n"
           "    r1.w = cos(r1.w);\n"
           "    r2.y = r0.x*r1.w + r2.y;\n"
           "    r2.x = -r2.y*r2.x + r0.z;\n"
           "    r1.w = -r2.y*r1.w + r0.x;\n"
           "    r2.x = r2.x*r2.x;\n"
           "    r1.z = r1.w*r1.w + r2.x;\n"
           "    r1.w = sin(r1.y);\n"
           "    r2.x = r0.z*r1.w;\n"
           "    r1.y = cos(r1.y);\n"
           "    r2.x = r0.x*r1.y + r2.x;\n"
           "    r0.xz = -r2.xx*r1.yw + r0.xz;\n"
           "    r0.z = r0.z*r0.z;\n"
           "    r0.x = r0.x*r0.x + r0.z;\n"
           "    r0.z = r1.x/hg_ProgramLocal1.x;\n"
           "    r1.x = floor(r0.z);\n"
           "    r1.y = 1.00000 / hg_ProgramLocal3.x;\n"
           "    r0.z = r1.x*hg_ProgramLocal1.x;\n"
           "    r0.z = pow(r0.z, r1.y);\n"
           "    r1.w = r1.x*hg_ProgramLocal1.x + hg_ProgramLocal1.x;\n"
           "    r1.w = pow(r1.w, r1.y);\n"
           "    r1.y = r1.w - r0.w;\n"
           "    r0.z = r0.w - r0.z;\n"
           "    r0.z = min(r0.z, r1.y);\n"
           "    r1.z = sqrt(r1.z);\n"
           "    r0.x = sqrt(r0.x);\n"
           "    r0.x = min(r1.z, r0.x);\n"
           "    r0.x = min(r0.x, r0.z);\n"
           "    r0.z = r0.y/hg_ProgramLocal0.z;\n"
           "    r0.x = clamp(r0.x*hg_ProgramLocal8.x, 0.00000, 1.00000);\n"
           "    r0.w = r0.z*c2.w;\n"
           "    r1.y = floor(r0.w);\n"
           "    r1.z = r1.y*c3.z;\n"
           "    r0.w = r1.x*c3.z;\n"
           "    r1.z = floor(r1.z);\n"
           "    r0.w = floor(r0.w);\n"
           "    r0.w = -r0.w*c3.x + r1.x;\n"
           "    r1.y = -r1.z*c3.x + r1.y;\n"
           "    r0.w = r0.w - r1.y;\n"
           "    r0.y = r0.x*r0.x;\n"
           "    r0.z = -r0.x*c3.x + c3.y;\n"
           "    r0.y = r0.y*r0.z;\n"
           "    r2 = vec4(-abs(r0.w) < 0.00000 ? hg_ProgramLocal5.x : hg_ProgramLocal6.x, -abs(r0.w) < 0.00000 ? hg_ProgramLocal5.y : hg_ProgramLocal6.y, -abs(r0.w) < 0.00000 ? hg_ProgramLocal5.z : hg_ProgramLocal6.z, -abs(r0.w) < 0.00000 ? hg_ProgramLocal5.w : hg_ProgramLocal6.w);\n"
           "    r0.x = hg_ProgramLocal9.x < 0.00000 ? r0.y : r0.x;\n"
           "    gl_FragColor = mix(hg_ProgramLocal7, r2, r0.xxxx);\n"
           "}\n"
           "//MD5=7234e1c4:a32e7a07:b649f2ac:cf9c2fc0\n"
           "//SIG=00000000:00000000:00000000:00000000:0004:000c:0003:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_25FA6D6D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260345450;
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

void sub_25FA6D7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA6D818()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA6D810);
}

uint64_t HgcConcentricSquareChecker::Bind(HgcConcentricSquareChecker *this, HGHandler *a2)
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
  (*(*a2 + 144))(a2, 11, *(this + 51) + 176, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcConcentricSquareChecker::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 8) - *a2;
    v6 = *(a2 + 16);
    v7.f32[0] = *a2 + 0.5;
    v7.f32[1] = v2 + 0.5;
    v7.i32[2] = 0;
    v7.i32[3] = 1.0;
    v186 = v7;
    v8 = 16 * *(a2 + 24);
    do
    {
      if (v5 >= 1)
      {
        v9 = 0;
        v10 = v186;
        do
        {
          v201 = v10;
          v11 = *(a1 + 408);
          v12 = vmulq_f32(v10, *(v11 + 160));
          v13 = vaddq_f32(v12, vextq_s8(v12, v12, 4uLL));
          v14 = vmulq_f32(v10, *(v11 + 176));
          v15 = vaddq_f32(v14, vextq_s8(v14, v14, 4uLL));
          v16 = vaddq_f32(v13, vdupq_laneq_s64(v13, 1));
          v17 = vaddq_f32(v15, vdupq_lane_s64(v15.i64[0], 0));
          v18.i64[0] = v16.i64[0];
          v18.i64[1] = v17.i64[1];
          v19 = vabsq_f32(vextq_s8(v17, v16, 8uLL));
          v20 = *(v11 + 208);
          v21 = vandq_s8(*(v11 + 192), vsliq_n_s64(v18, v18, 0x20uLL));
          v22 = vbslq_s8(v20, vmaxq_f32(vextq_s8(v21, v21, 8uLL), vextq_s8(v19, v19, 4uLL)), v21);
          v23 = vrev64q_s32(v22);
          v24 = *(v11 + 224);
          v25 = *(v11 + 240);
          v26 = vminq_f32(vmaxq_f32(vrecpeq_f32(v23), v24), v25);
          v27 = vminq_f32(vmaxq_f32(vmulq_f32(v26, vrecpsq_f32(v23, v26)), v24), v25);
          v28 = vmulq_f32(v27, vrecpsq_f32(v23, v27));
          *v27.f32 = vext_s8(*v28.i8, *&vextq_s8(v19, v19, 8uLL), 4uLL);
          v27.i64[1] = vextq_s8(v19, v28, 0xCuLL).u64[0];
          v29 = vbslq_s8(v20, vmulq_n_f32(vbslq_s8(v20, vminq_f32(vextq_s8(v22, v22, 8uLL), v27), v21), *v28.i32), v21);
          v28.i64[0] = vmulq_lane_f32(vrev64q_s32(v29), *v29.i8, 1).u64[0];
          v27.i64[0] = v28.i64[0];
          v27.i64[1] = v19.i64[1];
          v28.i64[1] = vdupq_laneq_s64(v19, 1).u64[0];
          v30 = *(v11 + 256);
          v31 = *(v11 + 272);
          v32 = vbslq_s8(v20, vaddq_f32(v24, vmulq_f32(v30, vrev64q_s32(v28))), v27);
          v33 = vbslq_s8(v20, vaddq_f32(v31, vmulq_n_f32(v32, v32.f32[0])), v27);
          v199 = *(v11 + 288);
          v200 = *(v11 + 304);
          v34 = vbslq_s8(v20, vaddq_f32(v199, vmulq_n_f32(v33, v33.f32[0])), v27);
          v35 = vbslq_s8(v20, vaddq_f32(v200, vmulq_n_f32(v34, v34.f32[0])), v27);
          v37 = *(v11 + 320);
          v36 = *(v11 + 336);
          v38 = vbslq_s8(v37, v35, vmulq_n_f32(vdupq_lane_s64(v29.i64[0], 0), vaddq_f32(v200, vmulq_lane_f32(v35, *v35.f32, 1)).f32[0]));
          v39 = vbslq_s8(v20, vextq_s8(v29, v29, 4uLL), v21);
          v40 = vmulq_f32(v39, v39);
          v27.i64[0] = vextq_s8(v38, v38, 8uLL).u64[0];
          *v24.f32 = vext_s8(*v40.i8, *v27.f32, 4uLL);
          *v27.f32 = vext_s8(*v27.f32, *v40.i8, 4uLL);
          v41.i64[0] = v24.i64[0];
          v41.i64[1] = v27.i64[0];
          v27.i64[1] = v24.i64[0];
          v42 = vextq_s8(v38, v40, 8uLL);
          v43 = vbslq_s8(v36, vaddq_f32(v41, v42), vbslq_s8(v20, vsubq_f32(v41, vextq_s8(v39, v39, 8uLL)), v21));
          v44 = *(v11 + 352);
          v196 = *(v11 + 368);
          v45 = vbslq_s8(v20, vbslq_s8(vcgtq_f32(v44, v43), vrev64q_s32(vsubq_f32(v199, v27)), v42), v43);
          v46 = vrev64q_s32(v45);
          v47 = vbslq_s8(v20, vbslq_s8(vcgtq_f32(v44, v46), vrev64q_s32(vsubq_f32(v44, v46)), v45), v43);
          v48 = vminq_f32(vrsqrteq_f32(v47), v44);
          v49 = vminq_f32(vmulq_f32(v48, vrsqrtsq_f32(vmulq_f32(v48, v47), v48)), v44);
          v50 = vbslq_s8(v36, vmulq_f32(vminq_f32(vmulq_f32(v49, vrsqrtsq_f32(vmulq_f32(v49, v47), v49)), v44), v47), v47);
          v51 = *(v11 + 32);
          v52 = *(v11 + 48);
          v53 = vbslq_s8(vcgtq_f32(vandq_s8(v30, vceqq_f32(v52, v31)), v31), v30, vextq_s8(v50, v50, 0xCuLL));
          v198 = *(v11 + 384);
          v197 = *(v11 + 400);
          v54 = vorrq_s8(vandq_s8(v53, v196), v30);
          v195 = *(v11 + 432);
          v55 = vandq_s8(v30, vcgtq_f32(v54, v195));
          v56 = *(v11 + 448);
          v193 = *(v11 + 416);
          v194 = *(v11 + 464);
          v57 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v53, 0x17uLL)), vandq_s8(v197, vcgtq_f32(v198, v53))), v193), v55);
          v58 = vsubq_f32(vsubq_f32(v54, v30), vmulq_f32(vmulq_f32(v56, v55), v54));
          v191 = *(v11 + 496);
          v192 = *(v11 + 480);
          v59 = vmulq_f32(v58, v58);
          v189 = *(v11 + 528);
          v190 = *(v11 + 512);
          v187 = *(v11 + 560);
          v188 = *(v11 + 544);
          v60 = *(v11 + 576);
          v61 = *(v11 + 592);
          v62 = vmaxq_f32(vmulq_f32(v52, vaddq_f32(v57, vmulq_f32(v58, vaddq_f32(v187, vmulq_f32(v58, vaddq_f32(vaddq_f32(v189, vmulq_f32(v188, v58)), vmulq_f32(v59, vaddq_f32(vaddq_f32(v194, vmulq_f32(v192, v58)), vmulq_f32(v59, vaddq_f32(v191, vmulq_f32(v190, v58))))))))))), v60);
          v63 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
          v64 = vsubq_f32(v63, vandq_s8(v30, vcgtq_f32(v63, v62)));
          v65 = vsubq_f32(v62, v64);
          v67 = *(v11 + 608);
          v66 = *(v11 + 624);
          v69 = *(v11 + 640);
          v68 = *(v11 + 656);
          v70 = vcvtq_s32_f32(v64);
          v71 = *(v11 + 672);
          v72 = *(v11 + 688);
          v73 = vmulq_f32(vaddq_f32(v30, vmulq_f32(v65, vaddq_f32(v68, vmulq_f32(v65, vaddq_f32(vaddq_f32(v66, vmulq_f32(v69, v65)), vmulq_f32(vmulq_f32(v65, v65), vaddq_f32(v61, vmulq_f32(v67, v65)))))))), vshlq_n_s32(vaddq_s32(v71, v70), 0x17uLL));
          v74 = *(v11 + 64);
          v75 = vbslq_s8(v20, vaddq_f32(vmulq_n_f32(vrev64q_s32(v74), *v73.i32), vbslq_s8(v20, veorq_s8(vandq_s8(vextq_s8(v50, v50, 4uLL), v71), v50), v50)), v50);
          v76 = vbslq_s8(v72, v73, vmulq_f32(v68, v75));
          v77 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
          v78 = vbslq_s8(v72, v73, vsubq_f32(v75, vmulq_f32(v66, vbslq_s8(v72, v73, vsubq_f32(v77, vandq_s8(v69, vcgtq_f32(v77, v76)))))));
          v78.i64[1] = vaddq_f32(v68, vextq_s8(*&v66, v78, 0xCuLL)).i64[1];
          v79 = vbslq_s8(v20, vbslq_s8(vcgtq_f32(v67, v75), vextq_s8(v78, v78, 4uLL), v75), v50);
          v80 = vrev64q_s32(v51);
          v81 = vminq_f32(vmaxq_f32(vrecpeq_f32(v80), v61), v25);
          v82 = vminq_f32(vmaxq_f32(vmulq_f32(v81, vrecpsq_f32(v80, v81)), v61), v25);
          v80.i64[0] = vbslq_s8(v72, v78, vmulq_f32(vmulq_f32(v82, vrecpsq_f32(v80, v82)), v79)).u64[0];
          v80.i64[1] = vmulq_n_f32(vdupq_lane_s64(*&v74, 0), *&v80).i64[1];
          v83 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
          v84 = vbslq_s8(v20, vsubq_f32(v83, vandq_s8(v69, vcgtq_f32(v83, v80))), v80);
          v85 = vbslq_s8(v36, vsubq_f32(vmulq_lane_f32(vextq_s8(v51, v51, 4uLL), *v84.i8, 1), vrev64q_s32(v84)), v84);
          v86 = *(v11 + 704);
          v87 = *(v11 + 720);
          v88 = vaddq_f32(v86, vmulq_f32(v87, vextq_s8(v85, v85, 0xCuLL)));
          v89 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
          v90 = vaddq_f32(v86, vabdq_f32(vsubq_f32(v88, vsubq_f32(v89, vandq_s8(v30, vcgtq_f32(v89, v88)))), v56));
          v91 = vmulq_f32(v90, v90);
          v93 = *(v11 + 736);
          v92 = *(v11 + 752);
          v94 = *(v11 + 768);
          v95 = *(v11 + 784);
          v96 = vmulq_f32(v90, vaddq_f32(v95, vmulq_f32(v91, vaddq_f32(v94, vmulq_f32(v91, vaddq_f32(v93, vmulq_f32(v92, v91)))))));
          v97 = *(v11 + 800);
          v98 = vbslq_s8(v20, vaddq_f32(v97, v85), v85);
          v99 = vbslq_s8(v20, vsubq_f32(vmulq_n_f32(v98, *v51.i32), vextq_s8(v98, v98, 4uLL)), v85);
          v100 = vmulq_f32(v95, v99);
          v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
          v102 = vsubq_f32(vabdq_f32(vsubq_f32(v100, vsubq_f32(v101, vandq_s8(v94, vcgtq_f32(v101, v100)))), v92), v93);
          v103 = vmulq_f32(v102, v102);
          v104 = vmulq_f32(v102, vaddq_f32(v69, vmulq_f32(v103, vaddq_f32(v68, vmulq_f32(v103, vaddq_f32(v87, vmulq_f32(v86, v103)))))));
          v105 = vaddq_f32(vmulq_n_f32(vextq_s8(v104, v99, 8uLL), v79.f32[0]), vbslq_s8(v72, v96, vmulq_laneq_f32(vrev64q_s32(v96), v79, 2)));
          v106 = vbslq_s8(v72, v96, v105);
          v107 = vbslq_s8(v72, vsubq_f32(vextq_s8(v79, v79, 8uLL), vmulq_lane_f32(v106, *v106.f32, 1)), v105);
          v108 = vsubq_f32(vextq_s8(v79, v79, 4uLL), vmulq_lane_f32(v104, *v107.f32, 1));
          v109 = vaddq_f32(vdupq_lane_s64(vmulq_f32(v107, v107).i64[0], 0), vmulq_laneq_f32(vrev64q_s32(v108), v108, 3));
          v107.i64[0] = v99.i64[0];
          v107.i64[1] = v109.i64[1];
          v110 = vaddq_f32(v66, vmulq_f32(v95, vextq_s8(v109, v99, 8uLL)));
          v111 = vcvtq_f32_s32(vcvtq_s32_f32(v110));
          v112 = vaddq_f32(v66, vabdq_f32(vsubq_f32(v110, vsubq_f32(v111, vandq_s8(v94, vcgtq_f32(v111, v110)))), v92));
          v113 = vmulq_f32(v112, v112);
          v114 = vbslq_s8(v36, vmulq_f32(v112, vaddq_f32(v69, vmulq_f32(v113, vaddq_f32(v68, vmulq_f32(v113, vaddq_f32(v87, vmulq_f32(v86, v113))))))), v107);
          v115 = vmulq_f32(v95, v114);
          v116 = vcvtq_f32_s32(vcvtq_s32_f32(v115));
          v117 = vsubq_f32(vabdq_f32(vsubq_f32(v115, vsubq_f32(v116, vandq_s8(v97, vcgtq_f32(v116, v115)))), v94), v92);
          v118 = vmulq_f32(v117, v117);
          v119 = vbslq_s8(v20, vmulq_f32(v117, vaddq_f32(v66, vmulq_f32(v118, vaddq_f32(v86, vmulq_f32(v118, vaddq_f32(v93, vmulq_f32(v87, v118))))))), v114);
          v120 = vbslq_s8(*(v11 + 816), vsubq_f32(v79, vmulq_n_f32(vrev64q_s32(v119), vaddq_f32(vmulq_laneq_f32(vdupq_laneq_s32(v79, 2), v114, 3), vmulq_lane_f32(v79, *v119.i8, 1)).f32[0])), v79);
          v121 = vbslq_s8(v37, vmulq_f32(v120, v120), v120);
          v122 = vbslq_s8(v72, vaddq_f32(vmulq_f32(v121, v121), vextq_s8(v121, v121, 8uLL)), v121);
          v123 = *(v11 + 16);
          v124 = vextq_s8(v123, v123, 8uLL);
          v125 = vminq_f32(vmaxq_f32(vrecpeq_f32(v124), v95), v25);
          v126 = vminq_f32(vmaxq_f32(vmulq_f32(v125, vrecpsq_f32(v124, v125)), v95), v25);
          v127 = vbslq_s8(v37, vmulq_n_f32(vmulq_f32(v126, vrecpsq_f32(v124, v126)), *v119.i32), v122);
          v128 = vextq_s8(v127, v127, 8uLL);
          v129 = vcvtq_f32_s32(vcvtq_s32_f32(v128));
          v128.i64[0] = vsubq_f32(v129, vbslq_s8(vcgtq_f32(v129, v128), v30, 0)).u64[0];
          v130 = vrev64q_s32(v52);
          v131 = vminq_f32(vmaxq_f32(vmulq_f32(v60, vrecpeq_f32(v130)), v61), v25);
          v128.i64[1] = v119.i64[1];
          v132 = vbslq_s8(v20, vmulq_f32(v131, vrecpsq_f32(v130, v131)), v128);
          v133 = vbslq_s8(vcgtq_f32(vandq_s8(v94, vceqq_f32(vextq_s8(v132, v132, 0xCuLL), v97)), v97), v94, vbslq_s8(v37, vmulq_n_f32(v124, *v132.i32), v122));
          v134 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v133, 0x17uLL)), vandq_s8(v93, vcgtq_f32(v92, v133))), v87);
          v135 = vorrq_s8(vandq_s8(v133, v71), v94);
          v136 = vandq_s8(v94, vcgtq_f32(v135, v86));
          v137 = vaddq_f32(v134, v136);
          v138 = vsubq_f32(vsubq_f32(v135, v94), vmulq_f32(vmulq_f32(v69, v136), v135));
          v139 = vmulq_f32(v138, v138);
          v140 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v137, vmulq_f32(v138, vaddq_f32(v189, vmulq_f32(v138, vaddq_f32(vaddq_f32(v187, vmulq_f32(v188, v138)), vmulq_f32(v139, vaddq_f32(vaddq_f32(v66, vmulq_f32(v67, v138)), vmulq_f32(v139, vaddq_f32(v61, vmulq_f32(v60, v138)))))))))), *v132.i8, 1), v190);
          v141 = vcvtq_f32_s32(vcvtq_s32_f32(v140));
          v142 = vsubq_f32(v141, vandq_s8(v94, vcgtq_f32(v141, v140)));
          v143 = vsubq_f32(v140, v142);
          v144 = vextq_s8(v123, v123, 4uLL);
          v145 = vbslq_s8(v36, vaddq_f32(v144, vmulq_n_f32(v144, *v132.i32)), v132);
          v146 = vbslq_s8(vcgtq_f32(vandq_s8(v94, vceqq_f32(vextq_s8(v145, v145, 8uLL), v97)), v97), v94, v145);
          v147 = vorrq_s8(vandq_s8(v146, v71), v94);
          v148 = vandq_s8(v94, vcgtq_f32(v147, v187));
          v149 = vsubq_f32(vsubq_f32(v147, v94), vmulq_f32(vmulq_f32(v92, v148), v147));
          v150 = vmulq_f32(v149, v149);
          v151 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v146, 0x17uLL)), vandq_s8(v61, vcgtq_f32(v67, v146))), v60), v148), vmulq_f32(v149, vaddq_f32(v56, vmulq_f32(v149, vaddq_f32(vaddq_f32(v192, vmulq_f32(v194, v149)), vmulq_f32(v150, vaddq_f32(vaddq_f32(v188, vmulq_f32(v189, v149)), vmulq_f32(v150, vaddq_f32(v190, vmulq_f32(v191, v149)))))))))), *v145.i8, 1), v195);
          v152 = vcvtq_f32_s32(vcvtq_s32_f32(v151));
          v153 = vmulq_f32(vaddq_f32(v94, vmulq_f32(v143, vaddq_f32(v195, vmulq_f32(v143, vaddq_f32(vaddq_f32(v194, vmulq_f32(v56, v143)), vmulq_f32(vmulq_f32(v143, v143), vaddq_f32(v191, vmulq_f32(v192, v143)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v142), v196), 0x17uLL));
          v154 = vsubq_f32(v152, vandq_s8(v94, vcgtq_f32(v152, v151)));
          v155 = vsubq_f32(v151, v154);
          v156 = vbslq_s8(v37, v153, v122);
          v157 = vbslq_s8(v36, vmulq_f32(vaddq_f32(v94, vmulq_f32(v155, vaddq_f32(v199, vmulq_f32(v155, vaddq_f32(vaddq_f32(v198, vmulq_f32(v200, v155)), vmulq_f32(vmulq_f32(v155, v155), vaddq_f32(v193, vmulq_f32(v197, v155)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v154), v196), 0x17uLL)), v132);
          v158 = vsubq_f32(v157, v156);
          v159 = vbslq_s8(v20, vextq_s8(v158, v158, 8uLL), v157);
          v154.i64[0] = v156.i64[0];
          v154.i64[1] = vsubq_f32(vrev64q_s32(*&v156), v156).i64[1];
          v156.i64[1] = vminq_f32(v154, vextq_s8(*&v159, *&v159, 0xCuLL)).i64[1];
          v160 = vminq_f32(vrsqrteq_f32(v159), v193);
          v161 = vminq_f32(vmulq_f32(v160, vrsqrtsq_f32(vmulq_f32(v160, v159), v160)), v193);
          v162 = vminq_f32(vrsqrteq_f32(v156), v25);
          v163 = vmulq_f32(vminq_f32(vmulq_f32(v161, vrsqrtsq_f32(vmulq_f32(v161, v159), v161)), v193), v159);
          v164 = vminq_f32(vmulq_f32(v162, vrsqrtsq_f32(vmulq_f32(v162, v156), v162)), v25);
          v165 = vbslq_s8(v72, vminq_f32(vextq_s8(v163, v159, 8uLL), vbslq_s8(v72, vmulq_f32(vminq_f32(vmulq_f32(v164, vrsqrtsq_f32(vmulq_f32(v164, v156), v164)), v25), v156), v156)), v156);
          v165.i64[0] = vbslq_s8(v72, vminq_f32(v165, vextq_s8(v165, v165, 8uLL)), v156).u64[0];
          v166 = vminq_f32(vmaxq_f32(vrecpeq_f32(*v11), v95), v25);
          v167 = vminq_f32(vmaxq_f32(vmulq_f32(v166, vrecpsq_f32(*v11, v166)), v95), v25);
          v168 = vmulq_lane_f32(vmulq_f32(v167, vrecpsq_f32(*v11, v167)), *v165.f32, 1);
          v165.i64[1] = v168.i64[1];
          v169 = *(v11 + 144);
          v170 = vminq_f32(vmaxq_f32(vmulq_f32(*(v11 + 128), v165), v97), v30);
          v159.i64[1] = v163.i64[1];
          v171 = vextq_s8(vmulq_f32(*(v11 + 272), vrev64q_s32(v168)), v170, 8uLL);
          v172 = vcvtq_f32_s32(vcvtq_s32_f32(v171));
          v173 = vbslq_s8(v72, v159, vsubq_f32(v172, vandq_s8(v97, vcgtq_f32(v172, v171))));
          v174 = vmulq_f32(v69, vextq_s8(v169, v173, 0xCuLL));
          v172.i64[0] = v173.i64[0];
          v172.i64[1] = v174.i64[1];
          v174.i64[0] = vextq_s8(v174, v173, 0xCuLL).u64[0];
          v174.i64[1] = v174.i64[0];
          v175 = vmulq_f32(v92, v174);
          v92.i64[0] = v170.i64[0];
          v92.i64[1] = v175.i64[1];
          v176 = vcvtq_f32_s32(vcvtq_s32_f32(v172));
          v177 = vsubq_f32(v176, vbslq_s8(vcgtq_f32(v176, v172), v94, 0));
          v178 = vcvtq_f32_s32(vcvtq_s32_f32(v92));
          v179 = vmulq_f32(v30, vsubq_f32(v178, vbslq_s8(vcgtq_f32(v178, v92), v94, 0)));
          v180 = vmulq_laneq_f32(v187, v177, 2);
          v177.i64[0] = vextq_s8(v177, v173, 0xCuLL).u64[0];
          v177.i64[1] = v177.i64[0];
          v181 = vsubq_f32(vsubq_f32(v177, v179), vdupq_lane_s64(vsubq_f32(v173, v180).i64[0], 0));
          v177.i64[0] = v170.i64[0];
          v177.i64[1] = vdupq_laneq_s64(v181, 1).u64[0];
          v170.i64[1] = v181.i64[1];
          v182 = vbslq_s8(v20, vmulq_n_f32(vrev64q_s32(v177), *v170.i32), v170);
          v183 = vbslq_s8(v37, vsubq_f32(v197, vmulq_f32(v198, vextq_s8(v182, v182, 8uLL))), v182);
          v184 = vbslq_s8(v20, vmulq_laneq_f32(v183, v183, 2), v183);
          *(v6 + v9) = vaddq_f32(*(v11 + 112), vmulq_n_f32(vsubq_f32(vbslq_s8(vceqq_f32(vdupq_laneq_s32(v184, 3), *(v11 + 832)), *(v11 + 80), *(v11 + 96)), *(v11 + 112)), *vbslq_s8(vcgtq_f32(*(v11 + 832), v169), vdupq_lane_s32(*v184.i8, 1), v184).i32));
          v10 = vaddq_f32(v201, xmmword_2603429B0);
          v9 += 16;
        }

        while (16 * v5 != v9);
      }

      v186 = vaddq_f32(v186, xmmword_2603429C0);
      ++v4;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcConcentricSquareChecker::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcConcentricSquareChecker::HgcConcentricSquareChecker(HgcConcentricSquareChecker *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DFB28;
  operator new();
}

void HgcConcentricSquareChecker::~HgcConcentricSquareChecker(HGNode *this)
{
  *this = &unk_2871DFB28;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40BBCF7DE3);
  }

  HGNode::~HGNode(this);
}

{
  HgcConcentricSquareChecker::~HgcConcentricSquareChecker(this);

  HGObject::operator delete(v1);
}

uint64_t HgcConcentricSquareChecker::SetParameter(HgcConcentricSquareChecker *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        v13 = *(this + 51);
        if (*(v13 + 96) != a3.n128_f32[0] || *(v13 + 100) != a4 || *(v13 + 104) != a5 || *(v13 + 108) != a6)
        {
          *(v13 + 96) = a3.n128_u32[0];
          *(v13 + 100) = a4;
          *(v13 + 104) = a5;
          *(v13 + 108) = a6;
          goto LABEL_74;
        }
      }

      else if (a2 == 7)
      {
        v17 = *(this + 51);
        if (*(v17 + 112) != a3.n128_f32[0] || *(v17 + 116) != a4 || *(v17 + 120) != a5 || *(v17 + 124) != a6)
        {
          *(v17 + 112) = a3.n128_u32[0];
          *(v17 + 116) = a4;
          *(v17 + 120) = a5;
          *(v17 + 124) = a6;
          goto LABEL_74;
        }
      }

      else
      {
        v9 = *(this + 51);
        if (*(v9 + 128) != a3.n128_f32[0] || *(v9 + 132) != a4 || *(v9 + 136) != a5 || *(v9 + 140) != a6)
        {
          *(v9 + 128) = a3.n128_u32[0];
          *(v9 + 132) = a4;
          *(v9 + 136) = a5;
          *(v9 + 140) = a6;
          goto LABEL_74;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 9:
        v15 = *(this + 51);
        if (v15[9].n128_f32[0] != -a3.n128_f32[0] || v15[9].n128_f32[1] != 0.0 || v15[9].n128_f32[2] != 0.0 || v15[9].n128_f32[3] != 0.0)
        {
          v15[9].n128_f32[0] = -a3.n128_f32[0];
          v15[9].n128_u64[1] = 0;
          v15[9].n128_u32[1] = 0;
          a3.n128_f32[1] = a4;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v15[54] = a3;
          goto LABEL_74;
        }

        return 0;
      case 0xA:
        v19 = *(this + 51);
        if (*(v19 + 160) != a3.n128_f32[0] || *(v19 + 164) != a4 || *(v19 + 168) != a5 || *(v19 + 172) != a6)
        {
          *(v19 + 160) = a3.n128_u32[0];
          *(v19 + 164) = a4;
          *(v19 + 168) = a5;
          *(v19 + 172) = a6;
          goto LABEL_74;
        }

        return 0;
      case 0xB:
        v11 = *(this + 51);
        if (*(v11 + 176) != a3.n128_f32[0] || *(v11 + 180) != a4 || *(v11 + 184) != a5 || *(v11 + 188) != a6)
        {
          *(v11 + 176) = a3.n128_u32[0];
          *(v11 + 180) = a4;
          *(v11 + 184) = a5;
          *(v11 + 188) = a6;
          goto LABEL_74;
        }

        return 0;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v14 = *(this + 51);
        if (*(v14 + 48) != a3.n128_f32[0] || *(v14 + 52) != a4 || *(v14 + 56) != a5 || *(v14 + 60) != a6)
        {
          *(v14 + 48) = a3.n128_u32[0];
          *(v14 + 52) = a4;
          *(v14 + 56) = a5;
          *(v14 + 60) = a6;
          goto LABEL_74;
        }
      }

      else if (a2 == 4)
      {
        v18 = *(this + 51);
        if (*(v18 + 64) != a3.n128_f32[0] || *(v18 + 68) != a4 || *(v18 + 72) != a5 || *(v18 + 76) != a6)
        {
          *(v18 + 64) = a3.n128_u32[0];
          *(v18 + 68) = a4;
          *(v18 + 72) = a5;
          *(v18 + 76) = a6;
          goto LABEL_74;
        }
      }

      else
      {
        v10 = *(this + 51);
        if (*(v10 + 80) != a3.n128_f32[0] || *(v10 + 84) != a4 || *(v10 + 88) != a5 || *(v10 + 92) != a6)
        {
          *(v10 + 80) = a3.n128_u32[0];
          *(v10 + 84) = a4;
          *(v10 + 88) = a5;
          *(v10 + 92) = a6;
          goto LABEL_74;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 0:
        v12 = *(this + 51);
        if (v12->n128_f32[0] != 0.0 || v12->n128_f32[1] != 0.0 || v12->n128_f32[2] != a3.n128_f32[0] || v12->n128_f32[3] != 0.0)
        {
          v12->n128_u64[0] = 0;
          v12->n128_u32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v12->n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v12[53] = a3;
          goto LABEL_74;
        }

        return 0;
      case 1:
        v16 = *(this + 51);
        if (*(v16 + 16) != a3.n128_f32[0] || *(v16 + 20) != a4 || *(v16 + 24) != a5 || *(v16 + 28) != a6)
        {
          *(v16 + 16) = a3.n128_u32[0];
          *(v16 + 20) = a4;
          *(v16 + 24) = a5;
          *(v16 + 28) = a6;
          goto LABEL_74;
        }

        return 0;
      case 2:
        v8 = *(this + 51);
        if (*(v8 + 32) != a3.n128_f32[0] || *(v8 + 36) != a4 || *(v8 + 40) != a5 || *(v8 + 44) != a6)
        {
          *(v8 + 32) = a3.n128_u32[0];
          *(v8 + 36) = a4;
          *(v8 + 40) = a5;
          *(v8 + 44) = a6;
LABEL_74:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

uint64_t HgcConcentricSquareChecker::GetParameter(HgcConcentricSquareChecker *this, unsigned int a2, float *a3)
{
  if (a2 > 0xB)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = qword_2603456D0[a2];
  v6 = qword_260345730[a2];
  v7 = qword_260345790[a2];
  v8 = *(this + 51);
  *a3 = *(v8 + qword_260345670[a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

double HgcConcentricSquareChecker::State::State(HgcConcentricSquareChecker::State *this)
{
  result = 0.0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *&v2 = 0x8000000080000000;
  *(&v2 + 1) = 0x8000000080000000;
  *(this + 8) = 0u;
  *(this + 9) = v2;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = xmmword_260345010;
  *(this + 13) = xmmword_260344670;
  v3.i64[0] = 0x80000000800000;
  v3.i64[1] = 0x80000000800000;
  *(this + 14) = xmmword_2603451A0;
  *(this + 15) = vnegq_f32(v3);
  *(this + 16) = xmmword_260345460;
  *(this + 17) = xmmword_260345470;
  *(this + 18) = xmmword_260345480;
  *(this + 19) = xmmword_260345490;
  *(this + 20) = xmmword_260344660;
  *(this + 21) = xmmword_260344600;
  *(this + 22) = xmmword_2603454A0;
  *(this + 23) = xmmword_2603454B0;
  *(this + 24) = xmmword_2603454C0;
  *(this + 25) = xmmword_2603454D0;
  *(this + 26) = xmmword_2603454E0;
  *(this + 27) = xmmword_2603454F0;
  *(this + 28) = xmmword_260345500;
  *(this + 29) = xmmword_260345510;
  *(this + 30) = xmmword_260345520;
  *(this + 31) = xmmword_260345530;
  *(this + 32) = xmmword_260345540;
  *(this + 33) = xmmword_260345550;
  *(this + 34) = xmmword_260345560;
  *(this + 35) = xmmword_260345570;
  *(this + 36) = xmmword_260345580;
  *(this + 37) = xmmword_260345590;
  *(this + 38) = xmmword_2603455A0;
  *(this + 39) = xmmword_2603455B0;
  *(this + 40) = xmmword_2603455C0;
  *(this + 41) = xmmword_2603455D0;
  *(this + 42) = xmmword_2603455E0;
  *(this + 43) = xmmword_2603444B0;
  *(this + 44) = xmmword_2603455F0;
  *(this + 45) = xmmword_260345600;
  *(this + 46) = xmmword_260345610;
  *(this + 47) = xmmword_260345620;
  *(this + 48) = xmmword_260345630;
  *(this + 49) = xmmword_260345640;
  v3.i64[0] = 0xFFFFFFFFLL;
  v3.i64[1] = 0xFFFFFFFFLL;
  *(this + 50) = xmmword_2603429C0;
  *(this + 51) = v3;
  *(this + 53) = 0u;
  *(this + 54) = 0u;
  *(this + 52) = 0u;
  return result;
}

uint64_t HgcZoomBlur::Setup(HgcZoomBlur *this, void *a2)
{
  v2 = *(this + 51);
  v3 = *(v2 + 304);
  v4 = *(v2 + 16);
  v5 = vsubq_f32(*(v2 + 336), *v2);
  v6 = vdupq_laneq_s32(v4, 2);
  v7 = vmulq_laneq_f32(vextq_s8(v5, v5, 8uLL), v4, 2);
  v8 = vmulq_laneq_f32(0, v4, 2);
  v9 = vaddq_f32(vextq_s8(*v2, *v2, 8uLL), v7);
  v7.i64[0] = vextq_s8(v6, v6, 8uLL).u64[0];
  *&v10 = vmul_f32(*(v2 + 288), *v7.f32);
  *(&v10 + 1) = vand_s8(*&vextq_s8(*(v2 + 352), *(v2 + 352), 8uLL), *&v10);
  *(v2 + 32) = v10;
  *&v10 = vmul_f32(*&v3, *v7.f32);
  v11 = *(this + 51);
  *(&v10 + 1) = vand_s8(*&vextq_s8(*(v11 + 352), *(v11 + 352), 8uLL), *&v10);
  *(v11 + 48) = v10;
  *(*(this + 51) + 64) = vbslq_s8(*(*(this + 51) + 352), vextq_s8(v8, v8, 8uLL), *(*(this + 51) + 320));
  *(*(this + 51) + 80) = vbslq_s8(*(*(this + 51) + 352), vextq_s8(v9, v9, 8uLL), *(*(this + 51) + 336));
  v12 = *(this + 51);
  v13 = *(v12 + 304);
  v14 = *(v12 + 16);
  *&v10 = vmul_laneq_f32(*(v12 + 288), v14, 3);
  *(&v10 + 1) = vand_s8(*&vextq_s8(*(v12 + 352), *(v12 + 352), 8uLL), *&v10);
  v15 = vaddq_f32(*v12, vmulq_laneq_f32(vsubq_f32(*(v12 + 336), *v12), v14, 3));
  *(v12 + 96) = v10;
  *&v10 = vmul_laneq_f32(*&v13, v14, 3);
  v16 = *(this + 51);
  *(&v10 + 1) = vand_s8(*&vextq_s8(*(v16 + 352), *(v16 + 352), 8uLL), *&v10);
  *(v16 + 112) = v10;
  *(*(this + 51) + 128) = vbslq_s8(*(*(this + 51) + 352), vmulq_laneq_f32(0, v14, 3), *(*(this + 51) + 320));
  *(*(this + 51) + 144) = vbslq_s8(*(*(this + 51) + 352), v15, *(*(this + 51) + 336));
  v17 = *(this + 51);
  v18 = *(v17 + 304);
  v19 = *v17;
  v20 = *(v17 + 16);
  v21 = vdupq_lane_s32(*v20.f32, 1);
  v22 = vmulq_lane_f32(vsubq_f32(*(v17 + 336), *v17), *v20.f32, 1);
  v21.i64[0] = vextq_s8(v21, v21, 8uLL).u64[0];
  *&v10 = vmul_f32(*(v17 + 288), *v21.i8);
  *(&v10 + 1) = vand_s8(*&vextq_s8(*(v17 + 352), *(v17 + 352), 8uLL), *&v10);
  *(v17 + 160) = v10;
  *&v10 = vmul_f32(*&v18, *v21.i8);
  v23 = *(this + 51);
  *(&v10 + 1) = vand_s8(*&vextq_s8(*(v23 + 352), *(v23 + 352), 8uLL), *&v10);
  *(v23 + 176) = v10;
  *(*(this + 51) + 192) = vbslq_s8(*(*(this + 51) + 352), vdupq_lane_s32(*&vmulq_f32(v20, 0), 1), *(*(this + 51) + 320));
  *(*(this + 51) + 208) = vbslq_s8(*(*(this + 51) + 352), vaddq_f32(v19, v22), *(*(this + 51) + 336));
  v24 = *(this + 51);
  v25 = *(v24 + 304);
  v26 = *(v24 + 16);
  v27 = vaddq_f32(*v24, vmulq_n_f32(vsubq_f32(*(v24 + 336), *v24), *&v26));
  *&v10 = vmul_n_f32(*(v24 + 288), *&v26);
  *(&v10 + 1) = vand_s8(*&vextq_s8(*(v24 + 352), *(v24 + 352), 8uLL), *&v10);
  *(v24 + 224) = v10;
  *&v10 = vmul_n_f32(*&v25, *&v26);
  v28 = *(this + 51);
  *(&v10 + 1) = vand_s8(*&vextq_s8(*(v28 + 352), *(v28 + 352), 8uLL), *&v10);
  *(v28 + 240) = v10;
  *(*(this + 51) + 256) = vbslq_s8(*(*(this + 51) + 352), vmulq_n_f32(0, *&v26), *(*(this + 51) + 320));
  *(*(this + 51) + 272) = vbslq_s8(*(*(this + 51) + 352), v27, *(*(this + 51) + 336));
  return 0;
}

const char *HgcZoomBlur::GetProgram(HgcZoomBlur *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000046a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.1500000060, 0.1000000015, 0.2000000030, 0.2500000000);\n    const half4 c1 = half4(0.3000000119, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    r0 = r0*c0.xxxx;\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r1 = r1*c0.yyyy + r0;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r1 = r0*c0.zzzz + r1;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord4.xy);\n    r0 = r0*c0.wwww + r1;\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r1)*float4(c1.xxxx) + float4(r0);\n    return output;\n}\n//MD5=fc232b15:2f276203:cc91062b:883d9a91\n//SIG=00400000:00000000:00000000:00000001:0002:0000:0002:0000:0000:0000:003e:0000:0005:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000430\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.1500000060, 0.1000000015, 0.2000000030, 0.2500000000);\n    const float4 c1 = float4(0.3000000119, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    r0 = r0*c0.xxxx;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r1 = r1*c0.yyyy + r0;\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r1 = r0*c0.zzzz + r1;\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord4.xy);\n    r0 = r0*c0.wwww + r1;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r1*c1.xxxx + r0;\n    return output;\n}\n//MD5=19d15d43:ff823cb7:d72fe942:788f3172\n//SIG=00000000:00000000:00000000:00000000:0002:0000:0002:0000:0000:0000:003e:0000:0005:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000430\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.1500000060, 0.1000000015, 0.2000000030, 0.2500000000);\n    const defaultp vec4 c1 = vec4(0.3000000119, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord1.xy);\n    r0 = r0*c0.xxxx;\n    r1 = texture2D(hg_Texture0, hg_TexCoord2.xy);\n    r1 = r1*c0.yyyy + r0;\n    r0 = texture2D(hg_Texture0, hg_TexCoord3.xy);\n    r1 = r0*c0.zzzz + r1;\n    r0 = texture2D(hg_Texture0, hg_TexCoord4.xy);\n    r0 = r0*c0.wwww + r1;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r1*c1.xxxx + r0;\n}\n//MD5=ae0f0794:7111a765:7489048d:7d74bca9\n//SIG=00000000:00000000:00000000:00000000:0002:0000:0002:0000:0000:0000:0000:0000:0005:01:0:1:0\n";
  }
}

void sub_25FA6F0E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FA6F360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA6F3D0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA6F3C8);
}

uint64_t HgcZoomBlur::BindTexture(HgcZoomBlur *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  HGHandler::TexCoord(a2, 1, a3, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 32);
  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 96);
  HGHandler::TexCoord(a2, 3, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 160);
  HGHandler::TexCoord(a2, 4, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 224);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  v6 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
  result = 0;
  if (!v6)
  {
    (*(*a2 + 168))(a2);
    return 0;
  }

  return result;
}

uint64_t HgcZoomBlur::RenderTile(float32x4_t **this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = ((*this)[19].i64[1])(this, v4);
  v6 = *(a2 + 1);
  v7 = (*(a2 + 3) - v6);
  if (v7 >= 1)
  {
    v8 = 0;
    v9 = *a2 + 0.5;
    v10 = this[51];
    v11 = vmulq_n_f32(v10[6], v9);
    v13.f32[0] = v9;
    v13.f32[1] = v6 + 0.5;
    v13.i32[2] = 0;
    v12 = vmulq_n_f32(v10[10], v9);
    v13.i32[3] = 1.0;
    v14 = vmulq_n_f32(v10[14], v9);
    v15 = 0uLL;
    v16 = vaddq_f32(v10[5], vaddq_f32(vaddq_f32(vmulq_n_f32(v10[2], v9), vmulq_n_f32(v10[3], v13.f32[1])), vmulq_f32(v10[4], 0)));
    v17 = vaddq_f32(v10[9], vaddq_f32(vaddq_f32(v11, vmulq_n_f32(v10[7], v13.f32[1])), vmulq_f32(v10[8], 0)));
    v18 = vaddq_f32(v10[13], vaddq_f32(vaddq_f32(v12, vmulq_n_f32(v10[11], v13.f32[1])), vmulq_f32(v10[12], 0)));
    v19 = *(a2 + 2) - *a2;
    v20 = *(a2 + 10);
    v21 = vaddq_f32(v10[17], vaddq_f32(vaddq_f32(v14, vmulq_n_f32(v10[15], v13.f32[1])), vmulq_f32(v10[16], 0)));
    v22 = *(a2 + 22);
    v23 = *(a2 + 6);
    v24 = *(a2 + 2);
    v25 = v20 + 1;
    v26 = v24 + 1;
    v27.i64[0] = 0x4000000040000000;
    v27.i64[1] = 0x4000000040000000;
    v28.i64[0] = 0x3F0000003F000000;
    v28.i64[1] = 0x3F0000003F000000;
    do
    {
      v29 = this[51];
      v30 = vaddq_f32(v16, vmulq_f32(v15, v29[3]));
      v31 = vaddq_f32(v17, vmulq_f32(v15, v29[7]));
      v32 = vaddq_f32(v18, vmulq_f32(v15, v29[11]));
      v33 = vaddq_f32(v21, vmulq_f32(v15, v29[15]));
      if (v19 < 2)
      {
        v34 = 0;
        v35 = 0uLL;
      }

      else
      {
        v34 = 0;
        v35 = 0uLL;
        v36 = v26;
        v37 = v25;
        v38 = v19;
        do
        {
          v39 = this[51];
          v40 = v39[2];
          v41 = vaddq_f32(v30, vmulq_f32(v35, v40));
          v42 = v39[6];
          v43 = vaddq_f32(v31, vmulq_f32(v35, v42));
          v44 = vaddq_f32(v40, v41);
          v45 = vaddq_f32(v42, v43);
          v46 = *(a2 + 22);
          v47 = vsubq_f32(v41, v13);
          v48 = *(a2 + 10);
          if (v5)
          {
            v49 = vaddq_s32(vcvtq_s32_f32(v47), vcltzq_f32(v47));
            v50 = vsubq_f32(v47, vcvtq_f32_s32(v49)).u64[0];
            v51 = vsubq_f32(v44, v13);
            v52 = vaddq_s32(vcvtq_s32_f32(v51), vcltzq_f32(v51));
            v51.i64[0] = vsubq_f32(v51, vcvtq_f32_s32(v52)).u64[0];
            v53 = vdup_n_s32(v46);
            *v49.i8 = vmla_s32(vzip1_s32(*v49.i8, *v52.i8), vzip2_s32(*v49.i8, *v52.i8), v53);
            v54 = v49.i32[1];
            v55 = (v48 + 16 * v49.i32[0]);
            v56 = vaddq_f32(*v55, vmulq_n_f32(vsubq_f32(v55[1], *v55), v50.f32[0]));
            v57 = vaddq_f32(v56, vmulq_lane_f32(vsubq_f32(vaddq_f32(v55[v46], vmulq_n_f32(vsubq_f32(v55[v46 + 1], v55[v46]), v50.f32[0])), v56), v50, 1));
            v58 = (v48 + 16 * v54);
            v59 = vaddq_f32(*v58, vmulq_n_f32(vsubq_f32(v58[1], *v58), v51.f32[0]));
            v60 = vaddq_f32(v59, vmulq_lane_f32(vsubq_f32(vaddq_f32(v58[v46], vmulq_n_f32(vsubq_f32(v58[v46 + 1], v58[v46]), v51.f32[0])), v59), *v51.f32, 1));
            v61 = v39[23];
            v62 = vmulq_f32(v57, v61);
            v63 = vmulq_f32(v61, v60);
            v64 = vsubq_f32(v43, v13);
            v65 = vaddq_s32(vcvtq_s32_f32(v64), vcltzq_f32(v64));
            v64.i64[0] = vsubq_f32(v64, vcvtq_f32_s32(v65)).u64[0];
            v66 = vsubq_f32(v45, v13);
            v67 = vaddq_s32(vcvtq_s32_f32(v66), vcltzq_f32(v66));
            *v65.i8 = vmla_s32(vzip1_s32(*v65.i8, *v67.i8), vzip2_s32(*v65.i8, *v67.i8), v53);
            v68 = (v48 + 16 * v65.i32[0]);
            v67.i64[0] = vsubq_f32(v66, vcvtq_f32_s32(v67)).u64[0];
            v69 = vaddq_f32(*v68, vmulq_n_f32(vsubq_f32(v68[1], *v68), v64.f32[0]));
            v70 = vaddq_f32(v69, vmulq_lane_f32(vsubq_f32(vaddq_f32(v68[v46], vmulq_n_f32(vsubq_f32(v68[v46 + 1], v68[v46]), v64.f32[0])), v69), *v64.f32, 1));
            v71 = (v48 + 16 * v65.i32[1]);
            v72 = vaddq_f32(*v71, vmulq_n_f32(vsubq_f32(v71[1], *v71), *v67.i32));
            v73 = vaddq_f32(v72, vmulq_lane_f32(vsubq_f32(vaddq_f32(v71[v46], vmulq_n_f32(vsubq_f32(v71[v46 + 1], v71[v46]), *v67.i32)), v72), *v67.i8, 1));
          }

          else
          {
            v74 = vaddq_f32(v47, v28);
            v75 = vcvtq_s32_f32(v74);
            v76 = vaddq_f32(vsubq_f32(v44, v13), v28);
            v77 = vcvtq_s32_f32(v76);
            *v74.f32 = vadd_s32(*v75.i8, *&vcgtq_f32(vcvtq_f32_s32(v75), v74));
            *v76.f32 = vadd_s32(*v77.i8, *&vcgtq_f32(vcvtq_f32_s32(v77), v76));
            *v75.i8 = vdup_n_s32(v46);
            *v76.f32 = vmla_s32(vzip1_s32(*v74.f32, *v76.f32), vzip2_s32(*v74.f32, *v76.f32), *v75.i8);
            v78 = *(v48 + 16 * v76.i32[1]);
            v79 = vaddq_f32(vsubq_f32(v43, v13), v28);
            v80 = vcvtq_s32_f32(v79);
            v81 = vaddq_f32(vsubq_f32(v45, v13), v28);
            v82 = vcvtq_s32_f32(v81);
            *v81.f32 = vadd_s32(*v82.i8, *&vcgtq_f32(vcvtq_f32_s32(v82), v81));
            *v79.f32 = vadd_s32(*v80.i8, *&vcgtq_f32(vcvtq_f32_s32(v80), v79));
            *v81.f32 = vmla_s32(vzip1_s32(*v79.f32, *v81.f32), vzip2_s32(*v79.f32, *v81.f32), *v75.i8);
            v83 = v81.i32[1];
            v70 = *(v48 + 16 * v81.i32[0]);
            v84 = v39[23];
            v62 = vmulq_f32(*(v48 + 16 * v76.i32[0]), v84);
            v63 = vmulq_f32(v78, v84);
            v73 = *(v48 + 16 * v83);
          }

          v85 = v39[10];
          v86 = vaddq_f32(v32, vmulq_f32(v35, v85));
          v87 = v39[14];
          v88 = vaddq_f32(v33, vmulq_f32(v35, v87));
          v89 = vaddq_f32(v85, v86);
          v90 = vaddq_f32(v87, v88);
          v91 = v39[24];
          v92 = vsubq_f32(v86, v13);
          if (v5)
          {
            v93 = vaddq_s32(vcvtq_s32_f32(v92), vcltzq_f32(v92));
            v94 = vsubq_f32(v92, vcvtq_f32_s32(v93)).u64[0];
            v95 = vsubq_f32(v89, v13);
            v96 = vaddq_s32(vcvtq_s32_f32(v95), vcltzq_f32(v95));
            v97 = vsubq_f32(v95, vcvtq_f32_s32(v96)).u64[0];
            *v95.f32 = vdup_n_s32(v46);
            *v93.i8 = vmla_s32(vzip1_s32(*v93.i8, *v96.i8), vzip2_s32(*v93.i8, *v96.i8), *v95.f32);
            v98 = v93.i32[1];
            v99 = (v48 + 16 * v93.i32[0]);
            v100 = vaddq_f32(*v99, vmulq_n_f32(vsubq_f32(v99[1], *v99), v94.f32[0]));
            v101 = vaddq_f32(v100, vmulq_lane_f32(vsubq_f32(vaddq_f32(v99[v46], vmulq_n_f32(vsubq_f32(v99[v46 + 1], v99[v46]), v94.f32[0])), v100), v94, 1));
            v102 = (v48 + 16 * v98);
            v103 = vaddq_f32(*v102, vmulq_n_f32(vsubq_f32(v102[1], *v102), v97.f32[0]));
            v104 = vaddq_f32(v103, vmulq_lane_f32(vsubq_f32(vaddq_f32(v102[v46], vmulq_n_f32(vsubq_f32(v102[v46 + 1], v102[v46]), v97.f32[0])), v103), v97, 1));
            v105 = vsubq_f32(v88, v13);
            v106 = vaddq_s32(vcvtq_s32_f32(v105), vcltzq_f32(v105));
            v107 = vcvtq_f32_s32(v106);
            v108 = vsubq_f32(v90, v13);
            v109 = vaddq_s32(vcvtq_s32_f32(v108), vcltzq_f32(v108));
            *v106.i8 = vmla_s32(vzip1_s32(*v106.i8, *v109.i8), vzip2_s32(*v106.i8, *v109.i8), *v95.f32);
            v95.i64[0] = vsubq_f32(v105, v107).u64[0];
            v110 = (v48 + 16 * v106.i32[0]);
            v111 = vmulq_laneq_f32(v101, v91, 2);
            v112 = vmulq_laneq_f32(v104, v91, 2);
            v101.i64[0] = vsubq_f32(v108, vcvtq_f32_s32(v109)).u64[0];
            v113 = vaddq_f32(*v110, vmulq_n_f32(vsubq_f32(v110[1], *v110), v95.f32[0]));
            v114 = vaddq_f32(v113, vmulq_lane_f32(vsubq_f32(vaddq_f32(v110[v46], vmulq_n_f32(vsubq_f32(v110[v46 + 1], v110[v46]), v95.f32[0])), v113), *v95.f32, 1));
            v115 = (v48 + 16 * v106.i32[1]);
            v116 = vaddq_f32(*v115, vmulq_n_f32(vsubq_f32(v115[1], *v115), v101.f32[0]));
            v117 = vaddq_f32(v116, vmulq_lane_f32(vsubq_f32(vaddq_f32(v115[v46], vmulq_n_f32(vsubq_f32(v115[v46 + 1], v115[v46]), v101.f32[0])), v116), *v101.f32, 1));
          }

          else
          {
            v118 = vaddq_f32(v92, v28);
            v119 = vcvtq_s32_f32(v118);
            v120 = vaddq_f32(vsubq_f32(v89, v13), v28);
            v121 = vcvtq_s32_f32(v120);
            *v118.f32 = vadd_s32(*v119.i8, *&vcgtq_f32(vcvtq_f32_s32(v119), v118));
            *v120.f32 = vadd_s32(*v121.i8, *&vcgtq_f32(vcvtq_f32_s32(v121), v120));
            *v121.i8 = vdup_n_s32(v46);
            *v120.f32 = vmla_s32(vzip1_s32(*v118.f32, *v120.f32), vzip2_s32(*v118.f32, *v120.f32), *v121.i8);
            v122 = *(v48 + 16 * v120.i32[0]);
            v123 = *(v48 + 16 * v120.i32[1]);
            v124 = vaddq_f32(vsubq_f32(v88, v13), v28);
            v125 = vcvtq_s32_f32(v124);
            v126 = vaddq_f32(vsubq_f32(v90, v13), v28);
            v127 = vcvtq_s32_f32(v126);
            *v126.f32 = vadd_s32(*v127.i8, *&vcgtq_f32(vcvtq_f32_s32(v127), v126));
            *v124.f32 = vadd_s32(*v125.i8, *&vcgtq_f32(vcvtq_f32_s32(v125), v124));
            *v126.f32 = vmla_s32(vzip1_s32(*v124.f32, *v126.f32), vzip2_s32(*v124.f32, *v126.f32), *v121.i8);
            v128 = v126.i32[1];
            v114 = *(v48 + 16 * v126.i32[0]);
            v111 = vmulq_laneq_f32(v122, v91, 2);
            v112 = vmulq_laneq_f32(v123, v91, 2);
            v117 = *(v48 + 16 * v128);
          }

          v35 = vaddq_f32(v35, v27);
          v129 = vaddq_f32(vaddq_f32(vaddq_f32(v62, vmulq_n_f32(v70, v91.f32[0])), v111), vmulq_laneq_f32(v114, v91, 3));
          v130 = vaddq_f32(vaddq_f32(vaddq_f32(v63, vmulq_n_f32(v73, v91.f32[0])), v112), vmulq_laneq_f32(v117, v91, 3));
          v131 = v39[25];
          v132 = vaddq_f32(v130, vmulq_n_f32(*v37, v131.f32[0]));
          v38 -= 2;
          v36[-1] = vaddq_f32(v129, vmulq_n_f32(v37[-1], v131.f32[0]));
          *v36 = v132;
          v37 += 2;
          v34 += 2;
          v36 += 2;
        }

        while (v38 > 1);
      }

      if (v34 < v19)
      {
        v133 = this[51];
        v134 = vaddq_f32(v30, vmulq_f32(v35, v133[2]));
        v135 = vaddq_f32(v31, vmulq_f32(v35, v133[6]));
        v136 = vaddq_f32(v32, vmulq_f32(v35, v133[10]));
        v137 = vaddq_f32(v33, vmulq_f32(v35, v133[14]));
        v138 = *(a2 + 22);
        v139 = vsubq_f32(v134, v13);
        v140 = *(a2 + 10);
        if (v5)
        {
          v141 = vaddq_s32(vcvtq_s32_f32(v139), vcltzq_f32(v139));
          v142 = vsubq_f32(v139, vcvtq_f32_s32(v141)).u64[0];
          v143 = vsubq_f32(v135, v13);
          v144 = vaddq_s32(vcvtq_s32_f32(v143), vcltzq_f32(v143));
          v145 = vsubq_f32(v143, vcvtq_f32_s32(v144)).u64[0];
          *v143.f32 = vdup_n_s32(v138);
          *v141.i8 = vmla_s32(vzip1_s32(*v141.i8, *v144.i8), vzip2_s32(*v141.i8, *v144.i8), *v143.f32);
          v146 = v141.i32[1];
          v147 = (v140 + 16 * v141.i32[0]);
          v148 = vaddq_f32(*v147, vmulq_n_f32(vsubq_f32(v147[1], *v147), v142.f32[0]));
          v149 = vaddq_f32(v148, vmulq_lane_f32(vsubq_f32(vaddq_f32(v147[v138], vmulq_n_f32(vsubq_f32(v147[v138 + 1], v147[v138]), v142.f32[0])), v148), v142, 1));
          v150 = v133[24];
          v151 = (v140 + 16 * v146);
          v152 = vaddq_f32(*v151, vmulq_n_f32(vsubq_f32(v151[1], *v151), v145.f32[0]));
          v153 = vaddq_f32(vmulq_f32(v133[23], v149), vmulq_n_f32(vaddq_f32(v152, vmulq_lane_f32(vsubq_f32(vaddq_f32(v151[v138], vmulq_n_f32(vsubq_f32(v151[v138 + 1], v151[v138]), v145.f32[0])), v152), v145, 1)), v150.f32[0]));
          v154 = vsubq_f32(v136, v13);
          v155 = vaddq_s32(vcvtq_s32_f32(v154), vcltzq_f32(v154));
          v156 = vsubq_f32(v137, v13);
          v157 = vaddq_s32(vcvtq_s32_f32(v156), vcltzq_f32(v156));
          v158 = vmla_s32(vzip1_s32(*v155.i8, *v157.i8), vzip2_s32(*v155.i8, *v157.i8), *v143.f32);
          v159 = (v140 + 16 * v158.i32[0]);
          v154.i64[0] = vsubq_f32(v154, vcvtq_f32_s32(v155)).u64[0];
          v160 = vextq_s8(v150, v150, 8uLL).u64[0];
          v155.i64[0] = vsubq_f32(v156, vcvtq_f32_s32(v157)).u64[0];
          v161 = vaddq_f32(*v159, vmulq_n_f32(vsubq_f32(v159[1], *v159), v154.f32[0]));
          v162 = vaddq_f32(v153, vmulq_laneq_f32(vaddq_f32(v161, vmulq_lane_f32(vsubq_f32(vaddq_f32(v159[v138], vmulq_n_f32(vsubq_f32(v159[v138 + 1], v159[v138]), v154.f32[0])), v161), *v154.f32, 1)), v150, 2));
          v163 = (v140 + 16 * v158.i32[1]);
          v164 = vaddq_f32(*v163, vmulq_n_f32(vsubq_f32(v163[1], *v163), *v155.i32));
          v165 = vaddq_f32(v164, vmulq_lane_f32(vsubq_f32(vaddq_f32(v163[v138], vmulq_n_f32(vsubq_f32(v163[v138 + 1], v163[v138]), *v155.i32)), v164), *v155.i8, 1));
        }

        else
        {
          v166 = vaddq_f32(v139, v28);
          v167 = vcvtq_s32_f32(v166);
          v168 = vaddq_f32(vsubq_f32(v135, v13), v28);
          v169 = vcvtq_s32_f32(v168);
          *v166.f32 = vadd_s32(*v167.i8, *&vcgtq_f32(vcvtq_f32_s32(v167), v166));
          *v167.i8 = vadd_s32(*v169.i8, *&vcgtq_f32(vcvtq_f32_s32(v169), v168));
          *v169.i8 = vdup_n_s32(v138);
          *v166.f32 = vmla_s32(vzip1_s32(*v166.f32, *v167.i8), vzip2_s32(*v166.f32, *v167.i8), *v169.i8);
          v170 = vaddq_f32(vsubq_f32(v136, v13), v28);
          v171 = vcvtq_s32_f32(v170);
          v172 = vaddq_f32(vsubq_f32(v137, v13), v28);
          v173 = vcvtq_s32_f32(v172);
          *v172.f32 = vadd_s32(*v173.i8, *&vcgtq_f32(vcvtq_f32_s32(v173), v172));
          *v170.f32 = vadd_s32(*v171.i8, *&vcgtq_f32(vcvtq_f32_s32(v171), v170));
          *v172.f32 = vmla_s32(vzip1_s32(*v170.f32, *v172.f32), vzip2_s32(*v170.f32, *v172.f32), *v169.i8);
          v174 = v172.i32[1];
          v175 = *(v140 + 16 * v172.i32[0]);
          v176 = v133[24];
          v160 = vextq_s8(v176, v176, 8uLL).u64[0];
          v162 = vaddq_f32(vaddq_f32(vmulq_f32(*(v140 + 16 * v166.i32[0]), v133[23]), vmulq_n_f32(*(v140 + 16 * v166.i32[1]), v176.f32[0])), vmulq_laneq_f32(v175, v176, 2));
          v165 = *(v140 + 16 * v174);
        }

        v24[v34] = vaddq_f32(vaddq_f32(v162, vmulq_lane_f32(v165, v160, 1)), vmulq_n_f32(v20[v8 * v22 + v34], COERCE_FLOAT(*&v133[25])));
      }

      __asm { FMOV            V16.4S, #1.0 }

      v15 = vaddq_f32(v15, _Q16);
      v24 += v23;
      ++v8;
      v25 += v22;
      v26 += v23;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcZoomBlur::GetDOD(HgcZoomBlur *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v8 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    v6 = HGRectGrow(v6, v5, v8);
    v5 = v9;
  }

  HGTransform::HGTransform(v36);
  HGTransform::LoadMatrixf(v36, (*(this + 51) + 32));
  HGTransform::Invert2D(v36);
  v11 = HGTransformUtils::MinW(v10);
  *&v37.var0 = v5;
  DOD = HGTransformUtils::GetDOD(v36, v6, v37, 0.5, v11);
  v14 = HGRectUnion(v6, v5, DOD, v13);
  v16 = v15;
  HGTransform::LoadMatrixf(v36, (*(this + 51) + 96));
  HGTransform::Invert2D(v36);
  v18 = HGTransformUtils::MinW(v17);
  *&v38.var0 = v5;
  v19 = HGTransformUtils::GetDOD(v36, v6, v38, 0.5, v18);
  v21 = HGRectUnion(v14, v16, v19, v20);
  v23 = v22;
  HGTransform::LoadMatrixf(v36, (*(this + 51) + 160));
  HGTransform::Invert2D(v36);
  v25 = HGTransformUtils::MinW(v24);
  *&v39.var0 = v5;
  v26 = HGTransformUtils::GetDOD(v36, v6, v39, 0.5, v25);
  v28 = HGRectUnion(v21, v23, v26, v27);
  v30 = v29;
  HGTransform::LoadMatrixf(v36, (*(this + 51) + 224));
  HGTransform::Invert2D(v36);
  v32 = HGTransformUtils::MinW(v31);
  *&v40.var0 = v5;
  v33 = HGTransformUtils::GetDOD(v36, v6, v40, 0.5, v32);
  v4 = HGRectUnion(v28, v30, v33, v34);
  HGTransform::~HGTransform(v36);
  return v4;
}

uint64_t HgcZoomBlur::GetROI(HgcZoomBlur *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  HGTransform::HGTransform(v38);
  HGTransform::LoadMatrixf(v38, (*(this + 51) + 32));
  v10 = HGTransformUtils::MinW(v9);
  *&v39.var0 = v5;
  ROI = HGTransformUtils::GetROI(v38, v6, v39, 0.5, v10);
  v13 = HGRectUnion(v6, v5, ROI, v12);
  v15 = v14;
  HGTransform::LoadMatrixf(v38, (*(this + 51) + 96));
  v17 = HGTransformUtils::MinW(v16);
  *&v40.var0 = v5;
  v18 = HGTransformUtils::GetROI(v38, v6, v40, 0.5, v17);
  v20 = HGRectUnion(v13, v15, v18, v19);
  v22 = v21;
  HGTransform::LoadMatrixf(v38, (*(this + 51) + 160));
  v24 = HGTransformUtils::MinW(v23);
  *&v41.var0 = v5;
  v25 = HGTransformUtils::GetROI(v38, v6, v41, 0.5, v24);
  v27 = HGRectUnion(v20, v22, v25, v26);
  v29 = v28;
  HGTransform::LoadMatrixf(v38, (*(this + 51) + 224));
  v31 = HGTransformUtils::MinW(v30);
  *&v42.var0 = v5;
  v32 = HGTransformUtils::GetROI(v38, v6, v42, 0.5, v31);
  v4 = HGRectUnion(v27, v29, v32, v33);
  v35 = v34;
  HGTransform::~HGTransform(v38);
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v36 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(v4, v35, v36);
  }

  return v4;
}

void HgcZoomBlur::HgcZoomBlur(HgcZoomBlur *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DFD90;
  *(v1 + 416) = 1;
  operator new();
}

void sub_25FA705B0(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x1000C407DC911DDLL);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HgcZoomBlur::~HgcZoomBlur(HGNode *this)
{
  *this = &unk_2871DFD90;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C407DC911DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcZoomBlur::~HgcZoomBlur(this);

  HGObject::operator delete(v1);
}

uint64_t HgcZoomBlur::SetParameter(HgcZoomBlur *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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
  v8 = 1;
  *(this + 104) = 1;
  HGNode::ClearBits(this, a2, a7);
  return v8;
}

uint64_t HgcZoomBlur::GetParameter(HgcZoomBlur *this, unsigned int a2, float *a3)
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

HgcZoomBlur *HgcZoomBlur::GetOutput(HgcZoomBlur *this, void *a2)
{
  if (*(this + 104))
  {
    HgcZoomBlur::Setup(this, a2);
    *(this + 104) = 0;
  }

  return this;
}

double HgcZoomBlur::State::State(HgcZoomBlur::State *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = xmmword_2603429B0;
  *(this + 3) = xmmword_2603429C0;
  *(this + 4) = xmmword_2603429D0;
  *(this + 5) = xmmword_2603427D0;
  *(this + 6) = xmmword_2603429B0;
  *(this + 7) = xmmword_2603429C0;
  *(this + 8) = xmmword_2603429D0;
  *(this + 9) = xmmword_2603427D0;
  *(this + 10) = xmmword_2603429B0;
  *(this + 11) = xmmword_2603429C0;
  *(this + 12) = xmmword_2603429D0;
  *(this + 13) = xmmword_2603427D0;
  *(this + 14) = xmmword_2603429B0;
  *(this + 15) = xmmword_2603429C0;
  *(this + 16) = xmmword_2603429D0;
  *(this + 17) = xmmword_2603427D0;
  *(this + 18) = xmmword_2603429B0;
  *(this + 19) = xmmword_2603429C0;
  *(this + 20) = xmmword_2603429D0;
  *(this + 21) = xmmword_2603427D0;
  *(this + 22) = xmmword_260344610;
  *(this + 23) = vdupq_n_s32(0x3E19999Au);
  *&result = 1036831949;
  *(this + 24) = xmmword_2603457F0;
  *(this + 25) = xmmword_260345800;
  return result;
}

uint64_t HgcConvolvePass8tapPoint::Setup(HgcConvolvePass8tapPoint *this, void *a2)
{
  v2 = *(this + 51);
  v3 = v2[50];
  v4 = v2[16];
  v5 = *v2;
  *&v6 = vmul_f32(v2[49], *v2);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v2 + 53), *(v2 + 53), 8uLL), *&v6);
  v7 = vmulq_f32(*v2, 0);
  v8 = vmulq_f32(vsubq_f32(*(v2 + 52), v4), *v2);
  v2[17] = v6;
  *&v6 = vmul_f32(*&v3, *v5.i8);
  v9 = *(this + 51);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v9 + 848), *(v9 + 848), 8uLL), *&v6);
  *(v9 + 288) = v6;
  *(*(this + 51) + 304) = vbslq_s8(*(*(this + 51) + 848), v7, *(*(this + 51) + 816));
  *(*(this + 51) + 320) = vbslq_s8(*(*(this + 51) + 848), vaddq_f32(v4, v8), *(*(this + 51) + 832));
  v10 = *(this + 51);
  v11 = *(v10 + 800);
  v12 = *(v10 + 16);
  v13 = vaddq_f32(*(v10 + 256), vmulq_f32(vsubq_f32(*(v10 + 832), *(v10 + 256)), v12));
  *&v6 = vmul_f32(*(v10 + 784), *v12.f32);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v10 + 848), *(v10 + 848), 8uLL), *&v6);
  *(v10 + 336) = v6;
  *&v6 = vmul_f32(*&v11, *v12.f32);
  v14 = *(this + 51);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v14 + 848), *(v14 + 848), 8uLL), *&v6);
  *(v14 + 352) = v6;
  *(*(this + 51) + 368) = vbslq_s8(*(*(this + 51) + 848), vmulq_f32(v12, 0), *(*(this + 51) + 816));
  *(*(this + 51) + 384) = vbslq_s8(*(*(this + 51) + 848), v13, *(*(this + 51) + 832));
  v15 = *(this + 51);
  v16 = *(v15 + 800);
  v17 = *(v15 + 32);
  v18 = vaddq_f32(*(v15 + 256), vmulq_f32(vsubq_f32(*(v15 + 832), *(v15 + 256)), v17));
  *&v6 = vmul_f32(*(v15 + 784), *v17.f32);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v15 + 848), *(v15 + 848), 8uLL), *&v6);
  *(v15 + 400) = v6;
  *&v6 = vmul_f32(*&v16, *v17.f32);
  v19 = *(this + 51);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v19 + 848), *(v19 + 848), 8uLL), *&v6);
  *(v19 + 416) = v6;
  *(*(this + 51) + 432) = vbslq_s8(*(*(this + 51) + 848), vmulq_f32(v17, 0), *(*(this + 51) + 816));
  *(*(this + 51) + 448) = vbslq_s8(*(*(this + 51) + 848), v18, *(*(this + 51) + 832));
  v20 = *(this + 51);
  v21 = *(v20 + 800);
  v22 = *(v20 + 48);
  v23 = vaddq_f32(*(v20 + 256), vmulq_f32(vsubq_f32(*(v20 + 832), *(v20 + 256)), v22));
  *&v6 = vmul_f32(*(v20 + 784), *v22.f32);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v20 + 848), *(v20 + 848), 8uLL), *&v6);
  *(v20 + 464) = v6;
  *&v6 = vmul_f32(*&v21, *v22.f32);
  v24 = *(this + 51);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v24 + 848), *(v24 + 848), 8uLL), *&v6);
  *(v24 + 480) = v6;
  *(*(this + 51) + 496) = vbslq_s8(*(*(this + 51) + 848), vmulq_f32(v22, 0), *(*(this + 51) + 816));
  *(*(this + 51) + 512) = vbslq_s8(*(*(this + 51) + 848), v23, *(*(this + 51) + 832));
  v25 = *(this + 51);
  v26 = *(v25 + 800);
  v27 = *(v25 + 64);
  *&v6 = vmul_f32(*(v25 + 784), *v27.f32);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v25 + 848), *(v25 + 848), 8uLL), *&v6);
  v28 = vaddq_f32(*(v25 + 256), vmulq_f32(vsubq_f32(*(v25 + 832), *(v25 + 256)), v27));
  *(v25 + 528) = v6;
  *&v6 = vmul_f32(*&v26, *v27.f32);
  v29 = *(this + 51);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v29 + 848), *(v29 + 848), 8uLL), *&v6);
  *(v29 + 544) = v6;
  *(*(this + 51) + 560) = vbslq_s8(*(*(this + 51) + 848), vmulq_f32(v27, 0), *(*(this + 51) + 816));
  *(*(this + 51) + 576) = vbslq_s8(*(*(this + 51) + 848), v28, *(*(this + 51) + 832));
  v30 = *(this + 51);
  v31 = *(v30 + 800);
  v32 = *(v30 + 80);
  v33 = vaddq_f32(*(v30 + 256), vmulq_f32(vsubq_f32(*(v30 + 832), *(v30 + 256)), v32));
  *&v6 = vmul_f32(*(v30 + 784), *v32.f32);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v30 + 848), *(v30 + 848), 8uLL), *&v6);
  *(v30 + 592) = v6;
  *&v6 = vmul_f32(*&v31, *v32.f32);
  v34 = *(this + 51);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v34 + 848), *(v34 + 848), 8uLL), *&v6);
  *(v34 + 608) = v6;
  *(*(this + 51) + 624) = vbslq_s8(*(*(this + 51) + 848), vmulq_f32(v32, 0), *(*(this + 51) + 816));
  *(*(this + 51) + 640) = vbslq_s8(*(*(this + 51) + 848), v33, *(*(this + 51) + 832));
  v35 = *(this + 51);
  v36 = *(v35 + 800);
  v37 = *(v35 + 256);
  v38 = *(v35 + 96);
  *&v6 = vmul_f32(*(v35 + 784), *v38.f32);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v35 + 848), *(v35 + 848), 8uLL), *&v6);
  v39 = vmulq_f32(vsubq_f32(*(v35 + 832), v37), v38);
  *(v35 + 656) = v6;
  *&v6 = vmul_f32(*&v36, *v38.f32);
  v40 = *(this + 51);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v40 + 848), *(v40 + 848), 8uLL), *&v6);
  *(v40 + 672) = v6;
  *(*(this + 51) + 688) = vbslq_s8(*(*(this + 51) + 848), vmulq_f32(v38, 0), *(*(this + 51) + 816));
  *(*(this + 51) + 704) = vbslq_s8(*(*(this + 51) + 848), vaddq_f32(v37, v39), *(*(this + 51) + 832));
  v41 = *(this + 51);
  v42 = *(v41 + 800);
  v43 = *(v41 + 112);
  v44 = vaddq_f32(*(v41 + 256), vmulq_f32(vsubq_f32(*(v41 + 832), *(v41 + 256)), v43));
  *&v6 = vmul_f32(*(v41 + 784), *v43.f32);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v41 + 848), *(v41 + 848), 8uLL), *&v6);
  *(v41 + 720) = v6;
  *&v6 = vmul_f32(*&v42, *v43.f32);
  v45 = *(this + 51);
  *(&v6 + 1) = vand_s8(*&vextq_s8(*(v45 + 848), *(v45 + 848), 8uLL), *&v6);
  *(v45 + 736) = v6;
  *(*(this + 51) + 752) = vbslq_s8(*(*(this + 51) + 848), vmulq_f32(v43, 0), *(*(this + 51) + 816));
  *(*(this + 51) + 768) = vbslq_s8(*(*(this + 51) + 848), v44, *(*(this + 51) + 832));
  return 0;
}

const char *HgcConvolvePass8tapPoint::GetProgram(HgcConvolvePass8tapPoint *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000554\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord4.xy);\n    r5 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord5.xy);\n    r6 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord6.xy);\n    r7 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord7.xy);\n    r0 = half4(hg_Params[8])*r0;\n    r0 = half4(hg_Params[9])*r1 + r0;\n    r0 = half4(hg_Params[10])*r2 + r0;\n    r0 = half4(hg_Params[11])*r3 + r0;\n    r0 = half4(hg_Params[12])*r4 + r0;\n    r0 = half4(hg_Params[13])*r5 + r0;\n    r0 = half4(hg_Params[14])*r6 + r0;\n    output.color0 = hg_Params[15]*float4(r7) + float4(r0);\n    return output;\n}\n//MD5=8765b539:97ccd79e:9caee91b:e14d6e48\n//SIG=00400000:00000000:00000000:00000001:0000:0010:0008:0000:0000:0000:01fe:0000:0008:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004d5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r3 = hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r4 = hg_Texture0.sample(hg_Sampler0, frag._texCoord4.xy);\n    r5 = hg_Texture0.sample(hg_Sampler0, frag._texCoord5.xy);\n    r6 = hg_Texture0.sample(hg_Sampler0, frag._texCoord6.xy);\n    r7 = hg_Texture0.sample(hg_Sampler0, frag._texCoord7.xy);\n    r0 = hg_Params[8]*r0;\n    r0 = hg_Params[9]*r1 + r0;\n    r0 = hg_Params[10]*r2 + r0;\n    r0 = hg_Params[11]*r3 + r0;\n    r0 = hg_Params[12]*r4 + r0;\n    r0 = hg_Params[13]*r5 + r0;\n    r0 = hg_Params[14]*r6 + r0;\n    output.color0 = hg_Params[15]*r7 + r0;\n    return output;\n}\n//MD5=5c030f28:c308b641:a58af8f8:2afac759\n//SIG=00000000:00000000:00000000:00000000:0000:0010:0008:0000:0000:0000:01fe:0000:0008:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000007b0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nuniform defaultp vec4 hg_ProgramLocal7;\nuniform defaultp vec4 hg_ProgramLocal8;\nuniform defaultp vec4 hg_ProgramLocal9;\nuniform defaultp vec4 hg_ProgramLocal10;\nuniform defaultp vec4 hg_ProgramLocal11;\nuniform defaultp vec4 hg_ProgramLocal12;\nuniform defaultp vec4 hg_ProgramLocal13;\nuniform defaultp vec4 hg_ProgramLocal14;\nuniform defaultp vec4 hg_ProgramLocal15;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvarying highp vec4 hg_TexCoord6;\nvarying highp vec4 hg_TexCoord7;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3, r4, r5, r6, r7;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture0, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture0, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture0, hg_TexCoord4.xy);\n    r5 = texture2D(hg_Texture0, hg_TexCoord5.xy);\n    r6 = texture2D(hg_Texture0, hg_TexCoord6.xy);\n    r7 = texture2D(hg_Texture0, hg_TexCoord7.xy);\n    r0 = hg_ProgramLocal8*r0;\n    r0 = hg_ProgramLocal9*r1 + r0;\n    r0 = hg_ProgramLocal10*r2 + r0;\n    r0 = hg_ProgramLocal11*r3 + r0;\n    r0 = hg_ProgramLocal12*r4 + r0;\n    r0 = hg_ProgramLocal13*r5 + r0;\n    r0 = hg_ProgramLocal14*r6 + r0;\n    gl_FragColor = hg_ProgramLocal15*r7 + r0;\n}\n//MD5=4a3878a3:975389dc:09d027a2:b42b0281\n//SIG=00000000:00000000:00000000:00000000:0000:0010:0008:0000:0000:0000:0000:0000:0008:01:0:1:0\n";
  }
}

void sub_25FA70CE0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260345820;
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

void sub_25FA71020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA710A8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA710A0);
}

uint64_t HgcConvolvePass8tapPoint::BindTexture(HgcConvolvePass8tapPoint *this, HGHandler *a2, int a3)
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

  (*(*a2 + 120))(a2, *(this + 51) + 272);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 336);
  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 400);
  HGHandler::TexCoord(a2, 3, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 464);
  HGHandler::TexCoord(a2, 4, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 528);
  HGHandler::TexCoord(a2, 5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 592);
  HGHandler::TexCoord(a2, 6, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 656);
  HGHandler::TexCoord(a2, 7, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 720);
  return 0;
}

uint64_t HgcConvolvePass8tapPoint::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a2 + 144))(a2, 4, a1[51] + 64, 1);
  (*(*a2 + 144))(a2, 5, a1[51] + 80, 1);
  (*(*a2 + 144))(a2, 6, a1[51] + 96, 1);
  (*(*a2 + 144))(a2, 7, a1[51] + 112, 1);
  (*(*a2 + 144))(a2, 8, a1[51] + 128, 1);
  (*(*a2 + 144))(a2, 9, a1[51] + 144, 1);
  (*(*a2 + 144))(a2, 10, a1[51] + 160, 1);
  (*(*a2 + 144))(a2, 11, a1[51] + 176, 1);
  (*(*a2 + 144))(a2, 12, a1[51] + 192, 1);
  (*(*a2 + 144))(a2, 13, a1[51] + 208, 1);
  (*(*a2 + 144))(a2, 14, a1[51] + 224, 1);
  (*(*a2 + 144))(a2, 15, a1[51] + 240, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcConvolvePass8tapPoint::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *a2 + 0.5;
    v6 = v2 + 0.5;
    v7 = *(a1 + 408);
    v8 = vmulq_n_f32(v7[21], v5);
    v9 = vmulq_n_f32(v7[25], v5);
    v10 = vmulq_n_f32(v7[29], v5);
    v11 = vmulq_n_f32(v7[33], v5);
    v12 = vmulq_n_f32(v7[37], v5);
    v14.f32[0] = v5;
    v14.f32[1] = v6;
    v14.i32[2] = 0;
    v13 = vmulq_n_f32(v7[41], v5);
    v14.i32[3] = 1.0;
    v15 = vmulq_n_f32(v7[45], v5);
    v16 = vaddq_f32(vmulq_n_f32(v7[17], v5), vmulq_n_f32(v7[18], v6));
    v17 = 0uLL;
    v73 = vaddq_f32(v7[20], vaddq_f32(v16, vmulq_f32(v7[19], 0)));
    v18 = vaddq_f32(v7[24], vaddq_f32(vaddq_f32(v8, vmulq_n_f32(v7[22], v6)), vmulq_f32(v7[23], 0)));
    v19 = vaddq_f32(v7[28], vaddq_f32(vaddq_f32(v9, vmulq_n_f32(v7[26], v6)), vmulq_f32(v7[27], 0)));
    v20 = vaddq_f32(v7[32], vaddq_f32(vaddq_f32(v10, vmulq_n_f32(v7[30], v6)), vmulq_f32(v7[31], 0)));
    v21 = vaddq_f32(v7[36], vaddq_f32(vaddq_f32(v11, vmulq_n_f32(v7[34], v6)), vmulq_f32(v7[35], 0)));
    v22 = vaddq_f32(v7[40], vaddq_f32(vaddq_f32(v12, vmulq_n_f32(v7[38], v6)), vmulq_f32(v7[39], 0)));
    v23 = vaddq_f32(v7[44], vaddq_f32(vaddq_f32(v13, vmulq_n_f32(v7[42], v6)), vmulq_f32(v7[43], 0)));
    v24 = vaddq_f32(v7[48], vaddq_f32(vaddq_f32(v15, vmulq_n_f32(v7[46], v6)), vmulq_f32(v7[47], 0)));
    v25 = *(a2 + 8) - *a2;
    v26 = *(a2 + 16);
    v27 = 16 * *(a2 + 24);
    v28.i64[0] = 0x3F0000003F000000;
    v28.i64[1] = 0x3F0000003F000000;
    __asm { FMOV            V19.4S, #1.0 }

    do
    {
      if (v25 >= 1)
      {
        v34 = 0;
        v35 = *(a1 + 408);
        v36 = vaddq_f32(v73, vmulq_f32(v17, v35[18]));
        v37 = vaddq_f32(v18, vmulq_f32(v17, v35[22]));
        v38 = vaddq_f32(v19, vmulq_f32(v17, v35[26]));
        v39 = vaddq_f32(v20, vmulq_f32(v17, v35[30]));
        v40 = vaddq_f32(v21, vmulq_f32(v17, v35[34]));
        v41 = vaddq_f32(v22, vmulq_f32(v17, v35[38]));
        v42 = vaddq_f32(v23, vmulq_f32(v17, v35[42]));
        v43 = vaddq_f32(v24, vmulq_f32(v17, v35[46]));
        v44 = 0uLL;
        do
        {
          v45 = *(a1 + 408);
          v46 = (a2 + 88);
          v47 = vaddq_f32(vsubq_f32(vaddq_f32(v36, vmulq_f32(v44, v45[17])), v14), v28);
          v48 = vcvtq_s32_f32(v47);
          v49 = *(a2 + 80);
          v50 = vaddq_f32(vsubq_f32(vaddq_f32(v37, vmulq_f32(v44, v45[21])), v14), v28);
          v51 = vcvtq_s32_f32(v50);
          *v50.f32 = vadd_s32(*v51.i8, *&vcgtq_f32(vcvtq_f32_s32(v51), v50));
          *v48.i8 = vadd_s32(*v48.i8, *&vcgtq_f32(vcvtq_f32_s32(v48), v47));
          *v47.f32 = vld1_dup_f32(v46);
          v52 = vaddq_f32(vsubq_f32(vaddq_f32(v38, vmulq_f32(v44, v45[25])), v14), v28);
          v53 = vcvtq_s32_f32(v52);
          v54 = vcgtq_f32(vcvtq_f32_s32(v53), v52).u64[0];
          v55 = vaddq_f32(vsubq_f32(vaddq_f32(v39, vmulq_f32(v44, v45[29])), v14), v28);
          v56 = vcvtq_s32_f32(v55);
          *v55.f32 = vadd_s32(*v56.i8, *&vcgtq_f32(vcvtq_f32_s32(v56), v55));
          v57 = vadd_s32(*v53.i8, v54);
          *v50.f32 = vmla_s32(vzip1_s32(*v48.i8, *v50.f32), vzip2_s32(*v48.i8, *v50.f32), *v47.f32);
          v58 = vmla_s32(vzip1_s32(v57, *v55.f32), vzip2_s32(v57, *v55.f32), *v47.f32);
          LODWORD(v46) = v50.i32[1];
          v59 = vaddq_f32(vsubq_f32(vaddq_f32(v40, vmulq_f32(v44, v45[33])), v14), v28);
          v60 = vcvtq_s32_f32(v59);
          v61 = v50.i32[0];
          v62 = vaddq_f32(vsubq_f32(vaddq_f32(v41, vmulq_f32(v44, v45[37])), v14), v28);
          v63 = vcvtq_s32_f32(v62);
          v64 = v58.i32[1];
          *v62.f32 = vadd_s32(*v63.i8, *&vcgtq_f32(vcvtq_f32_s32(v63), v62));
          *v59.f32 = vadd_s32(*v60.i8, *&vcgtq_f32(vcvtq_f32_s32(v60), v59));
          *v62.f32 = vmla_s32(vzip1_s32(*v59.f32, *v62.f32), vzip2_s32(*v59.f32, *v62.f32), *v47.f32);
          v65 = v58.i32[0];
          v66 = v62.i32[1];
          v67 = v62.i32[0];
          v68 = vaddq_f32(vsubq_f32(vaddq_f32(v42, vmulq_f32(v44, v45[41])), v14), v28);
          v69 = vcvtq_s32_f32(v68);
          v70 = vaddq_f32(vsubq_f32(vaddq_f32(v43, vmulq_f32(v44, v45[45])), v14), v28);
          v71 = vcvtq_s32_f32(v70);
          *v70.f32 = vadd_s32(*v71.i8, *&vcgtq_f32(vcvtq_f32_s32(v71), v70));
          *v68.f32 = vadd_s32(*v69.i8, *&vcgtq_f32(vcvtq_f32_s32(v69), v68));
          *v68.f32 = vmla_s32(vzip1_s32(*v68.f32, *v70.f32), vzip2_s32(*v68.f32, *v70.f32), *v47.f32);
          *(v26 + v34) = vaddq_f32(vmulq_f32(*(v49 + 16 * v68.i32[1]), v45[15]), vaddq_f32(vmulq_f32(*(v49 + 16 * v68.i32[0]), v45[14]), vaddq_f32(vmulq_f32(*(v49 + 16 * v66), v45[13]), vaddq_f32(vmulq_f32(*(v49 + 16 * v67), v45[12]), vaddq_f32(vmulq_f32(*(v49 + 16 * v64), v45[11]), vaddq_f32(vmulq_f32(*(v49 + 16 * v65), v45[10]), vaddq_f32(vmulq_f32(*(v49 + 16 * v61), v45[8]), vmulq_f32(*(v49 + 16 * v46), v45[9]))))))));
          v44 = vaddq_f32(v44, _Q19);
          v34 += 16;
        }

        while (16 * v25 != v34);
      }

      v17 = vaddq_f32(v17, _Q19);
      ++v4;
      v26 += v27;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcConvolvePass8tapPoint::GetDOD(HgcConvolvePass8tapPoint *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    HGTransform::HGTransform(v62);
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 272));
    HGTransform::Invert2D(v62);
    v9 = HGTransformUtils::MinW(v8);
    *&v63.var0 = v5;
    DOD = HGTransformUtils::GetDOD(v62, v6, v63, 0.5, v9);
    v12 = HGRectUnion(0, 0, DOD, v11);
    v14 = v13;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 336));
    HGTransform::Invert2D(v62);
    v16 = HGTransformUtils::MinW(v15);
    *&v64.var0 = v5;
    v17 = HGTransformUtils::GetDOD(v62, v6, v64, 0.5, v16);
    v19 = HGRectUnion(v12, v14, v17, v18);
    v21 = v20;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 400));
    HGTransform::Invert2D(v62);
    v23 = HGTransformUtils::MinW(v22);
    *&v65.var0 = v5;
    v24 = HGTransformUtils::GetDOD(v62, v6, v65, 0.5, v23);
    v26 = HGRectUnion(v19, v21, v24, v25);
    v28 = v27;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 464));
    HGTransform::Invert2D(v62);
    v30 = HGTransformUtils::MinW(v29);
    *&v66.var0 = v5;
    v31 = HGTransformUtils::GetDOD(v62, v6, v66, 0.5, v30);
    v33 = HGRectUnion(v26, v28, v31, v32);
    v35 = v34;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 528));
    HGTransform::Invert2D(v62);
    v37 = HGTransformUtils::MinW(v36);
    *&v67.var0 = v5;
    v38 = HGTransformUtils::GetDOD(v62, v6, v67, 0.5, v37);
    v40 = HGRectUnion(v33, v35, v38, v39);
    v42 = v41;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 592));
    HGTransform::Invert2D(v62);
    v44 = HGTransformUtils::MinW(v43);
    *&v68.var0 = v5;
    v45 = HGTransformUtils::GetDOD(v62, v6, v68, 0.5, v44);
    v47 = HGRectUnion(v40, v42, v45, v46);
    v49 = v48;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 656));
    HGTransform::Invert2D(v62);
    v51 = HGTransformUtils::MinW(v50);
    *&v69.var0 = v5;
    v52 = HGTransformUtils::GetDOD(v62, v6, v69, 0.5, v51);
    v54 = HGRectUnion(v47, v49, v52, v53);
    v56 = v55;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 720));
    HGTransform::Invert2D(v62);
    v58 = HGTransformUtils::MinW(v57);
    *&v70.var0 = v5;
    v59 = HGTransformUtils::GetDOD(v62, v6, v70, 0.5, v58);
    v4 = HGRectUnion(v54, v56, v59, v60);
    HGTransform::~HGTransform(v62);
  }

  return v4;
}

uint64_t HgcConvolvePass8tapPoint::GetROI(HgcConvolvePass8tapPoint *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    HGTransform::HGTransform(v62);
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 272));
    v9 = HGTransformUtils::MinW(v8);
    *&v63.var0 = v5;
    ROI = HGTransformUtils::GetROI(v62, v6, v63, 0.5, v9);
    v12 = HGRectUnion(0, 0, ROI, v11);
    v14 = v13;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 336));
    v16 = HGTransformUtils::MinW(v15);
    *&v64.var0 = v5;
    v17 = HGTransformUtils::GetROI(v62, v6, v64, 0.5, v16);
    v19 = HGRectUnion(v12, v14, v17, v18);
    v21 = v20;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 400));
    v23 = HGTransformUtils::MinW(v22);
    *&v65.var0 = v5;
    v24 = HGTransformUtils::GetROI(v62, v6, v65, 0.5, v23);
    v26 = HGRectUnion(v19, v21, v24, v25);
    v28 = v27;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 464));
    v30 = HGTransformUtils::MinW(v29);
    *&v66.var0 = v5;
    v31 = HGTransformUtils::GetROI(v62, v6, v66, 0.5, v30);
    v33 = HGRectUnion(v26, v28, v31, v32);
    v35 = v34;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 528));
    v37 = HGTransformUtils::MinW(v36);
    *&v67.var0 = v5;
    v38 = HGTransformUtils::GetROI(v62, v6, v67, 0.5, v37);
    v40 = HGRectUnion(v33, v35, v38, v39);
    v42 = v41;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 592));
    v44 = HGTransformUtils::MinW(v43);
    *&v68.var0 = v5;
    v45 = HGTransformUtils::GetROI(v62, v6, v68, 0.5, v44);
    v47 = HGRectUnion(v40, v42, v45, v46);
    v49 = v48;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 656));
    v51 = HGTransformUtils::MinW(v50);
    *&v69.var0 = v5;
    v52 = HGTransformUtils::GetROI(v62, v6, v69, 0.5, v51);
    v54 = HGRectUnion(v47, v49, v52, v53);
    v56 = v55;
    HGTransform::LoadMatrixf(v62, (*(this + 51) + 720));
    v58 = HGTransformUtils::MinW(v57);
    *&v70.var0 = v5;
    v59 = HGTransformUtils::GetROI(v62, v6, v70, 0.5, v58);
    v4 = HGRectUnion(v54, v56, v59, v60);
    HGTransform::~HGTransform(v62);
  }

  return v4;
}

void HgcConvolvePass8tapPoint::HgcConvolvePass8tapPoint(HgcConvolvePass8tapPoint *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DFFF8;
  *(v1 + 416) = 1;
  operator new();
}

void sub_25FA72508(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x2666E9F00](v3, 0x1000C40A461079ELL);
  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HgcConvolvePass8tapPoint::~HgcConvolvePass8tapPoint(HGNode *this)
{
  *this = &unk_2871DFFF8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40A461079ELL);
  }

  HGNode::~HGNode(this);
}

{
  HgcConvolvePass8tapPoint::~HgcConvolvePass8tapPoint(this);

  HGObject::operator delete(v1);
}

uint64_t HgcConvolvePass8tapPoint::SetParameter(HgcConvolvePass8tapPoint *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 0x10)
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
  v8 = 1;
  *(this + 104) = 1;
  HGNode::ClearBits(this, a2, a7);
  return v8;
}

uint64_t HgcConvolvePass8tapPoint::GetParameter(HgcConvolvePass8tapPoint *this, unsigned int a2, float *a3)
{
  if (a2 > 0x10)
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

HgcConvolvePass8tapPoint *HgcConvolvePass8tapPoint::GetOutput(HgcConvolvePass8tapPoint *this, void *a2)
{
  if (*(this + 104))
  {
    HgcConvolvePass8tapPoint::Setup(this, a2);
    *(this + 104) = 0;
  }

  return this;
}

double HgcConvolvePass8tapPoint::State::State(HgcConvolvePass8tapPoint::State *this)
{
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = xmmword_2603429B0;
  *(this + 18) = xmmword_2603429C0;
  *(this + 19) = xmmword_2603429D0;
  *(this + 20) = xmmword_2603427D0;
  *(this + 21) = xmmword_2603429B0;
  *(this + 22) = xmmword_2603429C0;
  *(this + 23) = xmmword_2603429D0;
  *(this + 24) = xmmword_2603427D0;
  *(this + 25) = xmmword_2603429B0;
  *(this + 26) = xmmword_2603429C0;
  *(this + 27) = xmmword_2603429D0;
  *(this + 28) = xmmword_2603427D0;
  *(this + 29) = xmmword_2603429B0;
  *(this + 30) = xmmword_2603429C0;
  *(this + 31) = xmmword_2603429D0;
  *(this + 32) = xmmword_2603427D0;
  *(this + 33) = xmmword_2603429B0;
  *(this + 34) = xmmword_2603429C0;
  *(this + 35) = xmmword_2603429D0;
  *(this + 36) = xmmword_2603427D0;
  *(this + 37) = xmmword_2603429B0;
  *(this + 38) = xmmword_2603429C0;
  *(this + 39) = xmmword_2603429D0;
  *(this + 40) = xmmword_2603427D0;
  *(this + 41) = xmmword_2603429B0;
  *(this + 42) = xmmword_2603429C0;
  *(this + 43) = xmmword_2603429D0;
  *(this + 44) = xmmword_2603427D0;
  *(this + 45) = xmmword_2603429B0;
  *(this + 46) = xmmword_2603429C0;
  *(this + 47) = xmmword_2603429D0;
  *(this + 48) = xmmword_2603427D0;
  *(this + 49) = xmmword_2603429B0;
  *(this + 50) = xmmword_2603429C0;
  *(this + 51) = xmmword_2603429D0;
  result = NAN;
  *(this + 52) = xmmword_2603427D0;
  *(this + 53) = xmmword_260344610;
  return result;
}

const char *HgcGradientRadial::GetProgram(HgcGradientRadial *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000628\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.5000000000, 1.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    s0.x = dot(s0.xyz, s0.xyz);\n    s0.x = sqrt(s0.x);\n    s0.x = s0.x - hg_Params[1].x;\n    r0.x = half(hg_Params[1].y) - half(hg_Params[1].x);\n    s0.x = s0.x/float(r0.x);\n    s1.x = s0.x*hg_Params[1].z;\n    s1.x = fmax(s1.x, float(c0.x));\n    s1.x = fmin(s1.x, hg_Params[1].w);\n    s1.y = float(c0.x);\n    s1.xy = floor(s1.xy);\n    s1.xy = s1.xy + float2(c0.yy);\n    s1.xy = s1.xy + hg_Params[2].xy;\n    s1.xy = s1.xy*hg_Params[2].zw;\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    s1.x = float(c0.z) - s0.x;\n    s0.x = clamp(s0.x*float(r0.x) + float(c0.y), 0.00000f, 1.00000f);\n    r2.x = half(c0.x >= half(hg_Params[1].x));\n    s0.x = fmax(s0.x, float(r2.x));\n    s1.x = clamp(s1.x*float(r0.x) + float(c0.y), 0.00000f, 1.00000f);\n    r2.x = half(c0.x >= half(hg_Params[1].y));\n    s1.x = fmax(s1.x, float(r2.x));\n    s0.x = s0.x*s1.x;\n    s1.xyz = float3(r1.xyz);\n    s1.w = float(r1.w)*s0.x;\n    s1.xyz = s1.xyz*s1.www;\n    output.color0 = s1;\n    return output;\n}\n//MD5=3c4c54e1:241e28b8:e52b03f9:f634c44d\n//SIG=00400000:00000000:00000000:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000591\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.5000000000, 1.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    r0.x = dot(r0.xyz, r0.xyz);\n    r0.x = sqrt(r0.x);\n    r0.x = r0.x - hg_Params[1].x;\n    r1.x = hg_Params[1].y - hg_Params[1].x;\n    r0.x = r0.x/r1.x;\n    r2.x = r0.x*hg_Params[1].z;\n    r2.x = fmax(r2.x, c0.x);\n    r2.x = fmin(r2.x, hg_Params[1].w);\n    r2.y = c0.x;\n    r2.xy = floor(r2.xy);\n    r2.xy = r2.xy + c0.yy;\n    r2.xy = r2.xy + hg_Params[2].xy;\n    r2.xy = r2.xy*hg_Params[2].zw;\n    r2 = hg_Texture0.sample(hg_Sampler0, r2.xy);\n    r3.x = c0.z - r0.x;\n    r0.x = clamp(r0.x*r1.x + c0.y, 0.00000f, 1.00000f);\n    r4.x = float(c0.x >= hg_Params[1].x);\n    r0.x = fmax(r0.x, r4.x);\n    r3.x = clamp(r3.x*r1.x + c0.y, 0.00000f, 1.00000f);\n    r4.x = float(c0.x >= hg_Params[1].y);\n    r3.x = fmax(r3.x, r4.x);\n    r0.x = r0.x*r3.x;\n    r2.w = r2.w*r0.x;\n    r2.xyz = r2.xyz*r2.www;\n    output.color0 = r2;\n    return output;\n}\n//MD5=605cffe4:afd68dec:9f2f4cf2:de416909\n//SIG=00000000:00000000:00000000:00000000:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005c1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.5000000000, 1.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4;\n\n    r0.xyz = hg_TexCoord0.xyz - hg_ProgramLocal0.xyz;\n    r0.x = dot(r0.xyz, r0.xyz);\n    r0.x = sqrt(r0.x);\n    r0.x = r0.x - hg_ProgramLocal1.x;\n    r1.x = hg_ProgramLocal1.y - hg_ProgramLocal1.x;\n    r0.x = r0.x/r1.x;\n    r2.x = r0.x*hg_ProgramLocal1.z;\n    r2.x = max(r2.x, c0.x);\n    r2.x = min(r2.x, hg_ProgramLocal1.w);\n    r2.y = c0.x;\n    r2.xy = floor(r2.xy);\n    r2.xy = r2.xy + c0.yy;\n    r2.xy = r2.xy + hg_ProgramLocal2.xy;\n    r2.xy = r2.xy*hg_ProgramLocal2.zw;\n    r2 = texture2D(hg_Texture0, r2.xy);\n    r3.x = c0.z - r0.x;\n    r0.x = clamp(r0.x*r1.x + c0.y, 0.00000, 1.00000);\n    r4.x = float(c0.x >= hg_ProgramLocal1.x);\n    r0.x = max(r0.x, r4.x);\n    r3.x = clamp(r3.x*r1.x + c0.y, 0.00000, 1.00000);\n    r4.x = float(c0.x >= hg_ProgramLocal1.y);\n    r3.x = max(r3.x, r4.x);\n    r0.x = r0.x*r3.x;\n    r2.w = r2.w*r0.x;\n    r2.xyz = r2.xyz*r2.www;\n    gl_FragColor = r2;\n}\n//MD5=3ba5fef6:24dc82ff:dc6f0318:0ed76bfc\n//SIG=00000000:00000000:00000000:00000000:0001:0003:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA72884(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FA72A04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA72A54()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA72A4CLL);
}

uint64_t HgcGradientRadial::BindTexture(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 228) - *(a2 + 220));
    v8.n128_f32[0] = 1.0 / (*(a2 + 232) - *(a2 + 224));
  }

  v5.n128_f32[0] = *(a2 + 240);
  v6.n128_f32[0] = *(a2 + 244);
  (*(*a2 + 136))(a2, 2, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcGradientRadial::Bind(HgcGradientRadial *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcGradientRadial::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 12) - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = *(a2 + 8) - v2.i32[0];
    v7 = *(a2 + 16);
    v8 = 16 * *(a2 + 24);
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10 = v5;
    do
    {
      if (v6 < 2)
      {
        v11 = 0;
        v13 = v10;
      }

      else
      {
        v11 = 0;
        v12 = v6;
        v13 = v10;
        do
        {
          v14 = *(a1 + 408);
          v15 = vaddq_f32(v13, xmmword_2603429B0);
          v16 = *(v14 + 16);
          v17 = vsubq_f32(v13, *v14);
          v18 = vsubq_f32(v15, *v14);
          v19 = vmulq_f32(v17, v17);
          v20 = vmulq_f32(v18, v18);
          v21 = vaddq_f32(vextq_s8(v19, v19, 8uLL), vaddq_f32(v19, vrev64q_s32(v19)));
          v22 = vaddq_f32(vextq_s8(v20, v20, 8uLL), vaddq_f32(v20, vrev64q_s32(v20)));
          v23 = *(v14 + 32);
          v24 = *(v14 + 48);
          v25 = vminq_f32(vrsqrteq_f32(v21), v23);
          v26 = vminq_f32(vrsqrteq_f32(v22), v23);
          v27 = vminq_f32(vmulq_f32(v25, vrsqrtsq_f32(vmulq_f32(v25, v21), v25)), v23);
          v28 = vminq_f32(vmulq_f32(v26, vrsqrtsq_f32(vmulq_f32(v26, v22), v26)), v23);
          v29 = vmulq_f32(v21, vminq_f32(vmulq_f32(v27, vrsqrtsq_f32(vmulq_f32(v21, v27), v27)), v23));
          v30 = vmulq_f32(v22, vminq_f32(vmulq_f32(v28, vrsqrtsq_f32(vmulq_f32(v22, v28), v28)), v23));
          v31 = vrev64q_s32(v16);
          v32 = vsubq_f32(v31, v16);
          v33 = vminq_f32(vmaxq_f32(vrecpeq_f32(v32), v24), v23);
          v34 = vminq_f32(vmaxq_f32(vmulq_f32(v33, vrecpsq_f32(v32, v33)), v24), v23);
          v35 = vmulq_f32(v34, vrecpsq_f32(v32, v34));
          v36 = vmulq_f32(vsubq_f32(v29, v16), v35);
          v37 = vmulq_f32(vsubq_f32(v30, v16), v35);
          v38 = *(v14 + 64);
          v39 = *(v14 + 80);
          v40 = vextq_s8(v16, v16, 0xCuLL);
          v41 = vminq_f32(vmaxq_f32(vmulq_laneq_f32(v36, v16, 2), v38), v40);
          v42 = vminq_f32(vmaxq_f32(vmulq_laneq_f32(v37, v16, 2), v38), v40);
          v41.i32[1] = 0;
          v42.i32[1] = 0;
          v43 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
          v44 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
          v45 = vandq_s8(v39, vcgtq_f32(v44, v42));
          v46 = vsubq_f32(v43, vandq_s8(v39, vcgtq_f32(v43, v41)));
          v47 = vsubq_f32(v44, v45);
          v48 = *(v14 + 96);
          v49 = *(v14 + 112);
          v50 = (a2 + 88);
          v51 = vaddq_f32(vsubq_f32(vaddq_f32(v48, v46), v5), v9);
          v52 = vcvtq_s32_f32(v51);
          v53 = *(a2 + 80);
          v54 = vaddq_f32(vsubq_f32(vaddq_f32(v48, v47), v5), v9);
          v55 = vcvtq_s32_f32(v54);
          *v54.f32 = vadd_s32(*v55.i8, *&vcgtq_f32(vcvtq_f32_s32(v55), v54));
          *v51.f32 = vadd_s32(*v52.i8, *&vcgtq_f32(vcvtq_f32_s32(v52), v51));
          *v55.i8 = vld1_dup_f32(v50);
          v56 = vsubq_f32(v39, v36);
          v57 = vsubq_f32(v39, v37);
          *v51.f32 = vmla_s32(vzip1_s32(*v51.f32, *v54.f32), vzip2_s32(*v51.f32, *v54.f32), *v55.i8);
          v58 = vandq_s8(v39, vcgeq_f32(v38, v16));
          v59 = vmaxq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v32, v36), v48), v38), v39), v58);
          v60 = vmaxq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v32, v37), v48), v38), v39), v58);
          v61 = vaddq_f32(v48, vmulq_f32(v32, v56));
          v62 = vmaxq_f32(vaddq_f32(v48, vmulq_f32(v32, v57)), v38);
          v63 = *(v53 + 16 * v51.i32[0]);
          v64 = vminq_f32(v62, v39);
          v65 = vandq_s8(v39, vcgeq_f32(v38, v31));
          v66 = vmaxq_f32(vminq_f32(vmaxq_f32(v61, v38), v39), v65);
          v67 = *(v53 + 16 * v51.i32[1]);
          v60.i32[0] = vmulq_f32(v60, vmaxq_f32(v64, v65)).u32[0];
          v68 = vmulq_n_f32(v63, vmulq_f32(v59, v66).f32[0]);
          v69 = vmulq_n_f32(v67, v60.f32[0]);
          v70 = vbslq_s8(v49, v68, v63);
          v71 = vbslq_s8(v49, v69, v67);
          v72 = (v7 + 16 * v11);
          *v72 = vbslq_s8(v49, v68, vmulq_laneq_f32(v70, v70, 3));
          v72[1] = vbslq_s8(v49, v69, vmulq_laneq_f32(v71, v71, 3));
          v13 = vaddq_f32(v15, xmmword_2603429B0);
          v11 += 2;
          v12 -= 2;
        }

        while (v12 > 1);
        v11 = v11;
      }

      if (v11 < v6)
      {
        v73 = *(a1 + 408);
        v74 = *(v73 + 16);
        v75 = vsubq_f32(v13, *v73);
        v76 = vmulq_f32(v75, v75);
        v77 = vaddq_f32(vextq_s8(v76, v76, 8uLL), vaddq_f32(v76, vrev64q_s32(v76)));
        v78 = *(v73 + 32);
        v79 = *(v73 + 48);
        v80 = vminq_f32(vrsqrteq_f32(v77), v78);
        v81 = vminq_f32(vmulq_f32(v80, vrsqrtsq_f32(vmulq_f32(v80, v77), v80)), v78);
        v82 = vsubq_f32(vmulq_f32(v77, vminq_f32(vmulq_f32(v81, vrsqrtsq_f32(vmulq_f32(v81, v77), v81)), v78)), v74);
        v83 = vrev64q_s32(v74);
        v84 = vsubq_f32(v83, v74);
        v85 = vminq_f32(vmaxq_f32(vrecpeq_f32(v84), v79), v78);
        v86 = vminq_f32(vmaxq_f32(vmulq_f32(v85, vrecpsq_f32(v84, v85)), v79), v78);
        v87 = vmulq_f32(v82, vmulq_f32(v86, vrecpsq_f32(v84, v86)));
        v88 = *(v73 + 64);
        v89 = *(v73 + 80);
        v90 = vminq_f32(vmaxq_f32(vmulq_laneq_f32(v87, v74, 2), v88), vextq_s8(v74, v74, 0xCuLL));
        v90.i32[1] = 0;
        v91 = vcvtq_f32_s32(vcvtq_s32_f32(v90));
        v92 = vsubq_f32(v91, vandq_s8(v89, vcgtq_f32(v91, v90)));
        v93 = *(v73 + 96);
        v94 = *(v73 + 112);
        v95 = vaddq_f32(vsubq_f32(vaddq_f32(v93, v92), v5), v9);
        v96 = vcvtq_s32_f32(v95);
        v95.i64[0] = vaddq_s32(v96, vcgtq_f32(vcvtq_f32_s32(v96), v95)).u64[0];
        v97 = *(*(a2 + 80) + 16 * (v95.i32[0] + v95.i32[1] * *(a2 + 88)));
        v98 = vmulq_n_f32(v97, vmulq_f32(vmaxq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v84, v87), v93), v88), v89), vandq_s8(v89, vcgeq_f32(v88, v74))), vmaxq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v93, vmulq_f32(v84, vsubq_f32(v89, v87))), v88), v89), vandq_s8(v89, vcgeq_f32(v88, v83)))).f32[0]);
        v99 = vbslq_s8(v94, v98, v97);
        *(v7 + 16 * v11) = vbslq_s8(v94, v98, vmulq_laneq_f32(v99, v99, 3));
      }

      v10 = vaddq_f32(v10, xmmword_2603429C0);
      v7 += v8;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcGradientRadial::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

uint64_t HgcGradientRadial::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientRadial::HgcGradientRadial(HgcGradientRadial *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E0260;
  operator new();
}

void HgcGradientRadial::~HgcGradientRadial(HGNode *this)
{
  *this = &unk_2871E0260;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGNode::~HGNode(this);
}

{
  HgcGradientRadial::~HgcGradientRadial(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGradientRadial::SetParameter(HgcGradientRadial *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientRadial::GetParameter(HgcGradientRadial *this, unsigned int a2, float *a3)
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

const char *HgcAddNoise::GetProgram(HgcAddNoise *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003a8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r0 = r0*c0.xxxw + -c0.wwwy;\n    r0 = r0*half4(hg_Params[0]);\n    r0 = mix(r0, fabs(r0), half4(hg_Params[1]));\n    output.color0 = float4(r0)*float4(r1.wwww);\n    return output;\n}\n//MD5=351c513a:5317fbd3:3bf78317:c73476bd\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000380\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r0 = r0*c0.xxxw + -c0.wwwy;\n    r0 = r0*hg_Params[0];\n    r0 = mix(r0, fabs(r0), hg_Params[1]);\n    output.color0 = r0*r1.wwww;\n    return output;\n}\n//MD5=00c8b6e9:aac4b27c:ea17cbcf:84848fcd\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000035a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = texture2D(hg_Texture1, hg_TexCoord1.xy).w;\n    r0 = r0*c0.xxxw + -c0.wwwy;\n    r0 = r0*hg_ProgramLocal0;\n    r0 = mix(r0, abs(r0), hg_ProgramLocal1);\n    gl_FragColor = r0*r1.wwww;\n}\n//MD5=38b093f1:a0f98003:aa398f2b:c4ce3f45\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA73498(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA735D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA73620()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA73618);
}

uint64_t HgcAddNoise::BindTexture(HgcAddNoise *this, HGHandler *a2, int a3)
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

uint64_t HgcAddNoise::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcAddNoise::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 96);
    v7 = 16 * *(a2 + 88);
    v8 = *(a2 + 80);
    v9 = 16 * *(a2 + 104);
    v10 = 16 * *(a2 + 24);
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
          v14 = *(a1 + 408);
          v15 = v14[2];
          v16 = v14[3];
          v17 = vaddq_f32(v15, vmulq_f32(*(v8 + v12 - 32), v16));
          v18 = vaddq_f32(v15, vmulq_f32(*(v8 + v12 - 16), v16));
          v19 = vaddq_f32(v15, vmulq_f32(*(v8 + v12), v16));
          v20 = vaddq_f32(v15, vmulq_f32(*(v8 + v12 + 16), v16));
          v21 = v14[1];
          v22 = vmulq_f32(*v14, v17);
          v23 = vmulq_f32(*v14, v18);
          v24 = vmulq_f32(*v14, v19);
          v25 = vmulq_f32(*v14, v20);
          v26 = vmulq_laneq_f32(vaddq_f32(v23, vmulq_f32(v21, vsubq_f32(vabsq_f32(v23), v23))), *(v6 + v12 - 16), 3);
          v27 = vmulq_laneq_f32(vaddq_f32(v24, vmulq_f32(v21, vsubq_f32(vabsq_f32(v24), v24))), *(v6 + v12), 3);
          v28 = vmulq_laneq_f32(vaddq_f32(v25, vmulq_f32(v21, vsubq_f32(vabsq_f32(v25), v25))), *(v6 + v12 + 16), 3);
          v29 = (v5 + v12);
          v29[-2] = vmulq_laneq_f32(vaddq_f32(v22, vmulq_f32(v21, vsubq_f32(vabsq_f32(v22), v22))), *(v6 + v12 - 32), 3);
          v29[-1] = v26;
          *v29 = v27;
          v29[1] = v28;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v30 = *(a1 + 408);
          v31 = vmulq_f32(*v30, vaddq_f32(v30[2], vmulq_f32(*(v8 + 16 * v11), v30[3])));
          *(v5 + 16 * v11) = vmulq_laneq_f32(vaddq_f32(v31, vmulq_f32(v30[1], vsubq_f32(vabsq_f32(v31), v31))), *(v6 + 16 * v11), 3);
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

uint64_t HgcAddNoise::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcAddNoise::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcAddNoise::HgcAddNoise(HgcAddNoise *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E04C8;
  operator new();
}

void HgcAddNoise::~HgcAddNoise(HGNode *this)
{
  *this = &unk_2871E04C8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcAddNoise::~HgcAddNoise(this);

  HGObject::operator delete(v1);
}

uint64_t HgcAddNoise::SetParameter(HgcAddNoise *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcAddNoise::GetParameter(HgcAddNoise *this, unsigned int a2, float *a3)
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

const char *HgcAddNoiseNormal::GetProgram(HgcAddNoiseNormal *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ba\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(2.000000000, -1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r0.xyz = r0.xyz*c0.xxx + c0.yyy;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz);\n    r1.xyz = r1.www*r0.xyz + r1.xyz;\n    output.color0 = fmax(float4(r1), float4(c0.zzzz));\n    return output;\n}\n//MD5=b6eb1b5d:36aa7a4a:639b7de7:07a796b5\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000398\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(2.000000000, -1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r0.xyz = r0.xyz*c0.xxx + c0.yyy;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.xyz = r0.xyz*hg_Params[0].xyz;\n    r1.xyz = r1.www*r0.xyz + r1.xyz;\n    output.color0 = fmax(r1, c0.zzzz);\n    return output;\n}\n//MD5=21c19ffa:62c5fd90:2921b5b6:e1068e7e\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000346\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(2.000000000, -1.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xyz = texture2D(hg_Texture0, hg_TexCoord0.xy).xyz;\n    r0.xyz = r0.xyz*c0.xxx + c0.yyy;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz;\n    r1.xyz = r1.www*r0.xyz + r1.xyz;\n    gl_FragColor = max(r1, c0.zzzz);\n}\n//MD5=5d3fb6b8:ba12248d:f5f40f6b:61a1a675\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA73D50(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA73E90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA73ED8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA73ED0);
}

uint64_t HgcAddNoiseNormal::BindTexture(HgcAddNoiseNormal *this, HGHandler *a2, int a3)
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

uint64_t HgcAddNoiseNormal::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcAddNoiseNormal::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 96);
    v7 = 16 * *(a2 + 88);
    v8 = *(a2 + 80);
    v9 = 16 * *(a2 + 104);
    v10 = 16 * *(a2 + 24);
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
          v14 = *(a1 + 408);
          v15 = *(v14 + 32);
          v16 = *(v14 + 48);
          v17 = *(v14 + 16);
          v18 = vaddq_f32(v17, vmulq_f32(*(v8 + v12 - 32), v15));
          v19 = vbslq_s8(v16, *(v6 + v12 - 16), vaddq_f32(*(v6 + v12 - 16), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v17, vmulq_f32(*(v8 + v12 - 16), v15)), *v14), *(v6 + v12 - 16), 3)));
          v20 = vbslq_s8(v16, *(v6 + v12), vaddq_f32(*(v6 + v12), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v17, vmulq_f32(*(v8 + v12), v15)), *v14), *(v6 + v12), 3)));
          v21 = vbslq_s8(v16, *(v6 + v12 + 16), vaddq_f32(*(v6 + v12 + 16), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v17, vmulq_f32(*(v8 + v12 + 16), v15)), *v14), *(v6 + v12 + 16), 3)));
          v22 = *(v14 + 64);
          v23 = vmaxq_f32(vbslq_s8(v16, *(v6 + v12 - 32), vaddq_f32(*(v6 + v12 - 32), vmulq_laneq_f32(vmulq_f32(v18, *v14), *(v6 + v12 - 32), 3))), v22);
          v24 = (v5 + v12);
          v24[-2] = v23;
          v24[-1] = vmaxq_f32(v19, v22);
          *v24 = vmaxq_f32(v20, v22);
          v24[1] = vmaxq_f32(v21, v22);
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v25 = *(a1 + 408);
          *(v5 + 16 * v11) = vmaxq_f32(vbslq_s8(*(v25 + 48), *(v6 + 16 * v11), vaddq_f32(*(v6 + 16 * v11), vmulq_laneq_f32(vmulq_f32(vaddq_f32(*(v25 + 16), vmulq_f32(*(v8 + 16 * v11), *(v25 + 32))), *v25), *(v6 + 16 * v11), 3))), *(v25 + 64));
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

uint64_t HgcAddNoiseNormal::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcAddNoiseNormal::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcAddNoiseNormal::HgcAddNoiseNormal(HgcAddNoiseNormal *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E0730;
  operator new();
}

void HgcAddNoiseNormal::~HgcAddNoiseNormal(HGNode *this)
{
  *this = &unk_2871E0730;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcAddNoiseNormal::~HgcAddNoiseNormal(this);

  HGObject::operator delete(v1);
}

uint64_t HgcAddNoiseNormal::SetParameter(HgcAddNoiseNormal *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
  v8[5] = a3;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcAddNoiseNormal::GetParameter(HgcAddNoiseNormal *this, int a2, float *a3)
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

const char *HgcHalftone::GetProgram(HgcHalftone *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000623\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.5000000000, 2.000000000, 3.000000000);\n    const half4 c1 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0 = frag._texCoord1 - hg_Params[0];\n    s0 = s0*hg_Params[4];\n    s1.x = dot(s0, hg_Params[1]);\n    s1.y = dot(s0, hg_Params[2]);\n    s1.xy = s1.xy + hg_Params[0].xy;\n    s1.xy = fract(s1.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s0 = s1.xxyy - float4(c0.xyxy);\n    s0 = clamp(s0 + s0, 0.00000f, 1.00000f);\n    s2 = -s0*float4(c0.zzzz) + float4(c0.wwww);\n    s0 = s0*s0;\n    s0 = s0*s2;\n    s0.yw = -s0.yw;\n    s0 = s0*float4(c0.yyyy) + float4(c0.xyxy);\n    s1 = float4(s1.xxyy < float4(c0.yyyy));\n    s1.yw = -s1.yw;\n    s1 = s1 + float4(c1.xyxy);\n    s1 = s0*s1;\n    r1.xyz = half3(dot(r0, half4(hg_Params[5])));\n    s1.xyz = float3(dot(s1, 1.00000f));\n    s1.xyz = float3(r1.xyz) - s1.xyz;\n    s1.xyz = clamp(s1.xyz*hg_Params[3].xyz + float3(c0.yyy), 0.00000f, 1.00000f);\n    s1.xyz = s1.xyz*float3(r0.www);\n    s1.w = float(r0.w);\n    output.color0 = mix(float4(r0), s1, hg_Params[6]);\n    return output;\n}\n//MD5=8dc40409:6be48a07:e4177f1a:ed135c9a\n//SIG=00400000:00000001:00000001:00000001:0002:0007:0005:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005ad\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.5000000000, 2.000000000, 3.000000000);\n    const float4 c1 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = frag._texCoord1 - hg_Params[0];\n    r0 = r0*hg_Params[4];\n    r1.x = dot(r0, hg_Params[1]);\n    r1.y = dot(r0, hg_Params[2]);\n    r1.xy = r1.xy + hg_Params[0].xy;\n    r1.xy = fract(r1.xy);\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r2 = r1.xxyy - c0.xyxy;\n    r2 = clamp(r2 + r2, 0.00000f, 1.00000f);\n    r3 = -r2*c0.zzzz + c0.wwww;\n    r2 = r2*r2;\n    r2 = r2*r3;\n    r2.yw = -r2.yw;\n    r2 = r2*c0.yyyy + c0.xyxy;\n    r1 = float4(r1.xxyy < c0.yyyy);\n    r1.yw = -r1.yw;\n    r1 = r1 + c1.xyxy;\n    r1 = r2*r1;\n    r3.xyz = float3(dot(r0, hg_Params[5]));\n    r1.xyz = float3(dot(r1, 1.00000f));\n    r3.xyz = r3.xyz - r1.xyz;\n    r3.xyz = clamp(r3.xyz*hg_Params[3].xyz + c0.yyy, 0.00000f, 1.00000f);\n    r3.xyz = r3.xyz*r0.www;\n    r3.w = r0.w;\n    output.color0 = mix(r0, r3, hg_Params[6]);\n    return output;\n}\n//MD5=af220099:6dd2dcb9:59b4a777:090c1842\n//SIG=00000000:00000001:00000001:00000000:0002:0007:0004:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006ad\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.5000000000, 2.000000000, 3.000000000);\n    const highp vec4 c1 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = hg_TexCoord1 - hg_ProgramLocal0;\n    r0 = r0*hg_ProgramLocal4;\n    r1.x = dot(r0, hg_ProgramLocal1);\n    r1.y = dot(r0, hg_ProgramLocal2);\n    r1.xy = r1.xy + hg_ProgramLocal0.xy;\n    r1.xy = fract(r1.xy);\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r2 = r1.xxyy - c0.xyxy;\n    r2 = clamp(r2 + r2, vec4(0.00000), vec4(1.00000));\n    r3 = -r2*c0.zzzz + c0.wwww;\n    r2 = r2*r2;\n    r2 = r2*r3;\n    r2.yw = -r2.yw;\n    r2 = r2*c0.yyyy + c0.xyxy;\n    r1 = vec4(lessThan(r1.xxyy, c0.yyyy));\n    r1.yw = -r1.yw;\n    r1 = r1 + c1.xyxy;\n    r1 = r2*r1;\n    r3.xyz = vec3(dot(r0, hg_ProgramLocal5));\n    r1.xyz = vec3(dot(r1, vec4(1.00000)));\n    r3.xyz = r3.xyz - r1.xyz;\n    r3.xyz = clamp(r3.xyz*hg_ProgramLocal3.xyz + c0.yyy, vec3(0.00000), vec3(1.00000));\n    r3.xyz = r3.xyz*r0.www;\n    r3.w = r0.w;\n    gl_FragColor = mix(r0, r3, hg_ProgramLocal6);\n}\n//MD5=b81ba7f9:b2977399:5c257506:b0583d81\n//SIG=00000000:00000001:00000001:00000000:0002:0007:0004:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FA745E0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_2603446C0;
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

void sub_25FA74720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA74768()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA74760);
}

uint64_t HgcHalftone::BindTexture(HgcHalftone *this, HGHandler *a2, int a3)
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

uint64_t HgcHalftone::Bind(HgcHalftone *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcHalftone::RenderTile(uint64_t a1, int32x2_t *a2)
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
          v17 = *(a1 + 408);
          v18 = *(v17 + 16);
          v19 = vsubq_f32(v14, *v17);
          v21 = *(v17 + 64);
          v20 = *(v17 + 80);
          v22 = vmulq_f32(v19, v21);
          v23 = vmulq_f32(vsubq_f32(v15, *v17), v21);
          v24 = vmulq_f32(vsubq_f32(v16, *v17), v21);
          v25 = vmulq_f32(v22, v18);
          v26 = vmulq_f32(v23, v18);
          v27 = vmulq_f32(v24, v18);
          v28 = vaddq_f32(v25, vextq_s8(v25, v25, 4uLL));
          v29 = vaddq_f32(v26, vextq_s8(v26, v26, 4uLL));
          v30 = vaddq_f32(v27, vextq_s8(v27, v27, 4uLL));
          v32 = *(v17 + 32);
          v31 = *(v17 + 48);
          v33 = vmulq_f32(v22, v32);
          v34 = vmulq_f32(v23, v32);
          v35 = vmulq_f32(v24, v32);
          v36 = vaddq_f32(v33, vextq_s8(v33, v33, 4uLL));
          v37 = vaddq_f32(v34, vextq_s8(v34, v34, 4uLL));
          v38 = vaddq_f32(v35, vextq_s8(v35, v35, 4uLL));
          v39 = vaddq_f32(v36, vextq_s8(v36, v36, 8uLL));
          v40 = *(v17 + 96);
          v41 = *(v17 + 112);
          v42 = vaddq_f32(*v17, vbslq_s8(v41, vaddq_f32(v28, vextq_s8(v28, v28, 8uLL)), v39));
          v43 = vaddq_f32(*v17, vbslq_s8(v41, vaddq_f32(v29, vextq_s8(v29, v29, 8uLL)), vaddq_f32(v37, vextq_s8(v37, v37, 8uLL))));
          v44 = vaddq_f32(*v17, vbslq_s8(v41, vaddq_f32(v30, vextq_s8(v30, v30, 8uLL)), vaddq_f32(v38, vextq_s8(v38, v38, 8uLL))));
          v45 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
          v46 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
          v47 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
          v48 = *(v17 + 128);
          v49 = *(v17 + 144);
          v50 = vsubq_f32(v42, vsubq_f32(v45, vandq_s8(v48, vcgtq_f32(v45, v42))));
          v51 = vsubq_f32(v43, vsubq_f32(v46, vandq_s8(v48, vcgtq_f32(v46, v43))));
          v52 = vsubq_f32(v44, vsubq_f32(v47, vandq_s8(v48, vcgtq_f32(v47, v44))));
          *v45.f32 = vqtbl1_s8(v50, *v49.i8);
          v47.i64[0] = vextq_s8(v49, v49, 8uLL).u64[0];
          *&v45.u32[2] = vqtbl1_s8(v50, *v47.f32);
          v53 = *(*&v7 + v11);
          v54 = *(*&v7 + v11 + 16);
          *v41.f32 = vqtbl1_s8(v51, *v49.i8);
          *v32.f32 = vqtbl1_s8(v52, *v49.i8);
          *&v41.u32[2] = vqtbl1_s8(v51, *v47.f32);
          *&v32.u32[2] = vqtbl1_s8(v52, *v47.f32);
          v56 = *(v17 + 160);
          v55 = *(v17 + 176);
          v57 = vsubq_f32(v45, v56);
          v58 = vsubq_f32(v41, v56);
          v59 = vsubq_f32(v32, v56);
          v60 = vminq_f32(vmaxq_f32(vaddq_f32(v57, v57), v55), v48);
          v61 = vminq_f32(vmaxq_f32(vaddq_f32(v58, v58), v55), v48);
          v62 = *(v17 + 192);
          v63 = *(v17 + 208);
          v64 = vminq_f32(vmaxq_f32(vaddq_f32(v59, v59), v55), v48);
          v65 = vsubq_f32(v62, vmulq_f32(v60, v63));
          v66 = vsubq_f32(v62, vmulq_f32(v61, v63));
          v67 = vsubq_f32(v62, vmulq_f32(v64, v63));
          v68 = *(*&v7 + v11 + 32);
          v69 = vmulq_f32(vmulq_f32(v60, v60), v65);
          v70 = vmulq_f32(vmulq_f32(v61, v61), v66);
          v71 = vmulq_f32(vmulq_f32(v64, v64), v67);
          v73 = *(v17 + 224);
          v72 = *(v17 + 240);
          v74 = vmulq_f32(v72, vbslq_s8(v73, v71, vnegq_f32(v71)));
          v75 = vandq_s8(v48, vcgtq_f32(v72, v45));
          v76 = vaddq_f32(v56, vmulq_f32(v72, vbslq_s8(v73, v69, vnegq_f32(v69))));
          v77 = vandq_s8(v48, vcgtq_f32(v72, v41));
          v78 = vandq_s8(v48, vcgtq_f32(v72, v32));
          v79 = vbslq_s8(v73, v75, vnegq_f32(v75));
          v80 = vaddq_f32(v56, vmulq_f32(v72, vbslq_s8(v73, v70, vnegq_f32(v70))));
          v81 = vbslq_s8(v73, v77, vnegq_f32(v77));
          v82 = vbslq_s8(v73, v78, vnegq_f32(v78));
          v83 = *(v17 + 256);
          v84 = *(v17 + 272);
          v85 = vmulq_f32(v76, vaddq_f32(v83, v79));
          v86 = vmulq_f32(v80, vaddq_f32(v83, v81));
          v87 = vmulq_f32(vaddq_f32(v56, v74), vaddq_f32(v83, v82));
          v88 = vmulq_f32(v53, v20);
          v89 = vmulq_f32(v54, v20);
          v90 = vmulq_f32(v68, v20);
          v91 = vaddq_f32(v88, vextq_s8(v88, v88, 4uLL));
          v92 = vaddq_f32(v89, vextq_s8(v89, v89, 4uLL));
          v93 = vaddq_f32(v90, vextq_s8(v90, v90, 4uLL));
          v94 = vaddq_f32(v85, vextq_s8(v85, v85, 4uLL));
          v95 = vaddq_f32(v86, vextq_s8(v86, v86, 4uLL));
          v96 = vaddq_f32(v87, vextq_s8(v87, v87, 4uLL));
          v97 = (*&v6 + v11);
          *v97 = vaddq_f32(v53, vmulq_f32(v40, vsubq_f32(vbslq_s8(v84, v53, vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v72, vmulq_f32(v31, vsubq_f32(vaddq_f32(v91, vextq_s8(v91, v91, 8uLL)), vaddq_f32(v94, vextq_s8(v94, v94, 8uLL))))), v55), v48), v53, 3)), v53)));
          v97[1] = vaddq_f32(v54, vmulq_f32(v40, vsubq_f32(vbslq_s8(v84, v54, vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v72, vmulq_f32(v31, vsubq_f32(vaddq_f32(v92, vextq_s8(v92, v92, 8uLL)), vaddq_f32(v95, vextq_s8(v95, v95, 8uLL))))), v55), v48), v54, 3)), v54)));
          v97[2] = vaddq_f32(v68, vmulq_f32(v40, vsubq_f32(vbslq_s8(v84, v68, vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v72, vmulq_f32(v31, vsubq_f32(vaddq_f32(v93, vextq_s8(v93, v93, 8uLL)), vaddq_f32(v96, vextq_s8(v96, v96, 8uLL))))), v55), v48), v68, 3)), v68)));
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
          v98 = *(a1 + 408);
          v99 = vmulq_f32(vsubq_f32(v14, *v98), *(v98 + 64));
          v100 = vmulq_f32(v99, *(v98 + 16));
          v101 = vaddq_f32(v100, vextq_s8(v100, v100, 4uLL));
          v102 = vmulq_f32(v99, *(v98 + 32));
          v103 = vaddq_f32(v102, vextq_s8(v102, v102, 4uLL));
          v104 = vaddq_f32(*v98, vbslq_s8(*(v98 + 112), vaddq_f32(v101, vextq_s8(v101, v101, 8uLL)), vaddq_f32(v103, vextq_s8(v103, v103, 8uLL))));
          v105 = vcvtq_f32_s32(vcvtq_s32_f32(v104));
          v106 = *(v98 + 128);
          v107 = *(v98 + 144);
          v108 = vsubq_f32(v104, vsubq_f32(v105, vandq_s8(v106, vcgtq_f32(v105, v104))));
          *v105.f32 = vqtbl1_s8(v108, *v107.i8);
          *&v105.u32[2] = vqtbl1_s8(v108, *&vextq_s8(v107, v107, 8uLL));
          v109 = *(v98 + 160);
          v110 = *(v98 + 176);
          v111 = vsubq_f32(v105, v109);
          v112 = vminq_f32(vmaxq_f32(vaddq_f32(v111, v111), v110), v106);
          v113 = vmulq_f32(vmulq_f32(v112, v112), vsubq_f32(*(v98 + 192), vmulq_f32(v112, *(v98 + 208))));
          v114 = *(v98 + 240);
          v115 = *(*&v7 + 16 * v12);
          v116 = vandq_s8(v106, vcgtq_f32(v114, v105));
          v117 = vmulq_f32(vaddq_f32(v109, vmulq_f32(v114, vbslq_s8(*(v98 + 224), v113, vnegq_f32(v113)))), vaddq_f32(*(v98 + 256), vbslq_s8(*(v98 + 224), v116, vnegq_f32(v116))));
          v118 = vmulq_f32(v115, *(v98 + 80));
          v119 = vaddq_f32(v118, vextq_s8(v118, v118, 4uLL));
          v120 = vaddq_f32(v117, vextq_s8(v117, v117, 4uLL));
          *(*&v6 + 16 * v12) = vaddq_f32(v115, vmulq_f32(*(v98 + 96), vsubq_f32(vbslq_s8(*(v98 + 272), v115, vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v114, vmulq_f32(*(v98 + 48), vsubq_f32(vaddq_f32(v119, vextq_s8(v119, v119, 8uLL)), vaddq_f32(v120, vextq_s8(v120, v120, 8uLL))))), v110), v106), v115, 3)), v115)));
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

uint64_t HgcHalftone::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcHalftone::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcHalftone::HgcHalftone(HgcHalftone *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E0998;
  operator new();
}

void HgcHalftone::~HgcHalftone(HGNode *this)
{
  *this = &unk_2871E0998;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B2834900);
  }

  HGNode::~HGNode(this);
}

{
  HgcHalftone::~HgcHalftone(this);

  HGObject::operator delete(v1);
}

uint64_t HgcHalftone::SetParameter(HgcHalftone *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v12 = *(this + 51);
        if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
        {
          *v12 = a3.n128_u32[0];
          *(v12 + 4) = a4;
          *(v12 + 8) = a5;
          *(v12 + 12) = a6;
          goto LABEL_44;
        }

        return 0;
      case 1:
        v16 = *(this + 51);
        if (*(v16 + 16) != a3.n128_f32[0] || *(v16 + 20) != a4 || *(v16 + 24) != a5 || *(v16 + 28) != a6)
        {
          *(v16 + 16) = a3.n128_u32[0];
          *(v16 + 20) = a4;
          *(v16 + 24) = a5;
          *(v16 + 28) = a6;
          goto LABEL_44;
        }

        return 0;
      case 2:
        v9 = *(this + 51);
        if (*(v9 + 32) != a3.n128_f32[0] || *(v9 + 36) != a4 || *(v9 + 40) != a5 || *(v9 + 44) != a6)
        {
          *(v9 + 32) = a3.n128_u32[0];
          *(v9 + 36) = a4;
          *(v9 + 40) = a5;
          *(v9 + 44) = a6;
          goto LABEL_44;
        }

        return 0;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v13 = *(this + 51);
        if (*(v13 + 48) != a3.n128_f32[0] || *(v13 + 52) != a3.n128_f32[0] || *(v13 + 56) != a3.n128_f32[0] || *(v13 + 60) != 0.0)
        {
          v14 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
          v14.i32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          *(v13 + 48) = v14;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v13 + 288) = a3;
          goto LABEL_44;
        }
      }

      else
      {
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a4 || *(v8 + 72) != a5 || *(v8 + 76) != a6)
        {
          *(v8 + 64) = a3.n128_u32[0];
          *(v8 + 68) = a4;
          *(v8 + 72) = a5;
          *(v8 + 76) = a6;
LABEL_44:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    if (a2 == 5)
    {
      v15 = *(this + 51);
      if (*(v15 + 80) != a3.n128_f32[0] || *(v15 + 84) != a4 || *(v15 + 88) != a5 || *(v15 + 92) != a6)
      {
        *(v15 + 80) = a3.n128_u32[0];
        *(v15 + 84) = a4;
        *(v15 + 88) = a5;
        *(v15 + 92) = a6;
        goto LABEL_44;
      }

      return 0;
    }

    if (a2 == 6)
    {
      v10 = *(this + 51);
      if (*(v10 + 96) != a3.n128_f32[0] || *(v10 + 100) != a3.n128_f32[0] || *(v10 + 104) != a3.n128_f32[0] || *(v10 + 108) != a3.n128_f32[0])
      {
        v11 = vdupq_lane_s32(a3.n128_u64[0], 0);
        a3.n128_f32[1] = a4;
        *(v10 + 96) = v11;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        *(v10 + 304) = a3;
        goto LABEL_44;
      }

      return 0;
    }
  }

  return v7;
}

float HgcHalftone::GetParameter(HgcHalftone *this, int a2, float *a3)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = *(this + 51);
        *a3 = v9[4];
        a3[1] = v9[5];
        a3[2] = v9[6];
        v4 = v9 + 7;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v5 = *(this + 51);
        *a3 = v5[8];
        a3[1] = v5[9];
        a3[2] = v5[10];
        v4 = v5 + 11;
      }
    }

    else
    {
      v7 = *(this + 51);
      *a3 = *v7;
      a3[1] = v7[1];
      a3[2] = v7[2];
      v4 = v7 + 3;
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v8 = *(this + 51);
      *a3 = v8[20];
      a3[1] = v8[21];
      a3[2] = v8[22];
      v4 = v8 + 23;
    }

    else
    {
      if (a2 != 6)
      {
        return result;
      }

      v6 = *(this + 51);
      *a3 = v6[76];
      a3[1] = v6[77];
      a3[2] = v6[78];
      v4 = v6 + 79;
    }
  }

  else
  {
    v3 = *(this + 51);
    if (a2 == 3)
    {
      *a3 = v3[72];
      a3[1] = v3[73];
      a3[2] = v3[74];
      v4 = v3 + 75;
    }

    else
    {
      *a3 = v3[16];
      a3[1] = v3[17];
      a3[2] = v3[18];
      v4 = v3 + 19;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcConcentricCirclesGradient::GetProgram(HgcConcentricCirclesGradient *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000673\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 1.000000000, 255.0000000);\n    half4 r0;\n    float4 s0, s1, s2, s3, s4;\n    FragmentOut output;\n\n    s0 = frag._texCoord0 - hg_Params[0];\n    s0 = hg_Params[2]*s0;\n    s0.x = dot(s0, s0);\n    s0.x = sqrt(s0.x);\n    s1.x = s0.x + hg_Params[1].x;\n    s2.x = s1.x*hg_Params[3].x;\n    s3.x = fract(s2.x);\n    s2.x = floor(s2.x);\n    s2.x = s2.x*float(c0.x);\n    s2.x = fract(s2.x);\n    s2.x = float(c0.y) - s2.x;\n    s4.x = float(c0.z) - s3.x;\n    s2.x = select(s4.x, s3.x, s2.x < 0.00000h);\n    s1.x = hg_Params[2].z*s1.x;\n    s1.x = clamp(s1.x*hg_Params[3].x, 0.00000f, 1.00000f);\n    s1.x = select(s2.x, s1.x, hg_Params[4].x < 0.00000h);\n    s1.x = select(s1.x, s3.x, -hg_Params[4].x < 0.00000h);\n    s1.y = float(c0.x);\n    s1.x = s1.x*float(c0.w) + float(c0.x);\n    s1.xy = s1.xy + hg_Params[7].xy;\n    s1.xy = s1.xy*hg_Params[7].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    s4.x = clamp(s0.x - hg_Params[5].x, 0.00000f, 1.00000f);\n    s4.x = float(c0.z) - s4.x;\n    s0.x = float(c0.z) + s0.x;\n    s0.x = clamp(s0.x - hg_Params[6].x, 0.00000f, 1.00000f);\n    s4.x = s4.x*s0.x;\n    output.color0.xyz = float3(r0.xyz)*s4.xxx;\n    output.color0.w = s4.x*float(r0.w);\n    return output;\n}\n//MD5=20d13e24:0afe4634:71fedd8a:5c8ce0a8\n//SIG=00400000:00000000:00000000:00000001:0001:0008:0006:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000619\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 1.000000000, 255.0000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = frag._texCoord0 - hg_Params[0];\n    r0 = hg_Params[2]*r0;\n    r0.x = dot(r0, r0);\n    r0.x = sqrt(r0.x);\n    r1.x = r0.x + hg_Params[1].x;\n    r2.x = r1.x*hg_Params[3].x;\n    r3.x = fract(r2.x);\n    r2.x = floor(r2.x);\n    r2.x = r2.x*c0.x;\n    r2.x = fract(r2.x);\n    r2.x = c0.y - r2.x;\n    r4.x = c0.z - r3.x;\n    r2.x = select(r4.x, r3.x, r2.x < 0.00000f);\n    r1.x = hg_Params[2].z*r1.x;\n    r1.x = clamp(r1.x*hg_Params[3].x, 0.00000f, 1.00000f);\n    r1.x = select(r2.x, r1.x, hg_Params[4].x < 0.00000f);\n    r1.x = select(r1.x, r3.x, -hg_Params[4].x < 0.00000f);\n    r1.y = c0.x;\n    r1.x = r1.x*c0.w + c0.x;\n    r1.xy = r1.xy + hg_Params[7].xy;\n    r1.xy = r1.xy*hg_Params[7].zw;\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    r4.x = clamp(r0.x - hg_Params[5].x, 0.00000f, 1.00000f);\n    r4.x = c0.z - r4.x;\n    r0.x = c0.z + r0.x;\n    r0.x = clamp(r0.x - hg_Params[6].x, 0.00000f, 1.00000f);\n    r4.x = r4.x*r0.x;\n    output.color0.xyz = r1.xyz*r4.xxx;\n    output.color0.w = r4.x*r1.w;\n    return output;\n}\n//MD5=2455fc03:d741007b:415d6661:64eafc04\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006f6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 1.000000000, 255.0000000);\n    highp vec4 r0, r1, r2, r3, r4;\n\n    r0 = hg_TexCoord0 - hg_ProgramLocal0;\n    r0 = hg_ProgramLocal2*r0;\n    r0.x = dot(r0, r0);\n    r0.x = sqrt(r0.x);\n    r1.x = r0.x + hg_ProgramLocal1.x;\n    r2.x = r1.x*hg_ProgramLocal3.x;\n    r3.x = fract(r2.x);\n    r2.x = floor(r2.x);\n    r2.x = r2.x*c0.x;\n    r2.x = fract(r2.x);\n    r2.x = c0.y - r2.x;\n    r4.x = c0.z - r3.x;\n    r2.x = r2.x < 0.00000 ? r3.x : r4.x;\n    r1.x = hg_ProgramLocal2.z*r1.x;\n    r1.x = clamp(r1.x*hg_ProgramLocal3.x, 0.00000, 1.00000);\n    r1.x = hg_ProgramLocal4.x < 0.00000 ? r1.x : r2.x;\n    r1.x = -hg_ProgramLocal4.x < 0.00000 ? r3.x : r1.x;\n    r1.y = c0.x;\n    r1.x = r1.x*c0.w + c0.x;\n    r1.xy = r1.xy + hg_ProgramLocal7.xy;\n    r1.xy = r1.xy*hg_ProgramLocal7.zw;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    r4.x = clamp(r0.x - hg_ProgramLocal5.x, 0.00000, 1.00000);\n    r4.x = c0.z - r4.x;\n    r0.x = c0.z + r0.x;\n    r0.x = clamp(r0.x - hg_ProgramLocal6.x, 0.00000, 1.00000);\n    r4.x = r4.x*r0.x;\n    gl_FragColor.xyz = r1.xyz*r4.xxx;\n    gl_FragColor.w = r4.x*r1.w;\n}\n//MD5=c62793ac:e7dfe5c6:3d8170b3:d400384d\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA75628(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260344490;
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FA757A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA757F8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA757F0);
}

uint64_t HgcConcentricCirclesGradient::BindTexture(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 144) + 128))(*(a2 + 144), 46))
  {
    v7.n128_u32[0] = 1.0;
    v8.n128_u32[0] = 1.0;
  }

  else
  {
    v7.n128_f32[0] = 1.0 / (*(a2 + 228) - *(a2 + 220));
    v8.n128_f32[0] = 1.0 / (*(a2 + 232) - *(a2 + 224));
  }

  v5.n128_f32[0] = *(a2 + 240);
  v6.n128_f32[0] = *(a2 + 244);
  (*(*a2 + 136))(a2, 7, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcConcentricCirclesGradient::Bind(HgcConcentricCirclesGradient *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*a2 + 144))(a2, 6, *(this + 51) + 96, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcConcentricCirclesGradient::RenderTile(HgcConcentricCirclesGradient *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = 0;
    *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
    v9.i64[1] = 0x3F80000000000000;
    v10 = *(a2 + 2) - v6.i32[0];
    v11 = *(a2 + 2);
    v12 = 16 * *(a2 + 6);
    v13.i64[0] = 0x3F0000003F000000;
    v13.i64[1] = 0x3F0000003F000000;
    v14 = v9;
    do
    {
      if (v10 < 2)
      {
        v15 = 0;
        v17 = v14;
      }

      else
      {
        v15 = 0;
        v16 = v10;
        v17 = v14;
        do
        {
          v18 = vaddq_f32(v17, xmmword_2603429B0);
          v19 = *(this + 51);
          v20 = *(v19 + 16);
          v21 = *(v19 + 32);
          v22 = *(v19 + 48);
          v23 = vmulq_f32(v21, vsubq_f32(v17, *v19));
          v24 = vmulq_f32(v21, vsubq_f32(v18, *v19));
          v25 = vmulq_f32(v23, v23);
          v26 = vmulq_f32(v24, v24);
          v27 = vaddq_f32(v25, vextq_s8(v25, v25, 4uLL));
          v28 = vaddq_f32(v26, vextq_s8(v26, v26, 4uLL));
          v29 = vaddq_f32(v27, vextq_s8(v27, v27, 8uLL));
          v30 = vaddq_f32(v28, vextq_s8(v28, v28, 8uLL));
          v32 = *(v19 + 112);
          v31 = *(v19 + 128);
          v33 = vminq_f32(vrsqrteq_f32(v29), v32);
          v34 = vminq_f32(vrsqrteq_f32(v30), v32);
          v35 = vminq_f32(vmulq_f32(v33, vrsqrtsq_f32(vmulq_f32(v33, v29), v33)), v32);
          v36 = vminq_f32(vmulq_f32(v34, vrsqrtsq_f32(vmulq_f32(v34, v30), v34)), v32);
          v37 = vmulq_f32(v29, vminq_f32(vmulq_f32(v35, vrsqrtsq_f32(vmulq_f32(v29, v35), v35)), v32));
          v38 = vmulq_f32(v30, vminq_f32(vmulq_f32(v36, vrsqrtsq_f32(vmulq_f32(v30, v36), v36)), v32));
          v39 = vaddq_f32(v37, v20);
          v40 = vaddq_f32(v38, v20);
          v41 = vmulq_f32(v39, v22);
          v42 = vmulq_f32(v40, v22);
          v43 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
          v44 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
          v45 = vsubq_f32(v43, vandq_s8(v31, vcgtq_f32(v43, v41)));
          v46 = vsubq_f32(v44, vandq_s8(v31, vcgtq_f32(v44, v42)));
          v47 = vsubq_f32(v41, v45);
          v48 = vsubq_f32(v42, v46);
          v50 = *(v19 + 144);
          v49 = *(v19 + 160);
          v51 = vmulq_f32(v50, v45);
          v52 = vmulq_f32(v50, v46);
          v53 = vcvtq_f32_s32(vcvtq_s32_f32(v51));
          v54 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
          v55 = vmulq_laneq_f32(v39, v21, 2);
          v56 = vmulq_f32(v22, vmulq_laneq_f32(v40, v21, 2));
          v57 = vminq_f32(vmaxq_f32(vmulq_f32(v22, v55), v49), v31);
          v58 = *(v19 + 64);
          v59 = vcgtq_f32(v49, v58);
          v60 = vcgtq_f32(v58, v49);
          v61 = vbslq_s8(v60, v47, vbslq_s8(v59, v57, vbslq_s8(vcgtq_f32(v49, vsubq_f32(v49, vsubq_f32(v51, vsubq_f32(v53, vandq_s8(v31, vcgtq_f32(v53, v51)))))), v47, vsubq_f32(v31, v47))));
          v62 = vbslq_s8(v60, v48, vbslq_s8(v59, vminq_f32(vmaxq_f32(v56, v49), v31), vbslq_s8(vcgtq_f32(v49, vsubq_f32(v49, vsubq_f32(v52, vsubq_f32(v54, vandq_s8(v31, vcgtq_f32(v54, v52)))))), v48, vsubq_f32(v31, v48))));
          v61.i32[1] = 0.5;
          v62.i32[1] = 0.5;
          v63 = *(v19 + 176);
          v64 = *(v19 + 192);
          v65 = vbslq_s8(v64, vaddq_f32(v50, vmulq_f32(v63, v62)), v62);
          v66 = *(a2 + 22);
          v67 = vsubq_f32(vbslq_s8(v64, vaddq_f32(v50, vmulq_f32(v63, v61)), v61), v9);
          v68 = *(a2 + 10);
          if (v5)
          {
            v69 = vaddq_s32(vcvtq_s32_f32(v67), vcltzq_f32(v67));
            v70 = vsubq_f32(v67, vcvtq_f32_s32(v69)).u64[0];
            v71 = vsubq_f32(v65, v9);
            v72 = vaddq_s32(vcvtq_s32_f32(v71), vcltzq_f32(v71));
            v73 = vsubq_f32(v71, vcvtq_f32_s32(v72)).u64[0];
            *v69.i8 = vmla_s32(vzip1_s32(*v69.i8, *v72.i8), vzip2_s32(*v69.i8, *v72.i8), vdup_n_s32(v66));
            v74 = (v68 + 16 * v69.i32[0]);
            v75 = vaddq_f32(*v74, vmulq_n_f32(vsubq_f32(v74[1], *v74), v70.f32[0]));
            v76 = vaddq_f32(v75, vmulq_lane_f32(vsubq_f32(vaddq_f32(v74[v66], vmulq_n_f32(vsubq_f32(v74[v66 + 1], v74[v66]), v70.f32[0])), v75), v70, 1));
            v77 = (v68 + 16 * v69.i32[1]);
            v78 = vaddq_f32(*v77, vmulq_n_f32(vsubq_f32(v77[1], *v77), v73.f32[0]));
            v79 = vaddq_f32(v78, vmulq_lane_f32(vsubq_f32(vaddq_f32(v77[v66], vmulq_n_f32(vsubq_f32(v77[v66 + 1], v77[v66]), v73.f32[0])), v78), v73, 1));
          }

          else
          {
            v80 = vaddq_f32(v67, v13);
            v81 = vcvtq_s32_f32(v80);
            v82 = vaddq_f32(vsubq_f32(v65, v9), v13);
            v83 = vcvtq_s32_f32(v82);
            *v80.f32 = vadd_s32(*v81.i8, *&vcgtq_f32(vcvtq_f32_s32(v81), v80));
            *v82.f32 = vadd_s32(*v83.i8, *&vcgtq_f32(vcvtq_f32_s32(v83), v82));
            *v82.f32 = vmla_s32(vzip1_s32(*v80.f32, *v82.f32), vzip2_s32(*v80.f32, *v82.f32), vdup_n_s32(v66));
            v84 = v82.i32[1];
            v76 = *(v68 + 16 * v82.i32[0]);
            v79 = *(v68 + 16 * v84);
          }

          v85 = *(v19 + 80);
          v86 = *(v19 + 96);
          v87 = (v11 + 16 * v15);
          *v87 = vmulq_n_f32(v76, vmulq_f32(vsubq_f32(v31, vminq_f32(vmaxq_f32(vsubq_f32(v37, v85), v49), v31)), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v37, v31), v86), v49), v31)).f32[0]);
          v87[1] = vmulq_n_f32(v79, vmulq_f32(vsubq_f32(v31, vminq_f32(vmaxq_f32(vsubq_f32(v38, v85), v49), v31)), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v38, v31), v86), v49), v31)).f32[0]);
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v88 = *(this + 51);
        v89 = *(v88 + 32);
        v90 = *(v88 + 48);
        v91 = vmulq_f32(v89, vsubq_f32(v17, *v88));
        v92 = vmulq_f32(v91, v91);
        v93 = vaddq_f32(v92, vextq_s8(v92, v92, 4uLL));
        v94 = vaddq_f32(v93, vextq_s8(v93, v93, 8uLL));
        v96 = *(v88 + 112);
        v95 = *(v88 + 128);
        v97 = vminq_f32(vrsqrteq_f32(v94), v96);
        v98 = vminq_f32(vmulq_f32(v97, vrsqrtsq_f32(vmulq_f32(v97, v94), v97)), v96);
        v99 = vmulq_f32(v94, vminq_f32(vmulq_f32(v98, vrsqrtsq_f32(vmulq_f32(v98, v94), v98)), v96));
        v100 = vaddq_f32(v99, *(v88 + 16));
        v101 = vmulq_f32(v100, v90);
        v102 = vcvtq_f32_s32(vcvtq_s32_f32(v101));
        v103 = vsubq_f32(v102, vandq_s8(v95, vcgtq_f32(v102, v101)));
        v104 = vsubq_f32(v101, v103);
        v106 = *(v88 + 144);
        v105 = *(v88 + 160);
        v107 = vmulq_f32(v106, v103);
        v108 = vcvtq_f32_s32(vcvtq_s32_f32(v107));
        v109 = vbslq_s8(vcgtq_f32(*(v88 + 64), v105), v104, vbslq_s8(vcgtq_f32(v105, *(v88 + 64)), vminq_f32(vmaxq_f32(vmulq_f32(v90, vmulq_laneq_f32(v100, v89, 2)), v105), v95), vbslq_s8(vcgtq_f32(v105, vsubq_f32(v105, vsubq_f32(v107, vsubq_f32(v108, vandq_s8(v95, vcgtq_f32(v108, v107)))))), v104, vsubq_f32(v95, v104))));
        v109.i32[1] = 0.5;
        v110 = *(a2 + 22);
        v111 = vsubq_f32(vbslq_s8(*(v88 + 192), vaddq_f32(v106, vmulq_f32(*(v88 + 176), v109)), v109), v9);
        v112 = *(a2 + 10);
        if (v5)
        {
          v113 = vaddq_s32(vcvtq_s32_f32(v111), vcltzq_f32(v111));
          v114 = vsubq_f32(v111, vcvtq_f32_s32(v113)).u64[0];
          v115 = (v112 + 16 * (v113.i32[0] + v113.i32[1] * v110));
          v116 = vaddq_f32(*v115, vmulq_n_f32(vsubq_f32(v115[1], *v115), v114.f32[0]));
          v117 = vaddq_f32(v116, vmulq_lane_f32(vsubq_f32(vaddq_f32(v115[v110], vmulq_n_f32(vsubq_f32(v115[v110 + 1], v115[v110]), v114.f32[0])), v116), v114, 1));
        }

        else
        {
          v118 = vaddq_f32(v111, v13);
          v119 = vcvtq_s32_f32(v118);
          v118.i64[0] = vaddq_s32(v119, vcgtq_f32(vcvtq_f32_s32(v119), v118)).u64[0];
          v117 = *(v112 + 16 * (v118.i32[0] + v118.i32[1] * v110));
        }

        *(v11 + 16 * v15) = vmulq_n_f32(v117, vmulq_f32(vsubq_f32(v95, vminq_f32(vmaxq_f32(vsubq_f32(v99, *(v88 + 80)), v105), v95)), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v99, v95), *(v88 + 96)), v105), v95)).f32[0]);
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcConcentricCirclesGradient::GetDOD(HgcConcentricCirclesGradient *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    v4 = &HGRectNull;
  }

  else
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      HGRectGrow(v6, v5, v7);
    }

    v4 = &HGRectInfinite;
  }

  return *v4;
}

uint64_t HgcConcentricCirclesGradient::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(DOD, v9, v10);
  }

  return DOD;
}

void HgcConcentricCirclesGradient::HgcConcentricCirclesGradient(HgcConcentricCirclesGradient *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E0C00;
  operator new();
}

void HgcConcentricCirclesGradient::~HgcConcentricCirclesGradient(HGNode *this)
{
  *this = &unk_2871E0C00;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);
}

{
  HgcConcentricCirclesGradient::~HgcConcentricCirclesGradient(this);

  HGObject::operator delete(v1);
}

uint64_t HgcConcentricCirclesGradient::SetParameter(HgcConcentricCirclesGradient *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v11 = *(this + 51);
        if (*v11 != a3.n128_f32[0] || *(v11 + 4) != a4 || *(v11 + 8) != a5 || *(v11 + 12) != a6)
        {
          *v11 = a3.n128_u32[0];
          *(v11 + 4) = a4;
          *(v11 + 8) = a5;
          *(v11 + 12) = a6;
          goto LABEL_44;
        }

        return 0;
      case 1:
        v14 = *(this + 51);
        if (v14[1].n128_f32[0] != a4 || v14[1].n128_f32[1] != 0.0 || v14[1].n128_f32[2] != 0.0 || v14[1].n128_f32[3] != 0.0)
        {
          v14[1].n128_f32[0] = a4;
          v14[1].n128_u64[1] = 0;
          v14[1].n128_u32[1] = 0;
          a3.n128_f32[1] = a4;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v14[14] = a3;
          goto LABEL_44;
        }

        return 0;
      case 2:
        v9 = *(this + 51);
        if (*(v9 + 32) != a3.n128_f32[0] || *(v9 + 36) != a4 || *(v9 + 40) != a5 || *(v9 + 44) != a6)
        {
          *(v9 + 32) = a3.n128_u32[0];
          *(v9 + 36) = a4;
          *(v9 + 40) = a5;
          *(v9 + 44) = a6;
          goto LABEL_44;
        }

        return 0;
    }
  }

  else
  {
    if (a2 <= 4)
    {
      if (a2 == 3)
      {
        v12 = *(this + 51);
        if (*(v12 + 48) != a3.n128_f32[0] || *(v12 + 52) != a4 || *(v12 + 56) != a5 || *(v12 + 60) != a6)
        {
          *(v12 + 48) = a3.n128_u32[0];
          *(v12 + 52) = a4;
          *(v12 + 56) = a5;
          *(v12 + 60) = a6;
          goto LABEL_44;
        }
      }

      else
      {
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a4 || *(v8 + 72) != a5 || *(v8 + 76) != a6)
        {
          *(v8 + 64) = a3.n128_u32[0];
          *(v8 + 68) = a4;
          *(v8 + 72) = a5;
          *(v8 + 76) = a6;
LABEL_44:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    if (a2 == 5)
    {
      v13 = *(this + 51);
      if (*(v13 + 80) != a3.n128_f32[0] || *(v13 + 84) != a4 || *(v13 + 88) != a5 || *(v13 + 92) != a6)
      {
        *(v13 + 80) = a3.n128_u32[0];
        *(v13 + 84) = a4;
        *(v13 + 88) = a5;
        *(v13 + 92) = a6;
        goto LABEL_44;
      }

      return 0;
    }

    if (a2 == 6)
    {
      v10 = *(this + 51);
      if (*(v10 + 96) != a3.n128_f32[0] || *(v10 + 100) != a4 || *(v10 + 104) != a5 || *(v10 + 108) != a6)
      {
        *(v10 + 96) = a3.n128_u32[0];
        *(v10 + 100) = a4;
        *(v10 + 104) = a5;
        *(v10 + 108) = a6;
        goto LABEL_44;
      }

      return 0;
    }
  }

  return v7;
}

float HgcConcentricCirclesGradient::GetParameter(HgcConcentricCirclesGradient *this, int a2, float *a3)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = *(this + 51);
        *a3 = v9[56];
        a3[1] = v9[57];
        a3[2] = v9[58];
        v4 = v9 + 59;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v5 = *(this + 51);
        *a3 = v5[8];
        a3[1] = v5[9];
        a3[2] = v5[10];
        v4 = v5 + 11;
      }
    }

    else
    {
      v7 = *(this + 51);
      *a3 = *v7;
      a3[1] = v7[1];
      a3[2] = v7[2];
      v4 = v7 + 3;
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v8 = *(this + 51);
      *a3 = v8[20];
      a3[1] = v8[21];
      a3[2] = v8[22];
      v4 = v8 + 23;
    }

    else
    {
      if (a2 != 6)
      {
        return result;
      }

      v6 = *(this + 51);
      *a3 = v6[24];
      a3[1] = v6[25];
      a3[2] = v6[26];
      v4 = v6 + 27;
    }
  }

  else
  {
    v3 = *(this + 51);
    if (a2 == 3)
    {
      *a3 = v3[12];
      a3[1] = v3[13];
      a3[2] = v3[14];
      v4 = v3 + 15;
    }

    else
    {
      *a3 = v3[16];
      a3[1] = v3[17];
      a3[2] = v3[18];
      v4 = v3 + 19;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcBloomThreshold::GetProgram(HgcBloomThreshold *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003b8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0*half4(hg_Params[1]) + half4(hg_Params[0]);\n    r0 = fmax(r0, c0.xxxx);\n    r1.x = fmax(r0.x, r0.y);\n    r1.x = fmax(r1.x, r0.z);\n    r0.w = select(r0.w, r1.x, half(hg_Params[3].w) < 0.00000h);\n    r0.w = fmin(r0.w, half(hg_Params[2].y));\n    output.color0.w = fmax(float(r0.w), hg_Params[2].x);\n    output.color0.xyz = float3(r0.xyz);\n    return output;\n}\n//MD5=bd2a1d6a:4fe8cc52:c8984623:4431d1c5\n//SIG=00400000:00000001:00000001:00000001:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000038b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0*hg_Params[1] + hg_Params[0];\n    r0 = fmax(r0, c0.xxxx);\n    r1.x = fmax(r0.x, r0.y);\n    r1.x = fmax(r1.x, r0.z);\n    r0.w = select(r0.w, r1.x, hg_Params[3].w < 0.00000f);\n    r0.w = fmin(r0.w, hg_Params[2].y);\n    output.color0.w = fmax(r0.w, hg_Params[2].x);\n    output.color0.xyz = r0.xyz;\n    return output;\n}\n//MD5=1fde8f2d:934afc7e:2c9979c1:2afcb114\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0*hg_ProgramLocal1 + hg_ProgramLocal0;\n    r0 = max(r0, c0.xxxx);\n    r1.x = max(r0.x, r0.y);\n    r1.x = max(r1.x, r0.z);\n    r0.w = hg_ProgramLocal3.w < 0.00000 ? r1.x : r0.w;\n    r0.w = min(r0.w, hg_ProgramLocal2.y);\n    gl_FragColor.w = max(r0.w, hg_ProgramLocal2.x);\n    gl_FragColor.xyz = r0.xyz;\n}\n//MD5=723a64df:03115b68:238a77b6:8159d15a\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA76880(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260344C00;
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

void sub_25FA76980(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA769C0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA769B8);
}

uint64_t HgcBloomThreshold::BindTexture(HgcBloomThreshold *this, HGHandler *a2, int a3)
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

uint64_t HgcBloomThreshold::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcBloomThreshold::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 80);
    v7 = 16 * *(a2 + 88);
    v8 = 16 * *(a2 + 24);
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
          v12 = *(a1 + 408);
          v13 = *(v12 + 16);
          v14 = vaddq_f32(*v12, vmulq_f32(*(v6 + v10 - 32), v13));
          v15 = vaddq_f32(*v12, vmulq_f32(*(v6 + v10 - 16), v13));
          v16 = vaddq_f32(*v12, vmulq_f32(*(v6 + v10), v13));
          v17 = vaddq_f32(*v12, vmulq_f32(*(v6 + v10 + 16), v13));
          v18 = *(v12 + 64);
          v19 = *(v12 + 80);
          v20 = vmaxq_f32(v14, v18);
          v21 = vmaxq_f32(v15, v18);
          v22 = vmaxq_f32(v16, v18);
          v23 = vmaxq_f32(v17, v18);
          v24 = vmaxq_f32(vmaxq_f32(v20, vrev64q_s32(v20)), vextq_s8(v20, v20, 8uLL));
          v25 = vmaxq_f32(vmaxq_f32(v21, vrev64q_s32(v21)), vextq_s8(v21, v21, 8uLL));
          v26 = vmaxq_f32(vmaxq_f32(v22, vrev64q_s32(v22)), vextq_s8(v22, v22, 8uLL));
          v27 = vmaxq_f32(vmaxq_f32(v23, vrev64q_s32(v23)), vextq_s8(v23, v23, 8uLL));
          v28 = *(v12 + 32);
          v29 = vcgtq_f32(v18, *(v12 + 48));
          v30 = vbslq_s8(v29, vextq_s8(v24, v24, 4uLL), v20);
          v31 = vbslq_s8(v29, vextq_s8(v25, v25, 4uLL), v21);
          v32 = vbslq_s8(v29, vextq_s8(v26, v26, 4uLL), v22);
          v33 = vbslq_s8(v19, vbslq_s8(v29, vextq_s8(v27, v27, 4uLL), v23), v23);
          v34 = vextq_s8(v28, v28, 8uLL);
          v35 = vbslq_s8(v19, vminq_f32(vbslq_s8(v19, v30, v20), v34), v20);
          v36 = vbslq_s8(v19, vminq_f32(vbslq_s8(v19, v31, v21), v34), v21);
          v37 = vbslq_s8(v19, vminq_f32(vbslq_s8(v19, v32, v22), v34), v22);
          v38 = vbslq_s8(v19, vminq_f32(v33, v34), v23);
          v39 = vextq_s8(v28, v28, 4uLL);
          v40 = (v5 + v10);
          v40[-2] = vbslq_s8(v19, vmaxq_f32(v35, v39), v20);
          v40[-1] = vbslq_s8(v19, vmaxq_f32(v36, v39), v21);
          *v40 = vbslq_s8(v19, vmaxq_f32(v37, v39), v22);
          v40[1] = vbslq_s8(v19, vmaxq_f32(v38, v39), v23);
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v41 = *(a1 + 408);
          v42 = *(v41 + 64);
          v43 = vmaxq_f32(vaddq_f32(*v41, vmulq_f32(*(v6 + 16 * v9), *(v41 + 16))), v42);
          v44 = vmaxq_f32(vmaxq_f32(v43, vrev64q_s32(v43)), vextq_s8(v43, v43, 8uLL));
          *(v5 + 16 * v9++) = vbslq_s8(*(v41 + 80), vmaxq_f32(vbslq_s8(*(v41 + 80), vminq_f32(vbslq_s8(*(v41 + 80), vbslq_s8(vcgtq_f32(v42, *(v41 + 48)), vextq_s8(v44, v44, 4uLL), v43), v43), vextq_s8(*(v41 + 32), *(v41 + 32), 8uLL)), v43), vextq_s8(*(v41 + 32), *(v41 + 32), 4uLL)), v43);
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

uint64_t HgcBloomThreshold::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcBloomThreshold::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcBloomThreshold::HgcBloomThreshold(HgcBloomThreshold *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E0E68;
  operator new();
}

void HgcBloomThreshold::~HgcBloomThreshold(HGNode *this)
{
  *this = &unk_2871E0E68;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);
}

{
  HgcBloomThreshold::~HgcBloomThreshold(this);

  HGObject::operator delete(v1);
}

uint64_t HgcBloomThreshold::SetParameter(HgcBloomThreshold *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v12 = *(this + 51);
      if (*(v12 + 32) != a3.n128_f32[0] || *(v12 + 36) != a4 || *(v12 + 40) != a5 || *(v12 + 44) != a6)
      {
        *(v12 + 32) = a3.n128_u32[0];
        *(v12 + 36) = a4;
        *(v12 + 40) = a5;
        *(v12 + 44) = a6;
        goto LABEL_26;
      }

      return 0;
    }

    if (a2 == 3)
    {
      v9 = -a3.n128_f32[0];
      v10 = *(this + 51);
      if (v10[3].n128_f32[0] != 0.0 || v10[3].n128_f32[1] != 0.0 || v10[3].n128_f32[2] != 0.0 || v10[3].n128_f32[3] != v9)
      {
        v10[3].n128_u64[0] = 0;
        v10[3].n128_u32[2] = 0;
        a3.n128_f32[1] = a4;
        v10[3].n128_f32[3] = v9;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v10[6] = a3;
        goto LABEL_26;
      }

      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      v11 = *(this + 51);
      if (*v11 != a3.n128_f32[0] || *(v11 + 4) != a4 || *(v11 + 8) != a5 || *(v11 + 12) != a6)
      {
        *v11 = a3.n128_u32[0];
        *(v11 + 4) = a4;
        *(v11 + 8) = a5;
        *(v11 + 12) = a6;
        goto LABEL_26;
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
LABEL_26:
        HGNode::ClearBits(this, a2, a7);
        return 1;
      }

      return 0;
    }
  }

  return v7;
}

float HgcBloomThreshold::GetParameter(HgcBloomThreshold *this, int a2, float *a3)
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
      *a3 = v5[24];
      a3[1] = v5[25];
      a3[2] = v5[26];
      v4 = v5 + 27;
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

const char *HgcEchoScaleAndAdd::GetProgram(HgcEchoScaleAndAdd *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r1*half4(hg_Params[0]) + r0;\n    r1.xyz = fmin(r1.xyz, half3(hg_Params[1].xxx));\n    r1.xyz = fmin(r1.xyz, half3(hg_Params[1].xxx));\n    r1.w = fmin(r1.w, c0.w);\n    output.color0 = fmax(float4(r1), float4(c0.xxxx));\n    return output;\n}\n//MD5=5794dc2a:32344ad2:bbd4a64d:cb8b1ddb\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003b5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r1*hg_Params[0] + r0;\n    r1.xyz = fmin(r1.xyz, hg_Params[1].xxx);\n    r1.xyz = fmin(r1.xyz, hg_Params[1].xxx);\n    r1.w = fmin(r1.w, c0.w);\n    output.color0 = fmax(r1, c0.xxxx);\n    return output;\n}\n//MD5=bed4bc78:50e387c7:c077773c:181c959b\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000390\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = r1*hg_ProgramLocal0 + r0;\n    r1.xyz = min(r1.xyz, hg_ProgramLocal1.xxx);\n    r1.xyz = min(r1.xyz, hg_ProgramLocal1.xxx);\n    r1.w = min(r1.w, c0.w);\n    gl_FragColor = max(r1, c0.xxxx);\n}\n//MD5=0098c1ad:709ee8f9:9af35b62:bcd18ec4\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA772E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA77428(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA77470()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA77468);
}

uint64_t HgcEchoScaleAndAdd::BindTexture(HgcEchoScaleAndAdd *this, HGHandler *a2, int a3)
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

uint64_t HgcEchoScaleAndAdd::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcEchoScaleAndAdd::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 80);
    v7 = 16 * *(a2 + 104);
    v8 = *(a2 + 96);
    v9 = 16 * *(a2 + 88);
    v10 = 16 * *(a2 + 24);
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
          v14 = *(a1 + 408);
          v15 = vaddq_f32(*(v8 + v12 - 32), vmulq_f32(*(v6 + v12 - 32), *v14));
          v16 = vaddq_f32(*(v8 + v12 - 16), vmulq_f32(*(v6 + v12 - 16), *v14));
          v17 = vaddq_f32(*(v8 + v12), vmulq_f32(*(v6 + v12), *v14));
          v18 = vaddq_f32(*(v8 + v12 + 16), vmulq_f32(*(v6 + v12 + 16), *v14));
          v19 = vdupq_lane_s32(*(v14 + 16), 0);
          v20 = *(v14 + 32);
          v21 = *(v14 + 48);
          v22 = vminq_f32(vbslq_s8(v20, v15, vminq_f32(v15, v19)), v19);
          v23 = vminq_f32(vbslq_s8(v20, v16, vminq_f32(v16, v19)), v19);
          v24 = vminq_f32(vbslq_s8(v20, v17, vminq_f32(v17, v19)), v19);
          v25 = vminq_f32(vbslq_s8(v20, v18, vminq_f32(v18, v19)), v19);
          v26 = vbslq_s8(v20, vminq_f32(vbslq_s8(v20, v18, v25), v21), v25);
          v27 = *(v14 + 64);
          v28 = (v5 + v12);
          v28[-2] = vmaxq_f32(vbslq_s8(v20, vminq_f32(vbslq_s8(v20, v15, v22), v21), v22), v27);
          v28[-1] = vmaxq_f32(vbslq_s8(v20, vminq_f32(vbslq_s8(v20, v16, v23), v21), v23), v27);
          *v28 = vmaxq_f32(vbslq_s8(v20, vminq_f32(vbslq_s8(v20, v17, v24), v21), v24), v27);
          v28[1] = vmaxq_f32(v26, v27);
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v29 = *(a1 + 408);
          v30 = vaddq_f32(*(v8 + 16 * v11), vmulq_f32(*(v6 + 16 * v11), *v29));
          v31 = vdupq_lane_s32(*(v29 + 16), 0);
          v32 = *(v29 + 32);
          v33 = vminq_f32(vbslq_s8(v32, v30, vminq_f32(v30, v31)), v31);
          *(v5 + 16 * v11++) = vmaxq_f32(vbslq_s8(v32, vminq_f32(vbslq_s8(v32, v30, v33), *(v29 + 48)), v33), *(v29 + 64));
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

uint64_t HgcEchoScaleAndAdd::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcEchoScaleAndAdd::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcEchoScaleAndAdd::HgcEchoScaleAndAdd(HgcEchoScaleAndAdd *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E10D0;
  operator new();
}

void HgcEchoScaleAndAdd::~HgcEchoScaleAndAdd(HGNode *this)
{
  *this = &unk_2871E10D0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcEchoScaleAndAdd::~HgcEchoScaleAndAdd(this);

  HGObject::operator delete(v1);
}

uint64_t HgcEchoScaleAndAdd::SetParameter(HgcEchoScaleAndAdd *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcEchoScaleAndAdd::GetParameter(HgcEchoScaleAndAdd *this, unsigned int a2, float *a3)
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

const char *HgcConcentricCircles::GetProgram(HgcConcentricCircles *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005e7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const half4 c0 = half4(0.7500000000, 0.000000000, 0.2500000000, 0.5000000000);\n    const half4 c1 = half4(3.000000000, -2.000000000, 1.000000000, 0.000000000);\n    float4 s0, s1, s2, s3;\n    FragmentOut output;\n\n    s0 = frag._texCoord0 - hg_Params[0];\n    s0 = hg_Params[5]*s0;\n    s0 = float4(dot(s0, s0));\n    s0 = sqrt(s0);\n    s1 = s0 + hg_Params[3].yyyy;\n    s1 = s1/hg_Params[3].xxxx;\n    s1 = fract(s1);\n    s2 = float4(c0.xxxx) - s1;\n    s3 = float4(s2 < float4(c0.yyyy));\n    s2 = float4(c0.xxxx) + s2;\n    s1 = select(s1, s2, -s3 < 0.00000h);\n    s3 = float4(c0.zzzz) - s1;\n    s2 = float4(s3 < float4(c0.yyyy));\n    s3 = float4(c0.zzzz) + s3;\n    s1 = select(s3, s1, -s2 < 0.00000h);\n    s1 = clamp(mix(float4(c0.wwww), s1, hg_Params[4]), 0.00000f, 1.00000f);\n    s2 = s1*s1;\n    s3 = s2*float4(c1.xxxx);\n    s2 = s2*s1;\n    s2 = s2*float4(c1.yyyy) + s3;\n    s2 = mix(hg_Params[1], hg_Params[2], s2);\n    s1.x = clamp(s0.x - hg_Params[6].x, 0.00000f, 1.00000f);\n    s1.x = float(c1.z) - s1.x;\n    s0.x = float(c1.z) + s0.x;\n    s0.x = clamp(s0.x - hg_Params[7].x, 0.00000f, 1.00000f);\n    s1.x = s1.x*s0.x;\n    output.color0.xyz = s2.xyz*s1.xxx;\n    output.color0.w = s1.x*s2.w;\n    return output;\n}\n//MD5=bef0cca1:e5539de3:676d9ca3:5def84e1\n//SIG=00400000:00000000:00000000:00000000:0002:0008:0004:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000595\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(0.7500000000, 0.000000000, 0.2500000000, 0.5000000000);\n    const float4 c1 = float4(3.000000000, -2.000000000, 1.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = frag._texCoord0 - hg_Params[0];\n    r0 = hg_Params[5]*r0;\n    r0 = float4(dot(r0, r0));\n    r0 = sqrt(r0);\n    r1 = r0 + hg_Params[3].yyyy;\n    r1 = r1/hg_Params[3].xxxx;\n    r1 = fract(r1);\n    r2 = c0.xxxx - r1;\n    r3 = float4(r2 < c0.yyyy);\n    r2 = c0.xxxx + r2;\n    r1 = select(r1, r2, -r3 < 0.00000f);\n    r3 = c0.zzzz - r1;\n    r2 = float4(r3 < c0.yyyy);\n    r3 = c0.zzzz + r3;\n    r1 = select(r3, r1, -r2 < 0.00000f);\n    r1 = clamp(mix(c0.wwww, r1, hg_Params[4]), 0.00000f, 1.00000f);\n    r2 = r1*r1;\n    r3 = r2*c1.xxxx;\n    r2 = r2*r1;\n    r2 = r2*c1.yyyy + r3;\n    r2 = mix(hg_Params[1], hg_Params[2], r2);\n    r1.x = clamp(r0.x - hg_Params[6].x, 0.00000f, 1.00000f);\n    r1.x = c1.z - r1.x;\n    r0.x = c1.z + r0.x;\n    r0.x = clamp(r0.x - hg_Params[7].x, 0.00000f, 1.00000f);\n    r1.x = r1.x*r0.x;\n    output.color0.xyz = r2.xyz*r1.xxx;\n    output.color0.w = r1.x*r2.w;\n    return output;\n}\n//MD5=8e8929da:97cec00a:038fad01:723fe795\n//SIG=00000000:00000000:00000000:00000000:0002:0008:0004:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000079b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.7500000000, 0.000000000, 0.2500000000, 0.5000000000);\n    const highp vec4 c1 = vec4(3.000000000, -2.000000000, 1.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = hg_TexCoord0 - hg_ProgramLocal0;\n    r0 = hg_ProgramLocal5*r0;\n    r0 = vec4(dot(r0, r0));\n    r0 = sqrt(r0);\n    r1 = r0 + hg_ProgramLocal3.yyyy;\n    r1 = r1/hg_ProgramLocal3.xxxx;\n    r1 = fract(r1);\n    r2 = c0.xxxx - r1;\n    r3 = vec4(lessThan(r2, c0.yyyy));\n    r2 = c0.xxxx + r2;\n    r1 = vec4(-r3.x < 0.00000 ? r2.x : r1.x, -r3.y < 0.00000 ? r2.y : r1.y, -r3.z < 0.00000 ? r2.z : r1.z, -r3.w < 0.00000 ? r2.w : r1.w);\n    r3 = c0.zzzz - r1;\n    r2 = vec4(lessThan(r3, c0.yyyy));\n    r3 = c0.zzzz + r3;\n    r1 = vec4(-r2.x < 0.00000 ? r1.x : r3.x, -r2.y < 0.00000 ? r1.y : r3.y, -r2.z < 0.00000 ? r1.z : r3.z, -r2.w < 0.00000 ? r1.w : r3.w);\n    r1 = clamp(mix(c0.wwww, r1, hg_ProgramLocal4), vec4(0.00000), vec4(1.00000));\n    r2 = r1*r1;\n    r3 = r2*c1.xxxx;\n    r2 = r2*r1;\n    r2 = r2*c1.yyyy + r3;\n    r2 = mix(hg_ProgramLocal1, hg_ProgramLocal2, r2);\n    r1.x = clamp(r0.x - hg_ProgramLocal6.x, 0.00000, 1.00000);\n    r1.x = c1.z - r1.x;\n    r0.x = c1.z + r0.x;\n    r0.x = clamp(r0.x - hg_ProgramLocal7.x, 0.00000, 1.00000);\n    r1.x = r1.x*r0.x;\n    gl_FragColor.xyz = r2.xyz*r1.xxx;\n    gl_FragColor.w = r1.x*r2.w;\n}\n//MD5=9c3a62f8:cedc9e9e:1c65ef8f:6d92b9c6\n//SIG=00000000:00000000:00000000:00000000:0002:0008:0004:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_25FA77BC8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260344490;
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

void sub_25FA77CC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA77D08()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA77D00);
}

uint64_t HgcConcentricCircles::Bind(HgcConcentricCircles *this, HGHandler *a2)
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
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcConcentricCircles::RenderTile(uint64_t a1, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    *v6.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v6.i64[1] = 0x3F80000000000000;
    v7 = a2[2];
    v8 = 16 * a2[3].i32[0];
    do
    {
      if (v5 < 2)
      {
        v9 = 0;
        v11 = v6;
      }

      else
      {
        v9 = 0;
        v10 = v5;
        v11 = v6;
        do
        {
          v12 = vaddq_f32(v11, xmmword_2603429B0);
          v13 = *(a1 + 408);
          v14 = *(v13 + 16);
          v15 = *(v13 + 64);
          v16 = *(v13 + 80);
          v17 = vmulq_f32(v16, vsubq_f32(v11, *v13));
          v18 = vmulq_f32(v16, vsubq_f32(v12, *v13));
          v19 = vmulq_f32(v17, v17);
          v20 = vmulq_f32(v18, v18);
          v21 = vaddq_f32(v19, vextq_s8(v19, v19, 4uLL));
          v22 = vaddq_f32(v20, vextq_s8(v20, v20, 4uLL));
          v23 = vaddq_f32(v21, vextq_s8(v21, v21, 8uLL));
          v24 = vaddq_f32(v22, vextq_s8(v22, v22, 8uLL));
          v25 = *(v13 + 128);
          v26 = *(v13 + 144);
          v27 = vminq_f32(vrsqrteq_f32(v23), v25);
          v28 = vminq_f32(vrsqrteq_f32(v24), v25);
          v29 = vminq_f32(vmulq_f32(v27, vrsqrtsq_f32(vmulq_f32(v27, v23), v27)), v25);
          v30 = vminq_f32(vmulq_f32(v28, vrsqrtsq_f32(vmulq_f32(v28, v24), v28)), v25);
          v31 = vmulq_f32(v23, vminq_f32(vmulq_f32(v29, vrsqrtsq_f32(vmulq_f32(v23, v29), v29)), v25));
          v32 = *(v13 + 48);
          v33 = vmulq_f32(v24, vminq_f32(vmulq_f32(v30, vrsqrtsq_f32(vmulq_f32(v24, v30), v30)), v25));
          v34 = vdupq_lane_s32(*&v32, 1);
          v35 = vdupq_lane_s32(*&v32, 0);
          v36 = vminq_f32(vmaxq_f32(vrecpeq_f32(v35), v26), v25);
          v37 = vminq_f32(vmaxq_f32(vmulq_f32(v36, vrecpsq_f32(v35, v36)), v26), v25);
          v38 = vmulq_f32(v37, vrecpsq_f32(v35, v37));
          v39 = vmulq_f32(vaddq_f32(v31, v34), v38);
          v40 = vmulq_f32(vaddq_f32(v33, v34), v38);
          v41 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
          v42 = vcvtq_f32_s32(vcvtq_s32_f32(v40));
          v43 = *(v13 + 160);
          v44 = *(v13 + 176);
          v45 = vsubq_f32(v39, vsubq_f32(v41, vandq_s8(v43, vcgtq_f32(v41, v39))));
          v46 = vsubq_f32(v40, vsubq_f32(v42, vandq_s8(v43, vcgtq_f32(v42, v40))));
          v47 = vsubq_f32(v44, v45);
          v48 = vsubq_f32(v44, v46);
          v49 = *(v13 + 192);
          v50 = *(v13 + 208);
          v51 = vbslq_s8(vcgtq_f32(vandq_s8(v43, vcgtq_f32(v49, v47)), v49), vaddq_f32(v44, v47), v45);
          v52 = vbslq_s8(vcgtq_f32(vandq_s8(v43, vcgtq_f32(v49, v48)), v49), vaddq_f32(v44, v48), v46);
          v53 = vsubq_f32(v50, v51);
          v54 = vsubq_f32(v50, v52);
          v55 = vbslq_s8(vcgtq_f32(vandq_s8(v43, vcgtq_f32(v49, v53)), v49), v51, vaddq_f32(v50, v53));
          v56 = vbslq_s8(vcgtq_f32(vandq_s8(v43, vcgtq_f32(v49, v54)), v49), v52, vaddq_f32(v50, v54));
          v57 = *(v13 + 224);
          v58 = *(v13 + 240);
          v59 = vminq_f32(vmaxq_f32(vaddq_f32(v57, vmulq_f32(v15, vsubq_f32(v55, v57))), v49), v43);
          v60 = vminq_f32(vmaxq_f32(vaddq_f32(v57, vmulq_f32(v15, vsubq_f32(v56, v57))), v49), v43);
          v61 = vmulq_f32(v59, v59);
          v62 = vmulq_f32(v60, v60);
          v63 = vmulq_f32(v59, v61);
          v64 = vmulq_f32(v61, v58);
          v65 = vmulq_f32(v62, v58);
          v66 = vmulq_f32(v60, v62);
          v67 = *(v13 + 256);
          v68 = vsubq_f32(v64, vmulq_f32(v63, v67));
          v69 = vsubq_f32(v65, vmulq_f32(v66, v67));
          v70 = vsubq_f32(*(v13 + 32), v14);
          v71 = *(v13 + 96);
          v72 = *(v13 + 112);
          v73 = (*&v7 + 16 * v9);
          *v73 = vmulq_n_f32(vaddq_f32(v14, vmulq_f32(v68, v70)), vmulq_f32(vsubq_f32(v43, vminq_f32(vmaxq_f32(vsubq_f32(v31, v71), v49), v43)), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v31, v43), v72), v49), v43)).f32[0]);
          v73[1] = vmulq_n_f32(vaddq_f32(v14, vmulq_f32(v69, v70)), vmulq_f32(vsubq_f32(v43, vminq_f32(vmaxq_f32(vsubq_f32(v33, v71), v49), v43)), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v33, v43), v72), v49), v43)).f32[0]);
          v11 = vaddq_f32(v12, xmmword_2603429B0);
          v9 += 2;
          v10 -= 2;
        }

        while (v10 > 1);
        v9 = v9;
      }

      if (v9 < v5)
      {
        v74 = *(a1 + 408);
        v75 = vmulq_f32(*(v74 + 80), vsubq_f32(v11, *v74));
        v76 = vmulq_f32(v75, v75);
        v77 = vaddq_f32(v76, vextq_s8(v76, v76, 4uLL));
        v78 = vaddq_f32(v77, vextq_s8(v77, v77, 8uLL));
        v79 = *(v74 + 128);
        v80 = *(v74 + 144);
        v81 = vminq_f32(vrsqrteq_f32(v78), v79);
        v82 = vminq_f32(vmulq_f32(v81, vrsqrtsq_f32(vmulq_f32(v81, v78), v81)), v79);
        v83 = *(v74 + 48);
        v84 = vmulq_f32(v78, vminq_f32(vmulq_f32(v82, vrsqrtsq_f32(vmulq_f32(v82, v78), v82)), v79));
        v85 = vaddq_f32(v84, vdupq_lane_s32(*&v83, 1));
        v86 = vdupq_lane_s32(*&v83, 0);
        v87 = vminq_f32(vmaxq_f32(vrecpeq_f32(v86), v80), v79);
        v88 = vminq_f32(vmaxq_f32(vmulq_f32(v87, vrecpsq_f32(v86, v87)), v80), v79);
        v89 = vmulq_f32(v85, vmulq_f32(v88, vrecpsq_f32(v86, v88)));
        v90 = vcvtq_f32_s32(vcvtq_s32_f32(v89));
        v91 = *(v74 + 160);
        v92 = *(v74 + 176);
        v93 = vsubq_f32(v89, vsubq_f32(v90, vandq_s8(v91, vcgtq_f32(v90, v89))));
        v94 = vsubq_f32(v92, v93);
        v95 = vaddq_f32(v92, v94);
        v96 = *(v74 + 192);
        v97 = *(v74 + 208);
        v98 = vbslq_s8(vcgtq_f32(vandq_s8(v91, vcgtq_f32(v96, v94)), v96), v95, v93);
        v99 = vsubq_f32(v97, v98);
        v100 = vminq_f32(vmaxq_f32(vaddq_f32(*(v74 + 224), vmulq_f32(*(v74 + 64), vsubq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v91, vcgtq_f32(v96, v99)), v96), v98, vaddq_f32(v97, v99)), *(v74 + 224)))), v96), v91);
        v101 = vmulq_f32(v100, v100);
        *(*&v7 + 16 * v9) = vmulq_n_f32(vaddq_f32(*(v74 + 16), vmulq_f32(vsubq_f32(vmulq_f32(v101, *(v74 + 240)), vmulq_f32(vmulq_f32(v100, v101), *(v74 + 256))), vsubq_f32(*(v74 + 32), *(v74 + 16)))), vmulq_f32(vsubq_f32(v91, vminq_f32(vmaxq_f32(vsubq_f32(v84, *(v74 + 96)), v96), v91)), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v84, v91), *(v74 + 112)), v96), v91)).f32[0]);
      }

      v6 = vaddq_f32(v6, xmmword_2603429C0);
      *&v7 += v8;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcConcentricCircles::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcConcentricCircles::HgcConcentricCircles(HgcConcentricCircles *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E1338;
  operator new();
}

void HgcConcentricCircles::~HgcConcentricCircles(HGNode *this)
{
  *this = &unk_2871E1338;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FDACBBE0);
  }

  HGNode::~HGNode(this);
}

{
  HgcConcentricCircles::~HgcConcentricCircles(this);

  HGObject::operator delete(v1);
}

uint64_t HgcConcentricCircles::SetParameter(HgcConcentricCircles *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v13 = *(this + 51);
        if (*(v13 + 64) != a3.n128_f32[0] || *(v13 + 68) != a3.n128_f32[0] || *(v13 + 72) != a3.n128_f32[0] || *(v13 + 76) != a3.n128_f32[0])
        {
          v14 = vdupq_lane_s32(a3.n128_u64[0], 0);
          a3.n128_f32[1] = a4;
          *(v13 + 64) = v14;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v13 + 288) = a3;
          goto LABEL_50;
        }
      }

      else
      {
        v9 = *(this + 51);
        if (*(v9 + 80) != a3.n128_f32[0] || *(v9 + 84) != a4 || *(v9 + 88) != a5 || *(v9 + 92) != a6)
        {
          *(v9 + 80) = a3.n128_u32[0];
          *(v9 + 84) = a4;
          *(v9 + 88) = a5;
          *(v9 + 92) = a6;
          goto LABEL_50;
        }
      }

      return 0;
    }

    if (a2 == 6)
    {
      v16 = *(this + 51);
      if (*(v16 + 96) != a3.n128_f32[0] || *(v16 + 100) != a4 || *(v16 + 104) != a5 || *(v16 + 108) != a6)
      {
        *(v16 + 96) = a3.n128_u32[0];
        *(v16 + 100) = a4;
        *(v16 + 104) = a5;
        *(v16 + 108) = a6;
        goto LABEL_50;
      }

      return 0;
    }

    if (a2 == 7)
    {
      v11 = *(this + 51);
      if (*(v11 + 112) != a3.n128_f32[0] || *(v11 + 116) != a4 || *(v11 + 120) != a5 || *(v11 + 124) != a6)
      {
        *(v11 + 112) = a3.n128_u32[0];
        *(v11 + 116) = a4;
        *(v11 + 120) = a5;
        *(v11 + 124) = a6;
        goto LABEL_50;
      }

      return 0;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v15 = *(this + 51);
        if (*(v15 + 32) != a3.n128_f32[0] || *(v15 + 36) != a4 || *(v15 + 40) != a5 || *(v15 + 44) != a6)
        {
          *(v15 + 32) = a3.n128_u32[0];
          *(v15 + 36) = a4;
          *(v15 + 40) = a5;
          *(v15 + 44) = a6;
          goto LABEL_50;
        }
      }

      else
      {
        v10 = *(this + 51);
        if (*(v10 + 48) != a3.n128_f32[0] || *(v10 + 52) != a4 || *(v10 + 56) != a5 || *(v10 + 60) != a6)
        {
          *(v10 + 48) = a3.n128_u32[0];
          *(v10 + 52) = a4;
          *(v10 + 56) = a5;
          *(v10 + 60) = a6;
          goto LABEL_50;
        }
      }

      return 0;
    }

    if (!a2)
    {
      v12 = *(this + 51);
      if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
      {
        *v12 = a3.n128_u32[0];
        *(v12 + 4) = a4;
        *(v12 + 8) = a5;
        *(v12 + 12) = a6;
        goto LABEL_50;
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
LABEL_50:
        HGNode::ClearBits(this, a2, a7);
        return 1;
      }

      return 0;
    }
  }

  return v7;
}