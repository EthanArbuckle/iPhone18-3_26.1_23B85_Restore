const char *HgcPostKeyer::GetProgram(HgcPostKeyer *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004a5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(1.500000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.w = clamp((half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w, 0.00000h, 1.00000h);\n    r1.w = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r2.xyz = (half3) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).xyz;\n    r2.w = r0.w*r1.w;\n    r0.xyz = r2.xyz*r2.www;\n    r0.w = r2.w;\n    r1.xyz = r2.www*c0.xxx;\n    r2.xyz = fmin(r2.xyz, r1.xyz);\n    output.color0 = select(float4(r2), float4(r0), hg_Params[0] < 0.00000h);\n    return output;\n}\n//MD5=ac3c4169:2aa5ccac:b161e04f:c5644a90\n//SIG=00400000:00000007:00000007:00000007:0001:0001:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000485\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(1.500000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.w = clamp(hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w, 0.00000f, 1.00000f);\n    r1.w = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r2.xyz = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).xyz;\n    r2.w = r0.w*r1.w;\n    r0.xyz = r2.xyz*r2.www;\n    r0.w = r2.w;\n    r1.xyz = r2.www*c0.xxx;\n    r2.xyz = fmin(r2.xyz, r1.xyz);\n    output.color0 = select(r2, r0, hg_Params[0] < 0.00000f);\n    return output;\n}\n//MD5=b68eca56:efb16708:2aa9ef38:32f07454\n//SIG=00000000:00000007:00000007:00000000:0001:0001:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000496\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.500000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0.w = clamp(texture2D(hg_Texture0, hg_TexCoord0.xy).w, 0.00000, 1.00000);\n    r1.w = texture2D(hg_Texture1, hg_TexCoord1.xy).w;\n    r2.xyz = texture2D(hg_Texture2, hg_TexCoord2.xy).xyz;\n    r2.w = r0.w*r1.w;\n    r0.xyz = r2.xyz*r2.www;\n    r0.w = r2.w;\n    r1.xyz = r2.www*c0.xxx;\n    r2.xyz = min(r2.xyz, r1.xyz);\n    gl_FragColor = vec4(hg_ProgramLocal0.x < 0.00000 ? r0.x : r2.x, hg_ProgramLocal0.y < 0.00000 ? r0.y : r2.y, hg_ProgramLocal0.z < 0.00000 ? r0.z : r2.z, hg_ProgramLocal0.w < 0.00000 ? r0.w : r2.w);\n}\n//MD5=355724b1:a103a094:3d401bd8:cc3312ac\n//SIG=00000000:00000007:00000007:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FAB1FFC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB217C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB21CC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB21C4);
}

uint64_t HgcPostKeyer::BindTexture(HgcPostKeyer *this, HGHandler *a2, int a3)
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

uint64_t HgcPostKeyer::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcPostKeyer::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 24);
    v6 = *(a2 + 16);
    v7 = *(a2 + 112);
    v8 = *(a2 + 96);
    v9 = 16 * *(a2 + 104);
    v10 = 16 * *(a2 + 88);
    v11 = *(a2 + 80);
    v12 = 16 * *(a2 + 120);
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
          v17 = *(a1 + 408);
          v18 = *(v17 + 16);
          v19 = *(v17 + 32);
          v20 = *(v17 + 48);
          v21 = vmulq_f32(vminq_f32(vmaxq_f32(*(v11 + v14), v18), v19), *(v8 + v14));
          v22 = vmulq_f32(vminq_f32(vmaxq_f32(*(v11 + v14 + 16), v18), v19), *(v8 + v14 + 16));
          v23 = vmulq_f32(vminq_f32(vmaxq_f32(*(v11 + v14 + 32), v18), v19), *(v8 + v14 + 32));
          v24 = vmulq_f32(vminq_f32(vmaxq_f32(*(v11 + v14 + 48), v18), v19), *(v8 + v14 + 48));
          v25 = vbslq_s8(v20, v21, *(v7 + v14));
          v26 = vbslq_s8(v20, v22, *(v7 + v14 + 16));
          v27 = vbslq_s8(v20, v23, *(v7 + v14 + 32));
          v28 = vbslq_s8(v20, v24, *(v7 + v14 + 48));
          v29 = vcgtq_f32(v18, *v17);
          v30 = (v6 + v14);
          *v30 = vbslq_s8(v20, v21, vbslq_s8(v29, vmulq_laneq_f32(v25, v25, 3), vminq_f32(v25, vmulq_laneq_f32(v19, v25, 3))));
          v30[1] = vbslq_s8(v20, v22, vbslq_s8(v29, vmulq_laneq_f32(v26, v26, 3), vminq_f32(v26, vmulq_laneq_f32(v19, v26, 3))));
          v30[2] = vbslq_s8(v20, v23, vbslq_s8(v29, vmulq_laneq_f32(v27, v27, 3), vminq_f32(v27, vmulq_laneq_f32(v19, v27, 3))));
          v30[3] = vbslq_s8(v20, v24, vbslq_s8(v29, vmulq_laneq_f32(v28, v28, 3), vminq_f32(v28, vmulq_laneq_f32(v19, v28, 3))));
          v15 += 4;
          v14 += 64;
        }
      }

      if (v15 < v4)
      {
        do
        {
          v31 = *(a1 + 408);
          v32 = *(v31 + 16);
          v33 = *(v31 + 32);
          v34 = vmulq_f32(vminq_f32(vmaxq_f32(*(v11 + 16 * v15), v32), v33), *(v8 + 16 * v15));
          v35 = vbslq_s8(*(v31 + 48), v34, *(v7 + 16 * v15));
          *(v6 + 16 * v15++) = vbslq_s8(*(v31 + 48), v34, vbslq_s8(vcgtq_f32(v32, *v31), vmulq_laneq_f32(v35, v35, 3), vminq_f32(v35, vmulq_laneq_f32(v33, v35, 3))));
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

uint64_t HgcPostKeyer::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcPostKeyer::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcPostKeyer::HgcPostKeyer(HgcPostKeyer *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E9C60;
  operator new();
}

void HgcPostKeyer::~HgcPostKeyer(HGNode *this)
{
  *this = &unk_2871E9C60;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcPostKeyer::~HgcPostKeyer(this);

  HGObject::operator delete(v1);
}

uint64_t HgcPostKeyer::SetParameter(HgcPostKeyer *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcPostKeyer::GetParameter(HgcPostKeyer *this, int a2, float *a3)
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

const char *HgcAnalyzeGrain::GetProgram(HgcAnalyzeGrain *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_300;
    }

    else
    {
      return aMetal10Len0000_301;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_99;
  }
}

void sub_25FAB2984(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB2DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB2E6C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB2E64);
}

uint64_t HgcAnalyzeGrain::BindTexture(HgcAnalyzeGrain *this, HGHandler *a2, int a3)
{
  if (a3 == 2)
  {
    (*(*a2 + 72))(a2, 2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 2, 0, 0, 0);
    HGHandler::TexCoord(a2, 7, 0, 0, 0);
    if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      (*(*a2 + 168))(a2);
    }

    (*(*a2 + 96))(a2, 1.0, 1.0, 0.0);
    v11 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    v7.n128_f32[0] = *(a2 + 60);
    v8.n128_f32[0] = *(a2 + 61);
    if (v11)
    {
      v9 = *(*a2 + 136);
      v5.n128_u32[0] = 1.0;
      v6.n128_u32[0] = 1.0;
    }

    else
    {
      v5.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v9 = *(*a2 + 136);
      v6.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v13 = a2;
    v14 = 2;
  }

  else if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 1, 0, 0, 0);
    v10 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    v7.n128_f32[0] = *(a2 + 60);
    v8.n128_f32[0] = *(a2 + 61);
    if (v10)
    {
      v9 = *(*a2 + 136);
      v5.n128_u32[0] = 1.0;
      v6.n128_u32[0] = 1.0;
    }

    else
    {
      v5.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v9 = *(*a2 + 136);
      v6.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v13 = a2;
    v14 = 1;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    HGHandler::TexCoord(a2, 5, 0, 0, 0);
    if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      (*(*a2 + 168))(a2);
    }

    (*(*a2 + 96))(a2, -1.0, -1.0, 0.0);
    HGHandler::TexCoord(a2, 3, 0, 0, 0);
    if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      (*(*a2 + 168))(a2);
    }

    (*(*a2 + 96))(a2, -1.0, 0.0, 0.0);
    HGHandler::TexCoord(a2, 6, 0, 0, 0);
    if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      (*(*a2 + 168))(a2);
    }

    (*(*a2 + 96))(a2, -1.0, 1.0, 0.0);
    HGHandler::TexCoord(a2, 4, 0, 0, 0);
    if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
    {
      (*(*a2 + 168))(a2);
    }

    (*(*a2 + 96))(a2, 0.0, -1.0, 0.0);
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    v7.n128_f32[0] = *(a2 + 60);
    v8.n128_f32[0] = *(a2 + 61);
    if (v4)
    {
      v9 = *(*a2 + 136);
      v5.n128_u32[0] = 1.0;
      v6.n128_u32[0] = 1.0;
    }

    else
    {
      v5.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v9 = *(*a2 + 136);
      v6.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v13 = a2;
    v14 = 0;
  }

  v9(v13, v14, v7, v8, v5, v6);
  return 0;
}

uint64_t HgcAnalyzeGrain::RenderTile(uint64_t a1, uint64_t a2)
{
  v39 = *(a2 + 12) - *(a2 + 4);
  if (v39 >= 1)
  {
    v2 = 0;
    v3 = *(a2 + 88);
    v4 = *(a2 + 104);
    v5 = *(a2 + 120);
    v6 = (*(a2 + 8) - *a2);
    v7 = *(a2 + 112);
    v8 = *(a2 + 96);
    v9 = 16 * v3;
    v10 = 16 * v5;
    v11 = *(a2 + 80);
    v12 = v7 + 16 * v5;
    v13 = 16 * *(a2 + 24);
    v14 = 16 * v4;
    v15 = v8 + 16 * v4;
    v16 = v11 + 16 * v3;
    v17 = ~v5;
    v18 = -v5;
    v19 = *(a2 + 16);
    v20 = ~v4;
    v21 = -v4;
    v22 = ~v3;
    v23 = -v3;
    do
    {
      if (v6 >= 1)
      {
        v24 = 0;
        for (i = 0; i != v6; ++i)
        {
          v26 = vdupq_lane_s32(*(v11 + 16 * (v22 + i)), 0);
          v27 = vdupq_lane_s32(*(v16 + v24 - 16), 0);
          v28 = vdupq_lane_s32(*(v11 + 16 * (v23 + i + 1)), 0);
          v29 = vdupq_lane_s32(*(v16 + v24 + 16), 0);
          v30 = *(a1 + 408);
          v31 = *(v30 + 16);
          v32 = vsubq_f32(vaddq_f32(vmulq_n_f32(v31, COERCE_FLOAT(*(v11 + 16 * (v23 + i)))), vsubq_f32(vaddq_f32(v29, vaddq_f32(v27, vmulq_n_f32(*v30, COERCE_FLOAT(*(v16 + v24))))), v26)), v28);
          v33 = vsubq_f32(vaddq_f32(vmulq_n_f32(v31, COERCE_FLOAT(*(v11 + v24 + 16))), vsubq_f32(vaddq_f32(v26, vaddq_f32(v27, vmulq_n_f32(*v30, COERCE_FLOAT(*(v11 + v24 - 16))))), v29)), v28);
          v34 = vaddq_f32(vmulq_f32(v33, v33), vmulq_f32(v32, v32));
          v35 = *(v30 + 48);
          v36 = vminq_f32(vmulq_f32(vrsqrteq_f32(v34), *(v30 + 32)), v35);
          v37 = *(v30 + 80);
          *(v19 + 16 * i) = vbslq_s8(*(v30 + 128), *(v11 + 16 * i), vbslq_s8(*(v30 + 112), vandq_s8(v37, vcgeq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(*(v8 + v24), *(v8 + 16 * (v20 + i))), *(v8 + v24 - 16)), *(v15 + v24 - 16)), *(v8 + 16 * (v21 + i))), *(v15 + v24)), *(v8 + 16 * (v21 + i + 1))), *(v8 + v24 + 16)), *(v15 + v24 + 16)), v37)), vbslq_s8(*(v30 + 96), vandq_s8(v37, vcgeq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(vmulq_f32(*(v7 + v24), *(v7 + 16 * (v17 + i))), *(v7 + v24 - 16)), *(v12 + v24 - 16)), *(v7 + 16 * (v18 + i))), *(v12 + v24)), *(v7 + 16 * (v18 + i + 1))), *(v7 + v24 + 16)), *(v12 + v24 + 16)), v37)), vmulq_f32(*(v30 + 64), vmulq_f32(vminq_f32(vmulq_f32(v36, vrsqrtsq_f32(vmulq_f32(v36, v34), v36)), v35), v34)))));
          v24 += 16;
        }
      }

      v11 += v9;
      v8 += v14;
      v7 += v10;
      ++v2;
      v12 += v10;
      v19 += v13;
      v15 += v14;
      v16 += v9;
    }

    while (v2 != v39);
  }

  return 0;
}

uint64_t HgcAnalyzeGrain::GetDOD(HgcAnalyzeGrain *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 > 2)
  {
    return 0;
  }

  v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(v5, v4, v6);
}

uint64_t HgcAnalyzeGrain::GetROI(HgcAnalyzeGrain *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 > 2)
  {
    return 0;
  }

  v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
  return HGRectGrow(v5, v4, v6);
}

void HgcAnalyzeGrain::HgcAnalyzeGrain(HgcAnalyzeGrain *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E9EC8;
  operator new();
}

void HgcAnalyzeGrain::~HgcAnalyzeGrain(HGNode *this)
{
  *this = &unk_2871E9EC8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcAnalyzeGrain::~HgcAnalyzeGrain(this);

  HGObject::operator delete(v1);
}

const char *HgcLocateScreen::GetProgram(HgcLocateScreen *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000480\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.yzw = (half3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yzw;\n    r1.xyz = r0.yyy;\n    r2.xyz = r0.zzz;\n    r3.xyz = atan2(r2.xyz, r1.xyz);\n    r1.xyz = r1.xyz*r1.xyz;\n    r2.xyz = r2.xyz*r2.xyz + r1.xyz;\n    r2.xyz = sqrt(r2.xyz);\n    r2.xyz = half3(r2.xyz > half3(hg_Params[2].xyz));\n    r1.xyz = half3(r3.xyz < half3(hg_Params[1].xyz));\n    r3.xyz = half3(r3.xyz > half3(hg_Params[0].xyz));\n    r3.xyz = r3.xyz + r1.xyz;\n    r3.xyz = half3(r3.xyz >= c0.xxx);\n    r3.xyz = r2.xyz + r3.xyz;\n    output.color0.xyz = float3(float3(r3.xyz) >= float3(c0.xxx));\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=bd50a921:07ba7b16:f8789052:b7eb8a35\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000454\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.yzw = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yzw;\n    r1.xyz = r0.yyy;\n    r2.xyz = r0.zzz;\n    r3.xyz = atan2(r2.xyz, r1.xyz);\n    r1.xyz = r1.xyz*r1.xyz;\n    r2.xyz = r2.xyz*r2.xyz + r1.xyz;\n    r2.xyz = sqrt(r2.xyz);\n    r2.xyz = float3(r2.xyz > hg_Params[2].xyz);\n    r1.xyz = float3(r3.xyz < hg_Params[1].xyz);\n    r3.xyz = float3(r3.xyz > hg_Params[0].xyz);\n    r3.xyz = r3.xyz + r1.xyz;\n    r3.xyz = float3(r3.xyz >= c0.xxx);\n    r3.xyz = r2.xyz + r3.xyz;\n    output.color0.xyz = float3(r3.xyz >= c0.xxx);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=6a3f04bd:04c57ffc:fc3da61c:898fd344\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004af\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0.yzw = texture2D(hg_Texture0, hg_TexCoord0.xy).yzw;\n    r1.xyz = r0.yyy;\n    r2.xyz = r0.zzz;\n    r3.xyz = atan(r2.xyz, r1.xyz);\n    r1.xyz = r1.xyz*r1.xyz;\n    r2.xyz = r2.xyz*r2.xyz + r1.xyz;\n    r2.xyz = sqrt(r2.xyz);\n    r2.xyz = vec3(greaterThan(r2.xyz, hg_ProgramLocal2.xyz));\n    r1.xyz = vec3(lessThan(r3.xyz, hg_ProgramLocal1.xyz));\n    r3.xyz = vec3(greaterThan(r3.xyz, hg_ProgramLocal0.xyz));\n    r3.xyz = r3.xyz + r1.xyz;\n    r3.xyz = vec3(greaterThanEqual(r3.xyz, c0.xxx));\n    r3.xyz = r2.xyz + r3.xyz;\n    gl_FragColor.xyz = vec3(greaterThanEqual(r3.xyz, c0.xxx));\n    gl_FragColor.w = r0.w;\n}\n//MD5=6dd6ceec:e52b1134:8f219427:4ceff825\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAB3C60(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FAB3D60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB3DA0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB3D98);
}

uint64_t HgcLocateScreen::BindTexture(HgcLocateScreen *this, HGHandler *a2, int a3)
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

uint64_t HgcLocateScreen::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcLocateScreen::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 80);
    v7 = 16 * *(a2 + 24);
    v8 = 16 * *(a2 + 88);
    do
    {
      if (v4 < 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 16;
        for (i = v4; i > 1; i -= 2)
        {
          v12 = *(v6 + v10 - 16);
          v13 = *(v6 + v10);
          v14 = vdupq_lane_s32(*v12.f32, 1);
          v15 = vdupq_lane_s32(*v13.f32, 1);
          v16 = vdupq_laneq_s32(v12, 2);
          v17 = vdupq_laneq_s32(v13, 2);
          v18 = vabsq_f32(v16);
          v19 = vabsq_f32(v17);
          v20 = vabsq_f32(v14);
          v21 = vabsq_f32(v15);
          v22 = vmaxq_f32(v20, v18);
          v23 = vmaxq_f32(v21, v19);
          v24 = vminq_f32(v20, v18);
          v25 = vminq_f32(v21, v19);
          v26 = vsubq_f32(v18, v20);
          v27 = vsubq_f32(v19, v21);
          v28 = *(a1 + 408);
          v29 = *(v28 + 32);
          v30 = *(v28 + 48);
          v31 = vmaxq_f32(v22, v30);
          v32 = vmaxq_f32(v23, v30);
          v33 = *(v28 + 64);
          v34 = *(v28 + 80);
          v35 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v31), v33), v34);
          v36 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v32), v33), v34);
          v37 = *(v28 + 96);
          v38 = *(v28 + 112);
          v39 = vminq_f32(v35, v37);
          v40 = vminq_f32(v36, v37);
          v41 = vmulq_f32(v24, vmulq_f32(v39, vrecpsq_f32(v31, v39)));
          v42 = vmulq_f32(v25, vmulq_f32(v40, vrecpsq_f32(v32, v40)));
          v43 = vmulq_f32(v41, v41);
          v44 = vmulq_f32(v42, v42);
          v45 = *(v28 + 128);
          v46 = *(v28 + 144);
          v47 = vmulq_f32(v43, v45);
          v48 = vaddq_f32(v46, vmulq_f32(v44, vaddq_f32(v38, vmulq_f32(v45, v44))));
          v49 = vmulq_f32(v43, vaddq_f32(v46, vmulq_f32(v43, vaddq_f32(v38, v47))));
          v50 = *(v28 + 160);
          v51 = *(v28 + 176);
          v52 = vaddq_f32(v51, vmulq_f32(v43, vaddq_f32(v50, v49)));
          v53 = vaddq_f32(v51, vmulq_f32(v44, vaddq_f32(v50, vmulq_f32(v44, v48))));
          v54 = *(v28 + 192);
          v55 = *(v28 + 208);
          v56 = vmulq_f32(v41, vaddq_f32(v54, vmulq_f32(v43, v52)));
          v57 = vmulq_f32(v42, vaddq_f32(v54, vmulq_f32(v44, v53)));
          v58 = *(v28 + 224);
          v59 = *(v28 + 240);
          v60 = vbslq_s8(vcgtq_f32(v26, v58), vsubq_f32(v55, v56), v56);
          v61 = vcgtq_f32(v58, v14);
          v63 = *(v28 + 256);
          v62 = *(v28 + 272);
          v64 = vbslq_s8(vcgtq_f32(v27, v58), vsubq_f32(v55, v57), v57);
          v65 = vmulq_f32(v12, v12);
          v66 = vmulq_f32(v13, v13);
          v67 = vaddq_f32(vdupq_laneq_s32(v65, 2), vdupq_lane_s32(*v65.i8, 1));
          v68 = vaddq_f32(vdupq_laneq_s32(v66, 2), vdupq_lane_s32(*v66.i8, 1));
          v69 = vbslq_s8(v61, vsubq_f32(v59, v60), v60);
          v70 = vminq_f32(vmulq_f32(v33, vrsqrteq_f32(v67)), v37);
          v71 = vminq_f32(vmulq_f32(v33, vrsqrteq_f32(v68)), v37);
          v72 = veorq_s8(vandq_s8(v63, v16), v69);
          v73 = veorq_s8(vandq_s8(v63, v17), vbslq_s8(vcgtq_f32(v58, v15), vsubq_f32(v59, v64), v64));
          v74 = vandq_s8(v62, vcgtq_f32(vmulq_f32(v67, vminq_f32(vmulq_f32(v70, vrsqrtsq_f32(vmulq_f32(v67, v70), v70)), v37)), v29));
          v75 = *(v28 + 16);
          v76 = vcgtq_f32(v75, v72);
          v77 = vaddq_f32(vandq_s8(v62, vcgtq_f32(v75, v73)), vandq_s8(v62, vcgtq_f32(v73, *v28)));
          v78 = *(v28 + 288);
          v79 = *(v28 + 304);
          v80 = vbslq_s8(v79, v12, vandq_s8(v62, vcgeq_f32(vaddq_f32(v74, vandq_s8(v62, vcgeq_f32(vaddq_f32(vandq_s8(v62, v76), vandq_s8(v62, vcgtq_f32(v72, *v28))), v78))), v78)));
          v81 = (v5 + v10);
          v81[-1] = v80;
          *v81 = vbslq_s8(v79, v13, vandq_s8(v62, vcgeq_f32(vaddq_f32(vandq_s8(v62, vcgtq_f32(vmulq_f32(v68, vminq_f32(vmulq_f32(v71, vrsqrtsq_f32(vmulq_f32(v68, v71), v71)), v37)), v29)), vandq_s8(v62, vcgeq_f32(v77, v78))), v78)));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v82 = *(v6 + 16 * v9);
        v83 = vdupq_lane_s32(*v82.f32, 1);
        v84 = vdupq_laneq_s32(v82, 2);
        v85 = vabsq_f32(v84);
        v86 = vabsq_f32(v83);
        v87 = vmaxq_f32(v86, v85);
        v88 = vminq_f32(v86, v85);
        v89 = vsubq_f32(v85, v86);
        v90 = *(a1 + 408);
        v91 = vmaxq_f32(v87, *(v90 + 48));
        v92 = *(v90 + 64);
        v93 = *(v90 + 96);
        v94 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v91), v92), *(v90 + 80)), v93);
        v95 = vmulq_f32(v88, vmulq_f32(v94, vrecpsq_f32(v91, v94)));
        v96 = vmulq_f32(v95, v95);
        v97 = vmulq_f32(v95, vaddq_f32(*(v90 + 192), vmulq_f32(v96, vaddq_f32(*(v90 + 176), vmulq_f32(v96, vaddq_f32(*(v90 + 160), vmulq_f32(v96, vaddq_f32(*(v90 + 144), vmulq_f32(v96, vaddq_f32(*(v90 + 112), vmulq_f32(*(v90 + 128), v96)))))))))));
        v98 = *(v90 + 224);
        v99 = vbslq_s8(vcgtq_f32(v89, v98), vsubq_f32(*(v90 + 208), v97), v97);
        v100 = *(v90 + 272);
        v101 = veorq_s8(vandq_s8(*(v90 + 256), v84), vbslq_s8(vcgtq_f32(v98, v83), vsubq_f32(*(v90 + 240), v99), v99));
        v102 = vmulq_f32(v82, v82);
        v103 = vaddq_f32(vdupq_laneq_s32(v102, 2), vdupq_lane_s32(*v102.i8, 1));
        v104 = vminq_f32(vmulq_f32(v92, vrsqrteq_f32(v103)), v93);
        *(v5 + 16 * v9) = vbslq_s8(*(v90 + 304), v82, vandq_s8(v100, vcgeq_f32(vaddq_f32(vandq_s8(v100, vcgtq_f32(vmulq_f32(v103, vminq_f32(vmulq_f32(v104, vrsqrtsq_f32(vmulq_f32(v103, v104), v104)), v93)), *(v90 + 32))), vandq_s8(v100, vcgeq_f32(vaddq_f32(vandq_s8(v100, vcgtq_f32(v101, *v90)), vandq_s8(v100, vcgtq_f32(*(v90 + 16), v101))), *(v90 + 288)))), *(v90 + 288))));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcLocateScreen::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcLocateScreen::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcLocateScreen::HgcLocateScreen(HgcLocateScreen *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EA130;
  operator new();
}

void HgcLocateScreen::~HgcLocateScreen(HGNode *this)
{
  *this = &unk_2871EA130;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B2834900);
  }

  HGNode::~HGNode(this);
}

{
  HgcLocateScreen::~HgcLocateScreen(this);

  HGObject::operator delete(v1);
}

uint64_t HgcLocateScreen::SetParameter(HgcLocateScreen *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcLocateScreen::GetParameter(HgcLocateScreen *this, unsigned int a2, float *a3)
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

const char *HgcInvertAlpha::GetProgram(HgcInvertAlpha *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = float3(r0.xyz);\n    output.color0.w = float(c0.w) - float(r0.w);\n    return output;\n}\n//MD5=4195638f:c7609322:8fa04399:e21f718d\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000298\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = r0.xyz;\n    output.color0.w = c0.w - r0.w;\n    return output;\n}\n//MD5=ee7da282:6172f56e:8cc51801:07937604\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000023e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor.xyz = r0.xyz;\n    gl_FragColor.w = c0.w - r0.w;\n}\n//MD5=dcb63e70:610d1313:d4058fd4:49e585a2\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAB476C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FAB486C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB48AC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB48A4);
}

uint64_t HgcInvertAlpha::BindTexture(HgcInvertAlpha *this, HGHandler *a2, int a3)
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

uint64_t HgcInvertAlpha::RenderTile(uint64_t a1, uint64_t a2)
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
          v14 = vbslq_s8(v13, vsubq_f32(*v12, *(v6 + v10 - 32)), *(v6 + v10 - 32));
          v15 = vbslq_s8(v13, vsubq_f32(*v12, *(v6 + v10 - 16)), *(v6 + v10 - 16));
          v16 = vbslq_s8(v13, vsubq_f32(*v12, *(v6 + v10)), *(v6 + v10));
          v17 = vbslq_s8(v13, vsubq_f32(*v12, *(v6 + v10 + 16)), *(v6 + v10 + 16));
          v18 = (v5 + v10);
          v18[-2] = v14;
          v18[-1] = v15;
          *v18 = v16;
          v18[1] = v17;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          *(v5 + 16 * v9) = vbslq_s8(*(*(a1 + 408) + 16), vsubq_f32(**(a1 + 408), *(v6 + 16 * v9)), *(v6 + 16 * v9));
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

uint64_t HgcInvertAlpha::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcInvertAlpha::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcInvertAlpha::HgcInvertAlpha(HgcInvertAlpha *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EA398;
  operator new();
}

void HgcInvertAlpha::~HgcInvertAlpha(HGNode *this)
{
  *this = &unk_2871EA398;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  HgcInvertAlpha::~HgcInvertAlpha(this);

  HGObject::operator delete(v1);
}

const char *HgcShrinkGrowMatte::GetProgram(HgcShrinkGrowMatte *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000026a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = clamp(hg_Params[0].xxxx*float4(r0) + hg_Params[0].yyyy, 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=6d5f7ded:36457e40:0a4c039f:248cb26e\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000025c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = clamp(hg_Params[0].xxxx*r0 + hg_Params[0].yyyy, 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=027d7c82:092432fd:47560312:0547aee7\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000238\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = clamp(hg_ProgramLocal0.xxxx*r0 + hg_ProgramLocal0.yyyy, vec4(0.00000), vec4(1.00000));\n}\n//MD5=54873a33:253411f4:86d85163:be7f0eb8\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAB4D9C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB4E9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB4EDC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB4ED4);
}

uint64_t HgcShrinkGrowMatte::BindTexture(HgcShrinkGrowMatte *this, HGHandler *a2, int a3)
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

uint64_t HgcShrinkGrowMatte::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcShrinkGrowMatte::RenderTile(uint64_t a1, uint64_t a2)
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
          v13 = v12[1];
          v14 = vdupq_lane_s32(*v12->f32, 1);
          v15 = vmaxq_f32(vaddq_f32(v14, vmulq_n_f32(*(v6 + v10 - 32), COERCE_FLOAT(*v12))), v13);
          v16 = vmaxq_f32(vaddq_f32(v14, vmulq_n_f32(*(v6 + v10 - 16), COERCE_FLOAT(*v12))), v13);
          v17 = vmaxq_f32(vaddq_f32(v14, vmulq_n_f32(*(v6 + v10), COERCE_FLOAT(*v12))), v13);
          v18 = vmaxq_f32(vaddq_f32(v14, vmulq_n_f32(*(v6 + v10 + 16), COERCE_FLOAT(*v12))), v13);
          v19 = v12[2];
          v20 = (v5 + v10);
          v20[-2] = vminq_f32(v15, v19);
          v20[-1] = vminq_f32(v16, v19);
          *v20 = vminq_f32(v17, v19);
          v20[1] = vminq_f32(v18, v19);
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          *(v5 + 16 * v9) = vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(**(a1 + 408), 1), vmulq_n_f32(*(v6 + 16 * v9), COERCE_FLOAT(**(a1 + 408)))), *(*(a1 + 408) + 16)), *(*(a1 + 408) + 32));
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

uint64_t HgcShrinkGrowMatte::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcShrinkGrowMatte::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcShrinkGrowMatte::HgcShrinkGrowMatte(HgcShrinkGrowMatte *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EA600;
  operator new();
}

void HgcShrinkGrowMatte::~HgcShrinkGrowMatte(HGNode *this)
{
  *this = &unk_2871EA600;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);
}

{
  HgcShrinkGrowMatte::~HgcShrinkGrowMatte(this);

  HGObject::operator delete(v1);
}

uint64_t HgcShrinkGrowMatte::SetParameter(HgcShrinkGrowMatte *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcShrinkGrowMatte::GetParameter(HgcShrinkGrowMatte *this, int a2, float *a3)
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

const char *HgcErode::GetProgram(HgcErode *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000037c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r0*r1;\n    r2 = c0.xxxx - r0;\n    r2 = r2*r0;\n    output.color0 = float4(r2)*float4(c0.yyyy) + float4(r1);\n    return output;\n}\n//MD5=71c2c7c7:36cbd345:cf5b3499:c6a8e726\n//SIG=00400000:00000003:00000003:00000003:0001:0000:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000359\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r0*r1;\n    r2 = c0.xxxx - r0;\n    r2 = r2*r0;\n    output.color0 = r2*c0.yyyy + r1;\n    return output;\n}\n//MD5=975a6424:af4d8e2e:219a5383:c7186f2c\n//SIG=00000000:00000003:00000003:00000000:0001:0000:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002dc\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r0*r1;\n    r2 = c0.xxxx - r0;\n    r2 = r2*r0;\n    gl_FragColor = r2*c0.yyyy + r1;\n}\n//MD5=0a099ba2:a107ce1c:b507f13f:1b92ae9c\n//SIG=00000000:00000003:00000003:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FAB54E8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB5628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB5670()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB5668);
}

uint64_t HgcErode::BindTexture(HgcErode *this, HGHandler *a2, int a3)
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

uint64_t HgcErode::RenderTile(uint64_t a1, uint64_t a2)
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
          v15 = v14[1];
          v16 = vaddq_f32(vmulq_f32(*(v8 + v12 - 32), *(v6 + v12 - 32)), vmulq_f32(v15, vmulq_f32(*(v8 + v12 - 32), vsubq_f32(*v14, *(v8 + v12 - 32)))));
          v17 = vaddq_f32(vmulq_f32(*(v8 + v12 - 16), *(v6 + v12 - 16)), vmulq_f32(v15, vmulq_f32(*(v8 + v12 - 16), vsubq_f32(*v14, *(v8 + v12 - 16)))));
          v18 = vaddq_f32(vmulq_f32(*(v8 + v12), *(v6 + v12)), vmulq_f32(v15, vmulq_f32(*(v8 + v12), vsubq_f32(*v14, *(v8 + v12)))));
          v19 = vaddq_f32(vmulq_f32(*(v8 + v12 + 16), *(v6 + v12 + 16)), vmulq_f32(v15, vmulq_f32(*(v8 + v12 + 16), vsubq_f32(*v14, *(v8 + v12 + 16)))));
          v20 = (v5 + v12);
          v20[-2] = v16;
          v20[-1] = v17;
          *v20 = v18;
          v20[1] = v19;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          *(v5 + 16 * v11) = vaddq_f32(vmulq_f32(*(v8 + 16 * v11), *(v6 + 16 * v11)), vmulq_f32(*(*(a1 + 408) + 16), vmulq_f32(*(v8 + 16 * v11), vsubq_f32(**(a1 + 408), *(v8 + 16 * v11)))));
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

uint64_t HgcErode::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcErode::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcErode::HgcErode(HgcErode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EA868;
  operator new();
}

void HgcErode::~HgcErode(HGNode *this)
{
  *this = &unk_2871EA868;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  HgcErode::~HgcErode(this);

  HGObject::operator delete(v1);
}

const char *HgcBlueGreenScreenCandidate::GetProgram(HgcBlueGreenScreenCandidate *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.7500000000, 0.2500000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = (half3) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r2.xyz = (half3) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).xyz;\n    r2.w = r2.x;\n    r1.w = r1.x;\n    r2 = r2*c0.xxxw;\n    r0 = r0*c0.yyyx + r2;\n    output.color0 = float4(r1)*float4(c0.xxxz) + float4(r0);\n    return output;\n}\n//MD5=afa572df:1e672efe:3c473380:3fe513c3\n//SIG=00400000:00000007:00000007:00000007:0001:0000:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000423\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.7500000000, 0.2500000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r2.xyz = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).xyz;\n    r2.w = r2.x;\n    r1.w = r1.x;\n    r2 = r2*c0.xxxw;\n    r0 = r0*c0.yyyx + r2;\n    output.color0 = r1*c0.xxxz + r0;\n    return output;\n}\n//MD5=9b105f25:958b08fb:dba25ffd:bfc5de91\n//SIG=00000000:00000007:00000007:00000000:0001:0000:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000382\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 1.000000000, 0.7500000000, 0.2500000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = texture2D(hg_Texture1, hg_TexCoord1.xy).xyz;\n    r2.xyz = texture2D(hg_Texture2, hg_TexCoord2.xy).xyz;\n    r2.w = r2.x;\n    r1.w = r1.x;\n    r2 = r2*c0.xxxw;\n    r0 = r0*c0.yyyx + r2;\n    gl_FragColor = r1*c0.xxxz + r0;\n}\n//MD5=08283eb6:cc9cd058:68f8ed43:81161420\n//SIG=00000000:00000007:00000007:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FAB5C1C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB5D9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB5DEC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB5DE4);
}

uint64_t HgcBlueGreenScreenCandidate::BindTexture(HgcBlueGreenScreenCandidate *this, HGHandler *a2, int a3)
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

uint64_t HgcBlueGreenScreenCandidate::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 24);
    v6 = *(a2 + 16);
    v7 = *(a2 + 112);
    v8 = *(a2 + 96);
    v9 = 16 * *(a2 + 104);
    v10 = 16 * *(a2 + 88);
    v11 = *(a2 + 80);
    v12 = 16 * *(a2 + 120);
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
          v17 = *(a1 + 408);
          v18 = *(v17 + 16);
          v19 = *(v17 + 32);
          v20 = *(v17 + 48);
          v21 = vaddq_f32(vmulq_f32(v20, vbslq_s8(*v17, vextq_s8(*(v8 + v14), *(v8 + v14), 4uLL), *(v8 + v14))), vaddq_f32(vmulq_f32(*(v11 + v14), v19), vmulq_f32(v18, vbslq_s8(*v17, vextq_s8(*(v7 + v14), *(v7 + v14), 4uLL), *(v7 + v14)))));
          v22 = vaddq_f32(vmulq_f32(v20, vbslq_s8(*v17, vextq_s8(*(v8 + v14 + 16), *(v8 + v14 + 16), 4uLL), *(v8 + v14 + 16))), vaddq_f32(vmulq_f32(*(v11 + v14 + 16), v19), vmulq_f32(v18, vbslq_s8(*v17, vextq_s8(*(v7 + v14 + 16), *(v7 + v14 + 16), 4uLL), *(v7 + v14 + 16)))));
          v23 = vaddq_f32(vmulq_f32(v20, vbslq_s8(*v17, vextq_s8(*(v8 + v14 + 32), *(v8 + v14 + 32), 4uLL), *(v8 + v14 + 32))), vaddq_f32(vmulq_f32(*(v11 + v14 + 32), v19), vmulq_f32(v18, vbslq_s8(*v17, vextq_s8(*(v7 + v14 + 32), *(v7 + v14 + 32), 4uLL), *(v7 + v14 + 32)))));
          v24 = vaddq_f32(vmulq_f32(v20, vbslq_s8(*v17, vextq_s8(*(v8 + v14 + 48), *(v8 + v14 + 48), 4uLL), *(v8 + v14 + 48))), vaddq_f32(vmulq_f32(*(v11 + v14 + 48), v19), vmulq_f32(v18, vbslq_s8(*v17, vextq_s8(*(v7 + v14 + 48), *(v7 + v14 + 48), 4uLL), *(v7 + v14 + 48)))));
          v25 = (v6 + v14);
          *v25 = v21;
          v25[1] = v22;
          v25[2] = v23;
          v25[3] = v24;
          v15 += 4;
          v14 += 64;
        }
      }

      if (v15 < v4)
      {
        do
        {
          v26 = *(a1 + 408);
          *(v6 + 16 * v15) = vaddq_f32(vmulq_f32(*(v26 + 48), vbslq_s8(*v26, vextq_s8(*(v8 + 16 * v15), *(v8 + 16 * v15), 4uLL), *(v8 + 16 * v15))), vaddq_f32(vmulq_f32(*(v11 + 16 * v15), *(v26 + 32)), vmulq_f32(*(v26 + 16), vbslq_s8(*v26, vextq_s8(*(v7 + 16 * v15), *(v7 + 16 * v15), 4uLL), *(v7 + 16 * v15)))));
          ++v15;
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

uint64_t HgcBlueGreenScreenCandidate::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcBlueGreenScreenCandidate::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcBlueGreenScreenCandidate::HgcBlueGreenScreenCandidate(HgcBlueGreenScreenCandidate *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EAAD0;
  operator new();
}

void HgcBlueGreenScreenCandidate::~HgcBlueGreenScreenCandidate(HGNode *this)
{
  *this = &unk_2871EAAD0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcBlueGreenScreenCandidate::~HgcBlueGreenScreenCandidate(this);

  HGObject::operator delete(v1);
}

const char *HgcBlueScreen::GetProgram(HgcBlueScreen *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005fd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.5000000000, 9.999999975e-07, 9.999999747e-06);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = r0.w + c0.w;\n    r0.xyz = r0.xyz/r1.www;\n    r1.x = c0.x - r0.x;\n    r1.x = mix(r0.z, r1.x, c0.y);\n    r2.x = half(r1.x >= half(hg_Params[0].x));\n    r3.x = half(r1.x >= half(hg_Params[1].x));\n    r4.x = half(hg_Params[1].x) - half(hg_Params[0].x);\n    r1.x = r1.x - half(hg_Params[0].x);\n    r1.x = r1.x/r4.x;\n    r1.x = clamp(r1.x*r2.x + r3.x, 0.00000h, 1.00000h);\n    r1.x = c0.x - r1.x;\n    r4.x = half(r1.x >= half(hg_Params[2].x));\n    r2.x = half(r1.x >= half(hg_Params[3].x));\n    r3.x = half(hg_Params[3].x) - half(hg_Params[2].x);\n    r1.x = r1.x - half(hg_Params[2].x);\n    r3.x = r3.x + c0.z;\n    r1.x = r1.x/r3.x;\n    r1.x = clamp(r1.x*r4.x + r2.x, 0.00000h, 1.00000h);\n    r3.x = c0.x - r1.x;\n    r1.x = clamp(mix(r1.x, r3.x, half(hg_Params[4].x)), 0.00000h, 1.00000h);\n    r1.x = r1.x*r0.w;\n    output.color0.xyz = float3(r0.xyz)*float3(r1.xxx);\n    output.color0.w = float(r1.x);\n    return output;\n}\n//MD5=d08ac965:a7568849:2272d06e:ee0123cb\n//SIG=00400000:00000001:00000001:00000001:0001:0005:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005a4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.5000000000, 9.999999975e-07, 9.999999747e-06);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = r0.w + c0.w;\n    r0.xyz = r0.xyz/r1.www;\n    r1.x = c0.x - r0.x;\n    r1.x = mix(r0.z, r1.x, c0.y);\n    r2.x = float(r1.x >= hg_Params[0].x);\n    r3.x = float(r1.x >= hg_Params[1].x);\n    r4.x = hg_Params[1].x - hg_Params[0].x;\n    r1.x = r1.x - hg_Params[0].x;\n    r1.x = r1.x/r4.x;\n    r1.x = clamp(r1.x*r2.x + r3.x, 0.00000f, 1.00000f);\n    r1.x = c0.x - r1.x;\n    r4.x = float(r1.x >= hg_Params[2].x);\n    r2.x = float(r1.x >= hg_Params[3].x);\n    r3.x = hg_Params[3].x - hg_Params[2].x;\n    r1.x = r1.x - hg_Params[2].x;\n    r3.x = r3.x + c0.z;\n    r1.x = r1.x/r3.x;\n    r1.x = clamp(r1.x*r4.x + r2.x, 0.00000f, 1.00000f);\n    r3.x = c0.x - r1.x;\n    r1.x = clamp(mix(r1.x, r3.x, hg_Params[4].x), 0.00000f, 1.00000f);\n    r1.x = r1.x*r0.w;\n    output.color0.xyz = r0.xyz*r1.xxx;\n    output.color0.w = r1.x;\n    return output;\n}\n//MD5=00135605:cb89b159:2e09724d:79f8c98e\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000631\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.5000000000, 9.999999975e-07, 9.999999747e-06);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = r0.w + c0.w;\n    r0.xyz = r0.xyz/r1.www;\n    r1.x = c0.x - r0.x;\n    r1.x = mix(r0.z, r1.x, c0.y);\n    r2.x = float(r1.x >= hg_ProgramLocal0.x);\n    r3.x = float(r1.x >= hg_ProgramLocal1.x);\n    r4.x = hg_ProgramLocal1.x - hg_ProgramLocal0.x;\n    r1.x = r1.x - hg_ProgramLocal0.x;\n    r1.x = r1.x/r4.x;\n    r1.x = clamp(r1.x*r2.x + r3.x, 0.00000, 1.00000);\n    r1.x = c0.x - r1.x;\n    r4.x = float(r1.x >= hg_ProgramLocal2.x);\n    r2.x = float(r1.x >= hg_ProgramLocal3.x);\n    r3.x = hg_ProgramLocal3.x - hg_ProgramLocal2.x;\n    r1.x = r1.x - hg_ProgramLocal2.x;\n    r3.x = r3.x + c0.z;\n    r1.x = r1.x/r3.x;\n    r1.x = clamp(r1.x*r4.x + r2.x, 0.00000, 1.00000);\n    r3.x = c0.x - r1.x;\n    r1.x = clamp(mix(r1.x, r3.x, hg_ProgramLocal4.x), 0.00000, 1.00000);\n    r1.x = r1.x*r0.w;\n    gl_FragColor.xyz = r0.xyz*r1.xxx;\n    gl_FragColor.w = r1.x;\n}\n//MD5=d6e776cc:aab08d45:a20548aa:c3194eab\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAB64A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB65A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB65E0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB65D8);
}

uint64_t HgcBlueScreen::BindTexture(HgcBlueScreen *this, HGHandler *a2, int a3)
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

uint64_t HgcBlueScreen::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a2 + 144))(a2, 4, a1[51] + 64, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcBlueScreen::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 80);
    v7 = 16 * *(a2 + 24);
    v8 = 16 * *(a2 + 88);
    do
    {
      if (v4 < 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 16;
        for (i = v4; i > 1; i -= 2)
        {
          v12 = *(v6 + v10 - 16);
          v13 = *(v6 + v10);
          v14 = *(a1 + 408);
          v16 = *(v14 + 64);
          v15 = *(v14 + 80);
          v17 = vdupq_laneq_s32(vaddq_f32(v12, v15), 3);
          v18 = vdupq_laneq_s32(vaddq_f32(v13, v15), 3);
          v19 = *(v14 + 96);
          v20 = *(v14 + 112);
          v21 = vminq_f32(vmaxq_f32(vmulq_f32(v15, vrecpeq_f32(v17)), v19), v20);
          v22 = vminq_f32(vmaxq_f32(vmulq_f32(v15, vrecpeq_f32(v18)), v19), v20);
          v23 = vmulq_f32(v12, vmulq_f32(v21, vrecpsq_f32(v17, v21)));
          v24 = vmulq_f32(v13, vmulq_f32(v22, vrecpsq_f32(v18, v22)));
          v25 = *(v14 + 128);
          v26 = *(v14 + 144);
          v27 = vbslq_s8(v25, v12, v23);
          v28 = vbslq_s8(v25, v13, v24);
          v29 = vextq_s8(v27, v27, 8uLL);
          v30 = vextq_s8(v28, v28, 8uLL);
          v32 = *(v14 + 160);
          v31 = *(v14 + 176);
          v33 = vaddq_f32(v29, vmulq_f32(v32, vsubq_f32(vsubq_f32(v26, v27), v29)));
          v34 = vaddq_f32(v30, vmulq_f32(v32, vsubq_f32(vsubq_f32(v26, v28), v30)));
          v35 = *(v14 + 16);
          v36 = vcgeq_f32(v33, v35);
          v37 = vcgeq_f32(v34, v35);
          v38 = vsubq_f32(v35, *v14);
          v39 = vminq_f32(vmaxq_f32(vmulq_f32(v15, vrecpeq_f32(v38)), v19), v20);
          v40 = vmulq_f32(v39, vrecpsq_f32(v38, v39));
          v41 = vsubq_f32(v26, vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v26, v36), vmulq_f32(vmulq_f32(v40, vsubq_f32(v33, *v14)), vandq_s8(v26, vcgeq_f32(v33, *v14)))), v31), v26));
          v42 = vsubq_f32(v26, vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v26, v37), vmulq_f32(vmulq_f32(v40, vsubq_f32(v34, *v14)), vandq_s8(v26, vcgeq_f32(v34, *v14)))), v31), v26));
          v43 = *(v14 + 32);
          v44 = *(v14 + 48);
          v45 = vcgeq_f32(v41, v43);
          v46 = vcgeq_f32(v42, v43);
          v47 = vcgeq_f32(v41, v44);
          v48 = vcgeq_f32(v42, v44);
          v49 = vsubq_f32(v41, v43);
          v50 = vsubq_f32(v42, v43);
          v51 = vaddq_f32(vsubq_f32(v44, v43), *(v14 + 192));
          v52 = vminq_f32(vmaxq_f32(vmulq_f32(v15, vrecpeq_f32(v51)), v19), v20);
          v53 = vmulq_f32(v52, vrecpsq_f32(v51, v52));
          v54 = vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v26, v47), vmulq_f32(vandq_s8(v26, v45), vmulq_f32(v49, v53))), v31), v26);
          v55 = vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v26, v48), vmulq_f32(vandq_s8(v26, v46), vmulq_f32(v50, v53))), v31), v26);
          v56 = vaddq_f32(v55, vmulq_f32(v16, vsubq_f32(vsubq_f32(v26, v55), v55)));
          v57 = vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v54, vmulq_f32(v16, vsubq_f32(vsubq_f32(v26, v54), v54))), v31), v26), v27, 3);
          v58 = vmulq_laneq_f32(vminq_f32(vmaxq_f32(v56, v31), v26), v28, 3);
          v59 = (v5 + v10);
          v59[-1] = vbslq_s8(v25, vextq_s8(v57, v57, 4uLL), vmulq_n_f32(v27, *v57.i32));
          *v59 = vbslq_s8(v25, vextq_s8(v58, v58, 4uLL), vmulq_n_f32(v28, *v58.i32));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v60 = *(v6 + 16 * v9);
        v61 = *(a1 + 408);
        v62 = *(v61 + 80);
        v63 = vdupq_laneq_s32(vaddq_f32(v60, v62), 3);
        v64 = *(v61 + 96);
        v65 = *(v61 + 112);
        v66 = vminq_f32(vmaxq_f32(vmulq_f32(v62, vrecpeq_f32(v63)), v64), v65);
        v67 = vmulq_f32(v60, vmulq_f32(v66, vrecpsq_f32(v63, v66)));
        v68 = *(v61 + 128);
        v69 = *(v61 + 144);
        v70 = vbslq_s8(v68, v60, v67);
        v71 = vextq_s8(v70, v70, 8uLL);
        v72 = *(v61 + 176);
        v73 = vaddq_f32(v71, vmulq_f32(*(v61 + 160), vsubq_f32(vsubq_f32(v69, v70), v71)));
        v74 = *(v61 + 16);
        v75 = vandq_s8(v69, vcgeq_f32(v73, v74));
        v76 = vsubq_f32(v74, *v61);
        v77 = vminq_f32(vmaxq_f32(vmulq_f32(v62, vrecpeq_f32(v76)), v64), v65);
        v78 = vsubq_f32(v69, vminq_f32(vmaxq_f32(vaddq_f32(v75, vmulq_f32(vmulq_f32(vmulq_f32(v77, vrecpsq_f32(v76, v77)), vsubq_f32(v73, *v61)), vandq_s8(v69, vcgeq_f32(v73, *v61)))), v72), v69));
        v79 = *(v61 + 32);
        v80 = *(v61 + 48);
        v81 = vcgeq_f32(v78, v79);
        v82 = vcgeq_f32(v78, v80);
        v83 = vsubq_f32(v78, v79);
        v84 = vaddq_f32(vsubq_f32(v80, v79), *(v61 + 192));
        v85 = vminq_f32(vmaxq_f32(vmulq_f32(v62, vrecpeq_f32(v84)), v64), v65);
        v86 = vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v69, v82), vmulq_f32(vandq_s8(v69, v81), vmulq_f32(v83, vmulq_f32(v85, vrecpsq_f32(v84, v85))))), v72), v69);
        v87 = vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v86, vmulq_f32(*(v61 + 64), vsubq_f32(vsubq_f32(v69, v86), v86))), v72), v69), v70, 3);
        *(v5 + 16 * v9) = vbslq_s8(v68, vextq_s8(v87, v87, 4uLL), vmulq_n_f32(v70, *v87.i32));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcBlueScreen::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcBlueScreen::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcBlueScreen::HgcBlueScreen(HgcBlueScreen *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EAD38;
  operator new();
}

void HgcBlueScreen::~HgcBlueScreen(HGNode *this)
{
  *this = &unk_2871EAD38;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F93440CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcBlueScreen::~HgcBlueScreen(this);

  HGObject::operator delete(v1);
}

uint64_t HgcBlueScreen::SetParameter(HgcBlueScreen *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcBlueScreen::GetParameter(HgcBlueScreen *this, unsigned int a2, float *a3)
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

const char *HgcGreenScreen::GetProgram(HgcGreenScreen *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000639\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.5000000000, 9.999999975e-07, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xw = c0.xx - r0.xx;\n    r1.xw = mix(r0.yy, r1.xw, c0.yy);\n    r2.xw = half2(r1.xw >= half2(hg_Params[0].xw));\n    r3.xw = half2(r1.xw >= half2(hg_Params[1].xw));\n    r4.x = half(hg_Params[1].x) - half(hg_Params[0].x);\n    r1.xw = r1.xw - half2(hg_Params[0].xw);\n    r1.xw = r1.xw/r4.xx;\n    r1.xw = clamp(r1.xw*r2.xw + r3.xw, 0.00000h, 1.00000h);\n    r1.xw = c0.xx - r1.xw;\n    r4.xw = half2(r1.xw >= half2(hg_Params[2].xw));\n    r2.xw = half2(r1.xw >= half2(hg_Params[3].xw));\n    r3.x = half(hg_Params[3].x) - half(hg_Params[2].x);\n    r1.xw = r1.xw - half2(hg_Params[2].xw);\n    r3.x = r3.x + c0.z;\n    r1.xw = r1.xw/r3.xx;\n    r1.xw = clamp(r1.xw*r4.xw + r2.xw, 0.00000h, 1.00000h);\n    r3.xw = c0.xx - r1.xw;\n    r1.xw = clamp(mix(r1.xw, r3.xw, half2(hg_Params[4].xw)), 0.00000h, 1.00000h);\n    r1.xw = r1.xw*r0.ww;\n    output.color0.xyz = float3(r0.xyz)*float3(r1.xxx);\n    output.color0.w = float(r1.w);\n    return output;\n}\n//MD5=054cfaae:eed5dc73:e3cfd1c2:7051e55f\n//SIG=00400000:00000001:00000001:00000001:0001:0005:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005da\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.5000000000, 9.999999975e-07, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xw = c0.xx - r0.xx;\n    r1.xw = mix(r0.yy, r1.xw, c0.yy);\n    r2.xw = float2(r1.xw >= hg_Params[0].xw);\n    r3.xw = float2(r1.xw >= hg_Params[1].xw);\n    r4.x = hg_Params[1].x - hg_Params[0].x;\n    r1.xw = r1.xw - hg_Params[0].xw;\n    r1.xw = r1.xw/r4.xx;\n    r1.xw = clamp(r1.xw*r2.xw + r3.xw, 0.00000f, 1.00000f);\n    r1.xw = c0.xx - r1.xw;\n    r4.xw = float2(r1.xw >= hg_Params[2].xw);\n    r2.xw = float2(r1.xw >= hg_Params[3].xw);\n    r3.x = hg_Params[3].x - hg_Params[2].x;\n    r1.xw = r1.xw - hg_Params[2].xw;\n    r3.x = r3.x + c0.z;\n    r1.xw = r1.xw/r3.xx;\n    r1.xw = clamp(r1.xw*r4.xw + r2.xw, 0.00000f, 1.00000f);\n    r3.xw = c0.xx - r1.xw;\n    r1.xw = clamp(mix(r1.xw, r3.xw, hg_Params[4].xw), 0.00000f, 1.00000f);\n    r1.xw = r1.xw*r0.ww;\n    output.color0.xyz = r0.xyz*r1.xxx;\n    output.color0.w = r1.w;\n    return output;\n}\n//MD5=51ac4cd7:3337df24:8a4e8f18:759ed30b\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006bf\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.5000000000, 9.999999975e-07, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xw = c0.xx - r0.xx;\n    r1.xw = mix(r0.yy, r1.xw, c0.yy);\n    r2.xw = vec2(greaterThanEqual(r1.xw, hg_ProgramLocal0.xw));\n    r3.xw = vec2(greaterThanEqual(r1.xw, hg_ProgramLocal1.xw));\n    r4.x = hg_ProgramLocal1.x - hg_ProgramLocal0.x;\n    r1.xw = r1.xw - hg_ProgramLocal0.xw;\n    r1.xw = r1.xw/r4.xx;\n    r1.xw = clamp(r1.xw*r2.xw + r3.xw, vec2(0.00000), vec2(1.00000));\n    r1.xw = c0.xx - r1.xw;\n    r4.xw = vec2(greaterThanEqual(r1.xw, hg_ProgramLocal2.xw));\n    r2.xw = vec2(greaterThanEqual(r1.xw, hg_ProgramLocal3.xw));\n    r3.x = hg_ProgramLocal3.x - hg_ProgramLocal2.x;\n    r1.xw = r1.xw - hg_ProgramLocal2.xw;\n    r3.x = r3.x + c0.z;\n    r1.xw = r1.xw/r3.xx;\n    r1.xw = clamp(r1.xw*r4.xw + r2.xw, vec2(0.00000), vec2(1.00000));\n    r3.xw = c0.xx - r1.xw;\n    r1.xw = clamp(mix(r1.xw, r3.xw, hg_ProgramLocal4.xw), vec2(0.00000), vec2(1.00000));\n    r1.xw = r1.xw*r0.ww;\n    gl_FragColor.xyz = r0.xyz*r1.xxx;\n    gl_FragColor.w = r1.w;\n}\n//MD5=72129de5:5fb54234:6b10d62c:cdab13f5\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAB6F80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB7080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB70C0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB70B8);
}

uint64_t HgcGreenScreen::BindTexture(HgcGreenScreen *this, HGHandler *a2, int a3)
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

uint64_t HgcGreenScreen::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a2 + 144))(a2, 4, a1[51] + 64, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcGreenScreen::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 80);
    v7 = 16 * *(a2 + 24);
    v8 = 16 * *(a2 + 88);
    do
    {
      if (v4 < 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 16;
        for (i = v4; i > 1; i -= 2)
        {
          v12 = *(v6 + v10 - 16);
          v13 = *(v6 + v10);
          v14 = *(a1 + 408);
          v16 = *(v14 + 64);
          v15 = *(v14 + 80);
          v17 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v15);
          v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v15);
          v19 = *(v14 + 96);
          v20 = *(v14 + 112);
          v21 = vmulq_f32(vrecpeq_f32(v17), v19);
          v22 = vmulq_f32(vrecpeq_f32(v18), v19);
          v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
          v24 = vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
          v26 = *(v14 + 128);
          v25 = *(v14 + 144);
          v27 = vmulq_f32(v12, vorrq_s8(v23, v26));
          v28 = vmulq_f32(v13, vorrq_s8(v24, v26));
          v29 = vdupq_lane_s32(*v27.f32, 1);
          v30 = vdupq_lane_s32(*v28.f32, 1);
          v31 = *(v14 + 160);
          v32 = *(v14 + 176);
          v33 = vaddq_f32(v29, vmulq_f32(v31, vsubq_f32(vsubq_f32(v25, vdupq_lane_s32(*v27.f32, 0)), v29)));
          v34 = vaddq_f32(v30, vmulq_f32(v31, vsubq_f32(vsubq_f32(v25, vdupq_lane_s32(*v28.f32, 0)), v30)));
          v35 = *(v14 + 16);
          v36 = vcgeq_f32(v33, v35);
          v37 = vcgeq_f32(v34, v35);
          v38 = vdupq_lane_s32(*&vsubq_f32(v35, *v14), 0);
          v39 = *(v14 + 192);
          v40 = *(v14 + 208);
          v41 = vminq_f32(vmaxq_f32(vmulq_f32(v19, vrecpeq_f32(v38)), v32), v39);
          v42 = vmulq_f32(v41, vrecpsq_f32(v38, v41));
          v43 = vsubq_f32(v25, vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v25, v36), vmulq_f32(vandq_s8(v25, vcgeq_f32(v33, *v14)), vmulq_f32(vsubq_f32(v33, *v14), v42))), v40), v25));
          v44 = vsubq_f32(v25, vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v25, v37), vmulq_f32(vandq_s8(v25, vcgeq_f32(v34, *v14)), vmulq_f32(vsubq_f32(v34, *v14), v42))), v40), v25));
          v45 = *(v14 + 32);
          v46 = *(v14 + 48);
          v47 = vdupq_lane_s32(*&vaddq_f32(v15, vsubq_f32(v46, v45)), 0);
          v48 = vminq_f32(vmaxq_f32(vmulq_f32(v19, vrecpeq_f32(v47)), v32), v39);
          v49 = vmulq_f32(v48, vrecpsq_f32(v47, v48));
          v50 = vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v25, vcgeq_f32(v43, v46)), vmulq_f32(vandq_s8(v25, vcgeq_f32(v43, v45)), vmulq_f32(vsubq_f32(v43, v45), v49))), v40), v25);
          v51 = vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v25, vcgeq_f32(v44, v46)), vmulq_f32(vandq_s8(v25, vcgeq_f32(v44, v45)), vmulq_f32(vsubq_f32(v44, v45), v49))), v40), v25);
          v52 = vminq_f32(vmaxq_f32(vaddq_f32(v51, vmulq_f32(v16, vsubq_f32(vsubq_f32(v25, v51), v51))), v40), v25);
          v53 = vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v50, vmulq_f32(v16, vsubq_f32(vsubq_f32(v25, v50), v50))), v40), v25), v27, 3);
          v54 = vmulq_laneq_f32(v52, v28, 3);
          v55 = *(v14 + 224);
          v56 = (v5 + v10);
          v56[-1] = vbslq_s8(v55, v53, vmulq_n_f32(v27, *v53.i32));
          *v56 = vbslq_s8(v55, v54, vmulq_n_f32(v28, *v54.i32));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v57 = *(v6 + 16 * v9);
        v58 = *(a1 + 408);
        v59 = *(v58 + 80);
        v60 = vmaxq_f32(vdupq_laneq_s32(v57, 3), v59);
        v61 = *(v58 + 96);
        v62 = vmulq_f32(vrecpeq_f32(v60), v61);
        v63 = *(v58 + 144);
        v64 = vmulq_f32(v57, vorrq_s8(vandq_s8(*(v58 + 112), vmulq_f32(v62, vrecpsq_f32(v62, v60))), *(v58 + 128)));
        v65 = vdupq_lane_s32(*v64.f32, 1);
        v66 = *(v58 + 176);
        v67 = vaddq_f32(v65, vmulq_f32(*(v58 + 160), vsubq_f32(vsubq_f32(v63, vdupq_lane_s32(*v64.f32, 0)), v65)));
        v68 = *(v58 + 16);
        v69 = vcgeq_f32(v67, v68);
        v70 = vdupq_lane_s32(*&vsubq_f32(v68, *v58), 0);
        v71 = *(v58 + 192);
        v72 = *(v58 + 208);
        v73 = vminq_f32(vmaxq_f32(vmulq_f32(v61, vrecpeq_f32(v70)), v66), v71);
        v74 = vsubq_f32(v63, vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v63, v69), vmulq_f32(vandq_s8(v63, vcgeq_f32(v67, *v58)), vmulq_f32(vsubq_f32(v67, *v58), vmulq_f32(v73, vrecpsq_f32(v70, v73))))), v72), v63));
        v75 = *(v58 + 32);
        v76 = *(v58 + 48);
        v59.i64[0] = vaddq_f32(v59, vsubq_f32(v76, v75)).u64[0];
        v77 = vandq_s8(v63, vcgeq_f32(v74, v75));
        v78 = vandq_s8(v63, vcgeq_f32(v74, v76));
        v79 = vdupq_lane_s32(*v59.f32, 0);
        v80 = vsubq_f32(v74, v75);
        v81 = vminq_f32(vmaxq_f32(vmulq_f32(v61, vrecpeq_f32(v79)), v66), v71);
        v82 = vminq_f32(vmaxq_f32(vaddq_f32(v78, vmulq_f32(v77, vmulq_f32(v80, vmulq_f32(v81, vrecpsq_f32(v79, v81))))), v72), v63);
        v83 = vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v82, vmulq_f32(*(v58 + 64), vsubq_f32(vsubq_f32(v63, v82), v82))), v72), v63), v64, 3);
        *(v5 + 16 * v9) = vbslq_s8(*(v58 + 224), v83, vmulq_n_f32(v64, *v83.i32));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcGreenScreen::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcGreenScreen::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcGreenScreen::HgcGreenScreen(HgcGreenScreen *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EAFA0;
  operator new();
}

void HgcGreenScreen::~HgcGreenScreen(HGNode *this)
{
  *this = &unk_2871EAFA0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);
}

{
  HgcGreenScreen::~HgcGreenScreen(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGreenScreen::SetParameter(HgcGreenScreen *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGreenScreen::GetParameter(HgcGreenScreen *this, unsigned int a2, float *a3)
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

const char *HgcConcentricPolygonsGradient::GetProgram(HgcConcentricPolygonsGradient *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000086b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 1.000000000, 0.000000000, 255.0000000);\n    const half4 c1 = half4(3.000000000, -2.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2, s3, s4;\n    FragmentOut output;\n\n    s0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    s0.xy = s0.xy*hg_Params[2].xy;\n    s1.y = dot(s0.xyz, hg_Params[4].zwz);\n    s0.x = dot(s0.xyz, hg_Params[4].xyx);\n    s0.y = s1.y;\n    s1.x = dot(s0.xy, s0.xy);\n    s1.x = sqrt(s1.x);\n    s0.x = atan2(s0.y, s0.x);\n    s2.x = s0.x;\n    s0.x = s0.x*hg_Params[3].y;\n    s0.x = floor(s0.x);\n    s0.x = float(c0.x) + s0.x;\n    s0.x = hg_Params[3].x*s0.x + -s2.x;\n    s0.x = cos(s0.x);\n    s0.x = s0.x*s1.x;\n    s2.x = clamp(s0.x - hg_Params[7].x, 0.00000f, 1.00000f);\n    s2.x = float(c0.y) - s2.x;\n    s1.x = float(c0.y) + s0.x;\n    s1.x = clamp(s1.x - hg_Params[8].x, 0.00000f, 1.00000f);\n    s2.x = s2.x*s1.x;\n    s0.x = s0.x*hg_Params[5].x;\n    s0.x = hg_Params[2].z*s0.x + hg_Params[1].x;\n    s1.x = fract(s0.x);\n    s3.x = floor(s0.x);\n    s3.x = s3.x*float(c0.x);\n    s3.x = fract(s3.x);\n    s3.x = float(c0.z) - s3.x;\n    s4.x = float(c0.y) - s1.x;\n    s3.x = select(s4.x, s1.x, s3.x < 0.00000h);\n    s0.x = clamp(s0.x, 0.00000f, 1.00000f);\n    s0.x = select(s3.x, s0.x, hg_Params[6].x < 0.00000h);\n    s0.x = select(s0.x, s1.x, -hg_Params[6].x < 0.00000h);\n    s0.y = float(c0.x);\n    s0.x = s0.x*float(c0.w) + float(c0.x);\n    s0.xy = s0.xy + hg_Params[9].xy;\n    s0.xy = s0.xy*hg_Params[9].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    s4.x = s2.x*s2.x;\n    s3.x = s4.x*float(c1.x);\n    s4.x = s4.x*s2.x;\n    s4.x = s4.x*float(c1.y) + s3.x;\n    output.color0.xyz = float3(r0.xyz)*s4.xxx;\n    output.color0.w = s4.x*float(r0.w);\n    return output;\n}\n//MD5=c1db0d91:6fd39c5a:ca81035f:9c5e971c\n//SIG=00400000:00000000:00000000:00000001:0002:000a:0006:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000007fe\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 1.000000000, 0.000000000, 255.0000000);\n    const float4 c1 = float4(3.000000000, -2.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    r0.xy = r0.xy*hg_Params[2].xy;\n    r1.y = dot(r0.xyz, hg_Params[4].zwz);\n    r0.x = dot(r0.xyz, hg_Params[4].xyx);\n    r0.y = r1.y;\n    r1.x = dot(r0.xy, r0.xy);\n    r1.x = sqrt(r1.x);\n    r0.x = atan2(r0.y, r0.x);\n    r2.x = r0.x;\n    r0.x = r0.x*hg_Params[3].y;\n    r0.x = floor(r0.x);\n    r0.x = c0.x + r0.x;\n    r0.x = hg_Params[3].x*r0.x + -r2.x;\n    r0.x = cos(r0.x);\n    r0.x = r0.x*r1.x;\n    r2.x = clamp(r0.x - hg_Params[7].x, 0.00000f, 1.00000f);\n    r2.x = c0.y - r2.x;\n    r1.x = c0.y + r0.x;\n    r1.x = clamp(r1.x - hg_Params[8].x, 0.00000f, 1.00000f);\n    r2.x = r2.x*r1.x;\n    r0.x = r0.x*hg_Params[5].x;\n    r0.x = hg_Params[2].z*r0.x + hg_Params[1].x;\n    r1.x = fract(r0.x);\n    r3.x = floor(r0.x);\n    r3.x = r3.x*c0.x;\n    r3.x = fract(r3.x);\n    r3.x = c0.z - r3.x;\n    r4.x = c0.y - r1.x;\n    r3.x = select(r4.x, r1.x, r3.x < 0.00000f);\n    r0.x = clamp(r0.x, 0.00000f, 1.00000f);\n    r0.x = select(r3.x, r0.x, hg_Params[6].x < 0.00000f);\n    r0.x = select(r0.x, r1.x, -hg_Params[6].x < 0.00000f);\n    r0.y = c0.x;\n    r0.x = r0.x*c0.w + c0.x;\n    r0.xy = r0.xy + hg_Params[9].xy;\n    r0.xy = r0.xy*hg_Params[9].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r4.x = r2.x*r2.x;\n    r3.x = r4.x*c1.x;\n    r4.x = r4.x*r2.x;\n    r4.x = r4.x*c1.y + r3.x;\n    output.color0.xyz = r0.xyz*r4.xxx;\n    output.color0.w = r4.x*r0.w;\n    return output;\n}\n//MD5=563de31b:16da76f4:eae8c1e1:21c281de\n//SIG=00000000:00000000:00000000:00000000:0002:000a:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000932\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 1.000000000, 0.000000000, 255.0000000);\n    const highp vec4 c1 = vec4(3.000000000, -2.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4;\n\n    r0.xyz = hg_TexCoord0.xyz - hg_ProgramLocal0.xyz;\n    r0.xy = r0.xy*hg_ProgramLocal2.xy;\n    r1.y = dot(r0.xyz, hg_ProgramLocal4.zwz);\n    r0.x = dot(r0.xyz, hg_ProgramLocal4.xyx);\n    r0.y = r1.y;\n    r1.x = dot(r0.xy, r0.xy);\n    r1.x = sqrt(r1.x);\n    r0.x = atan(r0.y, r0.x);\n    r2.x = r0.x;\n    r0.x = r0.x*hg_ProgramLocal3.y;\n    r0.x = floor(r0.x);\n    r0.x = c0.x + r0.x;\n    r0.x = hg_ProgramLocal3.x*r0.x + -r2.x;\n    r0.x = cos(r0.x);\n    r0.x = r0.x*r1.x;\n    r2.x = clamp(r0.x - hg_ProgramLocal7.x, 0.00000, 1.00000);\n    r2.x = c0.y - r2.x;\n    r1.x = c0.y + r0.x;\n    r1.x = clamp(r1.x - hg_ProgramLocal8.x, 0.00000, 1.00000);\n    r2.x = r2.x*r1.x;\n    r0.x = r0.x*hg_ProgramLocal5.x;\n    r0.x = hg_ProgramLocal2.z*r0.x + hg_ProgramLocal1.x;\n    r1.x = fract(r0.x);\n    r3.x = floor(r0.x);\n    r3.x = r3.x*c0.x;\n    r3.x = fract(r3.x);\n    r3.x = c0.z - r3.x;\n    r4.x = c0.y - r1.x;\n    r3.x = r3.x < 0.00000 ? r1.x : r4.x;\n    r0.x = clamp(r0.x, 0.00000, 1.00000);\n    r0.x = hg_ProgramLocal6.x < 0.00000 ? r0.x : r3.x;\n    r0.x = -hg_ProgramLocal6.x < 0.00000 ? r1.x : r0.x;\n    r0.y = c0.x;\n    r0.x = r0.x*c0.w + c0.x;\n    r0.xy = r0.xy + hg_ProgramLocal9.xy;\n    r0.xy = r0.xy*hg_ProgramLocal9.zw;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r4.x = r2.x*r2.x;\n    r3.x = r4.x*c1.x;\n    r4.x = r4.x*r2.x;\n    r4.x = r4.x*c1.y + r3.x;\n    gl_FragColor.xyz = r0.xyz*r4.xxx;\n    gl_FragColor.w = r4.x*r0.w;\n}\n//MD5=c7be3d23:f4284469:bdf1bb60:59dfaaf1\n//SIG=00000000:00000000:00000000:00000000:0002:000a:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAB7A88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260345090;
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

void sub_25FAB7C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB7C58()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB7C50);
}

uint64_t HgcConcentricPolygonsGradient::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 9, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcConcentricPolygonsGradient::Bind(HgcConcentricPolygonsGradient *this, HGHandler *a2)
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
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcConcentricPolygonsGradient::RenderTile(HgcConcentricPolygonsGradient *this, HGTile *a2)
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
          v21 = vsubq_f32(v17, *v19);
          v22 = vsubq_f32(v18, *v19);
          v23 = *(v19 + 32);
          v24 = *(v19 + 48);
          v25.i64[0] = vmulq_f32(v21, v23).u64[0];
          v26.i64[0] = vmulq_f32(v22, v23).u64[0];
          v25.i64[1] = v21.i64[1];
          v26.i64[1] = v22.i64[1];
          v27 = *(v19 + 64);
          v28 = *(v19 + 80);
          v29 = vdupq_laneq_s64(v27, 1);
          v30 = vmulq_f32(v25, v29);
          v31 = vmulq_f32(v26, v29);
          v32 = vaddq_f32(vextq_s8(v31, v31, 4uLL), vaddq_f32(v31, vrev64q_s32(v31)));
          v33 = vdupq_lane_s64(v27.i64[0], 0);
          v34 = vmulq_f32(v33, v25);
          v35 = vmulq_f32(v33, v26);
          v36 = *(v19 + 144);
          v37 = *(v19 + 160);
          v38 = vbslq_s8(v36, vaddq_f32(vextq_s8(v34, v34, 8uLL), vaddq_f32(v34, vrev64q_s32(v34))), vaddq_f32(vextq_s8(v30, v30, 4uLL), vaddq_f32(v30, vrev64q_s32(v30))));
          v39 = vbslq_s8(v36, vaddq_f32(vextq_s8(v35, v35, 8uLL), vaddq_f32(v35, vrev64q_s32(v35))), v32);
          v40 = vmulq_f32(v38, v38);
          v41 = vmulq_f32(v39, v39);
          v42 = vaddq_f32(v40, vrev64q_s32(v40));
          v43 = vaddq_f32(v41, vrev64q_s32(v41));
          v44 = vminq_f32(vrsqrteq_f32(v42), v37);
          v45 = vminq_f32(vrsqrteq_f32(v43), v37);
          v46 = vminq_f32(vmulq_f32(v44, vrsqrtsq_f32(vmulq_f32(v44, v42), v44)), v37);
          v47 = vminq_f32(vmulq_f32(v45, vrsqrtsq_f32(vmulq_f32(v45, v43), v45)), v37);
          v48 = vmulq_f32(vminq_f32(vmulq_f32(v46, vrsqrtsq_f32(vmulq_f32(v46, v42), v46)), v37), v42);
          v49 = vmulq_f32(v43, vminq_f32(vmulq_f32(v47, vrsqrtsq_f32(vmulq_f32(v47, v43), v47)), v37));
          v50 = vrev64q_s32(v38);
          v51 = vrev64q_s32(v39);
          v52 = vabsq_f32(v50);
          v53 = vabsq_f32(v51);
          v54 = vabsq_f32(v38);
          v55 = vabsq_f32(v39);
          v56 = vmaxq_f32(v54, v52);
          v57 = vmaxq_f32(v55, v53);
          v58 = vminq_f32(v54, v52);
          v59 = vminq_f32(v55, v53);
          v60 = vsubq_f32(v52, v54);
          v61 = vsubq_f32(v53, v55);
          v62 = *(v19 + 176);
          v63 = *(v19 + 192);
          v64 = vmaxq_f32(v56, v62);
          v65 = vmaxq_f32(v57, v62);
          v66 = vminq_f32(vmaxq_f32(vrecpeq_f32(v64), v63), v37);
          v67 = vminq_f32(vmaxq_f32(vrecpeq_f32(v65), v63), v37);
          v68 = vminq_f32(vmaxq_f32(vmulq_f32(v66, vrecpsq_f32(v64, v66)), v63), v37);
          v69 = vminq_f32(vmaxq_f32(vmulq_f32(v67, vrecpsq_f32(v65, v67)), v63), v37);
          v70 = vmulq_f32(v69, vrecpsq_f32(v65, v69));
          v71 = vmulq_f32(v58, vmulq_f32(v68, vrecpsq_f32(v64, v68)));
          v72 = vmulq_f32(v59, v70);
          v73 = vmulq_f32(v71, v71);
          v74 = vmulq_f32(v72, v72);
          v75 = *(v19 + 208);
          v76 = *(v19 + 224);
          v77 = vaddq_f32(v75, vmulq_f32(v73, v76));
          v78 = vaddq_f32(v75, vmulq_f32(v76, v74));
          v79 = vmulq_f32(v73, v77);
          v80 = *(v19 + 240);
          v81 = *(v19 + 256);
          v82 = vaddq_f32(v81, vmulq_f32(v74, vaddq_f32(v80, vmulq_f32(v74, v78))));
          v83 = vmulq_f32(v73, vaddq_f32(v81, vmulq_f32(v73, vaddq_f32(v80, v79))));
          v84 = *(v19 + 272);
          v85 = *(v19 + 288);
          v86 = vmulq_f32(v71, vaddq_f32(v85, vmulq_f32(v73, vaddq_f32(v84, v83))));
          v87 = vmulq_f32(v72, vaddq_f32(v85, vmulq_f32(v74, vaddq_f32(v84, vmulq_f32(v74, v82)))));
          v89 = *(v19 + 304);
          v88 = *(v19 + 320);
          v90 = vbslq_s8(vcgtq_f32(v60, v88), vsubq_f32(v89, v86), v86);
          v91 = vbslq_s8(vcgtq_f32(v61, v88), vsubq_f32(v89, v87), v87);
          v92 = *(v19 + 336);
          v93 = *(v19 + 352);
          v94 = veorq_s8(vandq_s8(v93, v50), vbslq_s8(vcgtq_f32(v88, v38), vsubq_f32(v92, v90), v90));
          v95 = veorq_s8(vandq_s8(v93, v51), vbslq_s8(vcgtq_f32(v88, v39), vsubq_f32(v92, v91), v91));
          v96 = vmulq_lane_f32(v94, *v24.f32, 1);
          v97 = vmulq_lane_f32(v95, *v24.f32, 1);
          v98 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
          v99 = vcvtq_f32_s32(vcvtq_s32_f32(v97));
          v100 = vcgtq_f32(v98, v96);
          v101 = vcgtq_f32(v99, v97);
          v102 = *(v19 + 368);
          v103 = *(v19 + 384);
          v104 = vsubq_f32(vmulq_f32(v24, vaddq_f32(v103, vsubq_f32(v98, vandq_s8(v102, v100)))), v94);
          v105 = vsubq_f32(vmulq_f32(v24, vaddq_f32(v103, vsubq_f32(v99, vandq_s8(v102, v101)))), v95);
          v106 = *(v19 + 400);
          v107 = *(v19 + 416);
          v108 = vmulq_f32(v106, v104);
          v109 = vmulq_f32(v106, v105);
          v110 = vcvtq_f32_s32(vcvtq_s32_f32(v108));
          v111 = vcvtq_f32_s32(vcvtq_s32_f32(v109));
          v112 = vsubq_f32(vabdq_f32(vsubq_f32(v108, vsubq_f32(v110, vandq_s8(v102, vcgtq_f32(v110, v108)))), v103), v107);
          v113 = vsubq_f32(vabdq_f32(vsubq_f32(v109, vsubq_f32(v111, vandq_s8(v102, vcgtq_f32(v111, v109)))), v103), v107);
          v114 = vmulq_f32(v112, v112);
          v115 = vmulq_f32(v113, v113);
          v116 = *(v19 + 432);
          v117 = *(v19 + 448);
          v118 = vaddq_f32(v116, vmulq_f32(v117, v114));
          v119 = vaddq_f32(v116, vmulq_f32(v117, v115));
          v120 = vmulq_f32(v114, v118);
          v121 = *(v19 + 464);
          v122 = *(v19 + 480);
          v123 = vmulq_f32(v112, vaddq_f32(v122, vmulq_f32(v114, vaddq_f32(v121, v120))));
          v124 = vmulq_f32(v113, vaddq_f32(v122, vmulq_f32(v115, vaddq_f32(v121, vmulq_f32(v115, v119)))));
          v125 = vmulq_f32(v48, v123);
          v126 = vmulq_f32(v49, v124);
          v127 = vaddq_f32(v20, vmulq_laneq_f32(vmulq_f32(v28, v125), v23, 2));
          v128 = vaddq_f32(v20, vmulq_laneq_f32(vmulq_f32(v28, v126), v23, 2));
          v129 = vcvtq_f32_s32(vcvtq_s32_f32(v127));
          v130 = vcvtq_f32_s32(vcvtq_s32_f32(v128));
          v131 = vsubq_f32(v129, vandq_s8(v102, vcgtq_f32(v129, v127)));
          v132 = vsubq_f32(v130, vandq_s8(v102, vcgtq_f32(v130, v128)));
          v133 = vsubq_f32(v127, v131);
          v134 = vsubq_f32(v128, v132);
          v135 = vmulq_f32(v103, v131);
          v136 = vmulq_f32(v103, v132);
          v137 = vcvtq_f32_s32(vcvtq_s32_f32(v135));
          v138 = vcvtq_f32_s32(vcvtq_s32_f32(v136));
          v139 = vbslq_s8(vcgtq_f32(v88, vsubq_f32(v88, vsubq_f32(v135, vsubq_f32(v137, vandq_s8(v102, vcgtq_f32(v137, v135)))))), v133, vsubq_f32(v102, v133));
          v140 = vbslq_s8(vcgtq_f32(v88, vsubq_f32(v88, vsubq_f32(v136, vsubq_f32(v138, vandq_s8(v102, vcgtq_f32(v138, v136)))))), v134, vsubq_f32(v102, v134));
          v141 = *(v19 + 96);
          v142 = vcgtq_f32(v88, v141);
          v143 = vbslq_s8(v142, vminq_f32(vmaxq_f32(v128, v88), v102), v140);
          v144 = vcgtq_f32(v141, v88);
          v145 = vbslq_s8(v144, v133, vbslq_s8(v142, vminq_f32(vmaxq_f32(v127, v88), v102), v139));
          v146 = vbslq_s8(v144, v134, v143);
          v145.i32[1] = 0.5;
          v146.i32[1] = 0.5;
          v147 = *(v19 + 496);
          v148 = vbslq_s8(v36, vaddq_f32(v103, vmulq_f32(v147, v145)), v145);
          v149 = vbslq_s8(v36, vaddq_f32(v103, vmulq_f32(v147, v146)), v146);
          v150 = *(a2 + 22);
          v151 = vsubq_f32(v148, v9);
          v152 = *(a2 + 10);
          if (v5)
          {
            v153 = vaddq_s32(vcvtq_s32_f32(v151), vcltzq_f32(v151));
            v154 = vsubq_f32(v151, vcvtq_f32_s32(v153)).u64[0];
            v155 = vsubq_f32(v149, v9);
            v156 = vaddq_s32(vcvtq_s32_f32(v155), vcltzq_f32(v155));
            v157 = vsubq_f32(v155, vcvtq_f32_s32(v156)).u64[0];
            *v153.i8 = vmla_s32(vzip1_s32(*v153.i8, *v156.i8), vzip2_s32(*v153.i8, *v156.i8), vdup_n_s32(v150));
            v158 = (v152 + 16 * v153.i32[0]);
            v159 = vaddq_f32(*v158, vmulq_n_f32(vsubq_f32(v158[1], *v158), v154.f32[0]));
            v160 = vaddq_f32(v159, vmulq_lane_f32(vsubq_f32(vaddq_f32(v158[v150], vmulq_n_f32(vsubq_f32(v158[v150 + 1], v158[v150]), v154.f32[0])), v159), v154, 1));
            v161 = (v152 + 16 * v153.i32[1]);
            v162 = vaddq_f32(*v161, vmulq_n_f32(vsubq_f32(v161[1], *v161), v157.f32[0]));
            v163 = vaddq_f32(v162, vmulq_lane_f32(vsubq_f32(vaddq_f32(v161[v150], vmulq_n_f32(vsubq_f32(v161[v150 + 1], v161[v150]), v157.f32[0])), v162), v157, 1));
          }

          else
          {
            v164 = vaddq_f32(v151, v13);
            v165 = vcvtq_s32_f32(v164);
            v166 = vaddq_f32(vsubq_f32(v149, v9), v13);
            v167 = vcvtq_s32_f32(v166);
            *v164.f32 = vadd_s32(*v165.i8, *&vcgtq_f32(vcvtq_f32_s32(v165), v164));
            *v166.f32 = vadd_s32(*v167.i8, *&vcgtq_f32(vcvtq_f32_s32(v167), v166));
            *v166.f32 = vmla_s32(vzip1_s32(*v164.f32, *v166.f32), vzip2_s32(*v164.f32, *v166.f32), vdup_n_s32(v150));
            v168 = v166.i32[1];
            v160 = *(v152 + 16 * v166.i32[0]);
            v163 = *(v152 + 16 * v168);
          }

          v169 = *(v19 + 112);
          v170 = *(v19 + 128);
          v171 = vsubq_f32(v102, vminq_f32(vmaxq_f32(vsubq_f32(v125, v169), v88), v102));
          v172 = vsubq_f32(v102, vminq_f32(vmaxq_f32(vsubq_f32(v126, v169), v88), v102));
          v173 = vmaxq_f32(vsubq_f32(vaddq_f32(v102, v125), v170), v88);
          v174 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v102, v126), v170), v88), v102);
          v175 = vmulq_f32(v171, vminq_f32(v173, v102));
          v176 = vmulq_f32(v172, v174);
          v177 = vmulq_f32(v175, v175);
          v178 = vmulq_f32(v176, v176);
          v179 = *(v19 + 512);
          v180 = *(v19 + 528);
          v181 = (v11 + 16 * v15);
          *v181 = vmulq_n_f32(v160, vsubq_f32(vmulq_f32(v177, v179), vmulq_f32(vmulq_f32(v175, v177), v180)).f32[0]);
          v181[1] = vmulq_n_f32(v163, vsubq_f32(vmulq_f32(v178, v179), vmulq_f32(vmulq_f32(v176, v178), v180)).f32[0]);
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v182 = *(this + 51);
        v183 = vsubq_f32(v17, *v182);
        v184 = *(v182 + 32);
        v185 = *(v182 + 48);
        v186.i64[0] = vmulq_f32(v183, v184).u64[0];
        v186.i64[1] = v183.i64[1];
        v187 = *(v182 + 64);
        v188 = vmulq_f32(v186, vdupq_laneq_s64(v187, 1));
        v189 = vmulq_f32(vdupq_lane_s64(v187.i64[0], 0), v186);
        v190 = *(v182 + 144);
        v191 = *(v182 + 160);
        v192 = vbslq_s8(v190, vaddq_f32(vextq_s8(v189, v189, 8uLL), vaddq_f32(v189, vrev64q_s32(v189))), vaddq_f32(vextq_s8(v188, v188, 4uLL), vaddq_f32(v188, vrev64q_s32(v188))));
        v193 = vmulq_f32(v192, v192);
        v194 = vaddq_f32(v193, vrev64q_s32(v193));
        v195 = vminq_f32(vrsqrteq_f32(v194), v191);
        v196 = vminq_f32(vmulq_f32(v195, vrsqrtsq_f32(vmulq_f32(v195, v194), v195)), v191);
        v197 = vmulq_f32(vminq_f32(vmulq_f32(v196, vrsqrtsq_f32(vmulq_f32(v196, v194), v196)), v191), v194);
        v198 = vrev64q_s32(v192);
        v199 = vabsq_f32(v198);
        v200 = vabsq_f32(v192);
        v201 = vmaxq_f32(v200, v199);
        v202 = vminq_f32(v200, v199);
        v203 = vsubq_f32(v199, v200);
        v204 = *(v182 + 192);
        v205 = vmaxq_f32(v201, *(v182 + 176));
        v206 = vminq_f32(vmaxq_f32(vrecpeq_f32(v205), v204), v191);
        v207 = vminq_f32(vmaxq_f32(vmulq_f32(v206, vrecpsq_f32(v205, v206)), v204), v191);
        v208 = vmulq_f32(v202, vmulq_f32(v207, vrecpsq_f32(v205, v207)));
        v209 = vmulq_f32(v208, v208);
        v210 = vmulq_f32(v208, vaddq_f32(*(v182 + 288), vmulq_f32(v209, vaddq_f32(*(v182 + 272), vmulq_f32(v209, vaddq_f32(*(v182 + 256), vmulq_f32(v209, vaddq_f32(*(v182 + 240), vmulq_f32(v209, vaddq_f32(*(v182 + 208), vmulq_f32(*(v182 + 224), v209)))))))))));
        v211 = *(v182 + 320);
        v212 = vbslq_s8(vcgtq_f32(v203, v211), vsubq_f32(*(v182 + 304), v210), v210);
        v213 = veorq_s8(vandq_s8(*(v182 + 352), v198), vbslq_s8(vcgtq_f32(v211, v192), vsubq_f32(*(v182 + 336), v212), v212));
        v214 = vmulq_lane_f32(v213, *v185.f32, 1);
        v215 = vcvtq_f32_s32(vcvtq_s32_f32(v214));
        v216 = vcgtq_f32(v215, v214);
        v217 = *(v182 + 368);
        v218 = *(v182 + 384);
        v219 = vmulq_f32(*(v182 + 400), vsubq_f32(vmulq_f32(v185, vaddq_f32(v218, vsubq_f32(v215, vandq_s8(v217, v216)))), v213));
        v220 = vcvtq_f32_s32(vcvtq_s32_f32(v219));
        v221 = vsubq_f32(vabdq_f32(vsubq_f32(v219, vsubq_f32(v220, vandq_s8(v217, vcgtq_f32(v220, v219)))), v218), *(v182 + 416));
        v222 = vmulq_f32(v221, v221);
        v223 = vmulq_f32(v197, vmulq_f32(v221, vaddq_f32(*(v182 + 480), vmulq_f32(v222, vaddq_f32(*(v182 + 464), vmulq_f32(v222, vaddq_f32(*(v182 + 432), vmulq_f32(*(v182 + 448), v222))))))));
        v224 = vaddq_f32(*(v182 + 16), vmulq_laneq_f32(vmulq_f32(*(v182 + 80), v223), v184, 2));
        v225 = vcvtq_f32_s32(vcvtq_s32_f32(v224));
        v226 = vsubq_f32(v225, vandq_s8(v217, vcgtq_f32(v225, v224)));
        v227 = vsubq_f32(v224, v226);
        v228 = vmulq_f32(v218, v226);
        v229 = vcvtq_f32_s32(vcvtq_s32_f32(v228));
        v230 = vbslq_s8(vcgtq_f32(*(v182 + 96), v211), v227, vbslq_s8(vcgtq_f32(v211, *(v182 + 96)), vminq_f32(vmaxq_f32(v224, v211), v217), vbslq_s8(vcgtq_f32(v211, vsubq_f32(v211, vsubq_f32(v228, vsubq_f32(v229, vandq_s8(v217, vcgtq_f32(v229, v228)))))), v227, vsubq_f32(v217, v227))));
        v230.i32[1] = 0.5;
        v231 = *(a2 + 22);
        v232 = vsubq_f32(vbslq_s8(v190, vaddq_f32(v218, vmulq_f32(*(v182 + 496), v230)), v230), v9);
        v233 = *(a2 + 10);
        if (v5)
        {
          v234 = vaddq_s32(vcvtq_s32_f32(v232), vcltzq_f32(v232));
          v235 = vsubq_f32(v232, vcvtq_f32_s32(v234)).u64[0];
          v236 = (v233 + 16 * (v234.i32[0] + v234.i32[1] * v231));
          v237 = vaddq_f32(*v236, vmulq_n_f32(vsubq_f32(v236[1], *v236), v235.f32[0]));
          v238 = vaddq_f32(v237, vmulq_lane_f32(vsubq_f32(vaddq_f32(v236[v231], vmulq_n_f32(vsubq_f32(v236[v231 + 1], v236[v231]), v235.f32[0])), v237), v235, 1));
        }

        else
        {
          v239 = vaddq_f32(v232, v13);
          v240 = vcvtq_s32_f32(v239);
          v239.i64[0] = vaddq_s32(v240, vcgtq_f32(vcvtq_f32_s32(v240), v239)).u64[0];
          v238 = *(v233 + 16 * (v239.i32[0] + v239.i32[1] * v231));
        }

        v241 = vmulq_f32(vsubq_f32(v217, vminq_f32(vmaxq_f32(vsubq_f32(v223, *(v182 + 112)), v211), v217)), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v217, v223), *(v182 + 128)), v211), v217));
        v242 = vmulq_f32(v241, v241);
        *(v11 + 16 * v15) = vmulq_n_f32(v238, vsubq_f32(vmulq_f32(v242, *(v182 + 512)), vmulq_f32(vmulq_f32(v241, v242), *(v182 + 528))).f32[0]);
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcConcentricPolygonsGradient::GetDOD(HgcConcentricPolygonsGradient *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcConcentricPolygonsGradient::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcConcentricPolygonsGradient::HgcConcentricPolygonsGradient(HgcConcentricPolygonsGradient *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EB208;
  operator new();
}

void HgcConcentricPolygonsGradient::~HgcConcentricPolygonsGradient(HGNode *this)
{
  *this = &unk_2871EB208;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40CD7AB3DBLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcConcentricPolygonsGradient::~HgcConcentricPolygonsGradient(this);

  HGObject::operator delete(v1);
}

uint64_t HgcConcentricPolygonsGradient::SetParameter(HgcConcentricPolygonsGradient *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v13 = *(this + 51);
        if (*(v13 + 32) != a3.n128_f32[0] || *(v13 + 36) != a4 || *(v13 + 40) != a5 || *(v13 + 44) != a6)
        {
          *(v13 + 32) = a3.n128_u32[0];
          *(v13 + 36) = a4;
          *(v13 + 40) = a5;
          *(v13 + 44) = a6;
          goto LABEL_56;
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
          goto LABEL_56;
        }
      }

      return 0;
    }

    if (!a2)
    {
      v12 = *(this + 51);
      if (v12->n128_f32[0] != a3.n128_f32[0] || v12->n128_f32[1] != a4 || v12->n128_f32[2] != a6 || v12->n128_f32[3] != 0.0)
      {
        v12->n128_u32[0] = a3.n128_u32[0];
        v12->n128_f32[1] = a4;
        v12->n128_f32[2] = a6;
        a3.n128_f32[1] = a4;
        v12->n128_u32[3] = 0;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v12[35] = a3;
        goto LABEL_56;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v9 = *(this + 51);
      if (v9[1].n128_f32[0] != a4 || v9[1].n128_f32[1] != 0.0 || v9[1].n128_f32[2] != 0.0 || v9[1].n128_f32[3] != 0.0)
      {
        v9[1].n128_f32[0] = a4;
        v9[1].n128_u64[1] = 0;
        v9[1].n128_u32[1] = 0;
        a3.n128_f32[1] = a4;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v9[36] = a3;
        goto LABEL_56;
      }

      return 0;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      if (a2 == 4)
      {
        v15 = *(this + 51);
        if (*(v15 + 64) != a3.n128_f32[0] || *(v15 + 68) != a4 || *(v15 + 72) != a5 || *(v15 + 76) != a6)
        {
          *(v15 + 64) = a3.n128_u32[0];
          *(v15 + 68) = a4;
          *(v15 + 72) = a5;
          *(v15 + 76) = a6;
          goto LABEL_56;
        }
      }

      else
      {
        v11 = *(this + 51);
        if (*(v11 + 80) != a3.n128_f32[0] || *(v11 + 84) != a4 || *(v11 + 88) != a5 || *(v11 + 92) != a6)
        {
          *(v11 + 80) = a3.n128_u32[0];
          *(v11 + 84) = a4;
          *(v11 + 88) = a5;
          *(v11 + 92) = a6;
          goto LABEL_56;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 6:
        v14 = *(this + 51);
        if (*(v14 + 96) != a3.n128_f32[0] || *(v14 + 100) != a4 || *(v14 + 104) != a5 || *(v14 + 108) != a6)
        {
          *(v14 + 96) = a3.n128_u32[0];
          *(v14 + 100) = a4;
          *(v14 + 104) = a5;
          *(v14 + 108) = a6;
          goto LABEL_56;
        }

        return 0;
      case 7:
        v16 = *(this + 51);
        if (*(v16 + 112) != a3.n128_f32[0] || *(v16 + 116) != a4 || *(v16 + 120) != a5 || *(v16 + 124) != a6)
        {
          *(v16 + 112) = a3.n128_u32[0];
          *(v16 + 116) = a4;
          *(v16 + 120) = a5;
          *(v16 + 124) = a6;
          goto LABEL_56;
        }

        return 0;
      case 8:
        v8 = *(this + 51);
        if (*(v8 + 128) != a3.n128_f32[0] || *(v8 + 132) != a4 || *(v8 + 136) != a5 || *(v8 + 140) != a6)
        {
          *(v8 + 128) = a3.n128_u32[0];
          *(v8 + 132) = a4;
          *(v8 + 136) = a5;
          *(v8 + 140) = a6;
LABEL_56:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

uint64_t HgcConcentricPolygonsGradient::GetParameter(HgcConcentricPolygonsGradient *this, unsigned int a2, float *a3)
{
  if (a2 > 8)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = qword_260346E98[a2];
  v6 = qword_260346EE0[a2];
  v7 = qword_260346F28[a2];
  v8 = *(this + 51);
  *a3 = *(v8 + qword_260346E50[a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

double HgcConcentricPolygonsGradient::State::State(HgcConcentricPolygonsGradient::State *this)
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
  *(this + 8) = 0u;
  *(this + 9) = xmmword_2603444B0;
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(this + 10) = vnegq_f32(v2);
  *(this + 11) = xmmword_260344DF0;
  *(this + 12) = xmmword_260344870;
  *(this + 13) = xmmword_2603450A0;
  *(this + 14) = xmmword_2603450B0;
  *(this + 15) = xmmword_2603450C0;
  *(this + 16) = xmmword_2603450D0;
  *(this + 17) = xmmword_2603450E0;
  *(this + 18) = xmmword_2603450F0;
  *(this + 19) = xmmword_260345100;
  *(this + 40) = 0;
  *(this + 41) = 0;
  *(this + 21) = xmmword_260345110;
  *(this + 22) = xmmword_260344700;
  *(this + 23) = xmmword_2603429B0;
  *(this + 24) = xmmword_260344E30;
  *(this + 25) = xmmword_2603468E0;
  *(this + 26) = xmmword_260346E20;
  *(this + 27) = xmmword_2603468F0;
  *(this + 28) = xmmword_260346900;
  *(this + 29) = xmmword_260346910;
  *(this + 30) = xmmword_260346920;
  *(this + 31) = xmmword_260345910;
  *(this + 32) = xmmword_260346390;
  *(this + 33) = xmmword_260346270;
  *(this + 34) = xmmword_260344600;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  return result;
}

const char *HgcDiffScreen::GetProgram(HgcDiffScreen *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000065a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.5000000000, 9.999999975e-07, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xw = c0.xx - r0.xx;\n    r2.xw = r0.zz - r0.yy;\n    r2.xw = mix(fabs(r2.xw), r1.xw, c0.yy);\n    r1.xw = half2(r2.xw >= half2(hg_Params[0].xw));\n    r3.xw = half2(r2.xw >= half2(hg_Params[1].xw));\n    r4.x = half(hg_Params[1].x) - half(hg_Params[0].x);\n    r2.xw = r2.xw - half2(hg_Params[0].xw);\n    r4.x = r4.x + c0.z;\n    r2.xw = r2.xw/r4.xx;\n    r2.xw = clamp(r2.xw*r1.xw + r3.xw, 0.00000h, 1.00000h);\n    r2.xw = c0.xx - r2.xw;\n    r4.xw = half2(r2.xw >= half2(hg_Params[2].xw));\n    r1.xw = half2(r2.xw >= half2(hg_Params[3].xw));\n    r3.x = half(hg_Params[3].x) - half(hg_Params[2].x);\n    r2.xw = r2.xw - half2(hg_Params[2].xw);\n    r2.xw = r2.xw/r3.xx;\n    r2.xw = clamp(r2.xw*r4.xw + r1.xw, 0.00000h, 1.00000h);\n    r3.xw = c0.xx - r2.xw;\n    r2.xw = clamp(mix(r2.xw, r3.xw, half2(hg_Params[4].xw)), 0.00000h, 1.00000h);\n    r2.xw = r2.xw*r0.ww;\n    output.color0.xyz = float3(r0.xyz)*float3(r2.xxx);\n    output.color0.w = float(r2.w);\n    return output;\n}\n//MD5=1b21e6b8:297b0662:906443c6:c4dc480e\n//SIG=00400000:00000001:00000001:00000001:0001:0005:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005fb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.5000000000, 9.999999975e-07, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xw = c0.xx - r0.xx;\n    r2.xw = r0.zz - r0.yy;\n    r2.xw = mix(fabs(r2.xw), r1.xw, c0.yy);\n    r1.xw = float2(r2.xw >= hg_Params[0].xw);\n    r3.xw = float2(r2.xw >= hg_Params[1].xw);\n    r4.x = hg_Params[1].x - hg_Params[0].x;\n    r2.xw = r2.xw - hg_Params[0].xw;\n    r4.x = r4.x + c0.z;\n    r2.xw = r2.xw/r4.xx;\n    r2.xw = clamp(r2.xw*r1.xw + r3.xw, 0.00000f, 1.00000f);\n    r2.xw = c0.xx - r2.xw;\n    r4.xw = float2(r2.xw >= hg_Params[2].xw);\n    r1.xw = float2(r2.xw >= hg_Params[3].xw);\n    r3.x = hg_Params[3].x - hg_Params[2].x;\n    r2.xw = r2.xw - hg_Params[2].xw;\n    r2.xw = r2.xw/r3.xx;\n    r2.xw = clamp(r2.xw*r4.xw + r1.xw, 0.00000f, 1.00000f);\n    r3.xw = c0.xx - r2.xw;\n    r2.xw = clamp(mix(r2.xw, r3.xw, hg_Params[4].xw), 0.00000f, 1.00000f);\n    r2.xw = r2.xw*r0.ww;\n    output.color0.xyz = r0.xyz*r2.xxx;\n    output.color0.w = r2.w;\n    return output;\n}\n//MD5=d4dcc50b:2bd21a1d:bfe32c0c:c8f80ee0\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006df\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.5000000000, 9.999999975e-07, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xw = c0.xx - r0.xx;\n    r2.xw = r0.zz - r0.yy;\n    r2.xw = mix(abs(r2.xw), r1.xw, c0.yy);\n    r1.xw = vec2(greaterThanEqual(r2.xw, hg_ProgramLocal0.xw));\n    r3.xw = vec2(greaterThanEqual(r2.xw, hg_ProgramLocal1.xw));\n    r4.x = hg_ProgramLocal1.x - hg_ProgramLocal0.x;\n    r2.xw = r2.xw - hg_ProgramLocal0.xw;\n    r4.x = r4.x + c0.z;\n    r2.xw = r2.xw/r4.xx;\n    r2.xw = clamp(r2.xw*r1.xw + r3.xw, vec2(0.00000), vec2(1.00000));\n    r2.xw = c0.xx - r2.xw;\n    r4.xw = vec2(greaterThanEqual(r2.xw, hg_ProgramLocal2.xw));\n    r1.xw = vec2(greaterThanEqual(r2.xw, hg_ProgramLocal3.xw));\n    r3.x = hg_ProgramLocal3.x - hg_ProgramLocal2.x;\n    r2.xw = r2.xw - hg_ProgramLocal2.xw;\n    r2.xw = r2.xw/r3.xx;\n    r2.xw = clamp(r2.xw*r4.xw + r1.xw, vec2(0.00000), vec2(1.00000));\n    r3.xw = c0.xx - r2.xw;\n    r2.xw = clamp(mix(r2.xw, r3.xw, hg_ProgramLocal4.xw), vec2(0.00000), vec2(1.00000));\n    r2.xw = r2.xw*r0.ww;\n    gl_FragColor.xyz = r0.xyz*r2.xxx;\n    gl_FragColor.w = r2.w;\n}\n//MD5=d38620f5:f9b67518:33199026:abe5b0ba\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAB920C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB930C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB934C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB9344);
}

uint64_t HgcDiffScreen::BindTexture(HgcDiffScreen *this, HGHandler *a2, int a3)
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

uint64_t HgcDiffScreen::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a2 + 144))(a2, 4, a1[51] + 64, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcDiffScreen::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = *(a2 + 80);
    v7 = 16 * *(a2 + 24);
    v8 = 16 * *(a2 + 88);
    do
    {
      if (v4 < 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 16;
        for (i = v4; i > 1; i -= 2)
        {
          v12 = *(v6 + v10 - 16);
          v13 = *(v6 + v10);
          v14 = *(a1 + 408);
          v16 = *(v14 + 64);
          v15 = *(v14 + 80);
          v17 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v15);
          v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v15);
          v19 = *(v14 + 96);
          v20 = *(v14 + 112);
          v21 = vmulq_f32(vrecpeq_f32(v17), v19);
          v22 = vmulq_f32(vrecpeq_f32(v18), v19);
          v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
          v24 = vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
          v26 = *(v14 + 128);
          v25 = *(v14 + 144);
          v27 = vmulq_f32(v12, vorrq_s8(v23, v26));
          v28 = vmulq_f32(v13, vorrq_s8(v24, v26));
          v29 = vabdq_f32(vdupq_laneq_s32(v27, 2), vdupq_lane_s32(*v27.f32, 1));
          v30 = vabdq_f32(vdupq_laneq_s32(v28, 2), vdupq_lane_s32(*v28.f32, 1));
          v31 = *(v14 + 160);
          v32 = *(v14 + 176);
          v33 = vaddq_f32(v29, vmulq_f32(v31, vsubq_f32(vsubq_f32(v25, vdupq_lane_s32(*v27.f32, 0)), v29)));
          v34 = vaddq_f32(v30, vmulq_f32(v31, vsubq_f32(vsubq_f32(v25, vdupq_lane_s32(*v28.f32, 0)), v30)));
          v35 = *(v14 + 16);
          v36 = vcgeq_f32(v34, v35);
          v37 = vdupq_lane_s32(*&vaddq_f32(v15, vsubq_f32(v35, *v14)), 0);
          v38 = vandq_s8(v25, vcgeq_f32(v33, v35));
          v39 = *(v14 + 192);
          v40 = *(v14 + 208);
          v41 = vminq_f32(vmaxq_f32(vmulq_f32(v19, vrecpeq_f32(v37)), v32), v39);
          v42 = vmulq_f32(v41, vrecpsq_f32(v37, v41));
          v43 = vsubq_f32(v25, vminq_f32(vmaxq_f32(vaddq_f32(v38, vmulq_f32(vandq_s8(v25, vcgeq_f32(v33, *v14)), vmulq_f32(vsubq_f32(v33, *v14), v42))), v40), v25));
          v44 = vsubq_f32(v25, vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v25, v36), vmulq_f32(vmulq_f32(v42, vsubq_f32(v34, *v14)), vandq_s8(v25, vcgeq_f32(v34, *v14)))), v40), v25));
          v45 = *(v14 + 32);
          v46 = *(v14 + 48);
          v47 = vcgeq_f32(v43, v45);
          v48 = vcgeq_f32(v44, v45);
          v49 = vcgeq_f32(v43, v46);
          v50 = vcgeq_f32(v44, v46);
          v51 = vsubq_f32(v43, v45);
          v52 = vsubq_f32(v44, v45);
          v53 = vdupq_lane_s32(*&vsubq_f32(v46, v45), 0);
          v54 = vminq_f32(vmaxq_f32(vmulq_f32(v19, vrecpeq_f32(v53)), v32), v39);
          v55 = vmulq_f32(v54, vrecpsq_f32(v53, v54));
          v56 = vmulq_f32(v52, v55);
          v57 = vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v25, v49), vmulq_f32(vandq_s8(v25, v47), vmulq_f32(v51, v55))), v40), v25);
          v58 = vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v25, v50), vmulq_f32(vandq_s8(v25, v48), v56)), v40), v25);
          v59 = vminq_f32(vmaxq_f32(vaddq_f32(v58, vmulq_f32(v16, vsubq_f32(vsubq_f32(v25, v58), v58))), v40), v25);
          v60 = vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v57, vmulq_f32(v16, vsubq_f32(vsubq_f32(v25, v57), v57))), v40), v25), v27, 3);
          v61 = vmulq_laneq_f32(v59, v28, 3);
          v62 = *(v14 + 224);
          v63 = (v5 + v10);
          v63[-1] = vbslq_s8(v62, v60, vmulq_n_f32(v27, *v60.i32));
          *v63 = vbslq_s8(v62, v61, vmulq_n_f32(v28, *v61.i32));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v64 = *(v6 + 16 * v9);
        v65 = *(a1 + 408);
        v66 = *(v65 + 80);
        v67 = vmaxq_f32(vdupq_laneq_s32(v64, 3), v66);
        v68 = *(v65 + 96);
        v69 = vmulq_f32(vrecpeq_f32(v67), v68);
        v70 = *(v65 + 144);
        v71 = vmulq_f32(v64, vorrq_s8(vandq_s8(*(v65 + 112), vmulq_f32(v69, vrecpsq_f32(v69, v67))), *(v65 + 128)));
        v72 = vabdq_f32(vdupq_laneq_s32(v71, 2), vdupq_lane_s32(*v71.f32, 1));
        v73 = *(v65 + 176);
        v74 = vaddq_f32(v72, vmulq_f32(*(v65 + 160), vsubq_f32(vsubq_f32(v70, vdupq_lane_s32(*v71.f32, 0)), v72)));
        v75 = *(v65 + 16);
        v76 = vandq_s8(v70, vcgeq_f32(v74, v75));
        v77 = vdupq_lane_s32(*&vaddq_f32(v66, vsubq_f32(v75, *v65)), 0);
        v78 = *(v65 + 192);
        v79 = *(v65 + 208);
        v80 = vminq_f32(vmaxq_f32(vmulq_f32(v68, vrecpeq_f32(v77)), v73), v78);
        v81 = vsubq_f32(v70, vminq_f32(vmaxq_f32(vaddq_f32(v76, vmulq_f32(vmulq_f32(vmulq_f32(v80, vrecpsq_f32(v77, v80)), vsubq_f32(v74, *v65)), vandq_s8(v70, vcgeq_f32(v74, *v65)))), v79), v70));
        v82 = *(v65 + 32);
        v83 = *(v65 + 48);
        v84 = vcgeq_f32(v81, v82);
        v85 = vcgeq_f32(v81, v83);
        v86 = vsubq_f32(v81, v82);
        v87 = vdupq_lane_s32(*&vsubq_f32(v83, v82), 0);
        v88 = vminq_f32(vmaxq_f32(vmulq_f32(v68, vrecpeq_f32(v87)), v73), v78);
        v89 = vminq_f32(vmaxq_f32(vaddq_f32(vandq_s8(v70, v85), vmulq_f32(vandq_s8(v70, v84), vmulq_f32(v86, vmulq_f32(v88, vrecpsq_f32(v87, v88))))), v79), v70);
        v90 = vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v89, vmulq_f32(*(v65 + 64), vsubq_f32(vsubq_f32(v70, v89), v89))), v79), v70), v71, 3);
        *(v5 + 16 * v9) = vbslq_s8(*(v65 + 224), v90, vmulq_n_f32(v71, *v90.i32));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcDiffScreen::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcDiffScreen::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcDiffScreen::HgcDiffScreen(HgcDiffScreen *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EB470;
  operator new();
}

void HgcDiffScreen::~HgcDiffScreen(HGNode *this)
{
  *this = &unk_2871EB470;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);
}

{
  HgcDiffScreen::~HgcDiffScreen(this);

  HGObject::operator delete(v1);
}

uint64_t HgcDiffScreen::SetParameter(HgcDiffScreen *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcDiffScreen::GetParameter(HgcDiffScreen *this, unsigned int a2, float *a3)
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

const char *HgcGlow::GetProgram(HgcGlow *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000289\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.w = clamp(dot(r0, half4(hg_Params[0])), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=5d998599:758e3f56:40d6d91d:c36bf663\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000274\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.w = clamp(dot(r0, hg_Params[0]), 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=f075e461:d01c8cc7:7ae72e43:7087b15b\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000240\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.w = clamp(dot(r0, hg_ProgramLocal0), 0.00000, 1.00000);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=2e18c989:40ce49ba:12af5bf2:488e69ff\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAB9D2C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB9E2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB9E6C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB9E64);
}

uint64_t HgcGlow::BindTexture(HgcGlow *this, HGHandler *a2, int a3)
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

uint64_t HgcGlow::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcGlow::RenderTile(uint64_t a1, uint64_t a2)
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
          v12 = *(v6 + v10 - 32);
          v13 = *(v6 + v10 - 16);
          v14 = *(v6 + v10);
          v15 = *(v6 + v10 + 16);
          v16 = *(a1 + 408);
          v17 = *(v16 + 16);
          v18 = vmulq_f32(v12, *v16);
          v19 = vmulq_f32(v13, *v16);
          v20 = vmulq_f32(v14, *v16);
          v21 = vmulq_f32(v15, *v16);
          v22 = vaddq_f32(v18, vextq_s8(v18, v18, 4uLL));
          v23 = vaddq_f32(v19, vextq_s8(v19, v19, 4uLL));
          v24 = vaddq_f32(v20, vextq_s8(v20, v20, 4uLL));
          v25 = vaddq_f32(v21, vextq_s8(v21, v21, 4uLL));
          v26 = vmaxq_f32(vaddq_f32(v22, vextq_s8(v22, v22, 8uLL)), v17);
          v27 = vmaxq_f32(vaddq_f32(v23, vextq_s8(v23, v23, 8uLL)), v17);
          v28 = vmaxq_f32(vaddq_f32(v24, vextq_s8(v24, v24, 8uLL)), v17);
          v29 = vmaxq_f32(vaddq_f32(v25, vextq_s8(v25, v25, 8uLL)), v17);
          v30 = *(v16 + 32);
          v31 = *(v16 + 48);
          v32 = vminq_f32(v26, v30);
          v33 = vminq_f32(v27, v30);
          v34 = vminq_f32(v28, v30);
          v35 = vminq_f32(v29, v30);
          v36 = vbslq_s8(v31, v32, v12);
          v37 = vbslq_s8(v31, v33, v13);
          v38 = vbslq_s8(v31, v34, v14);
          v39 = vbslq_s8(v31, v35, v15);
          v40 = (v5 + v10);
          v40[-2] = vbslq_s8(v31, v32, vmulq_laneq_f32(v36, v36, 3));
          v40[-1] = vbslq_s8(v31, v33, vmulq_laneq_f32(v37, v37, 3));
          *v40 = vbslq_s8(v31, v34, vmulq_laneq_f32(v38, v38, 3));
          v40[1] = vbslq_s8(v31, v35, vmulq_laneq_f32(v39, v39, 3));
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v41 = *(v6 + 16 * v9);
          v42 = *(a1 + 408);
          v43 = vmulq_f32(v41, *v42);
          v44 = vaddq_f32(v43, vextq_s8(v43, v43, 4uLL));
          v45 = *(v42 + 48);
          v46 = vminq_f32(vmaxq_f32(vaddq_f32(v44, vextq_s8(v44, v44, 8uLL)), *(v42 + 16)), *(v42 + 32));
          v47 = vbslq_s8(v45, v46, v41);
          *(v5 + 16 * v9++) = vbslq_s8(v45, v46, vmulq_laneq_f32(v47, v47, 3));
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

uint64_t HgcGlow::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcGlow::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcGlow::HgcGlow(HgcGlow *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EB6D8;
  operator new();
}

void HgcGlow::~HgcGlow(HGNode *this)
{
  *this = &unk_2871EB6D8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcGlow::~HgcGlow(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGlow::SetParameter(HgcGlow *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcGlow::GetParameter(HgcGlow *this, int a2, float *a3)
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

const char *HgcGlowCombineFx::GetProgram(HgcGlowCombineFx *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000421\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1.w = clamp(r0.w*half(hg_Params[0].x), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*half3(hg_Params[0].xxx);\n    r1.xyz = fmin(r0.xyz, half3(hg_Params[1].xyz));\n    r0.x = c0.x - r1.w;\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r1.xyz, c0.yyy);\n    output.color0 = float4(r0.xxxx)*float4(r2) + float4(r1);\n    return output;\n}\n//MD5=d3ba96cc:8b61c946:64e19427:d7b487f8\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ea\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1.w = clamp(r0.w*hg_Params[0].x, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*hg_Params[0].xxx;\n    r1.xyz = fmin(r0.xyz, hg_Params[1].xyz);\n    r0.x = c0.x - r1.w;\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r1.xyz, c0.yyy);\n    output.color0 = r0.xxxx*r2 + r1;\n    return output;\n}\n//MD5=3b21280a:6210f9e7:24a7efee:ec2123ba\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1.w = clamp(r0.w*hg_ProgramLocal0.x, 0.00000, 1.00000);\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xxx;\n    r1.xyz = min(r0.xyz, hg_ProgramLocal1.xyz);\n    r0.x = c0.x - r1.w;\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r1.xyz, c0.yyy);\n    gl_FragColor = r0.xxxx*r2 + r1;\n}\n//MD5=30e89c24:cb3d0b26:e5c4addf:a6d738b2\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FABA4F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FABA630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FABA678()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FABA670);
}

uint64_t HgcGlowCombineFx::BindTexture(HgcGlowCombineFx *this, HGHandler *a2, int a3)
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

uint64_t HgcGlowCombineFx::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcGlowCombineFx::RenderTile(uint64_t a1, uint64_t a2)
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
          v15 = *(v14 + 1);
          v16 = vmulq_n_f32(*(v8 + v12 - 32), COERCE_FLOAT(*v14));
          v17 = vmulq_n_f32(*(v8 + v12 - 16), COERCE_FLOAT(*v14));
          v18 = vmulq_n_f32(*(v8 + v12), COERCE_FLOAT(*v14));
          v19 = vmulq_n_f32(*(v8 + v12 + 16), COERCE_FLOAT(*v14));
          v20 = *(v14 + 2);
          v21 = *(v14 + 3);
          v22 = vmaxq_f32(v16, v20);
          v23 = vmaxq_f32(v17, v20);
          v24 = vmaxq_f32(v18, v20);
          v25 = vmaxq_f32(v19, v20);
          v26 = vminq_f32(v22, v21);
          v27 = vminq_f32(v23, v21);
          v28 = vminq_f32(v24, v21);
          v29 = vminq_f32(v16, v15);
          v30 = vminq_f32(v17, v15);
          v31 = vminq_f32(v18, v15);
          v32 = vminq_f32(v19, v15);
          v33 = vminq_f32(v25, v21);
          v34 = *(v14 + 4);
          v35 = *(v14 + 5);
          v36 = vbslq_s8(v34, v26, v29);
          v37 = vbslq_s8(v34, v27, v30);
          v38 = vbslq_s8(v34, v28, v31);
          v39 = vbslq_s8(v34, v33, v32);
          v40 = vaddq_f32(vmulq_n_f32(*(v6 + v12 - 16), vsubq_f32(v21, vdupq_laneq_s32(v37, 3)).f32[0]), vbslq_s8(v34, v27, vmaxq_f32(v37, v35)));
          v41 = vaddq_f32(vmulq_n_f32(*(v6 + v12), vsubq_f32(v21, vdupq_laneq_s32(v38, 3)).f32[0]), vbslq_s8(v34, v28, vmaxq_f32(v38, v35)));
          v42 = vaddq_f32(vmulq_n_f32(*(v6 + v12 + 16), vsubq_f32(v21, vdupq_laneq_s32(v39, 3)).f32[0]), vbslq_s8(v34, v33, vmaxq_f32(v39, v35)));
          v43 = (v5 + v12);
          v43[-2] = vaddq_f32(vmulq_n_f32(*(v6 + v12 - 32), vsubq_f32(v21, vdupq_laneq_s32(v36, 3)).f32[0]), vbslq_s8(v34, v26, vmaxq_f32(v36, v35)));
          v43[-1] = v40;
          *v43 = v41;
          v43[1] = v42;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v44 = *(a1 + 408);
          v45 = vmulq_n_f32(*(v8 + 16 * v11), COERCE_FLOAT(*v44));
          v46 = *(v44 + 48);
          v47 = vminq_f32(vmaxq_f32(v45, *(v44 + 32)), v46);
          v48 = *(v44 + 64);
          v49 = vbslq_s8(v48, v47, vminq_f32(v45, *(v44 + 16)));
          *(v5 + 16 * v11) = vaddq_f32(vmulq_n_f32(*(v6 + 16 * v11), vsubq_f32(v46, vdupq_laneq_s32(v49, 3)).f32[0]), vbslq_s8(v48, v47, vmaxq_f32(v49, *(v44 + 80))));
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

uint64_t HgcGlowCombineFx::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcGlowCombineFx::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcGlowCombineFx::HgcGlowCombineFx(HgcGlowCombineFx *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EB940;
  operator new();
}

void HgcGlowCombineFx::~HgcGlowCombineFx(HGNode *this)
{
  *this = &unk_2871EB940;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);
}

{
  HgcGlowCombineFx::~HgcGlowCombineFx(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGlowCombineFx::SetParameter(HgcGlowCombineFx *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    v8 = *(this + 51);
    if (*(v8 + 16) != a3.n128_f32[0] || *(v8 + 20) != a3.n128_f32[0] || *(v8 + 24) != a3.n128_f32[0] || *(v8 + 28) != 0.0)
    {
      v9 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v9.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *(v8 + 16) = v9;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v8 + 96) = a3;
      goto LABEL_13;
    }
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = *(this + 51);
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a4 || *(v7 + 8) != a5 || *(v7 + 12) != a6)
    {
      *v7 = a3.n128_u32[0];
      *(v7 + 4) = a4;
      *(v7 + 8) = a5;
      *(v7 + 12) = a6;
LABEL_13:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcGlowCombineFx::GetParameter(HgcGlowCombineFx *this, int a2, float *a3)
{
  if (a2 == 1)
  {
    v5 = *(this + 51);
    *a3 = v5[24];
    a3[1] = v5[25];
    a3[2] = v5[26];
    v4 = v5 + 27;
    goto LABEL_5;
  }

  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    v4 = v3 + 3;
LABEL_5:
    result = 0;
    a3[3] = *v4;
    return result;
  }

  return 0xFFFFFFFFLL;
}

const char *HgcGloom::GetProgram(HgcGloom *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003bb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = fmin(r0, r1);\n    r0 = mix(r0, r1, half4(hg_Params[0]));\n    r1.xyz = r0.xyz;\n    r1.w = c0.w;\n    output.color0 = select(float4(r0), float4(r1), float4(r0.wwww) < 0.00000h);\n    return output;\n}\n//MD5=7c874f00:d1204dce:c12d1ca6:2f88d076\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000391\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = fmin(r0, r1);\n    r0 = mix(r0, r1, hg_Params[0]);\n    r1.xyz = r0.xyz;\n    r1.w = c0.w;\n    output.color0 = select(r0, r1, r0.wwww < 0.00000f);\n    return output;\n}\n//MD5=f039a5fd:4335fd66:8678f73a:49766175\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000399\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = min(r0, r1);\n    r0 = mix(r0, r1, hg_ProgramLocal0);\n    r1.xyz = r0.xyz;\n    r1.w = c0.w;\n    gl_FragColor = vec4(r0.w < 0.00000 ? r1.x : r0.x, r0.w < 0.00000 ? r1.y : r0.y, r0.w < 0.00000 ? r1.z : r0.z, r0.w < 0.00000 ? r1.w : r0.w);\n}\n//MD5=9d67fc23:6a04ef89:61b68ea2:8c6a758f\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FABAE78(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FABAFB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FABB000()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FABAFF8);
}

uint64_t HgcGloom::BindTexture(HgcGloom *this, HGHandler *a2, int a3)
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

uint64_t HgcGloom::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcGloom::RenderTile(uint64_t a1, uint64_t a2)
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
          v15 = v14[1];
          v16 = vaddq_f32(*(v8 + v12 - 32), vmulq_f32(vsubq_f32(vminq_f32(*(v8 + v12 - 32), *(v6 + v12 - 32)), *(v8 + v12 - 32)), *v14));
          v17 = vaddq_f32(*(v8 + v12 - 16), vmulq_f32(vsubq_f32(vminq_f32(*(v8 + v12 - 16), *(v6 + v12 - 16)), *(v8 + v12 - 16)), *v14));
          v18 = vaddq_f32(*(v8 + v12), vmulq_f32(vsubq_f32(vminq_f32(*(v8 + v12), *(v6 + v12)), *(v8 + v12)), *v14));
          v19 = v16;
          v19.i32[3] = 0;
          v20 = v17;
          v20.i32[3] = 0;
          v21 = v18;
          v21.i32[3] = 0;
          v22 = vaddq_f32(*(v8 + v12 + 16), vmulq_f32(vsubq_f32(vminq_f32(*(v8 + v12 + 16), *(v6 + v12 + 16)), *(v8 + v12 + 16)), *v14));
          v23 = v22;
          v23.i32[3] = 0;
          v24 = (v5 + v12);
          v24[-2] = vbslq_s8(vcgtq_f32(v15, vdupq_laneq_s32(v16, 3)), v19, v16);
          v24[-1] = vbslq_s8(vcgtq_f32(v15, vdupq_laneq_s32(v17, 3)), v20, v17);
          *v24 = vbslq_s8(vcgtq_f32(v15, vdupq_laneq_s32(v18, 3)), v21, v18);
          v24[1] = vbslq_s8(vcgtq_f32(v15, vdupq_laneq_s32(v22, 3)), v23, v22);
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v25 = *(a1 + 408);
          v26 = vaddq_f32(*(v8 + 16 * v11), vmulq_f32(vsubq_f32(vminq_f32(*(v8 + 16 * v11), *(v6 + 16 * v11)), *(v8 + 16 * v11)), *v25));
          v27 = v26;
          v27.i32[3] = 0;
          *(v5 + 16 * v11++) = vbslq_s8(vcgtq_f32(v25[1], vdupq_laneq_s32(v26, 3)), v27, v26);
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

uint64_t HgcGloom::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcGloom::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcGloom::HgcGloom(HgcGloom *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EBBA8;
  operator new();
}

void HgcGloom::~HgcGloom(HGNode *this)
{
  *this = &unk_2871EBBA8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  HgcGloom::~HgcGloom(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGloom::SetParameter(HgcGloom *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcGloom::GetParameter(HgcGloom *this, int a2, float *a3)
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

const char *HgciOSLightTunnel::GetProgram(HgciOSLightTunnel *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000497\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.6931471825, 0.000000000, 0.000000000);\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    s1.x = dot(s0.xy, s0.xy);\n    s1.x = rsqrt(s1.x);\n    s0.z = s1.x*hg_Params[0].z;\n    s1.x = log2(s0.z);\n    s1.x = s1.x*hg_Params[0].w;\n    s1.y = s1.x*float(c0.y);\n    s1.x = sin(s1.y);\n    s1.z = cos(s1.y);\n    s1.yw = s1.zx;\n    s1.x = -s1.x;\n    s1 = s0.xyxy*s1;\n    s1.xy = s1.zx + s1.wy;\n    s1.xy = s0.zz*s1.xy + hg_Params[0].xy;\n    s1.z = float(float(c0.x) >= s0.z);\n    s1.xy = select(frag._texCoord0.xy, s1.xy, -s1.zz < 0.00000h);\n    s1.xy = s1.xy + hg_Params[1].xy;\n    s1.xy = s1.xy*hg_Params[1].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    return output;\n}\n//MD5=2917ad36:7db3cb49:c9ac4d5a:e3cc06d6\n//SIG=00400000:00000000:00000000:00000001:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000483\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.6931471825, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    r1.x = dot(r0.xy, r0.xy);\n    r1.x = rsqrt(r1.x);\n    r0.z = r1.x*hg_Params[0].z;\n    r1.x = log2(r0.z);\n    r1.x = r1.x*hg_Params[0].w;\n    r1.y = r1.x*c0.y;\n    r1.x = sin(r1.y);\n    r1.z = cos(r1.y);\n    r1.yw = r1.zx;\n    r1.x = -r1.x;\n    r1 = r0.xyxy*r1;\n    r1.xy = r1.zx + r1.wy;\n    r1.xy = r0.zz*r1.xy + hg_Params[0].xy;\n    r1.z = float(c0.x >= r0.z);\n    r1.xy = select(frag._texCoord0.xy, r1.xy, -r1.zz < 0.00000f);\n    r1.xy = r1.xy + hg_Params[1].xy;\n    r1.xy = r1.xy*hg_Params[1].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    return output;\n}\n//MD5=2863ffc4:80d10bf9:62a5304a:3952a909\n//SIG=00000000:00000000:00000000:00000000:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004ae\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.6931471825, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.xy = hg_TexCoord0.xy - hg_ProgramLocal0.xy;\n    r1.x = dot(r0.xy, r0.xy);\n    r1.x = inversesqrt(r1.x);\n    r0.z = r1.x*hg_ProgramLocal0.z;\n    r1.x = log2(r0.z);\n    r1.x = r1.x*hg_ProgramLocal0.w;\n    r1.y = r1.x*c0.y;\n    r1.x = sin(r1.y);\n    r1.z = cos(r1.y);\n    r1.yw = r1.zx;\n    r1.x = -r1.x;\n    r1 = r0.xyxy*r1;\n    r1.xy = r1.zx + r1.wy;\n    r1.xy = r0.zz*r1.xy + hg_ProgramLocal0.xy;\n    r1.z = float(c0.x >= r0.z);\n    r1.xy = vec2(-r1.z < 0.00000 ? r1.x : hg_TexCoord0.x, -r1.z < 0.00000 ? r1.y : hg_TexCoord0.y);\n    r1.xy = r1.xy + hg_ProgramLocal1.xy;\n    r1.xy = r1.xy*hg_ProgramLocal1.zw;\n    gl_FragColor = texture2D(hg_Texture0, r1.xy);\n}\n//MD5=d6cd45dc:5a6bb6a3:faf99e80:f2a9a10d\n//SIG=00000000:00000000:00000000:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FABB6DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FABB85C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FABB8AC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FABB8A4);
}

uint64_t HgciOSLightTunnel::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 1, v5, v6, v7, v8);
  return 0;
}

uint64_t HgciOSLightTunnel::Bind(HgciOSLightTunnel *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgciOSLightTunnel::RenderTile(HgciOSLightTunnel *this, HGTile *a2)
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
          v21 = vsubq_f32(v17, *v19);
          v22 = vsubq_f32(v18, *v19);
          v23 = vmulq_f32(v21, v21);
          v24 = vmulq_f32(v22, v22);
          v25 = vaddq_f32(v23, vrev64q_s32(v23));
          v26 = vaddq_f32(v24, vrev64q_s32(v24));
          v27 = vminq_f32(vrsqrteq_f32(v25), v20);
          v28 = vminq_f32(vrsqrteq_f32(v26), v20);
          v29 = vminq_f32(vmulq_f32(v27, vrsqrtsq_f32(vmulq_f32(v27, v25), v27)), v20);
          v30 = vminq_f32(vmulq_f32(v28, vrsqrtsq_f32(vmulq_f32(v26, v28), v28)), v20);
          v31 = vmulq_n_f32(*v19, vmulq_f32(v29, vrsqrtsq_f32(vmulq_f32(v25, v29), v29)).f32[0]);
          v21.i64[1] = v31.i64[1];
          v32 = vmulq_n_f32(*v19, vmulq_f32(v30, vrsqrtsq_f32(vmulq_f32(v26, v30), v30)).f32[0]);
          v22.i64[1] = v32.i64[1];
          v33 = vextq_s8(v21, v21, 8uLL);
          v34 = vextq_s8(v22, v22, 8uLL);
          v36 = *(v19 + 32);
          v35 = *(v19 + 48);
          v37 = vorrq_s8(vandq_s8(v33, v36), v35);
          v38 = vorrq_s8(vandq_s8(v34, v36), v35);
          v39 = *(v19 + 64);
          v40 = *(v19 + 80);
          v41 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v39, v33)));
          v42 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v39, v34)));
          v43 = *(v19 + 96);
          v44 = *(v19 + 112);
          v45 = vandq_s8(v35, vcgtq_f32(v37, v44));
          v46 = vandq_s8(v35, vcgtq_f32(v38, v44));
          v47 = vaddq_f32(vsubq_f32(v41, v43), v45);
          v48 = vaddq_f32(vsubq_f32(v42, v43), v46);
          v50 = *(v19 + 128);
          v49 = *(v19 + 144);
          v51 = vsubq_f32(vsubq_f32(v37, v35), vmulq_f32(vmulq_f32(v50, v45), v37));
          v52 = vsubq_f32(vsubq_f32(v38, v35), vmulq_f32(vmulq_f32(v50, v46), v38));
          v53 = vmulq_f32(v51, v51);
          v54 = *(v19 + 160);
          v55 = *(v19 + 176);
          v56 = vaddq_f32(v49, vmulq_f32(v54, v51));
          v57 = vaddq_f32(v49, vmulq_f32(v54, v52));
          v59 = *(v19 + 192);
          v58 = *(v19 + 208);
          v60 = vaddq_f32(v55, vmulq_f32(v59, v51));
          v61 = vaddq_f32(v55, vmulq_f32(v59, v52));
          v62 = *(v19 + 224);
          v63 = *(v19 + 240);
          v64 = vmulq_f32(v52, v52);
          v65 = vmulq_f32(v63, vrev64q_s32(vmulq_laneq_f32(vaddq_f32(v47, vmulq_f32(v51, vaddq_f32(v63, vmulq_f32(v51, vaddq_f32(vaddq_f32(v58, vmulq_f32(v62, v51)), vmulq_f32(v53, vaddq_f32(v56, vmulq_f32(v53, v60)))))))), *v19, 3)));
          v66 = vmulq_f32(v63, vrev64q_s32(vmulq_laneq_f32(vaddq_f32(v48, vmulq_f32(v52, vaddq_f32(v63, vmulq_f32(v52, vaddq_f32(vaddq_f32(v58, vmulq_f32(v62, v52)), vmulq_f32(v64, vaddq_f32(v57, vmulq_f32(v64, v61)))))))), *v19, 3)));
          v67 = *(v19 + 256);
          v68 = *(v19 + 272);
          v69 = vaddq_f32(v67, vmulq_f32(v68, vrev64q_s32(v65)));
          v70 = vaddq_f32(v67, vmulq_f32(v68, vrev64q_s32(v66)));
          v71 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
          v72 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
          v73 = vandq_s8(v35, vcgtq_f32(v71, v69));
          v74 = vabdq_f32(vsubq_f32(v70, vsubq_f32(v72, vandq_s8(v35, vcgtq_f32(v72, v70)))), v50);
          v75 = vaddq_f32(v67, vabdq_f32(vsubq_f32(v69, vsubq_f32(v71, v73)), v50));
          v76 = vaddq_f32(v67, v74);
          v77 = vmulq_f32(v75, v75);
          v78 = vmulq_f32(v76, v76);
          v79 = *(v19 + 288);
          v80 = *(v19 + 304);
          v82 = *(v19 + 320);
          v81 = *(v19 + 336);
          v83 = vmulq_f32(v75, vaddq_f32(v81, vmulq_f32(v77, vaddq_f32(v82, vmulq_f32(v77, vaddq_f32(v79, vmulq_f32(v80, v77)))))));
          v84 = vmulq_f32(v76, vaddq_f32(v81, vmulq_f32(v78, vaddq_f32(v82, vmulq_f32(v78, vaddq_f32(v79, vmulq_f32(v80, v78)))))));
          v86 = *(v19 + 352);
          v85 = *(v19 + 368);
          v87 = vbslq_s8(v86, v83, v65);
          v88 = vbslq_s8(v86, v84, v66);
          v89 = vmulq_f32(v81, vextq_s8(v87, v87, 0xCuLL));
          v90 = vmulq_f32(v81, vextq_s8(v88, v88, 0xCuLL));
          v91 = vcvtq_f32_s32(vcvtq_s32_f32(v89));
          v92 = vcvtq_f32_s32(vcvtq_s32_f32(v90));
          v93 = vsubq_f32(vabdq_f32(vsubq_f32(v89, vsubq_f32(v91, vandq_s8(v82, vcgtq_f32(v91, v89)))), v80), v79);
          v94 = vsubq_f32(vabdq_f32(vsubq_f32(v90, vsubq_f32(v92, vandq_s8(v82, vcgtq_f32(v92, v90)))), v80), v79);
          v95 = vmulq_f32(v93, v93);
          v96 = vmulq_f32(v94, v94);
          v87.i64[1] = vmulq_f32(v93, vaddq_f32(v62, vmulq_f32(v95, vaddq_f32(v63, vmulq_f32(v95, vaddq_f32(v68, vmulq_f32(v67, v95))))))).i64[1];
          v88.i64[1] = vmulq_f32(v94, vaddq_f32(v62, vmulq_f32(v96, vaddq_f32(v63, vmulq_f32(v96, vaddq_f32(v68, vmulq_f32(v67, v96))))))).i64[1];
          v97 = vbslq_s8(v85, v87, vextq_s8(v87, v87, 4uLL));
          v98 = vbslq_s8(v85, v88, vextq_s8(v88, v88, 4uLL));
          v99 = vmulq_f32(vdupq_lane_s64(v21.i64[0], 0), vbslq_s8(v86, vnegq_f32(v97), v97));
          v100 = vmulq_f32(vdupq_lane_s64(v22.i64[0], 0), vbslq_s8(v86, vnegq_f32(v98), v98));
          v97.i64[0] = *(v19 + 384);
          v87.i64[0] = *(v19 + 400);
          *v99.f32 = vadd_f32(vqtbl1_s8(v99, *v97.f32), vqtbl1_s8(v99, *v87.i8));
          *v100.f32 = vadd_f32(vqtbl1_s8(v100, *v97.f32), vqtbl1_s8(v100, *v87.i8));
          v31.i64[0] = vaddq_f32(*v19, vmulq_laneq_f32(v99, v31, 2)).u64[0];
          v101.i64[0] = vaddq_f32(*v19, vmulq_laneq_f32(v100, v32, 2)).u64[0];
          v102 = vandq_s8(v82, vcgeq_f32(v82, v21));
          v103 = vandq_s8(v82, vcgeq_f32(v82, v22));
          v31.i64[1] = v102.i64[1];
          v101.i64[1] = v103.i64[1];
          v104 = *(v19 + 416);
          v105 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v102, 2), v104), v31, v17);
          v106 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v103, 2), v104), v101, v18);
          v107 = *(a2 + 22);
          v108 = vsubq_f32(v105, v9);
          v109 = *(a2 + 10);
          if (v5)
          {
            v110 = vaddq_s32(vcvtq_s32_f32(v108), vcltzq_f32(v108));
            v111 = vsubq_f32(v108, vcvtq_f32_s32(v110)).u64[0];
            v112 = vsubq_f32(v106, v9);
            v113 = vaddq_s32(vcvtq_s32_f32(v112), vcltzq_f32(v112));
            v114 = vsubq_f32(v112, vcvtq_f32_s32(v113)).u64[0];
            *v110.i8 = vmla_s32(vzip1_s32(*v110.i8, *v113.i8), vzip2_s32(*v110.i8, *v113.i8), vdup_n_s32(v107));
            v115 = (v109 + 16 * v110.i32[0]);
            v116 = vaddq_f32(*v115, vmulq_n_f32(vsubq_f32(v115[1], *v115), v111.f32[0]));
            v117 = vaddq_f32(v116, vmulq_lane_f32(vsubq_f32(vaddq_f32(v115[v107], vmulq_n_f32(vsubq_f32(v115[v107 + 1], v115[v107]), v111.f32[0])), v116), v111, 1));
            v118 = (v109 + 16 * v110.i32[1]);
            v119 = vaddq_f32(*v118, vmulq_n_f32(vsubq_f32(v118[1], *v118), v114.f32[0]));
            v120 = vaddq_f32(v119, vmulq_lane_f32(vsubq_f32(vaddq_f32(v118[v107], vmulq_n_f32(vsubq_f32(v118[v107 + 1], v118[v107]), v114.f32[0])), v119), v114, 1));
          }

          else
          {
            v121 = vaddq_f32(v108, v13);
            v122 = vcvtq_s32_f32(v121);
            v123 = vaddq_f32(vsubq_f32(v106, v9), v13);
            v124 = vcvtq_s32_f32(v123);
            *v121.f32 = vadd_s32(*v122.i8, *&vcgtq_f32(vcvtq_f32_s32(v122), v121));
            *v123.f32 = vadd_s32(*v124.i8, *&vcgtq_f32(vcvtq_f32_s32(v124), v123));
            *v123.f32 = vmla_s32(vzip1_s32(*v121.f32, *v123.f32), vzip2_s32(*v121.f32, *v123.f32), vdup_n_s32(v107));
            v125 = v123.i32[1];
            v117 = *(v109 + 16 * v123.i32[0]);
            v120 = *(v109 + 16 * v125);
          }

          v126 = (v11 + 16 * v15);
          *v126 = v117;
          v126[1] = v120;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v127 = *(this + 51);
        v128 = *(v127 + 16);
        v129 = vsubq_f32(v17, *v127);
        v130 = vmulq_f32(v129, v129);
        v131 = vaddq_f32(v130, vrev64q_s32(v130));
        v132 = vminq_f32(vrsqrteq_f32(v131), v128);
        v133 = vminq_f32(vmulq_f32(v132, vrsqrtsq_f32(vmulq_f32(v132, v131), v132)), v128);
        v134 = vmulq_n_f32(*v127, vmulq_f32(v133, vrsqrtsq_f32(vmulq_f32(v131, v133), v133)).f32[0]);
        v129.i64[1] = v134.i64[1];
        v135 = vextq_s8(v129, v129, 8uLL);
        v136 = *(v127 + 48);
        v137 = vorrq_s8(vandq_s8(v135, *(v127 + 32)), v136);
        v138 = vandq_s8(v136, vcgtq_f32(v137, *(v127 + 112)));
        v139 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v135, 0x17uLL)), vandq_s8(*(v127 + 80), vcgtq_f32(*(v127 + 64), v135))), *(v127 + 96)), v138);
        v140 = *(v127 + 128);
        v141 = vsubq_f32(vsubq_f32(v137, v136), vmulq_f32(vmulq_f32(v140, v138), v137));
        v142 = vmulq_f32(v141, v141);
        v143 = *(v127 + 224);
        v144 = *(v127 + 240);
        v145 = vmulq_f32(v144, vrev64q_s32(vmulq_laneq_f32(vaddq_f32(v139, vmulq_f32(v141, vaddq_f32(v144, vmulq_f32(v141, vaddq_f32(vaddq_f32(*(v127 + 208), vmulq_f32(v143, v141)), vmulq_f32(v142, vaddq_f32(vaddq_f32(*(v127 + 144), vmulq_f32(*(v127 + 160), v141)), vmulq_f32(v142, vaddq_f32(*(v127 + 176), vmulq_f32(*(v127 + 192), v141)))))))))), *v127, 3)));
        v146 = *(v127 + 256);
        v147 = *(v127 + 272);
        v148 = vaddq_f32(v146, vmulq_f32(v147, vrev64q_s32(v145)));
        v149 = vcvtq_f32_s32(vcvtq_s32_f32(v148));
        v150 = vaddq_f32(v146, vabdq_f32(vsubq_f32(v148, vsubq_f32(v149, vandq_s8(v136, vcgtq_f32(v149, v148)))), v140));
        v151 = vmulq_f32(v150, v150);
        v152 = *(v127 + 288);
        v153 = *(v127 + 304);
        v154 = *(v127 + 320);
        v155 = *(v127 + 336);
        v156 = vmulq_f32(v150, vaddq_f32(v155, vmulq_f32(v151, vaddq_f32(v154, vmulq_f32(v151, vaddq_f32(v152, vmulq_f32(v153, v151)))))));
        v157 = *(v127 + 352);
        v158 = vbslq_s8(v157, v156, v145);
        v159 = vmulq_f32(v155, vextq_s8(v158, v158, 0xCuLL));
        v160 = vcvtq_f32_s32(vcvtq_s32_f32(v159));
        v161 = vsubq_f32(vabdq_f32(vsubq_f32(v159, vsubq_f32(v160, vandq_s8(v154, vcgtq_f32(v160, v159)))), v153), v152);
        v162 = vmulq_f32(v161, v161);
        v158.i64[1] = vmulq_f32(v161, vaddq_f32(v143, vmulq_f32(v162, vaddq_f32(v144, vmulq_f32(v162, vaddq_f32(v147, vmulq_f32(v146, v162))))))).i64[1];
        v163 = vbslq_s8(*(v127 + 368), v158, vextq_s8(v158, v158, 4uLL));
        v164 = vmulq_f32(vdupq_lane_s64(v129.i64[0], 0), vbslq_s8(v157, vnegq_f32(v163), v163));
        *v164.f32 = vadd_f32(vqtbl1_s8(v164, *(v127 + 384)), vqtbl1_s8(v164, *(v127 + 400)));
        v165.i64[0] = vaddq_f32(*v127, vmulq_laneq_f32(v164, v134, 2)).u64[0];
        v166 = vandq_s8(v154, vcgeq_f32(v154, v129));
        v165.i64[1] = v166.i64[1];
        v167 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v166, 2), *(v127 + 416)), v165, v17);
        v168 = *(a2 + 22);
        v169 = vsubq_f32(v167, v9);
        v170 = *(a2 + 10);
        if (v5)
        {
          v171 = vaddq_s32(vcvtq_s32_f32(v169), vcltzq_f32(v169));
          v172 = vsubq_f32(v169, vcvtq_f32_s32(v171)).u64[0];
          v173 = (v170 + 16 * (v171.i32[0] + v171.i32[1] * v168));
          v174 = vaddq_f32(*v173, vmulq_n_f32(vsubq_f32(v173[1], *v173), v172.f32[0]));
          v175 = vaddq_f32(v174, vmulq_lane_f32(vsubq_f32(vaddq_f32(v173[v168], vmulq_n_f32(vsubq_f32(v173[v168 + 1], v173[v168]), v172.f32[0])), v174), v172, 1));
        }

        else
        {
          v176 = vaddq_f32(v169, v13);
          v177 = vcvtq_s32_f32(v176);
          v176.i64[0] = vaddq_s32(v177, vcgtq_f32(vcvtq_f32_s32(v177), v176)).u64[0];
          v175 = *(v170 + 16 * (v176.i32[0] + v176.i32[1] * v168));
        }

        *(v11 + 16 * v15) = v175;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgciOSLightTunnel::GetDOD(HgciOSLightTunnel *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgciOSLightTunnel::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgciOSLightTunnel::HgciOSLightTunnel(HgciOSLightTunnel *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EBE10;
  operator new();
}

void HgciOSLightTunnel::~HgciOSLightTunnel(HGNode *this)
{
  *this = &unk_2871EBE10;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4003455651);
  }

  HGNode::~HGNode(this);
}

{
  HgciOSLightTunnel::~HgciOSLightTunnel(this);

  HGObject::operator delete(v1);
}

uint64_t HgciOSLightTunnel::SetParameter(HgciOSLightTunnel *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgciOSLightTunnel::GetParameter(HgciOSLightTunnel *this, int a2, float *a3)
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

double HgciOSLightTunnel::State::State(HgciOSLightTunnel::State *this)
{
  result = 0.0;
  *this = 0u;
  *(this + 1) = xmmword_260345200;
  *(this + 2) = xmmword_260344DE0;
  *(this + 3) = xmmword_2603429B0;
  *(this + 4) = xmmword_260344DF0;
  *(this + 5) = xmmword_260344E00;
  *(this + 6) = xmmword_260344E10;
  *(this + 7) = xmmword_260344E20;
  *(this + 8) = xmmword_260344E30;
  *(this + 9) = xmmword_260346FC0;
  *(this + 10) = xmmword_260346FD0;
  *(this + 11) = xmmword_260346FE0;
  *(this + 12) = xmmword_260346FF0;
  *(this + 13) = xmmword_260347000;
  *(this + 14) = xmmword_260347010;
  *(this + 15) = xmmword_260347020;
  *(this + 16) = xmmword_260347030;
  *(this + 17) = xmmword_260347040;
  *(this + 18) = xmmword_260347050;
  *(this + 19) = xmmword_260347060;
  *(this + 20) = xmmword_260347070;
  *(this + 21) = xmmword_260347080;
  *&v2 = 0xFFFFFFFFLL;
  *(&v2 + 1) = 0xFFFFFFFFLL;
  *(this + 22) = xmmword_2603444B0;
  *(this + 23) = v2;
  *(this + 24) = xmmword_260347090;
  *(this + 25) = xmmword_2603470A0;
  *(this + 26) = 0u;
  return result;
}

const char *HgciOSTwirl::GetProgram(HgciOSTwirl *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004cf\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, -2.000000000, 3.000000000, 0.000000000);\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    s1.x = dot(s0.xy, s0.xy);\n    s1.x = sqrt(s1.x);\n    s1.x = s1.x*hg_Params[0].z;\n    s1.x = fmin(s1.x, float(c0.x));\n    s0.z = float(c0.x) - s1.x;\n    s1.x = s0.z*float(c0.y) + float(c0.z);\n    s1.x = s1.x*s0.z;\n    s1.x = s1.x*s0.z;\n    s1.y = s1.x*hg_Params[0].w;\n    s1.x = sin(s1.y);\n    s1.z = cos(s1.y);\n    s1.yw = s1.zx;\n    s1.x = -s1.x;\n    s1 = s0.xyxy*s1;\n    s1.xy = s1.zx + s1.wy;\n    s1.xy = s1.xy + hg_Params[0].xy;\n    s1.xy = select(frag._texCoord0.xy, s1.xy, -s0.zz < 0.00000h);\n    s1.xy = s1.xy + hg_Params[1].xy;\n    s1.xy = s1.xy*hg_Params[1].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    return output;\n}\n//MD5=3772d60d:cf7da09f:a9799107:d8eb7c11\n//SIG=00400000:00000000:00000000:00000001:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004ad\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, -2.000000000, 3.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    r1.x = dot(r0.xy, r0.xy);\n    r1.x = sqrt(r1.x);\n    r1.x = r1.x*hg_Params[0].z;\n    r1.x = fmin(r1.x, c0.x);\n    r0.z = c0.x - r1.x;\n    r1.x = r0.z*c0.y + c0.z;\n    r1.x = r1.x*r0.z;\n    r1.x = r1.x*r0.z;\n    r1.y = r1.x*hg_Params[0].w;\n    r1.x = sin(r1.y);\n    r1.z = cos(r1.y);\n    r1.yw = r1.zx;\n    r1.x = -r1.x;\n    r1 = r0.xyxy*r1;\n    r1.xy = r1.zx + r1.wy;\n    r1.xy = r1.xy + hg_Params[0].xy;\n    r1.xy = select(frag._texCoord0.xy, r1.xy, -r0.zz < 0.00000f);\n    r1.xy = r1.xy + hg_Params[1].xy;\n    r1.xy = r1.xy*hg_Params[1].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    return output;\n}\n//MD5=40f6c188:38749712:e9c8a05a:80e63062\n//SIG=00000000:00000000:00000000:00000000:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004d1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, -2.000000000, 3.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.xy = hg_TexCoord0.xy - hg_ProgramLocal0.xy;\n    r1.x = dot(r0.xy, r0.xy);\n    r1.x = sqrt(r1.x);\n    r1.x = r1.x*hg_ProgramLocal0.z;\n    r1.x = min(r1.x, c0.x);\n    r0.z = c0.x - r1.x;\n    r1.x = r0.z*c0.y + c0.z;\n    r1.x = r1.x*r0.z;\n    r1.x = r1.x*r0.z;\n    r1.y = r1.x*hg_ProgramLocal0.w;\n    r1.x = sin(r1.y);\n    r1.z = cos(r1.y);\n    r1.yw = r1.zx;\n    r1.x = -r1.x;\n    r1 = r0.xyxy*r1;\n    r1.xy = r1.zx + r1.wy;\n    r1.xy = r1.xy + hg_ProgramLocal0.xy;\n    r1.xy = vec2(-r0.z < 0.00000 ? r1.x : hg_TexCoord0.x, -r0.z < 0.00000 ? r1.y : hg_TexCoord0.y);\n    r1.xy = r1.xy + hg_ProgramLocal1.xy;\n    r1.xy = r1.xy*hg_ProgramLocal1.zw;\n    gl_FragColor = texture2D(hg_Texture0, r1.xy);\n}\n//MD5=61b720b3:0921029c:c5f18401:2253427e\n//SIG=00000000:00000000:00000000:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FABC838(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FABC9B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FABCA08()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FABCA00);
}

uint64_t HgciOSTwirl::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 1, v5, v6, v7, v8);
  return 0;
}

uint64_t HgciOSTwirl::Bind(HgciOSTwirl *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgciOSTwirl::RenderTile(HgciOSTwirl *this, HGTile *a2)
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
          v21 = vsubq_f32(v17, *v19);
          v22 = vsubq_f32(v18, *v19);
          v23 = vmulq_f32(v21, v21);
          v24 = vmulq_f32(v22, v22);
          v25 = vaddq_f32(v23, vrev64q_s32(v23));
          v26 = vaddq_f32(v24, vrev64q_s32(v24));
          v27 = vminq_f32(vrsqrteq_f32(v25), v20);
          v28 = vminq_f32(vrsqrteq_f32(v26), v20);
          v29 = vminq_f32(vmulq_f32(v27, vrsqrtsq_f32(vmulq_f32(v27, v25), v27)), v20);
          v30 = vminq_f32(vmulq_f32(v28, vrsqrtsq_f32(vmulq_f32(v26, v28), v28)), v20);
          v31 = vminq_f32(vmulq_f32(v29, vrsqrtsq_f32(vmulq_f32(v25, v29), v29)), v20);
          v32 = vmulq_laneq_f32(vmulq_f32(v26, vminq_f32(vmulq_f32(v30, vrsqrtsq_f32(vmulq_f32(v26, v30), v30)), v20)), *v19, 2);
          v34 = *(v19 + 32);
          v33 = *(v19 + 48);
          v35 = vsubq_f32(v34, vminq_f32(vmulq_laneq_f32(vmulq_f32(v25, v31), *v19, 2), v34));
          v36 = vsubq_f32(v34, vminq_f32(v32, v34));
          v37 = *(v19 + 64);
          v38 = *(v19 + 80);
          v39 = vextq_s8(*v19, *v19, 8uLL);
          v40 = vmulq_n_f32(v39, vmulq_f32(v35, vmulq_f32(v35, vaddq_f32(v33, vmulq_f32(v35, v37)))).f32[0]);
          v41 = vmulq_n_f32(v39, vmulq_f32(v36, vmulq_f32(v36, vaddq_f32(v33, vmulq_f32(v36, v37)))).f32[0]);
          v42 = *(v19 + 96);
          v43 = *(v19 + 112);
          v44 = vaddq_f32(v38, vmulq_f32(v42, vrev64q_s32(v40)));
          v45 = vaddq_f32(v38, vmulq_f32(v42, vrev64q_s32(v41)));
          v46 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
          v47 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
          v48 = vandq_s8(v34, vcgtq_f32(v46, v44));
          v49 = vabdq_f32(vsubq_f32(v45, vsubq_f32(v47, vandq_s8(v34, vcgtq_f32(v47, v45)))), v43);
          v50 = vaddq_f32(v38, vabdq_f32(vsubq_f32(v44, vsubq_f32(v46, v48)), v43));
          v51 = vaddq_f32(v38, v49);
          v52 = vmulq_f32(v50, v50);
          v53 = vmulq_f32(v51, v51);
          v54 = *(v19 + 128);
          v55 = *(v19 + 144);
          v57 = *(v19 + 160);
          v56 = *(v19 + 176);
          v58 = vmulq_f32(v50, vaddq_f32(v56, vmulq_f32(v52, vaddq_f32(v57, vmulq_f32(v52, vaddq_f32(v54, vmulq_f32(v55, v52)))))));
          v59 = vmulq_f32(v51, vaddq_f32(v56, vmulq_f32(v53, vaddq_f32(v57, vmulq_f32(v53, vaddq_f32(v54, vmulq_f32(v55, v53)))))));
          v61 = *(v19 + 192);
          v60 = *(v19 + 208);
          v62 = vbslq_s8(v61, v58, v40);
          v63 = vbslq_s8(v61, v59, v41);
          v64 = vmulq_f32(v56, vextq_s8(v62, v62, 0xCuLL));
          v65 = vmulq_f32(v56, vextq_s8(v63, v63, 0xCuLL));
          v66 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
          v67 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
          v68 = vabdq_f32(vsubq_f32(v64, vsubq_f32(v66, vandq_s8(v57, vcgtq_f32(v66, v64)))), v55);
          v69 = vabdq_f32(vsubq_f32(v65, vsubq_f32(v67, vandq_s8(v57, vcgtq_f32(v67, v65)))), v55);
          v70 = vsubq_f32(v68, v54);
          v71 = vsubq_f32(v69, v54);
          v72 = vmulq_f32(v70, v70);
          v73 = vmulq_f32(v71, v71);
          v62.i64[1] = vmulq_f32(v70, vaddq_f32(v37, vmulq_f32(v72, vaddq_f32(v38, vmulq_f32(v72, vaddq_f32(v43, vmulq_f32(v42, v72))))))).i64[1];
          v63.i64[1] = vmulq_f32(v71, vaddq_f32(v37, vmulq_f32(v73, vaddq_f32(v38, vmulq_f32(v73, vaddq_f32(v43, vmulq_f32(v42, v73))))))).i64[1];
          v74 = vbslq_s8(v60, v62, vextq_s8(v62, v62, 4uLL));
          v75 = vbslq_s8(v60, v63, vextq_s8(v63, v63, 4uLL));
          v76 = vmulq_f32(vdupq_lane_s64(v21.i64[0], 0), vbslq_s8(v61, vnegq_f32(v74), v74));
          v77 = vmulq_f32(vdupq_lane_s64(v22.i64[0], 0), vbslq_s8(v61, vnegq_f32(v75), v75));
          v78 = *(v19 + 224);
          v79 = *(v19 + 240);
          *v42.f32 = vqtbl1_s8(v76, *v78.f32);
          v43.i64[0] = vextq_s8(v78, v78, 8uLL).u64[0];
          *v78.f32 = vqtbl1_s8(v77, *v78.f32);
          *v63.f32 = vqtbl1_s8(v76, *v79.f32);
          v61.i64[0] = vextq_s8(v79, v79, 8uLL).u64[0];
          *v79.f32 = vqtbl1_s8(v77, *v79.f32);
          *&v42.u32[2] = vqtbl1_s8(v76, *v43.f32);
          *&v63.u32[2] = vqtbl1_s8(v76, *v61.i8);
          *&v78.u32[2] = vqtbl1_s8(v77, *v43.f32);
          *&v79.u32[2] = vqtbl1_s8(v77, *v61.i8);
          v80 = *(v19 + 256);
          v81 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v35.f32, 0), v80), vaddq_f32(*v19, vaddq_f32(v42, v63)), v17);
          v82 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v36.f32, 0), v80), vaddq_f32(*v19, vaddq_f32(v78, v79)), v18);
          v83 = *(a2 + 22);
          v84 = vsubq_f32(v81, v9);
          v85 = *(a2 + 10);
          if (v5)
          {
            v86 = vaddq_s32(vcvtq_s32_f32(v84), vcltzq_f32(v84));
            v87 = vsubq_f32(v84, vcvtq_f32_s32(v86)).u64[0];
            v88 = vsubq_f32(v82, v9);
            v89 = vaddq_s32(vcvtq_s32_f32(v88), vcltzq_f32(v88));
            v90 = vsubq_f32(v88, vcvtq_f32_s32(v89)).u64[0];
            *v86.i8 = vmla_s32(vzip1_s32(*v86.i8, *v89.i8), vzip2_s32(*v86.i8, *v89.i8), vdup_n_s32(v83));
            v91 = (v85 + 16 * v86.i32[0]);
            v92 = vaddq_f32(*v91, vmulq_n_f32(vsubq_f32(v91[1], *v91), v87.f32[0]));
            v93 = vaddq_f32(v92, vmulq_lane_f32(vsubq_f32(vaddq_f32(v91[v83], vmulq_n_f32(vsubq_f32(v91[v83 + 1], v91[v83]), v87.f32[0])), v92), v87, 1));
            v94 = (v85 + 16 * v86.i32[1]);
            v95 = vaddq_f32(*v94, vmulq_n_f32(vsubq_f32(v94[1], *v94), v90.f32[0]));
            v96 = vaddq_f32(v95, vmulq_lane_f32(vsubq_f32(vaddq_f32(v94[v83], vmulq_n_f32(vsubq_f32(v94[v83 + 1], v94[v83]), v90.f32[0])), v95), v90, 1));
          }

          else
          {
            v97 = vaddq_f32(v84, v13);
            v98 = vcvtq_s32_f32(v97);
            v99 = vaddq_f32(vsubq_f32(v82, v9), v13);
            v100 = vcvtq_s32_f32(v99);
            *v97.f32 = vadd_s32(*v98.i8, *&vcgtq_f32(vcvtq_f32_s32(v98), v97));
            *v99.f32 = vadd_s32(*v100.i8, *&vcgtq_f32(vcvtq_f32_s32(v100), v99));
            *v99.f32 = vmla_s32(vzip1_s32(*v97.f32, *v99.f32), vzip2_s32(*v97.f32, *v99.f32), vdup_n_s32(v83));
            v101 = v99.i32[1];
            v93 = *(v85 + 16 * v99.i32[0]);
            v96 = *(v85 + 16 * v101);
          }

          v102 = (v11 + 16 * v15);
          *v102 = v93;
          v102[1] = v96;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v103 = *(this + 51);
        v104 = *(v103 + 16);
        v105 = vsubq_f32(v17, *v103);
        v106 = vmulq_f32(v105, v105);
        v107 = vaddq_f32(v106, vrev64q_s32(v106));
        v108 = vminq_f32(vrsqrteq_f32(v107), v104);
        v109 = vminq_f32(vmulq_f32(v108, vrsqrtsq_f32(vmulq_f32(v108, v107), v108)), v104);
        v110 = *(v103 + 32);
        v111 = vsubq_f32(v110, vminq_f32(vmulq_laneq_f32(vmulq_f32(v107, vminq_f32(vmulq_f32(v109, vrsqrtsq_f32(vmulq_f32(v107, v109), v109)), v104)), *v103, 2), v110));
        v112 = *(v103 + 64);
        v113 = *(v103 + 80);
        v114 = vdupq_lane_s32(*v111.f32, 0);
        v115 = vmulq_n_f32(vextq_s8(*v103, *v103, 8uLL), vmulq_f32(v111, vmulq_f32(v111, vaddq_f32(*(v103 + 48), vmulq_f32(v111, v112)))).f32[0]);
        v116 = *(v103 + 96);
        v117 = *(v103 + 112);
        v118 = vaddq_f32(v113, vmulq_f32(v116, vrev64q_s32(v115)));
        v119 = vcvtq_f32_s32(vcvtq_s32_f32(v118));
        v120 = vaddq_f32(v113, vabdq_f32(vsubq_f32(v118, vsubq_f32(v119, vandq_s8(v110, vcgtq_f32(v119, v118)))), v117));
        v121 = vmulq_f32(v120, v120);
        v122 = *(v103 + 128);
        v123 = *(v103 + 144);
        v124 = *(v103 + 160);
        v125 = *(v103 + 176);
        v126 = vmulq_f32(v120, vaddq_f32(v125, vmulq_f32(v121, vaddq_f32(v124, vmulq_f32(v121, vaddq_f32(v122, vmulq_f32(v123, v121)))))));
        v127 = *(v103 + 192);
        v128 = vbslq_s8(v127, v126, v115);
        v129 = vmulq_f32(v125, vextq_s8(v128, v128, 0xCuLL));
        v130 = vcvtq_f32_s32(vcvtq_s32_f32(v129));
        v131 = vsubq_f32(vabdq_f32(vsubq_f32(v129, vsubq_f32(v130, vandq_s8(v124, vcgtq_f32(v130, v129)))), v123), v122);
        v132 = vmulq_f32(v131, v131);
        v128.i64[1] = vmulq_f32(v131, vaddq_f32(v112, vmulq_f32(v132, vaddq_f32(v113, vmulq_f32(v132, vaddq_f32(v117, vmulq_f32(v116, v132))))))).i64[1];
        v133 = vbslq_s8(*(v103 + 208), v128, vextq_s8(v128, v128, 4uLL));
        v134 = vmulq_f32(vdupq_lane_s64(v105.i64[0], 0), vbslq_s8(v127, vnegq_f32(v133), v133));
        v135 = *(v103 + 224);
        v136 = *(v103 + 240);
        *v116.f32 = vqtbl1_s8(v134, *v135.i8);
        *v128.f32 = vqtbl1_s8(v134, *v136.i8);
        *&v116.u32[2] = vqtbl1_s8(v134, *&vextq_s8(v135, v135, 8uLL));
        *&v128.u32[2] = vqtbl1_s8(v134, *&vextq_s8(v136, v136, 8uLL));
        v137 = vbslq_s8(vcgtq_f32(v114, *(v103 + 256)), vaddq_f32(*v103, vaddq_f32(v116, v128)), v17);
        v138 = *(a2 + 22);
        v139 = vsubq_f32(v137, v9);
        v140 = *(a2 + 10);
        if (v5)
        {
          v141 = vaddq_s32(vcvtq_s32_f32(v139), vcltzq_f32(v139));
          v142 = vsubq_f32(v139, vcvtq_f32_s32(v141)).u64[0];
          v143 = (v140 + 16 * (v141.i32[0] + v141.i32[1] * v138));
          v144 = vaddq_f32(*v143, vmulq_n_f32(vsubq_f32(v143[1], *v143), v142.f32[0]));
          v145 = vaddq_f32(v144, vmulq_lane_f32(vsubq_f32(vaddq_f32(v143[v138], vmulq_n_f32(vsubq_f32(v143[v138 + 1], v143[v138]), v142.f32[0])), v144), v142, 1));
        }

        else
        {
          v146 = vaddq_f32(v139, v13);
          v147 = vcvtq_s32_f32(v146);
          v146.i64[0] = vaddq_s32(v147, vcgtq_f32(vcvtq_f32_s32(v147), v146)).u64[0];
          v145 = *(v140 + 16 * (v146.i32[0] + v146.i32[1] * v138));
        }

        *(v11 + 16 * v15) = v145;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgciOSTwirl::GetDOD(HgciOSTwirl *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgciOSTwirl::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgciOSTwirl::HgciOSTwirl(HgciOSTwirl *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EC078;
  operator new();
}

void HgciOSTwirl::~HgciOSTwirl(HGNode *this)
{
  *this = &unk_2871EC078;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40881B329ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgciOSTwirl::~HgciOSTwirl(this);

  HGObject::operator delete(v1);
}

uint64_t HgciOSTwirl::SetParameter(HgciOSTwirl *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgciOSTwirl::GetParameter(HgciOSTwirl *this, int a2, float *a3)
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

const char *HgciOSStretch::GetProgram(HgciOSStretch *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000460\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, -3.000000000, 1.000000000, 0.000000000);\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    s0.xy = clamp(fabs(s0.xy)*hg_Params[1].xx, 0.00000f, 1.00000f);\n    s0.zw = float2(c0.zz) - s0.xy;\n    s1.xy = s0.zw*float2(c0.xx) + float2(c0.yy);\n    s0.xy = frag._texCoord0.xy - hg_Params[0].yy;\n    s0.xy = s0.xy*hg_Params[1].zz;\n    s1.xy = s1.xy*s0.zw;\n    s0.xy = sin(s0.xy);\n    s0.xy = s0.xy*hg_Params[1].yy;\n    s0.zw = s1.xy*s0.zw;\n    s0.xy = s0.zw*s0.xy + frag._texCoord0.xy;\n    s0.xy = s0.xy + hg_Params[2].xy;\n    s0.xy = s0.xy*hg_Params[2].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=7bcad507:16c082ed:16ecd8e9:3ba9bce2\n//SIG=00400000:00000000:00000000:00000001:0001:0003:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000442\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, -3.000000000, 1.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    r0.xy = clamp(fabs(r0.xy)*hg_Params[1].xx, 0.00000f, 1.00000f);\n    r0.zw = c0.zz - r0.xy;\n    r1.xy = r0.zw*c0.xx + c0.yy;\n    r0.xy = frag._texCoord0.xy - hg_Params[0].yy;\n    r0.xy = r0.xy*hg_Params[1].zz;\n    r1.xy = r1.xy*r0.zw;\n    r0.xy = sin(r0.xy);\n    r0.xy = r0.xy*hg_Params[1].yy;\n    r0.zw = r1.xy*r0.zw;\n    r0.xy = r0.zw*r0.xy + frag._texCoord0.xy;\n    r0.xy = r0.xy + hg_Params[2].xy;\n    r0.xy = r0.xy*hg_Params[2].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=2b0e1c67:f965a4ae:f0df031e:1fd70b55\n//SIG=00000000:00000000:00000000:00000000:0001:0003:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000471\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, -3.000000000, 1.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.xy = hg_TexCoord0.xy - hg_ProgramLocal0.xy;\n    r0.xy = clamp(abs(r0.xy)*hg_ProgramLocal1.xx, vec2(0.00000), vec2(1.00000));\n    r0.zw = c0.zz - r0.xy;\n    r1.xy = r0.zw*c0.xx + c0.yy;\n    r0.xy = hg_TexCoord0.xy - hg_ProgramLocal0.yy;\n    r0.xy = r0.xy*hg_ProgramLocal1.zz;\n    r1.xy = r1.xy*r0.zw;\n    r0.xy = sin(r0.xy);\n    r0.xy = r0.xy*hg_ProgramLocal1.yy;\n    r0.zw = r1.xy*r0.zw;\n    r0.xy = r0.zw*r0.xy + hg_TexCoord0.xy;\n    r0.xy = r0.xy + hg_ProgramLocal2.xy;\n    r0.xy = r0.xy*hg_ProgramLocal2.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=f24858ac:8a889300:88c7d767:f92d5b43\n//SIG=00000000:00000000:00000000:00000000:0001:0003:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FABD7D4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FABD954(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FABD9A4()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FABD99CLL);
}

uint64_t HgciOSStretch::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 2, v5, v6, v7, v8);
  return 0;
}

uint64_t HgciOSStretch::Bind(HgciOSStretch *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgciOSStretch::RenderTile(float32x4_t **this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = ((*this)[19].i64[1])(this, v4);
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
          v19 = this[51];
          v20 = v19[1];
          v21 = v19[2];
          v22 = v19[3];
          v23 = vminq_f32(vmaxq_f32(vmulq_n_f32(vabdq_f32(v17, *v19), v20.f32[0]), v21), v22);
          v24 = vminq_f32(vmaxq_f32(vmulq_n_f32(vabdq_f32(v18, *v19), v20.f32[0]), v21), v22);
          v25 = vextq_s8(v24, v24, 8uLL);
          v26 = vsubq_f32(v22, vextq_s8(v23, v23, 8uLL));
          v27 = vsubq_f32(v22, v25);
          v28 = vdupq_laneq_s64(v26, 1);
          v29 = vdupq_laneq_s64(v27, 1);
          v30 = v19[4];
          v31 = v19[5];
          v32 = vaddq_f32(v30, vmulq_f32(v28, v31));
          v33 = vaddq_f32(v30, vmulq_f32(v31, v29));
          v34 = vdupq_lane_s32(*v19->f32, 1);
          v31.i64[0] = vmulq_laneq_f32(vsubq_f32(v17, v34), v20, 2).u64[0];
          v34.i64[0] = vmulq_laneq_f32(vsubq_f32(v18, v34), v20, 2).u64[0];
          v31.i64[1] = v26.i64[1];
          v34.i64[1] = v27.i64[1];
          v28.i64[0] = vmulq_f32(v28, v32).u64[0];
          v29.i64[0] = vmulq_f32(v29, v33).u64[0];
          v35 = v19[6];
          v36 = v19[7];
          v37 = vaddq_f32(v35, vmulq_f32(v31, v36));
          v38 = vaddq_f32(v35, vmulq_f32(v34, v36));
          v39 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
          v40 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
          v41 = vsubq_f32(v37, vsubq_f32(v39, vandq_s8(v22, vcgtq_f32(v39, v37))));
          v42 = vsubq_f32(v38, vsubq_f32(v40, vandq_s8(v22, vcgtq_f32(v40, v38))));
          v43 = v19[8];
          v44 = v19[9];
          v45 = vabdq_f32(v42, v43);
          v46 = vaddq_f32(v35, vabdq_f32(v41, v43));
          v47 = vaddq_f32(v35, v45);
          v48 = vmulq_f32(v46, v46);
          v49 = vmulq_f32(v47, v47);
          v50 = v19[10];
          v51 = v19[11];
          v52 = vaddq_f32(v44, vmulq_f32(v50, v48));
          v53 = vaddq_f32(v44, vmulq_f32(v50, v49));
          v54 = vaddq_f32(v51, vmulq_f32(v48, v52));
          v55 = vaddq_f32(v51, vmulq_f32(v49, v53));
          v56 = v19[12];
          v57 = vmulq_lane_f32(vmulq_f32(v46, vaddq_f32(v56, vmulq_f32(v48, v54))), *v20.f32, 1);
          v58 = vmulq_lane_f32(vmulq_f32(v47, vaddq_f32(v56, vmulq_f32(v49, v55))), *v20.f32, 1);
          v59 = vmulq_f32(v26, vdupq_lane_s64(v28.i64[0], 0));
          v60 = vextq_s8(v59, v57, 8uLL);
          v57.i64[1] = v59.i64[1];
          v61 = vmulq_f32(v27, vdupq_lane_s64(v29.i64[0], 0));
          v62 = vextq_s8(v61, v58, 8uLL);
          v58.i64[1] = v61.i64[1];
          v63 = vaddq_f32(v17, vmulq_f32(v60, v57));
          v64 = vaddq_f32(v18, vmulq_f32(v62, v58));
          v65 = *(a2 + 22);
          v66 = vsubq_f32(v63, v9);
          v67 = *(a2 + 10);
          if (v5)
          {
            v68 = vaddq_s32(vcvtq_s32_f32(v66), vcltzq_f32(v66));
            v69 = vsubq_f32(v66, vcvtq_f32_s32(v68)).u64[0];
            v70 = vsubq_f32(v64, v9);
            v71 = vaddq_s32(vcvtq_s32_f32(v70), vcltzq_f32(v70));
            v72 = vsubq_f32(v70, vcvtq_f32_s32(v71)).u64[0];
            *v68.i8 = vmla_s32(vzip1_s32(*v68.i8, *v71.i8), vzip2_s32(*v68.i8, *v71.i8), vdup_n_s32(v65));
            v73 = (v67 + 16 * v68.i32[0]);
            v74 = vaddq_f32(*v73, vmulq_n_f32(vsubq_f32(v73[1], *v73), v69.f32[0]));
            v75 = vaddq_f32(v74, vmulq_lane_f32(vsubq_f32(vaddq_f32(v73[v65], vmulq_n_f32(vsubq_f32(v73[v65 + 1], v73[v65]), v69.f32[0])), v74), v69, 1));
            v76 = (v67 + 16 * v68.i32[1]);
            v77 = vaddq_f32(*v76, vmulq_n_f32(vsubq_f32(v76[1], *v76), v72.f32[0]));
            v78 = vaddq_f32(v77, vmulq_lane_f32(vsubq_f32(vaddq_f32(v76[v65], vmulq_n_f32(vsubq_f32(v76[v65 + 1], v76[v65]), v72.f32[0])), v77), v72, 1));
          }

          else
          {
            v79 = vaddq_f32(v66, v13);
            v80 = vcvtq_s32_f32(v79);
            v81 = vaddq_f32(vsubq_f32(v64, v9), v13);
            v82 = vcvtq_s32_f32(v81);
            *v79.f32 = vadd_s32(*v80.i8, *&vcgtq_f32(vcvtq_f32_s32(v80), v79));
            *v81.f32 = vadd_s32(*v82.i8, *&vcgtq_f32(vcvtq_f32_s32(v82), v81));
            *v81.f32 = vmla_s32(vzip1_s32(*v79.f32, *v81.f32), vzip2_s32(*v79.f32, *v81.f32), vdup_n_s32(v65));
            v83 = v81.i32[1];
            v75 = *(v67 + 16 * v81.i32[0]);
            v78 = *(v67 + 16 * v83);
          }

          v84 = (v11 + 16 * v15);
          *v84 = v75;
          v84[1] = v78;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v85 = this[51];
        v86 = v85[1];
        v87 = v85[3];
        v88 = vminq_f32(vmaxq_f32(vmulq_n_f32(vabdq_f32(v17, *v85), v86.f32[0]), v85[2]), v87);
        v89 = vsubq_f32(v87, vextq_s8(v88, v88, 8uLL));
        v90 = vdupq_laneq_s64(v89, 1);
        v91.i64[0] = vmulq_laneq_f32(vsubq_f32(v17, vdupq_lane_s32(*v85->f32, 1)), v86, 2).u64[0];
        v91.i64[1] = v89.i64[1];
        v92 = v85[6];
        v93 = vaddq_f32(v92, vmulq_f32(v91, v85[7]));
        v94 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
        v95 = vaddq_f32(v92, vabdq_f32(vsubq_f32(v93, vsubq_f32(v94, vandq_s8(v87, vcgtq_f32(v94, v93)))), v85[8]));
        v96 = vmulq_f32(v95, v95);
        v97 = vmulq_lane_f32(vmulq_f32(v95, vaddq_f32(v85[12], vmulq_f32(v96, vaddq_f32(v85[11], vmulq_f32(v96, vaddq_f32(v85[9], vmulq_f32(v85[10], v96))))))), *v86.f32, 1);
        v98 = vmulq_f32(v89, vdupq_lane_s64(vmulq_f32(v90, vaddq_f32(v85[4], vmulq_f32(v85[5], v90))).i64[0], 0));
        v89.i64[0] = v97.i64[0];
        v89.i64[1] = v98.i64[1];
        v99 = *(a2 + 22);
        v100 = vsubq_f32(vaddq_f32(v17, vmulq_f32(vextq_s8(v98, v97, 8uLL), v89)), v9);
        v101 = *(a2 + 10);
        if (v5)
        {
          v102 = vaddq_s32(vcvtq_s32_f32(v100), vcltzq_f32(v100));
          v103 = vsubq_f32(v100, vcvtq_f32_s32(v102)).u64[0];
          v104 = (v101 + 16 * (v102.i32[0] + v102.i32[1] * v99));
          v105 = vaddq_f32(*v104, vmulq_n_f32(vsubq_f32(v104[1], *v104), v103.f32[0]));
          v106 = vaddq_f32(v105, vmulq_lane_f32(vsubq_f32(vaddq_f32(v104[v99], vmulq_n_f32(vsubq_f32(v104[v99 + 1], v104[v99]), v103.f32[0])), v105), v103, 1));
        }

        else
        {
          v107 = vaddq_f32(v100, v13);
          v108 = vcvtq_s32_f32(v107);
          v107.i64[0] = vaddq_s32(v108, vcgtq_f32(vcvtq_f32_s32(v108), v107)).u64[0];
          v106 = *(v101 + 16 * (v107.i32[0] + v107.i32[1] * v99));
        }

        *(v11 + 16 * v15) = v106;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgciOSStretch::GetDOD(HgciOSStretch *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgciOSStretch::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgciOSStretch::HgciOSStretch(HgciOSStretch *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EC2E0;
  operator new();
}

void HgciOSStretch::~HgciOSStretch(HGNode *this)
{
  *this = &unk_2871EC2E0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F93440CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgciOSStretch::~HgciOSStretch(this);

  HGObject::operator delete(v1);
}

uint64_t HgciOSStretch::SetParameter(HgciOSStretch *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgciOSStretch::GetParameter(HgciOSStretch *this, unsigned int a2, float *a3)
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

const char *HgciOSKaleidoscope::GetProgram(HgciOSKaleidoscope *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000b84\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.05747731403, -0.1212390736, -0.01348046958, 0.1956359297);\n    const half4 c1 = half4(0.9999956489, 1.570796371, -0.3329946101, 3.141592741);\n    const half4 c2 = half4(-0.1666666716, 0.008333333768, 0.5000000000, -0.0001984127011);\n    const half4 c3 = half4(2.480158764e-05, -0.001388888923, 2.755731884e-06, 0.04166666791);\n    const half4 c4 = half4(0.000000000, -1.000000000, 0.000000000, 0.000000000);\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    s0 = s0.xyxy*hg_Params[1];\n    s0.xz = s0.xz + s0.yw;\n    s0.yw = abs(s0.zx);\n    s1.x = fmax(s0.y, s0.w);\n    s1.y = 1.00000f / s1.x;\n    s1.x = fmin(s0.y, s0.w);\n    s1.x = s1.x*s1.y;\n    s1.y = s1.x*s1.x;\n    s1.z = s1.y*float(c0.z) + float(c0.x);\n    s1.z = s1.z*s1.y + float(c0.y);\n    s1.z = s1.z*s1.y + float(c0.w);\n    s1.z = s1.z*s1.y + float(c1.z);\n    s1.y = s1.z*s1.y + float(c1.x);\n    s1.x = s1.y*s1.x;\n    s1.y = -s1.x + float(c1.y);\n    s0.z = s0.w - s0.y;\n    s0.z = select(s1.x, s1.y, s0.z < 0.00000h);\n    s0.w = -s0.z + float(c1.w);\n    s0.z = select(s0.z, s0.w, s0.x < 0.00000h);\n    s0.z = s0.z*hg_Params[0].w + float(c2.z);\n    s0.z = floor(s0.z);\n    s1.y = s0.z*-hg_Params[0].z;\n    s1.z = abs(s1.y);\n    s0.w = float(c1.w) - s1.y;\n    s0.z = float(c1.y) - s1.y;\n    s0.z = select(s1.y, s0.w, s0.z < 0.00000h);\n    s1.x = -float(c1.w) - s0.z;\n    s0.w = s0.z + float(c1.y);\n    s0.z = select(s0.z, s1.x, s0.w < 0.00000h);\n    s0.w = s0.z*s0.z;\n    s1.x = s0.w*s0.z;\n    s0.w = s1.x*s0.z;\n    s0.w = s0.w*s0.z;\n    s1.x = s1.x*float(c2.x) + s0.z;\n    s1.x = s0.w*float(c2.y) + s1.x;\n    s0.w = s0.w*s0.z;\n    s0.w = s0.w*s0.z;\n    s1.x = s0.w*float(c2.w) + s1.x;\n    s0.w = s0.w*s0.z;\n    s0.z = s0.w*s0.z;\n    s0.z = s0.z*float(c3.z) + s1.x;\n    s1.w = -s1.z + float(c1.w);\n    s1.y = s1.z - float(c1.y);\n    s1.z = select(s1.z, s1.w, -s1.y < 0.00000h);\n    s1.z = s1.z*s1.z;\n    s1.w = s1.z*float(c3.x) + float(c3.y);\n    s1.w = s1.w*s1.z + float(c3.w);\n    s0.w = s1.w*s1.z + -float(c2.z);\n    s1.y = select(-float(c4.y), float(c4.y), -s1.y < 0.00000h);\n    s0.w = s0.w*s1.z + -float(c4.y);\n    s0.w = s0.w*s1.y;\n    s1.x = s0.y*s0.w;\n    s0.y = s0.z*s0.y;\n    s0.z = s0.x*s0.z + s1.x;\n    s0.x = s0.x*s0.w + -s0.y;\n    s0.y = abs(s0.z);\n    s0 = s0.xyxy*hg_Params[2];\n    s0.zw = s0.xz + s0.yw;\n    s0.xy = s0.zw + hg_Params[0].xy;\n    s0.xy = s0.xy + hg_Params[3].xy;\n    s0.xy = s0.xy*hg_Params[3].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=3bc7d522:95d24666:e1b451ca:1644193f\n//SIG=00400000:00000000:00000000:00000001:0005:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000ad0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.05747731403, -0.1212390736, -0.01348046958, 0.1956359297);\n    const float4 c1 = float4(0.9999956489, 1.570796371, -0.3329946101, 3.141592741);\n    const float4 c2 = float4(-0.1666666716, 0.008333333768, 0.5000000000, -0.0001984127011);\n    const float4 c3 = float4(2.480158764e-05, -0.001388888923, 2.755731884e-06, 0.04166666791);\n    const float4 c4 = float4(0.000000000, -1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    r0 = r0.xyxy*hg_Params[1];\n    r0.xz = r0.xz + r0.yw;\n    r0.yw = abs(r0.zx);\n    r1.x = fmax(r0.y, r0.w);\n    r1.y = 1.00000f / r1.x;\n    r1.x = fmin(r0.y, r0.w);\n    r1.x = r1.x*r1.y;\n    r1.y = r1.x*r1.x;\n    r1.z = r1.y*c0.z + c0.x;\n    r1.z = r1.z*r1.y + c0.y;\n    r1.z = r1.z*r1.y + c0.w;\n    r1.z = r1.z*r1.y + c1.z;\n    r1.y = r1.z*r1.y + c1.x;\n    r1.x = r1.y*r1.x;\n    r1.y = -r1.x + c1.y;\n    r0.z = r0.w - r0.y;\n    r0.z = select(r1.x, r1.y, r0.z < 0.00000f);\n    r0.w = -r0.z + c1.w;\n    r0.z = select(r0.z, r0.w, r0.x < 0.00000f);\n    r0.z = r0.z*hg_Params[0].w + c2.z;\n    r0.z = floor(r0.z);\n    r1.y = r0.z*-hg_Params[0].z;\n    r1.z = abs(r1.y);\n    r0.w = c1.w - r1.y;\n    r0.z = c1.y - r1.y;\n    r0.z = select(r1.y, r0.w, r0.z < 0.00000f);\n    r1.x = -c1.w - r0.z;\n    r0.w = r0.z + c1.y;\n    r0.z = select(r0.z, r1.x, r0.w < 0.00000f);\n    r0.w = r0.z*r0.z;\n    r1.x = r0.w*r0.z;\n    r0.w = r1.x*r0.z;\n    r0.w = r0.w*r0.z;\n    r1.x = r1.x*c2.x + r0.z;\n    r1.x = r0.w*c2.y + r1.x;\n    r0.w = r0.w*r0.z;\n    r0.w = r0.w*r0.z;\n    r1.x = r0.w*c2.w + r1.x;\n    r0.w = r0.w*r0.z;\n    r0.z = r0.w*r0.z;\n    r0.z = r0.z*c3.z + r1.x;\n    r1.w = -r1.z + c1.w;\n    r1.y = r1.z - c1.y;\n    r1.z = select(r1.z, r1.w, -r1.y < 0.00000f);\n    r1.z = r1.z*r1.z;\n    r1.w = r1.z*c3.x + c3.y;\n    r1.w = r1.w*r1.z + c3.w;\n    r0.w = r1.w*r1.z + -c2.z;\n    r1.y = select(-c4.y, c4.y, -r1.y < 0.00000f);\n    r0.w = r0.w*r1.z + -c4.y;\n    r0.w = r0.w*r1.y;\n    r1.x = r0.y*r0.w;\n    r0.y = r0.z*r0.y;\n    r0.z = r0.x*r0.z + r1.x;\n    r0.x = r0.x*r0.w + -r0.y;\n    r0.y = abs(r0.z);\n    r0 = r0.xyxy*hg_Params[2];\n    r0.zw = r0.xz + r0.yw;\n    r0.xy = r0.zw + hg_Params[0].xy;\n    r0.xy = r0.xy + hg_Params[3].xy;\n    r0.xy = r0.xy*hg_Params[3].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=f49665f7:2c904a34:d70304c6:67c30ed8\n//SIG=00000000:00000000:00000000:00000000:0005:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000b00\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.05747731403, -0.1212390736, -0.01348046958, 0.1956359297);\n    const highp vec4 c1 = vec4(0.9999956489, 1.570796371, -0.3329946101, 3.141592741);\n    const highp vec4 c2 = vec4(-0.1666666716, 0.008333333768, 0.5000000000, -0.0001984127011);\n    const highp vec4 c3 = vec4(2.480158764e-05, -0.001388888923, 2.755731884e-06, 0.04166666791);\n    const highp vec4 c4 = vec4(0.000000000, -1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.xy = hg_TexCoord0.xy - hg_ProgramLocal0.xy;\n    r0 = r0.xyxy*hg_ProgramLocal1;\n    r0.xz = r0.xz + r0.yw;\n    r0.yw = abs(r0.zx);\n    r1.x = max(r0.y, r0.w);\n    r1.y = 1.00000 / r1.x;\n    r1.x = min(r0.y, r0.w);\n    r1.x = r1.x*r1.y;\n    r1.y = r1.x*r1.x;\n    r1.z = r1.y*c0.z + c0.x;\n    r1.z = r1.z*r1.y + c0.y;\n    r1.z = r1.z*r1.y + c0.w;\n    r1.z = r1.z*r1.y + c1.z;\n    r1.y = r1.z*r1.y + c1.x;\n    r1.x = r1.y*r1.x;\n    r1.y = -r1.x + c1.y;\n    r0.z = r0.w - r0.y;\n    r0.z = r0.z < 0.00000 ? r1.y : r1.x;\n    r0.w = -r0.z + c1.w;\n    r0.z = r0.x < 0.00000 ? r0.w : r0.z;\n    r0.z = r0.z*hg_ProgramLocal0.w + c2.z;\n    r0.z = floor(r0.z);\n    r1.y = r0.z*-hg_ProgramLocal0.z;\n    r1.z = abs(r1.y);\n    r0.w = c1.w - r1.y;\n    r0.z = c1.y - r1.y;\n    r0.z = r0.z < 0.00000 ? r0.w : r1.y;\n    r1.x = -c1.w - r0.z;\n    r0.w = r0.z + c1.y;\n    r0.z = r0.w < 0.00000 ? r1.x : r0.z;\n    r0.w = r0.z*r0.z;\n    r1.x = r0.w*r0.z;\n    r0.w = r1.x*r0.z;\n    r0.w = r0.w*r0.z;\n    r1.x = r1.x*c2.x + r0.z;\n    r1.x = r0.w*c2.y + r1.x;\n    r0.w = r0.w*r0.z;\n    r0.w = r0.w*r0.z;\n    r1.x = r0.w*c2.w + r1.x;\n    r0.w = r0.w*r0.z;\n    r0.z = r0.w*r0.z;\n    r0.z = r0.z*c3.z + r1.x;\n    r1.w = -r1.z + c1.w;\n    r1.y = r1.z - c1.y;\n    r1.z = -r1.y < 0.00000 ? r1.w : r1.z;\n    r1.z = r1.z*r1.z;\n    r1.w = r1.z*c3.x + c3.y;\n    r1.w = r1.w*r1.z + c3.w;\n    r0.w = r1.w*r1.z + -c2.z;\n    r1.y = -r1.y < 0.00000 ? c4.y : -c4.y;\n    r0.w = r0.w*r1.z + -c4.y;\n    r0.w = r0.w*r1.y;\n    r1.x = r0.y*r0.w;\n    r0.y = r0.z*r0.y;\n    r0.z = r0.x*r0.z + r1.x;\n    r0.x = r0.x*r0.w + -r0.y;\n    r0.y = abs(r0.z);\n    r0 = r0.xyxy*hg_ProgramLocal2;\n    r0.zw = r0.xz + r0.yw;\n    r0.xy = r0.zw + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy + hg_ProgramLocal3.xy;\n    r0.xy = r0.xy*hg_ProgramLocal3.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=d7727e5a:010688ed:757888cd:06bfead3\n//SIG=00000000:00000000:00000000:00000000:0005:0004:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FABE564(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FABE6E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FABE734()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FABE72CLL);
}

uint64_t HgciOSKaleidoscope::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 3, v5, v6, v7, v8);
  return 0;
}

uint64_t HgciOSKaleidoscope::Bind(HgciOSKaleidoscope *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgciOSKaleidoscope::RenderTile(HgciOSKaleidoscope *this, HGTile *a2)
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
          v21 = vmulq_f32(v20, vdupq_lane_s64(vsubq_f32(v17, *v19).i64[0], 0));
          v22 = vmulq_f32(v20, vdupq_lane_s64(vsubq_f32(v18, *v19).i64[0], 0));
          v23 = vaddq_f32(v21, vrev64q_s32(v21));
          v24 = vaddq_f32(v22, vrev64q_s32(v22));
          v26 = *(v19 + 32);
          v25 = *(v19 + 48);
          *v27.i8 = vqtbl1_s8(v23, *v25.i8);
          v28 = vextq_s8(v25, v25, 8uLL).u64[0];
          v27.u64[1] = vqtbl1_s8(v23, v28);
          *v23.i8 = vqtbl1_s8(v24, *v25.i8);
          v23.u64[1] = vqtbl1_s8(v24, v28);
          v29 = *(v19 + 64);
          v30 = *(v19 + 80);
          v31 = vandq_s8(v29, v27);
          v32 = vandq_s8(v29, v23);
          v33 = vrev64q_s32(v31);
          v34 = vrev64q_s32(v32);
          v35 = vextq_s8(v31, v31, 0xCuLL);
          v36 = vextq_s8(v32, v32, 0xCuLL);
          v37 = vrev64q_s32(vmaxq_f32(v33, v35));
          v38 = vrev64q_s32(vmaxq_f32(v34, v36));
          v39 = *(v19 + 96);
          v40 = *(v19 + 112);
          v41 = vminq_f32(vmaxq_f32(vrecpeq_f32(v37), v30), v39);
          v42 = vminq_f32(vmaxq_f32(vrecpeq_f32(v38), v30), v39);
          v43 = vminq_f32(vmaxq_f32(vmulq_f32(v41, vrecpsq_f32(v37, v41)), v30), v39);
          v44 = vminq_f32(vmaxq_f32(vmulq_f32(v42, vrecpsq_f32(v38, v42)), v30), v39);
          v45 = vbslq_s8(v40, vminq_f32(v33, v35), vmulq_f32(v43, vrecpsq_f32(v37, v43)));
          v46 = vbslq_s8(v40, vminq_f32(v34, v36), vmulq_f32(v44, vrecpsq_f32(v38, v44)));
          v47 = vmulq_lane_f32(v45, *v45.f32, 1);
          v48 = vmulq_lane_f32(v46, *v46.f32, 1);
          v49 = vbslq_s8(v40, v47, vmulq_n_f32(vrev64q_s32(v47), *v47.i32));
          v50 = vbslq_s8(v40, v48, vmulq_n_f32(vrev64q_s32(v48), *v48.i32));
          v51 = *(v19 + 128);
          v52 = *(v19 + 144);
          v53 = vaddq_f32(v52, vmulq_lane_f32(vaddq_f32(v30, vmulq_f32(v51, vextq_s8(v9, v50, 0xCuLL))), *v50.f32, 1));
          v54 = vmulq_lane_f32(vaddq_f32(v52, vmulq_lane_f32(vaddq_f32(v30, vmulq_f32(v51, vextq_s8(v9, v49, 0xCuLL))), *v49.f32, 1)), *v49.f32, 1);
          v55 = *(v19 + 160);
          v56 = *(v19 + 176);
          v57 = vaddq_f32(v56, vmulq_lane_f32(vaddq_f32(v55, v54), *v49.f32, 1));
          v58 = vaddq_f32(v56, vmulq_lane_f32(vaddq_f32(v55, vmulq_lane_f32(v53, *v50.f32, 1)), *v50.f32, 1));
          v49.i64[1] = v57.i64[1];
          v50.i64[1] = v58.i64[1];
          v59 = vbslq_s8(v40, v49, vaddq_f32(v56, vmulq_laneq_f32(v49, v57, 2)));
          v60 = vbslq_s8(v40, v50, vaddq_f32(v56, vmulq_laneq_f32(v50, v58, 2)));
          v61 = vmulq_lane_f32(v59, *v59.f32, 1);
          v62 = vmulq_lane_f32(v60, *v60.f32, 1);
          v63 = vbslq_s8(v40, v61, vsubq_f32(v55, vrev64q_s32(v61)));
          v64 = vbslq_s8(v40, v62, vsubq_f32(v55, vrev64q_s32(v62)));
          v65 = vsubq_f32(v33, v35);
          v66 = vsubq_f32(v34, v36);
          v35.i64[0] = v31.i64[0];
          v35.i64[1] = v65.i64[1];
          v36.i64[0] = v32.i64[0];
          v36.i64[1] = v66.i64[1];
          v68 = *(v19 + 192);
          v67 = *(v19 + 208);
          v69 = vbslq_s8(vcgtq_f32(v68, v35), vextq_s8(v9, v63, 0xCuLL), vdupq_lane_s64(v63.i64[0], 0));
          v40.i64[0] = v31.i64[0];
          v40.i64[1] = vdupq_laneq_s64(v69, 1).u64[0];
          v70 = vbslq_s8(vcgtq_f32(v68, v36), vextq_s8(v9, v64, 0xCuLL), vdupq_lane_s64(v64.i64[0], 0));
          v63.i64[0] = v32.i64[0];
          v63.i64[1] = vdupq_laneq_s64(v70, 1).u64[0];
          v31.i64[1] = v69.i64[1];
          v71 = vbslq_s8(v67, vsubq_f32(v68, vrev64q_s32(v40)), v31);
          v32.i64[1] = v70.i64[1];
          v72 = vbslq_s8(v67, vsubq_f32(v68, vrev64q_s32(v63)), v32);
          v74 = *(v19 + 224);
          v73 = *(v19 + 240);
          v64.i64[0] = v71.i64[0];
          v64.i64[1] = vaddq_f32(v74, vmulq_laneq_f32(vbslq_s8(vcgtq_f32(v68, vextq_s8(*&v71, *&v71, 8uLL)), vrev64q_s32(v71), *&v71), *v19, 3)).i64[1];
          v70.i64[0] = v72.i64[0];
          v70.i64[1] = vaddq_f32(v74, vmulq_laneq_f32(vbslq_s8(vcgtq_f32(v68, vextq_s8(*&v72, *&v72, 8uLL)), vrev64q_s32(v72), *&v72), *v19, 3)).i64[1];
          v75 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
          v76 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
          v77 = vsubq_f32(v75, vbslq_s8(vcgtq_f32(v75, v64), v73, 0));
          v78 = vnegq_f32(vextq_s8(*v19, *v19, 4uLL));
          v77.i64[0] = vmulq_laneq_f32(v78, v77, 2).u64[0];
          v78.i64[0] = vmulq_laneq_f32(v78, vsubq_f32(v76, vbslq_s8(vcgtq_f32(v76, v70), v73, 0)), 2).u64[0];
          v80 = *(v19 + 256);
          v79 = *(v19 + 272);
          v81 = vandq_s8(vdupq_lane_s32(*v77.f32, 1), v80);
          v82 = vandq_s8(vdupq_lane_s32(*v78.f32, 1), v80);
          v71.i64[1] = vsubq_f32(v73, vdupq_lane_s64(*&v81, 0)).i64[1];
          v72.i64[1] = vsubq_f32(v73, vdupq_lane_s64(*&v82, 0)).i64[1];
          v83 = vextq_s8(v81, v81, 0xCuLL);
          v84 = vextq_s8(v82, v82, 0xCuLL);
          v85 = *(v19 + 288);
          v86 = *(v19 + 304);
          v87 = vbslq_s8(v85, vsubq_f32(v79, v83), v71);
          v88 = vbslq_s8(v85, vsubq_f32(v79, v84), v72);
          v89 = vbslq_s8(vcgtq_f32(v68, v87), vrev64q_s32(v87), v83);
          v90.i64[0] = v87.i64[0];
          v90.i64[1] = v89.i64[1];
          v91 = vbslq_s8(vcgtq_f32(v68, v88), vrev64q_s32(v88), v84);
          v92.i64[0] = v88.i64[0];
          v92.i64[1] = v91.i64[1];
          v87.i64[1] = vdupq_laneq_s64(v89, 1).u64[0];
          v88.i64[1] = vdupq_laneq_s64(v91, 1).u64[0];
          v93 = vbslq_s8(v67, vsubq_f32(vrev64q_s32(v87), v86), v90);
          v94 = vbslq_s8(v67, vsubq_f32(vrev64q_s32(v88), v86), v92);
          v95 = vbslq_s8(vcgtq_f32(v68, vrev64q_s32(v93)), vsubq_f32(v86, v90), v93);
          v96.i64[0] = v93.i64[0];
          v96.i64[1] = vdupq_laneq_s64(v95, 1).u64[0];
          v97 = vbslq_s8(vcgtq_f32(v68, vrev64q_s32(v94)), vsubq_f32(v86, v92), v94);
          v90.i64[0] = v94.i64[0];
          v90.i64[1] = vdupq_laneq_s64(v97, 1).u64[0];
          v93.i64[1] = v95.i64[1];
          v98 = vbslq_s8(v67, vmulq_laneq_f32(vrev64q_s32(v96), v95, 2), v93);
          v94.i64[1] = v97.i64[1];
          v99 = vbslq_s8(v67, vmulq_laneq_f32(vrev64q_s32(v90), v97, 2), v94);
          v100 = vmulq_laneq_f32(vdupq_laneq_s64(v98, 1), v98, 3);
          v101 = vmulq_laneq_f32(vdupq_laneq_s64(v99, 1), v99, 3);
          v102 = vbslq_s8(v67, vmulq_n_f32(vrev64q_s32(v98), v100.f32[0]), v93);
          v103 = vbslq_s8(v67, vmulq_n_f32(vrev64q_s32(v99), v101.f32[0]), v94);
          v104 = vbslq_s8(v67, vmulq_laneq_f32(v102, v102, 2), v93);
          v105 = vbslq_s8(v67, vmulq_laneq_f32(v103, v103, 2), v94);
          v106 = *(v19 + 320);
          v107 = *(v19 + 336);
          v108 = vaddq_f32(vmulq_laneq_f32(v106, v104, 3), vaddq_f32(vmulq_laneq_f32(v100, v106, 2), vdupq_laneq_s64(v104, 1)));
          v109 = vaddq_f32(vmulq_laneq_f32(v106, v105, 3), vaddq_f32(vmulq_laneq_f32(v101, v106, 2), vdupq_laneq_s64(v105, 1)));
          v110 = vbslq_s8(v67, vmulq_laneq_f32(v104, v104, 2), v93);
          v111 = vbslq_s8(v67, vmulq_laneq_f32(v105, v105, 2), v94);
          v112 = vbslq_s8(v67, vmulq_laneq_f32(v110, v110, 2), v93);
          v113 = vbslq_s8(v67, vmulq_laneq_f32(v111, v111, 2), v94);
          v108.i64[0] = vaddq_f32(v108, vmulq_laneq_f32(v86, v112, 3)).u64[0];
          v114.i64[0] = v108.i64[0];
          v114.i64[1] = v81.i64[1];
          v109.i64[0] = vaddq_f32(v109, vmulq_laneq_f32(v86, v113, 3)).u64[0];
          v115 = vbslq_s8(v67, vmulq_laneq_f32(v112, v112, 2), v93);
          v116 = vbslq_s8(v67, vmulq_laneq_f32(v113, v113, 2), v94);
          v117 = vaddq_f32(vdupq_lane_s64(v108.i64[0], 0), vmulq_laneq_f32(vmulq_laneq_f32(v115, v115, 3), v106, 3));
          v118 = vaddq_f32(vdupq_lane_s64(v109.i64[0], 0), vmulq_laneq_f32(vmulq_laneq_f32(v116, v116, 3), v106, 3));
          v119.i64[0] = v109.i64[0];
          v119.i64[1] = v82.i64[1];
          v108.i64[1] = vdupq_laneq_s64(v81, 1).u64[0];
          v109.i64[1] = vdupq_laneq_s64(v82, 1).u64[0];
          v120 = vbslq_s8(v85, v114, vsubq_f32(v79, vrev64q_s32(v108)));
          v121 = vbslq_s8(v85, v119, vsubq_f32(v79, vrev64q_s32(v109)));
          v108.i64[0] = vsubq_f32(vextq_s8(v120, v9, 4uLL), v106).u64[0];
          v109.i64[0] = vsubq_f32(vextq_s8(v121, v9, 4uLL), v106).u64[0];
          v119.i64[0] = vextq_s8(v120, v120, 8uLL).u64[0];
          v114.i64[0] = vextq_s8(v121, v121, 8uLL).u64[0];
          *v106.f32 = vext_s8(*v108.f32, *v119.i8, 4uLL);
          *v119.i8 = vext_s8(*v119.i8, *v108.f32, 4uLL);
          v119.i64[1] = v106.i64[0];
          *v106.f32 = vext_s8(*v109.f32, *v114.i8, 4uLL);
          *v114.i8 = vext_s8(*v114.i8, *v109.f32, 4uLL);
          v114.i64[1] = v106.i64[0];
          v122 = vcgtq_f32(v119, v68);
          v123 = vcgtq_f32(v114, v68);
          v114.i64[0] = v108.i64[0];
          v114.i64[1] = vbslq_s8(v122, vrev64q_s32(v120), *&v120).i64[1];
          v124 = vbslq_s8(v123, vrev64q_s32(v121), v121);
          v121.i64[0] = v109.i64[0];
          v121.i64[1] = v124.i64[1];
          v125 = vmulq_f32(v114, v114);
          v126 = vmulq_f32(v121, v121);
          v120.i64[0] = v108.i64[0];
          v120.i64[1] = v125.i64[1];
          v122.i64[0] = v109.i64[0];
          v122.i64[1] = v126.i64[1];
          v108.i64[1] = vdupq_laneq_s64(v125, 1).u64[0];
          v109.i64[1] = vdupq_laneq_s64(v126, 1).u64[0];
          v127 = vbslq_s8(v67, vaddq_f32(v74, vmulq_f32(v56, vrev64q_s32(v108))), v120);
          v128 = vbslq_s8(v67, vaddq_f32(v74, vmulq_f32(v56, vrev64q_s32(v109))), v122);
          v129 = vaddq_f32(v55, vmulq_laneq_f32(v127, v127, 2));
          v130 = vaddq_f32(v55, vmulq_laneq_f32(v128, v128, 2));
          v131 = vbslq_s8(v67, v129, v120);
          v132 = vbslq_s8(v67, v130, v122);
          v115.i64[1] = v117.i64[1];
          v116.i64[1] = v118.i64[1];
          v133 = vcgtq_f32(v131, v73);
          v134 = vaddq_f32(v51, vmulq_laneq_f32(vbslq_s8(v67, vaddq_f32(v52, vmulq_laneq_f32(v131, v131, 2)), v115), v131, 2));
          v135 = vaddq_f32(v51, vmulq_laneq_f32(vbslq_s8(v67, vaddq_f32(v52, vmulq_laneq_f32(v132, v132, 2)), v116), v132, 2));
          v136 = vbslq_s8(v67, vmulq_lane_f32(vbslq_s8(v67, v134, v115), *&vbslq_s8(v133, v79, v86), 1), v115);
          v137 = vbslq_s8(v67, vmulq_lane_f32(vbslq_s8(v67, v135, v116), *&vbslq_s8(vcgtq_f32(v132, v73), v79, v86), 1), v116);
          v138 = vbslq_s8(v107, vmulq_laneq_f32(v136, v136, 2), v136);
          v139 = vbslq_s8(v107, vmulq_laneq_f32(v137, v137, 2), v137);
          v140 = vbslq_s8(v85, vaddq_f32(vmulq_lane_f32(vextq_s8(v136, v136, 4uLL), *v136.f32, 1), vmulq_n_f32(v138, v138.f32[0])), v138);
          v141 = vbslq_s8(v85, vaddq_f32(vmulq_lane_f32(vextq_s8(v137, v137, 4uLL), *v137.f32, 1), vmulq_n_f32(v139, v139.f32[0])), v139);
          *v140.f32 = vzip1_s32(vsub_f32(vmul_laneq_f32(*v140.f32, v140, 3), vdup_lane_s32(*v140.f32, 1)), *&vextq_s8(v140, v140, 8uLL));
          *v141.f32 = vzip1_s32(vsub_f32(vmul_laneq_f32(*v141.f32, v141, 3), vdup_lane_s32(*v141.f32, 1)), *&vextq_s8(v141, v141, 8uLL));
          v142 = *(v19 + 352);
          v143 = *(v19 + 368);
          v144 = vmulq_f32(v26, vdupq_lane_s64(vandq_s8(v142, v140).i64[0], 0));
          v145 = vmulq_f32(v26, vdupq_lane_s64(vandq_s8(v142, v141).i64[0], 0));
          *v142.i8 = vqtbl1_s8(v144, *v143.i8);
          v26.i64[0] = vextq_s8(v143, v143, 8uLL).u64[0];
          *v67.f32 = vqtbl1_s8(v144, *v26.f32);
          *v143.i8 = vqtbl1_s8(v145, *v143.i8);
          *v26.f32 = vqtbl1_s8(v145, *v26.f32);
          v146 = *(v19 + 384);
          *v129.i8 = vqtbl1_s8(v144, *v146.i8);
          v85.i64[0] = vextq_s8(v146, v146, 8uLL).u64[0];
          *v144.f32 = vqtbl1_s8(v144, *v85.i8);
          *v146.i8 = vqtbl1_s8(v145, *v146.i8);
          v67.i64[1] = v142.i64[0];
          v144.i64[1] = v129.i64[0];
          *v145.f32 = vqtbl1_s8(v145, *v85.i8);
          v26.i64[1] = v143.i64[0];
          v145.i64[1] = v146.i64[0];
          v147 = vaddq_f32(*v19, vaddq_f32(v26, v145));
          v148 = *(a2 + 22);
          v149 = vsubq_f32(vaddq_f32(*v19, vaddq_f32(v67, v144)), v9);
          v150 = *(a2 + 10);
          if (v5)
          {
            v151 = vaddq_s32(vcvtq_s32_f32(v149), vcltzq_f32(v149));
            v152 = vsubq_f32(v149, vcvtq_f32_s32(v151)).u64[0];
            v153 = vsubq_f32(v147, v9);
            v154 = vaddq_s32(vcvtq_s32_f32(v153), vcltzq_f32(v153));
            v155 = vsubq_f32(v153, vcvtq_f32_s32(v154)).u64[0];
            *v151.i8 = vmla_s32(vzip1_s32(*v151.i8, *v154.i8), vzip2_s32(*v151.i8, *v154.i8), vdup_n_s32(v148));
            v156 = (v150 + 16 * v151.i32[0]);
            v157 = vaddq_f32(*v156, vmulq_n_f32(vsubq_f32(v156[1], *v156), v152.f32[0]));
            v158 = vaddq_f32(v157, vmulq_lane_f32(vsubq_f32(vaddq_f32(v156[v148], vmulq_n_f32(vsubq_f32(v156[v148 + 1], v156[v148]), v152.f32[0])), v157), v152, 1));
            v159 = (v150 + 16 * v151.i32[1]);
            v160 = vaddq_f32(*v159, vmulq_n_f32(vsubq_f32(v159[1], *v159), v155.f32[0]));
            v161 = vaddq_f32(v160, vmulq_lane_f32(vsubq_f32(vaddq_f32(v159[v148], vmulq_n_f32(vsubq_f32(v159[v148 + 1], v159[v148]), v155.f32[0])), v160), v155, 1));
          }

          else
          {
            v162 = vaddq_f32(v149, v13);
            v163 = vcvtq_s32_f32(v162);
            v164 = vaddq_f32(vsubq_f32(v147, v9), v13);
            v165 = vcvtq_s32_f32(v164);
            *v162.f32 = vadd_s32(*v163.i8, *&vcgtq_f32(vcvtq_f32_s32(v163), v162));
            *v164.f32 = vadd_s32(*v165.i8, *&vcgtq_f32(vcvtq_f32_s32(v165), v164));
            *v164.f32 = vmla_s32(vzip1_s32(*v162.f32, *v164.f32), vzip2_s32(*v162.f32, *v164.f32), vdup_n_s32(v148));
            v166 = v164.i32[1];
            v158 = *(v150 + 16 * v164.i32[0]);
            v161 = *(v150 + 16 * v166);
          }

          v167 = (v11 + 16 * v15);
          *v167 = v158;
          v167[1] = v161;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v168 = *(this + 51);
        v169 = vmulq_f32(*(v168 + 16), vdupq_lane_s64(vsubq_f32(v17, *v168).i64[0], 0));
        v170 = vaddq_f32(v169, vrev64q_s32(v169));
        v171 = *(v168 + 48);
        *v172.i8 = vqtbl1_s8(v170, *v171.i8);
        v172.u64[1] = vqtbl1_s8(v170, *&vextq_s8(v171, v171, 8uLL));
        v173 = *(v168 + 80);
        v174 = vandq_s8(*(v168 + 64), v172);
        v175 = vrev64q_s32(v174);
        v176 = vextq_s8(v174, v174, 0xCuLL);
        v177 = vrev64q_s32(vmaxq_f32(v175, v176));
        v178 = *(v168 + 96);
        v179 = *(v168 + 112);
        v180 = vminq_f32(vmaxq_f32(vrecpeq_f32(v177), v173), v178);
        v181 = vminq_f32(vmaxq_f32(vmulq_f32(v180, vrecpsq_f32(v177, v180)), v173), v178);
        v182 = vbslq_s8(v179, vminq_f32(v175, v176), vmulq_f32(v181, vrecpsq_f32(v177, v181)));
        v183 = vmulq_lane_f32(v182, *v182.f32, 1);
        v184 = vbslq_s8(v179, v183, vmulq_n_f32(vrev64q_s32(v183), *v183.i32));
        v185 = *(v168 + 128);
        v186 = *(v168 + 144);
        v187 = vmulq_lane_f32(vaddq_f32(v186, vmulq_lane_f32(vaddq_f32(v173, vmulq_f32(v185, vextq_s8(v9, v184, 0xCuLL))), *v184.f32, 1)), *v184.f32, 1);
        v188 = *(v168 + 160);
        v189 = *(v168 + 176);
        v190 = vaddq_f32(v189, vmulq_lane_f32(vaddq_f32(v188, v187), *v184.f32, 1));
        v184.i64[1] = v190.i64[1];
        v191 = vbslq_s8(v179, v184, vaddq_f32(v189, vmulq_laneq_f32(v184, v190, 2)));
        v192 = vmulq_lane_f32(v191, *v191.f32, 1);
        v193 = vbslq_s8(v179, v192, vsubq_f32(v188, vrev64q_s32(v192)));
        v194 = vsubq_f32(v175, v176);
        v176.i64[0] = v174.i64[0];
        v176.i64[1] = v194.i64[1];
        v196 = *(v168 + 192);
        v195 = *(v168 + 208);
        v197 = vbslq_s8(vcgtq_f32(v196, v176), vextq_s8(v9, v193, 0xCuLL), vdupq_lane_s64(v193.i64[0], 0));
        v190.i64[0] = v174.i64[0];
        v190.i64[1] = vdupq_laneq_s64(v197, 1).u64[0];
        v174.i64[1] = v197.i64[1];
        v198 = vbslq_s8(v195, vsubq_f32(v196, vrev64q_s32(v190)), v174);
        v200 = *(v168 + 224);
        v199 = *(v168 + 240);
        v190.i64[0] = v198.i64[0];
        v190.i64[1] = vaddq_f32(v200, vmulq_laneq_f32(vbslq_s8(vcgtq_f32(v196, vextq_s8(*&v198, *&v198, 8uLL)), vrev64q_s32(v198), *&v198), *v168, 3)).i64[1];
        v201 = vcvtq_f32_s32(vcvtq_s32_f32(v190));
        v202 = vdupq_lane_s32(*&vmulq_laneq_f32(vnegq_f32(vextq_s8(*v168, *v168, 4uLL)), vsubq_f32(v201, vbslq_s8(vcgtq_f32(v201, v190), v199, 0)), 2), 1);
        v203 = *(v168 + 272);
        v204 = vandq_s8(v202, *(v168 + 256));
        v198.i64[1] = vsubq_f32(v199, vdupq_lane_s64(*&v204, 0)).i64[1];
        v205 = vextq_s8(v204, v204, 0xCuLL);
        v206 = *(v168 + 288);
        v207 = *(v168 + 304);
        v208 = vbslq_s8(v206, vsubq_f32(v203, v205), v198);
        v209 = vbslq_s8(vcgtq_f32(v196, v208), vrev64q_s32(v208), v205);
        v210.i64[0] = v208.i64[0];
        v210.i64[1] = v209.i64[1];
        v208.i64[1] = vdupq_laneq_s64(v209, 1).u64[0];
        v211 = vbslq_s8(v195, vsubq_f32(vrev64q_s32(v208), v207), v210);
        v212 = vbslq_s8(vcgtq_f32(v196, vrev64q_s32(v211)), vsubq_f32(v207, v210), v211);
        v213.i64[0] = v211.i64[0];
        v213.i64[1] = vdupq_laneq_s64(v212, 1).u64[0];
        v211.i64[1] = v212.i64[1];
        v214 = vbslq_s8(v195, vmulq_laneq_f32(vrev64q_s32(v213), v212, 2), v211);
        v215 = vmulq_laneq_f32(vdupq_laneq_s64(v214, 1), v214, 3);
        v216 = vbslq_s8(v195, vmulq_n_f32(vrev64q_s32(v214), v215.f32[0]), v211);
        v217 = vbslq_s8(v195, vmulq_laneq_f32(v216, v216, 2), v211);
        v218 = *(v168 + 320);
        v219 = vaddq_f32(vmulq_laneq_f32(v218, v217, 3), vaddq_f32(vmulq_laneq_f32(v215, v218, 2), vdupq_laneq_s64(v217, 1)));
        v220 = vbslq_s8(v195, vmulq_laneq_f32(v217, v217, 2), v211);
        v221 = vbslq_s8(v195, vmulq_laneq_f32(v220, v220, 2), v211);
        v219.i64[0] = vaddq_f32(v219, vmulq_laneq_f32(v207, v221, 3)).u64[0];
        v213.i64[0] = v219.i64[0];
        v213.i64[1] = v204.i64[1];
        v222 = vdupq_lane_s64(v219.i64[0], 0);
        v219.i64[1] = vdupq_laneq_s64(v204, 1).u64[0];
        v223 = vbslq_s8(v206, v213, vsubq_f32(v203, vrev64q_s32(v219)));
        v219.i64[0] = vsubq_f32(vextq_s8(v223, v9, 4uLL), v218).u64[0];
        v213.i64[0] = vextq_s8(v223, v223, 8uLL).u64[0];
        v224 = vext_s8(*v219.f32, *v213.f32, 4uLL);
        *v213.f32 = vext_s8(*v213.f32, *v219.f32, 4uLL);
        *&v213.u32[2] = v224;
        v225 = vbslq_s8(v195, vmulq_laneq_f32(v221, v221, 2), v211);
        v221.i64[0] = v219.i64[0];
        v221.i64[1] = vbslq_s8(vcgtq_f32(v213, v196), vrev64q_s32(v223), *&v223).i64[1];
        v226 = vmulq_f32(v221, v221);
        v221.i64[0] = v219.i64[0];
        v221.i64[1] = v226.i64[1];
        v219.i64[1] = vdupq_laneq_s64(v226, 1).u64[0];
        v227 = vbslq_s8(v195, vaddq_f32(v200, vmulq_f32(v189, vrev64q_s32(v219))), v221);
        v228 = vbslq_s8(v195, vaddq_f32(v188, vmulq_laneq_f32(v227, v227, 2)), v221);
        v225.i64[1] = vaddq_f32(v222, vmulq_laneq_f32(vmulq_laneq_f32(v225, v225, 3), v218, 3)).i64[1];
        v229 = vbslq_s8(v195, vmulq_lane_f32(vbslq_s8(v195, vaddq_f32(v185, vmulq_laneq_f32(vbslq_s8(v195, vaddq_f32(v186, vmulq_laneq_f32(v228, v228, 2)), v225), v228, 2)), v225), *&vbslq_s8(vcgtq_f32(v228, v199), v203, v207), 1), v225);
        v230 = vbslq_s8(*(v168 + 336), vmulq_laneq_f32(v229, v229, 2), v229);
        v231 = vbslq_s8(v206, vaddq_f32(vmulq_lane_f32(vextq_s8(v229, v229, 4uLL), *v229.f32, 1), vmulq_n_f32(v230, v230.f32[0])), v230);
        *v231.f32 = vzip1_s32(vsub_f32(vmul_laneq_f32(*v231.f32, v231, 3), vdup_lane_s32(*v231.f32, 1)), *&vextq_s8(v231, v231, 8uLL));
        v232 = *(v168 + 368);
        v233 = vmulq_f32(*(v168 + 32), vdupq_lane_s64(vandq_s8(*(v168 + 352), v231).i64[0], 0));
        *v230.f32 = vqtbl1_s8(v233, *v232.i8);
        *v234.f32 = vqtbl1_s8(v233, *&vextq_s8(v232, v232, 8uLL));
        v235 = *(v168 + 384);
        *v227.f32 = vqtbl1_s8(v233, *v235.i8);
        *v233.f32 = vqtbl1_s8(v233, *&vextq_s8(v235, v235, 8uLL));
        v234.i64[1] = v230.i64[0];
        v233.i64[1] = v227.i64[0];
        v236 = vaddq_f32(*v168, vaddq_f32(v234, v233));
        v237 = *(a2 + 22);
        v238 = vsubq_f32(v236, v9);
        v239 = *(a2 + 10);
        if (v5)
        {
          v240 = vaddq_s32(vcvtq_s32_f32(v238), vcltzq_f32(v238));
          v241 = vsubq_f32(v238, vcvtq_f32_s32(v240)).u64[0];
          v242 = (v239 + 16 * (v240.i32[0] + v240.i32[1] * v237));
          v243 = vaddq_f32(*v242, vmulq_n_f32(vsubq_f32(v242[1], *v242), v241.f32[0]));
          v244 = vaddq_f32(v243, vmulq_lane_f32(vsubq_f32(vaddq_f32(v242[v237], vmulq_n_f32(vsubq_f32(v242[v237 + 1], v242[v237]), v241.f32[0])), v243), v241, 1));
        }

        else
        {
          v245 = vaddq_f32(v238, v13);
          v246 = vcvtq_s32_f32(v245);
          v245.i64[0] = vaddq_s32(v246, vcgtq_f32(vcvtq_f32_s32(v246), v245)).u64[0];
          v244 = *(v239 + 16 * (v245.i32[0] + v245.i32[1] * v237));
        }

        *(v11 + 16 * v15) = v244;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgciOSKaleidoscope::GetDOD(HgciOSKaleidoscope *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgciOSKaleidoscope::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgciOSKaleidoscope::HgciOSKaleidoscope(HgciOSKaleidoscope *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EC548;
  operator new();
}

void HgciOSKaleidoscope::~HgciOSKaleidoscope(HGNode *this)
{
  *this = &unk_2871EC548;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C402BC884A0);
  }

  HGNode::~HGNode(this);
}

{
  HgciOSKaleidoscope::~HgciOSKaleidoscope(this);

  HGObject::operator delete(v1);
}

uint64_t HgciOSKaleidoscope::SetParameter(HgciOSKaleidoscope *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgciOSKaleidoscope::GetParameter(HgciOSKaleidoscope *this, unsigned int a2, float *a3)
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

double HgciOSKaleidoscope::State::State(HgciOSKaleidoscope::State *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = xmmword_2603471B0;
  v1.f64[0] = NAN;
  v1.f64[1] = NAN;
  *(this + 4) = vnegq_f64(v1);
  *(this + 5) = xmmword_2603471C0;
  v1.f64[0] = 2.84809454e-306;
  v1.f64[1] = 2.84809454e-306;
  *(this + 6) = vnegq_f32(v1);
  *(this + 7) = xmmword_2603444B0;
  *(this + 8) = xmmword_2603471D0;
  *(this + 9) = xmmword_2603471E0;
  *(this + 10) = xmmword_2603471F0;
  *(this + 11) = xmmword_260347200;
  *(this + 12) = xmmword_260347210;
  *(this + 13) = xmmword_260344600;
  *(this + 14) = xmmword_260347220;
  *(this + 15) = xmmword_260347230;
  *(this + 16) = xmmword_2603446A0;
  *(this + 17) = xmmword_260347240;
  *(this + 18) = xmmword_260344660;
  *(this + 19) = xmmword_260347250;
  *(this + 20) = xmmword_260347260;
  *(this + 21) = xmmword_260344670;
  *(this + 22) = xmmword_260344650;
  *(this + 23) = xmmword_260344680;
  result = 0.0;
  *(this + 24) = xmmword_260347270;
  return result;
}

uint64_t HgcCamcorder::Setup(HgcCamcorder *this, void *a2)
{
  v2 = *(this + 51);
  v3 = *(v2 + 224);
  DWORD1(v3) = 0;
  v4 = *(v2 + 272);
  v5 = *(v2 + 288);
  v6 = vaddq_f32(vextq_s8(*v2, *v2, 8uLL), v4);
  v7 = vaddq_f32(v4, vextq_s8(*(v2 + 16), *(v2 + 16), 4uLL));
  *(&v3 + 1) = vand_s8(*&vextq_s8(*(v2 + 304), *(v2 + 304), 8uLL), v3);
  *(v2 + 32) = v3;
  v8 = *(this + 51);
  *&v3 = 0x3F80000000000000;
  *&v9 = 0x3F80000000000000;
  *(&v9 + 1) = vand_s8(*&vextq_s8(*(v8 + 304), *(v8 + 304), 8uLL), 0x3F80000000000000);
  *(v8 + 48) = v9;
  *(*(this + 51) + 64) = vbicq_s8(*(*(this + 51) + 256), *(*(this + 51) + 304));
  *(*(this + 51) + 80) = vbslq_s8(*(*(this + 51) + 304), vbslq_s8(v5, v6, v7), *(*(this + 51) + 272));
  v10 = *(this + 51);
  v11 = *(v10 + 224);
  v12 = *(v10 + 272);
  v13 = *(v10 + 288);
  v14 = vaddq_f32(vrev64q_s32(*v10), v12);
  DWORD1(v11) = 0;
  v15 = vaddq_f32(v12, *(v10 + 16));
  *(&v11 + 1) = vand_s8(*&vextq_s8(*(v10 + 304), *(v10 + 304), 8uLL), v11);
  *(v10 + 96) = v11;
  v16 = *(this + 51);
  v12.i64[0] = 0x3F80000000000000;
  *&v12.u32[2] = vand_s8(*&vextq_s8(*(v16 + 304), *(v16 + 304), 8uLL), 0x3F80000000000000);
  *(v16 + 112) = v12;
  *(*(this + 51) + 128) = vbicq_s8(*(*(this + 51) + 256), *(*(this + 51) + 304));
  *(*(this + 51) + 144) = vbslq_s8(*(*(this + 51) + 304), vbslq_s8(v13, v14, v15), *(*(this + 51) + 272));
  v17 = *(this + 51);
  v18 = *(v17 + 272);
  v19 = vaddq_f32(*v17, v18);
  v20 = vaddq_f32(v18, vrev64q_s32(*(v17 + 16)));
  v21 = *(v17 + 224);
  DWORD1(v21) = 0;
  v22 = vbslq_s8(*(v17 + 288), v19, v20);
  *(&v21 + 1) = vand_s8(*&vextq_s8(*(v17 + 304), *(v17 + 304), 8uLL), v21);
  *(v17 + 160) = v21;
  v23 = *(this + 51);
  *(&v3 + 1) = vand_s8(*&vextq_s8(*(v23 + 304), *(v23 + 304), 8uLL), 0x3F80000000000000);
  *(v23 + 176) = v3;
  *(*(this + 51) + 192) = vbicq_s8(*(*(this + 51) + 256), *(*(this + 51) + 304));
  *(*(this + 51) + 208) = vbslq_s8(*(*(this + 51) + 304), v22, *(*(this + 51) + 272));
  return 0;
}

const char *HgcCamcorder::GetProgram(HgcCamcorder *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000327\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    FragmentOut output;\n\n    output.color0.z = (float) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).z;\n    output.color0.y = (float) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).y;\n    output.color0.x = (float) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy).x;\n    output.color0.w = float(c0.w);\n    return output;\n}\n//MD5=a9130b14:c6e84c05:4c5ae62f:3c843d31\n//SIG=00400000:00000000:00000000:00000001:0001:0000:0000:0000:0000:0000:000e:0000:0003:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000030b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    FragmentOut output;\n\n    output.color0.z = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).z;\n    output.color0.y = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).y;\n    output.color0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy).x;\n    output.color0.w = c0.w;\n    return output;\n}\n//MD5=01696f73:c6970ec9:64df1cb0:c4ea7b43\n//SIG=00000000:00000000:00000000:00000000:0001:0000:0000:0000:0000:0000:000e:0000:0003:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002d2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n\n    gl_FragColor.z = texture2D(hg_Texture0, hg_TexCoord0.xy).z;\n    gl_FragColor.y = texture2D(hg_Texture0, hg_TexCoord1.xy).y;\n    gl_FragColor.x = texture2D(hg_Texture0, hg_TexCoord2.xy).x;\n    gl_FragColor.w = c0.w;\n}\n//MD5=50d06353:c6362d31:7b4fe509:23026d0d\n//SIG=00000000:00000000:00000000:00000000:0001:0000:0000:0000:0000:0000:0000:0000:0003:01:0:1:0\n";
  }
}

void sub_25FABFCF8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FABFEF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FABFF58()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FABFF50);
}

uint64_t HgcCamcorder::BindTexture(HgcCamcorder *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  HGHandler::TexCoord(a2, 0, a3, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 32);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 96);
  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 120))(a2, *(this + 51) + 160);
  return 0;
}

uint64_t HgcCamcorder::RenderTile(float32x4_t **this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = ((*this)[19].i64[1])(this, v4);
  v6 = *(a2 + 1);
  v7 = *(a2 + 3) - v6;
  if (v7 >= 1)
  {
    v8 = 0;
    v14.f32[0] = *a2 + 0.5;
    v9 = v6 + 0.5;
    v10 = this[51];
    v11 = 0uLL;
    v12 = vaddq_f32(v10[5], vaddq_f32(vaddq_f32(vmulq_n_f32(v10[2], v14.f32[0]), vmulq_n_f32(v10[3], v9)), vmulq_f32(v10[4], 0)));
    v14.f32[1] = v9;
    v14.i32[2] = 0;
    v13 = vaddq_f32(v10[9], vaddq_f32(vaddq_f32(vmulq_n_f32(v10[6], v14.f32[0]), vmulq_n_f32(v10[7], v9)), vmulq_f32(v10[8], 0)));
    v14.i32[3] = 1.0;
    v15 = *(a2 + 2) - *a2;
    v16 = vaddq_f32(v10[13], vaddq_f32(vaddq_f32(vmulq_n_f32(v10[10], v14.f32[0]), vmulq_n_f32(v10[11], v9)), vmulq_f32(v10[12], 0)));
    v17 = *(a2 + 2);
    v18 = 16 * *(a2 + 6);
    __asm { FMOV            V6.4S, #3.0 }

    v24.i64[0] = 0x3F0000003F000000;
    v24.i64[1] = 0x3F0000003F000000;
    do
    {
      v25 = this[51];
      v26 = vaddq_f32(v12, vmulq_f32(v11, v25[3]));
      v27 = vaddq_f32(v13, vmulq_f32(v11, v25[7]));
      v28 = vaddq_f32(v16, vmulq_f32(v11, v25[11]));
      if (v15 < 3)
      {
        v29 = 0;
        v30 = 0uLL;
      }

      else
      {
        v29 = 0;
        v30 = 0uLL;
        for (i = v15; i > 2; i -= 3)
        {
          v32 = this[51];
          v33 = v32[2];
          v34 = vaddq_f32(v26, vmulq_f32(v30, v33));
          v35 = v32[6];
          v36 = vaddq_f32(v27, vmulq_f32(v30, v35));
          v37 = v32[10];
          v38 = vaddq_f32(v28, vmulq_f32(v30, v37));
          v39 = vaddq_f32(v33, v34);
          v40 = vaddq_f32(v35, v36);
          v41 = vaddq_f32(v37, v38);
          v42 = vaddq_f32(v33, v39);
          v43 = vaddq_f32(v35, v40);
          v44 = vaddq_f32(v37, v41);
          v45 = *(a2 + 22);
          v46 = vsubq_f32(v34, v14);
          v47 = *(a2 + 10);
          if (v5)
          {
            v48 = vaddq_s32(vcvtq_s32_f32(v46), vcltzq_f32(v46));
            v49 = vsubq_f32(v46, vcvtq_f32_s32(v48)).u64[0];
            v50 = vsubq_f32(v39, v14);
            v51 = vaddq_s32(vcvtq_s32_f32(v50), vcltzq_f32(v50));
            v52 = vsubq_f32(v50, vcvtq_f32_s32(v51)).u64[0];
            *v50.f32 = vdup_n_s32(v45);
            *v48.i8 = vmla_s32(vzip1_s32(*v48.i8, *v51.i8), vzip2_s32(*v48.i8, *v51.i8), *v50.f32);
            v53 = v48.i32[1];
            v54 = (v47 + 16 * v48.i32[0]);
            v55 = vaddq_f32(*v54, vmulq_n_f32(vsubq_f32(v54[1], *v54), v49.f32[0]));
            v56 = vaddq_f32(v55, vmulq_lane_f32(vsubq_f32(vaddq_f32(v54[v45], vmulq_n_f32(vsubq_f32(v54[v45 + 1], v54[v45]), v49.f32[0])), v55), v49, 1));
            v57 = (v47 + 16 * v53);
            v58 = vaddq_f32(*v57, vmulq_n_f32(vsubq_f32(v57[1], *v57), v52.f32[0]));
            v59 = vaddq_f32(v58, vmulq_lane_f32(vsubq_f32(vaddq_f32(v57[v45], vmulq_n_f32(vsubq_f32(v57[v45 + 1], v57[v45]), v52.f32[0])), v58), v52, 1));
            v60 = vsubq_f32(v42, v14);
            v61 = vaddq_s32(vcvtq_s32_f32(v60), vcltzq_f32(v60));
            v60.i64[0] = vsubq_f32(v60, vcvtq_f32_s32(v61)).u64[0];
            v62 = vsubq_f32(v36, v14);
            v63 = vaddq_s32(vcvtq_s32_f32(v62), vcltzq_f32(v62));
            v62.i64[0] = vsubq_f32(v62, vcvtq_f32_s32(v63)).u64[0];
            *v61.i8 = vmla_s32(vzip1_s32(*v61.i8, *v63.i8), vzip2_s32(*v61.i8, *v63.i8), *v50.f32);
            LODWORD(v57) = v61.i32[1];
            v64 = (v47 + 16 * v61.i32[0]);
            v65 = vaddq_f32(*v64, vmulq_n_f32(vsubq_f32(v64[1], *v64), v60.f32[0]));
            v66 = vaddq_f32(v65, vmulq_lane_f32(vsubq_f32(vaddq_f32(v64[v45], vmulq_n_f32(vsubq_f32(v64[v45 + 1], v64[v45]), v60.f32[0])), v65), *v60.f32, 1));
            v67 = (v47 + 16 * v57);
            v68 = vaddq_f32(*v67, vmulq_n_f32(vsubq_f32(v67[1], *v67), v62.f32[0]));
            v78.i64[0] = vaddq_f32(v68, vmulq_lane_f32(vsubq_f32(vaddq_f32(v67[v45], vmulq_n_f32(vsubq_f32(v67[v45 + 1], v67[v45]), v62.f32[0])), v68), *v62.f32, 1)).u64[0];
            v69 = vsubq_f32(v40, v14);
            v70 = vaddq_s32(vcvtq_s32_f32(v69), vcltzq_f32(v69));
            v69.i64[0] = vsubq_f32(v69, vcvtq_f32_s32(v70)).u64[0];
            v71 = vsubq_f32(v43, v14);
            v72 = vaddq_s32(vcvtq_s32_f32(v71), vcltzq_f32(v71));
            v73 = vsubq_f32(v71, vcvtq_f32_s32(v72)).u64[0];
            *v70.i8 = vmla_s32(vzip1_s32(*v70.i8, *v72.i8), vzip2_s32(*v70.i8, *v72.i8), *v50.f32);
            v74 = (v47 + 16 * v70.i32[0]);
            v75 = vaddq_f32(*v74, vmulq_n_f32(vsubq_f32(v74[1], *v74), v69.f32[0]));
            v79.i64[0] = vaddq_f32(v75, vmulq_lane_f32(vsubq_f32(vaddq_f32(v74[v45], vmulq_n_f32(vsubq_f32(v74[v45 + 1], v74[v45]), v69.f32[0])), v75), *v69.f32, 1)).u64[0];
            v76 = (v47 + 16 * v70.i32[1]);
            v77 = vaddq_f32(*v76, vmulq_n_f32(vsubq_f32(v76[1], *v76), v73.f32[0]));
            v78.i64[1] = v56.i64[1];
            v80.i64[0] = vaddq_f32(v77, vmulq_lane_f32(vsubq_f32(vaddq_f32(v76[v45], vmulq_n_f32(vsubq_f32(v76[v45 + 1], v76[v45]), v73.f32[0])), v77), v73, 1)).u64[0];
            v79.i64[1] = v59.i64[1];
            v80.i64[1] = v66.i64[1];
            v81 = vsubq_f32(v38, v14);
            v82 = vaddq_s32(vcvtq_s32_f32(v81), vcltzq_f32(v81));
            v81.i64[0] = vsubq_f32(v81, vcvtq_f32_s32(v82)).u64[0];
            v83 = vsubq_f32(v41, v14);
            v84 = vaddq_s32(vcvtq_s32_f32(v83), vcltzq_f32(v83));
            v66.i64[0] = vsubq_f32(v83, vcvtq_f32_s32(v84)).u64[0];
            *v82.i8 = vmla_s32(vzip1_s32(*v82.i8, *v84.i8), vzip2_s32(*v82.i8, *v84.i8), *v50.f32);
            v85 = (v47 + 16 * v82.i32[0]);
            v86 = vaddq_f32(*v85, vmulq_n_f32(vsubq_f32(v85[1], *v85), v81.f32[0]));
            v87 = vaddq_f32(v86, vmulq_lane_f32(vsubq_f32(vaddq_f32(v85[v45], vmulq_n_f32(vsubq_f32(v85[v45 + 1], v85[v45]), v81.f32[0])), v86), *v81.f32, 1));
            v88 = (v47 + 16 * v82.i32[1]);
            v89 = vaddq_f32(*v88, vmulq_n_f32(vsubq_f32(v88[1], *v88), v66.f32[0]));
            v90 = vaddq_f32(v89, vmulq_lane_f32(vsubq_f32(vaddq_f32(v88[v45], vmulq_n_f32(vsubq_f32(v88[v45 + 1], v88[v45]), v66.f32[0])), v89), *v66.f32, 1));
            v91 = vsubq_f32(v44, v14);
            v92 = vaddq_s32(vcvtq_s32_f32(v91), vcltzq_f32(v91));
            v91.i64[0] = vsubq_f32(v91, vcvtq_f32_s32(v92)).u64[0];
            v93 = (v47 + 16 * (v92.i32[0] + v92.i32[1] * v45));
            v94 = vaddq_f32(*v93, vmulq_n_f32(vsubq_f32(v93[1], *v93), v91.f32[0]));
            v95 = vaddq_f32(v94, vmulq_lane_f32(vsubq_f32(vaddq_f32(v93[v45], vmulq_n_f32(vsubq_f32(v93[v45 + 1], v93[v45]), v91.f32[0])), v94), *v91.f32, 1));
          }

          else
          {
            v96 = vaddq_f32(v46, v24);
            v97 = vcvtq_s32_f32(v96);
            v98 = vaddq_f32(vsubq_f32(v39, v14), v24);
            v99 = vcvtq_s32_f32(v98);
            *v96.f32 = vadd_s32(*v97.i8, *&vcgtq_f32(vcvtq_f32_s32(v97), v96));
            *v97.i8 = vadd_s32(*v99.i8, *&vcgtq_f32(vcvtq_f32_s32(v99), v98));
            *v98.f32 = vdup_n_s32(v45);
            *v96.f32 = vmla_s32(vzip1_s32(*v96.f32, *v97.i8), vzip2_s32(*v96.f32, *v97.i8), *v98.f32);
            v100 = vaddq_f32(vsubq_f32(v42, v14), v24);
            v101 = vcvtq_s32_f32(v100);
            v102 = vaddq_f32(vsubq_f32(v36, v14), v24);
            v103 = vcvtq_s32_f32(v102);
            *v102.f32 = vadd_s32(*v103.i8, *&vcgtq_f32(vcvtq_f32_s32(v103), v102));
            *v100.f32 = vadd_s32(*v101.i8, *&vcgtq_f32(vcvtq_f32_s32(v101), v100));
            *v102.f32 = vmla_s32(vzip1_s32(*v100.f32, *v102.f32), vzip2_s32(*v100.f32, *v102.f32), *v98.f32);
            v104 = *(v47 + 16 * v102.i32[0]);
            v78 = *(v47 + 16 * v102.i32[1]);
            v105 = vaddq_f32(vsubq_f32(v40, v14), v24);
            v106 = vcvtq_s32_f32(v105);
            v107 = vaddq_f32(vsubq_f32(v43, v14), v24);
            v108 = vcvtq_s32_f32(v107);
            *v107.f32 = vadd_s32(*v108.i8, *&vcgtq_f32(vcvtq_f32_s32(v108), v107));
            *v105.f32 = vadd_s32(*v106.i8, *&vcgtq_f32(vcvtq_f32_s32(v106), v105));
            *v107.f32 = vmla_s32(vzip1_s32(*v105.f32, *v107.f32), vzip2_s32(*v105.f32, *v107.f32), *v98.f32);
            v109 = v107.i32[1];
            v79 = *(v47 + 16 * v107.i32[0]);
            v80 = *(v47 + 16 * v109);
            v78.i64[1] = *(v47 + 16 * v96.i32[0] + 8);
            v79.i64[1] = *(v47 + 16 * v96.i32[1] + 8);
            v80.i64[1] = *(&v104 + 1);
            v110 = vaddq_f32(vsubq_f32(v38, v14), v24);
            v111 = vcvtq_s32_f32(v110);
            v112 = vaddq_f32(vsubq_f32(v41, v14), v24);
            v113 = vcvtq_s32_f32(v112);
            *v112.f32 = vadd_s32(*v113.i8, *&vcgtq_f32(vcvtq_f32_s32(v113), v112));
            *v110.f32 = vadd_s32(*v111.i8, *&vcgtq_f32(vcvtq_f32_s32(v111), v110));
            *v112.f32 = vmla_s32(vzip1_s32(*v110.f32, *v112.f32), vzip2_s32(*v110.f32, *v112.f32), *v98.f32);
            v114 = v112.i32[1];
            v87 = *(v47 + 16 * v112.i32[0]);
            v90 = *(v47 + 16 * v114);
            v115 = vaddq_f32(vsubq_f32(v44, v14), v24);
            v116 = vcvtq_s32_f32(v115);
            v115.i64[0] = vaddq_s32(v116, vcgtq_f32(vcvtq_f32_s32(v116), v115)).u64[0];
            v95 = *(v47 + 16 * (v115.i32[0] + v115.i32[1] * v45));
          }

          v30 = vaddq_f32(v30, _Q6);
          v117 = v32[18];
          v118 = vbslq_s8(v117, v87, v78);
          v119 = vbslq_s8(v117, v90, v79);
          v118.i32[3] = 1.0;
          v120 = vbslq_s8(v117, v95, v80);
          v119.i32[3] = 1.0;
          v120.i32[3] = 1.0;
          v121 = (v17 + 16 * v29);
          *v121 = v118;
          v121[1] = v119;
          v121[2] = v120;
          v29 += 3;
        }

        v29 = v29;
      }

      __asm { FMOV            V20.4S, #1.0 }

      if (v29 < v15)
      {
        do
        {
          v123 = this[51];
          v124 = vaddq_f32(v27, vmulq_f32(v30, v123[6]));
          v125 = vaddq_f32(v28, vmulq_f32(v30, v123[10]));
          v126 = *(a2 + 22);
          v127 = vsubq_f32(vaddq_f32(v26, vmulq_f32(v30, v123[2])), v14);
          v128 = *(a2 + 10);
          if (v5)
          {
            v129 = vaddq_s32(vcvtq_s32_f32(v127), vcltzq_f32(v127));
            v130 = vsubq_f32(v127, vcvtq_f32_s32(v129)).u64[0];
            v131 = vsubq_f32(v124, v14);
            v132 = vaddq_s32(vcvtq_s32_f32(v131), vcltzq_f32(v131));
            v131.i64[0] = vsubq_f32(v131, vcvtq_f32_s32(v132)).u64[0];
            *v129.i8 = vmla_s32(vzip1_s32(*v129.i8, *v132.i8), vzip2_s32(*v129.i8, *v132.i8), vdup_n_s32(v126));
            v133 = v129.i32[1];
            v134 = (v128 + 16 * v129.i32[0]);
            v135 = vaddq_f32(*v134, vmulq_n_f32(vsubq_f32(v134[1], *v134), v130.f32[0]));
            v136 = vaddq_f32(v135, vmulq_lane_f32(vsubq_f32(vaddq_f32(v134[v126], vmulq_n_f32(vsubq_f32(v134[v126 + 1], v134[v126]), v130.f32[0])), v135), v130, 1));
            v137 = (v128 + 16 * v133);
            v138 = vaddq_f32(*v137, vmulq_n_f32(vsubq_f32(v137[1], *v137), v131.f32[0]));
            v139.i64[0] = vaddq_f32(v138, vmulq_lane_f32(vsubq_f32(vaddq_f32(v137[v126], vmulq_n_f32(vsubq_f32(v137[v126 + 1], v137[v126]), v131.f32[0])), v138), *v131.f32, 1)).u64[0];
            v139.i64[1] = v136.i64[1];
            v140 = vsubq_f32(v125, v14);
            v141 = vaddq_s32(vcvtq_s32_f32(v140), vcltzq_f32(v140));
            v140.i64[0] = vsubq_f32(v140, vcvtq_f32_s32(v141)).u64[0];
            v142 = (v128 + 16 * (v141.i32[0] + v141.i32[1] * v126));
            v143 = vaddq_f32(*v142, vmulq_n_f32(vsubq_f32(v142[1], *v142), v140.f32[0]));
            v144 = vaddq_f32(v143, vmulq_lane_f32(vsubq_f32(vaddq_f32(v142[v126], vmulq_n_f32(vsubq_f32(v142[v126 + 1], v142[v126]), v140.f32[0])), v143), *v140.f32, 1));
          }

          else
          {
            v145 = vaddq_f32(v127, v24);
            v146 = vcvtq_s32_f32(v145);
            v147 = vaddq_f32(vsubq_f32(v124, v14), v24);
            v148 = vcvtq_s32_f32(v147);
            *v145.f32 = vadd_s32(*v146.i8, *&vcgtq_f32(vcvtq_f32_s32(v146), v145));
            *v147.f32 = vadd_s32(*v148.i8, *&vcgtq_f32(vcvtq_f32_s32(v148), v147));
            *v147.f32 = vmla_s32(vzip1_s32(*v145.f32, *v147.f32), vzip2_s32(*v145.f32, *v147.f32), vdup_n_s32(v126));
            v149 = *(v128 + 16 * v147.i32[0]);
            v139 = *(v128 + 16 * v147.i32[1]);
            v139.i64[1] = *(&v149 + 1);
            v150 = vaddq_f32(vsubq_f32(v125, v14), v24);
            v151 = vcvtq_s32_f32(v150);
            v150.i64[0] = vaddq_s32(v151, vcgtq_f32(vcvtq_f32_s32(v151), v150)).u64[0];
            v144 = *(v128 + 16 * (v150.i32[0] + v150.i32[1] * v126));
          }

          v152 = vbslq_s8(v123[18], v144, v139);
          v152.i32[3] = 1.0;
          *(v17 + 16 * v29) = v152;
          v30 = vaddq_f32(v30, _Q20);
          ++v29;
        }

        while (v29 < v15);
      }

      v11 = vaddq_f32(v11, _Q20);
      ++v8;
      v17 += v18;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcCamcorder::GetDOD(HgcCamcorder *this, HGRenderer *a2, int a3, HGRect a4)
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

  HGTransform::HGTransform(v29);
  HGTransform::LoadMatrixf(v29, (*(this + 51) + 32));
  HGTransform::Invert2D(v29);
  v11 = HGTransformUtils::MinW(v10);
  *&v30.var0 = v5;
  DOD = HGTransformUtils::GetDOD(v29, v6, v30, 0.5, v11);
  v14 = HGRectUnion(0, 0, DOD, v13);
  v16 = v15;
  HGTransform::LoadMatrixf(v29, (*(this + 51) + 96));
  HGTransform::Invert2D(v29);
  v18 = HGTransformUtils::MinW(v17);
  *&v31.var0 = v5;
  v19 = HGTransformUtils::GetDOD(v29, v6, v31, 0.5, v18);
  v21 = HGRectUnion(v14, v16, v19, v20);
  v23 = v22;
  HGTransform::LoadMatrixf(v29, (*(this + 51) + 160));
  HGTransform::Invert2D(v29);
  v25 = HGTransformUtils::MinW(v24);
  *&v32.var0 = v5;
  v26 = HGTransformUtils::GetDOD(v29, v6, v32, 0.5, v25);
  v4 = HGRectUnion(v21, v23, v26, v27);
  HGTransform::~HGTransform(v29);
  return v4;
}

uint64_t HgcCamcorder::GetROI(HgcCamcorder *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    HGTransform::HGTransform(v31);
    HGTransform::LoadMatrixf(v31, (*(this + 51) + 32));
    v10 = HGTransformUtils::MinW(v9);
    *&v32.var0 = v5;
    ROI = HGTransformUtils::GetROI(v31, v6, v32, 0.5, v10);
    v13 = HGRectUnion(0, 0, ROI, v12);
    v15 = v14;
    HGTransform::LoadMatrixf(v31, (*(this + 51) + 96));
    v17 = HGTransformUtils::MinW(v16);
    *&v33.var0 = v5;
    v18 = HGTransformUtils::GetROI(v31, v6, v33, 0.5, v17);
    v20 = HGRectUnion(v13, v15, v18, v19);
    v22 = v21;
    HGTransform::LoadMatrixf(v31, (*(this + 51) + 160));
    v24 = HGTransformUtils::MinW(v23);
    *&v34.var0 = v5;
    v25 = HGTransformUtils::GetROI(v31, v6, v34, 0.5, v24);
    v4 = HGRectUnion(v20, v22, v25, v26);
    v28 = v27;
    HGTransform::~HGTransform(v31);
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v29 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      return HGRectGrow(v4, v28, v29);
    }
  }

  return v4;
}

void HgcCamcorder::HgcCamcorder(HgcCamcorder *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871EC7B0;
  *(v1 + 416) = 1;
  operator new();
}

void HgcCamcorder::~HgcCamcorder(HGNode *this)
{
  *this = &unk_2871EC7B0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B2834900);
  }

  HGNode::~HGNode(this);
}

{
  HgcCamcorder::~HgcCamcorder(this);

  HGObject::operator delete(v1);
}

uint64_t HgcCamcorder::SetParameter(HgcCamcorder *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcCamcorder::GetParameter(HgcCamcorder *this, unsigned int a2, float *a3)
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

HgcCamcorder *HgcCamcorder::GetOutput(HgcCamcorder *this, void *a2)
{
  if (*(this + 104))
  {
    HgcCamcorder::Setup(this, a2);
    *(this + 104) = 0;
  }

  return this;
}

void TXGetGlyphBitmapInfo(uint64_t a1, uint64_t a2, int a3, float64x2_t *a4, double *a5, double *a6, float64x2_t *a7, uint64_t *a8, double a9, double a10, CGGlyph *a11, char a12)
{
  v21 = 0.0;
  if (a12)
  {
    v21 = 2.0;
  }

  *a8 = v21;
  __asm
  {
    FMOV            V1.2D, #1.0
    FMOV            V0.2D, #0.5
  }

  v48 = _Q0;
  v49 = _Q1;
  v47 = vdupq_n_s64(0x3E7AD7F29ABCAF48uLL);
  while (1)
  {
    v28 = *(a1 + 8);
    *a11 = v28;
    TXCoreTextFont::getMetricsForGlyph(a2, v28, a6, v51, a9);
    v29 = v51[1];
    *a7 = v51[0];
    a7[1] = v29;
    a7[2] = v51[2];
    v30 = a7[1];
    *a4 = *a7;
    a4[1] = v30;
    v31 = *a8;
    v30.f64[0] = -*a8;
    *a4 = vsubq_f64(*a4, vdupq_lane_s64(*a8, 0));
    v32 = v30.f64[0] - v31;
    v33 = a7->f64[0];
    v34 = ceil(a4[1].f64[0] - v32 + fabs(a7->f64[0]));
    v35 = ceil(a4[1].f64[1] - v32);
    a4[1].f64[0] = v34;
    a4[1].f64[1] = v35;
    v36 = a7[1].f64[0];
    if (v33 >= 0.0)
    {
      v37 = -*a8;
    }

    else
    {
      v37 = vcvtmd_s64_f64(v33 + 0.5 + 0.0000001) - *a8;
    }

    a4->f64[0] = v37;
    v38 = a7->f64[0];
    v39 = v36 * 0.5;
    a4->f64[1] = vcvtmd_s64_f64(a7->f64[1] + 0.5 + 0.0000001) - *a8;
    if (v38 >= 0.0)
    {
      v39 = v39 + v38;
    }

    *a5 = v39;
    if (a3)
    {
      v40 = v49;
      if (a6)
      {
        v40.f64[0] = *a6;
        v40.f64[1] = a6[4];
      }

      v41 = vmulq_n_f64(v40, a10);
      v42 = vrndpq_f64(vaddq_f64(a4[1], vaddq_f64(v41, v41)));
      *&v41.f64[0] = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(vsubq_f64(v48, v41), v47))));
      v43.i64[0] = SLODWORD(v41.f64[0]);
      v43.i64[1] = SHIDWORD(v41.f64[0]);
      *a4 = vaddq_f64(*a4, vcvtq_f64_s64(v43));
      a4[1] = v42;
    }

    HostApplicationDelegate = OZApplication::getHostApplicationDelegate(theApp);
    MaxGlyphResolution = OZHostApplicationDelegateHandler::getMaxGlyphResolution(HostApplicationDelegate);
    if (!a6)
    {
      break;
    }

    if (a4[1].f64[0] <= MaxGlyphResolution && a4[1].f64[1] <= MaxGlyphResolution)
    {
      break;
    }

    *a6 = *a6 * 0.9;
    a6[4] = a6[4] * 0.9;
  }

  {
    PCURL::PCURL(&TXGetGlyphBitmapInfo(TXGlyph const*,TXCoreTextFont const*,double,BOOL,double,PCRect<double> &,double &,PCMatrix33Tmpl<double> *,TXGlyphMetrics &,double &,unsigned short &,BOOL)::localizedString, @"Text Name");
    __cxa_atexit(PCString::~PCString, &TXGetGlyphBitmapInfo(TXGlyph const*,TXCoreTextFont const*,double,BOOL,double,PCRect<double> &,double &,PCMatrix33Tmpl<double> *,TXGlyphMetrics &,double &,unsigned short &,BOOL)::localizedString, &dword_25F8F0000);
  }

  OZClampBoundsToMaxTextureSize(&TXGetGlyphBitmapInfo(TXGlyph const*,TXCoreTextFont const*,double,BOOL,double,PCRect<double> &,double &,PCMatrix33Tmpl<double> *,TXGlyphMetrics &,double &,unsigned short &,BOOL)::localizedString, a4);
}

void TXDrawGlyphToBitmap(uint64_t a1, CGColorSpaceRef space, void **a3)
{
  v44 = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    return;
  }

  v5 = *(a1 + 96);
  if (v5 < 0.0 || (v6 = *(a1 + 104), v6 < 0.0))
  {
    *a3 = 0;
    return;
  }

  v8 = v5;
  v9 = v6;
  v10 = *(a1 + 193);
  if (*(a1 + 193))
  {
    v11 = 7936;
  }

  else
  {
    v11 = 0;
  }

  if (*(a1 + 192))
  {
    v12 = 1;
  }

  else
  {
    v12 = 7;
  }

  v13 = 4 * v8;
  if (!*(a1 + 192))
  {
    v13 = v5;
  }

  v14 = v13 << v10;
  if (*(a1 + 200))
  {
    v15 = *(a1 + 200);
  }

  else
  {
    v15 = v14;
  }

  v16 = *a3;
  v17 = *a3;
  if (!*a3)
  {
    v18 = v11;
    v19 = malloc_type_malloc(v15 * v9, 0xCC0320C0uLL);
    v11 = v18;
    v17 = v19;
    if (!v19)
    {
      goto LABEL_25;
    }
  }

  if (v10)
  {
    v20 = 16;
  }

  else
  {
    v20 = 8;
  }

  v21 = CGBitmapContextCreate(v17, v8, v9, v20, v15, space, v11 | v12);
  if (!v21)
  {
    if (!v16)
    {
      free(v17);
    }

LABEL_25:
    v22 = 0;
    goto LABEL_26;
  }

  v22 = v21;
  *a3 = v17;
LABEL_26:
  v23 = *(a1 + 96);
  v24 = *(a1 + 104);
  v25 = *(a1 + 136);
  if (v25)
  {
    v26 = *v25;
    v27 = v25[4];
  }

  else
  {
    v27 = 1.0;
    v26 = 1.0;
  }

  v45.origin.x = 0.0;
  v45.origin.y = 0.0;
  v45.size.width = *(a1 + 96);
  v45.size.height = *(a1 + 104);
  CGContextClearRect(v22, v45);
  if (*(a1 + 192) == 1)
  {
    CGContextSetRGBFillColor(v22, 1.0, 1.0, 1.0, 1.0);
    CGContextSetRGBStrokeColor(v22, 1.0, 1.0, 1.0, 1.0);
  }

  else
  {
    CGContextSetGrayFillColor(v22, 1.0, 1.0);
    CGContextSetGrayStrokeColor(v22, 1.0, 1.0);
  }

  CopyWithAttributes = CTFontCreateCopyWithAttributes(*(a1 + 216), *(a1 + 56), 0, 0);
  CGContextSetLineWidth(v22, *(a1 + 72));
  CGContextSetMiterLimit(v22, 20.5);
  CGContextSetLineJoin(v22, kCGLineJoinMiter);
  v29 = *(a1 + 120);
  v30 = *(a1 + 144);
  if (v30 >= 0.0)
  {
    v31 = *(a1 + 120);
  }

  else
  {
    v31 = v29 - v30;
  }

  v32 = v31;
  v33 = vcvtmd_s64_f64(v32 + 0.5 + 0.0000001);
  v34 = v29 - *(a1 + 152);
  v35 = vcvtmd_s64_f64(v34 + 0.5 + 0.0000001);
  if (*(a1 + 64) == 1)
  {
    v36 = *(a1 + 72);
    v33 = v33 + vcvtmd_s64_f64(v26 * v36 + 0.5 + 0.0000001);
    v35 = v35 + vcvtmd_s64_f64(v27 * v36 + 0.5 + 0.0000001);
  }

  CGContextSaveGState(v22);
  CGContextTranslateCTM(v22, v33, v35);
  v37 = *(a1 + 136);
  if (v37)
  {
    v38 = v37[1];
    v40 = v37[2];
    v39 = v37[3];
    v41 = v37[4];
    v42 = v37[5];
    transform.a = *v37;
    transform.b = v39;
    transform.c = v38;
    transform.d = v41;
    transform.tx = v40;
    transform.ty = v42;
    CGContextConcatCTM(v22, &transform);
  }

  CGContextSetTextDrawingMode(v22, *(a1 + 64));
  CGContextSetTextPosition(v22, 0.0, 0.0);
  transform.a = 0.0;
  transform.b = 0.0;
  CTFontDrawGlyphs(CopyWithAttributes, (a1 + 128), &transform, 1uLL, v22);
  CFRelease(CopyWithAttributes);
  CGContextRestoreGState(v22);
  CGContextSetBlendMode(v22, kCGBlendModeClear);
  CGContextSetLineWidth(v22, *(a1 + 120));
  v46.origin.x = 0.0;
  v46.origin.y = 0.0;
  v46.size.width = v23;
  v46.size.height = v24;
  CGContextStrokeRect(v22, v46);
  CGContextFlush(v22);
  CGContextRelease(v22);
}

void TXDrawGlyphToBitmap(uint64_t a1, const PCString *a2, int a3, int a4, CGColorSpace *a5, char a6, void **a7, float64x2_t *a8, double a9, double a10, double *a11, double *a12, char a13, char a14)
{
  v18 = a4;
  v42[0] = 0uLL;
  __asm { FMOV            V0.2D, #-1.0 }

  v42[1] = _Q0;
  v43 = 0;
  v44 = 0;
  v41 = 0.0;
  v40 = 0;
  TXGetGlyphBitmapInfo(a1, a2, a4, a8, a11, a12, v42, &v41, a9, a10, &v40, a14);
  v32 = 0;
  v33 = 0;
  v34 = 0x3FF0000000000000;
  v35 = 0;
  v36 = 0;
  v37 = 1;
  memset(v38, 0, sizeof(v38));
  v28 = *a11;
  v29 = v41;
  v30 = v40;
  PCString::PCString(&v31, a2 + 14);
  TXCGRenderParams::TXCGRenderParams(v39, &v32, a3, v18, a8, v30, a12, v42, a9, a10, v28, v29, a13, a6, 0, &v31, a2[15].var0);
  PCString::~PCString(&v31);
  if (v38[2] == 1 && v35)
  {
    MEMORY[0x2666E9F00](v35, 0x1000C40FF89C88ELL);
  }

  TXDrawGlyphToBitmap(v39, a5, a7);
  TXCGRenderParams::~TXCGRenderParams(v39);
}

uint64_t TXCGRenderParams::TXCGRenderParams(uint64_t a1, uint64_t a2, int a3, char a4, _OWORD *a5, __int16 a6, uint64_t a7, _OWORD *a8, double a9, double a10, double a11, double a12, char a13, char a14, uint64_t a15, const PCString *a16, CFTypeRef cf)
{
  v27 = TXGlyphRequest::TXGlyphRequest(a1, a2);
  *(v27 + 48) = a3;
  *(v27 + 56) = a9;
  *(v27 + 64) = a4;
  *(v27 + 72) = a10;
  v28 = a5[1];
  *(v27 + 80) = *a5;
  *(v27 + 96) = v28;
  *(v27 + 112) = a11;
  *(v27 + 120) = a12;
  *(v27 + 128) = a6;
  *(v27 + 136) = a7;
  v29 = a8[1];
  *(v27 + 144) = *a8;
  *(v27 + 160) = v29;
  *(v27 + 176) = a8[2];
  *(v27 + 192) = a13;
  *(v27 + 193) = a14;
  *(v27 + 200) = a15;
  PCString::PCString((v27 + 208), a16);
  *(a1 + 216) = cf;
  if (cf)
  {
    CFRetain(cf);
  }

  return a1;
}

void sub_25FAC1A24(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 208));
  if (*(v1 + 39) == 1)
  {
    TXCGRenderParams::TXCGRenderParams(v1);
  }

  _Unwind_Resume(a1);
}

uint64_t TXGlyphRequest::TXGlyphRequest(uint64_t result, uint64_t a2)
{
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  *(result + 16) = *(a2 + 16);
  *(result + 24) = *(a2 + 24);
  *(result + 32) = *(a2 + 32);
  v2 = *(a2 + 36);
  *(result + 36) = v2;
  *(result + 40) = *(a2 + 40);
  if ((v2 & 0x1000000) != 0)
  {
    operator new();
  }

  return result;
}

double PCMatrix33Tmpl<double>::operator=(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 48) = *(a2 + 48);
    *(a1 + 56) = *(a2 + 56);
    result = *(a2 + 64);
    *(a1 + 64) = result;
  }

  return result;
}

void TXCGRenderParams::~TXCGRenderParams(PCString *this)
{
  var0 = this[27].var0;
  if (var0)
  {
    CFRelease(var0);
  }

  PCString::~PCString(this + 26);
  if (HIBYTE(this[4].var0) == 1)
  {
    v3 = this[3].var0;
    if (v3)
    {
      MEMORY[0x2666E9F00](v3, 0x1000C40FF89C88ELL);
    }

    this[3].var0 = 0;
  }
}

uint64_t TXCGRenderParams::TXCGRenderParams(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    result = MEMORY[0x2666E9F00](result, 0x1000C40FF89C88ELL);
  }

  *(a1 + 24) = 0;
  return result;
}

void TXDiscontinuousSelection::TXDiscontinuousSelection(TXDiscontinuousSelection *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  std::vector<unsigned int>::resize(this, 0);
}

void sub_25FAC1C34(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::resize(std::vector<int> *this, std::vector<int>::size_type __sz)
{
  v2 = this->__end_ - this->__begin_;
  if (__sz <= v2)
  {
    if (__sz < v2)
    {
      this->__end_ = &this->__begin_[__sz];
    }
  }

  else
  {
    std::vector<unsigned int>::__append(this, __sz - v2);
  }
}

void TXDiscontinuousSelection::addChar(TXDiscontinuousSelection *this, int a2)
{
  if ((TXDiscontinuousSelection::contains(this, a2, &v15) & 1) == 0)
  {
    v5 = *(this + 1);
    v4 = *(this + 2);
    if (v5 >= v4)
    {
      v7 = *this;
      v8 = v5 - *this;
      v9 = v8 >> 2;
      v10 = (v8 >> 2) + 1;
      if (v10 >> 62)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 1 > v10)
      {
        v10 = v11 >> 1;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
      v13 = 0x3FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      if (v13)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v13);
      }

      *(4 * v9) = a2;
      v6 = 4 * v9 + 4;
      memcpy(0, v7, v8);
      v14 = *this;
      *this = 0;
      *(this + 1) = v6;
      *(this + 2) = 0;
      if (v14)
      {
        operator delete(v14);
      }
    }

    else
    {
      *v5 = a2;
      v6 = (v5 + 1);
    }

    *(this + 1) = v6;
  }
}

uint64_t TXDiscontinuousSelection::contains(TXDiscontinuousSelection *this, int a2, unsigned int *a3)
{
  v3 = *this;
  v4 = *(this + 1);
  if (*this == v4)
  {
    return 0;
  }

  v5 = 0;
  v6 = *this;
  while (1)
  {
    if ((v4 - v3) >> 2 <= v5)
    {
      std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
    }

    if (*(v3 + 4 * v5) == a2)
    {
      break;
    }

    v6 += 4;
    ++v5;
    if (v6 == v4)
    {
      return 0;
    }
  }

  *a3 = v5;
  return 1;
}

uint64_t TXDiscontinuousSelection::getCharOffsetAt(TXDiscontinuousSelection *this, unsigned int a2)
{
  if (a2 >= ((*(this + 1) - *this) >> 2))
  {
    std::vector<unsigned int>::__throw_out_of_range[abi:ne200100]();
  }

  return *(*this + 4 * a2);
}

void std::vector<unsigned int>::__append(std::vector<int> *this, std::vector<int>::size_type __n)
{
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n <= value - end)
  {
    if (__n)
    {
      bzero(this->__end_, 4 * __n);
      end += __n;
    }

    this->__end_ = end;
  }

  else
  {
    begin = this->__begin_;
    v7 = end - this->__begin_;
    v8 = __n + (v7 >> 2);
    if (v8 >> 62)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v9 = value - begin;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, v10);
    }

    v11 = (4 * (v7 >> 2));
    bzero(v11, 4 * __n);
    memcpy(0, begin, v7);
    v12 = this->__begin_;
    this->__begin_ = 0;
    this->__end_ = &v11[4 * __n];
    this->__end_cap_.__value_ = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void std::vector<TXLineMetrics>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v10 = (v4 - *a1) >> 6;
    v11 = v10 + 1;
    if ((v10 + 1) >> 58)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v12 = v5 - *a1;
    if (v12 >> 5 > v11)
    {
      v11 = v12 >> 5;
    }

    if (v12 >= 0x7FFFFFFFFFFFFFC0)
    {
      v13 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v11;
    }

    if (v13)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<TXLineMetrics>>(a1, v13);
    }

    v14 = (v10 << 6);
    v15 = *a2;
    v16 = a2[1];
    v17 = a2[3];
    v14[2] = a2[2];
    v14[3] = v17;
    *v14 = v15;
    v14[1] = v16;
    v9 = (v10 << 6) + 64;
    v18 = *a1;
    v19 = a1[1];
    v20 = (v10 << 6) + *a1 - v19;
    if (*a1 != v19)
    {
      v21 = ((v10 << 6) + *a1 - v19);
      do
      {
        v22 = *v18;
        v23 = v18[1];
        v24 = v18[3];
        v21[2] = v18[2];
        v21[3] = v24;
        *v21 = v22;
        v21[1] = v23;
        v21 += 4;
        v18 += 4;
      }

      while (v18 != v19);
      v18 = *a1;
    }

    *a1 = v20;
    a1[1] = v9;
    a1[2] = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    v8 = a2[3];
    v4[2] = a2[2];
    v4[3] = v8;
    *v4 = v6;
    v4[1] = v7;
    v9 = (v4 + 4);
  }

  a1[1] = v9;
}

void TXParagraphStyle::TXParagraphStyle(TXParagraphStyle *this, TXTextLayout *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  *(this + 131) = 0;
  *(this + 1056) = 1;
  *this = &unk_2871ECA20;
  *(this + 1) = &unk_2871ECA80;
  *(this + 130) = &unk_2871ECAB0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  PCURL::PCURL(v15, @"Text Paragraph Style Heading");
  Instance = TXParagraphStyleFolder_Factory::getInstance(v4);
  OZChannelFolder::OZChannelFolder((this + 40), Instance, v15, (a2 + 58880), 0x193u, 128, 0);
  *(this + 5) = &unk_2871ECB20;
  *(this + 7) = &unk_2871ECDF8;
  PCString::~PCString(v15);
  PCURL::PCURL(v15, @"Text Layout Alignment Enum");
  PCURL::PCURL(&v14, @"Text Layout Alignment");
  OZChannelEnum::OZChannelEnum((this + 168), 0, v15, &v14, (this + 40), 0x191u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCString::~PCString(v15);
  PCURL::PCURL(v15, @"Text Layout Justification Enum");
  PCURL::PCURL(&v14, @"Text Layout Justification");
  OZChannelEnum::OZChannelEnum((this + 424), 0, v15, &v14, (this + 40), 0x192u, 0, 0, 0);
  PCString::~PCString(&v14);
  PCString::~PCString(v15);
  PCURL::PCURL(v15, @"Text Layout Line Spacing");
  v7 = TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::getInstance(v6);
  OZChannelDouble::OZChannelDouble((this + 680), 0.0, v15, (this + 40), 0x194u, 0, 0, v7);
  PCString::~PCString(v15);
  *(this + 106) = 0;
  *(this + 52) = 0u;
  *&v15[0].var0 = 0u;
  v16 = 0u;
  __asm { FMOV            V1.2D, #-1.0 }

  v17 = 0u;
  v18 = _Q1;
  v13 = _Q1;
  *(this + 111) = 0;
  *(this + 113) = 0;
  *(this + 112) = 0;
  std::vector<TXLineMetrics>::__init_with_size[abi:ne200100]<TXLineMetrics const*,TXLineMetrics const*>(this + 888, v15, v19, 1uLL);
  PCWorkingColorVector::PCWorkingColorVector((this + 928));
  *(this + 118) = a2;
  *(this + 119) = 0;
  *(this + 240) = 0;
  *(this + 121) = 0;
  *(this + 61) = 0u;
  *(this + 1000) = 0u;
  *(this + 124) = this + 1000;
  PCSharedCount::PCSharedCount(this + 127);
  *(this + 129) = 0;
  *(this + 856) = 0u;
  *(this + 872) = 1;
  *(this + 219) = 1;
  *&v15[0].var0 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = v13;
  std::vector<TXLineMetrics>::push_back[abi:ne200100](this + 111, v15);
  operator new[]();
}

void sub_25FAC2430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, PCString a14, PCString a15)
{
  PCString::~PCString((v15 + 1016));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v15 + 992, *v20);
  v22 = *v18;
  if (*v18)
  {
    *(v15 + 976) = v22;
    operator delete(v22);
  }

  v23 = *v17;
  if (*v17)
  {
    *(v15 + 896) = v23;
    operator delete(v23);
  }

  v24 = *(v15 + 832);
  if (v24)
  {
    *(v15 + 840) = v24;
    operator delete(v24);
  }

  OZChannel::~OZChannel((v15 + 680));
  OZChannelEnum::~OZChannelEnum((v15 + 424));
  OZChannelEnum::~OZChannelEnum((v15 + 168));
  OZChannelFolder::~OZChannelFolder(v16);
  v25 = *v19;
  if (*v19)
  {
    *(v15 + 24) = v25;
    operator delete(v25);
  }

  *(v15 + 1040) = &unk_2872DEA38;
  *(v15 + 1056) = 0;
  PCWeakCount::~PCWeakCount((v15 + 1048));
  _Unwind_Resume(a1);
}

void *TXParagraphStyle::cloneBehaviorsFromSource(void *this, const TXParagraphStyle *a2)
{
  if (this[118])
  {
    v2 = this;
    TXParagraphStyle::getBehaviors(a2, &v11);
    for (i = v12; i != &v11; i = i[1])
    {
      v4 = i[2];
      if (v4)
      {
        if (v5)
        {
          v6 = v5;
          ChanBase = OZSingleChannelBehavior::getChanBase(v5);
          if (ChanBase)
          {
            v8 = (*(**(v6 + 1) + 24))(*(v6 + 1), v6, 2);
            if (v8)
            {
              if (v9)
              {
                v10 = v9;
                if (OZChannelFolder::findMatchingDescendant((v2 + 40), ChanBase))
                {
                  (*(*v10 + 224))(v10);
                }
              }
            }
          }
        }
      }
    }

    return std::__list_imp<unsigned int>::clear(&v11);
  }

  return this;
}

void sub_25FAC27E4(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void TXParagraphStyle::TXParagraphStyle(TXParagraphStyle *this, TXTextLayout *a2, TXParagraphStyle *a3)
{
  *(this + 131) = 0;
  *(this + 1056) = 1;
  *this = &unk_2871ECA20;
  *(this + 1) = &unk_2871ECA80;
  *(this + 130) = &unk_2871ECAB0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  PCURL::PCURL(v11, @"Text Paragraph Style Heading");
  Instance = TXParagraphStyleFolder_Factory::getInstance(v6);
  OZChannelFolder::OZChannelFolder((this + 40), Instance, v11, (a2 + 58880), 0x193u, 128, 0);
  *(this + 5) = &unk_2871ECB20;
  *(this + 7) = &unk_2871ECDF8;
  PCString::~PCString(v11);
  OZChannelEnum::OZChannelEnum((this + 168), (a3 + 168), (this + 40));
  OZChannelEnum::OZChannelEnum((this + 424), (a3 + 424), (this + 40));
  OZChannel::OZChannel((this + 680), (a3 + 680), (this + 40));
  *(this + 85) = &unk_287245C60;
  *(this + 87) = &unk_287245FC0;
  *(this + 104) = 0;
  *(this + 106) = 0;
  *(this + 105) = 0;
  *(this + 111) = 0;
  *(this + 113) = 0;
  *(this + 112) = 0;
  std::vector<TXLineMetrics>::__init_with_size[abi:ne200100]<TXLineMetrics const*,TXLineMetrics const*>(this + 888, *(a3 + 111), *(a3 + 112), (*(a3 + 112) - *(a3 + 111)) >> 6);
  PCWorkingColorVector::PCWorkingColorVector((this + 928));
  *(this + 118) = a2;
  *(this + 119) = 0;
  *(this + 240) = 0;
  *(this + 121) = 0;
  *(this + 61) = 0u;
  *(this + 1000) = 0u;
  *(this + 124) = this + 1000;
  PCSharedCount::PCSharedCount(this + 127);
  *(this + 129) = 0;
  v8 = *(a3 + 104);
  if (((*(a3 + 105) - v8) & 0x7FFFFFFF8) != 0)
  {
    v9 = MEMORY[0x277CC08F0];
    v10 = *v8;
    OZChannel::getValueAsDouble((*v8 + 136), MEMORY[0x277CC08F0], 0.0);
    OZChannel::getValueAsInt((v10 + 288), v9, 0.0);
    TXParagraphStyle::insertTab();
  }

  *(this + 107) = *(a3 + 107);
  *(this + 108) = *(a3 + 108);
  *(this + 872) = *(a3 + 872);
  *(this + 219) = *(a3 + 219);
  operator new[]();
}

void sub_25FAC2C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void **a10, void **a11, uint64_t a12, PCString a13)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v13 + 992, *v17);
  v19 = *v16;
  if (*v16)
  {
    *(v13 + 976) = v19;
    operator delete(v19);
  }

  v20 = *a10;
  if (*a10)
  {
    *(v13 + 896) = v20;
    operator delete(v20);
  }

  v21 = *(v13 + 832);
  if (v21)
  {
    *(v13 + 840) = v21;
    operator delete(v21);
  }

  OZChannel::~OZChannel(v15);
  OZChannelEnum::~OZChannelEnum((v13 + 424));
  OZChannelEnum::~OZChannelEnum((v13 + 168));
  OZChannelFolder::~OZChannelFolder(v14);
  v22 = *a11;
  if (*a11)
  {
    *(v13 + 24) = v22;
    operator delete(v22);
  }

  *(v13 + 1040) = &unk_2872DEA38;
  *(v13 + 1056) = 0;
  PCWeakCount::~PCWeakCount((v13 + 1048));
  _Unwind_Resume(a1);
}

void TXParagraphStyle::~TXParagraphStyle(TXParagraphStyle *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + 1) = a2[3];
  *(this + *(v3 - 24)) = a2[4];
  v4 = *(this + 118);
  v19 = *(this + 129);
  TXTextLayout::invalidateTextObjectsInRange(v4, &v19);
  *(this + 129) = 0;
  v5 = *(this + 118);
  v6 = v5 + 1200;
  for (i = *(v5 + 1208); i != v6; i = *(i + 8))
  {
    v8 = *(i + 16);
    (*(*v8 + 208))(v8, this + 168);
    (*(*v8 + 208))(v8, this + 680);
  }

  v9 = *(this + 104);
  v10 = *(this + 105);
  if (v9 != v10)
  {
    do
    {
      v12 = *v9++;
      v11 = v12;
      OZChannelFolder::removeDescendant((*(this + 118) + 58880), (v12 + 8));
      if (v12)
      {
        (*(*v11 + 8))(v11);
      }
    }

    while (v9 != v10);
    v9 = *(this + 104);
  }

  *(this + 105) = v9;
  v13 = *(this + 119);
  if (v13)
  {
    CFRelease(v13);
  }

  OZChannelFolder::removeDescendant((*(this + 118) + 58880), (this + 40));
  v14 = *(this + 114);
  if (v14)
  {
    MEMORY[0x2666E9ED0](v14, 0x1000C8052888210);
  }

  *(this + 114) = 0;
  PCString::~PCString(this + 127);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 992, *(this + 125));
  v15 = *(this + 121);
  if (v15)
  {
    *(this + 122) = v15;
    operator delete(v15);
  }

  v16 = *(this + 111);
  if (v16)
  {
    *(this + 112) = v16;
    operator delete(v16);
  }

  v17 = *(this + 104);
  if (v17)
  {
    *(this + 105) = v17;
    operator delete(v17);
  }

  OZChannel::~OZChannel((this + 680));
  OZChannelEnum::~OZChannelEnum((this + 424));
  OZChannelEnum::~OZChannelEnum((this + 168));
  OZChannelFolder::~OZChannelFolder((this + 40));
  v18 = *(this + 2);
  if (v18)
  {
    *(this + 3) = v18;
    operator delete(v18);
  }
}

void TXParagraphStyle::~TXParagraphStyle(TXParagraphStyle *this)
{
  *(v1 + 1040) = &unk_2872DEA38;
  *(v1 + 1056) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1048));
}

{
  *(v1 + 1040) = &unk_2872DEA38;
  *(v1 + 1056) = 0;
  PCWeakCount::~PCWeakCount((v1 + 1048));

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXParagraphStyle::~TXParagraphStyle(TXParagraphStyle *this)
{
  *(this + 129) = &unk_2872DEA38;
  *(this + 1048) = 0;

  PCWeakCount::~PCWeakCount(this + 130);
}

{
  TXParagraphStyle::~TXParagraphStyle((this - 8));
}

void virtual thunk toTXParagraphStyle::~TXParagraphStyle(TXParagraphStyle *this)
{
  *(v1 + 1040) = &unk_2872DEA38;
  *(v1 + 1056) = 0;
  v2 = (v1 + 1048);

  PCWeakCount::~PCWeakCount(v2);
}

{
  TXParagraphStyle::~TXParagraphStyle((this + *(*this - 24)));
}

double TXParagraphStyle::dirty(TXParagraphStyle *this, int a2)
{
  *(this + 872) = a2;
  if (a2)
  {
    v3 = *(this + 118);
    v5 = *(this + 129);
    TXTextLayout::invalidateTextObjectsInRange(v3, &v5);
    result = 0.0;
    *(this + 129) = 0;
  }

  return result;
}

double TXParagraphStyle::getAscenderForCharOffset(TXParagraphStyle *this, unsigned int a2)
{
  if (*(this + 219) == 1)
  {
    v2 = *(this + 111);
  }

  else
  {
    v3 = 0;
    v4 = *(this + 114);
    v5 = (*(this + 219) - 1);
    while (1)
    {
      v6 = *v4++;
      if (v6 > a2)
      {
        break;
      }

      v3 -= 64;
      if (!--v5)
      {
        v2 = *(this + 111) + ((*(this + 219) - 1) << 6);
        return *v2;
      }
    }

    v2 = *(this + 111) - v3;
  }

  return *v2;
}

double TXParagraphStyle::getDescenderForCharOffset(TXParagraphStyle *this, unsigned int a2)
{
  if (*(this + 219) == 1)
  {
    v2 = *(this + 111);
LABEL_7:
    v7 = v2 + 8;
  }

  else
  {
    v3 = *(this + 114);
    v4 = -8;
    v5 = (*(this + 219) - 1);
    while (1)
    {
      v6 = *v3++;
      if (v6 > a2)
      {
        break;
      }

      v4 -= 64;
      if (!--v5)
      {
        v2 = *(this + 111) + ((*(this + 219) - 1) << 6);
        goto LABEL_7;
      }
    }

    v7 = *(this + 111) - v4;
  }

  return *v7;
}

uint64_t TXParagraphStyle::getLineMetrics@<X0>(uint64_t this@<X0>, int a2@<W1>, _OWORD *a3@<X8>)
{
  v3 = *(this + 888);
  if (a2 >= ((*(this + 896) - v3) >> 6))
  {
    v6 = 0uLL;
    *a3 = 0u;
    a3[1] = 0u;
    __asm { FMOV            V1.2D, #-1.0 }
  }

  else
  {
    v4 = (v3 + (a2 << 6));
    v5 = v4[1];
    *a3 = *v4;
    a3[1] = v5;
    v6 = v4[2];
    _Q1 = v4[3];
  }

  a3[2] = v6;
  a3[3] = _Q1;
  return this;
}

uint64_t std::vector<TXDirectionalRun>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<TXDirectionalRun>::__emplace_back_slow_path<TXDirectionalRun const&>(a1, a2);
  }

  else
  {
    v4 = *(a2 + 16);
    *v3 = *a2;
    *(v3 + 16) = v4;
    result = v3 + 24;
  }

  a1[1] = result;
  return result;
}

uint64_t TXParagraphStyle::shiftDirectionalRunsBy(uint64_t this, int a2)
{
  v2 = *(this + 968);
  v3 = *(this + 976) - v2;
  if (v3)
  {
    v4 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    v5 = 1;
    do
    {
      *v2 += a2;
      v2 += 3;
    }

    while (v4 > v5++);
  }

  return this;
}

double TXParagraphStyle::setGlyphRange(uint64_t a1, double *a2)
{
  if ((a1 + 1032) != a2)
  {
    result = *a2;
    *(a1 + 1032) = *a2;
  }

  return result;
}

void TXParagraphStyle::shiftCaretInsertionIndices(TXParagraphStyle *this, int a2)
{
  v15[0] = 0;
  v15[1] = 0;
  v14 = v15;
  v3 = *(this + 124);
  v4 = this + 1000;
  if (v3 != this + 1000)
  {
    v5 = a2;
    v11 = vdupq_n_s64(a2);
    do
    {
      v12 = *(v3 + 40);
      v13 = *(v3 + 4) + v5;
      v15[3] = &v13;
      v6 = std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(&v14, &v13);
      v7.i64[0] = 0xFFFFFFFFLL;
      v7.i64[1] = 0xFFFFFFFFLL;
      *(v6 + 5) = vbslq_s8(vceqq_s64(v12, v7), v7, vaddq_s64(v12, v11));
      v8 = *(v3 + 1);
      if (v8)
      {
        do
        {
          v9 = v8;
          v8 = *v8;
        }

        while (v8);
      }

      else
      {
        do
        {
          v9 = *(v3 + 2);
          v10 = *v9 == v3;
          v3 = v9;
        }

        while (!v10);
      }

      v3 = v9;
    }

    while (v9 != v4);
  }

  if ((this + 992) != &v14)
  {
    std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__tree_node<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,void *> *,long>>(this + 124, v14, v15);
  }

  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(&v14, v15[0]);
}

double TXParagraphStyle::clearLeftRightCaretPositionMaps(TXParagraphStyle *this)
{
  v2 = (this + 1000);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 992, *(this + 125));
  *(this + 124) = v2;
  result = 0.0;
  *v2 = 0u;
  return result;
}

void *TXParagraphStyle::setCaretPositionPair(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7[0] = a2;
  v7[2] = v7;
  result = std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(a1 + 992, v7);
  result[5] = a3;
  result[6] = a4;
  return result;
}

uint64_t TXParagraphStyle::setLineBreaks(TXParagraphStyle *this, unint64_t *a2, int a3)
{
  result = *(this + 114);
  if (result)
  {
    result = MEMORY[0x2666E9ED0](result, 0x1000C8052888210);
  }

  *(this + 114) = 0;
  if (a3)
  {
    operator new[]();
  }

  return result;
}

uint64_t TXParagraphStyle::shiftLineBreaksBy(uint64_t this, int a2)
{
  if (*(this + 876) != 1)
  {
    v2 = 0;
    v3 = *(this + 912);
    do
    {
      *(v3 + 4 * v2++) += a2;
    }

    while (v2 < (*(this + 876) - 1));
  }

  return this;
}

void std::vector<TXTabStop *>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<double>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t TXParagraphStyle::getTabs@<X0>(TXParagraphStyle *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return std::vector<TXTabStop *>::__init_with_size[abi:ne200100]<TXTabStop **,TXTabStop **>(a2, *(this + 104), *(this + 105), (*(this + 105) - *(this + 104)) >> 3);
}

uint64_t TXParagraphStyle::writeHeader(TXParagraphStyle *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &TXParagraphStyleScope);
  (*(*a2 + 16))(a2, 500);
  result = (*(*a2 + 232))(a2);
  if ((result & 1) == 0)
  {
    v5 = *(this + 16);
    v6 = *(*a2 + 144);

    return v6(a2, 7, v5);
  }

  return result;
}

uint64_t TXParagraphStyle::writeBody(TXParagraphStyle *this, PCSerializerWriteStream *a2)
{
  if (OZChannel::getValueAsInt((this + 168), MEMORY[0x277CC08F0], 0.0))
  {
    (*(*(this + 23) + 16))(this + 184, a2, 0);
    (*(*(this + 23) + 24))(this + 184, a2, 0, 1, 1);
    (*(*a2 + 24))(a2);
  }

  OZChannel::getValueAsDouble((this + 680), MEMORY[0x277CC08F0], 0.0);
  if (v4 != 0.0)
  {
    (*(*(this + 87) + 16))(this + 696, a2, 0);
    (*(*(this + 87) + 24))(this + 696, a2, 0, 1, 1);
    (*(*a2 + 24))(a2);
  }

  if (*(this + 105) != *(this + 104))
  {
    v5 = 0;
    v6 = 1;
    v7 = MEMORY[0x277CC08F0];
    do
    {
      (*(*a2 + 16))(a2, 501);
      OZChannel::getValueAsDouble((*(*(this + 104) + 8 * v5) + 136), v7, 0.0);
      (*(*a2 + 184))(a2, 1);
      ValueAsInt = OZChannel::getValueAsInt((*(*(this + 104) + 8 * v5) + 288), v7, 0.0);
      (*(*a2 + 152))(a2, 2, ValueAsInt);
      (*(*a2 + 24))(a2);
      v5 = v6++;
    }

    while (v5 < (*(this + 105) - *(this + 104)) >> 3);
  }

  return PCSerializerWriteStream::popScope(a2);
}

uint64_t TXParagraphStyle::parseElement(TXParagraphStyle *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v16 = 0;
  v6 = *(a3 + 2);
  if (v6 == 501)
  {
    v15 = 0.0;
    v14 = 0;
    PCSerializerReadStream::getAttributeAsDouble(a2, a3, 1, &v15);
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 2, &v14);
    TXParagraphStyle::insertTab();
  }

  if (v6 == 110)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v16 + 4);
    if (HIDWORD(v16) == 401)
    {
      if ((*(this + 1028) & 1) == 0)
      {
        PCSerializerReadStream::pushHandler(a2, (this + 184));
        if (PCSerializerReadStream::getAttributeAsInt32(a2, a3, 115, &v16))
        {
          if (v13)
          {
            OZChannel::setDefaultValue(v13, v16);
          }
        }

        if (PCSerializerReadStream::getAttributeAsInt32(a2, a3, 114, &v16))
        {
          if (v11)
          {
            v12 = v16;
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      if (HIDWORD(v16) != 404)
      {
        if (HIDWORD(v16) == 402)
        {
          PCSerializerReadStream::pushHandler(a2, (this + 184));
          if (PCSerializerReadStream::getAttributeAsInt32(a2, a3, 114, &v16))
          {
            if (v16 == 2)
            {
              if (v7)
              {
                OZChannel::setInitialValue(v7, 6.0, 0);
                *(this + 1028) = 1;
              }
            }
          }

          if (PCSerializerReadStream::getAttributeAsInt32(a2, a3, 115, &v16))
          {
            if (v8)
            {
              OZChannel::setDefaultValue(v8, v16);
            }
          }
        }

        return 1;
      }

      PCSerializerReadStream::pushHandler(a2, (this + 696));
      v15 = 0.0;
      if (PCSerializerReadStream::getAttributeAsDouble(a2, a3, 115, &v15))
      {
        if (v10)
        {
          OZChannel::setDefaultValue(v10, v15);
        }
      }

      if (PCSerializerReadStream::getAttributeAsDouble(a2, a3, 114, &v15))
      {
        if (v11)
        {
          v12 = v15;
LABEL_28:
          OZChannel::setInitialValue(v11, v12, 0);
        }
      }
    }
  }

  return 1;
}

void TXParagraphStyle::calcHashForStateAndSetDirty(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v1;
  v19[520] = *MEMORY[0x277D85DE8];
  PCHashWriteStream::PCHashWriteStream(v19);
  v17 = *v9;
  OZChannel::calcHashForState((v10 + 168), v19, &v17);
  v17 = *v9;
  OZChannel::calcHashForState((v10 + 424), v19, &v17);
  v17 = *v9;
  (*(*(v7 + 7683) + 448))(v7 + 7683, v19, &v17);
  v11 = *PCHashWriteStream::getHash(v19)->i8;
  *&v17.value = v11;
  v12 = *(v10 + 856);
  if (v12 < *(v10 + 864) + v12)
  {
    do
    {
      StyleRunAtCharOffset = TXTextLayout::getStyleRunAtCharOffset(v7, v12);
      v15 = *(StyleRunAtCharOffset + 24);
      v18 = &v15;
      v16 = *(std::__tree<std::__value_type<unsigned int,PCHash128>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCHash128>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCHash128>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(v5, &v15) + 2);
      PCHash128::operator+=(&v17, &v16);
      v12 = *(StyleRunAtCharOffset + 28) + *(StyleRunAtCharOffset + 24);
    }

    while (v12 < *(v10 + 864) + *(v10 + 856));
    v11 = *&v17.value;
  }

  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vceqq_s32(*(v10 + 928), v11)))))
  {
    *(v10 + 928) = *&v17.value;
    if (v3)
    {
      *(v10 + 872) = 1;
      v14 = *(v10 + 944);
      *&v16 = *(v10 + 1032);
      TXTextLayout::invalidateTextObjectsInRange(v14, &v16);
      *(v10 + 1032) = 0;
    }
  }

  PCHashWriteStream::~PCHashWriteStream(v19);
}

void sub_25FAC40DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  PCHashWriteStream::~PCHashWriteStream(va);
  _Unwind_Resume(a1);
}

int8x8_t *TXParagraphStyle::getStaticHash(uint64_t a1, const void *a2)
{
  (*(*a2 + 40))(a2);
  v4 = *(a1 + 832);
  if (*(a1 + 840) != v4)
  {
    v5 = 0;
    v6 = 1;
    v7 = MEMORY[0x277CC08F0];
    do
    {
      OZChannel::getValueAsDouble((*(v4 + 8 * v5) + 136), v7, 0.0);
      (*(*a2 + 88))(a2);
      ValueAsInt = OZChannel::getValueAsInt((*(*(a1 + 832) + 8 * v5) + 288), v7, 0.0);
      (*(*a2 + 48))(a2, ValueAsInt);
      v5 = v6;
      v4 = *(a1 + 832);
      ++v6;
    }

    while (v5 < (*(a1 + 840) - v4) >> 3);
  }

  if (!v9)
  {
    __cxa_bad_cast();
  }

  return PCHashWriteStream::getHash(v9);
}

void TXParagraphStyle::setAttributedString(TXParagraphStyle *this, __CFAttributedString *a2)
{
  v4 = *(this + 119);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 119) = a2;
}

void TXParagraphStyle::getBehaviors(TXParagraphStyle *this@<X0>, void *a2@<X8>)
{
  *a2 = a2;
  a2[1] = a2;
  a2[2] = 0;
  OZBehavior::GetBehaviorsAffectingChannel(this + 5, a2, 1);
}

uint64_t TXParagraphStyleFolder_Factory::getInstance(TXParagraphStyleFolder_Factory *this)
{
  if (atomic_load_explicit(&TXParagraphStyleFolder_Factory::_instanceOnce, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXParagraphStyleFolder_Factory::_instanceOnce, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXParagraphStyleFolder_Factory::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXParagraphStyleFolder_Factory::_instance;
}

uint64_t TXParagraphStyleFolder::parseElement(OZChannelFolder *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  v7 = 0;
  if (*(a3 + 2) == 110)
  {
    PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 111, &v7);
    if (v7 == 501)
    {
      return 1;
    }

    else
    {
      return OZChannelFolder::parseElement(this, a2, a3);
    }
  }

  else
  {

    return OZChannelFolder::parseElement(this, a2, a3);
  }
}

void TXParagraphStyleFolder::~TXParagraphStyleFolder(OZChannelFolder *this)
{
  OZChannelFolder::~OZChannelFolder(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXParagraphStyleFolder::~TXParagraphStyleFolder(TXParagraphStyleFolder *this)
{
  OZChannelFolder::~OZChannelFolder((this - 16));
}

{
  OZChannelFolder::~OZChannelFolder((this - 16));

  JUMPOUT(0x2666E9F00);
}

uint64_t TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::getInstance(TXParagraphStyle::TXParagraphStyle_lineSpacingInfo *this)
{
  if (atomic_load_explicit(&TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::getInstance(void)::TXParagraphStyle_lineSpacingInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::getInstance(void)::TXParagraphStyle_lineSpacingInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::_TXParagraphStyle_lineSpacingInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::_TXParagraphStyle_lineSpacingInfo)
  {
    operator new();
  }
}

TXParagraphStyle::TXParagraphStyle_lineSpacingInfo *TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::TXParagraphStyle_lineSpacingInfo(TXParagraphStyle::TXParagraphStyle_lineSpacingInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, -100.0, 100.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2871ECFA0;
  *(this + 10) = &unk_2871ECFC0;
  return this;
}

void TXParagraphStyle::TXParagraphStyle_lineSpacingInfo::~TXParagraphStyle_lineSpacingInfo(TXParagraphStyle::TXParagraphStyle_lineSpacingInfo *this)
{
  PCSingleton::~PCSingleton((this + 80));

  OZChannelInfo::~OZChannelInfo(this);
}

{
  PCSingleton::~PCSingleton((this + 80));
  OZChannelInfo::~OZChannelInfo(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXParagraphStyle::TXParagraphStyle_lineSpacingInfo::~TXParagraphStyle_lineSpacingInfo(TXParagraphStyle::TXParagraphStyle_lineSpacingInfo *this)
{
  v1 = (this - 80);
  PCSingleton::~PCSingleton(this);

  OZChannelInfo::~OZChannelInfo(v1);
}

{
  v1 = (this - 80);
  PCSingleton::~PCSingleton(this);
  OZChannelInfo::~OZChannelInfo(v1);

  JUMPOUT(0x2666E9F00);
}

void OZChannelDouble::OZChannelDouble(OZChannelDouble *this, double a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelDouble_FactoryBase = getOZChannelDouble_FactoryBase();
  OZChannel::OZChannel(this, OZChannelDouble_FactoryBase, a3, a4, a5, a6, a7, a8);
  *this = &unk_287245C60;
  *(this + 2) = &unk_287245FC0;
  OZChannelDoubleInfo = OZChannelDouble::createOZChannelDoubleInfo(v17);
  if (a8)
  {
    v19 = *(this + 17);
  }

  else
  {
    v19 = OZChannelDouble::_OZChannelDoubleInfo;
    *(this + 17) = OZChannelDouble::_OZChannelDoubleInfo;
  }

  *(this + 16) = v19;
  OZChannelDouble::createOZChannelDoubleImpl(OZChannelDoubleInfo);
  if (a7)
  {
    v20 = *(this + 15);
  }

  else
  {
    v20 = OZChannelDouble::_OZChannelDoubleImpl;
    *(this + 15) = OZChannelDouble::_OZChannelDoubleImpl;
  }

  *(this + 14) = v20;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

void TXParagraphStyleFolder_Factory::TXParagraphStyleFolder_Factory(TXParagraphStyleFolder_Factory *this)
{
  v3 = xmmword_2603472C0;
  v4 = xmmword_2603472B0;
  v2 = OZFactory::OZFactory(this, &v4, &v3, 1);
  *v2 = &unk_2871ED158;
  PCSingleton::PCSingleton((v2 + 16), 0);
  *this = &unk_2871ED018;
  *(this + 16) = &unk_2871ED0E8;
}

void TXParagraphStyleFolder_Factory::~TXParagraphStyleFolder_Factory(TXParagraphStyleFolder_Factory *this)
{
  PCSingleton::~PCSingleton((this + 128));

  OZFactory::~OZFactory(this);
}

{
  PCSingleton::~PCSingleton((this + 128));
  OZFactory::~OZFactory(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toTXParagraphStyleFolder_Factory::~TXParagraphStyleFolder_Factory(TXParagraphStyleFolder_Factory *this)
{
  v1 = (this - 128);
  PCSingleton::~PCSingleton(this);

  OZFactory::~OZFactory(v1);
}

{
  TXParagraphStyleFolder_Factory::~TXParagraphStyleFolder_Factory((this - 128));
}

uint64_t std::vector<TXLineMetrics>::__init_with_size[abi:ne200100]<TXLineMetrics const*,TXLineMetrics const*>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<TXLineMetrics>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FAC4F04(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<TXLineMetrics>::__vallocate[abi:ne200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TXLineMetrics>>(a1, a2);
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TXLineMetrics>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::vector<TXDirectionalRun>::__emplace_back_slow_path<TXDirectionalRun const&>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<double>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v15 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<TXDirectionalRun>>(a1, v6);
  }

  v7 = 24 * v2;
  __p = 0;
  v12 = v7;
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  v13 = 24 * v2 + 24;
  v14 = 0;
  std::vector<TXDirectionalRun>::__swap_out_circular_buffer(a1, &__p);
  v9 = a1[1];
  if (v13 != v12)
  {
    v13 = (v13 - v12 - 24) % 0x18uLL + v12;
  }

  if (__p)
  {
    operator delete(__p);
  }

  return v9;
}

void sub_25FAC50CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<TXDirectionalRun>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = a2[1] + *result - v3;
  if (v3 != *result)
  {
    v5 = *result;
    v6 = a2[1] + *result - v3;
    do
    {
      v7 = *(v5 + 16);
      v8 = *v5;
      v5 = (v5 + 24);
      *v6 = v8;
      *(v6 + 16) = v7;
      v6 += 24;
    }

    while (v5 != v3);
  }

  a2[1] = v4;
  v9 = *result;
  *result = v4;
  result[1] = v2;
  a2[1] = v9;
  v10 = result[1];
  result[1] = a2[2];
  a2[2] = v10;
  v11 = result[2];
  result[2] = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<TXDirectionalRun>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long &&>,std::tuple<>>(uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = v2[4];
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t **std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::__assign_multi<std::__tree_const_iterator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__tree_node<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,void *> *,long>>(uint64_t **result, void *a2, void *a3)
{
  v5 = result;
  if (result[2])
  {
    v6 = *result;
    v7 = result[1];
    *result = (result + 1);
    v7[2] = 0;
    result[1] = 0;
    result[2] = 0;
    if (v6[1])
    {
      v8 = v6[1];
    }

    else
    {
      v8 = v6;
    }

    v12 = result;
    v13 = v8;
    v14 = v8;
    if (v8)
    {
      v13 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::__detach_next(v8);
      if (a2 != a3)
      {
        v9 = a2;
        do
        {
          v8[4] = v9[4];
          *(v8 + 5) = *(v9 + 5);
          std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::__node_insert_multi(v5, v8);
          v8 = v13;
          v14 = v13;
          if (v13)
          {
            v13 = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::__detach_next(v13);
          }

          v10 = v9[1];
          if (v10)
          {
            do
            {
              a2 = v10;
              v10 = *v10;
            }

            while (v10);
          }

          else
          {
            do
            {
              a2 = v9[2];
              v11 = *a2 == v9;
              v9 = a2;
            }

            while (!v11);
          }

          if (!v8)
          {
            break;
          }

          v9 = a2;
        }

        while (a2 != a3);
      }
    }

    result = std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](&v12);
  }

  if (a2 != a3)
  {
    std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::__emplace_multi<std::pair<unsigned long const,std::pair<unsigned long,unsigned long>> const&>();
  }

  return result;
}

void sub_25FAC5418(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::_DetachedTreeCache::~_DetachedTreeCache[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::__tree<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,std::pair<unsigned long,unsigned long>>>>::__node_insert_multi(uint64_t **a1, uint64_t *a2)
{
  v3 = a1 + 1;
  v4 = a1[1];
  if (v4)
  {
    do
    {
      while (1)
      {
        v3 = v4;
        if (a2[4] >= v4[4])
        {
          break;
        }

        v4 = *v4;
        v5 = v3;
        if (!*v3)
        {
          goto LABEL_8;
        }
      }

      v4 = v4[1];
    }

    while (v4);
    v5 = v3 + 1;
  }

  else
  {
    v5 = a1 + 1;
  }

LABEL_8:
  std::__tree<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::__map_value_compare<PVIGHGNodeCacheKey,std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>,std::less<PVIGHGNodeCacheKey>,true>,std::allocator<std::__value_type<PVIGHGNodeCacheKey,HGRef<HGNode>>>>::__insert_node_at(a1, v3, v5, a2);
  return a2;
}

uint64_t std::vector<TXTabStop *>::__init_with_size[abi:ne200100]<TXTabStop **,TXTabStop **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<HGRef<PVRenderJob>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_25FAC55A8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::__tree<std::__value_type<unsigned int,PCHash128>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCHash128>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCHash128>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    std::__tree<std::__value_type<unsigned int,PCHash128>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PCHash128>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PCHash128>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>();
  }

  v3 = *a2;
  while (1)
  {
    while (1)
    {
      v4 = v2;
      v5 = *(v2 + 28);
      if (v3 >= v5)
      {
        break;
      }

      v2 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= v3)
    {
      return v4;
    }

    v2 = v4[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void sub_25FAC56F0(_Unwind_Exception *a1)
{
  *v1 = 0;
  operator delete(v2);
  _Unwind_Resume(a1);
}

void *TXTabStop::TXTabStop(void *a1, TXParagraphStyle *a2, unsigned int a3, double a4)
{
  *a1 = &unk_2871ED228;
  v8 = (a1 + 1);
  PCURL::PCURL(&v12, @"Text Layout Tab Stop Heading");
  HeadingChannel = TXParagraphStyle::getHeadingChannel(a2);
  OZChannelFolder::OZChannelFolder(v8, &v12, HeadingChannel, 0x1F5u, 8u, 0);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Text Layout Tab Stop Position");
  OZChannelDouble::OZChannelDouble((a1 + 17), a4, &v12, v8, 0x1F6u, 0, 0, 0);
  PCString::~PCString(&v12);
  PCURL::PCURL(&v12, @"Text Layout Tab Stop Type Enum");
  PCURL::PCURL(&v11, @"Text Layout Tab Stop Type");
  OZChannelEnum::OZChannelEnum((a1 + 36), a3, &v12, &v11, v8, 0x1F7u, 0, 0, 0);
  PCString::~PCString(&v11);
  PCString::~PCString(&v12);
  OZChannel::setMin((a1 + 17), 0.0);
  return a1;
}

void sub_25FAC588C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  OZChannelEnum::~OZChannelEnum((v13 + 288));
  OZChannel::~OZChannel((v13 + 136));
  OZChannelFolder::~OZChannelFolder(v12);
  _Unwind_Resume(a1);
}

void TXTabStop::~TXTabStop(TXTabStop *this)
{
  *this = &unk_2871ED228;
  v2 = (this + 136);
  OZChannelFolder::removeDescendant((this + 8), (this + 136));
  OZChannelFolder::removeDescendant((this + 8), (this + 288));
  OZChannelEnum::~OZChannelEnum((this + 288));
  OZChannel::~OZChannel(v2);
  OZChannelFolder::~OZChannelFolder((this + 8));
}

{
  TXTabStop::~TXTabStop(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t TXTabStop::writeHeader(TXTabStop *this, PCSerializerWriteStream *a2)
{
  PCSerializerWriteStream::pushScope(a2, &TXTabStopScope);
  (*(*a2 + 16))(a2, 401);
  v4 = *(this + 19);
  this = (this + 152);
  (*(v4 + 16))(this, a2, 0);
  (*(*this + 24))(this, a2, 0, 1, 1);
  (*(*a2 + 24))(a2);
  (*(*(this + 19) + 16))(this + 152, a2, 0);
  (*(*(this + 19) + 24))(this + 152, a2, 0, 1, 1);
  v5 = *(*a2 + 24);

  return v5(a2);
}

uint64_t TXTabStop::parseElement(TXTabStop *this, PCSerializerReadStream *a2, PCStreamElement *a3)
{
  if (*(a3 + 2) == 401)
  {
    v11[5] = v3;
    v11[6] = v4;
    v11[0] = 0.0;
    v10 = 0;
    if (PCSerializerReadStream::getAttributeAsDouble(a2, a3, 1, v11))
    {
      OZChannel::setValue((this + 136), MEMORY[0x277CC08F0], v11[0], 0);
    }

    if (PCSerializerReadStream::getAttributeAsUInt32(a2, a3, 2, &v10))
    {
      LODWORD(v8) = v10;
      OZChannel::setValue((this + 288), MEMORY[0x277CC08F0], v8, 0);
    }
  }

  return 1;
}

uint64_t TXTextInput::create(TXTextInput *this, const PCString *a2)
{
  v4 = xmmword_2603473A0;
  SceneNode = OZApplication::createSceneNode(theApp, &v4);
  if (SceneNode)
  {
    return SceneNode - 200;
  }

  else
  {
    return 0;
  }
}

void TXTextInput::TXTextInput(TXTextInput *this, const TXTextInput *a2, uint64_t a3)
{
  TXTextLayout::TXTextLayout(this, a2, a3);
  *v3 = &unk_2871ED298;
  *(v3 + 200) = &unk_2871ED7A8;
  *(v3 + 216) = &unk_2871EE080;
  *(v3 + 248) = &unk_2871EE2D8;
  *(v3 + 6728) = &unk_2871EE330;
  *(v3 + 18976) = &unk_2871EE408;
  *(v3 + 64416) = 0;
}

void non-virtual thunk toTXTextInput::~TXTextInput(TXTextInput *this)
{
  TXTextLayout::~TXTextLayout((this - 200));
}

{
  TXTextLayout::~TXTextLayout((this - 216));
}

{
  TXTextLayout::~TXTextLayout((this - 248));
}

{
  TXTextLayout::~TXTextLayout((this - 6728));
}

{
  TXTextLayout::~TXTextLayout((this - 18976));
}

{
  TXTextLayout::~TXTextLayout((this - 200));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextLayout::~TXTextLayout((this - 216));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextLayout::~TXTextLayout((this - 248));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextLayout::~TXTextLayout((this - 6728));

  JUMPOUT(0x2666E9F00);
}

{
  TXTextLayout::~TXTextLayout((this - 18976));

  JUMPOUT(0x2666E9F00);
}

void TXTextInput::~TXTextInput(TXTextInput *this)
{
  TXTextLayout::~TXTextLayout(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t non-virtual thunk toTXTextInput::deleteThis(TXTextInput *this, OZChannelBase *a2)
{
  return TXTextLayout::deleteThis((this - 200), a2);
}

{
  return TXTextLayout::deleteThis((this - 216), a2);
}

void TXTextInput::cloneBehaviorsEffects(TXTextInput *this, const OZSceneNode *a2, unsigned int a3)
{
  TXTextLayout::cloneBehaviorsEffects(this, a2, a3);
  if (*(this + 64416) == 1)
  {

    TXTextInput::rebuildTextFromBehavior(this);
  }
}