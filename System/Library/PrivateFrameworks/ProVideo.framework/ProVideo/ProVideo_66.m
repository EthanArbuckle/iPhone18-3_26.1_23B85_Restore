uint64_t HgcColorBalanceNoClipGammaOne::SetParameter(HgcColorBalanceNoClipGammaOne *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 62) + 176) = a3;
      return v7;
    }

    if (a2 == 3)
    {
      v9 = *(this + 62);
      if (*(v9 + 32) != a3.n128_f32[0] || *(v9 + 36) != a4 || *(v9 + 40) != a5 || *(v9 + 44) != a6)
      {
        *(v9 + 32) = a3.n128_u32[0];
        *(v9 + 36) = a4;
        *(v9 + 40) = a5;
        *(v9 + 44) = a6;
        goto LABEL_21;
      }

      return 0;
    }
  }

  else
  {
    if (!a2)
    {
      v10 = *(this + 62);
      if (*v10 != a3.n128_f32[0] || *(v10 + 4) != a4 || *(v10 + 8) != a5 || *(v10 + 12) != a6)
      {
        *v10 = a3.n128_u32[0];
        *(v10 + 4) = a4;
        *(v10 + 8) = a5;
        *(v10 + 12) = a6;
        goto LABEL_21;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v8 = *(this + 62);
      if (*(v8 + 16) != a3.n128_f32[0] || *(v8 + 20) != a4 || *(v8 + 24) != a5 || *(v8 + 28) != a6)
      {
        *(v8 + 16) = a3.n128_u32[0];
        *(v8 + 20) = a4;
        *(v8 + 24) = a5;
        *(v8 + 28) = a6;
LABEL_21:
        v7 = 1;
        *(this + 126) = 1;
        HGNode::ClearBits(this, a2, a7);
        return v7;
      }

      return 0;
    }
  }

  return v7;
}

float HgcColorBalanceNoClipGammaOne::GetParameter(HgcColorBalanceNoClipGammaOne *this, int a2, float *a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = *(this + 62);
      *a3 = v7[44];
      a3[1] = v7[45];
      a3[2] = v7[46];
      v4 = v7 + 47;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v5 = *(this + 62);
      *a3 = v5[8];
      a3[1] = v5[9];
      a3[2] = v5[10];
      v4 = v5 + 11;
    }
  }

  else if (a2)
  {
    if (a2 != 1)
    {
      return result;
    }

    v3 = *(this + 62);
    *a3 = v3[4];
    a3[1] = v3[5];
    a3[2] = v3[6];
    v4 = v3 + 7;
  }

  else
  {
    v6 = *(this + 62);
    *a3 = *v6;
    a3[1] = v6[1];
    a3[2] = v6[2];
    v4 = v6 + 3;
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

HGNode *HgcColorBalanceNoClipGammaOne::GetOutput(HgcColorBalanceNoClipGammaOne *this, HGRenderer *a2, __n128 a3, double a4, int32x2_t a5)
{
  if (*(this + 126))
  {
    HgcColorBalanceNoClipGammaOne::Setup(this, a2);
    v7 = *(this + 62);
    *(this + 27) = *(v7 + 48);
    *(this + 28) = *(v7 + 64);
    *(this + 29) = *(v7 + 80);
    a3 = *(v7 + 96);
    *(this + 30) = a3;
    *(this + 126) = 0;
  }

  return HGColorMatrix::GetOutput(this, a2, a3.n128_f64[0], a4, a5);
}

const char *HgcColorBalanceClip::GetProgram(HgcColorBalanceClip *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000497\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0*half4(hg_Params[0]);\n    r1 = half4(hg_Params[1])*r0.wwww + r1;\n    r2.xyz = pow(fabs(r1.xyz), half3(hg_Params[2].xyz));\n    r1.xyz = select(r2.xyz, -r2.xyz, r1.xyz < 0.00000h);\n    r2.xyz = r1.xyz / fmax(r1.w, 6.10350e-05h);\n    r3.xyz = fmin(c0.xxx, r2.xyz);\n    r2.xyz = select(r2.xyz, r3.xyz, half3(hg_Params[4].xxx) < 0.00000h);\n    r3.xyz = fmax(c0.yyy, r2.xyz);\n    r2.xyz = select(r2.xyz, r3.xyz, half3(hg_Params[4].yyy) < 0.00000h);\n    r2.xyz = r2.xyz*r1.www;\n    r2.w = r1.w;\n    output.color0 = mix(float4(r0), float4(r2), hg_Params[3]);\n    return output;\n}\n//MD5=cc94ffa7:a8f1aded:b91a8e07:d022c466\n//SIG=00400000:00000001:00000001:00000001:0001:0005:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000460\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0*hg_Params[0];\n    r1 = hg_Params[1]*r0.wwww + r1;\n    r2.xyz = pow(fabs(r1.xyz), hg_Params[2].xyz);\n    r1.xyz = select(r2.xyz, -r2.xyz, r1.xyz < 0.00000f);\n    r2.xyz = r1.xyz / fmax(r1.w, 1.00000e-06f);\n    r3.xyz = fmin(c0.xxx, r2.xyz);\n    r2.xyz = select(r2.xyz, r3.xyz, hg_Params[4].xxx < 0.00000f);\n    r3.xyz = fmax(c0.yyy, r2.xyz);\n    r2.xyz = select(r2.xyz, r3.xyz, hg_Params[4].yyy < 0.00000f);\n    r2.xyz = r2.xyz*r1.www;\n    r2.w = r1.w;\n    output.color0 = mix(r0, r2, hg_Params[3]);\n    return output;\n}\n//MD5=64dd2f92:8f08076c:462fe5df:9f8ff622\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005b4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = r0*hg_ProgramLocal0;\n    r1 = hg_ProgramLocal1*r0.wwww + r1;\n    r2.xyz = pow(abs(r1.xyz), hg_ProgramLocal2.xyz);\n    r1.xyz = vec3(r1.x < 0.00000 ? -r2.x : r2.x, r1.y < 0.00000 ? -r2.y : r2.y, r1.z < 0.00000 ? -r2.z : r2.z);\n    r2.xyz = r1.xyz / max(r1.w, 1.00000e-06);\n    r3.xyz = min(c0.xxx, r2.xyz);\n    r2.xyz = vec3(hg_ProgramLocal4.x < 0.00000 ? r3.x : r2.x, hg_ProgramLocal4.x < 0.00000 ? r3.y : r2.y, hg_ProgramLocal4.x < 0.00000 ? r3.z : r2.z);\n    r3.xyz = max(c0.yyy, r2.xyz);\n    r2.xyz = vec3(hg_ProgramLocal4.y < 0.00000 ? r3.x : r2.x, hg_ProgramLocal4.y < 0.00000 ? r3.y : r2.y, hg_ProgramLocal4.y < 0.00000 ? r3.z : r2.z);\n    r2.xyz = r2.xyz*r1.www;\n    r2.w = r1.w;\n    gl_FragColor = mix(r0, r2, hg_ProgramLocal3);\n}\n//MD5=a81534bc:fd1c914e:7d55a0c7:efeaf040\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF31F28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF32028(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF32068()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF32060);
}

uint64_t HgcColorBalanceClip::BindTexture(HgcColorBalanceClip *this, HGHandler *a2, int a3)
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

uint64_t HgcColorBalanceClip::Bind(HgcColorBalanceClip *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorBalanceClip::RenderTile(HgcColorBalanceClip *this, HGTile *a2)
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
          v13 = *(v6 + v10 - 16);
          v12 = *(v6 + v10);
          v14 = *(this + 51);
          v15 = *(v14 + 16);
          v16 = vaddq_f32(vmulq_f32(v13, *v14), vmulq_laneq_f32(v15, v13, 3));
          v17 = vaddq_f32(vmulq_f32(v12, *v14), vmulq_laneq_f32(v15, v12, 3));
          v18 = vabsq_f32(v16);
          v19 = vabsq_f32(v17);
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
          v34 = vaddq_f32(vsubq_f32(v28, v26), v33);
          v35 = vsubq_f32(vsubq_f32(v24, v22), vmulq_f32(vmulq_f32(v31, v32), v24));
          v36 = vsubq_f32(vsubq_f32(v27, v22), vmulq_f32(vmulq_f32(v31, v33), v27));
          v37 = *(v14 + 192);
          v38 = *(v14 + 208);
          v39 = *(v14 + 224);
          v40 = *(v14 + 240);
          v41 = vaddq_f32(vaddq_f32(v29, v32), vmulq_f32(v35, vaddq_f32(vaddq_f32(v39, vmulq_f32(v40, v35)), vmulq_f32(vmulq_f32(v35, v35), vaddq_f32(v37, vmulq_f32(v38, v35))))));
          v42 = vaddq_f32(v34, vmulq_f32(v36, vaddq_f32(vaddq_f32(v39, vmulq_f32(v40, v36)), vmulq_f32(vmulq_f32(v36, v36), vaddq_f32(v37, vmulq_f32(v38, v36))))));
          v44 = *(v14 + 32);
          v43 = *(v14 + 48);
          v45 = vmulq_f32(v44, v41);
          v46 = vmulq_f32(v44, v42);
          v48 = *(v14 + 256);
          v47 = *(v14 + 272);
          v49 = vmaxq_f32(v45, v48);
          v50 = vmaxq_f32(v46, v48);
          v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
          v52 = vcvtq_f32_s32(vcvtq_s32_f32(v50));
          v53 = vsubq_f32(v51, vandq_s8(v22, vcgtq_f32(v51, v49)));
          v54 = vsubq_f32(v52, vandq_s8(v22, vcgtq_f32(v52, v50)));
          v55 = vsubq_f32(v49, v53);
          v56 = vsubq_f32(v50, v54);
          v57 = *(v14 + 288);
          v58 = *(v14 + 304);
          v59 = vmulq_f32(v56, vaddq_f32(v58, vmulq_f32(v56, vaddq_f32(v47, vmulq_f32(v57, v56)))));
          v60 = vaddq_f32(v22, vmulq_f32(v55, vaddq_f32(v58, vmulq_f32(v55, vaddq_f32(v47, vmulq_f32(v57, v55))))));
          v61 = vcvtq_s32_f32(v53);
          v62 = vcvtq_s32_f32(v54);
          v63 = *(v14 + 320);
          v64 = *(v14 + 336);
          v65 = veorq_s8(vandq_s8(v64, v16), vmulq_f32(v60, vshlq_n_s32(vaddq_s32(v63, v61), 0x17uLL)));
          v66 = veorq_s8(vandq_s8(v64, v17), vmulq_f32(vaddq_f32(v22, v59), vshlq_n_s32(vaddq_s32(v63, v62), 0x17uLL)));
          v67 = *(v14 + 352);
          v68 = *(v14 + 368);
          v69 = vbslq_s8(v67, v16, v65);
          v70 = vbslq_s8(v67, v17, v66);
          v71 = vmaxq_f32(vdupq_laneq_s32(v69, 3), v68);
          v72 = vmaxq_f32(vdupq_laneq_s32(v70, 3), v68);
          v73 = *(v14 + 384);
          v74 = *(v14 + 400);
          v75 = vmulq_f32(vrecpeq_f32(v71), v73);
          v76 = vmulq_f32(vrecpeq_f32(v72), v73);
          v77 = vmulq_f32(vmulq_f32(v75, vrecpsq_f32(v75, v71)), v69);
          v78 = vmulq_f32(vmulq_f32(v76, vrecpsq_f32(v76, v72)), v70);
          v79 = vcgtq_f32(v74, vdupq_lane_s32(*&v20, 0));
          v80 = vbslq_s8(v79, vminq_f32(v77, v22), v77);
          v81 = vbslq_s8(v79, vminq_f32(v78, v22), v78);
          v82 = vcgtq_f32(v74, vdupq_lane_s32(*&v20, 1));
          v83 = (v5 + v10);
          v83[-1] = vaddq_f32(v13, vmulq_f32(v43, vsubq_f32(vbslq_s8(v67, v16, vmulq_laneq_f32(vbslq_s8(v82, vmaxq_f32(v80, v74), v80), v69, 3)), v13)));
          *v83 = vaddq_f32(v12, vmulq_f32(v43, vsubq_f32(vbslq_s8(v67, v17, vmulq_laneq_f32(vbslq_s8(v82, vmaxq_f32(v81, v74), v81), v70, 3)), v12)));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v84 = *(v6 + 16 * v9);
        v85 = *(this + 51);
        v86 = vaddq_f32(vmulq_f32(v84, *v85), vmulq_laneq_f32(*(v85 + 16), v84, 3));
        v87 = vabsq_f32(v86);
        v88 = *(v85 + 64);
        v89 = *(v85 + 96);
        v90 = vorrq_s8(vandq_s8(*(v85 + 80), v87), v89);
        v91 = vandq_s8(v89, vcgtq_f32(v90, *(v85 + 160)));
        v92 = vsubq_f32(vsubq_f32(v90, v89), vmulq_f32(vmulq_f32(*(v85 + 176), v91), v90));
        v93 = vmaxq_f32(vmulq_f32(*(v85 + 32), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v87, 0x17uLL)), vandq_s8(*(v85 + 128), vcgtq_f32(*(v85 + 112), v87))), *(v85 + 144)), v91), vmulq_f32(v92, vaddq_f32(vaddq_f32(*(v85 + 224), vmulq_f32(*(v85 + 240), v92)), vmulq_f32(vmulq_f32(v92, v92), vaddq_f32(*(v85 + 192), vmulq_f32(*(v85 + 208), v92))))))), *(v85 + 256));
        v94 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
        v95 = vsubq_f32(v94, vandq_s8(v89, vcgtq_f32(v94, v93)));
        v96 = vsubq_f32(v93, v95);
        v97 = veorq_s8(vandq_s8(*(v85 + 336), v86), vmulq_f32(vaddq_f32(v89, vmulq_f32(v96, vaddq_f32(*(v85 + 304), vmulq_f32(v96, vaddq_f32(*(v85 + 272), vmulq_f32(*(v85 + 288), v96)))))), vshlq_n_s32(vaddq_s32(*(v85 + 320), vcvtq_s32_f32(v95)), 0x17uLL)));
        v98 = *(v85 + 352);
        v99 = vbslq_s8(v98, v86, v97);
        v100 = vmaxq_f32(vdupq_laneq_s32(v99, 3), *(v85 + 368));
        v101 = *(v85 + 400);
        v102 = vmulq_f32(vrecpeq_f32(v100), *(v85 + 384));
        v103 = vmulq_f32(vmulq_f32(v102, vrecpsq_f32(v102, v100)), v99);
        v104 = vbslq_s8(vcgtq_f32(v101, vdupq_lane_s32(*&v88, 0)), vminq_f32(v103, v89), v103);
        *(v5 + 16 * v9) = vaddq_f32(v84, vmulq_f32(*(v85 + 48), vsubq_f32(vbslq_s8(v98, v86, vmulq_laneq_f32(vbslq_s8(vcgtq_f32(v101, vdupq_lane_s32(*&v88, 1)), vmaxq_f32(v104, v101), v104), v99, 3)), v84)));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcColorBalanceClip::GetDOD(HgcColorBalanceClip *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcColorBalanceClip::GetROI(HgcColorBalanceClip *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcColorBalanceClip::HgcColorBalanceClip(HgcColorBalanceClip *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725B368;
  operator new();
}

void HgcColorBalanceClip::~HgcColorBalanceClip(HGNode *this)
{
  *this = &unk_28725B368;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C407DC911DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcColorBalanceClip::~HgcColorBalanceClip(this);

  HGObject::operator delete(v1);
}

uint64_t HgcColorBalanceClip::SetParameter(HgcColorBalanceClip *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcColorBalanceClip::GetParameter(HgcColorBalanceClip *this, unsigned int a2, float *a3)
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

const char *HgcColorBalanceClipGammaOne::GetProgram(HgcColorBalanceClipGammaOne *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000425\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0*half4(hg_Params[0]);\n    r1 = half4(hg_Params[1])*r0.wwww + r1;\n    r2.xyz = r1.xyz / fmax(r1.w, 6.10350e-05h);\n    r3.xyz = fmin(c0.xxx, r2.xyz);\n    r2.xyz = select(r2.xyz, r3.xyz, half3(hg_Params[3].xxx) < 0.00000h);\n    r3.xyz = fmax(c0.yyy, r2.xyz);\n    r2.xyz = select(r2.xyz, r3.xyz, half3(hg_Params[3].yyy) < 0.00000h);\n    r2.xyz = r2.xyz*r1.www;\n    r2.w = r1.w;\n    output.color0 = mix(float4(r0), float4(r2), hg_Params[2]);\n    return output;\n}\n//MD5=83f75fc7:4ca1b897:e3759a6f:08207cfa\n//SIG=00400000:00000001:00000001:00000001:0001:0004:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003f5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0*hg_Params[0];\n    r1 = hg_Params[1]*r0.wwww + r1;\n    r2.xyz = r1.xyz / fmax(r1.w, 1.00000e-06f);\n    r3.xyz = fmin(c0.xxx, r2.xyz);\n    r2.xyz = select(r2.xyz, r3.xyz, hg_Params[3].xxx < 0.00000f);\n    r3.xyz = fmax(c0.yyy, r2.xyz);\n    r2.xyz = select(r2.xyz, r3.xyz, hg_Params[3].yyy < 0.00000f);\n    r2.xyz = r2.xyz*r1.www;\n    r2.w = r1.w;\n    output.color0 = mix(r0, r2, hg_Params[2]);\n    return output;\n}\n//MD5=c8cac95c:21f13127:583e3fea:a8bbd9f9\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004e8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = r0*hg_ProgramLocal0;\n    r1 = hg_ProgramLocal1*r0.wwww + r1;\n    r2.xyz = r1.xyz / max(r1.w, 1.00000e-06);\n    r3.xyz = min(c0.xxx, r2.xyz);\n    r2.xyz = vec3(hg_ProgramLocal3.x < 0.00000 ? r3.x : r2.x, hg_ProgramLocal3.x < 0.00000 ? r3.y : r2.y, hg_ProgramLocal3.x < 0.00000 ? r3.z : r2.z);\n    r3.xyz = max(c0.yyy, r2.xyz);\n    r2.xyz = vec3(hg_ProgramLocal3.y < 0.00000 ? r3.x : r2.x, hg_ProgramLocal3.y < 0.00000 ? r3.y : r2.y, hg_ProgramLocal3.y < 0.00000 ? r3.z : r2.z);\n    r2.xyz = r2.xyz*r1.www;\n    r2.w = r1.w;\n    gl_FragColor = mix(r0, r2, hg_ProgramLocal2);\n}\n//MD5=61be9d35:e7c0e125:f4958337:6edc34f0\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF32A68(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF32B68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF32BA8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF32BA0);
}

uint64_t HgcColorBalanceClipGammaOne::BindTexture(HgcColorBalanceClipGammaOne *this, HGHandler *a2, int a3)
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

uint64_t HgcColorBalanceClipGammaOne::Bind(HgcColorBalanceClipGammaOne *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorBalanceClipGammaOne::RenderTile(HgcColorBalanceClipGammaOne *this, HGTile *a2)
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
    do
    {
      if (v4 < 3)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        for (i = v4; i > 2; i -= 3)
        {
          v13 = *(v6 + v9);
          v12 = *(v6 + v9 + 16);
          v14 = *(v6 + v9 + 32);
          v15 = *(this + 51);
          v16 = *(v15 + 16);
          v17 = vaddq_f32(vmulq_f32(v13, *v15), vmulq_laneq_f32(v16, v13, 3));
          v18 = vaddq_f32(vmulq_f32(v12, *v15), vmulq_laneq_f32(v16, v12, 3));
          v19 = vaddq_f32(vmulq_f32(v14, *v15), vmulq_laneq_f32(v16, v14, 3));
          v20 = *(v15 + 64);
          v21 = *(v15 + 80);
          v22 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v20);
          v23 = vmaxq_f32(vdupq_laneq_s32(v18, 3), v20);
          v24 = vmaxq_f32(vdupq_laneq_s32(v19, 3), v20);
          v25 = vmulq_f32(vrecpeq_f32(v22), v21);
          v26 = vmulq_f32(vrecpeq_f32(v23), v21);
          v27 = vmulq_f32(vrecpeq_f32(v24), v21);
          v28 = vmulq_f32(v17, vmulq_f32(v25, vrecpsq_f32(v25, v22)));
          v29 = vmulq_f32(v18, vmulq_f32(v26, vrecpsq_f32(v26, v23)));
          v30 = vmulq_f32(v19, vmulq_f32(v27, vrecpsq_f32(v27, v24)));
          v31 = *(v15 + 96);
          v32 = *(v15 + 112);
          v34 = *(v15 + 32);
          v33 = *(v15 + 48);
          v35 = vcgtq_f32(v32, vdupq_lane_s32(*&v33, 0));
          v36 = vbslq_s8(v35, vminq_f32(v28, v31), v28);
          v37 = vbslq_s8(v35, vminq_f32(v29, v31), v29);
          v38 = vbslq_s8(v35, vminq_f32(v30, v31), v30);
          v39 = vmaxq_f32(v36, v32);
          v40 = vmaxq_f32(v37, v32);
          v41 = vmaxq_f32(v38, v32);
          v42 = vcgtq_f32(v32, vdupq_lane_s32(*&v33, 1));
          v43 = vmulq_laneq_f32(vbslq_s8(v42, v39, v36), v17, 3);
          v44 = *(v15 + 128);
          v45 = (v5 + v9);
          *v45 = vaddq_f32(v13, vmulq_f32(v34, vsubq_f32(vbslq_s8(v44, v17, v43), v13)));
          v45[1] = vaddq_f32(v12, vmulq_f32(v34, vsubq_f32(vbslq_s8(v44, v18, vmulq_laneq_f32(vbslq_s8(v42, v40, v37), v18, 3)), v12)));
          v45[2] = vaddq_f32(v14, vmulq_f32(v34, vsubq_f32(vbslq_s8(v44, v19, vmulq_laneq_f32(vbslq_s8(v42, v41, v38), v19, 3)), v14)));
          v10 += 3;
          v9 += 48;
        }
      }

      if (v10 < v4)
      {
        do
        {
          v46 = *(v6 + 16 * v10);
          v47 = *(this + 51);
          v48 = vaddq_f32(vmulq_f32(v46, *v47), vmulq_laneq_f32(*(v47 + 16), v46, 3));
          v49 = vmaxq_f32(vdupq_laneq_s32(v48, 3), *(v47 + 64));
          v50 = vmulq_f32(vrecpeq_f32(v49), *(v47 + 80));
          v51 = vmulq_f32(v48, vmulq_f32(v50, vrecpsq_f32(v50, v49)));
          v52 = *(v47 + 48);
          v53 = *(v47 + 112);
          v54 = vbslq_s8(vcgtq_f32(v53, vdupq_lane_s32(*&v52, 0)), vminq_f32(v51, *(v47 + 96)), v51);
          *(v5 + 16 * v10++) = vaddq_f32(v46, vmulq_f32(*(v47 + 32), vsubq_f32(vbslq_s8(*(v47 + 128), v48, vmulq_laneq_f32(vbslq_s8(vcgtq_f32(v53, vdupq_lane_s32(*&v52, 1)), vmaxq_f32(v54, v53), v54), v48, 3)), v46)));
        }

        while (v10 < v4);
      }

      ++v3;
      v5 += v7;
      v6 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcColorBalanceClipGammaOne::GetDOD(HgcColorBalanceClipGammaOne *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcColorBalanceClipGammaOne::GetROI(HgcColorBalanceClipGammaOne *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcColorBalanceClipGammaOne::HgcColorBalanceClipGammaOne(HgcColorBalanceClipGammaOne *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725B5B8;
  operator new();
}

void HgcColorBalanceClipGammaOne::~HgcColorBalanceClipGammaOne(HGNode *this)
{
  *this = &unk_28725B5B8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);
}

{
  HgcColorBalanceClipGammaOne::~HgcColorBalanceClipGammaOne(this);

  HGObject::operator delete(v1);
}

uint64_t HgcColorBalanceClipGammaOne::SetParameter(HgcColorBalanceClipGammaOne *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 1)
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
        goto LABEL_28;
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
        goto LABEL_28;
      }

      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        v7 = 0;
        a3.n128_f32[1] = a4;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        *(*(this + 51) + 144) = a3;
        break;
      case 3:
        v10 = *(this + 51);
        if (*(v10 + 32) != a3.n128_f32[0] || *(v10 + 36) != a4 || *(v10 + 40) != a5 || *(v10 + 44) != a6)
        {
          *(v10 + 32) = a3.n128_u32[0];
          *(v10 + 36) = a4;
          *(v10 + 40) = a5;
          *(v10 + 44) = a6;
          goto LABEL_28;
        }

        return 0;
      case 4:
        v8 = *(this + 51);
        if (*(v8 + 48) != a3.n128_f32[0] || *(v8 + 52) != a4 || *(v8 + 56) != a5 || *(v8 + 60) != a6)
        {
          *(v8 + 48) = a3.n128_u32[0];
          *(v8 + 52) = a4;
          *(v8 + 56) = a5;
          *(v8 + 60) = a6;
LABEL_28:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

float HgcColorBalanceClipGammaOne::GetParameter(HgcColorBalanceClipGammaOne *this, int a2, float *a3)
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
      *a3 = v5[4];
      a3[1] = v5[5];
      a3[2] = v5[6];
      v4 = v5 + 7;
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
        *a3 = v6[36];
        a3[1] = v6[37];
        a3[2] = v6[38];
        v4 = v6 + 39;
        break;
      case 3:
        v7 = *(this + 51);
        *a3 = v7[8];
        a3[1] = v7[9];
        a3[2] = v7[10];
        v4 = v7 + 11;
        break;
      case 4:
        v3 = *(this + 51);
        *a3 = v3[12];
        a3[1] = v3[13];
        a3[2] = v3[14];
        v4 = v3 + 15;
        break;
      default:
        return result;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

void HgcColorBalance::HgcColorBalance(HgcColorBalance *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725B808;
  *(v1 + 416) = 0;
  *(v1 + 424) = 0x3F0000003F000000;
  *(v1 + 432) = 1056964608;
  *(v1 + 440) = 0x3F0000003F000000;
  *(v1 + 448) = 1056964608;
  *(v1 + 456) = 0x3F0000003F000000;
  *(v1 + 464) = 1056964608;
  *(v1 + 472) = xmmword_2603429D0;
  *(v1 + 488) = 0;
}

void HgcColorBalance::~HgcColorBalance(HGNode *this)
{
  *this = &unk_28725B808;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);
}

{
  HgcColorBalance::~HgcColorBalance(this);

  HGObject::operator delete(v1);
}

void HgcColorBalance::GetOutput(HgcColorBalance *this, HGRenderer *a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v2 = *(this + 121);
  __asm { FMOV            V0.2S, #1.0 }

  if (*(this + 488))
  {
    v8 = 0;
    v9 = (this + 456);
    do
    {
      v10 = *(v9 - 8) + -0.5 + (*(v9 - 8) + -0.5) * v2;
      *&v32[v8 + 3] = v10;
      v11 = 1.0 - *v9 + 0.5 + (1.0 - *v9 + -0.5) * v2;
      *(&v30 + v8) = v11;
      v12 = *(v9 - 4) + 0.5 + (*(v9 - 4) + -0.5) * v2;
      *&v32[v8++] = v12;
      ++v9;
    }

    while (v8 != 3);
    v13 = 1.0 - fabsf(v30);
    v14 = vsub_f32(_D0, vabs_f32(v31));
  }

  else
  {
    v15 = 0;
    v16 = (v2 + -1.0) * 1.25;
    v17 = (this + 456);
    do
    {
      v18 = *(v17 - 4) + 0.5 + v16 * (*(v17 - 4) + -0.5);
      v19 = *(v17 - 8) + -0.5 + (*(v17 - 8) + -0.5) * v16;
      v20 = *v17++;
      *&v32[v15 + 3] = v19;
      v21 = (1.0 - v20 + -0.5) * v2 * 1.5 + 1.0;
      *(&v30 + v15) = v21;
      v22 = v18;
      *&v32[v15++] = v22;
    }

    while (v15 != 3);
    v13 = vabds_f32(1.0, v30);
    v14 = vabd_f32(_D0, v31);
  }

  v23 = v13;
  v24 = *(this + 118);
  if (v23 < 0.000001)
  {
    v25 = vmovn_s64(vcgtq_f64(vdupq_n_s64(0x3EB0C6F7A0B5ED8DuLL), vcvtq_f64_f32(v14)));
    if (v25.i8[0] & 1) != 0 && (v25.i8[4])
    {
      if (v24 >= 0.0 && *(this + 119) >= 0.0)
      {
        v29 = HGObject::operator new(0x200uLL);
        HgcColorBalanceNoClipGammaOne::HgcColorBalanceNoClipGammaOne(v29);
      }

      v26 = HGObject::operator new(0x1A0uLL);
      HgcColorBalanceClipGammaOne::HgcColorBalanceClipGammaOne(v26);
    }
  }

  if (v24 < 0.0 || *(this + 119) < 0.0)
  {
    v27 = HGObject::operator new(0x1A0uLL);
    HgcColorBalanceClip::HgcColorBalanceClip(v27);
  }

  v28 = HGObject::operator new(0x1A0uLL);
  HgcColorBalanceNoClip::HgcColorBalanceNoClip(v28);
}

void sub_25FF33BA4(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HgcColorBalance::SetParameter(HgcColorBalance *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (*(this + 106) != a3 || *(this + 107) != a4 || *(this + 108) != a5)
      {
        *(this + 106) = a3;
        *(this + 107) = a4;
        *(this + 108) = a5;
        *(this + 109) = 1065353216;
        goto LABEL_24;
      }

      return 0;
    }

    if (a2 == 1)
    {
      if (*(this + 110) != a3 || *(this + 111) != a4 || *(this + 112) != a5)
      {
        *(this + 110) = a3;
        *(this + 111) = a4;
        *(this + 112) = a5;
        *(this + 113) = 1065353216;
        goto LABEL_24;
      }

      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        if (*(this + 114) != a3 || *(this + 115) != a4 || *(this + 116) != a5)
        {
          *(this + 114) = fabsf(a3);
          *(this + 115) = fabsf(a4);
          *(this + 116) = fabsf(a5);
          *(this + 117) = 1065353216;
          goto LABEL_24;
        }

        return 0;
      case 3:
        if (*(this + 120) != a3)
        {
          *(this + 120) = a3;
          goto LABEL_24;
        }

        return 0;
      case 4:
        if (*(this + 118) != a3 || *(this + 119) != a4)
        {
          *(this + 118) = a3;
          *(this + 119) = a4;
LABEL_24:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

uint64_t HgcColorBalance::GetParameter(HgcColorBalance *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return v3;
      }

      *a3 = *(this + 110);
      a3[1] = *(this + 111);
      a3[2] = *(this + 112);
      v4 = *(this + 113);
    }

    else
    {
      *a3 = *(this + 106);
      a3[1] = *(this + 107);
      a3[2] = *(this + 108);
      v4 = *(this + 109);
    }

LABEL_12:
    v5 = 3;
    goto LABEL_13;
  }

  switch(a2)
  {
    case 2:
      *a3 = *(this + 114);
      a3[1] = *(this + 115);
      a3[2] = *(this + 116);
      v4 = *(this + 117);
      goto LABEL_12;
    case 3:
      v6 = *(this + 120);
      *a3 = v6;
      *(a3 + 1) = v6;
      v4 = *(this + 120);
      a3[2] = v4;
      goto LABEL_12;
    case 4:
      *a3 = *(this + 118);
      v4 = *(this + 119);
      v5 = 1;
LABEL_13:
      v3 = 0;
      a3[v5] = v4;
      break;
  }

  return v3;
}

double HgcColorBalanceClip::State::State(HgcColorBalanceClip::State *this)
{
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = xmmword_260344C10;
  *(this + 6) = xmmword_260344BA0;
  *(this + 7) = xmmword_260344C20;
  *(this + 8) = xmmword_260344C30;
  *(this + 9) = xmmword_260344C40;
  *(this + 10) = xmmword_260344C50;
  *(this + 11) = xmmword_260344B50;
  *(this + 12) = xmmword_260344C60;
  *(this + 13) = xmmword_260344C70;
  *(this + 14) = xmmword_260344C80;
  *(this + 15) = xmmword_260344C90;
  *(this + 16) = xmmword_260344CA0;
  *(this + 17) = xmmword_260344CB0;
  *(this + 18) = xmmword_260344CC0;
  *(this + 19) = xmmword_260344CD0;
  *(this + 20) = xmmword_260344CE0;
  *(this + 21) = xmmword_260346D20;
  *(this + 22) = xmmword_260344600;
  *(this + 23) = vdupq_n_s32(0x358637BDu);
  result = 0.00793481058;
  *(this + 24) = xmmword_260345140;
  *(this + 50) = 0;
  *(this + 51) = 0;
  return result;
}

const char *HgcSampleTiledNoise::GetProgram(HgcSampleTiledNoise *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000b73\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(255.0000000, 0.5000000000, 1.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    r0.x = 1.00000h / half(hg_Params[2].x);\n    s0.zw = frag._texCoord0.xy + hg_Params[5].zw;\n    s0.xy = s0.zw/hg_Params[1].xy;\n    s1.zw = floor(s0.xy);\n    s0.x = s1.z*float(r0.x);\n    s0.x = floor(s0.x);\n    s0.y = float(c0.y);\n    s0.x = -s0.x*hg_Params[2].x + s1.z;\n    s2.xy = s0.xy + hg_Params[6].xy;\n    s2.xy = s2.xy*hg_Params[6].zw;\n    s0.x = (float) hg_Texture0.sample(hg_Sampler0, s2.xy).x;\n    s0.x = s0.x*float(c0.x);\n    s0.x = floor(s0.x);\n    s0.x = s1.w + s0.x;\n    s0.y = float(r0.x)*s0.x;\n    s1.x = floor(s0.y);\n    s0.y = float(c0.y);\n    s0.x = -s1.x*hg_Params[2].x + s0.x;\n    s2.xy = s0.xy + hg_Params[6].xy;\n    s2.xy = s2.xy*hg_Params[6].zw;\n    s0.x = (float) hg_Texture0.sample(hg_Sampler0, s2.xy).x;\n    s0.x = s0.x*float(c0.x);\n    s1.x = floor(s0.x);\n    s1.y = float(r0.x)*s1.x;\n    s0.x = s1.w + s1.w;\n    s0.y = s0.x*float(r0.x);\n    s1.y = floor(s1.y);\n    s0.y = floor(s0.y);\n    s1.x = -s1.y*hg_Params[2].x + s1.x;\n    s0.x = -s0.y*hg_Params[2].x + s0.x;\n    s0.y = float(c0.y);\n    s2.xy = s0.xy + hg_Params[6].xy;\n    s2.xy = s2.xy*hg_Params[6].zw;\n    s0.x = (float) hg_Texture0.sample(hg_Sampler0, s2.xy).x;\n    s1.y = float(c0.y);\n    s2.xy = s1.xy + hg_Params[6].xy;\n    s2.xy = s2.xy*hg_Params[6].zw;\n    s1.x = (float) hg_Texture0.sample(hg_Sampler0, s2.xy).x;\n    s0.y = s1.x*float(c0.x);\n    s0.x = s0.x*float(c0.x);\n    s0.x = floor(s0.x);\n    s1.x = floor(s0.y);\n    s0.x = s1.z + s0.x;\n    s0.y = s0.x*float(r0.x);\n    s2.x = floor(s0.y);\n    s1.y = s1.x/hg_Params[0].y;\n    s0.y = float(c0.y);\n    s0.x = -s2.x*hg_Params[2].x + s0.x;\n    s2.xy = s0.xy + hg_Params[6].xy;\n    s2.xy = s2.xy*hg_Params[6].zw;\n    s0.x = (float) hg_Texture0.sample(hg_Sampler0, s2.xy).x;\n    s0.y = floor(s1.y);\n    s0.x = s0.x*float(c0.x);\n    s0.y = -s0.y*hg_Params[0].y + s1.x;\n    s0.x = floor(s0.x);\n    s1.y = s0.x/hg_Params[0].x;\n    s1.x = floor(s1.y);\n    s0.zw = -s1.zw*hg_Params[1].xy + s0.zw;\n    s0.x = -s1.x*hg_Params[0].x + s0.x;\n    s0.xy = s0.xy*hg_Params[1].xy + s0.zw;\n    s0.xy = s0.xy + hg_Params[7].xy;\n    s0.xy = s0.xy*hg_Params[7].zw;\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, s0.xy);\n    r0 = select(r0, r0.xxxw, half4(hg_Params[3]) < 0.00000h);\n    output.color0 = mix(float4(c0.yyyz), float4(r0), hg_Params[4]);\n    return output;\n}\n//MD5=2fe2b506:2d6bb22d:313529f7:a644a727\n//SIG=00400000:00000000:00000000:00000003:0001:0008:0004:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000ab7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(255.0000000, 0.5000000000, 1.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.x = 1.00000f / hg_Params[2].x;\n    r1.zw = frag._texCoord0.xy + hg_Params[5].zw;\n    r1.xy = r1.zw/hg_Params[1].xy;\n    r2.zw = floor(r1.xy);\n    r1.x = r2.z*r0.x;\n    r1.x = floor(r1.x);\n    r1.y = c0.y;\n    r1.x = -r1.x*hg_Params[2].x + r2.z;\n    r3.xy = r1.xy + hg_Params[6].xy;\n    r3.xy = r3.xy*hg_Params[6].zw;\n    r1.x = hg_Texture0.sample(hg_Sampler0, r3.xy).x;\n    r1.x = r1.x*c0.x;\n    r1.x = floor(r1.x);\n    r1.x = r2.w + r1.x;\n    r1.y = r0.x*r1.x;\n    r2.x = floor(r1.y);\n    r1.y = c0.y;\n    r1.x = -r2.x*hg_Params[2].x + r1.x;\n    r3.xy = r1.xy + hg_Params[6].xy;\n    r3.xy = r3.xy*hg_Params[6].zw;\n    r1.x = hg_Texture0.sample(hg_Sampler0, r3.xy).x;\n    r1.x = r1.x*c0.x;\n    r2.x = floor(r1.x);\n    r2.y = r0.x*r2.x;\n    r1.x = r2.w + r2.w;\n    r1.y = r1.x*r0.x;\n    r2.y = floor(r2.y);\n    r1.y = floor(r1.y);\n    r2.x = -r2.y*hg_Params[2].x + r2.x;\n    r1.x = -r1.y*hg_Params[2].x + r1.x;\n    r1.y = c0.y;\n    r3.xy = r1.xy + hg_Params[6].xy;\n    r3.xy = r3.xy*hg_Params[6].zw;\n    r1.x = hg_Texture0.sample(hg_Sampler0, r3.xy).x;\n    r2.y = c0.y;\n    r3.xy = r2.xy + hg_Params[6].xy;\n    r3.xy = r3.xy*hg_Params[6].zw;\n    r2.x = hg_Texture0.sample(hg_Sampler0, r3.xy).x;\n    r1.y = r2.x*c0.x;\n    r1.x = r1.x*c0.x;\n    r1.x = floor(r1.x);\n    r2.x = floor(r1.y);\n    r1.x = r2.z + r1.x;\n    r1.y = r1.x*r0.x;\n    r3.x = floor(r1.y);\n    r2.y = r2.x/hg_Params[0].y;\n    r1.y = c0.y;\n    r1.x = -r3.x*hg_Params[2].x + r1.x;\n    r0.xy = r1.xy + hg_Params[6].xy;\n    r0.xy = r0.xy*hg_Params[6].zw;\n    r1.x = hg_Texture0.sample(hg_Sampler0, r0.xy).x;\n    r1.y = floor(r2.y);\n    r1.x = r1.x*c0.x;\n    r1.y = -r1.y*hg_Params[0].y + r2.x;\n    r1.x = floor(r1.x);\n    r2.y = r1.x/hg_Params[0].x;\n    r2.x = floor(r2.y);\n    r1.zw = -r2.zw*hg_Params[1].xy + r1.zw;\n    r1.x = -r2.x*hg_Params[0].x + r1.x;\n    r1.xy = r1.xy*hg_Params[1].xy + r1.zw;\n    r1.xy = r1.xy + hg_Params[7].xy;\n    r1.xy = r1.xy*hg_Params[7].zw;\n    r1 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n    r1 = select(r1, r1.xxxw, hg_Params[3] < 0.00000f);\n    output.color0 = mix(c0.yyyz, r1, hg_Params[4]);\n    return output;\n}\n//MD5=82167b58:cbd9709c:b22bbbab:ef8606ed\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0004:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000c0d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(255.0000000, 0.5000000000, 1.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0.x = 1.00000 / hg_ProgramLocal2.x;\n    r1.zw = hg_TexCoord0.xy + hg_ProgramLocal5.zw;\n    r1.xy = r1.zw/hg_ProgramLocal1.xy;\n    r2.zw = floor(r1.xy);\n    r1.x = r2.z*r0.x;\n    r1.x = floor(r1.x);\n    r1.y = c0.y;\n    r1.x = -r1.x*hg_ProgramLocal2.x + r2.z;\n    r3.xy = r1.xy + hg_ProgramLocal6.xy;\n    r3.xy = r3.xy*hg_ProgramLocal6.zw;\n    r1.x = texture2D(hg_Texture0, r3.xy).x;\n    r1.x = r1.x*c0.x;\n    r1.x = floor(r1.x);\n    r1.x = r2.w + r1.x;\n    r1.y = r0.x*r1.x;\n    r2.x = floor(r1.y);\n    r1.y = c0.y;\n    r1.x = -r2.x*hg_ProgramLocal2.x + r1.x;\n    r3.xy = r1.xy + hg_ProgramLocal6.xy;\n    r3.xy = r3.xy*hg_ProgramLocal6.zw;\n    r1.x = texture2D(hg_Texture0, r3.xy).x;\n    r1.x = r1.x*c0.x;\n    r2.x = floor(r1.x);\n    r2.y = r0.x*r2.x;\n    r1.x = r2.w + r2.w;\n    r1.y = r1.x*r0.x;\n    r2.y = floor(r2.y);\n    r1.y = floor(r1.y);\n    r2.x = -r2.y*hg_ProgramLocal2.x + r2.x;\n    r1.x = -r1.y*hg_ProgramLocal2.x + r1.x;\n    r1.y = c0.y;\n    r3.xy = r1.xy + hg_ProgramLocal6.xy;\n    r3.xy = r3.xy*hg_ProgramLocal6.zw;\n    r1.x = texture2D(hg_Texture0, r3.xy).x;\n    r2.y = c0.y;\n    r3.xy = r2.xy + hg_ProgramLocal6.xy;\n    r3.xy = r3.xy*hg_ProgramLocal6.zw;\n    r2.x = texture2D(hg_Texture0, r3.xy).x;\n    r1.y = r2.x*c0.x;\n    r1.x = r1.x*c0.x;\n    r1.x = floor(r1.x);\n    r2.x = floor(r1.y);\n    r1.x = r2.z + r1.x;\n    r1.y = r1.x*r0.x;\n    r3.x = floor(r1.y);\n    r2.y = r2.x/hg_ProgramLocal0.y;\n    r1.y = c0.y;\n    r1.x = -r3.x*hg_ProgramLocal2.x + r1.x;\n    r0.xy = r1.xy + hg_ProgramLocal6.xy;\n    r0.xy = r0.xy*hg_ProgramLocal6.zw;\n    r1.x = texture2D(hg_Texture0, r0.xy).x;\n    r1.y = floor(r2.y);\n    r1.x = r1.x*c0.x;\n    r1.y = -r1.y*hg_ProgramLocal0.y + r2.x;\n    r1.x = floor(r1.x);\n    r2.y = r1.x/hg_ProgramLocal0.x;\n    r2.x = floor(r2.y);\n    r1.zw = -r2.zw*hg_ProgramLocal1.xy + r1.zw;\n    r1.x = -r2.x*hg_ProgramLocal0.x + r1.x;\n    r1.xy = r1.xy*hg_ProgramLocal1.xy + r1.zw;\n    r1.xy = r1.xy + hg_ProgramLocal7.xy;\n    r1.xy = r1.xy*hg_ProgramLocal7.zw;\n    r1 = texture2D(hg_Texture1, r1.xy);\n    r1 = vec4(hg_ProgramLocal3.x < 0.00000 ? r1.x : r1.x, hg_ProgramLocal3.y < 0.00000 ? r1.x : r1.y, hg_ProgramLocal3.z < 0.00000 ? r1.x : r1.z, hg_ProgramLocal3.w < 0.00000 ? r1.w : r1.w);\n    gl_FragColor = mix(c0.yyyz, r1, hg_ProgramLocal4);\n}\n//MD5=0d7ad1dd:d494ce4a:9f611288:ffc05865\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0004:0000:0000:0000:0000:0000:0001:02:0:1:0\n";
  }
}

void sub_25FF340CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF342CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF3432C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF34324);
}

uint64_t HgcSampleTiledNoise::BindTexture(HgcSampleTiledNoise *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
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

    v12 = a2;
    v13 = 7;
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
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

    v12 = a2;
    v13 = 6;
  }

  v9(v12, v13, v7, v8, v5, v6);
  return 0;
}

uint64_t HgcSampleTiledNoise::Bind(HgcSampleTiledNoise *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSampleTiledNoise::RenderTile(HgcSampleTiledNoise *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = xmmword_2603429C0;
    v8 = a2[2];
    v9 = 16 * a2[3].i32[0];
    v10.i64[0] = 0x3F0000003F000000;
    v10.i64[1] = 0x3F0000003F000000;
    v11 = v5;
    do
    {
      if (v6 < 2)
      {
        v12 = 0;
        v14 = v11;
      }

      else
      {
        v12 = 0;
        v13 = v6;
        v261 = v11;
        v14 = v11;
        do
        {
          v15 = vaddq_f32(v14, xmmword_2603429B0);
          v16 = *(this + 51);
          v17 = *(v16 + 96);
          v18 = *(v16 + 112);
          v19 = vextq_s8(v14, v14, 8uLL);
          v20 = *(v16 + 32);
          v21 = *(v16 + 64);
          v22 = *(v16 + 80);
          v23 = vaddq_f32(v19, v22);
          v24 = vaddq_f32(vextq_s8(v15, v15, 8uLL), v22);
          v25 = *(v16 + 16);
          v27 = *(v16 + 128);
          v26 = *(v16 + 144);
          v28 = vminq_f32(vmaxq_f32(vrecpeq_f32(v25), v18), v27);
          v29 = vminq_f32(vmaxq_f32(vmulq_f32(v28, vrecpsq_f32(v25, v28)), v18), v27);
          v30 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v20), v17), v18), v27);
          v31 = vmulq_f32(v29, vrecpsq_f32(v25, v29));
          v32 = vextq_s8(v23, vmulq_f32(vdupq_laneq_s64(v23, 1), v31), 8uLL);
          v33 = vextq_s8(v24, vmulq_f32(vdupq_laneq_s64(v24, 1), v31), 8uLL);
          v34 = vcvtq_f32_s32(vcvtq_s32_f32(v32));
          v35 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
          v36 = vmulq_f32(v30, vrecpsq_f32(v20, v30));
          v37 = vsubq_f32(v34, vandq_s8(v18, vcgtq_f32(v34, v32)));
          v38 = vsubq_f32(v35, vandq_s8(v18, vcgtq_f32(v35, v33)));
          v30.i64[0] = vmulq_laneq_f32(v36, v37, 2).u64[0];
          v33.i64[0] = vmulq_laneq_f32(v36, v38, 2).u64[0];
          v30.i64[1] = v23.i64[1];
          v33.i64[1] = v24.i64[1];
          v39 = vcvtq_f32_s32(vcvtq_s32_f32(v30));
          v40 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
          v23.i32[0] = vsubq_f32(v39, vandq_s8(v26, vcgtq_f32(v39, v30))).u32[0];
          v24.i32[0] = vsubq_f32(v40, vandq_s8(v26, vcgtq_f32(v40, v33))).u32[0];
          v23.i32[1] = 0.5;
          v24.i32[1] = 0.5;
          v41 = *(v16 + 160);
          v42 = *(v16 + 176);
          v43 = vbslq_s8(v41, vsubq_f32(vextq_s8(v37, v37, 8uLL), vmulq_f32(v20, v23)), v23);
          v44 = vbslq_s8(v41, vsubq_f32(vextq_s8(v38, v38, 8uLL), vmulq_f32(v20, v24)), v24);
          v45 = &a2[11];
          v46 = vaddq_f32(vsubq_f32(v43, v5), v10);
          v47 = vcvtq_s32_f32(v46);
          v48 = vaddq_f32(vsubq_f32(v44, v5), v10);
          v49 = vcvtq_s32_f32(v48);
          v50 = vadd_s32(*v49.i8, *&vcgtq_f32(vcvtq_f32_s32(v49), v48));
          *v47.f32 = vadd_s32(*v47.f32, *&vcgtq_f32(vcvtq_f32_s32(v47), v46));
          *v46.f32 = vld1_dup_f32(v45);
          v51 = a2[10];
          *v47.f32 = vmla_s32(vzip1_s32(*v47.f32, v50), vzip2_s32(*v47.f32, v50), *v46.f32);
          v52 = v47.i32[1];
          v47.i64[0] = vmulq_f32(*(*&v51 + 16 * v47.i32[0]), v42).u64[0];
          v53.i64[0] = vmulq_f32(*(*&v51 + 16 * v52), v42).u64[0];
          v47.i64[1] = v43.i64[1];
          v53.i64[1] = v44.i64[1];
          v54 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
          v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
          v47.i64[0] = vaddq_f32(vextq_s8(v37, v37, 0xCuLL), vsubq_f32(v54, vbslq_s8(vcgtq_f32(v54, v47), v26, 0))).u64[0];
          v53.i64[0] = vaddq_f32(vextq_s8(v38, v38, 0xCuLL), vsubq_f32(v55, vbslq_s8(vcgtq_f32(v55, v53), v26, 0))).u64[0];
          v54.i64[0] = v47.i64[0];
          v54.i64[1] = v43.i64[1];
          v55.i64[0] = v53.i64[0];
          v47.i64[1] = vdupq_laneq_s64(v43, 1).u64[0];
          v55.i64[1] = v44.i64[1];
          v53.i64[1] = vdupq_laneq_s64(v44, 1).u64[0];
          v57 = *(v16 + 192);
          v56 = *(v16 + 208);
          v58 = vbslq_s8(v57, vmulq_n_f32(vrev64q_s32(v47), v36.f32[0]), v54);
          v59 = vbslq_s8(v57, vmulq_n_f32(vrev64q_s32(v53), v36.f32[0]), v55);
          v60 = vrev64q_s32(v58);
          v61 = vrev64q_s32(v59);
          v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
          v63 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
          v60.i64[0] = vsubq_f32(v62, vbslq_s8(vcgtq_f32(v62, v60), v26, 0)).u64[0];
          v61.i64[0] = vsubq_f32(v63, vbslq_s8(vcgtq_f32(v63, v61), v26, 0)).u64[0];
          v60.i64[1] = v37.i64[1];
          v61.i64[1] = v38.i64[1];
          v58.i32[1] = 0.5;
          v59.i32[1] = 0.5;
          v64 = vbslq_s8(v41, vsubq_f32(v58, vmulq_f32(v20, v60)), v58);
          v65 = vbslq_s8(v41, vsubq_f32(v59, vmulq_f32(v20, v61)), v59);
          v66 = vaddq_f32(vsubq_f32(v64, v5), v10);
          v67 = vcvtq_s32_f32(v66);
          v68 = vaddq_f32(vsubq_f32(v65, v5), v10);
          v69 = vcvtq_s32_f32(v68);
          *v68.f32 = vadd_s32(*v69.i8, *&vcgtq_f32(vcvtq_f32_s32(v69), v68));
          *v66.f32 = vadd_s32(*v67.f32, *&vcgtq_f32(vcvtq_f32_s32(v67), v66));
          *v66.f32 = vmla_s32(vzip1_s32(*v66.f32, *v68.f32), vzip2_s32(*v66.f32, *v68.f32), *v46.f32);
          v70 = v66.i32[1];
          v66.i64[0] = vmulq_f32(v42, *(*&v51 + 16 * v66.i32[0])).u64[0];
          v67.i64[0] = vmulq_f32(v42, *(*&v51 + 16 * v70)).u64[0];
          v66.i64[1] = v64.i64[1];
          v67.i64[1] = v65.i64[1];
          v71 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
          v72 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
          v66.i64[0] = vsubq_f32(v71, vbslq_s8(vcgtq_f32(v71, v66), v26, 0)).u64[0];
          v67.i64[0] = vsubq_f32(v72, vbslq_s8(vcgtq_f32(v72, v67), v26, 0)).u64[0];
          v71.i64[0] = v66.i64[0];
          v71.i64[1] = v37.i64[1];
          v72.i64[0] = v67.i64[0];
          v72.i64[1] = v38.i64[1];
          v66.i64[1] = vdupq_laneq_s64(v37, 1).u64[0];
          v67.i64[1] = vdupq_laneq_s64(v38, 1).u64[0];
          v73 = vbslq_s8(v57, vmulq_n_f32(vrev64q_s32(v66), v36.f32[0]), v71);
          v74 = vbslq_s8(v57, vmulq_n_f32(vrev64q_s32(v67), v36.f32[0]), v72);
          v75 = vaddq_f32(v73, v73);
          v76 = vaddq_f32(v74, v74);
          v77.i64[0] = vextq_s8(v75, v75, 0xCuLL).u64[0];
          v77.i64[1] = vextq_s8(v64, v64, 8uLL).u64[0];
          v64.i64[0] = vextq_s8(v76, v76, 0xCuLL).u64[0];
          v64.i64[1] = vextq_s8(v65, v65, 8uLL).u64[0];
          v78 = vrev64q_s32(v36);
          v79 = vbslq_s8(v57, vmulq_laneq_f32(v78, v75, 3), v77);
          v80 = vbslq_s8(v57, vmulq_laneq_f32(v78, v76, 3), v64);
          v81 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
          v82 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
          v83 = vsubq_f32(v82, vandq_s8(v42, vcgtq_f32(v82, v74)));
          v84 = vbslq_s8(v57, vsubq_f32(v81, vandq_s8(v42, vcgtq_f32(v81, v73))), v71);
          v85 = vcvtq_f32_s32(vcvtq_s32_f32(v79));
          v86 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
          v87 = vandq_s8(v42, vcgtq_f32(v85, v79));
          v88 = vbslq_s8(v57, v83, v72);
          v89 = vbslq_s8(v57, vsubq_f32(v85, v87), v77);
          v83.i32[0] = vsubq_f32(v84, vmulq_lane_f32(v20, *v84.f32, 1)).u32[0];
          v90 = vbslq_s8(v57, vsubq_f32(v86, vandq_s8(v42, vcgtq_f32(v86, v80))), v64);
          v80.i32[0] = vsubq_f32(v88, vmulq_lane_f32(v20, *v88.f32, 1)).u32[0];
          v85.i32[0] = vsubq_f32(v89, vmulq_lane_f32(v20, *v89.f32, 1)).u32[0];
          v86.i32[0] = vsubq_f32(v90, vmulq_lane_f32(v20, *v90.f32, 1)).u32[0];
          v85.i64[1] = v89.i64[1];
          v86.i64[1] = v90.i64[1];
          v85.i32[1] = 0.5;
          v86.i32[1] = 0.5;
          v91 = vaddq_f32(vsubq_f32(v85, v5), v10);
          v92 = vcvtq_s32_f32(v91);
          v93 = vaddq_f32(vsubq_f32(v86, v5), v10);
          v94 = vcvtq_s32_f32(v93);
          v83.i64[1] = v84.i64[1];
          v80.i64[1] = v88.i64[1];
          *v91.f32 = vadd_s32(*v92.i8, *&vcgtq_f32(vcvtq_f32_s32(v92), v91));
          v95 = vadd_s32(*v94.i8, *&vcgtq_f32(vcvtq_f32_s32(v94), v93));
          *v93.f32 = vzip2_s32(*v91.f32, v95);
          v83.i32[1] = 0.5;
          v80.i32[1] = 0.5;
          v96 = vzip1_s32(*v91.f32, v95);
          v97 = vaddq_f32(vsubq_f32(v83, v5), v10);
          v98 = vcvtq_s32_f32(v97);
          v99 = vmla_s32(v96, *v93.f32, *v46.f32);
          v100 = vaddq_f32(vsubq_f32(v80, v5), v10);
          v101 = vcvtq_s32_f32(v100);
          v102 = v99.i32[1];
          *v100.f32 = vadd_s32(*v101.i8, *&vcgtq_f32(vcvtq_f32_s32(v101), v100));
          *v97.f32 = vadd_s32(*v98.i8, *&vcgtq_f32(vcvtq_f32_s32(v98), v97));
          *v100.f32 = vmla_s32(vzip1_s32(*v97.f32, *v100.f32), vzip2_s32(*v97.f32, *v100.f32), *v46.f32);
          v103 = v100.i32[1];
          v104 = *(*&v51 + 16 * v99.i32[0]);
          v105 = *(*&v51 + 16 * v100.i32[0]);
          v106 = *(*&v51 + 16 * v103);
          v107 = *(*&v51 + 16 * v102);
          v108 = vdupq_laneq_s64(v84, 1);
          v105.i64[1] = v108.i64[0];
          v104.i64[1] = v89.i64[1];
          v109 = vdupq_laneq_s64(v88, 1);
          v106.i64[1] = v109.i64[0];
          v107.i64[1] = v90.i64[1];
          v110 = vbslq_s8(v57, vmulq_f32(v26, vrev64q_s32(v105)), v104);
          v111 = vbslq_s8(v57, vmulq_f32(v26, vrev64q_s32(v106)), v107);
          v112 = vbslq_s8(v41, vmulq_f32(v42, v110), v110);
          v113 = vbslq_s8(v41, vmulq_f32(v42, v111), v111);
          v114 = vcvtq_f32_s32(vcvtq_s32_f32(v112));
          v115 = vcvtq_f32_s32(vcvtq_s32_f32(v113));
          v116 = vbslq_s8(v41, vsubq_f32(v114, vandq_s8(v26, vcgtq_f32(v114, v112))), v110);
          v117 = vbslq_s8(v41, vsubq_f32(v115, vandq_s8(v26, vcgtq_f32(v115, v113))), v111);
          v118 = vrev64q_s32(v116);
          v119 = vrev64q_s32(v117);
          v120 = vcvtq_f32_s32(vcvtq_s32_f32(v118));
          v121 = vcvtq_f32_s32(vcvtq_s32_f32(v119));
          v118.i64[0] = vsubq_f32(v120, vbslq_s8(vcgtq_f32(v120, v118), v26, 0)).u64[0];
          v120.i64[0] = vaddq_f32(v108, v116).u64[0];
          v109.i64[0] = vaddq_f32(v109, v117).u64[0];
          v120.i64[1] = v116.i64[1];
          v119.i64[0] = vsubq_f32(v121, vbslq_s8(vcgtq_f32(v121, v119), v26, 0)).u64[0];
          v122 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpeq_f32(*v16)), v18), v27);
          v123 = vmulq_f32(v122, vrecpsq_f32(*v16, v122));
          v124 = vbslq_s8(v57, vmulq_n_f32(v78, v120.f32[0]), v120);
          v109.i64[1] = v117.i64[1];
          v125 = vbslq_s8(v57, vmulq_n_f32(v78, v109.f32[0]), v109);
          v118.i64[1] = v84.i64[1];
          v126 = vrev64q_s32(v124);
          v127 = vrev64q_s32(v125);
          v128 = vcvtq_f32_s32(vcvtq_s32_f32(v126));
          v129 = vcvtq_f32_s32(vcvtq_s32_f32(v127));
          v119.i64[1] = v88.i64[1];
          v130 = vandq_s8(v26, vcgtq_f32(v128, v126));
          v131 = vandq_s8(v26, vcgtq_f32(v129, v127));
          v132 = vsubq_f32(v128, v130);
          v124.i32[1] = 0.5;
          v133 = vbslq_s8(v57, vmulq_n_f32(v123, v118.f32[0]), v118);
          v125.i32[1] = 0.5;
          v134 = vmulq_f32(v20, v132);
          v135 = vmulq_f32(v20, vsubq_f32(v129, v131));
          v136 = vbslq_s8(v41, vsubq_f32(v124, v134), v124);
          v137 = vbslq_s8(v41, vsubq_f32(v125, v135), v125);
          v138 = vaddq_f32(vsubq_f32(v136, v5), v10);
          v139 = vcvtq_s32_f32(v138);
          v140 = vaddq_f32(vsubq_f32(v137, v5), v10);
          v141 = vcvtq_s32_f32(v140);
          *v128.f32 = vadd_s32(*v141.i8, *&vcgtq_f32(vcvtq_f32_s32(v141), v140));
          *v138.f32 = vadd_s32(*v139.i8, *&vcgtq_f32(vcvtq_f32_s32(v139), v138));
          *v139.i8 = vzip2_s32(*v138.f32, *v128.f32);
          *v128.f32 = vzip1_s32(*v138.f32, *v128.f32);
          v142 = vbslq_s8(v57, vmulq_n_f32(v123, v119.f32[0]), v119);
          *v128.f32 = vmla_s32(*v128.f32, *v139.i8, *v46.f32);
          v143 = *(*&v51 + 16 * v128.i32[0]);
          v144 = *(*&v51 + 16 * v128.i32[1]);
          v145 = vcvtq_f32_s32(vcvtq_s32_f32(v133));
          v146 = vcvtq_f32_s32(vcvtq_s32_f32(v142));
          v143.i64[1] = v136.i64[1];
          v147 = vbslq_s8(v57, vsubq_f32(v145, vandq_s8(v42, vcgtq_f32(v145, v133))), v143);
          v144.i64[1] = v137.i64[1];
          v148 = vbslq_s8(v57, vsubq_f32(v146, vandq_s8(v42, vcgtq_f32(v146, v142))), v144);
          v149 = vbslq_s8(v41, vmulq_f32(v42, v147), v147);
          v150 = vbslq_s8(v41, vmulq_f32(v42, v148), v148);
          v151 = vbslq_s8(v57, vsubq_f32(vrev64q_s32(v133), vmulq_f32(*v16, v149)), v149);
          v152 = vbslq_s8(v57, vsubq_f32(vrev64q_s32(v142), vmulq_f32(*v16, v150)), v150);
          v153 = vcvtq_f32_s32(vcvtq_s32_f32(v151));
          v154 = vcvtq_f32_s32(vcvtq_s32_f32(v152));
          v155 = vrev64q_s32(*v16);
          v156 = vbslq_s8(v41, vsubq_f32(v153, vandq_s8(v26, vcgtq_f32(v153, v151))), v151);
          v157 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpeq_f32(v155)), v18), v27);
          v158 = vbslq_s8(v41, vsubq_f32(v154, vandq_s8(v26, vcgtq_f32(v154, v152))), v152);
          v159 = vmulq_f32(v157, vrecpsq_f32(v155, v157));
          v18.i64[0] = vmulq_n_f32(v159, v156.f32[0]).u64[0];
          v18.i64[1] = vdupq_laneq_s64(v133, 1).u64[0];
          v159.i64[0] = vmulq_n_f32(v159, v158.f32[0]).u64[0];
          v159.i64[1] = vdupq_laneq_s64(v142, 1).u64[0];
          v160 = vrev64q_s32(v18);
          v161 = vrev64q_s32(v159);
          v162 = vcvtq_f32_s32(vcvtq_s32_f32(v160));
          v163 = vcvtq_f32_s32(vcvtq_s32_f32(v161));
          v160.i64[0] = vsubq_f32(v162, vbslq_s8(vcgtq_f32(v162, v160), v26, 0)).u64[0];
          v160.i64[1] = v133.i64[1];
          v161.i64[0] = vsubq_f32(v163, vbslq_s8(vcgtq_f32(v163, v161), v26, 0)).u64[0];
          v164 = vextq_s8(v25, v25, 8uLL);
          v161.i64[1] = v142.i64[1];
          v156.i64[1] = vsubq_f32(v156, vmulq_f32(v164, v133)).i64[1];
          v158.i64[1] = vsubq_f32(v158, vmulq_f32(v164, v142)).i64[1];
          v165 = vbslq_s8(v41, vsubq_f32(v156, vmulq_f32(*v16, v160)), v156);
          v166 = vbslq_s8(v41, vsubq_f32(v158, vmulq_f32(*v16, v161)), v158);
          v167 = &a2[13];
          v168 = vaddq_f32(vsubq_f32(vaddq_f32(vmulq_f32(v25, v165), vextq_s8(v165, v165, 8uLL)), v5), v10);
          v169 = vcvtq_s32_f32(v168);
          v170 = vaddq_f32(vsubq_f32(vaddq_f32(vmulq_f32(v25, v166), vextq_s8(v166, v166, 8uLL)), v5), v10);
          v171 = vcvtq_s32_f32(v170);
          *v170.f32 = vadd_s32(*v171.i8, *&vcgtq_f32(vcvtq_f32_s32(v171), v170));
          *v168.f32 = vadd_s32(*v169.i8, *&vcgtq_f32(vcvtq_f32_s32(v169), v168));
          *v171.i8 = vld1_dup_f32(v167);
          v172 = a2[12];
          *v170.f32 = vmla_s32(vzip1_s32(*v168.f32, *v170.f32), vzip2_s32(*v168.f32, *v170.f32), *v171.i8);
          v173 = v170.i32[1];
          v174 = *(*&v172 + 16 * v170.i32[0]);
          v175 = *(*&v172 + 16 * v173);
          *v169.i8 = vqtbl1_s8(v174, *v56.i8);
          v171.i64[0] = vextq_s8(v56, v56, 8uLL).u64[0];
          v169.u64[1] = vqtbl1_s8(v174, *v171.i8);
          *v142.f32 = vqtbl1_s8(v175, *v56.i8);
          *&v142.u32[2] = vqtbl1_s8(v175, *v171.i8);
          v176 = *(v16 + 240);
          v177 = vcgtq_f32(*(v16 + 224), *(v16 + 48));
          v178 = (*&v8 + 16 * v12);
          *v178 = vaddq_f32(v176, vmulq_f32(v21, vsubq_f32(vbslq_s8(v177, v169, v174), v176)));
          v178[1] = vaddq_f32(v176, vmulq_f32(v21, vsubq_f32(vbslq_s8(v177, v142, v175), v176)));
          v14 = vaddq_f32(v15, xmmword_2603429B0);
          v12 += 2;
          v13 -= 2;
        }

        while (v13 > 1);
        v12 = v12;
        v7 = xmmword_2603429C0;
        v11 = v261;
      }

      if (v12 < v6)
      {
        v179 = *(this + 51);
        v180 = *(v179 + 32);
        v181 = *(v179 + 96);
        v182 = *(v179 + 112);
        v184 = *(v179 + 128);
        v183 = *(v179 + 144);
        v185 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v180), v181), v182), v184);
        v186 = vmulq_f32(v185, vrecpsq_f32(v180, v185));
        v187 = vaddq_f32(vextq_s8(v14, v14, 8uLL), *(v179 + 80));
        v188 = *(v179 + 16);
        v189 = vminq_f32(vmaxq_f32(vrecpeq_f32(v188), v182), v184);
        v190 = vminq_f32(vmaxq_f32(vmulq_f32(v189, vrecpsq_f32(v188, v189)), v182), v184);
        v191 = vextq_s8(v187, vmulq_f32(vdupq_laneq_s64(v187, 1), vmulq_f32(v190, vrecpsq_f32(v188, v190))), 8uLL);
        v192 = vcvtq_f32_s32(vcvtq_s32_f32(v191));
        v193 = vsubq_f32(v192, vandq_s8(v182, vcgtq_f32(v192, v191)));
        v191.i64[0] = vmulq_laneq_f32(v186, v193, 2).u64[0];
        v191.i64[1] = v187.i64[1];
        v194 = vcvtq_f32_s32(vcvtq_s32_f32(v191));
        v187.i32[0] = vsubq_f32(v194, vandq_s8(v183, vcgtq_f32(v194, v191))).u32[0];
        v187.i32[1] = 0.5;
        v195 = *(v179 + 160);
        v196 = *(v179 + 176);
        v197 = vbslq_s8(v195, vsubq_f32(vextq_s8(v193, v193, 8uLL), vmulq_f32(v180, v187)), v187);
        v198 = a2[11].u32[0];
        v199 = vaddq_f32(vsubq_f32(v197, v5), v10);
        v200 = vcvtq_s32_f32(v199);
        v199.i64[0] = vaddq_s32(v200, vcgtq_f32(vcvtq_f32_s32(v200), v199)).u64[0];
        v201 = a2[10];
        v199.i64[0] = vmulq_f32(*(*&v201 + 16 * (v199.i32[0] + v199.i32[1] * v198)), v196).u64[0];
        v199.i64[1] = v197.i64[1];
        v202 = vcvtq_f32_s32(vcvtq_s32_f32(v199));
        v199.i64[0] = vaddq_f32(vextq_s8(v193, v193, 0xCuLL), vsubq_f32(v202, vbslq_s8(vcgtq_f32(v202, v199), v183, 0))).u64[0];
        v203.i64[0] = v199.i64[0];
        v203.i64[1] = v197.i64[1];
        v199.i64[1] = vdupq_laneq_s64(v197, 1).u64[0];
        v205 = *(v179 + 192);
        v204 = *(v179 + 208);
        v206 = vbslq_s8(v205, vmulq_n_f32(vrev64q_s32(v199), v186.f32[0]), v203);
        v207 = vrev64q_s32(v206);
        v208 = vcvtq_f32_s32(vcvtq_s32_f32(v207));
        v207.i64[0] = vsubq_f32(v208, vbslq_s8(vcgtq_f32(v208, v207), v183, 0)).u64[0];
        v207.i64[1] = v193.i64[1];
        v206.i32[1] = 0.5;
        v209 = vbslq_s8(v195, vsubq_f32(v206, vmulq_f32(v180, v207)), v206);
        v210 = vaddq_f32(vsubq_f32(v209, v5), v10);
        v211 = vcvtq_s32_f32(v210);
        v210.i64[0] = vaddq_s32(v211, vcgtq_f32(vcvtq_f32_s32(v211), v210)).u64[0];
        v211.i64[0] = vextq_s8(v209, v209, 8uLL).u64[0];
        v210.i64[0] = vmulq_f32(v196, *(*&v201 + 16 * (v210.i32[0] + v210.i32[1] * v198))).u64[0];
        v210.i64[1] = v209.i64[1];
        v212 = vcvtq_f32_s32(vcvtq_s32_f32(v210));
        v212.i64[0] = vsubq_f32(v212, vbslq_s8(vcgtq_f32(v212, v210), v183, 0)).u64[0];
        v210.i64[0] = v212.i64[0];
        v210.i64[1] = v193.i64[1];
        v212.i64[1] = vdupq_laneq_s64(v193, 1).u64[0];
        v213 = vbslq_s8(v205, vmulq_n_f32(vrev64q_s32(v212), v186.f32[0]), v210);
        v214 = vaddq_f32(v213, v213);
        v215.i64[0] = vextq_s8(v214, v214, 0xCuLL).u64[0];
        v215.i64[1] = v211.i64[0];
        v216 = vrev64q_s32(v186);
        v217 = vbslq_s8(v205, vmulq_laneq_f32(v216, v214, 3), v215);
        v218 = vcvtq_f32_s32(vcvtq_s32_f32(v213));
        v219 = vbslq_s8(v205, vsubq_f32(v218, vandq_s8(v196, vcgtq_f32(v218, v213))), v210);
        v220 = vcvtq_f32_s32(vcvtq_s32_f32(v217));
        v221 = vbslq_s8(v205, vsubq_f32(v220, vandq_s8(v196, vcgtq_f32(v220, v217))), v215);
        v217.i32[0] = vsubq_f32(v219, vmulq_lane_f32(v180, *v219.f32, 1)).u32[0];
        v217.i64[1] = v219.i64[1];
        v218.i32[0] = vsubq_f32(v221, vmulq_lane_f32(v180, *v221.f32, 1)).u32[0];
        v218.i64[1] = v221.i64[1];
        v218.i32[1] = 0.5;
        v222 = vaddq_f32(vsubq_f32(v218, v5), v10);
        v223 = vcvtq_s32_f32(v222);
        v217.i32[1] = 0.5;
        v224 = vaddq_f32(vsubq_f32(v217, v5), v10);
        v225 = vcvtq_s32_f32(v224);
        *v222.f32 = vadd_s32(*v223.i8, *&vcgtq_f32(vcvtq_f32_s32(v223), v222));
        *v224.f32 = vadd_s32(*v225.i8, *&vcgtq_f32(vcvtq_f32_s32(v225), v224));
        *v224.f32 = vmla_s32(vzip1_s32(*v222.f32, *v224.f32), vzip2_s32(*v222.f32, *v224.f32), vdup_n_s32(v198));
        v226 = v224.i32[1];
        v227 = *(*&v201 + 16 * v224.i32[0]);
        v227.i64[1] = v221.i64[1];
        v228 = *(*&v201 + 16 * v226);
        v229 = vdupq_laneq_s64(v219, 1);
        v228.i64[1] = v229.i64[0];
        v230 = vbslq_s8(v205, vmulq_f32(v183, vrev64q_s32(v228)), v227);
        v231 = vbslq_s8(v195, vmulq_f32(v196, v230), v230);
        v232 = vcvtq_f32_s32(vcvtq_s32_f32(v231));
        v233 = vbslq_s8(v195, vsubq_f32(v232, vandq_s8(v183, vcgtq_f32(v232, v231))), v230);
        v234 = vrev64q_s32(v233);
        v235 = vcvtq_f32_s32(vcvtq_s32_f32(v234));
        v234.i64[0] = vsubq_f32(v235, vbslq_s8(vcgtq_f32(v235, v234), v183, 0)).u64[0];
        v236 = vminq_f32(vmaxq_f32(vmulq_f32(v181, vrecpeq_f32(*v179)), v182), v184);
        v234.i64[1] = v219.i64[1];
        v219.i64[0] = vaddq_f32(v229, v233).u64[0];
        v219.i64[1] = v233.i64[1];
        v237 = vbslq_s8(v205, vmulq_n_f32(v216, v219.f32[0]), v219);
        v238 = vrev64q_s32(v237);
        v239 = vcvtq_f32_s32(vcvtq_s32_f32(v238));
        v240 = vsubq_f32(v239, vandq_s8(v183, vcgtq_f32(v239, v238)));
        v237.i32[1] = 0.5;
        v241 = vbslq_s8(v205, vmulq_n_f32(vmulq_f32(v236, vrecpsq_f32(*v179, v236)), v234.f32[0]), v234);
        v242 = vbslq_s8(v195, vsubq_f32(v237, vmulq_f32(v180, v240)), v237);
        v243 = vaddq_f32(vsubq_f32(v242, v5), v10);
        v244 = vcvtq_s32_f32(v243);
        v243.i64[0] = vaddq_s32(v244, vcgtq_f32(vcvtq_f32_s32(v244), v243)).u64[0];
        v245 = *(*&v201 + 16 * (v243.i32[0] + v243.i32[1] * v198));
        v246 = vcvtq_f32_s32(vcvtq_s32_f32(v241));
        v245.i64[1] = v242.i64[1];
        v247 = vbslq_s8(v205, vsubq_f32(v246, vandq_s8(v196, vcgtq_f32(v246, v241))), v245);
        v248 = vbslq_s8(v195, vmulq_f32(v196, v247), v247);
        v249 = vbslq_s8(v205, vsubq_f32(vrev64q_s32(v241), vmulq_f32(*v179, v248)), v248);
        v250 = vcvtq_f32_s32(vcvtq_s32_f32(v249));
        v251 = vbslq_s8(v195, vsubq_f32(v250, vandq_s8(v183, vcgtq_f32(v250, v249))), v249);
        v252 = vrev64q_s32(*v179);
        v253 = vminq_f32(vmaxq_f32(vmulq_f32(v181, vrecpeq_f32(v252)), v182), v184);
        v252.i64[0] = vmulq_n_f32(vmulq_f32(v253, vrecpsq_f32(v252, v253)), v251.f32[0]).u64[0];
        v252.i64[1] = vdupq_laneq_s64(v241, 1).u64[0];
        v254 = vrev64q_s32(v252);
        v255 = vcvtq_f32_s32(vcvtq_s32_f32(v254));
        v254.i64[0] = vsubq_f32(v255, vbslq_s8(vcgtq_f32(v255, v254), v183, 0)).u64[0];
        v254.i64[1] = v241.i64[1];
        v251.i64[1] = vsubq_f32(v251, vmulq_f32(vdupq_lane_s64(*&v188, 0), v241)).i64[1];
        v256 = vbslq_s8(v195, vsubq_f32(v251, vmulq_f32(*v179, v254)), v251);
        v257 = vaddq_f32(vsubq_f32(vaddq_f32(vmulq_f32(v188, v256), vextq_s8(v256, v256, 8uLL)), v5), v10);
        v258 = vcvtq_s32_f32(v257);
        v257.i64[0] = vaddq_s32(v258, vcgtq_f32(vcvtq_f32_s32(v258), v257)).u64[0];
        v259 = *(*&a2[12] + 16 * (v257.i32[0] + v257.i32[1] * a2[13].i32[0]));
        *v258.i8 = vqtbl1_s8(v259, *v204.i8);
        v258.u64[1] = vqtbl1_s8(v259, *&vextq_s8(v204, v204, 8uLL));
        *(*&v8 + 16 * v12) = vaddq_f32(*(v179 + 240), vmulq_f32(*(v179 + 64), vsubq_f32(vbslq_s8(vcgtq_f32(*(v179 + 224), *(v179 + 48)), v258, v259), *(v179 + 240))));
      }

      v11 = vaddq_f32(v11, v7);
      *&v8 += v9;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcSampleTiledNoise::GetDOD(HgcSampleTiledNoise *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3 >= 2)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcSampleTiledNoise::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 > 1)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcSampleTiledNoise::HgcSampleTiledNoise(HgcSampleTiledNoise *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725BAD0;
  operator new();
}

void HgcSampleTiledNoise::~HgcSampleTiledNoise(HGNode *this)
{
  *this = &unk_28725BAD0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FDACBBE0);
  }

  HGNode::~HGNode(this);
}

{
  HgcSampleTiledNoise::~HgcSampleTiledNoise(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSampleTiledNoise::SetParameter(HgcSampleTiledNoise *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7, double a8)
{
  v8 = 0xFFFFFFFFLL;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        *&a8 = -a3.n128_f32[0];
        v12 = *(this + 51);
        if (*(v12 + 48) != -a3.n128_f32[0] || *(v12 + 52) != *&a8 || *(v12 + 56) != *&a8 || *(v12 + 60) != *&a8)
        {
          a3.n128_f32[1] = a4;
          *(v12 + 48) = vdupq_lane_s32(*&a8, 0);
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v12 + 256) = a3;
          goto LABEL_38;
        }

        return 0;
      case 4:
        v14 = *(this + 51);
        if (*(v14 + 64) != a3.n128_f32[0] || *(v14 + 68) != a3.n128_f32[0] || *(v14 + 72) != a3.n128_f32[0] || *(v14 + 76) != a3.n128_f32[0])
        {
          v15 = vdupq_lane_s32(a3.n128_u64[0], 0);
          a3.n128_f32[1] = a4;
          *(v14 + 64) = v15;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v14 + 272) = a3;
          goto LABEL_38;
        }

        return 0;
      case 5:
        v10 = *(this + 51);
        if (v10[5].n128_f32[0] != 0.0 || v10[5].n128_f32[1] != 0.0 || v10[5].n128_f32[2] != a3.n128_f32[0] || v10[5].n128_f32[3] != a4)
        {
          v10[5].n128_u64[0] = 0;
          v10[5].n128_u32[2] = a3.n128_u32[0];
          v10[5].n128_f32[3] = a4;
          a3.n128_f32[1] = a4;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v10[18] = a3;
          goto LABEL_38;
        }

        return 0;
    }
  }

  else
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
          goto LABEL_38;
        }

        return 0;
      case 1:
        v13 = *(this + 51);
        if (*(v13 + 16) != a3.n128_f32[0] || *(v13 + 20) != a4 || *(v13 + 24) != a5 || *(v13 + 28) != a6)
        {
          *(v13 + 16) = a3.n128_u32[0];
          *(v13 + 20) = a4;
          *(v13 + 24) = a5;
          *(v13 + 28) = a6;
          goto LABEL_38;
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
LABEL_38:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v8;
}

float HgcSampleTiledNoise::GetParameter(HgcSampleTiledNoise *this, int a2, float *a3)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v7 = *(this + 51);
        *a3 = v7[64];
        a3[1] = v7[65];
        a3[2] = v7[66];
        v4 = v7 + 67;
        break;
      case 4:
        v9 = *(this + 51);
        *a3 = v9[68];
        a3[1] = v9[69];
        a3[2] = v9[70];
        v4 = v9 + 71;
        break;
      case 5:
        v5 = *(this + 51);
        *a3 = v5[72];
        a3[1] = v5[73];
        a3[2] = v5[74];
        v4 = v5 + 75;
        break;
      default:
        return result;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v8 = *(this + 51);
      *a3 = v8[4];
      a3[1] = v8[5];
      a3[2] = v8[6];
      v4 = v8 + 7;
    }

    else
    {
      if (a2 != 2)
      {
        return result;
      }

      v3 = *(this + 51);
      *a3 = v3[8];
      a3[1] = v3[9];
      a3[2] = v3[10];
      v4 = v3 + 11;
    }
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

const char *HgcClampToAlpha::GetProgram(HgcClampToAlpha *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002ac\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmin(r0, r0.wwww);\n    output.color0 = fmax(float4(r0), float4(c0.xxxx));\n    return output;\n}\n//MD5=351d0602:d7435980:23a180db:6ac0349e\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000298\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmin(r0, r0.wwww);\n    output.color0 = fmax(r0, c0.xxxx);\n    return output;\n}\n//MD5=f6a4a7c1:62f1e626:6dd47e16:5f43802b\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000023d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = min(r0, r0.wwww);\n    gl_FragColor = max(r0, c0.xxxx);\n}\n//MD5=5908ea60:fa3c4189:708ea689:5d32e2fd\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF35B80(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF35C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF35CC0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF35CB8);
}

uint64_t HgcClampToAlpha::BindTexture(HgcClampToAlpha *this, HGHandler *a2, int a3)
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

uint64_t HgcClampToAlpha::RenderTile(HgcClampToAlpha *this, HGTile *a2)
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
          v12 = **(this + 51);
          v13 = vmaxq_f32(vminq_f32(*(v6 + v10 - 16), vdupq_laneq_s32(*(v6 + v10 - 16), 3)), v12);
          v14 = vmaxq_f32(vminq_f32(*(v6 + v10), vdupq_laneq_s32(*(v6 + v10), 3)), v12);
          v15 = vmaxq_f32(vminq_f32(*(v6 + v10 + 16), vdupq_laneq_s32(*(v6 + v10 + 16), 3)), v12);
          v16 = (v5 + v10);
          v16[-2] = vmaxq_f32(vminq_f32(*(v6 + v10 - 32), vdupq_laneq_s32(*(v6 + v10 - 32), 3)), v12);
          v16[-1] = v13;
          *v16 = v14;
          v16[1] = v15;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          *(v5 + 16 * v9) = vmaxq_f32(vminq_f32(*(v6 + 16 * v9), vdupq_laneq_s32(*(v6 + 16 * v9), 3)), **(this + 51));
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

uint64_t HgcClampToAlpha::GetDOD(HgcClampToAlpha *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcClampToAlpha::GetROI(HgcClampToAlpha *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcClampToAlpha::HgcClampToAlpha(HgcClampToAlpha *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725BD38;
  operator new();
}

void HgcClampToAlpha::~HgcClampToAlpha(HGNode *this)
{
  *this = &unk_28725BD38;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  HgcClampToAlpha::~HgcClampToAlpha(this);

  HGObject::operator delete(v1);
}

const char *HgcStripAlpha::GetProgram(HgcStripAlpha *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000282\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    FragmentOut output;\n\n    output.color0.xyz = (float3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    output.color0.w = float(c0.w);\n    return output;\n}\n//MD5=39e23b55:3eef278e:900e5a12:8739e261\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000275\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    FragmentOut output;\n\n    output.color0.xyz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    output.color0.w = c0.w;\n    return output;\n}\n//MD5=80457804:66cd910c:e0e98d99:0a1aa675\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000214\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n\n    gl_FragColor.xyz = texture2D(hg_Texture0, hg_TexCoord0.xy).xyz;\n    gl_FragColor.w = c0.w;\n}\n//MD5=cdf2251d:7c3763a2:fc98cb69:2ea05d33\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF361B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF362B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF362F4()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF362ECLL);
}

uint64_t HgcStripAlpha::BindTexture(HgcStripAlpha *this, HGHandler *a2, int a3)
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

uint64_t HgcStripAlpha::RenderTile(HgcStripAlpha *this, HGTile *a2)
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
          v12 = *(v6 + v10 - 32);
          v13 = *(v6 + v10 - 16);
          v14 = *(v6 + v10);
          v15 = *(v6 + v10 + 16);
          HIDWORD(v12) = 1.0;
          HIDWORD(v13) = 1.0;
          HIDWORD(v14) = 1.0;
          HIDWORD(v15) = 1.0;
          v16 = (v5 + v10);
          *(v16 - 2) = v12;
          *(v16 - 1) = v13;
          *v16 = v14;
          v16[1] = v15;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v17 = *(v6 + 16 * v9);
          HIDWORD(v17) = 1.0;
          *(v5 + 16 * v9++) = v17;
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

uint64_t HgcStripAlpha::GetDOD(HgcStripAlpha *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcStripAlpha::GetROI(HgcStripAlpha *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcStripAlpha::HgcStripAlpha(HgcStripAlpha *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725BFA0;
  operator new();
}

void HgcStripAlpha::~HgcStripAlpha(HGNode *this)
{
  *this = &unk_28725BFA0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);
}

{
  HgcStripAlpha::~HgcStripAlpha(this);

  HGObject::operator delete(v1);
}

const char *HgcRetimeAddBlend6::GetProgram(HgcRetimeAddBlend6 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000006b9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< half > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]])\n{\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = (half4) hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    output.color0 = float4(r0)*hg_Params[0];\n    output.color0 = float4(r1)*hg_Params[1] + output.color0;\n    output.color0 = float4(r2)*hg_Params[2] + output.color0;\n    output.color0 = float4(r3)*hg_Params[3] + output.color0;\n    output.color0 = float4(r4)*hg_Params[4] + output.color0;\n    output.color0 = float4(r5)*hg_Params[5] + output.color0;\n    return output;\n}\n//MD5=0d1c621b:00258fbd:6ef4399d:d22b1819\n//SIG=00400000:0000003f:0000003f:0000003f:0000:0006:0006:0000:0000:0000:007e:0000:0006:06:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000660\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< float > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]])\n{\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    output.color0 = r0*hg_Params[0];\n    output.color0 = r1*hg_Params[1] + output.color0;\n    output.color0 = r2*hg_Params[2] + output.color0;\n    output.color0 = r3*hg_Params[3] + output.color0;\n    output.color0 = r4*hg_Params[4] + output.color0;\n    output.color0 = r5*hg_Params[5] + output.color0;\n    return output;\n}\n//MD5=01133b2e:b7731226:41b1c4b4:fe07a463\n//SIG=00000000:0000003f:0000003f:00000000:0000:0006:0006:0000:0000:0000:007e:0000:0006:06:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000064c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture4;\nuniform defaultp sampler2D hg_Texture5;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture4, hg_TexCoord4.xy);\n    r5 = texture2D(hg_Texture5, hg_TexCoord5.xy);\n    gl_FragColor = r0*hg_ProgramLocal0;\n    gl_FragColor = r1*hg_ProgramLocal1 + gl_FragColor;\n    gl_FragColor = r2*hg_ProgramLocal2 + gl_FragColor;\n    gl_FragColor = r3*hg_ProgramLocal3 + gl_FragColor;\n    gl_FragColor = r4*hg_ProgramLocal4 + gl_FragColor;\n    gl_FragColor = r5*hg_ProgramLocal5 + gl_FragColor;\n}\n//MD5=d9f61efd:2bb62bb6:54f027de:b750e4df\n//SIG=00000000:0000003f:0000003f:00000000:0000:0006:0006:0000:0000:0000:0000:0000:0006:06:0:1:0\n";
  }
}

void sub_25FF367A8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF369E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF36A50()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF36A48);
}

uint64_t HgcRetimeAddBlend6::BindTexture(HgcRetimeAddBlend6 *this, HGHandler *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 > 2)
  {
    switch(a3)
    {
      case 3:
        (*(*a2 + 72))(a2, 3, 0);
        (*(*a2 + 48))(a2, 0, 0);
        v5 = a2;
        v6 = 3;
        break;
      case 4:
        (*(*a2 + 72))(a2, 4, 0);
        (*(*a2 + 48))(a2, 0, 0);
        v5 = a2;
        v6 = 4;
        break;
      case 5:
        (*(*a2 + 72))(a2, 5, 0);
        (*(*a2 + 48))(a2, 0, 0);
        v5 = a2;
        v6 = 5;
        break;
      default:
        return result;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 1;
    }

    else
    {
      if (a3 != 2)
      {
        return result;
      }

      (*(*a2 + 72))(a2, 2, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 2;
    }
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 0;
  }

  HGHandler::TexCoord(v5, v6, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcRetimeAddBlend6::Bind(HgcRetimeAddBlend6 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*a2 + 144))(a2, 5, *(this + 51) + 80, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcRetimeAddBlend6::RenderTile(HgcRetimeAddBlend6 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 20);
    v7 = *(a2 + 18);
    v8 = *(a2 + 16);
    v9 = 16 * *(a2 + 38);
    v10 = 16 * *(a2 + 34);
    v11 = 16 * *(a2 + 30);
    v12 = 16 * *(a2 + 26);
    v13 = 16 * *(a2 + 22);
    v14 = *(a2 + 14);
    v15 = *(a2 + 12);
    v16 = 16 * *(a2 + 6);
    v17 = 16 * *(a2 + 42);
    v18 = *(a2 + 10);
    do
    {
      if (v4 < 2)
      {
        v20 = 0;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        for (i = v4; i > 1; i -= 2)
        {
          v22 = *(this + 51);
          v23 = v22[1];
          v24 = v22[2];
          v25 = v22[3];
          v26 = vaddq_f32(vmulq_f32(*(v8 + v19), v25), vaddq_f32(vmulq_f32(*(v14 + v19), v24), vaddq_f32(vmulq_f32(*(v18 + v19), *v22), vmulq_f32(*(v15 + v19), v23))));
          v27 = vaddq_f32(vmulq_f32(*(v8 + v19 + 16), v25), vaddq_f32(vmulq_f32(*(v14 + v19 + 16), v24), vaddq_f32(vmulq_f32(*(v18 + v19 + 16), *v22), vmulq_f32(*(v15 + v19 + 16), v23))));
          v28 = v22[4];
          v29 = v22[5];
          v30 = vaddq_f32(vmulq_f32(*(v6 + v19 + 16), v29), vaddq_f32(vmulq_f32(*(v7 + v19 + 16), v28), v27));
          v31 = (v5 + v19);
          *v31 = vaddq_f32(vmulq_f32(*(v6 + v19), v29), vaddq_f32(vmulq_f32(*(v7 + v19), v28), v26));
          v31[1] = v30;
          v20 += 2;
          v19 += 32;
        }
      }

      if (v20 < v4)
      {
        v32 = *(this + 51);
        *(v5 + 16 * v20) = vaddq_f32(vmulq_f32(*(v6 + 16 * v20), v32[5]), vaddq_f32(vmulq_f32(*(v7 + 16 * v20), v32[4]), vaddq_f32(vmulq_f32(*(v8 + 16 * v20), v32[3]), vaddq_f32(vmulq_f32(*(v14 + 16 * v20), v32[2]), vaddq_f32(vmulq_f32(*(v18 + 16 * v20), *v32), vmulq_f32(*(v15 + 16 * v20), v32[1]))))));
      }

      v18 += v13;
      v15 += v12;
      v14 += v11;
      v8 += v10;
      v7 += v9;
      v6 += v17;
      v5 += v16;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcRetimeAddBlend6::GetDOD(HgcRetimeAddBlend6 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 6)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcRetimeAddBlend6::GetROI(HgcRetimeAddBlend6 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 6)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcRetimeAddBlend6::HgcRetimeAddBlend6(HgcRetimeAddBlend6 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725C208;
  operator new();
}

void HgcRetimeAddBlend6::~HgcRetimeAddBlend6(HGNode *this)
{
  *this = &unk_28725C208;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcRetimeAddBlend6::~HgcRetimeAddBlend6(this);

  HGObject::operator delete(v1);
}

uint64_t HgcRetimeAddBlend6::SetParameter(HgcRetimeAddBlend6 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcRetimeAddBlend6::GetParameter(HgcRetimeAddBlend6 *this, unsigned int a2, float *a3)
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

const char *HgcConvolvePass8tap::GetProgram(HgcConvolvePass8tap *this, HGRenderer *a2)
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

void sub_25FF3747C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF377BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF37844()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF3783CLL);
}

uint64_t HgcConvolvePass8tap::BindTexture(float **this, HGHandler *a2, int a3)
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

  (*(*a2 + 96))(a2, *this[51], this[51][1], 0.0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, this[51][4], this[51][5], 0.0);
  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, this[51][8], this[51][9], 0.0);
  HGHandler::TexCoord(a2, 3, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, this[51][12], this[51][13], 0.0);
  HGHandler::TexCoord(a2, 4, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, this[51][16], this[51][17], 0.0);
  HGHandler::TexCoord(a2, 5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, this[51][20], this[51][21], 0.0);
  HGHandler::TexCoord(a2, 6, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, this[51][24], this[51][25], 0.0);
  HGHandler::TexCoord(a2, 7, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, this[51][28], this[51][29], 0.0);
  return 0;
}

uint64_t HgcConvolvePass8tap::Bind(HgcConvolvePass8tap *this, HGHandler *a2)
{
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
  (*(*a2 + 144))(a2, 14, *(this + 51) + 224, 1);
  (*(*a2 + 144))(a2, 15, *(this + 51) + 240, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcConvolvePass8tap::RenderTile(float32x4_t **this, HGTile *a2)
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
    v11 = this[51];
    v12 = vaddq_f32(v9, v11[7]);
    v13 = vaddq_f32(v9, v11[6]);
    v14 = vaddq_f32(v9, v11[5]);
    v15 = vaddq_f32(v9, v11[4]);
    v16 = vaddq_f32(v9, v11[3]);
    v17 = vaddq_f32(v9, v11[2]);
    v18 = vaddq_f32(v9, v11[1]);
    v19 = vaddq_f32(v9, *v11);
    v20 = *(a2 + 2);
    v21 = 16 * *(a2 + 6);
    v22.i64[0] = 0x3F0000003F000000;
    v22.i64[1] = 0x3F0000003F000000;
    do
    {
      if (v10 >= 1)
      {
        v23 = 0;
        v24 = v19;
        v25 = v18;
        v26 = v17;
        v27 = v16;
        v28 = v15;
        v29 = v14;
        v30 = v13;
        v31 = v12;
        do
        {
          v32 = *(a2 + 22);
          v33 = vsubq_f32(v24, v9);
          v34 = *(a2 + 10);
          if (v5)
          {
            v35 = vaddq_s32(vcvtq_s32_f32(v33), vcltzq_f32(v33));
            v36 = vsubq_f32(v33, vcvtq_f32_s32(v35)).u64[0];
            v37 = vsubq_f32(v25, v9);
            v38 = vaddq_s32(vcvtq_s32_f32(v37), vcltzq_f32(v37));
            v37.i64[0] = vsubq_f32(v37, vcvtq_f32_s32(v38)).u64[0];
            v39 = vdup_n_s32(v32);
            *v35.i8 = vmla_s32(vzip1_s32(*v35.i8, *v38.i8), vzip2_s32(*v35.i8, *v38.i8), v39);
            v40 = v35.i32[1];
            v41 = (v34 + 16 * v35.i32[0]);
            v42 = vaddq_f32(*v41, vmulq_n_f32(vsubq_f32(v41[1], *v41), v36.f32[0]));
            v43 = vaddq_f32(v42, vmulq_lane_f32(vsubq_f32(vaddq_f32(v41[v32], vmulq_n_f32(vsubq_f32(v41[v32 + 1], v41[v32]), v36.f32[0])), v42), v36, 1));
            v44 = (v34 + 16 * v40);
            v45 = vaddq_f32(*v44, vmulq_n_f32(vsubq_f32(v44[1], *v44), v37.f32[0]));
            v46 = vaddq_f32(v45, vmulq_lane_f32(vsubq_f32(vaddq_f32(v44[v32], vmulq_n_f32(vsubq_f32(v44[v32 + 1], v44[v32]), v37.f32[0])), v45), *v37.f32, 1));
            v47 = vsubq_f32(v26, v9);
            v48 = vaddq_s32(vcvtq_s32_f32(v47), vcltzq_f32(v47));
            v47.i64[0] = vsubq_f32(v47, vcvtq_f32_s32(v48)).u64[0];
            v49 = vsubq_f32(v27, v9);
            v50 = vaddq_s32(vcvtq_s32_f32(v49), vcltzq_f32(v49));
            v49.i64[0] = vsubq_f32(v49, vcvtq_f32_s32(v50)).u64[0];
            *v48.i8 = vmla_s32(vzip1_s32(*v48.i8, *v50.i8), vzip2_s32(*v48.i8, *v50.i8), v39);
            LODWORD(v44) = v48.i32[1];
            v51 = (v34 + 16 * v48.i32[0]);
            v52 = vaddq_f32(*v51, vmulq_n_f32(vsubq_f32(v51[1], *v51), v47.f32[0]));
            v53 = vaddq_f32(v52, vmulq_lane_f32(vsubq_f32(vaddq_f32(v51[v32], vmulq_n_f32(vsubq_f32(v51[v32 + 1], v51[v32]), v47.f32[0])), v52), *v47.f32, 1));
            v54 = (v34 + 16 * v44);
            v55 = vaddq_f32(*v54, vmulq_n_f32(vsubq_f32(v54[1], *v54), v49.f32[0]));
            v56 = vaddq_f32(v55, vmulq_lane_f32(vsubq_f32(vaddq_f32(v54[v32], vmulq_n_f32(vsubq_f32(v54[v32 + 1], v54[v32]), v49.f32[0])), v55), *v49.f32, 1));
            v57 = vsubq_f32(v28, v9);
            v58 = vaddq_s32(vcvtq_s32_f32(v57), vcltzq_f32(v57));
            v57.i64[0] = vsubq_f32(v57, vcvtq_f32_s32(v58)).u64[0];
            v59 = vsubq_f32(v29, v9);
            v60 = vaddq_s32(vcvtq_s32_f32(v59), vcltzq_f32(v59));
            v59.i64[0] = vsubq_f32(v59, vcvtq_f32_s32(v60)).u64[0];
            *v58.i8 = vmla_s32(vzip1_s32(*v58.i8, *v60.i8), vzip2_s32(*v58.i8, *v60.i8), v39);
            LODWORD(v54) = v58.i32[1];
            v61 = (v34 + 16 * v58.i32[0]);
            v62 = vaddq_f32(*v61, vmulq_n_f32(vsubq_f32(v61[1], *v61), v57.f32[0]));
            v63 = vaddq_f32(v62, vmulq_lane_f32(vsubq_f32(vaddq_f32(v61[v32], vmulq_n_f32(vsubq_f32(v61[v32 + 1], v61[v32]), v57.f32[0])), v62), *v57.f32, 1));
            v64 = (v34 + 16 * v54);
            v65 = vaddq_f32(*v64, vmulq_n_f32(vsubq_f32(v64[1], *v64), v59.f32[0]));
            v66 = vaddq_f32(v65, vmulq_lane_f32(vsubq_f32(vaddq_f32(v64[v32], vmulq_n_f32(vsubq_f32(v64[v32 + 1], v64[v32]), v59.f32[0])), v65), *v59.f32, 1));
            v67 = vsubq_f32(v30, v9);
            v68 = vaddq_s32(vcvtq_s32_f32(v67), vcltzq_f32(v67));
            v67.i64[0] = vsubq_f32(v67, vcvtq_f32_s32(v68)).u64[0];
            v69 = vsubq_f32(v31, v9);
            v70 = vaddq_s32(vcvtq_s32_f32(v69), vcltzq_f32(v69));
            v69.i64[0] = vsubq_f32(v69, vcvtq_f32_s32(v70)).u64[0];
            *v68.i8 = vmla_s32(vzip1_s32(*v68.i8, *v70.i8), vzip2_s32(*v68.i8, *v70.i8), v39);
            v71 = (v34 + 16 * v68.i32[0]);
            v72 = vaddq_f32(*v71, vmulq_n_f32(vsubq_f32(v71[1], *v71), v67.f32[0]));
            v73 = vaddq_f32(v72, vmulq_lane_f32(vsubq_f32(vaddq_f32(v71[v32], vmulq_n_f32(vsubq_f32(v71[v32 + 1], v71[v32]), v67.f32[0])), v72), *v67.f32, 1));
            v74 = (v34 + 16 * v68.i32[1]);
            v75 = vaddq_f32(*v74, vmulq_n_f32(vsubq_f32(v74[1], *v74), v69.f32[0]));
            v76 = vaddq_f32(v75, vmulq_lane_f32(vsubq_f32(vaddq_f32(v74[v32], vmulq_n_f32(vsubq_f32(v74[v32 + 1], v74[v32]), v69.f32[0])), v75), *v69.f32, 1));
          }

          else
          {
            v77 = vaddq_f32(v33, v22);
            v78 = vcvtq_s32_f32(v77);
            v79 = vaddq_f32(vsubq_f32(v25, v9), v22);
            v80 = vcvtq_s32_f32(v79);
            *v77.f32 = vadd_s32(*v78.i8, *&vcgtq_f32(vcvtq_f32_s32(v78), v77));
            *v78.i8 = vadd_s32(*v80.i8, *&vcgtq_f32(vcvtq_f32_s32(v80), v79));
            v81 = vdup_n_s32(v32);
            *v77.f32 = vmla_s32(vzip1_s32(*v77.f32, *v78.i8), vzip2_s32(*v77.f32, *v78.i8), v81);
            v82 = v77.i32[1];
            v43 = *(v34 + 16 * v77.i32[0]);
            v46 = *(v34 + 16 * v82);
            v83 = vaddq_f32(vsubq_f32(v26, v9), v22);
            v84 = vcvtq_s32_f32(v83);
            v85 = vaddq_f32(vsubq_f32(v27, v9), v22);
            v86 = vcvtq_s32_f32(v85);
            *v85.f32 = vadd_s32(*v86.i8, *&vcgtq_f32(vcvtq_f32_s32(v86), v85));
            *v83.f32 = vadd_s32(*v84.i8, *&vcgtq_f32(vcvtq_f32_s32(v84), v83));
            *v83.f32 = vmla_s32(vzip1_s32(*v83.f32, *v85.f32), vzip2_s32(*v83.f32, *v85.f32), v81);
            v87 = v83.i32[1];
            v53 = *(v34 + 16 * v83.i32[0]);
            v56 = *(v34 + 16 * v87);
            v88 = vaddq_f32(vsubq_f32(v28, v9), v22);
            v89 = vcvtq_s32_f32(v88);
            v90 = vaddq_f32(vsubq_f32(v29, v9), v22);
            v91 = vcvtq_s32_f32(v90);
            *v90.f32 = vadd_s32(*v91.i8, *&vcgtq_f32(vcvtq_f32_s32(v91), v90));
            *v88.f32 = vadd_s32(*v89.i8, *&vcgtq_f32(vcvtq_f32_s32(v89), v88));
            *v88.f32 = vmla_s32(vzip1_s32(*v88.f32, *v90.f32), vzip2_s32(*v88.f32, *v90.f32), v81);
            v92 = v88.i32[1];
            v63 = *(v34 + 16 * v88.i32[0]);
            v66 = *(v34 + 16 * v92);
            v93 = vaddq_f32(vsubq_f32(v30, v9), v22);
            v94 = vcvtq_s32_f32(v93);
            v95 = vaddq_f32(vsubq_f32(v31, v9), v22);
            v96 = vcvtq_s32_f32(v95);
            *v95.f32 = vadd_s32(*v96.i8, *&vcgtq_f32(vcvtq_f32_s32(v96), v95));
            *v93.f32 = vadd_s32(*v94.i8, *&vcgtq_f32(vcvtq_f32_s32(v94), v93));
            *v93.f32 = vmla_s32(vzip1_s32(*v93.f32, *v95.f32), vzip2_s32(*v93.f32, *v95.f32), v81);
            v73 = *(v34 + 16 * v93.i32[0]);
            v76 = *(v34 + 16 * v93.i32[1]);
          }

          v97 = this[51];
          *(v20 + v23) = vaddq_f32(vmulq_f32(v76, v97[15]), vaddq_f32(vmulq_f32(v73, v97[14]), vaddq_f32(vmulq_f32(v66, v97[13]), vaddq_f32(vmulq_f32(v63, v97[12]), vaddq_f32(vmulq_f32(v56, v97[11]), vaddq_f32(vmulq_f32(v53, v97[10]), vaddq_f32(vmulq_f32(v43, v97[8]), vmulq_f32(v46, v97[9]))))))));
          v24 = vaddq_f32(v24, xmmword_2603429B0);
          v25 = vaddq_f32(v25, xmmword_2603429B0);
          v26 = vaddq_f32(v26, xmmword_2603429B0);
          v27 = vaddq_f32(v27, xmmword_2603429B0);
          v28 = vaddq_f32(v28, xmmword_2603429B0);
          v29 = vaddq_f32(v29, xmmword_2603429B0);
          v30 = vaddq_f32(v30, xmmword_2603429B0);
          v31 = vaddq_f32(v31, xmmword_2603429B0);
          v23 += 16;
        }

        while (16 * v10 != v23);
      }

      v19 = vaddq_f32(v19, xmmword_2603429C0);
      v18 = vaddq_f32(v18, xmmword_2603429C0);
      v17 = vaddq_f32(v17, xmmword_2603429C0);
      v16 = vaddq_f32(v16, xmmword_2603429C0);
      v15 = vaddq_f32(v15, xmmword_2603429C0);
      v14 = vaddq_f32(v14, xmmword_2603429C0);
      ++v8;
      v13 = vaddq_f32(v13, xmmword_2603429C0);
      v20 += v21;
      v12 = vaddq_f32(v12, xmmword_2603429C0);
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcConvolvePass8tap::GetDOD(float **this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  if ((*(*this + 39))(this, a2) >= 1)
  {
    v8 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    LODWORD(v6) = HGRectGrow(v6, v5, v8);
  }

  v9 = HGRectFloat(v6);
  v11 = LODWORD(v10);
  v13 = v12;
  v15 = LODWORD(v14);
  v16 = HGRectTranslate(v9, v10, v12, v14, -*this[51]);
  v21 = HGRectIntegral(v17, v16, v18, v19, v20);
  v23 = HGRectUnion(0, 0, v21, v22);
  v25 = v24;
  LODWORD(v26) = v11;
  LODWORD(v27) = v15;
  v28 = HGRectTranslate(v9, v26, v13, v27, -this[51][4]);
  v33 = HGRectIntegral(v29, v28, v30, v31, v32);
  v35 = HGRectUnion(v23, v25, v33, v34);
  v37 = v36;
  LODWORD(v38) = v11;
  LODWORD(v39) = v15;
  v40 = HGRectTranslate(v9, v38, v13, v39, -this[51][8]);
  v45 = HGRectIntegral(v41, v40, v42, v43, v44);
  v47 = HGRectUnion(v35, v37, v45, v46);
  v49 = v48;
  LODWORD(v50) = v11;
  LODWORD(v51) = v15;
  v52 = HGRectTranslate(v9, v50, v13, v51, -this[51][12]);
  v57 = HGRectIntegral(v53, v52, v54, v55, v56);
  v59 = HGRectUnion(v47, v49, v57, v58);
  v61 = v60;
  LODWORD(v62) = v11;
  LODWORD(v63) = v15;
  v64 = HGRectTranslate(v9, v62, v13, v63, -this[51][16]);
  v69 = HGRectIntegral(v65, v64, v66, v67, v68);
  v71 = HGRectUnion(v59, v61, v69, v70);
  v73 = v72;
  LODWORD(v74) = v11;
  LODWORD(v75) = v15;
  v76 = HGRectTranslate(v9, v74, v13, v75, -this[51][20]);
  v81 = HGRectIntegral(v77, v76, v78, v79, v80);
  v83 = HGRectUnion(v71, v73, v81, v82);
  v85 = v84;
  LODWORD(v86) = v11;
  LODWORD(v87) = v15;
  v88 = HGRectTranslate(v9, v86, v13, v87, -this[51][24]);
  v93 = HGRectIntegral(v89, v88, v90, v91, v92);
  v95 = HGRectUnion(v83, v85, v93, v94);
  v97 = v96;
  LODWORD(v98) = v11;
  LODWORD(v99) = v15;
  v100 = HGRectTranslate(v9, v98, v13, v99, -this[51][28]);
  v105 = HGRectIntegral(v101, v100, v102, v103, v104);
  return HGRectUnion(v95, v97, v105, v106);
}

uint64_t HgcConvolvePass8tap::GetROI(float **this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = 0;
  if (!a3)
  {
    v7 = HGRectFloat(a4.var0);
    v9 = LODWORD(v8);
    v11 = v10;
    v13 = LODWORD(v12);
    v14 = HGRectTranslate(v7, v8, v10, v12, *this[51]);
    v19 = HGRectIntegral(v15, v14, v16, v17, v18);
    v21 = HGRectUnion(0, 0, v19, v20);
    v23 = v22;
    LODWORD(v24) = v9;
    LODWORD(v25) = v13;
    v26 = HGRectTranslate(v7, v24, v11, v25, this[51][4]);
    v31 = HGRectIntegral(v27, v26, v28, v29, v30);
    v33 = HGRectUnion(v21, v23, v31, v32);
    v35 = v34;
    LODWORD(v36) = v9;
    LODWORD(v37) = v13;
    v38 = HGRectTranslate(v7, v36, v11, v37, this[51][8]);
    v43 = HGRectIntegral(v39, v38, v40, v41, v42);
    v45 = HGRectUnion(v33, v35, v43, v44);
    v47 = v46;
    LODWORD(v48) = v9;
    LODWORD(v49) = v13;
    v50 = HGRectTranslate(v7, v48, v11, v49, this[51][12]);
    v55 = HGRectIntegral(v51, v50, v52, v53, v54);
    v57 = HGRectUnion(v45, v47, v55, v56);
    v59 = v58;
    LODWORD(v60) = v9;
    LODWORD(v61) = v13;
    v62 = HGRectTranslate(v7, v60, v11, v61, this[51][16]);
    v67 = HGRectIntegral(v63, v62, v64, v65, v66);
    v69 = HGRectUnion(v57, v59, v67, v68);
    v71 = v70;
    LODWORD(v72) = v9;
    LODWORD(v73) = v13;
    v74 = HGRectTranslate(v7, v72, v11, v73, this[51][20]);
    v79 = HGRectIntegral(v75, v74, v76, v77, v78);
    v81 = HGRectUnion(v69, v71, v79, v80);
    v83 = v82;
    LODWORD(v84) = v9;
    LODWORD(v85) = v13;
    v86 = HGRectTranslate(v7, v84, v11, v85, this[51][24]);
    v91 = HGRectIntegral(v87, v86, v88, v89, v90);
    v93 = HGRectUnion(v81, v83, v91, v92);
    v95 = v94;
    LODWORD(v96) = v9;
    LODWORD(v97) = v13;
    v98 = HGRectTranslate(v7, v96, v11, v97, this[51][28]);
    v103 = HGRectIntegral(v99, v98, v100, v101, v102);
    v4 = HGRectUnion(v93, v95, v103, v104);
    v106 = v105;
    if ((*(*this + 39))(this, a2) >= 1)
    {
      v107 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      return HGRectGrow(v4, v106, v107);
    }
  }

  return v4;
}

void HgcConvolvePass8tap::HgcConvolvePass8tap(HgcConvolvePass8tap *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725C470;
  operator new();
}

void HgcConvolvePass8tap::~HgcConvolvePass8tap(HGNode *this)
{
  *this = &unk_28725C470;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40104B78CFLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcConvolvePass8tap::~HgcConvolvePass8tap(this);

  HGObject::operator delete(v1);
}

uint64_t HgcConvolvePass8tap::SetParameter(HgcConvolvePass8tap *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 0xF)
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

uint64_t HgcConvolvePass8tap::GetParameter(HgcConvolvePass8tap *this, unsigned int a2, float *a3)
{
  if (a2 > 0xF)
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

const char *HgcSmearToRect::GetProgram(HgcSmearToRect *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 s0;\n    FragmentOut output;\n\n    s0.xy = fmin(frag._texCoord0.xy, hg_Params[0].zw);\n    s0.xy = fmax(s0.xy, hg_Params[0].xy);\n    s0.xy = s0.xy + hg_Params[1].xy;\n    s0.xy = s0.xy*hg_Params[1].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=8ddc6cfb:4c51e2d4:1403eabc:4a3636c0\n//SIG=00400000:00000000:00000000:00000001:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002aa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.xy = fmin(frag._texCoord0.xy, hg_Params[0].zw);\n    r0.xy = fmax(r0.xy, hg_Params[0].xy);\n    r0.xy = r0.xy + hg_Params[1].xy;\n    r0.xy = r0.xy*hg_Params[1].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=82ea8f91:772b3f51:4d493828:f90a96ed\n//SIG=00000000:00000000:00000000:00000000:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002a1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    highp vec4 r0;\n\n    r0.xy = min(hg_TexCoord0.xy, hg_ProgramLocal0.zw);\n    r0.xy = max(r0.xy, hg_ProgramLocal0.xy);\n    r0.xy = r0.xy + hg_ProgramLocal1.xy;\n    r0.xy = r0.xy*hg_ProgramLocal1.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=cbac0ee7:56d75b2c:e8e4fa16:e2cb9d44\n//SIG=00000000:00000000:00000000:00000000:0000:0002:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF39054(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF391D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF39224()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF3921CLL);
}

uint64_t HgcSmearToRect::BindTexture(HgcSmearToRect *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

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
  (*(*a2 + 136))(a2, 1, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcSmearToRect::Bind(HgcSmearToRect *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSmearToRect::RenderTile(float32x4_t **this, float32x4_t **a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = ((*this)[19].i64[1])(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - (*a2 >> 32);
  if (v7 >= 1)
  {
    v8 = 0;
    *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
    v9.i64[1] = 0x3F80000000000000;
    v10 = *(a2 + 2) - v6.i32[0];
    v11 = a2[2];
    v12 = v11 + 2;
    v13 = 16 * *(a2 + 6);
    v14.i64[0] = 0x3F0000003F000000;
    v14.i64[1] = 0x3F0000003F000000;
    v15 = v9;
    do
    {
      if (v10 < 4)
      {
        v16 = 0;
        v19 = v15;
      }

      else
      {
        v16 = 0;
        v17 = v12;
        v18 = v10;
        v19 = v15;
        do
        {
          v20 = vaddq_f32(v19, xmmword_2603429B0);
          v21 = vaddq_f32(v20, xmmword_2603429B0);
          v22 = vaddq_f32(v21, xmmword_2603429B0);
          v23 = *this[51];
          v24 = vextq_s8(v23, v23, 8uLL);
          v25 = vminq_f32(v22, v24);
          v26 = vmaxq_f32(vminq_f32(v19, v24), v23);
          v27 = vmaxq_f32(vminq_f32(v20, v24), v23);
          v28 = vmaxq_f32(vminq_f32(v21, v24), v23);
          v29 = vmaxq_f32(v25, v23);
          v30 = *(a2 + 22);
          v31 = vsubq_f32(v26, v9);
          v32 = a2[10];
          if (v5)
          {
            v33 = vaddq_s32(vcvtq_s32_f32(v31), vcltzq_f32(v31));
            v34 = vsubq_f32(v31, vcvtq_f32_s32(v33)).u64[0];
            v35 = vsubq_f32(v27, v9);
            v36 = vaddq_s32(vcvtq_s32_f32(v35), vcltzq_f32(v35));
            v37 = vsubq_f32(v35, vcvtq_f32_s32(v36)).u64[0];
            v38 = vdup_n_s32(v30);
            *v33.i8 = vmla_s32(vzip1_s32(*v33.i8, *v36.i8), vzip2_s32(*v33.i8, *v36.i8), v38);
            v39 = &v32[v33.i32[0]];
            v40 = vaddq_f32(*v39, vmulq_n_f32(vsubq_f32(v39[1], *v39), v34.f32[0]));
            v41 = vaddq_f32(v40, vmulq_lane_f32(vsubq_f32(vaddq_f32(v39[v30], vmulq_n_f32(vsubq_f32(v39[v30 + 1], v39[v30]), v34.f32[0])), v40), v34, 1));
            v42 = &v32[v33.i32[1]];
            v43 = vaddq_f32(*v42, vmulq_n_f32(vsubq_f32(v42[1], *v42), v37.f32[0]));
            v44 = vaddq_f32(v43, vmulq_lane_f32(vsubq_f32(vaddq_f32(v42[v30], vmulq_n_f32(vsubq_f32(v42[v30 + 1], v42[v30]), v37.f32[0])), v43), v37, 1));
            v45 = vsubq_f32(v28, v9);
            v46 = vaddq_s32(vcvtq_s32_f32(v45), vcltzq_f32(v45));
            v45.i64[0] = vsubq_f32(v45, vcvtq_f32_s32(v46)).u64[0];
            v47 = vsubq_f32(v29, v9);
            v48 = vaddq_s32(vcvtq_s32_f32(v47), vcltzq_f32(v47));
            *v46.i8 = vmla_s32(vzip1_s32(*v46.i8, *v48.i8), vzip2_s32(*v46.i8, *v48.i8), v38);
            v49 = &v32[v46.i32[0]];
            v48.i64[0] = vsubq_f32(v47, vcvtq_f32_s32(v48)).u64[0];
            v50 = vaddq_f32(*v49, vmulq_n_f32(vsubq_f32(v49[1], *v49), v45.f32[0]));
            v51 = vaddq_f32(v50, vmulq_lane_f32(vsubq_f32(vaddq_f32(v49[v30], vmulq_n_f32(vsubq_f32(v49[v30 + 1], v49[v30]), v45.f32[0])), v50), *v45.f32, 1));
            v52 = &v32[v46.i32[1]];
            v53 = vaddq_f32(*v52, vmulq_n_f32(vsubq_f32(v52[1], *v52), *v48.i32));
            v54 = vaddq_f32(v53, vmulq_lane_f32(vsubq_f32(vaddq_f32(v52[v30], vmulq_n_f32(vsubq_f32(v52[v30 + 1], v52[v30]), *v48.i32)), v53), *v48.i8, 1));
          }

          else
          {
            v55 = vaddq_f32(v31, v14);
            v56 = vcvtq_s32_f32(v55);
            v57 = vaddq_f32(vsubq_f32(v27, v9), v14);
            v58 = vcvtq_s32_f32(v57);
            *v55.f32 = vadd_s32(*v56.i8, *&vcgtq_f32(vcvtq_f32_s32(v56), v55));
            *v57.f32 = vadd_s32(*v58.i8, *&vcgtq_f32(vcvtq_f32_s32(v58), v57));
            *v58.i8 = vdup_n_s32(v30);
            *v57.f32 = vmla_s32(vzip1_s32(*v55.f32, *v57.f32), vzip2_s32(*v55.f32, *v57.f32), *v58.i8);
            v59 = v57.i32[1];
            v41 = v32[v57.i32[0]];
            v44 = v32[v59];
            v60 = vaddq_f32(vsubq_f32(v28, v9), v14);
            v61 = vcvtq_s32_f32(v60);
            v62 = vaddq_f32(vsubq_f32(v29, v9), v14);
            v63 = vcvtq_s32_f32(v62);
            *v62.f32 = vadd_s32(*v63.i8, *&vcgtq_f32(vcvtq_f32_s32(v63), v62));
            *v60.f32 = vadd_s32(*v61.i8, *&vcgtq_f32(vcvtq_f32_s32(v61), v60));
            *v62.f32 = vmla_s32(vzip1_s32(*v60.f32, *v62.f32), vzip2_s32(*v60.f32, *v62.f32), *v58.i8);
            v64 = v62.i32[1];
            v51 = v32[v62.i32[0]];
            v54 = v32[v64];
          }

          v17[-2] = v41;
          v17[-1] = v44;
          *v17 = v51;
          v17[1] = v54;
          v17 += 4;
          v19 = vaddq_f32(v22, xmmword_2603429B0);
          v18 -= 4;
          v16 += 4;
        }

        while (v18 > 3);
      }

      if (v16 < v10)
      {
        do
        {
          v65 = *(a2 + 22);
          v66 = vsubq_f32(vmaxq_f32(vminq_f32(v19, vextq_s8(*this[51], *this[51], 8uLL)), *this[51]), v9);
          v67 = a2[10];
          if (v5)
          {
            v68 = vaddq_s32(vcvtq_s32_f32(v66), vcltzq_f32(v66));
            v69 = vsubq_f32(v66, vcvtq_f32_s32(v68)).u64[0];
            v70 = &v67[v68.i32[0] + v68.i32[1] * v65];
            v71 = vaddq_f32(*v70, vmulq_n_f32(vsubq_f32(v70[1], *v70), v69.f32[0]));
            v72 = vaddq_f32(v71, vmulq_lane_f32(vsubq_f32(vaddq_f32(v70[v65], vmulq_n_f32(vsubq_f32(v70[v65 + 1], v70[v65]), v69.f32[0])), v71), v69, 1));
          }

          else
          {
            v73 = vaddq_f32(v66, v14);
            v74 = vcvtq_s32_f32(v73);
            v73.i64[0] = vaddq_s32(v74, vcgtq_f32(vcvtq_f32_s32(v74), v73)).u64[0];
            v72 = v67[v73.i32[0] + v73.i32[1] * v65];
          }

          v11[v16] = v72;
          v19 = vaddq_f32(v19, xmmword_2603429B0);
          ++v16;
        }

        while (v16 < v10);
      }

      v15 = vaddq_f32(v15, xmmword_2603429C0);
      ++v8;
      v12 = (v12 + v13);
      v11 = (v11 + v13);
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcSmearToRect::GetDOD(HgcSmearToRect *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcSmearToRect::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcSmearToRect::HgcSmearToRect(HgcSmearToRect *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725C6D8;
  operator new();
}

void HgcSmearToRect::~HgcSmearToRect(HGNode *this)
{
  *this = &unk_28725C6D8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  HgcSmearToRect::~HgcSmearToRect(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSmearToRect::SetParameter(HgcSmearToRect *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcSmearToRect::GetParameter(HgcSmearToRect *this, int a2, float *a3)
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

const char *HgcSimpleBorder::GetProgram(HgcSimpleBorder *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004bf\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.z = dot(frag._texCoord1, hg_Params[5]);\n    s0.z = 1.00000f / s0.z;\n    s0.x = dot(frag._texCoord1, hg_Params[3]);\n    s0.y = dot(frag._texCoord1, hg_Params[4]);\n    s0.xy = s0.xz*s0.zy;\n    s0 = s0.xyxy - hg_Params[1];\n    s0.xy = -s0.xy;\n    s1 = s0 + float4(c0.xxxx);\n    s1.xy = fmin(s1.xy, s1.zw);\n    s0 = s0 - hg_Params[0];\n    s1.x = clamp(fmin(s1.x, s1.y), 0.00000f, 1.00000f);\n    s0 = s0 + float4(c0.xxxx);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s0.xy = fmin(s0.xy, s0.zw);\n    s0.x = clamp(fmin(s0.x, s0.y), 0.00000f, 1.00000f);\n    s0 = mix(hg_Params[2], float4(r0), s0.xxxx);\n    output.color0 = s0*s1.xxxx;\n    return output;\n}\n//MD5=dd1f3d2a:b4ccf73d:99838ad2:b16e7208\n//SIG=00400000:00000001:00000001:00000001:0001:0006:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000498\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.z = dot(frag._texCoord1, hg_Params[5]);\n    r0.z = 1.00000f / r0.z;\n    r0.x = dot(frag._texCoord1, hg_Params[3]);\n    r0.y = dot(frag._texCoord1, hg_Params[4]);\n    r0.xy = r0.xz*r0.zy;\n    r0 = r0.xyxy - hg_Params[1];\n    r0.xy = -r0.xy;\n    r1 = r0 + c0.xxxx;\n    r1.xy = fmin(r1.xy, r1.zw);\n    r0 = r0 - hg_Params[0];\n    r1.x = clamp(fmin(r1.x, r1.y), 0.00000f, 1.00000f);\n    r0 = r0 + c0.xxxx;\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xy = fmin(r0.xy, r0.zw);\n    r0.x = clamp(fmin(r0.x, r0.y), 0.00000f, 1.00000f);\n    r2 = mix(hg_Params[2], r2, r0.xxxx);\n    output.color0 = r2*r1.xxxx;\n    return output;\n}\n//MD5=eaf374c3:9d3d91f5:dd3ad5d7:06edf1a2\n//SIG=00000000:00000001:00000001:00000000:0001:0006:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000053e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.z = dot(hg_TexCoord1, hg_ProgramLocal5);\n    r0.z = 1.00000 / r0.z;\n    r0.x = dot(hg_TexCoord1, hg_ProgramLocal3);\n    r0.y = dot(hg_TexCoord1, hg_ProgramLocal4);\n    r0.xy = r0.xz*r0.zy;\n    r0 = r0.xyxy - hg_ProgramLocal1;\n    r0.xy = -r0.xy;\n    r1 = r0 + c0.xxxx;\n    r1.xy = min(r1.xy, r1.zw);\n    r0 = r0 - hg_ProgramLocal0;\n    r1.x = clamp(min(r1.x, r1.y), 0.00000, 1.00000);\n    r0 = r0 + c0.xxxx;\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xy = min(r0.xy, r0.zw);\n    r0.x = clamp(min(r0.x, r0.y), 0.00000, 1.00000);\n    r2 = mix(hg_ProgramLocal2, r2, r0.xxxx);\n    gl_FragColor = r2*r1.xxxx;\n}\n//MD5=8714e1a3:0379e8a0:fa930950:6b08f775\n//SIG=00000000:00000001:00000001:00000000:0001:0006:0003:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FF39C7C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF39DBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF39E04()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF39DFCLL);
}

uint64_t HgcSimpleBorder::BindTexture(HgcSimpleBorder *this, HGHandler *a2, int a3)
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

uint64_t HgcSimpleBorder::Bind(HgcSimpleBorder *this, HGHandler *a2)
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

uint64_t HgcSimpleBorder::RenderTile(HgcSimpleBorder *this, int32x2_t *a2)
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
          v19 = *(v17 + 64);
          v18 = *(v17 + 80);
          v20 = vmulq_f32(v14, v18);
          v21 = vmulq_f32(v15, v18);
          v22 = vmulq_f32(v16, v18);
          v23 = vaddq_f32(v20, vextq_s8(v20, v20, 4uLL));
          v24 = vaddq_f32(v21, vextq_s8(v21, v21, 4uLL));
          v25 = vaddq_f32(v22, vextq_s8(v22, v22, 4uLL));
          v26 = vaddq_f32(v23, vextq_s8(v23, v23, 8uLL));
          v27 = vaddq_f32(v24, vextq_s8(v24, v24, 8uLL));
          v28 = vaddq_f32(v25, vextq_s8(v25, v25, 8uLL));
          v29 = *(v17 + 96);
          v30 = *(v17 + 112);
          v31 = vminq_f32(vmaxq_f32(vrecpeq_f32(v26), v29), v30);
          v32 = vminq_f32(vmaxq_f32(vrecpeq_f32(v27), v29), v30);
          v33 = vminq_f32(vmaxq_f32(vrecpeq_f32(v28), v29), v30);
          v34 = vmaxq_f32(vmulq_f32(v33, vrecpsq_f32(v28, v33)), v29);
          v35 = vminq_f32(vmaxq_f32(vmulq_f32(v31, vrecpsq_f32(v26, v31)), v29), v30);
          v36 = vminq_f32(vmaxq_f32(vmulq_f32(v32, vrecpsq_f32(v27, v32)), v29), v30);
          v37 = vminq_f32(v34, v30);
          v38 = vrecpsq_f32(v26, v35);
          v39 = vrecpsq_f32(v28, v37);
          v40 = *(v17 + 32);
          v41 = *(v17 + 48);
          v42 = vmulq_f32(v14, v41);
          v43 = vmulq_f32(v15, v41);
          v44 = vmulq_f32(v16, v41);
          v45 = vmulq_f32(v35, v38);
          v46 = vaddq_f32(v42, vextq_s8(v42, v42, 4uLL));
          v47 = vaddq_f32(v43, vextq_s8(v43, v43, 4uLL));
          v48 = vmulq_f32(v36, vrecpsq_f32(v27, v36));
          v49 = vaddq_f32(v44, vextq_s8(v44, v44, 4uLL));
          v50 = vmulq_f32(v37, v39);
          v46.i64[0] = vaddq_f32(v46, vdupq_laneq_s64(v46, 1)).u64[0];
          v44.i64[0] = vaddq_f32(v47, vdupq_laneq_s64(v47, 1)).u64[0];
          v46.i64[1] = v45.i64[1];
          v39.i64[0] = vaddq_f32(v49, vdupq_laneq_s64(v49, 1)).u64[0];
          v51 = vmulq_f32(v14, v19);
          v52 = vmulq_f32(v15, v19);
          v53 = vmulq_f32(v16, v19);
          v44.i64[1] = v48.i64[1];
          v54 = vaddq_f32(v51, vextq_s8(v51, v51, 4uLL));
          v39.i64[1] = v50.i64[1];
          v55 = vaddq_f32(v52, vextq_s8(v52, v52, 4uLL));
          v56 = vaddq_f32(v53, vextq_s8(v53, v53, 4uLL));
          v57 = *(v17 + 128);
          v58 = *(v17 + 144);
          v59 = vbslq_s8(v57, vaddq_f32(v54, vextq_s8(v54, v54, 8uLL)), v46);
          v60 = vbslq_s8(v57, vaddq_f32(v55, vextq_s8(v55, v55, 8uLL)), v44);
          v61 = vbslq_s8(v57, vaddq_f32(v56, vextq_s8(v56, v56, 8uLL)), v39);
          v62 = *(v17 + 160);
          v63 = *(v17 + 176);
          *v59.f32 = vmul_f32(vqtbl1_s8(v59, *&v58), vqtbl1_s8(v59, *&v62));
          v59.i64[1] = v59.i64[0];
          *v60.f32 = vmul_f32(vqtbl1_s8(v60, *&v58), vqtbl1_s8(v60, *&v62));
          v60.i64[1] = v60.i64[0];
          *v61.f32 = vmul_f32(vqtbl1_s8(v61, *&v58), vqtbl1_s8(v61, *&v62));
          v61.i64[1] = v61.i64[0];
          v64 = *(v17 + 16);
          v65 = vsubq_f32(v59, v64);
          v66 = vsubq_f32(v60, v64);
          v67 = vsubq_f32(v61, v64);
          *v64.f32 = vneg_f32(*v65.f32);
          *v39.f32 = vneg_f32(*v66.i8);
          v64.i64[1] = vextq_s8(v65, v65, 8uLL).u64[0];
          v39.i64[1] = vextq_s8(v66, v66, 8uLL).u64[0];
          *v65.f32 = vneg_f32(*v67.i8);
          v65.i64[1] = vextq_s8(v67, v67, 8uLL).u64[0];
          v68 = vaddq_f32(v63, v64);
          v69 = vaddq_f32(v63, v39);
          v70 = vaddq_f32(v63, v65);
          v71 = vminq_f32(v68, vextq_s8(v68, v68, 8uLL));
          v72 = vminq_f32(v69, vextq_s8(v69, v69, 8uLL));
          v73 = vminq_f32(v70, vextq_s8(v70, v70, 8uLL));
          v74 = vminq_f32(v73, vrev64q_s32(v73));
          v75 = *(v17 + 192);
          v76 = vaddq_f32(v63, vsubq_f32(v64, *v17));
          v77 = vaddq_f32(v63, vsubq_f32(v39, *v17));
          v78 = vaddq_f32(v63, vsubq_f32(v65, *v17));
          v79 = vmaxq_f32(v74, v29);
          v80 = vminq_f32(v76, vextq_s8(v76, v76, 8uLL));
          v81 = vminq_f32(v77, vextq_s8(v77, v77, 8uLL));
          v82 = vminq_f32(v78, vextq_s8(v78, v78, 8uLL));
          v72.i32[0] = vminq_f32(vmaxq_f32(vminq_f32(v72, vrev64q_s32(v72)), v29), v75).u32[0];
          v83 = vmaxq_f32(vminq_f32(v81, vrev64q_s32(v81)), v29);
          v84 = vmaxq_f32(vminq_f32(v82, vrev64q_s32(v82)), v29);
          v85 = vmulq_n_f32(vaddq_f32(v40, vmulq_n_f32(vsubq_f32(*(*&v7 + v11), v40), vminq_f32(vmaxq_f32(vminq_f32(v80, vrev64q_s32(v80)), v29), v75).f32[0])), vminq_f32(vmaxq_f32(vminq_f32(v71, vrev64q_s32(v71)), v29), v75).f32[0]);
          v86 = vmulq_n_f32(vaddq_f32(v40, vmulq_n_f32(vsubq_f32(*(*&v7 + v11 + 16), v40), vminq_f32(v83, v75).f32[0])), v72.f32[0]);
          v87 = vmulq_n_f32(vaddq_f32(v40, vmulq_n_f32(vsubq_f32(*(*&v7 + v11 + 32), v40), vminq_f32(v84, v75).f32[0])), vminq_f32(v79, v75).f32[0]);
          v88 = (*&v6 + v11);
          *v88 = v85;
          v88[1] = v86;
          v88[2] = v87;
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
          v89 = *(this + 51);
          v90 = vmulq_f32(v14, *(v89 + 80));
          v91 = vaddq_f32(v90, vextq_s8(v90, v90, 4uLL));
          v92 = vaddq_f32(v91, vextq_s8(v91, v91, 8uLL));
          v93 = *(v89 + 96);
          v94 = *(v89 + 112);
          v95 = vminq_f32(vmaxq_f32(vrecpeq_f32(v92), v93), v94);
          v96 = vminq_f32(vmaxq_f32(vmulq_f32(v95, vrecpsq_f32(v92, v95)), v93), v94);
          v97 = vmulq_f32(v14, *(v89 + 48));
          v98 = vaddq_f32(v97, vextq_s8(v97, v97, 4uLL));
          v99 = vmulq_f32(v96, vrecpsq_f32(v92, v96));
          v96.i64[0] = vaddq_f32(v98, vdupq_laneq_s64(v98, 1)).u64[0];
          v100 = vmulq_f32(v14, *(v89 + 64));
          v96.i64[1] = v99.i64[1];
          v101 = vaddq_f32(v100, vextq_s8(v100, v100, 4uLL));
          v102 = vbslq_s8(*(v89 + 128), vaddq_f32(v101, vextq_s8(v101, v101, 8uLL)), v96);
          v103 = *(v89 + 176);
          *v102.f32 = vmul_f32(vqtbl1_s8(v102, *(v89 + 144)), vqtbl1_s8(v102, *(v89 + 160)));
          v102.i64[1] = v102.i64[0];
          v104 = vsubq_f32(v102, *(v89 + 16));
          *v99.f32 = vneg_f32(*v104.i8);
          v99.i64[1] = vextq_s8(v104, v104, 8uLL).u64[0];
          v105 = vaddq_f32(v103, v99);
          v106 = vminq_f32(v105, vextq_s8(v105, v105, 8uLL));
          v107 = vaddq_f32(v103, vsubq_f32(v99, *v89));
          v108 = vminq_f32(v107, vextq_s8(v107, v107, 8uLL));
          *(*&v6 + 16 * v12) = vmulq_n_f32(vaddq_f32(*(v89 + 32), vmulq_n_f32(vsubq_f32(*(*&v7 + 16 * v12), *(v89 + 32)), vminq_f32(vmaxq_f32(vminq_f32(v108, vrev64q_s32(v108)), v93), *(v89 + 192)).f32[0])), vminq_f32(vmaxq_f32(vminq_f32(v106, vrev64q_s32(v106)), v93), *(v89 + 192)).f32[0]);
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

uint64_t HgcSimpleBorder::GetDOD(HgcSimpleBorder *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcSimpleBorder::GetROI(HgcSimpleBorder *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcSimpleBorder::HgcSimpleBorder(HgcSimpleBorder *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725C940;
  operator new();
}

void HgcSimpleBorder::~HgcSimpleBorder(HGNode *this)
{
  *this = &unk_28725C940;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40104B78CFLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcSimpleBorder::~HgcSimpleBorder(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSimpleBorder::SetParameter(HgcSimpleBorder *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v11 = *(this + 51);
        if (*v11 != a3.n128_f32[0] || *(v11 + 4) != a4 || *(v11 + 8) != a3.n128_f32[0] || *(v11 + 12) != a4)
        {
          a3.n128_f32[1] = a4;
          *v11 = vdupq_lane_s64(a3.n128_i64[0], 0);
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v11 + 208) = a3;
          goto LABEL_40;
        }

        return 0;
      case 1:
        v13 = *(this + 51);
        if (v13[1].n128_f32[0] != a5 || v13[1].n128_f32[1] != a6 || v13[1].n128_f32[2] != a3.n128_f32[0] || v13[1].n128_f32[3] != a4)
        {
          v13[1].n128_f32[0] = a5;
          v13[1].n128_f32[1] = a6;
          v13[1].n128_u32[2] = a3.n128_u32[0];
          v13[1].n128_f32[3] = a4;
          a3.n128_f32[1] = a4;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v13[14] = a3;
          goto LABEL_40;
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
          goto LABEL_40;
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
          goto LABEL_40;
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
LABEL_40:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    if (a2 == 5)
    {
      v7 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 51) + 240) = a3;
    }

    else if (a2 == 6)
    {
      v10 = *(this + 51);
      if (*(v10 + 80) != a3.n128_f32[0] || *(v10 + 84) != a4 || *(v10 + 88) != a5 || *(v10 + 92) != a6)
      {
        *(v10 + 80) = a3.n128_u32[0];
        *(v10 + 84) = a4;
        *(v10 + 88) = a5;
        *(v10 + 92) = a6;
        goto LABEL_40;
      }

      return 0;
    }
  }

  return v7;
}

uint64_t HgcSimpleBorder::GetParameter(HgcSimpleBorder *this, unsigned int a2, float *a3)
{
  if (a2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = qword_26084ACB8[a2];
  v6 = qword_26084ACF0[a2];
  v7 = qword_26084AD28[a2];
  v8 = *(this + 51);
  *a3 = *(v8 + qword_26084AC80[a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

const char *HgcContrastBezierLuma::GetProgram(HgcContrastBezierLuma *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000875\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.2989999950, 0.5870000124, 0.1140000001, 1023.000000);\n    const half4 c1 = half4(0.5000000000, 0.000000000, 1.000000000, 0.000000000);\n    const half4 c2 = half4(0.5960000157, -0.2750000060, -0.3210000098, 0.000000000);\n    const half4 c3 = half4(0.2119999975, -0.5230000019, 0.3109999895, 0.000000000);\n    const half4 c4 = half4(1.000000000, -1.106999993, 1.703999996, 0.000000000);\n    const half4 c5 = half4(1.000000000, 0.9559999704, 0.6209999919, 0.000000000);\n    const half4 c6 = half4(1.000000000, -0.2720000148, -0.6470000148, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2.z = dot(r1.xyz, c0.xyz);\n    r2.x = r2.z*c0.w + c1.x;\n    r2.x = fmin(r2.x, c0.w);\n    r2.x = fmax(r2.x, c1.y);\n    r2.y = c1.x;\n    r3.xy = r2.xy + half2(hg_Params[3].xy);\n    r3.xy = r3.xy*half2(hg_Params[3].zw);\n    r2.y = (half) hg_Texture1.sample(hg_Sampler1, float2(r3.xy)).y;\n    r2.w = r2.y - r2.z;\n    r2.x = half(r2.z >= c1.z);\n    r2.y = -r2.x + c1.z;\n    r2.x = half(r2.z >= c1.y);\n    r2.x = r2.x*r2.y;\n    r2.x = r2.x*r2.w + r2.z;\n    r2.y = dot(r1.xyz, c2.xyz);\n    r2.z = dot(r1.xyz, c3.xyz);\n    r3.z = dot(r2.xyz, c4.xyz);\n    r3.x = dot(r2.xyz, c5.xyz);\n    r3.y = dot(r2.xyz, c6.xyz);\n    r1.xyz = fmax(r3.xyz, c1.yyy);\n    r1.xyz = mix(r3.xyz, r1.xyz, half3(hg_Params[1].xyz));\n    r2.xyz = fmin(r1.xyz, c6.xxx);\n    r1.xyz = mix(r1.xyz, r2.xyz, half3(hg_Params[2].xyz));\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(float4(r0), float4(r1), hg_Params[0]);\n    return output;\n}\n//MD5=91631463:8d4b558a:5888d915:3c713925\n//SIG=00400000:00000001:00000001:00000003:0007:0004:0004:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000845\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.2989999950, 0.5870000124, 0.1140000001, 1023.000000);\n    const float4 c1 = float4(0.5000000000, 0.000000000, 1.000000000, 0.000000000);\n    const float4 c2 = float4(0.5960000157, -0.2750000060, -0.3210000098, 0.000000000);\n    const float4 c3 = float4(0.2119999975, -0.5230000019, 0.3109999895, 0.000000000);\n    const float4 c4 = float4(1.000000000, -1.106999993, 1.703999996, 0.000000000);\n    const float4 c5 = float4(1.000000000, 0.9559999704, 0.6209999919, 0.000000000);\n    const float4 c6 = float4(1.000000000, -0.2720000148, -0.6470000148, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2.z = dot(r1.xyz, c0.xyz);\n    r2.x = r2.z*c0.w + c1.x;\n    r2.x = fmin(r2.x, c0.w);\n    r2.x = fmax(r2.x, c1.y);\n    r2.y = c1.x;\n    r3.xy = r2.xy + hg_Params[3].xy;\n    r3.xy = r3.xy*hg_Params[3].zw;\n    r2.y = hg_Texture1.sample(hg_Sampler1, r3.xy).y;\n    r2.w = r2.y - r2.z;\n    r2.x = float(r2.z >= c1.z);\n    r2.y = -r2.x + c1.z;\n    r2.x = float(r2.z >= c1.y);\n    r2.x = r2.x*r2.y;\n    r2.x = r2.x*r2.w + r2.z;\n    r2.y = dot(r1.xyz, c2.xyz);\n    r2.z = dot(r1.xyz, c3.xyz);\n    r3.z = dot(r2.xyz, c4.xyz);\n    r3.x = dot(r2.xyz, c5.xyz);\n    r3.y = dot(r2.xyz, c6.xyz);\n    r1.xyz = fmax(r3.xyz, c1.yyy);\n    r1.xyz = mix(r3.xyz, r1.xyz, hg_Params[1].xyz);\n    r2.xyz = fmin(r1.xyz, c6.xxx);\n    r1.xyz = mix(r1.xyz, r2.xyz, hg_Params[2].xyz);\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(r0, r1, hg_Params[0]);\n    return output;\n}\n//MD5=c0f1da10:2155b02a:4564d4bb:68c0f8ec\n//SIG=00000000:00000001:00000001:00000000:0007:0004:0004:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000086a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.2989999950, 0.5870000124, 0.1140000001, 1023.000000);\n    const mediump vec4 c1 = vec4(0.5000000000, 0.000000000, 1.000000000, 0.000000000);\n    const mediump vec4 c2 = vec4(0.5960000157, -0.2750000060, -0.3210000098, 0.000000000);\n    const mediump vec4 c3 = vec4(0.2119999975, -0.5230000019, 0.3109999895, 0.000000000);\n    const mediump vec4 c4 = vec4(1.000000000, -1.106999993, 1.703999996, 0.000000000);\n    const mediump vec4 c5 = vec4(1.000000000, 0.9559999704, 0.6209999919, 0.000000000);\n    const mediump vec4 c6 = vec4(1.000000000, -0.2720000148, -0.6470000148, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2.z = dot(r1.xyz, c0.xyz);\n    r2.x = r2.z*c0.w + c1.x;\n    r2.x = min(r2.x, c0.w);\n    r2.x = max(r2.x, c1.y);\n    r2.y = c1.x;\n    r3.xy = r2.xy + hg_ProgramLocal3.xy;\n    r3.xy = r3.xy*hg_ProgramLocal3.zw;\n    r2.y = texture2D(hg_Texture1, r3.xy).y;\n    r2.w = r2.y - r2.z;\n    r2.x = float(r2.z >= c1.z);\n    r2.y = -r2.x + c1.z;\n    r2.x = float(r2.z >= c1.y);\n    r2.x = r2.x*r2.y;\n    r2.x = r2.x*r2.w + r2.z;\n    r2.y = dot(r1.xyz, c2.xyz);\n    r2.z = dot(r1.xyz, c3.xyz);\n    r3.z = dot(r2.xyz, c4.xyz);\n    r3.x = dot(r2.xyz, c5.xyz);\n    r3.y = dot(r2.xyz, c6.xyz);\n    r1.xyz = max(r3.xyz, c1.yyy);\n    r1.xyz = mix(r3.xyz, r1.xyz, hg_ProgramLocal1.xyz);\n    r2.xyz = min(r1.xyz, c6.xxx);\n    r1.xyz = mix(r1.xyz, r2.xyz, hg_ProgramLocal2.xyz);\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    gl_FragColor = mix(r0, r1, hg_ProgramLocal0);\n}\n//MD5=00b3f046:5e42b894:482ba6e9:d3e65d60\n//SIG=00000000:00000001:00000001:00000000:0007:0004:0004:0000:0000:0000:0000:0000:0001:02:0:1:0\n";
  }
}

void sub_25FF3AAD8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF3AC58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF3ACA8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF3ACA0);
}

uint64_t HgcContrastBezierLuma::BindTexture(HgcContrastBezierLuma *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
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
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (v4)
    {
      return result;
    }

    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcContrastBezierLuma::Bind(HgcContrastBezierLuma *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcContrastBezierLuma::RenderTile(HgcContrastBezierLuma *this, HGTile *a2)
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
    v12 = *(a2 + 10);
    v13 = 16 * *(a2 + 6);
    v14 = 16 * *(a2 + 22);
    v15.i64[0] = 0x3F0000003F000000;
    v15.i64[1] = 0x3F0000003F000000;
    do
    {
      if (v10 < 3)
      {
        v17 = 0;
      }

      else
      {
        v16 = 0;
        v17 = 0;
        for (i = v10; i > 2; i -= 3)
        {
          v20 = *(v12 + v16);
          v19 = *(v12 + v16 + 16);
          v21 = *(v12 + v16 + 32);
          v22 = *(this + 51);
          v23 = *(v22 + 48);
          v24 = *(v22 + 64);
          v25 = vmaxq_f32(vdupq_laneq_s32(v20, 3), v23);
          v26 = vmaxq_f32(vdupq_laneq_s32(v19, 3), v23);
          v27 = vmaxq_f32(vdupq_laneq_s32(v21, 3), v23);
          v28 = vmulq_f32(vrecpeq_f32(v25), v24);
          v29 = vmulq_f32(vrecpeq_f32(v26), v24);
          v30 = vmulq_f32(vrecpeq_f32(v27), v24);
          v31 = vmulq_f32(v28, vrecpsq_f32(v28, v25));
          v32 = vmulq_f32(v29, vrecpsq_f32(v29, v26));
          v33 = vmulq_f32(v30, vrecpsq_f32(v30, v27));
          v34 = vmulq_f32(v20, v31);
          v35 = vmulq_f32(v19, v32);
          v36 = vmulq_f32(v21, v33);
          v38 = *(v22 + 80);
          v37 = *(v22 + 96);
          v39 = vmulq_f32(v34, v38);
          v40 = vmulq_f32(v35, v38);
          v41 = vmulq_f32(v38, v36);
          v42 = vaddq_f32(v39, vaddq_f32(vextq_s8(v39, v39, 8uLL), vextq_s8(v39, v39, 0xCuLL)));
          v43 = vaddq_f32(v40, vaddq_f32(vextq_s8(v40, v40, 8uLL), vextq_s8(v40, v40, 0xCuLL)));
          v44 = vaddq_f32(v41, vaddq_f32(vextq_s8(v41, v41, 8uLL), vextq_s8(v41, v41, 0xCuLL)));
          v46 = *(v22 + 112);
          v45 = *(v22 + 128);
          v47.i64[0] = vaddq_f32(v37, vmulq_f32(v46, vdupq_laneq_s64(v42, 1))).u64[0];
          v48.i64[0] = vaddq_f32(v37, vmulq_f32(v46, vdupq_laneq_s64(v43, 1))).u64[0];
          v49.i64[0] = vaddq_f32(v37, vmulq_f32(v46, vdupq_laneq_s64(v44, 1))).u64[0];
          v50 = vextq_s8(v42, v42, 8uLL).u64[0];
          v47.i64[1] = v42.i64[1];
          v51 = vextq_s8(v43, v43, 8uLL).u64[0];
          v48.i64[1] = v43.i64[1];
          v49.i64[1] = v44.i64[1];
          v47.i64[0] = vminq_f32(v47, v46).u64[0];
          v48.i64[0] = vminq_f32(v48, v46).u64[0];
          v47.i64[1] = v42.i64[1];
          v49.i64[0] = vminq_f32(v49, v46).u64[0];
          v48.i64[1] = v43.i64[1];
          v49.i64[1] = v44.i64[1];
          v47.i32[0] = vmaxq_f32(v47, v45).u32[0];
          v52.i32[0] = vmaxq_f32(v48, v45).u32[0];
          v54.i32[0] = vmaxq_f32(v49, v45).u32[0];
          v47.i64[1] = v42.i64[1];
          v52.i64[1] = v43.i64[1];
          v54.i64[1] = v44.i64[1];
          v47.i32[1] = 0.5;
          v52.i32[1] = 0.5;
          v53 = vextq_s8(v44, v44, 8uLL).u64[0];
          v54.i32[1] = 0.5;
          v55 = *(a2 + 26);
          v56 = vsubq_f32(v47, v9);
          v57 = *(a2 + 12);
          if (v5)
          {
            v58 = vaddq_s32(vcvtq_s32_f32(v56), vcltzq_f32(v56));
            v59 = vsubq_f32(v56, vcvtq_f32_s32(v58)).u64[0];
            v60 = vsubq_f32(v52, v9);
            v61 = vaddq_s32(vcvtq_s32_f32(v60), vcltzq_f32(v60));
            v62 = vsubq_f32(v60, vcvtq_f32_s32(v61)).u64[0];
            *v58.i8 = vmla_s32(vzip1_s32(*v58.i8, *v61.i8), vzip2_s32(*v58.i8, *v61.i8), vdup_n_s32(v55));
            v63 = (v57 + 16 * v58.i32[0]);
            v64 = vaddq_f32(*v63, vmulq_n_f32(vsubq_f32(v63[1], *v63), v59.f32[0]));
            v64.i64[0] = vaddq_f32(v64, vmulq_lane_f32(vsubq_f32(vaddq_f32(v63[v55], vmulq_n_f32(vsubq_f32(v63[v55 + 1], v63[v55]), v59.f32[0])), v64), v59, 1)).u64[0];
            v65 = (v57 + 16 * v58.i32[1]);
            v66 = vaddq_f32(*v65, vmulq_n_f32(vsubq_f32(v65[1], *v65), v62.f32[0]));
            v66.i64[0] = vaddq_f32(v66, vmulq_lane_f32(vsubq_f32(vaddq_f32(v65[v55], vmulq_n_f32(vsubq_f32(v65[v55 + 1], v65[v55]), v62.f32[0])), v66), v62, 1)).u64[0];
            v67 = vsubq_f32(v54, v9);
            v68 = vaddq_s32(vcvtq_s32_f32(v67), vcltzq_f32(v67));
            v67.i64[0] = vsubq_f32(v67, vcvtq_f32_s32(v68)).u64[0];
            v69 = (v57 + 16 * (v68.i32[0] + v68.i32[1] * v55));
            v70 = vaddq_f32(*v69, vmulq_n_f32(vsubq_f32(v69[1], *v69), v67.f32[0]));
            v71.i64[0] = vaddq_f32(v70, vmulq_lane_f32(vsubq_f32(vaddq_f32(v69[v55], vmulq_n_f32(vsubq_f32(v69[v55 + 1], v69[v55]), v67.f32[0])), v70), *v67.f32, 1)).u64[0];
          }

          else
          {
            v72 = vaddq_f32(v56, v15);
            v73 = vcvtq_s32_f32(v72);
            v74 = vaddq_f32(vsubq_f32(v52, v9), v15);
            v75 = vcvtq_s32_f32(v74);
            *v72.f32 = vadd_s32(*v73.i8, *&vcgtq_f32(vcvtq_f32_s32(v73), v72));
            *v74.f32 = vadd_s32(*v75.i8, *&vcgtq_f32(vcvtq_f32_s32(v75), v74));
            *v74.f32 = vmla_s32(vzip1_s32(*v72.f32, *v74.f32), vzip2_s32(*v72.f32, *v74.f32), vdup_n_s32(v55));
            v76 = v74.i32[1];
            v64 = *(v57 + 16 * v74.i32[0]);
            v66 = *(v57 + 16 * v76);
            v77 = vaddq_f32(vsubq_f32(v54, v9), v15);
            v78 = vcvtq_s32_f32(v77);
            v77.i64[0] = vaddq_s32(v78, vcgtq_f32(vcvtq_f32_s32(v78), v77)).u64[0];
            v71 = *(v57 + 16 * (v77.i32[0] + v77.i32[1] * v55));
          }

          v79.i64[0] = v64.i64[0];
          v79.i64[1] = v50;
          v80.i64[0] = v66.i64[0];
          v80.i64[1] = v51;
          v81.i64[0] = v71.i64[0];
          v81.i64[1] = v53;
          v82.i64[0] = v50;
          v82.i64[1] = v64.i64[0];
          v83.i64[0] = v51;
          v83.i64[1] = v66.i64[0];
          v84.i64[0] = v53;
          v84.i64[1] = v71.i64[0];
          v64.i64[1] = v50;
          v66.i64[1] = v51;
          v71.i64[1] = v53;
          v85 = vsubq_f32(v82, vrev64q_s32(v64));
          v86 = vsubq_f32(v83, vrev64q_s32(v66));
          v88 = *(v22 + 144);
          v87 = *(v22 + 160);
          v89 = vbslq_s8(v88, v79, v85);
          v90 = vbslq_s8(v88, v80, v86);
          v91 = vbslq_s8(v88, v81, vsubq_f32(v84, vrev64q_s32(v71)));
          v92 = vcgeq_f32(v89, v37);
          v93 = vcgeq_f32(v90, v37);
          v94 = vcgeq_f32(v91, v37);
          v95 = vextq_s8(v92, v92, 8uLL);
          v96 = vextq_s8(v37, v37, 8uLL);
          v97 = vextq_s8(v93, v93, 8uLL);
          *v95.f32 = vrev64_s32(vand_s8(*v96.f32, *v95.f32));
          *v97.f32 = vrev64_s32(vand_s8(*v96.f32, *v97.f32));
          *v96.f32 = vrev64_s32(vand_s8(*v96.f32, *&vextq_s8(v94, v94, 8uLL)));
          v98 = vsubq_f32(v45, v95);
          v99 = vsubq_f32(v45, v97);
          v100 = vsubq_f32(v45, v96);
          v101 = vextq_s8(v89, v98, 8uLL);
          v98.i64[1] = v89.i64[1];
          v102 = vextq_s8(v90, v99, 8uLL);
          v99.i64[1] = v90.i64[1];
          v103 = vextq_s8(v91, v100, 8uLL);
          v100.i64[1] = v91.i64[1];
          v104 = vcgeq_f32(v101, v45);
          v105 = vcgeq_f32(v102, v45);
          v106 = vandq_s8(v87, vcgeq_f32(v103, v45));
          v107 = *(v22 + 176);
          v108 = *(v22 + 192);
          v109 = vbslq_s8(v107, vandq_s8(v87, v104), v98);
          v110 = vbslq_s8(v107, vandq_s8(v87, v105), v99);
          v111 = vbslq_s8(v107, v106, v100);
          v112 = vaddq_f32(vdupq_laneq_s64(v109, 1), vmulq_laneq_f32(vmulq_lane_f32(v109, *v109.f32, 1), v109, 3));
          v113 = vaddq_f32(vdupq_laneq_s64(v111, 1), vmulq_laneq_f32(vmulq_lane_f32(v111, *v111.f32, 1), v111, 3));
          v114 = vmulq_f32(v34, v108);
          v115 = vmulq_f32(v35, v108);
          v116 = vmulq_f32(v36, v108);
          v114.i64[0] = vbslq_s8(v107, v112, vaddq_f32(vextq_s8(v114, v9, 4uLL), vaddq_f32(v114, vrev64q_s32(v114)))).u64[0];
          v112.i64[0] = vbslq_s8(v107, vaddq_f32(vdupq_laneq_s64(v110, 1), vmulq_laneq_f32(vmulq_lane_f32(v110, *v110.f32, 1), v110, 3)), vaddq_f32(vextq_s8(v115, v9, 4uLL), vaddq_f32(v115, vrev64q_s32(v115)))).u64[0];
          v110.i64[0] = vbslq_s8(v107, v113, vaddq_f32(vextq_s8(v116, v9, 4uLL), vaddq_f32(v116, vrev64q_s32(v116)))).u64[0];
          v117 = *(v22 + 208);
          v118 = *(v22 + 224);
          v119 = vmulq_f32(v34, v117);
          v120 = vmulq_f32(v35, v117);
          v121 = vmulq_f32(v36, v117);
          v114.i64[1] = vaddq_f32(v119, vaddq_f32(vdupq_lane_s64(*&v119, 0), vextq_s8(*&v9, *&v119, 0xCuLL))).i64[1];
          v112.i64[1] = vaddq_f32(v120, vaddq_f32(vdupq_lane_s64(*&v120, 0), vextq_s8(*&v9, *&v120, 0xCuLL))).i64[1];
          v110.i64[1] = vaddq_f32(v121, vaddq_f32(vdupq_lane_s64(*&v121, 0), vextq_s8(*&v9, *&v121, 0xCuLL))).i64[1];
          v122 = vmulq_f32(v87, v114);
          v123 = vmulq_f32(v87, v112);
          v124 = vmulq_f32(v87, v110);
          v125 = vmulq_f32(v118, v114);
          v126 = vmulq_f32(v118, v112);
          v127 = vmulq_f32(v118, v110);
          v81.i64[0] = vrev64q_s32(v125).u64[0];
          v128.i64[0] = vrev64q_s32(v126).u64[0];
          v82.i64[0] = vrev64q_s32(v127).u64[0];
          v81.i64[1] = vextq_s8(*&v9, *&v122, 0xCuLL).i64[1];
          v129 = vzip2q_s64(v125, v122);
          v125.i64[1] = v122.i64[0];
          v130 = vaddq_f32(v129, vaddq_f32(v125, v81));
          v128.i64[1] = vextq_s8(*&v9, *&v123, 0xCuLL).i64[1];
          v131 = vzip2q_s64(v126, v123);
          v126.i64[1] = v123.i64[0];
          v132 = vaddq_f32(v131, vaddq_f32(v126, v128));
          v82.i64[1] = vextq_s8(*&v9, *&v124, 0xCuLL).i64[1];
          v133 = vzip2q_s64(v127, v124);
          v127.i64[1] = v124.i64[0];
          v134 = vaddq_f32(v133, vaddq_f32(v127, v82));
          v135 = *(v22 + 240);
          v136 = *(v22 + 256);
          v137 = vmulq_f32(v135, v114);
          v138 = vmulq_f32(v135, v112);
          v139 = vmulq_f32(v135, v110);
          v140 = vbslq_s8(v136, vaddq_f32(vextq_s8(v137, v137, 4uLL), vaddq_f32(v137, vrev64q_s32(v137))), v130);
          v141 = vbslq_s8(v136, vaddq_f32(vextq_s8(v138, v138, 4uLL), vaddq_f32(v138, vrev64q_s32(v138))), v132);
          v142 = vbslq_s8(v136, vaddq_f32(vextq_s8(v139, v139, 4uLL), vaddq_f32(v139, vrev64q_s32(v139))), v134);
          v143 = *(v22 + 272);
          v144 = *(v22 + 288);
          v145 = *(v22 + 16);
          v146 = vaddq_f32(vmulq_f32(v145, vsubq_f32(vmaxq_f32(v140, v143), v140)), v140);
          v147 = vaddq_f32(vmulq_f32(v145, vsubq_f32(vmaxq_f32(v141, v143), v141)), v141);
          v148 = vaddq_f32(vmulq_f32(v145, vsubq_f32(vmaxq_f32(v142, v143), v142)), v142);
          v149 = *(v22 + 32);
          v150 = *(v22 + 304);
          v151 = vaddq_f32(v20, vmulq_f32(*v22, vsubq_f32(vbslq_s8(v150, v20, vmulq_laneq_f32(vbslq_s8(v150, v20, vaddq_f32(v146, vmulq_f32(v149, vsubq_f32(vminq_f32(v146, v144), v146)))), v20, 3)), v20)));
          v152 = vaddq_f32(v19, vmulq_f32(*v22, vsubq_f32(vbslq_s8(v150, v19, vmulq_laneq_f32(vbslq_s8(v150, v19, vaddq_f32(v147, vmulq_f32(v149, vsubq_f32(vminq_f32(v147, v144), v147)))), v19, 3)), v19)));
          v153 = vaddq_f32(v21, vmulq_f32(*v22, vsubq_f32(vbslq_s8(v150, v21, vmulq_laneq_f32(vbslq_s8(v150, v21, vaddq_f32(v148, vmulq_f32(v149, vsubq_f32(vminq_f32(v148, v144), v148)))), v21, 3)), v21)));
          v154 = (v11 + v16);
          *v154 = v151;
          v154[1] = v152;
          v154[2] = v153;
          v17 += 3;
          v16 += 48;
        }
      }

      if (v17 < v10)
      {
        do
        {
          v155 = *(v12 + 16 * v17);
          v156 = *(this + 51);
          v157 = vmaxq_f32(vdupq_laneq_s32(v155, 3), *(v156 + 48));
          v158 = vmulq_f32(vrecpeq_f32(v157), *(v156 + 64));
          v159 = vmulq_f32(v155, vmulq_f32(v158, vrecpsq_f32(v158, v157)));
          v160 = *(v156 + 96);
          v161 = vmulq_f32(*(v156 + 80), v159);
          v162 = vaddq_f32(v161, vaddq_f32(vextq_s8(v161, v161, 8uLL), vextq_s8(v161, v161, 0xCuLL)));
          v164 = *(v156 + 112);
          v163 = *(v156 + 128);
          v165.i64[0] = vaddq_f32(v160, vmulq_f32(v164, vdupq_laneq_s64(v162, 1))).u64[0];
          v165.i64[1] = v162.i64[1];
          v165.i64[0] = vminq_f32(v165, v164).u64[0];
          v165.i64[1] = v162.i64[1];
          v165.i32[0] = vmaxq_f32(v165, v163).u32[0];
          v165.i64[1] = v162.i64[1];
          v165.i32[1] = 0.5;
          v166 = *(a2 + 26);
          v167 = vsubq_f32(v165, v9);
          v168 = *(a2 + 12);
          if (v5)
          {
            v169 = vaddq_s32(vcvtq_s32_f32(v167), vcltzq_f32(v167));
            v170 = vsubq_f32(v167, vcvtq_f32_s32(v169)).u64[0];
            v171 = (v168 + 16 * (v169.i32[0] + v169.i32[1] * v166));
            v172 = vaddq_f32(*v171, vmulq_n_f32(vsubq_f32(v171[1], *v171), v170.f32[0]));
            v167.i64[0] = vaddq_f32(v172, vmulq_lane_f32(vsubq_f32(vaddq_f32(v171[v166], vmulq_n_f32(vsubq_f32(v171[v166 + 1], v171[v166]), v170.f32[0])), v172), v170, 1)).u64[0];
          }

          else
          {
            v173 = vaddq_f32(v167, v15);
            v174 = vcvtq_s32_f32(v173);
            v173.i64[0] = vaddq_s32(v174, vcgtq_f32(vcvtq_f32_s32(v174), v173)).u64[0];
            v167 = *(v168 + 16 * (v173.i32[0] + v173.i32[1] * v166));
          }

          v175.i64[0] = v167.i64[0];
          v175.i64[1] = vextq_s8(v162, v162, 8uLL).u64[0];
          v176.i64[0] = v175.i64[1];
          v176.i64[1] = v167.i64[0];
          v167.i64[1] = v175.i64[1];
          v177 = vsubq_f32(v176, vrev64q_s32(v167));
          v178 = *(v156 + 160);
          v179 = vbslq_s8(*(v156 + 144), v175, v177);
          v180 = vcgeq_f32(v179, v160);
          v181 = vextq_s8(v160, v160, 8uLL);
          *v181.f32 = vrev64_s32(vand_s8(*v181.f32, *&vextq_s8(v180, v180, 8uLL)));
          v182 = vsubq_f32(v163, v181);
          v183 = vextq_s8(v179, v182, 8uLL);
          v182.i64[1] = v179.i64[1];
          v184 = *(v156 + 176);
          v185 = vbslq_s8(v184, vandq_s8(v178, vcgeq_f32(v183, v163)), v182);
          v186 = vmulq_f32(v159, *(v156 + 192));
          v185.i64[0] = vbslq_s8(v184, vaddq_f32(vdupq_laneq_s64(v185, 1), vmulq_laneq_f32(vmulq_lane_f32(v185, *v185.f32, 1), v185, 3)), vaddq_f32(vextq_s8(v186, v9, 4uLL), vaddq_f32(v186, vrev64q_s32(v186)))).u64[0];
          v187 = vmulq_f32(v159, *(v156 + 208));
          v185.i64[1] = vaddq_f32(v187, vaddq_f32(vdupq_lane_s64(*&v187, 0), vextq_s8(*&v9, *&v187, 0xCuLL))).i64[1];
          v188 = vmulq_f32(v178, v185);
          v189 = vmulq_f32(*(v156 + 224), v185);
          v183.i64[0] = vrev64q_s32(v189).u64[0];
          v183.i64[1] = vextq_s8(*&v9, *&v188, 0xCuLL).i64[1];
          v190 = vzip2q_s64(v189, v188);
          v189.i64[1] = v188.i64[0];
          v191 = vmulq_f32(*(v156 + 240), v185);
          v192 = vbslq_s8(*(v156 + 256), vaddq_f32(vextq_s8(v191, v191, 4uLL), vaddq_f32(v191, vrev64q_s32(v191))), vaddq_f32(v190, vaddq_f32(v189, v183)));
          v193 = vaddq_f32(vmulq_f32(*(v156 + 16), vsubq_f32(vmaxq_f32(v192, *(v156 + 272)), v192)), v192);
          *(v11 + 16 * v17++) = vaddq_f32(v155, vmulq_f32(*v156, vsubq_f32(vbslq_s8(*(v156 + 304), v155, vmulq_laneq_f32(vbslq_s8(*(v156 + 304), v155, vaddq_f32(v193, vmulq_f32(*(v156 + 32), vsubq_f32(vminq_f32(v193, *(v156 + 288)), v193)))), v155, 3)), v155)));
        }

        while (v17 < v10);
      }

      ++v8;
      v11 += v13;
      v12 += v14;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcContrastBezierLuma::GetDOD(HgcContrastBezierLuma *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 1)
  {
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      HGRectGrow(v5, v4, v7);
    }

    v6 = &HGRectInfinite;
    return *v6;
  }

  if (a3)
  {
    v6 = &HGRectNull;
    return *v6;
  }

  return v5;
}

uint64_t HgcContrastBezierLuma::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, 1u);
    DOD = HGRenderer::GetDOD(a2, Input);
    v9 = v8;
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      return HGRectGrow(DOD, v9, v10);
    }
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }

  return DOD;
}

void HgcContrastBezierLuma::HgcContrastBezierLuma(HgcContrastBezierLuma *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725CBA8;
  operator new();
}

void HgcContrastBezierLuma::~HgcContrastBezierLuma(HGNode *this)
{
  *this = &unk_28725CBA8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcContrastBezierLuma::~HgcContrastBezierLuma(this);

  HGObject::operator delete(v1);
}

uint64_t HgcContrastBezierLuma::SetParameter(HgcContrastBezierLuma *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 2)
  {
    v11 = *(this + 51);
    if (*(v11 + 32) != a3.n128_f32[0] || *(v11 + 36) != a3.n128_f32[0] || *(v11 + 40) != a3.n128_f32[0] || *(v11 + 44) != 0.0)
    {
      v12 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v12.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *(v11 + 32) = v12;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v11 + 352) = a3;
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
      *(v9 + 336) = a3;
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
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != a3.n128_f32[0])
    {
      v8 = vdupq_lane_s32(a3.n128_u64[0], 0);
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 320) = a3;
LABEL_19:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcContrastBezierLuma::GetParameter(HgcContrastBezierLuma *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = v5[80];
  a3[1] = v5[81];
  a3[2] = v5[82];
  a3[3] = v5[83];
  return result;
}

const char *HgcContrastBezierRGB::GetProgram(HgcContrastBezierRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000008ca\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1023.000000, 0.5000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2.x = r1.z*c0.x + c0.y;\n    r2.x = fmin(r2.x, c0.x);\n    r2.x = fmax(r2.x, c0.z);\n    r2.y = c0.y;\n    r2.xy = r2.xy + half2(hg_Params[3].xy);\n    r2.xy = r2.xy*half2(hg_Params[3].zw);\n    r2.y = (half) hg_Texture1.sample(hg_Sampler1, float2(r2.xy)).y;\n    r2.x = half(r1.z >= c0.w);\n    r2.z = -r2.x + c0.w;\n    r2.x = half(r1.z >= c0.z);\n    r2.x = r2.x*r2.z;\n    r2.z = mix(r1.z, r2.y, r2.x);\n    r2.y = half(r1.x >= c0.w);\n    r2.w = -r2.y + c0.w;\n    r2.y = half(r1.x >= c0.z);\n    r2.w = r2.y*r2.w;\n    r2.x = r1.x*c0.x + c0.y;\n    r2.x = fmin(r2.x, c0.x);\n    r2.x = fmax(r2.x, c0.z);\n    r2.y = c0.y;\n    r3.xy = r2.xy + half2(hg_Params[3].xy);\n    r3.xy = r3.xy*half2(hg_Params[3].zw);\n    r2.y = (half) hg_Texture1.sample(hg_Sampler1, float2(r3.xy)).y;\n    r1.z = r2.y - r1.x;\n    r2.y = r1.y*c0.x + c0.y;\n    r2.x = r2.w*r1.z + r1.x;\n    r1.x = half(r1.y < c0.w);\n    r2.y = fmin(r2.y, c0.x);\n    r2.w = half(r1.y >= c0.z);\n    r2.w = r2.w*r1.x;\n    r1.z = fmax(r2.y, c0.z);\n    r1.w = c0.y;\n    r3.xy = r1.zw + half2(hg_Params[3].xy);\n    r3.xy = r3.xy*half2(hg_Params[3].zw);\n    r2.y = (half) hg_Texture1.sample(hg_Sampler1, float2(r3.xy)).y;\n    r2.y = mix(r1.y, r2.y, r2.w);\n    r3.xyz = fmax(r2.xyz, c0.zzz);\n    r2.xyz = mix(r2.xyz, r3.xyz, half3(hg_Params[1].xyz));\n    r1.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = mix(r2.xyz, r1.xyz, half3(hg_Params[2].xyz));\n    r2.w = r0.w;\n    r2.xyz = r2.xyz*r0.www;\n    output.color0 = mix(float4(r0), float4(r2), hg_Params[0]);\n    return output;\n}\n//MD5=da45afb2:5fa4481c:eb49d25b:331db194\n//SIG=00400000:00000001:00000001:00000003:0001:0004:0004:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000858\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1023.000000, 0.5000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2.x = r1.z*c0.x + c0.y;\n    r2.x = fmin(r2.x, c0.x);\n    r2.x = fmax(r2.x, c0.z);\n    r2.y = c0.y;\n    r2.xy = r2.xy + hg_Params[3].xy;\n    r2.xy = r2.xy*hg_Params[3].zw;\n    r2.y = hg_Texture1.sample(hg_Sampler1, r2.xy).y;\n    r2.x = float(r1.z >= c0.w);\n    r2.z = -r2.x + c0.w;\n    r2.x = float(r1.z >= c0.z);\n    r2.x = r2.x*r2.z;\n    r2.z = mix(r1.z, r2.y, r2.x);\n    r2.y = float(r1.x >= c0.w);\n    r2.w = -r2.y + c0.w;\n    r2.y = float(r1.x >= c0.z);\n    r2.w = r2.y*r2.w;\n    r2.x = r1.x*c0.x + c0.y;\n    r2.x = fmin(r2.x, c0.x);\n    r2.x = fmax(r2.x, c0.z);\n    r2.y = c0.y;\n    r3.xy = r2.xy + hg_Params[3].xy;\n    r3.xy = r3.xy*hg_Params[3].zw;\n    r2.y = hg_Texture1.sample(hg_Sampler1, r3.xy).y;\n    r1.z = r2.y - r1.x;\n    r2.y = r1.y*c0.x + c0.y;\n    r2.x = r2.w*r1.z + r1.x;\n    r1.x = float(r1.y < c0.w);\n    r2.y = fmin(r2.y, c0.x);\n    r2.w = float(r1.y >= c0.z);\n    r2.w = r2.w*r1.x;\n    r1.z = fmax(r2.y, c0.z);\n    r1.w = c0.y;\n    r3.xy = r1.zw + hg_Params[3].xy;\n    r3.xy = r3.xy*hg_Params[3].zw;\n    r2.y = hg_Texture1.sample(hg_Sampler1, r3.xy).y;\n    r2.y = mix(r1.y, r2.y, r2.w);\n    r3.xyz = fmax(r2.xyz, c0.zzz);\n    r2.xyz = mix(r2.xyz, r3.xyz, hg_Params[1].xyz);\n    r1.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = mix(r2.xyz, r1.xyz, hg_Params[2].xyz);\n    r2.w = r0.w;\n    r2.xyz = r2.xyz*r0.www;\n    output.color0 = mix(r0, r2, hg_Params[0]);\n    return output;\n}\n//MD5=d682f72a:a793c7a2:3747d05e:5dd2f5b4\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0004:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000085f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1023.000000, 0.5000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2.x = r1.z*c0.x + c0.y;\n    r2.x = min(r2.x, c0.x);\n    r2.x = max(r2.x, c0.z);\n    r2.y = c0.y;\n    r2.xy = r2.xy + hg_ProgramLocal3.xy;\n    r2.xy = r2.xy*hg_ProgramLocal3.zw;\n    r2.y = texture2D(hg_Texture1, r2.xy).y;\n    r2.x = float(r1.z >= c0.w);\n    r2.z = -r2.x + c0.w;\n    r2.x = float(r1.z >= c0.z);\n    r2.x = r2.x*r2.z;\n    r2.z = mix(r1.z, r2.y, r2.x);\n    r2.y = float(r1.x >= c0.w);\n    r2.w = -r2.y + c0.w;\n    r2.y = float(r1.x >= c0.z);\n    r2.w = r2.y*r2.w;\n    r2.x = r1.x*c0.x + c0.y;\n    r2.x = min(r2.x, c0.x);\n    r2.x = max(r2.x, c0.z);\n    r2.y = c0.y;\n    r3.xy = r2.xy + hg_ProgramLocal3.xy;\n    r3.xy = r3.xy*hg_ProgramLocal3.zw;\n    r2.y = texture2D(hg_Texture1, r3.xy).y;\n    r1.z = r2.y - r1.x;\n    r2.y = r1.y*c0.x + c0.y;\n    r2.x = r2.w*r1.z + r1.x;\n    r1.x = float(r1.y < c0.w);\n    r2.y = min(r2.y, c0.x);\n    r2.w = float(r1.y >= c0.z);\n    r2.w = r2.w*r1.x;\n    r1.z = max(r2.y, c0.z);\n    r1.w = c0.y;\n    r3.xy = r1.zw + hg_ProgramLocal3.xy;\n    r3.xy = r3.xy*hg_ProgramLocal3.zw;\n    r2.y = texture2D(hg_Texture1, r3.xy).y;\n    r2.y = mix(r1.y, r2.y, r2.w);\n    r3.xyz = max(r2.xyz, c0.zzz);\n    r2.xyz = mix(r2.xyz, r3.xyz, hg_ProgramLocal1.xyz);\n    r1.xyz = min(r2.xyz, c0.www);\n    r2.xyz = mix(r2.xyz, r1.xyz, hg_ProgramLocal2.xyz);\n    r2.w = r0.w;\n    r2.xyz = r2.xyz*r0.www;\n    gl_FragColor = mix(r0, r2, hg_ProgramLocal0);\n}\n//MD5=a2428740:5114198b:975d4f89:e90d2161\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0004:0000:0000:0000:0000:0000:0001:02:0:1:0\n";
  }
}

void sub_25FF3BEEC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FF3C06C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF3C0BC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF3C0B4);
}

uint64_t HgcContrastBezierRGB::BindTexture(HgcContrastBezierRGB *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
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
    v4 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (v4)
    {
      return result;
    }

    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcContrastBezierRGB::Bind(HgcContrastBezierRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcContrastBezierRGB::RenderTile(HgcContrastBezierRGB *this, HGTile *a2)
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
    v12 = *(a2 + 10);
    v13 = 16 * *(a2 + 6);
    v14 = 16 * *(a2 + 22);
    v15.i64[0] = 0x3F0000003F000000;
    v15.i64[1] = 0x3F0000003F000000;
    do
    {
      if (v10 < 3)
      {
        v17 = 0;
      }

      else
      {
        v16 = 0;
        v17 = 0;
        for (i = v10; i > 2; i -= 3)
        {
          v20 = *(v12 + v16);
          v19 = *(v12 + v16 + 16);
          v21 = *(v12 + v16 + 32);
          v22 = *(this + 51);
          v23 = *(v22 + 48);
          v24 = *(v22 + 64);
          v25 = vmaxq_f32(vdupq_laneq_s32(v20, 3), v23);
          v26 = vmaxq_f32(vdupq_laneq_s32(v19, 3), v23);
          v27 = vmaxq_f32(vdupq_laneq_s32(v21, 3), v23);
          v28 = vmulq_f32(vrecpeq_f32(v25), v24);
          v29 = vmulq_f32(vrecpeq_f32(v26), v24);
          v30 = vmulq_f32(vrecpeq_f32(v27), v24);
          v31 = vmulq_f32(v30, vrecpsq_f32(v30, v27));
          v32 = vmulq_f32(v20, vmulq_f32(v28, vrecpsq_f32(v28, v25)));
          v33 = vmulq_f32(v19, vmulq_f32(v29, vrecpsq_f32(v29, v26)));
          v34 = vmulq_f32(v21, v31);
          v35 = vextq_s8(v32, v32, 8uLL);
          v36 = vextq_s8(v33, v33, 8uLL);
          v37 = vextq_s8(v34, v34, 8uLL);
          v39 = *(v22 + 80);
          v38 = *(v22 + 96);
          v40 = *(v22 + 112);
          v41 = vmaxq_f32(vminq_f32(vaddq_f32(v39, vmulq_f32(v35, v38)), v38), v40);
          v42 = vmaxq_f32(vminq_f32(vaddq_f32(v39, vmulq_f32(v36, v38)), v38), v40);
          v41.i32[1] = 0.5;
          v42.i32[1] = 0.5;
          v43 = vmaxq_f32(vminq_f32(vaddq_f32(v39, vmulq_f32(v38, v37)), v38), v40);
          v43.i32[1] = 0.5;
          v44 = *(a2 + 26);
          v45 = vsubq_f32(v41, v9);
          v46 = *(a2 + 12);
          if (v5)
          {
            v47 = vaddq_s32(vcvtq_s32_f32(v45), vcltzq_f32(v45));
            v48 = vsubq_f32(v45, vcvtq_f32_s32(v47)).u64[0];
            v49 = vsubq_f32(v42, v9);
            v50 = vaddq_s32(vcvtq_s32_f32(v49), vcltzq_f32(v49));
            v49.i64[0] = vsubq_f32(v49, vcvtq_f32_s32(v50)).u64[0];
            *v47.i8 = vmla_s32(vzip1_s32(*v47.i8, *v50.i8), vzip2_s32(*v47.i8, *v50.i8), vdup_n_s32(v44));
            v51 = v47.i32[1];
            v52 = (v46 + 16 * v47.i32[0]);
            v53 = vaddq_f32(*v52, vmulq_n_f32(vsubq_f32(v52[1], *v52), v48.f32[0]));
            v54 = vaddq_f32(v53, vmulq_lane_f32(vsubq_f32(vaddq_f32(v52[v44], vmulq_n_f32(vsubq_f32(v52[v44 + 1], v52[v44]), v48.f32[0])), v53), v48, 1));
            v55 = (v46 + 16 * v51);
            v56 = vaddq_f32(*v55, vmulq_n_f32(vsubq_f32(v55[1], *v55), v49.f32[0]));
            v57 = vaddq_f32(v56, vmulq_lane_f32(vsubq_f32(vaddq_f32(v55[v44], vmulq_n_f32(vsubq_f32(v55[v44 + 1], v55[v44]), v49.f32[0])), v56), *v49.f32, 1));
            v58 = vsubq_f32(v43, v9);
            v59 = vaddq_s32(vcvtq_s32_f32(v58), vcltzq_f32(v58));
            v58.i64[0] = vsubq_f32(v58, vcvtq_f32_s32(v59)).u64[0];
            v60 = (v46 + 16 * (v59.i32[0] + v59.i32[1] * v44));
            v61 = vaddq_f32(*v60, vmulq_n_f32(vsubq_f32(v60[1], *v60), v58.f32[0]));
            v62 = vaddq_f32(v61, vmulq_lane_f32(vsubq_f32(vaddq_f32(v60[v44], vmulq_n_f32(vsubq_f32(v60[v44 + 1], v60[v44]), v58.f32[0])), v61), *v58.f32, 1));
          }

          else
          {
            v63 = vaddq_f32(v45, v15);
            v64 = vcvtq_s32_f32(v63);
            v65 = vaddq_f32(vsubq_f32(v42, v9), v15);
            v66 = vcvtq_s32_f32(v65);
            *v63.f32 = vadd_s32(*v64.i8, *&vcgtq_f32(vcvtq_f32_s32(v64), v63));
            *v65.f32 = vadd_s32(*v66.i8, *&vcgtq_f32(vcvtq_f32_s32(v66), v65));
            *v65.f32 = vmla_s32(vzip1_s32(*v63.f32, *v65.f32), vzip2_s32(*v63.f32, *v65.f32), vdup_n_s32(v44));
            v54 = *(v46 + 16 * v65.i32[0]);
            v57 = *(v46 + 16 * v65.i32[1]);
            v67 = vaddq_f32(vsubq_f32(v43, v9), v15);
            v68 = vcvtq_s32_f32(v67);
            v67.i64[0] = vaddq_s32(v68, vcgtq_f32(vcvtq_f32_s32(v68), v67)).u64[0];
            v62 = *(v46 + 16 * (v67.i32[0] + v67.i32[1] * v44));
          }

          v69 = vandq_s8(v40, vcgeq_f32(v32, v40));
          v70 = vandq_s8(v40, vcgeq_f32(v33, v40));
          v71 = vandq_s8(v40, vcgeq_f32(v34, v40));
          v72 = vextq_s8(v69, v69, 8uLL);
          v74 = *(v22 + 128);
          v73 = *(v22 + 144);
          v75 = vmvnq_s8(v74);
          v76.i64[0] = vbslq_s8(v74, v72, v54).u64[0];
          v77.i64[0] = vbslq_s8(v74, vextq_s8(v70, v70, 8uLL), v57).u64[0];
          v78.i64[0] = vbslq_s8(v74, vextq_s8(v71, v71, 8uLL), v62).u64[0];
          v76.i64[1] = vsubq_f32(v40, vdupq_lane_s64(*&v76, 0)).i64[1];
          v79 = vbslq_s8(v74, vandq_s8(v73, vcgeq_f32(v35, v40)), v76);
          v77.i64[1] = vsubq_f32(v40, vdupq_lane_s64(*&v77, 0)).i64[1];
          v80 = vbslq_s8(v74, vandq_s8(v73, vcgeq_f32(v36, v40)), v77);
          v78.i64[1] = vsubq_f32(v40, vdupq_lane_s64(*&v78, 0)).i64[1];
          v81 = vbslq_s8(v74, vandq_s8(v73, vcgeq_f32(v37, v40)), v78);
          v82 = vbslq_s8(v74, vmulq_laneq_f32(v79, v79, 2), v76);
          v83 = vbslq_s8(v74, vmulq_laneq_f32(v80, v80, 2), v77);
          v84 = vbslq_s8(v74, vmulq_laneq_f32(v81, v81, 2), v78);
          v85 = vaddq_f32(v32, vmulq_n_f32(vsubq_f32(vextq_s8(v9, v82, 0xCuLL), v32), *v82.i32));
          v86 = vmulq_n_f32(vsubq_f32(vextq_s8(v9, v84, 0xCuLL), v34), *v84.i32);
          v87 = vrev64q_s32(v32);
          v88 = vrev64q_s32(v33);
          v89 = vrev64q_s32(v34);
          v91 = *(v22 + 160);
          v90 = *(v22 + 176);
          v92.i64[0] = vandq_s8(v73, vcgeq_f32(v87, v40)).u64[0];
          v92.i64[1] = vbslq_s8(*&v91, *&v85, vsubq_f32(v73, vdupq_lane_s64(vandq_s8(*&v73, vcgeq_f32(v87, v73)), 0))).i64[1];
          v85.i64[0] = vandq_s8(v73, vcgeq_f32(v88, v40)).u64[0];
          v85.i64[1] = vbslq_s8(*&v91, vaddq_f32(v33, vmulq_n_f32(vsubq_f32(vextq_s8(*&v9, *&v83, 0xCuLL), v33), *&v83)), vsubq_f32(v73, vdupq_lane_s64(vandq_s8(*&v73, vcgeq_f32(v88, v73)), 0))).i64[1];
          v83.i64[0] = vandq_s8(v73, vcgeq_f32(v89, v40)).u64[0];
          v83.i64[1] = vbslq_s8(*&v91, vaddq_f32(v34, v86), vsubq_f32(v73, vdupq_lane_s64(vandq_s8(*&v73, vcgeq_f32(v89, v73)), 0))).i64[1];
          v93 = vbslq_s8(v91, v92, vmulq_lane_f32(v92, *v92.i8, 1));
          v94 = vbslq_s8(v91, v85, vmulq_lane_f32(v85, *v85.f32, 1));
          v95 = vbslq_s8(v91, v83, vmulq_lane_f32(v83, *v83.f32, 1));
          v91.i64[0] = vaddq_f32(v39, vmulq_f32(v32, v38)).u64[0];
          v89.i64[0] = vaddq_f32(v39, vmulq_f32(v33, v38)).u64[0];
          v86.i64[0] = vaddq_f32(v39, vmulq_f32(v34, v38)).u64[0];
          v91.i64[1] = v93.i64[1];
          v89.i64[1] = v94.i64[1];
          v96 = vextq_s8(v93, v93, 8uLL).u64[0];
          v86.i64[1] = v95.i64[1];
          v85.i64[0] = vminq_f32(v91, v38).u64[0];
          v89.i64[0] = vminq_f32(v89, v38).u64[0];
          v86.i64[0] = vminq_f32(v86, v38).u64[0];
          v85.i64[1] = v93.i64[1];
          v89.i64[1] = v94.i64[1];
          v86.i64[1] = v95.i64[1];
          v97 = vextq_s8(v94, v94, 8uLL).u64[0];
          v92.i32[0] = vmaxq_f32(v85, v90).u32[0];
          v99.i32[0] = vmaxq_f32(v89, v90).u32[0];
          v100.i32[0] = vmaxq_f32(v86, v90).u32[0];
          v92.i64[1] = v93.i64[1];
          v99.i64[1] = v94.i64[1];
          v100.i64[1] = v95.i64[1];
          v92.i32[1] = 0.5;
          v98 = vextq_s8(v95, v95, 8uLL).u64[0];
          v99.i32[1] = 0.5;
          v100.i32[1] = 0.5;
          v101 = vsubq_f32(v92, v9);
          if (v5)
          {
            v102 = vaddq_s32(vcvtq_s32_f32(v101), vcltzq_f32(v101));
            v103 = vsubq_f32(v101, vcvtq_f32_s32(v102)).u64[0];
            v104 = vsubq_f32(v99, v9);
            v105 = vaddq_s32(vcvtq_s32_f32(v104), vcltzq_f32(v104));
            v106 = vsubq_f32(v104, vcvtq_f32_s32(v105)).u64[0];
            *v102.i8 = vmla_s32(vzip1_s32(*v102.i8, *v105.i8), vzip2_s32(*v102.i8, *v105.i8), vdup_n_s32(v44));
            v107 = (v46 + 16 * v102.i32[0]);
            v108 = vaddq_f32(*v107, vmulq_n_f32(vsubq_f32(v107[1], *v107), v103.f32[0]));
            v108.i64[0] = vaddq_f32(v108, vmulq_lane_f32(vsubq_f32(vaddq_f32(v107[v44], vmulq_n_f32(vsubq_f32(v107[v44 + 1], v107[v44]), v103.f32[0])), v108), v103, 1)).u64[0];
            v109 = (v46 + 16 * v102.i32[1]);
            v110 = vaddq_f32(*v109, vmulq_n_f32(vsubq_f32(v109[1], *v109), v106.f32[0]));
            v110.i64[0] = vaddq_f32(v110, vmulq_lane_f32(vsubq_f32(vaddq_f32(v109[v44], vmulq_n_f32(vsubq_f32(v109[v44 + 1], v109[v44]), v106.f32[0])), v110), v106, 1)).u64[0];
            v114 = vsubq_f32(v100, v9);
            v111 = vaddq_s32(vcvtq_s32_f32(v114), vcltzq_f32(v114));
            v114.i64[0] = vsubq_f32(v114, vcvtq_f32_s32(v111)).u64[0];
            v112 = (v46 + 16 * (v111.i32[0] + v111.i32[1] * v44));
            v113 = vaddq_f32(*v112, vmulq_n_f32(vsubq_f32(v112[1], *v112), v114.f32[0]));
            v114.i64[0] = vaddq_f32(v113, vmulq_lane_f32(vsubq_f32(vaddq_f32(v112[v44], vmulq_n_f32(vsubq_f32(v112[v44 + 1], v112[v44]), v114.f32[0])), v113), *v114.f32, 1)).u64[0];
          }

          else
          {
            v115 = vaddq_f32(v101, v15);
            v116 = vcvtq_s32_f32(v115);
            v117 = vaddq_f32(vsubq_f32(v99, v9), v15);
            v118 = vcvtq_s32_f32(v117);
            *v115.f32 = vadd_s32(*v116.i8, *&vcgtq_f32(vcvtq_f32_s32(v116), v115));
            *v117.f32 = vadd_s32(*v118.i8, *&vcgtq_f32(vcvtq_f32_s32(v118), v117));
            *v117.f32 = vmla_s32(vzip1_s32(*v115.f32, *v117.f32), vzip2_s32(*v115.f32, *v117.f32), vdup_n_s32(v44));
            v119 = v117.i32[1];
            v108 = *(v46 + 16 * v117.i32[0]);
            v110 = *(v46 + 16 * v119);
            v120 = vaddq_f32(vsubq_f32(v100, v9), v15);
            v121 = vcvtq_s32_f32(v120);
            v120.i64[0] = vaddq_s32(v121, vcgtq_f32(vcvtq_f32_s32(v121), v120)).u64[0];
            v114 = *(v46 + 16 * (v120.i32[0] + v120.i32[1] * v44));
          }

          *v122.f32 = vext_s8(*v108.f32, v96, 4uLL);
          v122.i64[1] = v122.i64[0];
          *v123.f32 = vext_s8(*v110.f32, v97, 4uLL);
          v123.i64[1] = v123.i64[0];
          *v124.f32 = vext_s8(*v114.f32, v98, 4uLL);
          v124.i64[1] = v124.i64[0];
          v125 = vsubq_f32(v122, v35);
          v126 = vsubq_f32(v123, v36);
          v127 = vsubq_f32(v124, v37);
          v124.i64[0] = v32.i64[0];
          v124.i64[1] = v125.i64[1];
          v122.i64[0] = v33.i64[0];
          v122.i64[1] = v126.i64[1];
          v123.i64[0] = v34.i64[0];
          v123.i64[1] = v127.i64[1];
          *v128.i8 = vadd_f32(*v90.f32, vmul_f32(*v38.f32, *v32.f32));
          v128.u64[1] = v96;
          *v129.i8 = vadd_f32(*v90.f32, vmul_f32(*v38.f32, *v33.f32));
          v129.u64[1] = v97;
          *v130.i8 = vadd_f32(*v90.f32, vmul_f32(*v38.f32, *v34.f32));
          v130.u64[1] = v98;
          v131 = vorrq_s8(vandq_s8(v128, v75), vandq_s8(v74, vaddq_f32(v124, vmulq_laneq_f32(vextq_s8(v125, v32, 8uLL), v93, 3))));
          v132 = vorrq_s8(vandq_s8(v129, v75), vandq_s8(v74, vaddq_f32(v122, vmulq_laneq_f32(vextq_s8(v126, v33, 8uLL), v94, 3))));
          v133 = vorrq_s8(vandq_s8(v130, v75), vandq_s8(v74, vaddq_f32(v123, vmulq_laneq_f32(vextq_s8(v127, v34, 8uLL), v95, 3))));
          v32.i64[1] = vdupq_laneq_s64(v125, 1).u64[0];
          v33.i64[1] = vdupq_laneq_s64(v126, 1).u64[0];
          v34.i64[1] = vdupq_laneq_s64(v127, 1).u64[0];
          v134 = vcgtq_f32(v73, vrev64q_s32(v34));
          v135 = vandq_s8(v73, v74);
          v148 = vorrq_s8(vandq_s8(v135, vcgtq_f32(v73, vrev64q_s32(v32))), vandq_s8(v124, v75));
          v149 = vorrq_s8(vandq_s8(v135, vcgtq_f32(v73, vrev64q_s32(v33))), vandq_s8(v122, v75));
          v150 = vorrq_s8(vandq_s8(v135, v134), vandq_s8(v123, v75));
          v137 = *(v22 + 192);
          v136 = *(v22 + 208);
          v138 = vbslq_s8(v136, vminq_f32(v131, v137), v131);
          v139 = vbslq_s8(v136, vminq_f32(v132, v137), v132);
          v140 = vbslq_s8(v136, vminq_f32(v133, v137), v133);
          v141 = vandq_s8(v73, vcgeq_f32(v148, v40));
          v142 = vandq_s8(v73, vcgeq_f32(v149, v40));
          v143 = vandq_s8(v73, vcgeq_f32(v150, v40));
          v144 = *(v22 + 224);
          v145 = vbslq_s8(v144, vmulq_n_f32(vbslq_s8(v144, vextq_s8(v141, v141, 8uLL), v138), v148.f32[0]), v138);
          v146 = vbslq_s8(v144, vmulq_n_f32(vbslq_s8(v144, vextq_s8(v142, v142, 8uLL), v139), v149.f32[0]), v139);
          v147 = vbslq_s8(v144, vmulq_n_f32(vbslq_s8(v144, vextq_s8(v143, v143, 8uLL), v140), v150.f32[0]), v140);
          v148.i64[1] = __PAIR64__(0.5, vmaxq_f32(vextq_s8(v145, v145, 0xCuLL), v73).u32[2]);
          v149.i64[1] = __PAIR64__(0.5, vmaxq_f32(vextq_s8(v146, v146, 0xCuLL), v73).u32[2]);
          v150.i64[1] = __PAIR64__(0.5, vmaxq_f32(vextq_s8(v147, v147, 0xCuLL), v73).u32[2]);
          v151 = vextq_s8(v149, v149, 8uLL);
          v152 = vextq_s8(v150, v150, 8uLL);
          v153 = vsubq_f32(vextq_s8(v148, v148, 8uLL), v9);
          if (v5)
          {
            v154 = vaddq_s32(vcvtq_s32_f32(v153), vcltzq_f32(v153));
            v155 = vsubq_f32(v153, vcvtq_f32_s32(v154)).u64[0];
            v156 = vsubq_f32(v151, v9);
            v157 = vaddq_s32(vcvtq_s32_f32(v156), vcltzq_f32(v156));
            v158 = vsubq_f32(v156, vcvtq_f32_s32(v157)).u64[0];
            *v154.i8 = vmla_s32(vzip1_s32(*v154.i8, *v157.i8), vzip2_s32(*v154.i8, *v157.i8), vdup_n_s32(v44));
            v159 = (v46 + 16 * v154.i32[0]);
            v160 = vaddq_f32(*v159, vmulq_n_f32(vsubq_f32(v159[1], *v159), v155.f32[0]));
            v161 = vaddq_f32(v160, vmulq_lane_f32(vsubq_f32(vaddq_f32(v159[v44], vmulq_n_f32(vsubq_f32(v159[v44 + 1], v159[v44]), v155.f32[0])), v160), v155, 1));
            v162 = (v46 + 16 * v154.i32[1]);
            v163 = vaddq_f32(*v162, vmulq_n_f32(vsubq_f32(v162[1], *v162), v158.f32[0]));
            v164 = vaddq_f32(v163, vmulq_lane_f32(vsubq_f32(vaddq_f32(v162[v44], vmulq_n_f32(vsubq_f32(v162[v44 + 1], v162[v44]), v158.f32[0])), v163), v158, 1));
            v165 = vsubq_f32(v152, v9);
            v166 = vaddq_s32(vcvtq_s32_f32(v165), vcltzq_f32(v165));
            v165.i64[0] = vsubq_f32(v165, vcvtq_f32_s32(v166)).u64[0];
            v167 = (v46 + 16 * (v166.i32[0] + v166.i32[1] * v44));
            v168 = vaddq_f32(*v167, vmulq_n_f32(vsubq_f32(v167[1], *v167), v165.f32[0]));
            v169 = vaddq_f32(v168, vmulq_lane_f32(vsubq_f32(vaddq_f32(v167[v44], vmulq_n_f32(vsubq_f32(v167[v44 + 1], v167[v44]), v165.f32[0])), v168), *v165.f32, 1));
          }

          else
          {
            v170 = vaddq_f32(v153, v15);
            v171 = vcvtq_s32_f32(v170);
            v172 = vaddq_f32(vsubq_f32(v151, v9), v15);
            v173 = vcvtq_s32_f32(v172);
            *v170.f32 = vadd_s32(*v171.i8, *&vcgtq_f32(vcvtq_f32_s32(v171), v170));
            *v172.f32 = vadd_s32(*v173.i8, *&vcgtq_f32(vcvtq_f32_s32(v173), v172));
            *v172.f32 = vmla_s32(vzip1_s32(*v170.f32, *v172.f32), vzip2_s32(*v170.f32, *v172.f32), vdup_n_s32(v44));
            v174 = v172.i32[1];
            v161 = *(v46 + 16 * v172.i32[0]);
            v164 = *(v46 + 16 * v174);
            v175 = vaddq_f32(vsubq_f32(v152, v9), v15);
            v176 = vcvtq_s32_f32(v175);
            v175.i64[0] = vaddq_s32(v176, vcgtq_f32(vcvtq_f32_s32(v176), v175)).u64[0];
            v169 = *(v46 + 16 * (v175.i32[0] + v175.i32[1] * v44));
          }

          v177 = vmvnq_s8(v136);
          v178 = vmvnq_s8(v144);
          v179 = vandq_s8(v145, v177);
          v180 = vorrq_s8(vandq_s8(v136, v161), v179);
          v181 = vandq_s8(v146, v177);
          v182 = vorrq_s8(vandq_s8(v136, v164), v181);
          v183 = vandq_s8(v147, v177);
          v184 = vorrq_s8(vandq_s8(v136, v169), v183);
          v185 = vorrq_s8(vandq_s8(v136, vaddq_f32(v148, vmulq_laneq_f32(vsubq_f32(v180, v148), v180, 3))), v179);
          v186 = vorrq_s8(vandq_s8(v136, vaddq_f32(v149, vmulq_laneq_f32(vsubq_f32(v182, v149), v182, 3))), v181);
          v187 = vorrq_s8(vandq_s8(v136, vaddq_f32(v150, vmulq_laneq_f32(vsubq_f32(v184, v150), v184, 3))), v183);
          v188 = *(v22 + 240);
          v189 = *(v22 + 256);
          v190 = *(v22 + 16);
          v191 = vaddq_f32(vmulq_f32(v190, vsubq_f32(vmaxq_f32(v185, v188), v185)), v185);
          v192 = vaddq_f32(vmulq_f32(v190, vsubq_f32(vmaxq_f32(v186, v188), v186)), v186);
          v193 = vaddq_f32(vmulq_f32(v190, vsubq_f32(vmaxq_f32(v187, v188), v187)), v187);
          v194 = vminq_f32(v192, v189);
          v195 = *(v22 + 32);
          v196 = vaddq_f32(v191, vmulq_f32(v195, vsubq_f32(vminq_f32(v191, v189), v191)));
          v197 = vaddq_f32(v193, vmulq_f32(v195, vsubq_f32(vminq_f32(v193, v189), v193)));
          v198 = vandq_s8(v144, v20);
          v199 = vandq_s8(v144, v19);
          v200 = vandq_s8(v144, v21);
          v201 = vaddq_f32(v20, vmulq_f32(*v22, vsubq_f32(vorrq_s8(vandq_s8(vmulq_laneq_f32(vorrq_s8(vandq_s8(v196, v178), v198), v20, 3), v178), v198), v20)));
          v202 = vaddq_f32(v19, vmulq_f32(*v22, vsubq_f32(vorrq_s8(vandq_s8(vmulq_laneq_f32(vorrq_s8(vandq_s8(vaddq_f32(v192, vmulq_f32(v195, vsubq_f32(v194, v192))), v178), v199), v19, 3), v178), v199), v19)));
          v203 = vaddq_f32(v21, vmulq_f32(*v22, vsubq_f32(vorrq_s8(vandq_s8(vmulq_laneq_f32(vorrq_s8(vandq_s8(v197, v178), v200), v21, 3), v178), v200), v21)));
          v204 = (v11 + v16);
          *v204 = v201;
          v204[1] = v202;
          v204[2] = v203;
          v17 += 3;
          v16 += 48;
        }
      }

      if (v17 < v10)
      {
        do
        {
          v205 = *(v12 + 16 * v17);
          v206 = *(this + 51);
          v207 = vmaxq_f32(vdupq_laneq_s32(v205, 3), *(v206 + 48));
          v208 = vmulq_f32(vrecpeq_f32(v207), *(v206 + 64));
          v209 = vmulq_f32(v205, vmulq_f32(v208, vrecpsq_f32(v208, v207)));
          v210 = vextq_s8(v209, v209, 8uLL);
          v212 = *(v206 + 80);
          v211 = *(v206 + 96);
          v213 = *(v206 + 112);
          v214 = vmaxq_f32(vminq_f32(vaddq_f32(v212, vmulq_f32(v211, v210)), v211), v213);
          v214.i32[1] = 0.5;
          v215 = *(a2 + 26);
          v216 = vsubq_f32(v214, v9);
          v217 = *(a2 + 12);
          if (v5)
          {
            v218 = vaddq_s32(vcvtq_s32_f32(v216), vcltzq_f32(v216));
            v219 = vsubq_f32(v216, vcvtq_f32_s32(v218)).u64[0];
            v220 = (v217 + 16 * (v218.i32[0] + v218.i32[1] * v215));
            v221 = vaddq_f32(*v220, vmulq_n_f32(vsubq_f32(v220[1], *v220), v219.f32[0]));
            v222 = vaddq_f32(v221, vmulq_lane_f32(vsubq_f32(vaddq_f32(v220[v215], vmulq_n_f32(vsubq_f32(v220[v215 + 1], v220[v215]), v219.f32[0])), v221), v219, 1));
          }

          else
          {
            v223 = vaddq_f32(v216, v15);
            v224 = vcvtq_s32_f32(v223);
            v223.i64[0] = vaddq_s32(v224, vcgtq_f32(vcvtq_f32_s32(v224), v223)).u64[0];
            v222 = *(v217 + 16 * (v223.i32[0] + v223.i32[1] * v215));
          }

          v225 = vandq_s8(v213, vcgeq_f32(v209, v213));
          v226 = vextq_s8(v225, v225, 8uLL);
          v228 = *(v206 + 128);
          v227 = *(v206 + 144);
          v229.i64[0] = vbslq_s8(v228, v226, v222).u64[0];
          v229.i64[1] = vsubq_f32(v213, vdupq_lane_s64(*&v229, 0)).i64[1];
          v230 = vbslq_s8(v228, vandq_s8(v227, vcgeq_f32(v210, v213)), v229);
          v231 = vbslq_s8(v228, vmulq_laneq_f32(v230, v230, 2), v229);
          v232 = vaddq_f32(v209, vmulq_n_f32(vsubq_f32(vextq_s8(v9, v231, 0xCuLL), v209), *v231.i32));
          v233 = vrev64q_s32(v209);
          v235 = *(v206 + 160);
          v234 = *(v206 + 176);
          v236.i64[0] = vandq_s8(v227, vcgeq_f32(v233, v213)).u64[0];
          v236.i64[1] = vbslq_s8(v235, v232, vsubq_f32(v227, vdupq_lane_s64(vandq_s8(*&v227, vcgeq_f32(v233, v227)), 0))).i64[1];
          v237 = vbslq_s8(v235, v236, vmulq_lane_f32(v236, *v236.i8, 1));
          v238.i64[0] = vaddq_f32(v212, vmulq_f32(v209, v211)).u64[0];
          v238.i64[1] = v237.i64[1];
          v238.i64[0] = vminq_f32(v238, v211).u64[0];
          v238.i64[1] = v237.i64[1];
          v238.i32[0] = vmaxq_f32(v238, v234).u32[0];
          v238.i64[1] = v237.i64[1];
          v238.i32[1] = 0.5;
          v239 = vsubq_f32(v238, v9);
          if (v5)
          {
            v240 = vaddq_s32(vcvtq_s32_f32(v239), vcltzq_f32(v239));
            v241 = vsubq_f32(v239, vcvtq_f32_s32(v240)).u64[0];
            v242 = (v217 + 16 * (v240.i32[0] + v240.i32[1] * v215));
            v243 = vaddq_f32(*v242, vmulq_n_f32(vsubq_f32(v242[1], *v242), v241.f32[0]));
            v239.i64[0] = vaddq_f32(v243, vmulq_lane_f32(vsubq_f32(vaddq_f32(v242[v215], vmulq_n_f32(vsubq_f32(v242[v215 + 1], v242[v215]), v241.f32[0])), v243), v241, 1)).u64[0];
          }

          else
          {
            v244 = vaddq_f32(v239, v15);
            v245 = vcvtq_s32_f32(v244);
            v244.i64[0] = vaddq_s32(v245, vcgtq_f32(vcvtq_f32_s32(v245), v244)).u64[0];
            v239 = *(v217 + 16 * (v244.i32[0] + v244.i32[1] * v215));
          }

          v246 = vextq_s8(v237, v237, 8uLL).u64[0];
          *v247.f32 = vext_s8(*v239.f32, v246, 4uLL);
          v247.i64[1] = v247.i64[0];
          v248 = vsubq_f32(v247, v210);
          v247.i64[0] = v209.i64[0];
          v247.i64[1] = v248.i64[1];
          *v249.i8 = vadd_f32(*v234.f32, vmul_f32(*v211.f32, *v209.f32));
          v249.u64[1] = v246;
          v250 = vmvnq_s8(v228);
          v251 = vorrq_s8(vandq_s8(v249, v250), vandq_s8(v228, vaddq_f32(v247, vmulq_laneq_f32(vextq_s8(v248, v209, 8uLL), v237, 3))));
          v209.i64[1] = vdupq_laneq_s64(v248, 1).u64[0];
          v257 = vorrq_s8(vandq_s8(vandq_s8(v227, v228), vcgtq_f32(v227, vrev64q_s32(v209))), vandq_s8(v247, v250));
          v252 = *(v206 + 208);
          v253 = vbslq_s8(v252, vminq_f32(v251, *(v206 + 192)), v251);
          v254 = vandq_s8(v227, vcgeq_f32(v257, v213));
          v255 = *(v206 + 224);
          v256 = vbslq_s8(v255, vmulq_n_f32(vbslq_s8(v255, vextq_s8(v254, v254, 8uLL), v253), v257.f32[0]), v253);
          v257.i64[1] = __PAIR64__(0.5, vmaxq_f32(vextq_s8(v256, v256, 0xCuLL), v227).u32[2]);
          v258 = vsubq_f32(vextq_s8(v257, v257, 8uLL), v9);
          if (v5)
          {
            v259 = vaddq_s32(vcvtq_s32_f32(v258), vcltzq_f32(v258));
            v260 = vsubq_f32(v258, vcvtq_f32_s32(v259)).u64[0];
            v261 = (v217 + 16 * (v259.i32[0] + v259.i32[1] * v215));
            v262 = vaddq_f32(*v261, vmulq_n_f32(vsubq_f32(v261[1], *v261), v260.f32[0]));
            v263 = vaddq_f32(v262, vmulq_lane_f32(vsubq_f32(vaddq_f32(v261[v215], vmulq_n_f32(vsubq_f32(v261[v215 + 1], v261[v215]), v260.f32[0])), v262), v260, 1));
          }

          else
          {
            v264 = vaddq_f32(v258, v15);
            v265 = vcvtq_s32_f32(v264);
            v264.i64[0] = vaddq_s32(v265, vcgtq_f32(vcvtq_f32_s32(v265), v264)).u64[0];
            v263 = *(v217 + 16 * (v264.i32[0] + v264.i32[1] * v215));
          }

          v266 = vmvnq_s8(v255);
          v267 = vandq_s8(v256, vmvnq_s8(v252));
          v268 = vorrq_s8(vandq_s8(v252, v263), v267);
          v269 = vorrq_s8(vandq_s8(v252, vaddq_f32(v257, vmulq_laneq_f32(vsubq_f32(v268, v257), v268, 3))), v267);
          v270 = vaddq_f32(vmulq_f32(*(v206 + 16), vsubq_f32(vmaxq_f32(v269, *(v206 + 240)), v269)), v269);
          v271 = vandq_s8(v255, v205);
          *(v11 + 16 * v17++) = vaddq_f32(v205, vmulq_f32(*v206, vsubq_f32(vorrq_s8(vandq_s8(vmulq_laneq_f32(vorrq_s8(vandq_s8(vaddq_f32(v270, vmulq_f32(*(v206 + 32), vsubq_f32(vminq_f32(v270, *(v206 + 256)), v270))), v266), v271), v205, 3), v266), v271), v205)));
        }

        while (v17 < v10);
      }

      ++v8;
      v11 += v13;
      v12 += v14;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcContrastBezierRGB::GetDOD(HgcContrastBezierRGB *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 1)
  {
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v7 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      HGRectGrow(v5, v4, v7);
    }

    v6 = &HGRectInfinite;
    return *v6;
  }

  if (a3)
  {
    v6 = &HGRectNull;
    return *v6;
  }

  return v5;
}

uint64_t HgcContrastBezierRGB::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, 1u);
    DOD = HGRenderer::GetDOD(a2, Input);
    v9 = v8;
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      return HGRectGrow(DOD, v9, v10);
    }
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }

  return DOD;
}

void HgcContrastBezierRGB::HgcContrastBezierRGB(HgcContrastBezierRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725CE10;
  operator new();
}

void HgcContrastBezierRGB::~HgcContrastBezierRGB(HGNode *this)
{
  *this = &unk_28725CE10;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B2834900);
  }

  HGNode::~HGNode(this);
}

{
  HgcContrastBezierRGB::~HgcContrastBezierRGB(this);

  HGObject::operator delete(v1);
}

uint64_t HgcContrastBezierRGB::SetParameter(HgcContrastBezierRGB *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 2)
  {
    v11 = *(this + 51);
    if (*(v11 + 32) != a3.n128_f32[0] || *(v11 + 36) != a3.n128_f32[0] || *(v11 + 40) != a3.n128_f32[0] || *(v11 + 44) != 0.0)
    {
      v12 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v12.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *(v11 + 32) = v12;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v11 + 304) = a3;
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
      *(v9 + 288) = a3;
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
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != a3.n128_f32[0])
    {
      v8 = vdupq_lane_s32(a3.n128_u64[0], 0);
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 272) = a3;
LABEL_19:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcContrastBezierRGB::GetParameter(HgcContrastBezierRGB *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = (*(this + 51) + 16 * a2);
  *a3 = v5[68];
  a3[1] = v5[69];
  a3[2] = v5[70];
  a3[3] = v5[71];
  return result;
}

const char *HgcContrastLuma::GetProgram(HgcContrastLuma *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000065e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.2989999950, 0.5870000124, 0.1140000001, 0.000000000);\n    const half4 c1 = half4(0.5960000157, -0.2750000060, -0.3210000098, 0.000000000);\n    const half4 c2 = half4(0.2119999975, -0.5230000019, 0.3109999895, 0.000000000);\n    const half4 c3 = half4(1.000000000, -1.106999993, 1.703999996, 0.000000000);\n    const half4 c4 = half4(1.000000000, 0.9559999704, 0.6209999919, 0.000000000);\n    const half4 c5 = half4(1.000000000, -0.2720000148, -0.6470000148, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2.x = dot(r1.xyz, c0.xyz);\n    r2.y = dot(r1.xyz, c1.xyz);\n    r2.z = dot(r1.xyz, c2.xyz);\n    r2.x = mix(half(hg_Params[0].x), r2.x, half(hg_Params[1].x));\n    r1.z = dot(r2.xyz, c3.xyz);\n    r1.x = dot(r2.xyz, c4.xyz);\n    r1.y = dot(r2.xyz, c5.xyz);\n    r2.xyz = fmax(r1.xyz, c5.www);\n    r2.xyz = mix(r1.xyz, r2.xyz, half3(hg_Params[3].xyz));\n    r1.xyz = fmin(r2.xyz, c5.xxx);\n    r2.xyz = mix(r2.xyz, r1.xyz, half3(hg_Params[4].xyz));\n    r2.w = r0.w;\n    r2.xyz = r2.xyz*r0.www;\n    output.color0 = mix(float4(r0), float4(r2), hg_Params[2]);\n    return output;\n}\n//MD5=e7b7ef63:1f75403f:fcd380dc:4a8f4b11\n//SIG=00400000:00000001:00000001:00000001:0006:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000063a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.2989999950, 0.5870000124, 0.1140000001, 0.000000000);\n    const float4 c1 = float4(0.5960000157, -0.2750000060, -0.3210000098, 0.000000000);\n    const float4 c2 = float4(0.2119999975, -0.5230000019, 0.3109999895, 0.000000000);\n    const float4 c3 = float4(1.000000000, -1.106999993, 1.703999996, 0.000000000);\n    const float4 c4 = float4(1.000000000, 0.9559999704, 0.6209999919, 0.000000000);\n    const float4 c5 = float4(1.000000000, -0.2720000148, -0.6470000148, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2.x = dot(r1.xyz, c0.xyz);\n    r2.y = dot(r1.xyz, c1.xyz);\n    r2.z = dot(r1.xyz, c2.xyz);\n    r2.x = mix(hg_Params[0].x, r2.x, hg_Params[1].x);\n    r1.z = dot(r2.xyz, c3.xyz);\n    r1.x = dot(r2.xyz, c4.xyz);\n    r1.y = dot(r2.xyz, c5.xyz);\n    r2.xyz = fmax(r1.xyz, c5.www);\n    r2.xyz = mix(r1.xyz, r2.xyz, hg_Params[3].xyz);\n    r1.xyz = fmin(r2.xyz, c5.xxx);\n    r2.xyz = mix(r2.xyz, r1.xyz, hg_Params[4].xyz);\n    r2.w = r0.w;\n    r2.xyz = r2.xyz*r0.www;\n    output.color0 = mix(r0, r2, hg_Params[2]);\n    return output;\n}\n//MD5=6eafd8e8:89bd116a:656e9665:d1839915\n//SIG=00000000:00000001:00000001:00000000:0006:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006c6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.2989999950, 0.5870000124, 0.1140000001, 0.000000000);\n    const mediump vec4 c1 = vec4(0.5960000157, -0.2750000060, -0.3210000098, 0.000000000);\n    const mediump vec4 c2 = vec4(0.2119999975, -0.5230000019, 0.3109999895, 0.000000000);\n    const mediump vec4 c3 = vec4(1.000000000, -1.106999993, 1.703999996, 0.000000000);\n    const mediump vec4 c4 = vec4(1.000000000, 0.9559999704, 0.6209999919, 0.000000000);\n    const mediump vec4 c5 = vec4(1.000000000, -0.2720000148, -0.6470000148, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2.x = dot(r1.xyz, c0.xyz);\n    r2.y = dot(r1.xyz, c1.xyz);\n    r2.z = dot(r1.xyz, c2.xyz);\n    r2.x = mix(hg_ProgramLocal0.x, r2.x, hg_ProgramLocal1.x);\n    r1.z = dot(r2.xyz, c3.xyz);\n    r1.x = dot(r2.xyz, c4.xyz);\n    r1.y = dot(r2.xyz, c5.xyz);\n    r2.xyz = max(r1.xyz, c5.www);\n    r2.xyz = mix(r1.xyz, r2.xyz, hg_ProgramLocal3.xyz);\n    r1.xyz = min(r2.xyz, c5.xxx);\n    r2.xyz = mix(r2.xyz, r1.xyz, hg_ProgramLocal4.xyz);\n    r2.w = r0.w;\n    r2.xyz = r2.xyz*r0.www;\n    gl_FragColor = mix(r0, r2, hg_ProgramLocal2);\n}\n//MD5=a902954f:31d8ce2e:fdaac8d6:07d506fb\n//SIG=00000000:00000001:00000001:00000000:0006:0005:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF3D8B4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF3D9B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF3D9F4()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF3D9ECLL);
}

uint64_t HgcContrastLuma::BindTexture(HgcContrastLuma *this, HGHandler *a2, int a3)
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

uint64_t HgcContrastLuma::Bind(HgcContrastLuma *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcContrastLuma::RenderTile(HgcContrastLuma *this, HGTile *a2)
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
    do
    {
      if (v4 < 3)
      {
        v10 = 0;
      }

      else
      {
        v9 = 0;
        v10 = 0;
        for (i = v4; i > 2; i -= 3)
        {
          v13 = *(v6 + v9);
          v12 = *(v6 + v9 + 16);
          v14 = *(v6 + v9 + 32);
          v15 = *(this + 51);
          v16 = *(v15 + 64);
          v17 = *(v15 + 80);
          v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v17);
          v19 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v17);
          v20 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v17);
          v21 = *(v15 + 96);
          v22 = *(v15 + 112);
          v23 = vmulq_f32(vrecpeq_f32(v18), v21);
          v24 = vmulq_f32(vrecpeq_f32(v19), v21);
          v25 = vmulq_f32(vrecpeq_f32(v20), v21);
          v26 = vmulq_f32(v13, vmulq_f32(v23, vrecpsq_f32(v23, v18)));
          v27 = vmulq_f32(v12, vmulq_f32(v24, vrecpsq_f32(v24, v19)));
          v28 = vmulq_f32(v14, vmulq_f32(v25, vrecpsq_f32(v25, v20)));
          v29 = vmulq_f32(v26, v22);
          v30 = vmulq_f32(v27, v22);
          v31 = vmulq_f32(v22, v28);
          v32 = *(v15 + 128);
          v33 = *(v15 + 144);
          v34 = vmulq_f32(v26, v32);
          v35 = vmulq_f32(v27, v32);
          v36 = vmulq_f32(v28, v32);
          v37 = vaddq_f32(vextq_s8(v36, v12, 4uLL), vaddq_f32(v36, vrev64q_s32(v36)));
          v39 = *(v15 + 160);
          v38 = *(v15 + 176);
          v40 = vmulq_f32(v26, v39);
          v41 = vmulq_f32(v27, v39);
          v42 = vmulq_f32(v28, v39);
          v29.i64[0] = vbslq_s8(v33, vaddq_f32(vdupq_laneq_s64(v29, 1), vaddq_f32(v29, vrev64q_s32(v29))), vaddq_f32(vextq_s8(v34, v12, 4uLL), vaddq_f32(v34, vrev64q_s32(v34)))).u64[0];
          v30.i64[0] = vbslq_s8(v33, vaddq_f32(vdupq_laneq_s64(v30, 1), vaddq_f32(v30, vrev64q_s32(v30))), vaddq_f32(vextq_s8(v35, v12, 4uLL), vaddq_f32(v35, vrev64q_s32(v35)))).u64[0];
          v31.i64[0] = vbslq_s8(v33, vaddq_f32(vdupq_laneq_s64(v31, 1), vaddq_f32(v31, vrev64q_s32(v31))), v37).u64[0];
          v29.i64[1] = vaddq_f32(v40, vaddq_f32(vdupq_lane_s64(*&v40, 0), vextq_s8(*&v12, *&v40, 0xCuLL))).i64[1];
          v30.i64[1] = vaddq_f32(v41, vaddq_f32(vdupq_lane_s64(*&v41, 0), vextq_s8(*&v12, *&v41, 0xCuLL))).i64[1];
          v31.i64[1] = vaddq_f32(v42, vaddq_f32(vdupq_lane_s64(*&v42, 0), vextq_s8(*&v12, *&v42, 0xCuLL))).i64[1];
          v43 = *(v15 + 16);
          v44 = vaddq_f32(*v15, vmulq_f32(v43, vsubq_f32(v30, *v15)));
          v45 = vaddq_f32(*v15, vmulq_f32(v43, vsubq_f32(v31, *v15)));
          v46 = vbslq_s8(v33, vaddq_f32(*v15, vmulq_f32(v43, vsubq_f32(v29, *v15))), v29);
          v47 = vbslq_s8(v33, v44, v30);
          v48 = vbslq_s8(v33, v45, v31);
          v49 = vmulq_f32(v38, v46);
          v50 = vmulq_f32(v38, v47);
          v51 = vmulq_f32(v38, v48);
          v52 = *(v15 + 192);
          v53 = *(v15 + 208);
          v54 = vmulq_f32(v52, v46);
          v55 = vmulq_f32(v52, v47);
          v56 = vmulq_f32(v52, v48);
          v35.i64[0] = vrev64q_s32(v54).u64[0];
          v57.i64[0] = vrev64q_s32(v55).u64[0];
          v58 = vzip2q_s64(v54, v49);
          v35.i64[1] = vextq_s8(*&v12, *&v49, 0xCuLL).i64[1];
          v54.i64[1] = v49.i64[0];
          v59 = vzip2q_s64(v55, v50);
          v57.i64[1] = vextq_s8(*&v12, *&v50, 0xCuLL).i64[1];
          v55.i64[1] = v50.i64[0];
          v50.i64[0] = vrev64q_s32(v56).u64[0];
          v50.i64[1] = vextq_s8(*&v12, *&v51, 0xCuLL).i64[1];
          v60 = vzip2q_s64(v56, v51);
          v56.i64[1] = v51.i64[0];
          v61 = vmulq_f32(v53, v46);
          v62 = vmulq_f32(v53, v47);
          v63 = vmulq_f32(v53, v48);
          v64 = vaddq_f32(v60, vaddq_f32(v56, v50));
          v65 = *(v15 + 224);
          v66 = *(v15 + 240);
          v67 = vbslq_s8(v65, vaddq_f32(vextq_s8(v61, v61, 4uLL), vaddq_f32(v61, vrev64q_s32(v61))), vaddq_f32(v58, vaddq_f32(v54, v35)));
          v68 = vbslq_s8(v65, vaddq_f32(vextq_s8(v62, v62, 4uLL), vaddq_f32(v62, vrev64q_s32(v62))), vaddq_f32(v59, vaddq_f32(v55, v57)));
          v69 = vbslq_s8(v65, vaddq_f32(vextq_s8(v63, v63, 4uLL), vaddq_f32(v63, vrev64q_s32(v63))), v64);
          v70 = vsubq_f32(vmaxq_f32(v67, v66), v67);
          v71 = vsubq_f32(vmaxq_f32(v68, v66), v68);
          v72 = vsubq_f32(vmaxq_f32(v69, v66), v69);
          v74 = *(v15 + 32);
          v73 = *(v15 + 48);
          v75 = vaddq_f32(vmulq_f32(v73, v70), v67);
          v76 = vaddq_f32(vmulq_f32(v73, v71), v68);
          v77 = vaddq_f32(vmulq_f32(v73, v72), v69);
          v78 = *(v15 + 256);
          v79 = *(v15 + 272);
          v80 = (v5 + v9);
          *v80 = vaddq_f32(v13, vmulq_f32(v74, vsubq_f32(vbslq_s8(v79, v13, vmulq_laneq_f32(vbslq_s8(v79, v13, vaddq_f32(v75, vmulq_f32(v16, vsubq_f32(vminq_f32(v75, v78), v75)))), v13, 3)), v13)));
          v80[1] = vaddq_f32(v12, vmulq_f32(v74, vsubq_f32(vbslq_s8(v79, v12, vmulq_laneq_f32(vbslq_s8(v79, v12, vaddq_f32(v76, vmulq_f32(v16, vsubq_f32(vminq_f32(v76, v78), v76)))), v12, 3)), v12)));
          v80[2] = vaddq_f32(v14, vmulq_f32(v74, vsubq_f32(vbslq_s8(v79, v14, vmulq_laneq_f32(vbslq_s8(v79, v14, vaddq_f32(v77, vmulq_f32(v16, vsubq_f32(vminq_f32(v77, v78), v77)))), v14, 3)), v14)));
          v10 += 3;
          v9 += 48;
        }
      }

      if (v10 < v4)
      {
        do
        {
          v81 = *(v6 + 16 * v10);
          v82 = *(this + 51);
          v83 = vmaxq_f32(vdupq_laneq_s32(v81, 3), *(v82 + 80));
          v84 = vmulq_f32(vrecpeq_f32(v83), *(v82 + 96));
          v85 = vmulq_f32(v81, vmulq_f32(v84, vrecpsq_f32(v84, v83)));
          v86 = vmulq_f32(*(v82 + 112), v85);
          v87 = *(v82 + 144);
          v88 = vmulq_f32(v85, *(v82 + 128));
          v86.i64[0] = vbslq_s8(v87, vaddq_f32(vdupq_laneq_s64(v86, 1), vaddq_f32(v86, vrev64q_s32(v86))), vaddq_f32(vextq_s8(v88, v81, 4uLL), vaddq_f32(v88, vrev64q_s32(v88)))).u64[0];
          v89 = vmulq_f32(v85, *(v82 + 160));
          v86.i64[1] = vaddq_f32(v89, vaddq_f32(vdupq_lane_s64(*&v89, 0), vextq_s8(*&v81, *&v89, 0xCuLL))).i64[1];
          v90 = vbslq_s8(v87, vaddq_f32(*v82, vmulq_f32(*(v82 + 16), vsubq_f32(v86, *v82))), v86);
          v91 = vmulq_f32(*(v82 + 176), v90);
          v92 = vmulq_f32(*(v82 + 192), v90);
          v93.i64[0] = vrev64q_s32(v92).u64[0];
          v93.i64[1] = vextq_s8(*&v81, *&v91, 0xCuLL).i64[1];
          v94 = vzip2q_s64(v92, v91);
          v92.i64[1] = v91.i64[0];
          v95 = vmulq_f32(*(v82 + 208), v90);
          v96 = vbslq_s8(*(v82 + 224), vaddq_f32(vextq_s8(v95, v95, 4uLL), vaddq_f32(v95, vrev64q_s32(v95))), vaddq_f32(v94, vaddq_f32(v92, v93)));
          v97 = vaddq_f32(vmulq_f32(*(v82 + 48), vsubq_f32(vmaxq_f32(v96, *(v82 + 240)), v96)), v96);
          *(v5 + 16 * v10++) = vaddq_f32(v81, vmulq_f32(*(v82 + 32), vsubq_f32(vbslq_s8(*(v82 + 272), v81, vmulq_laneq_f32(vbslq_s8(*(v82 + 272), v81, vaddq_f32(v97, vmulq_f32(*(v82 + 64), vsubq_f32(vminq_f32(v97, *(v82 + 256)), v97)))), v81, 3)), v81)));
        }

        while (v10 < v4);
      }

      ++v3;
      v5 += v7;
      v6 += v8;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcContrastLuma::GetDOD(HgcContrastLuma *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcContrastLuma::GetROI(HgcContrastLuma *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcContrastLuma::HgcContrastLuma(HgcContrastLuma *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725D078;
  operator new();
}

void HgcContrastLuma::~HgcContrastLuma(HGNode *this)
{
  *this = &unk_28725D078;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4055B0EC01);
  }

  HGNode::~HGNode(this);
}

{
  HgcContrastLuma::~HgcContrastLuma(this);

  HGObject::operator delete(v1);
}

uint64_t HgcContrastLuma::SetParameter(HgcContrastLuma *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v15 = *(this + 51);
      if (*v15 != a3.n128_f32[0] || *(v15 + 4) != a4 || *(v15 + 8) != a5 || *(v15 + 12) != a6)
      {
        *v15 = a3.n128_u32[0];
        *(v15 + 4) = a4;
        *(v15 + 8) = a5;
        *(v15 + 12) = a6;
        goto LABEL_32;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v10 = *(this + 51);
      if (*(v10 + 16) != a3.n128_f32[0] || *(v10 + 20) != a4 || *(v10 + 24) != a5 || *(v10 + 28) != a6)
      {
        *(v10 + 16) = a3.n128_u32[0];
        *(v10 + 20) = a4;
        *(v10 + 24) = a5;
        *(v10 + 28) = a6;
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
        if (*(v11 + 32) != a3.n128_f32[0] || *(v11 + 36) != a3.n128_f32[0] || *(v11 + 40) != a3.n128_f32[0] || *(v11 + 44) != a3.n128_f32[0])
        {
          v12 = vdupq_lane_s32(a3.n128_u64[0], 0);
          a3.n128_f32[1] = a4;
          *(v11 + 32) = v12;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v11 + 288) = a3;
          goto LABEL_32;
        }

        return 0;
      case 3:
        v13 = *(this + 51);
        if (*(v13 + 48) != a3.n128_f32[0] || *(v13 + 52) != a3.n128_f32[0] || *(v13 + 56) != a3.n128_f32[0] || *(v13 + 60) != 0.0)
        {
          v14 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
          v14.i32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          *(v13 + 48) = v14;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v13 + 304) = a3;
          goto LABEL_32;
        }

        return 0;
      case 4:
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a3.n128_f32[0] || *(v8 + 72) != a3.n128_f32[0] || *(v8 + 76) != 0.0)
        {
          v9 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
          v9.i32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          *(v8 + 64) = v9;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v8 + 320) = a3;
LABEL_32:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

float HgcContrastLuma::GetParameter(HgcContrastLuma *this, int a2, float *a3)
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
      *a3 = v5[4];
      a3[1] = v5[5];
      a3[2] = v5[6];
      v4 = v5 + 7;
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
        *a3 = v6[72];
        a3[1] = v6[73];
        a3[2] = v6[74];
        v4 = v6 + 75;
        break;
      case 3:
        v7 = *(this + 51);
        *a3 = v7[76];
        a3[1] = v7[77];
        a3[2] = v7[78];
        v4 = v7 + 79;
        break;
      case 4:
        v3 = *(this + 51);
        *a3 = v3[80];
        a3[1] = v3[81];
        a3[2] = v3[82];
        v4 = v3 + 83;
        break;
      default:
        return result;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcContrastRGB::GetProgram(HgcContrastRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000444\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(9.999999975e-07, 0.000000000, 1.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = fmax(r0.w, c0.x);\n    r1.x = 1.00000h / r1.x;\n    r1.xyz = r0.xyz*r1.xxx + -half3(hg_Params[0].xxx);\n    r1.xyz = r1.xyz*half3(hg_Params[1].xyz) + half3(hg_Params[0].xxx);\n    r2.xyz = fmax(r1.xyz, c0.yyy);\n    r1.xyz = mix(r1.xyz, r2.xyz, half3(hg_Params[3].xyz));\n    r2.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = mix(r1.xyz, r2.xyz, half3(hg_Params[4].xyz));\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(float4(r0), float4(r1), hg_Params[2]);\n    return output;\n}\n//MD5=503c73b4:deb1fa29:855b3f17:aadc9a98\n//SIG=00400000:00000001:00000001:00000001:0001:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000040d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(9.999999975e-07, 0.000000000, 1.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = fmax(r0.w, c0.x);\n    r1.x = 1.00000f / r1.x;\n    r1.xyz = r0.xyz*r1.xxx + -hg_Params[0].xxx;\n    r1.xyz = r1.xyz*hg_Params[1].xyz + hg_Params[0].xxx;\n    r2.xyz = fmax(r1.xyz, c0.yyy);\n    r1.xyz = mix(r1.xyz, r2.xyz, hg_Params[3].xyz);\n    r2.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = mix(r1.xyz, r2.xyz, hg_Params[4].xyz);\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(r0, r1, hg_Params[2]);\n    return output;\n}\n//MD5=e5ebd3e1:36111a4a:f2c8d442:47a74aaf\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000489\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(9.999999975e-07, 0.000000000, 1.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = max(r0.w, c0.x);\n    r1.x = 1.00000 / r1.x;\n    r1.xyz = r0.xyz*r1.xxx + -hg_ProgramLocal0.xxx;\n    r1.xyz = r1.xyz*hg_ProgramLocal1.xyz + hg_ProgramLocal0.xxx;\n    r2.xyz = max(r1.xyz, c0.yyy);\n    r1.xyz = mix(r1.xyz, r2.xyz, hg_ProgramLocal3.xyz);\n    r2.xyz = min(r1.xyz, c0.zzz);\n    r1.xyz = mix(r1.xyz, r2.xyz, hg_ProgramLocal4.xyz);\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    gl_FragColor = mix(r0, r1, hg_ProgramLocal2);\n}\n//MD5=ec125030:8843647e:90165e3b:973fbe25\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FF3E710(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FF3E810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FF3E850()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FF3E848);
}

uint64_t HgcContrastRGB::BindTexture(HgcContrastRGB *this, HGHandler *a2, int a3)
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

uint64_t HgcContrastRGB::Bind(HgcContrastRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcContrastRGB::RenderTile(HgcContrastRGB *this, HGTile *a2)
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
          v13 = *(v6 + v10 - 32);
          v12 = *(v6 + v10 - 16);
          v15 = *(v6 + v10);
          v14 = *(v6 + v10 + 16);
          v16 = *(this + 51);
          v17 = *(v16 + 64);
          v18 = *(v16 + 80);
          v19 = vmaxq_f32(vextq_s8(v13, v13, 0xCuLL), v18);
          v20 = vmaxq_f32(vextq_s8(v12, v12, 0xCuLL), v18);
          v21 = vmaxq_f32(vextq_s8(v15, v15, 0xCuLL), v18);
          v22 = vmaxq_f32(vextq_s8(v14, v14, 0xCuLL), v18);
          v23 = *(v16 + 96);
          v24 = *(v16 + 112);
          v25 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v19), v23), v24);
          v26 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v20), v23), v24);
          v27 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v21), v23), v24);
          v28 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v22), v23), v24);
          v29 = *(v16 + 128);
          v30 = *(v16 + 144);
          v31 = vminq_f32(v25, v29);
          v32 = vminq_f32(v26, v29);
          v33 = vminq_f32(v27, v29);
          v34 = vminq_f32(v28, v29);
          v19.i32[0] = vmulq_f32(v31, vrecpsq_f32(v19, v31)).u32[0];
          v20.i32[0] = vmulq_f32(v32, vrecpsq_f32(v20, v32)).u32[0];
          v35 = *(v16 + 16);
          v36 = vdupq_lane_s32(*v16, 0);
          v37 = vaddq_f32(v36, vmulq_f32(v35, vsubq_f32(vmulq_n_f32(v13, v19.f32[0]), v36)));
          v38 = vaddq_f32(v36, vmulq_f32(v35, vsubq_f32(vmulq_n_f32(v12, v20.f32[0]), v36)));
          v39 = vaddq_f32(v36, vmulq_f32(v35, vsubq_f32(vmulq_n_f32(v15, vmulq_f32(v33, vrecpsq_f32(v21, v33)).f32[0]), v36)));
          v40 = vaddq_f32(v36, vmulq_f32(v35, vsubq_f32(vmulq_n_f32(v14, vmulq_f32(v34, vrecpsq_f32(v22, v34)).f32[0]), v36)));
          v41 = vmaxq_f32(v40, v30);
          v42 = vsubq_f32(vmaxq_f32(v37, v30), v37);
          v43 = vsubq_f32(vmaxq_f32(v38, v30), v38);
          v44 = vsubq_f32(vmaxq_f32(v39, v30), v39);
          v46 = *(v16 + 32);
          v45 = *(v16 + 48);
          v47 = vaddq_f32(v37, vmulq_f32(v42, v45));
          v48 = vaddq_f32(v38, vmulq_f32(v43, v45));
          v49 = vaddq_f32(v39, vmulq_f32(v44, v45));
          v50 = vaddq_f32(v40, vmulq_f32(v45, vsubq_f32(v41, v40)));
          v51 = *(v16 + 160);
          v52 = *(v16 + 176);
          v53 = (v5 + v10);
          v53[-2] = vaddq_f32(v13, vmulq_f32(v46, vsubq_f32(vbslq_s8(v52, v13, vmulq_laneq_f32(vbslq_s8(v52, v13, vaddq_f32(v47, vmulq_f32(vsubq_f32(vminq_f32(v47, v51), v47), v17))), v13, 3)), v13)));
          v53[-1] = vaddq_f32(v12, vmulq_f32(v46, vsubq_f32(vbslq_s8(v52, v12, vmulq_laneq_f32(vbslq_s8(v52, v12, vaddq_f32(v48, vmulq_f32(vsubq_f32(vminq_f32(v48, v51), v48), v17))), v12, 3)), v12)));
          *v53 = vaddq_f32(v15, vmulq_f32(v46, vsubq_f32(vbslq_s8(v52, v15, vmulq_laneq_f32(vbslq_s8(v52, v15, vaddq_f32(v49, vmulq_f32(vsubq_f32(vminq_f32(v49, v51), v49), v17))), v15, 3)), v15)));
          v53[1] = vaddq_f32(v14, vmulq_f32(v46, vsubq_f32(vbslq_s8(v52, v14, vmulq_laneq_f32(vbslq_s8(v52, v14, vaddq_f32(v50, vmulq_f32(v17, vsubq_f32(vminq_f32(v50, v51), v50)))), v14, 3)), v14)));
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v54 = *(v6 + 16 * v9);
          v55 = *(this + 51);
          v56 = vmaxq_f32(vextq_s8(v54, v54, 0xCuLL), *(v55 + 80));
          v57 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v56), *(v55 + 96)), *(v55 + 112)), *(v55 + 128));
          v56.i32[0] = vmulq_f32(v57, vrecpsq_f32(v56, v57)).u32[0];
          v58 = vdupq_lane_s32(*v55, 0);
          v59 = vaddq_f32(v58, vmulq_f32(*(v55 + 16), vsubq_f32(vmulq_n_f32(v54, v56.f32[0]), v58)));
          v60 = vaddq_f32(v59, vmulq_f32(*(v55 + 48), vsubq_f32(vmaxq_f32(v59, *(v55 + 144)), v59)));
          *(v5 + 16 * v9++) = vaddq_f32(v54, vmulq_f32(*(v55 + 32), vsubq_f32(vbslq_s8(*(v55 + 176), v54, vmulq_laneq_f32(vbslq_s8(*(v55 + 176), v54, vaddq_f32(v60, vmulq_f32(*(v55 + 64), vsubq_f32(vminq_f32(v60, *(v55 + 160)), v60)))), v54, 3)), v54)));
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

uint64_t HgcContrastRGB::GetDOD(HgcContrastRGB *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcContrastRGB::GetROI(HgcContrastRGB *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcContrastRGB::HgcContrastRGB(HgcContrastRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28725D2E0;
  operator new();
}

void HgcContrastRGB::~HgcContrastRGB(HGNode *this)
{
  *this = &unk_28725D2E0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40104B78CFLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcContrastRGB::~HgcContrastRGB(this);

  HGObject::operator delete(v1);
}

uint64_t HgcContrastRGB::SetParameter(HgcContrastRGB *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v16 = *(this + 51);
      if (*v16 != a3.n128_f32[0] || *(v16 + 4) != a4 || *(v16 + 8) != a5 || *(v16 + 12) != a6)
      {
        *v16 = a3.n128_u32[0];
        *(v16 + 4) = a4;
        *(v16 + 8) = a5;
        *(v16 + 12) = a6;
        goto LABEL_32;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v10 = *(this + 51);
      if (*(v10 + 16) != a3.n128_f32[0] || *(v10 + 20) != a3.n128_f32[0] || *(v10 + 24) != a3.n128_f32[0] || *(v10 + 28) != 0.0)
      {
        v11 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
        v11.i32[2] = a3.n128_u32[0];
        a3.n128_f32[1] = a4;
        *(v10 + 16) = v11;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        *(v10 + 192) = a3;
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
        v12 = *(this + 51);
        if (*(v12 + 32) != a3.n128_f32[0] || *(v12 + 36) != a3.n128_f32[0] || *(v12 + 40) != a3.n128_f32[0] || *(v12 + 44) != a3.n128_f32[0])
        {
          v13 = vdupq_lane_s32(a3.n128_u64[0], 0);
          a3.n128_f32[1] = a4;
          *(v12 + 32) = v13;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v12 + 208) = a3;
          goto LABEL_32;
        }

        return 0;
      case 3:
        v14 = *(this + 51);
        if (*(v14 + 48) != a3.n128_f32[0] || *(v14 + 52) != a3.n128_f32[0] || *(v14 + 56) != a3.n128_f32[0] || *(v14 + 60) != 0.0)
        {
          v15 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
          v15.i32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          *(v14 + 48) = v15;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v14 + 224) = a3;
          goto LABEL_32;
        }

        return 0;
      case 4:
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a3.n128_f32[0] || *(v8 + 72) != a3.n128_f32[0] || *(v8 + 76) != 0.0)
        {
          v9 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
          v9.i32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          *(v8 + 64) = v9;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v8 + 240) = a3;
LABEL_32:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

float HgcContrastRGB::GetParameter(HgcContrastRGB *this, int a2, float *a3)
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
      *a3 = v5[48];
      a3[1] = v5[49];
      a3[2] = v5[50];
      v4 = v5 + 51;
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
        *a3 = v6[52];
        a3[1] = v6[53];
        a3[2] = v6[54];
        v4 = v6 + 55;
        break;
      case 3:
        v7 = *(this + 51);
        *a3 = v7[56];
        a3[1] = v7[57];
        a3[2] = v7[58];
        v4 = v7 + 59;
        break;
      case 4:
        v3 = *(this + 51);
        *a3 = v3[60];
        a3[1] = v3[61];
        a3[2] = v3[62];
        v4 = v3 + 63;
        break;
      default:
        return result;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

uint64_t LiHelium::createTextureHandleNode@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unsigned int *a4@<X3>, void *a5@<X8>)
{
  result = FxSupport::createTextureHandleNode(a1, a2, a3, a4, &v7);
  *a5 = v7;
  return result;
}

HGBitmapLoader *LiHelium::createBitmapNode@<X0>(PCBitmap **a1@<X0>, unsigned int *a2@<X1>, void *a3@<X8>)
{
  result = FxSupport::createBitmapNode(a1, a2, &v5);
  *a3 = v5;
  return result;
}

uint64_t LiHelium::createTransformNode@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, int a3@<W2>, float *a4@<X4>, void *a5@<X8>)
{
  if (PCMatrix44Tmpl<double>::is2Didentity(a1))
  {
    result = *a2;
    *a5 = *a2;
    if (result)
    {
      v11 = *(*result + 16);

      return v11();
    }
  }

  else
  {
    v12 = HGObject::operator new(0x90uLL);
    HGTransform::HGTransform(v12);
    v13 = *(a1 + 80);
    v31 = *(a1 + 64);
    v32 = v13;
    v14 = *(a1 + 112);
    v33 = *(a1 + 96);
    v34 = v14;
    v15 = *(a1 + 16);
    v26 = *a1;
    v27 = v15;
    v16 = *(a1 + 48);
    v28 = *(a1 + 32);
    v17 = v26.f64[1];
    v18 = v27;
    v19 = *(&v31 + 1);
    *&v26.f64[1] = v28;
    *&v27 = v31;
    v20 = *(&v32 + 1);
    *(&v27 + 1) = v33;
    *&v28 = v17;
    *&v31 = v18;
    *(&v31 + 1) = v16;
    v29 = v19;
    v30 = *(&v33 + 1);
    *(&v32 + 1) = v34;
    *&v33 = *(&v18 + 1);
    *(&v33 + 1) = *(&v16 + 1);
    *&v34 = v20;
    (*(*v12 + 72))(v12, &v26);
    v21 = HGObject::operator new(0x210uLL);
    HGXForm::HGXForm(v21);
    (*(*v21 + 576))(v21, v12);
    if (a3 && (fabs(*(a1 + 96)) >= 0.0000001 || fabs(*(a1 + 104)) >= 0.0000001 || (v24 = 0.0, v25 = 0.0, PCMatrix44Tmpl<double>::singularValues22(a1, &v25, &v24), v22 = *(a1 + 120), v25 / v22 <= 1.0) && fabs(v25 / v22 + -1.0) >= 0.0000001 || (v23 = v24 / v22, v23 <= 1.0) && fabs(v23 + -1.0) >= 0.0000001))
    {
      (*(*v21 + 592))(v21, 0, 1.0);
      (*(*v21 + 632))(v21, 0.0);
      (*(*v21 + 600))(v21, *a4, a4[1]);
    }

    else
    {
      (*(*v21 + 592))(v21, 0, 0.0);
    }

    if (*a2)
    {
      (*(*v21 + 120))(v21, 0);
    }

    *a5 = v21;
    return (*(*v12 + 24))(v12);
  }

  return result;
}

double PCMatrix44Tmpl<double>::singularValues22(float64x2_t *a1, double *a2, double *a3)
{
  v25 = 0x3FF0000000000000;
  v22 = 0x3FF0000000000000;
  v17 = 0;
  v18 = 0;
  v5 = *a1;
  v6 = a1[2];
  v7 = vaddq_f64(vmulq_f64(v5, v5), vmulq_f64(v6, v6));
  v20 = 0u;
  v21 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = vmulq_laneq_f64(v6, v6, 1);
  v9 = vaddq_f64(vmulq_laneq_f64(v5, v5, 1), v8);
  v16 = vzip1q_s64(v7, v9);
  v19 = v9;
  v14 = 0.0;
  v15 = 0.0;
  v10 = PCMatrix44Tmpl<double>::eigen22(&v16, &v15, &v14, *v9.i64, *v16.i64, v8.f64[0], 0);
  *a2 = sqrt(v15);
  result = sqrt(v14);
  *a3 = result;
  if (v10 <= 1)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v13, "singularValues22: failed to find real eigenvalues");
    PCException::PCException(exception, &v13);
  }

  return result;
}

uint64_t LiHelium::bitmapToTexture@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*a1)
  {
    result = (*(*a2 + 104))(a2, *a1);
  }

  else
  {
    result = 0;
  }

  *a3 = result;
  return result;
}

uint64_t LiHelium::convertMotionBlendMode(int a1)
{
  if ((a1 - 2) > 0x2E)
  {
    return 9;
  }

  else
  {
    return *&asc_26084AF38[4 * (a1 - 2)];
  }
}

uint64_t LiHelium::createBlurNode@<X0>(float a1@<S0>, float a2@<S1>, HGBlur **a3@<X8>)
{
  v7 = HGObject::operator new(0x220uLL);
  HGBlur::HGBlur(v7);
  *a3 = v7;
  return (*(*v7 + 96))(v7, 0, a1, a2, 0.0, 0.0);
}

uint64_t LiHelium::setUpGLRenderer(HGGPURenderer *a1, uint64_t a2)
{
  v2 = a2;
  (*(*a1 + 120))(a1, 19, a2);
  MetalContext = HGGPURenderer::GetMetalContext(a1);
  result = PCICCTransferFunctionLUT::getLUTEnd(MetalContext);
  if (vcvts_n_f32_u64(*(result + 40), 0x14uLL) <= 300.0)
  {
    if (v2 >= 0x1C)
    {
      v6 = 400;
    }

    else
    {
      v6 = 512;
    }

    if (v2 >= 25)
    {
      v7 = v6;
    }

    else
    {
      v7 = 800;
    }

    v8 = *(*a1 + 120);

    return v8(a1, 18, v7);
  }

  return result;
}

void LiHelium::createExternallyOwnedTexture(uint64_t a1, EAGLContext *a2, int a3, ProGL *this)
{
  ProGL::findContext(this, a2, &v5);
  HGFormatUtils::toGLInternalFormat(*(*a1 + 16));
  ProGL::createExternallyOwnedTexture();
}

void LiRenderQueueTextureOwner::create(uint64_t a1@<X1>, void *a2@<X8>)
{
  if (a1)
  {
    std::allocate_shared[abi:ne200100]<LiRenderQueueTextureOwner,std::allocator<LiRenderQueueTextureOwner>,HGRef<HGGLTexture> const&,HGRenderQueue *&,0>();
  }

  *a2 = 0;
  a2[1] = 0;
}

void LiRenderQueueTextureOwner::~LiRenderQueueTextureOwner(LiRenderQueueTextureOwner *this)
{
  *this = &unk_28725D548;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 16))(v2);
    v3 = *(this + 1);
    if (v3)
    {
      (*(*v3 + 24))(*(this + 1));
    }
  }

  else
  {
    v3 = 0;
  }

  *(this + 1) = 0;
  HGRenderQueue::DeleteHGGLTexture(*(this + 2), v3);
  v4 = *(this + 1);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }
}

{
  LiRenderQueueTextureOwner::~LiRenderQueueTextureOwner(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t *LiHelium::getDefaultGPU@<X0>(LiHelium *this@<X0>, void *a2@<X8>)
{
  result = HGComputeDeviceManager::GetGPUComputeDeviceList(this);
  v4 = *(*result + 8);
  *a2 = **result;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void *std::__shared_ptr_emplace<LiRenderQueueTextureOwner>::__shared_ptr_emplace[abi:ne200100]<HGRef<HGGLTexture> const&,HGRenderQueue *&,std::allocator<LiRenderQueueTextureOwner>,0>(void *a1, uint64_t *a2, uint64_t *a3)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_28725D590;
  v4 = *a3;
  v5 = *a2;
  a1[3] = &unk_28725D548;
  a1[4] = v5;
  if (v5)
  {
    (*(*v5 + 16))(v5);
  }

  a1[5] = v4;
  return a1;
}

void std::__shared_ptr_emplace<LiRenderQueueTextureOwner>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28725D590;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x2666E9F00);
}

void LiRenderingTechnology::LiRenderingTechnology(LiRenderingTechnology *this)
{
  *this = 8208;
  *(this + 2) = 0;
  *(this + 4) = 256;
  *(this + 20) = 1;
  *(this + 3) = 0x1400000014;
  *(this + 16) = 1;
  *(this + 34) = 0;
  *(this + 36) = 0x600000002;
  *(this + 22) = 1;
  if ((atomic_load_explicit(&qword_280C5E818, memory_order_acquire) & 1) == 0)
  {
    LiRenderingTechnology::LiRenderingTechnology();
  }

  if (!_MergedGlobals_32)
  {
    goto LABEL_10;
  }

  v2 = atoi(_MergedGlobals_32);
  if (v2 == 8)
  {
    v3 = 0;
    goto LABEL_11;
  }

  if (v2 == 16)
  {
LABEL_10:
    v3 = 2;
    goto LABEL_11;
  }

  if (v2 != 32)
  {
    printf("MOTION_BITDEPTH - invalid bitdepth, must either be 8, 16, or 32");
    goto LABEL_10;
  }

  v3 = 3;
LABEL_11:
  *(this + 3) = v3;
}

int *LiRenderingTechnology::setFlagAtIndex(int *this, char a2, int a3)
{
  v3 = *this & ~(1 << a2);
  if (a3)
  {
    v3 = *this | (1 << a2);
  }

  *this = v3;
  return this;
}

void LiRenderingTechnology::LiRenderingTechnology()
{
  if (__cxa_guard_acquire(&qword_280C5E818))
  {
    _MergedGlobals_32 = getenv("MOTION_BITDEPTH");

    __cxa_guard_release(&qword_280C5E818);
  }
}

void LiAgent::LiAgent(LiAgent *this, const LiAgent *a2)
{
  *this = *a2;
  *(this + 1) = *(a2 + 1);
  *(this + 4) = *(a2 + 4);
  *(this + 10) = *(a2 + 10);
  *(this + 44) = *(a2 + 44);
  *(this + 6) = *(a2 + 6);
  *(this + 56) = *(a2 + 56);
  *(this + 60) = *(a2 + 60);
  *(this + 76) = *(a2 + 76);
  *(this + 5) = *(a2 + 5);
  LiClipSet::LiClipSet((this + 96), (a2 + 96));
  *(this + 9) = *(a2 + 9);
  *(this + 10) = *(a2 + 10);
  *(this + 11) = *(a2 + 11);
  *(this + 12) = *(a2 + 12);
  *(this + 13) = *(a2 + 13);
  v4 = *(a2 + 28);
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 28) = v4;
  *(this + 248) = *(a2 + 248);
  *(this + 32) = 0;
  LiImagePolygon::LiImagePolygon((this + 264));
  *(this + 376) = 0;
  *(this + 380) = 0x3F8000003F800000;
  v5 = *(a2 + 50);
  *(this + 49) = 0;
  *(this + 50) = v5;
  if (v5)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v5);
  }

  v6 = *(a2 + 51);
  *(this + 104) = *(a2 + 104);
  *(this + 51) = v6;
  *(this + 424) = *(a2 + 424);
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  PCColorDescription::PCColorDescription(this + 18);
  *(this + 456) = 1;
}

void sub_25FF401A8(_Unwind_Exception *a1)
{
  LiImagePolygon::~LiImagePolygon((v1 + 33));
  v3 = v1[32];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  LiClipSet::~LiClipSet((v1 + 12));
  _Unwind_Resume(a1);
}

void LiAgent::LiAgent(LiAgent *this, const LiRenderParameters *a2, int a3)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 8) = a3;
  *(this + 36) = 6;
  *(this + 44) = 0;
  *(this + 6) = a2;
  *(this + 56) = 0;
  *(this + 60) = xmmword_260343AA0;
  *(this + 76) = 0;
  *(this + 5) = xmmword_260343AA0;
  LiClipSet::LiClipSet((this + 96));
  *(this + 30) = 0;
  *(this + 248) = 0;
  *(this + 32) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  LiImagePolygon::LiImagePolygon((this + 264));
  *(this + 376) = 0;
  *(this + 380) = 0x3F8000003F800000;
  v5 = *(a2 + 20);
  *(this + 49) = 0;
  *(this + 50) = v5;
  if (v5)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v5);
  }

  v6 = *(a2 + 21);
  *(this + 104) = *(a2 + 44);
  *(this + 51) = v6;
  *(this + 424) = *(a2 + 184);
  PCColorDescription::PCColorDescription(this + 18);
  *(this + 456) = 1;
  getIdentity();
  *(this + 20) = &qword_280C5E828;
  getIdentity();
  *(this + 21) = &qword_280C5E828;
  getIdentity();
  *(this + 22) = &qword_280C5E828;
  getIdentity();
  *(this + 23) = &qword_280C5E828;
  getIdentity();
  *(this + 24) = &qword_280C5E828;
  getIdentity();
  *(this + 27) = &qword_280C5E828;
  getIdentity();
  *(this + 25) = &qword_280C5E828;
  getIdentity();
  *(this + 26) = &qword_280C5E828;
  getIdentity();
  *(this + 28) = &qword_280C5E828;
  *(this + 29) = 0;
}

void sub_25FF4032C(_Unwind_Exception *a1)
{
  LiImagePolygon::~LiImagePolygon((v1 + 33));
  v3 = v1[32];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  LiClipSet::~LiClipSet((v1 + 12));
  _Unwind_Resume(a1);
}

void getIdentity(void)
{
  if ((atomic_load_explicit(&_MergedGlobals_33, memory_order_acquire) & 1) == 0)
  {
    getIdentity();
  }
}

uint64_t LiAgent::LiAgent(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = a4;
  *(a1 + 36) = 6;
  *(a1 + 44) = 0;
  *(a1 + 48) = a2;
  *(a1 + 56) = 0;
  *(a1 + 60) = xmmword_260343AA0;
  *(a1 + 76) = 0;
  *(a1 + 80) = xmmword_260343AA0;
  LiClipSet::LiClipSet((a1 + 96));
  *(a1 + 256) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  LiImagePolygon::LiImagePolygon((a1 + 264));
  *(a1 + 376) = 0;
  *(a1 + 380) = 0x3F8000003F800000;
  v7 = *(a2 + 160);
  *(a1 + 392) = 0;
  *(a1 + 400) = v7;
  if (v7)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v7);
  }

  v8 = *(a2 + 168);
  *(a1 + 416) = *(a2 + 176);
  *(a1 + 408) = v8;
  *(a1 + 424) = *(a2 + 184);
  PCColorDescription::PCColorDescription((a1 + 432));
  *(a1 + 456) = 1;
  *(a1 + 160) = a3;
  getIdentity();
  *(a1 + 168) = &qword_280C5E828;
  getIdentity();
  *(a1 + 176) = &qword_280C5E828;
  getIdentity();
  *(a1 + 184) = &qword_280C5E828;
  getIdentity();
  *(a1 + 192) = &qword_280C5E828;
  getIdentity();
  *(a1 + 216) = &qword_280C5E828;
  getIdentity();
  *(a1 + 200) = &qword_280C5E828;
  getIdentity();
  *(a1 + 208) = &qword_280C5E828;
  getIdentity();
  *(a1 + 224) = &qword_280C5E828;
  return a1;
}

void sub_25FF404E4(_Unwind_Exception *a1)
{
  LiImagePolygon::~LiImagePolygon((v1 + 33));
  v3 = v1[32];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  LiClipSet::~LiClipSet((v1 + 12));
  _Unwind_Resume(a1);
}

void LiAgent::LiAgent(LiAgent *this, LiImageSource *a2, const LiRenderParameters *a3)
{
  *this = 0;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 9) = (*(*a2 + 56))(a2, a3);
  *(this + 10) = (*(*a2 + 80))(a2);
  *(this + 44) = 0;
  *(this + 6) = a3;
  *(this + 56) = 0;
  *(this + 60) = xmmword_260343AA0;
  *(this + 76) = 0;
  *(this + 5) = xmmword_260343AA0;
  LiClipSet::LiClipSet((this + 96));
  *(this + 32) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = 0;
  LiImagePolygon::LiImagePolygon((this + 264));
  *(this + 376) = 0;
  *(this + 380) = 0x3F8000003F800000;
  v6 = *(a3 + 20);
  *(this + 49) = 0;
  *(this + 50) = v6;
  if (v6)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v6);
  }

  v7 = *(a3 + 21);
  *(this + 104) = *(a3 + 44);
  *(this + 51) = v7;
  *(this + 424) = *(a3 + 184);
  PCColorDescription::PCColorDescription(this + 18);
  *(this + 456) = 1;
  getIdentity();
  *(this + 20) = &qword_280C5E828;
  getIdentity();
  *(this + 21) = &qword_280C5E828;
  getIdentity();
  *(this + 22) = &qword_280C5E828;
  getIdentity();
  *(this + 23) = &qword_280C5E828;
  getIdentity();
  *(this + 24) = &qword_280C5E828;
  getIdentity();
  *(this + 27) = &qword_280C5E828;
  getIdentity();
  *(this + 25) = &qword_280C5E828;
  getIdentity();
  *(this + 26) = &qword_280C5E828;
  getIdentity();
  *(this + 28) = &qword_280C5E828;
}

void sub_25FF406C0(_Unwind_Exception *a1)
{
  LiImagePolygon::~LiImagePolygon((v1 + 33));
  v3 = v1[32];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  LiClipSet::~LiClipSet((v1 + 12));
  _Unwind_Resume(a1);
}

void LiAgent::LiAgent(LiAgent *this, LiImageSource *a2, LiAgent *a3)
{
  *this = a3;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 9) = (*(*a2 + 56))(a2, *(a3 + 6));
  *(this + 10) = (*(*a2 + 80))(a2);
  *(this + 6) = *(a3 + 6);
  *(this + 56) = 0;
  *(this + 60) = xmmword_260343AA0;
  *(this + 76) = 0;
  *(this + 5) = *(a3 + 5);
  LiClipSet::LiClipSet((this + 96), (a3 + 96));
  *(this + 9) = *(a3 + 9);
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 248) = *(a3 + 248);
  *(this + 32) = 0;
  LiImagePolygon::LiImagePolygon((this + 264));
  *(this + 376) = 0;
  *(this + 380) = 0x3F8000003F800000;
  v6 = *(a3 + 50);
  *(this + 49) = 0;
  *(this + 50) = v6;
  if (v6)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v6);
  }

  v7 = *(a3 + 51);
  *(this + 104) = *(a3 + 104);
  *(this + 51) = v7;
  *(this + 424) = *(a3 + 424);
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  PCColorDescription::PCColorDescription(this + 18);
  *(this + 456) = 1;
  *(this + 10) = *(a3 + 10);
  *(this + 11) = *(a3 + 11);
  *(this + 27) = *(a3 + 27);
  *(this + 12) = *(a3 + 12);
  *(this + 26) = *(a3 + 26);
  *(this + 28) = *(a3 + 28);
  if ((*(*a2 + 96))(a2))
  {
    v8 = *(a3 + 44);
  }

  else
  {
    v8 = 0;
  }

  *(this + 44) = v8 & 1;
}

void sub_25FF408D4(_Unwind_Exception *a1)
{
  LiImagePolygon::~LiImagePolygon((v1 + 33));
  v3 = v1[32];
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  LiClipSet::~LiClipSet((v1 + 12));
  _Unwind_Resume(a1);
}

void LiAgent::~LiAgent(LiAgent *this)
{
  v2 = *(this + 29);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  *(this + 29) = 0;
  v3 = *(this + 49);
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  *(this + 49) = 0;
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 54);
  PCCFRef<CGColorSpace *>::~PCCFRef(this + 50);
  LiImagePolygon::~LiImagePolygon((this + 264));
  v4 = *(this + 32);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  LiClipSet::~LiClipSet((this + 96));
}

uint64_t LiAgent::loadTransform(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = *(result + 232);
  if (!v3)
  {
    operator new();
  }

  if (v3 != a2)
  {
    for (i = 0; i != 4; ++i)
    {
      for (j = 0; j != 32; j += 8)
      {
        *(v3 + j) = *(v2 + j);
      }

      v3 += 32;
      v2 += 32;
    }
  }

  return result;
}

uint64_t LiAgent::clearTransform(LiAgent *this)
{
  result = *(this + 29);
  if (result)
  {
    result = MEMORY[0x2666E9F00](result, 0x1000C40AE2C30F4);
  }

  *(this + 29) = 0;
  return result;
}

void LiAgent::setImageSpace(uint64_t a1, int a2)
{
  if ((a2 & 0xFFFFFFFE) == 2)
  {
    if (!PCMatrix44Tmpl<double>::is2Didentity(*(a1 + 168)) || a2 != 2 && !PCMatrix44Tmpl<double>::is2Didentity(*(a1 + 224)))
    {
      operator new();
    }
  }

  else if (a2)
  {
    if (a2 == 1 && !PCMatrix44Tmpl<double>::isIdentity(*(a1 + 176)))
    {
      operator new();
    }
  }

  else
  {
    getIdentity();
    *(a1 + 160) = &qword_280C5E828;
    getIdentity();
    *(a1 + 168) = &qword_280C5E828;
    getIdentity();
    *(a1 + 176) = &qword_280C5E828;
    getIdentity();
    *(a1 + 184) = &qword_280C5E828;
    getIdentity();
    *(a1 + 192) = &qword_280C5E828;
    getIdentity();
    *(a1 + 216) = &qword_280C5E828;
    getIdentity();
    *(a1 + 200) = &qword_280C5E828;
    getIdentity();
    *(a1 + 208) = &qword_280C5E828;
    getIdentity();
    *(a1 + 224) = &qword_280C5E828;
  }
}

uint64_t LiAgent::getFilmToObjectTransform@<X0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v8 = 0x3FF0000000000000;
  v5 = 0x3FF0000000000000;
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v13 = 0u;
  PCMatrix44Tmpl<double>::planarInverseZ(&v5, *(this + 22), 0.0);
  return PCMatrix44Tmpl<double>::operator*(&v5, *(this + 21), a2);
}

uint64_t LiAgent::setPixelTransform(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v4 = *(result + 160);
  while (2)
  {
    for (i = 0; i != 32; i += 8)
    {
      if (vabdd_f64(*(a2 + i), *(v4 + i)) >= 0.0000001)
      {
        if (!v3)
        {
          operator new();
        }

        return result;
      }
    }

    v3 = v2 > 2;
    v4 += 32;
    a2 += 32;
    if (++v2 != 4)
    {
      continue;
    }

    break;
  }

  return result;
}

int32x2_t LiAgent::computeROI(uint64_t a1, __int128 *a2, uint64_t a3)
{
  PCMatrix44Tmpl<double>::operator*(*(a3 + 160), a2, v26);
  v25 = 0x3FF0000000000000;
  v22 = 0x3FF0000000000000;
  v19 = 0x3FF0000000000000;
  v16 = 0x3FF0000000000000;
  v17 = 0u;
  v18 = 0u;
  v20 = 0u;
  v21 = 0u;
  v23 = 0u;
  v24 = 0u;
  LiAgent::getInversePixelTransform(a1, &v16, 0.0);
  PCMatrix44Tmpl<double>::operator*(v26, &v16, v27);
  v5 = *(a1 + 60);
  v6.i64[0] = v5;
  v6.i64[1] = SHIDWORD(v5);
  v7 = vcvtq_f64_s64(v6);
  v8 = *(a1 + 68);
  v6.i64[0] = v8;
  v6.i64[1] = SHIDWORD(v8);
  *v26 = v7;
  *&v26[16] = vcvtq_f64_s64(v6);
  v9 = PCMatrix44Tmpl<double>::transformRect<double>(v27, v26, v26);
  *(a3 + 76) = v9;
  if (v9)
  {
    v11.f64[0] = *v26;
    v12 = vaddq_f64(*&v26[8], xmmword_26084B020);
    v13 = vextq_s8(v12, v12, 8uLL);
    v11.f64[1] = *&v26[24];
    v14 = vaddq_f64(v11, xmmword_26084B020);
    v15 = vaddq_f64(v13, v14);
    v13.f64[0] = v14.f64[0];
    result = vmovn_s64(vcvtq_s64_f64(vrndmq_f64(vaddq_f64(v13, vdupq_n_s64(0x3E7AD7F29ABCAF48uLL)))));
    *(a3 + 80) = result;
    *(a3 + 88) = vsub_s32(vmovn_s64(vcvtq_s64_f64(vrndpq_f64(v15))), result);
  }

  return result;
}

void sub_25FF412E4(_Unwind_Exception *a1, int a2)
{
  if (a2 == 1)
  {
    __cxa_begin_catch(a1);
    __cxa_end_catch();
    JUMPOUT(0x25FF412D0);
  }

  _Unwind_Resume(a1);
}

BOOL LiAgent::getInversePixelTransform@<W0>(LiAgent *this@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  return LiAgent::getInversePixelTransform(this, a3, a2);
}

uint64_t LiAgent::getHelium@<X0>(LiAgent *this@<X0>, LiImageSource *a2@<X1>, void *a3@<X8>)
{
  v6 = *(this + 32);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  *(this + 32) = 0;
  *(this + 42) = *(this + 41);
  memset(v11, 0, sizeof(v11));
  PCColorDescription::PCColorDescription(v11);
  v7 = 1;
  v11[24] = 1;
  v8 = *(this + 54);
  v9 = *v11;
  if (v8 && v8 != *v11)
  {
    PCCFRefTraits<CGColorSpace *>::release(v8);
    v9 = *v11;
    v7 = v11[24];
  }

  *(this + 54) = v9;
  *v11 = 0;
  *(this + 110) = *&v11[8];
  *(this + 444) = *&v11[12];
  *(this + 456) = v7;
  PCCFRef<CGColorSpace *>::~PCCFRef(v11);
  if (a2)
  {
    *(this + 2) = a2;
    operator new();
  }

  result = *(this + 32);
  *a3 = result;
  if (result)
  {
    return (*(*result + 16))(result);
  }

  return result;
}

void sub_25FF428F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{
  LiClipSet::~LiClipSet(&a25);
  LiImagePolygon::~LiImagePolygon(&a33);
  (*(*v35 + 24))(v35);
  MEMORY[0x2666E9F00](v34, 0x1000C4061254B48);
  *(v33 + 44) = 0;
  std::unique_ptr<LiAgent>::~unique_ptr[abi:ne200100]((v36 - 96));
  _Unwind_Resume(a1);
}

double LiAgent::getObjectToFilmTransform(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  if (v2 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v4 + i) = *(v2 + i);
      }

      ++v3;
      v4 += 32;
      v2 += 32;
    }

    while (v3 != 4);
  }

  return PCMatrix44Tmpl<double>::rightMult(a2, *(a1 + 192));
}

double LiAgent::getFilmToWorldTransform(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 184);
  if (v2 != a2)
  {
    v3 = 0;
    v4 = a2;
    do
    {
      for (i = 0; i != 32; i += 8)
      {
        *(v4 + i) = *(v2 + i);
      }

      ++v3;
      v4 += 32;
      v2 += 32;
    }

    while (v3 != 4);
  }

  return PCMatrix44Tmpl<double>::rightMult(a2, *(a1 + 168));
}

BOOL LiAgent::getImageToFilmTransform(uint64_t a1, uint64_t a2)
{
  result = PCMatrix44Tmpl<double>::planarInverseZ(a2, *(a1 + 168), 0.0);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v4, "getImageToFilmTransform: failed to invert");
    PCException::PCException(exception, &v4);
    *exception = &unk_2872088F0;
  }

  return result;
}

BOOL PCMath::equivalent2D(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = 0;
  v30 = *MEMORY[0x277D85DE8];
LABEL_2:
  v4 = 0;
  v5 = dword_26084B088[v2];
  v6 = a1 + 32 * v5;
  v7 = a2 + 32 * v5;
  while (vabdd_f64(*(v6 + 8 * dword_26084B088[v4]), *(v7 + 8 * dword_26084B088[v4])) < 0.0000001)
  {
    if (++v4 == 3)
    {
      v3 = v2++ > 1;
      if (v2 != 3)
      {
        goto LABEL_2;
      }

      return 1;
    }
  }

  if (v3)
  {
    return 1;
  }

  v9 = 0;
  LODWORD(v10) = 0;
  do
  {
    v11 = 0;
    v12 = dword_26084B088[v9];
    v10 = v10;
    v13 = a1 + 32 * v12;
    v14 = a2 + 32 * v12;
    do
    {
      v15 = dword_26084B088[v11];
      *&v29[8 * v10 + 72] = *(v13 + 8 * v15);
      *&v29[8 * v10++] = *(v14 + 8 * v15);
      ++v11;
    }

    while (v11 != 3);
    ++v9;
  }

  while (v9 != 3);
  v16 = 0;
  v17 = 0.0;
  do
  {
    v17 = v17 + *&v29[v16 + 72] * *&v29[v16 + 72];
    v16 += 8;
  }

  while (v16 != 72);
  v18 = 0;
  v19 = 0.0;
  do
  {
    v19 = v19 + *&v29[v18] * *&v29[v18];
    v18 += 8;
  }

  while (v18 != 72);
  v20 = sqrt(v17);
  v21 = sqrt(v19);
  v22 = fabs(v20);
  v23 = fabs(v21);
  result = v23 < 0.0000001 && v22 < 0.0000001;
  if (v22 >= 0.0000001 && v23 >= 0.0000001)
  {
    v24 = 0;
    v25 = 0.0;
    do
    {
      v25 = v25 + *&v29[v24 + 72] * *&v29[v24];
      v24 += 8;
    }

    while (v24 != 72);
    v26 = 0;
    if (v25 < 0.0)
    {
      v21 = -v21;
    }

    do
    {
      v27 = vabdd_f64(*&v29[v26 + 72] / v20, *&v29[v26] / v21);
      result = v27 < 0.0000001;
      if (v27 >= 0.0000001)
      {
        break;
      }

      v28 = v26 == 64;
      v26 += 8;
    }

    while (!v28);
  }

  return result;
}

BOOL LiAgent::getInversePixelTransform(uint64_t a1, uint64_t a2, double a3)
{
  result = PCMatrix44Tmpl<double>::planarInverseZ(a2, *(a1 + 160), a3);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v5, "LiAgent::getInversePixelTransform");
    PCException::PCException(exception, &v5);
    *exception = &unk_2872088F0;
  }

  return result;
}

uint64_t LiAgent::getActualColorDescription(LiAgent *this)
{
  if (!FxColorDescription::getCGColorSpace((this + 432)))
  {
    v2 = *(this + 6);
    PCCFRef<CGColorSpace *>::operator=(this + 54, (v2 + 160));
    v3 = *(v2 + 168);
    *(this + 112) = *(v2 + 176);
    *(this + 55) = v3;
    *(this + 456) = *(v2 + 184);
  }

  return this + 432;
}

CGColorSpace **LiAgent::setActualColorDescription(CGColorSpace **this, const FxColorDescription *a2)
{
  result = PCCFRef<CGColorSpace *>::operator=(this + 54, &a2->_pcColorDesc._colorSpaceRef._obj);
  v5 = *&a2->_pcColorDesc._dynamicRange;
  *(this + 112) = LODWORD(a2->_pcColorDesc._toneMapMethod._gain);
  this[55] = v5;
  *(this + 456) = a2->_isPremultiplied;
  return result;
}

uint64_t LiAgent::makeHeliumXForm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, void *a4@<X8>)
{
  v4 = *(a2 + 80);
  v16[4] = *(a2 + 64);
  v16[5] = v4;
  v5 = *(a2 + 112);
  v17 = *(a2 + 96);
  v18 = v5;
  v6 = *(a2 + 16);
  v16[0] = *a2;
  v16[1] = v6;
  v7 = *(a2 + 48);
  v16[2] = *(a2 + 32);
  v16[3] = v7;
  v8 = vmulq_f64(v17, v17);
  v9 = vmulq_f64(*(a2 + 112), *(a2 + 112));
  v10 = sqrt(vaddq_f64(vaddq_f64(vaddq_f64(v8, vdupq_laneq_s64(v8, 1)), v9), vdupq_laneq_s64(v9, 1)).f64[0]);
  if (fabs(v10) >= 0.0000001)
  {
    v11 = 0;
    v12 = v16;
    v13 = 1.0 / v10;
    do
    {
      for (i = 0; i != 2; ++i)
      {
        v12[i] = vmulq_n_f64(v12[i], v13);
      }

      ++v11;
      v12 += 2;
    }

    while (v11 != 4);
  }

  return LiAgent::makeHeliumXForm(a1, v16, a3, a4);
}

CGColorSpace **LiAgent::conformToRequestedColorSpace@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  ActualColorDescription = LiAgent::getActualColorDescription(a1);
  v7 = *ActualColorDescription;
  v13._pcColorDesc._colorSpaceRef._obj = v7;
  if (v7)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v7);
  }

  v8 = *(ActualColorDescription + 8);
  v13._pcColorDesc._toneMapMethod._gain = *(ActualColorDescription + 16);
  *&v13._pcColorDesc._dynamicRange = v8;
  v13._isPremultiplied = *(ActualColorDescription + 24);
  v9 = *(a1 + 400);
  v12._pcColorDesc._colorSpaceRef._obj = v9;
  if (v9)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v9);
  }

  *&v12._pcColorDesc._dynamicRange = *(a1 + 408);
  v12._pcColorDesc._toneMapMethod._gain = *(a1 + 416);
  v12._isPremultiplied = *(a1 + 424);
  if (FxColorDescription::getCGColorSpace(&v12) && FxColorDescription::getCGColorSpace(&v13))
  {
    FxApplyColorConform(a2, &v13, &v12, a3);
    PCCFRef<CGColorSpace *>::operator=((a1 + 432), &v12._pcColorDesc._colorSpaceRef._obj);
    *(a1 + 440) = *&v12._pcColorDesc._dynamicRange;
    *(a1 + 448) = v12._pcColorDesc._toneMapMethod._gain;
    *(a1 + 456) = v12._isPremultiplied;
  }

  else
  {
    v10 = *a2;
    *a3 = *a2;
    if (v10)
    {
      (*(*v10 + 16))(v10);
    }
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&v12._pcColorDesc._colorSpaceRef._obj);
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v13._pcColorDesc._colorSpaceRef._obj);
}

void sub_25FF43324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, CGColorSpace *a9, uint64_t a10, uint64_t a11, uint64_t a12, CGColorSpace *a13)
{
  if (*v13)
  {
    (*(**v13 + 24))(*v13);
  }

  PCCFRef<CGColorSpace *>::~PCCFRef(&a9);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a13);
  _Unwind_Resume(a1);
}

LiAgent **std::unique_ptr<LiAgent>::~unique_ptr[abi:ne200100](LiAgent **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    LiAgent::~LiAgent(v2);
    MEMORY[0x2666E9F00]();
  }

  return a1;
}

void LiAgent::getHeliumInColorSpace(LiAgent *this@<X0>, LiImageSource *a2@<X1>, CGColorSpace *a3@<X2>, void *a4@<X8>)
{
  LiAgentRequestedColorSpaceSentry::LiAgentRequestedColorSpaceSentry(v7, this, a3);
  LiAgent::getHelium(this, a2, a4);
  LiAgentRequestedColorSpaceSentry::~LiAgentRequestedColorSpaceSentry(v7);
}

void sub_25FF43424(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LiAgentRequestedColorSpaceSentry::~LiAgentRequestedColorSpaceSentry(va);
  _Unwind_Resume(a1);
}

void LiAgent::getHeliumInColorDescription(LiAgent *this@<X0>, LiImageSource *a2@<X1>, const FxColorDescription *a3@<X2>, void *a4@<X8>)
{
  LiAgentRequestedColorSpaceSentry::LiAgentRequestedColorSpaceSentry(v7, this, a3);
  LiAgent::getHelium(this, a2, a4);
  LiAgentRequestedColorSpaceSentry::~LiAgentRequestedColorSpaceSentry(v7);
}

void sub_25FF43498(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  LiAgentRequestedColorSpaceSentry::~LiAgentRequestedColorSpaceSentry(va);
  _Unwind_Resume(a1);
}

uint64_t LiAgent::getDOD@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_260343AA0;
  *(a2 + 16) = 0;
  if (*(this + 256))
  {
    v3 = this;
    HeliumRenderer = LiRenderParameters::getHeliumRenderer(*(this + 48));
    DOD = HGRenderer::GetDOD(HeliumRenderer, *(v3 + 256));
    v7 = v6;
    this = HGRectIsInfinite(DOD, v6);
    if (this)
    {
      *(a2 + 16) = 1;
    }

    else
    {
      this = HGRectIsNull(DOD, v7);
      if (this)
      {
        LODWORD(v8) = 0;
        v9 = 0;
        v10 = -1;
        v11 = -1;
      }

      else
      {
        v8 = HIDWORD(DOD);
        if (DOD <= -1073741823)
        {
          v9 = -1073741823;
        }

        else
        {
          v9 = DOD;
        }

        if (SHIDWORD(DOD) <= -1073741823)
        {
          LODWORD(v8) = -1073741823;
        }

        if (v7 >= 1073741822)
        {
          v12 = 1073741822;
        }

        else
        {
          v12 = v7;
        }

        v13 = HIDWORD(v7);
        if (SHIDWORD(v7) >= 1073741822)
        {
          LODWORD(v13) = 1073741822;
        }

        v10 = v12 - v9;
        v11 = v13 - v8;
      }

      *a2 = v9;
      *(a2 + 4) = v8;
      *(a2 + 8) = v10;
      *(a2 + 12) = v11;
    }
  }

  return this;
}

void LiAgent::getExtent(LiAgent *this@<X0>, LiPolygon *a2@<X8>)
{
  LiPolygon::LiPolygon(a2);
  if (((*(this + 42) - *(this + 41)) & 0x1FFFFFFFE0) != 0)
  {
    LiPolygon::operator=(a2, this + 264);
  }

  else if (*(this + 32))
  {
    LiAgent::getDOD(this, v8);
    if (v11 == 1)
    {
      LiPolygon::setAll(a2);
    }

    else if ((v9 & 0x80000000) == 0 && (v10 & 0x80000000) == 0)
    {
      v4.i64[0] = v8[0];
      v4.i64[1] = v8[1];
      v5 = vcvtq_f64_s64(v4);
      v6 = v9;
      v7 = v10;
      LiPolygon::set(a2, v5.f64);
    }
  }
}

void LiAgent::getBoundary(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 2);
  if (!v2)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v80, "can't call getBoundary before getHelium");
    PCException::PCException(exception, &v80);
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a2 + 16) = _Q0;
  LiAgent::LiAgent(&v80, v2, this);
  if (!(*(**(this + 2) + 24))(*(this + 2), this, a2))
  {
    goto LABEL_25;
  }

  v10 = v81;
  v11 = *(this + 29);
  if (v11 || v81 && v81 != *(this + 10))
  {
    v79 = 0x3FF0000000000000;
    v76 = 0x3FF0000000000000;
    v73 = 0x3FF0000000000000;
    v70.var0 = 0x3FF0000000000000;
    v71 = 0u;
    v72 = 0u;
    v74 = 0u;
    v75 = 0u;
    v77 = 0u;
    v78 = 0u;
    if (v11 && v11 != &v70)
    {
      v12 = 0;
      v13 = &v70;
      do
      {
        for (i = 0; i != 4; ++i)
        {
          v13[i] = v11[i];
        }

        ++v12;
        v13 += 4;
        v11 += 4;
      }

      while (v12 != 4);
    }

    switch(v10)
    {
      case 1:
        v35 = *(this + 22);
        v36 = v35[3];
        v38 = *v35;
        v37 = v35[1];
        v63 = v35[2];
        v64 = v36;
        v61 = v38;
        v62 = v37;
        v39 = v35[7];
        v41 = v35[4];
        v40 = v35[5];
        v67 = v35[6];
        v68 = v39;
        v65 = v41;
        v66 = v40;
        PCMatrix44Tmpl<double>::operator*(&v70, &v61, v69);
        for (j = 0; j != 8; j += 2)
        {
          v43 = (&v70 + j * 16);
          v44 = v69[j + 1];
          *v43 = v69[j];
          v43[1] = v44;
        }

        break;
      case 3:
        v25 = *(this + 21);
        v26 = v25[3];
        v28 = *v25;
        v27 = v25[1];
        v60[2] = v25[2];
        v60[3] = v26;
        v60[0] = v28;
        v60[1] = v27;
        v29 = v25[7];
        v31 = v25[4];
        v30 = v25[5];
        v60[6] = v25[6];
        v60[7] = v29;
        v60[4] = v31;
        v60[5] = v30;
        PCMatrix44Tmpl<double>::operator*(&v70, v60, &v61);
        v59 = 0x3FF0000000000000;
        v56 = 0x3FF0000000000000;
        v53 = 0x3FF0000000000000;
        v50 = 0x3FF0000000000000;
        v51 = 0u;
        v52 = 0u;
        v54 = 0u;
        v55 = 0u;
        v57 = 0u;
        v58 = 0u;
        PCMatrix44Tmpl<double>::planarInverseZ(&v50, *(this + 28), 0.0);
        PCMatrix44Tmpl<double>::operator*(&v61, &v50, v69);
        for (k = 0; k != 8; k += 2)
        {
          v33 = (&v70 + k * 16);
          v34 = v69[k + 1];
          *v33 = v69[k];
          v33[1] = v34;
        }

        break;
      case 2:
        v15 = *(this + 21);
        v16 = v15[3];
        v18 = *v15;
        v17 = v15[1];
        v63 = v15[2];
        v64 = v16;
        v61 = v18;
        v62 = v17;
        v19 = v15[7];
        v21 = v15[4];
        v20 = v15[5];
        v67 = v15[6];
        v68 = v19;
        v65 = v21;
        v66 = v20;
        PCMatrix44Tmpl<double>::operator*(&v70, &v61, v69);
        for (m = 0; m != 8; m += 2)
        {
          v23 = (&v70 + m * 16);
          v24 = v69[m + 1];
          *v23 = v69[m];
          v23[1] = v24;
        }

        break;
    }

    if (!PCMatrix44Tmpl<double>::transformRect<double>(&v70, a2, a2))
    {
LABEL_25:
      LiAgent::getDOD(this, &v61);
      if (v62 == 1)
      {
        v48 = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v70, "getBoundary failed: infinite DOD");
        PCException::PCException(v48, &v70);
      }

      v79 = 0x3FF0000000000000;
      v76 = 0x3FF0000000000000;
      v73 = 0x3FF0000000000000;
      v70.var0 = 0x3FF0000000000000;
      v71 = 0u;
      v72 = 0u;
      v74 = 0u;
      v75 = 0u;
      v77 = 0u;
      v78 = 0u;
      LiAgent::getInversePixelTransform(this, &v70, 0.0);
      v45.i64[0] = v61;
      v45.i64[1] = SDWORD1(v61);
      v46 = vcvtq_f64_s64(v45);
      v45.i64[0] = SDWORD2(v61);
      v45.i64[1] = SHIDWORD(v61);
      v69[0] = v46;
      v69[1] = vcvtq_f64_s64(v45);
      if (!PCMatrix44Tmpl<double>::transformRect<double>(&v70, v69, a2))
      {
        v49 = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v70, "getBoundary failed");
        PCException::PCException(v49, &v70);
      }
    }
  }

  LiAgent::~LiAgent(&v80);
}

__n128 LiAgent::getFilmToImageTransform@<Q0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 21);
  v3 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v3;
  v4 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v4;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  v7 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

__n128 LiAgent::getObjectToImageTransform@<Q0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 22);
  v3 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v3;
  v4 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v4;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  v7 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

__n128 LiAgent::getROI@<Q0>(__n128 *this@<X0>, __n128 *a2@<X8>)
{
  result = this[5];
  *a2 = result;
  return result;
}

__n128 LiAgent::setInputROI(uint64_t a1, __n128 *a2)
{
  result = *a2;
  *(a1 + 60) = *a2;
  *(a1 + 56) = 1;
  return result;
}

__n128 LiAgent::passROI(LiAgent *this)
{
  v1 = *this;
  if (*this)
  {
    *(this + 56) = *(v1 + 56);
    result = *(v1 + 60);
    *(this + 60) = result;
  }

  return result;
}

__n128 LiAgent::setClientROI(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[5] = *a2;
  a1[4].n128_u8[12] = 1;
  return result;
}

double LiAgent::getClientPixelTransform@<D0>(double **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  if (*this)
  {
    v3 = *(*this + 20);
    if (v3 != a2)
    {
      v4 = 0;
      v5 = a2;
      do
      {
        for (i = 0; i != 32; i += 8)
        {
          result = *(v3 + i);
          *(v5 + i) = result;
        }

        ++v4;
        v5 += 32;
        v3 += 32;
      }

      while (v4 != 4);
    }

    v7 = this[30];
    if (v7)
    {
      return PCMatrix44Tmpl<double>::rightMult(a2, v7);
    }
  }

  return result;
}

double LiAgent::getInverseClientPixelTransform@<D0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  v4 = 0uLL;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  v5 = *this;
  if (v5)
  {
    v22 = 0x3FF0000000000000;
    v19 = 0x3FF0000000000000;
    v16 = 0x3FF0000000000000;
    v13 = 1.0;
    v14 = 0uLL;
    v15 = 0uLL;
    v17 = 0uLL;
    v18 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    LiAgent::getInversePixelTransform(v5, &v13, 0.0);
    if (&v13 != a2)
    {
      for (i = 0; i != 128; i += 32)
      {
        v7 = (a2 + i);
        v4 = *(&v13 + i);
        v8 = *(&v14 + i + 8);
        *v7 = v4;
        v7[1] = v8;
      }
    }

    v9 = *(this + 30);
    if (v9)
    {
      v22 = 0x3FF0000000000000;
      v19 = 0x3FF0000000000000;
      v16 = 0x3FF0000000000000;
      v13 = 1.0;
      v14 = 0u;
      v15 = 0u;
      v17 = 0u;
      v18 = 0u;
      v20 = 0u;
      v21 = 0u;
      if (!PCMatrix44Tmpl<double>::planarInverseZ(&v13, v9, 0.0))
      {
        exception = __cxa_allocate_exception(0x40uLL);
        PCString::PCString(&v12, "getInverseClientPixelTransform: failed to invert");
        PCException::PCException(exception, &v12);
        *exception = &unk_2872088F0;
      }

      *&v4 = PCMatrix44Tmpl<double>::leftMult(a2, &v13);
    }
  }

  return *&v4;
}

BOOL LiAgent::getImageToObjectTransform@<W0>(double **this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  return PCMatrix44Tmpl<double>::planarInverseZ(a2, this[22], 0.0);
}

__n128 LiAgent::getImageToWorldTransform@<Q0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 23);
  v3 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v3;
  v4 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v4;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  v7 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t LiAgent::getImageToDocumentTransform@<X0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 28);
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v8 = 0x3FF0000000000000;
  v5 = 0x3FF0000000000000;
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v13 = 0u;
  LiAgent::getImageToFilmTransform(this, &v5);
  return PCMatrix44Tmpl<double>::operator*(v3, &v5, a2);
}

__n128 LiAgent::getObjectToWorldTransform@<Q0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 24);
  v3 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v3;
  v4 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v4;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  v7 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

__n128 LiAgent::getEyeToWorldTransform@<Q0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 25);
  v3 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v3;
  v4 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v4;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  v7 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

__n128 LiAgent::getWorldToFilmTransform@<Q0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 26);
  v3 = *(v2 + 80);
  *(a2 + 64) = *(v2 + 64);
  *(a2 + 80) = v3;
  v4 = *(v2 + 112);
  *(a2 + 96) = *(v2 + 96);
  *(a2 + 112) = v4;
  v5 = *(v2 + 16);
  *a2 = *v2;
  *(a2 + 16) = v5;
  result = *(v2 + 32);
  v7 = *(v2 + 48);
  *(a2 + 32) = result;
  *(a2 + 48) = v7;
  return result;
}

uint64_t LiAgent::getPixelToObjectTransform@<X0>(double **this@<X0>, uint64_t a2@<X8>)
{
  v24 = 0x3FF0000000000000;
  v21 = 0x3FF0000000000000;
  v18 = 0x3FF0000000000000;
  v15 = 0x3FF0000000000000;
  v16 = 0u;
  v17 = 0u;
  v19 = 0u;
  v20 = 0u;
  v22 = 0u;
  v23 = 0u;
  PCMatrix44Tmpl<double>::planarInverseZ(&v15, this[22], 0.0);
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v8 = 0x3FF0000000000000;
  v5 = 0x3FF0000000000000;
  v6 = 0u;
  v7 = 0u;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v13 = 0u;
  LiAgent::getInversePixelTransform(this, &v5, 0.0);
  return PCMatrix44Tmpl<double>::operator*(&v15, &v5, a2);
}

BOOL LiAgent::getFaceCameraTransform@<W0>(LiAgent *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 27);
  v4 = v3[3];
  v6 = *v3;
  v5 = v3[1];
  *v14 = v3[2];
  *&v14[16] = v4;
  *v13 = v6;
  *&v13[16] = v5;
  v7 = v3[7];
  v9 = v3[4];
  v8 = v3[5];
  v17 = v3[6];
  v18 = v7;
  v15 = v9;
  v16 = v8;
  PCMatrix44Tmpl<double>::orthoNormalize(v13);
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *a2 = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  result = PCMatrix44Tmpl<double>::planarInverseW(a2, v13, 0.0);
  if ((result & 1) == 0)
  {
    *&v11.f64[0] = vdupq_laneq_s64(*&v14[8], 1).u64[0];
    v11.f64[1] = *v14;
    *&v12.f64[0] = vdupq_laneq_s64(*&v13[8], 1).u64[0];
    v12.f64[1] = *v13;
    v15 = vsubq_f64(vmulq_f64(*&v13[8], v11), vmulq_f64(*&v14[8], v12));
    v16.f64[0] = *v13 * *&v14[8] - *v14 * *&v13[8];
    v16.f64[1] = 0.0;
    return PCMatrix44Tmpl<double>::planarInverseW(a2, v13, 0.0);
  }

  return result;
}

BOOL PCMatrix44Tmpl<double>::orthoNormalize(uint64_t a1)
{
  v1 = 0;
  v23 = *MEMORY[0x277D85DE8];
  v22 = 0;
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v2 = (a1 + 32);
  v3 = (a1 + 64);
  do
  {
    v4 = *v2;
    v5 = v2[4];
    v6 = (&v21[-1] + v1);
    *v6 = *(v2 - 4);
    v6[1] = v4;
    v6[2] = v5;
    v1 += 24;
    ++v2;
  }

  while (v1 != 72);
  for (i = 0; i != 3; ++i)
  {
    if (i)
    {
      v8 = &v21[-1] + 3 * i;
      v9 = *v8;
      v10 = v8[2];
      v11 = i;
      v12 = v21;
      do
      {
        v13 = *(v12 - 2);
        v14 = vaddvq_f64(vmulq_f64(v9, v13)) + v10 * *v12;
        v15 = *v12 * v14;
        v9 = vsubq_f64(v9, vmulq_n_f64(v13, v14));
        *v8 = v9;
        v10 = v10 - v15;
        v8[2] = v10;
        v12 += 3;
        --v11;
      }

      while (v11);
    }

    result = PCVector3<double>::normalize((&v21[-1] + 24 * i), 0.000000100000001);
  }

  for (j = 0; j != 72; j += 24)
  {
    v18 = *(&v21[-1] + j + 8);
    v19 = *(v21 + j);
    *(v3 - 8) = *(&v21[-1] + j);
    *(v3 - 4) = v18;
    *v3 = v19;
    v3[4] = 0;
    ++v3;
  }

  return result;
}

BOOL PCMatrix44Tmpl<double>::planarInverseW(uint64_t a1, uint64_t a2, double a3)
{
  v4 = *(a2 + 72);
  v3 = *(a2 + 80);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8.f64[0] = *(a2 + 64);
  v9 = v6 * v3 - v4 * v7;
  v10 = *(a2 + 8);
  v11 = v7 * v8.f64[0] - v3 * v5;
  v12 = *a2;
  v13 = v4 * v5 - v6 * v8.f64[0];
  v14 = vmuld_lane_f64(v13, v10, 1) + v9 * *a2 + v11 * v10.f64[0];
  v15 = fabs(v14) >= a3 && v14 != 0.0;
  if (v15)
  {
    v16 = v6 * v12 - v10.f64[0] * v5;
    v17 = v10.f64[0] * v8.f64[0] - v4 * v12;
    v18.f64[0] = *(a2 + 48);
    v18.f64[1] = *(a2 + 72);
    v19 = vmulq_f64(v18, v10);
    v18.f64[0] = *(a2 + 80);
    v18.f64[1] = *(a2 + 40);
    v20 = 1.0 / v14;
    *a1 = v9 * v20;
    *(a1 + 8) = vmulq_n_f64(vsubq_f64(vextq_s8(v19, v19, 8uLL), vmulq_f64(v18, v10)), v20);
    *(a1 + 32) = v11 * v20;
    *&v21.f64[0] = vdupq_laneq_s64(v10, 1).u64[0];
    v10.f64[0] = v3;
    v22.f64[0] = v12;
    v22.f64[1] = v5;
    v21.f64[1] = v7;
    v8.f64[1] = v12;
    *(a1 + 40) = vmulq_n_f64(vsubq_f64(vmulq_f64(v10, v22), vmulq_f64(v21, v8)), v20);
    *(a1 + 64) = v13 * v20;
    *(a1 + 72) = v17 * v20;
    *(a1 + 80) = v16 * v20;
    *(a1 + 56) = 0;
    *(a1 + 24) = 0;
    *(a1 + 88) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 120) = 0x3FF0000000000000;
  }

  return v15;
}

void LiAgent::get2DClipPlanes(LiAgent *this@<X0>, LiClipSet *a2@<X8>)
{
  LiClipSet::LiClipSet(a2, (this + 96));
  v3[0] = 0uLL;
  v3[1] = xmmword_2603426F0;
  LiClipSet::flatten(a2, v3);
}

void *LiAgent::getObjectClipPlanes(LiAgent *this)
{
  result = *(this + 18);
  if (!result)
  {
    getEmptyClipSet();
    return &getEmptyClipSet(void)::emptyClipSet;
  }

  return result;
}

void getEmptyClipSet(void)
{
  {
    LiClipSet::LiClipSet(&getEmptyClipSet(void)::emptyClipSet);
    __cxa_atexit(LiClipSet::~LiClipSet, &getEmptyClipSet(void)::emptyClipSet, &dword_25F8F0000);
  }
}

void *LiAgent::getWorldClipPlanes(LiAgent *this)
{
  result = *(this + 19);
  if (!result)
  {
    getEmptyClipSet();
    return &getEmptyClipSet(void)::emptyClipSet;
  }

  return result;
}

uint64_t LiAgent::makeHeliumXForm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X8>)
{
  v8 = *(a1 + 384);
  LODWORD(v11) = *(a1 + 380);
  *(&v11 + 1) = v8;
  v9 = *&v11 == 1.0 && v8 == 1.0;
  if (v9 && LiRenderingTechnology::getUseHalfHeightFields((*(a1 + 48) + 80)))
  {
    v11 = 0x3F3504F33F800000;
  }

  return LiHelium::createTransformNode(a2, a3, *(*(a1 + 48) + 132), &v11, a4);
}

uint64_t LiAgent::makeHeliumXForm@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = 0;
  LiAgent::makeHeliumXForm(a1, a2, &v4, a3);
  result = v4;
  if (v4)
  {
    return (*(*v4 + 24))(v4);
  }

  return result;
}

void sub_25FF4460C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL LiAgent::projectAndClipPolygon(LiAgent *this, uint64_t **a2, double a3)
{
  LiImagePolygon::clip(a2, (this + 96));
  v5 = *(this + 20);

  return transform(v5, a2);
}

uint64_t LiAgent::setFilterSize(uint64_t this, float a2, float a3)
{
  *(this + 380) = a2;
  *(this + 384) = a3;
  return this;
}

CGColorSpace **LiAgent::setRequestedColorDescription(CGColorSpace **this, const FxColorDescription *a2)
{
  result = PCCFRef<CGColorSpace *>::operator=(this + 50, &a2->_pcColorDesc._colorSpaceRef._obj);
  v5 = *&a2->_pcColorDesc._dynamicRange;
  *(this + 104) = LODWORD(a2->_pcColorDesc._toneMapMethod._gain);
  this[51] = v5;
  *(this + 424) = a2->_isPremultiplied;
  return result;
}

uint64_t LiAgent::getActualColorSpace(LiAgent *this)
{
  ActualColorDescription = LiAgent::getActualColorDescription(this);

  return FxColorDescription::getCGColorSpace(ActualColorDescription);
}

void LiAgentRequestedColorSpaceSentry::LiAgentRequestedColorSpaceSentry(LiAgentRequestedColorSpaceSentry *this, LiAgent *a2, CGColorSpace *a3)
{
  *this = a2;
  v6 = *(a2 + 50);
  *(this + 1) = v6;
  if (v6)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v6);
  }

  v7 = *(a2 + 51);
  *(this + 6) = *(a2 + 104);
  *(this + 2) = v7;
  *(this + 32) = *(a2 + 424);
  FxColorDescription::setCGColorSpace((a2 + 400), a3);
}

void LiAgentRequestedColorSpaceSentry::LiAgentRequestedColorSpaceSentry(LiAgentRequestedColorSpaceSentry *this, LiAgent *a2, const FxColorDescription *a3)
{
  *this = a2;
  v6 = *(a2 + 50);
  *(this + 1) = v6;
  if (v6)
  {
    PCCFRefTraits<CGColorSpace *>::retain(v6);
  }

  v7 = *(a2 + 51);
  *(this + 6) = *(a2 + 104);
  *(this + 2) = v7;
  *(this + 32) = *(a2 + 424);
  PCCFRef<CGColorSpace *>::operator=(a2 + 50, &a3->_pcColorDesc._colorSpaceRef._obj);
  v8 = *&a3->_pcColorDesc._dynamicRange;
  *(a2 + 104) = LODWORD(a3->_pcColorDesc._toneMapMethod._gain);
  *(a2 + 51) = v8;
  *(a2 + 424) = a3->_isPremultiplied;
}

void LiAgentRequestedColorSpaceSentry::~LiAgentRequestedColorSpaceSentry(CGColorSpace **this)
{
  v2 = this + 1;
  v3 = *this;
  PCCFRef<CGColorSpace *>::operator=(*this + 50, this + 1);
  v4 = this[2];
  *(v3 + 104) = *(this + 6);
  *(v3 + 51) = v4;
  *(v3 + 424) = *(this + 32);
  PCCFRef<CGColorSpace *>::~PCCFRef(v2);
}

void PCColorDescription::PCColorDescription(PCColorDescription *this)
{
  this->_colorSpaceRef._obj = 0;
  this->_dynamicRange = 0;
  PCToneMapMethod::PCToneMapMethod(&this->_toneMapMethod);
}

void LiAgentTransformData::~LiAgentTransformData(LiAgentTransformData *this)
{
  *this = &unk_28725D628;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

{
  *this = &unk_28725D628;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x2666E9F00);
}

void LiAgentData::~LiAgentData(LiAgentData *this)
{
  *this = &unk_28725D628;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x2666E9F00);
}

void LiAgentMatrixData::~LiAgentMatrixData(LiAgentMatrixData *this)
{
  *this = &unk_28725D628;
  v1 = *(this + 1);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x2666E9F00);
}

void LiAgent_getHelium_Matrixes::LiAgent_getHelium_Matrixes(LiAgent_getHelium_Matrixes *this)
{
  *(this + 10) = 0x3FF0000000000000;
  *(this + 5) = 0x3FF0000000000000;
  *this = 0x3FF0000000000000;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 26) = 0x3FF0000000000000;
  *(this + 21) = 0x3FF0000000000000;
  __asm { FMOV            V1.2D, #1.0 }

  *(this + 120) = _Q1;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 42) = 0x3FF0000000000000;
  *(this + 37) = 0x3FF0000000000000;
  *(this + 248) = _Q1;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 58) = 0x3FF0000000000000;
  *(this + 53) = 0x3FF0000000000000;
  *(this + 47) = 0x3FF0000000000000;
  *(this + 48) = 0x3FF0000000000000;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 79) = 0x3FF0000000000000;
  *(this + 74) = 0x3FF0000000000000;
  *(this + 69) = 0x3FF0000000000000;
  *(this + 63) = 0x3FF0000000000000;
  *(this + 64) = 0x3FF0000000000000;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 600) = 0u;
  *(this + 616) = 0u;
  *(this + 95) = 0x3FF0000000000000;
  *(this + 90) = 0x3FF0000000000000;
  *(this + 85) = 0x3FF0000000000000;
  *(this + 80) = 0x3FF0000000000000;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 111) = 0x3FF0000000000000;
  *(this + 106) = 0x3FF0000000000000;
  *(this + 101) = 0x3FF0000000000000;
  *(this + 96) = 0x3FF0000000000000;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 51) = 0u;
  *(this + 52) = 0u;
  *(this + 856) = 0u;
  *(this + 872) = 0u;
  *(this + 127) = 0x3FF0000000000000;
  *(this + 122) = 0x3FF0000000000000;
  *(this + 117) = 0x3FF0000000000000;
  *(this + 112) = 0x3FF0000000000000;
  *(this + 904) = 0u;
  *(this + 920) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 143) = 0x3FF0000000000000;
  *(this + 138) = 0x3FF0000000000000;
  *(this + 133) = 0x3FF0000000000000;
  *(this + 128) = 0x3FF0000000000000;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 68) = 0u;
  *(this + 67) = 0u;
  *(this + 1112) = 0u;
  *(this + 1128) = 0u;
  *(this + 159) = 0x3FF0000000000000;
  *(this + 154) = 0x3FF0000000000000;
  *(this + 149) = 0x3FF0000000000000;
  *(this + 144) = 0x3FF0000000000000;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 76) = 0u;
  *(this + 75) = 0u;
  *(this + 1240) = 0u;
  *(this + 1256) = 0u;
  *(this + 175) = 0x3FF0000000000000;
  *(this + 170) = 0x3FF0000000000000;
  *(this + 165) = 0x3FF0000000000000;
  *(this + 160) = 0x3FF0000000000000;
  *(this + 1288) = 0u;
  *(this + 1304) = 0u;
  *(this + 84) = 0u;
  *(this + 83) = 0u;
  *(this + 1368) = 0u;
  *(this + 1384) = 0u;
  *(this + 191) = 0x3FF0000000000000;
  *(this + 186) = 0x3FF0000000000000;
  *(this + 181) = 0x3FF0000000000000;
  *(this + 176) = 0x3FF0000000000000;
  *(this + 1416) = 0u;
  *(this + 1432) = 0u;
  *(this + 92) = 0u;
  *(this + 91) = 0u;
  *(this + 1496) = 0u;
  *(this + 1512) = 0u;
  *(this + 207) = 0x3FF0000000000000;
  *(this + 202) = 0x3FF0000000000000;
  *(this + 197) = 0x3FF0000000000000;
  *(this + 192) = 0x3FF0000000000000;
  *(this + 1544) = 0u;
  *(this + 1560) = 0u;
  *(this + 100) = 0u;
  *(this + 99) = 0u;
  *(this + 1624) = 0u;
  *(this + 1640) = 0u;
  *(this + 223) = 0x3FF0000000000000;
  *(this + 218) = 0x3FF0000000000000;
  *(this + 213) = 0x3FF0000000000000;
  *(this + 208) = 0x3FF0000000000000;
  *(this + 1672) = 0u;
  *(this + 1688) = 0u;
  *(this + 108) = 0u;
  *(this + 107) = 0u;
  *(this + 1752) = 0u;
  *(this + 1768) = 0u;
  *(this + 239) = 0x3FF0000000000000;
  *(this + 234) = 0x3FF0000000000000;
  *(this + 229) = 0x3FF0000000000000;
  *(this + 224) = 0x3FF0000000000000;
  *(this + 1800) = 0u;
  *(this + 1816) = 0u;
  *(this + 116) = 0u;
  *(this + 115) = 0u;
  *(this + 1880) = 0u;
  *(this + 1896) = 0u;
}

void getIdentity()
{
  if (__cxa_guard_acquire(&_MergedGlobals_33))
  {
    qword_280C5E8A0 = 0x3FF0000000000000;
    qword_280C5E878 = 0x3FF0000000000000;
    qword_280C5E850 = 0x3FF0000000000000;
    qword_280C5E828 = 0x3FF0000000000000;
    xmmword_280C5E830 = 0u;
    unk_280C5E840 = 0u;
    unk_280C5E858 = 0u;
    unk_280C5E868 = 0u;
    xmmword_280C5E880 = 0u;
    unk_280C5E890 = 0u;
    __cxa_atexit(OZChannelBase::setRangeName, &qword_280C5E828, &dword_25F8F0000);

    __cxa_guard_release(&_MergedGlobals_33);
  }
}

BOOL transform(_OWORD *a1, double *a2)
{
  v4 = transformPlane<double>(a1, a2, a2);
  v5 = transformPlane<double>(a1, a2 + 6, (a2 + 6));
  v6 = transformPlane<double>(a1, a2 + 12, (a2 + 12));
  v7 = transformPlane<double>(a1, a2 + 18, (a2 + 18));
  v8 = transformPlane<double>(a1, a2 + 24, (a2 + 24));
  result = transformPlane<double>(a1, a2 + 30, (a2 + 30));
  if (!v4 || !v5 || !v6 || !v7 || !v8 || !result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v11, "transform frustum failed");
    PCException::PCException(exception, &v11);
    *exception = &unk_2872088F0;
  }

  return result;
}

BOOL LiBaseCamera::worldToLocalMatrix@<W0>(LiBaseCamera *this@<X0>, uint64_t a2@<X8>)
{
  (*(*this + 16))(this);
  result = PCMatrix44Tmpl<double>::invert(a2, a2, 0.0);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v5, "failed to invert local matrix");
    PCException::PCException(exception, &v5);
  }

  return result;
}

uint64_t LiBaseCamera::worldToFilmMatrix@<X0>(LiBaseCamera *this@<X0>, uint64_t a2@<X8>)
{
  (*(*this + 32))(v6);
  (*(*this + 24))(v5, this);
  return PCMatrix44Tmpl<double>::operator*(v6, v5, a2);
}

uint64_t LiCamera::copy(uint64_t a1, uint64_t a2)
{
  memset(v14, 0, sizeof(v14));
  memset(v13, 0, sizeof(v13));
  v12[0] = 0x3FF0000000000000;
  memset(&v12[1], 0, 24);
  (*(*a2 + 424))(v11, a2);
  (*(*a2 + 440))(a2, v14);
  (*(*a2 + 472))(a2, v12);
  (*(*a2 + 456))(a2, v13);
  (*(*a2 + 272))(v10, a2);
  (*(*a1 + 288))(a1, v10);
  (*(*a2 + 688))(a2);
  (*(*a1 + 696))(a1);
  (*(*a1 + 432))(a1, v11);
  (*(*a1 + 448))(a1, v14);
  (*(*a1 + 480))(a1, v12);
  (*(*a1 + 464))(a1, v13);
  (*(*a2 + 488))(a2);
  (*(*a1 + 496))(a1);
  v4 = (*(*a2 + 632))(a2);
  (*(*a1 + 640))(a1, v4);
  (*(*a2 + 504))(a2);
  (*(*a1 + 512))(a1);
  v5 = (*(*a2 + 536))(a2);
  v6 = (*(*a2 + 576))(a2);
  (*(*a1 + 544))(a1, v5);
  (*(*a1 + 584))(a1, v6);
  (*(*a2 + 552))(a2);
  (*(*a1 + 560))(a1);
  (*(*a2 + 592))(a2);
  (*(*a1 + 600))(a1);
  v7 = (*(*a2 + 624))(a2);
  (*(*a1 + 616))(a1, v7);
  v8 = (*(*a2 + 664))(a2);
  return (*(*a1 + 672))(a1, v8);
}

uint64_t LiCamera::setNearFarPlanes(LiCamera *this, double a2, double a3)
{
  (*(*this + 544))(this, a2);
  v5 = *(*this + 584);
  v6.n128_f64[0] = a3;

  return v5(this, v6);
}

double LiCamera::calcFilmSpaceTransform(uint64_t a1, double *a2, uint64_t a3)
{
  (*(*a1 + 280))(v11);
  v5 = v12;
  v6 = v13;
  v7 = *a2 + a2[2] * 0.5;
  v8 = v12 / v13 * a2[3];
  a2[2] = v8;
  *a2 = v7 - v8 * 0.5;
  *(a3 + 120) = 0x3FF0000000000000;
  *(a3 + 80) = 0x3FF0000000000000;
  *(a3 + 40) = 0x3FF0000000000000;
  *a3 = 0x3FF0000000000000;
  *(a3 + 8) = 0u;
  *(a3 + 24) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *a3 = a2[2] / v5;
  v9 = v11[1];
  *(a3 + 24) = *a2 - v11[0] * a2[2] / v5;
  *(a3 + 40) = a2[3] / v6;
  *(a3 + 56) = a2[1] - v9 * a2[3] / v6;
  result = 1.0;
  *(a3 + 80) = xmmword_2603426F0;
  return result;
}

void LiCamera::getLocalCenterOfProjection(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*this + 632))(this);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  if (v4 == 1)
  {
    (*(*this + 272))(v9, this);
    v5 = (*(*this + 504))(this);
    if (fabs(v5) < 0.0000001)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v10, "ortho cameras don't have a center of projection");
      PCException::PCException(exception, &v10);
    }

    v6 = (*(*this + 688))(this);
    v7 = (*(*this + 488))(this);
    v10.var0 = 0x3FF0000000000000;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    LiCamera::adjustTranslationForModel(1, 0, &v10, a2, v5, v6, v7, v9[0]);
  }
}

void LiCamera::getCenterOfProjection(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*this + 632))(this);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  (*(*this + 440))(this, a2);
  v14 = 0uLL;
  v15 = 0.0;
  (*(*this + 456))(this, &v14);
  v13[0] = 0x3FF0000000000000;
  memset(&v13[1], 0, 24);
  (*(*this + 472))(this, v13);
  if (v4 == 1)
  {
    (*(*this + 272))(v12, this);
    v7 = (*(*this + 504))(this);
    if (fabs(v7) < 0.0000001)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v11, "ortho cameras don't have a center of projection");
      PCException::PCException(exception, &v11);
    }

    v8 = (*(*this + 688))(this);
    v9 = (*(*this + 488))(this);
    LiCamera::adjustTranslationForModel(1, 0, v13, a2, v7, v8, v9, v12[0]);
  }

  else if (!v4)
  {
    *v6.i64 = fabs(v14.f64[0]);
    v5.i64[0] = 0x3E7AD7F29ABCAF48;
    if (*v6.i64 >= 0.0000001 || (*v6.i64 = fabs(v14.f64[1]), *v6.i64 >= 0.0000001) || (*v6.i64 = fabs(v15), *v6.i64 >= 0.0000001))
    {
      PCQuat<double>::transform<double>(v13, &v14, v5, v6);
      *a2 = vaddq_f64(v14, *a2);
      *(a2 + 16) = v15 + *(a2 + 16);
    }
  }
}

double LiCamera::adjustTranslationForModel(int a1, int a2, uint64_t a3, float64x2_t *a4, double result, double a6, double a7, double a8)
{
  if (a1 != a2)
  {
    v19 = v11;
    v20 = v10;
    v21 = v8;
    v22 = v9;
    *v15.i64 = a6 * a7 * a8 * 0.5 / tan(result * 0.5 * 3.14159265 / 180.0);
    v17 = 0uLL;
    v18 = *v15.i64;
    if (a2 == 1)
    {
      v16 = vnegq_f64(0);
      v17 = v16;
      *v15.i64 = -*v15.i64;
      v18 = *v15.i64;
    }

    PCQuat<double>::transform<double>(a3, &v17, v15, v16);
    *a4 = vaddq_f64(v17, *a4);
    result = v18 + a4[1].f64[0];
    a4[1].f64[0] = result;
  }

  return result;
}

void LiCamera::getLocalEyePosition(LiCamera *this@<X0>, double *a2@<X8>)
{
  v4 = (*(*this + 632))(this);
  *a2 = 0.0;
  a2[1] = 0.0;
  a2[2] = 0.0;
  a2[3] = 1.0;
  if (v4 == 1)
  {
    (*(*this + 272))(v9, this);
    v5 = (*(*this + 504))(this);
    v6 = (*(*this + 688))(this);
    v7 = (*(*this + 488))(this);
    v8 = __sincos_stret(v5 * 0.00872664626);
    a2[2] = v9[0] * (v6 * (v8.__cosval * v7)) * 0.5;
    a2[3] = v8.__sinval;
  }
}

void LiCamera::getFocalPoint(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*this + 632))(this);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  (*(*this + 440))(this, a2);
  if (!v4)
  {
    (*(*this + 272))(v11, this);
    v10[0] = 0x3FF0000000000000;
    memset(&v10[1], 0, 24);
    (*(*this + 472))(this, v10);
    v5 = (*(*this + 504))(this);
    if (fabs(v5) < 0.0000001)
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::PCString(&v9, "viewpoint cameras must have a positive angle of view");
      PCException::PCException(exception, &v9);
    }

    v6 = (*(*this + 688))(this);
    v7 = (*(*this + 488))(this);
    LiCamera::adjustTranslationForModel(0, 1, v10, a2, v5, v6, v7, v11[0]);
  }
}

double *LiCamera::getPosition@<X0>(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  (*(*this + 440))(this, a2);
  v8 = 0uLL;
  v9 = 0.0;
  (*(*this + 456))(this, &v8);
  if (fabs(v8.f64[0]) >= 0.0000001 || fabs(v8.f64[1]) >= 0.0000001 || fabs(v9) >= 0.0000001)
  {
    v7[0] = 1.0;
    memset(&v7[1], 0, 24);
    *v4.i64 = (*(*this + 472))(this, v7);
    PCQuat<double>::transform<double>(v7, &v8, v4, v5);
    *a2 = vaddq_f64(v8, *a2);
    *(a2 + 16) = v9 + *(a2 + 16);
  }

  (*(*this + 424))(v7, this);
  return PCMatrix44Tmpl<double>::transform<double>(v7, a2, a2);
}

void LiCamera::getViewPoint(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v19[0] = 0x3FF0000000000000;
  memset(&v19[1], 0, 24);
  (*(*this + 472))(this, v19);
  v4 = (*(*this + 504))(this);
  *v5.i64 = fabs(v4);
  v6.i64[0] = 0x3E7AD7F29ABCAF48;
  if (*v5.i64 >= 0.0000001)
  {
    v8 = (*(*this + 632))(this);
    v17 = 0uLL;
    v18 = 0.0;
    (*(*this + 440))(this, &v17);
    if (v8 == 1)
    {
      (*(*this + 272))(v16, this);
      v9 = (*(*this + 688))(this);
      v10 = (*(*this + 488))(this);
      v11 = v9 * v10 * v16[0] * 0.5;
      *v12.i64 = v11 / tan(v4 * 0.5 * 3.14159265 / 180.0);
      v20 = 0uLL;
      v21 = *v12.i64;
      PCQuat<double>::transform<double>(v19, &v20, v12, v13);
      v14 = vaddq_f64(v20, v17);
      v15 = v21 + v18;
    }

    else
    {
      v14 = v17;
      v15 = v18;
    }

    *a2 = v14;
    *(a2 + 16) = v15;
    *(a2 + 24) = 0x3FF0000000000000;
  }

  else
  {
    v20 = 0uLL;
    v21 = -1.0;
    PCQuat<double>::transform<double>(v19, &v20, v5, v6);
    v7 = v21;
    *a2 = v20;
    *(a2 + 16) = v7;
    *(a2 + 24) = 0;
  }
}

double *LiCamera::getViewPointWorld@<X0>(LiCamera *this@<X0>, double *a2@<X8>)
{
  (*(*this + 144))(this);
  (*(*this + 424))(v5, this);
  return PCMatrix44Tmpl<double>::transform<double>(v5, a2, a2);
}

void LiCamera::getFocalDistance(LiCamera *this)
{
  v2 = (*(*this + 504))(this);
  if (fabs(v2) >= 0.0000001)
  {
    (*(*this + 272))(&v3, this, 0.0);
    (*(*this + 688))(this);
    (*(*this + 488))(this);
    tan(v2 * 0.5 * 3.14159265 / 180.0);
  }
}

double *LiCamera::adjustTranslationForModel(uint64_t a1, int a2, int a3, float64x2_t *a4)
{
  v8 = (*(*a1 + 504))(a1);
  v9 = (*(*a1 + 520))(a1);
  v10 = 1.0;
  if (!v9)
  {
    v10 = 0.1;
  }

  if (v8 <= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = v8;
  }

  if ((((*(*a1 + 520))(a1) & 1) != 0 || v8 < 0.1 || fabs(v8 + -0.1) < 0.0000001) && v11 < 5.0 && a2 == 1)
  {
    v11 = 5.0;
  }

  v13 = (*(*a1 + 688))(a1);
  v14 = (*(*a1 + 488))(a1);
  (*(*a1 + 272))(v30, a1);
  (*(*a1 + 16))(v29, a1);
  (*(*a1 + 424))(v28, a1);
  v27[4] = v28[4];
  v27[5] = v28[5];
  v27[6] = v28[6];
  v27[7] = v28[7];
  v27[0] = v28[0];
  v27[1] = v28[1];
  v27[2] = v28[2];
  v27[3] = v28[3];
  if (!PCMatrix44Tmpl<double>::invert(v27, v27, 0.0))
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v26, "singular parent matrix");
    PCException::PCException(exception, &v26);
  }

  PCMatrix44Tmpl<double>::transform<double>(v28, a4->f64, a4->f64);
  v25 = *&v29[2];
  v15 = *&v29[10];
  v16 = v13 * v14 * v30[0] * 0.5;
  v17 = v16 / tan(v11 * 0.5 * 3.14159265 / 180.0);
  v18 = v15 * v17;
  if (a3 == 1)
  {
    v18 = -(v15 * v17);
  }

  v19.f64[0] = v25;
  *&v19.f64[1] = v29[6];
  v20 = vmulq_n_f64(v19, v17);
  v21 = vdup_n_s32(a3 == 1);
  v22.i64[0] = v21.u32[0];
  v22.i64[1] = v21.u32[1];
  *a4 = vaddq_f64(*a4, vbslq_s8(vcltzq_s64(vshlq_n_s64(v22, 0x3FuLL)), vnegq_f64(v20), v20));
  a4[1].f64[0] = v18 + a4[1].f64[0];
  return PCMatrix44Tmpl<double>::transform<double>(v27, a4->f64, a4->f64);
}

void LiCamera::adjustFarPlaneForModel(uint64_t a1, int a2, int a3, double *a4)
{
  v8 = (*(*a1 + 504))(a1);
  v9 = (*(*a1 + 688))(a1);
  v10 = (*(*a1 + 488))(a1);
  (*(*a1 + 272))(v13, a1);
  if (a2 != a3)
  {
    v11 = v9 * v10 * v13[0] * 0.5;
    v12 = v11 / tan(v8 * 0.5 * 3.14159265 / 180.0);
    if (a3 == 1)
    {
      v12 = -v12;
    }

    *a4 = *a4 + v12;
  }
}

double LiCamera::getFarDepth(LiCamera *this)
{
  v2 = (*(*this + 576))(this);
  if ((*(*this + 632))(this) == 1)
  {
    return v2 + (*(*this + 320))(this);
  }

  return v2;
}

uint64_t LiCamera::convertToModel(uint64_t a1, uint64_t a2)
{
  result = (*(*a1 + 632))(a1);
  if (result != a2)
  {
    v5 = result;
    memset(v8, 0, sizeof(v8));
    (*(*a1 + 440))(a1, v8);
    (*(*a1 + 368))(a1, v5, a2, v8);
    (*(*a1 + 448))(a1, v8);
    v7 = (*(*a1 + 576))(a1);
    (*(*a1 + 376))(a1, v5, a2, &v7);
    v6.n128_f64[0] = v7;
    (*(*a1 + 584))(a1, v6);
    return (*(*a1 + 640))(a1, a2);
  }

  return result;
}

double LiCamera::localToWorldMatrix@<D0>(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  v63 = 0;
  v64 = 0.0;
  v65 = 0.0;
  v60 = 0.0;
  v61 = 0.0;
  v62 = 0.0;
  v59[0] = 1.0;
  memset(&v59[1], 0, 24);
  (*(*this + 424))(v58);
  (*(*this + 440))(this, &v63);
  (*(*this + 472))(this, v59);
  (*(*this + 456))(this, &v60);
  *(a2 + 120) = 0x3FF0000000000000;
  *(a2 + 80) = 0x3FF0000000000000;
  *(a2 + 40) = 0x3FF0000000000000;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 104) = 0u;
  *&v4 = -v60;
  v5 = -v61;
  v6 = -v62;
  *a2 = 0x3FF0000000000000;
  PCMatrix44Tmpl<double>::leftTranslate(a2, v4, v5, v6);
  v7 = PCMatrix44Tmpl<double>::leftRotate(a2, v59);
  v7.n128_u64[0] = v63;
  PCMatrix44Tmpl<double>::leftTranslate(a2, v7, v64, v65);
  PCMatrix44Tmpl<double>::leftMult(a2, v58);
  v8 = *(a2 + 120);
  if (fabs(v8) < 0.0000001)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v70, "!PCMath::isZero(w)");
    PCException::PCException(exception, &v70);
    *exception = &unk_2872DE188;
  }

  v10 = *a2;
  v9 = *(a2 + 8);
  v12 = *(a2 + 32);
  v11 = *(a2 + 40);
  v14 = *(a2 + 64);
  v13 = *(a2 + 72);
  v15 = *(a2 + 16);
  v16 = *(a2 + 48);
  v17 = *(a2 + 80);
  v18 = sqrt(v15 * v15 + v16 * v16 + v17 * v17);
  if (fabs(v18) < 0.0000001)
  {
    v19 = v13 * 0.0;
    v20 = v11 * 0.0;
    v15 = v13 * 0.0 - v11 * 0.0;
    v21 = v9 * 0.0;
    v16 = v9 * 0.0 - v13;
    v17 = v11 - v9 * 0.0;
    v18 = sqrt(v17 * v17 + v16 * v16 + v15 * v15);
    if (fabs(v18) < 0.0000001)
    {
      v15 = v13 - v20;
      v16 = v21 - v19;
      v17 = v20 - v9;
      v18 = sqrt(v17 * v17 + v15 * v15 + v16 * v16);
      if (fabs(v18) < 0.0000001)
      {
        v15 = v12 * 0.0 - v14;
        v16 = v14 * 0.0 - v10 * 0.0;
        v17 = v10 - v12 * 0.0;
        v18 = sqrt(v17 * v17 + v15 * v15 + v16 * v16);
        if (fabs(v18) < 0.0000001)
        {
          v15 = v20 - v19;
          v16 = v13 - v21;
          v17 = v21 - v11;
          v18 = sqrt(v17 * v17 + v16 * v16 + v15 * v15);
          if (fabs(v18) < 0.0000001)
          {
            v16 = 0.0;
            v17 = 1.0;
            v15 = 0.0;
            v18 = 1.0;
          }
        }
      }
    }
  }

  v22 = v15 * (v8 / v18);
  v23 = v16 * (v8 / v18);
  *v66 = v22;
  *&v66[1] = v23;
  v24 = v17 * (v8 / v18);
  *&v66[2] = v24;
  v25 = v14 * v24 + v12 * v23 + v10 * v22;
  v26 = v10 - v22 * v25;
  v27 = v12 - v23 * v25;
  v28 = v14 - v24 * v25;
  v29 = v13 * v24 + v9 * v22 + v11 * v23;
  v30 = v23 * v29;
  v31 = v24 * v29;
  v32 = v9 - v22 * v29;
  v33 = v11 - v30;
  v34 = v13 - v31;
  v35 = sqrt(v34 * v34 + v32 * v32 + v33 * v33);
  if (fabs(v35) < 0.0000001)
  {
    v32 = v23 * 0.0 - v24 * 0.0;
    v36 = sqrt((v22 * 0.0 - v23) * (v22 * 0.0 - v23) + (v24 - v22 * 0.0) * (v24 - v22 * 0.0) + v32 * v32);
    v37 = fabs(v36);
    v34 = v22 - v23 * 0.0;
    v38 = sqrt(v34 * v34 + (v23 * 0.0 - v24) * (v23 * 0.0 - v24) + (v24 * 0.0 - v22 * 0.0) * (v24 * 0.0 - v22 * 0.0));
    if (v37 < 0.0000001)
    {
      v33 = v24 * 0.0 - v22 * 0.0;
    }

    else
    {
      v34 = v22 * 0.0 - v23;
      v33 = v24 - v22 * 0.0;
    }

    if (v37 >= 0.0000001)
    {
      v35 = v36;
    }

    else
    {
      v32 = v23 * 0.0 - v24;
      v35 = v38;
    }
  }

  v39 = 0;
  v40 = v8 / v35;
  v67 = v32 * v40;
  v68 = v33 * v40;
  v69 = v34 * v40;
  v41 = v28 * (v34 * v40) + v26 * (v32 * v40) + v27 * (v33 * v40);
  v42 = v26 - v67 * v41;
  v43 = v27 - v68 * v41;
  v44 = v28 - v69 * v41;
  v45 = sqrt(v44 * v44 + v42 * v42 + v43 * v43);
  v46 = fabs(v45);
  v47 = v42 * (v8 / v45);
  v48 = v43 * (v8 / v45);
  v49 = v44 * (v8 / v45);
  v50 = v8 * (v24 * v68 - v23 * v69);
  v51 = v8 * (v22 * v69 - v24 * v67);
  v52 = v8 * (v23 * v67 - v22 * v68);
  if (v46 < 0.0000001)
  {
    *&v53 = v50;
  }

  else
  {
    *&v53 = v47;
  }

  if (v46 >= 0.0000001)
  {
    v51 = v48;
    v52 = v49;
  }

  v70.var0 = v53;
  v71 = v51;
  v72 = v52;
  v54 = (a2 + 16);
  do
  {
    v55 = *(&v67 + v39 * 8);
    *(v54 - 2) = *(&v70.var0 + v39 * 8);
    *(v54 - 1) = v55;
    result = *&v66[v39];
    *v54 = result;
    v54 += 4;
    ++v39;
  }

  while (v39 != 3);
  return result;
}

__n128 PCMatrix44Tmpl<double>::leftRotate(__int128 *a1, double *a2)
{
  v17 = 0x3FF0000000000000;
  v14 = 0x3FF0000000000000;
  v11 = 0x3FF0000000000000;
  v8 = 0x3FF0000000000000;
  v9 = 0u;
  v10 = 0u;
  v12 = 0u;
  v13 = 0u;
  v15 = 0u;
  v16 = 0u;
  PCMatrix44Tmpl<double>::setRotationFromQuaternion(&v8, a2);
  PCMatrix44Tmpl<double>::operator*(&v8, a1, v7);
  if (v7 != a1)
  {
    for (i = 0; i != 8; i += 2)
    {
      v5 = &a1[i];
      result = *&v7[i * 16];
      v6 = *&v7[i * 16 + 16];
      *v5 = result;
      v5[1] = v6;
    }
  }

  return result;
}

BOOL LiCamera::worldToLocalMatrix@<W0>(LiCamera *this@<X0>, uint64_t a2@<X8>)
{
  (*(*this + 16))(this);
  result = PCMatrix44Tmpl<double>::invert(a2, a2, 0.0);
  if (!result)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::PCString(&v5, "singular camera local matrix");
    PCException::PCException(exception, &v5);
  }

  return result;
}

double LiCamera::eyeToFilmMatrix@<D0>(LiCamera *this@<X0>, double *a2@<X8>)
{
  (*(*this + 32))(this);
  result = fabs((*(*this + 504))(this));
  if (result >= 0.0000001)
  {
    (*(*this + 328))(v5, this);
    return PCMatrix44Tmpl<double>::rightTranslate(a2, v5[0], v5[1], v5[2]);
  }

  return result;
}

double LiCamera::eyeToFilmMatrixRespectFarDepth@<D0>(LiCamera *this@<X0>, double *a2@<X8>)
{
  (*(*this + 40))(this);
  result = fabs((*(*this + 504))(this));
  if (result >= 0.0000001)
  {
    (*(*this + 328))(v5, this);
    return PCMatrix44Tmpl<double>::rightTranslate(a2, v5[0], v5[1], v5[2]);
  }

  return result;
}

float64x2_t LiCamera::localToFilmMatrix@<Q0>(LiCamera *this@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *&v22[40] = 0x3FF0000000000000;
  *v22 = 0x3FF0000000000000;
  *&v19[40] = 0x3FF0000000000000;
  *v19 = 0x3FF0000000000000;
  memset(&v19[8], 0, 32);
  v20 = 0u;
  v21 = 0u;
  memset(&v22[8], 0, 32);
  (*(*this + 264))(this, v18);
  v6 = *v22;
  *(a3 + 64) = v21;
  *(a3 + 80) = v6;
  v7 = *&v22[32];
  *(a3 + 96) = *&v22[16];
  *(a3 + 112) = v7;
  v8 = *&v19[16];
  *a3 = *v19;
  *(a3 + 16) = v8;
  v9 = v20;
  *(a3 + 32) = *&v19[32];
  *(a3 + 48) = v9;
  (*(*this + 56))(v15, this);
  PCMatrix44Tmpl<double>::operator*(a3, v15, v16);
  if (v16 != a3)
  {
    for (i = 0; i != 16; i += 4)
    {
      v12 = a3 + i * 8;
      result = *&v16[i];
      v13 = *&v16[i + 2];
      *v12 = result;
      *(v12 + 16) = v13;
    }
  }

  if ((a2 & 1) == 0)
  {
    v16[0] = 0.0;
    v16[1] = 0.0;
    v17 = xmmword_2603426F0;
    PCMatrix44Tmpl<double>::transform<double>(a3, v16, v16);
    *&result.f64[0] = v17;
    if (*&v17 != 0.0 && *(&v17 + 1) != 0.0)
    {
      result.f64[0] = *(&v17 + 1) / *&v17;
      if (*(&v17 + 1) / *&v17 != 1.0)
      {
        v14 = vmulq_n_f64(*(a3 + 64), result.f64[0]);
        result = vmulq_n_f64(*(a3 + 80), result.f64[0]);
        *(a3 + 64) = v14;
        *(a3 + 80) = result;
      }
    }
  }

  return result;
}