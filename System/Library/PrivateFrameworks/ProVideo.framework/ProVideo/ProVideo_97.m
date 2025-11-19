void sub_260245BD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260245C1C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260245C14);
}

uint64_t HgcMaskCompIntersect::BindTexture(HgcMaskCompIntersect *this, HGHandler *a2, int a3)
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

uint64_t HgcMaskCompIntersect::Bind(HgcMaskCompIntersect *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMaskCompIntersect::RenderTile(HgcMaskCompIntersect *this, HGTile *a2)
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
          v15 = *(v14 + 16);
          v16 = vmulq_f32(*(v8 + v12 - 32), *v14);
          v17 = vmulq_f32(*(v8 + v12 - 16), *v14);
          v18 = vmulq_f32(*(v8 + v12), *v14);
          v19 = vmulq_f32(*(v8 + v12 + 16), *v14);
          v20 = vaddq_f32(v16, vextq_s8(v16, v16, 4uLL));
          v21 = vaddq_f32(v17, vextq_s8(v17, v17, 4uLL));
          v22 = vaddq_f32(v18, vextq_s8(v18, v18, 4uLL));
          v23 = vaddq_f32(v19, vextq_s8(v19, v19, 4uLL));
          v24 = vaddq_f32(v23, vextq_s8(v23, v23, 8uLL));
          v25 = vmulq_lane_f32(vaddq_f32(v20, vextq_s8(v20, v20, 8uLL)), *v15.f32, 1);
          v26 = vmulq_lane_f32(vaddq_f32(v21, vextq_s8(v21, v21, 8uLL)), *v15.f32, 1);
          v27 = vmulq_lane_f32(vaddq_f32(v22, vextq_s8(v22, v22, 8uLL)), *v15.f32, 1);
          v28 = vmulq_lane_f32(v24, *v15.f32, 1);
          v29 = *(v14 + 32);
          v30 = *(v14 + 48);
          v31 = *(v14 + 64);
          v32 = vbslq_s8(v31, v25, vaddq_f32(v29, vmulq_f32(v30, vrev64q_s32(v25))));
          v33 = vbslq_s8(v31, v26, vaddq_f32(v29, vmulq_f32(v30, vrev64q_s32(v26))));
          v34 = vbslq_s8(v31, v27, vaddq_f32(v29, vmulq_f32(v30, vrev64q_s32(v27))));
          v35 = vbslq_s8(v31, v28, vaddq_f32(v29, vmulq_f32(v30, vrev64q_s32(v28))));
          v36 = vaddq_f32(vrev64q_s32(v32), vmulq_n_f32(v32, v15.f32[0]));
          v37 = vaddq_f32(vrev64q_s32(v33), vmulq_n_f32(v33, v15.f32[0]));
          v38 = vaddq_f32(vrev64q_s32(v34), vmulq_n_f32(v34, v15.f32[0]));
          v39 = vaddq_f32(vrev64q_s32(v35), vmulq_n_f32(v35, v15.f32[0]));
          v40 = vcgtq_f32(v15, v30);
          v41 = vsubq_f32(vextq_s8(v15, v15, 8uLL), v30);
          v36.i64[1] = vbslq_s8(v40, vdupq_lane_s64(vrev64q_s32(vsubq_f32(v29, v36)), 0), vextq_s8(*&v15, *&v36, 0xCuLL)).i64[1];
          v37.i64[1] = vbslq_s8(v40, vdupq_lane_s64(vrev64q_s32(vsubq_f32(v29, v37)), 0), vextq_s8(*&v15, *&v37, 0xCuLL)).i64[1];
          v42 = vbslq_s8(v31, v41, v36);
          v38.i64[1] = vbslq_s8(v40, vdupq_lane_s64(vrev64q_s32(vsubq_f32(v29, v38)), 0), vextq_s8(*&v15, *&v38, 0xCuLL)).i64[1];
          v39.i64[1] = vbslq_s8(v40, vdupq_lane_s64(vrev64q_s32(vsubq_f32(v29, v39)), 0), vextq_s8(*&v15, *&v39, 0xCuLL)).i64[1];
          v43 = vbslq_s8(v31, v41, v37);
          v44 = vbslq_s8(v31, v41, v38);
          v45 = vbslq_s8(v31, v41, v39);
          v46 = vmulq_lane_f32(*(v6 + v12 - 32), *v42.f32, 1);
          v47 = vmulq_lane_f32(*(v6 + v12 + 16), *v45.f32, 1);
          v48 = vcgtq_f32(v29, v43);
          v42.i64[0] = vbslq_s8(vcgtq_f32(v29, v42), vdupq_laneq_s32(v42, 2), vdupq_lane_s32(*v42.f32, 1)).u64[0];
          v49 = vcgtq_f32(v29, v44);
          v29.i64[0] = vbslq_s8(vcgtq_f32(v29, v45), vdupq_laneq_s32(v45, 2), vdupq_lane_s32(*v45.f32, 1)).u64[0];
          v50 = vcgtq_f32(vdupq_laneq_s32(v15, 3), *(v14 + 80));
          v51 = vbslq_s8(v50, vdupq_lane_s32(*v42.f32, 0), v46);
          v52 = vbslq_s8(v50, vdupq_lane_s32(*&vbslq_s8(v48, vdupq_laneq_s32(v43, 2), vdupq_lane_s32(*v43.f32, 1)), 0), vmulq_lane_f32(*(v6 + v12 - 16), *v43.f32, 1));
          v53 = vbslq_s8(v50, vdupq_lane_s32(*&vbslq_s8(v49, vdupq_laneq_s32(v44, 2), vdupq_lane_s32(*v44.f32, 1)), 0), vmulq_lane_f32(*(v6 + v12), *v44.f32, 1));
          v54 = (v5 + v12);
          v54[-2] = v51;
          v54[-1] = v52;
          *v54 = v53;
          v54[1] = vbslq_s8(v50, vdupq_lane_s32(*v29.f32, 0), v47);
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v55 = *(this + 51);
          v56 = *(v55 + 16);
          v57 = vmulq_f32(*(v8 + 16 * v11), *v55);
          v58 = vaddq_f32(v57, vextq_s8(v57, v57, 4uLL));
          v59 = vmulq_lane_f32(vaddq_f32(v58, vextq_s8(v58, v58, 8uLL)), *v56.f32, 1);
          v60 = *(v55 + 32);
          v61 = *(v55 + 48);
          v62 = *(v55 + 64);
          v63 = vbslq_s8(v62, v59, vaddq_f32(v60, vmulq_f32(v61, vrev64q_s32(v59))));
          v64 = vaddq_f32(vrev64q_s32(v63), vmulq_n_f32(v63, v56.f32[0]));
          v64.i64[1] = vbslq_s8(vcgtq_f32(v56, v61), vdupq_lane_s64(vrev64q_s32(vsubq_f32(v60, v64)), 0), vextq_s8(*&v64, *&v64, 0xCuLL)).i64[1];
          v65 = vbslq_s8(v62, vsubq_f32(vextq_s8(v56, v56, 8uLL), v61), v64);
          *(v5 + 16 * v11) = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v56, 3), *(v55 + 80)), vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v60, v65), vdupq_laneq_s32(v65, 2), vdupq_lane_s32(*v65.f32, 1)), 0), vmulq_lane_f32(*(v6 + 16 * v11), *v65.f32, 1));
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

uint64_t HgcMaskCompIntersect::GetDOD(HgcMaskCompIntersect *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcMaskCompIntersect::GetROI(HgcMaskCompIntersect *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcMaskCompIntersect::HgcMaskCompIntersect(HgcMaskCompIntersect *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B6DB0;
  operator new();
}

void HgcMaskCompIntersect::~HgcMaskCompIntersect(HGNode *this)
{
  *this = &unk_2872B6DB0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcMaskCompIntersect::~HgcMaskCompIntersect(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMaskCompIntersect::SetParameter(HgcMaskCompIntersect *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMaskCompIntersect::GetParameter(HgcMaskCompIntersect *this, unsigned int a2, float *a3)
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

const char *HgcMaskElem::GetProgram(HgcMaskElem *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000032e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = fmin(r0, half4(hg_Params[1]));\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmax(r0, half4(hg_Params[0]));\n    output.color0 = float4(r0)*float4(r1);\n    return output;\n}\n//MD5=697add7e:c663244d:2a11e2f1:d614b1ba\n//SIG=00400000:00000003:00000003:00000003:0000:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000303\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = fmin(r0, hg_Params[1]);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmax(r0, hg_Params[0]);\n    output.color0 = r0*r1;\n    return output;\n}\n//MD5=f5cef5f9:18fdecb9:e83be33b:ee75b063\n//SIG=00000000:00000003:00000003:00000000:0000:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=000000024e\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\n##%\nTEMP r0,r1;\n##@\n##1\nTEX r0,$f1,texture[1],RECT;\nMIN r0,r0,$p1;\n##0\nTEX r1,$f0,texture[0],RECT;\nMAX r0,r0,$p0;\nMUL $o0,r0,r1;\nEND\n##MD5=90b56ecf:f74056c4:26bebe67:a11aed9f\n##SIG=00000000:00000003:00000003:00000000:0000:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002d7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = min(r0, hg_ProgramLocal1);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = max(r0, hg_ProgramLocal0);\n    gl_FragColor = r0*r1;\n}\n//MD5=9b7caf92:8007f644:c8cd0c22:84ae7f2c\n//SIG=00000000:00000003:00000003:00000000:0000:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_260246508(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_260246648(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260246690()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260246688);
}

uint64_t HgcMaskElem::BindTexture(HgcMaskElem *this, HGHandler *a2, int a3)
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

uint64_t HgcMaskElem::Bind(HgcMaskElem *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMaskElem::RenderTile(HgcMaskElem *this, HGTile *a2)
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
          v14 = *(this + 51);
          v15 = v14[1];
          v16 = vmulq_f32(*(v6 + v12 - 32), vmaxq_f32(vminq_f32(*(v8 + v12 - 32), v15), *v14));
          v17 = vmulq_f32(*(v6 + v12 - 16), vmaxq_f32(vminq_f32(*(v8 + v12 - 16), v15), *v14));
          v18 = vmulq_f32(*(v6 + v12), vmaxq_f32(vminq_f32(*(v8 + v12), v15), *v14));
          v19 = vmulq_f32(*(v6 + v12 + 16), vmaxq_f32(vminq_f32(*(v8 + v12 + 16), v15), *v14));
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
          *(v5 + 16 * v11) = vmulq_f32(*(v6 + 16 * v11), vmaxq_f32(vminq_f32(*(v8 + 16 * v11), *(*(this + 51) + 16)), **(this + 51)));
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

uint64_t HgcMaskElem::GetDOD(HgcMaskElem *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcMaskElem::GetROI(HgcMaskElem *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcMaskElem::HgcMaskElem(HgcMaskElem *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B7018;
  operator new();
}

void HgcMaskElem::~HgcMaskElem(HGNode *this)
{
  *this = &unk_2872B7018;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcMaskElem::~HgcMaskElem(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMaskElem::SetParameter(HgcMaskElem *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    v9 = *(this + 51);
    if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a3.n128_f32[0] || *(v9 + 24) != a3.n128_f32[0] || *(v9 + 28) != a3.n128_f32[0])
    {
      v10 = vdupq_lane_s32(a3.n128_u64[0], 0);
      a3.n128_f32[1] = a4;
      *(v9 + 16) = v10;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v9 + 48) = a3;
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
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != a3.n128_f32[0])
    {
      v8 = vdupq_lane_s32(a3.n128_u64[0], 0);
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 32) = a3;
LABEL_13:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcMaskElem::GetParameter(HgcMaskElem *this, int a2, float *a3)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 60;
    v4 = 56;
    v5 = 52;
    v6 = 48;
  }

  else
  {
    v3 = 44;
    v4 = 40;
    v5 = 36;
    v6 = 32;
  }

  v7 = 0;
  v8 = *(this + 51);
  *a3 = *(v8 + v6);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v4);
  a3[3] = *(v8 + v3);
  return v7;
}

const char *HgcMaskCompFirstPass::GetProgram(HgcMaskCompFirstPass *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003cf\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, half4(hg_Params[0]));\n    r0.x = r0.x*half(hg_Params[1].y);\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*half(hg_Params[1].x) + r0.x;\n    r0.z = -r0.y + c0.x;\n    r0.z = select(r0.y, r0.z, -half(hg_Params[1].z) < 0.00000h);\n    r0.x = half(hg_Params[1].z) + c0.y;\n    output.color0 = select(float4(r0.yyyy), float4(r0.zzzz), float4(r0.xxxx) < 0.00000h);\n    return output;\n}\n//MD5=88751bc3:e39b93c7:7fe374e9:1b84dc55\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000394\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, hg_Params[0]);\n    r0.x = r0.x*hg_Params[1].y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_Params[1].x + r0.x;\n    r0.z = -r0.y + c0.x;\n    r0.z = select(r0.y, r0.z, -hg_Params[1].z < 0.00000f);\n    r0.x = hg_Params[1].z + c0.y;\n    output.color0 = select(r0.yyyy, r0.zzzz, r0.xxxx < 0.00000f);\n    return output;\n}\n//MD5=6e7ee701:27f67b24:d1febe3f:d1b5bf22\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=00000002cb\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $c0={1.000000000,-2.000000000,0.000000000,0.000000000};\n##%\nTEMP r0;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\nDP4 r0.x,r0,$p0;\nMUL r0.x,r0,$p1.y;\nMAD r0.y,r0.x,$c0,$c0.x;\nMAD r0.y,r0,$p1.x,r0.x;\nADD r0.z,-r0.y,$c0.x;\nCMP r0.z,-$p1,r0,r0.y;\nADD r0.x,$p1.z,$c0.y;\nCMP $o0,r0.x,r0.z,r0.y;\nEND\n##MD5=20fb8b16:dccc0196:ae71c795:1cad3d67\n##SIG=00000000:00000001:00000001:00000000:0001:0002:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003e8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = dot(r0, hg_ProgramLocal0);\n    r0.x = r0.x*hg_ProgramLocal1.y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_ProgramLocal1.x + r0.x;\n    r0.z = -r0.y + c0.x;\n    r0.z = -hg_ProgramLocal1.z < 0.00000 ? r0.z : r0.y;\n    r0.x = hg_ProgramLocal1.z + c0.y;\n    gl_FragColor = vec4(r0.x < 0.00000 ? r0.z : r0.y, r0.x < 0.00000 ? r0.z : r0.y, r0.x < 0.00000 ? r0.z : r0.y, r0.x < 0.00000 ? r0.z : r0.y);\n}\n//MD5=c2b59dea:d57cf6b5:dcb56bb1:afc40db5\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_260246DC8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_260246EC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260246F08()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260246F00);
}

uint64_t HgcMaskCompFirstPass::BindTexture(HgcMaskCompFirstPass *this, HGHandler *a2, int a3)
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

uint64_t HgcMaskCompFirstPass::Bind(HgcMaskCompFirstPass *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMaskCompFirstPass::RenderTile(HgcMaskCompFirstPass *this, HGTile *a2)
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
          v13 = *(v12 + 16);
          v14 = vmulq_f32(*(v6 + v10 - 32), *v12);
          v15 = vmulq_f32(*(v6 + v10 - 16), *v12);
          v16 = vmulq_f32(*(v6 + v10), *v12);
          v17 = vmulq_f32(*(v6 + v10 + 16), *v12);
          v18 = vaddq_f32(v14, vextq_s8(v14, v14, 4uLL));
          v19 = vaddq_f32(v15, vextq_s8(v15, v15, 4uLL));
          v20 = vaddq_f32(v16, vextq_s8(v16, v16, 4uLL));
          v21 = vaddq_f32(v17, vextq_s8(v17, v17, 4uLL));
          v22 = vaddq_f32(v21, vextq_s8(v21, v21, 8uLL));
          v23 = vmulq_lane_f32(vaddq_f32(v18, vextq_s8(v18, v18, 8uLL)), *v13.f32, 1);
          v24 = vmulq_lane_f32(vaddq_f32(v19, vextq_s8(v19, v19, 8uLL)), *v13.f32, 1);
          v25 = vmulq_lane_f32(vaddq_f32(v20, vextq_s8(v20, v20, 8uLL)), *v13.f32, 1);
          v26 = vmulq_lane_f32(v22, *v13.f32, 1);
          v28 = *(v12 + 32);
          v27 = *(v12 + 48);
          v29 = *(v12 + 64);
          v30 = *(v12 + 80);
          v31 = vbslq_s8(v29, v23, vaddq_f32(v28, vmulq_f32(v27, vrev64q_s32(v23))));
          v32 = vbslq_s8(v29, v24, vaddq_f32(v28, vmulq_f32(v27, vrev64q_s32(v24))));
          v33 = vbslq_s8(v29, v25, vaddq_f32(v28, vmulq_f32(v27, vrev64q_s32(v25))));
          v34 = vbslq_s8(v29, v26, vaddq_f32(v28, vmulq_f32(v27, vrev64q_s32(v26))));
          v35 = vaddq_f32(vrev64q_s32(v31), vmulq_n_f32(v31, v13.f32[0]));
          v36 = vaddq_f32(vrev64q_s32(v32), vmulq_n_f32(v32, v13.f32[0]));
          v37 = vaddq_f32(vrev64q_s32(v33), vmulq_n_f32(v33, v13.f32[0]));
          v38 = vaddq_f32(vrev64q_s32(v34), vmulq_n_f32(v34, v13.f32[0]));
          v39 = vsubq_f32(v27, vextq_s8(v13, v35, 0xCuLL));
          v40 = vsubq_f32(v27, vextq_s8(v13, v36, 0xCuLL));
          v41 = vsubq_f32(v27, vextq_s8(v13, v37, 0xCuLL));
          v42 = vsubq_f32(v27, vextq_s8(v13, v38, 0xCuLL));
          v43.i64[0] = v35.i64[0];
          v43.i64[1] = v39.i64[1];
          v44.i64[0] = v36.i64[0];
          v44.i64[1] = v40.i64[1];
          v45.i64[0] = v37.i64[0];
          v45.i64[1] = v41.i64[1];
          v46.i64[0] = v38.i64[0];
          v46.i64[1] = v42.i64[1];
          v47 = vcgtq_f32(v13, v28);
          v35.i64[1] = vbslq_s8(v47, v39, vextq_s8(*&v13, v43, 0xCuLL)).i64[1];
          v36.i64[1] = vbslq_s8(v47, v40, vextq_s8(*&v13, v44, 0xCuLL)).i64[1];
          v37.i64[1] = vbslq_s8(v47, v41, vextq_s8(*&v13, v45, 0xCuLL)).i64[1];
          v38.i64[1] = vbslq_s8(v47, v42, vextq_s8(*&v13, v46, 0xCuLL)).i64[1];
          v48 = vsubq_f32(vextq_s8(v13, v13, 8uLL), v27);
          v49 = vbslq_s8(v29, v48, v35);
          v50 = vbslq_s8(v29, v48, v36);
          v51 = vbslq_s8(v29, v48, v37);
          v52 = vbslq_s8(v29, v48, v38);
          v53 = (v5 + v10);
          v53[-2] = vbslq_s8(vcgtq_f32(v30, vdupq_lane_s32(*v49.i8, 0)), vdupq_laneq_s32(v49, 2), vdupq_lane_s32(*v49.i8, 1));
          v53[-1] = vbslq_s8(vcgtq_f32(v30, vdupq_lane_s32(*v50.i8, 0)), vdupq_laneq_s32(v50, 2), vdupq_lane_s32(*v50.i8, 1));
          *v53 = vbslq_s8(vcgtq_f32(v30, vdupq_lane_s32(*v51.i8, 0)), vdupq_laneq_s32(v51, 2), vdupq_lane_s32(*v51.i8, 1));
          v53[1] = vbslq_s8(vcgtq_f32(v30, vdupq_lane_s32(*v52.i8, 0)), vdupq_laneq_s32(v52, 2), vdupq_lane_s32(*v52.i8, 1));
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v54 = *(this + 51);
          v55 = *(v54 + 16);
          v56 = vmulq_f32(*(v6 + 16 * v9), *v54);
          v57 = vaddq_f32(v56, vextq_s8(v56, v56, 4uLL));
          v58 = vmulq_lane_f32(vaddq_f32(v57, vextq_s8(v57, v57, 8uLL)), *v55.f32, 1);
          v59 = *(v54 + 32);
          v60 = *(v54 + 48);
          v61 = *(v54 + 64);
          v62 = vbslq_s8(v61, v58, vaddq_f32(v59, vmulq_f32(v60, vrev64q_s32(v58))));
          v63 = vaddq_f32(vrev64q_s32(v62), vmulq_n_f32(v62, v55.f32[0]));
          v64 = vsubq_f32(v60, vextq_s8(v63, v63, 0xCuLL));
          v65.i64[0] = v63.i64[0];
          v65.i64[1] = v64.i64[1];
          v63.i64[1] = vbslq_s8(vcgtq_f32(v55, v59), v64, vextq_s8(v63, v65, 0xCuLL)).i64[1];
          v66 = vbslq_s8(v61, vsubq_f32(vextq_s8(v55, v55, 8uLL), v60), v63);
          *(v5 + 16 * v9++) = vbslq_s8(vcgtq_f32(*(v54 + 80), vdupq_lane_s32(*v66.i8, 0)), vdupq_laneq_s32(v66, 2), vdupq_lane_s32(*v66.i8, 1));
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

uint64_t HgcMaskCompFirstPass::GetDOD(HgcMaskCompFirstPass *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcMaskCompFirstPass::GetROI(HgcMaskCompFirstPass *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcMaskCompFirstPass::HgcMaskCompFirstPass(HgcMaskCompFirstPass *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B7280;
  operator new();
}

void HgcMaskCompFirstPass::~HgcMaskCompFirstPass(HGNode *this)
{
  *this = &unk_2872B7280;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcMaskCompFirstPass::~HgcMaskCompFirstPass(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMaskCompFirstPass::SetParameter(HgcMaskCompFirstPass *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMaskCompFirstPass::GetParameter(HgcMaskCompFirstPass *this, unsigned int a2, float *a3)
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

const char *HgcMaskCompSubtract::GetProgram(HgcMaskCompSubtract *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004bc\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, half4(hg_Params[0]));\n    r0.x = r0.x*half(hg_Params[1].y);\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*half(hg_Params[1].x) + r0.x;\n    r0.w = -r0.y + c0.x;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.z = select(r0.y, r0.w, -half(hg_Params[1].z) < 0.00000h);\n    r0.x = half(hg_Params[1].z) + c0.y;\n    r1 = r0.wwww*r1;\n    r0.x = select(r0.y, r0.z, r0.x < 0.00000h);\n    output.color0 = select(float4(r1), float4(r0.xxxx), -hg_Params[1].wwww < 0.00000h);\n    return output;\n}\n//MD5=803d36d6:745a31c5:7bf8f860:9746c0ec\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000482\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, hg_Params[0]);\n    r0.x = r0.x*hg_Params[1].y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_Params[1].x + r0.x;\n    r0.w = -r0.y + c0.x;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.z = select(r0.y, r0.w, -hg_Params[1].z < 0.00000f);\n    r0.x = hg_Params[1].z + c0.y;\n    r1 = r0.wwww*r1;\n    r0.x = select(r0.y, r0.z, r0.x < 0.00000f);\n    output.color0 = select(r1, r0.xxxx, -hg_Params[1].wwww < 0.00000f);\n    return output;\n}\n//MD5=c0e416c5:a8d708f0:cb142b5b:fd6a2dcc\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=0000000338\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $c0={1.000000000,-2.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\nDP4 r0.x,r0,$p0;\nMUL r0.x,r0,$p1.y;\nMAD r0.y,r0.x,$c0,$c0.x;\nMAD r0.y,r0,$p1.x,r0.x;\nADD r0.w,-r0.y,$c0.x;\n##1\nTEX r1,$f1,texture[1],RECT;\nCMP r0.z,-$p1,r0.w,r0.y;\nADD r0.x,$p1.z,$c0.y;\nMUL r1,r0.w,r1;\nCMP r0.x,r0,r0.z,r0.y;\nCMP $o0,-$p1.w,r0.x,r1;\nEND\n##MD5=9f37110d:6551b5d6:98450f13:eade1e0c\n##SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004e1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = dot(r0, hg_ProgramLocal0);\n    r0.x = r0.x*hg_ProgramLocal1.y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_ProgramLocal1.x + r0.x;\n    r0.w = -r0.y + c0.x;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0.z = -hg_ProgramLocal1.z < 0.00000 ? r0.w : r0.y;\n    r0.x = hg_ProgramLocal1.z + c0.y;\n    r1 = r0.wwww*r1;\n    r0.x = r0.x < 0.00000 ? r0.z : r0.y;\n    gl_FragColor = vec4(-hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.x, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.y, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.z, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.w);\n}\n//MD5=35c39cd9:ce16825b:8c591300:4449c307\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_260247754(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_260247894(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_2602478DC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x2602478D4);
}

uint64_t HgcMaskCompSubtract::BindTexture(HgcMaskCompSubtract *this, HGHandler *a2, int a3)
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

uint64_t HgcMaskCompSubtract::Bind(HgcMaskCompSubtract *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMaskCompSubtract::RenderTile(HgcMaskCompSubtract *this, HGTile *a2)
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
    v9 = 16 * *(a2 + 6);
    v10 = 16 * *(a2 + 26);
    do
    {
      if (v4 < 3)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 32;
        for (i = v4; i > 2; i -= 3)
        {
          v14 = *(this + 51);
          v15 = *(v14 + 16);
          v16 = vmulq_f32(*(v8 + v12 - 32), *v14);
          v17 = vmulq_f32(*(v8 + v12 - 16), *v14);
          v18 = vmulq_f32(*(v8 + v12), *v14);
          v19 = vaddq_f32(v16, vextq_s8(v16, v16, 4uLL));
          v20 = vaddq_f32(v17, vextq_s8(v17, v17, 4uLL));
          v21 = vaddq_f32(v18, vextq_s8(v18, v18, 4uLL));
          v22 = vmulq_lane_f32(vaddq_f32(v19, vextq_s8(v19, v19, 8uLL)), *v15.f32, 1);
          v23 = vmulq_lane_f32(vaddq_f32(v20, vextq_s8(v20, v20, 8uLL)), *v15.f32, 1);
          v24 = vmulq_lane_f32(vaddq_f32(v21, vextq_s8(v21, v21, 8uLL)), *v15.f32, 1);
          v25 = *(v14 + 32);
          v26 = *(v14 + 48);
          v27 = *(v14 + 64);
          v28 = *(v14 + 80);
          v29 = vbslq_s8(v27, v22, vaddq_f32(v25, vmulq_f32(v26, vrev64q_s32(v22))));
          v30 = vbslq_s8(v27, v23, vaddq_f32(v25, vmulq_f32(v26, vrev64q_s32(v23))));
          v31 = vbslq_s8(v27, v24, vaddq_f32(v25, vmulq_f32(v26, vrev64q_s32(v24))));
          v29.i64[0] = vaddq_f32(vrev64q_s32(v29), vmulq_n_f32(v29, v15.f32[0])).u64[0];
          v30.i64[0] = vaddq_f32(vrev64q_s32(v30), vmulq_n_f32(v30, v15.f32[0])).u64[0];
          v31.i64[0] = vaddq_f32(vrev64q_s32(v31), vmulq_n_f32(v31, v15.f32[0])).u64[0];
          v32 = vsubq_f32(v26, vdupq_lane_s64(v29.i64[0], 0));
          v33 = vsubq_f32(v26, vdupq_lane_s64(v30.i64[0], 0));
          v34 = vsubq_f32(v26, vdupq_lane_s64(v31.i64[0], 0));
          v35.i64[0] = v29.i64[0];
          v35.i64[1] = v32.i64[1];
          v36.i64[0] = v30.i64[0];
          v37.i64[0] = v31.i64[0];
          v36.i64[1] = v33.i64[1];
          v37.i64[1] = v34.i64[1];
          v29.i64[1] = vdupq_laneq_s64(v32, 1).u64[0];
          v30.i64[1] = vdupq_laneq_s64(v33, 1).u64[0];
          v31.i64[1] = vdupq_laneq_s64(v34, 1).u64[0];
          v38 = vcgtq_f32(v15, v26);
          v39 = vsubq_f32(vextq_s8(v15, v15, 8uLL), v26);
          v40 = vbslq_s8(v27, v39, vbslq_s8(v28, vbslq_s8(v38, vrev64q_s32(v29), vextq_s8(v35, v35, 0xCuLL)), v35));
          v41 = vbslq_s8(v27, v39, vbslq_s8(v28, vbslq_s8(v38, vrev64q_s32(v30), vextq_s8(v36, v36, 0xCuLL)), v36));
          v42 = vbslq_s8(v27, v39, vbslq_s8(v28, vbslq_s8(v38, vrev64q_s32(v31), vextq_s8(v37, v37, 0xCuLL)), v37));
          v43 = vcgtq_f32(vdupq_laneq_s32(v15, 3), *(v14 + 96));
          v44 = vbslq_s8(v43, vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v25, v40), vdupq_laneq_s32(v40, 2), vdupq_lane_s32(*v40.f32, 1)), 0), vmulq_laneq_f32(*(v6 + v12 - 32), v40, 3));
          v45 = vbslq_s8(v43, vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v25, v41), vdupq_laneq_s32(v41, 2), vdupq_lane_s32(*v41.f32, 1)), 0), vmulq_laneq_f32(*(v6 + v12 - 16), v41, 3));
          v46 = vbslq_s8(v43, vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v25, v42), vdupq_laneq_s32(v42, 2), vdupq_lane_s32(*v42.f32, 1)), 0), vmulq_laneq_f32(*(v6 + v12), v42, 3));
          v47 = (v5 + v12);
          v47[-2] = v44;
          v47[-1] = v45;
          *v47 = v46;
          v11 += 3;
          v12 += 48;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v48 = *(this + 51);
          v49 = *(v48 + 16);
          v50 = vmulq_f32(*(v8 + 16 * v11), *v48);
          v51 = vaddq_f32(v50, vextq_s8(v50, v50, 4uLL));
          v52 = vmulq_lane_f32(vaddq_f32(v51, vextq_s8(v51, v51, 8uLL)), *v49.f32, 1);
          v53 = *(v48 + 32);
          v54 = *(v48 + 48);
          v55 = *(v48 + 64);
          v56 = vbslq_s8(v55, v52, vaddq_f32(v53, vmulq_f32(v54, vrev64q_s32(v52))));
          v56.i64[0] = vaddq_f32(vrev64q_s32(v56), vmulq_n_f32(v56, v49.f32[0])).u64[0];
          v57 = vsubq_f32(v54, vdupq_lane_s64(v56.i64[0], 0));
          v58.i64[0] = v56.i64[0];
          v58.i64[1] = v57.i64[1];
          v56.i64[1] = vdupq_laneq_s64(v57, 1).u64[0];
          v59 = vbslq_s8(v55, vsubq_f32(vextq_s8(v49, v49, 8uLL), v54), vbslq_s8(*(v48 + 80), vbslq_s8(vcgtq_f32(v49, v54), vrev64q_s32(v56), vextq_s8(v58, v58, 0xCuLL)), v58));
          *(v5 + 16 * v11) = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v49, 3), *(v48 + 96)), vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v53, v59), vdupq_laneq_s32(v59, 2), vdupq_lane_s32(*v59.f32, 1)), 0), vmulq_laneq_f32(*(v6 + 16 * v11), v59, 3));
          ++v11;
        }

        while (v11 < v4);
      }

      ++v3;
      v8 += v7;
      v5 += v9;
      v6 += v10;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcMaskCompSubtract::GetDOD(HgcMaskCompSubtract *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcMaskCompSubtract::GetROI(HgcMaskCompSubtract *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcMaskCompSubtract::HgcMaskCompSubtract(HgcMaskCompSubtract *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B74E8;
  operator new();
}

void HgcMaskCompSubtract::~HgcMaskCompSubtract(HGNode *this)
{
  *this = &unk_2872B74E8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);
}

{
  HgcMaskCompSubtract::~HgcMaskCompSubtract(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMaskCompSubtract::SetParameter(HgcMaskCompSubtract *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMaskCompSubtract::GetParameter(HgcMaskCompSubtract *this, unsigned int a2, float *a3)
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

const char *HgcWrapMirror::GetProgram(HgcWrapMirror *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  v5 = (*(*this + 312))(this, a2);
  if (Target <= 0x6041F)
  {
    v6 = 394016;
  }

  else
  {
    v6 = 394304;
  }

  if (Target < 0x60600 && v5 == 0)
  {
    v8 = v6;
  }

  else
  {
    v8 = Target;
  }

  if (v8 == 396048)
  {
    v9 = (*(*a2 + 128))(a2, 20);
    v10 = "//Metal1.0     \n//LEN=00000007f8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.009999999776, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = frag._texCoord0.yyyy*hg_Params[2];\n    r0 = frag._texCoord0.xxxx*hg_Params[1] + r0;\n    r0 = frag._texCoord0.zzzz*hg_Params[3] + r0;\n    r1 = r0 + hg_Params[4];\n    r0.x = float(r0.w < -hg_Params[4].w);\n    r0.z = float(c0.z < r1.w);\n    r0.y = r0.z;\n    r0.xy = float2(-r0.xy >= c0.zz);\n    r0.xz = fmin(r0.xx, r0.yz);\n    r0.w = fmin(r1.w, c0.x);\n    r2.x = fmax(r1.w, -c0.x);\n    r0.z = select(r0.w, r2.x, -r0.z < 0.00000f);\n    r0.x = select(r0.z, -c0.x, -r0.x < 0.00000f);\n    r0.xyz = r1.xyz/r0.xxx;\n    r2.xy = hg_Params[0].zw + hg_Params[0].zw;\n    r2.zw = r0.xy - hg_Params[0].xy;\n    r0.xy = r2.zw/r2.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = -r2.xy*r0.xy + r2.zw;\n    r0.xy = r0.xy - hg_Params[0].zw;\n    r0.xy = hg_Params[0].zw - fabs(r0.xy);\n    r0.xy = r0.xy + hg_Params[0].xy;\n    r1.xyz = r0.yyy*hg_Params[6].xyz;\n    r1.xyz = r0.xxx*hg_Params[5].xyz + r1.xyz;\n    r0.xyz = r0.zzz*hg_Params[7].xyz + r1.xyz;\n    r0.w = float(r0.z < -hg_Params[8].w);\n    r0.xyz = r0.xyz + hg_Params[8].xyw;\n    r2.y = float(c0.z < r0.z);\n    r2.x = r2.y;\n    r2.z = fmin(r0.z, c0.x);\n    r0.w = c0.y - r0.w;\n    r2.y = fmin(r0.w, r2.y);\n    r2.x = float(-r2.x >= c0.z);\n    r0.z = fmax(r0.z, -c0.x);\n    r0.z = select(r2.z, r0.z, -r2.y < 0.00000f);\n    r0.w = fmin(r0.w, r2.x);\n    r0.z = select(r0.z, -c0.x, -r0.w < 0.00000f);\n    r0.xy = r0.xy/r0.zz;\n    r0.xy = r0.xy + hg_Params[9].xy;\n    r0.xy = r0.xy*hg_Params[9].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=ccf4b309:ab9896f3:8a2769eb:f7dd6df8\n//SIG=00000000:00000000:00000000:00000000:0001:000a:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    v11 = "//Metal1.0     \n//LEN=0000000896\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.009999999776, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0 = frag._texCoord0.yyyy*hg_Params[2];\n    s0 = frag._texCoord0.xxxx*hg_Params[1] + s0;\n    s0 = frag._texCoord0.zzzz*hg_Params[3] + s0;\n    s1 = s0 + hg_Params[4];\n    s0.x = float(s0.w < -hg_Params[4].w);\n    s0.z = float(float(c0.z) < s1.w);\n    s0.y = s0.z;\n    s0.xy = float2(-s0.xy >= float2(c0.zz));\n    s0.xz = fmin(s0.xx, s0.yz);\n    s0.w = fmin(s1.w, float(c0.x));\n    s2.x = fmax(s1.w, -float(c0.x));\n    s0.z = select(s0.w, s2.x, -s0.z < 0.00000h);\n    s0.x = select(s0.z, -float(c0.x), -s0.x < 0.00000h);\n    s0.xyz = s1.xyz/s0.xxx;\n    r0.xy = half2(hg_Params[0].zw) + half2(hg_Params[0].zw);\n    r0.zw = half2(s0.xy) - half2(hg_Params[0].xy);\n    s0.xy = float2(r0.zw)/float2(r0.xy);\n    s0.xy = floor(s0.xy);\n    s0.xy = -float2(r0.xy)*s0.xy + float2(r0.zw);\n    s0.xy = s0.xy - hg_Params[0].zw;\n    s0.xy = hg_Params[0].zw - fabs(s0.xy);\n    s0.xy = s0.xy + hg_Params[0].xy;\n    s2.xyz = s0.yyy*hg_Params[6].xyz;\n    s2.xyz = s0.xxx*hg_Params[5].xyz + s2.xyz;\n    s0.xyz = s0.zzz*hg_Params[7].xyz + s2.xyz;\n    s0.w = float(s0.z < -hg_Params[8].w);\n    s0.xyz = s0.xyz + hg_Params[8].xyw;\n    s1.y = float(float(c0.z) < s0.z);\n    s1.x = s1.y;\n    s1.z = fmin(s0.z, float(c0.x));\n    s0.w = float(c0.y) - s0.w;\n    s1.y = fmin(s0.w, s1.y);\n    s1.x = float(-s1.x >= float(c0.z));\n    s0.z = fmax(s0.z, -float(c0.x));\n    s0.z = select(s1.z, s0.z, -s1.y < 0.00000h);\n    s0.w = fmin(s0.w, s1.x);\n    s0.z = select(s0.z, -float(c0.x), -s0.w < 0.00000h);\n    s0.xy = s0.xy/s0.zz;\n    s0.xy = s0.xy + hg_Params[9].xy;\n    s0.xy = s0.xy*hg_Params[9].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=ecb9e5b5:e61bd49c:a9616b8b:a3f4b05b\n//SIG=00400000:00000000:00000000:00000001:0001:000a:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    v12 = v9 == 27;
    goto LABEL_14;
  }

  if (v8 > 0x6060F)
  {
    v13 = (*(*a2 + 128))(a2, 46);
    v10 = "!!ARBfp1.0     \n##LEN=000000066f\nOPTION NV_fragment_program2;\n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\nPARAM $p4=program.local[4];\nPARAM $p5=program.local[5];\nPARAM $p6=program.local[6];\nPARAM $p7=program.local[7];\nPARAM $p8=program.local[8];\nPARAM $p9=program.local[9];\nPARAM $c0={-0.009999999776,1.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2;\n##@\nMUL r0,$f0.y,$p2;\nMAD r0,$f0.x,$p1,r0;\nMAD r0,$f0.z,$p3,r0;\nADD r1,r0,$p4;\nSLT r0.x,r0.w,-$p4.w;\nSLT r0.z,$c0,r1.w;\nMOV r0.y,r0.z;\nSGE r0.xy,-r0,$c0.z;\nMIN r0.xz,r0.x,r0.yyzw;\nMIN r0.w,r1,$c0.x;\nMAX r2.x,r1.w,-$c0;\nCMP r0.z,-r0,r2.x,r0.w;\nCMP r0.x,-r0,-$c0,r0.z;\nRCP r0.xyz,r0.x;\nMUL r0.xyz,r0,r1;\nADD r2.xy,$p0.zwzw,$p0.zwzw;\nSUB r2.zw,r0.xyxy,$p0.xyxy;\nRCP r1.x,r2.x;\nRCP r1.y,r2.y;\nMUL r0.xy,r1,r2.zwzw;\nFLR r0.xy,r0;\nMAD r0.xy,-r2,r0,r2.zwzw;\nSUB r0.xy,r0,$p0.zwzw;\nSUB r0.xy,$p0.zwzw,|r0|;\nADD r0.xy,r0,$p0;\nMUL r1.xyz,r0.y,$p6;\nMAD r1.xyz,r0.x,$p5,r1;\nMAD r0.xyz,r0.z,$p7,r1;\nSLT r0.w,r0.z,-$p8;\nADD r0.xyz,r0,$p8.xyww;\nSLT r2.y,$c0.z,r0.z;\nMOV r2.x,r2.y;\nMIN r2.z,r0,$c0.x;\nSUB r0.w,$c0.y,r0;\nMIN r2.y,r0.w,r2;\nSGE r2.x,-r2,$c0.z;\nMAX r0.z,r0,-$c0.x;\nCMP r0.z,-r2.y,r0,r2;\nMIN r0.w,r0,r2.x;\nCMP r0.z,-r0.w,-$c0.x,r0;\nRCP r1.xy,r0.z;\nMUL r0.xy,r1,r0;\nADD r0.xy,r0,$p9;\n##0\nTEX $o0,r0,texture[0],RECT;\nEND\n##MD5=2f3708bd:fca4e30f:d3f199f3:8794b567\n##SIG=00000000:00000000:00000000:00000000:0001:000a:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    v11 = "//GLfs2.0      \n//LEN=0000000937\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.009999999776, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = hg_TexCoord0.yyyy*hg_ProgramLocal2;\n    r0 = hg_TexCoord0.xxxx*hg_ProgramLocal1 + r0;\n    r0 = hg_TexCoord0.zzzz*hg_ProgramLocal3 + r0;\n    r1 = r0 + hg_ProgramLocal4;\n    r0.x = float(r0.w < -hg_ProgramLocal4.w);\n    r0.z = float(c0.z < r1.w);\n    r0.y = r0.z;\n    r0.xy = vec2(greaterThanEqual(-r0.xy, c0.zz));\n    r0.xz = min(r0.xx, r0.yz);\n    r0.w = min(r1.w, c0.x);\n    r2.x = max(r1.w, -c0.x);\n    r0.z = -r0.z < 0.00000 ? r2.x : r0.w;\n    r0.x = -r0.x < 0.00000 ? -c0.x : r0.z;\n    r0.xyz = r1.xyz/r0.xxx;\n    r2.xy = hg_ProgramLocal0.zw + hg_ProgramLocal0.zw;\n    r2.zw = r0.xy - hg_ProgramLocal0.xy;\n    r0.xy = r2.zw/r2.xy;\n    r0.xy = floor(r0.xy);\n    r0.xy = -r2.xy*r0.xy + r2.zw;\n    r0.xy = r0.xy - hg_ProgramLocal0.zw;\n    r0.xy = hg_ProgramLocal0.zw - abs(r0.xy);\n    r0.xy = r0.xy + hg_ProgramLocal0.xy;\n    r1.xyz = r0.yyy*hg_ProgramLocal6.xyz;\n    r1.xyz = r0.xxx*hg_ProgramLocal5.xyz + r1.xyz;\n    r0.xyz = r0.zzz*hg_ProgramLocal7.xyz + r1.xyz;\n    r0.w = float(r0.z < -hg_ProgramLocal8.w);\n    r0.xyz = r0.xyz + hg_ProgramLocal8.xyw;\n    r2.y = float(c0.z < r0.z);\n    r2.x = r2.y;\n    r2.z = min(r0.z, c0.x);\n    r0.w = c0.y - r0.w;\n    r2.y = min(r0.w, r2.y);\n    r2.x = float(-r2.x >= c0.z);\n    r0.z = max(r0.z, -c0.x);\n    r0.z = -r2.y < 0.00000 ? r0.z : r2.z;\n    r0.w = min(r0.w, r2.x);\n    r0.z = -r0.w < 0.00000 ? -c0.x : r0.z;\n    r0.xy = r0.xy/r0.zz;\n    r0.xy = r0.xy + hg_ProgramLocal9.xy;\n    r0.xy = r0.xy*hg_ProgramLocal9.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=eb01f0ce:600d3436:a6d6d921:a09c07d3\n//SIG=00000000:00000000:00000000:00000000:0001:000a:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    v12 = v13 == 0;
LABEL_14:
    if (v12)
    {
      return v11;
    }

    else
    {
      return v10;
    }
  }

  if (v8 <= 0x6040F)
  {
    v15 = "!!ARBfp1.0     \n##LEN=00000007d7\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\nPARAM $p4=program.local[4];\nPARAM $p5=program.local[5];\nPARAM $p6=program.local[6];\nPARAM $p7=program.local[7];\nPARAM $p8=program.local[8];\nPARAM $p9=program.local[9];\nPARAM $c0={-0.009999999776,1.000000000,0.000000000,0.5000000000};\nPARAM $c1={1.500000000,0.5000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2,r3,r4;\n##@\nMUL r0,$f0.y,$p2;\nMAD r0,$f0.x,$p1,r0;\nMAD r0,$f0.z,$p3,r0;\nADD r1,r0,$p4;\nSLT r0.x,r0.w,-$p4.w;\nSLT r0.z,$c0,r1.w;\nMOV r0.y,r0.z;\nSGE r0.xy,-r0,$c0.z;\nMIN r0.xz,r0.x,r0.yyzw;\nMIN r0.w,r1,$c0.x;\nMAX r2.x,r1.w,-$c0;\nCMP r0.z,-r0,r2.x,r0.w;\nCMP r0.x,-r0,-$c0,r0.z;\nRCP r0.xyz,r0.x;\nMUL r0.xyz,r0,r1;\nADD r2.xy,$p0.zwzw,$p0.zwzw;\nSUB r2.zw,r0.xyxy,$p0.xyxy;\nRCP r1.x,r2.x;\nRCP r1.y,r2.y;\nMUL r0.xy,r1,r2.zwzw;\nFLR r0.xy,r0;\nMAD r0.xy,-r2,r0,r2.zwzw;\nSUB r0.xy,r0,$p0.zwzw;\nABS r1.xy,r0;\nSUB r0.xy,$p0.zwzw,r1;\nADD r0.xy,r0,$p0;\nMUL r2.xyz,r0.y,$p6;\nMAD r2.xyz,r0.x,$p5,r2;\nMAD r0.xyz,r0.z,$p7,r2;\nSLT r0.w,r0.z,-$p8;\nADD r0.xyz,r0,$p8.xyww;\nSLT r1.y,$c0.z,r0.z;\nMOV r1.x,r1.y;\nMIN r1.z,r0,$c0.x;\nSUB r0.w,$c0.y,r0;\nMIN r1.y,r0.w,r1;\nSGE r1.x,-r1,$c0.z;\nMAX r0.z,r0,-$c0.x;\nCMP r0.z,-r1.y,r0,r1;\nMIN r0.w,r0,r1.x;\nCMP r0.z,-r0.w,-$c0.x,r0;\nRCP r2.xy,r0.z;\nMUL r0.xy,r2,r0;\nADD r0.xy,r0,$p9;\nSUB r0.xy,r0,$c0.w;\nFLR r1.xy,r0;\nFRC r0.xy,r0;\nADD r2.xy,r1,$c0.w;\n##0\nTEX r2,r2,texture[0],RECT;\nADD r3.xy,r1,$c1;\n##0\nTEX r3,r3,texture[0],RECT;\nADD r4.xy,r1,$c1.yxzw;\n##0\nTEX r4,r4,texture[0],RECT;\nADD r1.xy,r1,$c1.x;\n##0\nTEX r1,r1,texture[0],RECT;\nLRP r3,r0.x,r3,r2;\nLRP r4,r0.x,r1,r4;\nLRP $o0,r0.y,r4,r3;\nEND\n##MD5=014b9130:75159e74:5d2309d7:86d53cb4\n##SIG=00000000:00000000:00000000:00000000:0002:000a:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }

  else
  {
    v15 = "!!ARBfp1.0     \n##LEN=00000007cb\nOPTION NV_fragment_program; \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\nPARAM $p4=program.local[4];\nPARAM $p5=program.local[5];\nPARAM $p6=program.local[6];\nPARAM $p7=program.local[7];\nPARAM $p8=program.local[8];\nPARAM $p9=program.local[9];\nPARAM $c0={-0.009999999776,1.000000000,0.000000000,0.5000000000};\nPARAM $c1={1.500000000,0.5000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2,r3,r4;\n##@\nMUL r0,$f0.y,$p2;\nMAD r0,$f0.x,$p1,r0;\nMAD r0,$f0.z,$p3,r0;\nADD r1,r0,$p4;\nSLT r0.x,r0.w,-$p4.w;\nSLT r0.z,$c0,r1.w;\nMOV r0.y,r0.z;\nSGE r0.xy,-r0,$c0.z;\nMIN r0.xz,r0.x,r0.yyzw;\nMIN r0.w,r1,$c0.x;\nMAX r2.x,r1.w,-$c0;\nCMP r0.z,-r0,r2.x,r0.w;\nCMP r0.x,-r0,-$c0,r0.z;\nRCP r0.xyz,r0.x;\nMUL r0.xyz,r0,r1;\nADD r2.xy,$p0.zwzw,$p0.zwzw;\nSUB r2.zw,r0.xyxy,$p0.xyxy;\nRCP r1.x,r2.x;\nRCP r1.y,r2.y;\nMUL r0.xy,r1,r2.zwzw;\nFLR r0.xy,r0;\nMAD r0.xy,-r2,r0,r2.zwzw;\nSUB r0.xy,r0,$p0.zwzw;\nSUB r0.xy,$p0.zwzw,|r0|;\nADD r0.xy,r0,$p0;\nMUL r1.xyz,r0.y,$p6;\nMAD r1.xyz,r0.x,$p5,r1;\nMAD r0.xyz,r0.z,$p7,r1;\nSLT r0.w,r0.z,-$p8;\nADD r0.xyz,r0,$p8.xyww;\nSLT r2.y,$c0.z,r0.z;\nMOV r2.x,r2.y;\nMIN r2.z,r0,$c0.x;\nSUB r0.w,$c0.y,r0;\nMIN r2.y,r0.w,r2;\nSGE r2.x,-r2,$c0.z;\nMAX r0.z,r0,-$c0.x;\nCMP r0.z,-r2.y,r0,r2;\nMIN r0.w,r0,r2.x;\nCMP r0.z,-r0.w,-$c0.x,r0;\nRCP r1.xy,r0.z;\nMUL r0.xy,r1,r0;\nADD r0.xy,r0,$p9;\nSUB r0.xy,r0,$c0.w;\nFLR r2.xy,r0;\nFRC r0.xy,r0;\nADD r1.xy,r2,$c0.w;\n##0\nTEX r1,r1,texture[0],RECT;\nADD r3.xy,r2,$c1;\n##0\nTEX r3,r3,texture[0],RECT;\nADD r4.xy,r2,$c1.yxzw;\n##0\nTEX r4,r4,texture[0],RECT;\nADD r2.xy,r2,$c1.x;\n##0\nTEX r2,r2,texture[0],RECT;\nLRP r3,r0.x,r3,r1;\nLRP r4,r0.x,r2,r4;\nLRP $o0,r0.y,r4,r3;\nEND\n##MD5=6da8ab86:a1ca2202:162ccb6a:a964f698\n##SIG=00000000:00000000:00000000:00000000:0002:000a:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }

  if (v8 - 394016 >= 0xF0)
  {
    v16 = v15;
  }

  else
  {
    v16 = "!!ARBfp1.0     \n##LEN=000000067b\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\nPARAM $p4=program.local[4];\nPARAM $p5=program.local[5];\nPARAM $p6=program.local[6];\nPARAM $p7=program.local[7];\nPARAM $p8=program.local[8];\nPARAM $p9=program.local[9];\nPARAM $c0={-0.009999999776,1.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2;\n##@\nMUL r0,$f0.y,$p2;\nMAD r0,$f0.x,$p1,r0;\nMAD r0,$f0.z,$p3,r0;\nADD r1,r0,$p4;\nSLT r0.x,r0.w,-$p4.w;\nSLT r0.z,$c0,r1.w;\nMOV r0.y,r0.z;\nSGE r0.xy,-r0,$c0.z;\nMIN r0.xz,r0.x,r0.yyzw;\nMIN r0.w,r1,$c0.x;\nMAX r2.x,r1.w,-$c0;\nCMP r0.z,-r0,r2.x,r0.w;\nCMP r0.x,-r0,-$c0,r0.z;\nRCP r0.xyz,r0.x;\nMUL r0.xyz,r0,r1;\nADD r2.xy,$p0.zwzw,$p0.zwzw;\nSUB r2.zw,r0.xyxy,$p0.xyxy;\nRCP r1.x,r2.x;\nRCP r1.y,r2.y;\nMUL r0.xy,r1,r2.zwzw;\nFLR r0.xy,r0;\nMAD r0.xy,-r2,r0,r2.zwzw;\nSUB r0.xy,r0,$p0.zwzw;\nABS r1.xy,r0;\nSUB r0.xy,$p0.zwzw,r1;\nADD r0.xy,r0,$p0;\nMUL r2.xyz,r0.y,$p6;\nMAD r2.xyz,r0.x,$p5,r2;\nMAD r0.xyz,r0.z,$p7,r2;\nSLT r0.w,r0.z,-$p8;\nADD r0.xyz,r0,$p8.xyww;\nSLT r1.y,$c0.z,r0.z;\nMOV r1.x,r1.y;\nMIN r1.z,r0,$c0.x;\nSUB r0.w,$c0.y,r0;\nMIN r1.y,r0.w,r1;\nSGE r1.x,-r1,$c0.z;\nMAX r0.z,r0,-$c0.x;\nCMP r0.z,-r1.y,r0,r1;\nMIN r0.w,r0,r1.x;\nCMP r0.z,-r0.w,-$c0.x,r0;\nRCP r2.xy,r0.z;\nMUL r0.xy,r2,r0;\nADD r0.xy,r0,$p9;\n##0\nTEX $o0,r0,texture[0],RECT;\nEND\n##MD5=5f410862:0f55a39c:a6ecc8e6:8e9c4288\n##SIG=00000000:00000000:00000000:00000000:0001:000a:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }

  if (v8 <= 0x6043F)
  {
    return v16;
  }

  else
  {
    return "!!ARBfp1.0     \n##LEN=000000066f\nOPTION NV_fragment_program2;\n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\nPARAM $p4=program.local[4];\nPARAM $p5=program.local[5];\nPARAM $p6=program.local[6];\nPARAM $p7=program.local[7];\nPARAM $p8=program.local[8];\nPARAM $p9=program.local[9];\nPARAM $c0={-0.009999999776,1.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2;\n##@\nMUL r0,$f0.y,$p2;\nMAD r0,$f0.x,$p1,r0;\nMAD r0,$f0.z,$p3,r0;\nADD r1,r0,$p4;\nSLT r0.x,r0.w,-$p4.w;\nSLT r0.z,$c0,r1.w;\nMOV r0.y,r0.z;\nSGE r0.xy,-r0,$c0.z;\nMIN r0.xz,r0.x,r0.yyzw;\nMIN r0.w,r1,$c0.x;\nMAX r2.x,r1.w,-$c0;\nCMP r0.z,-r0,r2.x,r0.w;\nCMP r0.x,-r0,-$c0,r0.z;\nRCP r0.xyz,r0.x;\nMUL r0.xyz,r0,r1;\nADD r2.xy,$p0.zwzw,$p0.zwzw;\nSUB r2.zw,r0.xyxy,$p0.xyxy;\nRCP r1.x,r2.x;\nRCP r1.y,r2.y;\nMUL r0.xy,r1,r2.zwzw;\nFLR r0.xy,r0;\nMAD r0.xy,-r2,r0,r2.zwzw;\nSUB r0.xy,r0,$p0.zwzw;\nSUB r0.xy,$p0.zwzw,|r0|;\nADD r0.xy,r0,$p0;\nMUL r1.xyz,r0.y,$p6;\nMAD r1.xyz,r0.x,$p5,r1;\nMAD r0.xyz,r0.z,$p7,r1;\nSLT r0.w,r0.z,-$p8;\nADD r0.xyz,r0,$p8.xyww;\nSLT r2.y,$c0.z,r0.z;\nMOV r2.x,r2.y;\nMIN r2.z,r0,$c0.x;\nSUB r0.w,$c0.y,r0;\nMIN r2.y,r0.w,r2;\nSGE r2.x,-r2,$c0.z;\nMAX r0.z,r0,-$c0.x;\nCMP r0.z,-r2.y,r0,r2;\nMIN r0.w,r0,r2.x;\nCMP r0.z,-r0.w,-$c0.x,r0;\nRCP r1.xy,r0.z;\nMUL r0.xy,r1,r0;\nADD r0.xy,r0,$p9;\n##0\nTEX $o0,r0,texture[0],RECT;\nEND\n##MD5=2f3708bd:fca4e30f:d3f199f3:8794b567\n##SIG=00000000:00000000:00000000:00000000:0001:000a:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_26024825C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_2602483DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26024842C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260248424);
}

uint64_t HgcWrapMirror::BindTexture(HgcWrapMirror *this, HGRenderer **a2, int a3)
{
  Target = HGRenderer::GetTarget(a2[18], 393216);
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (Target > 0x6043F || Target - 394016 <= 0xEF)
  {
    (*(*a2 + 9))(a2, 0, 0);
    v8 = (*(*this + 312))(this, 0);
    (*(*a2 + 6))(a2, v8, v8);
  }

  if ((*(*a2[18] + 128))(a2[18], 46))
  {
    v11.n128_u32[0] = 1.0;
    v12.n128_u32[0] = 1.0;
  }

  else
  {
    v11.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v12.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v9.n128_f32[0] = *(a2 + 60);
  v10.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 17))(a2, 9, v9, v10, v11, v12);
  return 0;
}

uint64_t HgcWrapMirror::Bind(HgcWrapMirror *this, HGHandler *a2)
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

uint64_t HgcWrapMirror::RenderTile(HgcWrapMirror *this, HGTile *a2)
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
          v20 = *(v19 + 32);
          v21 = *(v19 + 48);
          v22 = vmulq_lane_f32(v20, *v17.f32, 1);
          v23 = vmulq_lane_f32(v20, *v18.f32, 1);
          v24 = *v19;
          v25 = *(v19 + 16);
          v26 = vaddq_f32(vaddq_f32(v22, vmulq_n_f32(v25, v17.f32[0])), vmulq_laneq_f32(v21, v17, 2));
          v27 = vaddq_f32(vaddq_f32(v23, vmulq_n_f32(v25, v18.f32[0])), vmulq_laneq_f32(v21, v18, 2));
          v28 = *(v19 + 64);
          v29 = *(v19 + 80);
          v30 = vaddq_f32(v28, v26);
          v31 = vaddq_f32(v28, v27);
          v32 = vnegq_f32(v28);
          v33 = vcgtq_f32(v32, v26);
          v34 = vcgtq_f32(v32, v27);
          v36 = *(v19 + 128);
          v35 = *(v19 + 144);
          v37 = vandq_s8(v35, v33);
          v38 = vandq_s8(v35, v34);
          v40 = *(v19 + 160);
          v39 = *(v19 + 176);
          v37.i64[0] = vextq_s8(v37, v37, 0xCuLL).u64[0];
          v37.i64[1] = vandq_s8(*&v40, vcgtq_f32(vrev64q_s32(*&v30), v35)).i64[1];
          v38.i64[0] = vextq_s8(v38, v38, 0xCuLL).u64[0];
          v38.i64[1] = vandq_s8(*&v40, vcgtq_f32(vrev64q_s32(*&v31), v35)).i64[1];
          v41 = vbslq_s8(v39, vextq_s8(v37, v37, 4uLL), v37);
          v42 = vbslq_s8(v39, vextq_s8(v38, v38, 4uLL), v38);
          v25.i64[0] = vandq_s8(v35, vcgeq_f32(vnegq_f32(v41), v40)).u64[0];
          v43.i64[0] = vandq_s8(v35, vcgeq_f32(vnegq_f32(v42), v40)).u64[0];
          v25.i64[1] = vextq_s8(v41, v41, 8uLL).u64[0];
          v45 = *(v19 + 192);
          v44 = *(v19 + 208);
          *v46.f32 = vqtbl1_s8(v25, *v45.i8);
          v47 = vextq_s8(v45, v45, 8uLL).u64[0];
          *&v46.u32[2] = vqtbl1_s8(v25, v47);
          v43.i64[1] = vextq_s8(v42, v42, 8uLL).u64[0];
          *v42.f32 = vqtbl1_s8(v43, *v45.i8);
          *&v42.u32[2] = vqtbl1_s8(v43, v47);
          v48 = vminq_f32(vdupq_lane_s64(v43.i64[0], 0), v42);
          v49 = vbslq_s8(v44, vminq_f32(v30, v40), vminq_f32(vdupq_lane_s64(v25.i64[0], 0), v46));
          v50 = vbslq_s8(v44, vminq_f32(v31, v40), v48);
          v52 = *(v19 + 224);
          v51 = *(v19 + 240);
          v53 = vbslq_s8(vcgtq_f32(v49, v52), vdupq_lane_s64(vmaxq_f32(vextq_s8(v30, v30, 0xCuLL), v52).i64[0], 0), vrev64q_s32(v49));
          v54 = vbslq_s8(vcgtq_f32(v50, v52), vdupq_lane_s64(vmaxq_f32(vextq_s8(v31, v31, 0xCuLL), v52).i64[0], 0), vrev64q_s32(v50));
          v49.i64[1] = v53.i64[1];
          v50.i64[1] = v54.i64[1];
          v55 = vcgtq_f32(v49, v40);
          v40.i64[0] = vbslq_s8(vcgtq_f32(v50, v40), v52, vdupq_laneq_s32(v54, 2)).u64[0];
          v56 = vdupq_lane_s32(*&vbslq_s8(v55, v52, vdupq_laneq_s32(v53, 2)), 0);
          v57 = vdupq_lane_s32(*v40.f32, 0);
          v58 = *(v19 + 256);
          v59 = *(v19 + 272);
          v60 = vminq_f32(vmaxq_f32(vrecpeq_f32(v56), v51), v58);
          v61 = vminq_f32(vmaxq_f32(vrecpeq_f32(v57), v51), v58);
          v62 = vminq_f32(vmaxq_f32(vmulq_f32(v60, vrecpsq_f32(v56, v60)), v51), v58);
          v63 = vminq_f32(vmaxq_f32(vmulq_f32(v61, vrecpsq_f32(v57, v61)), v51), v58);
          v64 = vmulq_f32(v30, vmulq_f32(v62, vrecpsq_f32(v56, v62)));
          v65 = vmulq_f32(v31, vmulq_f32(v63, vrecpsq_f32(v57, v63)));
          v66 = vdupq_lane_s64(vsubq_f32(v64, *v19).i64[0], 0);
          v67 = vdupq_lane_s64(vsubq_f32(v65, *v19).i64[0], 0);
          v68 = vdupq_laneq_s64(v66, 1);
          v66.i64[0] = vaddq_f32(v24, v24).i64[1];
          v69 = vdupq_laneq_s64(v67, 1);
          v67.i64[0] = v66.i64[0];
          v70 = vminq_f32(vmaxq_f32(vrecpeq_f32(v66), v51), v58);
          v71 = vminq_f32(vmaxq_f32(vrecpeq_f32(v67), v51), v58);
          v72 = vminq_f32(vmaxq_f32(vmulq_f32(v70, vrecpsq_f32(v66, v70)), v51), v58);
          v73 = vminq_f32(vmaxq_f32(vmulq_f32(v71, vrecpsq_f32(v67, v71)), v51), v58);
          v72.i64[0] = vmulq_f32(v68, vmulq_f32(v72, vrecpsq_f32(v66, v72))).u64[0];
          v73.i64[0] = vmulq_f32(v69, vmulq_f32(v73, vrecpsq_f32(v67, v73))).u64[0];
          v72.i64[1] = v64.i64[1];
          v73.i64[1] = v65.i64[1];
          v74 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
          v75 = vsubq_f32(v74, vbslq_s8(vcgtq_f32(v74, v72), v35, 0));
          v76 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
          v77 = vsubq_f32(v68, vmulq_f32(v66, v75));
          v78 = vextq_s8(v24, v24, 8uLL);
          v77.i64[0] = vsubq_f32(v77, v78).u64[0];
          v67.i64[0] = vsubq_f32(vsubq_f32(v69, vmulq_f32(v67, vsubq_f32(v76, vbslq_s8(vcgtq_f32(v76, v73), v35, 0)))), v78).u64[0];
          v77.i64[1] = v64.i64[1];
          v67.i64[1] = v65.i64[1];
          v77.i64[0] = vaddq_f32(*v19, vsubq_f32(v78, vabsq_f32(v77))).u64[0];
          v24.i64[0] = vaddq_f32(*v19, vsubq_f32(v78, vabsq_f32(v67))).u64[0];
          v79 = *(v19 + 96);
          v80 = *(v19 + 112);
          v81 = vaddq_f32(vmulq_lane_f32(v79, *v24.f32, 1), vmulq_n_f32(v29, v24.f32[0]));
          v82 = vaddq_f32(vmulq_laneq_f32(v80, v64, 2), vaddq_f32(vmulq_lane_f32(v79, *v77.f32, 1), vmulq_n_f32(v29, v77.f32[0])));
          v83 = vaddq_f32(vmulq_laneq_f32(v80, v65, 2), v81);
          v84 = vnegq_f32(v36);
          v85 = vandq_s8(v51, vcgtq_f32(v84, vrev64q_s32(v82)));
          v86 = vandq_s8(v51, vcgtq_f32(v84, vrev64q_s32(v83)));
          *v64.f32 = vqtbl1_s8(v36, *v59.i8);
          *&v64.u32[2] = vqtbl1_s8(v36, *&vextq_s8(v59, v59, 8uLL));
          v87 = vaddq_f32(v64, vbslq_s8(v44, v85, v82));
          v88 = vaddq_f32(v64, vbslq_s8(v44, v86, v83));
          v89 = vbslq_s8(v44, v85, v87);
          v90 = vbslq_s8(v44, v86, v88);
          v91 = vandq_s8(v35, vcgtq_f32(vextq_s8(v89, v89, 4uLL), v52));
          v92 = vandq_s8(v35, vcgtq_f32(vextq_s8(v90, v90, 4uLL), v52));
          v93 = *(v19 + 288);
          v94 = *(v19 + 304);
          v91.i64[0] = vbslq_s8(v93, vrev64q_s32(v91), v91).u64[0];
          v92.i64[0] = vbslq_s8(v93, vrev64q_s32(v92), v92).u64[0];
          v91.i64[1] = vminq_f32(v89, v94).i64[1];
          v92.i64[1] = vminq_f32(v90, v94).i64[1];
          v95 = vbslq_s8(v44, vsubq_f32(v94, v89), v87);
          v96 = vbslq_s8(v44, vsubq_f32(v94, v90), v88);
          v97 = vbslq_s8(v39, vminq_f32(vextq_s8(v95, v95, 8uLL), v91), v91);
          v98 = vbslq_s8(v39, vminq_f32(vextq_s8(v96, v96, 8uLL), v92), v92);
          v99 = vbslq_s8(v93, vandq_s8(v35, vcgeq_f32(vnegq_f32(v97), v94)), v97);
          v100 = vbslq_s8(v93, vandq_s8(v35, vcgeq_f32(vnegq_f32(v98), v94)), v98);
          v101 = *(v19 + 320);
          v102 = *(v19 + 336);
          v103 = vbslq_s8(v102, vbslq_s8(vcgtq_f32(vextq_s8(v99, v99, 0xCuLL), v52), vbslq_s8(v102, vmaxq_f32(v95, v101), v95), v99), v95);
          v104 = vbslq_s8(v102, vbslq_s8(vcgtq_f32(vextq_s8(v100, v100, 0xCuLL), v52), vbslq_s8(v102, vmaxq_f32(v96, v101), v96), v100), v96);
          v105 = vbslq_s8(v44, vminq_f32(v103, vextq_s8(v99, v99, 4uLL)), v103);
          v106 = vbslq_s8(v44, vminq_f32(v104, vextq_s8(v100, v100, 4uLL)), v104);
          v107 = vbslq_s8(vcgtq_f32(vrev64q_s32(v105), v52), v101, v105);
          v108 = vbslq_s8(vcgtq_f32(vrev64q_s32(v106), v52), v101, v106);
          v105.i64[1] = v107.i64[1];
          v106.i64[1] = v108.i64[1];
          v109 = vdupq_laneq_s32(v107, 2);
          v110 = vdupq_laneq_s32(v108, 2);
          v111 = vminq_f32(vmaxq_f32(vrecpeq_f32(v109), v51), v58);
          v112 = vminq_f32(vmaxq_f32(vrecpeq_f32(v110), v51), v58);
          v113 = vminq_f32(vmaxq_f32(vmulq_f32(v111, vrecpsq_f32(v109, v111)), v51), v58);
          v114 = vminq_f32(vmaxq_f32(vmulq_f32(v112, vrecpsq_f32(v110, v112)), v51), v58);
          v115 = vmulq_f32(vmulq_f32(v114, vrecpsq_f32(v110, v114)), v106);
          v116 = *(a2 + 22);
          v117 = vsubq_f32(vmulq_f32(vmulq_f32(v113, vrecpsq_f32(v109, v113)), v105), v9);
          v118 = *(a2 + 10);
          if (v5)
          {
            v119 = vaddq_s32(vcvtq_s32_f32(v117), vcltzq_f32(v117));
            v120 = vsubq_f32(v117, vcvtq_f32_s32(v119)).u64[0];
            v121 = vsubq_f32(v115, v9);
            v122 = vaddq_s32(vcvtq_s32_f32(v121), vcltzq_f32(v121));
            v123 = vsubq_f32(v121, vcvtq_f32_s32(v122)).u64[0];
            *v119.i8 = vmla_s32(vzip1_s32(*v119.i8, *v122.i8), vzip2_s32(*v119.i8, *v122.i8), vdup_n_s32(v116));
            v124 = (v118 + 16 * v119.i32[0]);
            v125 = vaddq_f32(*v124, vmulq_n_f32(vsubq_f32(v124[1], *v124), v120.f32[0]));
            v126 = vaddq_f32(v125, vmulq_lane_f32(vsubq_f32(vaddq_f32(v124[v116], vmulq_n_f32(vsubq_f32(v124[v116 + 1], v124[v116]), v120.f32[0])), v125), v120, 1));
            v127 = (v118 + 16 * v119.i32[1]);
            v128 = vaddq_f32(*v127, vmulq_n_f32(vsubq_f32(v127[1], *v127), v123.f32[0]));
            v129 = vaddq_f32(v128, vmulq_lane_f32(vsubq_f32(vaddq_f32(v127[v116], vmulq_n_f32(vsubq_f32(v127[v116 + 1], v127[v116]), v123.f32[0])), v128), v123, 1));
          }

          else
          {
            v130 = vaddq_f32(v117, v13);
            v131 = vcvtq_s32_f32(v130);
            v132 = vaddq_f32(vsubq_f32(v115, v9), v13);
            v133 = vcvtq_s32_f32(v132);
            *v130.f32 = vadd_s32(*v131.i8, *&vcgtq_f32(vcvtq_f32_s32(v131), v130));
            *v132.f32 = vadd_s32(*v133.i8, *&vcgtq_f32(vcvtq_f32_s32(v133), v132));
            *v132.f32 = vmla_s32(vzip1_s32(*v130.f32, *v132.f32), vzip2_s32(*v130.f32, *v132.f32), vdup_n_s32(v116));
            v134 = v132.i32[1];
            v126 = *(v118 + 16 * v132.i32[0]);
            v129 = *(v118 + 16 * v134);
          }

          v135 = (v11 + 16 * v15);
          *v135 = v126;
          v135[1] = v129;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v136 = *(this + 51);
        v137 = *v136;
        v138 = vaddq_f32(vaddq_f32(vmulq_lane_f32(*(v136 + 32), *v17.f32, 1), vmulq_n_f32(*(v136 + 16), v17.f32[0])), vmulq_laneq_f32(*(v136 + 48), v17, 2));
        v139 = *(v136 + 64);
        v140 = vaddq_f32(v139, v138);
        v141 = vcgtq_f32(vnegq_f32(v139), v138);
        v143 = *(v136 + 128);
        v142 = *(v136 + 144);
        v144 = vandq_s8(v142, v141);
        v146 = *(v136 + 160);
        v145 = *(v136 + 176);
        v144.i64[0] = vextq_s8(v144, v144, 0xCuLL).u64[0];
        v144.i64[1] = vandq_s8(*&v146, vcgtq_f32(vrev64q_s32(*&v140), v142)).i64[1];
        v147 = vbslq_s8(v145, vextq_s8(v144, v144, 4uLL), v144);
        v148.i64[0] = vandq_s8(v142, vcgeq_f32(vnegq_f32(v147), v146)).u64[0];
        v148.i64[1] = vextq_s8(v147, v147, 8uLL).u64[0];
        v149 = *(v136 + 192);
        v150 = *(v136 + 208);
        *v151.f32 = vqtbl1_s8(v148, *v149.i8);
        *&v151.u32[2] = vqtbl1_s8(v148, *&vextq_s8(v149, v149, 8uLL));
        v152 = vbslq_s8(v150, vminq_f32(v140, v146), vminq_f32(vdupq_lane_s64(v148.i64[0], 0), v151));
        v154 = *(v136 + 224);
        v153 = *(v136 + 240);
        v155 = vbslq_s8(vcgtq_f32(v152, v154), vdupq_lane_s64(vmaxq_f32(vextq_s8(v140, v140, 0xCuLL), v154).i64[0], 0), vrev64q_s32(v152));
        v152.i64[1] = v155.i64[1];
        v156 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v152, v146), v154, vdupq_laneq_s32(v155, 2)), 0);
        v157 = *(v136 + 256);
        v158 = *(v136 + 272);
        v159 = vminq_f32(vmaxq_f32(vrecpeq_f32(v156), v153), v157);
        v160 = vminq_f32(vmaxq_f32(vmulq_f32(v159, vrecpsq_f32(v156, v159)), v153), v157);
        v161 = vmulq_f32(v140, vmulq_f32(v160, vrecpsq_f32(v156, v160)));
        v162 = vdupq_lane_s64(vsubq_f32(v161, *v136).i64[0], 0);
        v163 = vdupq_laneq_s64(v162, 1);
        v162.i64[0] = vaddq_f32(v137, v137).i64[1];
        v164 = vminq_f32(vmaxq_f32(vrecpeq_f32(v162), v153), v157);
        v165 = vminq_f32(vmaxq_f32(vmulq_f32(v164, vrecpsq_f32(v162, v164)), v153), v157);
        v165.i64[0] = vmulq_f32(v163, vmulq_f32(v165, vrecpsq_f32(v162, v165))).u64[0];
        v165.i64[1] = v161.i64[1];
        v166 = vcvtq_f32_s32(vcvtq_s32_f32(v165));
        v167 = vsubq_f32(v163, vmulq_f32(v162, vsubq_f32(v166, vbslq_s8(vcgtq_f32(v166, v165), v142, 0))));
        v168 = vextq_s8(v137, v137, 8uLL);
        v167.i64[0] = vsubq_f32(v167, v168).u64[0];
        v167.i64[1] = v161.i64[1];
        v137.i64[0] = vaddq_f32(*v136, vsubq_f32(v168, vabsq_f32(v167))).u64[0];
        v169 = vaddq_f32(vmulq_laneq_f32(*(v136 + 112), v161, 2), vaddq_f32(vmulq_lane_f32(*(v136 + 96), *v137.f32, 1), vmulq_n_f32(*(v136 + 80), v137.f32[0])));
        v170 = vandq_s8(v153, vcgtq_f32(vnegq_f32(v143), vrev64q_s32(v169)));
        *v161.f32 = vqtbl1_s8(v143, *v158.i8);
        *&v161.u32[2] = vqtbl1_s8(v143, *&vextq_s8(v158, v158, 8uLL));
        v171 = vaddq_f32(v161, vbslq_s8(v150, v170, v169));
        v172 = vbslq_s8(v150, v170, v171);
        v173 = vandq_s8(v142, vcgtq_f32(vextq_s8(v172, v172, 4uLL), v154));
        v174 = *(v136 + 288);
        v175 = *(v136 + 304);
        v173.i64[0] = vbslq_s8(v174, vrev64q_s32(v173), v173).u64[0];
        v173.i64[1] = vminq_f32(v172, v175).i64[1];
        v176 = vbslq_s8(v150, vsubq_f32(v175, v172), v171);
        v177 = vbslq_s8(v145, vminq_f32(vextq_s8(v176, v176, 8uLL), v173), v173);
        v178 = vbslq_s8(v174, vandq_s8(v142, vcgeq_f32(vnegq_f32(v177), v175)), v177);
        v179 = *(v136 + 320);
        v180 = vbslq_s8(*(v136 + 336), vbslq_s8(vcgtq_f32(vextq_s8(v178, v178, 0xCuLL), v154), vbslq_s8(*(v136 + 336), vmaxq_f32(v176, v179), v176), v178), v176);
        v181 = vbslq_s8(v150, vminq_f32(v180, vextq_s8(v178, v178, 4uLL)), v180);
        v182 = vbslq_s8(vcgtq_f32(vrev64q_s32(v181), v154), v179, v181);
        v181.i64[1] = v182.i64[1];
        v183 = vdupq_laneq_s32(v182, 2);
        v184 = vminq_f32(vmaxq_f32(vrecpeq_f32(v183), v153), v157);
        v185 = vminq_f32(vmaxq_f32(vmulq_f32(v184, vrecpsq_f32(v183, v184)), v153), v157);
        v186 = *(a2 + 22);
        v187 = vsubq_f32(vmulq_f32(vmulq_f32(v185, vrecpsq_f32(v183, v185)), v181), v9);
        v188 = *(a2 + 10);
        if (v5)
        {
          v189 = vaddq_s32(vcvtq_s32_f32(v187), vcltzq_f32(v187));
          v190 = vsubq_f32(v187, vcvtq_f32_s32(v189)).u64[0];
          v191 = (v188 + 16 * (v189.i32[0] + v189.i32[1] * v186));
          v192 = vaddq_f32(*v191, vmulq_n_f32(vsubq_f32(v191[1], *v191), v190.f32[0]));
          v193 = vaddq_f32(v192, vmulq_lane_f32(vsubq_f32(vaddq_f32(v191[v186], vmulq_n_f32(vsubq_f32(v191[v186 + 1], v191[v186]), v190.f32[0])), v192), v190, 1));
        }

        else
        {
          v194 = vaddq_f32(v187, v13);
          v195 = vcvtq_s32_f32(v194);
          v194.i64[0] = vaddq_s32(v195, vcgtq_f32(vcvtq_f32_s32(v195), v194)).u64[0];
          v193 = *(v188 + 16 * (v194.i32[0] + v194.i32[1] * v186));
        }

        *(v11 + 16 * v15) = v193;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcWrapMirror::GetDOD(HgcWrapMirror *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcWrapMirror::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcWrapMirror::HgcWrapMirror(HgcWrapMirror *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B7750;
  operator new();
}

void HgcWrapMirror::~HgcWrapMirror(HGNode *this)
{
  *this = &unk_2872B7750;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C402BC884A0);
  }

  HGNode::~HGNode(this);
}

{
  HgcWrapMirror::~HgcWrapMirror(this);

  HGObject::operator delete(v1);
}

uint64_t HgcWrapMirror::SetParameter(HgcWrapMirror *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
      {
        *v12 = a3.n128_u32[0];
        *(v12 + 4) = a4;
        *(v12 + 8) = a5;
        *(v12 + 12) = a6;
        goto LABEL_56;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v9 = *(this + 51);
      if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a4 || *(v9 + 24) != a5 || *(v9 + 28) != a6)
      {
        *(v9 + 16) = a3.n128_u32[0];
        *(v9 + 20) = a4;
        *(v9 + 24) = a5;
        *(v9 + 28) = a6;
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
        if (v11[5].n128_f32[0] != a3.n128_f32[0] || v11[5].n128_f32[1] != a4 || v11[5].n128_f32[2] != a6 || v11[5].n128_f32[3] != 0.0)
        {
          v11[5].n128_u32[0] = a3.n128_u32[0];
          v11[5].n128_f32[1] = a4;
          v11[5].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v11[5].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v11[22] = a3;
          goto LABEL_56;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 6:
        v14 = *(this + 51);
        if (v14[6].n128_f32[0] != a3.n128_f32[0] || v14[6].n128_f32[1] != a4 || v14[6].n128_f32[2] != a6 || v14[6].n128_f32[3] != 0.0)
        {
          v14[6].n128_u32[0] = a3.n128_u32[0];
          v14[6].n128_f32[1] = a4;
          v14[6].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v14[6].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v14[23] = a3;
          goto LABEL_56;
        }

        return 0;
      case 7:
        v16 = *(this + 51);
        if (v16[7].n128_f32[0] != a3.n128_f32[0] || v16[7].n128_f32[1] != a4 || v16[7].n128_f32[2] != a6 || v16[7].n128_f32[3] != 0.0)
        {
          v16[7].n128_u32[0] = a3.n128_u32[0];
          v16[7].n128_f32[1] = a4;
          v16[7].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v16[7].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v16[24] = a3;
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

uint64_t HgcWrapMirror::GetParameter(HgcWrapMirror *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      v7 = *(this + 51);
      if (a2 == 2)
      {
        *a3 = v7[8];
        a3[1] = v7[9];
        a3[2] = v7[10];
        v5 = v7 + 11;
      }

      else
      {
        *a3 = v7[12];
        a3[1] = v7[13];
        a3[2] = v7[14];
        v5 = v7 + 15;
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      v9 = *(this + 51);
      *a3 = *v9;
      a3[1] = v9[1];
      a3[2] = v9[2];
      v5 = v9 + 3;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v6 = *(this + 51);
      *a3 = v6[4];
      a3[1] = v6[5];
      a3[2] = v6[6];
      v5 = v6 + 7;
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      v8 = *(this + 51);
      if (a2 == 4)
      {
        *a3 = v8[16];
        a3[1] = v8[17];
        a3[2] = v8[18];
        v5 = v8 + 19;
      }

      else
      {
        *a3 = v8[88];
        a3[1] = v8[89];
        a3[2] = v8[90];
        v5 = v8 + 91;
      }

      goto LABEL_20;
    }

    switch(a2)
    {
      case 6:
        v10 = *(this + 51);
        *a3 = v10[92];
        a3[1] = v10[93];
        a3[2] = v10[94];
        v5 = v10 + 95;
        goto LABEL_20;
      case 7:
        v11 = *(this + 51);
        *a3 = v11[96];
        a3[1] = v11[97];
        a3[2] = v11[98];
        v5 = v11 + 99;
        goto LABEL_20;
      case 8:
        v4 = *(this + 51);
        *a3 = v4[32];
        a3[1] = v4[33];
        a3[2] = v4[34];
        v5 = v4 + 35;
LABEL_20:
        v3 = 0;
        a3[3] = *v5;
        break;
    }
  }

  return v3;
}

const char *HgcMaskCompAdd::GetProgram(HgcMaskCompAdd *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004d8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, half4(hg_Params[0]));\n    r0.x = r0.x*half(hg_Params[1].y);\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*half(hg_Params[1].x) + r0.x;\n    r1.x = c0.x - r0.y;\n    r0.z = select(r0.y, r1.x, -half(hg_Params[1].z) < 0.00000h);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.x = half(hg_Params[1].z) + c0.y;\n    r1 = clamp(r0.yyyy + r1, 0.00000h, 1.00000h);\n    r0.x = select(r0.y, r0.z, r0.x < 0.00000h);\n    output.color0 = select(float4(r1), float4(r0.xxxx), -hg_Params[1].wwww < 0.00000h);\n    return output;\n}\n//MD5=3ab579a5:d8ae106a:3b4e524b:c00505ff\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000049e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, hg_Params[0]);\n    r0.x = r0.x*hg_Params[1].y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_Params[1].x + r0.x;\n    r1.x = c0.x - r0.y;\n    r0.z = select(r0.y, r1.x, -hg_Params[1].z < 0.00000f);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.x = hg_Params[1].z + c0.y;\n    r1 = clamp(r0.yyyy + r1, 0.00000f, 1.00000f);\n    r0.x = select(r0.y, r0.z, r0.x < 0.00000f);\n    output.color0 = select(r1, r0.xxxx, -hg_Params[1].wwww < 0.00000f);\n    return output;\n}\n//MD5=1f8911c0:defa5e8f:ebc9af92:bfe95fcd\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=0000000339\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $c0={1.000000000,-2.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\nDP4 r0.x,r0,$p0;\nMUL r0.x,r0,$p1.y;\nMAD r0.y,r0.x,$c0,$c0.x;\nMAD r0.y,r0,$p1.x,r0.x;\nSUB r1.x,$c0,r0.y;\nCMP r0.z,-$p1,r1.x,r0.y;\n##1\nTEX r1,$f1,texture[1],RECT;\nADD r0.x,$p1.z,$c0.y;\nADD_SAT r1,r0.y,r1;\nCMP r0.x,r0,r0.z,r0.y;\nCMP $o0,-$p1.w,r0.x,r1;\nEND\n##MD5=f7c3babe:3a8f0f0f:f86f3e6e:5ace67e6\n##SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000507\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = dot(r0, hg_ProgramLocal0);\n    r0.x = r0.x*hg_ProgramLocal1.y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_ProgramLocal1.x + r0.x;\n    r1.x = c0.x - r0.y;\n    r0.z = -hg_ProgramLocal1.z < 0.00000 ? r1.x : r0.y;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0.x = hg_ProgramLocal1.z + c0.y;\n    r1 = clamp(r0.yyyy + r1, vec4(0.00000), vec4(1.00000));\n    r0.x = r0.x < 0.00000 ? r0.z : r0.y;\n    gl_FragColor = vec4(-hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.x, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.y, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.z, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r1.w);\n}\n//MD5=b620467d:5656b608:acfc40ad:524a997e\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_260249B14(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_260249C54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_260249C9C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x260249C94);
}

uint64_t HgcMaskCompAdd::BindTexture(HgcMaskCompAdd *this, HGHandler *a2, int a3)
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

uint64_t HgcMaskCompAdd::Bind(HgcMaskCompAdd *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMaskCompAdd::RenderTile(HgcMaskCompAdd *this, HGTile *a2)
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
          v15 = *(v14 + 16);
          v16 = vmulq_f32(*(v8 + v12 - 32), *v14);
          v17 = vmulq_f32(*(v8 + v12 - 16), *v14);
          v18 = vmulq_f32(*(v8 + v12), *v14);
          v19 = vmulq_f32(*(v8 + v12 + 16), *v14);
          v20 = vaddq_f32(v16, vextq_s8(v16, v16, 4uLL));
          v21 = vaddq_f32(v17, vextq_s8(v17, v17, 4uLL));
          v22 = vaddq_f32(v18, vextq_s8(v18, v18, 4uLL));
          v23 = vaddq_f32(v19, vextq_s8(v19, v19, 4uLL));
          v24 = vmulq_lane_f32(vaddq_f32(v20, vextq_s8(v20, v20, 8uLL)), *v15.f32, 1);
          v25 = vmulq_lane_f32(vaddq_f32(v21, vextq_s8(v21, v21, 8uLL)), *v15.f32, 1);
          v26 = vmulq_lane_f32(vaddq_f32(v22, vextq_s8(v22, v22, 8uLL)), *v15.f32, 1);
          v27 = vmulq_lane_f32(vaddq_f32(v23, vextq_s8(v23, v23, 8uLL)), *v15.f32, 1);
          v28 = *(v14 + 32);
          v29 = *(v14 + 48);
          v30 = *(v14 + 64);
          v31 = *(v14 + 80);
          v32 = vbslq_s8(v30, v24, vaddq_f32(v28, vmulq_f32(v29, vrev64q_s32(v24))));
          v33 = vbslq_s8(v30, v25, vaddq_f32(v28, vmulq_f32(v29, vrev64q_s32(v25))));
          v34 = vbslq_s8(v30, v26, vaddq_f32(v28, vmulq_f32(v29, vrev64q_s32(v26))));
          v35 = vbslq_s8(v30, v27, vaddq_f32(v28, vmulq_f32(v29, vrev64q_s32(v27))));
          v36 = vaddq_f32(vrev64q_s32(v32), vmulq_n_f32(v32, v15.f32[0]));
          v37 = vaddq_f32(vrev64q_s32(v33), vmulq_n_f32(v33, v15.f32[0]));
          v38 = vaddq_f32(vrev64q_s32(v34), vmulq_n_f32(v34, v15.f32[0]));
          v39 = vaddq_f32(vrev64q_s32(v35), vmulq_n_f32(v35, v15.f32[0]));
          v40 = vcgtq_f32(v15, v29);
          v41 = vsubq_f32(vextq_s8(v15, v15, 8uLL), v29);
          v36.i64[1] = vbslq_s8(v40, vdupq_lane_s64(vrev64q_s32(vsubq_f32(v28, v36)), 0), vextq_s8(*&v15, *&v36, 0xCuLL)).i64[1];
          v42 = vbslq_s8(v30, v41, v36);
          v37.i64[1] = vbslq_s8(v40, vdupq_lane_s64(vrev64q_s32(vsubq_f32(v28, v37)), 0), vextq_s8(*&v15, *&v37, 0xCuLL)).i64[1];
          v38.i64[1] = vbslq_s8(v40, vdupq_lane_s64(vrev64q_s32(vsubq_f32(v28, v38)), 0), vextq_s8(*&v15, *&v38, 0xCuLL)).i64[1];
          v43 = vbslq_s8(v30, v41, v37);
          v44 = vbslq_s8(v30, v41, v38);
          v39.i64[1] = vbslq_s8(v40, vdupq_lane_s64(vrev64q_s32(vsubq_f32(v28, v39)), 0), vextq_s8(*&v15, *&v39, 0xCuLL)).i64[1];
          v45 = vbslq_s8(v30, v41, v39);
          v46 = vdupq_lane_s32(*v42.f32, 1);
          v47 = vdupq_lane_s32(*v43.f32, 1);
          v48 = vdupq_lane_s32(*v44.f32, 1);
          v49 = vdupq_lane_s32(*v45.f32, 1);
          v50 = vminq_f32(vmaxq_f32(vaddq_f32(*(v6 + v12 - 32), v46), v31), v28);
          v51 = vminq_f32(vmaxq_f32(vaddq_f32(*(v6 + v12 - 16), v47), v31), v28);
          v52 = vminq_f32(vmaxq_f32(vaddq_f32(*(v6 + v12), v48), v31), v28);
          v53 = vminq_f32(vmaxq_f32(vaddq_f32(*(v6 + v12 + 16), v49), v31), v28);
          v54 = vcgtq_f32(vdupq_laneq_s32(v15, 3), v31);
          v55 = (v5 + v12);
          v55[-2] = vbslq_s8(v54, vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v31, v42), vdupq_laneq_s32(v42, 2), v46), 0), v50);
          v55[-1] = vbslq_s8(v54, vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v31, v43), vdupq_laneq_s32(v43, 2), v47), 0), v51);
          *v55 = vbslq_s8(v54, vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v31, v44), vdupq_laneq_s32(v44, 2), v48), 0), v52);
          v55[1] = vbslq_s8(v54, vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v31, v45), vdupq_laneq_s32(v45, 2), v49), 0), v53);
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v56 = *(this + 51);
          v57 = *(v56 + 16);
          v58 = vmulq_f32(*(v8 + 16 * v11), *v56);
          v59 = vaddq_f32(v58, vextq_s8(v58, v58, 4uLL));
          v60 = vmulq_lane_f32(vaddq_f32(v59, vextq_s8(v59, v59, 8uLL)), *v57.f32, 1);
          v61 = *(v56 + 32);
          v62 = *(v56 + 48);
          v63 = *(v56 + 64);
          v64 = vbslq_s8(v63, v60, vaddq_f32(v61, vmulq_f32(v62, vrev64q_s32(v60))));
          v65 = vaddq_f32(vrev64q_s32(v64), vmulq_n_f32(v64, v57.f32[0]));
          v65.i64[1] = vbslq_s8(vcgtq_f32(v57, v62), vdupq_lane_s64(vrev64q_s32(vsubq_f32(v61, v65)), 0), vextq_s8(*&v65, *&v65, 0xCuLL)).i64[1];
          v66 = vbslq_s8(v63, vsubq_f32(vextq_s8(v57, v57, 8uLL), v62), v65);
          v67 = vdupq_lane_s32(*v66.f32, 1);
          *(v5 + 16 * v11) = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v57, 3), *(v56 + 80)), vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(*(v56 + 80), v66), vdupq_laneq_s32(v66, 2), v67), 0), vminq_f32(vmaxq_f32(vaddq_f32(*(v6 + 16 * v11), v67), *(v56 + 80)), v61));
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

uint64_t HgcMaskCompAdd::GetDOD(HgcMaskCompAdd *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcMaskCompAdd::GetROI(HgcMaskCompAdd *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcMaskCompAdd::HgcMaskCompAdd(HgcMaskCompAdd *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B79B8;
  operator new();
}

void HgcMaskCompAdd::~HgcMaskCompAdd(HGNode *this)
{
  *this = &unk_2872B79B8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcMaskCompAdd::~HgcMaskCompAdd(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMaskCompAdd::SetParameter(HgcMaskCompAdd *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMaskCompAdd::GetParameter(HgcMaskCompAdd *this, unsigned int a2, float *a3)
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

const char *HgcWrapRepeat::GetProgram(HgcWrapRepeat *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  v5 = (*(*this + 312))(this, a2);
  if (Target < 0x60600 && v5 == 0)
  {
    v7 = 394016;
  }

  else
  {
    v7 = Target;
  }

  if (v7 == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000007e1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.009999999776, 1.000000000, 0.000000000, 0.000000000);\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0 = frag._texCoord0.yyyy*hg_Params[2];\n    s0 = frag._texCoord0.xxxx*hg_Params[1] + s0;\n    s0 = frag._texCoord0.zzzz*hg_Params[3] + s0;\n    s1 = s0 + hg_Params[4];\n    s0.x = float(s0.w < -hg_Params[4].w);\n    s0.z = float(float(c0.z) < s1.w);\n    s0.y = s0.z;\n    s0.xy = float2(-s0.xy >= float2(c0.zz));\n    s0.xz = fmin(s0.xx, s0.yz);\n    s0.w = fmin(s1.w, float(c0.x));\n    s2.x = fmax(s1.w, -float(c0.x));\n    s0.z = select(s0.w, s2.x, -s0.z < 0.00000h);\n    s0.x = select(s0.z, -float(c0.x), -s0.x < 0.00000h);\n    s1.xyz = s1.xyz/s0.xxx;\n    s2.zw = s1.xy - hg_Params[0].xy;\n    s2.xy = s2.zw/hg_Params[0].zw;\n    s2.xy = floor(s2.xy);\n    s2.xy = -s2.xy*hg_Params[0].zw + s2.zw;\n    s1.xy = s2.xy + hg_Params[0].xy;\n    s0.xyz = s1.yyy*hg_Params[6].xyz;\n    s0.xyz = s1.xxx*hg_Params[5].xyz + s0.xyz;\n    s0.xyz = s1.zzz*hg_Params[7].xyz + s0.xyz;\n    s0.w = float(s0.z < -hg_Params[8].w);\n    s0.xyz = s0.xyz + hg_Params[8].xyw;\n    s2.y = float(float(c0.z) < s0.z);\n    s2.x = s2.y;\n    s2.z = fmin(s0.z, float(c0.x));\n    s0.w = float(c0.y) - s0.w;\n    s2.y = fmin(s0.w, s2.y);\n    s2.x = float(-s2.x >= float(c0.z));\n    s0.z = fmax(s0.z, -float(c0.x));\n    s0.z = select(s2.z, s0.z, -s2.y < 0.00000h);\n    s0.w = fmin(s0.w, s2.x);\n    s0.z = select(s0.z, -float(c0.x), -s0.w < 0.00000h);\n    s0.xy = s0.xy/s0.zz;\n    s0.xy = s0.xy + hg_Params[9].xy;\n    s0.xy = s0.xy*hg_Params[9].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=f4d3e09c:894a0356:6332b3b1:c1c79ce4\n//SIG=00400000:00000000:00000000:00000001:0001:000a:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000078d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.009999999776, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = frag._texCoord0.yyyy*hg_Params[2];\n    r0 = frag._texCoord0.xxxx*hg_Params[1] + r0;\n    r0 = frag._texCoord0.zzzz*hg_Params[3] + r0;\n    r1 = r0 + hg_Params[4];\n    r0.x = float(r0.w < -hg_Params[4].w);\n    r0.z = float(c0.z < r1.w);\n    r0.y = r0.z;\n    r0.xy = float2(-r0.xy >= c0.zz);\n    r0.xz = fmin(r0.xx, r0.yz);\n    r0.w = fmin(r1.w, c0.x);\n    r2.x = fmax(r1.w, -c0.x);\n    r0.z = select(r0.w, r2.x, -r0.z < 0.00000f);\n    r0.x = select(r0.z, -c0.x, -r0.x < 0.00000f);\n    r1.xyz = r1.xyz/r0.xxx;\n    r2.zw = r1.xy - hg_Params[0].xy;\n    r2.xy = r2.zw/hg_Params[0].zw;\n    r2.xy = floor(r2.xy);\n    r2.xy = -r2.xy*hg_Params[0].zw + r2.zw;\n    r1.xy = r2.xy + hg_Params[0].xy;\n    r0.xyz = r1.yyy*hg_Params[6].xyz;\n    r0.xyz = r1.xxx*hg_Params[5].xyz + r0.xyz;\n    r0.xyz = r1.zzz*hg_Params[7].xyz + r0.xyz;\n    r0.w = float(r0.z < -hg_Params[8].w);\n    r0.xyz = r0.xyz + hg_Params[8].xyw;\n    r2.y = float(c0.z < r0.z);\n    r2.x = r2.y;\n    r2.z = fmin(r0.z, c0.x);\n    r0.w = c0.y - r0.w;\n    r2.y = fmin(r0.w, r2.y);\n    r2.x = float(-r2.x >= c0.z);\n    r0.z = fmax(r0.z, -c0.x);\n    r0.z = select(r2.z, r0.z, -r2.y < 0.00000f);\n    r0.w = fmin(r0.w, r2.x);\n    r0.z = select(r0.z, -c0.x, -r0.w < 0.00000f);\n    r0.xy = r0.xy/r0.zz;\n    r0.xy = r0.xy + hg_Params[9].xy;\n    r0.xy = r0.xy*hg_Params[9].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=4b4bc9f6:2cf8f900:0e89866a:3192f073\n//SIG=00000000:00000000:00000000:00000000:0001:000a:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (v7 <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    if (v7 - 394016 < 0xF0 || v7 > 0x6043F)
    {
      return "!!ARBfp1.0     \n##LEN=000000062a\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\nPARAM $p4=program.local[4];\nPARAM $p5=program.local[5];\nPARAM $p6=program.local[6];\nPARAM $p7=program.local[7];\nPARAM $p8=program.local[8];\nPARAM $p9=program.local[9];\nPARAM $c0={-0.009999999776,1.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2;\n##@\nMUL r0,$f0.y,$p2;\nMAD r0,$f0.x,$p1,r0;\nMAD r0,$f0.z,$p3,r0;\nADD r1,r0,$p4;\nSLT r0.x,r0.w,-$p4.w;\nSLT r0.z,$c0,r1.w;\nMOV r0.y,r0.z;\nSGE r0.xy,-r0,$c0.z;\nMIN r0.xz,r0.x,r0.yyzw;\nMIN r0.w,r1,$c0.x;\nMAX r2.x,r1.w,-$c0;\nCMP r0.z,-r0,r2.x,r0.w;\nCMP r0.x,-r0,-$c0,r0.z;\nRCP r0.xyz,r0.x;\nMUL r0.xyz,r0,r1;\nSUB r2.zw,r0.xyxy,$p0.xyxy;\nRCP r1.x,$p0.z;\nRCP r1.y,$p0.w;\nMUL r2.xy,r1,r2.zwzw;\nFLR r2.xy,r2;\nMAD r2.xy,-r2,$p0.zwzw,r2.zwzw;\nADD r0.xy,r2,$p0;\nMUL r1.xyz,r0.y,$p6;\nMAD r1.xyz,r0.x,$p5,r1;\nMAD r1.xyz,r0.z,$p7,r1;\nSLT r1.w,r1.z,-$p8;\nADD r1.xyz,r1,$p8.xyww;\nSLT r2.y,$c0.z,r1.z;\nMOV r2.x,r2.y;\nMIN r2.z,r1,$c0.x;\nSUB r1.w,$c0.y,r1;\nMIN r2.y,r1.w,r2;\nSGE r2.x,-r2,$c0.z;\nMAX r1.z,r1,-$c0.x;\nCMP r1.z,-r2.y,r1,r2;\nMIN r1.w,r1,r2.x;\nCMP r1.z,-r1.w,-$c0.x,r1;\nRCP r0.xy,r1.z;\nMUL r1.xy,r0,r1;\nADD r1.xy,r1,$p9;\n##0\nTEX $o0,r1,texture[0],RECT;\nEND\n##MD5=4ac77a33:8849ee9f:6646c2f7:db3a3547\n##SIG=00000000:00000000:00000000:00000000:0001:000a:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "!!ARBfp1.0     \n##LEN=0000000786\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $p2=program.local[2];\nPARAM $p3=program.local[3];\nPARAM $p4=program.local[4];\nPARAM $p5=program.local[5];\nPARAM $p6=program.local[6];\nPARAM $p7=program.local[7];\nPARAM $p8=program.local[8];\nPARAM $p9=program.local[9];\nPARAM $c0={-0.009999999776,1.000000000,0.000000000,0.5000000000};\nPARAM $c1={1.500000000,0.5000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2,r3,r4;\n##@\nMUL r0,$f0.y,$p2;\nMAD r0,$f0.x,$p1,r0;\nMAD r0,$f0.z,$p3,r0;\nADD r1,r0,$p4;\nSLT r0.x,r0.w,-$p4.w;\nSLT r0.z,$c0,r1.w;\nMOV r0.y,r0.z;\nSGE r0.xy,-r0,$c0.z;\nMIN r0.xz,r0.x,r0.yyzw;\nMIN r0.w,r1,$c0.x;\nMAX r2.x,r1.w,-$c0;\nCMP r0.z,-r0,r2.x,r0.w;\nCMP r0.x,-r0,-$c0,r0.z;\nRCP r0.xyz,r0.x;\nMUL r0.xyz,r0,r1;\nSUB r2.zw,r0.xyxy,$p0.xyxy;\nRCP r1.x,$p0.z;\nRCP r1.y,$p0.w;\nMUL r2.xy,r1,r2.zwzw;\nFLR r2.xy,r2;\nMAD r2.xy,-r2,$p0.zwzw,r2.zwzw;\nADD r0.xy,r2,$p0;\nMUL r1.xyz,r0.y,$p6;\nMAD r1.xyz,r0.x,$p5,r1;\nMAD r1.xyz,r0.z,$p7,r1;\nSLT r1.w,r1.z,-$p8;\nADD r1.xyz,r1,$p8.xyww;\nSLT r2.y,$c0.z,r1.z;\nMOV r2.x,r2.y;\nMIN r2.z,r1,$c0.x;\nSUB r1.w,$c0.y,r1;\nMIN r2.y,r1.w,r2;\nSGE r2.x,-r2,$c0.z;\nMAX r1.z,r1,-$c0.x;\nCMP r1.z,-r2.y,r1,r2;\nMIN r1.w,r1,r2.x;\nCMP r1.z,-r1.w,-$c0.x,r1;\nRCP r0.xy,r1.z;\nMUL r1.xy,r0,r1;\nADD r1.xy,r1,$p9;\nSUB r1.xy,r1,$c0.w;\nFLR r2.xy,r1;\nFRC r1.xy,r1;\nADD r0.xy,r2,$c0.w;\n##0\nTEX r0,r0,texture[0],RECT;\nADD r3.xy,r2,$c1;\n##0\nTEX r3,r3,texture[0],RECT;\nADD r4.xy,r2,$c1.yxzw;\n##0\nTEX r4,r4,texture[0],RECT;\nADD r2.xy,r2,$c1.x;\n##0\nTEX r2,r2,texture[0],RECT;\nLRP r3,r1.x,r3,r0;\nLRP r4,r1.x,r2,r4;\nLRP $o0,r1.y,r4,r3;\nEND\n##MD5=955c87b8:0af1818c:8f0edfbf:937f46f9\n##SIG=00000000:00000000:00000000:00000000:0002:000a:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
    }
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000008c5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.009999999776, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = hg_TexCoord0.yyyy*hg_ProgramLocal2;\n    r0 = hg_TexCoord0.xxxx*hg_ProgramLocal1 + r0;\n    r0 = hg_TexCoord0.zzzz*hg_ProgramLocal3 + r0;\n    r1 = r0 + hg_ProgramLocal4;\n    r0.x = float(r0.w < -hg_ProgramLocal4.w);\n    r0.z = float(c0.z < r1.w);\n    r0.y = r0.z;\n    r0.xy = vec2(greaterThanEqual(-r0.xy, c0.zz));\n    r0.xz = min(r0.xx, r0.yz);\n    r0.w = min(r1.w, c0.x);\n    r2.x = max(r1.w, -c0.x);\n    r0.z = -r0.z < 0.00000 ? r2.x : r0.w;\n    r0.x = -r0.x < 0.00000 ? -c0.x : r0.z;\n    r1.xyz = r1.xyz/r0.xxx;\n    r2.zw = r1.xy - hg_ProgramLocal0.xy;\n    r2.xy = r2.zw/hg_ProgramLocal0.zw;\n    r2.xy = floor(r2.xy);\n    r2.xy = -r2.xy*hg_ProgramLocal0.zw + r2.zw;\n    r1.xy = r2.xy + hg_ProgramLocal0.xy;\n    r0.xyz = r1.yyy*hg_ProgramLocal6.xyz;\n    r0.xyz = r1.xxx*hg_ProgramLocal5.xyz + r0.xyz;\n    r0.xyz = r1.zzz*hg_ProgramLocal7.xyz + r0.xyz;\n    r0.w = float(r0.z < -hg_ProgramLocal8.w);\n    r0.xyz = r0.xyz + hg_ProgramLocal8.xyw;\n    r2.y = float(c0.z < r0.z);\n    r2.x = r2.y;\n    r2.z = min(r0.z, c0.x);\n    r0.w = c0.y - r0.w;\n    r2.y = min(r0.w, r2.y);\n    r2.x = float(-r2.x >= c0.z);\n    r0.z = max(r0.z, -c0.x);\n    r0.z = -r2.y < 0.00000 ? r0.z : r2.z;\n    r0.w = min(r0.w, r2.x);\n    r0.z = -r0.w < 0.00000 ? -c0.x : r0.z;\n    r0.xy = r0.xy/r0.zz;\n    r0.xy = r0.xy + hg_ProgramLocal9.xy;\n    r0.xy = r0.xy*hg_ProgramLocal9.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=2ba55dea:465081e7:944fffc8:1e72b899\n//SIG=00000000:00000000:00000000:00000000:0001:000a:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_26024A624(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_26024A7A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26024A7F4()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26024A7ECLL);
}

uint64_t HgcWrapRepeat::BindTexture(HgcWrapRepeat *this, HGRenderer **a2, int a3)
{
  Target = HGRenderer::GetTarget(a2[18], 393216);
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if (Target > 0x6043F || Target - 394016 <= 0xEF)
  {
    (*(*a2 + 9))(a2, 0, 0);
    v8 = (*(*this + 312))(this, 0);
    (*(*a2 + 6))(a2, v8, v8);
  }

  if ((*(*a2[18] + 128))(a2[18], 46))
  {
    v11.n128_u32[0] = 1.0;
    v12.n128_u32[0] = 1.0;
  }

  else
  {
    v11.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
    v12.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
  }

  v9.n128_f32[0] = *(a2 + 60);
  v10.n128_f32[0] = *(a2 + 61);
  (*(*a2 + 17))(a2, 9, v9, v10, v11, v12);
  return 0;
}

uint64_t HgcWrapRepeat::Bind(HgcWrapRepeat *this, HGHandler *a2)
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

uint64_t HgcWrapRepeat::RenderTile(HgcWrapRepeat *this, HGTile *a2)
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
          v21 = *(v19 + 32);
          v20 = *(v19 + 48);
          v22 = *(v19 + 16);
          v23 = vaddq_f32(vaddq_f32(vmulq_lane_f32(v21, *v17.f32, 1), vmulq_n_f32(v22, v17.f32[0])), vmulq_laneq_f32(v20, v17, 2));
          v24 = vaddq_f32(vaddq_f32(vmulq_lane_f32(v21, *v18.f32, 1), vmulq_n_f32(v22, v18.f32[0])), vmulq_laneq_f32(v20, v18, 2));
          v25 = *(v19 + 64);
          v26 = *(v19 + 80);
          v27 = vaddq_f32(v25, v23);
          v28 = vaddq_f32(v25, v24);
          v29 = vnegq_f32(v25);
          v30 = vcgtq_f32(v29, v23);
          v31 = vcgtq_f32(v29, v24);
          v33 = *(v19 + 128);
          v32 = *(v19 + 144);
          v34 = vandq_s8(v32, v30);
          v35 = vandq_s8(v32, v31);
          v37 = *(v19 + 160);
          v36 = *(v19 + 176);
          v34.i64[0] = vextq_s8(v34, v34, 0xCuLL).u64[0];
          v34.i64[1] = vandq_s8(*&v37, vcgtq_f32(vrev64q_s32(*&v27), v32)).i64[1];
          v35.i64[0] = vextq_s8(v35, v35, 0xCuLL).u64[0];
          v35.i64[1] = vandq_s8(*&v37, vcgtq_f32(vrev64q_s32(*&v28), v32)).i64[1];
          v38 = vbslq_s8(v36, vextq_s8(v34, v34, 4uLL), v34);
          v39 = vbslq_s8(v36, vextq_s8(v35, v35, 4uLL), v35);
          v22.i64[0] = vandq_s8(v32, vcgeq_f32(vnegq_f32(v38), v37)).u64[0];
          v40.i64[0] = vandq_s8(v32, vcgeq_f32(vnegq_f32(v39), v37)).u64[0];
          v22.i64[1] = vextq_s8(v38, v38, 8uLL).u64[0];
          v42 = *(v19 + 192);
          v41 = *(v19 + 208);
          *v43.f32 = vqtbl1_s8(v22, *v42.i8);
          v44 = vextq_s8(v42, v42, 8uLL).u64[0];
          *&v43.u32[2] = vqtbl1_s8(v22, v44);
          v40.i64[1] = vextq_s8(v39, v39, 8uLL).u64[0];
          *v39.f32 = vqtbl1_s8(v40, *v42.i8);
          *&v39.u32[2] = vqtbl1_s8(v40, v44);
          v45 = vminq_f32(vdupq_lane_s64(v40.i64[0], 0), v39);
          v46 = vbslq_s8(v41, vminq_f32(v27, v37), vminq_f32(vdupq_lane_s64(v22.i64[0], 0), v43));
          v47 = vbslq_s8(v41, vminq_f32(v28, v37), v45);
          v49 = *(v19 + 224);
          v48 = *(v19 + 240);
          v50 = vbslq_s8(vcgtq_f32(v46, v49), vdupq_lane_s64(vmaxq_f32(vextq_s8(v27, v27, 0xCuLL), v49).i64[0], 0), vrev64q_s32(v46));
          v51 = vbslq_s8(vcgtq_f32(v47, v49), vdupq_lane_s64(vmaxq_f32(vextq_s8(v28, v28, 0xCuLL), v49).i64[0], 0), vrev64q_s32(v47));
          v46.i64[1] = v50.i64[1];
          v47.i64[1] = v51.i64[1];
          v52 = vcgtq_f32(v46, v37);
          v37.i64[0] = vbslq_s8(vcgtq_f32(v47, v37), v49, vdupq_laneq_s32(v51, 2)).u64[0];
          v53 = vdupq_lane_s32(*&vbslq_s8(v52, v49, vdupq_laneq_s32(v50, 2)), 0);
          v54 = vdupq_lane_s32(*v37.f32, 0);
          v55 = *(v19 + 256);
          v56 = *(v19 + 272);
          v57 = vminq_f32(vmaxq_f32(vrecpeq_f32(v53), v48), v55);
          v58 = vminq_f32(vmaxq_f32(vrecpeq_f32(v54), v48), v55);
          v59 = vminq_f32(vmaxq_f32(vmulq_f32(v57, vrecpsq_f32(v53, v57)), v48), v55);
          v60 = vminq_f32(vmaxq_f32(vmulq_f32(v58, vrecpsq_f32(v54, v58)), v48), v55);
          v61 = vmulq_f32(v27, vmulq_f32(v59, vrecpsq_f32(v53, v59)));
          v62 = vmulq_f32(v28, vmulq_f32(v60, vrecpsq_f32(v54, v60)));
          v63 = vsubq_f32(v61, *v19);
          v64 = vsubq_f32(v62, *v19);
          v65 = vdupq_lane_s64(v63.i64[0], 0);
          v66 = vdupq_lane_s64(v64.i64[0], 0);
          v67 = vextq_s8(*v19, *v19, 8uLL);
          v68 = vminq_f32(vmaxq_f32(vrecpeq_f32(v67), v48), v55);
          v69 = vminq_f32(vmaxq_f32(vmulq_f32(v68, vrecpsq_f32(v67, v68)), v48), v55);
          v70 = vmulq_f32(v69, vrecpsq_f32(v67, v69));
          v71 = vdupq_laneq_s64(v65, 1);
          v65.i64[0] = vmulq_f32(v63, v70).u64[0];
          v72 = vdupq_laneq_s64(v66, 1);
          v66.i64[0] = vmulq_f32(v64, v70).u64[0];
          v73 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
          v74 = vsubq_f32(v73, vbslq_s8(vcgtq_f32(v73, v65), v32, 0));
          v75 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
          v74.i64[0] = vaddq_f32(*v19, vsubq_f32(v71, vmulq_f32(v67, v74))).u64[0];
          v21.i64[0] = vaddq_f32(*v19, vsubq_f32(v72, vmulq_f32(v67, vsubq_f32(v75, vbslq_s8(vcgtq_f32(v75, v66), v32, 0))))).u64[0];
          v76 = *(v19 + 96);
          v77 = *(v19 + 112);
          v78 = vaddq_f32(vmulq_lane_f32(v76, *v21.f32, 1), vmulq_n_f32(v26, v21.f32[0]));
          v79 = vaddq_f32(vmulq_laneq_f32(v77, v61, 2), vaddq_f32(vmulq_lane_f32(v76, *v74.f32, 1), vmulq_n_f32(v26, v74.f32[0])));
          v80 = vaddq_f32(vmulq_laneq_f32(v77, v62, 2), v78);
          v81 = vnegq_f32(v33);
          v82 = vandq_s8(v48, vcgtq_f32(v81, vrev64q_s32(v79)));
          v83 = vandq_s8(v48, vcgtq_f32(v81, vrev64q_s32(v80)));
          *v76.f32 = vqtbl1_s8(v33, *v56.i8);
          *&v76.u32[2] = vqtbl1_s8(v33, *&vextq_s8(v56, v56, 8uLL));
          v84 = vaddq_f32(v76, vbslq_s8(v41, v82, v79));
          v85 = vaddq_f32(v76, vbslq_s8(v41, v83, v80));
          v86 = vbslq_s8(v41, v82, v84);
          v87 = vbslq_s8(v41, v83, v85);
          v88 = vandq_s8(v32, vcgtq_f32(vextq_s8(v86, v86, 4uLL), v49));
          v89 = vandq_s8(v32, vcgtq_f32(vextq_s8(v87, v87, 4uLL), v49));
          v90 = *(v19 + 288);
          v91 = *(v19 + 304);
          v88.i64[0] = vbslq_s8(v90, vrev64q_s32(v88), v88).u64[0];
          v89.i64[0] = vbslq_s8(v90, vrev64q_s32(v89), v89).u64[0];
          v88.i64[1] = vminq_f32(v86, v91).i64[1];
          v89.i64[1] = vminq_f32(v87, v91).i64[1];
          v92 = vbslq_s8(v41, vsubq_f32(v91, v86), v84);
          v93 = vbslq_s8(v41, vsubq_f32(v91, v87), v85);
          v94 = vbslq_s8(v36, vminq_f32(vextq_s8(v92, v92, 8uLL), v88), v88);
          v95 = vbslq_s8(v36, vminq_f32(vextq_s8(v93, v93, 8uLL), v89), v89);
          v96 = vbslq_s8(v90, vandq_s8(v32, vcgeq_f32(vnegq_f32(v94), v91)), v94);
          v97 = vbslq_s8(v90, vandq_s8(v32, vcgeq_f32(vnegq_f32(v95), v91)), v95);
          v98 = *(v19 + 320);
          v99 = *(v19 + 336);
          v100 = vbslq_s8(v99, vbslq_s8(vcgtq_f32(vextq_s8(v96, v96, 0xCuLL), v49), vbslq_s8(v99, vmaxq_f32(v92, v98), v92), v96), v92);
          v101 = vbslq_s8(v99, vbslq_s8(vcgtq_f32(vextq_s8(v97, v97, 0xCuLL), v49), vbslq_s8(v99, vmaxq_f32(v93, v98), v93), v97), v93);
          v102 = vbslq_s8(v41, vminq_f32(v100, vextq_s8(v96, v96, 4uLL)), v100);
          v103 = vbslq_s8(v41, vminq_f32(v101, vextq_s8(v97, v97, 4uLL)), v101);
          v104 = vbslq_s8(vcgtq_f32(vrev64q_s32(v102), v49), v98, v102);
          v105 = vbslq_s8(vcgtq_f32(vrev64q_s32(v103), v49), v98, v103);
          v102.i64[1] = v104.i64[1];
          v103.i64[1] = v105.i64[1];
          v106 = vdupq_laneq_s32(v104, 2);
          v107 = vdupq_laneq_s32(v105, 2);
          v108 = vminq_f32(vmaxq_f32(vrecpeq_f32(v106), v48), v55);
          v109 = vminq_f32(vmaxq_f32(vrecpeq_f32(v107), v48), v55);
          v110 = vminq_f32(vmaxq_f32(vmulq_f32(v108, vrecpsq_f32(v106, v108)), v48), v55);
          v111 = vminq_f32(vmaxq_f32(vmulq_f32(v109, vrecpsq_f32(v107, v109)), v48), v55);
          v112 = vmulq_f32(vmulq_f32(v111, vrecpsq_f32(v107, v111)), v103);
          v113 = *(a2 + 22);
          v114 = vsubq_f32(vmulq_f32(vmulq_f32(v110, vrecpsq_f32(v106, v110)), v102), v9);
          v115 = *(a2 + 10);
          if (v5)
          {
            v116 = vaddq_s32(vcvtq_s32_f32(v114), vcltzq_f32(v114));
            v117 = vsubq_f32(v114, vcvtq_f32_s32(v116)).u64[0];
            v118 = vsubq_f32(v112, v9);
            v119 = vaddq_s32(vcvtq_s32_f32(v118), vcltzq_f32(v118));
            v120 = vsubq_f32(v118, vcvtq_f32_s32(v119)).u64[0];
            *v116.i8 = vmla_s32(vzip1_s32(*v116.i8, *v119.i8), vzip2_s32(*v116.i8, *v119.i8), vdup_n_s32(v113));
            v121 = (v115 + 16 * v116.i32[0]);
            v122 = vaddq_f32(*v121, vmulq_n_f32(vsubq_f32(v121[1], *v121), v117.f32[0]));
            v123 = vaddq_f32(v122, vmulq_lane_f32(vsubq_f32(vaddq_f32(v121[v113], vmulq_n_f32(vsubq_f32(v121[v113 + 1], v121[v113]), v117.f32[0])), v122), v117, 1));
            v124 = (v115 + 16 * v116.i32[1]);
            v125 = vaddq_f32(*v124, vmulq_n_f32(vsubq_f32(v124[1], *v124), v120.f32[0]));
            v126 = vaddq_f32(v125, vmulq_lane_f32(vsubq_f32(vaddq_f32(v124[v113], vmulq_n_f32(vsubq_f32(v124[v113 + 1], v124[v113]), v120.f32[0])), v125), v120, 1));
          }

          else
          {
            v127 = vaddq_f32(v114, v13);
            v128 = vcvtq_s32_f32(v127);
            v129 = vaddq_f32(vsubq_f32(v112, v9), v13);
            v130 = vcvtq_s32_f32(v129);
            *v127.f32 = vadd_s32(*v128.i8, *&vcgtq_f32(vcvtq_f32_s32(v128), v127));
            *v129.f32 = vadd_s32(*v130.i8, *&vcgtq_f32(vcvtq_f32_s32(v130), v129));
            *v129.f32 = vmla_s32(vzip1_s32(*v127.f32, *v129.f32), vzip2_s32(*v127.f32, *v129.f32), vdup_n_s32(v113));
            v131 = v129.i32[1];
            v123 = *(v115 + 16 * v129.i32[0]);
            v126 = *(v115 + 16 * v131);
          }

          v132 = (v11 + 16 * v15);
          *v132 = v123;
          v132[1] = v126;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v133 = *(this + 51);
        v134 = vaddq_f32(vaddq_f32(vmulq_lane_f32(*(v133 + 32), *v17.f32, 1), vmulq_n_f32(*(v133 + 16), v17.f32[0])), vmulq_laneq_f32(*(v133 + 48), v17, 2));
        v135 = *(v133 + 64);
        v136 = vaddq_f32(v135, v134);
        v137 = vcgtq_f32(vnegq_f32(v135), v134);
        v139 = *(v133 + 128);
        v138 = *(v133 + 144);
        v140 = vandq_s8(v138, v137);
        v142 = *(v133 + 160);
        v141 = *(v133 + 176);
        v140.i64[0] = vextq_s8(v140, v140, 0xCuLL).u64[0];
        v140.i64[1] = vandq_s8(*&v142, vcgtq_f32(vrev64q_s32(*&v136), v138)).i64[1];
        v143 = vbslq_s8(v141, vextq_s8(v140, v140, 4uLL), v140);
        v144.i64[0] = vandq_s8(v138, vcgeq_f32(vnegq_f32(v143), v142)).u64[0];
        v144.i64[1] = vextq_s8(v143, v143, 8uLL).u64[0];
        v145 = *(v133 + 192);
        v146 = *(v133 + 208);
        *v147.f32 = vqtbl1_s8(v144, *v145.i8);
        *&v147.u32[2] = vqtbl1_s8(v144, *&vextq_s8(v145, v145, 8uLL));
        v148 = vminq_f32(vdupq_lane_s64(v144.i64[0], 0), v147);
        v150 = *(v133 + 224);
        v149 = *(v133 + 240);
        v151 = vbslq_s8(v146, vminq_f32(v136, v142), v148);
        v152 = vbslq_s8(vcgtq_f32(v151, v150), vdupq_lane_s64(vmaxq_f32(vextq_s8(v136, v136, 0xCuLL), v150).i64[0], 0), vrev64q_s32(v151));
        v151.i64[1] = v152.i64[1];
        v153 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v151, v142), v150, vdupq_laneq_s32(v152, 2)), 0);
        v154 = *(v133 + 256);
        v155 = *(v133 + 272);
        v156 = vminq_f32(vmaxq_f32(vrecpeq_f32(v153), v149), v154);
        v157 = vminq_f32(vmaxq_f32(vmulq_f32(v156, vrecpsq_f32(v153, v156)), v149), v154);
        v158 = vmulq_f32(v136, vmulq_f32(v157, vrecpsq_f32(v153, v157)));
        v159 = vsubq_f32(v158, *v133);
        v160 = vdupq_lane_s64(v159.i64[0], 0);
        v161 = vextq_s8(*v133, *v133, 8uLL);
        v162 = vminq_f32(vmaxq_f32(vrecpeq_f32(v161), v149), v154);
        v163 = vminq_f32(vmaxq_f32(vmulq_f32(v162, vrecpsq_f32(v161, v162)), v149), v154);
        v159.i64[0] = vmulq_f32(v159, vmulq_f32(v163, vrecpsq_f32(v161, v163))).u64[0];
        v164 = vdupq_laneq_s64(v160, 1);
        v160.i64[0] = v159.i64[0];
        v165 = vcvtq_f32_s32(vcvtq_s32_f32(v160));
        v166 = vaddq_f32(*v133, vsubq_f32(v164, vmulq_f32(v161, vsubq_f32(v165, vbslq_s8(vcgtq_f32(v165, v160), v138, 0))))).u64[0];
        v167 = vaddq_f32(vmulq_laneq_f32(*(v133 + 112), v158, 2), vaddq_f32(vmulq_lane_f32(*(v133 + 96), v166, 1), vmulq_n_f32(*(v133 + 80), v166.f32[0])));
        v168 = vandq_s8(v149, vcgtq_f32(vnegq_f32(v139), vrev64q_s32(v167)));
        *v158.f32 = vqtbl1_s8(v139, *v155.i8);
        *&v158.u32[2] = vqtbl1_s8(v139, *&vextq_s8(v155, v155, 8uLL));
        v169 = vaddq_f32(v158, vbslq_s8(v146, v168, v167));
        v170 = vbslq_s8(v146, v168, v169);
        v171 = vandq_s8(v138, vcgtq_f32(vextq_s8(v170, v170, 4uLL), v150));
        v172 = *(v133 + 288);
        v173 = *(v133 + 304);
        v171.i64[0] = vbslq_s8(v172, vrev64q_s32(v171), v171).u64[0];
        v171.i64[1] = vminq_f32(v170, v173).i64[1];
        v174 = vbslq_s8(v146, vsubq_f32(v173, v170), v169);
        v175 = vbslq_s8(v141, vminq_f32(vextq_s8(v174, v174, 8uLL), v171), v171);
        v176 = vbslq_s8(v172, vandq_s8(v138, vcgeq_f32(vnegq_f32(v175), v173)), v175);
        v177 = *(v133 + 320);
        v178 = vbslq_s8(*(v133 + 336), vbslq_s8(vcgtq_f32(vextq_s8(v176, v176, 0xCuLL), v150), vbslq_s8(*(v133 + 336), vmaxq_f32(v174, v177), v174), v176), v174);
        v179 = vbslq_s8(v146, vminq_f32(v178, vextq_s8(v176, v176, 4uLL)), v178);
        v180 = vbslq_s8(vcgtq_f32(vrev64q_s32(v179), v150), v177, v179);
        v179.i64[1] = v180.i64[1];
        v181 = vdupq_laneq_s32(v180, 2);
        v182 = vminq_f32(vmaxq_f32(vrecpeq_f32(v181), v149), v154);
        v183 = vminq_f32(vmaxq_f32(vmulq_f32(v182, vrecpsq_f32(v181, v182)), v149), v154);
        v184 = *(a2 + 22);
        v185 = vsubq_f32(vmulq_f32(vmulq_f32(v183, vrecpsq_f32(v181, v183)), v179), v9);
        v186 = *(a2 + 10);
        if (v5)
        {
          v187 = vaddq_s32(vcvtq_s32_f32(v185), vcltzq_f32(v185));
          v188 = vsubq_f32(v185, vcvtq_f32_s32(v187)).u64[0];
          v189 = (v186 + 16 * (v187.i32[0] + v187.i32[1] * v184));
          v190 = vaddq_f32(*v189, vmulq_n_f32(vsubq_f32(v189[1], *v189), v188.f32[0]));
          v191 = vaddq_f32(v190, vmulq_lane_f32(vsubq_f32(vaddq_f32(v189[v184], vmulq_n_f32(vsubq_f32(v189[v184 + 1], v189[v184]), v188.f32[0])), v190), v188, 1));
        }

        else
        {
          v192 = vaddq_f32(v185, v13);
          v193 = vcvtq_s32_f32(v192);
          v192.i64[0] = vaddq_s32(v193, vcgtq_f32(vcvtq_f32_s32(v193), v192)).u64[0];
          v191 = *(v186 + 16 * (v192.i32[0] + v192.i32[1] * v184));
        }

        *(v11 + 16 * v15) = v191;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcWrapRepeat::GetDOD(HgcWrapRepeat *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcWrapRepeat::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcWrapRepeat::HgcWrapRepeat(HgcWrapRepeat *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B7C20;
  operator new();
}

void HgcWrapRepeat::~HgcWrapRepeat(HGNode *this)
{
  *this = &unk_2872B7C20;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C402BC884A0);
  }

  HGNode::~HGNode(this);
}

{
  HgcWrapRepeat::~HgcWrapRepeat(this);

  HGObject::operator delete(v1);
}

uint64_t HgcWrapRepeat::SetParameter(HgcWrapRepeat *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
      {
        *v12 = a3.n128_u32[0];
        *(v12 + 4) = a4;
        *(v12 + 8) = a5;
        *(v12 + 12) = a6;
        goto LABEL_56;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v9 = *(this + 51);
      if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a4 || *(v9 + 24) != a5 || *(v9 + 28) != a6)
      {
        *(v9 + 16) = a3.n128_u32[0];
        *(v9 + 20) = a4;
        *(v9 + 24) = a5;
        *(v9 + 28) = a6;
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
        if (v11[5].n128_f32[0] != a3.n128_f32[0] || v11[5].n128_f32[1] != a4 || v11[5].n128_f32[2] != a6 || v11[5].n128_f32[3] != 0.0)
        {
          v11[5].n128_u32[0] = a3.n128_u32[0];
          v11[5].n128_f32[1] = a4;
          v11[5].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v11[5].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v11[22] = a3;
          goto LABEL_56;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 6:
        v14 = *(this + 51);
        if (v14[6].n128_f32[0] != a3.n128_f32[0] || v14[6].n128_f32[1] != a4 || v14[6].n128_f32[2] != a6 || v14[6].n128_f32[3] != 0.0)
        {
          v14[6].n128_u32[0] = a3.n128_u32[0];
          v14[6].n128_f32[1] = a4;
          v14[6].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v14[6].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v14[23] = a3;
          goto LABEL_56;
        }

        return 0;
      case 7:
        v16 = *(this + 51);
        if (v16[7].n128_f32[0] != a3.n128_f32[0] || v16[7].n128_f32[1] != a4 || v16[7].n128_f32[2] != a6 || v16[7].n128_f32[3] != 0.0)
        {
          v16[7].n128_u32[0] = a3.n128_u32[0];
          v16[7].n128_f32[1] = a4;
          v16[7].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v16[7].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v16[24] = a3;
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

uint64_t HgcWrapRepeat::GetParameter(HgcWrapRepeat *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      v7 = *(this + 51);
      if (a2 == 2)
      {
        *a3 = v7[8];
        a3[1] = v7[9];
        a3[2] = v7[10];
        v5 = v7 + 11;
      }

      else
      {
        *a3 = v7[12];
        a3[1] = v7[13];
        a3[2] = v7[14];
        v5 = v7 + 15;
      }

      goto LABEL_20;
    }

    if (!a2)
    {
      v9 = *(this + 51);
      *a3 = *v9;
      a3[1] = v9[1];
      a3[2] = v9[2];
      v5 = v9 + 3;
      goto LABEL_20;
    }

    if (a2 == 1)
    {
      v6 = *(this + 51);
      *a3 = v6[4];
      a3[1] = v6[5];
      a3[2] = v6[6];
      v5 = v6 + 7;
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 <= 5)
    {
      v8 = *(this + 51);
      if (a2 == 4)
      {
        *a3 = v8[16];
        a3[1] = v8[17];
        a3[2] = v8[18];
        v5 = v8 + 19;
      }

      else
      {
        *a3 = v8[88];
        a3[1] = v8[89];
        a3[2] = v8[90];
        v5 = v8 + 91;
      }

      goto LABEL_20;
    }

    switch(a2)
    {
      case 6:
        v10 = *(this + 51);
        *a3 = v10[92];
        a3[1] = v10[93];
        a3[2] = v10[94];
        v5 = v10 + 95;
        goto LABEL_20;
      case 7:
        v11 = *(this + 51);
        *a3 = v11[96];
        a3[1] = v11[97];
        a3[2] = v11[98];
        v5 = v11 + 99;
        goto LABEL_20;
      case 8:
        v4 = *(this + 51);
        *a3 = v4[32];
        a3[1] = v4[33];
        a3[2] = v4[34];
        v5 = v4 + 35;
LABEL_20:
        v3 = 0;
        a3[3] = *v5;
        break;
    }
  }

  return v3;
}

const char *HgcTXColor::GetProgram(HgcTXColor *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000027f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0.w = r0.w*half(hg_Params[0].w);\n    r0.xyz = half3(hg_Params[0].xyz)*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c4d7569c:2d44c83b:168a2167:76b53a8c\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000265\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0.w = r0.w*hg_Params[0].w;\n    r0.xyz = hg_Params[0].xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=0779d546:fa52dd80:b861373f:9406dfe9\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=00000001f5\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\n##%\nTEMP r0;\n##@\n##0\nTEX r0.w,$f0,texture[0],RECT;\nMUL r0.w,r0,$p0;\nMUL r0.xyz,$p0,r0.w;\nMOV $o0,r0;\nEND\n##MD5=b88c9aa1:7b970a63:350aa2cb:9535f5bb\n##SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000237\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r0.w = r0.w*hg_ProgramLocal0.w;\n    r0.xyz = hg_ProgramLocal0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=5cc2f960:9e9a1675:5f2d55f1:a34cda55\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_26024BE70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_26024BF70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26024BFB0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26024BFA8);
}

uint64_t HgcTXColor::BindTexture(HgcTXColor *this, HGHandler *a2, int a3)
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

uint64_t HgcTXColor::Bind(HgcTXColor *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 62), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcTXColor::RenderTile(HgcTXColor *this, HGTile *a2)
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
          v12 = *(this + 62);
          v13 = vmulq_f32(*(v6 + v10 - 32), *v12);
          v14 = vmulq_f32(*(v6 + v10 - 16), *v12);
          v15 = vmulq_f32(*(v6 + v10), *v12);
          v16 = vmulq_f32(*(v6 + v10 + 16), *v12);
          v17 = *(v12 + 144);
          v18 = vbslq_s8(v17, v13, vmulq_laneq_f32(*v12, v13, 3));
          v19 = vbslq_s8(v17, v14, vmulq_laneq_f32(*v12, v14, 3));
          v20 = vbslq_s8(v17, v15, vmulq_laneq_f32(*v12, v15, 3));
          v21 = vbslq_s8(v17, v16, vmulq_laneq_f32(*v12, v16, 3));
          v22 = (v5 + v10);
          v22[-2] = v18;
          v22[-1] = v19;
          *v22 = v20;
          v22[1] = v21;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v23 = *(this + 62);
          v24 = vmulq_f32(*(v6 + 16 * v9), *v23);
          *(v5 + 16 * v9++) = vbslq_s8(*(v23 + 144), v24, vmulq_laneq_f32(*v23, v24, 3));
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

uint64_t HgcTXColor::GetDOD(HgcTXColor *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcTXColor::GetROI(HgcTXColor *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcTXColor::~HgcTXColor(HgcTXColor *this)
{
  *this = &unk_2872B7E88;
  v2 = *(this + 62);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  HgcTXColor::~HgcTXColor(this);

  HGObject::operator delete(v1);
}

uint64_t HgcTXColor::SetParameter(HgcTXColor *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 62);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  v7 = 1;
  *(this + 126) = 1;
  HGNode::ClearBits(this, a2, a7);
  return v7;
}

float HgcTXColor::GetParameter(HgcTXColor *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 62);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

HGNode *HgcTXColor::GetOutput(__n128 *this, HGRenderer *a2, __n128 a3, __n128 a4, float32x4_t a5)
{
  if (this[31].n128_u32[2])
  {
    v5 = this[31].n128_u64[0];
    v6 = vmulq_f32(*v5, 0);
    v7 = *(v5 + 144);
    a5 = vmulq_f32(*(v5 + 128), *v5);
    a4 = vbslq_s8(v7, v6, vmulq_laneq_f32(*v5, v6, 3));
    v8 = vbslq_s8(v7, a5, vmulq_laneq_f32(*v5, a5, 3));
    *(v5 + 16) = a4;
    *(this[31].n128_u64[0] + 32) = a4;
    *(this[31].n128_u64[0] + 48) = a4;
    *(this[31].n128_u64[0] + 64) = v8;
    v9 = this[31].n128_u64[0];
    this[27] = v9[1];
    this[28] = v9[2];
    this[29] = v9[3];
    a3 = v9[4];
    this[30] = a3;
    this[31].n128_u32[2] = 0;
  }

  return HGColorMatrix::GetOutput(this, a2, a3.n128_f64[0], a4.n128_f64[0], *a5.f32);
}

const char *HgcPMStripEvenField::GetProgram(HgcPMStripEvenField *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003a6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r2 = mix(r1, r2, c0.xxxx);\n    r1.x = half(fract(0.500000h*half(frag._texCoord1.y)) >= 0.500000h);\n    output.color0 = select(float4(r0), float4(r2), -float4(r1.xxxx) < 0.00000h);\n    return output;\n}\n//MD5=5084851f:fba9185d:22dfa3e1:0fc28038\n//SIG=00400000:00000000:00000000:00000001:0001:0000:0003:0000:0000:0000:001e:0000:0004:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000375\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r2 = mix(r1, r2, c0.xxxx);\n    r1.x = float(fract(0.500000f*frag._texCoord1.y) >= 0.500000f);\n    output.color0 = select(r0, r2, -r1.xxxx < 0.00000f);\n    return output;\n}\n//MD5=2e9d91d6:50113d3e:5e1e8649:ca6fddee\n//SIG=00000000:00000000:00000000:00000000:0001:0000:0003:0000:0000:0000:001e:0000:0004:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=00000002e7\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nATTRIB $f2=fragment.texcoord[2];\nATTRIB $f3=fragment.texcoord[3];\nPARAM $c0={0.5000000000,0.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\n##0\nTEX r1,$f2,texture[0],RECT;\n##0\nTEX r2,$f3,texture[0],RECT;\nLRP r2,$c0.x,r2,r1;\nMUL r1.x,$c0,$f1.y;\nFRC r1.x,r1;\nSGE r1.x,r1,$c0;\nCMP $o0,-r1.x,r2,r0;\nEND\n##MD5=29a43248:de9b99c5:ecd31446:e32229d2\n##SIG=00000000:00000000:00000000:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0004:01:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d3\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord2.xy);\n    r2 = texture2D(hg_Texture0, hg_TexCoord3.xy);\n    r2 = mix(r1, r2, c0.xxxx);\n    r1.x = c0.x*hg_TexCoord1.y;\n    r1.x = fract(r1.x);\n    r1.x = float(r1.x >= c0.x);\n    gl_FragColor = vec4(-r1.x < 0.00000 ? r2.x : r0.x, -r1.x < 0.00000 ? r2.y : r0.y, -r1.x < 0.00000 ? r2.z : r0.z, -r1.x < 0.00000 ? r2.w : r0.w);\n}\n//MD5=ca27118b:c945d0f7:15595b7c:a9239cd3\n//SIG=00000000:00000000:00000000:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0004:01:0:1:0\n";
  }
}

void sub_26024C65C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26024C89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26024C904()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26024C8FCLL);
}

uint64_t HgcPMStripEvenField::BindTexture(HgcPMStripEvenField *this, HGHandler *a2, int a3)
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

uint64_t HgcPMStripEvenField::Bind(HgcPMStripEvenField *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcPMStripEvenField::RenderTile(HgcPMStripEvenField *this, int8x8_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = a2[11].i32[0];
    *v7.i8 = vcvt_f32_u32(vand_s8(v2, 0x100000001));
    v7.i64[1] = 0x3F80000000000000;
    *v9.i32 = (v5 & 1);
    v9.i32[1] = 1.0;
    v8 = a2[2];
    v9.i64[1] = 0;
    v10 = a2[10];
    v11 = -v6;
    v12 = 16 * v6;
    v13 = (*&v10 + 16 * v6);
    v14 = v13 + 2;
    v15 = 16 * a2[3].i32[0];
    do
    {
      v16 = vdupq_lane_s32(*v7.i8, 1);
      if (v5 < 4)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        LODWORD(v17) = 0;
        v18 = 32;
        v19 = v14;
        v20 = v5;
        do
        {
          v21 = *(*&v10 + 16 * (v11 + v17));
          v22 = *(*&v10 + 16 * (v11 + v17 + 1));
          v23 = *(*&v10 + 16 * (v11 + v17 + 2));
          v24 = *(*&v10 + 16 * (v11 + v17 + 3));
          v25 = v19[-1];
          v26 = *(this + 51);
          v27 = vaddq_f32(v21, vmulq_f32(vsubq_f32(v19[-2], v21), *v26));
          v28 = *v19;
          v29 = v19[1];
          v19 += 4;
          v30 = vaddq_f32(v23, vmulq_f32(vsubq_f32(v28, v23), *v26));
          v31 = vcgtq_f32(v16, v26[1]);
          v32 = vbslq_s8(v31, vaddq_f32(v22, vmulq_f32(vsubq_f32(v25, v22), *v26)), *(*&v10 + v18 - 16));
          v33 = vbslq_s8(v31, v30, *(*&v10 + v18));
          v34 = vbslq_s8(v31, vaddq_f32(v24, vmulq_f32(vsubq_f32(v29, v24), *v26)), *(*&v10 + v18 + 16));
          v35 = (*&v8 + v18);
          v35[-2] = vbslq_s8(v31, v27, *(*&v10 + v18 - 32));
          v35[-1] = v32;
          v20 -= 4;
          *v35 = v33;
          v35[1] = v34;
          LODWORD(v17) = v17 + 4;
          v18 += 64;
        }

        while (v20 > 3);
      }

      if (v17 < v5)
      {
        v17 = v17;
        do
        {
          v36 = *(*&v10 + 16 * (v11 + v17));
          *(*&v8 + 16 * v17) = vbslq_s8(vcgtq_f32(v16, *(*(this + 51) + 16)), vaddq_f32(v36, vmulq_f32(vsubq_f32(v13[v17], v36), **(this + 51))), *(*&v10 + 16 * v17));
          ++v17;
        }

        while (v17 < v5);
      }

      *&v10 += v12;
      ++v4;
      v7 = veorq_s8(v7, v9);
      v14 = (v14 + v12);
      *&v8 += v15;
      v13 = (v13 + v12);
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcPMStripEvenField::GetDOD(HgcPMStripEvenField *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0, 0xFFFFFFFF, a3, 1u);
  return HGRectGrow(v6, v5, v7);
}

uint64_t HgcPMStripEvenField::GetROI(HgcPMStripEvenField *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0, 0xFFFFFFFF, a3, 1u);
  return HGRectGrow(v6, v5, v7);
}

void HgcPMStripEvenField::HgcPMStripEvenField(HgcPMStripEvenField *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B8100;
  operator new();
}

void HgcPMStripEvenField::~HgcPMStripEvenField(HGNode *this)
{
  *this = &unk_2872B8100;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  HgcPMStripEvenField::~HgcPMStripEvenField(this);

  HGObject::operator delete(v1);
}

const char *HgcMaskCompReplace::GetProgram(HgcMaskCompReplace *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000402\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, half4(hg_Params[0]));\n    r0.x = r0.x*half(hg_Params[1].y);\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*half(hg_Params[1].x) + r0.x;\n    r0.z = -r0.y + c0.x;\n    r0.z = select(r0.y, r0.z, -half(hg_Params[1].z) < 0.00000h);\n    r0.x = half(hg_Params[1].z) + c0.y;\n    r0.x = select(r0.y, r0.z, r0.x < 0.00000h);\n    output.color0 = select(float4(r0.yyyy), float4(r0.xxxx), -hg_Params[1].wwww < 0.00000h);\n    return output;\n}\n//MD5=26cc7fcf:10aa91a7:34f7b9ad:5e2890fb\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003cf\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0, hg_Params[0]);\n    r0.x = r0.x*hg_Params[1].y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_Params[1].x + r0.x;\n    r0.z = -r0.y + c0.x;\n    r0.z = select(r0.y, r0.z, -hg_Params[1].z < 0.00000f);\n    r0.x = hg_Params[1].z + c0.y;\n    r0.x = select(r0.y, r0.z, r0.x < 0.00000f);\n    output.color0 = select(r0.yyyy, r0.xxxx, -hg_Params[1].wwww < 0.00000f);\n    return output;\n}\n//MD5=d2b79949:8c64d465:e6394408:3b5018a6\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=00000002e4\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\nPARAM $p1=program.local[1];\nPARAM $c0={1.000000000,-2.000000000,0.000000000,0.000000000};\n##%\nTEMP r0;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\nDP4 r0.x,r0,$p0;\nMUL r0.x,r0,$p1.y;\nMAD r0.y,r0.x,$c0,$c0.x;\nMAD r0.y,r0,$p1.x,r0.x;\nADD r0.z,-r0.y,$c0.x;\nCMP r0.z,-$p1,r0,r0.y;\nADD r0.x,$p1.z,$c0.y;\nCMP r0.x,r0,r0.z,r0.y;\nCMP $o0,-$p1.w,r0.x,r0.y;\nEND\n##MD5=e75ffb65:ab2cde59:e05a9533:2ea5553c\n##SIG=00000000:00000001:00000001:00000000:0001:0002:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000044d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, -2.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = dot(r0, hg_ProgramLocal0);\n    r0.x = r0.x*hg_ProgramLocal1.y;\n    r0.y = r0.x*c0.y + c0.x;\n    r0.y = r0.y*hg_ProgramLocal1.x + r0.x;\n    r0.z = -r0.y + c0.x;\n    r0.z = -hg_ProgramLocal1.z < 0.00000 ? r0.z : r0.y;\n    r0.x = hg_ProgramLocal1.z + c0.y;\n    r0.x = r0.x < 0.00000 ? r0.z : r0.y;\n    gl_FragColor = vec4(-hg_ProgramLocal1.w < 0.00000 ? r0.x : r0.y, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r0.y, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r0.y, -hg_ProgramLocal1.w < 0.00000 ? r0.x : r0.y);\n}\n//MD5=425ccaa3:4ecfec84:34f5a6cc:42956020\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_26024D0D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_26024D1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26024D218()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26024D210);
}

uint64_t HgcMaskCompReplace::BindTexture(HgcMaskCompReplace *this, HGHandler *a2, int a3)
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

uint64_t HgcMaskCompReplace::Bind(HgcMaskCompReplace *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMaskCompReplace::RenderTile(HgcMaskCompReplace *this, HGTile *a2)
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
          v13 = *(v12 + 16);
          v14 = vmulq_f32(*(v6 + v10 - 32), *v12);
          v15 = vmulq_f32(*(v6 + v10 - 16), *v12);
          v16 = vmulq_f32(*(v6 + v10), *v12);
          v17 = vmulq_f32(*(v6 + v10 + 16), *v12);
          v18 = vaddq_f32(v14, vextq_s8(v14, v14, 4uLL));
          v19 = vaddq_f32(v15, vextq_s8(v15, v15, 4uLL));
          v20 = vaddq_f32(v16, vextq_s8(v16, v16, 4uLL));
          v21 = vaddq_f32(v17, vextq_s8(v17, v17, 4uLL));
          v22 = vaddq_f32(v21, vextq_s8(v21, v21, 8uLL));
          v23 = vmulq_lane_f32(vaddq_f32(v18, vextq_s8(v18, v18, 8uLL)), *v13.f32, 1);
          v24 = vmulq_lane_f32(vaddq_f32(v19, vextq_s8(v19, v19, 8uLL)), *v13.f32, 1);
          v25 = vmulq_lane_f32(vaddq_f32(v20, vextq_s8(v20, v20, 8uLL)), *v13.f32, 1);
          v26 = vmulq_lane_f32(v22, *v13.f32, 1);
          v27 = *(v12 + 32);
          v28 = *(v12 + 48);
          v29 = *(v12 + 64);
          v30 = vbslq_s8(v29, v23, vaddq_f32(v27, vmulq_f32(v28, vrev64q_s32(v23))));
          v31 = vbslq_s8(v29, v24, vaddq_f32(v27, vmulq_f32(v28, vrev64q_s32(v24))));
          v32 = vbslq_s8(v29, v25, vaddq_f32(v27, vmulq_f32(v28, vrev64q_s32(v25))));
          v33 = vbslq_s8(v29, v26, vaddq_f32(v27, vmulq_f32(v28, vrev64q_s32(v26))));
          v34 = vaddq_f32(vrev64q_s32(v30), vmulq_n_f32(v30, v13.f32[0]));
          v35 = vaddq_f32(vrev64q_s32(v31), vmulq_n_f32(v31, v13.f32[0]));
          v36 = vaddq_f32(vrev64q_s32(v32), vmulq_n_f32(v32, v13.f32[0]));
          v37 = vaddq_f32(vrev64q_s32(v33), vmulq_n_f32(v33, v13.f32[0]));
          v38 = vsubq_f32(v28, vextq_s8(v13, v34, 0xCuLL));
          v39 = vsubq_f32(v28, vextq_s8(v13, v35, 0xCuLL));
          v40 = vsubq_f32(v28, vextq_s8(v13, v36, 0xCuLL));
          v41 = vsubq_f32(v28, vextq_s8(v13, v37, 0xCuLL));
          v42.i64[0] = v34.i64[0];
          v42.i64[1] = v38.i64[1];
          v43.i64[0] = v35.i64[0];
          v44.i64[0] = v36.i64[0];
          v43.i64[1] = v39.i64[1];
          v44.i64[1] = v40.i64[1];
          v45.i64[0] = v37.i64[0];
          v45.i64[1] = v41.i64[1];
          v46 = vcgtq_f32(v13, v27);
          v34.i64[1] = vbslq_s8(v46, v38, vextq_s8(*&v13, v42, 0xCuLL)).i64[1];
          v35.i64[1] = vbslq_s8(v46, v39, vextq_s8(*&v13, v43, 0xCuLL)).i64[1];
          v36.i64[1] = vbslq_s8(v46, v40, vextq_s8(*&v13, v44, 0xCuLL)).i64[1];
          v37.i64[1] = vbslq_s8(v46, v41, vextq_s8(*&v13, v45, 0xCuLL)).i64[1];
          v47 = vsubq_f32(vextq_s8(v13, v13, 8uLL), v28);
          v48 = vbslq_s8(v29, v47, v34);
          v49 = vbslq_s8(v29, v47, v35);
          v50 = vbslq_s8(v29, v47, v36);
          v51 = vbslq_s8(v29, v47, v37);
          v52 = vcgtq_f32(v27, v48);
          v53 = vcgtq_f32(v27, v49);
          v54 = vcgtq_f32(v27, v50);
          v55 = vbslq_s8(vcgtq_f32(v27, v51), vdupq_laneq_s64(v51, 1), vrev64q_s32(v51));
          v51.i64[0] = vbslq_s8(v29, vbslq_s8(v52, vdupq_laneq_s64(v48, 1), vrev64q_s32(v48)), v34).u64[0];
          v34.i64[0] = vbslq_s8(v29, vbslq_s8(v53, vdupq_laneq_s64(v49, 1), vrev64q_s32(v49)), v35).u64[0];
          v35.i64[0] = vbslq_s8(v29, vbslq_s8(v54, vdupq_laneq_s64(v50, 1), vrev64q_s32(v50)), v36).u64[0];
          v29.i64[0] = vbslq_s8(v29, v55, v37).u64[0];
          v56 = vcgtq_f32(vdupq_laneq_s32(v13, 3), *(v12 + 80));
          v57 = (v5 + v10);
          v57[-2] = vbslq_s8(v56, vdupq_lane_s32(*v51.f32, 0), vdupq_lane_s32(*v51.f32, 1));
          v57[-1] = vbslq_s8(v56, vdupq_lane_s32(*v34.i8, 0), vdupq_lane_s32(*v34.i8, 1));
          *v57 = vbslq_s8(v56, vdupq_lane_s32(*v35.i8, 0), vdupq_lane_s32(*v35.i8, 1));
          v57[1] = vbslq_s8(v56, vdupq_lane_s32(*v29.i8, 0), vdupq_lane_s32(*v29.i8, 1));
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v58 = *(this + 51);
          v59 = *(v58 + 16);
          v60 = vmulq_f32(*(v6 + 16 * v9), *v58);
          v61 = vaddq_f32(v60, vextq_s8(v60, v60, 4uLL));
          v62 = vmulq_lane_f32(vaddq_f32(v61, vextq_s8(v61, v61, 8uLL)), *v59.f32, 1);
          v63 = *(v58 + 32);
          v64 = *(v58 + 48);
          v65 = *(v58 + 64);
          v66 = vbslq_s8(v65, v62, vaddq_f32(v63, vmulq_f32(v64, vrev64q_s32(v62))));
          v67 = vaddq_f32(vrev64q_s32(v66), vmulq_n_f32(v66, v59.f32[0]));
          v68 = vsubq_f32(v64, vextq_s8(v67, v67, 0xCuLL));
          v69.i64[0] = v67.i64[0];
          v69.i64[1] = v68.i64[1];
          v67.i64[1] = vbslq_s8(vcgtq_f32(v59, v63), v68, vextq_s8(v67, v69, 0xCuLL)).i64[1];
          v70 = vbslq_s8(v65, vsubq_f32(vextq_s8(v59, v59, 8uLL), v64), v67);
          v67.i64[0] = vbslq_s8(v65, vbslq_s8(vcgtq_f32(v63, v70), vdupq_laneq_s64(v70, 1), vrev64q_s32(v70)), v67).u64[0];
          *(v5 + 16 * v9++) = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v59, 3), *(v58 + 80)), vdupq_lane_s32(*v67.i8, 0), vdupq_lane_s32(*v67.i8, 1));
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

uint64_t HgcMaskCompReplace::GetDOD(HgcMaskCompReplace *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcMaskCompReplace::GetROI(HgcMaskCompReplace *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcMaskCompReplace::HgcMaskCompReplace(HgcMaskCompReplace *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B8368;
  operator new();
}

void HgcMaskCompReplace::~HgcMaskCompReplace(HGNode *this)
{
  *this = &unk_2872B8368;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcMaskCompReplace::~HgcMaskCompReplace(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMaskCompReplace::SetParameter(HgcMaskCompReplace *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMaskCompReplace::GetParameter(HgcMaskCompReplace *this, unsigned int a2, float *a3)
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

const char *HgcPMStripOddField::GetProgram(HgcPMStripOddField *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003a6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r2 = mix(r1, r2, c0.xxxx);\n    r1.x = half(fract(0.500000h*half(frag._texCoord1.y)) >= 0.500000h);\n    output.color0 = select(float4(r2), float4(r0), -float4(r1.xxxx) < 0.00000h);\n    return output;\n}\n//MD5=56b38b80:61a82783:d2d87a6d:5fd0a193\n//SIG=00400000:00000000:00000000:00000001:0001:0000:0003:0000:0000:0000:001e:0000:0004:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000375\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy);\n    r2 = mix(r1, r2, c0.xxxx);\n    r1.x = float(fract(0.500000f*frag._texCoord1.y) >= 0.500000f);\n    output.color0 = select(r2, r0, -r1.xxxx < 0.00000f);\n    return output;\n}\n//MD5=89f71f30:d1e3aae1:2723cdfc:c7cde105\n//SIG=00000000:00000000:00000000:00000000:0001:0000:0003:0000:0000:0000:001e:0000:0004:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=00000002e7\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nATTRIB $f1=fragment.texcoord[1];\nATTRIB $f2=fragment.texcoord[2];\nATTRIB $f3=fragment.texcoord[3];\nPARAM $c0={0.5000000000,0.000000000,0.000000000,0.000000000};\n##%\nTEMP r0,r1,r2;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\n##0\nTEX r1,$f2,texture[0],RECT;\n##0\nTEX r2,$f3,texture[0],RECT;\nLRP r2,$c0.x,r2,r1;\nMUL r1.x,$c0,$f1.y;\nFRC r1.x,r1;\nSGE r1.x,r1,$c0;\nCMP $o0,-r1.x,r0,r2;\nEND\n##MD5=7a82c137:7b79cd8d:7c5acf4f:f553035b\n##SIG=00000000:00000000:00000000:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0004:01:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d3\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord2.xy);\n    r2 = texture2D(hg_Texture0, hg_TexCoord3.xy);\n    r2 = mix(r1, r2, c0.xxxx);\n    r1.x = c0.x*hg_TexCoord1.y;\n    r1.x = fract(r1.x);\n    r1.x = float(r1.x >= c0.x);\n    gl_FragColor = vec4(-r1.x < 0.00000 ? r0.x : r2.x, -r1.x < 0.00000 ? r0.y : r2.y, -r1.x < 0.00000 ? r0.z : r2.z, -r1.x < 0.00000 ? r0.w : r2.w);\n}\n//MD5=97f90009:1c4d34e1:0d793564:b9d35255\n//SIG=00000000:00000000:00000000:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0004:01:0:1:0\n";
  }
}

void sub_26024DAC0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_26024DD00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26024DD68()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26024DD60);
}

uint64_t HgcPMStripOddField::BindTexture(HgcPMStripOddField *this, HGHandler *a2, int a3)
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

uint64_t HgcPMStripOddField::Bind(HgcPMStripOddField *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcPMStripOddField::RenderTile(HgcPMStripOddField *this, int8x8_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = a2[11].i32[0];
    *v7.i8 = vcvt_f32_u32(vand_s8(v2, 0x100000001));
    v7.i64[1] = 0x3F80000000000000;
    *v9.i32 = (v5 & 1);
    v9.i32[1] = 1.0;
    v8 = a2[2];
    v9.i64[1] = 0;
    v10 = a2[10];
    v11 = -v6;
    v12 = 16 * v6;
    v13 = (*&v10 + 16 * v6);
    v14 = v13 + 2;
    v15 = 16 * a2[3].i32[0];
    do
    {
      v16 = vdupq_lane_s32(*v7.i8, 1);
      if (v5 < 4)
      {
        LODWORD(v17) = 0;
      }

      else
      {
        LODWORD(v17) = 0;
        v18 = 32;
        v19 = v14;
        v20 = v5;
        do
        {
          v21 = *(*&v10 + 16 * (v11 + v17));
          v22 = *(*&v10 + 16 * (v11 + v17 + 1));
          v23 = *(*&v10 + 16 * (v11 + v17 + 2));
          v24 = *(*&v10 + 16 * (v11 + v17 + 3));
          v25 = v19[-1];
          v26 = *(this + 51);
          v27 = vaddq_f32(v21, vmulq_f32(vsubq_f32(v19[-2], v21), *v26));
          v28 = *v19;
          v29 = v19[1];
          v19 += 4;
          v30 = vaddq_f32(v23, vmulq_f32(vsubq_f32(v28, v23), *v26));
          v31 = vcgtq_f32(v16, v26[1]);
          v32 = vbslq_s8(v31, *(*&v10 + v18 - 16), vaddq_f32(v22, vmulq_f32(vsubq_f32(v25, v22), *v26)));
          v33 = vbslq_s8(v31, *(*&v10 + v18), v30);
          v34 = vbslq_s8(v31, *(*&v10 + v18 + 16), vaddq_f32(v24, vmulq_f32(vsubq_f32(v29, v24), *v26)));
          v35 = (*&v8 + v18);
          v35[-2] = vbslq_s8(v31, *(*&v10 + v18 - 32), v27);
          v35[-1] = v32;
          v20 -= 4;
          *v35 = v33;
          v35[1] = v34;
          LODWORD(v17) = v17 + 4;
          v18 += 64;
        }

        while (v20 > 3);
      }

      if (v17 < v5)
      {
        v17 = v17;
        do
        {
          v36 = *(*&v10 + 16 * (v11 + v17));
          *(*&v8 + 16 * v17) = vbslq_s8(vcgtq_f32(v16, *(*(this + 51) + 16)), *(*&v10 + 16 * v17), vaddq_f32(v36, vmulq_f32(vsubq_f32(v13[v17], v36), **(this + 51))));
          ++v17;
        }

        while (v17 < v5);
      }

      *&v10 += v12;
      ++v4;
      v7 = veorq_s8(v7, v9);
      v14 = (v14 + v12);
      *&v8 += v15;
      v13 = (v13 + v12);
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcPMStripOddField::GetDOD(HgcPMStripOddField *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0, 0xFFFFFFFF, a3, 1u);
  return HGRectGrow(v6, v5, v7);
}

uint64_t HgcPMStripOddField::GetROI(HgcPMStripOddField *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0, 0xFFFFFFFF, a3, 1u);
  return HGRectGrow(v6, v5, v7);
}

void HgcPMStripOddField::HgcPMStripOddField(HgcPMStripOddField *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872B85D0;
  operator new();
}

void HgcPMStripOddField::~HgcPMStripOddField(HGNode *this)
{
  *this = &unk_2872B85D0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  HgcPMStripOddField::~HgcPMStripOddField(this);

  HGObject::operator delete(v1);
}

const char *HgcPSImageTint::GetProgram(HgcPSImageTint *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000256\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a42cb56b:1fcb5ecc:969f09ef:c1a07a09\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000241\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = r0.xyz*hg_Params[0].xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=23d3843a:4a99c9dd:a97a56bb:b049b70b\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return "!!ARBfp1.0     \n##LEN=00000001e0\n##                          \n##                            \n##                                \n##                                     \n##$\nOUTPUT $o0=result.color;\nATTRIB $f0=fragment.texcoord[0];\nPARAM $p0=program.local[0];\n##%\nTEMP r0;\n##@\n##0\nTEX r0,$f0,texture[0],RECT;\nMUL r0.xyz,r0,$p0;\nMOV $o0,r0;\nEND\n##MD5=74ab830a:6a538ef9:f90c7f25:45a1849b\n##SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000020f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz;\n    gl_FragColor = r0;\n}\n//MD5=0f8ec3a9:eef1c591:59dd542e:b81a4daa\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_26024E53C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_26024E63C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_26024E67C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x26024E674);
}

uint64_t HgcPSImageTint::BindTexture(HgcPSImageTint *this, HGHandler *a2, int a3)
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

uint64_t HgcPSImageTint::Bind(HgcPSImageTint *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 62), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcPSImageTint::RenderTile(HgcPSImageTint *this, HGTile *a2)
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
          v12 = *(this + 62);
          v13 = *(v12 + 144);
          v14 = vbslq_s8(v13, *(v6 + v10 - 32), vmulq_f32(*(v6 + v10 - 32), *v12));
          v15 = vbslq_s8(v13, *(v6 + v10 - 16), vmulq_f32(*(v6 + v10 - 16), *v12));
          v16 = vbslq_s8(v13, *(v6 + v10), vmulq_f32(*(v6 + v10), *v12));
          v17 = vbslq_s8(v13, *(v6 + v10 + 16), vmulq_f32(*(v6 + v10 + 16), *v12));
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
          *(v5 + 16 * v9) = vbslq_s8(*(*(this + 62) + 144), *(v6 + 16 * v9), vmulq_f32(*(v6 + 16 * v9), **(this + 62)));
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

uint64_t HgcPSImageTint::GetDOD(HgcPSImageTint *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPSImageTint::GetROI(HgcPSImageTint *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPSImageTint::~HgcPSImageTint(HgcPSImageTint *this)
{
  *this = &unk_2872B8838;
  v2 = *(this + 62);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  HgcPSImageTint::~HgcPSImageTint(this);

  HGObject::operator delete(v1);
}

uint64_t HgcPSImageTint::SetParameter(HgcPSImageTint *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 62);
  if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
  {
    return 0;
  }

  *v8 = a3;
  v8[1] = a4;
  v8[2] = a5;
  v8[3] = a6;
  v7 = 1;
  *(this + 126) = 1;
  HGNode::ClearBits(this, a2, a7);
  return v7;
}

float HgcPSImageTint::GetParameter(HgcPSImageTint *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 62);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = v3[3];
    a3[3] = result;
  }

  return result;
}

HGNode *HgcPSImageTint::GetOutput(__n128 *this, HGRenderer *a2, __n128 a3, __n128 a4, __n128 a5)
{
  if (this[31].n128_u32[2])
  {
    v5 = this[31].n128_u64[0];
    v6 = *(v5 + 144);
    a4 = vbslq_s8(v6, *(v5 + 96), vmulq_f32(*(v5 + 96), *v5));
    a5 = vbslq_s8(v6, *(v5 + 112), vmulq_f32(*(v5 + 112), *v5));
    v7 = vbslq_s8(v6, *(v5 + 128), vmulq_f32(*(v5 + 128), *v5));
    *(v5 + 16) = vbslq_s8(v6, *(v5 + 80), vmulq_f32(*(v5 + 80), *v5));
    *(this[31].n128_u64[0] + 32) = a4;
    *(this[31].n128_u64[0] + 48) = a5;
    *(this[31].n128_u64[0] + 64) = v7;
    v8 = this[31].n128_u64[0];
    this[27] = v8[1];
    this[28] = v8[2];
    this[29] = v8[3];
    a3 = v8[4];
    this[30] = a3;
    this[31].n128_u32[2] = 0;
  }

  return HGColorMatrix::GetOutput(this, a2, a3.n128_f64[0], a4.n128_f64[0], a5.n128_u64[0]);
}

void OZAttractedToBehavior::OZAttractedToBehavior(OZAttractedToBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872B8AB0;
  v5[2] = &unk_2872B8D98;
  v5[6] = &unk_2872B8FF0;
  v5[42] = &unk_2872B9048;
  PCURL::PCURL(&v7, @"Attract Behavior Attracted To Object");
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 504), &v7, (this + 56), 0x190u, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Strength");
  OZChannelDouble::OZChannelDouble((this + 664), 300.0, &v7, (this + 56), 0x191u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Attenuation Type Enum");
  PCURL::PCURL(&v6, @"Attract Behavior Attenuation Type");
  OZChannelEnum::OZChannelEnum((this + 816), &v7, &v6, (this + 56), 0x196u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Attenuation");
  OZChannelDouble::OZChannelDouble((this + 1072), 1.0, &v7, (this + 56), 0x192u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Cutoff");
  OZChannelDouble::OZChannelDouble((this + 1224), 1000.0, &v7, (this + 56), 0x194u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Drag");
  OZChannelDouble::OZChannelDouble((this + 1376), 0.0, &v7, (this + 56), 0x195u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Active Axes");
  OZChannelBool3D::OZChannelBool3D((this + 1528), 1, 1, 0, &v7, (this + 56), 0x197u, 0, 3u);
  PCString::~PCString(&v7);
  OZChannel::setScale((this + 664), 0.1);
  OZChannel::setSliderMin((this + 664), 0.0);
  OZChannel::setSliderMax((this + 664), 1000.0);
  OZChannel::setMin((this + 1072), 1.0);
  OZChannel::setMin((this + 1224), 0.0);
  OZChannel::setSliderMax((this + 1224), 4000.0);
  OZChannel::setMin((this + 1376), 0.0);
  OZChannel::setSliderMax((this + 1376), 5.0);
  OZChanSceneNodeRef::setAllowsCyclicDependencies(this + 504, 1);
}

void sub_26024EF60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 1376));
  OZChannel::~OZChannel((v12 + 1224));
  OZChannel::~OZChannel((v12 + 1072));
  OZChannelEnum::~OZChannelEnum((v12 + 816));
  OZChannel::~OZChannel((v12 + 664));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v12 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v12);
  _Unwind_Resume(a1);
}

void OZAttractedToBehavior::OZAttractedToBehavior(OZAttractedToBehavior *this, OZAttractedToBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872B8AB0;
  v5[2] = &unk_2872B8D98;
  v5[6] = &unk_2872B8FF0;
  v5[42] = &unk_2872B9048;
  OZChanTransformNodeRef::OZChanTransformNodeRef((v5 + 63), (a2 + 504), (this + 56));
  OZChannel::OZChannel((this + 664), (a2 + 664), (this + 56));
  *(this + 83) = &unk_287245C60;
  *(this + 85) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 816), (a2 + 816), (this + 56));
  OZChannel::OZChannel((this + 1072), (a2 + 1072), (this + 56));
  *(this + 134) = &unk_287245C60;
  *(this + 136) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1224), (a2 + 1224), (this + 56));
  *(this + 153) = &unk_287245C60;
  *(this + 155) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1376), (a2 + 1376), (this + 56));
  *(this + 172) = &unk_287245C60;
  *(this + 174) = &unk_287245FC0;
  OZChannelBool3D::OZChannelBool3D((this + 1528), (a2 + 1528), (this + 56));
}

void sub_26024F290(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v5);
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannelEnum::~OZChannelEnum((v1 + 816));
  OZChannel::~OZChannel(v2);
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v1 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v1);
  _Unwind_Resume(a1);
}

void OZAttractedToBehavior::~OZAttractedToBehavior(OZAttractedToBehavior *this)
{
  *this = &unk_2872B8AB0;
  *(this + 2) = &unk_2872B8D98;
  *(this + 6) = &unk_2872B8FF0;
  *(this + 42) = &unk_2872B9048;
  OZChannelBool3D::~OZChannelBool3D((this + 1528));
  OZChannel::~OZChannel((this + 1376));
  OZChannel::~OZChannel((this + 1224));
  OZChannel::~OZChannel((this + 1072));
  OZChannelEnum::~OZChannelEnum((this + 816));
  OZChannel::~OZChannel((this + 664));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZAttractedToBehavior::~OZAttractedToBehavior(OZAttractedToBehavior *this)
{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 16));
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 48));
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 336));
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZAttractedToBehavior::operator=(uint64_t a1, const void *a2)
{
  OZReflexiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChanSceneNodeRef::operator=(a1 + 504, v4 + 504);
  OZChannelBase::operator=(a1 + 664, v5 + 664);
  OZChannelBase::operator=(a1 + 816, v5 + 816);
  OZChannelBase::operator=(a1 + 1072, v5 + 1072);
  OZChannelBase::operator=(a1 + 1224, v5 + 1224);

  return OZChannelBase::operator=(a1 + 1376, v5 + 1376);
}

void OZAttractedToBehavior::calcAttraction(uint64_t a1, const CMTime *a2, float64x2_t *a3, float64x2_t *a4, double *a5)
{
  OZChannel::getValueAsDouble((a1 + 664), a2, 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble((a1 + 1224), a2, 0.0);
  v13 = v12;
  v14 = a3[1].f64[0] - a4[1].f64[0];
  v26 = 0uLL;
  v27 = 0.0;
  v24 = vsubq_f64(*a3, *a4);
  OZChannelBool3D::getValue(a1 + 1528, MEMORY[0x277CC08F0], v26.f64, 0.0);
  v15 = vmulq_f64(v24, v26);
  v16 = v14 * v27;
  v17 = vaddvq_f64(vmulq_f64(v15, v15)) + v16 * v16;
  v18 = sqrt(v17);
  if (v18 >= 10.0 && v18 <= v13)
  {
    v25 = v15;
    ValueAsInt = OZChannel::getValueAsInt((a1 + 816), a2, 0.0);
    OZChannel::getValueAsDouble((a1 + 1072), a2, 0.0);
    if (ValueAsInt)
    {
      v22 = v17;
    }

    else
    {
      v22 = v18;
    }

    v23 = v11 / (v22 * v21);
    *a5 = v23 * v25.f64[0];
    a5[1] = vmuld_lane_f64(v23, v25, 1);
    a5[2] = v16 * v23;
  }

  else
  {
    *a5 = 0.0;
    a5[1] = 0.0;
    a5[2] = 0.0;
  }
}

uint64_t OZAttractedToBehavior::getMaskVector(uint64_t a1, double *a2, _DWORD *a3)
{
  result = OZChannelBool3D::getValue(a1 + 1528, MEMORY[0x277CC08F0], a2, 0.0);
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (fabs(a2[v6]) >= 0.0000001)
      {
        ++v7;
      }

      ++v6;
    }

    while (v6 != 3);
    *a3 = v7;
  }

  return result;
}

void OZAttractedToBehavior::calcAttraction(uint64_t a1, uint64_t a2, OZSimulationState *a3, uint64_t a4)
{
  v12 = *(a2 + 176);
  TransformNode = OZChanTransformNodeRef::getTransformNode((a1 + 504));
  if (!TransformNode || TransformNode == a3)
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  else
  {
    v10 = 0uLL;
    v11 = 0;
    OZSimulationState::getNodePosition(a2, (a2 + 176), TransformNode, a3, &v10);
    v9 = v12;
    OZAttractedToBehavior::calcAttraction(a1, &v9, &v10, a2, a4);
  }
}

double OZAttractedToBehavior::accumForces(OZAttractedToBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v9 = 0uLL;
  v10 = 0.0;
  OZAttractedToBehavior::calcAttraction(this, a2, a3, &v9);
  v8 = *(a2 + 176);
  OZChannel::getValueAsDouble((this + 1376), &v8, 0.0);
  v6 = v10 - v5 * *(a2 + 9);
  *(a2 + 8) = vaddq_f64(vsubq_f64(v9, vmulq_n_f64(*(a2 + 56), v5)), *(a2 + 8));
  result = v6 + *(a2 + 18);
  *(a2 + 18) = result;
  return result;
}

__n128 OZAttractedToBehavior::accumForces(OZAttractedToBehavior *this, OZSimStateArray *a2, OZTransformNode *a3)
{
  v15 = *(a2 + 1);
  TransformNode = OZChanTransformNodeRef::getTransformNode((this + 504));
  if (TransformNode)
  {
    v13 = 0uLL;
    v14 = 0;
    v12 = *(a2 + 1);
    OZSimulationState::GetNodePosition(&v12, TransformNode, a3, &v13);
    OZChannel::getValueAsDouble((this + 1376), &v15, 0.0);
    memset(&v12, 0, sizeof(v12));
    v8 = *a2;
    if (*a2 != *(a2 + 1))
    {
      v10 = result;
      do
      {
        v11 = v15;
        OZAttractedToBehavior::calcAttraction(this, &v11, &v13, v8, &v12.value);
        result = v10;
        v9 = *&v12.epoch - v10.n128_f64[0] * *(v8 + 72);
        *(v8 + 128) = vaddq_f64(vsubq_f64(*&v12.value, vmulq_n_f64(*(v8 + 56), v10.n128_f64[0])), *(v8 + 128));
        *(v8 + 144) = v9 + *(v8 + 144);
        v8 += 248;
      }

      while (v8 != *(a2 + 1));
    }
  }

  return result;
}

void OZAttractorBehavior::OZAttractorBehavior(OZAttractorBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZTransitiveBehavior::OZTransitiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872B9088;
  v5[2] = &unk_2872B9378;
  v5[6] = &unk_2872B95D0;
  v5[42] = &unk_2872B9628;
  PCURL::PCURL(&v7, @"Attract Behavior Strength");
  OZChannelDouble::OZChannelDouble((this + 792), 300.0, &v7, (this + 56), 0x190u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Attenuation Type Enum");
  PCURL::PCURL(&v6, @"Attract Behavior Attenuation Type");
  OZChannelEnum::OZChannelEnum((this + 944), &v7, &v6, (this + 56), 0x195u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Attenuation");
  OZChannelDouble::OZChannelDouble((this + 1200), 1.0, &v7, (this + 56), 0x191u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Cutoff");
  OZChannelDouble::OZChannelDouble((this + 1352), 1000.0, &v7, (this + 56), 0x193u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Drag");
  OZChannelDouble::OZChannelDouble((this + 1504), 0.0, &v7, (this + 56), 0x194u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Attract Behavior Active Axes");
  OZChannelBool3D::OZChannelBool3D((this + 1656), 1, 1, 0, &v7, (this + 56), 0x196u, 0, 3u);
  PCString::~PCString(&v7);
  OZChannel::setScale((this + 792), 0.1);
  OZChannel::setSliderMin((this + 792), 0.0);
  OZChannel::setSliderMax((this + 792), 1000.0);
  OZChannel::setDefaultValue((this + 344), 1.0);
  OZChannelBase::reset((this + 344), 0);
  OZChannel::setMin((this + 1200), 1.0);
  OZChannel::setMin((this + 1352), 0.0);
  OZChannel::setSliderMax((this + 1352), 4000.0);
  OZChannel::setMin((this + 1504), 0.0);
  OZChannel::setSliderMax((this + 1504), 5.0);
}

void sub_26024FD14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 1504));
  OZChannel::~OZChannel((v12 + 1352));
  OZChannel::~OZChannel((v12 + 1200));
  OZChannelEnum::~OZChannelEnum((v12 + 944));
  OZChannel::~OZChannel((v12 + 792));
  OZTransitiveBehavior::~OZTransitiveBehavior(v12);
  _Unwind_Resume(a1);
}

void OZAttractorBehavior::OZAttractorBehavior(OZAttractorBehavior *this, OZAttractorBehavior *a2, char a3)
{
  OZTransitiveBehavior::OZTransitiveBehavior(this, a2, a3);
  *v5 = &unk_2872B9088;
  *(v5 + 16) = &unk_2872B9378;
  *(v5 + 48) = &unk_2872B95D0;
  *(v5 + 336) = &unk_2872B9628;
  OZChannel::OZChannel((v5 + 792), (a2 + 792), (v5 + 56));
  *(this + 99) = &unk_287245C60;
  *(this + 101) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 944), (a2 + 944), (this + 56));
  OZChannel::OZChannel((this + 1200), (a2 + 1200), (this + 56));
  *(this + 150) = &unk_287245C60;
  *(this + 152) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1352), (a2 + 1352), (this + 56));
  *(this + 169) = &unk_287245C60;
  *(this + 171) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1504), (a2 + 1504), (this + 56));
  *(this + 188) = &unk_287245C60;
  *(this + 190) = &unk_287245FC0;
  OZChannelBool3D::OZChannelBool3D((this + 1656), (a2 + 1656), (this + 56));
}

void sub_260250014(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v5);
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannelEnum::~OZChannelEnum((v1 + 944));
  OZChannel::~OZChannel(v2);
  OZTransitiveBehavior::~OZTransitiveBehavior(v1);
  _Unwind_Resume(a1);
}

void OZAttractorBehavior::~OZAttractorBehavior(OZAttractorBehavior *this)
{
  *this = &unk_2872B9088;
  *(this + 2) = &unk_2872B9378;
  *(this + 6) = &unk_2872B95D0;
  *(this + 42) = &unk_2872B9628;
  OZChannelBool3D::~OZChannelBool3D((this + 1656));
  OZChannel::~OZChannel((this + 1504));
  OZChannel::~OZChannel((this + 1352));
  OZChannel::~OZChannel((this + 1200));
  OZChannelEnum::~OZChannelEnum((this + 944));
  OZChannel::~OZChannel((this + 792));

  OZTransitiveBehavior::~OZTransitiveBehavior(this);
}

{
  OZAttractorBehavior::~OZAttractorBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZAttractorBehavior::~OZAttractorBehavior(OZAttractorBehavior *this)
{
  OZAttractorBehavior::~OZAttractorBehavior((this - 16));
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 48));
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 336));
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZAttractorBehavior::operator=(uint64_t a1, const void *a2)
{
  OZTransitiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 792, v4 + 792);
  OZChannelBase::operator=(a1 + 944, v5 + 944);
  OZChannelBase::operator=(a1 + 1200, v5 + 1200);
  OZChannelBase::operator=(a1 + 1352, v5 + 1352);

  return OZChannelBase::operator=(a1 + 1504, v5 + 1504);
}

void OZAttractorBehavior::calcAttraction(uint64_t a1, const CMTime *a2, float64x2_t *a3, float64x2_t *a4, double *a5)
{
  OZChannel::getValueAsDouble((a1 + 792), a2, 0.0);
  v11 = v10;
  OZChannel::getValueAsDouble((a1 + 1352), a2, 0.0);
  v13 = v12;
  v14 = a3[1].f64[0] - a4[1].f64[0];
  v26 = 0uLL;
  v27 = 0.0;
  v24 = vsubq_f64(*a3, *a4);
  OZChannelBool3D::getValue(a1 + 1656, MEMORY[0x277CC08F0], v26.f64, 0.0);
  v15 = vmulq_f64(v24, v26);
  v16 = v14 * v27;
  v17 = vaddvq_f64(vmulq_f64(v15, v15)) + v16 * v16;
  v18 = sqrt(v17);
  if (v18 >= 10.0 && v18 <= v13)
  {
    v25 = v15;
    ValueAsInt = OZChannel::getValueAsInt((a1 + 944), a2, 0.0);
    OZChannel::getValueAsDouble((a1 + 1200), a2, 0.0);
    if (ValueAsInt)
    {
      v22 = v17;
    }

    else
    {
      v22 = v18;
    }

    v23 = v11 / (v22 * v21);
    *a5 = v23 * v25.f64[0];
    a5[1] = vmuld_lane_f64(v23, v25, 1);
    a5[2] = v16 * v23;
  }

  else
  {
    *a5 = 0.0;
    a5[1] = 0.0;
    a5[2] = 0.0;
  }
}

uint64_t OZAttractorBehavior::getMaskVector(uint64_t a1, double *a2, _DWORD *a3)
{
  result = OZChannelBool3D::getValue(a1 + 1656, MEMORY[0x277CC08F0], a2, 0.0);
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      if (fabs(a2[v6]) >= 0.0000001)
      {
        ++v7;
      }

      ++v6;
    }

    while (v6 != 3);
    *a3 = v7;
  }

  return result;
}

void OZAttractorBehavior::calcAttraction(OZSimulationBehavior *a1, uint64_t a2, OZSimulationState *a3, double *a4)
{
  v12 = *(a2 + 176);
  v10 = 0uLL;
  v11 = 0;
  TransformNode = OZSimulationBehavior::getTransformNode(a1);
  OZSimulationState::getNodePosition(a2, (a2 + 176), TransformNode, a3, &v10);
  v9 = v12;
  OZAttractorBehavior::calcAttraction(a1, &v9, &v10, a2, a4);
}

double OZAttractorBehavior::accumForces(OZAttractorBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v9 = 0uLL;
  v10 = 0.0;
  OZAttractorBehavior::calcAttraction(this, a2, a3, v9.f64);
  v8 = *(a2 + 176);
  OZChannel::getValueAsDouble((this + 1504), &v8, 0.0);
  v6 = v10 - v5 * *(a2 + 9);
  *(a2 + 8) = vaddq_f64(vsubq_f64(v9, vmulq_n_f64(*(a2 + 56), v5)), *(a2 + 8));
  result = v6 + *(a2 + 18);
  *(a2 + 18) = result;
  return result;
}

__n128 OZAttractorBehavior::accumForces(OZAttractorBehavior *this, OZSimStateArray *a2, OZTransformNode *a3)
{
  v15 = *(a2 + 1);
  v13 = 0uLL;
  v14 = 0;
  v12 = *(a2 + 1);
  TransformNode = OZSimulationBehavior::getTransformNode(this);
  OZSimulationState::GetNodePosition(&v12, TransformNode, a3, &v13);
  OZChannel::getValueAsDouble((this + 1504), &v15, 0.0);
  memset(&v12, 0, sizeof(v12));
  v8 = *a2;
  if (*a2 != *(a2 + 1))
  {
    v10 = result;
    do
    {
      v11 = v15;
      OZAttractorBehavior::calcAttraction(this, &v11, &v13, v8, &v12.value);
      result = v10;
      v9 = *&v12.epoch - v10.n128_f64[0] * *(v8 + 72);
      *(v8 + 128) = vaddq_f64(vsubq_f64(*&v12.value, vmulq_n_f64(*(v8 + 56), v10.n128_f64[0])), *(v8 + 128));
      *(v8 + 144) = v9 + *(v8 + 144);
      v8 += 248;
    }

    while (v8 != *(a2 + 1));
  }

  return result;
}

void OZAverageBehavior::OZAverageBehavior(OZAverageBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872B9668;
  v5[2] = &unk_2872B99A8;
  v5[6] = &unk_2872B9C00;
  v5[42] = &unk_2872B9C58;
  v5[67] = &unk_2872B9C80;
  PCURL::PCURL(&v6, @"Average Behavior Window Size");
  OZChannelDouble::OZChannelDouble((this + 864), 10.0, &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  OZChannel::setKeyframable((this + 864), 0);
  OZChannel::setMin((this + 864), 0.0);
  OZChannel::setMax((this + 864), 100.0);
  OZChannel::setSliderMin((this + 864), 0.0);
  OZChannel::setSliderMax((this + 864), 20.0);
}

void sub_260250884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void OZAverageBehavior::OZAverageBehavior(OZAverageBehavior *this, const OZAverageBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v5 = &unk_2872B9668;
  *(v5 + 16) = &unk_2872B99A8;
  *(v5 + 48) = &unk_2872B9C00;
  *(v5 + 336) = &unk_2872B9C58;
  *(v5 + 536) = &unk_2872B9C80;
  OZChannel::OZChannel((v5 + 864), (a2 + 864), (this + 56));
  *(this + 108) = &unk_287245C60;
  *(this + 110) = &unk_287245FC0;
}

void OZAverageBehavior::~OZAverageBehavior(OZAverageBehavior *this)
{
  *this = &unk_2872B9668;
  *(this + 2) = &unk_2872B99A8;
  *(this + 6) = &unk_2872B9C00;
  *(this + 42) = &unk_2872B9C58;
  *(this + 67) = &unk_2872B9C80;
  OZChannel::~OZChannel((this + 864));

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  OZAverageBehavior::~OZAverageBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZAverageBehavior::~OZAverageBehavior(OZAverageBehavior *this)
{
  OZAverageBehavior::~OZAverageBehavior((this - 16));
}

{
  OZAverageBehavior::~OZAverageBehavior((this - 48));
}

{
  OZAverageBehavior::~OZAverageBehavior((this - 336));
}

{
  OZAverageBehavior::~OZAverageBehavior((this - 536));
}

{
  OZAverageBehavior::~OZAverageBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZAverageBehavior::~OZAverageBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZAverageBehavior::~OZAverageBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZAverageBehavior::~OZAverageBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZAverageBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSingleChannelBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  return OZChannelBase::operator=(a1 + 864, v4 + 864);
}

void OZAverageBehavior::solveNode(OZAverageBehavior *this, unsigned int a2, OZCurveNodeParam *a3)
{
  v5 = *(a3 + 19);
  v6 = *(a3 + 10);
  v7 = this + 16;
  if ((*(*(this + 2) + 24))(this + 16, 1, 1))
  {
    memset(&v35, 0, sizeof(v35));
    (*(**(*(this + 47) + 32) + 336))(&v35);
    memset(&v34, 0, sizeof(v34));
    (*(**(*(this + 47) + 32) + 336))(&v34);
    v33 = *(a3 + 5);
    v31 = *(a3 + 3);
    v32 = *(a3 + 8);
    memset(&v30, 0, sizeof(v30));
    FrameDuration = OZBehavior::getFrameDuration(this, &v30);
    v9 = (*(*(this + 2) + 24))(v7, 1, 1, FrameDuration);
    v10 = 0.0;
    if (v9)
    {
      OZChannel::getValueAsDouble((this + 864), MEMORY[0x277CC08F0], 0.0);
    }

    operator*(&v30, &v38, v10);
    operator/(&v38.value, &v31, &time);
    Seconds = CMTimeGetSeconds(&time);
    (*(*this + 608))(&time, this);
    v38 = time;
    v37 = v34;
    PC_CMTimeSaferSubtract(&v38, &v37, &v36);
    operator/(&v36.value, &v31, &v38);
    v12 = CMTimeGetSeconds(&v38);
    v38 = time;
    v37 = v29;
    PC_CMTimeSaferAdd(&v38, &v37, &v36);
    v38 = v36;
    v37 = v30;
    PC_CMTimeSaferSubtract(&v38, &v37, &v27);
    v38 = v27;
    v37 = v34;
    PC_CMTimeSaferSubtract(&v38, &v37, &v36);
    operator/(&v36.value, &v31, &v38);
    v13 = vcvtmd_s64_f64(CMTimeGetSeconds(&v38) + 0.0000001);
    if (*(a3 + 18) - 1 >= v13)
    {
      v14 = v13;
    }

    else
    {
      v14 = *(a3 + 18) - 1;
    }

    if (*(a3 + 36))
    {
      v15 = 0;
      v16 = Seconds;
      v17 = vcvtpd_s64_f64(v12);
      v18 = v17 & ~(v17 >> 31);
      do
      {
        v38 = v35;
        v37 = v34;
        PC_CMTimeSaferSubtract(&v38, &v37, &v36);
        operator/(&v36.value, &v31, &v38);
        v19 = vcvtmd_s64_f64(CMTimeGetSeconds(&v38) + 0.5 + 0.0000001);
        v38 = v35;
        if ((*(*this + 296))(this, &v38, 0, 1, 1))
        {
          v5[v15] = 0;
          v20 = v19 - v16;
          if (v19 - v16 <= v19 + v16)
          {
            v21 = 0.0;
            v22 = (2 * Seconds) | 1;
            do
            {
              if (v20 >= v14)
              {
                v23 = v14;
              }

              else
              {
                v23 = v20;
              }

              if (v20 < v18)
              {
                v23 = v18;
              }

              v21 = v21 + 1.0 / (v16 + v16 + 1.0) * *&v6[v23];
              *&v5[v15] = v21;
              ++v20;
              --v22;
            }

            while (v22);
          }
        }

        else
        {
          v24 = *(a3 + 18);
          if (v19 < v24)
          {
            v24 = v19;
          }

          if (v19 < 0)
          {
            v24 = 0;
          }

          v5[v15] = v6[v24];
        }

        v37 = v35;
        v36 = v33;
        PC_CMTimeSaferAdd(&v37, &v36, &v38);
        v35 = v38;
        ++v15;
      }

      while (v15 < *(a3 + 36));
    }
  }

  else
  {
    v25 = *(a3 + 36);
    if (v25)
    {
      do
      {
        v26 = *v6++;
        *v5++ = v26;
        --v25;
      }

      while (v25);
    }
  }
}

OZCurveNodeParam *OZAverageBehavior::getNeededRange(OZAverageBehavior *this, unsigned int a2, OZCurveNodeParam *a3)
{
  v5 = this + 16;
  if ((*(*(this + 2) + 24))(this + 16, 1, 1))
  {
    memset(&v15, 0, sizeof(v15));
    FrameDuration = OZBehavior::getFrameDuration(this, &v15);
    memset(&v14, 0, sizeof(v14));
    v7 = (*(*(this + 2) + 24))(v5, 1, 1, FrameDuration);
    v8 = 0.0;
    if (v7)
    {
      OZChannel::getValueAsDouble((this + 864), MEMORY[0x277CC08F0], 0.0);
    }

    operator*(&v15, &v14, v8);
    v12 = 0uLL;
    v13 = 0;
    operator*(2, &v14, &v11);
    operator*(*(a3 + 36) - 1, a3 + 5, &v10);
    time = v11;
    v16 = v10;
    PC_CMTimeSaferAdd(&time, &v16, &v12);
    time = *(a3 + 4);
    v16 = v14;
    PC_CMTimeSaferSubtract(&time, &v16, &v11);
    *(a3 + 1) = v11;
    operator/(&v12, &v15, &time);
    *(a3 + 18) = vcvtpd_s64_f64(CMTimeGetSeconds(&time)) + 1;
    *(a3 + 2) = v15;
    operator new[]();
  }

  *(a3 + 24) = *(a3 + 6);
  *(a3 + 5) = *(a3 + 14);
  *(a3 + 3) = *(a3 + 120);
  *(a3 + 8) = *(a3 + 17);
  *(a3 + 18) = *(a3 + 36);
  *(a3 + 88) = 0;
  *(a3 + 10) = *(a3 + 19);
  return a3;
}

void OZBoundsCollisionBehavior::OZBoundsCollisionBehavior(OZBoundsCollisionBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZCollisionBehavior::OZCollisionBehavior(this, a2, a3, a4);
  *v5 = &unk_2872B9CF8;
  v5[2] = &unk_2872B9FF0;
  v5[6] = &unk_2872BA248;
  v5[42] = &unk_2872BA2A0;
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Elasticity");
  OZChannelPercent::OZChannelPercent((this + 504), 1.0, &v6, (this + 56), 0x1F4u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::PCString(&v6, "Channel Wrap");
  OZChannelBool::OZChannelBool((this + 656), &v6, (this + 56), 0x1F5u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Active Edges");
  OZChannelFolder::OZChannelFolder((this + 808), &v6, (this + 56), 0x1F6u, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Left Active");
  OZChannelBool::OZChannelBool((this + 936), 1, &v6, (this + 808), 1u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Right Active");
  OZChannelBool::OZChannelBool((this + 1088), 1, &v6, (this + 808), 2u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Top Active");
  OZChannelBool::OZChannelBool((this + 1240), 1, &v6, (this + 808), 3u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Bottom Active");
  OZChannelBool::OZChannelBool((this + 1392), 1, &v6, (this + 808), 4u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Back Active");
  OZChannelBool::OZChannelBool((this + 1544), 1, &v6, (this + 808), 5u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Front Active");
  OZChannelBool::OZChannelBool((this + 1696), 1, &v6, (this + 808), 6u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Width");
  OZChannelDouble::OZChannelDouble((this + 1848), 100.0, &v6, (this + 56), 0x1F7u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Height");
  OZChannelDouble::OZChannelDouble((this + 2000), 100.0, &v6, (this + 56), 0x1F8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Bounds Collision Behavior Depth");
  OZChannelDouble::OZChannelDouble((this + 2152), 100.0, &v6, (this + 56), 0x1F9u, 0, 0, 0);
  PCString::~PCString(&v6);
  *(this + 2304) = 0;
  OZChannelBase::setFlag((this + 656), 2, 0);
  OZChannelBase::saveStateAsDefault((this + 656));
  OZChannelBase::resetFlag((this + 936), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 936));
  OZChannelBase::resetFlag((this + 1088), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1088));
  OZChannelBase::resetFlag((this + 1240), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1240));
  OZChannelBase::resetFlag((this + 1392), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1392));
  OZChannelBase::resetFlag((this + 1544), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1544));
  OZChannelBase::resetFlag((this + 1696), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1696));
  OZChannel::setMin((this + 1848), 0.0);
  OZChannel::setMin((this + 2000), 0.0);
  OZChannel::setMin((this + 2152), 0.0);
  OZChannel::setSliderMax((this + 1848), 1000.0);
  OZChannel::setSliderMax((this + 2000), 1000.0);
  OZChannel::setSliderMax((this + 2152), 1000.0);
}

void sub_2602518D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 2000));
  OZChannel::~OZChannel((v10 + 1848));
  OZChannelBool::~OZChannelBool((v10 + 1696));
  OZChannelBool::~OZChannelBool((v10 + 1544));
  OZChannelBool::~OZChannelBool((v10 + 1392));
  OZChannelBool::~OZChannelBool((v10 + 1240));
  OZChannelBool::~OZChannelBool((v10 + 1088));
  OZChannelBool::~OZChannelBool((v10 + 936));
  OZChannelFolder::~OZChannelFolder((v10 + 808));
  OZChannelBool::~OZChannelBool((v10 + 656));
  OZChannelPercent::~OZChannelPercent((v10 + 504));
  OZCollisionBehavior::~OZCollisionBehavior(v10);
  _Unwind_Resume(a1);
}

void OZBoundsCollisionBehavior::OZBoundsCollisionBehavior(OZBoundsCollisionBehavior *this, OZBoundsCollisionBehavior *a2, char a3)
{
  OZCollisionBehavior::OZCollisionBehavior(this, a2, a3);
  *v5 = &unk_2872B9CF8;
  *(v5 + 16) = &unk_2872B9FF0;
  *(v5 + 48) = &unk_2872BA248;
  *(v5 + 336) = &unk_2872BA2A0;
  OZChannelPercent::OZChannelPercent((v5 + 504), (a2 + 504), (this + 56));
  OZChannelBool::OZChannelBool((this + 656), (a2 + 656), (this + 56));
  OZChannelFolder::OZChannelFolder((this + 808), (a2 + 808), (this + 56));
  OZChannelBool::OZChannelBool((this + 936), (a2 + 936), (this + 808));
  OZChannelBool::OZChannelBool((this + 1088), (a2 + 1088), (this + 808));
  OZChannelBool::OZChannelBool((this + 1240), (a2 + 1240), (this + 808));
  OZChannelBool::OZChannelBool((this + 1392), (a2 + 1392), (this + 808));
  OZChannelBool::OZChannelBool((this + 1544), (a2 + 1544), (this + 808));
  OZChannelBool::OZChannelBool((this + 1696), (a2 + 1696), (this + 808));
  OZChannel::OZChannel((this + 1848), (a2 + 1848), (this + 56));
  *(this + 231) = &unk_287245C60;
  *(this + 233) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2000), (a2 + 2000), (this + 56));
  *(this + 250) = &unk_287245C60;
  *(this + 252) = &unk_287245FC0;
  OZChannel::OZChannel((this + 2152), (a2 + 2152), (this + 56));
  *(this + 269) = &unk_287245C60;
  *(this + 271) = &unk_287245FC0;
  *(this + 2304) = *(a2 + 2304);
}

void sub_260251CA0(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChannelBool::~OZChannelBool((v1 + 1696));
  OZChannelBool::~OZChannelBool((v1 + 1544));
  OZChannelBool::~OZChannelBool((v1 + 1392));
  OZChannelBool::~OZChannelBool((v1 + 1240));
  OZChannelBool::~OZChannelBool((v1 + 1088));
  OZChannelBool::~OZChannelBool((v1 + 936));
  OZChannelFolder::~OZChannelFolder((v1 + 808));
  OZChannelBool::~OZChannelBool((v1 + 656));
  OZChannelPercent::~OZChannelPercent((v1 + 504));
  OZCollisionBehavior::~OZCollisionBehavior(v1);
  _Unwind_Resume(a1);
}

void OZBoundsCollisionBehavior::~OZBoundsCollisionBehavior(OZBoundsCollisionBehavior *this)
{
  *this = &unk_2872B9CF8;
  *(this + 2) = &unk_2872B9FF0;
  *(this + 6) = &unk_2872BA248;
  *(this + 42) = &unk_2872BA2A0;
  OZChannel::~OZChannel((this + 2152));
  OZChannel::~OZChannel((this + 2000));
  OZChannel::~OZChannel((this + 1848));
  OZChannelBool::~OZChannelBool((this + 1696));
  OZChannelBool::~OZChannelBool((this + 1544));
  OZChannelBool::~OZChannelBool((this + 1392));
  OZChannelBool::~OZChannelBool((this + 1240));
  OZChannelBool::~OZChannelBool((this + 1088));
  OZChannelBool::~OZChannelBool((this + 936));
  OZChannelFolder::~OZChannelFolder((this + 808));
  OZChannelBool::~OZChannelBool((this + 656));
  OZChannelPercent::~OZChannelPercent((this + 504));

  OZCollisionBehavior::~OZCollisionBehavior(this);
}

{
  OZBoundsCollisionBehavior::~OZBoundsCollisionBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZBoundsCollisionBehavior::~OZBoundsCollisionBehavior(OZBoundsCollisionBehavior *this)
{
  OZBoundsCollisionBehavior::~OZBoundsCollisionBehavior((this - 16));
}

{
  OZBoundsCollisionBehavior::~OZBoundsCollisionBehavior((this - 48));
}

{
  OZBoundsCollisionBehavior::~OZBoundsCollisionBehavior((this - 336));
}

{
  OZBoundsCollisionBehavior::~OZBoundsCollisionBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZBoundsCollisionBehavior::~OZBoundsCollisionBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZBoundsCollisionBehavior::~OZBoundsCollisionBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZBoundsCollisionBehavior::operator=(uint64_t a1, const void *a2)
{
  OZCollisionBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 504, v4 + 504);
  OZChannelBase::operator=(a1 + 656, v5 + 656);
  OZChannelFolder::operator=(a1 + 808);
  OZChannelBase::operator=(a1 + 936, v5 + 936);
  OZChannelBase::operator=(a1 + 1088, v5 + 1088);
  OZChannelBase::operator=(a1 + 1240, v5 + 1240);
  OZChannelBase::operator=(a1 + 1392, v5 + 1392);
  OZChannelBase::operator=(a1 + 1544, v5 + 1544);
  OZChannelBase::operator=(a1 + 1696, v5 + 1696);
  OZChannelBase::operator=(a1 + 1848, v5 + 1848);
  OZChannelBase::operator=(a1 + 2000, v5 + 2000);

  return OZChannelBase::operator=(a1 + 2152, v5 + 2152);
}

void OZBoundsCollisionBehavior::copySceneDimensionsToChans(OZBoundsCollisionBehavior *this, OZScene *a2)
{
  if ((*(this + 2304) & 1) == 0)
  {
    OZChannel::setDefaultValue((this + 1848), *(a2 + 86));
    OZChannelBase::reset((this + 1848), 0);
    OZChannel::setDefaultValue((this + 2000), *(a2 + 87));
    OZChannelBase::reset((this + 2000), 0);
    *(this + 2304) = 1;
  }
}

uint64_t OZBoundsCollisionBehavior::parseEnd(OZBoundsCollisionBehavior *this, PCSerializerReadStream *a2)
{
  v4 = *(a2 + 26);
  *(this + 2304) = 1;
  if (v4 <= 2 && (*(*this + 336))(this))
  {
    v5 = (*(*this + 336))(this);
    OZBoundsCollisionBehavior::copySceneDimensionsToChans(this, v5);
  }

  return OZReflexiveBehavior::parseEnd(this, a2);
}

void OZBoundsCollisionBehavior::handleCollisions(OZBoundsCollisionBehavior *this, OZTransformNode *lpsrc, OZSimulationState *a3, OZSimulationState *a4, BOOL a5, BOOL *a6)
{
  v51 = *MEMORY[0x277D85DE8];
  if (!lpsrc)
  {
    goto LABEL_11;
  }

  v9 = *lpsrc;
  if (!v10 || !(*(v9 + 1008))(lpsrc))
  {
    goto LABEL_12;
  }

  v11 = *(lpsrc + 1);
  v49[0] = xmmword_260347A50;
  if (!OZFactory::isKindOfClass(v11, v49))
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  v12 = (*(*lpsrc + 1016))(lpsrc);
  if (v12)
  {
    v49[0].i64[0] = v49;
    v49[0].i64[1] = v49;
    v49[1].i64[0] = 0;
    (*(*v12 + 48))(v12, v49);
    v13 = v49[0].i64[1];
    if (v49[0].i64[1] != v49)
    {
      while (1)
      {
        v14 = v13[1].i64[0];
        {
          break;
        }

        v13 = v13->i64[1];
        if (v13 == v49)
        {
          goto LABEL_73;
        }
      }

      v10 = 0;
    }

LABEL_73:
    std::__list_imp<unsigned int>::clear(v49);
  }

LABEL_12:
  v48 = *(a4 + 176);
  OZChannel::getValueAsDouble((this + 504), &v48, 0.0);
  v16 = v15;
  ValueAsInt = OZChannel::getValueAsInt((this + 936), &v48, 0.0);
  v18 = OZChannel::getValueAsInt((this + 1088), &v48, 0.0);
  v47 = OZChannel::getValueAsInt((this + 1240), &v48, 0.0);
  v19 = OZChannel::getValueAsInt((this + 1392), &v48, 0.0);
  v45 = OZChannel::getValueAsInt((this + 1544), &v48, 0.0);
  v44 = OZChannel::getValueAsInt((this + 1696), &v48, 0.0);
  OZChannel::getValueAsDouble((this + 1848), &v48, 0.0);
  v21 = v20;
  OZChannel::getValueAsDouble((this + 2000), &v48, 0.0);
  v23 = v22;
  OZChannel::getValueAsDouble((this + 2152), &v48, 0.0);
  if (ValueAsInt == 0 && v18 == 0 && v47 == 0 && v19 == 0)
  {
    return;
  }

  v25 = v21 * -0.5;
  v26 = -(v21 * -0.5);
  v27 = v23 * 0.5;
  v28 = -(v23 * 0.5);
  v29 = v24 * 0.5;
  v30 = -(v24 * 0.5);
  if (!v10)
  {
    if (ValueAsInt && *a4 < v25)
    {
      *a4 = v25;
      *(a4 + 7) = -(v16 * *(a4 + 7));
    }

    if (v19 && *(a4 + 1) < v28)
    {
      *(a4 + 1) = v28;
      *(a4 + 8) = -(v16 * *(a4 + 8));
    }

    if (v45 && *(a4 + 2) < v30)
    {
      *(a4 + 2) = v30;
      *(a4 + 9) = -(v16 * *(a4 + 9));
    }

    if (v18 && *a4 > v26)
    {
      *a4 = v26;
      *(a4 + 7) = -(v16 * *(a4 + 7));
    }

    if (v47 && *(a4 + 1) > v27)
    {
      *(a4 + 1) = v27;
      *(a4 + 8) = -(v16 * *(a4 + 8));
    }

    if (!v44 || *(a4 + 2) <= v29)
    {
      goto LABEL_70;
    }

    *(a4 + 2) = v29;
    goto LABEL_69;
  }

  memset(v50, 0, sizeof(v50));
  memset(v49, 0, sizeof(v49));
  OZSimulationState::getTransformedCorners(a4, v10, v49, &v49[1].i64[1], v50, &v50[1] + 8);
  v31 = 0;
  v32 = 3.40282347e38;
  v33 = -3.40282347e38;
  v34 = -3.40282347e38;
  v35 = 3.40282347e38;
  v36 = -3.40282347e38;
  v37 = 3.40282347e38;
  do
  {
    v39 = *&v49[0].i64[v31];
    v40 = *&v49[0].i64[v31 + 1];
    if (v37 > v39)
    {
      v37 = *&v49[0].i64[v31];
    }

    if (v35 > v40)
    {
      v35 = *&v49[0].i64[v31 + 1];
    }

    v38 = &v49[0].i64[v31];
    v41 = *&v49[1].i64[v31];
    if (v32 > v41)
    {
      v32 = v38[2];
    }

    if (v36 < v39)
    {
      v36 = *&v49[0].i64[v31];
    }

    if (v34 < v40)
    {
      v34 = *&v49[0].i64[v31 + 1];
    }

    if (v33 < v41)
    {
      v33 = v38[2];
    }

    v31 += 3;
  }

  while (v31 != 12);
  if (v36 - v37 < v26 - v25)
  {
    if (ValueAsInt && v37 < v25)
    {
      v42 = v25 - v37 + *a4;
    }

    else
    {
      if (!v18 || v36 <= v26)
      {
        goto LABEL_54;
      }

      v42 = v26 - v36 + *a4;
    }

    *a4 = v42;
    *(a4 + 7) = -(v16 * *(a4 + 7));
  }

LABEL_54:
  if (v34 - v35 < v27 + v27)
  {
    if (v19 && v35 < v28)
    {
      *(a4 + 1) = v28 - v35 + *(a4 + 1);
      *(a4 + 8) = -(v16 * *(a4 + 8));
    }

    if (v47 && v34 > v27)
    {
      *(a4 + 1) = v27 - v34 + *(a4 + 1);
      *(a4 + 8) = -(v16 * *(a4 + 8));
    }
  }

  if (v33 - v32 >= v29 + v29)
  {
    goto LABEL_70;
  }

  if (v45 && v32 < v30)
  {
    v43 = v30 - v32 + *(a4 + 2);
  }

  else
  {
    if (!v44 || v33 <= v29)
    {
      goto LABEL_70;
    }

    v43 = v29 - v33 + *(a4 + 2);
  }

  *(a4 + 2) = v43;
LABEL_69:
  *(a4 + 9) = -(v16 * *(a4 + 9));
LABEL_70:
  *a6 = 0;
}

void sub_260252840(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__list_imp<unsigned int>::clear(va);
  _Unwind_Resume(a1);
}

void OZBrownianBehavior::OZBrownianBehavior(OZBrownianBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BA2E0;
  v5[2] = &unk_2872BA5C8;
  v5[6] = &unk_2872BA820;
  v5[42] = &unk_2872BA878;
  PCURL::PCURL(&v17, @"Brownian Behavior Magnitude");
  Instance = OZBrownianBehavior::OZBrownianBehavior_magnitudeChanImpl::getInstance(v6);
  v8 = OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo::getInstance(Instance);
  OZChannelDouble::OZChannelDouble((this + 504), 15.0, &v17, (this + 56), 0x190u, 0, Instance, v8);
  PCString::~PCString(&v17);
  PCURL::PCURL(&v17, @"Wriggle Behavior Frequency");
  v10 = OZBrownianBehavior::OZBrownianBehavior_frequencyChanImpl::getInstance(v9);
  v11 = OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo::getInstance(v10);
  OZChannelDouble::OZChannelDouble((this + 656), 1.0, &v17, (this + 56), 0x194u, 0, v10, v11);
  PCString::~PCString(&v17);
  PCURL::PCURL(&v17, @"Wriggle Behavior Noisiness");
  v13 = OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanImpl::getInstance(v12);
  v14 = OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo::getInstance(v13);
  OZChannelDouble::OZChannelDouble((this + 808), 0.5, &v17, (this + 56), 0x195u, 0, v13, v14);
  PCString::~PCString(&v17);
  PCURL::PCURL(&v17, @"Brownian Behavior Drag");
  v16 = OZBrownianBehavior::OZBrownianBehavior_dragChanInfo::getInstance(v15);
  OZChannelDouble::OZChannelDouble((this + 960), &v17, (this + 56), 0x191u, 0, 0, v16);
  PCString::~PCString(&v17);
  PCURL::PCURL(&v17, @"Brownian Behavior Active Axes");
  OZChannelBool3D::OZChannelBool3D((this + 1112), 1, 1, 0, &v17, (this + 56), 0x196u, 0, 3u);
  PCString::~PCString(&v17);
  LODWORD(v13) = *(this + 20);
  PCURL::PCURL(&v17, @"Brownian Behavior Seed");
  OZChannelSeed::OZChannelSeed((this + 1704), v13, &v17, (this + 56), 0x193u, 0, 0, 0);
  PCString::~PCString(&v17);
}

void sub_260252AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannelBool3D::~OZChannelBool3D((v10 + 1112));
  OZChannel::~OZChannel((v10 + 960));
  OZChannel::~OZChannel((v10 + 808));
  OZChannel::~OZChannel((v10 + 656));
  OZChannel::~OZChannel((v10 + 504));
  OZReflexiveBehavior::~OZReflexiveBehavior(v10);
  _Unwind_Resume(a1);
}

void OZBrownianBehavior::OZBrownianBehavior(OZBrownianBehavior *this, OZBrownianBehavior *a2, char a3)
{
  OZReflexiveBehavior::OZReflexiveBehavior(this, a2, a3);
  *v5 = &unk_2872BA2E0;
  *(v5 + 16) = &unk_2872BA5C8;
  *(v5 + 48) = &unk_2872BA820;
  *(v5 + 336) = &unk_2872BA878;
  OZChannel::OZChannel((v5 + 504), (a2 + 504), (v5 + 56));
  *(this + 63) = &unk_287245C60;
  *(this + 65) = &unk_287245FC0;
  OZChannel::OZChannel((this + 656), (a2 + 656), (this + 56));
  *(this + 82) = &unk_287245C60;
  *(this + 84) = &unk_287245FC0;
  OZChannel::OZChannel((this + 808), (a2 + 808), (this + 56));
  *(this + 101) = &unk_287245C60;
  *(this + 103) = &unk_287245FC0;
  OZChannel::OZChannel((this + 960), (a2 + 960), (this + 56));
  *(this + 120) = &unk_287245C60;
  *(this + 122) = &unk_287245FC0;
  OZChannelBool3D::OZChannelBool3D((this + 1112), (a2 + 1112), (this + 56));
  OZChannel::OZChannel((this + 1704), (a2 + 1704), (this + 56));
  *(this + 213) = &unk_287247AE0;
  *(this + 215) = &unk_287247E40;
}

void sub_260252E18(_Unwind_Exception *a1)
{
  OZChannelBool3D::~OZChannelBool3D((v1 + 1112));
  OZChannel::~OZChannel(v5);
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZReflexiveBehavior::~OZReflexiveBehavior(v1);
  _Unwind_Resume(a1);
}

void OZBrownianBehavior::~OZBrownianBehavior(OZBrownianBehavior *this)
{
  *this = &unk_2872BA2E0;
  *(this + 2) = &unk_2872BA5C8;
  *(this + 6) = &unk_2872BA820;
  *(this + 42) = &unk_2872BA878;
  OZChannel::~OZChannel((this + 1704));
  OZChannelBool3D::~OZChannelBool3D((this + 1112));
  OZChannel::~OZChannel((this + 960));
  OZChannel::~OZChannel((this + 808));
  OZChannel::~OZChannel((this + 656));
  OZChannel::~OZChannel((this + 504));

  OZReflexiveBehavior::~OZReflexiveBehavior(this);
}

{
  OZBrownianBehavior::~OZBrownianBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZBrownianBehavior::~OZBrownianBehavior(OZBrownianBehavior *this)
{
  OZBrownianBehavior::~OZBrownianBehavior((this - 16));
}

{
  OZBrownianBehavior::~OZBrownianBehavior((this - 48));
}

{
  OZBrownianBehavior::~OZBrownianBehavior((this - 336));
}

{
  OZBrownianBehavior::~OZBrownianBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZBrownianBehavior::~OZBrownianBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZBrownianBehavior::~OZBrownianBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZBrownianBehavior::operator=(uint64_t a1, const void *a2)
{
  OZReflexiveBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 504, v4 + 504);
  OZChannelBase::operator=(a1 + 656, v5 + 656);
  OZChannelBase::operator=(a1 + 808, v5 + 808);
  OZChannelBase::operator=(a1 + 960, v5 + 960);
  OZChannelFolder::operator=(a1 + 1112);
  OZChannelBase::operator=(a1 + 1248, v5 + 1248);
  OZChannelBase::operator=(a1 + 1400, v5 + 1400);
  OZChannelBase::operator=(a1 + 1552, v5 + 1552);

  return OZChannelBase::operator=(a1 + 1704, v5 + 1704);
}

uint64_t OZBrownianBehavior::accumForces(OZBrownianBehavior *this, OZSimulationState *a2, OZTransformNode *a3)
{
  v83 = *(a2 + 176);
  time = *(a2 + 176);
  result = (*(*this + 296))(this, &time, 0, 1, 1);
  if (result)
  {
    memset(&v82, 0, sizeof(v82));
    OZChannelObjectRootBase::getTimeOffset((this + 56), &v80);
    time = v83;
    *&v84.value = v80;
    v84.epoch = v81;
    v7.n128_f64[0] = PC_CMTimeSaferAdd(&time, &v84, &v82);
    v8 = *(*(*this + 320))(this, v7);
    v9 = (*(v8 + 272))();
    v9.n128_u64[0] = 0;
    v76 = v9;
    ValueAsInt = OZChannel::getValueAsInt((this + 1704), &v83, 0.0);
    v11 = ValueAsInt;
    if (a3)
    {
      v11 = *(a3 + 20) ^ ValueAsInt;
    }

    time = v82;
    v12 = CMTimeGetSeconds(&time) + 0.0;
    OZChannel::getValueAsDouble((this + 656), &v83, 0.0);
    v14 = v13;
    OZChannel::getValueAsDouble((this + 808), &v83, 0.0);
    v16 = v15;
    v17 = 0;
    v77 = v12 + v12;
    v18 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1;
    v19 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2;
    v20 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3;
    v21 = 1.0;
    v22 = v14;
    do
    {
      v23 = (v77 * v22);
      v24 = -32;
      v25 = -1640531527;
      v26 = v17;
      v27 = v11;
      do
      {
        v26 += (v23 + 16 * v27) ^ (v27 + v25) ^ (v18 + (v27 >> 5));
        v27 += (v19 + 16 * v26) ^ (v25 + v26) ^ (v20 + (v26 >> 5));
        v25 -= 1640531527;
        v28 = __CFADD__(v24++, 1);
      }

      while (!v28);
      v29 = -32;
      v30 = -1640531527;
      v31 = v17;
      v32 = v11;
      do
      {
        v31 += (v23 + 1 + 16 * v32) ^ (v32 + v30) ^ (v18 + (v32 >> 5));
        v32 += (v19 + 16 * v31) ^ (v30 + v31) ^ (v20 + (v31 >> 5));
        v30 -= 1640531527;
        v28 = __CFADD__(v29++, 1);
      }

      while (!v28);
      v33 = (v27 ^ v26) / 2147483650.0;
      v34 = (v32 ^ v31) / 2147483650.0;
      *&v35 = cos((v77 * v22 - v23) * 3.14159265);
      v36.n128_u64[1] = v76.n128_u64[1];
      v36.n128_f64[0] = v76.n128_f64[0] + v21 * ((1.0 - (1.0 - *&v35) * 0.5) * v33 + (1.0 - *&v35) * 0.5 * v34);
      v76 = v36;
      v22 = v22 + v22;
      v21 = v16 * v21;
      ++v17;
    }

    while (v17 != 10);
    v37 = 0;
    *&v35 = 0;
    v75 = v35;
    v38 = v14;
    v39 = 1.0;
    do
    {
      v40 = (v77 * v38);
      v41 = -32;
      v42 = -1640531527;
      v43 = v37;
      v44 = ~v11;
      do
      {
        v43 += (v40 + 16 * v44) ^ (v44 + v42) ^ (v18 + (v44 >> 5));
        v44 += (v19 + 16 * v43) ^ (v42 + v43) ^ (v20 + (v43 >> 5));
        v42 -= 1640531527;
        v28 = __CFADD__(v41++, 1);
      }

      while (!v28);
      v45 = -32;
      v46 = -1640531527;
      v47 = v37;
      v48 = ~v11;
      do
      {
        v47 += (v40 + 1 + 16 * v48) ^ (v48 + v46) ^ (v18 + (v48 >> 5));
        v48 += (v19 + 16 * v47) ^ (v46 + v47) ^ (v20 + (v47 >> 5));
        v46 -= 1640531527;
        v28 = __CFADD__(v45++, 1);
      }

      while (!v28);
      v49 = (v44 ^ v43) / 2147483650.0;
      v50 = (v48 ^ v47) / 2147483650.0;
      v51 = cos((v77 * v38 - v40) * 3.14159265);
      *(&v52 + 1) = *(&v75 + 1);
      *&v52 = *&v75 + v39 * ((1.0 - (1.0 - v51) * 0.5) * v49 + (1.0 - v51) * 0.5 * v50);
      v75 = v52;
      v38 = v38 + v38;
      v39 = v16 * v39;
      ++v37;
    }

    while (v37 != 10);
    v53 = 0;
    v54 = v11 + 511;
    v55 = 0.0;
    v56 = 1.0;
    do
    {
      v57 = (v77 * v14);
      v58 = -32;
      v59 = -1640531527;
      v60 = v53;
      v61 = v54;
      do
      {
        v60 += (v57 + 16 * v61) ^ (v59 + v61) ^ (v18 + (v61 >> 5));
        v61 += (v19 + 16 * v60) ^ (v59 + v60) ^ (v20 + (v60 >> 5));
        v59 -= 1640531527;
        v28 = __CFADD__(v58++, 1);
      }

      while (!v28);
      v62 = -32;
      v63 = -1640531527;
      v64 = v53;
      v65 = v54;
      do
      {
        v64 += (v57 + 1 + 16 * v65) ^ (v63 + v65) ^ (v18 + (v65 >> 5));
        v65 += (v19 + 16 * v64) ^ (v63 + v64) ^ (v20 + (v64 >> 5));
        v63 -= 1640531527;
        v28 = __CFADD__(v62++, 1);
      }

      while (!v28);
      v66 = (v61 ^ v60) / 2147483650.0;
      v67 = (v65 ^ v64) / 2147483650.0;
      v68 = cos((v77 * v14 - v57) * 3.14159265);
      v55 = v55 + v56 * ((1.0 - (1.0 - v68) * 0.5) * v66 + (1.0 - v68) * 0.5 * v67);
      v14 = v14 + v14;
      v56 = v16 * v56;
      ++v53;
    }

    while (v53 != 10);
    OZChannel::getValueAsDouble((this + 504), &v83, 0.0);
    v78 = v69;
    v70 = v55 * v69;
    OZChannel::getValueAsDouble((this + 960), &v83, 0.0);
    v72 = v70 - v71 * *(a2 + 9);
    memset(&time, 0, sizeof(time));
    *&v73.f64[0] = v76.n128_u64[0];
    *&v73.f64[1] = v75;
    v79 = vsubq_f64(vmulq_n_f64(v73, v78), vmulq_n_f64(*(a2 + 56), v71));
    result = OZChannelBool3D::getValue(this + 1112, &v83, &time.value, 0.0);
    v74 = v72 * *&time.epoch;
    *(a2 + 8) = vaddq_f64(vmulq_f64(v79, *&time.value), *(a2 + 8));
    *(a2 + 18) = v74 + *(a2 + 18);
  }

  return result;
}

void OZBrownianBehavior::accumForces(OZBrownianBehavior *this, OZSimStateArray *a2, OZTransformNode *a3)
{
  v80 = *(a2 + 1);
  time = *(a2 + 1);
  if ((*(*this + 296))(this, &time, 1, 1, 1))
  {
    memset(&v79, 0, sizeof(v79));
    OZChannelObjectRootBase::getTimeOffset((this + 56), &v77);
    time = v80;
    *&v81.value = v77;
    v81.epoch = v78;
    v5.n128_f64[0] = PC_CMTimeSaferAdd(&time, &v81, &v79);
    v6 = *(*(*this + 320))(this, v5);
    (*(v6 + 272))();
    ValueAsInt = OZChannel::getValueAsInt((this + 1704), &v80, 0.0);
    time = v79;
    Seconds = CMTimeGetSeconds(&time);
    OZChannel::getValueAsDouble((this + 656), &v80, 0.0);
    v71 = v8;
    OZChannel::getValueAsDouble((this + 808), &v80, 0.0);
    v76 = v9;
    OZChannel::getValueAsDouble((this + 960), &v80, 0.0);
    v70 = v10;
    memset(&time, 0, sizeof(time));
    OZChannelBool3D::getValue(this + 1112, &v80, &time.value, 0.0);
    v11 = *a2;
    if (*a2 != *(a2 + 1))
    {
      v75 = Seconds + 0.0 + Seconds + 0.0;
      do
      {
        v12 = (*(**(v11 + 232) + 32))(*(v11 + 232));
        v13 = 0;
        v15 = v14 ^ ValueAsInt;
        v16 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK1;
        v17 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK2;
        v18 = PCRandom::hashTEA(unsigned int,unsigned int,unsigned int)::kK3;
        v12.n128_u64[0] = 0;
        v74 = v12;
        v19 = 1.0;
        v20 = v71;
        do
        {
          v21 = (v75 * v20);
          v22 = -32;
          v23 = -1640531527;
          v24 = v13;
          v25 = v15;
          do
          {
            v24 += (v21 + 16 * v25) ^ (v25 + v23) ^ (v16 + (v25 >> 5));
            v25 += (v17 + 16 * v24) ^ (v23 + v24) ^ (v18 + (v24 >> 5));
            v23 -= 1640531527;
            v26 = __CFADD__(v22++, 1);
          }

          while (!v26);
          v27 = -32;
          v28 = -1640531527;
          v29 = v13;
          v30 = v15;
          do
          {
            v29 += (v21 + 1 + 16 * v30) ^ (v30 + v28) ^ (v16 + (v30 >> 5));
            v30 += (v17 + 16 * v29) ^ (v28 + v29) ^ (v18 + (v29 >> 5));
            v28 -= 1640531527;
            v26 = __CFADD__(v27++, 1);
          }

          while (!v26);
          v31 = (v25 ^ v24) / 2147483650.0;
          v32 = (v30 ^ v29) / 2147483650.0;
          *&v33 = cos((v75 * v20 - v21) * 3.14159265);
          v34.n128_u64[1] = v74.n128_u64[1];
          v34.n128_f64[0] = v74.n128_f64[0] + v19 * ((1.0 - (1.0 - *&v33) * 0.5) * v31 + (1.0 - *&v33) * 0.5 * v32);
          v74 = v34;
          v20 = v20 + v20;
          v19 = v76 * v19;
          ++v13;
        }

        while (v13 != 10);
        v35 = 0;
        *&v33 = 0;
        v73 = v33;
        v36 = 1.0;
        v37 = v71;
        do
        {
          v38 = (v75 * v37);
          v39 = -32;
          v40 = -1640531527;
          v41 = v35;
          v42 = ~v15;
          do
          {
            v41 += (v38 + 16 * v42) ^ (v42 + v40) ^ (v16 + (v42 >> 5));
            v42 += (v17 + 16 * v41) ^ (v40 + v41) ^ (v18 + (v41 >> 5));
            v40 -= 1640531527;
            v26 = __CFADD__(v39++, 1);
          }

          while (!v26);
          v43 = -32;
          v44 = -1640531527;
          v45 = v35;
          v46 = ~v15;
          do
          {
            v45 += (v38 + 1 + 16 * v46) ^ (v46 + v44) ^ (v16 + (v46 >> 5));
            v46 += (v17 + 16 * v45) ^ (v44 + v45) ^ (v18 + (v45 >> 5));
            v44 -= 1640531527;
            v26 = __CFADD__(v43++, 1);
          }

          while (!v26);
          v47 = (v42 ^ v41) / 2147483650.0;
          v48 = (v46 ^ v45) / 2147483650.0;
          v49 = cos((v75 * v37 - v38) * 3.14159265);
          *(&v50 + 1) = *(&v73 + 1);
          *&v50 = *&v73 + v36 * ((1.0 - (1.0 - v49) * 0.5) * v47 + (1.0 - v49) * 0.5 * v48);
          v73 = v50;
          v37 = v37 + v37;
          v36 = v76 * v36;
          ++v35;
        }

        while (v35 != 10);
        v51 = 0;
        v52 = 0.0;
        v53 = 1.0;
        v54 = v71;
        do
        {
          v55 = (v75 * v54);
          v56 = -32;
          v57 = -1640531527;
          v58 = v51;
          v59 = v15 + 511;
          do
          {
            v58 += (v55 + 16 * v59) ^ (v57 + v59) ^ (v16 + (v59 >> 5));
            v59 += (v17 + 16 * v58) ^ (v57 + v58) ^ (v18 + (v58 >> 5));
            v57 -= 1640531527;
            v26 = __CFADD__(v56++, 1);
          }

          while (!v26);
          v60 = -32;
          v61 = -1640531527;
          v62 = v51;
          v63 = v15 + 511;
          do
          {
            v62 += (v55 + 1 + 16 * v63) ^ (v61 + v63) ^ (v16 + (v63 >> 5));
            v63 += (v17 + 16 * v62) ^ (v61 + v62) ^ (v18 + (v62 >> 5));
            v61 -= 1640531527;
            v26 = __CFADD__(v60++, 1);
          }

          while (!v26);
          v64 = (v59 ^ v58) / 2147483650.0;
          v65 = (v63 ^ v62) / 2147483650.0;
          v66 = cos((v75 * v54 - v55) * 3.14159265);
          v52 = v52 + v53 * ((1.0 - (1.0 - v66) * 0.5) * v64 + (1.0 - v66) * 0.5 * v65);
          v54 = v54 + v54;
          v53 = v76 * v53;
          ++v51;
        }

        while (v51 != 10);
        OZChannel::getValueAsDouble((this + 504), &v80, 0.0);
        v68 = (v52 * v67 - v70 * *(v11 + 72)) * *&time.epoch;
        *&v69.f64[0] = v74.n128_u64[0];
        *&v69.f64[1] = v73;
        *(v11 + 128) = vaddq_f64(vmulq_f64(vsubq_f64(vmulq_n_f64(v69, v67), vmulq_n_f64(*(v11 + 56), v70)), *&time.value), *(v11 + 128));
        *(v11 + 144) = v68 + *(v11 + 144);
        v11 += 248;
      }

      while (v11 != *(a2 + 1));
    }
  }
}

uint64_t OZBrownianBehavior::OZBrownianBehavior_magnitudeChanImpl::getInstance(OZBrownianBehavior::OZBrownianBehavior_magnitudeChanImpl *this)
{
  if (atomic_load_explicit(&OZBrownianBehavior::OZBrownianBehavior_magnitudeChanImpl::getInstance(void)::OZBrownianBehavior_magnitudeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBrownianBehavior::OZBrownianBehavior_magnitudeChanImpl::getInstance(void)::OZBrownianBehavior_magnitudeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_magnitudeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBrownianBehavior::OZBrownianBehavior_magnitudeChanImpl::_OZBrownianBehavior_magnitudeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_magnitudeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZBrownianBehavior::OZBrownianBehavior_magnitudeChanImpl::_OZBrownianBehavior_magnitudeChan)
  {
    operator new();
  }
}

uint64_t OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo::getInstance(OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo *this)
{
  if (atomic_load_explicit(&OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo::getInstance(void)::OZBrownianBehavior_magnitudeChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo::getInstance(void)::OZBrownianBehavior_magnitudeChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo::_OZBrownianBehavior_magnitudeChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo::_OZBrownianBehavior_magnitudeChanInfo)
  {
    operator new();
  }
}

OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo *OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo::OZBrownianBehavior_magnitudeChanInfo(OZBrownianBehavior::OZBrownianBehavior_magnitudeChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 50.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872BA930;
  *(this + 10) = &unk_2872BA950;
  return this;
}

uint64_t OZBrownianBehavior::OZBrownianBehavior_frequencyChanImpl::getInstance(OZBrownianBehavior::OZBrownianBehavior_frequencyChanImpl *this)
{
  if (atomic_load_explicit(&OZBrownianBehavior::OZBrownianBehavior_frequencyChanImpl::getInstance(void)::OZBrownianBehavior_frequencyChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBrownianBehavior::OZBrownianBehavior_frequencyChanImpl::getInstance(void)::OZBrownianBehavior_frequencyChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_frequencyChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBrownianBehavior::OZBrownianBehavior_frequencyChanImpl::_OZBrownianBehavior_frequencyChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_frequencyChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZBrownianBehavior::OZBrownianBehavior_frequencyChanImpl::_OZBrownianBehavior_frequencyChan)
  {
    operator new();
  }
}

uint64_t OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo::getInstance(OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo *this)
{
  if (atomic_load_explicit(&OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo::getInstance(void)::OZBrownianBehavior_frequencyChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo::getInstance(void)::OZBrownianBehavior_frequencyChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo::_OZBrownianBehavior_frequencyChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo::_OZBrownianBehavior_frequencyChanInfo)
  {
    operator new();
  }
}

OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo *OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo::OZBrownianBehavior_frequencyChanInfo(OZBrownianBehavior::OZBrownianBehavior_frequencyChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 2.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872BAA20;
  *(this + 10) = &unk_2872BAA40;
  return this;
}

uint64_t OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanImpl::getInstance(OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanImpl *this)
{
  if (atomic_load_explicit(&OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanImpl::getInstance(void)::OZBrownianBehavior_amplitudeStepChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanImpl::getInstance(void)::OZBrownianBehavior_amplitudeStepChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanImpl::_OZBrownianBehavior_amplitudeStepChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanImpl::_OZBrownianBehavior_amplitudeStepChan)
  {
    operator new();
  }
}

uint64_t OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo::getInstance(OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo *this)
{
  if (atomic_load_explicit(&OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo::getInstance(void)::OZBrownianBehavior_amplitudeStepChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo::getInstance(void)::OZBrownianBehavior_amplitudeStepChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo::_OZBrownianBehavior_amplitudeStepChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo::_OZBrownianBehavior_amplitudeStepChanInfo)
  {
    operator new();
  }
}

OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo *OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo::OZBrownianBehavior_amplitudeStepChanInfo(OZBrownianBehavior::OZBrownianBehavior_amplitudeStepChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 1.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872BAB10;
  *(this + 10) = &unk_2872BAB30;
  return this;
}

uint64_t OZBrownianBehavior::OZBrownianBehavior_dragChanInfo::getInstance(OZBrownianBehavior::OZBrownianBehavior_dragChanInfo *this)
{
  if (atomic_load_explicit(&OZBrownianBehavior::OZBrownianBehavior_dragChanInfo::getInstance(void)::OZBrownianBehavior_dragChanInfo_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZBrownianBehavior::OZBrownianBehavior_dragChanInfo::getInstance(void)::OZBrownianBehavior_dragChanInfo_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_dragChanInfo::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZBrownianBehavior::OZBrownianBehavior_dragChanInfo::_OZBrownianBehavior_dragChanInfo;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZBrownianBehavior::OZBrownianBehavior_dragChanInfo::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZBrownianBehavior::OZBrownianBehavior_dragChanInfo::_OZBrownianBehavior_dragChanInfo)
  {
    operator new();
  }
}

OZBrownianBehavior::OZBrownianBehavior_dragChanInfo *OZBrownianBehavior::OZBrownianBehavior_dragChanInfo::OZBrownianBehavior_dragChanInfo(OZBrownianBehavior::OZBrownianBehavior_dragChanInfo *this)
{
  PCString::PCString(&v3, "");
  OZChannelInfo::OZChannelInfo(this, 0.0, 10.0, 1.0, 0.01, 1.0, &v3);
  PCString::~PCString(&v3);
  PCSingleton::PCSingleton((this + 80), 100);
  *this = &unk_2872BAB88;
  *(this + 10) = &unk_2872BABA8;
  return this;
}

void OZChannelSeed::OZChannelSeed(OZChannelSeed *this, unsigned int a2, const PCString *a3, OZChannelFolder *a4, unsigned int a5, int a6, OZChannelImpl *a7, OZChannelInfo *a8)
{
  OZChannelSeed_FactoryBase = getOZChannelSeed_FactoryBase();
  OZChannel::OZChannel(this, OZChannelSeed_FactoryBase, a3, a4, a5, a6, a7, a8);
  this->var0 = &unk_287247AE0;
  this->var2 = &unk_287247E40;
  OZChannelSeedInfo = OZChannelSeed::createOZChannelSeedInfo(v17);
  if (a8)
  {
    var17 = this->var17;
  }

  else
  {
    var17 = OZChannelSeed::_OZChannelSeedInfo;
    this->var17 = OZChannelSeed::_OZChannelSeedInfo;
  }

  this->var16 = var17;
  OZChannelSeed::createOZChannelSeedImpl(OZChannelSeedInfo);
  if (a7)
  {
    var15 = this->var15;
  }

  else
  {
    var15 = OZChannelSeed::_OZChannelSeedImpl;
    this->var15 = OZChannelSeed::_OZChannelSeedImpl;
  }

  this->var14 = var15;
  OZChannel::setDefaultValue(this, a2);
  OZChannel::setInitialValue(this, a2, 0);
}

void OZCameraBehavior::OZCameraBehavior(OZCameraBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BAC00;
  *(v5 + 16) = &unk_2872BAF20;
  *(v5 + 48) = &unk_2872BB178;
  *(v5 + 336) = &unk_2872BB1D0;
  *(v5 + 536) = &unk_2872BB1F8;
  *(v5 + 544) = 0;
  *(v5 + 552) = 0u;
  *(v5 + 568) = 0u;
  *(v5 + 584) = 0u;
  PCSharedMutex::PCSharedMutex((v5 + 600));
  *(this + 712) = 0u;
  *(this + 88) = this + 712;
  PCSharedMutex::PCSharedMutex((this + 728));
  *(this + 840) = 0u;
  *(this + 104) = this + 840;
  *(this + 107) = 0x4014000000000000;
}

void sub_260254C54(_Unwind_Exception *a1)
{
  v4 = v2;
  std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::destroy(v1 + 704, *v4);
  PCSharedMutex::~PCSharedMutex((v1 + 600));
  v6 = *(v1 + 576);
  if (v6)
  {
    *(v1 + 584) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 560) = v7;
    operator delete(v7);
  }

  OZChannelBehavior::~OZChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZCameraBehavior::OZCameraBehavior(OZCameraBehavior *this, const OZCameraBehavior *a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v4 = &unk_2872BAC00;
  *(v4 + 16) = &unk_2872BAF20;
  *(v4 + 48) = &unk_2872BB178;
  *(v4 + 336) = &unk_2872BB1D0;
  *(v4 + 536) = &unk_2872BB1F8;
  *(v4 + 544) = 0;
  *(v4 + 552) = 0u;
  *(v4 + 568) = 0u;
  *(v4 + 584) = 0u;
  PCSharedMutex::PCSharedMutex((v4 + 600));
  *(this + 712) = 0u;
  *(this + 88) = this + 712;
  PCSharedMutex::PCSharedMutex((this + 728));
  *(this + 840) = 0u;
  *(this + 104) = this + 840;
  *(this + 107) = 0x4014000000000000;
}

void sub_260254DC0(_Unwind_Exception *a1)
{
  v4 = v2;
  std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::destroy(v1 + 704, *v4);
  PCSharedMutex::~PCSharedMutex((v1 + 600));
  v6 = *(v1 + 576);
  if (v6)
  {
    *(v1 + 584) = v6;
    operator delete(v6);
  }

  v7 = *v3;
  if (*v3)
  {
    *(v1 + 560) = v7;
    operator delete(v7);
  }

  OZChannelBehavior::~OZChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZCameraBehavior::~OZCameraBehavior(OZCameraBehavior *this)
{
  *this = &unk_2872BAC00;
  *(this + 2) = &unk_2872BAF20;
  *(this + 6) = &unk_2872BB178;
  *(this + 42) = &unk_2872BB1D0;
  *(this + 67) = &unk_2872BB1F8;
  OZCameraBehavior::flushCache(this);
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 832, *(this + 105));
  PCSharedMutex::~PCSharedMutex((this + 728));
  std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::destroy(this + 704, *(this + 89));
  PCSharedMutex::~PCSharedMutex((this + 600));
  v2 = *(this + 72);
  if (v2)
  {
    *(this + 73) = v2;
    operator delete(v2);
  }

  v3 = *(this + 69);
  if (v3)
  {
    *(this + 70) = v3;
    operator delete(v3);
  }

  OZChannelBehavior::~OZChannelBehavior(this);
}

{
  OZCameraBehavior::~OZCameraBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZCameraBehavior::~OZCameraBehavior(OZCameraBehavior *this)
{
  OZCameraBehavior::~OZCameraBehavior((this - 16));
}

{
  OZCameraBehavior::~OZCameraBehavior((this - 48));
}

{
  OZCameraBehavior::~OZCameraBehavior((this - 336));
}

{
  OZCameraBehavior::~OZCameraBehavior((this - 536));
}

{
  OZCameraBehavior::~OZCameraBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZCameraBehavior::~OZCameraBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZCameraBehavior::~OZCameraBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZCameraBehavior::~OZCameraBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

double OZCameraBehavior::operator=(uint64_t a1)
{
  OZChannelBehavior::operator=();
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(a1 + 832, *(a1 + 840));
  *(a1 + 832) = a1 + 840;
  result = 0.0;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0x4014000000000000;
  return result;
}

unint64_t OZCameraBehavior::addTransRotCurveNodesToChannels(OZCameraBehavior *this, OZSceneNode *lpsrc, int a3, int a4)
{
  if (lpsrc)
  {
    *(this + 70) = *(this + 69);
    *(this + 73) = *(this + 72);
    if (v7)
    {
      v8 = v7;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      if (a3)
      {
        v11 = v7 + 1352;
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v12, &v11);
        v11 = v8 + 1504;
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v12, &v11);
        v11 = v8 + 1952;
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v12, &v11);
      }

      if (a4)
      {
        v11 = v8 + 2240;
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v12, &v11);
        v11 = v8 + 2392;
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v12, &v11);
        v11 = v8 + 2544;
        std::vector<TXTabStop *>::push_back[abi:ne200100](&v12, &v11);
      }

      if (v13 != v12)
      {
        operator new();
      }

      PCSharedMutex::lock((this + 600));
      std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::destroy(this + 704, *(this + 89));
      *(this + 88) = this + 712;
      *(this + 712) = 0u;
      PCSharedMutex::unlock((this + 600));
      if (a3)
      {
        OZChannelBehavior::setAffectedChannel(this, (v8 + 1216));
        if (a4)
        {
          OZChannelBehavior::addAffectedChannel(this, (v8 + 2104));
        }
      }

      else if (a4)
      {
        OZChannelBehavior::setAffectedChannel(this, (v8 + 2104));
      }

      v9 = (v13 - v12) >> 3;
      if (v12)
      {
        v13 = v12;
        operator delete(v12);
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = 0;
    *(this + 70) = *(this + 69);
    *(this + 73) = *(this + 72);
  }

  return v9;
}

void sub_260255498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OZCameraBehavior::didAddToNode(OZCameraBehavior *this, OZSceneNode *a2)
{
  result = OZChannelBehavior::didAddToNode(this, a2);
  if ((*(this + 544) & 1) == 0)
  {
    result = (*(*a2 + 272))(a2);
    if (result)
    {
      result = (*(*this + 760))(this, a2);
      *(this + 544) = 1;
    }
  }

  return result;
}

uint64_t OZCameraBehavior::didAddSceneNodeToScene(OZCameraBehavior *this, OZScene *a2)
{
  result = OZChannelBehavior::didAddSceneNodeToScene(this, a2);
  if ((*(this + 544) & 1) == 0)
  {
    v4 = (*(*this + 320))(this);
    result = (*(*this + 760))(this, v4);
    *(this + 544) = 1;
  }

  return result;
}

uint64_t OZCameraBehavior::willRemove(OZCameraBehavior *this)
{
  OZChannelBehavior::willRemove(this);
  *(this + 544) = 0;
  *(this + 70) = *(this + 69);
  *(this + 73) = *(this + 72);
  v2 = *(*this + 736);

  return v2(this);
}

void OZCameraBehavior::notify(OZCameraBehavior *this, __int16 a2)
{
  OZChannelBehavior::notify(this, a2);
  if ((a2 & 0x981C) != 0)
  {
    v4 = *(*this + 736);

    v4(this);
  }
}

void OZCameraBehavior::flushCache(OZCameraBehavior *this)
{
  PCSharedMutex::lock((this + 600));
  std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::destroy(this + 704, *(this + 89));
  *(this + 88) = this + 712;
  *(this + 712) = 0u;
  PCSharedMutex::unlock((this + 600));
  PCSharedMutex::lock((this + 728));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 832, *(this + 105));
  *(this + 104) = this + 840;
  *(this + 840) = 0u;
  PCSharedMutex::unlock((this + 728));
}

void OZCameraBehavior::getCurrentValuesOfAffectedChannels(uint64_t a1, CMTime *a2, uint64_t a3)
{
  PCSharedMutex::lock_shared((a1 + 600));
  v6 = std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::find<CMTime>(a1 + 704, a2);
  v7 = v6;
  if (a1 + 712 != v6 && v6 + 56 != a3)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(a3, *(v6 + 56), *(v6 + 64), (*(v6 + 64) - *(v6 + 56)) >> 3);
  }

  PCSharedMutex::unlock_shared((a1 + 600));
  if (a1 + 712 == v7)
  {
    v8 = *(a3 + 8) - *a3;
    if (v8)
    {
      v9 = 0;
      v10 = v8 >> 3;
      if (v10 <= 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = v10;
      }

      do
      {
        PreviousProcessingNode = OZChannel::getPreviousProcessingNode(*(*(a1 + 552) + 8 * v9), *(*(a1 + 576) + 8 * v9));
        *(*a3 + 8 * v9) = OZChannel::getCurveValueForNode(*(*(a1 + 552) + 8 * v9), a2, PreviousProcessingNode, 0.0);
        ++v9;
      }

      while (v11 != v9);
    }

    PCSharedMutex::lock((a1 + 600));
    v13 = (std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(a1 + 704, a2) + 56);
    if (v13 != a3)
    {
      std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v13, *a3, *(a3 + 8), (*(a3 + 8) - *a3) >> 3);
    }

    PCSharedMutex::unlock((a1 + 600));
  }
}

double OZCameraBehavior::getValueOfAffectedChannel(OZCameraBehavior *this, const CMTime *a2, int a3)
{
  PreviousProcessingNode = OZChannel::getPreviousProcessingNode(*(*(this + 69) + 8 * a3), *(*(this + 72) + 8 * a3));
  v7 = *(*(this + 69) + 8 * a3);

  return OZChannel::getCurveValueForNode(v7, a2, PreviousProcessingNode, 0.0);
}

BOOL OZCameraBehavior::CompareDeltaKeys::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  time1 = *a2;
  v6 = *a3;
  if (!CMTimeCompare(&time1, &v6))
  {
    return *(a2 + 24) < *(a3 + 24);
  }

  time1 = *a2;
  v6 = *a3;
  return CMTimeCompare(&time1, &v6) >> 31;
}

double OZCameraBehavior::getInputDelta(OZCameraBehavior *this, uint64_t a2, const CMTime *a3, double a4)
{
  v5 = 0.0;
  if (*(this + 107) > 3.0)
  {
    v13 = *a3;
    v14 = a2;
    PCSharedMutex::lock_shared((this + 728));
    v8 = std::__tree<std::__value_type<OZCameraBehavior::DeltaKey,double>,std::__map_value_compare<OZCameraBehavior::DeltaKey,std::__value_type<OZCameraBehavior::DeltaKey,double>,OZCameraBehavior::CompareDeltaKeys,true>,std::allocator<std::__value_type<OZCameraBehavior::DeltaKey,double>>>::find<OZCameraBehavior::DeltaKey>(this + 832, &v13);
    v9 = v8;
    if ((this + 840) != v8)
    {
      v5 = a4 - v8[8];
    }

    PCSharedMutex::unlock_shared((this + 728));
    if ((this + 840) == v9)
    {
      memset(v12, 0, sizeof(v12));
      (*(**(*(this + 47) + 32) + 328))(v12);
      v10 = (*(*this + 752))(this, v12, a2);
      PCSharedMutex::lock((this + 728));
      v15 = &v13;
      *(std::__tree<std::__value_type<OZCameraBehavior::DeltaKey,double>,std::__map_value_compare<OZCameraBehavior::DeltaKey,std::__value_type<OZCameraBehavior::DeltaKey,double>,OZCameraBehavior::CompareDeltaKeys,true>,std::allocator<std::__value_type<OZCameraBehavior::DeltaKey,double>>>::__emplace_unique_key_args<OZCameraBehavior::DeltaKey,std::piecewise_construct_t const&,std::tuple<OZCameraBehavior::DeltaKey const&>,std::tuple<>>(this + 832, &v13) + 64) = v10;
      PCSharedMutex::unlock((this + 728));
      return a4 - v10;
    }
  }

  return v5;
}

uint64_t OZCameraBehavior::parseBegin(OZCameraBehavior *this, PCSerializerReadStream *a2)
{
  OZBehavior::parseBegin(this, a2);
  LODWORD(v4) = *(a2 + 26);
  *(this + 107) = v4;
  return 1;
}

uint64_t non-virtual thunk toOZCameraBehavior::parseBegin(OZCameraBehavior *this, PCSerializerReadStream *a2)
{
  OZBehavior::parseBegin((this - 48), a2);
  LODWORD(v4) = *(a2 + 26);
  *(this + 101) = v4;
  return 1;
}

double OZCameraBehavior::getFocalDistance(OZCameraBehavior *this, OZChannelBehavior *a2, const CMTime *a3, const CMTime *a4)
{
  ChannelValueBeforeThis = OZChannelBehavior::getChannelValueBeforeThis(this, (a2 + 6808), a3);
  OZChannelBehavior::getChannelValueBeforeThis(this, (a2 + 4880), a3);
  if (fabs(ChannelValueBeforeThis) >= 0.0000001)
  {
    v9 = *a3;
    OZCamera::cameraAtTime(a2, &v9);
  }

  return 0.0;
}

void OZCameraBehavior::getPositionBeforeThis(OZCameraBehavior *this@<X0>, OZTransformNode *a2@<X1>, const CMTime *a3@<X2>, double *a4@<X8>)
{
  ChannelValueBeforeThis = OZChannelBehavior::getChannelValueBeforeThis(this, (a2 + 1352), a3);
  v9 = OZChannelBehavior::getChannelValueBeforeThis(this, (a2 + 1504), a3);
  v10 = OZChannelBehavior::getChannelValueBeforeThis(this, (a2 + 1952), a3);
  *a4 = ChannelValueBeforeThis;
  a4[1] = v9;
  a4[2] = v10;
}

void OZCameraBehavior::getRotationBeforeThis(OZCameraBehavior *this@<X0>, OZCamera *a2@<X1>, const CMTime *a3@<X2>, double *a4@<X8>)
{
  ChannelValueBeforeThis = OZChannelBehavior::getChannelValueBeforeThis(this, (a2 + 2240), a3);
  v9 = OZChannelBehavior::getChannelValueBeforeThis(this, (a2 + 2392), a3);
  v10 = OZChannelBehavior::getChannelValueBeforeThis(this, (a2 + 2544), a3);
  *a4 = ChannelValueBeforeThis;
  a4[1] = v9;
  a4[2] = v10;
}

double OZCameraBehavior::getRotationBeforeThisAsQuat@<D0>(OZCameraBehavior *this@<X0>, OZCamera *a2@<X1>, const CMTime *a3@<X2>, double *a4@<X8>)
{
  OZCameraBehavior::getRotationBeforeThis(this, a2, a3, v21);
  v5 = v21[1];
  v20 = v21[2];
  v6 = __sincos_stret(v21[0] * 0.5);
  v7 = v6.__sinval * 0.0;
  v8 = __sincos_stret(v5 * 0.5);
  v9 = v8.__sinval * 0.0;
  v10 = __sincos_stret(v20 * 0.5);
  v11 = v6.__cosval * v8.__cosval - (v7 * v9 + v7 * v8.__sinval + v6.__sinval * v9);
  v12 = v6.__sinval * v8.__cosval + v6.__cosval * v9 + v7 * v8.__sinval - v7 * v9;
  v13 = v7 * v8.__cosval + v6.__cosval * v8.__sinval + v6.__sinval * v9 - v7 * v9;
  v14 = v7 * v9 - v6.__sinval * v8.__sinval + v7 * v8.__cosval + v6.__cosval * v9;
  v15 = v10.__sinval * 0.0 * v12;
  v16 = v10.__sinval * 0.0 * v13;
  v17 = v10.__sinval * 0.0 * v11;
  v18 = v10.__sinval * 0.0 * v14;
  a4[2] = v18 - v10.__sinval * v12 + v10.__cosval * v13 + v17;
  a4[3] = v15 - v16 + v10.__cosval * v14 + v10.__sinval * v11;
  result = v10.__sinval * v13 - v18 + v10.__cosval * v12 + v17;
  *a4 = v10.__cosval * v11 - (v10.__sinval * v14 + v15 + v16);
  a4[1] = result;
  return result;
}

double OZCameraBehavior::calcEaseInEaseOut(OZCameraBehavior *this, double result)
{
  if (this <= 2)
  {
    if (this == 1)
    {
      v3 = cos(result * 3.14159265 * 0.5);
      v2 = 1.0;
      return v2 - v3;
    }

    if (this != 2)
    {
      return result;
    }

    v4 = sin(result * 3.14159265 * 0.5);
    v5 = 0.0;
    return v4 + v5;
  }

  if (this == 3)
  {
    v6 = sin(result * 3.14159265 + -1.57079633);
    v5 = 0.5;
    v4 = v6 * 0.5;
    return v4 + v5;
  }

  if (this == 4)
  {
    return result * result;
  }

  if (this != 5)
  {
    return result;
  }

  v2 = 1.0;
  v3 = (1.0 - result) * (1.0 - result);
  return v2 - v3;
}

uint64_t OZCameraBehavior::isActive(OZCameraBehavior *this)
{
  result = (*(*(this + 2) + 24))();
  if (result)
  {
    result = (*(*this + 320))(this);
    if (result)
    {
      return (*(result + 1024) & 2) == 0;
    }
  }

  return result;
}

__n128 OZCameraBehavior::solveNode(OZCameraBehavior *this, uint64_t a2, OZCurveNodeParam *a3)
{
  v3 = *(a3 + 19);
  v4 = *(a3 + 10);
  v11 = *(a3 + 5);
  result = *(a3 + 6);
  *&v10.value = result;
  v10.epoch = *(a3 + 14);
  if (*(a3 + 36))
  {
    v9 = 0;
    do
    {
      *(v3 + 8 * v9) = (*(*this + 672))(this, a2, &v10, 0.0, *(v4 + 8 * v9));
      v13 = v10;
      v12 = v11;
      PC_CMTimeSaferAdd(&v13, &v12, &v14);
      result = *&v14.value;
      v10 = v14;
      ++v9;
    }

    while (v9 < *(a3 + 36));
  }

  return result;
}

__n128 OZCameraBehavior::getNeededRange(OZCameraBehavior *this, unsigned int a2, OZCurveNodeParam *a3)
{
  *(a3 + 24) = *(a3 + 6);
  *(a3 + 5) = *(a3 + 14);
  result = *(a3 + 120);
  *(a3 + 3) = result;
  *(a3 + 8) = *(a3 + 17);
  *(a3 + 18) = *(a3 + 36);
  *(a3 + 88) = 0;
  *(a3 + 10) = *(a3 + 19);
  return result;
}

__n128 non-virtual thunk toOZCameraBehavior::getNeededRange(OZCameraBehavior *this, unsigned int a2, OZCurveNodeParam *a3)
{
  *(a3 + 24) = *(a3 + 6);
  *(a3 + 5) = *(a3 + 14);
  result = *(a3 + 120);
  *(a3 + 3) = result;
  *(a3 + 8) = *(a3 + 17);
  *(a3 + 18) = *(a3 + 36);
  *(a3 + 88) = 0;
  *(a3 + 10) = *(a3 + 19);
  return result;
}

void std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::destroy(a1, a2[1]);
    v4 = a2[7];
    if (v4)
    {
      a2[8] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<CMTime,std::vector<double>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::vector<double>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::vector<double>>>>::__emplace_unique_key_args<CMTime,std::piecewise_construct_t const&,std::tuple<CMTime const&>,std::tuple<>>(uint64_t a1, CMTime *a2)
{
  v2 = *std::__tree<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::__map_value_compare<CMTime,std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>,std::less<CMTime>,true>,std::allocator<std::__value_type<CMTime,std::map<unsigned int,GlyphProperties>>>>::__find_equal<CMTime>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

uint64_t std::__tree<std::__value_type<OZCameraBehavior::DeltaKey,double>,std::__map_value_compare<OZCameraBehavior::DeltaKey,std::__value_type<OZCameraBehavior::DeltaKey,double>,OZCameraBehavior::CompareDeltaKeys,true>,std::allocator<std::__value_type<OZCameraBehavior::DeltaKey,double>>>::find<OZCameraBehavior::DeltaKey>(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v5 = a1 + 8;
  do
  {
    a1 = OZCameraBehavior::CompareDeltaKeys::operator()(a1, v3 + 32, a2);
    if (a1)
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    if (!a1)
    {
      v5 = v3;
    }

    v3 = *(v3 + v6);
  }

  while (v3);
  if (v5 == v2 || OZCameraBehavior::CompareDeltaKeys::operator()(a1, a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

uint64_t std::__tree<std::__value_type<OZCameraBehavior::DeltaKey,double>,std::__map_value_compare<OZCameraBehavior::DeltaKey,std::__value_type<OZCameraBehavior::DeltaKey,double>,OZCameraBehavior::CompareDeltaKeys,true>,std::allocator<std::__value_type<OZCameraBehavior::DeltaKey,double>>>::__emplace_unique_key_args<OZCameraBehavior::DeltaKey,std::piecewise_construct_t const&,std::tuple<OZCameraBehavior::DeltaKey const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<OZCameraBehavior::DeltaKey,double>,std::__map_value_compare<OZCameraBehavior::DeltaKey,std::__value_type<OZCameraBehavior::DeltaKey,double>,OZCameraBehavior::CompareDeltaKeys,true>,std::allocator<std::__value_type<OZCameraBehavior::DeltaKey,double>>>::__find_equal<OZCameraBehavior::DeltaKey>(a1, &v4, a2);
  if (!v2)
  {
    operator new();
  }

  return v2;
}

void *std::__tree<std::__value_type<OZCameraBehavior::DeltaKey,double>,std::__map_value_compare<OZCameraBehavior::DeltaKey,std::__value_type<OZCameraBehavior::DeltaKey,double>,OZCameraBehavior::CompareDeltaKeys,true>,std::allocator<std::__value_type<OZCameraBehavior::DeltaKey,double>>>::__find_equal<OZCameraBehavior::DeltaKey>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        a1 = OZCameraBehavior::CompareDeltaKeys::operator()(a1, a3, (v4 + 4));
        if (!a1)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      a1 = OZCameraBehavior::CompareDeltaKeys::operator()(a1, (v7 + 4), a3);
      if (!a1)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void OZClampBehavior::OZClampBehavior(OZClampBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BB290;
  v5[2] = &unk_2872BB5D0;
  v5[6] = &unk_2872BB828;
  v5[42] = &unk_2872BB880;
  v5[67] = &unk_2872BB8A8;
  PCURL::PCURL(&v7, @"Clamp Behavior Operation Enum");
  PCURL::PCURL(&v6, @"Clamp Behavior Operation");
  OZChannelEnum::OZChannelEnum((this + 864), 2u, &v7, &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Clamp Behavior Min");
  OZChannelDouble::OZChannelDouble((this + 1120), 0.0, &v7, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v7);
  PCURL::PCURL(&v7, @"Clamp Behavior Max");
  OZChannelDouble::OZChannelDouble((this + 1272), 10.0, &v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v7);
}

void sub_2602567DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, PCString a11, PCString a12)
{
  PCString::~PCString(&a12);
  OZChannel::~OZChannel((v12 + 1120));
  OZChannelEnum::~OZChannelEnum((v12 + 864));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v12);
  _Unwind_Resume(a1);
}

void OZClampBehavior::OZClampBehavior(OZClampBehavior *this, const OZClampBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v5 = &unk_2872BB290;
  v5[2] = &unk_2872BB5D0;
  v5[6] = &unk_2872BB828;
  v5[42] = &unk_2872BB880;
  v5[67] = &unk_2872BB8A8;
  OZChannelEnum::OZChannelEnum((v5 + 108), (a2 + 864), (this + 56));
  OZChannel::OZChannel((this + 1120), a2 + 10, (this + 56));
  *(this + 140) = &unk_287245C60;
  *(this + 142) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1272), (a2 + 1272), (this + 56));
  *(this + 159) = &unk_287245C60;
  *(this + 161) = &unk_287245FC0;
}

void sub_2602569D0(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZChannelEnum::~OZChannelEnum((v1 + 864));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZClampBehavior::~OZClampBehavior(OZClampBehavior *this)
{
  *this = &unk_2872BB290;
  *(this + 2) = &unk_2872BB5D0;
  *(this + 6) = &unk_2872BB828;
  *(this + 42) = &unk_2872BB880;
  *(this + 67) = &unk_2872BB8A8;
  OZChannel::~OZChannel((this + 1272));
  OZChannel::~OZChannel((this + 1120));
  OZChannelEnum::~OZChannelEnum((this + 864));

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  OZClampBehavior::~OZClampBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZClampBehavior::~OZClampBehavior(OZClampBehavior *this)
{
  OZClampBehavior::~OZClampBehavior((this - 16));
}

{
  OZClampBehavior::~OZClampBehavior((this - 48));
}

{
  OZClampBehavior::~OZClampBehavior((this - 336));
}

{
  OZClampBehavior::~OZClampBehavior((this - 536));
}

{
  OZClampBehavior::~OZClampBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZClampBehavior::~OZClampBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZClampBehavior::~OZClampBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZClampBehavior::~OZClampBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZClampBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSingleChannelBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 1120, v4 + 1120);

  return OZChannelBase::operator=(a1 + 1272, v5 + 1272);
}

void OZClampBehavior::updateHiddenFlags(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a2)
  {
    v5 = 0;
    v4 = 0;
    goto LABEL_18;
  }

  v4 = 0;
  v5 = 0;
  v6 = MEMORY[0x277CC08F0];
  while (1)
  {
    ValueAsInt = OZChannel::getValueAsInt((v7 + 864), v6, 0.0);
    if (ValueAsInt == 2)
    {
      v5 = 1;
      v4 = 1;
    }

    else if (ValueAsInt == 1)
    {
      v5 = 1;
      if ((v4 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (!ValueAsInt)
      {
        v4 = 1;
      }

      if ((v4 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    if (v5)
    {
      break;
    }

LABEL_13:
    v3 = *(v3 + 8);
    if (v3 == a2)
    {
      goto LABEL_17;
    }
  }

  v5 = 1;
  v4 = 1;
LABEL_17:
  v3 = *(a2 + 8);
LABEL_18:
  while (v3 != a2)
  {
    v9 = *(v3 + 16);
    if (v9)
    {
    }

    else
    {
      v10 = 0;
    }

    v11 = (v10 + 1120);
    if (v4)
    {
      OZChannelBase::resetFlag(v11, 0x400000, 1);
    }

    else
    {
      OZChannelBase::setFlag(v11, 0x400000, 1);
    }

    v12 = (v10 + 1272);
    if (v5)
    {
      OZChannelBase::resetFlag(v12, 0x400000, 1);
    }

    else
    {
      OZChannelBase::setFlag(v12, 0x400000, 1);
    }

    v3 = *(v3 + 8);
  }
}

double OZClampBehavior::solveNode(OZClampBehavior *this, unsigned int a2, const CMTime *a3, __n128 a4, double a5)
{
  memset(&v16, 0, sizeof(v16));
  (*(**(*(this + 47) + 32) + 336))(&v16, a4);
  v15 = v16;
  if ((*(*this + 296))(this, &v15, 0, 1, 1))
  {
    ValueAsInt = OZChannel::getValueAsInt((this + 864), &v16, 0.0);
    OZChannel::getValueAsDouble((this + 1120), &v16, 0.0);
    v9 = v8;
    OZChannel::getValueAsDouble((this + 1272), &v16, 0.0);
    if ((ValueAsInt & 0xFFFFFFFD) != 0 || v9 <= a5)
    {
      v12 = a5;
    }

    else
    {
      v12 = v9;
    }

    if ((ValueAsInt - 1) >= 2 || v12 <= v10)
    {
      return v12;
    }

    else
    {
      return v10;
    }
  }

  return a5;
}

void OZClampBehavior::didSetChannelInfo(OZClampBehavior *this, const OZChannelInfo *a2, OZChannel *a3)
{
  OZChannel::setInfo((this + 1120), a2);

  OZChannel::setInfo((this + 1272), a2);
}

void OZDiscreteBehavior::OZDiscreteBehavior(OZDiscreteBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BB920;
  v5[2] = &unk_2872BBC60;
  v5[6] = &unk_2872BBEB8;
  v5[42] = &unk_2872BBF10;
  v5[67] = &unk_2872BBF38;
  PCURL::PCURL(&v6, @"Discrete Behavior Step Size");
  OZChannelDouble::OZChannelDouble((this + 864), 10.0, &v6, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCURL::PCURL(&v6, @"Discrete Behavior Offset");
  OZChannelDouble::OZChannelDouble((this + 1016), &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  OZChannel::setKeyframable((this + 864), 0);
  OZChannel::setKeyframable((this + 1016), 0);
  OZChannel::setMin((this + 864), 0.0);
}

void sub_2602571BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  OZChannel::~OZChannel((v10 + 864));
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void OZDiscreteBehavior::OZDiscreteBehavior(OZDiscreteBehavior *this, const OZDiscreteBehavior *a2, char a3)
{
  OZSingleChannelBehavior::OZSingleChannelBehavior(this, a2, a3);
  *v5 = &unk_2872BB920;
  *(v5 + 16) = &unk_2872BBC60;
  *(v5 + 48) = &unk_2872BBEB8;
  *(v5 + 336) = &unk_2872BBF10;
  *(v5 + 536) = &unk_2872BBF38;
  OZChannel::OZChannel((v5 + 864), (a2 + 864), (v5 + 56));
  *(this + 108) = &unk_287245C60;
  *(this + 110) = &unk_287245FC0;
  OZChannel::OZChannel((this + 1016), (a2 + 1016), (this + 56));
  *(this + 127) = &unk_287245C60;
  *(this + 129) = &unk_287245FC0;
}

void sub_260257380(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZSingleChannelBehavior::~OZSingleChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZDiscreteBehavior::~OZDiscreteBehavior(OZDiscreteBehavior *this)
{
  *this = &unk_2872BB920;
  *(this + 2) = &unk_2872BBC60;
  *(this + 6) = &unk_2872BBEB8;
  *(this + 42) = &unk_2872BBF10;
  *(this + 67) = &unk_2872BBF38;
  OZChannel::~OZChannel((this + 1016));
  OZChannel::~OZChannel((this + 864));

  OZSingleChannelBehavior::~OZSingleChannelBehavior(this);
}

{
  OZDiscreteBehavior::~OZDiscreteBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZDiscreteBehavior::~OZDiscreteBehavior(OZDiscreteBehavior *this)
{
  OZDiscreteBehavior::~OZDiscreteBehavior((this - 16));
}

{
  OZDiscreteBehavior::~OZDiscreteBehavior((this - 48));
}

{
  OZDiscreteBehavior::~OZDiscreteBehavior((this - 336));
}

{
  OZDiscreteBehavior::~OZDiscreteBehavior((this - 536));
}

{
  OZDiscreteBehavior::~OZDiscreteBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZDiscreteBehavior::~OZDiscreteBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZDiscreteBehavior::~OZDiscreteBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZDiscreteBehavior::~OZDiscreteBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZDiscreteBehavior::operator=(uint64_t a1, const void *a2)
{
  OZSingleChannelBehavior::operator=(a1, a2);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 864, v4 + 864);

  return OZChannelBase::operator=(a1 + 1016, v5 + 1016);
}

long double OZDiscreteBehavior::solveNode(OZDiscreteBehavior *this, unsigned int a2, const CMTime *a3, __n128 a4, double a5)
{
  memset(&v13, 0, sizeof(v13));
  (*(**(*(this + 47) + 32) + 336))(&v13, a4);
  v12 = v13;
  if ((*(*this + 296))(this, &v12, 0, 1, 1))
  {
    OZChannel::getValueAsDouble((this + 864), &v13, 0.0);
    v8 = v7;
    if (v7 >= 0.001)
    {
      OZChannel::getValueAsDouble((this + 1016), &v13, 0.0);
      v10 = fmod(v9, v8);
      return v10 + v8 * floor((a5 - v10) / v8 + 0.0000001);
    }
  }

  return a5;
}

void OZDollyInOutBehavior::OZDollyInOutBehavior(OZDollyInOutBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  OZCameraBehavior::OZCameraBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BBFB0;
  v5[2] = &unk_2872BC2D0;
  v5[6] = &unk_2872BC528;
  v5[42] = &unk_2872BC580;
  v5[67] = &unk_2872BC5A8;
  PCURL::PCURL(v7, @"Dolly In/Out Behavior Distance");
  OZChannelDouble::OZChannelDouble((this + 864), 0, v7, (this + 56), 0xC8u, 0, 0, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Camera Behavior Speed Enum");
  PCURL::PCURL(&v6, @"Camera Behavior Speed Label");
  OZChannelEnum::OZChannelEnum((this + 1016), 0, v7, &v6, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(v7);
  *(this + 159) = 0;
  OZChannel::setMin((this + 864), -100000.0);
  OZChannel::setMax((this + 864), 100000.0);
  OZChannel::setSliderMin((this + 864), -10000.0);
  OZChannel::setSliderMax((this + 864), 10000.0);
  v8 = 0x500000004;
  *&v7[0].var0 = xmmword_260854DF0;
  OZChannelEnum::setTags((this + 1016), v7, 6);
}

void sub_2602579EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  OZChannelEnum::~OZChannelEnum((v11 + 1016));
  OZChannel::~OZChannel((v11 + 864));
  OZCameraBehavior::~OZCameraBehavior(v11);
  _Unwind_Resume(a1);
}

void OZDollyInOutBehavior::OZDollyInOutBehavior(OZDollyInOutBehavior *this, const OZDollyInOutBehavior *a2, char a3)
{
  OZCameraBehavior::OZCameraBehavior(this, a2, a3);
  *v5 = &unk_2872BBFB0;
  *(v5 + 16) = &unk_2872BC2D0;
  *(v5 + 48) = &unk_2872BC528;
  *(v5 + 336) = &unk_2872BC580;
  *(v5 + 536) = &unk_2872BC5A8;
  OZChannel::OZChannel((v5 + 864), (a2 + 864), (v5 + 56));
  *(this + 108) = &unk_287245C60;
  *(this + 110) = &unk_287245FC0;
  OZChannelEnum::OZChannelEnum((this + 1016), (a2 + 1016), (this + 56));
  *(this + 159) = 0;
}

void sub_260257B8C(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v2);
  OZCameraBehavior::~OZCameraBehavior(v1);
  _Unwind_Resume(a1);
}

void OZDollyInOutBehavior::~OZDollyInOutBehavior(OZDollyInOutBehavior *this)
{
  *this = &unk_2872BBFB0;
  *(this + 2) = &unk_2872BC2D0;
  *(this + 6) = &unk_2872BC528;
  *(this + 42) = &unk_2872BC580;
  *(this + 67) = &unk_2872BC5A8;
  OZChannelEnum::~OZChannelEnum((this + 1016));
  OZChannel::~OZChannel((this + 864));

  OZCameraBehavior::~OZCameraBehavior(this);
}

{
  OZDollyInOutBehavior::~OZDollyInOutBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZDollyInOutBehavior::~OZDollyInOutBehavior(OZDollyInOutBehavior *this)
{
  OZDollyInOutBehavior::~OZDollyInOutBehavior((this - 16));
}

{
  OZDollyInOutBehavior::~OZDollyInOutBehavior((this - 48));
}

{
  OZDollyInOutBehavior::~OZDollyInOutBehavior((this - 336));
}

{
  OZDollyInOutBehavior::~OZDollyInOutBehavior((this - 536));
}

{
  OZDollyInOutBehavior::~OZDollyInOutBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZDollyInOutBehavior::~OZDollyInOutBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZDollyInOutBehavior::~OZDollyInOutBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZDollyInOutBehavior::~OZDollyInOutBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZDollyInOutBehavior::operator=(uint64_t a1, const void *a2)
{
  OZCameraBehavior::operator=(a1);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 864, v4 + 864);

  return OZChannelBase::operator=(a1 + 1016, v5 + 1016);
}

unint64_t OZDollyInOutBehavior::addCurveNodesToChannels(OZDollyInOutBehavior *this, OZSceneNode *a2)
{
  v4 = OZCameraBehavior::addTransRotCurveNodesToChannels(this, a2, 1, 0);
  if (a2)
  {
  }

  else
  {
    v5 = 0;
  }

  *(this + 159) = v5;
  return v4;
}

double OZDollyInOutBehavior::solveNode(OZDollyInOutBehavior *this, unsigned int a2, const CMTime *a3, double a4, double a5)
{
  v9 = (*(*this + 768))(this, a4);
  if (a2 <= 2 && v9)
  {
    memset(&v33, 0, sizeof(v33));
    (*(**(*(this + 47) + 32) + 336))(&v33);
    v31 = 0uLL;
    v32 = 0;
    v10 = (*(*this + 336))(this);
    FrameDuration = OZSceneSettings::getFrameDuration((v10 + 336), &v31);
    (*(*this + 608))(v30, this, FrameDuration);
    v29 = v30[0];
    memset(&v28, 0, sizeof(v28));
    v26 = v30[1];
    *&time2.value = v31;
    time2.epoch = v32;
    PC_CMTimeSaferSubtract(&v26, &time2, &v28);
    v26 = v33;
    time2 = v29;
    PC_CMTimeSaferSubtract(&v26, &time2, __p);
    *&v26.value = v31;
    v26.epoch = v32;
    time2 = v28;
    v12 = CMTimeCompare(&v26, &time2) >= 0 ? &v31 : &v28;
    time2 = *v12;
    operator/(__p, &time2, &v26);
    Seconds = CMTimeGetSeconds(&v26);
    if (Seconds >= 0.0000001)
    {
      v14 = Seconds;
      OZChannel::getValueAsDouble((this + 864), &v33, 0.0);
      v16 = v15;
      if (fabs(v15) >= 0.0000001)
      {
        if (v14 <= 0.9999999)
        {
          v17 = v14;
        }

        else
        {
          v17 = 1.0;
        }

        ValueAsInt = OZChannel::getValueAsInt((this + 1016), MEMORY[0x277CC08F0], 0.0);
        v19 = OZCameraBehavior::calcEaseInEaseOut(ValueAsInt, v17);
        time2.value = 0;
        *&time2.timescale = 0;
        *&time2.epoch = -(v16 * v19);
        std::vector<double>::vector[abi:ne200100](__p, 3uLL);
        (*(*this + 744))(this, a3, __p);
        v21 = *__p[0];
        v20 = *(__p[0] + 1);
        v22 = *(__p[0] + 2);
        *v23.i64 = OZCameraBehavior::getRotationBeforeThisAsQuat(this, *(this + 159), a3, &v26.value);
        PCQuat<double>::transform<double>(&v26, &time2, v23, v24);
        if (a2)
        {
          if (a2 == 1)
          {
            a5 = v20 + *&time2.timescale;
          }

          else
          {
            a5 = v22 + *&time2.epoch;
          }
        }

        else
        {
          a5 = v21 + *&time2.value;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }
      }
    }
  }

  return a5;
}

void sub_260258290(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void *std::vector<double>::vector[abi:ne200100](void *result, unint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    std::vector<double>::__vallocate[abi:ne200100](result, a2);
  }

  return result;
}

void sub_260258314(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void OZDriftAttractedToBehavior::OZDriftAttractedToBehavior(OZDriftAttractedToBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZAttractedToBehavior::OZAttractedToBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BC620;
  *(v5 + 16) = &unk_2872BC908;
  *(v5 + 48) = &unk_2872BCB60;
  *(v5 + 336) = &unk_2872BCBB8;
  OZChannel::setScale((v5 + 664), 0.1);
  OZChannel::setSliderMin((this + 664), 0.0);
  OZChannel::setSliderMax((this + 664), 100.0);
  OZChannel::setDefaultValue((this + 664), 30.0);
  OZChannelBase::reset((this + 664), 0);
  OZChannel::setDefaultValue((this + 1376), 4.5);
  OZChannelBase::reset((this + 1376), 0);
  OZChannelBase::resetFlag((this + 816), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 816));
  OZChannelBase::resetFlag((this + 1072), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1072));
  OZChannelBase::resetFlag((this + 1224), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1224));
}

void OZDriftAttractedToBehavior::OZDriftAttractedToBehavior(OZDriftAttractedToBehavior *this, OZDriftAttractedToBehavior *a2, char a3)
{
  OZAttractedToBehavior::OZAttractedToBehavior(this, a2, a3);
  *v3 = &unk_2872BC620;
  v3[2] = &unk_2872BC908;
  v3[6] = &unk_2872BCB60;
  v3[42] = &unk_2872BCBB8;
}

void non-virtual thunk toOZDriftAttractedToBehavior::~OZDriftAttractedToBehavior(OZDriftAttractedToBehavior *this)
{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 16));
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 48));
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 336));
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractedToBehavior::~OZAttractedToBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void OZDriftAttractedToBehavior::~OZDriftAttractedToBehavior(OZDriftAttractedToBehavior *this)
{
  OZAttractedToBehavior::~OZAttractedToBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void OZDriftAttractorBehavior::OZDriftAttractorBehavior(OZDriftAttractorBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZAttractorBehavior::OZAttractorBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BCBF8;
  *(v5 + 16) = &unk_2872BCEE8;
  *(v5 + 48) = &unk_2872BD140;
  *(v5 + 336) = &unk_2872BD198;
  OZChannel::setScale((v5 + 792), 0.1);
  OZChannel::setSliderMin((this + 792), 0.0);
  OZChannel::setSliderMax((this + 792), 100.0);
  OZChannel::setDefaultValue((this + 792), 30.0);
  OZChannelBase::reset((this + 792), 0);
  OZChannel::setDefaultValue((this + 1504), 4.5);
  OZChannelBase::reset((this + 1504), 0);
  OZChannelBase::resetFlag((this + 944), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 944));
  OZChannelBase::resetFlag((this + 1200), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1200));
  OZChannelBase::resetFlag((this + 1352), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 1352));
}

void OZDriftAttractorBehavior::OZDriftAttractorBehavior(OZDriftAttractorBehavior *this, OZDriftAttractorBehavior *a2, char a3)
{
  OZAttractorBehavior::OZAttractorBehavior(this, a2, a3);
  *v3 = &unk_2872BCBF8;
  v3[2] = &unk_2872BCEE8;
  v3[6] = &unk_2872BD140;
  v3[42] = &unk_2872BD198;
}

void non-virtual thunk toOZDriftAttractorBehavior::~OZDriftAttractorBehavior(OZDriftAttractorBehavior *this)
{
  OZAttractorBehavior::~OZAttractorBehavior((this - 16));
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 48));
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 336));
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZAttractorBehavior::~OZAttractorBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

void OZDriftAttractorBehavior::~OZDriftAttractorBehavior(OZDriftAttractorBehavior *this)
{
  OZAttractorBehavior::~OZAttractorBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void OZExponentialBehavior::OZExponentialBehavior(OZExponentialBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZRampBehavior::OZRampBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BD1D8;
  *(v5 + 16) = &unk_2872BD518;
  *(v5 + 48) = &unk_2872BD770;
  *(v5 + 336) = &unk_2872BD7C8;
  *(v5 + 536) = &unk_2872BD7F0;
  OZChannelBase::setFlag((v5 + 1168), 2, 0);
  OZChannelBase::saveStateAsDefault((this + 1168));
}

void OZExponentialBehavior::OZExponentialBehavior(OZExponentialBehavior *this, const OZExponentialBehavior *a2, char a3)
{
  OZRampBehavior::OZRampBehavior(this, a2, a3);
  *v3 = &unk_2872BD1D8;
  v3[2] = &unk_2872BD518;
  v3[6] = &unk_2872BD770;
  v3[42] = &unk_2872BD7C8;
  v3[67] = &unk_2872BD7F0;
}

void non-virtual thunk toOZExponentialBehavior::~OZExponentialBehavior(OZExponentialBehavior *this)
{
  OZRampBehavior::~OZRampBehavior((this - 16));
}

{
  OZRampBehavior::~OZRampBehavior((this - 48));
}

{
  OZRampBehavior::~OZRampBehavior((this - 336));
}

{
  OZRampBehavior::~OZRampBehavior((this - 536));
}

{
  OZRampBehavior::~OZRampBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZRampBehavior::~OZRampBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZRampBehavior::~OZRampBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZRampBehavior::~OZRampBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

void OZExponentialBehavior::~OZExponentialBehavior(OZExponentialBehavior *this)
{
  OZRampBehavior::~OZRampBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void OZExponentialBehavior::createCurveNode(OZExponentialBehavior *this, OZChannel *a2)
{
  var16 = a2->var16;
  v5 = *(var16 + 5);
  if (v5 != *(this + 78))
  {
    *(this + 78) = v5;
    (*(*this + 752))(this);
    var16 = a2->var16;
  }

  if (!OZChannelInfo::operator==(this + 544, var16))
  {
    OZChannelInfo::operator=(this + 544, a2->var16);
    (*(*this + 760))(this, this + 544, a2);
  }

  v6 = *(a2->var16 + 2);
  (*(a2->var0 + 101))(a2);
  v8 = 3.40282347e38;
  if (v6 != -3.40282347e38 && v7.n128_f64[0] != 3.40282347e38)
  {
    v8 = (*(a2->var0 + 101))(a2, v7, 3.40282347e38) - *(a2->var16 + 2);
  }

  *(this + 79) = v8;
  operator new();
}

void OZExponentialCurveNode::OZExponentialCurveNode(OZExponentialCurveNode *this, OZBehavior *a2, OZChannel *a3)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, a2, a3);
  *v5 = &unk_2872BD868;
  if (a2)
  {
  }

  else
  {
    v6 = 0;
  }

  *(this + 4) = v6;
}

void OZExponentialCurveNode::~OZExponentialCurveNode(OZExponentialCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

double OZExponentialCurveNode::solveNode(OZExponentialCurveNode *this, const CMTime *a2, __n128 a3, double a4)
{
  memset(&v32, 0, sizeof(v32));
  (*(**(*(*(this + 4) + 376) + 32) + 336))(&v32, a3);
  v6 = *(this + 4);
  v29[0] = v32;
  if ((*(*v6 + 296))())
  {
    v30 = 0uLL;
    v31 = 0;
    FrameDuration = OZBehavior::getFrameDuration(*(this + 4), &v30);
    (*(**(this + 4) + 608))(v29, FrameDuration);
    memset(&v28, 0, sizeof(v28));
    time = v29[0];
    v8 = *(this + 4);
    OZBehavior::getFrameDuration(v8, &time1);
    v9 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((v8 + 1320), MEMORY[0x277CC08F0], 0.0);
    operator*(&time1, &v27, v10);
    time1 = time;
    time2 = v27;
    PC_CMTimeSaferAdd(&time1, &time2, &v28);
    memset(&v27, 0, sizeof(v27));
    time1 = v29[0];
    time2 = v29[1];
    PC_CMTimeSaferAdd(&time1, &time2, &time);
    time1 = time;
    *&time2.value = v30;
    time2.epoch = v31;
    PC_CMTimeSaferSubtract(&time1, &time2, &v26);
    v11 = *(this + 4);
    OZBehavior::getFrameDuration(v11, &time1);
    OZChannel::getValueAsDouble((v11 + 1472), v9, 0.0);
    operator*(&time1, &time, v12);
    time1 = v26;
    time2 = time;
    PC_CMTimeSaferSubtract(&time1, &time2, &v27);
    OZChannel::getValueAsDouble((*(this + 4) + 864), v9, 0.0);
    v14 = v13;
    OZChannel::getValueAsDouble((*(this + 4) + 1016), v9, 0.0);
    v16 = v15;
    if (v15 >= v14)
    {
      v17 = 1.0;
    }

    else
    {
      v17 = -1.0;
    }

    if (vabdd_f64(v15, v14) >= 0.0000001)
    {
      time1 = v27;
      time2 = v28;
      PC_CMTimeSaferSubtract(&time1, &time2, &time);
      Seconds = CMTimeGetSeconds(&time);
      if (fabs(Seconds) >= 0.0000001)
      {
        v19 = log((v16 + 0.0001 - v14) * v17);
        time1 = v32;
        time2 = v28;
        PC_CMTimeSaferSubtract(&time1, &time2, &time);
        v20 = CMTimeGetSeconds(&time);
        v21 = v19 + 9.21034037;
        time1 = v32;
        time2 = v28;
        v22 = v20 / Seconds;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          v22 = 0.0;
        }

        time1 = v32;
        time2 = v27;
        v23 = CMTimeCompare(&time1, &time2);
        v24 = 1.0;
        if (v23 <= 0)
        {
          v24 = v22;
        }

        v14 = v14 + v17 * exp(v21 * v24 + -9.21034037) + -0.0001;
      }
    }

    return v14 + a4;
  }

  return a4;
}

__n128 OZExponentialCurveNode::solveNode(OZExponentialCurveNode *this, OZCurveNodeParam *a2)
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

void OZFadeInOutBehavior::OZFadeInOutBehavior(OZFadeInOutBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BD960;
  v5[2] = &unk_2872BDC10;
  v5[6] = &unk_2872BDE68;
  v5[42] = &unk_2872BDEC0;
  PCURL::PCURL(&v14, @"Fade In Out Behavior Fade In Time");
  Instance = OZFadeInOutBehavior::OZFadeInOutBehavior_fadeInTimeChanImpl::getInstance(v6);
  OZChannelDouble::OZChannelDouble((this + 536), 20.0, &v14, (this + 56), 0xC8u, 0, Instance, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Fade In Out Behavior Fade Out Time");
  v9 = OZFadeInOutBehavior::OZFadeInOutBehavior_fadeOutTimeChanImpl::getInstance(v8);
  OZChannelDouble::OZChannelDouble((this + 688), 20.0, &v14, (this + 56), 0xC9u, 0, v9, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Fade In Out Behavior Start Frame Offset");
  v11 = OZFadeInOutBehavior::OZFadeInOutBehavior_startTimeOffsetChanImpl::getInstance(v10);
  OZChannelDouble::OZChannelDouble((this + 840), &v14, (this + 56), 0xCAu, 0, v11, 0);
  PCString::~PCString(&v14);
  PCURL::PCURL(&v14, @"Fade In Out Behavior End Frame Offset");
  v13 = OZFadeInOutBehavior::OZFadeInOutBehavior_endTimeOffsetChanImpl::getInstance(v12);
  OZChannelDouble::OZChannelDouble((this + 992), &v14, (this + 56), 0xCBu, 0, v13, 0);
  PCString::~PCString(&v14);
}

void sub_2602596F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  OZChannel::~OZChannel((v10 + 840));
  OZChannel::~OZChannel((v10 + 688));
  OZChannel::~OZChannel((v10 + 536));
  OZChannelBehavior::~OZChannelBehavior(v10);
  _Unwind_Resume(a1);
}

void OZFadeInOutBehavior::OZFadeInOutBehavior(OZFadeInOutBehavior *this, const OZFadeInOutBehavior *a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v5 = &unk_2872BD960;
  *(v5 + 16) = &unk_2872BDC10;
  *(v5 + 48) = &unk_2872BDE68;
  *(v5 + 336) = &unk_2872BDEC0;
  OZChannel::OZChannel((v5 + 536), (a2 + 536), (v5 + 56));
  *(this + 67) = &unk_287245C60;
  *(this + 69) = &unk_287245FC0;
  OZChannel::OZChannel((this + 688), (a2 + 688), (this + 56));
  *(this + 86) = &unk_287245C60;
  *(this + 88) = &unk_287245FC0;
  OZChannel::OZChannel((this + 840), (a2 + 840), (this + 56));
  *(this + 105) = &unk_287245C60;
  *(this + 107) = &unk_287245FC0;
  OZChannel::OZChannel((this + 992), (a2 + 992), (this + 56));
  *(this + 124) = &unk_287245C60;
  *(this + 126) = &unk_287245FC0;
}

void sub_260259970(_Unwind_Exception *a1)
{
  OZChannel::~OZChannel(v4);
  OZChannel::~OZChannel(v3);
  OZChannel::~OZChannel(v2);
  OZChannelBehavior::~OZChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZFadeInOutBehavior::~OZFadeInOutBehavior(OZFadeInOutBehavior *this)
{
  *this = &unk_2872BD960;
  *(this + 2) = &unk_2872BDC10;
  *(this + 6) = &unk_2872BDE68;
  *(this + 42) = &unk_2872BDEC0;
  OZChannel::~OZChannel((this + 992));
  OZChannel::~OZChannel((this + 840));
  OZChannel::~OZChannel((this + 688));
  OZChannel::~OZChannel((this + 536));

  OZChannelBehavior::~OZChannelBehavior(this);
}

{
  OZFadeInOutBehavior::~OZFadeInOutBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZFadeInOutBehavior::~OZFadeInOutBehavior(OZFadeInOutBehavior *this)
{
  OZFadeInOutBehavior::~OZFadeInOutBehavior((this - 16));
}

{
  OZFadeInOutBehavior::~OZFadeInOutBehavior((this - 48));
}

{
  OZFadeInOutBehavior::~OZFadeInOutBehavior((this - 336));
}

{
  OZFadeInOutBehavior::~OZFadeInOutBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZFadeInOutBehavior::~OZFadeInOutBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZFadeInOutBehavior::~OZFadeInOutBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

double OZFadeInOutBehavior::operator=(uint64_t a1, const void *a2)
{
  OZChannelBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChannelBase::operator=(a1 + 536, (v4 + 67));
  OZChannelBase::operator=(a1 + 688, (v5 + 86));
  OZChannelBase::operator=(a1 + 840, (v5 + 105));
  OZChannelBase::operator=(a1 + 992, (v5 + 124));
  result = v5[143];
  *(a1 + 1144) = result;
  return result;
}

OZChannelBehavior *OZFadeInOutBehavior::didAddToNode(OZChannelBehavior *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    v3 = this;
    if (this)
    {
      OZChannelBehavior::didAddToNode(v3, lpsrc);
      operator new();
    }
  }

  return this;
}

double OZFadeInOutBehavior::getMultiplier(OZFadeInOutBehavior *this, CMTime *a2)
{
  (*(**(*(this + 47) + 32) + 336))(v22);
  *&a2->value = *&v22[0].value;
  epoch = v22[0].epoch;
  a2->epoch = v22[0].epoch;
  *&v22[0].value = *&a2->value;
  v22[0].epoch = epoch;
  Seconds = -1.0;
  if ((*(*this + 296))(this, v22, 0, 1, 1))
  {
    v6 = *(*(*this + 312))(this);
    (*(v6 + 712))(v22);
    memset(&v21, 0, sizeof(v21));
    OZBehavior::getFrameDuration(this, &v21);
    memset(&v20, 0, sizeof(v20));
    v23 = v22[0];
    v7 = MEMORY[0x277CC08F0];
    Seconds = 0.0;
    OZChannel::getValueAsDouble((this + 840), MEMORY[0x277CC08F0], 0.0);
    operator*(&v21, &v19, v8);
    time1 = v23;
    time2 = v19;
    PC_CMTimeSaferAdd(&time1, &time2, &v20);
    memset(&v19, 0, sizeof(v19));
    time1 = v22[0];
    time2 = v22[1];
    PC_CMTimeSaferAdd(&time1, &time2, &v23);
    time1 = v23;
    time2 = v21;
    PC_CMTimeSaferSubtract(&time1, &time2, &v18);
    OZChannel::getValueAsDouble((this + 992), v7, 0.0);
    operator*(&v21, &v23, v9);
    time1 = v18;
    time2 = v23;
    PC_CMTimeSaferSubtract(&time1, &time2, &v19);
    memset(&v18, 0, sizeof(v18));
    time1 = *a2;
    time2 = v21;
    PC_CMTimeFloorToSampleDuration(&time1, &time2, &v18);
    time1 = v18;
    time2 = v20;
    if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
    {
      time1 = v18;
      time2 = v19;
      if (CMTimeCompare(&time1, &time2) <= 0)
      {
        time1 = *a2;
        time2 = v19;
        if (CMTimeCompare(&time1, &time2) >= 1)
        {
          *a2 = v19;
        }

        memset(&v17, 0, sizeof(v17));
        time1 = v19;
        time2 = v20;
        PC_CMTimeSaferSubtract(&time1, &time2, &v17);
        time2 = *a2;
        v23 = v20;
        PC_CMTimeSaferSubtract(&time2, &v23, &time1);
        *a2 = time1;
        memset(&v23, 0, sizeof(v23));
        OZChannel::getValueAsDouble((this + 536), v7, 0.0);
        operator*(&v21, &v23, v11);
        memset(&v16, 0, sizeof(v16));
        OZChannel::getValueAsDouble((this + 688), v7, 0.0);
        operator*(&v21, &v16, v12);
        memset(&v15, 0, sizeof(v15));
        time1 = v17;
        time2 = v16;
        PC_CMTimeSaferSubtract(&time1, &time2, &v15);
        time1 = *a2;
        time2 = v23;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          operator/(&a2->value, &v23, &time1);
          Seconds = CMTimeGetSeconds(&time1);
          time1 = *a2;
          time2 = v15;
          if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
          {
            time1 = v16;
            time2 = *v7;
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              time1 = *a2;
              time2 = v15;
              PC_CMTimeSaferSubtract(&time1, &time2, &v14);
              operator/(&v14, &v16, &time1);
              v13 = 1.0 - CMTimeGetSeconds(&time1);
              if (Seconds > v13)
              {
                return v13;
              }
            }
          }
        }

        else
        {
          time1 = *a2;
          time2 = v15;
          Seconds = 1.0;
          if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
          {
            time1 = v16;
            time2 = *v7;
            if (CMTimeCompare(&time1, &time2) >= 1)
            {
              time1 = *a2;
              time2 = v15;
              PC_CMTimeSaferSubtract(&time1, &time2, &v14);
              operator/(&v14, &v16, &time1);
              return 1.0 - CMTimeGetSeconds(&time1);
            }
          }
        }
      }
    }
  }

  return Seconds;
}

uint64_t OZFadeInOutBehavior::OZFadeInOutBehavior_fadeInTimeChanImpl::getInstance(OZFadeInOutBehavior::OZFadeInOutBehavior_fadeInTimeChanImpl *this)
{
  if (atomic_load_explicit(&OZFadeInOutBehavior::OZFadeInOutBehavior_fadeInTimeChanImpl::getInstance(void)::OZFadeInOutBehavior_fadeInTimeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFadeInOutBehavior::OZFadeInOutBehavior_fadeInTimeChanImpl::getInstance(void)::OZFadeInOutBehavior_fadeInTimeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFadeInOutBehavior::OZFadeInOutBehavior_fadeInTimeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFadeInOutBehavior::OZFadeInOutBehavior_fadeInTimeChanImpl::_OZFadeInOutBehavior_fadeInTimeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFadeInOutBehavior::OZFadeInOutBehavior_fadeInTimeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFadeInOutBehavior::OZFadeInOutBehavior_fadeInTimeChanImpl::_OZFadeInOutBehavior_fadeInTimeChan)
  {
    operator new();
  }
}

uint64_t OZFadeInOutBehavior::OZFadeInOutBehavior_fadeOutTimeChanImpl::getInstance(OZFadeInOutBehavior::OZFadeInOutBehavior_fadeOutTimeChanImpl *this)
{
  if (atomic_load_explicit(&OZFadeInOutBehavior::OZFadeInOutBehavior_fadeOutTimeChanImpl::getInstance(void)::OZFadeInOutBehavior_fadeOutTimeChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFadeInOutBehavior::OZFadeInOutBehavior_fadeOutTimeChanImpl::getInstance(void)::OZFadeInOutBehavior_fadeOutTimeChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFadeInOutBehavior::OZFadeInOutBehavior_fadeOutTimeChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFadeInOutBehavior::OZFadeInOutBehavior_fadeOutTimeChanImpl::_OZFadeInOutBehavior_fadeOutTimeChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFadeInOutBehavior::OZFadeInOutBehavior_fadeOutTimeChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFadeInOutBehavior::OZFadeInOutBehavior_fadeOutTimeChanImpl::_OZFadeInOutBehavior_fadeOutTimeChan)
  {
    operator new();
  }
}

uint64_t OZFadeInOutBehavior::OZFadeInOutBehavior_startTimeOffsetChanImpl::getInstance(OZFadeInOutBehavior::OZFadeInOutBehavior_startTimeOffsetChanImpl *this)
{
  if (atomic_load_explicit(&OZFadeInOutBehavior::OZFadeInOutBehavior_startTimeOffsetChanImpl::getInstance(void)::OZFadeInOutBehavior_startTimeOffsetChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFadeInOutBehavior::OZFadeInOutBehavior_startTimeOffsetChanImpl::getInstance(void)::OZFadeInOutBehavior_startTimeOffsetChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFadeInOutBehavior::OZFadeInOutBehavior_startTimeOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFadeInOutBehavior::OZFadeInOutBehavior_startTimeOffsetChanImpl::_OZFadeInOutBehavior_startTimeOffsetChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFadeInOutBehavior::OZFadeInOutBehavior_startTimeOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFadeInOutBehavior::OZFadeInOutBehavior_startTimeOffsetChanImpl::_OZFadeInOutBehavior_startTimeOffsetChan)
  {
    operator new();
  }
}

uint64_t OZFadeInOutBehavior::OZFadeInOutBehavior_endTimeOffsetChanImpl::getInstance(OZFadeInOutBehavior::OZFadeInOutBehavior_endTimeOffsetChanImpl *this)
{
  if (atomic_load_explicit(&OZFadeInOutBehavior::OZFadeInOutBehavior_endTimeOffsetChanImpl::getInstance(void)::OZFadeInOutBehavior_endTimeOffsetChanImpl_once, memory_order_acquire) != -1)
  {
    v6[1] = v1;
    v6[2] = v2;
    v6[0] = &v4;
    v5 = v6;
    std::__call_once(&OZFadeInOutBehavior::OZFadeInOutBehavior_endTimeOffsetChanImpl::getInstance(void)::OZFadeInOutBehavior_endTimeOffsetChanImpl_once, &v5, std::__call_once_proxy[abi:ne200100]<std::tuple<OZFadeInOutBehavior::OZFadeInOutBehavior_endTimeOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>);
  }

  return OZFadeInOutBehavior::OZFadeInOutBehavior_endTimeOffsetChanImpl::_OZFadeInOutBehavior_endTimeOffsetChan;
}

void std::__call_once_proxy[abi:ne200100]<std::tuple<OZFadeInOutBehavior::OZFadeInOutBehavior_endTimeOffsetChanImpl::getInstance(void)::{lambda(void)#1} &&>>()
{
  if (!OZFadeInOutBehavior::OZFadeInOutBehavior_endTimeOffsetChanImpl::_OZFadeInOutBehavior_endTimeOffsetChan)
  {
    operator new();
  }
}

void OZFadeInOutCurveNode::OZFadeInOutCurveNode(OZFadeInOutCurveNode *this, OZBehavior *a2, OZChannel *a3)
{
  OZBehaviorCurveNode::OZBehaviorCurveNode(this, a2, a3);
  *v5 = &unk_2872BE0E0;
  if (a2)
  {
  }

  else
  {
    v6 = 0;
  }

  *(this + 4) = v6;
}

void OZFadeInOutCurveNode::~OZFadeInOutCurveNode(OZFadeInOutCurveNode *this)
{
  OZEaseInInterpolator::~OZEaseInInterpolator(this);

  JUMPOUT(0x2666E9F00);
}

void OZFadeInOutCurveNode::solveNode(OZFadeInOutCurveNode *this, const CMTime *a2, double a3, double a4)
{
  v4 = *(this + 4);
  v5 = *a2;
  OZFadeInOutBehavior::getMultiplier(v4, &v5);
}

void OZFadeInOutCurveNode::solveNode(OZFadeInOutCurveNode *this, OZCurveNodeParam *a2)
{
  v2 = *(a2 + 19);
  v3 = *(a2 + 10);
  v11 = *(a2 + 5);
  v10 = *(a2 + 4);
  if (*(a2 + 36))
  {
    v6 = 0;
    do
    {
      v7 = *(this + 4);
      v13 = v10;
      Multiplier = OZFadeInOutBehavior::getMultiplier(v7, &v13);
      v9 = *(v3 + 8 * v6);
      if (Multiplier >= 0.0)
      {
        if (fabs(v9) >= 0.0000001)
        {
          Multiplier = Multiplier * v9;
        }
      }

      else
      {
        Multiplier = *(v3 + 8 * v6);
      }

      *(v2 + 8 * v6) = Multiplier;
      v13 = v10;
      v12 = v11;
      PC_CMTimeSaferAdd(&v13, &v12, &v10);
      ++v6;
    }

    while (v6 < *(a2 + 36));
  }
}

__n128 OZFadeInOutCurveNode::getNeededRange(OZFadeInOutCurveNode *this, OZCurveNodeParam *a2)
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

void OZFocusBehavior::OZFocusBehavior(OZFocusBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v9 = *MEMORY[0x277D85DE8];
  OZChannelBehavior::OZChannelBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BE1D8;
  v5[2] = &unk_2872BE4D8;
  v5[6] = &unk_2872BE730;
  v5[42] = &unk_2872BE788;
  v5[67] = &unk_2872BE7B0;
  PCURL::PCURL(v7, @"Focus Behavior Target");
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 544), v7, (this + 56), 0xC8u, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Focus Behavior Transition");
  OZChannelPercent::OZChannelPercent((this + 704), 0.5, v7, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(v7);
  PCURL::PCURL(v7, @"Camera Behavior Speed Enum");
  PCURL::PCURL(&v6, @"Camera Behavior Speed Label");
  OZChannelEnum::OZChannelEnum((this + 856), 0, v7, &v6, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(&v6);
  PCString::~PCString(v7);
  *(this + 139) = 0;
  *(this + 1120) = 0;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 1160) = 0u;
  *&v7[0].var0 = xmmword_260854FC0;
  v8 = 0x500000004;
  OZChannelEnum::setTags((this + 856), v7, 6);
  OZChanSceneNodeRef::setAllowsCyclicDependencies(this + 544, 1);
}

void sub_26025AFEC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10, PCString a11)
{
  PCString::~PCString(&a10);
  PCString::~PCString(&a11);
  OZChannelPercent::~OZChannelPercent((v11 + 704));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v11 + 544));
  OZChannelBehavior::~OZChannelBehavior(v11);
  _Unwind_Resume(a1);
}

void OZFocusBehavior::OZFocusBehavior(OZFocusBehavior *this, const OZFocusBehavior *a2, char a3)
{
  OZChannelBehavior::OZChannelBehavior(this, a2, a3);
  *v5 = &unk_2872BE1D8;
  v5[2] = &unk_2872BE4D8;
  v5[6] = &unk_2872BE730;
  v5[42] = &unk_2872BE788;
  v5[67] = &unk_2872BE7B0;
  OZChanTransformNodeRef::OZChanTransformNodeRef((v5 + 68), (a2 + 544), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 704), (a2 + 704), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 856), (a2 + 856), (this + 56));
  *(this + 139) = 0;
  *(this + 1120) = 0;
  *(this + 1128) = 0u;
  *(this + 1144) = 0u;
  *(this + 1160) = 0u;
}

void sub_26025B1A4(_Unwind_Exception *a1)
{
  OZChannelPercent::~OZChannelPercent((v1 + 704));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v1 + 544));
  OZChannelBehavior::~OZChannelBehavior(v1);
  _Unwind_Resume(a1);
}

void OZFocusBehavior::~OZFocusBehavior(OZFocusBehavior *this)
{
  *this = &unk_2872BE1D8;
  *(this + 2) = &unk_2872BE4D8;
  *(this + 6) = &unk_2872BE730;
  *(this + 42) = &unk_2872BE788;
  *(this + 67) = &unk_2872BE7B0;
  v2 = *(this + 144);
  if (v2)
  {
    *(this + 145) = v2;
    operator delete(v2);
  }

  v3 = *(this + 141);
  if (v3)
  {
    *(this + 142) = v3;
    operator delete(v3);
  }

  OZChannelEnum::~OZChannelEnum((this + 856));
  OZChannelPercent::~OZChannelPercent((this + 704));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((this + 544));

  OZChannelBehavior::~OZChannelBehavior(this);
}

{
  OZFocusBehavior::~OZFocusBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZFocusBehavior::~OZFocusBehavior(OZFocusBehavior *this)
{
  OZFocusBehavior::~OZFocusBehavior((this - 16));
}

{
  OZFocusBehavior::~OZFocusBehavior((this - 48));
}

{
  OZFocusBehavior::~OZFocusBehavior((this - 336));
}

{
  OZFocusBehavior::~OZFocusBehavior((this - 536));
}

{
  OZFocusBehavior::~OZFocusBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZFocusBehavior::~OZFocusBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZFocusBehavior::~OZFocusBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZFocusBehavior::~OZFocusBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

uint64_t OZFocusBehavior::operator=(uint64_t a1, const void *a2)
{
  OZChannelBehavior::operator=();
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChanSceneNodeRef::operator=(a1 + 544, v4 + 544);
  OZChannelBase::operator=(a1 + 704, v5 + 704);

  return OZChannelBase::operator=(a1 + 856, v5 + 856);
}

uint64_t OZFocusBehavior::addCurveNodesToChannels(OZFocusBehavior *this, OZSceneNode *lpsrc)
{
  if (lpsrc)
  {
    *(this + 139) = v3;
    if (v3)
    {
      OZChannel::getCurveInterface((v3 + 7848));
      operator new();
    }
  }

  else
  {
    *(this + 139) = 0;
  }

  return 0;
}

uint64_t OZFocusBehavior::didAddToNode(OZFocusBehavior *this, OZSceneNode *a2)
{
  result = OZChannelBehavior::didAddToNode(this, a2);
  if ((*(this + 1120) & 1) == 0)
  {
    result = (*(*a2 + 272))(a2);
    if (result)
    {
      result = (*(*this + 736))(this, a2);
      *(this + 1120) = 1;
    }
  }

  return result;
}

uint64_t OZFocusBehavior::didAddSceneNodeToScene(OZFocusBehavior *this, OZScene *a2)
{
  result = OZChannelBehavior::didAddSceneNodeToScene(this, a2);
  if ((*(this + 1120) & 1) == 0)
  {
    v4 = (*(*this + 320))(this);
    result = (*(*this + 736))(this, v4);
    *(this + 1120) = 1;
  }

  return result;
}

void OZFocusBehavior::willRemove(OZFocusBehavior *this)
{
  OZChannelBehavior::willRemove(this);
  *(this + 1120) = 0;
  *(this + 142) = *(this + 141);
  *(this + 145) = *(this + 144);
}

uint64_t OZFocusBehavior::isActive(OZFocusBehavior *this)
{
  result = (*(*(this + 2) + 24))();
  if (result)
  {
    result = (*(*this + 320))(this);
    if (result)
    {
      return (*(result + 1024) & 2) == 0;
    }
  }

  return result;
}

void OZFocusBehavior::getEvalDepChansForRef(int a1, int a2, void *lpsrc)
{
  if (lpsrc)
  {
    {
      operator new();
    }
  }
}

double OZFocusBehavior::solveNode(OZFocusBehavior *this, int a2, const CMTime *a3, double a4, double a5)
{
  if ((*(*this + 744))(this, a4) && OZChanTransformNodeRef::getTransformNode((this + 544)) && *(this + 139))
  {
    memset(&v30, 0, sizeof(v30));
    (*(**(*(this + 47) + 32) + 336))(&v30);
    v28 = 0uLL;
    v29 = 0;
    v8 = (*(*this + 336))(this);
    FrameDuration = OZSceneSettings::getFrameDuration((v8 + 336), &v28);
    (*(*this + 608))(&v25, this, FrameDuration);
    v24 = v25;
    memset(&v23, 0, sizeof(v23));
    *&time1.var0.var0 = v26;
    time1.var0.var3 = v27;
    *&v20[0].value = v28;
    v20[0].epoch = v29;
    PC_CMTimeSaferSubtract(&time1, v20, &v23);
    time1.var0 = v30;
    v20[0] = v24;
    PC_CMTimeSaferSubtract(&time1, v20, &v22);
    *&time1.var0.var0 = v28;
    time1.var0.var3 = v29;
    v20[0] = v23;
    v10 = CMTimeCompare(&time1, v20) >= 0 ? &v28 : &v23;
    v20[0] = *v10;
    operator/(&v22, v20, &time1);
    Seconds = CMTimeGetSeconds(&time1);
    if (Seconds >= 0.0)
    {
      v12 = 1.0;
      v13 = Seconds <= 1.0 ? Seconds : 1.0;
      if (!a2)
      {
        OZChannel::getValueAsDouble((this + 704), &v30, 0.0);
        if (fabs(v14) >= 0.0000001)
        {
          v15 = v13 / v14;
          v16 = 1.0;
          if (v15 <= 1.0)
          {
            v16 = v15;
          }

          if (v15 >= 0.0)
          {
            v12 = v16;
          }

          else
          {
            v12 = 0.0;
          }
        }

        ValueAsInt = OZChannel::getValueAsInt((this + 856), MEMORY[0x277CC08F0], 0.0);
        OZCameraBehavior::calcEaseInEaseOut(ValueAsInt, v12);
        OZRenderState::OZRenderState(&time1);
        time1.var0 = v30;
        v18 = *(this + 139);
        v20[0] = v30;
        OZCamera::cameraAtTime(v18, v20);
      }
    }
  }

  return a5;
}

__n128 OZFocusBehavior::solveNode(OZFocusBehavior *this, uint64_t a2, OZCurveNodeParam *a3)
{
  v3 = *(a3 + 19);
  v4 = *(a3 + 10);
  v11 = *(a3 + 5);
  result = *(a3 + 6);
  *&v10.value = result;
  v10.epoch = *(a3 + 14);
  if (*(a3 + 36))
  {
    v9 = 0;
    do
    {
      *(v3 + 8 * v9) = (*(*this + 672))(this, a2, &v10, 0.0, *(v4 + 8 * v9));
      v13 = v10;
      v12 = v11;
      PC_CMTimeSaferAdd(&v13, &v12, &v14);
      result = *&v14.value;
      v10 = v14;
      ++v9;
    }

    while (v9 < *(a3 + 36));
  }

  return result;
}

__n128 OZFocusBehavior::getNeededRange(OZFocusBehavior *this, unsigned int a2, OZCurveNodeParam *a3)
{
  *(a3 + 24) = *(a3 + 6);
  *(a3 + 5) = *(a3 + 14);
  result = *(a3 + 120);
  *(a3 + 3) = result;
  *(a3 + 8) = *(a3 + 17);
  *(a3 + 18) = *(a3 + 36);
  *(a3 + 88) = 0;
  *(a3 + 10) = *(a3 + 19);
  return result;
}

__n128 non-virtual thunk toOZFocusBehavior::getNeededRange(OZFocusBehavior *this, unsigned int a2, OZCurveNodeParam *a3)
{
  *(a3 + 24) = *(a3 + 6);
  *(a3 + 5) = *(a3 + 14);
  result = *(a3 + 120);
  *(a3 + 3) = result;
  *(a3 + 8) = *(a3 + 17);
  *(a3 + 18) = *(a3 + 36);
  *(a3 + 88) = 0;
  *(a3 + 10) = *(a3 + 19);
  return result;
}

void OZFramingBehavior::OZFramingBehavior(OZFramingBehavior *this, OZFactory *a2, const PCString *a3, unsigned int a4)
{
  v17 = *MEMORY[0x277D85DE8];
  OZCameraBehavior::OZCameraBehavior(this, a2, a3, a4);
  *v5 = &unk_2872BE848;
  v5[2] = &unk_2872BEB68;
  v5[6] = &unk_2872BEDC0;
  v5[42] = &unk_2872BEE18;
  v5[67] = &unk_2872BEE40;
  PCURL::PCURL(v11, @"Framing Behavior Target");
  OZChanTransformNodeRef::OZChanTransformNodeRef((this + 864), v11, (this + 56), 0xC8u, 0);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Target Face Enum");
  PCURL::PCURL(v15, @"Framing Behavior Target Face Label");
  OZChannelEnum::OZChannelEnum((this + 1024), 4u, v11, v15, (this + 56), 0xC9u, 0, 0, 0);
  PCString::~PCString(v15);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Up Vector Enum");
  PCURL::PCURL(v15, @"Framing Behavior Up Vector Label");
  OZChannelEnum::OZChannelEnum((this + 1280), 0, v11, v15, (this + 56), 0xCAu, 0, 0, 0);
  PCString::~PCString(v15);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Framing Enum");
  PCURL::PCURL(v15, @"Framing Behavior Framing Label");
  OZChannelEnum::OZChannelEnum((this + 1536), 2u, v11, v15, (this + 56), 0xCBu, 0, 0, 0);
  PCString::~PCString(v15);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Framing Offset");
  OZChannelPosition3D::OZChannelPosition3D((this + 1792), v11, (this + 56), 0xCCu, 0, 3u);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Path Apex");
  OZChannelDouble::OZChannelDouble((this + 2680), 0.5, v11, (this + 56), 0xCEu, 0, 0, 0);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Path Offset");
  OZChannelPosition3D::OZChannelPosition3D((this + 2832), v11, (this + 56), 0xCFu, 0, 3u);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Orientation Enum");
  PCURL::PCURL(v15, @"Framing Behavior Orientation Label");
  OZChannelEnum::OZChannelEnum((this + 3720), 0, v11, v15, (this + 56), 0xD0u, 0, 0, 0);
  PCString::~PCString(v15);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Position Transition");
  OZChannelPercent::OZChannelPercent((this + 3976), 0.5, v11, (this + 56), 0xD1u, 0, 0, 0);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Rotation Transition");
  OZChannelPercent::OZChannelPercent((this + 4128), 0.5, v11, (this + 56), 0xD2u, 0, 0, 0);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Camera Behavior Speed Enum");
  PCURL::PCURL(v15, @"Framing Behavior Speed Label");
  OZChannelEnum::OZChannelEnum((this + 4280), 0, v11, v15, (this + 56), 0xD3u, 0, 0, 0);
  PCString::~PCString(v15);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Ease Out Time");
  OZChannelPercent::OZChannelPercent((this + 4536), 1.0, v11, (this + 56), 0xD4u, 0, 0, 0);
  PCString::~PCString(v11);
  PCURL::PCURL(v11, @"Framing Behavior Ease Out Curve");
  OZChannelDouble::OZChannelDouble((this + 4688), 10.0, v11, (this + 56), 0xD5u, 0, 0, 0);
  PCString::~PCString(v11);
  *(this + 4840) = 0u;
  OZValueCache<OZFramingCacheItem>::OZValueCache(this + 4856);
  *(this + 313) = 0u;
  *(this + 625) = this + 5008;
  PCMutex::PCMutex((this + 5024));
  *(this + 637) = 0x3FF0000000000000;
  *(this + 642) = 0xBFF0000000000000;
  *(this + 320) = xmmword_260342EE0;
  *(this + 319) = xmmword_260342EE0;
  *&v15[0].var0 = xmmword_260855040;
  v16 = 0x500000004;
  OZChannelEnum::setTags((this + 1024), v15, 6);
  v14 = 12;
  *&v11[0].var0 = xmmword_260854FF8;
  v12 = unk_260855008;
  v13 = xmmword_260855018;
  OZChannelEnum::setTags((this + 1280), v11, 13);
  v10 = 4;
  *v9 = xmmword_26085502C;
  OZChannelEnum::setTags((this + 1536), v9, 5);
  *v8 = 0x100000000;
  OZChannelEnum::setTags((this + 3720), v8, 2);
  v7 = 0x500000004;
  *v6 = xmmword_260855040;
  OZChannelEnum::setTags((this + 4280), v6, 6);
  OZChannelBase::resetFlag(this + 16, 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 1792));
  OZChannelBase::resetFlag((this + 2832), 16, 0);
  OZChannelFolder::saveStateAsDefault((this + 2832));
  OZChannelBase::resetFlag((this + 2680), 16, 0);
  OZChannelBase::saveStateAsDefault((this + 2680));
  OZChannel::setMin((this + 2680), 0.0);
  OZChannel::setMax((this + 2680), 1.0);
  OZChannel::setSliderMin((this + 2680), 0.0);
  OZChannel::setSliderMax((this + 2680), 1.0);
  *(this + 2232) = 0;
  *(this + 3272) = 0;
  OZValueCache<OZBoundsCacheItem>::flush(this + 4856);
  *(this + 611) = 250;
}

void sub_26025C820(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, PCString a21)
{
  PCMutex::~PCMutex((v21 + v28));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v21 + 5000, *v27);
  OZValueCache<OZFramingCacheItem>::~OZValueCache(v21 + v26);
  OZChannel::~OZChannel((v21 + v25));
  OZChannelPercent::~OZChannelPercent((v21 + v24));
  OZChannelEnum::~OZChannelEnum((v21 + v23));
  OZChannelPercent::~OZChannelPercent((v21 + v22));
  OZChannelPercent::~OZChannelPercent((v21 + 3976));
  OZChannelEnum::~OZChannelEnum((v21 + 3720));
  OZChannelPosition3D::~OZChannelPosition3D((v21 + 2832));
  OZChannel::~OZChannel((v21 + 2680));
  OZChannelPosition3D::~OZChannelPosition3D((v21 + 1792));
  OZChannelEnum::~OZChannelEnum((v21 + 1536));
  OZChannelEnum::~OZChannelEnum((v21 + 1280));
  OZChannelEnum::~OZChannelEnum((v21 + 1024));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v21 + 864));
  OZCameraBehavior::~OZCameraBehavior(v21);
  _Unwind_Resume(a1);
}

void OZFramingBehavior::OZFramingBehavior(OZFramingBehavior *this, const OZFramingBehavior *a2, char a3)
{
  OZCameraBehavior::OZCameraBehavior(this, a2, a3);
  *v5 = &unk_2872BE848;
  v5[2] = &unk_2872BEB68;
  v5[6] = &unk_2872BEDC0;
  v5[42] = &unk_2872BEE18;
  v5[67] = &unk_2872BEE40;
  OZChanTransformNodeRef::OZChanTransformNodeRef((v5 + 108), (a2 + 864), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1024), (a2 + 1024), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1280), (a2 + 1280), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 1536), (a2 + 1536), (this + 56));
  OZChannelPosition3D::OZChannelPosition3D((this + 1792), (a2 + 1792), (this + 56));
  OZChannel::OZChannel((this + 2680), (a2 + 2680), (this + 56));
  *(this + 335) = &unk_287245C60;
  *(this + 337) = &unk_287245FC0;
  OZChannelPosition3D::OZChannelPosition3D((this + 2832), (a2 + 2832), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 3720), (a2 + 3720), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 3976), (a2 + 3976), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 4128), (a2 + 4128), (this + 56));
  OZChannelEnum::OZChannelEnum((this + 4280), (a2 + 4280), (this + 56));
  OZChannelPercent::OZChannelPercent((this + 4536), (a2 + 4536), (this + 56));
  OZChannel::OZChannel((this + 4688), (a2 + 4688), (this + 56));
  *(this + 586) = &unk_287245C60;
  *(this + 588) = &unk_287245FC0;
  *(this + 4840) = 0u;
  OZValueCache<OZFramingCacheItem>::OZValueCache(this + 4856);
  *(this + 313) = 0u;
  *(this + 625) = this + 5008;
  PCMutex::PCMutex((this + 5024));
  *(this + 637) = 0x3FF0000000000000;
  *(this + 642) = 0xBFF0000000000000;
  *(this + 320) = xmmword_260342EE0;
  *(this + 319) = xmmword_260342EE0;
  *(this + 2232) = 0;
  *(this + 3272) = 0;
  PCMutex::lock((this + 5024));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 5000, *(this + 626));
  *(this + 625) = this + 5008;
  *(this + 313) = 0u;
  PCMutex::unlock((this + 5024));
  OZValueCache<OZBoundsCacheItem>::flush(this + 4856);
  *(this + 611) = 250;
}

void sub_26025CD5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(v10 + v17, *v18);
  OZValueCache<OZFramingCacheItem>::~OZValueCache(v10 + v16);
  OZChannel::~OZChannel(v12);
  OZChannelPercent::~OZChannelPercent((v10 + v15));
  OZChannelEnum::~OZChannelEnum((v10 + v14));
  OZChannelPercent::~OZChannelPercent((v10 + v13));
  OZChannelPercent::~OZChannelPercent((v10 + 3976));
  OZChannelEnum::~OZChannelEnum((v10 + 3720));
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 2832));
  OZChannel::~OZChannel(v11);
  OZChannelPosition3D::~OZChannelPosition3D((v10 + 1792));
  OZChannelEnum::~OZChannelEnum((v10 + 1536));
  OZChannelEnum::~OZChannelEnum((v10 + 1280));
  OZChannelEnum::~OZChannelEnum((v10 + 1024));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((v10 + 864));
  OZCameraBehavior::~OZCameraBehavior(v10);
  _Unwind_Resume(a1);
}

void OZFramingBehavior::~OZFramingBehavior(OZFramingBehavior *this)
{
  *this = &unk_2872BE848;
  *(this + 2) = &unk_2872BEB68;
  *(this + 6) = &unk_2872BEDC0;
  *(this + 42) = &unk_2872BEE18;
  *(this + 67) = &unk_2872BEE40;
  PCMutex::~PCMutex((this + 5024));
  std::__tree<std::__value_type<int,__CVBuffer *>,std::__map_value_compare<int,std::__value_type<int,__CVBuffer *>,std::less<int>,true>,std::allocator<std::__value_type<int,__CVBuffer *>>>::destroy(this + 5000, *(this + 626));
  OZValueCache<OZFramingCacheItem>::~OZValueCache(this + 4856);
  OZChannel::~OZChannel((this + 4688));
  OZChannelPercent::~OZChannelPercent((this + 4536));
  OZChannelEnum::~OZChannelEnum((this + 4280));
  OZChannelPercent::~OZChannelPercent((this + 4128));
  OZChannelPercent::~OZChannelPercent((this + 3976));
  OZChannelEnum::~OZChannelEnum((this + 3720));
  OZChannelPosition3D::~OZChannelPosition3D((this + 2832));
  OZChannel::~OZChannel((this + 2680));
  OZChannelPosition3D::~OZChannelPosition3D((this + 1792));
  OZChannelEnum::~OZChannelEnum((this + 1536));
  OZChannelEnum::~OZChannelEnum((this + 1280));
  OZChannelEnum::~OZChannelEnum((this + 1024));
  OZChanTransformNodeRef::~OZChanTransformNodeRef((this + 864));

  OZCameraBehavior::~OZCameraBehavior(this);
}

{
  OZFramingBehavior::~OZFramingBehavior(this);

  JUMPOUT(0x2666E9F00);
}

void non-virtual thunk toOZFramingBehavior::~OZFramingBehavior(OZFramingBehavior *this)
{
  OZFramingBehavior::~OZFramingBehavior((this - 16));
}

{
  OZFramingBehavior::~OZFramingBehavior((this - 48));
}

{
  OZFramingBehavior::~OZFramingBehavior((this - 336));
}

{
  OZFramingBehavior::~OZFramingBehavior((this - 536));
}

{
  OZFramingBehavior::~OZFramingBehavior((this - 16));

  JUMPOUT(0x2666E9F00);
}

{
  OZFramingBehavior::~OZFramingBehavior((this - 48));

  JUMPOUT(0x2666E9F00);
}

{
  OZFramingBehavior::~OZFramingBehavior((this - 336));

  JUMPOUT(0x2666E9F00);
}

{
  OZFramingBehavior::~OZFramingBehavior((this - 536));

  JUMPOUT(0x2666E9F00);
}

void OZFramingBehavior::flushCache(OZFramingBehavior *this)
{
  OZValueCache<OZBoundsCacheItem>::flush(this + 4856);

  OZCameraBehavior::flushCache(this);
}

uint64_t OZFramingBehavior::operator=(uint64_t a1, const void *a2)
{
  OZCameraBehavior::operator=(a1);
  if (!v4)
  {
    __cxa_bad_cast();
  }

  v5 = v4;
  OZChanSceneNodeRef::operator=(a1 + 864, v4 + 864);
  OZChannelBase::operator=(a1 + 1024, v5 + 1024);
  OZChannelBase::operator=(a1 + 1280, v5 + 1280);
  OZChannelBase::operator=(a1 + 1536, v5 + 1536);
  OZChannelPosition::operator=(a1 + 1792, v5 + 1792);
  OZChannelBase::operator=(a1 + 2680, v5 + 2680);
  OZChannelPosition::operator=(a1 + 2832, v5 + 2832);
  OZChannelBase::operator=(a1 + 3720, v5 + 3720);
  OZChannelBase::operator=(a1 + 3976, v5 + 3976);
  OZChannelBase::operator=(a1 + 4128, v5 + 4128);
  OZChannelBase::operator=(a1 + 4280, v5 + 4280);
  OZChannelBase::operator=(a1 + 4536, v5 + 4536);

  return OZChannelBase::operator=(a1 + 4688, v5 + 4688);
}

unint64_t OZFramingBehavior::addCurveNodesToChannels(OZFramingBehavior *this, OZSceneNode *a2)
{
  v4 = OZCameraBehavior::addCurveNodesToChannels(this, a2);
  if (a2)
  {
    *(this + 605) = v5;
    *(this + 606) = v6;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = v6 == 0;
    }

    if (v7)
    {
      if (v5)
      {
        v8 = v6 == 0;
      }

      else
      {
        v8 = 1;
      }

      if (!v8)
      {
        OZChannelBase::resetFlag((this + 1536), 2, 0);
      }
    }

    else
    {
      OZChannelBase::setFlag((this + 1536), 2, 0);
    }
  }

  else
  {
    *(this + 4840) = 0u;
  }

  return v4;
}

void shortest_slerp(float64x2_t *a1@<X0>, float64x2_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v17 = a4;
  v4 = a1->f64[1];
  v5 = a2[1];
  v6 = a2->f64[1];
  v7 = v4 - v6;
  v8 = a1[1].f64[0];
  v9 = a1[1].f64[1];
  v10 = v8 - v5.f64[0];
  v11 = a2[1].f64[1];
  v12.f64[0] = a1->f64[0] + a2->f64[0];
  v13.f64[0] = v4 + v6;
  v14.f64[0] = v8 + v5.f64[0];
  v15.f64[0] = v9 + v11;
  v12.f64[1] = a1->f64[0] - a2->f64[0];
  v13.f64[1] = v7;
  v14.f64[1] = v10;
  v15.f64[1] = v9 - v11;
  v16 = vaddq_f64(vmulq_f64(v12, v12), vaddq_f64(vaddq_f64(vmulq_f64(v13, v13), vmulq_f64(v14, v14)), vmulq_f64(v15, v15)));
  if (vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v16, 1), v16)).u8[0])
  {
    *a2 = vnegq_f64(*a2);
    a2[1] = vnegq_f64(v5);
  }

  slerp<double>(a1, a2, &v17, a3);
}

double calcRotation@<D0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, double *a4@<X3>, double *a5@<X8>, double a6@<D0>)
{
  v44 = *a2;
  v45 = a2[2];
  v43 = 0x3FF0000000000000;
  v40 = 1.0;
  v37 = 1.0;
  memset(&v36[8], 0, 32);
  v38 = 0u;
  v39 = 0u;
  v41 = 0u;
  v42 = 0u;
  *&v9 = -*a1;
  v10 = -a1[1];
  v11 = -a1[2];
  *v36 = 0x3FF0000000000000;
  PCMatrix44Tmpl<double>::leftTranslate(v36, v9, v10, v11);
  if (a6 != 1.0)
  {
    *v36 = vmulq_n_f64(*v36, a6);
    *&v36[16] = vmulq_n_f64(*&v36[16], a6);
  }

  PCMatrix44Tmpl<double>::transform<double>(v36, &v44, &v44);
  if (fabs(*&v44) < 0.0000001 && fabs(*(&v44 + 1)) < 0.0000001 && fabs(v45) < 0.0000001)
  {
    v44 = *a4;
    v45 = a4[2];
  }

  *a5 = 1.0;
  a5[1] = 0.0;
  a5[2] = 0.0;
  a5[3] = 0.0;
  PCQuat<double>::setRotation(a5, a4, &v44);
  v14.i64[0] = *a3;
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  v33 = xmmword_260342700;
  v34 = 0;
  v35[0] = *v14.i64 * *v36 + v12 * *&v36[8] + v13 * *&v36[16];
  v35[1] = *v14.i64 * *&v36[32] + v12 * v37 + v13 * *&v38;
  v35[2] = *v14.i64 * *&v39 + v12 * *(&v39 + 1) + v13 * v40;
  v14.i64[0] = *a5;
  v30 = *v14.i64;
  v15 = *(a5 + 1);
  v31 = v15;
  v16 = a5[3];
  v32 = v16;
  v17 = *v14.i64 * *v14.i64 + vaddvq_f64(vmulq_f64(v15, v15)) + v16 * v16;
  if (v17 != 0.0)
  {
    v30 = *v14.i64 / v17;
    v18 = vnegq_f64(v15);
    v15.f64[0] = -v16 / v17;
    v14 = vdivq_f64(v18, vdupq_lane_s64(*&v17, 0));
    v31 = v14;
    v32 = v15.f64[0];
  }

  PCQuat<double>::transform<double>(&v30, v35, v14, v15);
  PCQuat<double>::setRotation(&v30, &v33, v35);
  if (&v30 != a5)
  {
    v20 = a5[1];
    v21 = a5[2];
    v22 = a5[3];
    v23 = *a5 * v30 - (v20 * v31.f64[0] + v21 * v31.f64[1] + v22 * v32);
    v24 = v30 * v20 + *a5 * v31.f64[0];
    v25 = v30 * v22 + *a5 * v32;
    v26 = v21 * v32 - v31.f64[1] * v22;
    v27 = v31.f64[0] * v22 - v20 * v32;
    v28 = v20 * v31.f64[1] - v31.f64[0] * v21;
    a5[2] = v30 * v21 + *a5 * v31.f64[1] + v27;
    a5[3] = v28 + v25;
    result = v24 + v26;
    *a5 = v23;
    a5[1] = v24 + v26;
  }

  return result;
}

void *OZFramingBehavior::calcTargetSize@<X0>(OZFramingBehavior *this@<X0>, uint64_t a2@<X8>)
{
  result = OZChanTransformNodeRef::getTransformNode((this + 864));
  if (result)
  {
    v5 = result;
    (*(*this + 608))(v44, this);
    v43 = v44[0];
    v41 = 0uLL;
    v42 = 0;
    OZBehavior::getFrameDuration(this, &v39);
    v37.var0 = v44[0];
    v28 = v44[1];
    PC_CMTimeSaferAdd(&v37, &v28, &v45);
    v37.var0 = v45;
    *&v28.value = v39;
    v28.epoch = v40;
    PC_CMTimeSaferSubtract(&v37, &v28, &v41);
    v6 = MEMORY[0x277CC08F0];
    OZChannel::getValueAsDouble((this + 3976), MEMORY[0x277CC08F0], 0.0);
    v8 = v7;
    OZChannel::getValueAsDouble((this + 4128), v6, 0.0);
    if (v8 <= v9)
    {
      v8 = v9;
    }

    v39 = 0uLL;
    v40 = 0;
    *&v37.var0.var0 = v41;
    v37.var0.var3 = v42;
    v28 = v43;
    PC_CMTimeSaferSubtract(&v37, &v28, &v38);
    operator*(&v38, &v45, v8);
    v37.var0 = v43;
    v28 = v45;
    PC_CMTimeSaferAdd(&v37, &v28, &v39);
    *(a2 + 16) = xmmword_2603429E0;
    *(a2 + 32) = xmmword_2603429E0;
    *a2 = xmmword_2603429E0;
    OZRenderState::OZRenderState(&v37);
    *&v37.var0.var0 = v39;
    v37.var0.var3 = v40;
    (*(*v5 + 1360))(v5, a2, &v37);
    __asm { FMOV            V0.2D, #1.0 }

    *&v38.value = _Q0;
    v38.epoch = 0x3FF0000000000000;
    (*(*v5 + 1320))(v5, &v38, &v37, 0);
    v15 = 0;
    v16 = 0;
    v28.value = v38.value;
    *&v28.timescale = 0u;
    v29 = 0u;
    v30 = *&v38.timescale;
    v31 = 0u;
    v32 = 0u;
    v36 = 0x3FF0000000000000;
    v17 = -1.0;
    v18 = 1.0;
    epoch = v38.epoch;
    v19 = 1.0;
    v20 = -1.0;
    v34 = 0u;
    v21 = 1.0;
    v35 = 0u;
    v22 = -1.0;
    do
    {
      if ((v16 & 2) != 0)
      {
        v23 = 16;
      }

      else
      {
        v23 = 24;
      }

      v24 = *(a2 + v23);
      if (v16 >= 4)
      {
        v25 = 32;
      }

      else
      {
        v25 = 40;
      }

      v26 = *(a2 + v25);
      v45.var0 = *(a2 + (v15 & 8 ^ 8));
      *&v45.var1 = v24;
      v45.var3 = v26;
      result = PCMatrix44Tmpl<double>::transform<double>(&v28.value, &v45.var0, &v45.var0);
      if (v15)
      {
        if (v18 >= *&v45.var0)
        {
          v18 = *&v45.var0;
        }

        if (v17 <= *&v45.var0)
        {
          v17 = *&v45.var0;
        }

        if (v19 >= *&v45.var1)
        {
          v19 = *&v45.var1;
        }

        if (v20 <= *&v45.var1)
        {
          v20 = *&v45.var1;
        }

        if (v21 >= *&v45.var3)
        {
          v21 = *&v45.var3;
        }

        if (v22 <= *&v45.var3)
        {
          v22 = *&v45.var3;
        }
      }

      else
      {
        v20 = *&v45.var1;
        v22 = *&v45.var3;
        v21 = *&v45.var3;
        v19 = *&v45.var1;
        v17 = *&v45.var0;
        v18 = *&v45.var0;
      }

      ++v16;
      v15 += 8;
    }

    while (v15 != 64);
    *a2 = v18;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19;
    *(a2 + 24) = v20;
    *(a2 + 32) = v21;
    *(a2 + 40) = v22;
  }

  else
  {
    v27 = *(this + 5112);
    *a2 = *(this + 5096);
    *(a2 + 16) = v27;
    *(a2 + 32) = *(this + 5128);
  }

  return result;
}