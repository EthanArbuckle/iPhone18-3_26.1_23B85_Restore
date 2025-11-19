void sub_25FE35FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE36004(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE35FFCLL);
}

uint64_t HgcBT2100_HLG_OOTF_InverseOOTF::BindTexture(HgcBT2100_HLG_OOTF_InverseOOTF *this, HGHandler *a2, int a3)
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

uint64_t HgcBT2100_HLG_OOTF_InverseOOTF::Bind(HgcBT2100_HLG_OOTF_InverseOOTF *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBT2100_HLG_OOTF_InverseOOTF::RenderTile(HgcBT2100_HLG_OOTF_InverseOOTF *this, HGTile *a2)
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
      v14 = *(v6 + v10);
      v15 = *(v12 + 16);
      v16 = vmulq_f32(v13, *v12);
      v17 = vmulq_f32(v14, *v12);
      v18 = vaddq_f32(vextq_s8(v16, v16, 8uLL), vaddq_f32(v16, vrev64q_s32(v16)));
      v19 = vaddq_f32(vextq_s8(v17, v17, 8uLL), vaddq_f32(v17, vrev64q_s32(v17)));
      v21 = *(v12 + 32);
      v20 = *(v12 + 48);
      v22 = vandq_s8(v20, vcgtq_f32(vrev64q_s32(v18), v21));
      v23 = vandq_s8(v20, vcgtq_f32(vrev64q_s32(v19), v21));
      v24 = *(v12 + 64);
      v25 = *(v12 + 80);
      v26 = vbslq_s8(v24, v18, v22);
      v27 = vbslq_s8(v24, v19, v23);
      v28 = vorrq_s8(vandq_s8(v26, v25), v20);
      v29 = vorrq_s8(vandq_s8(v27, v25), v20);
      v30 = *(v12 + 96);
      v31 = *(v12 + 112);
      v32 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v26, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v21, v26)));
      v33 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v30, vcgtq_f32(v21, v27)));
      v34 = *(v12 + 128);
      v35 = *(v12 + 144);
      v36 = vandq_s8(v20, vcgtq_f32(v28, v34));
      v37 = vandq_s8(v20, vcgtq_f32(v29, v34));
      v38 = vaddq_f32(vsubq_f32(v32, v31), v36);
      v39 = vsubq_f32(vsubq_f32(v28, v20), vmulq_f32(vmulq_f32(v35, v36), v28));
      v40 = vsubq_f32(vsubq_f32(v29, v20), vmulq_f32(vmulq_f32(v35, v37), v29));
      v41 = *(v12 + 160);
      v42 = *(v12 + 176);
      v43 = *(v12 + 192);
      v44 = *(v12 + 208);
      v45 = vmulq_f32(v15, vaddq_f32(vaddq_f32(vsubq_f32(v33, v31), v37), vmulq_f32(v40, vaddq_f32(vaddq_f32(v43, vmulq_f32(v44, v40)), vmulq_f32(vmulq_f32(v40, v40), vaddq_f32(v41, vmulq_f32(v42, v40)))))));
      v46 = *(v12 + 224);
      v47 = *(v12 + 240);
      v48 = vmaxq_f32(vmulq_f32(v15, vaddq_f32(v38, vmulq_f32(v39, vaddq_f32(vaddq_f32(v43, vmulq_f32(v44, v39)), vmulq_f32(vmulq_f32(v39, v39), vaddq_f32(v41, vmulq_f32(v42, v39))))))), v46);
      v49 = vmaxq_f32(v45, v46);
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
      v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
      v52 = vsubq_f32(v50, vandq_s8(v20, vcgtq_f32(v50, v48)));
      v53 = vsubq_f32(v51, vandq_s8(v20, vcgtq_f32(v51, v49)));
      v54 = vsubq_f32(v48, v52);
      v55 = vsubq_f32(v49, v53);
      v56 = *(v12 + 256);
      v57 = *(v12 + 272);
      v58 = vmulq_f32(v55, vaddq_f32(v57, vmulq_f32(v55, vaddq_f32(v47, vmulq_f32(v56, v55)))));
      v59 = vaddq_f32(v20, vmulq_f32(v54, vaddq_f32(v57, vmulq_f32(v54, vaddq_f32(v47, vmulq_f32(v56, v54))))));
      v60 = vcvtq_s32_f32(v53);
      v61 = vaddq_f32(v20, v58);
      v62 = *(v12 + 288);
      v63 = *(v12 + 304);
      v64 = vbslq_s8(v24, vmulq_f32(v59, vshlq_n_s32(vaddq_s32(v62, vcvtq_s32_f32(v52)), 0x17uLL)), v22);
      v65 = vbslq_s8(v24, vmulq_f32(v61, vshlq_n_s32(vaddq_s32(v62, v60), 0x17uLL)), v23);
      v64.i32[0] = vmulq_lane_f32(vbslq_s8(vcgtq_f32(vrev64q_s32(v64), v63), v64, v63), *v15.f32, 1).u32[0];
      v66 = vmulq_n_f32(v14, vmulq_lane_f32(vbslq_s8(vcgtq_f32(vrev64q_s32(v65), v63), v65, v63), *v15.f32, 1).f32[0]);
      v67 = *(v12 + 320);
      v68 = (v5 + v10);
      v68[-1] = vbslq_s8(v67, v13, vmulq_n_f32(v13, *v64.i32));
      *v68 = vbslq_s8(v67, v14, v66);
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
    v72 = *(v71 + 16);
    v73 = vmulq_f32(v70, *v71);
    v74 = vaddq_f32(vextq_s8(v73, v73, 8uLL), vaddq_f32(v73, vrev64q_s32(v73)));
    v75 = *(v71 + 32);
    v76 = *(v71 + 48);
    v77 = vandq_s8(v76, vcgtq_f32(vrev64q_s32(v74), v75));
    v78 = *(v71 + 64);
    v79 = vbslq_s8(v78, v74, v77);
    v80 = vorrq_s8(vandq_s8(v79, *(v71 + 80)), v76);
    v81 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v79, 0x17uLL)), vandq_s8(*(v71 + 96), vcgtq_f32(v75, v79))), *(v71 + 112));
    v82 = vandq_s8(v76, vcgtq_f32(v80, *(v71 + 128)));
    v83 = vaddq_f32(v81, v82);
    v84 = vsubq_f32(vsubq_f32(v80, v76), vmulq_f32(vmulq_f32(*(v71 + 144), v82), v80));
    v85 = vmaxq_f32(vmulq_f32(v72, vaddq_f32(v83, vmulq_f32(v84, vaddq_f32(vaddq_f32(*(v71 + 192), vmulq_f32(*(v71 + 208), v84)), vmulq_f32(vmulq_f32(v84, v84), vaddq_f32(*(v71 + 160), vmulq_f32(*(v71 + 176), v84))))))), *(v71 + 224));
    v86 = vcvtq_f32_s32(vcvtq_s32_f32(v85));
    v87 = vsubq_f32(v86, vandq_s8(v76, vcgtq_f32(v86, v85)));
    v88 = vsubq_f32(v85, v87);
    v89 = vbslq_s8(v78, vmulq_f32(vaddq_f32(v76, vmulq_f32(v88, vaddq_f32(*(v71 + 272), vmulq_f32(v88, vaddq_f32(*(v71 + 240), vmulq_f32(*(v71 + 256), v88)))))), vshlq_n_s32(vaddq_s32(*(v71 + 288), vcvtq_s32_f32(v87)), 0x17uLL)), v77);
    *(v5 + v69) = vbslq_s8(*(v71 + 320), v70, vmulq_n_f32(v70, vmulq_lane_f32(vbslq_s8(vcgtq_f32(vrev64q_s32(v89), *(v71 + 304)), v89, *(v71 + 304)), *v72.f32, 1).f32[0]));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2100_HLG_OOTF_InverseOOTF::GetDOD(HgcBT2100_HLG_OOTF_InverseOOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2100_HLG_OOTF_InverseOOTF::GetROI(HgcBT2100_HLG_OOTF_InverseOOTF *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2100_HLG_OOTF_InverseOOTF::HgcBT2100_HLG_OOTF_InverseOOTF(HgcBT2100_HLG_OOTF_InverseOOTF *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723EC50;
  operator new();
}

void HgcBT2100_HLG_OOTF_InverseOOTF::~HgcBT2100_HLG_OOTF_InverseOOTF(HgcBT2100_HLG_OOTF_InverseOOTF *this)
{
  *this = &unk_28723EC50;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4055B0EC01);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2100_HLG_OOTF_InverseOOTF::~HgcBT2100_HLG_OOTF_InverseOOTF(HGNode *this)
{
  *this = &unk_28723EC50;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4055B0EC01);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBT2100_HLG_OOTF_InverseOOTF::SetParameter(HgcBT2100_HLG_OOTF_InverseOOTF *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcBT2100_HLG_OOTF_InverseOOTF::GetParameter(HgcBT2100_HLG_OOTF_InverseOOTF *this, unsigned int a2, float *a3)
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

const char *HgcLogVideo_encode::GetProgram(HgcLogVideo_encode *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ea\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, half3(hg_Params[1].zzz));\n    r1.xyz = r1.xyz*half3(hg_Params[0].xxx) + half3(hg_Params[0].yyy);\n    r2.xyz = r0.xyz*half3(hg_Params[1].xxx) + half3(hg_Params[1].yyy);\n    r1.xyz = log2(r1.xyz);\n    r1.xyz = r1.xyz*half3(hg_Params[0].zzz) + half3(hg_Params[0].www);\n    r0.xyz = half3(half3(hg_Params[1].zzz) < r0.xyz);\n    output.color0.xyz = select(float3(r2.xyz), float3(r1.xyz), -float3(r0.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=673f7309:ded9e39a:b9dc90f8:646914fe\n//SIG=00400000:00000001:00000001:00000001:0000:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000038e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, hg_Params[1].zzz);\n    r1.xyz = r1.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n    r2.xyz = r0.xyz*hg_Params[1].xxx + hg_Params[1].yyy;\n    r1.xyz = log2(r1.xyz);\n    r1.xyz = r1.xyz*hg_Params[0].zzz + hg_Params[0].www;\n    r0.xyz = float3(hg_Params[1].zzz < r0.xyz);\n    output.color0.xyz = select(r2.xyz, r1.xyz, -r0.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=946613bc:8b4d9cc6:754ac3fe:09391315\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, hg_ProgramLocal1.zzz);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.xxx + hg_ProgramLocal0.yyy;\n    r2.xyz = r0.xyz*hg_ProgramLocal1.xxx + hg_ProgramLocal1.yyy;\n    r1.xyz = log2(r1.xyz);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.zzz + hg_ProgramLocal0.www;\n    r0.xyz = vec3(lessThan(hg_ProgramLocal1.zzz, r0.xyz));\n    gl_FragColor.xyz = vec3(-r0.x < 0.00000 ? r1.x : r2.x, -r0.y < 0.00000 ? r1.y : r2.y, -r0.z < 0.00000 ? r1.z : r2.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=c36f7dfa:e07ee2fc:60dd5881:8caa6da6\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE36C1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE36C4C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE36C44);
}

uint64_t HgcLogVideo_encode::BindTexture(HgcLogVideo_encode *this, HGHandler *a2, int a3)
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

uint64_t HgcLogVideo_encode::Bind(HgcLogVideo_encode *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcLogVideo_encode::RenderTile(HgcLogVideo_encode *this, HGTile *a2)
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
      v16 = vdupq_laneq_s32(v15, 2);
      v17 = vdupq_lane_s32(*v14, 1);
      v18 = vaddq_f32(v17, vmulq_n_f32(vmaxq_f32(v12, v16), COERCE_FLOAT(*v14)));
      v19 = vdupq_lane_s32(*v15.i8, 1);
      v20 = vaddq_f32(v17, vmulq_n_f32(vmaxq_f32(v13, v16), COERCE_FLOAT(*v14)));
      v21 = vaddq_f32(v19, vmulq_n_f32(v12, *v15.i32));
      v22 = vmulq_n_f32(v13, *v15.i32);
      v24 = *(v14 + 2);
      v23 = *(v14 + 3);
      v25 = vorrq_s8(vandq_s8(v24, v18), v23);
      v26 = *(v14 + 4);
      v27 = *(v14 + 5);
      v28 = vorrq_s8(vandq_s8(v24, v20), v23);
      v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v26, v18)));
      v30 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v27, vcgtq_f32(v26, v20)));
      v31 = *(v14 + 6);
      v32 = *(v14 + 7);
      v33 = vsubq_f32(v29, v31);
      v34 = vsubq_f32(v30, v31);
      v35 = vandq_s8(v23, vcgtq_f32(v25, v32));
      v36 = vandq_s8(v23, vcgtq_f32(v28, v32));
      v37 = *(v14 + 8);
      v38 = *(v14 + 9);
      v39 = vaddq_f32(v34, v36);
      v40 = vsubq_f32(vsubq_f32(v25, v23), vmulq_f32(vmulq_f32(v37, v35), v25));
      v41 = vsubq_f32(vsubq_f32(v28, v23), vmulq_f32(vmulq_f32(v37, v36), v28));
      v42 = *(v14 + 10);
      v43 = *(v14 + 11);
      v44 = vaddq_f32(v38, vmulq_f32(v42, v40));
      v45 = vaddq_f32(v38, vmulq_f32(v42, v41));
      v46 = *(v14 + 12);
      v47 = *(v14 + 13);
      v48 = vaddq_f32(v19, v22);
      v49 = vaddq_f32(vaddq_f32(v33, v35), vmulq_f32(v40, vaddq_f32(vaddq_f32(v43, vmulq_f32(v46, v40)), vmulq_f32(vmulq_f32(v40, v40), v44))));
      v50 = vmulq_f32(v41, vaddq_f32(vaddq_f32(v43, vmulq_f32(v46, v41)), vmulq_f32(vmulq_f32(v41, v41), v45)));
      v51 = vdupq_laneq_s32(*v14, 3);
      v52 = vmulq_laneq_f32(vaddq_f32(v39, v50), *v14, 2);
      v53 = vcgtq_f32(v12, v16);
      v54 = vandq_s8(v23, vcgtq_f32(v13, v16));
      v55 = vbslq_s8(v47, v12, vandq_s8(v23, v53));
      v56 = *(v14 + 14);
      v57 = vbslq_s8(v47, v12, vbslq_s8(vcgtq_f32(v55, v56), vaddq_f32(v51, vmulq_laneq_f32(v49, *v14, 2)), v21));
      v58 = (v5 + v10);
      v58[-1] = v57;
      *v58 = vbslq_s8(v47, v13, vbslq_s8(vcgtq_f32(vbslq_s8(v47, v13, v54), v56), vaddq_f32(v51, v52), v48));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v59 = 16 * v9;
    v60 = *(v6 + v59);
    v61 = *(this + 51);
    v62 = *(v61 + 1);
    v63 = vdupq_laneq_s32(v62, 2);
    v64 = vaddq_f32(vdupq_lane_s32(*v61, 1), vmulq_n_f32(vmaxq_f32(v60, v63), COERCE_FLOAT(*v61)));
    v65 = *(v61 + 3);
    v66 = vorrq_s8(vandq_s8(*(v61 + 2), v64), v65);
    v67 = vandq_s8(v65, vcgtq_f32(v66, *(v61 + 7)));
    v68 = vsubq_f32(vsubq_f32(v66, v65), vmulq_f32(vmulq_f32(*(v61 + 8), v67), v66));
    *(v5 + v59) = vbslq_s8(*(v61 + 13), v60, vbslq_s8(vcgtq_f32(vbslq_s8(*(v61 + 13), v60, vandq_s8(v65, vcgtq_f32(v60, v63))), *(v61 + 14)), vaddq_f32(vdupq_laneq_s32(*v61, 3), vmulq_laneq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v64, 0x17uLL)), vandq_s8(*(v61 + 5), vcgtq_f32(*(v61 + 4), v64))), *(v61 + 6)), v67), vmulq_f32(v68, vaddq_f32(vaddq_f32(*(v61 + 11), vmulq_f32(*(v61 + 12), v68)), vmulq_f32(vmulq_f32(v68, v68), vaddq_f32(*(v61 + 9), vmulq_f32(*(v61 + 10), v68)))))), *v61, 2)), vaddq_f32(vdupq_lane_s32(*v62.i8, 1), vmulq_n_f32(v60, *v62.i32))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcLogVideo_encode::GetDOD(HgcLogVideo_encode *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcLogVideo_encode::GetROI(HgcLogVideo_encode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcLogVideo_encode::HgcLogVideo_encode(HgcLogVideo_encode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723EEB8;
  operator new();
}

void HgcLogVideo_encode::~HgcLogVideo_encode(HgcLogVideo_encode *this)
{
  *this = &unk_28723EEB8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4019FCA701);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcLogVideo_encode::~HgcLogVideo_encode(HGNode *this)
{
  *this = &unk_28723EEB8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcLogVideo_encode::SetParameter(HgcLogVideo_encode *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcLogVideo_encode::GetParameter(HgcLogVideo_encode *this, unsigned int a2, float *a3)
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

const char *HgcLogVideo_decode::GetProgram(HgcLogVideo_decode *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003b6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz*half3(hg_Params[0].zzz) + half3(hg_Params[0].www);\n    r2.xyz = r0.xyz*half3(hg_Params[1].xxx) + half3(hg_Params[1].yyy);\n    r1.xyz = exp2(r1.xyz);\n    r1.xyz = r1.xyz*half3(hg_Params[0].xxx) + half3(hg_Params[0].yyy);\n    r0.xyz = half3(half3(hg_Params[1].zzz) < r0.xyz);\n    output.color0.xyz = select(float3(r2.xyz), float3(r1.xyz), -float3(r0.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=89281f2e:27643c8f:eb416052:f572fac4\n//SIG=00400000:00000001:00000001:00000001:0000:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000361\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz*hg_Params[0].zzz + hg_Params[0].www;\n    r2.xyz = r0.xyz*hg_Params[1].xxx + hg_Params[1].yyy;\n    r1.xyz = exp2(r1.xyz);\n    r1.xyz = r1.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n    r0.xyz = float3(hg_Params[1].zzz < r0.xyz);\n    output.color0.xyz = select(r2.xyz, r1.xyz, -r0.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=6fc31554:61839044:78b681d8:1e3d981b\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003a9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz*hg_ProgramLocal0.zzz + hg_ProgramLocal0.www;\n    r2.xyz = r0.xyz*hg_ProgramLocal1.xxx + hg_ProgramLocal1.yyy;\n    r1.xyz = exp2(r1.xyz);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.xxx + hg_ProgramLocal0.yyy;\n    r0.xyz = vec3(lessThan(hg_ProgramLocal1.zzz, r0.xyz));\n    gl_FragColor.xyz = vec3(-r0.x < 0.00000 ? r1.x : r2.x, -r0.y < 0.00000 ? r1.y : r2.y, -r0.z < 0.00000 ? r1.z : r2.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=0d96987c:05a426f8:85bbe0c4:660414d1\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE37734(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE37764(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE3775CLL);
}

uint64_t HgcLogVideo_decode::BindTexture(HgcLogVideo_decode *this, HGHandler *a2, int a3)
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

uint64_t HgcLogVideo_decode::Bind(HgcLogVideo_decode *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcLogVideo_decode::RenderTile(HgcLogVideo_decode *this, HGTile *a2)
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
      v16 = vdupq_laneq_s32(*v14, 3);
      v17 = vaddq_f32(v16, vmulq_laneq_f32(v12, *v14, 2));
      v18 = vdupq_lane_s32(*v15.i8, 1);
      v19 = vaddq_f32(v16, vmulq_laneq_f32(v13, *v14, 2));
      v20 = vaddq_f32(v18, vmulq_n_f32(v12, *v15.i32));
      v21 = vaddq_f32(v18, vmulq_n_f32(v13, *v15.i32));
      v22 = *(v14 + 2);
      v23 = *(v14 + 3);
      v24 = vmaxq_f32(v17, v22);
      v25 = vmaxq_f32(v19, v22);
      v26 = vcvtq_f32_s32(vcvtq_s32_f32(v24));
      v27 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
      v28 = vsubq_f32(v26, vandq_s8(v23, vcgtq_f32(v26, v24)));
      v29 = vsubq_f32(v27, vandq_s8(v23, vcgtq_f32(v27, v25)));
      v30 = vsubq_f32(v24, v28);
      v31 = vsubq_f32(v25, v29);
      v32 = *(v14 + 4);
      v33 = *(v14 + 5);
      v34 = vaddq_f32(v32, vmulq_f32(v33, v30));
      v35 = vaddq_f32(v32, vmulq_f32(v33, v31));
      v36 = vmulq_f32(v30, v34);
      v37 = *(v14 + 6);
      v38 = *(v14 + 7);
      v39 = vmulq_f32(vaddq_f32(v23, vmulq_f32(v30, vaddq_f32(v37, v36))), vshlq_n_s32(vaddq_s32(v38, vcvtq_s32_f32(v28)), 0x17uLL));
      v40 = vdupq_lane_s32(*v14, 1);
      v41 = vmulq_n_f32(vmulq_f32(vaddq_f32(v23, vmulq_f32(v31, vaddq_f32(v37, vmulq_f32(v31, v35)))), vshlq_n_s32(vaddq_s32(v38, vcvtq_s32_f32(v29)), 0x17uLL)), COERCE_FLOAT(*v14));
      v42 = vaddq_f32(v40, vmulq_n_f32(v39, COERCE_FLOAT(*v14)));
      v43 = vdupq_laneq_s32(v15, 2);
      v44 = vandq_s8(v23, vcgtq_f32(v12, v43));
      v45 = vaddq_f32(v40, v41);
      v46 = vandq_s8(v23, vcgtq_f32(v13, v43));
      v47 = *(v14 + 8);
      v48 = *(v14 + 9);
      v49 = (v5 + v10);
      v49[-1] = vbslq_s8(v47, v12, vbslq_s8(vcgtq_f32(vbslq_s8(v47, v12, v44), v48), v42, v20));
      *v49 = vbslq_s8(v47, v13, vbslq_s8(vcgtq_f32(vbslq_s8(v47, v13, v46), v48), v45, v21));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v50 = 16 * v9;
    v51 = *(v6 + v50);
    v52 = *(this + 51);
    v53 = *(v52 + 3);
    v54 = vmaxq_f32(vaddq_f32(vdupq_laneq_s32(*v52, 3), vmulq_laneq_f32(v51, *v52, 2)), *(v52 + 2));
    v55 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
    v56 = vsubq_f32(v55, vandq_s8(v53, vcgtq_f32(v55, v54)));
    v57 = vsubq_f32(v54, v56);
    *(v5 + v50) = vbslq_s8(*(v52 + 8), v51, vbslq_s8(vcgtq_f32(vbslq_s8(*(v52 + 8), v51, vandq_s8(v53, vcgtq_f32(v51, vdupq_laneq_s32(*(v52 + 1), 2)))), *(v52 + 9)), vaddq_f32(vdupq_lane_s32(*v52, 1), vmulq_n_f32(vmulq_f32(vaddq_f32(v53, vmulq_f32(v57, vaddq_f32(*(v52 + 6), vmulq_f32(v57, vaddq_f32(*(v52 + 4), vmulq_f32(*(v52 + 5), v57)))))), vshlq_n_s32(vaddq_s32(*(v52 + 7), vcvtq_s32_f32(v56)), 0x17uLL)), COERCE_FLOAT(*v52))), vaddq_f32(vdupq_lane_s32(v52[1], 1), vmulq_n_f32(v51, COERCE_FLOAT(v52[1])))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcLogVideo_decode::GetDOD(HgcLogVideo_decode *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcLogVideo_decode::GetROI(HgcLogVideo_decode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcLogVideo_decode::HgcLogVideo_decode(HgcLogVideo_decode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723F120;
  operator new();
}

void HgcLogVideo_decode::~HgcLogVideo_decode(HgcLogVideo_decode *this)
{
  *this = &unk_28723F120;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40B8406A4ELL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcLogVideo_decode::~HgcLogVideo_decode(HGNode *this)
{
  *this = &unk_28723F120;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcLogVideo_decode::SetParameter(HgcLogVideo_decode *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcLogVideo_decode::GetParameter(HgcLogVideo_decode *this, unsigned int a2, float *a3)
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

const char *HgcSony709_800_MLUT::GetProgram(HgcSony709_800_MLUT *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000056b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = r0.xyz + half3(hg_Params[0].xxx);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r2.xyz = r1.xyz*half3(hg_Params[2].xxx);\n    r3.xyz = r0.xyz*half3(hg_Params[1].xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].www));\n    r1.xyz = r1.xyz*half3(hg_Params[1].yyy) + half3(hg_Params[1].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[2].zzz) + c0.yyy;\n    r1.xyz = r1.xyz - r3.xyz;\n    r5.xyz = half3(r0.xyz >= half3(hg_Params[0].yyy));\n    r5.xyz = r5.xyz*r1.xyz + r3.xyz;\n    r4.xyz = half3(hg_Params[1].www)/r4.xyz;\n    r2.xyz = pow(r2.xyz, r4.xyz);\n    r2.xyz = r2.xyz*half3(hg_Params[2].yyy) + -r5.xyz;\n    r0.xyz = half3(r0.xyz >= half3(hg_Params[0].zzz));\n    output.color0.xyz = float3(r0.xyz)*float3(r2.xyz) + float3(r5.xyz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=7b171a2a:157267ef:87e4d2e2:1035cfc2\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0006:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004fd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = r0.xyz + hg_Params[0].xxx;\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r2.xyz = r1.xyz*hg_Params[2].xxx;\n    r3.xyz = r0.xyz*hg_Params[1].xxx;\n    r1.xyz = pow(r1.xyz, hg_Params[1].www);\n    r1.xyz = r1.xyz*hg_Params[1].yyy + hg_Params[1].zzz;\n    r4.xyz = r2.xyz*hg_Params[2].zzz + c0.yyy;\n    r1.xyz = r1.xyz - r3.xyz;\n    r5.xyz = float3(r0.xyz >= hg_Params[0].yyy);\n    r5.xyz = r5.xyz*r1.xyz + r3.xyz;\n    r4.xyz = hg_Params[1].www/r4.xyz;\n    r2.xyz = pow(r2.xyz, r4.xyz);\n    r2.xyz = r2.xyz*hg_Params[2].yyy + -r5.xyz;\n    r0.xyz = float3(r0.xyz >= hg_Params[0].zzz);\n    output.color0.xyz = r0.xyz*r2.xyz + r5.xyz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=33f92460:9b78ada8:8b346e0c:2f6489c6\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0006:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000055d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = r0.xyz + hg_ProgramLocal0.xxx;\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r2.xyz = r1.xyz*hg_ProgramLocal2.xxx;\n    r3.xyz = r0.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.www);\n    r1.xyz = r1.xyz*hg_ProgramLocal1.yyy + hg_ProgramLocal1.zzz;\n    r4.xyz = r2.xyz*hg_ProgramLocal2.zzz + c0.yyy;\n    r1.xyz = r1.xyz - r3.xyz;\n    r5.xyz = vec3(greaterThanEqual(r0.xyz, hg_ProgramLocal0.yyy));\n    r5.xyz = r5.xyz*r1.xyz + r3.xyz;\n    r4.xyz = hg_ProgramLocal1.www/r4.xyz;\n    r2.xyz = pow(r2.xyz, r4.xyz);\n    r2.xyz = r2.xyz*hg_ProgramLocal2.yyy + -r5.xyz;\n    r0.xyz = vec3(greaterThanEqual(r0.xyz, hg_ProgramLocal0.zzz));\n    gl_FragColor.xyz = r0.xyz*r2.xyz + r5.xyz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=c888713c:7accba57:13c6ff48:9a1ff1c4\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0006:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE381A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE381D0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE381C8);
}

uint64_t HgcSony709_800_MLUT::BindTexture(HgcSony709_800_MLUT *this, HGHandler *a2, int a3)
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

uint64_t HgcSony709_800_MLUT::Bind(HgcSony709_800_MLUT *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSony709_800_MLUT::RenderTile(HgcSony709_800_MLUT *this, HGTile *a2)
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
      v14 = *(v6 + v10 - 16);
      v15 = *(v6 + v10);
      v16 = vdupq_lane_s32(*v12, 0);
      v18 = *(v12 + 32);
      v17 = *(v12 + 48);
      v19 = vaddq_f32(v15, v16);
      v20 = vbslq_s8(v17, v14, vaddq_f32(v14, v16));
      v21 = vbslq_s8(v17, v15, v19);
      v22 = *(v12 + 64);
      v23 = *(v12 + 80);
      v24 = vmaxq_f32(v20, v22);
      v25 = vmaxq_f32(v21, v22);
      v26 = vmulq_n_f32(v24, v18.f32[0]);
      v27 = vmulq_n_f32(v25, v18.f32[0]);
      v28 = *(v12 + 96);
      v29 = *(v12 + 112);
      v30 = vorrq_s8(vandq_s8(v23, v24), v28);
      v32 = *(v12 + 128);
      v31 = *(v12 + 144);
      v33 = vorrq_s8(vandq_s8(v23, v25), v28);
      v34 = *(v12 + 160);
      v35 = *(v12 + 176);
      v36 = vandq_s8(v28, vcgtq_f32(v30, v34));
      v37 = vandq_s8(v28, vcgtq_f32(v33, v34));
      v38 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v29, v24))), v31), v36);
      v39 = vmulq_f32(v35, v36);
      v40 = vmulq_f32(vmulq_f32(v35, v37), v33);
      v41 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v25, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v29, v25))), v31), v37);
      v42 = vsubq_f32(v33, v28);
      v43 = vsubq_f32(vsubq_f32(v30, v28), vmulq_f32(v39, v30));
      v44 = vsubq_f32(v42, v40);
      v45 = *(v12 + 192);
      v46 = *(v12 + 208);
      v47 = *(v12 + 224);
      v48 = *(v12 + 240);
      v49 = vaddq_f32(v38, vmulq_f32(v43, vaddq_f32(vaddq_f32(v47, vmulq_f32(v43, v48)), vmulq_f32(vmulq_f32(v43, v43), vaddq_f32(v45, vmulq_f32(v46, v43))))));
      v50 = vaddq_f32(v28, vmulq_laneq_f32(v26, v18, 2));
      v51 = vaddq_f32(v28, vmulq_laneq_f32(v27, v18, 2));
      v52 = vaddq_f32(v41, vmulq_f32(v44, vaddq_f32(vaddq_f32(v47, vmulq_f32(v44, v48)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v45, vmulq_f32(v46, v44))))));
      v53 = *(v12 + 336);
      v54 = vmulq_f32(vrecpeq_f32(v50), v53);
      v55 = vmulq_f32(vrecpeq_f32(v51), v53);
      v56 = *(v12 + 352);
      v57 = *(v12 + 368);
      v58 = vmaxq_f32(v54, v56);
      v59 = vmaxq_f32(v55, v56);
      v60 = vmulq_laneq_f32(v49, v13, 3);
      v61 = vminq_f32(v58, v57);
      v62 = vminq_f32(v59, v57);
      v63 = vmulq_laneq_f32(v52, v13, 3);
      v64 = vmulq_f32(v61, vrecpsq_f32(v50, v61));
      v66 = *(v12 + 256);
      v65 = *(v12 + 272);
      v67 = vrecpsq_f32(v51, v62);
      v68 = vmaxq_f32(v60, v66);
      v69 = vmulq_f32(v62, v67);
      v70 = vandq_s8(v32, vcgtq_f32(v29, v26));
      v71 = vandq_s8(v32, vcgtq_f32(v29, v27));
      v72 = vmaxq_f32(v63, v66);
      v73 = vorrq_s8(vandq_s8(v23, v26), v28);
      v74 = vorrq_s8(vandq_s8(v23, v27), v28);
      v75 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v26, 0x17uLL)), v70), v31);
      v76 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), v71), v31);
      v77 = vandq_s8(v28, vcgtq_f32(v73, v34));
      v78 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
      v79 = vandq_s8(v28, vcgtq_f32(v74, v34));
      v80 = vaddq_f32(v75, v77);
      v81 = vaddq_f32(v76, v79);
      v82 = vmulq_f32(v35, v77);
      v83 = vmulq_f32(v35, v79);
      v84 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
      v85 = vsubq_f32(vsubq_f32(v73, v28), vmulq_f32(v82, v73));
      v86 = vsubq_f32(vsubq_f32(v74, v28), vmulq_f32(v83, v74));
      v87 = vsubq_f32(v78, vandq_s8(v28, vcgtq_f32(v78, v68)));
      v88 = vaddq_f32(v45, vmulq_f32(v46, v85));
      v90 = *(v12 + 288);
      v89 = *(v12 + 304);
      v91 = vsubq_f32(v84, vandq_s8(v28, vcgtq_f32(v84, v72)));
      v92 = vsubq_f32(v68, v87);
      v93 = vaddq_f32(vaddq_f32(v47, vmulq_f32(v86, v48)), vmulq_f32(vmulq_f32(v86, v86), vaddq_f32(v45, vmulq_f32(v46, v86))));
      v94 = vsubq_f32(v72, v91);
      v95 = vaddq_f32(v80, vmulq_f32(v85, vaddq_f32(vaddq_f32(v47, vmulq_f32(v85, v48)), vmulq_f32(vmulq_f32(v85, v85), v88))));
      v96 = *(v12 + 320);
      v97 = vmulq_f32(vaddq_f32(v28, vmulq_f32(v94, vaddq_f32(v89, vmulq_f32(v94, vaddq_f32(v65, vmulq_f32(v90, v94)))))), vshlq_n_s32(vaddq_s32(v96, vcvtq_s32_f32(v91)), 0x17uLL));
      v98 = vmulq_n_f32(v20, v13.f32[0]);
      v99 = vaddq_f32(v81, vmulq_f32(v86, v93));
      v100 = vdupq_laneq_s32(v13, 2);
      v101 = vdupq_lane_s32(*v12, 1);
      v102 = vaddq_f32(v100, vmulq_lane_f32(vmulq_f32(vaddq_f32(v28, vmulq_f32(v92, vaddq_f32(v89, vmulq_f32(v92, vaddq_f32(v65, vmulq_f32(v90, v92)))))), vshlq_n_s32(vaddq_s32(v96, vcvtq_s32_f32(v87)), 0x17uLL)), *v13.f32, 1));
      v103 = vmaxq_f32(vmulq_f32(v95, vmulq_laneq_f32(v64, v13, 3)), v66);
      v104 = vmaxq_f32(vmulq_f32(v99, vmulq_laneq_f32(v69, v13, 3)), v66);
      v105 = vaddq_f32(v100, vmulq_lane_f32(v97, *v13.f32, 1));
      v106 = vcvtq_f32_s32(vcvtq_s32_f32(v103));
      v107 = vcvtq_f32_s32(vcvtq_s32_f32(v104));
      v108 = vsubq_f32(v106, vandq_s8(v28, vcgtq_f32(v106, v103)));
      v109 = vsubq_f32(v107, vandq_s8(v28, vcgtq_f32(v107, v104)));
      v110 = vmulq_n_f32(v21, v13.f32[0]);
      v111 = vsubq_f32(v103, v108);
      v112 = vsubq_f32(v104, v109);
      v113 = vaddq_f32(v98, vmulq_f32(vandq_s8(v28, vcgeq_f32(v20, v101)), vsubq_f32(v102, v98)));
      v114 = vaddq_f32(v110, vmulq_f32(vandq_s8(v28, vcgeq_f32(v21, v101)), vsubq_f32(v105, v110)));
      v115 = vdupq_laneq_s32(*v12, 2);
      v116 = (v5 + v10);
      v116[-1] = vbslq_s8(v17, v14, vaddq_f32(v113, vmulq_f32(vsubq_f32(vmulq_lane_f32(vmulq_f32(vaddq_f32(v28, vmulq_f32(v111, vaddq_f32(v89, vmulq_f32(v111, vaddq_f32(v65, vmulq_f32(v90, v111)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v108), v96), 0x17uLL)), *v18.f32, 1), v113), vbslq_s8(v17, v14, vandq_s8(v28, vcgeq_f32(v20, v115))))));
      *v116 = vbslq_s8(v17, v15, vaddq_f32(v114, vmulq_f32(vsubq_f32(vmulq_lane_f32(vmulq_f32(vaddq_f32(v28, vmulq_f32(v112, vaddq_f32(v89, vmulq_f32(v112, vaddq_f32(v65, vmulq_f32(v90, v112)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v109), v96), 0x17uLL)), *v18.f32, 1), v114), vbslq_s8(v17, v15, vandq_s8(v28, vcgeq_f32(v21, v115))))));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v117 = 16 * v9;
    v118 = *(v6 + v117);
    v119 = *(this + 51);
    v120 = *(v119 + 16);
    v122 = *(v119 + 32);
    v121 = *(v119 + 48);
    v123 = vbslq_s8(v121, v118, vaddq_f32(v118, vdupq_lane_s32(*v119, 0)));
    v124 = *(v119 + 80);
    v125 = vmaxq_f32(v123, *(v119 + 64));
    v126 = vmulq_n_f32(v125, v122.f32[0]);
    v127 = vmulq_n_f32(v123, v120.f32[0]);
    v128 = *(v119 + 96);
    v129 = *(v119 + 112);
    v130 = vorrq_s8(vandq_s8(v124, v125), v128);
    v131 = *(v119 + 128);
    v132 = *(v119 + 144);
    v133 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v125, 0x17uLL)), vandq_s8(v131, vcgtq_f32(v129, v125))), v132);
    v134 = *(v119 + 160);
    v135 = *(v119 + 176);
    v136 = vandq_s8(v128, vcgtq_f32(v130, v134));
    v137 = vaddq_f32(v133, v136);
    v138 = vsubq_f32(vsubq_f32(v130, v128), vmulq_f32(vmulq_f32(v135, v136), v130));
    v139 = *(v119 + 192);
    v140 = *(v119 + 208);
    v141 = *(v119 + 224);
    v142 = *(v119 + 240);
    v143 = vmulq_laneq_f32(vaddq_f32(v137, vmulq_f32(v138, vaddq_f32(vaddq_f32(v141, vmulq_f32(v138, v142)), vmulq_f32(vmulq_f32(v138, v138), vaddq_f32(v139, vmulq_f32(v140, v138)))))), v120, 3);
    v144 = *(v119 + 256);
    v145 = *(v119 + 272);
    v146 = vmaxq_f32(v143, v144);
    v147 = vcvtq_f32_s32(vcvtq_s32_f32(v146));
    v148 = vsubq_f32(v147, vandq_s8(v128, vcgtq_f32(v147, v146)));
    v149 = vsubq_f32(v146, v148);
    v150 = *(v119 + 288);
    v151 = *(v119 + 304);
    v152 = vcvtq_s32_f32(v148);
    v153 = *(v119 + 320);
    v154 = vaddq_f32(vdupq_laneq_s32(v120, 2), vmulq_lane_f32(vmulq_f32(vaddq_f32(v128, vmulq_f32(v149, vaddq_f32(v151, vmulq_f32(v149, vaddq_f32(v145, vmulq_f32(v150, v149)))))), vshlq_n_s32(vaddq_s32(v153, v152), 0x17uLL)), *v120.f32, 1));
    v155 = vaddq_f32(v128, vmulq_laneq_f32(v126, v122, 2));
    v156 = vaddq_f32(v127, vmulq_f32(vandq_s8(v128, vcgeq_f32(v123, vdupq_lane_s32(*v119, 1))), vsubq_f32(v154, v127)));
    v157 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v155), *(v119 + 336)), *(v119 + 352)), *(v119 + 368));
    v158 = vorrq_s8(vandq_s8(v124, v126), v128);
    v159 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v126, 0x17uLL)), vandq_s8(v131, vcgtq_f32(v129, v126))), v132);
    v160 = vandq_s8(v128, vcgtq_f32(v158, v134));
    v161 = vsubq_f32(vsubq_f32(v158, v128), vmulq_f32(vmulq_f32(v135, v160), v158));
    v162 = vmaxq_f32(vmulq_f32(vaddq_f32(vaddq_f32(v159, v160), vmulq_f32(v161, vaddq_f32(vaddq_f32(v141, vmulq_f32(v161, v142)), vmulq_f32(vmulq_f32(v161, v161), vaddq_f32(v139, vmulq_f32(v140, v161)))))), vmulq_laneq_f32(vmulq_f32(v157, vrecpsq_f32(v155, v157)), v120, 3)), v144);
    v163 = vcvtq_f32_s32(vcvtq_s32_f32(v162));
    v164 = vsubq_f32(v163, vandq_s8(v128, vcgtq_f32(v163, v162)));
    v165 = vsubq_f32(v162, v164);
    *(v5 + v117) = vbslq_s8(v121, v118, vaddq_f32(v156, vmulq_f32(vsubq_f32(vmulq_lane_f32(vmulq_f32(vaddq_f32(v128, vmulq_f32(v165, vaddq_f32(v151, vmulq_f32(v165, vaddq_f32(v145, vmulq_f32(v150, v165)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v164), v153), 0x17uLL)), *v122.f32, 1), v156), vbslq_s8(v121, v118, vandq_s8(v128, vcgeq_f32(v123, vdupq_laneq_s32(*v119, 2)))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcSony709_800_MLUT::GetDOD(HgcSony709_800_MLUT *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcSony709_800_MLUT::GetROI(HgcSony709_800_MLUT *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcSony709_800_MLUT::HgcSony709_800_MLUT(HgcSony709_800_MLUT *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723F388;
  operator new();
}

void HgcSony709_800_MLUT::~HgcSony709_800_MLUT(HgcSony709_800_MLUT *this)
{
  *this = &unk_28723F388;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C400F47AF14);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcSony709_800_MLUT::~HgcSony709_800_MLUT(HGNode *this)
{
  *this = &unk_28723F388;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F47AF14);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcSony709_800_MLUT::SetParameter(HgcSony709_800_MLUT *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcSony709_800_MLUT::GetParameter(HgcSony709_800_MLUT *this, unsigned int a2, float *a3)
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

const char *HgcCanonLog_encode::GetProgram(HgcCanonLog_encode *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003cf\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz)*half3(hg_Params[0].zzz);\n    r2.xyz = half3(r0.xyz < c0.xxx);\n    r0.xyz = half3(c0.xxx < r0.xyz);\n    r0.xyz = r0.xyz - r2.xyz;\n    r1.xyz = r1.xyz + c0.yyy;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xxx);\n    r1.xyz = log2(r1.xyz);\n    output.color0.xyz = float3(r0.xyz)*float3(r1.xyz) + hg_Params[0].yyy;\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=3cb30ea7:184d1a1c:e362e55b:bc915a63\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003a8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz)*hg_Params[0].zzz;\n    r2.xyz = float3(r0.xyz < c0.xxx);\n    r0.xyz = float3(c0.xxx < r0.xyz);\n    r0.xyz = r0.xyz - r2.xyz;\n    r1.xyz = r1.xyz + c0.yyy;\n    r0.xyz = r0.xyz*hg_Params[0].xxx;\n    r1.xyz = log2(r1.xyz);\n    output.color0.xyz = r0.xyz*r1.xyz + hg_Params[0].yyy;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=24f0a63e:b72cd12f:57b86ae8:8b63bce0\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000038c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = abs(r0.xyz)*hg_ProgramLocal0.zzz;\n    r2.xyz = vec3(lessThan(r0.xyz, c0.xxx));\n    r0.xyz = vec3(lessThan(c0.xxx, r0.xyz));\n    r0.xyz = r0.xyz - r2.xyz;\n    r1.xyz = r1.xyz + c0.yyy;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xxx;\n    r1.xyz = log2(r1.xyz);\n    gl_FragColor.xyz = r0.xyz*r1.xyz + hg_ProgramLocal0.yyy;\n    gl_FragColor.w = r0.w;\n}\n//MD5=7914ca2c:7a3f0945:4a5f2d4f:23b380ff\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE39114(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE39144(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE3913CLL);
}

uint64_t HgcCanonLog_encode::BindTexture(HgcCanonLog_encode *this, HGHandler *a2, int a3)
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

uint64_t HgcCanonLog_encode::Bind(HgcCanonLog_encode *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcCanonLog_encode::RenderTile(HgcCanonLog_encode *this, HGTile *a2)
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
      v17 = *(v14 + 2);
      v16 = *(v14 + 3);
      v18 = vaddq_f32(vmulq_laneq_f32(vabsq_f32(v12), *v14, 2), v17);
      v19 = vaddq_f32(vmulq_laneq_f32(vabsq_f32(v13), *v14, 2), v17);
      v20 = vmulq_n_f32(vbslq_s8(v16, v12, vsubq_f32(vbslq_s8(v16, v12, vandq_s8(v17, vcgtq_f32(v12, v15))), vandq_s8(v17, vcgtq_f32(v15, v12)))), COERCE_FLOAT(*v14));
      v21 = *(v14 + 4);
      v22 = *(v14 + 5);
      v23 = vmulq_n_f32(vbslq_s8(v16, v13, vsubq_f32(vbslq_s8(v16, v13, vandq_s8(v17, vcgtq_f32(v13, v15))), vandq_s8(v17, vcgtq_f32(v15, v13)))), COERCE_FLOAT(*v14));
      v24 = vandq_s8(v21, v19);
      v25 = vorrq_s8(vandq_s8(v21, v18), v17);
      v26 = vorrq_s8(v24, v17);
      v27 = vbslq_s8(v16, v12, v20);
      v28 = *(v14 + 6);
      v29 = *(v14 + 7);
      v30 = vandq_s8(v28, vcgtq_f32(v22, v18));
      v31 = vandq_s8(v28, vcgtq_f32(v22, v19));
      v32 = vbslq_s8(v16, v13, v23);
      v33 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), v31);
      v34 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v18, 0x17uLL)), v30), v29);
      v35 = *(v14 + 8);
      v36 = *(v14 + 9);
      v37 = vandq_s8(v17, vcgtq_f32(v25, v35));
      v38 = vandq_s8(v17, vcgtq_f32(v26, v35));
      v39 = vaddq_f32(v34, v37);
      v40 = vaddq_f32(vsubq_f32(v33, v29), v38);
      v41 = vsubq_f32(vsubq_f32(v25, v17), vmulq_f32(vmulq_f32(v36, v37), v25));
      v42 = vsubq_f32(vsubq_f32(v26, v17), vmulq_f32(vmulq_f32(v36, v38), v26));
      v43 = *(v14 + 10);
      v44 = *(v14 + 11);
      v45 = vaddq_f32(v43, vmulq_f32(v44, v41));
      v46 = vaddq_f32(v43, vmulq_f32(v44, v42));
      v47 = *(v14 + 12);
      v48 = *(v14 + 13);
      v49 = vdupq_lane_s32(*v14, 1);
      v50 = (v5 + v10);
      v50[-1] = vbslq_s8(v16, v12, vaddq_f32(v49, vmulq_f32(vaddq_f32(v39, vmulq_f32(v41, vaddq_f32(vaddq_f32(v47, vmulq_f32(v41, v48)), vmulq_f32(vmulq_f32(v41, v41), v45)))), v27)));
      *v50 = vbslq_s8(v16, v13, vaddq_f32(v49, vmulq_f32(vaddq_f32(v40, vmulq_f32(v42, vaddq_f32(vaddq_f32(v47, vmulq_f32(v42, v48)), vmulq_f32(vmulq_f32(v42, v42), v46)))), v32)));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v51 = 16 * v9;
    v52 = *(v6 + v51);
    v53 = *(this + 51);
    v54 = *(v53 + 2);
    v55 = *(v53 + 3);
    v56 = vaddq_f32(vmulq_laneq_f32(vabsq_f32(v52), *v53, 2), v54);
    v57 = vorrq_s8(vandq_s8(*(v53 + 4), v56), v54);
    v58 = vandq_s8(v54, vcgtq_f32(v57, *(v53 + 8)));
    v59 = vsubq_f32(vsubq_f32(v57, v54), vmulq_f32(vmulq_f32(*(v53 + 9), v58), v57));
    *(v5 + v51) = vbslq_s8(v55, v52, vaddq_f32(vdupq_lane_s32(*v53, 1), vmulq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v56, 0x17uLL)), vandq_s8(*(v53 + 6), vcgtq_f32(*(v53 + 5), v56))), *(v53 + 7)), v58), vmulq_f32(v59, vaddq_f32(vaddq_f32(*(v53 + 12), vmulq_f32(v59, *(v53 + 13))), vmulq_f32(vmulq_f32(v59, v59), vaddq_f32(*(v53 + 10), vmulq_f32(*(v53 + 11), v59)))))), vbslq_s8(v55, v52, vmulq_n_f32(vbslq_s8(v55, v52, vsubq_f32(vbslq_s8(v55, v52, vandq_s8(v54, vcgtq_f32(v52, *(v53 + 1)))), vandq_s8(v54, vcgtq_f32(*(v53 + 1), v52)))), COERCE_FLOAT(*v53))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcCanonLog_encode::GetDOD(HgcCanonLog_encode *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcCanonLog_encode::GetROI(HgcCanonLog_encode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcCanonLog_encode::HgcCanonLog_encode(HgcCanonLog_encode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723F5F0;
  operator new();
}

void HgcCanonLog_encode::~HgcCanonLog_encode(HgcCanonLog_encode *this)
{
  *this = &unk_28723F5F0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C405DF52C91);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcCanonLog_encode::~HgcCanonLog_encode(HGNode *this)
{
  *this = &unk_28723F5F0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C405DF52C91);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcCanonLog_encode::SetParameter(HgcCanonLog_encode *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcCanonLog_encode::GetParameter(HgcCanonLog_encode *this, int a2, float *a3)
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

const char *HgcNikonLog_encode::GetProgram(HgcNikonLog_encode *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, half3(hg_Params[0].www));\n    r2.xyz = r0.xyz*half3(hg_Params[0].xxx) + half3(hg_Params[0].yyy);\n    r2.xyz = fmax(r2.xyz, c0.xxx);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].zzz));\n    r1.xyz = log2(r1.xyz);\n    r1.xyz = r1.xyz*half3(hg_Params[1].xxx) + half3(hg_Params[1].yyy);\n    r0.xyz = half3(r0.xyz >= half3(hg_Params[0].www));\n    output.color0.xyz = select(float3(r2.xyz), float3(r1.xyz), -float3(r0.xyz) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=3f8ec093:0799bfad:07283387:be79b09a\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003f7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, hg_Params[0].www);\n    r2.xyz = r0.xyz*hg_Params[0].xxx + hg_Params[0].yyy;\n    r2.xyz = fmax(r2.xyz, c0.xxx);\n    r2.xyz = pow(r2.xyz, hg_Params[0].zzz);\n    r1.xyz = log2(r1.xyz);\n    r1.xyz = r1.xyz*hg_Params[1].xxx + hg_Params[1].yyy;\n    r0.xyz = float3(r0.xyz >= hg_Params[0].www);\n    output.color0.xyz = select(r2.xyz, r1.xyz, -r0.xyz < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=9edade93:85582fd4:1e848f4f:c25d5331\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000448\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, hg_ProgramLocal0.www);\n    r2.xyz = r0.xyz*hg_ProgramLocal0.xxx + hg_ProgramLocal0.yyy;\n    r2.xyz = max(r2.xyz, c0.xxx);\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.zzz);\n    r1.xyz = log2(r1.xyz);\n    r1.xyz = r1.xyz*hg_ProgramLocal1.xxx + hg_ProgramLocal1.yyy;\n    r0.xyz = vec3(greaterThanEqual(r0.xyz, hg_ProgramLocal0.www));\n    gl_FragColor.xyz = vec3(-r0.x < 0.00000 ? r1.x : r2.x, -r0.y < 0.00000 ? r1.y : r2.y, -r0.z < 0.00000 ? r1.z : r2.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=07c9b4e2:ac369c2c:083b433b:0792297e\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE39BDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE39C0C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE39C04);
}

uint64_t HgcNikonLog_encode::BindTexture(HgcNikonLog_encode *this, HGHandler *a2, int a3)
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

uint64_t HgcNikonLog_encode::Bind(HgcNikonLog_encode *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcNikonLog_encode::RenderTile(HgcNikonLog_encode *this, HGTile *a2)
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
      v13 = v12[1];
      v14 = *(v6 + v10 - 16);
      v15 = *(v6 + v10);
      v16 = vdupq_laneq_s32(*v12, 3);
      v17 = vmaxq_f32(v14, v16);
      v18 = vdupq_lane_s32(*v12, 1);
      v19 = vmaxq_f32(v15, v16);
      v20 = vaddq_f32(v18, vmulq_n_f32(v14, COERCE_FLOAT(*v12)));
      v21 = vaddq_f32(v18, vmulq_n_f32(v15, COERCE_FLOAT(*v12)));
      v22 = *(v12 + 2);
      v23 = *(v12 + 3);
      v24 = vmaxq_f32(v20, v22);
      v25 = vmaxq_f32(v21, v22);
      v26 = *(v12 + 4);
      v27 = *(v12 + 5);
      v28 = vorrq_s8(vandq_s8(v23, v24), v26);
      v29 = vorrq_s8(vandq_s8(v23, v25), v26);
      v31 = *(v12 + 6);
      v30 = *(v12 + 7);
      v32 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v24, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v27, v24))), v30);
      v34 = *(v12 + 8);
      v33 = *(v12 + 9);
      v35 = vandq_s8(v26, vcgtq_f32(v28, v34));
      v36 = vandq_s8(v26, vcgtq_f32(v29, v34));
      v37 = vaddq_f32(v32, v35);
      v38 = vmulq_f32(v33, v35);
      v39 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v25, 0x17uLL)), vandq_s8(v31, vcgtq_f32(v27, v25))), v30), v36);
      v40 = vmulq_f32(vmulq_f32(v33, v36), v29);
      v41 = vsubq_f32(vsubq_f32(v28, v26), vmulq_f32(v38, v28));
      v42 = vsubq_f32(vsubq_f32(v29, v26), v40);
      v43 = *(v12 + 10);
      v44 = *(v12 + 11);
      v45 = *(v12 + 12);
      v46 = *(v12 + 13);
      v47 = vmulq_laneq_f32(vaddq_f32(v39, vmulq_f32(v42, vaddq_f32(vaddq_f32(v45, vmulq_f32(v42, v46)), vmulq_f32(vmulq_f32(v42, v42), vaddq_f32(v43, vmulq_f32(v44, v42)))))), *v12, 2);
      v48 = *(v12 + 14);
      v49 = *(v12 + 15);
      v50 = vmaxq_f32(vmulq_laneq_f32(vaddq_f32(v37, vmulq_f32(v41, vaddq_f32(vaddq_f32(v45, vmulq_f32(v41, v46)), vmulq_f32(vmulq_f32(v41, v41), vaddq_f32(v43, vmulq_f32(v44, v41)))))), *v12, 2), v48);
      v51 = vmaxq_f32(v47, v48);
      v52 = vcvtq_f32_s32(vcvtq_s32_f32(v50));
      v53 = vcvtq_f32_s32(vcvtq_s32_f32(v51));
      v54 = vsubq_f32(v52, vandq_s8(v26, vcgtq_f32(v52, v50)));
      v55 = vsubq_f32(v53, vandq_s8(v26, vcgtq_f32(v53, v51)));
      v56 = vsubq_f32(v50, v54);
      v57 = *(v12 + 16);
      v58 = *(v12 + 17);
      v59 = vsubq_f32(v51, v55);
      v61 = *(v12 + 18);
      v60 = *(v12 + 19);
      v62 = vaddq_s32(v61, vcvtq_s32_f32(v54));
      v63 = vaddq_s32(v61, vcvtq_s32_f32(v55));
      v64 = vshlq_n_s32(v62, 0x17uLL);
      v65 = vshlq_n_s32(v63, 0x17uLL);
      v66 = vandq_s8(v31, vcgtq_f32(v27, v17));
      v67 = vandq_s8(v31, vcgtq_f32(v27, v19));
      v68 = vorrq_s8(vandq_s8(v23, v17), v26);
      v69 = vorrq_s8(vandq_s8(v23, v19), v26);
      v70 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v19, 0x17uLL)), v67), v30);
      v71 = vandq_s8(v26, vcgtq_f32(v68, v34));
      v72 = vandq_s8(v26, vcgtq_f32(v69, v34));
      v73 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), v66), v30), v71);
      v74 = vaddq_f32(v70, v72);
      v75 = vmulq_f32(v33, v71);
      v76 = vmulq_f32(v33, v72);
      v77 = vsubq_f32(vsubq_f32(v68, v26), vmulq_f32(v75, v68));
      v78 = vsubq_f32(vsubq_f32(v69, v26), vmulq_f32(v76, v69));
      v79 = vaddq_f32(v74, vmulq_f32(v78, vaddq_f32(vaddq_f32(v45, vmulq_f32(v78, v46)), vmulq_f32(vmulq_f32(v78, v78), vaddq_f32(v43, vmulq_f32(v44, v78))))));
      v80 = vdupq_lane_s32(*&v13, 1);
      v81 = (v5 + v10);
      v81[-1] = vbslq_s8(v60, v14, vbslq_s8(vcgtq_f32(vbslq_s8(v60, v14, vandq_s8(v26, vcgeq_f32(v14, v16))), v22), vaddq_f32(v80, vmulq_n_f32(vaddq_f32(v73, vmulq_f32(v77, vaddq_f32(vaddq_f32(v45, vmulq_f32(v77, v46)), vmulq_f32(vmulq_f32(v77, v77), vaddq_f32(v43, vmulq_f32(v44, v77)))))), *&v13)), vmulq_f32(vaddq_f32(v26, vmulq_f32(v56, vaddq_f32(v58, vmulq_f32(v56, vaddq_f32(v49, vmulq_f32(v57, v56)))))), v64)));
      *v81 = vbslq_s8(v60, v15, vbslq_s8(vcgtq_f32(vbslq_s8(v60, v15, vandq_s8(v26, vcgeq_f32(v15, v16))), v22), vaddq_f32(v80, vmulq_n_f32(v79, *&v13)), vmulq_f32(vaddq_f32(v26, vmulq_f32(v59, vaddq_f32(v58, vmulq_f32(v59, vaddq_f32(v49, vmulq_f32(v57, v59)))))), v65)));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v82 = 16 * v9;
    v83 = *(v6 + v82);
    v84 = *(this + 51);
    v85 = vdupq_laneq_s32(*v84, 3);
    v86 = vmaxq_f32(v83, v85);
    v87 = *(v84 + 2);
    v88 = *(v84 + 3);
    v89 = vmaxq_f32(vaddq_f32(vdupq_lane_s32(*v84, 1), vmulq_n_f32(v83, COERCE_FLOAT(*v84))), v87);
    v90 = *(v84 + 4);
    v91 = *(v84 + 5);
    v92 = vorrq_s8(vandq_s8(v88, v89), v90);
    v93 = *(v84 + 6);
    v94 = *(v84 + 7);
    v95 = *(v84 + 8);
    v96 = *(v84 + 9);
    v97 = vandq_s8(v90, vcgtq_f32(v92, v95));
    v98 = vsubq_f32(vsubq_f32(v92, v90), vmulq_f32(vmulq_f32(v96, v97), v92));
    v99 = *(v84 + 10);
    v100 = *(v84 + 11);
    v101 = *(v84 + 12);
    v102 = *(v84 + 13);
    v103 = vmaxq_f32(vmulq_laneq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v89, 0x17uLL)), vandq_s8(v93, vcgtq_f32(v91, v89))), v94), v97), vmulq_f32(v98, vaddq_f32(vaddq_f32(v101, vmulq_f32(v98, v102)), vmulq_f32(vmulq_f32(v98, v98), vaddq_f32(v99, vmulq_f32(v100, v98)))))), *v84, 2), *(v84 + 14));
    v104 = vcvtq_f32_s32(vcvtq_s32_f32(v103));
    v105 = vsubq_f32(v104, vandq_s8(v90, vcgtq_f32(v104, v103)));
    v106 = vsubq_f32(v103, v105);
    v107 = vmulq_f32(vaddq_f32(v90, vmulq_f32(v106, vaddq_f32(*(v84 + 17), vmulq_f32(v106, vaddq_f32(*(v84 + 15), vmulq_f32(*(v84 + 16), v106)))))), vshlq_n_s32(vaddq_s32(*(v84 + 18), vcvtq_s32_f32(v105)), 0x17uLL));
    v108 = vorrq_s8(vandq_s8(v88, v86), v90);
    v109 = vandq_s8(v90, vcgtq_f32(v108, v95));
    v110 = vsubq_f32(vsubq_f32(v108, v90), vmulq_f32(vmulq_f32(v96, v109), v108));
    *(v5 + v82) = vbslq_s8(*(v84 + 19), v83, vbslq_s8(vcgtq_f32(vbslq_s8(*(v84 + 19), v83, vandq_s8(v90, vcgeq_f32(v83, v85))), v87), vaddq_f32(vdupq_lane_s32(v84[1], 1), vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v86, 0x17uLL)), vandq_s8(v93, vcgtq_f32(v91, v86))), v94), v109), vmulq_f32(v110, vaddq_f32(vaddq_f32(v101, vmulq_f32(v110, v102)), vmulq_f32(vmulq_f32(v110, v110), vaddq_f32(v99, vmulq_f32(v100, v110)))))), COERCE_FLOAT(v84[1]))), v107));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcNikonLog_encode::GetDOD(HgcNikonLog_encode *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcNikonLog_encode::GetROI(HgcNikonLog_encode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcNikonLog_encode::HgcNikonLog_encode(HgcNikonLog_encode *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28723F858;
  operator new();
}

void HgcNikonLog_encode::~HgcNikonLog_encode(HgcNikonLog_encode *this)
{
  *this = &unk_28723F858;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40B2834900);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcNikonLog_encode::~HgcNikonLog_encode(HGNode *this)
{
  *this = &unk_28723F858;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B2834900);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcNikonLog_encode::SetParameter(HgcNikonLog_encode *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcNikonLog_encode::GetParameter(HgcNikonLog_encode *this, unsigned int a2, float *a3)
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

BOOL FxIsSupportedNCLCValue_Private(int a1)
{
  v1 = ((1 << SBYTE1(a1)) & 0x52102) != 0 && a1 == 0;
  if (BYTE1(a1) > 0x12u)
  {
    v1 = 0;
  }

  if (((1 << SBYTE2(a1)) & 0x1202) == 0)
  {
    v1 = 0;
  }

  return BYTE2(a1) <= 0xCu && v1;
}

uint64_t FxIsDebugFlagOn()
{
  Current = CFAbsoluteTimeGetCurrent();
  if (Current - *&FxIsDebugFlagOn_lastCheckTicks > 1.0)
  {
    v1 = *MEMORY[0x277CBF028];
    if ((FxIsDebugFlagOn_addedSuitePrefs & 1) == 0)
    {
      FxIsDebugFlagOn_addedSuitePrefs = 1;
      CFPreferencesAddSuitePreferencesToApp(v1, @"com.apple.FxPlug");
    }

    v2 = CFPreferencesCopyAppValue(@"DEBUG", v1);
    if (v2)
    {
      v3 = v2;
      FxIsDebugFlagOn_result = [v2 isEqual:@"YES"];
      CFRelease(v3);
    }

    else
    {
      FxIsDebugFlagOn_result = 0;
    }

    FxIsDebugFlagOn_lastCheckTicks = *&Current;
  }

  return FxIsDebugFlagOn_result;
}

void FxDebugLog(NSString *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if (FxIsDebugFlagOn())
  {
    NSLogv(a1, &a9);
  }
}

uint64_t FxDebugAssert(uint64_t a1, NSString *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  if ((a1 & 1) == 0 && FxIsDebugFlagOn())
  {
    NSLogv(a2, &a9);
  }

  return a1;
}

void MyDataProviderReleaser(id a1)
{
  if (a1)
  {
  }
}

BOOL __gl_vertLeq(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 56);
  v3 = *(a2 + 56);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *(a1 + 64) <= *(a2 + 64);
  }

  return 0;
}

double __gl_edgeEval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  if (v3 >= v4 && (v3 != v4 || *(a1 + 64) > *(a2 + 64)) || (v5 = *(a3 + 56), v4 >= v5) && (v4 != v5 || *(a2 + 64) > *(a3 + 64)))
  {
    __gl_edgeEval_cold_1();
  }

  v6 = v4 - v3;
  v7 = v5 - v4;
  v8 = v4 - v3 + v7;
  result = 0.0;
  if (v8 > 0.0)
  {
    if (v6 >= v7)
    {
      v10 = a3;
    }

    else
    {
      v10 = a1;
    }

    if (v6 >= v7)
    {
      v11 = a1;
    }

    else
    {
      v11 = a3;
    }

    if (v6 < v7)
    {
      v7 = v6;
    }

    return *(a2 + 64) - *(v10 + 64) + v7 / v8 * (*(v10 + 64) - *(v11 + 64));
  }

  return result;
}

double __gl_edgeSign(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 56);
  v4 = *(a2 + 56);
  if (v3 >= v4 && (v3 != v4 || *(a1 + 64) > *(a2 + 64)) || (v5 = *(a3 + 56), v4 >= v5) && (v4 != v5 || *(a2 + 64) > *(a3 + 64)))
  {
    __gl_edgeSign_cold_1();
  }

  v6 = v4 - v3;
  v7 = v5 - v4;
  result = 0.0;
  if (v6 + v7 > 0.0)
  {
    return v6 * (*(a2 + 64) - *(a3 + 64)) + v7 * (*(a2 + 64) - *(a1 + 64));
  }

  return result;
}

double __gl_transEval(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a2 + 64);
  if (v3 >= v4 && (v3 != v4 || *(a1 + 56) > *(a2 + 56)) || (v5 = *(a3 + 64), v4 >= v5) && (v4 != v5 || *(a2 + 56) > *(a3 + 56)))
  {
    __gl_transEval_cold_1();
  }

  v6 = v4 - v3;
  v7 = v5 - v4;
  v8 = v4 - v3 + v7;
  result = 0.0;
  if (v8 > 0.0)
  {
    if (v6 >= v7)
    {
      v10 = a3;
    }

    else
    {
      v10 = a1;
    }

    if (v6 >= v7)
    {
      v11 = a1;
    }

    else
    {
      v11 = a3;
    }

    if (v6 < v7)
    {
      v7 = v6;
    }

    return *(a2 + 56) - *(v10 + 56) + v7 / v8 * (*(v10 + 56) - *(v11 + 56));
  }

  return result;
}

double __gl_transSign(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 64);
  v4 = *(a2 + 64);
  if (v3 >= v4 && (v3 != v4 || *(a1 + 56) > *(a2 + 56)) || (v5 = *(a3 + 64), v4 >= v5) && (v4 != v5 || *(a2 + 56) > *(a3 + 56)))
  {
    __gl_transSign_cold_1();
  }

  v6 = v4 - v3;
  v7 = v5 - v4;
  result = 0.0;
  if (v6 + v7 > 0.0)
  {
    return v6 * (*(a2 + 56) - *(a3 + 56)) + v7 * (*(a2 + 56) - *(a1 + 56));
  }

  return result;
}

void __gl_edgeIntersect(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(a1 + 56);
  v8 = *(a2 + 56);
  if (v7 < v8 || v7 == v8 && *(a1 + 64) <= *(a2 + 64))
  {
    v9 = a2;
    a2 = a1;
  }

  else
  {
    v9 = a1;
  }

  v10 = *(a3 + 56);
  v11 = *(a4 + 56);
  if (v10 < v11 || v10 == v11 && *(a3 + 64) <= *(a4 + 64))
  {
    v11 = *(a3 + 56);
    v12 = a4;
    a4 = a3;
  }

  else
  {
    v12 = a3;
  }

  v13 = *(a2 + 56);
  if (v13 < v11 || v13 == v11 && *(a2 + 64) <= *(a4 + 64))
  {
    v13 = v11;
    v14 = v12;
    v15 = a4;
    v12 = v9;
    a4 = a2;
  }

  else
  {
    v14 = v9;
    v15 = a2;
  }

  v16 = *(v12 + 56);
  if (v13 >= v16 && (v13 != v16 || *(v15 + 64) > *(v12 + 64)))
  {
    v17 = v13 + v16;
LABEL_49:
    v29 = v17 * 0.5;
    goto LABEL_50;
  }

  v18 = *(v14 + 56);
  if (v16 < v18 || v16 == v18 && *(v12 + 64) <= *(v14 + 64))
  {
    v26 = __gl_edgeEval(a4, v15, v12);
    v27 = __gl_edgeEval(v15, v12, v14);
    if (v26 + v27 >= 0.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = -v27;
    }

    if (v26 + v27 >= 0.0)
    {
      v22 = v26;
    }

    else
    {
      v22 = -v26;
    }

    v23 = 0.0;
    if (v22 < 0.0)
    {
      v22 = 0.0;
    }

    if (v28 >= 0.0)
    {
      v23 = v28;
    }

    v24 = *(v15 + 56);
    if (v22 > v23)
    {
      v25 = *(v12 + 56);
      goto LABEL_44;
    }

    v30 = *(v12 + 56);
LABEL_47:
    if (v23 != 0.0)
    {
      v29 = v24 + v22 / (v22 + v23) * (v30 - v24);
      goto LABEL_50;
    }

    v17 = v24 + v30;
    goto LABEL_49;
  }

  v19 = __gl_edgeSign(a4, v15, v12);
  v20 = __gl_edgeSign(a4, v14, v12);
  v21 = -v20;
  if (v19 >= v20)
  {
    v22 = v19;
  }

  else
  {
    v21 = v20;
    v22 = -v19;
  }

  v23 = 0.0;
  if (v22 < 0.0)
  {
    v22 = 0.0;
  }

  if (v21 >= 0.0)
  {
    v23 = v21;
  }

  v24 = *(v15 + 56);
  if (v22 <= v23)
  {
    v30 = *(v14 + 56);
    goto LABEL_47;
  }

  v25 = *(v14 + 56);
LABEL_44:
  v29 = v25 + v23 / (v22 + v23) * (v24 - v25);
LABEL_50:
  *(a5 + 56) = v29;
  v31 = *(a4 + 64);
  v32 = *(v12 + 64);
  if (v31 < v32 || v31 == v32 && *(a4 + 56) <= *(v12 + 56))
  {
    v33 = v12;
    v12 = a4;
  }

  else
  {
    v33 = a4;
  }

  v34 = *(v15 + 64);
  v35 = *(v14 + 64);
  if (v34 < v35 || v34 == v35 && *(v15 + 56) <= *(v14 + 56))
  {
    v35 = *(v15 + 64);
    v36 = v14;
    v14 = v15;
  }

  else
  {
    v36 = v15;
  }

  v37 = *(v12 + 64);
  if (v37 < v35 || v37 == v35 && *(v12 + 56) <= *(v14 + 56))
  {
    v37 = v35;
    v38 = v36;
    v39 = v14;
    v36 = v33;
    v14 = v12;
  }

  else
  {
    v38 = v33;
    v39 = v12;
  }

  v40 = *(v36 + 64);
  if (v37 >= v40 && (v37 != v40 || *(v39 + 56) > *(v36 + 56)))
  {
    v41 = v37 + v40;
LABEL_99:
    v53 = v41 * 0.5;
    goto LABEL_100;
  }

  v42 = *(v38 + 64);
  if (v40 < v42 || v40 == v42 && *(v36 + 56) <= *(v38 + 56))
  {
    v50 = __gl_transEval(v14, v39, v36);
    v51 = __gl_transEval(v39, v36, v38);
    if (v50 + v51 >= 0.0)
    {
      v52 = v51;
    }

    else
    {
      v52 = -v51;
    }

    if (v50 + v51 >= 0.0)
    {
      v46 = v50;
    }

    else
    {
      v46 = -v50;
    }

    v47 = 0.0;
    if (v46 < 0.0)
    {
      v46 = 0.0;
    }

    if (v52 >= 0.0)
    {
      v47 = v52;
    }

    v48 = *(v39 + 64);
    if (v46 > v47)
    {
      v49 = *(v36 + 64);
      goto LABEL_93;
    }

    v54 = *(v36 + 64);
LABEL_97:
    if (v47 != 0.0)
    {
      v53 = v48 + v46 / (v46 + v47) * (v54 - v48);
      goto LABEL_100;
    }

    v41 = v48 + v54;
    goto LABEL_99;
  }

  v43 = __gl_transSign(v14, v39, v36);
  v44 = __gl_transSign(v14, v38, v36);
  v45 = -v44;
  if (v43 >= v44)
  {
    v46 = v43;
  }

  else
  {
    v45 = v44;
    v46 = -v43;
  }

  v47 = 0.0;
  if (v46 < 0.0)
  {
    v46 = 0.0;
  }

  if (v45 >= 0.0)
  {
    v47 = v45;
  }

  v48 = *(v39 + 64);
  if (v46 <= v47)
  {
    v54 = *(v38 + 64);
    goto LABEL_97;
  }

  v49 = *(v38 + 64);
LABEL_93:
  v53 = v49 + v47 / (v46 + v47) * (v48 - v49);
LABEL_100:
  *(a5 + 64) = v53;
}

uint64_t __gl_meshTessellateMonoRegion(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = v1[3];
  if (v2 == v1 || *(v2 + 24) == v1)
  {
    __gl_meshTessellateMonoRegion_cold_2();
  }

  while (1)
  {
    v3 = *(v1[1] + 32);
    v4 = *(v3 + 56);
    v5 = v1[4];
    v6 = *(v5 + 56);
    if (v4 >= v6 && (v4 != v6 || *(v3 + 64) > *(v5 + 64)))
    {
      break;
    }

    v1 = *(v1[2] + 8);
  }

  while (v6 < v4 || v6 == v4 && *(v5 + 64) <= *(v3 + 64))
  {
    v1 = v1[3];
    v5 = v1[4];
    v6 = *(v5 + 56);
    v3 = *(v1[1] + 32);
    v4 = *(v3 + 56);
  }

  v7 = *(v1[2] + 8);
  while (v1[3] != v7)
  {
    v8 = *(v1[1] + 32);
    v9 = *(v8 + 56);
    v10 = v7[4];
    v11 = *(v10 + 56);
    if (v9 < v11 || v9 == v11 && *(v8 + 64) <= *(v10 + 64))
    {
      while (1)
      {
        v18 = v7[3];
        if (v18 == v1)
        {
          break;
        }

        v19 = *(v18[1] + 32);
        v20 = *(v19 + 56);
        v21 = v18[4];
        v22 = *(v21 + 56);
        if (v20 >= v22 && (v20 != v22 || *(v19 + 64) > *(v21 + 64)))
        {
          if (__gl_edgeSign(v7[4], *(v7[1] + 32), v19) > 0.0)
          {
            break;
          }

          v18 = v7[3];
        }

        result = __gl_meshConnect(v18, v7);
        if (!result)
        {
          return result;
        }

        v7 = *(result + 8);
      }

      v7 = *(v7[2] + 8);
    }

    else
    {
      while (v7[3] != v1)
      {
        v12 = *(v1[2] + 8);
        v13 = v12[4];
        v14 = *(v13 + 56);
        v15 = *(v12[1] + 32);
        v16 = *(v15 + 56);
        if (v14 >= v16 && (v14 != v16 || *(v13 + 64) > *(v15 + 64)))
        {
          if (__gl_edgeSign(*(v1[1] + 32), v1[4], v13) < 0.0)
          {
            break;
          }

          v12 = *(v1[2] + 8);
        }

        result = __gl_meshConnect(v1, v12);
        if (!result)
        {
          return result;
        }

        v1 = *(result + 8);
      }

      v1 = v1[3];
    }
  }

  v23 = v7[3];
  if (v23 == v1)
  {
    __gl_meshTessellateMonoRegion_cold_1();
  }

  while (v23[3] != v1)
  {
    result = __gl_meshConnect(v23, v7);
    if (!result)
    {
      return result;
    }

    v7 = *(result + 8);
    v23 = v7[3];
  }

  return 1;
}

uint64_t __gl_meshTessellateInterior(uint64_t a1)
{
  v2 = a1 + 80;
  v1 = *(a1 + 80);
  if (v1 == v2)
  {
    return 1;
  }

  while (1)
  {
    v3 = *v1;
    if (*(v1 + 41))
    {
      result = __gl_meshTessellateMonoRegion(v1);
      if (!result)
      {
        break;
      }
    }

    v1 = v3;
    if (v3 == v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t __gl_meshDiscardExterior(uint64_t a1)
{
  v2 = a1 + 80;
  result = *(a1 + 80);
  if (result != v2)
  {
    do
    {
      v3 = *result;
      if (!*(result + 41))
      {
        __gl_meshZapFace(result);
      }

      result = v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t __gl_meshSetWindingNumber(uint64_t a1, int a2, int a3)
{
  v4 = (a1 + 128);
  v3 = *(a1 + 128);
  if (v3 != v4)
  {
    v7 = -a2;
    do
    {
      v8 = *v3;
      if (*(*(v3[1] + 40) + 41) == *(v3[5] + 41))
      {
        if (a3)
        {
          result = __gl_meshDelete(v3);
          if (!result)
          {
            return result;
          }

          goto LABEL_12;
        }

        v10 = 0;
      }

      else if (*(v3[5] + 41))
      {
        v10 = a2;
      }

      else
      {
        v10 = v7;
      }

      *(v3 + 14) = v10;
LABEL_12:
      v3 = v8;
    }

    while (v8 != v4);
  }

  return 1;
}

uint64_t __gl_computeInterior(uint64_t a1)
{
  *(a1 + 116) = 0;
  v2 = *(a1 + 16);
  v5 = *(v2 + 128);
  v4 = (v2 + 128);
  v3 = v5;
  if (v5 != v4)
  {
    while (1)
    {
      v7 = v3[3];
      v6 = v3[4];
      v8 = *v3;
      v9 = *(v3[1] + 32);
      if (*(v6 + 56) == *(v9 + 56) && *(v6 + 64) == *(v9 + 64) && v7[3] != v3)
      {
        SpliceMergeVertices(a1, v3[3], v3);
        if (!__gl_meshDelete(v3))
        {
          break;
        }

        v10 = v7[3];
      }

      else
      {
        v10 = v3[3];
        v7 = v3;
      }

      if (v10[3] == v7)
      {
        if (v10 != v7)
        {
          if (v10 == v8 || v10 == v8[1])
          {
            v8 = *v8;
          }

          if (!__gl_meshDelete(v10))
          {
            break;
          }
        }

        if (v7 == v8 || v7 == v8[1])
        {
          v8 = *v8;
        }

        if (!__gl_meshDelete(v7))
        {
          break;
        }
      }

      v3 = v8;
      if (v8 == v4)
      {
        goto LABEL_19;
      }
    }

LABEL_53:
    longjmp((a1 + 3464), 1);
  }

LABEL_19:
  result = __gl_pqSortNewPriorityQ(__gl_vertLeq);
  *(a1 + 128) = result;
  if (result)
  {
    v12 = result;
    v13 = *(a1 + 16);
    v14 = v13;
    while (1)
    {
      v14 = *v14;
      if (v14 == v13)
      {
        break;
      }

      v15 = __gl_pqSortInsert(v12, v14);
      v14[9] = v15;
      if (v15 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_47;
      }
    }

    if (__gl_pqSortInit(v12))
    {
      v16 = __gl_dictListNewDict(a1, EdgeLeq);
      *(a1 + 120) = v16;
      if (!v16)
      {
        goto LABEL_53;
      }

      AddSentinel(a1, -4.0e150);
      AddSentinel(a1, 4.0e150);
      Min = __gl_pqSortExtractMin(*(a1 + 128));
      if (Min)
      {
        v18 = Min;
        do
        {
          while (1)
          {
            v19 = __gl_pqSortMinimum(*(a1 + 128));
            if (!v19 || *(v19 + 56) != *(v18 + 56) || *(v19 + 64) != *(v18 + 64))
            {
              break;
            }

            v20 = __gl_pqSortExtractMin(*(a1 + 128));
            SpliceMergeVertices(a1, *(v18 + 16), *(v20 + 16));
          }

          SweepEvent(a1, v18);
          v18 = __gl_pqSortExtractMin(*(a1 + 128));
        }

        while (v18);
      }

      v21 = 0;
      v22 = **(*(a1 + 120) + 8);
      *(a1 + 136) = *(*v22 + 32);
      do
      {
        if (!v22[21])
        {
          if (!v22[23])
          {
            __gl_computeInterior_cold_4();
          }

          if (v21)
          {
            __gl_computeInterior_cold_1();
          }

          v21 = 1;
        }

        if (*(v22 + 4))
        {
          __gl_computeInterior_cold_2();
        }

        DeleteRegion(a1, v22);
        v23 = *(a1 + 120);
        v22 = **(v23 + 8);
      }

      while (v22);
      __gl_dictListDeleteDict(v23);
      __gl_pqSortDeletePriorityQ(*(a1 + 128));
      v24 = *(a1 + 16);
      v25 = v24 + 10;
      v26 = v24[10];
      if (v26 == v24 + 10)
      {
LABEL_46:
        __gl_meshCheckMesh(v24);
        return 1;
      }

      else
      {
        while (1)
        {
          v27 = v26[2];
          v28 = *(v27 + 24);
          if (v28 == v27)
          {
            __gl_computeInterior_cold_3();
          }

          v26 = *v26;
          if (*(v28 + 24) == v27)
          {
            v30 = *(v27 + 8);
            v29 = *(v27 + 16);
            *(v29 + 56) += *(v27 + 56);
            *(*(v29 + 8) + 56) += *(v30 + 56);
            result = __gl_meshDelete(v27);
            if (!result)
            {
              break;
            }
          }

          if (v26 == v25)
          {
            v24 = *(a1 + 16);
            goto LABEL_46;
          }
        }
      }
    }

    else
    {
LABEL_47:
      __gl_pqSortDeletePriorityQ(*(a1 + 128));
      result = 0;
      *(a1 + 128) = 0;
    }
  }

  return result;
}

uint64_t SpliceMergeVertices(uint64_t a1, void *a2, void *a3)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v10[2] = 0;
  v10[3] = 0;
  v9 = xmmword_260345860;
  v6 = a2[4];
  v7 = *(a3[4] + 24);
  v10[0] = *(v6 + 24);
  v10[1] = v7;
  CallCombine(a1, v6, v10, &v9, 0);
  result = __gl_meshSplice(a2, a3);
  if (!result)
  {
    longjmp((a1 + 3464), 1);
  }

  return result;
}

void SweepEvent(uint64_t a1, uint64_t a2)
{
  *(a1 + 136) = a2;
  v4 = *(a2 + 16);
  v5 = v4;
  do
  {
    v6 = *(v5 + 48);
    if (v6)
    {
      v17 = TopLeftRegion(v6);
      if (!v17)
      {
        goto LABEL_55;
      }

      v18 = v17;
      v19 = *(v17[1] + 16);
      v20 = **v19;
      v21 = FinishLeftRegions(a1, *v19, 0);
      v22 = v21[2];
      if (v22 == v20)
      {
        v28 = v21;
        v29 = *v18;
        v30 = **(v18[1] + 16);
        v31 = *v30;
        if (*(*(*v18 + 8) + 32) != *(*(*v30 + 8) + 32))
        {
          CheckForIntersect(a1, v18);
        }

        v32 = v29[4];
        v33 = *(a1 + 136);
        v34 = *(v33 + 56);
        if (*(v32 + 56) == v34 && *(v32 + 64) == *(v33 + 64))
        {
          if (!__gl_meshSplice(*(v22[1] + 24), v29))
          {
            goto LABEL_55;
          }

          v35 = TopLeftRegion(v18);
          if (!v35)
          {
            goto LABEL_55;
          }

          v18 = v35;
          v36 = *(v35[1] + 16);
          v22 = **v36;
          FinishLeftRegions(a1, *v36, v30);
          v37 = 0;
          v33 = *(a1 + 136);
          v34 = *(v33 + 56);
        }

        else
        {
          v37 = 1;
        }

        v46 = *(v31 + 32);
        v47 = *(v46 + 56);
        if (v47 == v34 && *(v46 + 64) == *(v33 + 64))
        {
          if (!__gl_meshSplice(v28, *(*(v31 + 8) + 24)))
          {
            goto LABEL_55;
          }

          v28 = FinishLeftRegions(a1, v30, 0);
        }

        else if (v37)
        {
          v48 = v29[4];
          v49 = *(v48 + 56);
          if (v47 < v49 || v47 == v49 && *(v46 + 64) <= *(v48 + 64))
          {
            v29 = *(*(v31 + 8) + 24);
          }

          v50 = __gl_meshConnect(*(v28[2] + 8), v29);
          if (!v50)
          {
            goto LABEL_55;
          }

          v51 = v50;
          AddRightEdges(a1, v18, v50, v50[2], v50[2], 0);
          *(*(v51[1] + 48) + 23) = 1;

          WalkDirtyRegions(a1, v18);
          return;
        }

        v25 = v28[2];
        v23 = a1;
        v24 = v18;
        v26 = v22;
        v27 = v22;
      }

      else
      {
        v23 = a1;
        v24 = v18;
        v25 = v22;
        v26 = v20;
        v27 = v20;
      }

      AddRightEdges(v23, v24, v25, v26, v27, 1);
      return;
    }

    v5 = *(v5 + 16);
  }

  while (v5 != v4);
  v54[1] = 0;
  v54[2] = 0;
  v54[0] = *(v4 + 8);
  v7 = __gl_dictListSearch(*(a1 + 120), v54);
  v8 = *v7;
  v9 = **v7;
  v10 = **((*v7)[1] + 16);
  v11 = *v10;
  if (__gl_edgeSign(*(*(v9 + 8) + 32), a2, *(v9 + 32)) == 0.0)
  {
    v12 = *v8;
    v13 = *(*v8 + 32);
    v14 = *(a2 + 56);
    if (*(v13 + 56) == v14 && *(v13 + 64) == *(a2 + 64))
    {
      SweepEvent_cold_2();
    }

    v15 = *(v12 + 8);
    v16 = *(v15 + 32);
    if (*(v16 + 56) == v14 && *(v16 + 64) == *(a2 + 64))
    {
      SweepEvent_cold_1();
    }

    if (!__gl_meshSplitEdge(v15))
    {
      goto LABEL_55;
    }

    if (!*(v8 + 23))
    {
      goto LABEL_13;
    }

    if (!__gl_meshDelete(*(v12 + 16)))
    {
      goto LABEL_55;
    }

    *(v8 + 23) = 0;
LABEL_13:
    if (!__gl_meshSplice(*(a2 + 16), v12))
    {
LABEL_55:
      longjmp((a1 + 3464), 1);
    }

    goto LABEL_57;
  }

  v38 = *(v11 + 8);
  v39 = *(v38 + 32);
  v40 = *(v39 + 56);
  v41 = *(*(v9 + 8) + 32);
  v42 = *(v41 + 56);
  v43 = v8;
  if (v40 >= v42)
  {
    if (v40 != v42 || (v43 = v8, *(v39 + 64) > *(v41 + 64)))
    {
      v43 = v10;
    }
  }

  if (*(v8 + 20) || *(v43 + 23))
  {
    if (v43 == v8)
    {
      v45 = __gl_meshConnect(*(*(a2 + 16) + 8), *(v9 + 24));
      if (!v45)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v44 = __gl_meshConnect(*(*(v38 + 16) + 8), *(a2 + 16));
      if (!v44)
      {
        goto LABEL_55;
      }

      v45 = v44[1];
    }

    if (*(v43 + 23))
    {
      if (!FixUpperEdge(v43, v45))
      {
        goto LABEL_55;
      }
    }

    else
    {
      v52 = AddRegionBelow(a1, v8, v45);
      v53 = *(*v52 + 56) + *(**(v52[1] + 8) + 16);
      *(v52 + 4) = v53;
      *(v52 + 20) = IsWindingInside(a1, v53);
    }

LABEL_57:
    SweepEvent(a1, a2);
    return;
  }

  AddRightEdges(a1, v8, *(a2 + 16), *(a2 + 16), 0, 1);
}

BOOL EdgeLeq(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 136);
  v4 = *a2;
  v5 = *a3;
  v6 = *(*(*a2 + 8) + 32);
  v7 = *(*(*a3 + 8) + 32);
  if (v6 == v3)
  {
    if (v7 == v3)
    {
      v16 = *(v4 + 32);
      v17 = *(v16 + 56);
      v11 = *(v5 + 32);
      v18 = *(v11 + 56);
      if (v17 >= v18 && (v17 != v18 || *(v16 + 64) > *(v11 + 64)))
      {
        v14 = *(v5 + 32);
        v8 = v16;
        goto LABEL_7;
      }

      v12 = v7;
      v13 = v16;
    }

    else
    {
      v11 = *(v5 + 32);
      v12 = v7;
      v13 = v3;
    }

    return __gl_edgeSign(v12, v13, v11) <= 0.0;
  }

  v8 = *(v4 + 32);
  if (v7 != v3)
  {
    v9 = __gl_edgeEval(v6, v3, v8);
    v10 = v9 < __gl_edgeEval(*(*(v5 + 8) + 32), v3, *(v5 + 32));
    return !v10;
  }

  v14 = v3;
LABEL_7:
  v10 = __gl_edgeSign(v6, v14, v8) < 0.0;
  return !v10;
}

void *AddSentinel(uint64_t a1, double a2)
{
  v4 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
  if (!v4 || (v5 = v4, (Edge = __gl_meshMakeEdge(*(a1 + 16))) == 0) || (v7 = Edge[4], *(v7 + 56) = 0x5F338D352E5096AFLL, *(v7 + 64) = a2, v8 = *(Edge[1] + 32), *(v8 + 56) = 0xDF338D352E5096AFLL, *(v8 + 64) = a2, *(a1 + 136) = v8, *v5 = Edge, *(v5 + 16) = 0, *(v5 + 20) = 256, result = __gl_dictListInsertBefore(*(a1 + 120), *(a1 + 120), v5), (*(v5 + 8) = result) == 0))
  {
    longjmp((a1 + 3464), 1);
  }

  return result;
}

uint64_t CallCombine(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v14 = *MEMORY[0x277D85DE8];
  *(a2 + 24) = 0;
  v8 = (a2 + 24);
  v12 = *(a2 + 32);
  v13 = *(a2 + 48);
  v9 = *(a1 + 3456);
  if (v9 == __gl_noCombineData)
  {
    result = (*(a1 + 144))(&v12, a3, a4, v8);
  }

  else
  {
    result = (v9)(&v12, a3, a4, v8, *(a1 + 3656));
  }

  if (!*v8)
  {
    if (a5)
    {
      if (!*(a1 + 116))
      {
        v11 = *(a1 + 3448);
        if (v11 == __gl_noErrorData)
        {
          result = (*(a1 + 24))(100156);
        }

        else
        {
          result = (v11)(100156, *(a1 + 3656));
        }

        *(a1 + 116) = 1;
      }
    }

    else
    {
      *v8 = *a3;
    }
  }

  return result;
}

void *TopLeftRegion(void *a1)
{
  v1 = a1;
  do
  {
    v1 = **(v1[1] + 8);
  }

  while (*(*v1 + 32) == *(*a1 + 32));
  if (*(v1 + 23))
  {
    v2 = __gl_meshConnect(*(***(v1[1] + 16) + 8), *(*v1 + 24));
    if (v2 && FixUpperEdge(v1, v2))
    {
      return **(v1[1] + 8);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void *FinishLeftRegions(uint64_t a1, void **a2, _BYTE *a3)
{
  v3 = *a2;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      v5[23] = 0;
      v7 = **(*(v5 + 1) + 16);
      v8 = *v7;
      if (*(*v7 + 32) != v3[4])
      {
        if (!v7[23])
        {
          v12 = v3[5];
          *(v12 + 41) = v5[20];
          *(v12 + 16) = v3;
          DeleteRegion(a1, v5);
          return v3;
        }

        v9 = __gl_meshConnect(*(v3[2] + 8), v8[1]);
        if (!v9 || (v8 = v9, !FixUpperEdge(v7, v9)))
        {
LABEL_14:
          longjmp((a1 + 3464), 1);
        }
      }

      if (v3[2] != v8 && (!__gl_meshSplice(*(v8[1] + 24), v8) || !__gl_meshSplice(v3, v8)))
      {
        goto LABEL_14;
      }

      v10 = *v5;
      v11 = *(*v5 + 40);
      *(v11 + 41) = v5[20];
      *(v11 + 16) = v10;
      DeleteRegion(a1, v5);
      v3 = *v7;
      v5 = v7;
    }

    while (v7 != a3);
  }

  return v3;
}

void AddRightEdges(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, int a6)
{
  do
  {
    v12 = a3[4];
    v13 = *(v12 + 56);
    v14 = a3[1];
    v15 = *(v14 + 32);
    v16 = *(v15 + 56);
    if (v13 >= v16 && (v13 != v16 || *(v12 + 64) > *(v15 + 64)))
    {
      AddRightEdges_cold_1();
    }

    AddRegionBelow(a1, a2, v14);
    a3 = a3[2];
  }

  while (a3 != a4);
  v17 = **(*(a2 + 8) + 16);
  v18 = *(*v17 + 8);
  if (!a5)
  {
    a5 = *(v18 + 16);
  }

  if (*(v18 + 32) == *(a5 + 32))
  {
    v19 = 0;
    do
    {
      v20 = a2;
      v21 = a5;
      a2 = v17;
      a5 = v18;
      if (*(v18 + 16) != v21 && (!__gl_meshSplice(*(*(v18 + 8) + 24), v18) || !__gl_meshSplice(*(*(v21 + 8) + 24), a5)) || (v22 = *(v20 + 16) - *(a5 + 56), *(a2 + 16) = v22, *(a2 + 20) = IsWindingInside(a1, v22), *(v20 + 22) = 1, (v19 & 1) != 0) && CheckForRightSplice(a1, v20) && (*(a5 + 56) += *(v21 + 56), *(*(a5 + 8) + 56) += *(*(v21 + 8) + 56), DeleteRegion(a1, v20), !__gl_meshDelete(v21)))
      {
        longjmp((a1 + 3464), 1);
      }

      v17 = **(*(a2 + 8) + 16);
      v18 = *(*v17 + 8);
      v19 = 1;
    }

    while (*(v18 + 32) == *(a5 + 32));
  }

  *(a2 + 22) = 1;
  if (*(a2 + 16) - *(v18 + 56) != v17[4])
  {
    AddRightEdges_cold_2();
  }

  if (a6)
  {

    WalkDirtyRegions(a1, a2);
  }
}

uint64_t FixUpperEdge(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 23))
  {
    FixUpperEdge_cold_1();
  }

  result = __gl_meshDelete(*a1);
  if (result)
  {
    *(a1 + 23) = 0;
    *a1 = a2;
    result = 1;
    *(a2 + 48) = a1;
  }

  return result;
}

void *AddRegionBelow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x18uLL, 0x102004062D53EE8uLL);
  if (!v6 || (v7 = v6, *v6 = a3, v8 = __gl_dictListInsertBefore(*(a1 + 120), *(a2 + 8), v6), (v7[1] = v8) == 0))
  {
    longjmp((a1 + 3464), 1);
  }

  *(v7 + 23) = 0;
  *(v7 + 21) = 0;
  *(a3 + 48) = v7;
  return v7;
}

BOOL IsWindingInside(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 112);
  if (v2 <= 100131)
  {
    if (v2 == 100130)
    {
      return a2 & 1;
    }

    else
    {
      if (v2 != 100131)
      {
        goto LABEL_12;
      }

      return a2 != 0;
    }
  }

  else
  {
    switch(v2)
    {
      case 100132:
        return a2 > 0;
      case 100133:
        return a2 >> 31;
      case 100134:
        return a2 - 2 < 0xFFFFFFFD;
      default:
LABEL_12:
        IsWindingInside_cold_1();
    }
  }
}

void DeleteRegion(uint64_t a1, _BYTE *a2)
{
  v3 = *a2;
  if (a2[23] && *(v3 + 56))
  {
    DeleteRegion_cold_1();
  }

  *(v3 + 48) = 0;
  __gl_dictListDelete(*(a1 + 120), *(a2 + 1));

  free(a2);
}

uint64_t CheckForIntersect(uint64_t a1, void *a2)
{
  v61[4] = *MEMORY[0x277D85DE8];
  v4 = *a2;
  v5 = **(a2[1] + 16);
  v6 = *v5;
  v7 = *(*a2 + 32);
  v8 = *(*v5 + 32);
  v9 = *(*(*a2 + 8) + 32);
  v10 = *(*(*v5 + 8) + 32);
  memset(v58, 0, sizeof(v58));
  if (*(v10 + 56) == *(v9 + 56) && *(v10 + 64) == *(v9 + 64))
  {
    CheckForIntersect_cold_9();
  }

  if (__gl_edgeSign(v9, *(a1 + 136), v7) > 0.0)
  {
    CheckForIntersect_cold_8();
  }

  if (__gl_edgeSign(v10, *(a1 + 136), v8) < 0.0)
  {
    CheckForIntersect_cold_7();
  }

  v11 = *(a1 + 136);
  if (v7 == v11 || v8 == v11)
  {
    CheckForIntersect_cold_6();
  }

  if (*(a2 + 23) || v5[23])
  {
    CheckForIntersect_cold_1();
  }

  if (v7 == v8)
  {
    return 0;
  }

  v12 = *(v7 + 64);
  if (v12 > *(v9 + 64))
  {
    v13 = *(v9 + 64);
  }

  else
  {
    v13 = *(v7 + 64);
  }

  v14 = *(v8 + 64);
  v15 = *(v10 + 64);
  if (v14 >= v15)
  {
    v15 = *(v8 + 64);
  }

  if (v13 > v15)
  {
    return 0;
  }

  v16 = *(v7 + 56);
  v17 = *(v8 + 56);
  if (v16 >= v17 && (v12 > v14 || v16 != v17))
  {
    if (__gl_edgeSign(v9, v8, v7) < 0.0)
    {
      return 0;
    }

LABEL_24:
    __gl_edgeIntersect(v9, v7, v10, v8, v58);
    v19 = *(v7 + 64);
    v20 = *(v9 + 64);
    if (v19 > v20)
    {
      v21 = *(v9 + 64);
    }

    else
    {
      v21 = *(v7 + 64);
    }

    v22 = *&v58[4];
    if (v21 > *&v58[4])
    {
      CheckForIntersect_cold_5();
    }

    v23 = *(v8 + 64);
    v24 = *(v10 + 64);
    if (v23 >= v24)
    {
      v24 = *(v8 + 64);
    }

    if (*&v58[4] > v24)
    {
      CheckForIntersect_cold_4();
    }

    v25 = *(v10 + 56);
    v26 = *(v9 + 56);
    if (v25 > v26)
    {
      v27 = *(v9 + 56);
    }

    else
    {
      v27 = *(v10 + 56);
    }

    v28 = *(&v58[3] + 1);
    if (v27 > *(&v58[3] + 1))
    {
      CheckForIntersect_cold_3();
    }

    v29 = *(v8 + 56);
    v30 = *(v7 + 56);
    if (v29 < v30)
    {
      v31 = *(v7 + 56);
    }

    else
    {
      v31 = *(v8 + 56);
    }

    if (*(&v58[3] + 1) > v31)
    {
      CheckForIntersect_cold_2();
    }

    v32 = *(a1 + 136);
    v33 = *(v32 + 56);
    if (*(&v58[3] + 1) >= v33)
    {
      if (*(&v58[3] + 1) != v33 || (v34 = *(v32 + 64), *&v58[4] > v34))
      {
LABEL_44:
        v35 = v30;
        v36 = v7;
        if (v30 >= v29)
        {
          v37 = v30 != v29;
          if (v19 > v23)
          {
            v37 = 1;
          }

          if (v37)
          {
            v35 = v29;
          }

          else
          {
            v35 = v30;
          }

          if (v37)
          {
            v36 = v8;
          }

          else
          {
            v36 = v7;
          }
        }

        if (v35 >= v28)
        {
          if (v35 != v28)
          {
            goto LABEL_58;
          }

          v38 = *(v36 + 64);
          if (v38 > v22)
          {
            goto LABEL_58;
          }
        }

        else
        {
          v38 = *(v36 + 64);
        }

        *(&v58[3] + 1) = v35;
        *&v58[4] = v38;
        v22 = v38;
        v28 = v35;
LABEL_58:
        if (v28 == v30 && v22 == v19 || v28 == v29 && v22 == *(v8 + 64))
        {
          CheckForRightSplice(a1, a2);
          return 0;
        }

        v41 = *(v32 + 56);
        if (v26 != v41 || v20 != *(v32 + 64))
        {
          if (__gl_edgeSign(v9, v32, v58) >= 0.0)
          {
            goto LABEL_77;
          }

          v25 = *(v10 + 56);
          v32 = *(a1 + 136);
          v41 = *(v32 + 56);
        }

        if (v25 == v41 && *(v10 + 64) == *(v32 + 64) || __gl_edgeSign(v10, v32, v58) > 0.0)
        {
          if (__gl_meshSplitEdge(*(v4 + 8)) && __gl_meshSplitEdge(*(v6 + 8)) && __gl_meshSplice(*(*(v6 + 8) + 24), v4))
          {
            v42 = *(v4 + 32);
            *(v42 + 56) = *(&v58[3] + 8);
            v43 = __gl_pqSortInsert(*(a1 + 128), v42);
            v44 = *(v4 + 32);
            *(v44 + 72) = v43;
            if (v43 != 0x7FFFFFFFFFFFFFFFLL)
            {
              v45 = *(v9 + 24);
              v61[0] = *(v7 + 24);
              v61[1] = v45;
              v46 = *(v10 + 24);
              v61[2] = *(v8 + 24);
              v61[3] = v46;
              *(v44 + 40) = 0;
              *(v44 + 48) = 0;
              *(v44 + 32) = 0;
              VertexWeights(v44, v7, v9, &v59);
              VertexWeights(v44, v8, v10, &v60);
              CallCombine(a1, v44, v61, &v59, 1);
              v39 = 0;
              v5[22] = 1;
              *(a2 + 22) = 1;
              *(**(a2[1] + 8) + 22) = 1;
              return v39;
            }

            __gl_pqSortDeletePriorityQ(*(a1 + 128));
            *(a1 + 128) = 0;
          }

          goto LABEL_106;
        }

LABEL_77:
        v47 = *(a1 + 136);
        if (v10 == v47)
        {
          if (!__gl_meshSplitEdge(*(v4 + 8)))
          {
            goto LABEL_106;
          }

          if (!__gl_meshSplice(*(v6 + 8), v4))
          {
            goto LABEL_106;
          }

          v49 = TopLeftRegion(a2);
          if (!v49)
          {
            goto LABEL_106;
          }

          v50 = v49;
          v51 = *(v49[1] + 16);
          v52 = **v51;
          FinishLeftRegions(a1, *v51, v5);
          v53 = *(*(v52 + 8) + 24);
          v39 = 1;
          v54 = a1;
          v55 = v50;
          v56 = v52;
        }

        else
        {
          if (v9 != v47)
          {
            if (__gl_edgeSign(v9, v47, v58) >= 0.0)
            {
              *(a2 + 22) = 1;
              *(**(a2[1] + 8) + 22) = 1;
              if (!__gl_meshSplitEdge(*(v4 + 8)))
              {
                goto LABEL_106;
              }

              v48 = *(a1 + 136);
              *(*(v4 + 32) + 56) = *(v48 + 56);
            }

            else
            {
              v48 = *(a1 + 136);
            }

            if (__gl_edgeSign(v10, v48, v58) > 0.0)
            {
              return 0;
            }

            v5[22] = 1;
            *(a2 + 22) = 1;
            if (__gl_meshSplitEdge(*(v6 + 8)))
            {
              v39 = 0;
              *(*(v6 + 32) + 56) = *(*(a1 + 136) + 56);
              return v39;
            }

LABEL_106:
            longjmp((a1 + 3464), 1);
          }

          if (!__gl_meshSplitEdge(*(v6 + 8)) || !__gl_meshSplice(*(v4 + 24), *(*(v6 + 8) + 24)))
          {
            goto LABEL_106;
          }

          v57 = a2;
          do
          {
            v57 = **(v57[1] + 8);
          }

          while (*(*(*v57 + 8) + 32) == *(*(*a2 + 8) + 32));
          v52 = *(*(***(v57[1] + 16) + 8) + 16);
          *a2 = *(*(v6 + 8) + 24);
          v53 = FinishLeftRegions(a1, a2, 0)[2];
          v56 = *(*(v4 + 8) + 16);
          v39 = 1;
          v54 = a1;
          v55 = v57;
        }

        AddRightEdges(v54, v55, v53, v56, v52, 1);
        return v39;
      }
    }

    else
    {
      v34 = *(v32 + 64);
    }

    *(&v58[3] + 1) = *(v32 + 56);
    *&v58[4] = v34;
    v22 = v34;
    v28 = v33;
    goto LABEL_44;
  }

  if (__gl_edgeSign(v10, v7, v8) <= 0.0)
  {
    goto LABEL_24;
  }

  return 0;
}

void WalkDirtyRegions(uint64_t a1, uint64_t *a2)
{
  v2 = a2;
  v4 = **(a2[1] + 16);
  while (1)
  {
    if (*(v4 + 22))
    {
      do
      {
        v5 = v4;
        v4 = **(v4[1] + 16);
      }

      while (*(v4 + 22));
    }

    else
    {
      v5 = v2;
    }

    if (*(v5 + 22))
    {
      v2 = v5;
      v5 = v4;
      goto LABEL_10;
    }

    v2 = **(v5[1] + 8);
    if (!v2 || !*(v2 + 22))
    {
      break;
    }

LABEL_10:
    *(v2 + 22) = 0;
    v6 = *v2;
    v7 = *v5;
    v8 = *(*(*v2 + 8) + 32);
    if (v8 == *(*(*v5 + 8) + 32))
    {
      goto LABEL_32;
    }

    v9 = **(v2[1] + 16);
    v10 = *v9;
    v11 = *(v8 + 56);
    v12 = *(*(*v9 + 8) + 32);
    v13 = *(v12 + 56);
    if (v11 == v13)
    {
      v14 = *(v8 + 64);
      v15 = *(v12 + 64);
      if (v14 == v15)
      {
        WalkDirtyRegions_cold_1();
      }

      if (v11 < v13 || v14 <= v15)
      {
LABEL_17:
        if (__gl_edgeSign(*(*(*v2 + 8) + 32), *(*(*v9 + 8) + 32), *(v6 + 32)) < 0.0)
        {
          goto LABEL_32;
        }

        *(v2 + 22) = 1;
        *(**(v2[1] + 8) + 22) = 1;
        v17 = __gl_meshSplitEdge(v6);
        if (!v17)
        {
          goto LABEL_51;
        }

        v18 = v17;
        if (!__gl_meshSplice(*(v10 + 8), v17))
        {
          goto LABEL_51;
        }

        goto LABEL_26;
      }
    }

    else if (v11 < v13)
    {
      goto LABEL_17;
    }

    if (__gl_edgeSign(*(*(*v9 + 8) + 32), v8, *(v10 + 32)) > 0.0)
    {
      goto LABEL_32;
    }

    v9[22] = 1;
    *(v2 + 22) = 1;
    v19 = __gl_meshSplitEdge(v10);
    if (!v19 || (v20 = v19, !__gl_meshSplice(*(v6 + 24), *(v10 + 8))))
    {
LABEL_51:
      longjmp((a1 + 3464), 1);
    }

    v18 = v20[1];
LABEL_26:
    *(v18[5] + 41) = *(v2 + 20);
    if (*(v5 + 23))
    {
      DeleteRegion(a1, v5);
      if (!__gl_meshDelete(v7))
      {
        goto LABEL_51;
      }

      v21 = *(v2[1] + 16);
      v4 = *v21;
      v7 = **v21;
      goto LABEL_33;
    }

    if (*(v2 + 23))
    {
      DeleteRegion(a1, v2);
      if (!__gl_meshDelete(v6))
      {
        goto LABEL_51;
      }

      v22 = *(v5[1] + 8);
      v2 = *v22;
      v6 = **v22;
    }

LABEL_32:
    v4 = v5;
LABEL_33:
    if (*(v6 + 32) != *(v7 + 32))
    {
      v23 = *(*(v6 + 8) + 32);
      v24 = *(*(v7 + 8) + 32);
      if (v23 == v24 || *(v2 + 23) || *(v4 + 23) || ((v25 = *(a1 + 136), v23 != v25) ? (v26 = v24 == v25) : (v26 = 1), !v26))
      {
        CheckForRightSplice(a1, v2);
      }

      else if (CheckForIntersect(a1, v2))
      {
        return;
      }
    }

    if (*(v6 + 32) == *(v7 + 32))
    {
      v27 = *(v6 + 8);
      v28 = *(v7 + 8);
      if (*(v27 + 32) == *(v28 + 32))
      {
        *(v7 + 56) += *(v6 + 56);
        *(v28 + 56) += *(v27 + 56);
        DeleteRegion(a1, v2);
        if (!__gl_meshDelete(v6))
        {
          goto LABEL_51;
        }

        v2 = **(v4[1] + 8);
      }
    }
  }
}

uint64_t CheckForRightSplice(uint64_t a1, _BYTE *a2)
{
  v4 = *a2;
  v5 = **(*(a2 + 1) + 16);
  v6 = *v5;
  v7 = *(*a2 + 32);
  v8 = *(v7 + 56);
  v9 = *(*v5 + 32);
  v10 = *(v9 + 56);
  if (v8 >= v10 && (v8 != v10 || *(v7 + 64) > *(v9 + 64)))
  {
    if (__gl_edgeSign(*(v4[1] + 32), *(*v5 + 32), v7) >= 0.0)
    {
      a2[22] = 1;
      *(**(*(a2 + 1) + 8) + 22) = 1;
      if (!__gl_meshSplitEdge(v4[1]) || !__gl_meshSplice(*(*(v6 + 8) + 24), v4))
      {
        goto LABEL_18;
      }

      return 1;
    }

    return 0;
  }

  if (__gl_edgeSign(*(*(v6 + 8) + 32), *(*a2 + 32), v9) > 0.0)
  {
    return 0;
  }

  v12 = v4[4];
  v13 = *(v6 + 32);
  if (*(v12 + 56) == *(v13 + 56) && *(v12 + 64) == *(v13 + 64))
  {
    if (v12 != v13)
    {
      __gl_pqSortDelete(*(a1 + 128), *(v12 + 72));
      SpliceMergeVertices(a1, *(*(v6 + 8) + 24), v4);
    }

    return 1;
  }

  if (!__gl_meshSplitEdge(*(v6 + 8)) || !__gl_meshSplice(v4, *(*(v6 + 8) + 24)))
  {
LABEL_18:
    longjmp((a1 + 3464), 1);
  }

  result = 1;
  v5[22] = 1;
  a2[22] = 1;
  return result;
}

double VertexWeights(double *a1, double *a2, double *a3, void *a4)
{
  v4 = a1 + 7;
  v5.f64[0] = a3[7];
  v6.f64[0] = a3[8];
  v5.f64[1] = a2[7];
  v7 = a1 + 8;
  v8 = vld1q_dup_f64(v4);
  v9 = vsubq_f64(v5, v8);
  v6.f64[1] = a2[8];
  v10 = vld1q_dup_f64(v7);
  v11 = vsubq_f64(v6, v10);
  v12 = vaddq_f64(vbslq_s8(vcltzq_f64(v9), vnegq_f64(v9), v9), vbslq_s8(vcltzq_f64(v11), vnegq_f64(v11), v11));
  __asm { FMOV            V2.2D, #0.5 }

  *&v12.f64[0] = vcvt_f32_f64(vdivq_f64(vmulq_f64(v12, _Q2), vdupq_lane_s64(*&vaddq_f64(vdupq_laneq_s64(v12, 1), v12), 0)));
  *a4 = *&v12.f64[0];
  v11.f64[0] = *v12.f64;
  _Q2.f64[0] = a2[4] * *v12.f64;
  v12.f64[0] = *(v12.f64 + 1);
  v18 = a1[5];
  a1[4] = a1[4] + _Q2.f64[0] + a3[4] * v12.f64[0];
  a1[5] = v18 + a2[5] * v11.f64[0] + a3[5] * v12.f64[0];
  result = a1[6] + a2[6] * v11.f64[0] + a3[6] * v12.f64[0];
  a1[6] = result;
  return result;
}

void *__gl_dictListNewDict(uint64_t a1, uint64_t a2)
{
  result = malloc_type_malloc(0x28uLL, 0xA0040D423F0E8uLL);
  if (result)
  {
    *result = 0;
    result[1] = result;
    result[2] = result;
    result[3] = a1;
    result[4] = a2;
  }

  return result;
}

void __gl_dictListDeleteDict(void *a1)
{
  v2 = a1[1];
  if (v2 != a1)
  {
    do
    {
      v3 = v2[1];
      free(v2);
      v2 = v3;
    }

    while (v3 != a1);
  }

  free(a1);
}

void *__gl_dictListInsertBefore(uint64_t a1, void *a2, uint64_t a3)
{
  do
  {
    a2 = a2[2];
  }

  while (*a2 && !(*(a1 + 32))(*(a1 + 24), *a2, a3));
  result = malloc_type_malloc(0x18uLL, 0xA00409BE6959DuLL);
  if (result)
  {
    v7 = a2[1];
    *result = a3;
    result[1] = v7;
    *(v7 + 16) = result;
    result[2] = a2;
    a2[1] = result;
  }

  return result;
}

void __gl_dictListDelete(int a1, void *a2)
{
  v3 = a2[1];
  v2 = a2[2];
  *(v3 + 16) = v2;
  *(v2 + 8) = v3;
  free(a2);
}

void *__gl_dictListSearch(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  do
  {
    v4 = v4[1];
  }

  while (*v4 && !(*(a1 + 32))(*(a1 + 24), a2));
  return v4;
}

void *__gl_meshMakeEdge(uint64_t a1)
{
  v2 = malloc_type_malloc(0x50uLL, 0x10A004024993A61uLL);
  v3 = malloc_type_malloc(0x50uLL, 0x10A004024993A61uLL);
  v4 = malloc_type_malloc(0x30uLL, 0x10A0040FE2E6FF0uLL);
  v5 = v4;
  if (!v2 || !v3 || !v4)
  {
    if (v2)
    {
      free(v2);
    }

    if (v3)
    {
      free(v3);
    }

    if (!v5)
    {
      return 0;
    }

    goto LABEL_19;
  }

  result = MakeEdge(a1 + 128);
  if (!result)
  {
    free(v2);
    free(v3);
LABEL_19:
    free(v5);
    return 0;
  }

  v7 = *(a1 + 8);
  *v7 = v2;
  v2[1] = v7;
  v2[2] = result;
  v2[3] = 0;
  v8 = result;
  do
  {
    v8[4] = v2;
    v8 = v8[2];
  }

  while (v8 != result);
  v9 = result[1];
  *v2 = v3;
  *v3 = a1;
  v3[1] = v2;
  *(a1 + 8) = v3;
  v3[2] = v9;
  v3[3] = 0;
  v10 = v9;
  do
  {
    *(v10 + 32) = v3;
    v10 = *(v10 + 16);
  }

  while (v10 != v9);
  v11 = *(a1 + 88);
  *v11 = v5;
  *v5 = a1 + 80;
  v5[1] = v11;
  *(a1 + 88) = v5;
  v5[2] = result;
  v5[3] = 0;
  v5[4] = 0;
  *(v5 + 40) = 0;
  *(v5 + 41) = *(a1 + 121);
  v12 = result;
  do
  {
    v12[5] = v5;
    v12 = v12[3];
  }

  while (v12 != result);
  return result;
}

void *MakeEdge(unint64_t a1)
{
  result = malloc_type_malloc(0x80uLL, 0x1020040E084476EuLL);
  if (result)
  {
    v3 = *(a1 + 8);
    if (v3 >= a1)
    {
      v3 = a1;
    }

    v4 = *(v3 + 8);
    v5 = *v4;
    result[8] = *v4;
    **(v5 + 8) = result;
    *result = v3;
    *v4 = (result + 8);
    result[1] = result + 8;
    result[2] = result;
    result[3] = result + 8;
    result[4] = 0;
    result[5] = 0;
    result[6] = 0;
    *(result + 14) = 0;
    result[9] = result;
    result[10] = result + 8;
    result[11] = result;
    result[12] = 0;
    result[13] = 0;
    result[14] = 0;
    *(result + 30) = 0;
  }

  return result;
}

uint64_t __gl_meshSplice(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = a2[4];
  v5 = a1[4];
  if (v4 != v5)
  {
    v6 = v4[2];
    v7 = v6;
    do
    {
      *(v7 + 32) = v5;
      v7 = *(v7 + 16);
    }

    while (v7 != v6);
    v9 = *v4;
    v8 = v4[1];
    *(v9 + 8) = v8;
    *v8 = v9;
    free(v4);
  }

  v10 = a2[5];
  v11 = a1[5];
  if (v10 != v11)
  {
    v12 = v10[2];
    v13 = v12;
    do
    {
      *(v13 + 40) = v11;
      v13 = *(v13 + 24);
    }

    while (v13 != v12);
    v15 = *v10;
    v14 = v10[1];
    *(v15 + 8) = v14;
    *v14 = v15;
    free(v10);
  }

  v16 = a2[2];
  v17 = a1[2];
  *(*(v16 + 8) + 24) = a1;
  *(*(v17 + 8) + 24) = a2;
  a2[2] = v17;
  a1[2] = v16;
  if (v4 == v5)
  {
    result = malloc_type_malloc(0x50uLL, 0x10A004024993A61uLL);
    if (!result)
    {
      return result;
    }

    v19 = a1[4];
    v20 = *(v19 + 8);
    *v20 = result;
    *result = v19;
    *(result + 8) = v20;
    *(v19 + 8) = result;
    *(result + 16) = a2;
    *(result + 24) = 0;
    v21 = a2;
    do
    {
      v21[4] = result;
      v21 = v21[2];
    }

    while (v21 != a2);
    *(a1[4] + 16) = a1;
  }

  if (v10 == v11)
  {
    result = malloc_type_malloc(0x30uLL, 0x10A0040FE2E6FF0uLL);
    if (!result)
    {
      return result;
    }

    v22 = a1[5];
    v23 = *(v22 + 8);
    *v23 = result;
    *result = v22;
    *(result + 8) = v23;
    *(v22 + 8) = result;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 16) = a2;
    *(result + 40) = 0;
    *(result + 41) = *(v22 + 41);
    v24 = a2;
    do
    {
      v24[5] = result;
      v24 = v24[3];
    }

    while (v24 != a2);
    *(a1[5] + 16) = a1;
  }

  return 1;
}

uint64_t __gl_meshDelete(void *a1)
{
  v2 = a1[1];
  v3 = a1[5];
  v4 = v2[5];
  if (v3 != v4)
  {
    v5 = v3[2];
    v6 = v5;
    do
    {
      *(v6 + 40) = v4;
      v6 = *(v6 + 24);
    }

    while (v6 != v5);
    v8 = *v3;
    v7 = v3[1];
    *(v8 + 8) = v7;
    *v7 = v8;
    free(v3);
  }

  v9 = a1[2];
  if (v9 == a1)
  {
    v17 = a1[4];
    v18 = v17[2];
    v19 = v18;
    do
    {
      *(v19 + 32) = 0;
      v19 = *(v19 + 16);
    }

    while (v19 != v18);
    v21 = *v17;
    v20 = v17[1];
    *(v21 + 8) = v20;
    *v20 = v21;
    free(v17);
  }

  else
  {
    v10 = a1[1];
    v11 = *(v10 + 24);
    *(*(v10 + 40) + 16) = v11;
    *(a1[4] + 16) = v9;
    v12 = *(v11 + 16);
    *(v9[1] + 24) = v11;
    *(*(v12 + 8) + 24) = a1;
    a1[2] = v12;
    *(v11 + 16) = v9;
    if (v3 == v4)
    {
      result = malloc_type_malloc(0x30uLL, 0x10A0040FE2E6FF0uLL);
      if (!result)
      {
        return result;
      }

      v14 = a1[5];
      v15 = *(v14 + 8);
      *v15 = result;
      *result = v14;
      *(result + 8) = v15;
      *(v14 + 8) = result;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = a1;
      *(result + 40) = 0;
      *(result + 41) = *(v14 + 41);
      v16 = a1;
      do
      {
        v16[5] = result;
        v16 = v16[3];
      }

      while (v16 != a1);
    }
  }

  v22 = v2[2];
  if (v22 == v2)
  {
    v25 = v2[4];
    v26 = v25[2];
    v27 = v26;
    do
    {
      *(v27 + 32) = 0;
      v27 = *(v27 + 16);
    }

    while (v27 != v26);
    v29 = *v25;
    v28 = v25[1];
    *(v29 + 8) = v28;
    *v28 = v29;
    free(v25);
    v30 = v2[5];
    v31 = v30[2];
    v32 = v31;
    do
    {
      *(v32 + 40) = 0;
      v32 = *(v32 + 24);
    }

    while (v32 != v31);
    v34 = *v30;
    v33 = v30[1];
    *(v34 + 8) = v33;
    *v33 = v34;
    free(v30);
  }

  else
  {
    v23 = *(v2[1] + 24);
    *(a1[5] + 16) = v23;
    *(v2[4] + 16) = v22;
    v24 = *(v23 + 16);
    *(v22[1] + 24) = v23;
    *(*(v24 + 8) + 24) = v2;
    v2[2] = v24;
    *(v23 + 16) = v22;
  }

  if (a1[1] >= a1)
  {
    v35 = a1;
  }

  else
  {
    v35 = a1[1];
  }

  v36 = *v35;
  v37 = *v35[1];
  **(*v35 + 8) = v37;
  **(v37 + 8) = v36;
  free(v35);
  return 1;
}

void *__gl_meshAddEdgeVertex(void *a1)
{
  Edge = MakeEdge(a1);
  v3 = Edge;
  if (Edge)
  {
    v4 = a1[3];
    v6 = Edge[1];
    v5 = Edge[2];
    v7 = *(v4 + 16);
    *(*(v5 + 8) + 24) = v4;
    *(*(v7 + 8) + 24) = Edge;
    Edge[2] = v7;
    *(v4 + 16) = v5;
    Edge[4] = *(a1[1] + 32);
    v8 = malloc_type_malloc(0x50uLL, 0x10A004024993A61uLL);
    if (v8)
    {
      v9 = v3[4];
      v10 = *(v9 + 8);
      *v10 = v8;
      *v8 = v9;
      v8[1] = v10;
      *(v9 + 8) = v8;
      v8[2] = v6;
      v8[3] = 0;
      v11 = v6;
      do
      {
        *(v11 + 32) = v8;
        v11 = *(v11 + 16);
      }

      while (v11 != v6);
      v12 = a1[5];
      *(v6 + 40) = v12;
      v3[5] = v12;
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void *__gl_meshSplitEdge(uint64_t a1)
{
  result = __gl_meshAddEdgeVertex(a1);
  if (result)
  {
    result = result[1];
    v3 = *(a1 + 8);
    v4 = *(v3 + 16);
    v5 = *(*(v3 + 8) + 24);
    v6 = *(v5 + 16);
    *(*(v4 + 8) + 24) = v5;
    *(*(v6 + 8) + 24) = v3;
    *(v3 + 16) = v6;
    *(v5 + 16) = v4;
    v7 = *(v3 + 16);
    *(*(v7 + 8) + 24) = result;
    v9 = result[1];
    v8 = result[2];
    *(*(v8 + 8) + 24) = v3;
    *(v3 + 16) = v8;
    result[2] = v7;
    *(v3 + 32) = result[4];
    *(*(v9 + 32) + 16) = v9;
    *(v9 + 40) = *(v3 + 40);
    *(result + 14) = *(a1 + 56);
    *(v9 + 56) = *(v3 + 56);
  }

  return result;
}

void *__gl_meshConnect(void *a1, void *a2)
{
  Edge = MakeEdge(a1);
  v5 = Edge;
  if (Edge)
  {
    v6 = Edge[1];
    v7 = a2[5];
    v8 = a1[5];
    if (v7 == v8)
    {
      v13 = a1[5];
    }

    else
    {
      v9 = v7[2];
      v10 = v9;
      do
      {
        *(v10 + 40) = v8;
        v10 = *(v10 + 24);
      }

      while (v10 != v9);
      v12 = *v7;
      v11 = v7[1];
      *(v12 + 8) = v11;
      *v11 = v12;
      free(v7);
      v13 = a1[5];
    }

    v14 = a1[3];
    v15 = v5[2];
    v16 = *(v14 + 16);
    *(*(v15 + 8) + 24) = v14;
    *(*(v16 + 8) + 24) = v5;
    v5[2] = v16;
    *(v14 + 16) = v15;
    v17 = v6[2];
    v18 = a2[2];
    *(*(v17 + 8) + 24) = a2;
    *(*(v18 + 8) + 24) = v6;
    v6[2] = v18;
    a2[2] = v17;
    v5[4] = *(a1[1] + 32);
    v6[4] = a2[4];
    v6[5] = v13;
    v5[5] = v13;
    *(a1[5] + 16) = v6;
    if (v7 == v8)
    {
      v19 = malloc_type_malloc(0x30uLL, 0x10A0040FE2E6FF0uLL);
      if (v19)
      {
        v20 = a1[5];
        v21 = *(v20 + 8);
        *v21 = v19;
        *v19 = v20;
        v19[1] = v21;
        *(v20 + 8) = v19;
        v19[3] = 0;
        v19[4] = 0;
        v19[2] = v5;
        *(v19 + 40) = 0;
        *(v19 + 41) = *(v20 + 41);
        v22 = v5;
        do
        {
          v22[5] = v19;
          v22 = v22[3];
        }

        while (v22 != v5);
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

void __gl_meshZapFace(uint64_t *a1)
{
  v2 = a1[2];
  v3 = v2[3];
  do
  {
    v4 = v3[3];
    v3[5] = 0;
    v5 = v3[1];
    if (!v5[5])
    {
      v6 = v3[2];
      v7 = v3[4];
      if (v6 == v3)
      {
        v10 = v7[2];
        v11 = v10;
        do
        {
          *(v11 + 32) = 0;
          v11 = *(v11 + 16);
        }

        while (v11 != v10);
        v13 = *v7;
        v12 = v7[1];
        *(v13 + 8) = v12;
        *v12 = v13;
        free(v7);
        v5 = v3[1];
      }

      else
      {
        v7[2] = v6;
        v8 = v5[3];
        v9 = *(v8 + 16);
        *(v6[1] + 24) = v8;
        *(*(v9 + 8) + 24) = v3;
        v3[2] = v9;
        *(v8 + 16) = v6;
      }

      v14 = v5[2];
      v15 = v5[4];
      if (v14 == v5)
      {
        v18 = v15[2];
        v19 = v18;
        do
        {
          *(v19 + 32) = 0;
          v19 = *(v19 + 16);
        }

        while (v19 != v18);
        v21 = *v15;
        v20 = v15[1];
        *(v21 + 8) = v20;
        *v20 = v21;
        free(v15);
        v5 = v3[1];
      }

      else
      {
        v15[2] = v14;
        v16 = *(v5[1] + 24);
        v17 = *(v16 + 16);
        *(v14[1] + 24) = v16;
        *(*(v17 + 8) + 24) = v5;
        v5[2] = v17;
        *(v16 + 16) = v14;
      }

      if (v5 >= v3)
      {
        v22 = v3;
      }

      else
      {
        v22 = v5;
      }

      v23 = *v22;
      v24 = *v22[1];
      **(*v22 + 8) = v24;
      **(v24 + 8) = v23;
      free(v22);
    }

    v25 = v3 == v2;
    v3 = v4;
  }

  while (!v25);
  v27 = *a1;
  v26 = a1[1];
  *(v27 + 8) = v26;
  *v26 = v27;

  free(a1);
}

double __gl_meshNewMesh()
{
  v0 = malloc_type_malloc(0x100uLL, 0x10A0040185A6F1AuLL);
  if (v0)
  {
    *v0 = v0;
    *(v0 + 1) = v0;
    *(v0 + 2) = 0;
    *(v0 + 3) = 0;
    *(v0 + 10) = v0 + 80;
    *(v0 + 11) = v0 + 80;
    *(v0 + 13) = 0;
    *(v0 + 14) = 0;
    *(v0 + 12) = 0;
    *(v0 + 60) = 0;
    *(v0 + 16) = v0 + 128;
    *(v0 + 17) = v0 + 192;
    result = 0.0;
    *(v0 + 9) = 0u;
    *(v0 + 10) = 0u;
    *(v0 + 172) = 0u;
    *(v0 + 24) = v0 + 192;
    *(v0 + 25) = v0 + 128;
    *(v0 + 236) = 0u;
    *(v0 + 13) = 0u;
    *(v0 + 14) = 0u;
  }

  return result;
}

void __gl_meshDeleteMesh(void **a1)
{
  v3 = (a1 + 10);
  v2 = a1[10];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2;
      free(v2);
      v2 = v4;
    }

    while (v4 != v3);
  }

  v5 = *a1;
  if (*a1 != a1)
  {
    do
    {
      v6 = *v5;
      free(v5);
      v5 = v6;
    }

    while (v6 != a1);
  }

  v7 = a1[16];
  if (v7 != a1 + 16)
  {
    do
    {
      v8 = *v7;
      free(v7);
      v7 = v8;
    }

    while (v8 != a1 + 16);
  }

  free(a1);
}

void *__gl_meshCheckMesh(void *result)
{
  v1 = result[10];
  v2 = result + 10;
  while (v1 != result + 10)
  {
    v3 = v2;
    v2 = v1;
    if (v1[1] != v3)
    {
      __gl_meshCheckMesh_cold_1();
    }

    v4 = v1[2];
    do
    {
      v5 = v4[1];
      if (v5 == v4)
      {
        __gl_meshCheckMesh_cold_6();
      }

      if (*(v5 + 8) != v4)
      {
        __gl_meshCheckMesh_cold_2();
      }

      v6 = v4[3];
      if (*(*(v6 + 16) + 8) != v4)
      {
        __gl_meshCheckMesh_cold_3();
      }

      if (*(*(v4[2] + 8) + 24) != v4)
      {
        __gl_meshCheckMesh_cold_4();
      }

      if (v4[5] != v1)
      {
        __gl_meshCheckMesh_cold_5();
      }

      v4 = v4[3];
    }

    while (v6 != v1[2]);
    v1 = *v1;
  }

  if (v1[1] != v2 || v1[2] || v1[3])
  {
    __gl_meshCheckMesh_cold_7();
  }

  v7 = *result;
  v8 = result;
  while (v7 != result)
  {
    v9 = v8;
    v8 = v7;
    if (v7[1] != v9)
    {
      __gl_meshCheckMesh_cold_8();
    }

    v10 = v7[2];
    v11 = *(v10 + 8);
    v12 = v8[2];
    do
    {
      if (v11 == v12)
      {
        __gl_meshCheckMesh_cold_13();
      }

      if (*(v11 + 8) != v12)
      {
        __gl_meshCheckMesh_cold_9();
      }

      if (*(*(v12[3] + 16) + 8) != v12)
      {
        __gl_meshCheckMesh_cold_10();
      }

      v13 = v12[2];
      v11 = *(v13 + 8);
      if (*(v11 + 24) != v12)
      {
        __gl_meshCheckMesh_cold_11();
      }

      if (v12[4] != v8)
      {
        __gl_meshCheckMesh_cold_12();
      }

      v12 = v12[2];
    }

    while (v13 != v10);
    v7 = *v8;
  }

  if (v7[1] != v8 || v7[2] || v7[3])
  {
    __gl_meshCheckMesh_cold_14();
  }

  v14 = result + 16;
  v15 = result + 16;
  while (1)
  {
    v17 = v15;
    v15 = *v15;
    v16 = v17[1];
    v18 = v15[1];
    v19 = *v18;
    if (v15 == v14)
    {
      break;
    }

    if (v19 != v16)
    {
      __gl_meshCheckMesh_cold_15();
    }

    if (v18 == v15)
    {
      __gl_meshCheckMesh_cold_21();
    }

    if (v18[1] != v15)
    {
      __gl_meshCheckMesh_cold_16();
    }

    if (!v15[4])
    {
      __gl_meshCheckMesh_cold_20();
    }

    if (!v18[4])
    {
      __gl_meshCheckMesh_cold_19();
    }

    if (*(*(v15[3] + 16) + 8) != v15)
    {
      __gl_meshCheckMesh_cold_17();
    }

    if (*(*(v15[2] + 8) + 24) != v15)
    {
      __gl_meshCheckMesh_cold_18();
    }
  }

  v20 = v19 == v16 && v18 == result + 24;
  if (!v20 || v18[1] != v14 || v15[4] || v18[4] || v15[5] || v18[5])
  {
    __gl_meshCheckMesh_cold_22();
  }

  return result;
}

void **__gl_pqHeapNewPriorityQ(void *a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0x10A0040AA9CE83FuLL);
  v3 = v2;
  if (v2)
  {
    *(v2 + 1) = xmmword_2608472C0;
    v4 = malloc_type_malloc(0x108uLL, 0x100004000313F17uLL);
    *v3 = v4;
    if (v4)
    {
      v5 = malloc_type_malloc(0x210uLL, 0x1080040FC6463CFuLL);
      v3[1] = v5;
      if (v5)
      {
        *(v3 + 10) = 0;
        v3[4] = 0;
        v3[6] = a1;
        *(*v3 + 1) = 1;
        *(v5 + 2) = 0;
        return v3;
      }

      free(*v3);
    }

    free(v3);
    return 0;
  }

  return v3;
}

void __gl_pqHeapDeletePriorityQ(void **a1)
{
  free(a1[1]);
  free(*a1);

  free(a1);
}

double *FloatDown(double *result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 1);
  v4 = *(*result + 8 * a2);
  v5 = *(result + 2);
  v6 = *(result + 3);
  v7 = (v3 + 16 * v4);
  while (1)
  {
    v8 = 2 * a2;
    if (2 * a2 < v5)
    {
      v9 = *(v3 + 16 * *(*&v2 + 8 * (v8 | 1)));
      v10 = *(v9 + 56);
      v11 = *(v3 + 16 * *(*&v2 + 16 * a2));
      v12 = *(v11 + 56);
      if (v10 < v12 || v10 == v12 && *(v9 + 64) <= *(v11 + 64))
      {
        v8 |= 1uLL;
      }
    }

    if (v8 > v6)
    {
      FloatDown_cold_1();
    }

    if (v8 > v5)
    {
      break;
    }

    v13 = *(*&v2 + 8 * v8);
    v14 = *(*v7 + 56);
    v15 = (v3 + 16 * v13);
    result = *v15;
    v16 = (*v15)[7];
    if (v14 < v16 || v14 == v16 && *(*v7 + 64) <= result[8])
    {
      break;
    }

    *(*&v2 + 8 * a2) = v13;
    v15[1] = a2;
    a2 = v8;
  }

  *(*&v2 + 8 * a2) = v4;
  v7[1] = a2;
  return result;
}

uint64_t __gl_pqHeapInsert(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  v5 = *(a1 + 16) + 1;
  *(a1 + 16) = v5;
  if (v4 >= 2 * v5)
  {
    goto LABEL_4;
  }

  v6 = *a1;
  v7 = *(a1 + 8);
  *(a1 + 24) = 2 * v4;
  v8 = malloc_type_realloc(v6, (16 * v4) | 8, 0x100004000313F17uLL);
  *a1 = v8;
  if (!v8)
  {
    *a1 = v6;
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = malloc_type_realloc(*(a1 + 8), 16 * *(a1 + 24) + 16, 0x1080040FC6463CFuLL);
  *(a1 + 8) = v9;
  if (!v9)
  {
    *(a1 + 8) = v7;
    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_4:
  v10 = *(a1 + 32);
  v11 = *(a1 + 8);
  v12 = v5;
  if (v10)
  {
    *(a1 + 32) = *(v11 + 16 * v10 + 8);
    v12 = v10;
  }

  *(*a1 + 8 * v5) = v12;
  v13 = (v11 + 16 * v12);
  *v13 = a2;
  v13[1] = v5;
  if (*(a1 + 40))
  {
    FloatUp(a1, v5);
  }

  if (v12 == 0x7FFFFFFFFFFFFFFFLL)
  {
    __gl_pqHeapInsert_cold_1();
  }

  return v12;
}

uint64_t *FloatUp(uint64_t *result, uint64_t a2)
{
  v2 = *result;
  v3 = result[1];
  v4 = *(*result + 8 * a2);
  if (a2 >= 2)
  {
    v6 = *(v3 + 16 * v4);
    v7 = *(v6 + 56);
    while (1)
    {
      v5 = a2 >> 1;
      v8 = *(v2 + 8 * (a2 >> 1));
      v9 = (v3 + 16 * v8);
      v10 = *(*v9 + 56);
      if (v10 < v7 || v10 == v7 && *(*v9 + 64) <= *(v6 + 64))
      {
        break;
      }

      *(v2 + 8 * a2) = v8;
      v9[1] = a2;
      a2 >>= 1;
      if (v5 < 2)
      {
        goto LABEL_3;
      }
    }
  }

  v5 = a2;
LABEL_3:
  *(v2 + 8 * v5) = v4;
  *(v3 + 16 * v4 + 8) = v5;
  return result;
}

uint64_t __gl_pqHeapExtractMin(double *a1)
{
  v1 = *a1;
  v2 = *(a1 + 1);
  v3 = *(*a1 + 8);
  v4 = (v2 + 16 * v3);
  v5 = *v4;
  v6 = *(a1 + 2);
  if (v6 >= 1)
  {
    v7 = *(v1 + 8 * v6);
    *(v1 + 8) = v7;
    *(v2 + 16 * v7 + 8) = 1;
    v8 = *(a1 + 4);
    *v4 = 0;
    v4[1] = v8;
    *(a1 + 4) = v3;
    *(a1 + 2) = v6 - 1;
    if (v6 != 1)
    {
      FloatDown(a1, 1);
    }
  }

  return v5;
}

void *__gl_pqHeapDelete(void *result, uint64_t a2)
{
  if (a2 < 1 || (v3 = result, result[3] < a2) || (v4 = result[1], v5 = (v4 + 16 * a2), !*v5))
  {
    __gl_pqHeapDelete_cold_1();
  }

  v6 = *result;
  v7 = v5[1];
  v8 = result[2];
  v9 = *(*result + 8 * v8);
  *(*result + 8 * v7) = v9;
  *(v4 + 16 * v9 + 8) = v7;
  result[2] = v8 - 1;
  if (v7 < v8)
  {
    if (v7 < 2 || (v10 = *(v4 + 16 * *(*&v6 + ((4 * v7) & 0xFFFFFFFFFFFFFFF8))), v11 = *(v10 + 56), v12 = *(v4 + 16 * v9), v13 = *(v12 + 56), v11 < v13) || v11 == v13 && *(v10 + 64) <= *(v12 + 64))
    {
      result = FloatDown(result, v7);
    }

    else
    {
      result = FloatUp(result, v7);
    }
  }

  v14 = v3[4];
  *v5 = 0;
  v5[1] = v14;
  v3[4] = a2;
  return result;
}

char *__gl_pqSortNewPriorityQ(void *a1)
{
  v2 = malloc_type_malloc(0x38uLL, 0x10A004025C1D612uLL);
  if (v2)
  {
    v3 = __gl_pqHeapNewPriorityQ(a1);
    *v2 = v3;
    if (v3)
    {
      v4 = malloc_type_malloc(0x100uLL, 0x80040B8603338uLL);
      *(v2 + 1) = v4;
      if (v4)
      {
        *(v2 + 24) = xmmword_2608472C0;
        *(v2 + 10) = 0;
        *(v2 + 6) = a1;
        return v2;
      }

      __gl_pqHeapDeletePriorityQ(*v2);
    }

    free(v2);
    return 0;
  }

  return v2;
}

void __gl_pqSortDeletePriorityQ(void ***a1)
{
  if (!a1)
  {
    __gl_pqSortDeletePriorityQ_cold_1();
  }

  v2 = *a1;
  if (v2)
  {
    __gl_pqHeapDeletePriorityQ(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    free(v3);
  }

  v4 = a1[1];
  if (v4)
  {
    free(v4);
  }

  free(a1);
}

uint64_t __gl_pqSortInit(uint64_t *a1)
{
  v53[98] = *MEMORY[0x277D85DE8];
  v2 = malloc_type_malloc(8 * a1[3] + 8, 0x80040B8603338uLL);
  a1[2] = v2;
  if (!v2)
  {
    return 0;
  }

  v3 = a1[3];
  v4 = &v2[v3 - 1];
  if (v2 <= v4)
  {
    v5 = a1[1];
    v6 = v2;
    do
    {
      *v6++ = v5;
      v5 += 8;
    }

    while (v6 <= v4);
  }

  v7 = v53;
  v52[0] = v2;
  v52[1] = &v2[v3 - 1];
  v8 = 2016473283;
  v9 = v52;
  do
  {
    v10 = *v9;
    v11 = *(v7 - 1);
    v7 = v9;
    if (v11 > (*v9 + 10))
    {
      do
      {
        v8 = 1539415821 * v8 + 1;
        v12 = v8 % (((v11 - v10) >> 3) + 1);
        v13 = v10[v12];
        v10[v12] = *v10;
        *v10 = v13;
        v14 = (v10 - 1);
        v15 = (v11 + 8);
        do
        {
          v16 = *v13;
          v17 = *(*v13 + 56);
          v18 = v14 + 8;
          v19 = *(v14 + 1);
          v20 = *v19;
          v21 = *(*v19 + 56);
          if (v21 >= v17)
          {
            v14 += 8;
            while (1)
            {
              v18 = v14;
              if (v21 == v17 && *(v20 + 64) <= *(v16 + 64))
              {
                break;
              }

              v14 += 8;
              v19 = *(v18 + 1);
              v20 = *v19;
              v21 = *(*v19 + 56);
              v22 = v18;
              if (v21 < v17)
              {
                goto LABEL_17;
              }
            }

            v22 = v14 - 8;
          }

          else
          {
            v22 = v14;
          }

          v14 = v18;
LABEL_17:
          v24 = v15 - 1;
          v23 = *(v15 - 1);
          v25 = *v23;
          v26 = *(*v23 + 56);
          if (v17 >= v26)
          {
            --v15;
            while (1)
            {
              v24 = v15;
              if (v17 == v26 && *(v16 + 64) <= *(v25 + 64))
              {
                break;
              }

              --v15;
              v23 = *(v24 - 1);
              v25 = *v23;
              v26 = *(*v23 + 56);
              v27 = v24;
              if (v17 < v26)
              {
                goto LABEL_26;
              }
            }

            v27 = v15 + 1;
          }

          else
          {
            v27 = v15;
          }

          v15 = v24;
LABEL_26:
          *v14 = v23;
          *v15 = v19;
        }

        while (v14 < v15);
        v28 = *v14;
        *v14 = v19;
        *v15 = v28;
        if (v14 - v10 >= (v11 - v15))
        {
          v29 = v10;
        }

        else
        {
          v29 = v27;
        }

        if (v14 - v10 >= (v11 - v15))
        {
          v30 = v22;
        }

        else
        {
          v30 = v11;
        }

        if (v14 - v10 >= (v11 - v15))
        {
          v10 = v27;
        }

        else
        {
          v11 = v22;
        }

        *v7 = v29;
        v7[1] = v30;
        v7 += 2;
      }

      while (v11 > (v10 + 10));
    }

    for (i = v10 + 1; i <= v11; ++i)
    {
      v32 = *i;
      v33 = i;
      if (i > v10)
      {
        v34 = i;
        v33 = i;
        while (1)
        {
          v35 = *(*v32 + 56);
          v37 = *--v33;
          v36 = v37;
          v38 = *v37;
          v39 = *(*v37 + 56);
          if (v35 < v39 || v35 == v39 && *(*v32 + 64) <= *(v38 + 64))
          {
            break;
          }

          *v34 = v36;
          v34 = v33;
          if (v33 <= v10)
          {
            goto LABEL_47;
          }
        }

        v33 = v34;
      }

LABEL_47:
      *v33 = v32;
    }

    v9 = (v7 - 2);
  }

  while (v7 - 2 >= v52);
  a1[4] = v3;
  v40 = 1;
  *(a1 + 10) = 1;
  v41 = *a1;
  v42 = *(*a1 + 16);
  if (v42 >= 1)
  {
    do
    {
      FloatDown(v41, v42);
    }

    while (v42-- > 1);
    v3 = a1[3];
  }

  *(v41 + 40) = 1;
  v44 = a1[2];
  v45 = v44 + 8 * v3 - 8;
  if (v44 < v45)
  {
    v46 = **v44;
    v47 = *(v46 + 56);
    do
    {
      v48 = v47;
      v49 = *(v44 + 8);
      v44 += 8;
      v50 = *v49;
      v47 = *(*v49 + 56);
      if (v47 >= v48 && (v47 != v48 || *(v50 + 64) > *(v46 + 64)))
      {
        __gl_pqSortInit_cold_1();
      }

      v46 = v50;
    }

    while (v44 < v45);
    return 1;
  }

  return v40;
}

uint64_t __gl_pqSortInsert(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 40))
  {
    v7 = *(a1 + 24);
    v6 = *(a1 + 32);
    *(a1 + 24) = v7 + 1;
    v8 = *(a1 + 8);
    if (v7 + 1 >= v6)
    {
      *(a1 + 32) = 2 * v6;
      v9 = malloc_type_realloc(v8, 16 * v6, 0x80040B8603338uLL);
      *(a1 + 8) = v9;
      if (!v9)
      {
        *(a1 + 8) = v8;
        return 0x7FFFFFFFFFFFFFFFLL;
      }
    }

    else
    {
      v9 = *(a1 + 8);
    }

    v9[v7] = a2;
    return ~v7;
  }

  v4 = *a1;

  return __gl_pqHeapInsert(v4, a2);
}

uint64_t __gl_pqSortExtractMin(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (!v1)
  {
    return __gl_pqHeapExtractMin(*a1);
  }

  v2 = *(a1 + 16);
  v3 = **(v2 + 8 * v1 - 8);
  if (*(*a1 + 16))
  {
    v4 = *(*(*a1 + 8) + 16 * *(**a1 + 8));
    v5 = *(v4 + 56);
    v6 = *(v3 + 56);
    if (v5 < v6 || v5 == v6 && *(v4 + 64) <= *(v3 + 64))
    {
      return __gl_pqHeapExtractMin(*a1);
    }
  }

  v7 = v2 - 16;
  if (v1 >= 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = *(a1 + 24);
  }

  v9 = v8 - 1;
  while (v1 >= 2)
  {
    v10 = v1 - 1;
    if (**(v7 + 8 * v1--))
    {
      goto LABEL_16;
    }
  }

  v10 = v9;
LABEL_16:
  *(a1 + 24) = v10;
  return v3;
}

uint64_t __gl_pqSortMinimum(void *a1)
{
  v1 = a1[3];
  if (!v1)
  {
    return *(*(*a1 + 8) + 16 * *(**a1 + 8));
  }

  v2 = **(a1[2] + 8 * v1 - 8);
  if (!*(*a1 + 16))
  {
    return v2;
  }

  result = *(*(*a1 + 8) + 16 * *(**a1 + 8));
  v4 = *(result + 56);
  v5 = *(v2 + 56);
  if (v4 >= v5 && (v4 != v5 || *(result + 64) > *(v2 + 64)))
  {
    return v2;
  }

  return result;
}

void *__gl_pqSortDelete(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    v3 = ~a2;
    if (result[4] <= ~a2 || (v4 = result[1], !*(v4 + 8 * v3)))
    {
      __gl_pqSortDelete_cold_1();
    }

    *(v4 + 8 * v3) = 0;
    v5 = result[3];
    v7 = __OFSUB__(v5, 1);
    v6 = v5 - 1 < 0;
    v8 = v5 - 1;
    if (v6 == v7)
    {
      v9 = result[2];
      do
      {
        if (**(v9 + 8 * v8))
        {
          break;
        }

        result[3] = v8;
        v10 = v8-- + 1;
      }

      while (v10 > 1);
    }
  }

  else
  {
    v2 = *result;

    return __gl_pqHeapDelete(v2, a2);
  }

  return result;
}

double __gl_projectPolygon(uint64_t a1)
{
  v63 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 16);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v53 = v2;
  v54 = v3;
  v4 = *(a1 + 48);
  v55 = v4;
  v5 = v2 != 0.0;
  if (v3 != 0.0)
  {
    v5 = 1;
  }

  v6 = v4 != 0.0 || v5;
  v7 = *v1;
  if ((v6 & 1) == 0)
  {
    memset(v57, 0, sizeof(v57));
    memset(v56, 0, sizeof(v56));
    v62 = -2.0e150;
    v61 = vdupq_n_s64(0xDF238D352E5096AFLL);
    v60 = 2.0e150;
    v59 = vdupq_n_s64(0x5F238D352E5096AFuLL);
    if (v7 == v1)
    {
      v11 = vdupq_n_s64(0xDF338D352E5096AFLL);
      v12 = -4.0e150;
    }

    else
    {
      v8 = v7;
      do
      {
        for (i = 0; i != 3; ++i)
        {
          v10 = v8[i + 4];
          if (v10 < v59.f64[i])
          {
            v59.f64[i] = v10;
            v56[i] = v8;
          }

          if (v10 > v61.f64[i])
          {
            v61.f64[i] = v10;
            v57[i] = v8;
          }
        }

        v8 = *v8;
      }

      while (v8 != v1);
      v11 = vsubq_f64(v61, v59);
      v12 = v62 - v60;
    }

    v13 = *&vmovn_s64(vcgtq_f64(vdupq_laneq_s64(v11, 1), v11)) & 1;
    if (v12 > *(&v61 & 0xFFFFFFFFFFFFFFF7 | (8 * v13)) - *(&v59 & 0xFFFFFFFFFFFFFFF7 | (8 * v13)))
    {
      v13 = 2;
    }

    if (v59.f64[v13] >= v61.f64[v13])
    {
      v36 = &v55;
      v53 = 0.0;
      v54 = 0.0;
LABEL_43:
      *v36 = 1.0;
      v2 = v53;
      v3 = v54;
      v4 = v55;
      goto LABEL_44;
    }

    v14 = v56[v13];
    v15 = v57[v13];
    if (v14)
    {
      v16 = v15 == 0;
    }

    else
    {
      v16 = 1;
    }

    if (!v16)
    {
      v17 = v15[4];
      v18 = v15[5];
      v19 = v14[4] - v17;
      v20 = v14[5] - v18;
      v58[0] = v19;
      v58[1] = v20;
      v21 = v15[6];
      v22 = v14[6] - v21;
      if (v7 == v1)
      {
        goto LABEL_31;
      }

      v23 = 0.0;
      v24 = v7;
      do
      {
        v25 = v24[4] - v17;
        v26 = v24[5] - v18;
        v27 = v24[6] - v21;
        v28 = v20 * v27 - v22 * v26;
        v29 = v22 * v25 - v19 * v27;
        v30 = v19 * v26 - v20 * v25;
        if (v30 * v30 + v28 * v28 + v29 * v29 > v23)
        {
          v4 = v30;
          v3 = v29;
          v2 = v28;
          v23 = v30 * v30 + v28 * v28 + v29 * v29;
        }

        v24 = *v24;
      }

      while (v24 != v1);
      v53 = v2;
      v54 = v3;
      v55 = v4;
      if (v23 <= 0.0)
      {
LABEL_31:
        v31 = -v20;
        if (v20 >= 0.0)
        {
          v31 = v20;
        }

        v32 = -v19;
        if (v19 >= 0.0)
        {
          v32 = v19;
        }

        v33 = v31 > v32;
        v34 = -v22;
        if (v22 >= 0.0)
        {
          v34 = v22;
        }

        v53 = 0.0;
        v54 = 0.0;
        v55 = 0.0;
        v35 = v58[v33];
        if (v35 < 0.0)
        {
          v35 = -v35;
        }

        if (v34 > v35)
        {
          v33 = 2;
        }

        v36 = &v53 + v33;
        goto LABEL_43;
      }
    }
  }

LABEL_44:
  v37 = a1 + 56;
  if (v3 < 0.0)
  {
    v3 = -v3;
  }

  if (v2 < 0.0)
  {
    v2 = -v2;
  }

  v38 = v3 > v2;
  if (v4 < 0.0)
  {
    v4 = -v4;
  }

  v39 = *(&v53 + (v3 > v2));
  if (v39 < 0.0)
  {
    v39 = -v39;
  }

  if (v4 > v39)
  {
    v38 = 2;
  }

  *(v37 + 8 * v38) = 0;
  if (v38 == 2)
  {
    v40 = 0;
  }

  else
  {
    v40 = v38 + 1;
  }

  *(v37 + 8 * v40) = 0x3FF0000000000000;
  v41 = (v38 + 2) % 3;
  *(v37 + 8 * v41) = 0;
  v42 = a1 + 80;
  *(a1 + 80 + 8 * v38) = 0;
  v43 = *(&v53 + v38) <= 0.0;
  v44 = -0.0;
  if (*(&v53 + v38) <= 0.0)
  {
    v44 = 0.0;
  }

  *(v42 + 8 * v40) = v44;
  result = -1.0;
  if (!v43)
  {
    result = 1.0;
  }

  *(v42 + 8 * v41) = result;
  if (v7 != v1)
  {
    v46 = v7;
    do
    {
      v47 = v46[4];
      v48 = v46[5];
      v49 = v46[6];
      v46[7] = v47 * *(a1 + 56) + v48 * *(a1 + 64) + v49 * *(a1 + 72);
      result = v47 * *(a1 + 80) + v48 * *(a1 + 88) + v49 * *(a1 + 96);
      v46[8] = result;
      v46 = *v46;
    }

    while (v46 != v1);
  }

  if ((v6 & 1) == 0)
  {
    v50 = *(v1 + 10);
    if (v50 != v1 + 10)
    {
      result = 0.0;
      do
      {
        v51 = *(v50 + 2);
        if (*(v51 + 56) >= 1)
        {
          v52 = *(v50 + 2);
          do
          {
            result = result + (*(v52[4] + 56) - *(*(v52[1] + 32) + 56)) * (*(v52[4] + 64) + *(*(v52[1] + 32) + 64));
            v52 = v52[3];
          }

          while (v52 != v51);
        }

        v50 = *v50;
      }

      while (v50 != v1 + 10);
      if (result < 0.0)
      {
        while (v7 != v1)
        {
          v7[8] = -v7[8];
          v7 = *v7;
        }

        *(a1 + 80) = vnegq_f64(*(a1 + 80));
        result = -*(a1 + 96);
        *(a1 + 96) = result;
      }
    }
  }

  return result;
}

GLUtesselator *gluNewTess(void)
{
  if (!TXParagraphStyleFolder_Factory::version(0x80))
  {
    return 0;
  }

  result = malloc_type_malloc(0xE50uLL, 0x10A004023E6F836uLL);
  if (result)
  {
    *result = 0;
    *(result + 13) = 0;
    *(result + 5) = 0;
    *(result + 6) = 0;
    *(result + 28) = 100130;
    *(result + 76) = 0;
    *(result + 21) = noBegin;
    *(result + 22) = noEdgeFlag;
    *(result + 23) = noVertex;
    *(result + 24) = noEnd;
    *(result + 3) = noError;
    *(result + 4) = 0;
    *(result + 18) = noCombine;
    *(result + 25) = noMesh;
    *(result + 427) = __gl_noBeginData;
    *(result + 428) = __gl_noEdgeFlagData;
    *(result + 429) = __gl_noVertexData;
    *(result + 430) = __gl_noEndData;
    *(result + 431) = __gl_noErrorData;
    *(result + 432) = __gl_noCombineData;
    *(result + 457) = 0;
  }

  return result;
}

void gluDeleteTess(GLUtesselator *tess)
{
  if (*tess)
  {
    GotoState(tess, 0);
  }

  free(tess);
}

void GotoState(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  while (v2 != a2)
  {
    if (v2 >= a2)
    {
      if (v2 == 1)
      {
        v7 = *(a1 + 3448);
        if (v7 == __gl_noErrorData)
        {
          (*(a1 + 24))(100153);
        }

        else
        {
          (v7)(100153, *(a1 + 3656));
        }

        v8 = *(a1 + 16);
        if (v8)
        {
          __gl_meshDeleteMesh(v8);
        }

        v2 = 0;
        *a1 = 0;
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
      }

      else if (v2 == 2)
      {
        v6 = *(a1 + 3448);
        if (v6 == __gl_noErrorData)
        {
          (*(a1 + 24))(100154);
        }

        else
        {
          (v6)(100154, *(a1 + 3656));
        }

        if (*a1 != 2)
        {
          GotoState(a1, 2);
        }

        v2 = 1;
        *a1 = 1;
      }
    }

    else
    {
      v5 = *(a1 + 3448);
      if (v2)
      {
        if (v5 == __gl_noErrorData)
        {
          (*(a1 + 24))(100152);
        }

        else
        {
          (v5)(100152, *(a1 + 3656));
        }

        gluTessBeginContour(a1);
        v2 = *a1;
      }

      else
      {
        if (v5 == __gl_noErrorData)
        {
          (*(a1 + 24))(100151);
        }

        else
        {
          (v5)(100151, *(a1 + 3656));
        }

        if (*a1)
        {
          GotoState(a1, 0);
        }

        v2 = 1;
        *a1 = 1;
        *(a1 + 212) = 0;
        *(a1 + 208) = 0;
        *(a1 + 16) = 0;
        *(a1 + 3656) = 0;
      }
    }
  }
}

void gluTessProperty(GLUtesselator *tess, GLenum which, GLdouble data)
{
  switch(which)
  {
    case 0x1872Cu:
      v3 = data;
      if (data != data)
      {
LABEL_8:
        v4 = *(tess + 431);
        if (v4 == __gl_noErrorData)
        {
          (*(tess + 3))(100901);
        }

        else
        {
          (v4)(100901, *(tess + 457));
        }

        return;
      }

      if (v3 - 100130 <= 4)
      {
        *(tess + 28) = v3;
        return;
      }

LABEL_15:
      *(tess + 153) = data != 0.0;
      return;
    case 0x1872Du:
      goto LABEL_15;
    case 0x1872Eu:
      if (data >= 0.0 && data <= 1.0)
      {
        *(tess + 13) = data;
        return;
      }

      goto LABEL_8;
  }

  v5 = *(tess + 431);
  if (v5 == __gl_noErrorData)
  {
    (*(tess + 3))(100900, data);
  }

  else
  {
    (v5)(100900, *(tess + 457), data);
  }
}

void gluTessCallback(GLUtesselator *tess, GLenum which, GLvoid (*CallBackFunc)(void))
{
  switch(which)
  {
    case 0x18704u:
      if (CallBackFunc)
      {
        v3 = CallBackFunc;
      }

      else
      {
        v3 = noBegin;
      }

      *(tess + 21) = v3;
      break;
    case 0x18705u:
      if (CallBackFunc)
      {
        v12 = CallBackFunc;
      }

      else
      {
        v12 = noVertex;
      }

      *(tess + 23) = v12;
      break;
    case 0x18706u:
      if (CallBackFunc)
      {
        v9 = CallBackFunc;
      }

      else
      {
        v9 = noEnd;
      }

      *(tess + 24) = v9;
      break;
    case 0x18707u:
      if (CallBackFunc)
      {
        v10 = CallBackFunc;
      }

      else
      {
        v10 = noError;
      }

      *(tess + 3) = v10;
      break;
    case 0x18708u:
      v5 = CallBackFunc == 0;
      if (CallBackFunc)
      {
        v6 = CallBackFunc;
      }

      else
      {
        v6 = noEdgeFlag;
      }

      *(tess + 22) = v6;
      goto LABEL_52;
    case 0x18709u:
      if (CallBackFunc)
      {
        v13 = CallBackFunc;
      }

      else
      {
        v13 = noCombine;
      }

      *(tess + 18) = v13;
      break;
    case 0x1870Au:
      if (CallBackFunc)
      {
        v15 = CallBackFunc;
      }

      else
      {
        v15 = __gl_noBeginData;
      }

      *(tess + 427) = v15;
      break;
    case 0x1870Bu:
      if (CallBackFunc)
      {
        v11 = CallBackFunc;
      }

      else
      {
        v11 = __gl_noVertexData;
      }

      *(tess + 429) = v11;
      break;
    case 0x1870Cu:
      if (CallBackFunc)
      {
        v18 = CallBackFunc;
      }

      else
      {
        v18 = __gl_noEndData;
      }

      *(tess + 430) = v18;
      break;
    case 0x1870Du:
      if (CallBackFunc)
      {
        v8 = CallBackFunc;
      }

      else
      {
        v8 = __gl_noErrorData;
      }

      *(tess + 431) = v8;
      break;
    case 0x1870Eu:
      v5 = CallBackFunc == 0;
      if (CallBackFunc)
      {
        v16 = CallBackFunc;
      }

      else
      {
        v16 = __gl_noEdgeFlagData;
      }

      *(tess + 428) = v16;
LABEL_52:
      v17 = !v5;
      *(tess + 152) = v17;
      break;
    case 0x1870Fu:
      if (CallBackFunc)
      {
        v4 = CallBackFunc;
      }

      else
      {
        v4 = __gl_noCombineData;
      }

      *(tess + 432) = v4;
      break;
    case 0x18710u:
      if (CallBackFunc)
      {
        v7 = CallBackFunc;
      }

      else
      {
        v7 = noMesh;
      }

      *(tess + 25) = v7;
      break;
    default:
      v14 = *(tess + 431);
      if (v14 == __gl_noErrorData)
      {
        (*(tess + 3))(100900);
      }

      else
      {
        (v14)(100900, *(tess + 457));
      }

      break;
  }
}

void gluTessVertex(GLUtesselator *tess, GLdouble *location, GLvoid *data)
{
  v23 = *MEMORY[0x277D85DE8];
  if (*tess != 2)
  {
    GotoState(tess, 2u);
  }

  if (*(tess + 208))
  {
    EmptyCache(tess);
    if (!v8)
    {
      goto LABEL_28;
    }

    *(tess + 1) = 0;
  }

  v9 = 0;
  v10 = 0;
  v3.n128_u64[0] = 0xDF138D352E5096AFLL;
  v4.n128_u64[0] = 0x5F138D352E5096AFLL;
  do
  {
    v11 = location[v9];
    if (v11 >= -1.0e150)
    {
      v12 = location[v9];
    }

    else
    {
      v12 = -1.0e150;
    }

    if (v12 <= 1.0e150)
    {
      v13 = v11 < -1.0e150;
    }

    else
    {
      v12 = 1.0e150;
      v13 = 1;
    }

    if (v13)
    {
      v10 = 1;
    }

    *(&v21 + v9 * 8) = v12;
    ++v9;
  }

  while (v9 != 3);
  if (v10)
  {
    v14 = *(tess + 431);
    if (v14 == __gl_noErrorData)
    {
      (*(tess + 3))(100155, v3, v4);
    }

    else
    {
      (v14)(100155, *(tess + 457), v3, v4);
    }
  }

  if (*(tess + 2))
  {
    goto LABEL_37;
  }

  v15 = *(tess + 53);
  if (v15 <= 99)
  {
    v16 = tess + 32 * v15;
    *(v16 + 30) = data;
    *(v16 + 216) = v21;
    *(v16 + 29) = v22;
    *(tess + 53) = v15 + 1;
    return;
  }

  EmptyCache(tess);
  if (v17)
  {
LABEL_37:
    if (AddVertex(tess, &v21, data))
    {
      return;
    }
  }

LABEL_28:
  v18 = *(tess + 431);
  if (v18 == __gl_noErrorData)
  {
    v20 = *(tess + 3);

    v20(100902);
  }

  else
  {
    v19 = *(tess + 457);

    (v18)(100902, v19);
  }
}

void EmptyCache(uint64_t a1)
{
  __gl_meshNewMesh();
  *(a1 + 16) = v2;
  if (v2)
  {
    v3 = *(a1 + 212);
    if (v3 < 1)
    {
LABEL_6:
      *(a1 + 212) = 0;
      *(a1 + 208) = 0;
    }

    else
    {
      v4 = a1 + 32 * v3 + 216;
      v5 = (a1 + 216);
      while (AddVertex(a1, v5, v5[3]))
      {
        v5 += 4;
        if (v5 >= v4)
        {
          goto LABEL_6;
        }
      }
    }
  }
}

uint64_t AddVertex(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 8);
  if (v6)
  {
    result = __gl_meshSplitEdge(*(a1 + 8));
    if (!result)
    {
      return result;
    }

    v8 = *(v6 + 24);
    goto LABEL_6;
  }

  result = __gl_meshMakeEdge(*(a1 + 16));
  if (result)
  {
    v8 = result;
    result = __gl_meshSplice(result, *(result + 8));
    if (result)
    {
LABEL_6:
      v9 = *(v8 + 32);
      v9[3] = a3;
      v9[4] = *a2;
      v9[5] = a2[1];
      v9[6] = a2[2];
      result = 1;
      *(v8 + 56) = 1;
      *(*(v8 + 8) + 56) = -1;
      *(a1 + 8) = v8;
    }
  }

  return result;
}

void gluTessBeginPolygon(GLUtesselator *tess, GLvoid *data)
{
  if (*tess)
  {
    GotoState(tess, 0);
  }

  *tess = 1;
  *(tess + 53) = 0;
  *(tess + 208) = 0;
  *(tess + 2) = 0;
  *(tess + 457) = data;
}

void gluTessBeginContour(GLUtesselator *tess)
{
  if (*tess != 1)
  {
    GotoState(tess, 1);
  }

  *tess = 2;
  *(tess + 1) = 0;
  if (*(tess + 53) >= 1)
  {
    *(tess + 208) = 1;
  }
}

void gluTessEndContour(GLUtesselator *tess)
{
  if (*tess != 2)
  {
    GotoState(tess, 2u);
  }

  *tess = 1;
}

void gluTessEndPolygon(GLUtesselator *tess)
{
  if (!setjmp(tess + 866))
  {
    if (*tess != 1)
    {
      GotoState(tess, 1u);
    }

    *tess = 0;
    if (*(tess + 2))
    {
      goto LABEL_36;
    }

    if (!*(tess + 152) && *(tess + 25) == noMesh && __gl_renderCache(tess))
    {
      goto LABEL_31;
    }

    EmptyCache(tess);
    if (v3)
    {
LABEL_36:
      __gl_projectPolygon(tess);
      if (__gl_computeInterior(tess))
      {
        v4 = *(tess + 2);
        if (*(tess + 116))
        {
LABEL_12:
          __gl_meshDeleteMesh(v4);
          *(tess + 457) = 0;
          *(tess + 2) = 0;
          return;
        }

        if (*(tess + 153))
        {
          if (__gl_meshSetWindingNumber(*(tess + 2), 1, 1))
          {
            goto LABEL_16;
          }
        }

        else if (__gl_meshTessellateInterior(*(tess + 2)))
        {
LABEL_16:
          __gl_meshCheckMesh(v4);
          if (*(tess + 21) != noBegin || *(tess + 24) != noEnd || *(tess + 23) != noVertex || *(tess + 22) != noEdgeFlag || *(tess + 427) != __gl_noBeginData || *(tess + 430) != __gl_noEndData || *(tess + 429) != __gl_noVertexData || *(tess + 428) != __gl_noEdgeFlagData)
          {
            if (*(tess + 153))
            {
              __gl_renderBoundary(tess, v4);
            }

            else
            {
              __gl_renderMesh(tess, v4);
            }
          }

          if (*(tess + 25) == noMesh)
          {
            goto LABEL_12;
          }

          __gl_meshDiscardExterior(v4);
          (*(tess + 25))(v4);
          *(tess + 2) = 0;
LABEL_31:
          *(tess + 457) = 0;
          return;
        }
      }
    }

    longjmp(tess + 866, 1);
  }

  v2 = *(tess + 431);
  if (v2 == __gl_noErrorData)
  {
    (*(tess + 3))(100902);
  }

  else
  {
    (v2)(100902, *(tess + 457));
  }
}

uint64_t __gl_renderMesh(uint64_t result, uint64_t a2)
{
  *(result + 160) = 0;
  v2 = (a2 + 80);
  v3 = *(a2 + 80);
  if (v3 != (a2 + 80))
  {
    v4 = result;
    v5 = *(a2 + 80);
    do
    {
      *(v5 + 40) = 0;
      v5 = *v5;
    }

    while (v5 != v2);
    if (v3 != v2)
    {
      do
      {
        if (*(v3 + 41) && !*(v3 + 40))
        {
          v6 = v3[2];
          if (*(v4 + 152))
          {
            result = RenderTriangle(v4, v6, 1);
          }

          else
          {
            MaximumFan(v3[2], &v24);
            if (v24 <= 1)
            {
              v7 = 1;
            }

            else
            {
              v7 = v24;
            }

            if (v24 <= 1)
            {
              v8 = v6;
            }

            else
            {
              v8 = v25;
            }

            if (v24 <= 1)
            {
              v9 = RenderTriangle;
            }

            else
            {
              v9 = v26;
            }

            MaximumFan(v6[3], &v24);
            if (v24 > v7)
            {
              v7 = v24;
              v8 = v25;
              v9 = v26;
            }

            MaximumFan(*(v6[2] + 8), &v24);
            if (v24 > v7)
            {
              v7 = v24;
              v8 = v25;
              v9 = v26;
            }

            MaximumStrip(v6, &v24);
            if (v24 <= v7)
            {
              v10 = v9;
            }

            else
            {
              v7 = v24;
              v8 = v25;
              v10 = v26;
            }

            MaximumStrip(v6[3], &v24);
            v11 = v24 <= v7;
            if (v24 <= v7)
            {
              v12 = v8;
            }

            else
            {
              v7 = v24;
              v12 = v25;
            }

            if (v11)
            {
              v13 = v10;
            }

            else
            {
              v13 = v26;
            }

            MaximumStrip(*(v6[2] + 8), &v24);
            if (v24 <= v7)
            {
              result = v13(v4, v12, v7);
            }

            else
            {
              result = v26(v4, v25, v24);
            }
          }

          if (!*(v3 + 40))
          {
            __gl_renderMesh_cold_1();
          }
        }

        v3 = *v3;
      }

      while (v3 != v2);
      v14 = *(v4 + 160);
      if (v14)
      {
        v15 = *(v4 + 3416);
        if (v15 == __gl_noBeginData)
        {
          (*(v4 + 168))(4);
        }

        else
        {
          (v15)(4, *(v4 + 3656));
        }

        v16 = -1;
        do
        {
          v17 = *(v14 + 16);
          do
          {
            if (*(v4 + 152))
            {
              v18 = *(*(v17[1] + 40) + 41);
              v19 = *(*(v17[1] + 40) + 41) == 0;
              if (v16 != v19)
              {
                v20 = *(v4 + 3424);
                if (v20 == __gl_noEdgeFlagData)
                {
                  (*(v4 + 176))(v18 == 0);
                }

                else
                {
                  (v20)(v18 == 0, *(v4 + 3656));
                }

                v16 = v19;
              }
            }

            v21 = *(v4 + 3432);
            if (v21 == __gl_noVertexData)
            {
              v22 = (*(v4 + 184))(*(v17[4] + 24));
            }

            else
            {
              v22 = (v21)(*(v17[4] + 24), *(v4 + 3656));
            }

            v17 = v17[3];
          }

          while (v17 != *(v14 + 16));
          v14 = *(v14 + 32);
        }

        while (v14);
        v23 = *(v4 + 3440);
        if (v23 == __gl_noEndData)
        {
          result = (*(v4 + 192))(v22);
        }

        else
        {
          result = (v23)(*(v4 + 3656));
        }

        *(v4 + 160) = 0;
      }
    }
  }

  return result;
}

uint64_t __gl_renderBoundary(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 80);
  v3 = *(a2 + 80);
  if (v3 != (a2 + 80))
  {
    v4 = result;
    do
    {
      if (*(v3 + 41))
      {
        v5 = *(v4 + 3416);
        if (v5 == __gl_noBeginData)
        {
          (*(v4 + 168))(2);
        }

        else
        {
          (v5)(2, *(v4 + 3656));
        }

        v6 = v3[2];
        do
        {
          v7 = *(v4 + 3432);
          if (v7 == __gl_noVertexData)
          {
            v8 = (*(v4 + 184))(*(*(v6 + 32) + 24));
          }

          else
          {
            v8 = (v7)(*(*(v6 + 32) + 24), *(v4 + 3656));
          }

          v6 = *(v6 + 24);
        }

        while (v6 != v3[2]);
        v9 = *(v4 + 3440);
        if (v9 == __gl_noEndData)
        {
          result = (*(v4 + 192))(v8);
        }

        else
        {
          result = (v9)(*(v4 + 3656));
        }
      }

      v3 = *v3;
    }

    while (v3 != v2);
  }

  return result;
}

uint64_t __gl_renderCache(uint64_t a1)
{
  v24[3] = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 212);
  if (v1 >= 3)
  {
    v3 = *(a1 + 40);
    v24[0] = *(a1 + 32);
    v24[1] = v3;
    v4 = *(a1 + 48);
    v24[2] = v4;
    if (v24[0] == 0.0 && v3 == 0.0 && v4 == 0.0)
    {
      ComputeNormal(a1, v24, 0);
    }

    v5 = ComputeNormal(a1, v24, 1);
    if (v5 == 2)
    {
      return 0;
    }

    v6 = v5;
    if (v5)
    {
      v7 = *(a1 + 112);
      if (v7 != 100134)
      {
        if (v7 != 100133)
        {
          if (v7 == 100132 && v5 < 0)
          {
            return 1;
          }

LABEL_15:
          v9 = *(a1 + 3416);
          if (v9 == __gl_noBeginData)
          {
            if (v1 == 3)
            {
              v12 = 4;
            }

            else
            {
              v12 = 6;
            }

            if (*(a1 + 153))
            {
              v13 = 2;
            }

            else
            {
              v13 = v12;
            }

            (*(a1 + 168))(v13);
          }

          else
          {
            if (v1 == 3)
            {
              v10 = 4;
            }

            else
            {
              v10 = 6;
            }

            if (*(a1 + 153))
            {
              v11 = 2;
            }

            else
            {
              v11 = v10;
            }

            (v9)(v11, *(a1 + 3656));
          }

          v14 = *(a1 + 3432);
          if (v14 == __gl_noVertexData)
          {
            v15 = (*(a1 + 184))(*(a1 + 240));
          }

          else
          {
            v15 = (v14)(*(a1 + 240), *(a1 + 3656));
          }

          if (v6 < 1)
          {
            v19 = 32 * v1;
            v20 = a1 + 208;
            do
            {
              v21 = *(a1 + 3432);
              if (v21 == __gl_noVertexData)
              {
                v15 = (*(a1 + 184))(*(v20 + v19));
              }

              else
              {
                v15 = (v21)(*(v20 + v19), *(a1 + 3656));
              }

              v22 = v19 + 184;
              v19 -= 32;
            }

            while (v22 > 248);
          }

          else
          {
            v16 = a1 + 32 * v1 + 216;
            for (i = a1 + 248; i < v16; i += 32)
            {
              v18 = *(a1 + 3432);
              if (v18 == __gl_noVertexData)
              {
                v15 = (*(a1 + 184))(*(i + 24));
              }

              else
              {
                v15 = (v18)(*(i + 24), *(a1 + 3656));
              }
            }
          }

          v23 = *(a1 + 3440);
          if (v23 == __gl_noEndData)
          {
            (*(a1 + 192))(v15);
          }

          else
          {
            (v23)(*(a1 + 3656));
          }

          return 1;
        }

        if (v5 <= 0)
        {
          goto LABEL_15;
        }
      }
    }
  }

  return 1;
}

uint64_t ComputeNormal(uint64_t a1, double *a2, int a3)
{
  v3 = *(a1 + 212);
  if (!a3)
  {
    *a2 = 0.0;
    a2[1] = 0.0;
    a2[2] = 0.0;
  }

  if (v3 >= 3)
  {
    v4 = 0;
    v5 = a1 + 32 * v3 + 216;
    v6 = a1 + 280;
    v7 = *(a1 + 248) - *(a1 + 216);
    v8 = vsubq_f64(*(a1 + 256), *(a1 + 224));
    v9 = *a2;
    v10 = a2[2];
    while (1)
    {
      v11 = v8;
      v8 = vsubq_f64(*(v6 + 8), *(a1 + 224));
      *&v12.f64[0] = vdupq_laneq_s64(v8, 1).u64[0];
      *&v13.f64[0] = vdupq_laneq_s64(v11, 1).u64[0];
      v13.f64[1] = v7;
      v14 = v7 * v8.f64[0];
      v7 = *v6 - *(a1 + 216);
      v12.f64[1] = v7;
      v15 = vsubq_f64(vmulq_f64(v11, v12), vmulq_f64(v13, v8));
      v16 = v14 - v7 * v11.f64[0];
      v17 = v16 * v10 + vaddvq_f64(vmulq_f64(v9, v15));
      if (a3)
      {
        if (v17 != 0.0)
        {
          if (v17 <= 0.0)
          {
            if (v4 > 0)
            {
              return 2;
            }

            v4 = 0xFFFFFFFFLL;
          }

          else
          {
            if ((v4 & 0x80000000) != 0)
            {
              return 2;
            }

            v4 = 1;
          }
        }
      }

      else
      {
        if (v17 < 0.0)
        {
          v9 = vsubq_f64(v9, v15);
          *a2 = v9;
          v10 = v10 - v16;
        }

        else
        {
          v9 = vaddq_f64(v9, v15);
          *a2 = v9;
          v10 = v16 + v10;
        }

        a2[2] = v10;
      }

      v6 += 32;
      if (v6 >= v5)
      {
        return v4;
      }
    }
  }

  return 0;
}

uint64_t RenderTriangle(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
    RenderTriangle_cold_1();
  }

  v3 = *(a2 + 40);
  *(v3 + 32) = *(result + 160);
  *(result + 160) = v3;
  *(v3 + 40) = 1;
  return result;
}

uint64_t MaximumFan@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_28723FAB0;
  *(a2 + 16) = off_28723FAC0;
  v2 = *(result + 40);
  if (*(v2 + 41))
  {
    v3 = 0;
    v4 = 0;
    v5 = result;
    while (1)
    {
      v6 = v2;
      if (*(v2 + 40))
      {
        break;
      }

      *(v2 + 32) = v3;
      *(v2 + 40) = 1;
      ++v4;
      v5 = *(v5 + 16);
      v2 = *(v5 + 40);
      v3 = v6;
      if (!*(v2 + 41))
      {
        goto LABEL_8;
      }
    }

    v6 = v3;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_8:
  v7 = *(result + 8);
  v8 = *(v7 + 40);
  if (*(v8 + 41) && !*(v8 + 40))
  {
    while (1)
    {
      v9 = v8;
      *(v8 + 32) = v6;
      *(v8 + 40) = 1;
      ++v4;
      result = *(v7 + 24);
      v7 = *(result + 8);
      v8 = *(v7 + 40);
      if (!*(v8 + 41))
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 40))
      {
        goto LABEL_11;
      }
    }

    *a2 = v4;
    *(a2 + 8) = result;
    goto LABEL_12;
  }

  v9 = v6;
LABEL_11:
  *a2 = v4;
  for (*(a2 + 8) = result; v9; v9 = *(v9 + 32))
  {
LABEL_12:
    *(v9 + 40) = 0;
  }

  return result;
}

void *MaximumStrip@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_28723FAC8;
  *(a2 + 16) = off_28723FAD8;
  v2 = result[5];
  if (*(v2 + 41))
  {
    v3 = 0;
    v4 = 0;
    v5 = result;
    while (!*(v2 + 40))
    {
      *(v2 + 32) = v3;
      *(v2 + 40) = 1;
      v5 = *(v5[3] + 8);
      v3 = v5[5];
      if (!*(v3 + 41) || *(v3 + 40))
      {
        ++v4;
        v3 = v2;
        break;
      }

      *(v3 + 32) = v2;
      *(v3 + 40) = 1;
      v4 += 2;
      v5 = v5[2];
      v2 = v5[5];
      if (!*(v2 + 41))
      {
        break;
      }
    }
  }

  else
  {
    v4 = 0;
    v3 = 0;
    v5 = result;
  }

  v6 = result[1];
  v7 = *(v6 + 40);
  if (*(v7 + 41) && !*(v7 + 40))
  {
    v10 = 1;
    while (1)
    {
      v8 = v10;
      *(v7 + 32) = v3;
      *(v7 + 40) = 1;
      result = *(v6 + 24);
      v11 = result[1];
      v3 = *(v11 + 40);
      if (!*(v3 + 41) || *(v3 + 40))
      {
        break;
      }

      *(v3 + 32) = v7;
      *(v3 + 40) = 1;
      result = *(*(v11 + 16) + 8);
      v6 = result[1];
      v7 = *(v6 + 40);
      if (*(v7 + 41))
      {
        v10 += 2;
        if (!*(v7 + 40))
        {
          continue;
        }
      }

      ++v8;
      goto LABEL_13;
    }

    v3 = v7;
  }

  else
  {
    v8 = 0;
  }

LABEL_13:
  *a2 = v8 + v4;
  if (v4)
  {
    if ((v8 & 1) == 0)
    {
      goto LABEL_18;
    }

    *a2 = v8 + v4 - 1;
    v9 = result + 2;
  }

  else
  {
    v9 = v5 + 1;
  }

  result = *v9;
LABEL_18:
  for (*(a2 + 8) = result; v3; v3 = *(v3 + 32))
  {
    *(v3 + 40) = 0;
  }

  return result;
}

uint64_t RenderFan(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 3416);
  if (v6 == __gl_noBeginData)
  {
    (*(a1 + 168))(6);
  }

  else
  {
    (v6)(6, *(a1 + 3656));
  }

  v7 = *(a1 + 3432);
  if (v7 == __gl_noVertexData)
  {
    (*(a1 + 184))(*(a2[4] + 24));
  }

  else
  {
    (v7)(*(a2[4] + 24), *(a1 + 3656));
  }

  v8 = *(a1 + 3432);
  if (v8 == __gl_noVertexData)
  {
    (*(a1 + 184))(*(*(a2[1] + 32) + 24));
  }

  else
  {
    (v8)(*(*(a2[1] + 32) + 24), *(a1 + 3656));
  }

  for (i = a2[5]; *(i + 41); --a3)
  {
    if (*(i + 40))
    {
      break;
    }

    *(i + 40) = 1;
    a2 = a2[2];
    v10 = *(a1 + 3432);
    if (v10 == __gl_noVertexData)
    {
      (*(a1 + 184))(*(*(a2[1] + 32) + 24));
    }

    else
    {
      (v10)(*(*(a2[1] + 32) + 24), *(a1 + 3656));
    }

    i = a2[5];
  }

  if (a3)
  {
    RenderFan_cold_1();
  }

  v11 = *(a1 + 3440);
  if (v11 == __gl_noEndData)
  {
    v14 = *(a1 + 192);

    return v14();
  }

  else
  {
    v12 = *(a1 + 3656);

    return (v11)(v12);
  }
}

uint64_t RenderStrip(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *(a1 + 3416);
  if (v6 == __gl_noBeginData)
  {
    (*(a1 + 168))(5);
  }

  else
  {
    (v6)(5, *(a1 + 3656));
  }

  v7 = *(a1 + 3432);
  if (v7 == __gl_noVertexData)
  {
    (*(a1 + 184))(*(a2[4] + 24));
  }

  else
  {
    (v7)(*(a2[4] + 24), *(a1 + 3656));
  }

  v8 = *(a1 + 3432);
  if (v8 == __gl_noVertexData)
  {
    (*(a1 + 184))(*(*(a2[1] + 32) + 24));
  }

  else
  {
    (v8)(*(*(a2[1] + 32) + 24), *(a1 + 3656));
  }

  v9 = a2[5];
  if (*(v9 + 41))
  {
    while (!*(v9 + 40))
    {
      *(v9 + 40) = 1;
      v10 = *(a2[3] + 8);
      v11 = *(a1 + 3432);
      if (v11 == __gl_noVertexData)
      {
        (*(a1 + 184))(*(v10[4] + 24));
      }

      else
      {
        (v11)(*(v10[4] + 24), *(a1 + 3656));
      }

      v12 = v10[5];
      if (!*(v12 + 41) || *(v12 + 40))
      {
        --a3;
        break;
      }

      *(v12 + 40) = 1;
      a2 = v10[2];
      v13 = *(a1 + 3432);
      if (v13 == __gl_noVertexData)
      {
        (*(a1 + 184))(*(*(a2[1] + 32) + 24));
      }

      else
      {
        (v13)(*(*(a2[1] + 32) + 24), *(a1 + 3656));
      }

      v9 = a2[5];
      a3 -= 2;
      if (!*(v9 + 41))
      {
        break;
      }
    }
  }

  if (a3)
  {
    RenderStrip_cold_1();
  }

  v14 = *(a1 + 3440);
  if (v14 == __gl_noEndData)
  {
    v17 = *(a1 + 192);

    return v17();
  }

  else
  {
    v15 = *(a1 + 3656);

    return (v14)(v15);
  }
}

ProGL::Private *PGLInit(ProGL::Private *result)
{
  {
    inited = ProGL::Private::initContextSharing(result);
    ProGL::Private::initShareGroup(inited);
    ProGL::Private::initContext(v2);
    ProGL::Private::initPerThreadContext(v3);
    ProGL::Private::initContextInfo(v4);
  }

  return result;
}

void PGLCleanup(ProGL::Private *a1)
{
  {
    v2 = ProGL::Private::cleanUpLazyTexture(a1);
    v3 = ProGL::Private::cleanUpTexturePool(v2);
    v4 = ProGL::Private::cleanUpTextureHandle(v3);
    v5 = ProGL::Private::cleanUpProgram(v4);
    v7 = ProGL::Private::cleanUpDeleteObjects(v5, v6);
    v8 = ProGL::Private::cleanUpAuxiliaryContexts(v7);
    v9 = ProGL::Private::cleanUpContextInfo(v8);
    v10 = ProGL::Private::cleanUpPerThreadContext(v9);
    v12 = OZChannelBase::setRangeName(v10, v11);
    v13 = ProGL::Private::cleanUpShareGroup(v12);

    ProGL::Private::cleanUpContextSharing(v13);
  }
}

BOOL ProGL::SharedPerThreadAuxiliaryMap::Key::operator<(uint64_t a1, uint64_t a2)
{
  if (*a1 < *a2)
  {
    return 1;
  }

  if (*a1 > *a2)
  {
    return 0;
  }

  if (ProGL::operator<((a1 + 8), (a2 + 8)))
  {
    return 1;
  }

  if (ProGL::operator>((a1 + 8), (a2 + 8)))
  {
    return 0;
  }

  return *(a1 + 16) < *(a2 + 16);
}

void ProGL::SharedPerThreadAuxiliaryMap::get(ProGL::SharedPerThreadAuxiliaryMap *this@<X0>, os_unfair_lock_s **a2@<X1>, int a3@<W2>, ProGL::ContextHandle *a4@<X8>)
{
  PCSpinLock::lock(this);
  ProGL::Private::AuxiliaryContextMap<ProGL::SharedPerThreadAuxiliaryMap::Key>::get(this + 1, a2, a3, a4);
  if (this)
  {
    PCSpinLock::unlock(this);
  }
}

void sub_25FE4A698(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProGL::Private::AuxiliaryContextMap<ProGL::SharedPerThreadAuxiliaryMap::Key>::get(uint64_t *a1@<X0>, os_unfair_lock_s **a2@<X1>, int a3@<W2>, ProGL::ContextHandle *a4@<X8>)
{
  v11 = pthread_self();
  ProGL::ContextHandle::getShareGroup(a2, &v12);
  v13 = a3;
  v10 = 0;
  PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::findValue(*a1, &v11, &v10, a4);
  if ((v10 & 1) == 0)
  {
    ProGL::makeEAGLContext(a2, v8, v9);
    ProGL::ContextHandle::operator=(a4, v9);
    ProGL::ContextHandle::~ContextHandle(v9);
    ProGL::ContextHandle::setVirtualScreen(a4);
    PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::addValue(*a1, &v11, a4, 0);
  }
}

void sub_25FE4A764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ProGL::ContextHandle::~ContextHandle(&a9);
  ProGL::ContextHandle::~ContextHandle(v9);
  _Unwind_Resume(a1);
}

uint64_t ProGL::Private::cleanUpAuxiliaryContexts(ProGL::Private *this)
{
  {
    result = MEMORY[0x2666E9F00](v2, 0x20C4093837F09);
  }

  {
    PCSpinLock::~PCSpinLock(v3);
    result = MEMORY[0x2666E9F00]();
  }

  return result;
}

uint64_t *PCCache<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::~PCCache(uint64_t *a1)
{
  v2 = *a1 + 32;
  std::__tree<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedAuxiliaryMap::Key,std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>>>::destroy(*a1 + 24, *v2);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  *(v2 + 24) = *(v2 + 16);
  *(v2 + 48) = 0;
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::~PCCacheImpl(v3);
    MEMORY[0x2666E9F00](v4, 0x1020C4058232694);
  }

  return a1;
}

void std::__tree<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedAuxiliaryMap::Key,std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedAuxiliaryMap::Key,std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedAuxiliaryMap::Key,std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>>>::destroy(a1, a2[1]);
    ProGL::ContextHandle::~ContextHandle((a2 + 6));

    operator delete(a2);
  }
}

uint64_t PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::~PCCacheImpl(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedAuxiliaryMap::Key,std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedAuxiliaryMap::Key>>::Data>>>::destroy(a1 + 24, *(a1 + 32));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

uint64_t *PCCache<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::~PCCache(uint64_t *a1)
{
  v2 = *a1 + 32;
  std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::destroy(*a1 + 24, *v2);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 - 8) = v2;
  *(v2 + 24) = *(v2 + 16);
  *(v2 + 48) = 0;
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    v4 = PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::~PCCacheImpl(v3);
    MEMORY[0x2666E9F00](v4, 0x1020C4058232694);
  }

  return a1;
}

void std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::destroy(a1, a2[1]);
    ProGL::ContextHandle::~ContextHandle((a2 + 7));

    operator delete(a2);
  }
}

uint64_t PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::~PCCacheImpl(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::destroy(a1 + 24, *(a1 + 32));
  v3 = *(a1 + 8);
  if (v3)
  {
    std::__shared_weak_count::__release_weak(v3);
  }

  return a1;
}

void *PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::findValue@<X0>(void *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, void *a4@<X8>)
{
  result = std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::find<ProGL::SharedPerThreadAuxiliaryMap::Key>((a1 + 3), a2);
  v10 = result;
  if (a1 + 4 == result)
  {
    *a3 = 0;
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    v8 = result[8];
    *a4 = result[7];
    a4[1] = v8;
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    v9 = a1[9] + 1;
    a1[9] = v9;
    result[10] = v9;
    result = PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::bubble(a1 + 6, &v10);
    *a3 = 1;
  }

  return result;
}

uint64_t std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::find<ProGL::SharedPerThreadAuxiliaryMap::Key>(uint64_t a1, uint64_t a2)
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
    v6 = ProGL::SharedPerThreadAuxiliaryMap::Key::operator<(v3 + 32, a2);
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  if (v5 == v2 || ProGL::SharedPerThreadAuxiliaryMap::Key::operator<(a2, v5 + 32))
  {
    return v2;
  }

  return v5;
}

void PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::addValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  if (*(a1 + 88) >= a4 || *(a1 + 104))
  {
    v8 = std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::find<ProGL::SharedPerThreadAuxiliaryMap::Key>(a1 + 24, a2);
    v34 = v8;
    if (a1 + 32 == v8)
    {
      v16 = *(a1 + 72) + 1;
      *(a1 + 72) = v16;
      v18 = *a3;
      v17 = a3[1];
      v31[0] = *a3;
      v31[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      *&v32 = a4;
      *(&v32 + 1) = v16;
      v33 = 0;
      v23 = *a2;
      ProGL::ShareGroup::ShareGroup(&v24, (a2 + 8));
      v25 = *(a2 + 16);
      v26[0] = v18;
      v26[1] = v17;
      if (v17)
      {
        atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
      }

      v27 = v32;
      v28 = v33;
      v29 = std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::__emplace_unique_key_args<ProGL::SharedPerThreadAuxiliaryMap::Key,std::pair<ProGL::SharedPerThreadAuxiliaryMap::Key const,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>(a1 + 24, &v23);
      v30 = v19;
      ProGL::ContextHandle::~ContextHandle(v26);
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::add(a1 + 48, &v29);
      v20 = *(a1 + 80) + a4;
      *(a1 + 80) = v20;
      if (!*(a1 + 104))
      {
        while (v20 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
        {
          v22 = *(a1 + 48);
          if (v22 == *(a1 + 56))
          {
            break;
          }

          v23 = *v22;
          PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::remove((a1 + 48), &v23);
          v21 = v23;
          *(a1 + 80) -= v23[9];
          std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v21);
          ProGL::ContextHandle::~ContextHandle((v21 + 7));
          operator delete(v21);
          v20 = *(a1 + 80);
        }
      }

      ProGL::ContextHandle::~ContextHandle(v31);
    }

    else
    {
      v9 = v8;
      ProGL::ContextHandle::operator=((v8 + 56), a3);
      v10 = *(a1 + 72) + 1;
      *(a1 + 72) = v10;
      *(v9 + 80) = v10;
      PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::bubble((a1 + 48), &v34);
      v11 = v34;
      v12 = a4 - *(v34 + 72);
      if (v12)
      {
        v13 = v12 + *(a1 + 80);
        *(a1 + 80) = v13;
        *(v11 + 72) = a4;
        if (!*(a1 + 104))
        {
          while (v13 > *(a1 + 88) || *(a1 + 40) > *(a1 + 96))
          {
            v15 = *(a1 + 48);
            if (v15 == *(a1 + 56))
            {
              break;
            }

            v23 = *v15;
            PCEvictionHeap<std::__map_iterator<std::__tree_iterator<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,std::__tree_node<std::__value_type<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCacheImpl<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>,PCCFRef<vImageConverter *>,PCNoLock,std::less<std::tuple<PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat,PCCFRef<CGColorSpace *>,PCColorUtil::AlphaFormat>>>::Data>,void *> *,long>>>::remove((a1 + 48), &v23);
            v14 = v23;
            *(a1 + 80) -= v23[9];
            std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer((a1 + 24), v14);
            ProGL::ContextHandle::~ContextHandle((v14 + 7));
            operator delete(v14);
            v13 = *(a1 + 80);
          }
        }
      }
    }
  }
}

void sub_25FE4AEB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  ProGL::ContextHandle::~ContextHandle(va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::__emplace_unique_key_args<ProGL::SharedPerThreadAuxiliaryMap::Key,std::pair<ProGL::SharedPerThreadAuxiliaryMap::Key const,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>(uint64_t a1, uint64_t a2)
{
  v2 = *std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::__find_equal<ProGL::SharedPerThreadAuxiliaryMap::Key>(a1, &v4, a2);
  if (!v2)
  {
    std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::__construct_node<std::pair<ProGL::SharedPerThreadAuxiliaryMap::Key const,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>();
  }

  return v2;
}

void *std::__tree<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::__map_value_compare<ProGL::SharedPerThreadAuxiliaryMap::Key,std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>,true>,std::allocator<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>>>::__find_equal<ProGL::SharedPerThreadAuxiliaryMap::Key>(uint64_t a1, void *a2, uint64_t a3)
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
        if (!ProGL::SharedPerThreadAuxiliaryMap::Key::operator<(a3, (v4 + 4)))
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

      if (!ProGL::SharedPerThreadAuxiliaryMap::Key::operator<((v7 + 4), a3))
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

uint64_t *std::unique_ptr<std::__tree_node<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<ProGL::SharedPerThreadAuxiliaryMap::Key,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      ProGL::ContextHandle::~ContextHandle((v2 + 56));
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t std::pair<ProGL::SharedPerThreadAuxiliaryMap::Key const,PCCacheImpl<ProGL::SharedPerThreadAuxiliaryMap::Key,ProGL::ContextHandle,PCNoLock,std::less<ProGL::SharedPerThreadAuxiliaryMap::Key>>::Data>::pair[abi:ne200100](uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  ProGL::ShareGroup::ShareGroup((a1 + 8), (a2 + 8));
  *(a1 + 16) = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v5 = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 40) = v5;
  return a1;
}

void *ProGL::ShareGroup::findGroup@<X0>(void *this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    this = [this sharegroup];
  }

  *a2 = this;
  return this;
}

uint64_t (*ProGL::ShareGroup::operator void (ProGL::ShareGroup::*)(void)(void *a1))(ProGL::ShareGroup *__hidden this)
{
  if (*a1)
  {
    return ProGL::ShareGroup::dummyFunc;
  }

  else
  {
    return 0;
  }
}

BOOL ProGL::operator<(void *a1, void *a2)
{
  if (*a2)
  {
    v2 = *a1 >= *a2;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

BOOL ProGL::operator>(void *a1, void *a2)
{
  if (*a1)
  {
    v2 = *a2 >= *a1;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

void ProGL::masterShareGroup(void *a1@<X8>)
{
  {
    v2 = PGLMasterEAGLContext();
    if (!v2 || ![v2 sharegroup])
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](&v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "ProGL::masterShareGroup(): ", 27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v6, "Master share group is 0 because there is no master CGLContextObj.\n", 66);
      std::stringbuf::str();
      if (v5 >= 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      NSLog(&cfstr_S.isa, p_p);
      if (v5 < 0)
      {
        operator delete(__p);
      }

      v6 = *MEMORY[0x277D82828];
      *(&v6 + *(v6 - 24)) = *(MEMORY[0x277D82828] + 24);
      v7 = MEMORY[0x277D82878] + 16;
      if (v9 < 0)
      {
        operator delete(v8[7].__locale_);
      }

      v7 = MEMORY[0x277D82868] + 16;
      std::locale::~locale(v8);
      std::ostream::~ostream();
      MEMORY[0x2666E9E10](&v10);
    }

    operator new();
  }
}

void sub_25FE4B3B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, void *__p, uint64_t a5, int a6, __int16 a7, char a8, char a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, ...)
{
  va_start(va, a23);
  if (a9 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a10, MEMORY[0x277D82828]);
  MEMORY[0x2666E9E10](va);
  _Unwind_Resume(a1);
}

uint64_t ProGL::Private::cleanUpShareGroup(ProGL::Private *this)
{
  {
  }

  return result;
}

ProGL::GL_Wrap *ProGL::GL_Wrap::GL_Wrap(ProGL::GL_Wrap *this)
{
  *this = 0;
  *(this + 1) = 0;
  ProGL::getCurrentContext(v3);
  ProGL::ContextHandle::operator=(this, v3);
  ProGL::ContextHandle::~ContextHandle(v3);
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 32) = 1;
  return this;
}

void sub_25FE4B4B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  ProGL::ContextHandle::~ContextHandle(&a9);
  ProGL::ContextHandle::~ContextHandle(v9);
  _Unwind_Resume(a1);
}

ProGL::GL_Wrap *ProGL::GL_Wrap::GL_Wrap(ProGL::GL_Wrap *this, const ProGL::GL_Wrap *a2)
{
  *this = 0;
  *(this + 1) = 0;
  ProGL::ContextHandle::operator=(this, a2);
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 32) = *(a2 + 32);
  return this;
}

ProGL::GL_Wrap *ProGL::GL_Wrap::GL_Wrap(ProGL::GL_Wrap *this, const ProGL::ContextHandle *a2)
{
  *this = 0;
  *(this + 1) = 0;
  ProGL::ContextHandle::operator=(this, a2);
  *(this + 16) = 0;
  *(this + 3) = 0;
  *(this + 32) = 1;
  return this;
}

void ProGL::GL_Wrap::~GL_Wrap(ProGL::GL_Wrap *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    ProGL::MatrixState::~MatrixState(v2);
    MEMORY[0x2666E9F00]();
  }

  ProGL::ContextHandle::~ContextHandle(this);
}

void *ProGL::GL::getPGLContextHandle@<X0>(void *this@<X0>, void *a2@<X8>)
{
  v2 = this[1];
  *a2 = *this;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return this;
}

_DWORD *ProGL::Private::TextureParameters::resetDefaultsForTarget(_DWORD *this)
{
  v1 = this[4];
  if (v1 == 9986)
  {
    this[22] &= ~4u;
  }

  else if (!v1)
  {
    this[4] = 9986;
  }

  v2 = this[5];
  if (v2 == 10497)
  {
    this[22] &= ~0x10u;
  }

  else if (!v2)
  {
    this[5] = 10497;
  }

  v3 = this[6];
  if (v3 == 10497)
  {
    this[22] &= ~0x20u;
  }

  else if (!v3)
  {
    this[6] = 10497;
  }

  v4 = this[7];
  if (v4 == 10497)
  {
    this[22] &= ~0x40u;
  }

  else if (!v4)
  {
    this[7] = 10497;
  }

  return this;
}

double ProGL::Private::TextureParameters::reset(ProGL::Private::TextureParameters *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = 9729;
  *(this + 36) = 0xC47A00003F800000;
  *(this + 11) = 1148846080;
  *(this + 6) = 0x3E800000000;
  *(this + 14) = 0;
  *&result = 6409;
  *(this + 60) = xmmword_260847330;
  *(this + 19) = 1065353216;
  *(this + 10) = 0;
  *(this + 22) = 1;
  return result;
}

void ProGL::Private::TextureParameters::bind(ProGL::Private::TextureParameters *this, GLuint a2, ProGL::GL *a3, GLenum target)
{
  if ((*(this + 84) & 1) == 0)
  {
    glBindTexture(target, a2);
    *(this + 84) = 1;
    v6 = *(this + 22);
    if (v6)
    {
      if (v6)
      {
        ProGL::Private::TextureParameters::resetDefaultsForTarget(this);
        v6 = *(this + 22);
        if ((v6 & 4) == 0)
        {
LABEL_5:
          if ((v6 & 8) == 0)
          {
            goto LABEL_6;
          }

          goto LABEL_12;
        }
      }

      else if ((v6 & 4) == 0)
      {
        goto LABEL_5;
      }

      glTexParameteri(target, 0x2801u, *(this + 4));
      v6 = *(this + 22);
      if ((v6 & 8) == 0)
      {
LABEL_6:
        if ((v6 & 0x10) == 0)
        {
LABEL_8:
          *(this + 22) = 0;
          return;
        }

LABEL_7:
        glTexParameteri(target, 0x2802u, *(this + 5));
        goto LABEL_8;
      }

LABEL_12:
      glTexParameteri(target, 0x2800u, *(this + 8));
      if ((*(this + 22) & 0x10) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }
}

void ProGL::Private::TextureParameters::unbind(ProGL::Private::TextureParameters *this, ProGL::GL *a2, GLenum target)
{
  if (*(this + 84) == 1)
  {
    glBindTexture(target, 0);
    *(this + 84) = 0;
  }
}

void ProGL::Private::TextureParameters::setMinFilter(ProGL::Private::TextureParameters *this, ProGL::GL *a2, GLenum target, GLint param)
{
  if (*(this + 4) != param)
  {
    *(this + 4) = param;
    if (*(this + 84) == 1)
    {
      glTexParameteri(target, 0x2801u, param);
    }

    else
    {
      *(this + 22) |= 4u;
    }
  }
}

void ProGL::Private::TextureParameters::setMagFilter(ProGL::Private::TextureParameters *this, ProGL::GL *a2, GLenum target, GLint param)
{
  if (*(this + 8) != param)
  {
    *(this + 8) = param;
    if (*(this + 84) == 1)
    {
      glTexParameteri(target, 0x2800u, param);
    }

    else
    {
      *(this + 22) |= 8u;
    }
  }
}

void ProGL::Private::TextureParameters::setWrapS(ProGL::Private::TextureParameters *this, ProGL::GL *a2, GLenum target, GLint param)
{
  if (*(this + 5) != param)
  {
    *(this + 5) = param;
    if (*(this + 84) == 1)
    {
      glTexParameteri(target, 0x2802u, param);
    }

    else
    {
      *(this + 22) |= 0x10u;
    }
  }
}

void ProGL::Private::TextureParameters::setWrapT(ProGL::Private::TextureParameters *this, ProGL::GL *a2, GLenum target, GLint param)
{
  if (*(this + 6) != param)
  {
    *(this + 6) = param;
    if (*(this + 84) == 1)
    {
      glTexParameteri(target, 0x2803u, param);
    }

    else
    {
      *(this + 22) |= 0x20u;
    }
  }
}

void ProGL::Private::TextureParameters::setMaxAnisotropy(GLfloat *this, ProGL::GL *a2, GLenum target, GLfloat a4)
{
  if (this[19] != a4)
  {
    this[19] = a4;
    if (*(this + 84) == 1)
    {
      glTexParameterf(target, 0x84FEu, a4);
    }

    else
    {
      *(this + 22) |= 0x20000u;
    }
  }
}

ProGL::Private::TextureImpl **ProGL::Private::deleteTextures(ProGL::Private::TextureImpl **this, ProGL::Private::TextureImpl **a2, ProGL::Private::TextureImpl **a3)
{
  if (this != a2)
  {
    operator new();
  }

  return this;
}

void sub_25FE4BA20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::DeleteTextureInst::~DeleteTextureInst(OZChannelBase *this, const PCString *a2)
{
  this->var0 = &unk_28723FAF0;
  var1 = this->var1;
  if (var1)
  {
    this->var2 = var1;
    operator delete(var1);
  }

  OZChannelBase::setRangeName(this, a2);
}

{
  this->var0 = &unk_28723FAF0;
  var1 = this->var1;
  if (var1)
  {
    this->var2 = var1;
    operator delete(var1);
  }

  OZChannelBase::setRangeName(this, a2);

  JUMPOUT(0x2666E9F00);
}

void anonymous namespace::DeleteTextureInst::execute(_anonymous_namespace_::DeleteTextureInst *this)
{
  v1 = *(this + 1);
  v2 = *(this + 2);
  if (v2 - v1 == 8)
  {
    ProGL::Private::TextureImpl::getContext(*v1, v17);
    v3 = HGPixelBufferObj::format(*v1);
    ProGL::getDeletionContext(v17, v3, &v16);
    ProGL::ContextHandle::~ContextHandle(v17);
    ProGL::CurrentContextSentry::CurrentContextSentry(v17, &v16);
    textures[0] = HGGLBlendingInfo::GetAlphaOperation(*v1);
    glDeleteTextures(1, textures);
    v4 = *v1;
    if (*v1)
    {
      v5 = *(v4 + 256);
      if (v5)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v5);
      }

      PCCFRef<CGColorSpace *>::~PCCFRef((v4 + 208));
      std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(v4 + 176, *(v4 + 184));
      ProGL::ContextHandle::~ContextHandle((v4 + 24));
      PCSpinLock::~PCSpinLock((v4 + 16));
      v6 = *(v4 + 8);
      if (v6)
      {
        std::__shared_weak_count::__release_weak(v6);
      }

      MEMORY[0x2666E9F00](v4, 0x1020C40A7E6A51ELL);
    }

    ProGL::CurrentContextSentry::~CurrentContextSentry(v17);
    ProGL::ContextHandle::~ContextHandle(&v16);
  }

  else
  {
    memset(&v16, 0, sizeof(v16));
    std::vector<unsigned int>::reserve(&v16, (v2 - v1) >> 3);
    if (v1 != v2)
    {
      v7 = v1;
      do
      {
        ProGL::Private::TextureImpl::getContext(*v7, textures);
        v8 = HGPixelBufferObj::format(*v7);
        ProGL::getDeletionContext(textures, v8, v17);
        ProGL::ContextHandle::~ContextHandle(textures);
        v16.__end_ = v16.__begin_;
        textures[0] = HGGLBlendingInfo::GetAlphaOperation(*v7);
        std::vector<int>::push_back[abi:ne200100](&v16.__begin_, textures);
        v9 = (v7 + 1);
        *textures = *v7;
        if (v7 + 1 != v2)
        {
          v10 = (v7 + 1);
          v9 = v2;
          while (2)
          {
            {
              if (++v10 == v9)
              {
                goto LABEL_22;
              }
            }

            do
            {
              if (--v9 == v10)
              {
                v9 = v10;
                goto LABEL_22;
              }
            }

            v11 = *v10;
            *v10++ = *v9;
            *v9 = v11;
            if (v9 != v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
        while (v7 != v9)
        {
          textures[0] = HGGLBlendingInfo::GetAlphaOperation(*v7);
          std::vector<int>::push_back[abi:ne200100](&v16.__begin_, textures);
          ++v7;
        }

        ProGL::CurrentContextSentry::CurrentContextSentry(textures, v17);
        glDeleteTextures((v16.__end_ - v16.__begin_) >> 2, v16.__begin_);
        ProGL::CurrentContextSentry::~CurrentContextSentry(textures);
        ProGL::ContextHandle::~ContextHandle(v17);
      }

      while (v7 != v2);
      do
      {
        v12 = *v1;
        if (*v1)
        {
          v13 = *(v12 + 256);
          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          PCCFRef<CGColorSpace *>::~PCCFRef((v12 + 208));
          std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(v12 + 176, *(v12 + 184));
          ProGL::ContextHandle::~ContextHandle((v12 + 24));
          PCSpinLock::~PCSpinLock((v12 + 16));
          v14 = *(v12 + 8);
          if (v14)
          {
            std::__shared_weak_count::__release_weak(v14);
          }

          MEMORY[0x2666E9F00](v12, 0x1020C40A7E6A51ELL);
        }

        ++v1;
      }

      while (v1 != v2);
    }

    if (v16.__begin_)
    {
      v16.__end_ = v16.__begin_;
      operator delete(v16.__begin_);
    }
  }
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, __n);
    }

    std::vector<double>::__throw_length_error[abi:ne200100]();
  }
}

BOOL anonymous namespace::SameShareGroup::operator()(uint64_t *a1, HGPixelBufferObj *a2)
{
  ProGL::Private::TextureImpl::getContext(*a1, v9);
  ProGL::Private::TextureImpl::getContext(a2, v8);
  if (ProGL::areContextsShared(v9, v8, v4))
  {
    v5 = HGPixelBufferObj::format(*a1);
    v6 = v5 == HGPixelBufferObj::format(a2);
  }

  else
  {
    v6 = 0;
  }

  ProGL::ContextHandle::~ContextHandle(v8);
  ProGL::ContextHandle::~ContextHandle(v9);
  return v6;
}

void sub_25FE4BFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ProGL::ContextHandle::~ContextHandle(va);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_pointer<anonymous namespace::DeleteTextureInst *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteTextureInst>,std::allocator<anonymous namespace::DeleteTextureInst>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::DeleteTextureInst *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteTextureInst>,std::allocator<anonymous namespace::DeleteTextureInst>>::__on_zero_shared(uint64_t a1)
{
  result = *(a1 + 24);
  if (result)
  {
    return (*(*result + 8))();
  }

  return result;
}

uint64_t std::__shared_ptr_pointer<anonymous namespace::DeleteTextureInst *,std::shared_ptr<ProGL::DeletionInstruction>::__shared_ptr_default_delete<ProGL::DeletionInstruction,anonymous namespace::DeleteTextureInst>,std::allocator<anonymous namespace::DeleteTextureInst>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t ProGL::Private::cleanUpLazyTexture(ProGL::Private *this)
{
  {
    result = MEMORY[0x2666E9F00]();
  }

  return result;
}

ProGL::TextureDescription *ProGL::TextureDescription::TextureDescription(ProGL::TextureDescription *this, const ProGL::ContextHandle *a2)
{
  v3 = *(a2 + 1);
  *this = *a2;
  *(this + 1) = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 4) = ProGL::ContextHandle::getVirtualScreen(this);
  *(this + 20) = 0;
  *(this + 36) = 0;
  *(this + 28) = 0;
  return this;
}

ProGL::TextureDescription *ProGL::TextureDescription::TextureDescription(ProGL::TextureDescription *this, int a2, int a3, int a4, int a5, const ProGL::ContextHandle *a6)
{
  v11 = *(a6 + 1);
  *this = *a6;
  *(this + 1) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 4) = ProGL::ContextHandle::getVirtualScreen(this);
  *(this + 5) = a2;
  *(this + 6) = a3;
  *(this + 28) = 0x100000001;
  *(this + 9) = a4;
  *(this + 10) = a5;
  return this;
}

ProGL::TextureDescription *ProGL::TextureDescription::TextureDescription(ProGL::TextureDescription *this, int a2, int a3, int a4, int a5, int a6, const ProGL::ContextHandle *a7)
{
  v13 = *(a7 + 1);
  *this = *a7;
  *(this + 1) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit((v13 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 4) = ProGL::ContextHandle::getVirtualScreen(this);
  *(this + 5) = a2;
  *(this + 6) = a3;
  *(this + 7) = a4;
  *(this + 8) = 1;
  *(this + 9) = a5;
  *(this + 10) = a6;
  return this;
}

void ProGL::TextureDescription::reset(ProGL::TextureDescription *this)
{
  memset(v2, 0, sizeof(v2));
  ProGL::ContextHandle::operator=(this, v2);
  *(this + 1) = v2[1];
  *(this + 28) = *(&v2[1] + 12);
  ProGL::ContextHandle::~ContextHandle(v2);
}

uint64_t ProGL::Private::cleanUpTextureHandle(ProGL::Private *this)
{
  {
  }

  {
    MEMORY[0x2666E9F00](v1, 0x1020C4062D53EE8);
  }

  {
    PCSpinLock::~PCSpinLock(v2);
    MEMORY[0x2666E9F00]();
  }

  {
    result = MEMORY[0x2666E9F00]();
  }

  return result;
}

void (*ProGL::TextureHandle::operator void (ProGL::TextureHandle::*)(void)(void (**a1)(_anonymous_namespace_ **this)))(_anonymous_namespace_ **this)
{
  result = *a1;
  if (result)
  {
    if (HGGLBlendingInfo::GetAlphaOperation(result))
    {
      return ProGL::TextureHandle::detach;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void ProGL::TextureHandle::detach(_anonymous_namespace_ **this)
{
  v2 = *this;
  if (v2)
  {
    Serializer = OZChannelBase::getSerializer(v2);
    PCSpinLock::lock(Serializer);
    ProGL::Private::TextureImpl::detach(*this);
    PCSpinLock::unlock(Serializer);
  }
}

void sub_25FE4C598(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

HGGLBlendingInfo *ProGL::TextureHandle::getName(HGGLBlendingInfo **this)
{
  result = *this;
  if (result)
  {
    return HGGLBlendingInfo::GetAlphaOperation(result);
  }

  return result;
}

uint64_t ProGL::TextureHandle::getContext@<X0>(ProGL::TextureHandle *this@<X0>, void *a2@<X8>)
{
  result = *this;
  if (result)
  {
    return ProGL::Private::TextureImpl::getContext(result, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

void ProGL::TextureHandle::setPooled(OZChannelBase **this, char a2)
{
  v3 = *this;
  if (v3)
  {
    Serializer = OZChannelBase::getSerializer(v3);
    PCSpinLock::lock(Serializer);
    ProGL::Private::TextureImpl::setPooled(*this, a2);
    PCSpinLock::unlock(Serializer);
  }
}

void sub_25FE4C634(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

ProGL::Private::TextureImpl *ProGL::TextureHandle::getSize(ProGL::Private::TextureImpl **this)
{
  result = *this;
  if (result)
  {
    return ProGL::Private::TextureImpl::getSize(result);
  }

  return result;
}

ProGL::Private::TextureImpl *ProGL::TextureHandle::getTarget(ProGL::Private::TextureImpl **this)
{
  result = *this;
  if (result)
  {
    return ProGL::Private::TextureImpl::getTarget(result);
  }

  return result;
}

ProGL::Private::TextureImpl *ProGL::TextureHandle::getWidth(ProGL::Private::TextureImpl **this)
{
  result = *this;
  if (result)
  {
    return ProGL::Private::TextureImpl::getWidth(result);
  }

  return result;
}

ProGL::Private::TextureImpl *ProGL::TextureHandle::getHeight(ProGL::Private::TextureImpl **this)
{
  result = *this;
  if (result)
  {
    return ProGL::Private::TextureImpl::getHeight(result);
  }

  return result;
}

ProGL::Private::TextureImpl *ProGL::TextureHandle::getBorder(ProGL::Private::TextureImpl **this)
{
  result = *this;
  if (result)
  {
    return ProGL::Private::TextureImpl::getBorder(result);
  }

  return result;
}

ProGL::Private::TextureImpl *ProGL::TextureHandle::getActualInternalFormat(ProGL::Private::TextureImpl **this)
{
  result = *this;
  if (result)
  {
    return ProGL::Private::TextureImpl::getActualInternalFormat(result);
  }

  return result;
}

uint64_t anonymous namespace::removeTexture(_anonymous_namespace_ *this, ProGL::Private::TextureImpl *a2)
{
  result = HGGLBlendingInfo::GetAlphaOperation(this);
  if (result)
  {
    AlphaOperation = HGGLBlendingInfo::GetAlphaOperation(this);
    ProGL::Private::TextureImpl::getContext(this, &v6);
    ProGL::ContextHandle::getShareGroup(&v6, &v8);
    v9 = AlphaOperation;
    ProGL::ShareGroup::ShareGroup(&v10, &v8);
    ProGL::ContextHandle::~ContextHandle(&v6);
    v7 = 1;
    if (v5)
    {
      return PCMutex::unlock(v5);
    }
  }

  return result;
}

void sub_25FE4C754(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProGL::TextureHandle::bind(OZChannelBase **this, ProGL::GL *a2, GLenum a3)
{
  Serializer = OZChannelBase::getSerializer(*this);
  PCSpinLock::lock(Serializer);
  ProGL::Private::TextureImpl::bind(*this, a2, a3);
  PCSpinLock::unlock(Serializer);
}

void sub_25FE4C7E0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProGL::TextureHandle::unbind(OZChannelBase **this, ProGL::GL *a2)
{
  Serializer = OZChannelBase::getSerializer(*this);
  PCSpinLock::lock(Serializer);
  ProGL::Private::TextureImpl::unbind(*this, a2);
  PCSpinLock::unlock(Serializer);
}

void sub_25FE4C854(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

uint64_t ProGL::TextureHandle::isBound(ProGL::Private::TextureImpl **this)
{
  v2 = *this;
  if (!v2)
  {
    return 0;
  }

  Serializer = OZChannelBase::getSerializer(v2);
  PCSpinLock::lock(Serializer);
  isBound = ProGL::Private::TextureImpl::isBound(*this);
  PCSpinLock::unlock(Serializer);
  return isBound;
}

void sub_25FE4C8CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProGL::TextureHandle::texParameter(OZChannelBase **this, ProGL::GL *a2, signed int a3, GLint a4)
{
  Serializer = OZChannelBase::getSerializer(*this);
  PCSpinLock::lock(Serializer);
  ProGL::Private::TextureImpl::texParameter(*this, a2, a3, a4);
  PCSpinLock::unlock(Serializer);
}

void sub_25FE4C958(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProGL::TextureHandle::texImage2D(OZChannelBase **this, ProGL::GL *a2, GLenum a3, GLint a4, GLint a5, GLsizei a6, GLsizei a7, GLint a8, GLenum a9, GLenum a10, GLvoid *a11)
{
  Serializer = OZChannelBase::getSerializer(*this);
  PCSpinLock::lock(Serializer);
  ProGL::Private::TextureImpl::texImage2D(*this, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  PCSpinLock::unlock(Serializer);
}

void sub_25FE4CA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  PCLockSentry<PCSpinLock>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void sub_25FE4CAD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void sub_25FE4CB84(void *a1)
{
  __cxa_begin_catch(a1);
  __cxa_rethrow();
}

uint64_t anonymous namespace::addTexture(_anonymous_namespace_ *this, ProGL::Private::TextureImpl *a2)
{
  AlphaOperation = HGGLBlendingInfo::GetAlphaOperation(this);
  ProGL::Private::TextureImpl::getContext(this, &v7);
  ProGL::ContextHandle::getShareGroup(&v7, &v9);
  v11 = AlphaOperation;
  ProGL::ShareGroup::ShareGroup(&v12, &v9);
  ProGL::ContextHandle::~ContextHandle(&v7);
  v10 = 1;
  LODWORD(v7) = v11;
  ProGL::ShareGroup::ShareGroup(v8, &v12);
  v8[1] = this;
  result = std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::__emplace_unique_key_args<std::pair<unsigned int,ProGL::ShareGroup>,std::pair<std::pair<unsigned int,ProGL::ShareGroup> const,ProGL::Private::TextureImpl *>>(v5, &v7);
  if (v4)
  {
    return PCMutex::unlock(v4);
  }

  return result;
}

void sub_25FE4CC80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  PCLockSentry<PCMutex>::~PCLockSentry(va);
  _Unwind_Resume(a1);
}

void ProGL::findTextureInPool(ProGL *this@<X0>, void *a2@<X8>)
{
  v4 = *this;
  v5 = *(this + 1);
  v19 = *this;
  v20 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
    v21[0] = *(this + 1);
    *(v21 + 12) = *(this + 28);
    v17 = v4;
    v18 = v5;
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  else
  {
    v21[0] = *(this + 1);
    *(v21 + 12) = *(this + 28);
    v17 = v4;
    v18 = 0;
  }

  v7 = ProGL::ContextHandle::operator void (ProGL::ContextHandle::*)(void)const(&v17);
  if (v6)
  {
    v8 = (v6 & 1 | v7) == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = v8;
  ProGL::ContextHandle::~ContextHandle(&v17);
  if (!v7 && v9)
  {
    ProGL::getCurrentContext(&v17);
    ProGL::ContextHandle::operator=(&v19, &v17);
    LODWORD(v21[0]) = ProGL::ContextHandle::getVirtualScreen(&v19);
    ProGL::ContextHandle::~ContextHandle(&v17);
  }

  v17 = v19;
  v18 = v20;
  if (v20)
  {
    atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
  }

  v11 = ProGL::ContextHandle::operator void (ProGL::ContextHandle::*)(void)const(&v17);
  if (v10)
  {
    v12 = (v10 & 1 | v11) == 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = v12;
  ProGL::ContextHandle::~ContextHandle(&v17);
  if (v11 || !v13)
  {
    LOBYTE(v18) = 1;
    {
    }

    *a2 = 0;
    a2[1] = 0;
    if (v14)
    {
      PCMutex::unlock(v14);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  ProGL::ContextHandle::~ContextHandle(&v19);
}

void sub_25FE4D028(_Unwind_Exception *a1, uint64_t a2, std::__shared_weak_count *a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  if (a3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a3);
  }

  PCLockSentry<PCMutex>::~PCLockSentry(va);
  ProGL::ContextHandle::~ContextHandle(va1);
  _Unwind_Resume(a1);
}

uint64_t std::multimap<ProGL::TextureDescription,ProGL::Private::TextureImpl *,anonymous namespace::CompareTextureDescription,std::allocator<std::pair<ProGL::TextureDescription const,ProGL::Private::TextureImpl *>>>::find[abi:ne200100](uint64_t a1, uint64_t a2)
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
    if (v6)
    {
      v7 = 8;
    }

    else
    {
      v7 = 0;
    }

    if (!v6)
    {
      v5 = v3;
    }

    v3 = *(v3 + v7);
  }

  while (v3);
  {
    return v2;
  }

  return v5;
}

void ProGL::createTextureFromPool(ProGL *this@<X0>, ProGL::GL *a2@<X1>, HGGLBlendingInfo **a3@<X8>)
{
  v7 = *(a2 + 1);
  v27 = *a2;
  v28 = v7;
  if (v7)
  {
    atomic_fetch_add_explicit(v7 + 1, 1uLL, memory_order_relaxed);
  }

  v8 = ProGL::ContextHandle::operator void (ProGL::ContextHandle::*)(void)const(&v27);
  if (v9)
  {
    v10 = (v9 & 1 | v8) == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v8 || (v11 & 1) == 0)
  {
    ProGL::ContextHandle::~ContextHandle(&v27);
  }

  else
  {
    ProGL::GL::getPGLContextHandle(this, v30);
    v13 = ProGL::ContextHandle::operator void (ProGL::ContextHandle::*)(void)const(v30);
    if (v12)
    {
      v14 = (v12 & 1 | v13) == 0;
    }

    else
    {
      v14 = 1;
    }

    v15 = v14;
    ProGL::ContextHandle::~ContextHandle(v30);
    ProGL::ContextHandle::~ContextHandle(&v27);
    if (!v13 && v15)
    {
      *a3 = 0;
      a3[1] = 0;
      return;
    }
  }

  *a3 = 0;
  a3[1] = 0;
  v16 = *(a2 + 1);
  v27 = *a2;
  v28 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(v16 + 1, 1uLL, memory_order_relaxed);
  }

  v18 = ProGL::ContextHandle::operator void (ProGL::ContextHandle::*)(void)const(&v27);
  if (v17)
  {
    v19 = (v17 & 1 | v18) == 0;
  }

  else
  {
    v19 = 1;
  }

  v20 = v19;
  ProGL::ContextHandle::~ContextHandle(&v27);
  if (!v18 && v20)
  {
    v21 = *(a2 + 1);
    v27 = *a2;
    v28 = v21;
    if (v21)
    {
      atomic_fetch_add_explicit(v21 + 1, 1uLL, memory_order_relaxed);
    }

    v29[0] = *(a2 + 1);
    *(v29 + 12) = *(a2 + 28);
    ProGL::GL::getPGLContextHandle(this, v30);
    ProGL::ContextHandle::operator=(&v27, v30);
    LODWORD(v29[0]) = ProGL::ContextHandle::getVirtualScreen(&v27);
    ProGL::ContextHandle::~ContextHandle(v30);
    ProGL::findTextureInPool(&v27, v30);
    v23 = v30[0];
    v22 = v30[1];
    *a3 = v30[0];
    a3[1] = v22;
    ProGL::ContextHandle::~ContextHandle(&v27);
    if (!v23)
    {
      goto LABEL_34;
    }

LABEL_36:
    if (HGGLBlendingInfo::GetAlphaOperation(v23))
    {
      v25 = ProGL::TextureHandle::detach;
    }

    else
    {
      v25 = 0;
    }

    goto LABEL_39;
  }

  ProGL::findTextureInPool(a2, &v27);
  v23 = v27;
  v26 = v28;
  *a3 = v27;
  a3[1] = v26;
  if (v23)
  {
    goto LABEL_36;
  }

LABEL_34:
  v25 = 0;
LABEL_39:
  if (!v25)
  {
    ProGL::createTexture(this, v24);
  }
}

void anonymous namespace::evictIfNecessary(uint64_t a1, uint64_t a2, ProGL::Private::TextureImpl **a3)
{
  {
    return;
  }

  __p = 0;
  v22 = 0;
  v23 = 0;
  while (1)
  {
    {
      goto LABEL_7;
    }

    {
      break;
    }

LABEL_7:
    v6 = (v5 + 8 * (v4 >> 9));
    v7 = *v6 + 8 * (v4 & 0x1FF);
    {
      v8 = 0;
    }

    else
    {
      v8 = v7;
    }

    if (v8 == *v6)
    {
      v9 = *(v6 - 1);
      v6 -= 8;
      v8 = v9 + 4096;
    }

    v11 = *(v8 - 8);
    v10 = (v8 - 8);
    v12 = *(v11 + 80);
    v13 = v22;
    if (v22 >= v23)
    {
      v15 = (v22 - __p) >> 3;
      if ((v15 + 1) >> 61)
      {
        std::vector<double>::__throw_length_error[abi:ne200100]();
      }

      v16 = (v23 - __p) >> 2;
      if (v16 <= v15 + 1)
      {
        v16 = v15 + 1;
      }

      if (v23 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v17 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<HGRef<HGBitmap>>>(&__p, v17);
      }

      v18 = (8 * v15);
      *v18 = v12;
      v14 = (8 * v15 + 8);
      v19 = v18 - (v22 - __p);
      memcpy(v19, __p, v22 - __p);
      v20 = __p;
      __p = v19;
      v22 = v14;
      v23 = 0;
      if (v20)
      {
        operator delete(v20);
      }
    }

    else
    {
      *v22 = v12;
      v14 = v13 + 1;
    }

    v22 = v14;
  }

  ProGL::Private::deleteTextures(__p, v22, a3);
  if (__p)
  {
    v22 = __p;
    operator delete(__p);
  }
}

void sub_25FE4D574(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ProGL::clearTexturePool(ProGL *this)
{
  if (v1)
  {
    PCMutex::unlock(v1);
  }
}

void anonymous namespace::evictEverything(_anonymous_namespace_ *this)
{
  if (v1)
  {
    std::vector<ProGL::Private::TextureImpl *>::vector[abi:ne200100](&__p, v1);
    v3 = __p;
    {
      do
      {
        *v3++ = v5[10];
        v6 = v5[1];
        if (v6)
        {
          do
          {
            v7 = v6;
            v6 = *v6;
          }

          while (v6);
        }

        else
        {
          do
          {
            v7 = v5[2];
            v8 = *v7 == v5;
            v5 = v7;
          }

          while (!v8);
        }

        v5 = v7;
      }

      while (v7 != v4);
      v3 = __p;
    }

    ProGL::Private::deleteTextures(v3, v18, v2);
    *v9 = v10;
    v9[2] = 0;
    *v10 = 0;
    v14 = (v13 - v12) >> 3;
    if (v14 >= 3)
    {
      do
      {
        operator delete(*v12);
        v15 = v11[2];
        v12 = (v11[1] + 8);
        v11[1] = v12;
        v14 = (v15 - v12) >> 3;
      }

      while (v14 > 2);
    }

    if (v14 == 1)
    {
      v16 = 256;
    }

    else
    {
      if (v14 != 2)
      {
        goto LABEL_17;
      }

      v16 = 512;
    }

    v11[4] = v16;
LABEL_17:
    if (__p)
    {
      v18 = __p;
      operator delete(__p);
    }
  }
}

void sub_25FE4D73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ProGL::Private::cleanUpTexturePool(ProGL::Private *this)
{
  ProGL::clearTexturePool(this);
  {
  }

  {
    MEMORY[0x2666E9F00](v1, 0x1020C4062D53EE8);
  }

  {
    result = MEMORY[0x2666E9F00](v3, 0x1080C40BE8D5F09);
  }

  return result;
}

CGColorSpace **ProGL::TextureHandle::setColorSpace(CGColorSpace **this, CGColorSpace **a2)
{
  if (*this)
  {
    return PCCFRef<CGColorSpace *>::operator=(*this + 26, a2);
  }

  return this;
}

CGColorSpace **ProGL::TextureHandle::getColorSpace@<X0>(CGColorSpace **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v3 = *this;
  if (*this)
  {
    v4 = *(v3 + 26);
    if (v4)
    {
      PCCFRefTraits<CGColorSpace *>::retain(*(v3 + 26));
    }

    *a2 = v4;
    v5 = 0;
    return PCCFRef<CGColorSpace *>::~PCCFRef(&v5);
  }

  return this;
}

__n128 ProGL::TextureHandle::setTextureCoords(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    result = *a2;
    *(v2 + 232) = *(a2 + 16);
    *(v2 + 216) = result;
  }

  return result;
}

__n128 ProGL::TextureHandle::getTextureCoords@<Q0>(ProGL::TextureHandle *this@<X0>, __n128 *a2@<X8>)
{
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  a2[1] = result;
  v7 = *this;
  if (*this)
  {
    result = *(v7 + 216);
    v8 = *(v7 + 232);
    *a2 = result;
    a2[1] = v8;
  }

  return result;
}

void std::__tree<std::__value_type<std::pair<unsigned int,ProGL::Private::TextureImpl *>,ProGL::Private::Any>,std::__map_value_compare<std::pair<unsigned int,ProGL::Private::TextureImpl *>,std::__value_type<std::pair<unsigned int,ProGL::Private::TextureImpl *>,ProGL::Private::Any>,std::less<std::pair<unsigned int,ProGL::Private::TextureImpl *>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::Private::TextureImpl *>,ProGL::Private::Any>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<unsigned int,ProGL::Private::TextureImpl *>,ProGL::Private::Any>,std::__map_value_compare<std::pair<unsigned int,ProGL::Private::TextureImpl *>,std::__value_type<std::pair<unsigned int,ProGL::Private::TextureImpl *>,ProGL::Private::Any>,std::less<std::pair<unsigned int,ProGL::Private::TextureImpl *>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::Private::TextureImpl *>,ProGL::Private::Any>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<unsigned int,ProGL::Private::TextureImpl *>,ProGL::Private::Any>,std::__map_value_compare<std::pair<unsigned int,ProGL::Private::TextureImpl *>,std::__value_type<std::pair<unsigned int,ProGL::Private::TextureImpl *>,ProGL::Private::Any>,std::less<std::pair<unsigned int,ProGL::Private::TextureImpl *>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::Private::TextureImpl *>,ProGL::Private::Any>>>::destroy(a1, a2[1]);
    ProGL::Private::Any::~Any((a2 + 6));

    operator delete(a2);
  }
}

uint64_t std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::__erase_unique<std::pair<unsigned int,ProGL::ShareGroup>>(uint64_t **a1, uint64_t a2)
{
  v3 = std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::find<std::pair<unsigned int,ProGL::ShareGroup>>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,PVInstructionGraphNode * {__strong}>>>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::find<std::pair<unsigned int,ProGL::ShareGroup>>(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 8);
  v4 = std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::__lower_bound<std::pair<unsigned int,ProGL::ShareGroup>>(a1, a2, *(a1 + 8), (a1 + 8));
  if (v3 == v4)
  {
    return v3;
  }

  v5 = v4;
  v6 = *(v4 + 8);
  if (*a2 < v6 || v6 >= *a2 && ProGL::operator<((a2 + 8), v4 + 5))
  {
    return v3;
  }

  return v5;
}

uint64_t *std::__tree<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::__map_value_compare<std::pair<unsigned int,ProGL::ShareGroup>,std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>,std::less<std::pair<unsigned int,ProGL::ShareGroup>>,true>,std::allocator<std::__value_type<std::pair<unsigned int,ProGL::ShareGroup>,ProGL::Private::TextureImpl *>>>::__lower_bound<std::pair<unsigned int,ProGL::ShareGroup>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v7 = *(v5 + 8);
      if (v7 >= *a2)
      {
        if (*a2 >= v7)
        {
          v8 = ProGL::operator<(v5 + 5, (a2 + 8));
          if (v8)
          {
            v9 = 8;
          }

          else
          {
            v9 = 0;
          }

          if (!v8)
          {
            a4 = v5;
          }

          v5 = (v5 + v9);
        }

        else
        {
          a4 = v5;
        }
      }

      else
      {
        ++v5;
      }

      v5 = *v5;
    }

    while (v5);
  }

  return a4;
}

void anonymous namespace::TextureImplDelete::operator()(uint64_t a1)
{
  v14 = a1;
  if (ProGL::Private::TextureImpl::isExternallyOwned(a1))
  {
    goto LABEL_10;
  }

  if (!HGGLBlendingInfo::GetAlphaOperation(a1))
  {
LABEL_10:
    if (a1)
    {
      v9 = *(a1 + 256);
      if (v9)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v9);
      }

      PCCFRef<CGColorSpace *>::~PCCFRef((a1 + 208));
      std::__tree<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::shared_ptr<OZFontFace>>>>::destroy(a1 + 176, *(a1 + 184));
      ProGL::ContextHandle::~ContextHandle((a1 + 24));
      PCSpinLock::~PCSpinLock((a1 + 16));
      v10 = *(a1 + 8);
      if (v10)
      {
        std::__shared_weak_count::__release_weak(v10);
      }

      JUMPOUT(0x2666E9F00);
    }

    return;
  }

  {
    v19 = 1;
    {
      OZChannelBase::setRangeName(a1, v6);
      Description = ProGL::Private::TextureImpl::getDescription(a1);
      v12 = *(Description + 8);
      v15[0] = *Description;
      v15[1] = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(v12 + 1, 1uLL, memory_order_relaxed);
      }

      v13 = *(Description + 16);
      *&v16[12] = *(Description + 28);
      *v16 = v13;
      v17 = a1;
      operator new();
    }

    if (v4)
    {
      PCMutex::unlock(v4);
    }
  }

  ProGL::Private::deleteTextures(&v14, v15, v3);
}