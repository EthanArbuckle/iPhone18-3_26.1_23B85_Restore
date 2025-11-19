const char *HgcSphere::GetProgram(HgcSphere *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000604\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*hg_Params[1].xy + hg_Params[1].zw;\n    s1.xy = float2(dot(s0.xy, s0.xy));\n    s2.xy = rsqrt(s1.xx);\n    s2.xy = select(s2.xy, float2(c0.xx), s1.xy < 0.00000h);\n    s2.xy = select(float2(c0.xx), s2.xy, -s1.xy < 0.00000h);\n    s0.xy = s0.xy*s2.xy;\n    s2.xy = s1.xy*s2.xy;\n    s2.xy = s2.xy*-hg_Params[0].xx + float2(c0.yy);\n    s1.x = rsqrt(s2.x);\n    s1.x = select(s1.x, float(c0.x), s2.x < 0.00000h);\n    s1.x = select(float(c0.x), s1.x, -s2.x < 0.00000h);\n    s1.xy = s2.xy*-s1.xx + float2(c0.yy);\n    s1.xy = s1.xy*hg_Params[0].yy;\n    s1.xy = s0.xy*s1.xy;\n    s1.xy = s1.xy*hg_Params[2].xy + hg_Params[2].zw;\n    s1.xy = s1.xy + hg_Params[3].xy;\n    s1.xy = s1.xy*hg_Params[3].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    s0.xy = s0.xy*hg_Params[1].xy;\n    s0.xy = abs(s0.xy);\n    s2.x = s2.x*hg_Params[0].y;\n    s0.x = dot(s0.xy, 1.00000f);\n    s2.x = clamp(s2.x/s0.x, 0.00000f, 1.00000f);\n    output.color0 = float4(r0)*s2.xxxx;\n    return output;\n}\n//MD5=4d8e01b0:b3e5db97:c2bb956b:0528b83b\n//SIG=00400000:00000000:00000000:00000001:0001:0004:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005bb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*hg_Params[1].xy + hg_Params[1].zw;\n    r1.xy = float2(dot(r0.xy, r0.xy));\n    r2.xy = rsqrt(r1.xx);\n    r2.xy = select(r2.xy, c0.xx, r1.xy < 0.00000f);\n    r2.xy = select(c0.xx, r2.xy, -r1.xy < 0.00000f);\n    r0.xy = r0.xy*r2.xy;\n    r2.xy = r1.xy*r2.xy;\n    r2.xy = r2.xy*-hg_Params[0].xx + c0.yy;\n    r1.x = rsqrt(r2.x);\n    r1.x = select(r1.x, c0.x, r2.x < 0.00000f);\n    r1.x = select(c0.x, r1.x, -r2.x < 0.00000f);\n    r1.xy = r2.xy*-r1.xx + c0.yy;\n    r1.xy = r1.xy*hg_Params[0].yy;\n    r1.xy = r0.xy*r1.xy;\n    r1.xy = r1.xy*hg_Params[2].xy + hg_Params[2].zw;\n    r1.xy = r1.xy + hg_Params[3].xy;\n    r1.xy = r1.xy*hg_Params[3].zw;\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    r0.xy = r0.xy*hg_Params[1].xy;\n    r0.xy = abs(r0.xy);\n    r2.x = r2.x*hg_Params[0].y;\n    r0.x = dot(r0.xy, 1.00000f);\n    r2.x = clamp(r2.x/r0.x, 0.00000f, 1.00000f);\n    output.color0 = r1*r2.xxxx;\n    return output;\n}\n//MD5=a41f88c2:55f89c1e:965035a8:1d59be45\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000064c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy*hg_ProgramLocal1.xy + hg_ProgramLocal1.zw;\n    r1.xy = vec2(dot(r0.xy, r0.xy));\n    r2.xy = inversesqrt(r1.xx);\n    r2.xy = vec2(r1.x < 0.00000 ? c0.x : r2.x, r1.y < 0.00000 ? c0.x : r2.y);\n    r2.xy = vec2(-r1.x < 0.00000 ? r2.x : c0.x, -r1.y < 0.00000 ? r2.y : c0.x);\n    r0.xy = r0.xy*r2.xy;\n    r2.xy = r1.xy*r2.xy;\n    r2.xy = r2.xy*-hg_ProgramLocal0.xx + c0.yy;\n    r1.x = inversesqrt(r2.x);\n    r1.x = r2.x < 0.00000 ? c0.x : r1.x;\n    r1.x = -r2.x < 0.00000 ? r1.x : c0.x;\n    r1.xy = r2.xy*-r1.xx + c0.yy;\n    r1.xy = r1.xy*hg_ProgramLocal0.yy;\n    r1.xy = r0.xy*r1.xy;\n    r1.xy = r1.xy*hg_ProgramLocal2.xy + hg_ProgramLocal2.zw;\n    r1.xy = r1.xy + hg_ProgramLocal3.xy;\n    r1.xy = r1.xy*hg_ProgramLocal3.zw;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    r0.xy = r0.xy*hg_ProgramLocal1.xy;\n    r0.xy = abs(r0.xy);\n    r2.x = r2.x*hg_ProgramLocal0.y;\n    r0.x = dot(r0.xy, vec2(1.00000));\n    r2.x = clamp(r2.x/r0.x, 0.00000, 1.00000);\n    gl_FragColor = r1*r2.xxxx;\n}\n//MD5=90c4cc3a:4e963b51:03b89f4d:742fd01c\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA9F238(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA9F3B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA9F408()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA9F400);
}

uint64_t HgcSphere::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcSphere::Bind(HgcSphere *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSphere::RenderTile(float32x4_t **this, HGTile *a2)
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
          v21 = *v19;
          v20 = v19[1];
          v22 = vextq_s8(v20, v20, 8uLL);
          v23 = vaddq_f32(vmulq_f32(v17, v20), v22);
          v24 = vaddq_f32(vmulq_f32(v18, v20), v22);
          v22.i64[0] = vmulq_f32(v23, v23).u64[0];
          v25 = vmulq_f32(v24, v24).u64[0];
          v26 = vaddq_f32(vdupq_lane_s32(*v22.f32, 0), vdupq_lane_s32(*v22.f32, 1));
          v27 = vaddq_f32(vdupq_lane_s32(v25, 0), vdupq_lane_s32(v25, 1));
          v29 = v19[2];
          v28 = v19[3];
          v30 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v26.f32, 0)), v28);
          v31 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v27.f32, 0)), v28);
          v32 = vminq_f32(vmulq_f32(v30, vrsqrtsq_f32(vmulq_n_f32(v30, v26.f32[0]), v30)), v28);
          v33 = vminq_f32(vmulq_f32(v31, vrsqrtsq_f32(vmulq_n_f32(v31, v27.f32[0]), v31)), v28);
          v34 = vmulq_f32(v32, vrsqrtsq_f32(vmulq_n_f32(v32, v26.f32[0]), v32));
          v35 = vmulq_f32(v33, vrsqrtsq_f32(vmulq_n_f32(v33, v27.f32[0]), v33));
          v37 = v19[4];
          v36 = v19[5];
          v38 = vbslq_s8(vcgtq_f32(v26, v37), vbslq_s8(vcgtq_f32(v37, v26), v37, v34), v37);
          v39 = vbslq_s8(vcgtq_f32(v27, v37), vbslq_s8(vcgtq_f32(v37, v27), v37, v35), v37);
          v40 = vmulq_f32(v23, v38);
          v41 = vmulq_f32(v24, v39);
          v42 = vsubq_f32(v36, vmulq_n_f32(vmulq_f32(v26, v38), COERCE_FLOAT(*v19)));
          v43 = vsubq_f32(v36, vmulq_n_f32(vmulq_f32(v27, v39), COERCE_FLOAT(*v19)));
          v44 = vminq_f32(vrsqrteq_f32(v42), v28);
          v45 = vminq_f32(vrsqrteq_f32(v43), v28);
          v46 = vminq_f32(vmulq_f32(v44, vrsqrtsq_f32(vmulq_f32(v44, v42), v44)), v28);
          v47 = vminq_f32(vmulq_f32(v45, vrsqrtsq_f32(vmulq_f32(v45, v43), v45)), v28);
          v48 = vextq_s8(v29, v29, 8uLL);
          v49 = vaddq_f32(v48, vmulq_f32(v29, vmulq_f32(v40, vmulq_lane_f32(vsubq_f32(v36, vmulq_n_f32(v42, *vbslq_s8(vcgtq_f32(v42, v37), vbslq_s8(vcgtq_f32(v37, v42), v37, vmulq_f32(v46, vrsqrtsq_f32(vmulq_f32(v42, v46), v46))), v37).i32)), *v19->f32, 1))));
          v50 = vaddq_f32(v48, vmulq_f32(v29, vmulq_f32(v41, vmulq_lane_f32(vsubq_f32(v36, vmulq_n_f32(v43, *vbslq_s8(vcgtq_f32(v43, v37), vbslq_s8(vcgtq_f32(v37, v43), v37, vmulq_f32(v47, vrsqrtsq_f32(vmulq_f32(v43, v47), v47))), v37).i32)), *v19->f32, 1))));
          v51 = *(a2 + 22);
          v52 = vsubq_f32(v49, v9);
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

          v70 = vabsq_f32(vmulq_f32(v20, v40));
          v71 = vabsq_f32(vmulq_f32(v20, v41));
          v72 = vmulq_lane_f32(v42, *v21.f32, 1);
          v73 = vmulq_lane_f32(v43, *v21.f32, 1);
          v74 = vaddq_f32(v70, vrev64q_s32(v70));
          v75 = vaddq_f32(v71, vrev64q_s32(v71));
          v76 = v19[6];
          v77 = vminq_f32(vmaxq_f32(vrecpeq_f32(v74), v76), v28);
          v78 = vminq_f32(vmaxq_f32(vrecpeq_f32(v75), v76), v28);
          v79 = vminq_f32(vmaxq_f32(vmulq_f32(v77, vrecpsq_f32(v74, v77)), v76), v28);
          v80 = vminq_f32(vmaxq_f32(vmulq_f32(v78, vrecpsq_f32(v75, v78)), v76), v28);
          v81 = (v11 + 16 * v15);
          *v81 = vmulq_n_f32(v61, vminq_f32(vmaxq_f32(vmulq_f32(v72, vmulq_f32(v79, vrecpsq_f32(v74, v79))), v37), v36).f32[0]);
          v81[1] = vmulq_n_f32(v64, vminq_f32(vmaxq_f32(vmulq_f32(v73, vmulq_f32(v80, vrecpsq_f32(v75, v80))), v37), v36).f32[0]);
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v82 = this[51];
        v83 = v82[1];
        v84 = vaddq_f32(vmulq_f32(v17, v83), vextq_s8(v83, v83, 8uLL));
        v85 = vmulq_f32(v84, v84).u64[0];
        v86 = vaddq_f32(vdupq_lane_s32(v85, 0), vdupq_lane_s32(v85, 1));
        v87 = v82[3];
        v88 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v86.f32, 0)), v87);
        v89 = vminq_f32(vmulq_f32(v88, vrsqrtsq_f32(vmulq_n_f32(v88, v86.f32[0]), v88)), v87);
        v90 = vmulq_f32(v89, vrsqrtsq_f32(vmulq_n_f32(v89, v86.f32[0]), v89));
        v91 = v82[4];
        v92 = v82[5];
        v93 = vbslq_s8(vcgtq_f32(v86, v91), vbslq_s8(vcgtq_f32(v91, v86), v91, v90), v91);
        v94 = vmulq_f32(v84, v93);
        v95 = vsubq_f32(v92, vmulq_n_f32(vmulq_f32(v86, v93), COERCE_FLOAT(*v82)));
        v96 = vminq_f32(vrsqrteq_f32(v95), v87);
        v97 = vminq_f32(vmulq_f32(v96, vrsqrtsq_f32(vmulq_f32(v96, v95), v96)), v87);
        v98 = *(a2 + 22);
        v99 = vsubq_f32(vaddq_f32(vextq_s8(v82[2], v82[2], 8uLL), vmulq_f32(v82[2], vmulq_f32(v94, vmulq_lane_f32(vsubq_f32(v92, vmulq_n_f32(v95, *vbslq_s8(vcgtq_f32(v95, v91), vbslq_s8(vcgtq_f32(v91, v95), v91, vmulq_f32(v97, vrsqrtsq_f32(vmulq_f32(v97, v95), v97))), v91).i32)), *v82->f32, 1)))), v9);
        v100 = *(a2 + 10);
        if (v5)
        {
          v101 = vaddq_s32(vcvtq_s32_f32(v99), vcltzq_f32(v99));
          v102 = vsubq_f32(v99, vcvtq_f32_s32(v101)).u64[0];
          v103 = (v100 + 16 * (v101.i32[0] + v101.i32[1] * v98));
          v104 = vaddq_f32(*v103, vmulq_n_f32(vsubq_f32(v103[1], *v103), v102.f32[0]));
          v105 = vaddq_f32(v104, vmulq_lane_f32(vsubq_f32(vaddq_f32(v103[v98], vmulq_n_f32(vsubq_f32(v103[v98 + 1], v103[v98]), v102.f32[0])), v104), v102, 1));
        }

        else
        {
          v106 = vaddq_f32(v99, v13);
          v107 = vcvtq_s32_f32(v106);
          v106.i64[0] = vaddq_s32(v107, vcgtq_f32(vcvtq_f32_s32(v107), v106)).u64[0];
          v105 = *(v100 + 16 * (v106.i32[0] + v106.i32[1] * v98));
        }

        v108 = vabsq_f32(vmulq_f32(v83, v94));
        v109 = vmulq_lane_f32(v95, *v82->f32, 1);
        v110 = vaddq_f32(v108, vrev64q_s32(v108));
        v111 = v82[6];
        v112 = vminq_f32(vmaxq_f32(vrecpeq_f32(v110), v111), v87);
        v113 = vminq_f32(vmaxq_f32(vmulq_f32(v112, vrecpsq_f32(v110, v112)), v111), v87);
        *(v11 + 16 * v15) = vmulq_n_f32(v105, vminq_f32(vmaxq_f32(vmulq_f32(v109, vmulq_f32(v113, vrecpsq_f32(v110, v113))), v91), v92).f32[0]);
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcSphere::GetDOD(HgcSphere *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcSphere::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcSphere::HgcSphere(HgcSphere *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E6EA8;
  operator new();
}

void HgcSphere::~HgcSphere(HGNode *this)
{
  *this = &unk_2871E6EA8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);
}

{
  HgcSphere::~HgcSphere(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSphere::SetParameter(HgcSphere *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcSphere::GetParameter(HgcSphere *this, unsigned int a2, float *a3)
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

const char *HgcStarburst::GetProgram(HgcStarburst *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000481\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[2].xy;\n    s1.x = dot(s0.xy, s0.xy);\n    s2.x = rsqrt(s1.x);\n    s2.x = select(s2.x, float(c0.x), s1.x < 0.00000h);\n    s2.x = select(float(c0.x), s2.x, -s1.x < 0.00000h);\n    s1.x = s1.x*s2.x;\n    s1.x = s1.x*hg_Params[1].x;\n    s2.x = 1.00000f / s1.x;\n    s1.x = select(float(c0.x), s2.x, -fabs(s1.x) < 0.00000h);\n    s0.xy = s0.xy*s1.xx;\n    s0.xy = s0.xy*hg_Params[2].zw + hg_Params[0].xy;\n    s0.xy = s0.xy + hg_Params[3].xy;\n    s0.xy = s0.xy*hg_Params[3].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=a0ff7be3:b85ede51:50c93473:23ae51c3\n//SIG=00400000:00000000:00000000:00000001:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000466\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    r0.xy = r0.xy*hg_Params[2].xy;\n    r1.x = dot(r0.xy, r0.xy);\n    r2.x = rsqrt(r1.x);\n    r2.x = select(r2.x, c0.x, r1.x < 0.00000f);\n    r2.x = select(c0.x, r2.x, -r1.x < 0.00000f);\n    r1.x = r1.x*r2.x;\n    r1.x = r1.x*hg_Params[1].x;\n    r2.x = 1.00000f / r1.x;\n    r1.x = select(c0.x, r2.x, -fabs(r1.x) < 0.00000f);\n    r0.xy = r0.xy*r1.xx;\n    r0.xy = r0.xy*hg_Params[2].zw + hg_Params[0].xy;\n    r0.xy = r0.xy + hg_Params[3].xy;\n    r0.xy = r0.xy*hg_Params[3].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=4a25b0fa:7e7e212d:922c67d7:82d26d77\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004a6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy - hg_ProgramLocal0.xy;\n    r0.xy = r0.xy*hg_ProgramLocal2.xy;\n    r1.x = dot(r0.xy, r0.xy);\n    r2.x = inversesqrt(r1.x);\n    r2.x = r1.x < 0.00000 ? c0.x : r2.x;\n    r2.x = -r1.x < 0.00000 ? r2.x : c0.x;\n    r1.x = r1.x*r2.x;\n    r1.x = r1.x*hg_ProgramLocal1.x;\n    r2.x = 1.00000 / r1.x;\n    r1.x = -abs(r1.x) < 0.00000 ? r2.x : c0.x;\n    r0.xy = r0.xy*r1.xx;\n    r0.xy = r0.xy*hg_ProgramLocal2.zw + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy + hg_ProgramLocal3.xy;\n    r0.xy = r0.xy*hg_ProgramLocal3.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=2b8f2ceb:cdb9613d:6ed67f0c:56be17a3\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAA00C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAA0240(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAA0290()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAA0288);
}

uint64_t HgcStarburst::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcStarburst::Bind(HgcStarburst *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcStarburst::RenderTile(float32x4_t **this, HGTile *a2)
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
      if (v10 < 3)
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
          v19 = vaddq_f32(v18, xmmword_2603429B0);
          v20 = this[51];
          v21 = v20[1];
          v22 = vsubq_f32(v17, *v20);
          v23 = vsubq_f32(v18, *v20);
          v24 = v20[2];
          v25 = v20[3];
          v26 = vmulq_f32(v22, v24);
          v27 = vmulq_f32(v23, v24);
          v28 = vmulq_f32(vsubq_f32(v19, *v20), v24);
          v29 = vmulq_f32(v26, v26);
          v30 = vmulq_f32(v27, v27);
          v31 = vmulq_f32(v28, v28);
          v32 = vaddq_f32(v29, vrev64q_s32(v29));
          v33 = vaddq_f32(v30, vrev64q_s32(v30));
          v34 = vaddq_f32(v31, vrev64q_s32(v31));
          v35 = vminq_f32(vrsqrteq_f32(v32), v25);
          v36 = vminq_f32(vrsqrteq_f32(v33), v25);
          v37 = vminq_f32(vrsqrteq_f32(v34), v25);
          v38 = vminq_f32(vmulq_f32(v35, vrsqrtsq_f32(vmulq_f32(v32, v35), v35)), v25);
          v39 = vminq_f32(vmulq_f32(v36, vrsqrtsq_f32(vmulq_f32(v33, v36), v36)), v25);
          v40 = vminq_f32(vmulq_f32(v37, vrsqrtsq_f32(vmulq_f32(v34, v37), v37)), v25);
          v41 = v20[4];
          v42 = v20[5];
          v43 = vmulq_f32(v21, vmulq_f32(v32, vbslq_s8(vcgtq_f32(v32, v41), vbslq_s8(vcgtq_f32(v41, v32), v41, vmulq_f32(v38, vrsqrtsq_f32(vmulq_f32(v32, v38), v38))), v41)));
          v44 = vmulq_f32(v21, vmulq_f32(v33, vbslq_s8(vcgtq_f32(v33, v41), vbslq_s8(vcgtq_f32(v41, v33), v41, vmulq_f32(v39, vrsqrtsq_f32(vmulq_f32(v33, v39), v39))), v41)));
          v45 = vmulq_f32(v21, vmulq_f32(v34, vbslq_s8(vcgtq_f32(v34, v41), vbslq_s8(vcgtq_f32(v41, v34), v41, vmulq_f32(v40, vrsqrtsq_f32(vmulq_f32(v34, v40), v40))), v41)));
          v46 = vminq_f32(vmaxq_f32(vrecpeq_f32(v43), v42), v25);
          v47 = vminq_f32(vmaxq_f32(vrecpeq_f32(v44), v42), v25);
          v48 = vminq_f32(vmaxq_f32(vrecpeq_f32(v45), v42), v25);
          v49 = vminq_f32(vmaxq_f32(vmulq_f32(v46, vrecpsq_f32(v43, v46)), v42), v25);
          v50 = vminq_f32(vmaxq_f32(vmulq_f32(v47, vrecpsq_f32(v44, v47)), v42), v25);
          v51 = vminq_f32(vmaxq_f32(vmulq_f32(v48, vrecpsq_f32(v45, v48)), v42), v25);
          v52 = vmulq_n_f32(v28, *vbslq_s8(vceqq_f32(v45, v41), vmulq_f32(v51, vrecpsq_f32(v45, v51)), v41).i32);
          v53 = vextq_s8(v24, v24, 8uLL);
          v54 = vaddq_f32(*v20, vmulq_f32(v53, vmulq_n_f32(v26, *vbslq_s8(vceqq_f32(v43, v41), vmulq_f32(v49, vrecpsq_f32(v43, v49)), v41).i32)));
          v55 = vaddq_f32(*v20, vmulq_f32(v53, vmulq_n_f32(v27, *vbslq_s8(vceqq_f32(v44, v41), vmulq_f32(v50, vrecpsq_f32(v44, v50)), v41).i32)));
          v56 = vaddq_f32(*v20, vmulq_f32(v53, v52));
          v57 = *(a2 + 22);
          v58 = vsubq_f32(v54, v9);
          v59 = *(a2 + 10);
          if (v5)
          {
            v60 = vaddq_s32(vcvtq_s32_f32(v58), vcltzq_f32(v58));
            v61 = vsubq_f32(v58, vcvtq_f32_s32(v60)).u64[0];
            v62 = vsubq_f32(v55, v9);
            v63 = vaddq_s32(vcvtq_s32_f32(v62), vcltzq_f32(v62));
            v62.i64[0] = vsubq_f32(v62, vcvtq_f32_s32(v63)).u64[0];
            *v60.i8 = vmla_s32(vzip1_s32(*v60.i8, *v63.i8), vzip2_s32(*v60.i8, *v63.i8), vdup_n_s32(v57));
            v64 = v60.i32[1];
            v65 = (v59 + 16 * v60.i32[0]);
            v66 = vaddq_f32(*v65, vmulq_n_f32(vsubq_f32(v65[1], *v65), v61.f32[0]));
            v67 = vaddq_f32(v66, vmulq_lane_f32(vsubq_f32(vaddq_f32(v65[v57], vmulq_n_f32(vsubq_f32(v65[v57 + 1], v65[v57]), v61.f32[0])), v66), v61, 1));
            v68 = (v59 + 16 * v64);
            v69 = vaddq_f32(*v68, vmulq_n_f32(vsubq_f32(v68[1], *v68), v62.f32[0]));
            v70 = vaddq_f32(v69, vmulq_lane_f32(vsubq_f32(vaddq_f32(v68[v57], vmulq_n_f32(vsubq_f32(v68[v57 + 1], v68[v57]), v62.f32[0])), v69), *v62.f32, 1));
            v71 = vsubq_f32(v56, v9);
            v72 = vaddq_s32(vcvtq_s32_f32(v71), vcltzq_f32(v71));
            v71.i64[0] = vsubq_f32(v71, vcvtq_f32_s32(v72)).u64[0];
            v73 = (v59 + 16 * (v72.i32[0] + v72.i32[1] * v57));
            v74 = vaddq_f32(*v73, vmulq_n_f32(vsubq_f32(v73[1], *v73), v71.f32[0]));
            v75 = vaddq_f32(v74, vmulq_lane_f32(vsubq_f32(vaddq_f32(v73[v57], vmulq_n_f32(vsubq_f32(v73[v57 + 1], v73[v57]), v71.f32[0])), v74), *v71.f32, 1));
          }

          else
          {
            v76 = vaddq_f32(v58, v13);
            v77 = vcvtq_s32_f32(v76);
            v78 = vaddq_f32(vsubq_f32(v55, v9), v13);
            v79 = vcvtq_s32_f32(v78);
            *v76.f32 = vadd_s32(*v77.i8, *&vcgtq_f32(vcvtq_f32_s32(v77), v76));
            *v78.f32 = vadd_s32(*v79.i8, *&vcgtq_f32(vcvtq_f32_s32(v79), v78));
            *v76.f32 = vmla_s32(vzip1_s32(*v76.f32, *v78.f32), vzip2_s32(*v76.f32, *v78.f32), vdup_n_s32(v57));
            v80 = v76.i32[1];
            v67 = *(v59 + 16 * v76.i32[0]);
            v70 = *(v59 + 16 * v80);
            v81 = vaddq_f32(vsubq_f32(v56, v9), v13);
            v82 = vcvtq_s32_f32(v81);
            v81.i64[0] = vaddq_s32(v82, vcgtq_f32(vcvtq_f32_s32(v82), v81)).u64[0];
            v75 = *(v59 + 16 * (v81.i32[0] + v81.i32[1] * v57));
          }

          v83 = (v11 + 16 * v15);
          *v83 = v67;
          v83[1] = v70;
          v83[2] = v75;
          v17 = vaddq_f32(v19, xmmword_2603429B0);
          v15 += 3;
          v16 -= 3;
        }

        while (v16 > 2);
        v15 = v15;
      }

      if (v15 < v10)
      {
        do
        {
          v84 = this[51];
          v85 = v84[2];
          v86 = v84[3];
          v87 = vmulq_f32(vsubq_f32(v17, *v84), v85);
          v88 = vmulq_f32(v87, v87);
          v89 = vaddq_f32(v88, vrev64q_s32(v88));
          v90 = vminq_f32(vrsqrteq_f32(v89), v86);
          v91 = vminq_f32(vmulq_f32(v90, vrsqrtsq_f32(vmulq_f32(v90, v89), v90)), v86);
          v92 = v84[4];
          v93 = v84[5];
          v94 = vmulq_f32(v84[1], vmulq_f32(v89, vbslq_s8(vcgtq_f32(v89, v92), vbslq_s8(vcgtq_f32(v92, v89), v92, vmulq_f32(v91, vrsqrtsq_f32(vmulq_f32(v89, v91), v91))), v92)));
          v95 = vminq_f32(vmaxq_f32(vrecpeq_f32(v94), v93), v86);
          v96 = vminq_f32(vmaxq_f32(vmulq_f32(v95, vrecpsq_f32(v94, v95)), v93), v86);
          v97 = vaddq_f32(*v84, vmulq_f32(vextq_s8(v85, v85, 8uLL), vmulq_n_f32(v87, *vbslq_s8(vceqq_f32(v94, v92), vmulq_f32(v96, vrecpsq_f32(v94, v96)), v92).i32)));
          v98 = *(a2 + 22);
          v99 = vsubq_f32(v97, v9);
          v100 = *(a2 + 10);
          if (v5)
          {
            v101 = vaddq_s32(vcvtq_s32_f32(v99), vcltzq_f32(v99));
            v102 = vsubq_f32(v99, vcvtq_f32_s32(v101)).u64[0];
            v103 = (v100 + 16 * (v101.i32[0] + v101.i32[1] * v98));
            v104 = vaddq_f32(*v103, vmulq_n_f32(vsubq_f32(v103[1], *v103), v102.f32[0]));
            v105 = vaddq_f32(v104, vmulq_lane_f32(vsubq_f32(vaddq_f32(v103[v98], vmulq_n_f32(vsubq_f32(v103[v98 + 1], v103[v98]), v102.f32[0])), v104), v102, 1));
          }

          else
          {
            v106 = vaddq_f32(v99, v13);
            v107 = vcvtq_s32_f32(v106);
            v106.i64[0] = vaddq_s32(v107, vcgtq_f32(vcvtq_f32_s32(v107), v106)).u64[0];
            v105 = *(v100 + 16 * (v106.i32[0] + v106.i32[1] * v98));
          }

          *(v11 + 16 * v15) = v105;
          v17 = vaddq_f32(v17, xmmword_2603429B0);
          ++v15;
        }

        while (v15 < v10);
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      ++v8;
      v11 += v12;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcStarburst::GetDOD(HgcStarburst *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcStarburst::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcStarburst::HgcStarburst(HgcStarburst *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E7110;
  operator new();
}

void HgcStarburst::~HgcStarburst(HGNode *this)
{
  *this = &unk_2871E7110;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcStarburst::~HgcStarburst(this);

  HGObject::operator delete(v1);
}

uint64_t HgcStarburst::SetParameter(HgcStarburst *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcStarburst::GetParameter(HgcStarburst *this, unsigned int a2, float *a3)
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

const char *HgcTarget::GetProgram(HgcTarget *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000035b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 s0;\n    FragmentOut output;\n\n    s0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    s0.xy = s0.xy*hg_Params[2].xy;\n    s0.x = dot(s0.xyz, s0.xyz);\n    s0.x = sqrt(s0.x);\n    s0.xy = hg_Params[1].xy*s0.xx;\n    s0.xy = s0.xy*hg_Params[2].zw;\n    s0.xy = hg_Params[0].xy*hg_Params[3].xy + s0.xy;\n    s0.xy = s0.xy + hg_Params[4].xy;\n    s0.xy = s0.xy*hg_Params[4].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=ac96bfce:09ba92e3:8764527f:8b5afa0f\n//SIG=00400000:00000000:00000000:00000001:0000:0005:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000353\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    r0.xy = r0.xy*hg_Params[2].xy;\n    r0.x = dot(r0.xyz, r0.xyz);\n    r0.x = sqrt(r0.x);\n    r0.xy = hg_Params[1].xy*r0.xx;\n    r0.xy = r0.xy*hg_Params[2].zw;\n    r0.xy = hg_Params[0].xy*hg_Params[3].xy + r0.xy;\n    r0.xy = r0.xy + hg_Params[4].xy;\n    r0.xy = r0.xy*hg_Params[4].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=05d694f9:b6299cf1:8d93c22c:699acf95\n//SIG=00000000:00000000:00000000:00000000:0000:0005:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003cb\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    highp vec4 r0;\n\n    r0.xyz = hg_TexCoord0.xyz - hg_ProgramLocal0.xyz;\n    r0.xy = r0.xy*hg_ProgramLocal2.xy;\n    r0.x = dot(r0.xyz, r0.xyz);\n    r0.x = sqrt(r0.x);\n    r0.xy = hg_ProgramLocal1.xy*r0.xx;\n    r0.xy = r0.xy*hg_ProgramLocal2.zw;\n    r0.xy = hg_ProgramLocal0.xy*hg_ProgramLocal3.xy + r0.xy;\n    r0.xy = r0.xy + hg_ProgramLocal4.xy;\n    r0.xy = r0.xy*hg_ProgramLocal4.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=75a310c2:453607b6:d982f4ee:d995b63f\n//SIG=00000000:00000000:00000000:00000000:0000:0005:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAA0F10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAA1090(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAA10E0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAA10D8);
}

uint64_t HgcTarget::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 4, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcTarget::Bind(HgcTarget *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcTarget::RenderTile(float32x4_t **this, float32x4_t **a2)
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
          v23 = this[51];
          v24 = v23[1];
          v25 = vsubq_f32(v19, *v23);
          v26 = vsubq_f32(v20, *v23);
          v27 = vsubq_f32(v21, *v23);
          v28 = vsubq_f32(v22, *v23);
          v29 = v23[2];
          v30.i64[0] = vmulq_f32(v25, v29).u64[0];
          v31.i64[0] = vmulq_f32(v26, v29).u64[0];
          v32.i64[0] = vmulq_f32(v27, v29).u64[0];
          v33.i64[0] = vmulq_f32(v28, v29).u64[0];
          v30.i64[1] = v25.i64[1];
          v31.i64[1] = v26.i64[1];
          v32.i64[1] = v27.i64[1];
          v33.i64[1] = v28.i64[1];
          v34 = vmulq_f32(v30, v30);
          v35 = vmulq_f32(v31, v31);
          v36 = vmulq_f32(v32, v32);
          v37 = vmulq_f32(v33, v33);
          v38 = vaddq_f32(vextq_s8(v34, v34, 8uLL), vaddq_f32(v34, vrev64q_s32(v34)));
          v39 = vaddq_f32(vextq_s8(v35, v35, 8uLL), vaddq_f32(v35, vrev64q_s32(v35)));
          v40 = vaddq_f32(vextq_s8(v36, v36, 8uLL), vaddq_f32(v36, vrev64q_s32(v36)));
          v41 = vaddq_f32(vextq_s8(v37, v37, 8uLL), vaddq_f32(v37, vrev64q_s32(v37)));
          v42 = v23[4];
          v43 = vminq_f32(vrsqrteq_f32(v38), v42);
          v44 = vminq_f32(vrsqrteq_f32(v39), v42);
          v45 = vminq_f32(vrsqrteq_f32(v40), v42);
          v46 = vminq_f32(vrsqrteq_f32(v41), v42);
          v47 = vminq_f32(vmulq_f32(v43, vrsqrtsq_f32(vmulq_f32(v43, v38), v43)), v42);
          v48 = vminq_f32(vmulq_f32(v44, vrsqrtsq_f32(vmulq_f32(v44, v39), v44)), v42);
          v49 = vminq_f32(vmulq_f32(v45, vrsqrtsq_f32(vmulq_f32(v40, v45), v45)), v42);
          v50 = vminq_f32(vmulq_f32(v46, vrsqrtsq_f32(vmulq_f32(v41, v46), v46)), v42);
          v51 = vmulq_n_f32(v24, vmulq_f32(v38, vminq_f32(vmulq_f32(v47, vrsqrtsq_f32(vmulq_f32(v38, v47), v47)), v42)).f32[0]);
          v52 = vmulq_n_f32(v24, vmulq_f32(v39, vminq_f32(vmulq_f32(v48, vrsqrtsq_f32(vmulq_f32(v39, v48), v48)), v42)).f32[0]);
          v53 = vextq_s8(v29, v29, 8uLL);
          v54 = vmulq_f32(v53, vmulq_n_f32(v24, vmulq_f32(v40, vminq_f32(vmulq_f32(v49, vrsqrtsq_f32(vmulq_f32(v40, v49), v49)), v42)).f32[0]));
          v55 = vmulq_f32(v53, vmulq_n_f32(v24, vmulq_f32(v41, vminq_f32(vmulq_f32(v50, vrsqrtsq_f32(vmulq_f32(v41, v50), v50)), v42)).f32[0]));
          v56 = vmulq_f32(*v23, v23[3]);
          v57 = vaddq_f32(v56, vmulq_f32(v53, v51));
          v58 = vaddq_f32(v56, vmulq_f32(v53, v52));
          v59 = vaddq_f32(v56, v54);
          v60 = vaddq_f32(v56, v55);
          v61 = *(a2 + 22);
          v62 = vsubq_f32(v57, v9);
          v63 = a2[10];
          if (v5)
          {
            v64 = vaddq_s32(vcvtq_s32_f32(v62), vcltzq_f32(v62));
            v65 = vsubq_f32(v62, vcvtq_f32_s32(v64)).u64[0];
            v66 = vsubq_f32(v58, v9);
            v67 = vaddq_s32(vcvtq_s32_f32(v66), vcltzq_f32(v66));
            v68 = vsubq_f32(v66, vcvtq_f32_s32(v67)).u64[0];
            v69 = vdup_n_s32(v61);
            *v64.i8 = vmla_s32(vzip1_s32(*v64.i8, *v67.i8), vzip2_s32(*v64.i8, *v67.i8), v69);
            v70 = &v63[v64.i32[0]];
            v71 = vaddq_f32(*v70, vmulq_n_f32(vsubq_f32(v70[1], *v70), v65.f32[0]));
            v72 = vaddq_f32(v71, vmulq_lane_f32(vsubq_f32(vaddq_f32(v70[v61], vmulq_n_f32(vsubq_f32(v70[v61 + 1], v70[v61]), v65.f32[0])), v71), v65, 1));
            v73 = &v63[v64.i32[1]];
            v74 = vaddq_f32(*v73, vmulq_n_f32(vsubq_f32(v73[1], *v73), v68.f32[0]));
            v75 = vaddq_f32(v74, vmulq_lane_f32(vsubq_f32(vaddq_f32(v73[v61], vmulq_n_f32(vsubq_f32(v73[v61 + 1], v73[v61]), v68.f32[0])), v74), v68, 1));
            v76 = vsubq_f32(v59, v9);
            v77 = vaddq_s32(vcvtq_s32_f32(v76), vcltzq_f32(v76));
            v76.i64[0] = vsubq_f32(v76, vcvtq_f32_s32(v77)).u64[0];
            v78 = vsubq_f32(v60, v9);
            v79 = vaddq_s32(vcvtq_s32_f32(v78), vcltzq_f32(v78));
            *v77.i8 = vmla_s32(vzip1_s32(*v77.i8, *v79.i8), vzip2_s32(*v77.i8, *v79.i8), v69);
            v80 = &v63[v77.i32[0]];
            v79.i64[0] = vsubq_f32(v78, vcvtq_f32_s32(v79)).u64[0];
            v81 = vaddq_f32(*v80, vmulq_n_f32(vsubq_f32(v80[1], *v80), v76.f32[0]));
            v82 = vaddq_f32(v81, vmulq_lane_f32(vsubq_f32(vaddq_f32(v80[v61], vmulq_n_f32(vsubq_f32(v80[v61 + 1], v80[v61]), v76.f32[0])), v81), *v76.f32, 1));
            v83 = &v63[v77.i32[1]];
            v84 = vaddq_f32(*v83, vmulq_n_f32(vsubq_f32(v83[1], *v83), *v79.i32));
            v85 = vaddq_f32(v84, vmulq_lane_f32(vsubq_f32(vaddq_f32(v83[v61], vmulq_n_f32(vsubq_f32(v83[v61 + 1], v83[v61]), *v79.i32)), v84), *v79.i8, 1));
          }

          else
          {
            v86 = vaddq_f32(v62, v14);
            v87 = vcvtq_s32_f32(v86);
            v88 = vaddq_f32(vsubq_f32(v58, v9), v14);
            v89 = vcvtq_s32_f32(v88);
            *v86.f32 = vadd_s32(*v87.i8, *&vcgtq_f32(vcvtq_f32_s32(v87), v86));
            *v88.f32 = vadd_s32(*v89.i8, *&vcgtq_f32(vcvtq_f32_s32(v89), v88));
            *v89.i8 = vdup_n_s32(v61);
            *v88.f32 = vmla_s32(vzip1_s32(*v86.f32, *v88.f32), vzip2_s32(*v86.f32, *v88.f32), *v89.i8);
            v90 = v88.i32[1];
            v72 = v63[v88.i32[0]];
            v75 = v63[v90];
            v91 = vaddq_f32(vsubq_f32(v59, v9), v14);
            v92 = vcvtq_s32_f32(v91);
            v93 = vaddq_f32(vsubq_f32(v60, v9), v14);
            v94 = vcvtq_s32_f32(v93);
            *v93.f32 = vadd_s32(*v94.i8, *&vcgtq_f32(vcvtq_f32_s32(v94), v93));
            *v91.f32 = vadd_s32(*v92.i8, *&vcgtq_f32(vcvtq_f32_s32(v92), v91));
            *v93.f32 = vmla_s32(vzip1_s32(*v91.f32, *v93.f32), vzip2_s32(*v91.f32, *v93.f32), *v89.i8);
            v95 = v93.i32[1];
            v82 = v63[v93.i32[0]];
            v85 = v63[v95];
          }

          v17[-2] = v72;
          v17[-1] = v75;
          *v17 = v82;
          v17[1] = v85;
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
          v96 = this[51];
          v97 = vsubq_f32(v19, *v96);
          v98 = v96[2];
          v99.i64[0] = vmulq_f32(v97, v98).u64[0];
          v99.i64[1] = v97.i64[1];
          v100 = vmulq_f32(v99, v99);
          v101 = vaddq_f32(vextq_s8(v100, v100, 8uLL), vaddq_f32(v100, vrev64q_s32(v100)));
          v102 = v96[4];
          v103 = vminq_f32(vrsqrteq_f32(v101), v102);
          v104 = vminq_f32(vmulq_f32(v103, vrsqrtsq_f32(vmulq_f32(v103, v101), v103)), v102);
          v105 = vaddq_f32(vmulq_f32(*v96, v96[3]), vmulq_f32(vextq_s8(v98, v98, 8uLL), vmulq_n_f32(v96[1], vmulq_f32(vminq_f32(vmulq_f32(v104, vrsqrtsq_f32(vmulq_f32(v104, v101), v104)), v102), v101).f32[0])));
          v106 = *(a2 + 22);
          v107 = vsubq_f32(v105, v9);
          v108 = a2[10];
          if (v5)
          {
            v109 = vaddq_s32(vcvtq_s32_f32(v107), vcltzq_f32(v107));
            v110 = vsubq_f32(v107, vcvtq_f32_s32(v109)).u64[0];
            v111 = &v108[v109.i32[0] + v109.i32[1] * v106];
            v112 = vaddq_f32(*v111, vmulq_n_f32(vsubq_f32(v111[1], *v111), v110.f32[0]));
            v113 = vaddq_f32(v112, vmulq_lane_f32(vsubq_f32(vaddq_f32(v111[v106], vmulq_n_f32(vsubq_f32(v111[v106 + 1], v111[v106]), v110.f32[0])), v112), v110, 1));
          }

          else
          {
            v114 = vaddq_f32(v107, v14);
            v115 = vcvtq_s32_f32(v114);
            v114.i64[0] = vaddq_s32(v115, vcgtq_f32(vcvtq_f32_s32(v115), v114)).u64[0];
            v113 = v108[v114.i32[0] + v114.i32[1] * v106];
          }

          v11[v16] = v113;
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

uint64_t HgcTarget::GetDOD(HgcTarget *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcTarget::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcTarget::HgcTarget(HgcTarget *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E7378;
  operator new();
}

void HgcTarget::~HgcTarget(HGNode *this)
{
  *this = &unk_2871E7378;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcTarget::~HgcTarget(this);

  HGObject::operator delete(v1);
}

uint64_t HgcTarget::SetParameter(HgcTarget *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcTarget::GetParameter(HgcTarget *this, unsigned int a2, float *a3)
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

const char *HgcTwirl::GetProgram(HgcTwirl *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005e1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-3.000000000, 1.000000000, 2.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2, s3;\n    FragmentOut output;\n\n    s0 = hg_Params[4];\n    s1.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    s1.xyz = s1.xyz*hg_Params[2].xyx;\n    s2.x = dot(s1.xyz, s1.xyz);\n    s2.x = rsqrt(s2.x);\n    s2.x = s2.x*hg_Params[1].x;\n    s2.x = clamp(1.00000f / s2.x, 0.00000f, 1.00000f);\n    s3.x = s2.x*s2.x;\n    s2.x = s3.x*s2.x;\n    s3.x = s3.x*float(c0.x) + float(c0.y);\n    s3.x = s2.x*float(c0.z) + s3.x;\n    s3.x = s3.x*hg_Params[1].y;\n    s2.x = cos(s3.x);\n    s2.y = sin(s3.x);\n    s3.xy = float2(-s2.y, s2.x);\n    s2.x = dot(s1.xy, s2.xy);\n    s2.y = dot(s1.xy, s3.xy);\n    s2.xy = s2.xy*hg_Params[2].zw + hg_Params[0].xy;\n    s1.xy = s2.xy + hg_Params[3].xy;\n    s1.xy = s1.xy*hg_Params[3].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    s2.xy = s2.xy - s0.zw;\n    s3 = fmin(s2.yyyy, s2.xxxx);\n    s2.xy = s0.xy - s2.xy;\n    s3 = fmin(s2.xxxx, s3);\n    s2 = fmin(s2.yyyy, s3);\n    output.color0 = select(float4(r0), float4(c0.wwww), s2 < 0.00000h);\n    return output;\n}\n//MD5=ef233230:e2d29d8a:2f8950ac:cbce6f0b\n//SIG=00400000:00000000:00000000:00000001:0001:0005:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005a9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-3.000000000, 1.000000000, 2.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Params[4];\n    r1.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    r1.xyz = r1.xyz*hg_Params[2].xyx;\n    r2.x = dot(r1.xyz, r1.xyz);\n    r2.x = rsqrt(r2.x);\n    r2.x = r2.x*hg_Params[1].x;\n    r2.x = clamp(1.00000f / r2.x, 0.00000f, 1.00000f);\n    r3.x = r2.x*r2.x;\n    r2.x = r3.x*r2.x;\n    r3.x = r3.x*c0.x + c0.y;\n    r3.x = r2.x*c0.z + r3.x;\n    r3.x = r3.x*hg_Params[1].y;\n    r2.x = cos(r3.x);\n    r2.y = sin(r3.x);\n    r3.xy = float2(-r2.y, r2.x);\n    r2.x = dot(r1.xy, r2.xy);\n    r2.y = dot(r1.xy, r3.xy);\n    r2.xy = r2.xy*hg_Params[2].zw + hg_Params[0].xy;\n    r1.xy = r2.xy + hg_Params[3].xy;\n    r1.xy = r1.xy*hg_Params[3].zw;\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    r2.xy = r2.xy - r0.zw;\n    r3 = fmin(r2.yyyy, r2.xxxx);\n    r2.xy = r0.xy - r2.xy;\n    r3 = fmin(r2.xxxx, r3);\n    r2 = fmin(r2.yyyy, r3);\n    output.color0 = select(r1, c0.wwww, r2 < 0.00000f);\n    return output;\n}\n//MD5=34879b26:7aacb224:e8cc446a:956198eb\n//SIG=00000000:00000000:00000000:00000000:0001:0005:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000067f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-3.000000000, 1.000000000, 2.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = hg_ProgramLocal4;\n    r1.xyz = hg_TexCoord0.xyz - hg_ProgramLocal0.xyz;\n    r1.xyz = r1.xyz*hg_ProgramLocal2.xyx;\n    r2.x = dot(r1.xyz, r1.xyz);\n    r2.x = inversesqrt(r2.x);\n    r2.x = r2.x*hg_ProgramLocal1.x;\n    r2.x = clamp(1.00000 / r2.x, 0.00000, 1.00000);\n    r3.x = r2.x*r2.x;\n    r2.x = r3.x*r2.x;\n    r3.x = r3.x*c0.x + c0.y;\n    r3.x = r2.x*c0.z + r3.x;\n    r3.x = r3.x*hg_ProgramLocal1.y;\n    r2.x = cos(r3.x);\n    r2.y = sin(r3.x);\n    r3.xy = vec2(-r2.y, r2.x);\n    r2.x = dot(r1.xy, r2.xy);\n    r2.y = dot(r1.xy, r3.xy);\n    r2.xy = r2.xy*hg_ProgramLocal2.zw + hg_ProgramLocal0.xy;\n    r1.xy = r2.xy + hg_ProgramLocal3.xy;\n    r1.xy = r1.xy*hg_ProgramLocal3.zw;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    r2.xy = r2.xy - r0.zw;\n    r3 = min(r2.yyyy, r2.xxxx);\n    r2.xy = r0.xy - r2.xy;\n    r3 = min(r2.xxxx, r3);\n    r2 = min(r2.yyyy, r3);\n    gl_FragColor = vec4(r2.x < 0.00000 ? c0.w : r1.x, r2.y < 0.00000 ? c0.w : r1.y, r2.z < 0.00000 ? c0.w : r1.z, r2.w < 0.00000 ? c0.w : r1.w);\n}\n//MD5=c7939146:947dda82:3865c810:1124fc93\n//SIG=00000000:00000000:00000000:00000000:0001:0005:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAA1DAC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAA1F2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAA1F7C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAA1F74);
}

uint64_t HgcTwirl::BindTexture(uint64_t a1, _DWORD *a2, int a3)
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
    v7.n128_f32[0] = 1.0 / (a2[57] - a2[55]);
    v8.n128_f32[0] = 1.0 / (a2[58] - a2[56]);
  }

  v5.n128_f32[0] = a2[60];
  v6.n128_f32[0] = a2[61];
  (*(*a2 + 136))(a2, 3, v5, v6, v7, v8);
  (*(*a2 + 136))(a2, 4, (a2[49] - a2[47]), (a2[50] - a2[48]), a2[47], a2[48]);
  return 0;
}

uint64_t HgcTwirl::Bind(HgcTwirl *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcTwirl::RenderTile(HGNode *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *(a2 + 2);
  v190 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  v8 = HGTile::Renderer(a2);
  v9 = HGTile::Renderer(a2);
  Input = HGRenderer::GetInput(v9, this, 0);
  DOD = HGRenderer::GetDOD(v8, Input);
  if (v7 >= 1)
  {
    v13 = 0;
    *v14.f32 = vadd_f32(vcvt_f32_s32(v190), 0x3F0000003F000000);
    v14.i64[1] = 0x3F80000000000000;
    *v15.i8 = vsub_s32(v12, DOD);
    v15.u64[1] = DOD;
    v16 = v6 - v190.i32[0];
    v17 = vcvtq_f32_s32(v15);
    v18 = *(a2 + 2);
    v19 = vextq_s8(v17, v17, 8uLL);
    v20 = 16 * *(a2 + 6);
    v21.i64[0] = 0x3F0000003F000000;
    v21.i64[1] = 0x3F0000003F000000;
    v22 = v14;
    do
    {
      if (v16 < 2)
      {
        v23 = 0;
        v25 = v22;
      }

      else
      {
        v23 = 0;
        v24 = v6 - v190.i32[0];
        v25 = v22;
        do
        {
          v26 = vaddq_f32(v25, xmmword_2603429B0);
          v27 = *(this + 51);
          v28 = *(v27 + 16);
          v29 = vsubq_f32(v25, *v27);
          v30 = *(v27 + 32);
          v31 = *(v27 + 48);
          v32 = vdupq_lane_s64(v30.i64[0], 0);
          v33 = vmulq_f32(v29, v32);
          v34 = vmulq_f32(vsubq_f32(v26, *v27), v32);
          v35 = vmulq_f32(v33, v33);
          v36 = vmulq_f32(v34, v34);
          v37 = vaddq_f32(vextq_s8(v35, v35, 8uLL), vaddq_f32(v35, vrev64q_s32(v35)));
          v38 = vaddq_f32(vextq_s8(v36, v36, 8uLL), vaddq_f32(v36, vrev64q_s32(v36)));
          v39 = vminq_f32(vrsqrteq_f32(v37), v31);
          v40 = vminq_f32(vrsqrteq_f32(v38), v31);
          v41 = vminq_f32(vmulq_f32(v39, vrsqrtsq_f32(vmulq_f32(v39, v37), v39)), v31);
          v42 = vminq_f32(vmulq_f32(v40, vrsqrtsq_f32(vmulq_f32(v40, v38), v40)), v31);
          v43 = vmulq_f32(vmulq_f32(v41, vrsqrtsq_f32(vmulq_f32(v37, v41), v41)), v28);
          v44 = vmulq_f32(vmulq_f32(v42, vrsqrtsq_f32(vmulq_f32(v38, v42), v42)), v28);
          v46 = *(v27 + 64);
          v45 = *(v27 + 80);
          v47 = vminq_f32(vmaxq_f32(vrecpeq_f32(v43), v46), v31);
          v48 = vminq_f32(vmaxq_f32(vrecpeq_f32(v44), v46), v31);
          v49 = vminq_f32(vmaxq_f32(vmulq_f32(v47, vrecpsq_f32(v43, v47)), v46), v31);
          v50 = vminq_f32(vmaxq_f32(vmulq_f32(v48, vrecpsq_f32(v44, v48)), v46), v31);
          v51 = vmulq_f32(v50, vrecpsq_f32(v44, v50));
          v52 = vmaxq_f32(vmulq_f32(v49, vrecpsq_f32(v43, v49)), v45);
          v53 = vmaxq_f32(v51, v45);
          v54 = *(v27 + 96);
          v55 = *(v27 + 112);
          v56 = vminq_f32(v52, v54);
          v57 = vminq_f32(v53, v54);
          v58 = vmulq_f32(v56, v56);
          v59 = vmulq_f32(v57, v57);
          v60 = vaddq_f32(vaddq_f32(v54, vmulq_f32(v58, v55)), vmulq_lane_f32(vmulq_f32(v56, v58), *v55.f32, 1));
          v61 = vaddq_f32(vaddq_f32(v54, vmulq_f32(v59, v55)), vmulq_lane_f32(vmulq_f32(v57, v59), *v55.f32, 1));
          v62 = vmulq_lane_f32(v60, *v28.f32, 1);
          v63 = vmulq_lane_f32(v61, *v28.f32, 1);
          v64 = *(v27 + 128);
          v65 = *(v27 + 144);
          v66 = vmulq_f32(v64, v62);
          v67 = vmulq_f32(v64, v63);
          v68 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
          v69 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
          v70 = vabdq_f32(vsubq_f32(v66, vsubq_f32(v68, vandq_s8(v54, vcgtq_f32(v68, v66)))), v65);
          v71 = vabdq_f32(vsubq_f32(v67, vsubq_f32(v69, vandq_s8(v54, vcgtq_f32(v69, v67)))), v65);
          v72 = *(v27 + 160);
          v73 = *(v27 + 176);
          v74 = vsubq_f32(v70, v72);
          v75 = vsubq_f32(v71, v72);
          v76 = vmulq_f32(v74, v74);
          v77 = vmulq_f32(v75, v75);
          v79 = *(v27 + 192);
          v78 = *(v27 + 208);
          v80 = vmulq_f32(v76, vaddq_f32(v78, vmulq_f32(v76, vaddq_f32(v73, vmulq_f32(v79, v76)))));
          v82 = *(v27 + 224);
          v81 = *(v27 + 240);
          v83 = vmulq_f32(v74, vaddq_f32(v82, v80));
          v84 = vmulq_f32(v75, vaddq_f32(v82, vmulq_f32(v77, vaddq_f32(v78, vmulq_f32(v77, vaddq_f32(v73, vmulq_f32(v79, v77)))))));
          v85 = vaddq_f32(vmulq_f32(vrev64q_s32(v62), v78), v82);
          v86 = vaddq_f32(vmulq_f32(vrev64q_s32(v63), v78), v82);
          v87 = vcvtq_f32_s32(vcvtq_s32_f32(v85));
          v88 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
          v89 = vaddq_f32(v82, vabdq_f32(vsubq_f32(v85, vsubq_f32(v87, vandq_s8(v79, vcgtq_f32(v87, v85)))), v73));
          v90 = vaddq_f32(v82, vabdq_f32(vsubq_f32(v86, vsubq_f32(v88, vandq_s8(v79, vcgtq_f32(v88, v86)))), v73));
          v91 = vmulq_f32(v89, v89);
          v92 = vmulq_f32(v90, v90);
          v93 = vaddq_f32(v72, vmulq_f32(v65, v91));
          v94 = vaddq_f32(v72, vmulq_f32(v65, v92));
          v95 = vaddq_f32(v64, vmulq_f32(v91, v93));
          v96 = vaddq_f32(v64, vmulq_f32(v92, v94));
          v97 = vaddq_f32(v54, vmulq_f32(v91, v95));
          v98 = vaddq_f32(v54, vmulq_f32(v92, v96));
          v99 = vbslq_s8(v81, v83, vmulq_f32(v89, v97));
          v100 = vbslq_s8(v81, v84, vmulq_f32(v90, v98));
          v101 = vrev64q_s32(v99);
          v102 = vrev64q_s32(v100);
          v103 = vmulq_f32(v33, v99);
          v104 = vmulq_f32(v34, v100);
          v105 = vmulq_f32(v33, vbslq_s8(v81, vnegq_f32(v101), v101));
          v106 = vmulq_f32(v34, vbslq_s8(v81, vnegq_f32(v102), v102));
          v107 = vbslq_s8(v81, vaddq_f32(v104, vrev64q_s32(v104)), vaddq_f32(v106, vrev64q_s32(v106)));
          v108 = vextq_s8(v30, v30, 8uLL);
          v109 = vaddq_f32(*v27, vmulq_f32(v108, vbslq_s8(v81, vaddq_f32(v103, vrev64q_s32(v103)), vaddq_f32(v105, vrev64q_s32(v105)))));
          v110 = vaddq_f32(*v27, vmulq_f32(v108, v107));
          v111 = *(a2 + 22);
          v112 = vsubq_f32(v109, v14);
          v113 = *(a2 + 10);
          if (v5)
          {
            v114 = vaddq_s32(vcvtq_s32_f32(v112), vcltzq_f32(v112));
            v115 = vsubq_f32(v112, vcvtq_f32_s32(v114)).u64[0];
            v116 = vsubq_f32(v110, v14);
            v117 = vaddq_s32(vcvtq_s32_f32(v116), vcltzq_f32(v116));
            v116.i64[0] = vsubq_f32(v116, vcvtq_f32_s32(v117)).u64[0];
            *v114.i8 = vmla_s32(vzip1_s32(*v114.i8, *v117.i8), vzip2_s32(*v114.i8, *v117.i8), vdup_n_s32(v111));
            v118 = v114.i32[1];
            v119 = (v113 + 16 * v114.i32[0]);
            v120 = vaddq_f32(*v119, vmulq_n_f32(vsubq_f32(v119[1], *v119), v115.f32[0]));
            v121 = vaddq_f32(v120, vmulq_lane_f32(vsubq_f32(vaddq_f32(v119[v111], vmulq_n_f32(vsubq_f32(v119[v111 + 1], v119[v111]), v115.f32[0])), v120), v115, 1));
            v122 = (v113 + 16 * v118);
            v123 = vaddq_f32(*v122, vmulq_n_f32(vsubq_f32(v122[1], *v122), v116.f32[0]));
            v124 = vaddq_f32(v123, vmulq_lane_f32(vsubq_f32(vaddq_f32(v122[v111], vmulq_n_f32(vsubq_f32(v122[v111 + 1], v122[v111]), v116.f32[0])), v123), *v116.f32, 1));
          }

          else
          {
            v125 = vaddq_f32(v112, v21);
            v126 = vcvtq_s32_f32(v125);
            v127 = vaddq_f32(vsubq_f32(v110, v14), v21);
            v128 = vcvtq_s32_f32(v127);
            *v125.f32 = vadd_s32(*v126.i8, *&vcgtq_f32(vcvtq_f32_s32(v126), v125));
            *v126.i8 = vadd_s32(*v128.i8, *&vcgtq_f32(vcvtq_f32_s32(v128), v127));
            *v125.f32 = vmla_s32(vzip1_s32(*v125.f32, *v126.i8), vzip2_s32(*v125.f32, *v126.i8), vdup_n_s32(v111));
            v129 = v125.i32[1];
            v121 = *(v113 + 16 * v125.i32[0]);
            v124 = *(v113 + 16 * v129);
          }

          v130 = vsubq_f32(v109, v19);
          v131 = vsubq_f32(v110, v19);
          v132 = vminq_f32(vdupq_lane_s32(*v130.f32, 1), vdupq_lane_s32(*v130.f32, 0));
          v133 = vminq_f32(vdupq_lane_s32(*v131.f32, 1), vdupq_lane_s32(*v131.f32, 0));
          v130.i64[0] = vsubq_f32(v17, v130).u64[0];
          v131.i64[0] = vsubq_f32(v17, v131).u64[0];
          v134 = (v18 + 16 * v23);
          *v134 = vbslq_s8(vcgtq_f32(v45, vminq_f32(vdupq_lane_s32(*v130.f32, 1), vminq_f32(vdupq_lane_s32(*v130.f32, 0), v132))), v45, v121);
          v134[1] = vbslq_s8(vcgtq_f32(v45, vminq_f32(vdupq_lane_s32(*v131.f32, 1), vminq_f32(vdupq_lane_s32(*v131.f32, 0), v133))), v45, v124);
          v25 = vaddq_f32(v26, xmmword_2603429B0);
          v23 += 2;
          v24 -= 2;
        }

        while (v24 > 1);
        v23 = v23;
      }

      if (v23 < v16)
      {
        v135 = *(this + 51);
        v136 = *(v135 + 16);
        v137 = *(v135 + 32);
        v138 = *(v135 + 48);
        v139 = vmulq_f32(vsubq_f32(v25, *v135), vdupq_lane_s64(v137.i64[0], 0));
        v140 = vmulq_f32(v139, v139);
        v141 = vaddq_f32(vextq_s8(v140, v140, 8uLL), vaddq_f32(v140, vrev64q_s32(v140)));
        v142 = vminq_f32(vrsqrteq_f32(v141), v138);
        v143 = vminq_f32(vmulq_f32(v142, vrsqrtsq_f32(vmulq_f32(v142, v141), v142)), v138);
        v144 = vmulq_f32(vmulq_f32(v143, vrsqrtsq_f32(vmulq_f32(v143, v141), v143)), v136);
        v146 = *(v135 + 64);
        v145 = *(v135 + 80);
        v147 = vminq_f32(vmaxq_f32(vrecpeq_f32(v144), v146), v138);
        v148 = vminq_f32(vmaxq_f32(vmulq_f32(v147, vrecpsq_f32(v144, v147)), v146), v138);
        v149 = vmaxq_f32(vmulq_f32(v148, vrecpsq_f32(v144, v148)), v145);
        v150 = *(v135 + 96);
        v151 = vminq_f32(v149, v150);
        v152 = vmulq_f32(v151, v151);
        v153 = vmulq_lane_f32(vaddq_f32(vaddq_f32(v150, vmulq_f32(v152, *(v135 + 112))), vmulq_lane_f32(vmulq_f32(v151, v152), *(v135 + 112), 1)), *v136.f32, 1);
        v154 = *(v135 + 128);
        v155 = *(v135 + 144);
        v156 = vmulq_f32(v154, v153);
        v157 = vcvtq_f32_s32(vcvtq_s32_f32(v156));
        v158 = vabdq_f32(vsubq_f32(v156, vsubq_f32(v157, vandq_s8(v150, vcgtq_f32(v157, v156)))), v155);
        v159 = *(v135 + 160);
        v160 = *(v135 + 176);
        v161 = vsubq_f32(v158, v159);
        v162 = vmulq_f32(v161, v161);
        v163 = *(v135 + 192);
        v164 = *(v135 + 208);
        v165 = *(v135 + 224);
        v166 = *(v135 + 240);
        v167 = vmulq_f32(v161, vaddq_f32(v165, vmulq_f32(v162, vaddq_f32(v164, vmulq_f32(v162, vaddq_f32(v160, vmulq_f32(v163, v162)))))));
        v168 = vaddq_f32(vmulq_f32(vrev64q_s32(v153), v164), v165);
        v169 = vcvtq_f32_s32(vcvtq_s32_f32(v168));
        v170 = vaddq_f32(v165, vabdq_f32(vsubq_f32(v168, vsubq_f32(v169, vandq_s8(v163, vcgtq_f32(v169, v168)))), v160));
        v171 = vmulq_f32(v170, v170);
        v172 = vbslq_s8(v166, v167, vmulq_f32(v170, vaddq_f32(v150, vmulq_f32(v171, vaddq_f32(v154, vmulq_f32(v171, vaddq_f32(v159, vmulq_f32(v155, v171))))))));
        v173 = vrev64q_s32(v172);
        v174 = vmulq_f32(v139, v172);
        v175 = vmulq_f32(v139, vbslq_s8(v166, vnegq_f32(v173), v173));
        v176 = vaddq_f32(*v135, vmulq_f32(vextq_s8(v137, v137, 8uLL), vbslq_s8(v166, vaddq_f32(v174, vrev64q_s32(v174)), vaddq_f32(v175, vrev64q_s32(v175)))));
        v177 = *(a2 + 22);
        v178 = vsubq_f32(v176, v14);
        v179 = *(a2 + 10);
        if (v5)
        {
          v180 = vaddq_s32(vcvtq_s32_f32(v178), vcltzq_f32(v178));
          v181 = vsubq_f32(v178, vcvtq_f32_s32(v180)).u64[0];
          v182 = (v179 + 16 * (v180.i32[0] + v180.i32[1] * v177));
          v183 = vaddq_f32(*v182, vmulq_n_f32(vsubq_f32(v182[1], *v182), v181.f32[0]));
          v184 = vaddq_f32(v183, vmulq_lane_f32(vsubq_f32(vaddq_f32(v182[v177], vmulq_n_f32(vsubq_f32(v182[v177 + 1], v182[v177]), v181.f32[0])), v183), v181, 1));
        }

        else
        {
          v185 = vaddq_f32(v178, v21);
          v186 = vcvtq_s32_f32(v185);
          v185.i64[0] = vaddq_s32(v186, vcgtq_f32(vcvtq_f32_s32(v186), v185)).u64[0];
          v184 = *(v179 + 16 * (v185.i32[0] + v185.i32[1] * v177));
        }

        v187 = vsubq_f32(v176, v19);
        v188 = vminq_f32(vdupq_lane_s32(*v187.f32, 1), vdupq_lane_s32(*v187.f32, 0));
        v187.i64[0] = vsubq_f32(v17, v187).u64[0];
        *(v18 + 16 * v23) = vbslq_s8(vcgtq_f32(v145, vminq_f32(vdupq_lane_s32(*v187.f32, 1), vminq_f32(vdupq_lane_s32(*v187.f32, 0), v188))), v145, v184);
      }

      v22 = vaddq_f32(v22, xmmword_2603429C0);
      v18 += v20;
      ++v13;
    }

    while (v13 != v7);
  }

  return 0;
}

uint64_t HgcTwirl::GetDOD(HgcTwirl *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcTwirl::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcTwirl::HgcTwirl(HgcTwirl *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E75E0;
  operator new();
}

void HgcTwirl::~HgcTwirl(HGNode *this)
{
  *this = &unk_2871E75E0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40104B78CFLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcTwirl::~HgcTwirl(this);

  HGObject::operator delete(v1);
}

uint64_t HgcTwirl::SetParameter(HgcTwirl *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcTwirl::GetParameter(HgcTwirl *this, unsigned int a2, float *a3)
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

const char *HgcUnderwaterRefractV2::GetProgram(HgcUnderwaterRefractV2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n"
             "//LEN=0000000ce4\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< half > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]])\n"
             "{\n"
             "    const half4 c0 = half4(6.281380177, 1.000000000, 0.000000000, 0.5000000000);\n"
             "    float4 s0, s1, s2, s3;\n"
             "    FragmentOut output;\n"
             "\n"
             "    s0.x = dot(frag._texCoord0, hg_Params[2]);\n"
             "    s0.w = 1.00000f / s0.x;\n"
             "    s0.z = 1.00000f / hg_Params[6].z;\n"
             "    s0.y = dot(frag._texCoord0, hg_Params[1]);\n"
             "    s0.x = dot(frag._texCoord0, hg_Params[0]);\n"
             "    s0.xy = s0.xy*s0.ww;\n"
             "    s1.w = s0.x*s0.z + float(c0.w);\n"
             "    s1.z = 1.00000f / hg_Params[7].z;\n"
             "    s1.z = s0.y*s1.z + float(c0.w);\n"
             "    s0.zw = mix(hg_Params[9].xy, hg_Params[9].zw, s1.ww);\n"
             "    s1.xy = mix(hg_Params[14].xy, hg_Params[14].zw, s1.ww);\n"
             "    s2.xy = mix(s0.zw, s1.xy, s1.zz);\n"
             "    s2.xy = s2.xy*float2(c0.xx);\n"
             "    s1.xy = mix(hg_Params[10].xy, hg_Params[10].zw, s1.ww);\n"
             "    s0.zw = mix(hg_Params[15].xy, hg_Params[15].zw, s1.ww);\n"
             "    s0.zw = mix(s1.xy, s0.zw, s1.zz);\n"
             "    s2.z = sin(s2.x);\n"
             "    s2.x = s0.z*float(c0.x);\n"
             "    s1.x = sin(s2.y);\n"
             "    s1.y = s1.x*hg_Params[20].y;\n"
             "    s2.y = sin(s2.x);\n"
             "    s0.z = s0.w*float(c0.x);\n"
             "    s1.y = s2.z*hg_Params[19].y + s1.y;\n"
             "    s2.w = s1.x*hg_Params[20].x;\n"
             "    s0.w = s2.y*hg_Params[21].y + s1.y;\n"
             "    s2.x = sin(s0.z);\n"
             "    s3.x = s2.x*hg_Params[22].y + s0.w;\n"
             "    s1.xy = mix(hg_Params[11].xy, hg_Params[11].zw, s1.ww);\n"
             "    s0.zw = mix(hg_Params[16].xy, hg_Params[16].zw, s1.ww);\n"
             "    s0.zw = mix(s1.xy, s0.zw, s1.zz);\n"
             "    s2.z = s2.z*hg_Params[19].x + s2.w;\n"
             "    s1.x = s2.y*hg_Params[21].x + s2.z;\n"
             "    s1.y = s2.x*hg_Params[22].x + s1.x;\n"
             "    s0.zw = s0.zw*float2(c0.xx);\n"
             "    s1.x = sin(s0.z);\n"
             "    s2.xy = mix(hg_Params[12].xy, hg_Params[12].zw, s1.ww);\n"
             "    s0.z = s1.x*hg_Params[23].x + s1.y;\n"
             "    s2.z = s1.x*hg_Params[23].y + s3.x;\n"
             "    s1.xy = mix(hg_Params[17].xy, hg_Params[17].zw, s1.ww);\n"
             "    s1.xy = mix(s2.xy, s1.xy, s1.zz);\n"
             "    s2.y = s1.x*float(c0.x);\n"
             "    s0.w = sin(s0.w);\n"
             "    s2.x = s0.w*hg_Params[24].y + s2.z;\n"
             "    s2.z = s0.w*hg_Params[24].x + s0.z;\n"
             "    s1.x = s1.y*float(c0.x);\n"
             "    s2.y = sin(s2.y);\n"
             "    s1.y = s2.y*hg_Params[25].y + s2.x;\n"
             "    s2.x = sin(s1.x);\n"
             "    s2.w = s2.x*hg_Params[26].y + s1.y;\n"
             "    s1.xy = mix(hg_Params[13].xy, hg_Params[13].zw, s1.ww);\n"
             "    s0.zw = mix(hg_Params[18].xy, hg_Params[18].zw, s1.ww);\n"
             "    s0.zw = mix(s1.xy, s0.zw, s1.zz);\n"
             "    s3.w = s2.y*hg_Params[25].x + s2.z;\n"
             "    s0.zw = s0.zw*float2(c0.xx);\n"
             "    s0.zw = sin(s0.zw);\n"
             "    s3.x = s2.x*hg_Params[26].x + s3.w;\n"
             "    s3.x = s0.z*hg_Params[27].x + s3.x;\n"
             "    s3.x = s0.w*hg_Params[28].x + s3.x;\n"
             "    s0.x = s3.x*hg_Params[8].x + s0.x;\n"
             "    s0.z = s0.z*hg_Params[27].y + s2.w;\n"
             "    s1.x = s0.w*hg_Params[28].y + s0.z;\n"
             "    s0.y = s1.x*hg_Params[8].y + s0.y;\n"
             "    s0.w = float(c0.y);\n"
             "    s3.x = dot(s0.xyw, hg_Params[5].xyz);\n"
             "    s3.z = 1.00000f / s3.x;\n"
             "    s3.y = dot(s0.xyw, hg_Params[4].xyz);\n"
             "    s3.x = dot(s0.xyw, hg_Params[3].xyz);\n"
             "    s3.xy = s3.xy*s3.zz;\n"
             "    s3.xy = s3.xy + hg_Params[29].xy;\n"
             "    s3.xy = s3.xy*hg_Params[29].zw;\n"
             "    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s3.xy);\n"
             "    return output;\n"
             "}\n"
             "//MD5=2103ea10:3689da86:e42936e3:1dc4631c\n"
             "//SIG=00400000:00000000:00000000:00000001:0001:001e:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n"
             "//LEN=0000000c95\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< float > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]])\n"
             "{\n"
             "    const float4 c0 = float4(6.281380177, 1.000000000, 0.000000000, 0.5000000000);\n"
             "    float4 r0, r1, r2, r3;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0.x = dot(frag._texCoord0, hg_Params[2]);\n"
             "    r0.w = 1.00000f / r0.x;\n"
             "    r0.z = 1.00000f / hg_Params[6].z;\n"
             "    r0.y = dot(frag._texCoord0, hg_Params[1]);\n"
             "    r0.x = dot(frag._texCoord0, hg_Params[0]);\n"
             "    r0.xy = r0.xy*r0.ww;\n"
             "    r1.w = r0.x*r0.z + c0.w;\n"
             "    r1.z = 1.00000f / hg_Params[7].z;\n"
             "    r1.z = r0.y*r1.z + c0.w;\n"
             "    r0.zw = mix(hg_Params[9].xy, hg_Params[9].zw, r1.ww);\n"
             "    r1.xy = mix(hg_Params[14].xy, hg_Params[14].zw, r1.ww);\n"
             "    r2.xy = mix(r0.zw, r1.xy, r1.zz);\n"
             "    r2.xy = r2.xy*c0.xx;\n"
             "    r1.xy = mix(hg_Params[10].xy, hg_Params[10].zw, r1.ww);\n"
             "    r0.zw = mix(hg_Params[15].xy, hg_Params[15].zw, r1.ww);\n"
             "    r0.zw = mix(r1.xy, r0.zw, r1.zz);\n"
             "    r2.z = sin(r2.x);\n"
             "    r2.x = r0.z*c0.x;\n"
             "    r1.x = sin(r2.y);\n"
             "    r1.y = r1.x*hg_Params[20].y;\n"
             "    r2.y = sin(r2.x);\n"
             "    r0.z = r0.w*c0.x;\n"
             "    r1.y = r2.z*hg_Params[19].y + r1.y;\n"
             "    r2.w = r1.x*hg_Params[20].x;\n"
             "    r0.w = r2.y*hg_Params[21].y + r1.y;\n"
             "    r2.x = sin(r0.z);\n"
             "    r3.x = r2.x*hg_Params[22].y + r0.w;\n"
             "    r1.xy = mix(hg_Params[11].xy, hg_Params[11].zw, r1.ww);\n"
             "    r0.zw = mix(hg_Params[16].xy, hg_Params[16].zw, r1.ww);\n"
             "    r0.zw = mix(r1.xy, r0.zw, r1.zz);\n"
             "    r2.z = r2.z*hg_Params[19].x + r2.w;\n"
             "    r1.x = r2.y*hg_Params[21].x + r2.z;\n"
             "    r1.y = r2.x*hg_Params[22].x + r1.x;\n"
             "    r0.zw = r0.zw*c0.xx;\n"
             "    r1.x = sin(r0.z);\n"
             "    r2.xy = mix(hg_Params[12].xy, hg_Params[12].zw, r1.ww);\n"
             "    r0.z = r1.x*hg_Params[23].x + r1.y;\n"
             "    r2.z = r1.x*hg_Params[23].y + r3.x;\n"
             "    r1.xy = mix(hg_Params[17].xy, hg_Params[17].zw, r1.ww);\n"
             "    r1.xy = mix(r2.xy, r1.xy, r1.zz);\n"
             "    r2.y = r1.x*c0.x;\n"
             "    r0.w = sin(r0.w);\n"
             "    r2.x = r0.w*hg_Params[24].y + r2.z;\n"
             "    r2.z = r0.w*hg_Params[24].x + r0.z;\n"
             "    r1.x = r1.y*c0.x;\n"
             "    r2.y = sin(r2.y);\n"
             "    r1.y = r2.y*hg_Params[25].y + r2.x;\n"
             "    r2.x = sin(r1.x);\n"
             "    r2.w = r2.x*hg_Params[26].y + r1.y;\n"
             "    r1.xy = mix(hg_Params[13].xy, hg_Params[13].zw, r1.ww);\n"
             "    r0.zw = mix(hg_Params[18].xy, hg_Params[18].zw, r1.ww);\n"
             "    r0.zw = mix(r1.xy, r0.zw, r1.zz);\n"
             "    r3.w = r2.y*hg_Params[25].x + r2.z;\n"
             "    r0.zw = r0.zw*c0.xx;\n"
             "    r0.zw = sin(r0.zw);\n"
             "    r3.x = r2.x*hg_Params[26].x + r3.w;\n"
             "    r3.x = r0.z*hg_Params[27].x + r3.x;\n"
             "    r3.x = r0.w*hg_Params[28].x + r3.x;\n"
             "    r0.x = r3.x*hg_Params[8].x + r0.x;\n"
             "    r0.z = r0.z*hg_Params[27].y + r2.w;\n"
             "    r1.x = r0.w*hg_Params[28].y + r0.z;\n"
             "    r0.y = r1.x*hg_Params[8].y + r0.y;\n"
             "    r0.w = c0.y;\n"
             "    r3.x = dot(r0.xyw, hg_Params[5].xyz);\n"
             "    r3.z = 1.00000f / r3.x;\n"
             "    r3.y = dot(r0.xyw, hg_Params[4].xyz);\n"
             "    r3.x = dot(r0.xyw, hg_Params[3].xyz);\n"
             "    r3.xy = r3.xy*r3.zz;\n"
             "    r3.xy = r3.xy + hg_Params[29].xy;\n"
             "    r3.xy = r3.xy*hg_Params[29].zw;\n"
             "    output.color0 = hg_Texture0.sample(hg_Sampler0, r3.xy);\n"
             "    return output;\n"
             "}\n"
             "//MD5=ef14139d:41b39f2f:53af535a:dc40e694\n"
             "//SIG=00000000:00000000:00000000:00000000:0001:001e:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_83;
  }
}

void sub_25FAA2F18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260346780;
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

void sub_25FAA3098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAA30E8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAA30E0);
}

uint64_t HgcUnderwaterRefractV2::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 29, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcUnderwaterRefractV2::Bind(HgcUnderwaterRefractV2 *this, HGHandler *a2)
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
  (*(*a2 + 144))(a2, 14, *(this + 51) + 224, 1);
  (*(*a2 + 144))(a2, 15, *(this + 51) + 240, 1);
  (*(*a2 + 144))(a2, 16, *(this + 51) + 256, 1);
  (*(*a2 + 144))(a2, 17, *(this + 51) + 272, 1);
  (*(*a2 + 144))(a2, 18, *(this + 51) + 288, 1);
  (*(*a2 + 144))(a2, 19, *(this + 51) + 304, 1);
  (*(*a2 + 144))(a2, 20, *(this + 51) + 320, 1);
  (*(*a2 + 144))(a2, 21, *(this + 51) + 336, 1);
  (*(*a2 + 144))(a2, 22, *(this + 51) + 352, 1);
  (*(*a2 + 144))(a2, 23, *(this + 51) + 368, 1);
  (*(*a2 + 144))(a2, 24, *(this + 51) + 384, 1);
  (*(*a2 + 144))(a2, 25, *(this + 51) + 400, 1);
  (*(*a2 + 144))(a2, 26, *(this + 51) + 416, 1);
  (*(*a2 + 144))(a2, 27, *(this + 51) + 432, 1);
  (*(*a2 + 144))(a2, 28, *(this + 51) + 448, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcUnderwaterRefractV2::RenderTile(HgcUnderwaterRefractV2 *this, HGTile *a2)
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
    v11 = xmmword_2603429B0;
    v12 = *(a2 + 2);
    v13 = 16 * *(a2 + 6);
    v14 = 1.0;
    v15 = v9;
    v467 = v9;
    do
    {
      v466 = v15;
      v16 = 0;
      if (v10 >= 2)
      {
        for (i = v10; i > 1; i -= 2)
        {
          v18 = vaddq_f32(v15, v11);
          v19 = *(this + 51);
          v20 = *(v19 + 32);
          v21 = vmulq_f32(v15, v20);
          v22 = vmulq_f32(v18, v20);
          v23 = vaddq_f32(v21, vextq_s8(v21, v21, 4uLL));
          v24 = vaddq_f32(v22, vextq_s8(v22, v22, 4uLL));
          v25 = vaddq_f32(vextq_s8(v23, v23, 4uLL), vextq_s8(v23, v23, 0xCuLL));
          v26 = vaddq_f32(vextq_s8(v24, v24, 4uLL), vextq_s8(v24, v24, 0xCuLL));
          v27 = *(v19 + 464);
          v470 = *(v19 + 448);
          v471 = *(v19 + 48);
          v28 = *(v19 + 480);
          v29 = *(v19 + 496);
          v30 = vminq_f32(vmaxq_f32(vrecpeq_f32(v25), v27), v28);
          v31 = vminq_f32(vmaxq_f32(vrecpeq_f32(v26), v27), v28);
          v32 = vminq_f32(vmaxq_f32(vmulq_f32(v30, vrecpsq_f32(v25, v30)), v27), v28);
          v33 = vminq_f32(vmaxq_f32(vmulq_f32(v31, vrecpsq_f32(v26, v31)), v27), v28);
          v34 = vmulq_f32(v32, vrecpsq_f32(v25, v32));
          v35 = vmulq_f32(v33, vrecpsq_f32(v26, v33));
          v36 = *(v19 + 96);
          v37 = *(v19 + 112);
          v38 = vminq_f32(vmaxq_f32(vmulq_f32(v27, vrecpeq_f32(v36)), v29), v28);
          v39 = vmulq_f32(v38, vrecpsq_f32(v36, v38));
          v41 = *(v19 + 512);
          v40 = *(v19 + 528);
          v42 = vbslq_s8(v41, v39, v34);
          v43 = vbslq_s8(v41, v39, v35);
          v44 = *(v19 + 16);
          v45 = vmulq_f32(v15, v44);
          v46 = vmulq_f32(v18, v44);
          v47 = vaddq_f32(v45, vextq_s8(v45, v45, 4uLL));
          v48 = vaddq_f32(v46, vextq_s8(v46, v46, 4uLL));
          v47.i64[0] = vaddq_f32(v47, vdupq_laneq_s64(v47, 1)).u64[0];
          v48.i64[0] = vaddq_f32(v48, vdupq_laneq_s64(v48, 1)).u64[0];
          v49 = vmulq_f32(v15, *v19);
          v472 = v18;
          v50 = vmulq_f32(v18, *v19);
          v51 = vaddq_f32(v49, vextq_s8(v49, v49, 4uLL));
          v52 = vaddq_f32(v50, vextq_s8(v50, v50, 4uLL));
          v47.i64[1] = v42.i64[1];
          v53 = vbslq_s8(v40, vaddq_f32(v51, vextq_s8(v51, v51, 8uLL)), v47);
          v48.i64[1] = v43.i64[1];
          v54 = vbslq_s8(v40, vaddq_f32(v52, vextq_s8(v52, v52, 8uLL)), v48);
          v55 = vmulq_laneq_f32(v53, v53, 3);
          v48.i64[0] = v55.i64[0];
          v48.i64[1] = vdupq_laneq_s64(v53, 1).u64[0];
          v56 = vmulq_laneq_f32(v54, v54, 3);
          v53.i64[0] = vdupq_laneq_s64(v54, 1).u64[0];
          v54.i64[0] = v56.i64[0];
          v54.i64[1] = v53.i64[0];
          v57 = vaddq_f32(v29, vmulq_n_f32(vrev64q_s32(v48), *v55.i32));
          v58 = vaddq_f32(v29, vmulq_n_f32(vrev64q_s32(v54), *v56.i32));
          v59 = vminq_f32(vmaxq_f32(vmulq_f32(v27, vrecpeq_f32(v37)), v29), *(v19 + 480));
          v60 = vmulq_f32(v59, vrecpsq_f32(v37, v59));
          v61 = *(v19 + 544);
          v62 = *(v19 + 560);
          v63 = vbslq_s8(v41, vaddq_f32(v61, vmulq_lane_f32(vbslq_s8(v41, v60, v57), *v55.i8, 1)), v57);
          v64 = vbslq_s8(v41, vaddq_f32(v61, vmulq_lane_f32(vbslq_s8(v41, v60, v58), *v56.i8, 1)), v58);
          v65 = *(v19 + 144);
          v469 = *(v19 + 128);
          v66 = vextq_s8(v65, v65, 8uLL);
          v67 = vsubq_f32(v65, v66);
          v68 = vdupq_laneq_s32(v63, 3);
          v69 = vaddq_f32(v66, vmulq_laneq_f32(v67, v63, 3));
          v70 = vdupq_laneq_s32(v64, 3);
          v71 = vaddq_f32(v66, vmulq_laneq_f32(v67, v64, 3));
          v72 = *(v19 + 224);
          v73 = *(v19 + 240);
          v74 = vsubq_f32(vextq_s8(v72, v72, 8uLL), v72);
          v75.i64[0] = vaddq_f32(v72, vmulq_laneq_f32(v74, v63, 3)).u64[0];
          v72.i64[0] = vaddq_f32(v72, vmulq_laneq_f32(v74, v64, 3)).u64[0];
          v75.i64[1] = v63.i64[1];
          v72.i64[1] = v64.i64[1];
          v76 = vextq_s8(v69, v55, 8uLL);
          v77 = vextq_s8(v71, v56, 8uLL);
          v78 = vaddq_f32(v77, vmulq_laneq_f32(vsubq_f32(v72, v77), v64, 2));
          v79 = vmulq_f32(v61, vaddq_f32(v76, vmulq_laneq_f32(vsubq_f32(v75, v76), v63, 2)));
          v80 = vmulq_f32(v61, v78);
          v81 = *(v19 + 160);
          v82 = *(v19 + 176);
          v83 = vsubq_f32(vextq_s8(v81, v81, 8uLL), v81);
          v75.i64[0] = vaddq_f32(v81, vmulq_laneq_f32(v83, v63, 3)).u64[0];
          v81.i64[0] = vaddq_f32(v81, vmulq_laneq_f32(v83, v64, 3)).u64[0];
          *v83.f32 = vsub_f32(*&vextq_s8(v73, v73, 8uLL), *v73.i8);
          *v68.f32 = vsub_f32(vadd_f32(*v73.i8, vmul_f32(*v83.f32, *&vextq_s8(v68, v68, 8uLL))), *v75.f32);
          v68.i64[1] = v68.i64[0];
          *v70.f32 = vsub_f32(vadd_f32(*v73.i8, vmul_f32(*v83.f32, *&vextq_s8(v70, v70, 8uLL))), *v81.f32);
          v70.i64[1] = v70.i64[0];
          v84 = vaddq_f32(vdupq_lane_s64(v75.i64[0], 0), vmulq_laneq_f32(v68, v63, 2));
          v85 = vaddq_f32(vdupq_lane_s64(v81.i64[0], 0), vmulq_laneq_f32(v70, v64, 2));
          v86 = *(v19 + 576);
          v87 = *(v19 + 592);
          v88 = vaddq_f32(v62, vmulq_f32(v86, vextq_s8(v79, v79, 8uLL)));
          v89 = vaddq_f32(v62, vmulq_f32(v86, vextq_s8(v80, v80, 8uLL)));
          v90 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
          v91 = vcvtq_f32_s32(vcvtq_s32_f32(v89));
          v92 = vaddq_f32(v62, vabdq_f32(vsubq_f32(v88, vsubq_f32(v90, vandq_s8(v87, vcgtq_f32(v90, v88)))), v61));
          v93 = vaddq_f32(v62, vabdq_f32(vsubq_f32(v89, vsubq_f32(v91, vandq_s8(v87, vcgtq_f32(v91, v89)))), v61));
          v94 = vmulq_f32(v92, v92);
          v95 = vmulq_f32(v93, v93);
          v96 = *(v19 + 608);
          v97 = *(v19 + 624);
          v99 = *(v19 + 640);
          v98 = *(v19 + 656);
          v79.i64[1] = vmulq_f32(v92, vaddq_f32(v98, vmulq_f32(v94, vaddq_f32(v99, vmulq_f32(v94, vaddq_f32(v96, vmulq_f32(v97, v94))))))).i64[1];
          v80.i64[1] = vmulq_f32(v93, vaddq_f32(v98, vmulq_f32(v95, vaddq_f32(v99, vmulq_f32(v95, vaddq_f32(v96, vmulq_f32(v97, v95))))))).i64[1];
          v100 = vbslq_s8(v40, vmulq_f32(v98, vextq_s8(v84, v55, 8uLL)), v79);
          v101 = vbslq_s8(v40, vmulq_f32(v98, vextq_s8(v85, v56, 8uLL)), v80);
          v102 = vrev64q_s32(v100);
          v103 = vrev64q_s32(v101);
          v104 = vaddq_f32(v99, vmulq_f32(v97, v102));
          v105 = vaddq_f32(v99, vmulq_f32(v97, v103));
          v106 = vcvtq_f32_s32(vcvtq_s32_f32(v104));
          v107 = vcvtq_f32_s32(vcvtq_s32_f32(v105));
          v108 = vaddq_f32(v99, vabdq_f32(vsubq_f32(v104, vsubq_f32(v106, vandq_s8(v96, vcgtq_f32(v106, v104)))), v87));
          v109 = vaddq_f32(v99, vabdq_f32(vsubq_f32(v105, vsubq_f32(v107, vandq_s8(v96, vcgtq_f32(v107, v105)))), v87));
          v110 = vmulq_f32(v108, v108);
          v111 = vmulq_f32(v109, v109);
          v110.i64[0] = vmulq_f32(v108, vaddq_f32(v27, vmulq_f32(v110, vaddq_f32(v29, vmulq_f32(v110, vaddq_f32(v86, vmulq_f32(v62, v110))))))).u64[0];
          v111.i64[0] = vmulq_f32(v109, vaddq_f32(v27, vmulq_f32(v111, vaddq_f32(v29, vmulq_f32(v111, vaddq_f32(v86, vmulq_f32(v62, v111))))))).u64[0];
          v112 = *(v19 + 320);
          v113 = *(v19 + 336);
          v110.i64[1] = v63.i64[1];
          v111.i64[1] = v64.i64[1];
          v114 = vaddq_f32(v98, vmulq_f32(v99, v102));
          v115 = vcvtq_f32_s32(vcvtq_s32_f32(v114));
          v116 = vaddq_f32(v98, vmulq_f32(v99, v103));
          v117 = vcvtq_f32_s32(vcvtq_s32_f32(v116));
          v118 = vaddq_f32(v98, vabdq_f32(vsubq_f32(v114, vsubq_f32(v115, vandq_s8(v97, vcgtq_f32(v115, v114)))), v96));
          v119 = vmulq_f32(v118, v118);
          v120 = vaddq_f32(v98, vabdq_f32(vsubq_f32(v116, vsubq_f32(v117, vandq_s8(v97, vcgtq_f32(v117, v116)))), v96));
          v121 = vmulq_f32(v120, v120);
          v119.i64[0] = vmulq_f32(v118, vaddq_f32(v29, vmulq_f32(v119, vaddq_f32(v62, vmulq_f32(v119, vaddq_f32(v87, vmulq_f32(v86, v119))))))).u64[0];
          v120.i64[0] = vmulq_f32(v120, vaddq_f32(v29, vmulq_f32(v121, vaddq_f32(v62, vmulq_f32(v121, vaddq_f32(v87, vmulq_f32(v86, v121))))))).u64[0];
          v122 = vrev64q_s32(v84);
          v124 = *(v19 + 672);
          v123 = *(v19 + 688);
          v55.i64[1] = vmulq_f32(v123, v122).i64[1];
          v56.i64[1] = vmulq_f32(v123, vrev64q_s32(v85)).i64[1];
          v125 = *(v19 + 304);
          v468 = *(v19 + 288);
          v126 = vbslq_s8(v124, vaddq_f32(vmulq_laneq_f32(v125, v100, 2), vbslq_s8(v124, vmulq_n_f32(v112, v110.f32[0]), v110)), v110);
          v127 = vbslq_s8(v124, vaddq_f32(vmulq_laneq_f32(v125, v101, 2), vbslq_s8(v124, vmulq_n_f32(v112, v111.f32[0]), v111)), v111);
          v128 = vextq_s8(v112, v112, 4uLL);
          v119.i64[1] = v100.i64[1];
          v130 = *(v19 + 704);
          v129 = *(v19 + 720);
          v131 = vbslq_s8(v130, vmulq_n_f32(v128, v126.f32[0]), v119);
          v120.i64[1] = v101.i64[1];
          v132 = vbslq_s8(v130, vmulq_n_f32(v128, v127.f32[0]), v120);
          v133 = vextq_s8(v113, v113, 8uLL);
          v134 = vbslq_s8(v130, vaddq_f32(vextq_s8(v126, v126, 8uLL), vmulq_lane_f32(v133, *v131.i8, 1)), v55);
          v135 = vbslq_s8(v130, vaddq_f32(vextq_s8(v127, v127, 8uLL), vmulq_lane_f32(v133, *v132.i8, 1)), v56);
          v136 = vaddq_f32(v123, vmulq_f32(v97, vextq_s8(v134, v134, 8uLL)));
          v137 = vcvtq_f32_s32(vcvtq_s32_f32(v136));
          v138 = vaddq_f32(v123, vmulq_f32(v97, vextq_s8(v135, v135, 8uLL)));
          v139 = vcvtq_f32_s32(vcvtq_s32_f32(v138));
          v140 = vaddq_f32(v123, vabdq_f32(vsubq_f32(v136, vsubq_f32(v137, vandq_s8(v96, vcgtq_f32(v137, v136)))), v87));
          v141 = vmulq_f32(v140, v140);
          v142 = vaddq_f32(v123, vabdq_f32(vsubq_f32(v138, vsubq_f32(v139, vandq_s8(v96, vcgtq_f32(v139, v138)))), v87));
          v143 = vmulq_f32(v142, v142);
          v144 = vbslq_s8(v40, vmulq_f32(v140, vaddq_f32(v27, vmulq_f32(v141, vaddq_f32(v29, vmulq_f32(v141, vaddq_f32(v86, vmulq_f32(v62, v141))))))), v131);
          v145 = vbslq_s8(v40, vmulq_f32(v142, vaddq_f32(v27, vmulq_f32(v143, vaddq_f32(v29, vmulq_f32(v143, vaddq_f32(v86, vmulq_f32(v62, v143))))))), v132);
          v146 = vsubq_f32(vextq_s8(v82, v82, 8uLL), v82);
          v142.i64[0] = vaddq_f32(v82, vmulq_laneq_f32(v146, v126, 3)).u64[0];
          v146.i64[0] = vaddq_f32(v82, vmulq_laneq_f32(v146, v127, 3)).u64[0];
          v147 = vdupq_laneq_s32(v126, 3);
          v149 = *(v19 + 256);
          v148 = *(v19 + 272);
          *v82.f32 = vsub_f32(*&vextq_s8(v149, v149, 8uLL), *v149.i8);
          v150 = vdupq_laneq_s32(v127, 3);
          *v147.f32 = vsub_f32(vadd_f32(*v149.i8, vmul_f32(*v82.f32, *&vextq_s8(v147, v147, 8uLL))), *v142.f32);
          v147.i64[1] = v147.i64[0];
          v151 = vaddq_f32(vdupq_lane_s64(v142.i64[0], 0), vmulq_laneq_f32(v147, v126, 2));
          *v147.f32 = vsub_f32(vadd_f32(*v149.i8, vmul_f32(*v82.f32, *&vextq_s8(v150, v150, 8uLL))), *v146.f32);
          v147.i64[1] = v147.i64[0];
          v152 = vaddq_f32(vdupq_lane_s64(v146.i64[0], 0), vmulq_laneq_f32(v147, v127, 2));
          v153 = vaddq_f32(vmulq_lane_f32(v113, *v144.f32, 1), vdupq_laneq_s64(vaddq_f32(vrev64q_s32(v144), vmulq_n_f32(v144, v125.f32[0])), 1));
          v154 = vaddq_f32(vmulq_lane_f32(v113, *v145.f32, 1), vdupq_laneq_s64(vaddq_f32(vrev64q_s32(v145), vmulq_n_f32(v145, v125.f32[0])), 1));
          v156 = *(v19 + 352);
          v155 = *(v19 + 368);
          v157 = vrev64q_s32(v156);
          v82.i64[0] = vaddq_f32(vmulq_n_f32(v157, v144.f32[0]), vrev64q_s32(v153)).u64[0];
          v153.i64[0] = vmulq_lane_f32(v144, *v156.i8, 1).u64[0];
          v144.i64[0] = vmulq_lane_f32(v145, *v156.i8, 1).u64[0];
          v145.i64[0] = vaddq_f32(vmulq_n_f32(v157, v145.f32[0]), vrev64q_s32(v154)).u64[0];
          v82.i64[1] = v126.i64[1];
          v145.i64[1] = v127.i64[1];
          v158 = vmulq_f32(v129, v151);
          v127.i64[0] = v134.i64[0];
          v127.i64[1] = v158.i64[1];
          v159 = vaddq_f32(v123, vmulq_f32(v97, vextq_s8(v158, v134, 8uLL)));
          v160 = vcvtq_f32_s32(vcvtq_s32_f32(v159));
          v161 = vmulq_f32(v129, v152);
          v152.i64[0] = v135.i64[0];
          v152.i64[1] = v161.i64[1];
          v162 = vaddq_f32(v123, vmulq_f32(v97, vextq_s8(v161, v135, 8uLL)));
          v163 = vcvtq_f32_s32(vcvtq_s32_f32(v162));
          v164 = vsubq_f32(v159, vsubq_f32(v160, vandq_s8(v129, vcgtq_f32(v160, v159))));
          v165 = vsubq_f32(v162, vsubq_f32(v163, vandq_s8(v129, vcgtq_f32(v163, v162))));
          v166 = vaddq_f32(v123, vabdq_f32(v164, v87));
          v167 = vmulq_f32(v166, v166);
          v168 = vaddq_f32(v123, vabdq_f32(v165, v87));
          v169 = vmulq_f32(v168, v168);
          v170 = vbslq_s8(v40, vmulq_f32(v166, vaddq_f32(v27, vmulq_f32(v167, vaddq_f32(v29, vmulq_f32(v167, vaddq_f32(v86, vmulq_f32(v62, v167))))))), v82);
          v171 = vbslq_s8(v40, vmulq_f32(v168, vaddq_f32(v27, vmulq_f32(v169, vaddq_f32(v29, vmulq_f32(v169, vaddq_f32(v86, vmulq_f32(v62, v169))))))), v145);
          v172 = *(v19 + 192);
          v173 = *(v19 + 208);
          v174 = vsubq_f32(vextq_s8(v172, v172, 8uLL), v172);
          v175 = vaddq_f32(v172, vmulq_laneq_f32(v174, v170, 3));
          v176 = vaddq_f32(v172, vmulq_laneq_f32(v174, v171, 3));
          v177 = vextq_s8(v155, v155, 8uLL);
          v178 = vbslq_s8(v41, vaddq_f32(vextq_s8(v170, v170, 0xCuLL), vmulq_n_f32(v177, v170.f32[0])), v127);
          v179 = vbslq_s8(v41, vaddq_f32(vextq_s8(v171, v171, 0xCuLL), vmulq_n_f32(v177, v171.f32[0])), v152);
          v180 = vextq_s8(v155, v155, 0xCuLL);
          v181 = vaddq_f32(vaddq_f32(vextq_s8(v134, v134, 4uLL), vdupq_lane_s64(v153.i64[0], 0)), vmulq_n_f32(v180, v170.f32[0]));
          v182 = vsubq_f32(vextq_s8(v148, v148, 8uLL), v148);
          v183.i64[0] = vaddq_f32(v175, vmulq_laneq_f32(vsubq_f32(vaddq_f32(v148, vmulq_laneq_f32(v182, v170, 3)), v175), v170, 2)).u64[0];
          v183.i64[1] = vdupq_laneq_s64(v170, 1).u64[0];
          v176.i64[0] = vaddq_f32(v176, vmulq_laneq_f32(vsubq_f32(vaddq_f32(v148, vmulq_laneq_f32(v182, v171, 3)), v176), v171, 2)).u64[0];
          v176.i64[1] = vdupq_laneq_s64(v171, 1).u64[0];
          v184 = vaddq_f32(vaddq_f32(vextq_s8(v135, v135, 4uLL), vdupq_lane_s64(v144.i64[0], 0)), vmulq_n_f32(v180, v171.f32[0]));
          v185 = vaddq_f32(v123, vmulq_f32(v98, v178));
          v186 = vcvtq_f32_s32(vcvtq_s32_f32(v185));
          v187 = vaddq_f32(v123, vmulq_f32(v98, v179));
          v188 = vcvtq_f32_s32(vcvtq_s32_f32(v187));
          v189 = vsubq_f32(v185, vsubq_f32(v186, vandq_s8(v99, vcgtq_f32(v186, v185))));
          v190 = vsubq_f32(v187, vsubq_f32(v188, vandq_s8(v99, vcgtq_f32(v188, v187))));
          v191 = vaddq_f32(v123, vabdq_f32(v189, v97));
          v192 = vmulq_f32(v191, v191);
          v193 = vaddq_f32(v123, vabdq_f32(v190, v97));
          v194 = vmulq_f32(v193, v193);
          v195 = vbslq_s8(v130, vmulq_f32(v191, vaddq_f32(v62, vmulq_f32(v192, vaddq_f32(v86, vmulq_f32(v192, vaddq_f32(v96, vmulq_f32(v87, v192))))))), v178);
          v196 = vbslq_s8(v130, vmulq_f32(v193, vaddq_f32(v62, vmulq_f32(v194, vaddq_f32(v86, vmulq_f32(v194, vaddq_f32(v96, vmulq_f32(v87, v194))))))), v179);
          v197 = *(v19 + 384);
          v198 = *(v19 + 400);
          v199 = vrev64q_s32(v197);
          v200 = vaddq_f32(vdupq_laneq_s64(v181, 1), vmulq_laneq_f32(v199, v195, 3));
          v201 = vaddq_f32(vdupq_laneq_s64(v184, 1), vmulq_laneq_f32(v199, v196, 3));
          v202 = vrev64q_s32(v183);
          v200.i64[0] = vbslq_s8(v40, v200, vmulq_f32(v123, v202)).u64[0];
          v203 = vextq_s8(v197, v197, 8uLL);
          v200.i64[1] = vaddq_f32(vmulq_laneq_f32(v203, v195, 3), v195).i64[1];
          v204 = vrev64q_s32(v176);
          v201.i64[0] = vbslq_s8(v40, v201, vmulq_f32(v123, v204)).u64[0];
          v201.i64[1] = vaddq_f32(vmulq_laneq_f32(v203, v196, 3), v196).i64[1];
          v203.i64[0] = vmulq_f32(v98, v202).u64[0];
          v202.i64[0] = vmulq_f32(v98, v204).u64[0];
          v203.i64[1] = v170.i64[1];
          v202.i64[1] = v171.i64[1];
          v205 = vaddq_f32(v98, vmulq_f32(v99, v200));
          v206 = vcvtq_f32_s32(vcvtq_s32_f32(v205));
          v207 = vaddq_f32(v98, vmulq_f32(v99, v201));
          v208 = vcvtq_f32_s32(vcvtq_s32_f32(v207));
          v209 = vaddq_f32(v98, vabdq_f32(vsubq_f32(v205, vsubq_f32(v206, vandq_s8(v129, vcgtq_f32(v206, v205)))), v96));
          v210 = vaddq_f32(v98, vabdq_f32(vsubq_f32(v207, vsubq_f32(v208, vandq_s8(v129, vcgtq_f32(v208, v207)))), v96));
          v211 = vmulq_f32(v209, v209);
          v212 = vmulq_f32(v210, v210);
          v213 = vbslq_s8(v124, vmulq_f32(v209, vaddq_f32(v29, vmulq_f32(v211, vaddq_f32(v62, vmulq_f32(v211, vaddq_f32(v87, vmulq_f32(v86, v211))))))), v200);
          v214 = vbslq_s8(v124, vmulq_f32(v210, vaddq_f32(v29, vmulq_f32(v212, vaddq_f32(v62, vmulq_f32(v212, vaddq_f32(v87, vmulq_f32(v86, v212))))))), v201);
          v215 = vbslq_s8(v124, vaddq_f32(vmulq_f32(v198, v213), vrev64q_s32(v213)), v203);
          v216 = vbslq_s8(v124, vaddq_f32(vmulq_f32(v198, v214), vrev64q_s32(v214)), v202);
          v217 = vaddq_f32(v123, vmulq_f32(v97, v215));
          v218 = vaddq_f32(v123, vmulq_f32(v97, v216));
          v219 = vcvtq_f32_s32(vcvtq_s32_f32(v217));
          v220 = vcvtq_f32_s32(vcvtq_s32_f32(v218));
          v221 = vaddq_f32(v123, vabdq_f32(vsubq_f32(v217, vsubq_f32(v219, vandq_s8(v129, vcgtq_f32(v219, v217)))), v87));
          v222 = vaddq_f32(v123, vabdq_f32(vsubq_f32(v218, vsubq_f32(v220, vandq_s8(v129, vcgtq_f32(v220, v218)))), v87));
          v223 = vmulq_f32(v221, v221);
          v224 = vmulq_f32(v222, v222);
          v225 = vbslq_s8(v40, vmulq_f32(v221, vaddq_f32(v27, vmulq_f32(v223, vaddq_f32(v29, vmulq_f32(v223, vaddq_f32(v86, vmulq_f32(v62, v223))))))), v213);
          v226 = vbslq_s8(v40, vmulq_f32(v222, vaddq_f32(v27, vmulq_f32(v224, vaddq_f32(v29, vmulq_f32(v224, vaddq_f32(v86, vmulq_f32(v62, v224))))))), v214);
          v227 = *(v19 + 416);
          v228 = *(v19 + 432);
          v229 = vextq_s8(v227, v227, 8uLL);
          v230 = vaddq_f32(vextq_s8(v216, v216, 8uLL), vmulq_n_f32(v229, *v226.i32));
          v231 = vbslq_s8(v130, vaddq_f32(vextq_s8(v215, v215, 8uLL), vmulq_n_f32(v229, *v225.i32)), v225);
          v232 = vbslq_s8(v130, v230, v226);
          v233 = vsubq_f32(vextq_s8(v173, v173, 8uLL), v173);
          v234 = vdupq_laneq_s32(v215, 3);
          v230.i64[0] = vaddq_f32(v173, vmulq_laneq_f32(v233, v215, 3)).u64[0];
          v235 = vdupq_laneq_s32(v216, 3);
          v233.i64[0] = vaddq_f32(v173, vmulq_laneq_f32(v233, v216, 3)).u64[0];
          *v183.i8 = vsub_f32(*&vextq_s8(v468, v468, 8uLL), *v468.i8);
          *v234.f32 = vsub_f32(vadd_f32(*v468.i8, vmul_f32(*v183.i8, *&vextq_s8(v234, v234, 8uLL))), *v230.i8);
          v234.i64[1] = v234.i64[0];
          *v235.f32 = vsub_f32(vadd_f32(*v468.i8, vmul_f32(*v183.i8, *&vextq_s8(v235, v235, 8uLL))), *v233.f32);
          v235.i64[1] = v235.i64[0];
          v236 = vaddq_f32(vdupq_lane_s64(v233.i64[0], 0), vmulq_laneq_f32(v235, v216, 2));
          v237 = vmulq_f32(v129, vaddq_f32(vdupq_lane_s64(v230.i64[0], 0), vmulq_laneq_f32(v234, v215, 2)));
          v234.i64[0] = v195.i64[0];
          v234.i64[1] = v237.i64[1];
          v237.i64[0] = v196.i64[0];
          v237.i64[1] = vmulq_f32(v129, v236).i64[1];
          v238 = *(v19 + 736);
          v239 = *(v19 + 752);
          v240 = vaddq_f32(v238, vmulq_f32(v239, v234));
          v241 = vaddq_f32(v238, vmulq_f32(v239, v237));
          v242 = vcvtq_f32_s32(vcvtq_s32_f32(v240));
          v243 = vcvtq_f32_s32(vcvtq_s32_f32(v241));
          v244 = *(v19 + 768);
          v245 = *(v19 + 784);
          v246 = vaddq_f32(v238, vabdq_f32(vsubq_f32(v240, vsubq_f32(v242, vandq_s8(v244, vcgtq_f32(v242, v240)))), v61));
          v247 = vaddq_f32(v238, vabdq_f32(vsubq_f32(v241, vsubq_f32(v243, vandq_s8(v244, vcgtq_f32(v243, v241)))), v61));
          v248 = vmulq_f32(v246, v246);
          v249 = vmulq_f32(v247, v247);
          v250 = *(v19 + 800);
          v251 = *(v19 + 816);
          v252 = vextq_s8(v198, v198, 4uLL);
          v253 = vmulq_f32(v246, vaddq_f32(v251, vmulq_f32(v248, vaddq_f32(v250, vmulq_f32(v248, vaddq_f32(v96, vmulq_f32(v245, v248)))))));
          v254 = vrev64q_s32(v231);
          v255 = vmulq_f32(v247, vaddq_f32(v251, vmulq_f32(v249, vaddq_f32(v250, vmulq_f32(v249, vaddq_f32(v96, vmulq_f32(v245, v249)))))));
          v256 = vaddq_f32(v254, vmulq_lane_f32(v252, *v231.f32, 1));
          v257 = vaddq_f32(vmulq_f32(v227, v231), vextq_s8(v256, v256, 0xCuLL));
          v258 = vmulq_lane_f32(v252, *v232.f32, 1);
          v259 = vmulq_f32(v227, v232);
          v260 = vrev64q_s32(v232);
          v261 = vaddq_f32(v260, v258);
          v195.i64[1] = v253.i64[1];
          v196.i64[1] = v255.i64[1];
          v262 = vaddq_f32(vmulq_laneq_f32(v470, v255, 3), vaddq_f32(vmulq_laneq_f32(v228, v255, 2), vaddq_f32(v259, vextq_s8(v261, v261, 0xCuLL))));
          v263 = vbslq_s8(v40, vaddq_f32(v195, vmulq_f32(v469, vaddq_f32(vmulq_laneq_f32(v470, v253, 3), vaddq_f32(vmulq_laneq_f32(v228, v253, 2), v257)))), v195);
          v264 = vbslq_s8(v40, vaddq_f32(v196, vmulq_f32(v469, v262)), v196);
          v265 = vbslq_s8(v41, vaddq_f32(v254, vmulq_lane_f32(v263, *v228.f32, 1)), v263);
          v266 = vbslq_s8(v41, vaddq_f32(v260, vmulq_lane_f32(v264, *v228.f32, 1)), v264);
          v267 = vrev64q_s32(v470);
          v268 = vbslq_s8(v40, v265, vaddq_f32(vmulq_n_f32(v469, vaddq_f32(vdupq_laneq_s32(v265, 2), vmulq_laneq_f32(v267, v265, 3)).f32[0]), v265));
          v269 = vbslq_s8(v40, v266, vaddq_f32(vmulq_n_f32(v469, vaddq_f32(vdupq_laneq_s32(v266, 2), vmulq_laneq_f32(v267, v266, 3)).f32[0]), v266));
          v270 = v268;
          v270.i32[3] = 1.0;
          v271 = v269;
          v14 = 1.0;
          v271.i32[3] = 1.0;
          v272 = *(v19 + 832);
          v268.i64[1] = vextq_s8(v270, v270, 8uLL).u64[0];
          *v270.f32 = vqtbl1_s8(v268, *v272.i8);
          v253.i64[0] = vextq_s8(v272, v272, 8uLL).u64[0];
          *&v270.u32[2] = vqtbl1_s8(v268, *v253.f32);
          v269.i64[1] = vextq_s8(v271, v271, 8uLL).u64[0];
          *v268.f32 = vqtbl1_s8(v269, *v272.i8);
          *&v268.u32[2] = vqtbl1_s8(v269, *v253.f32);
          v274 = *(v19 + 64);
          v273 = *(v19 + 80);
          v275 = vmulq_f32(v273, v270);
          v276 = vmulq_f32(v273, v268);
          v277 = vaddq_f32(v275, vrev64q_s32(v275));
          v278 = vaddq_f32(v276, vrev64q_s32(v276));
          v279 = vaddq_f32(v275, vextq_s8(v277, v277, 8uLL));
          v280 = vaddq_f32(v276, vextq_s8(v278, v278, 8uLL));
          v281 = *(v19 + 480);
          v282 = vminq_f32(vmaxq_f32(vrecpeq_f32(v279), v29), v281);
          v283 = vminq_f32(vmaxq_f32(vrecpeq_f32(v280), v29), v281);
          v284 = vminq_f32(vmaxq_f32(vmulq_f32(v282, vrecpsq_f32(v279, v282)), v29), v281);
          v285 = vminq_f32(vmaxq_f32(vmulq_f32(v283, vrecpsq_f32(v280, v283)), v29), v281);
          v286 = vmulq_f32(v284, vrecpsq_f32(v279, v284));
          v287 = vmulq_f32(v285, vrecpsq_f32(v280, v285));
          v288 = vmulq_f32(v274, v270);
          v289 = vmulq_f32(v274, v268);
          v288.i64[0] = vaddq_f32(vextq_s8(v288, v287, 4uLL), vaddq_f32(v288, vrev64q_s32(v288))).u64[0];
          v289.i64[0] = vaddq_f32(vextq_s8(v289, v287, 4uLL), vaddq_f32(v289, vrev64q_s32(v289))).u64[0];
          v288.i64[1] = v286.i64[1];
          v289.i64[1] = v287.i64[1];
          v290 = vmulq_f32(v471, v270);
          v291 = vmulq_f32(v471, v268);
          v292 = vbslq_s8(v40, vaddq_f32(vextq_s8(v290, v290, 8uLL), vaddq_f32(v290, vrev64q_s32(v290))), v288);
          v293 = vbslq_s8(v40, vaddq_f32(vextq_s8(v291, v291, 8uLL), vaddq_f32(v291, vrev64q_s32(v291))), v289);
          v294 = vmulq_laneq_f32(v292, v292, 2);
          v295 = vmulq_laneq_f32(v293, v293, 2);
          v296 = *(a2 + 22);
          v297 = vsubq_f32(v294, v467);
          v298 = *(a2 + 10);
          if (v5)
          {
            v299 = vaddq_s32(vcvtq_s32_f32(v297), vcltzq_f32(v297));
            v300 = vsubq_f32(v297, vcvtq_f32_s32(v299)).u64[0];
            v301 = vsubq_f32(v295, v467);
            v302 = vaddq_s32(vcvtq_s32_f32(v301), vcltzq_f32(v301));
            v303 = vsubq_f32(v301, vcvtq_f32_s32(v302)).u64[0];
            *v299.i8 = vmla_s32(vzip1_s32(*v299.i8, *v302.i8), vzip2_s32(*v299.i8, *v302.i8), vdup_n_s32(v296));
            v304 = (v298 + 16 * v299.i32[0]);
            v305 = vaddq_f32(*v304, vmulq_n_f32(vsubq_f32(v304[1], *v304), v300.f32[0]));
            v306 = vaddq_f32(v305, vmulq_lane_f32(vsubq_f32(vaddq_f32(v304[v296], vmulq_n_f32(vsubq_f32(v304[v296 + 1], v304[v296]), v300.f32[0])), v305), v300, 1));
            v307 = (v298 + 16 * v299.i32[1]);
            v308 = vaddq_f32(*v307, vmulq_n_f32(vsubq_f32(v307[1], *v307), v303.f32[0]));
            v309 = vaddq_f32(v308, vmulq_lane_f32(vsubq_f32(vaddq_f32(v307[v296], vmulq_n_f32(vsubq_f32(v307[v296 + 1], v307[v296]), v303.f32[0])), v308), v303, 1));
          }

          else
          {
            v310.i64[0] = 0x3F0000003F000000;
            v310.i64[1] = 0x3F0000003F000000;
            v311 = vaddq_f32(v297, v310);
            v312 = vcvtq_s32_f32(v311);
            v313 = vaddq_f32(vsubq_f32(v295, v467), v310);
            v314 = vcvtq_s32_f32(v313);
            *v311.f32 = vadd_s32(*v312.i8, *&vcgtq_f32(vcvtq_f32_s32(v312), v311));
            *v313.f32 = vadd_s32(*v314.i8, *&vcgtq_f32(vcvtq_f32_s32(v314), v313));
            *v313.f32 = vmla_s32(vzip1_s32(*v311.f32, *v313.f32), vzip2_s32(*v311.f32, *v313.f32), vdup_n_s32(v296));
            v315 = v313.i32[1];
            v306 = *(v298 + 16 * v313.i32[0]);
            v309 = *(v298 + 16 * v315);
          }

          v316 = (v12 + 16 * v16);
          *v316 = v306;
          v316[1] = v309;
          v11 = xmmword_2603429B0;
          v15 = vaddq_f32(v472, xmmword_2603429B0);
          v16 += 2;
        }

        v16 = v16;
        v9 = v467;
      }

      if (v16 < v10)
      {
        v317 = *(this + 51);
        v318 = vmulq_f32(v15, *(v317 + 32));
        v319 = vaddq_f32(v318, vextq_s8(v318, v318, 4uLL));
        v320 = vaddq_f32(vextq_s8(v319, v319, 4uLL), vextq_s8(v319, v319, 0xCuLL));
        v321 = *(v317 + 448);
        v322 = *(v317 + 464);
        v323 = *(v317 + 480);
        v324 = *(v317 + 496);
        v325 = vminq_f32(vmaxq_f32(vrecpeq_f32(v320), v322), v323);
        v326 = vminq_f32(vmaxq_f32(vmulq_f32(v325, vrecpsq_f32(v320, v325)), v322), v323);
        v327 = vmulq_f32(v326, vrecpsq_f32(v320, v326));
        v328 = *(v317 + 96);
        v329 = *(v317 + 112);
        v330 = vminq_f32(vmaxq_f32(vmulq_f32(v322, vrecpeq_f32(v328)), v324), v323);
        v332 = *(v317 + 512);
        v331 = *(v317 + 528);
        v333 = vbslq_s8(v332, vmulq_f32(v330, vrecpsq_f32(v328, v330)), v327);
        v334 = vmulq_f32(v15, *(v317 + 16));
        v335 = vaddq_f32(v334, vextq_s8(v334, v334, 4uLL));
        v335.i64[0] = vaddq_f32(v335, vdupq_laneq_s64(v335, 1)).u64[0];
        v336 = vmulq_f32(v15, *v317);
        v337 = vaddq_f32(v336, vextq_s8(v336, v336, 4uLL));
        v335.i64[1] = v333.i64[1];
        v338 = vbslq_s8(v331, vaddq_f32(v337, vextq_s8(v337, v337, 8uLL)), v335);
        v339 = vmulq_laneq_f32(v338, v338, 3);
        v335.i64[0] = v339.i64[0];
        v335.i64[1] = vdupq_laneq_s64(v338, 1).u64[0];
        v340 = vaddq_f32(v324, vmulq_n_f32(vrev64q_s32(v335), *v339.i32));
        v341 = vminq_f32(vmaxq_f32(vmulq_f32(v322, vrecpeq_f32(v329)), v324), v323);
        v342 = *(v317 + 544);
        v343 = *(v317 + 560);
        v344 = vbslq_s8(v332, vaddq_f32(v342, vmulq_lane_f32(vbslq_s8(v332, vmulq_f32(v341, vrecpsq_f32(v329, v341)), v340), *v339.i8, 1)), v340);
        v346 = *(v317 + 128);
        v345 = *(v317 + 144);
        v347 = vdupq_lane_s64(v345.i64[0], 0);
        v348 = vdupq_laneq_s32(v344, 3);
        v349 = vaddq_f32(v347, vmulq_laneq_f32(vsubq_f32(v345, v347), v344, 3));
        v347.i64[0] = vaddq_f32(*(v317 + 224), vmulq_laneq_f32(vsubq_f32(vdupq_laneq_s64(*(v317 + 224), 1), *(v317 + 224)), v344, 3)).u64[0];
        v347.i64[1] = v344.i64[1];
        v350 = vextq_s8(v349, v339, 8uLL);
        v351 = vaddq_f32(v350, vmulq_laneq_f32(vsubq_f32(v347, v350), v344, 2));
        v347.i64[0] = vaddq_f32(*(v317 + 160), vmulq_laneq_f32(vsubq_f32(vdupq_laneq_s64(*(v317 + 160), 1), *(v317 + 160)), v344, 3)).u64[0];
        *v348.f32 = vsub_f32(vadd_f32(*(v317 + 240), vmul_f32(vsub_f32(*&vextq_s8(*(v317 + 240), *(v317 + 240), 8uLL), *(v317 + 240)), *&vextq_s8(v348, v348, 8uLL))), *v347.f32);
        v348.i64[1] = v348.i64[0];
        v352 = vmulq_f32(v342, v351);
        v353 = vaddq_f32(vdupq_lane_s64(v347.i64[0], 0), vmulq_laneq_f32(v348, v344, 2));
        v354 = *(v317 + 576);
        v355 = *(v317 + 592);
        v356 = vaddq_f32(v343, vmulq_f32(v354, vextq_s8(v352, v352, 8uLL)));
        v357 = vcvtq_f32_s32(vcvtq_s32_f32(v356));
        v358 = vaddq_f32(v343, vabdq_f32(vsubq_f32(v356, vsubq_f32(v357, vandq_s8(v355, vcgtq_f32(v357, v356)))), v342));
        v359 = vmulq_f32(v358, v358);
        v360 = *(v317 + 608);
        v361 = *(v317 + 624);
        v363 = *(v317 + 640);
        v362 = *(v317 + 656);
        v352.i64[1] = vmulq_f32(v358, vaddq_f32(v362, vmulq_f32(v359, vaddq_f32(v363, vmulq_f32(v359, vaddq_f32(v360, vmulq_f32(v361, v359))))))).i64[1];
        v364 = vbslq_s8(v331, vmulq_f32(v362, vextq_s8(v353, v339, 8uLL)), v352);
        v365 = vrev64q_s32(v364);
        v366 = vaddq_f32(v363, vmulq_f32(v361, v365));
        v367 = vcvtq_f32_s32(vcvtq_s32_f32(v366));
        v368 = vaddq_f32(v363, vabdq_f32(vsubq_f32(v366, vsubq_f32(v367, vandq_s8(v360, vcgtq_f32(v367, v366)))), v355));
        v369 = vmulq_f32(v368, v368);
        v369.i64[0] = vmulq_f32(v368, vaddq_f32(v322, vmulq_f32(v369, vaddq_f32(v324, vmulq_f32(v369, vaddq_f32(v354, vmulq_f32(v343, v369))))))).u64[0];
        v371 = *(v317 + 320);
        v370 = *(v317 + 336);
        v369.i64[1] = v344.i64[1];
        v373 = *(v317 + 672);
        v372 = *(v317 + 688);
        v374 = vaddq_f32(v362, vmulq_f32(v363, v365));
        v375 = vcvtq_f32_s32(vcvtq_s32_f32(v374));
        v376 = vaddq_f32(v362, vabdq_f32(vsubq_f32(v374, vsubq_f32(v375, vandq_s8(v361, vcgtq_f32(v375, v374)))), v360));
        v377 = vmulq_f32(v376, v376);
        v376.i64[0] = vmulq_f32(v376, vaddq_f32(v324, vmulq_f32(v377, vaddq_f32(v343, vmulq_f32(v377, vaddq_f32(v355, vmulq_f32(v354, v377))))))).u64[0];
        v339.i64[1] = vmulq_f32(v372, vrev64q_s32(v353)).i64[1];
        v378 = *(v317 + 304);
        v379 = vbslq_s8(v373, vaddq_f32(vmulq_laneq_f32(v378, v364, 2), vbslq_s8(v373, vmulq_n_f32(v371, v369.f32[0]), v369)), v369);
        v380 = vmulq_n_f32(vextq_s8(v371, v371, 4uLL), v379.f32[0]);
        v376.i64[1] = v364.i64[1];
        v381 = *(v317 + 704);
        v382 = *(v317 + 720);
        v383 = vbslq_s8(v381, v380, v376);
        v384 = vbslq_s8(v381, vaddq_f32(vextq_s8(v379, v379, 8uLL), vmulq_lane_f32(vextq_s8(v370, v370, 8uLL), *v383.i8, 1)), v339);
        v385 = vaddq_f32(v372, vmulq_f32(v361, vextq_s8(v384, v384, 8uLL)));
        v386 = vcvtq_f32_s32(vcvtq_s32_f32(v385));
        v387 = vaddq_f32(v372, vabdq_f32(vsubq_f32(v385, vsubq_f32(v386, vandq_s8(v360, vcgtq_f32(v386, v385)))), v355));
        v388 = vmulq_f32(v387, v387);
        v389 = vbslq_s8(v331, vmulq_f32(v387, vaddq_f32(v322, vmulq_f32(v388, vaddq_f32(v324, vmulq_f32(v388, vaddq_f32(v354, vmulq_f32(v343, v388))))))), v383);
        v390 = vdupq_laneq_s32(v379, 3);
        v391 = vaddq_f32(*(v317 + 176), vmulq_laneq_f32(vsubq_f32(vdupq_laneq_s64(*(v317 + 176), 1), *(v317 + 176)), v379, 3)).u64[0];
        v392 = *(v317 + 272);
        *v390.f32 = vsub_f32(vadd_f32(*(v317 + 256), vmul_f32(vsub_f32(*&vextq_s8(*(v317 + 256), *(v317 + 256), 8uLL), *(v317 + 256)), *&vextq_s8(v390, v390, 8uLL))), v391);
        v390.i64[1] = v390.i64[0];
        v393 = vaddq_f32(vdupq_lane_s64(v391, 0), vmulq_laneq_f32(v390, v379, 2));
        v394 = *(v317 + 352);
        v395 = *(v317 + 368);
        v396 = vmulq_lane_f32(v389, *v394.i8, 1).u64[0];
        v370.i64[0] = vaddq_f32(vmulq_n_f32(vrev64q_s32(v394), v389.f32[0]), vrev64q_s32(vaddq_f32(vmulq_lane_f32(v370, *v389.f32, 1), vdupq_laneq_s64(vaddq_f32(vrev64q_s32(v389), vmulq_n_f32(v389, v378.f32[0])), 1)))).u64[0];
        v370.i64[1] = v379.i64[1];
        v397 = vmulq_f32(v382, v393);
        v398 = vextq_s8(v397, v384, 8uLL);
        v399 = vextq_s8(v384, v384, 4uLL);
        v384.i64[1] = v397.i64[1];
        v400 = vaddq_f32(v372, vmulq_f32(v361, v398));
        v401 = vcvtq_f32_s32(vcvtq_s32_f32(v400));
        v402 = vaddq_f32(v372, vabdq_f32(vsubq_f32(v400, vsubq_f32(v401, vandq_s8(v382, vcgtq_f32(v401, v400)))), v355));
        v403 = vmulq_f32(v402, v402);
        v404 = vbslq_s8(v331, vmulq_f32(v402, vaddq_f32(v322, vmulq_f32(v403, vaddq_f32(v324, vmulq_f32(v403, vaddq_f32(v354, vmulq_f32(v343, v403))))))), v370);
        v405 = vaddq_f32(*(v317 + 192), vmulq_laneq_f32(vsubq_f32(vdupq_laneq_s64(*(v317 + 192), 1), *(v317 + 192)), v404, 3));
        v406 = vbslq_s8(v332, vaddq_f32(vextq_s8(v404, v404, 0xCuLL), vmulq_n_f32(vextq_s8(v395, v395, 8uLL), v404.f32[0])), v384);
        v407 = vaddq_f32(vaddq_f32(v399, vdupq_lane_s64(v396, 0)), vmulq_n_f32(vextq_s8(v392, v395, 0xCuLL), v404.f32[0]));
        v392.i64[0] = vaddq_f32(v405, vmulq_laneq_f32(vsubq_f32(vaddq_f32(v392, vmulq_laneq_f32(vsubq_f32(vdupq_laneq_s64(v392, 1), v392), v404, 3)), v405), v404, 2)).u64[0];
        v392.i64[1] = vdupq_laneq_s64(v404, 1).u64[0];
        v408 = vrev64q_s32(v392);
        v409 = vaddq_f32(v372, vmulq_f32(v362, v406));
        v410 = vcvtq_f32_s32(vcvtq_s32_f32(v409));
        v411 = vaddq_f32(v372, vabdq_f32(vsubq_f32(v409, vsubq_f32(v410, vandq_s8(v363, vcgtq_f32(v410, v409)))), v361));
        v412 = vmulq_f32(v411, v411);
        v413 = vbslq_s8(v381, vmulq_f32(v411, vaddq_f32(v343, vmulq_f32(v412, vaddq_f32(v354, vmulq_f32(v412, vaddq_f32(v360, vmulq_f32(v355, v412))))))), v406);
        v415 = *(v317 + 384);
        v414 = *(v317 + 400);
        v407.i64[0] = vbslq_s8(v331, vaddq_f32(vdupq_laneq_s64(v407, 1), vmulq_laneq_f32(vrev64q_s32(v415), v413, 3)), vmulq_f32(v372, v408)).u64[0];
        v407.i64[1] = vaddq_f32(vmulq_laneq_f32(vdupq_lane_s64(*&v415, 0), v413, 3), v413).i64[1];
        v408.i64[0] = vmulq_f32(v362, v408).u64[0];
        v408.i64[1] = v404.i64[1];
        v416 = vaddq_f32(v362, vmulq_f32(v363, v407));
        v417 = vcvtq_f32_s32(vcvtq_s32_f32(v416));
        v418 = vaddq_f32(v362, vabdq_f32(vsubq_f32(v416, vsubq_f32(v417, vandq_s8(v382, vcgtq_f32(v417, v416)))), v360));
        v419 = vmulq_f32(v418, v418);
        v420 = vbslq_s8(v373, vmulq_f32(v418, vaddq_f32(v324, vmulq_f32(v419, vaddq_f32(v343, vmulq_f32(v419, vaddq_f32(v355, vmulq_f32(v354, v419))))))), v407);
        v421 = vbslq_s8(v373, vaddq_f32(vmulq_f32(v414, v420), vrev64q_s32(v420)), v408);
        v422 = vaddq_f32(v372, vmulq_f32(v361, v421));
        v423 = vcvtq_f32_s32(vcvtq_s32_f32(v422));
        v424 = vaddq_f32(v372, vabdq_f32(vsubq_f32(v422, vsubq_f32(v423, vandq_s8(v382, vcgtq_f32(v423, v422)))), v355));
        v425 = vmulq_f32(v424, v424);
        v426 = vbslq_s8(v331, vmulq_f32(v424, vaddq_f32(v322, vmulq_f32(v425, vaddq_f32(v324, vmulq_f32(v425, vaddq_f32(v354, vmulq_f32(v343, v425))))))), v420);
        v427 = *(v317 + 416);
        v428 = *(v317 + 432);
        v429 = vbslq_s8(v381, vaddq_f32(vextq_s8(v421, v421, 8uLL), vmulq_n_f32(vextq_s8(v427, v427, 8uLL), *v426.i32)), v426);
        v430 = vdupq_laneq_s32(v421, 3);
        v322.i64[0] = vaddq_f32(*(v317 + 208), vmulq_laneq_f32(vsubq_f32(vdupq_laneq_s64(*(v317 + 208), 1), *(v317 + 208)), v421, 3)).u64[0];
        *v430.f32 = vsub_f32(vadd_f32(*(v317 + 288), vmul_f32(vsub_f32(*&vextq_s8(*(v317 + 288), *(v317 + 288), 8uLL), *(v317 + 288)), *&vextq_s8(v430, v430, 8uLL))), *v322.f32);
        v430.i64[1] = v430.i64[0];
        v431 = vaddq_f32(vdupq_lane_s64(v322.i64[0], 0), vmulq_laneq_f32(v430, v421, 2));
        v432 = vrev64q_s32(v429);
        v433 = vaddq_f32(v432, vmulq_lane_f32(vextq_s8(v414, v414, 4uLL), *v429.f32, 1));
        v430.i64[0] = v413.i64[0];
        v430.i64[1] = vmulq_f32(v382, v431).i64[1];
        v434 = *(v317 + 736);
        v435 = vaddq_f32(v434, vmulq_f32(*(v317 + 752), v430));
        v436 = vcvtq_f32_s32(vcvtq_s32_f32(v435));
        v437 = vaddq_f32(v434, vabdq_f32(vsubq_f32(v435, vsubq_f32(v436, vandq_s8(*(v317 + 768), vcgtq_f32(v436, v435)))), v342));
        v438 = vmulq_f32(v437, v437);
        v439 = vmulq_f32(v437, vaddq_f32(*(v317 + 816), vmulq_f32(v438, vaddq_f32(*(v317 + 800), vmulq_f32(v438, vaddq_f32(v360, vmulq_f32(*(v317 + 784), v438)))))));
        v413.i64[1] = v439.i64[1];
        v440 = vbslq_s8(v331, vaddq_f32(v413, vmulq_f32(v346, vaddq_f32(vmulq_laneq_f32(v321, v439, 3), vaddq_f32(vmulq_laneq_f32(v428, v439, 2), vaddq_f32(vmulq_f32(v427, v429), vextq_s8(v433, v433, 0xCuLL)))))), v413);
        v441 = vbslq_s8(v332, vaddq_f32(v432, vmulq_lane_f32(v440, *v428.f32, 1)), v440);
        v442 = vbslq_s8(v331, v441, vaddq_f32(vmulq_n_f32(v346, vaddq_f32(vdupq_laneq_s32(v441, 2), vmulq_laneq_f32(vdupq_lane_s32(*v321.f32, 1), v441, 3)).f32[0]), v441));
        v443 = v442;
        v443.f32[3] = v14;
        v444 = *(v317 + 832);
        v442.i64[1] = vextq_s8(v443, v443, 8uLL).u64[0];
        *v443.f32 = vqtbl1_s8(v442, *v444.i8);
        *&v443.u32[2] = vqtbl1_s8(v442, *&vextq_s8(v444, v444, 8uLL));
        v445 = vmulq_f32(*(v317 + 80), v443);
        v446 = vaddq_f32(v445, vrev64q_s32(v445));
        v447 = vaddq_f32(v445, vextq_s8(v446, v446, 8uLL));
        v448 = vminq_f32(vmaxq_f32(vrecpeq_f32(v447), v324), v323);
        v449 = vminq_f32(vmaxq_f32(vmulq_f32(v448, vrecpsq_f32(v447, v448)), v324), v323);
        v450 = vmulq_f32(v449, vrecpsq_f32(v447, v449));
        v451 = vmulq_f32(*(v317 + 64), v443);
        v451.i64[0] = vaddq_f32(vextq_s8(v451, v450, 4uLL), vaddq_f32(v451, vrev64q_s32(v451))).u64[0];
        v451.i64[1] = v450.i64[1];
        v452 = vmulq_f32(*(v317 + 48), v443);
        v453 = vbslq_s8(v331, vaddq_f32(vextq_s8(v452, v452, 8uLL), vaddq_f32(v452, vrev64q_s32(v452))), v451);
        v454 = *(a2 + 22);
        v455 = vsubq_f32(vmulq_laneq_f32(v453, v453, 2), v9);
        v456 = *(a2 + 10);
        if (v5)
        {
          v457 = vaddq_s32(vcvtq_s32_f32(v455), vcltzq_f32(v455));
          v458 = vsubq_f32(v455, vcvtq_f32_s32(v457)).u64[0];
          v459 = (v456 + 16 * (v457.i32[0] + v457.i32[1] * v454));
          v460 = vaddq_f32(*v459, vmulq_n_f32(vsubq_f32(v459[1], *v459), v458.f32[0]));
          v461 = vaddq_f32(v460, vmulq_lane_f32(vsubq_f32(vaddq_f32(v459[v454], vmulq_n_f32(vsubq_f32(v459[v454 + 1], v459[v454]), v458.f32[0])), v460), v458, 1));
        }

        else
        {
          v462.i64[0] = 0x3F0000003F000000;
          v462.i64[1] = 0x3F0000003F000000;
          v463 = vaddq_f32(v455, v462);
          v464 = vcvtq_s32_f32(v463);
          v463.i64[0] = vaddq_s32(v464, vcgtq_f32(vcvtq_f32_s32(v464), v463)).u64[0];
          v461 = *(v456 + 16 * (v463.i32[0] + v463.i32[1] * v454));
        }

        *(v12 + 16 * v16) = v461;
        v11 = xmmword_2603429B0;
      }

      v15 = vaddq_f32(v466, xmmword_2603429C0);
      v12 += v13;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcUnderwaterRefractV2::GetDOD(HgcUnderwaterRefractV2 *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcUnderwaterRefractV2::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcUnderwaterRefractV2::HgcUnderwaterRefractV2(HgcUnderwaterRefractV2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E7848;
  operator new();
}

void HgcUnderwaterRefractV2::~HgcUnderwaterRefractV2(HGNode *this)
{
  *this = &unk_2871E7848;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40336BE119);
  }

  HGNode::~HGNode(this);
}

{
  HgcUnderwaterRefractV2::~HgcUnderwaterRefractV2(this);

  HGObject::operator delete(v1);
}

uint64_t HgcUnderwaterRefractV2::SetParameter(HgcUnderwaterRefractV2 *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      goto LABEL_148;
    case 1:
      v21 = *(this + 51);
      if (v21[4] == a3.n128_f32[0] && v21[5] == a4 && v21[6] == a5 && v21[7] == a6)
      {
        return 0;
      }

      v21[4] = a3.n128_f32[0];
      v21[5] = a4;
      v21[6] = a5;
      v21[7] = a6;
      goto LABEL_148;
    case 2:
      v17 = *(this + 51);
      if (v17[8] == a3.n128_f32[0] && v17[9] == a4 && v17[10] == a5 && v17[11] == a6)
      {
        return 0;
      }

      v17[8] = a3.n128_f32[0];
      v17[9] = a4;
      v17[10] = a5;
      v17[11] = a6;
      goto LABEL_148;
    case 3:
      v19 = *(this + 51);
      if (v19[3].n128_f32[0] == a3.n128_f32[0] && v19[3].n128_f32[1] == a4 && v19[3].n128_f32[2] == a6 && v19[3].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v19[3].n128_u32[0] = a3.n128_u32[0];
      v19[3].n128_f32[1] = a4;
      v19[3].n128_f32[2] = a6;
      a3.n128_f32[1] = a4;
      v19[3].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v19[53] = a3;
      goto LABEL_148;
    case 4:
      v12 = *(this + 51);
      if (v12[4].n128_f32[0] == a3.n128_f32[0] && v12[4].n128_f32[1] == a4 && v12[4].n128_f32[2] == a6 && v12[4].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v12[4].n128_u32[0] = a3.n128_u32[0];
      v12[4].n128_f32[1] = a4;
      v12[4].n128_f32[2] = a6;
      a3.n128_f32[1] = a4;
      v12[4].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v12[54] = a3;
      goto LABEL_148;
    case 5:
      v24 = *(this + 51);
      if (v24[5].n128_f32[0] == a3.n128_f32[0] && v24[5].n128_f32[1] == a4 && v24[5].n128_f32[2] == a6 && v24[5].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v24[5].n128_u32[0] = a3.n128_u32[0];
      v24[5].n128_f32[1] = a4;
      v24[5].n128_f32[2] = a6;
      a3.n128_f32[1] = a4;
      v24[5].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v24[55] = a3;
      goto LABEL_148;
    case 6:
      v27 = *(this + 51);
      if (v27[6].n128_f32[0] == 0.0 && v27[6].n128_f32[1] == 0.0 && v27[6].n128_f32[2] == a3.n128_f32[0] && v27[6].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v27[6].n128_u64[0] = 0;
      v27[6].n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v27[6].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v27[56] = a3;
      goto LABEL_148;
    case 7:
      v20 = *(this + 51);
      if (v20[7].n128_f32[0] == 0.0 && v20[7].n128_f32[1] == 0.0 && v20[7].n128_f32[2] == a3.n128_f32[0] && v20[7].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v20[7].n128_u64[0] = 0;
      v20[7].n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v20[7].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v20[57] = a3;
      goto LABEL_148;
    case 8:
      v30 = *(this + 51);
      if (v30[32] == a3.n128_f32[0] && v30[33] == a4 && v30[34] == a5 && v30[35] == a6)
      {
        return 0;
      }

      v30[32] = a3.n128_f32[0];
      v30[33] = a4;
      v30[34] = a5;
      v30[35] = a6;
      goto LABEL_148;
    case 9:
      v14 = *(this + 51);
      if (v14[36] == a3.n128_f32[0] && v14[37] == a4 && v14[38] == a5 && v14[39] == a6)
      {
        return 0;
      }

      v14[36] = a3.n128_f32[0];
      v14[37] = a4;
      v14[38] = a5;
      v14[39] = a6;
      goto LABEL_148;
    case 10:
      v29 = *(this + 51);
      if (v29[40] == a3.n128_f32[0] && v29[41] == a4 && v29[42] == a5 && v29[43] == a6)
      {
        return 0;
      }

      v29[40] = a3.n128_f32[0];
      v29[41] = a4;
      v29[42] = a5;
      v29[43] = a6;
      goto LABEL_148;
    case 11:
      v11 = *(this + 51);
      if (v11[44] == a3.n128_f32[0] && v11[45] == a4 && v11[46] == a5 && v11[47] == a6)
      {
        return 0;
      }

      v11[44] = a3.n128_f32[0];
      v11[45] = a4;
      v11[46] = a5;
      v11[47] = a6;
      goto LABEL_148;
    case 12:
      v13 = *(this + 51);
      if (v13[48] == a3.n128_f32[0] && v13[49] == a4 && v13[50] == a5 && v13[51] == a6)
      {
        return 0;
      }

      v13[48] = a3.n128_f32[0];
      v13[49] = a4;
      v13[50] = a5;
      v13[51] = a6;
      goto LABEL_148;
    case 13:
      v26 = *(this + 51);
      if (v26[52] == a3.n128_f32[0] && v26[53] == a4 && v26[54] == a5 && v26[55] == a6)
      {
        return 0;
      }

      v26[52] = a3.n128_f32[0];
      v26[53] = a4;
      v26[54] = a5;
      v26[55] = a6;
      goto LABEL_148;
    case 14:
      v10 = *(this + 51);
      if (v10[56] == a3.n128_f32[0] && v10[57] == a4 && v10[58] == a5 && v10[59] == a6)
      {
        return 0;
      }

      v10[56] = a3.n128_f32[0];
      v10[57] = a4;
      v10[58] = a5;
      v10[59] = a6;
      goto LABEL_148;
    case 15:
      v18 = *(this + 51);
      if (v18[60] == a3.n128_f32[0] && v18[61] == a4 && v18[62] == a5 && v18[63] == a6)
      {
        return 0;
      }

      v18[60] = a3.n128_f32[0];
      v18[61] = a4;
      v18[62] = a5;
      v18[63] = a6;
      goto LABEL_148;
    case 16:
      v9 = *(this + 51);
      if (v9[64] == a3.n128_f32[0] && v9[65] == a4 && v9[66] == a5 && v9[67] == a6)
      {
        return 0;
      }

      v9[64] = a3.n128_f32[0];
      v9[65] = a4;
      v9[66] = a5;
      v9[67] = a6;
      goto LABEL_148;
    case 17:
      v22 = *(this + 51);
      if (v22[68] == a3.n128_f32[0] && v22[69] == a4 && v22[70] == a5 && v22[71] == a6)
      {
        return 0;
      }

      v22[68] = a3.n128_f32[0];
      v22[69] = a4;
      v22[70] = a5;
      v22[71] = a6;
      goto LABEL_148;
    case 18:
      v28 = *(this + 51);
      if (v28[72] == a3.n128_f32[0] && v28[73] == a4 && v28[74] == a5 && v28[75] == a6)
      {
        return 0;
      }

      v28[72] = a3.n128_f32[0];
      v28[73] = a4;
      v28[74] = a5;
      v28[75] = a6;
      goto LABEL_148;
    case 19:
      v32 = *(this + 51);
      if (v32[76] == a3.n128_f32[0] && v32[77] == a4 && v32[78] == a5 && v32[79] == a6)
      {
        return 0;
      }

      v32[76] = a3.n128_f32[0];
      v32[77] = a4;
      v32[78] = a5;
      v32[79] = a6;
      goto LABEL_148;
    case 20:
      v23 = *(this + 51);
      if (v23[80] == a3.n128_f32[0] && v23[81] == a4 && v23[82] == a5 && v23[83] == a6)
      {
        return 0;
      }

      v23[80] = a3.n128_f32[0];
      v23[81] = a4;
      v23[82] = a5;
      v23[83] = a6;
      goto LABEL_148;
    case 21:
      v25 = *(this + 51);
      if (v25[84] == a3.n128_f32[0] && v25[85] == a4 && v25[86] == a5 && v25[87] == a6)
      {
        return 0;
      }

      v25[84] = a3.n128_f32[0];
      v25[85] = a4;
      v25[86] = a5;
      v25[87] = a6;
      goto LABEL_148;
    case 22:
      v31 = *(this + 51);
      if (v31[88] == a3.n128_f32[0] && v31[89] == a4 && v31[90] == a5 && v31[91] == a6)
      {
        return 0;
      }

      v31[88] = a3.n128_f32[0];
      v31[89] = a4;
      v31[90] = a5;
      v31[91] = a6;
      goto LABEL_148;
    case 23:
      v33 = *(this + 51);
      if (v33[92] == a3.n128_f32[0] && v33[93] == a4 && v33[94] == a5 && v33[95] == a6)
      {
        return 0;
      }

      v33[92] = a3.n128_f32[0];
      v33[93] = a4;
      v33[94] = a5;
      v33[95] = a6;
      goto LABEL_148;
    case 24:
      v16 = *(this + 51);
      if (v16[96] == a3.n128_f32[0] && v16[97] == a4 && v16[98] == a5 && v16[99] == a6)
      {
        return 0;
      }

      v16[96] = a3.n128_f32[0];
      v16[97] = a4;
      v16[98] = a5;
      v16[99] = a6;
      goto LABEL_148;
    case 25:
      v15 = *(this + 51);
      if (v15[100] == a3.n128_f32[0] && v15[101] == a4 && v15[102] == a5 && v15[103] == a6)
      {
        return 0;
      }

      v15[100] = a3.n128_f32[0];
      v15[101] = a4;
      v15[102] = a5;
      v15[103] = a6;
      goto LABEL_148;
    case 26:
      v36 = *(this + 51);
      if (v36[104] == a3.n128_f32[0] && v36[105] == a4 && v36[106] == a5 && v36[107] == a6)
      {
        return 0;
      }

      v36[104] = a3.n128_f32[0];
      v36[105] = a4;
      v36[106] = a5;
      v36[107] = a6;
      goto LABEL_148;
    case 27:
      v8 = *(this + 51);
      if (v8[108] == a3.n128_f32[0] && v8[109] == a4 && v8[110] == a5 && v8[111] == a6)
      {
        return 0;
      }

      v8[108] = a3.n128_f32[0];
      v8[109] = a4;
      v8[110] = a5;
      v8[111] = a6;
      goto LABEL_148;
    case 28:
      v34 = *(this + 51);
      if (v34[112] == a3.n128_f32[0] && v34[113] == a4 && v34[114] == a5 && v34[115] == a6)
      {
        return 0;
      }

      v34[112] = a3.n128_f32[0];
      v34[113] = a4;
      v34[114] = a5;
      v34[115] = a6;
LABEL_148:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

float HgcUnderwaterRefractV2::GetParameter(HgcUnderwaterRefractV2 *this, int a2, float *a3)
{
  switch(a2)
  {
    case 0:
      v3 = *(this + 51);
      *a3 = *v3;
      a3[1] = v3[1];
      a3[2] = v3[2];
      v4 = v3 + 3;
      goto LABEL_31;
    case 1:
      v18 = *(this + 51);
      *a3 = v18[4];
      a3[1] = v18[5];
      a3[2] = v18[6];
      v4 = v18 + 7;
      goto LABEL_31;
    case 2:
      v14 = *(this + 51);
      *a3 = v14[8];
      a3[1] = v14[9];
      a3[2] = v14[10];
      v4 = v14 + 11;
      goto LABEL_31;
    case 3:
      v16 = *(this + 51);
      *a3 = v16[212];
      a3[1] = v16[213];
      a3[2] = v16[214];
      v4 = v16 + 215;
      goto LABEL_31;
    case 4:
      v9 = *(this + 51);
      *a3 = v9[216];
      a3[1] = v9[217];
      a3[2] = v9[218];
      v4 = v9 + 219;
      goto LABEL_31;
    case 5:
      v21 = *(this + 51);
      *a3 = v21[220];
      a3[1] = v21[221];
      a3[2] = v21[222];
      v4 = v21 + 223;
      goto LABEL_31;
    case 6:
      v24 = *(this + 51);
      *a3 = v24[224];
      a3[1] = v24[225];
      a3[2] = v24[226];
      v4 = v24 + 227;
      goto LABEL_31;
    case 7:
      v17 = *(this + 51);
      *a3 = v17[228];
      a3[1] = v17[229];
      a3[2] = v17[230];
      v4 = v17 + 231;
      goto LABEL_31;
    case 8:
      v27 = *(this + 51);
      *a3 = v27[32];
      a3[1] = v27[33];
      a3[2] = v27[34];
      v4 = v27 + 35;
      goto LABEL_31;
    case 9:
      v11 = *(this + 51);
      *a3 = v11[36];
      a3[1] = v11[37];
      a3[2] = v11[38];
      v4 = v11 + 39;
      goto LABEL_31;
    case 10:
      v26 = *(this + 51);
      *a3 = v26[40];
      a3[1] = v26[41];
      a3[2] = v26[42];
      v4 = v26 + 43;
      goto LABEL_31;
    case 11:
      v8 = *(this + 51);
      *a3 = v8[44];
      a3[1] = v8[45];
      a3[2] = v8[46];
      v4 = v8 + 47;
      goto LABEL_31;
    case 12:
      v10 = *(this + 51);
      *a3 = v10[48];
      a3[1] = v10[49];
      a3[2] = v10[50];
      v4 = v10 + 51;
      goto LABEL_31;
    case 13:
      v23 = *(this + 51);
      *a3 = v23[52];
      a3[1] = v23[53];
      a3[2] = v23[54];
      v4 = v23 + 55;
      goto LABEL_31;
    case 14:
      v7 = *(this + 51);
      *a3 = v7[56];
      a3[1] = v7[57];
      a3[2] = v7[58];
      v4 = v7 + 59;
      goto LABEL_31;
    case 15:
      v15 = *(this + 51);
      *a3 = v15[60];
      a3[1] = v15[61];
      a3[2] = v15[62];
      v4 = v15 + 63;
      goto LABEL_31;
    case 16:
      v6 = *(this + 51);
      *a3 = v6[64];
      a3[1] = v6[65];
      a3[2] = v6[66];
      v4 = v6 + 67;
      goto LABEL_31;
    case 17:
      v19 = *(this + 51);
      *a3 = v19[68];
      a3[1] = v19[69];
      a3[2] = v19[70];
      v4 = v19 + 71;
      goto LABEL_31;
    case 18:
      v25 = *(this + 51);
      *a3 = v25[72];
      a3[1] = v25[73];
      a3[2] = v25[74];
      v4 = v25 + 75;
      goto LABEL_31;
    case 19:
      v29 = *(this + 51);
      *a3 = v29[76];
      a3[1] = v29[77];
      a3[2] = v29[78];
      v4 = v29 + 79;
      goto LABEL_31;
    case 20:
      v20 = *(this + 51);
      *a3 = v20[80];
      a3[1] = v20[81];
      a3[2] = v20[82];
      v4 = v20 + 83;
      goto LABEL_31;
    case 21:
      v22 = *(this + 51);
      *a3 = v22[84];
      a3[1] = v22[85];
      a3[2] = v22[86];
      v4 = v22 + 87;
      goto LABEL_31;
    case 22:
      v28 = *(this + 51);
      *a3 = v28[88];
      a3[1] = v28[89];
      a3[2] = v28[90];
      v4 = v28 + 91;
      goto LABEL_31;
    case 23:
      v30 = *(this + 51);
      *a3 = v30[92];
      a3[1] = v30[93];
      a3[2] = v30[94];
      v4 = v30 + 95;
      goto LABEL_31;
    case 24:
      v13 = *(this + 51);
      *a3 = v13[96];
      a3[1] = v13[97];
      a3[2] = v13[98];
      v4 = v13 + 99;
      goto LABEL_31;
    case 25:
      v12 = *(this + 51);
      *a3 = v12[100];
      a3[1] = v12[101];
      a3[2] = v12[102];
      v4 = v12 + 103;
      goto LABEL_31;
    case 26:
      v32 = *(this + 51);
      *a3 = v32[104];
      a3[1] = v32[105];
      a3[2] = v32[106];
      v4 = v32 + 107;
      goto LABEL_31;
    case 27:
      v5 = *(this + 51);
      *a3 = v5[108];
      a3[1] = v5[109];
      a3[2] = v5[110];
      v4 = v5 + 111;
      goto LABEL_31;
    case 28:
      v31 = *(this + 51);
      *a3 = v31[112];
      a3[1] = v31[113];
      a3[2] = v31[114];
      v4 = v31 + 115;
LABEL_31:
      result = *v4;
      a3[3] = *v4;
      break;
    default:
      return result;
  }

  return result;
}

double HgcUnderwaterRefractV2::State::State(HgcUnderwaterRefractV2::State *this)
{
  result = 0.0;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
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
  *(this + 28) = 0u;
  *(this + 29) = xmmword_260346790;
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(this + 30) = vnegq_f32(v2);
  *(this + 31) = xmmword_2603467A0;
  *(this + 32) = xmmword_260344660;
  *(this + 33) = xmmword_2603444B0;
  *(this + 34) = xmmword_2603467B0;
  *(this + 35) = xmmword_2603467C0;
  *(this + 36) = xmmword_2603467D0;
  *(this + 37) = xmmword_2603467E0;
  *(this + 38) = xmmword_2603467F0;
  *(this + 39) = xmmword_260346800;
  *(this + 40) = xmmword_260346810;
  *(this + 41) = xmmword_260346820;
  *(this + 42) = xmmword_260344670;
  *(this + 43) = xmmword_260346830;
  *(this + 44) = xmmword_260344600;
  *(this + 45) = xmmword_260346840;
  *(this + 46) = xmmword_260346850;
  *(this + 47) = xmmword_260346860;
  *(this + 48) = xmmword_260346870;
  *(this + 49) = xmmword_260346880;
  *(this + 50) = xmmword_260346890;
  *(this + 51) = xmmword_2603468A0;
  *(this + 56) = 0u;
  *(this + 57) = 0u;
  *(this + 54) = 0u;
  *(this + 55) = 0u;
  *(this + 52) = xmmword_260344DB0;
  *(this + 53) = 0u;
  return result;
}

const char *HgcWave::GetProgram(HgcWave *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000046a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*hg_Params[6].xy;\n    s1.xy = frag._texCoord0.xy - hg_Params[2].xy;\n    s2.x = hg_Params[1].x*s1.x;\n    s2.x = sin(s2.x);\n    s2.y = hg_Params[0].x*s2.x;\n    s1.x = hg_Params[1].x*s1.y;\n    s1.x = sin(s1.x);\n    s2.x = hg_Params[0].x*s1.x;\n    s2.xy = s2.xy*hg_Params[6].xy;\n    s2.xy = s2.xy*hg_Params[3].xy + s0.xy;\n    s2.xy = s2.xy*hg_Params[6].zw;\n    s1.xy = fmin(s2.xy, hg_Params[4].xy);\n    s1.xy = fmax(s1.xy, hg_Params[4].zw);\n    s2.xy = select(s1.xy, s2.xy, hg_Params[5].xy < 0.00000h);\n    s2.xy = s2.xy + hg_Params[7].xy;\n    s2.xy = s2.xy*hg_Params[7].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s2.xy);\n    return output;\n}\n//MD5=5400a7ca:2c54e984:3d4e4af3:9f87c9d8\n//SIG=00400000:00000000:00000000:00000001:0000:0008:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000462\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*hg_Params[6].xy;\n    r1.xy = frag._texCoord0.xy - hg_Params[2].xy;\n    r2.x = hg_Params[1].x*r1.x;\n    r2.x = sin(r2.x);\n    r2.y = hg_Params[0].x*r2.x;\n    r1.x = hg_Params[1].x*r1.y;\n    r1.x = sin(r1.x);\n    r2.x = hg_Params[0].x*r1.x;\n    r2.xy = r2.xy*hg_Params[6].xy;\n    r2.xy = r2.xy*hg_Params[3].xy + r0.xy;\n    r2.xy = r2.xy*hg_Params[6].zw;\n    r1.xy = fmin(r2.xy, hg_Params[4].xy);\n    r1.xy = fmax(r1.xy, hg_Params[4].zw);\n    r2.xy = select(r1.xy, r2.xy, hg_Params[5].xy < 0.00000f);\n    r2.xy = r2.xy + hg_Params[7].xy;\n    r2.xy = r2.xy*hg_Params[7].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r2.xy);\n    return output;\n}\n//MD5=81e7491b:b78c38e6:f39489bb:def99b37\n//SIG=00000000:00000000:00000000:00000000:0000:0008:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000584\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy*hg_ProgramLocal6.xy;\n    r1.xy = hg_TexCoord0.xy - hg_ProgramLocal2.xy;\n    r2.x = hg_ProgramLocal1.x*r1.x;\n    r2.x = sin(r2.x);\n    r2.y = hg_ProgramLocal0.x*r2.x;\n    r1.x = hg_ProgramLocal1.x*r1.y;\n    r1.x = sin(r1.x);\n    r2.x = hg_ProgramLocal0.x*r1.x;\n    r2.xy = r2.xy*hg_ProgramLocal6.xy;\n    r2.xy = r2.xy*hg_ProgramLocal3.xy + r0.xy;\n    r2.xy = r2.xy*hg_ProgramLocal6.zw;\n    r1.xy = min(r2.xy, hg_ProgramLocal4.xy);\n    r1.xy = max(r1.xy, hg_ProgramLocal4.zw);\n    r2.xy = vec2(hg_ProgramLocal5.x < 0.00000 ? r2.x : r1.x, hg_ProgramLocal5.y < 0.00000 ? r2.y : r1.y);\n    r2.xy = r2.xy + hg_ProgramLocal7.xy;\n    r2.xy = r2.xy*hg_ProgramLocal7.zw;\n    gl_FragColor = texture2D(hg_Texture0, r2.xy);\n}\n//MD5=1b1fac7b:6a58cce4:075d267f:f5f3bc11\n//SIG=00000000:00000000:00000000:00000000:0000:0008:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAA6250(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAA63D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAA6420()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAA6418);
}

uint64_t HgcWave::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcWave::Bind(HgcWave *this, HGHandler *a2)
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

uint64_t HgcWave::RenderTile(HgcWave *this, HGTile *a2)
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
          v20 = *(v19 + 6);
          v21 = *(v19 + 7);
          v23 = *(v19 + 2);
          v22 = *(v19 + 3);
          v24 = vsubq_f32(v17, v23);
          v25 = vsubq_f32(v18, v23);
          v26 = *(v19 + 1);
          v27 = *(v19 + 8);
          v28 = *(v19 + 9);
          v29 = vaddq_f32(v21, vmulq_f32(vmulq_f32(v26, v24), v27));
          v30 = vaddq_f32(v21, vmulq_f32(vmulq_f32(v26, v25), v27));
          v31 = vcvtq_f32_s32(vcvtq_s32_f32(v29));
          v32 = vcvtq_f32_s32(vcvtq_s32_f32(v30));
          v33 = vsubq_f32(v29, vsubq_f32(v31, vandq_s8(v28, vcgtq_f32(v31, v29))));
          v34 = vsubq_f32(v30, vsubq_f32(v32, vandq_s8(v28, vcgtq_f32(v32, v30))));
          v35 = *(v19 + 10);
          v36 = *(v19 + 11);
          v37 = vaddq_f32(v21, vabdq_f32(v33, v35));
          v38 = vaddq_f32(v21, vabdq_f32(v34, v35));
          v39 = vmulq_f32(v37, v37);
          v40 = vmulq_f32(v38, v38);
          v41 = *(v19 + 12);
          v42 = *(v19 + 13);
          v43 = *(v19 + 14);
          v44 = vaddq_f32(v21, vmulq_f32(vmulq_lane_f32(v26, *v24.f32, 1), v27));
          v45 = vaddq_f32(v21, vmulq_f32(vmulq_lane_f32(v26, *v25.f32, 1), v27));
          v46 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
          v47 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
          v48 = vaddq_f32(v21, vabdq_f32(vsubq_f32(v44, vsubq_f32(v46, vandq_s8(v28, vcgtq_f32(v46, v44)))), v35));
          v49 = vaddq_f32(v21, vabdq_f32(vsubq_f32(v45, vsubq_f32(v47, vandq_s8(v28, vcgtq_f32(v47, v45)))), v35));
          v50 = vmulq_f32(v48, v48);
          v51 = vmulq_f32(v49, v49);
          v52 = vaddq_f32(vmulq_f32(v17, v20), vmulq_f32(v22, vmulq_f32(v20, vbslq_s8(*(v19 + 15), vmulq_f32(*v19, vmulq_f32(v48, vaddq_f32(v43, vmulq_f32(v50, vaddq_f32(v42, vmulq_f32(v50, vaddq_f32(v36, vmulq_f32(v41, v50)))))))), vmulq_n_f32(vrev64q_s32(vmulq_f32(v37, vaddq_f32(v43, vmulq_f32(v39, vaddq_f32(v42, vmulq_f32(v39, vaddq_f32(v36, vmulq_f32(v41, v39)))))))), COERCE_FLOAT(*v19))))));
          v53 = vaddq_f32(vmulq_f32(v18, v20), vmulq_f32(v22, vmulq_f32(v20, vbslq_s8(*(v19 + 15), vmulq_f32(*v19, vmulq_f32(v49, vaddq_f32(v43, vmulq_f32(v51, vaddq_f32(v42, vmulq_f32(v51, vaddq_f32(v36, vmulq_f32(v41, v51)))))))), vmulq_n_f32(vrev64q_s32(vmulq_f32(v38, vaddq_f32(v43, vmulq_f32(v40, vaddq_f32(v42, vmulq_f32(v40, vaddq_f32(v36, vmulq_f32(v41, v40)))))))), COERCE_FLOAT(*v19))))));
          v54 = vextq_s8(v20, v20, 8uLL);
          v55 = vmulq_f32(v54, v52);
          v56 = vmulq_f32(v54, v53);
          v57 = *(v19 + 4);
          v58 = vminq_f32(v55, v57);
          v59 = vminq_f32(v56, v57);
          v60 = vextq_s8(v57, v57, 8uLL);
          v61 = vcgtq_f32(*(v19 + 16), *(v19 + 5));
          v62 = vbslq_s8(v61, v56, vmaxq_f32(v59, v60));
          v63 = *(a2 + 22);
          v64 = vsubq_f32(vbslq_s8(v61, v55, vmaxq_f32(v58, v60)), v9);
          v65 = *(a2 + 10);
          if (v5)
          {
            v66 = vaddq_s32(vcvtq_s32_f32(v64), vcltzq_f32(v64));
            v67 = vsubq_f32(v64, vcvtq_f32_s32(v66)).u64[0];
            v68 = vsubq_f32(v62, v9);
            v69 = vaddq_s32(vcvtq_s32_f32(v68), vcltzq_f32(v68));
            v70 = vsubq_f32(v68, vcvtq_f32_s32(v69)).u64[0];
            *v66.i8 = vmla_s32(vzip1_s32(*v66.i8, *v69.i8), vzip2_s32(*v66.i8, *v69.i8), vdup_n_s32(v63));
            v71 = (v65 + 16 * v66.i32[0]);
            v72 = vaddq_f32(*v71, vmulq_n_f32(vsubq_f32(v71[1], *v71), v67.f32[0]));
            v73 = vaddq_f32(v72, vmulq_lane_f32(vsubq_f32(vaddq_f32(v71[v63], vmulq_n_f32(vsubq_f32(v71[v63 + 1], v71[v63]), v67.f32[0])), v72), v67, 1));
            v74 = (v65 + 16 * v66.i32[1]);
            v75 = vaddq_f32(*v74, vmulq_n_f32(vsubq_f32(v74[1], *v74), v70.f32[0]));
            v76 = vaddq_f32(v75, vmulq_lane_f32(vsubq_f32(vaddq_f32(v74[v63], vmulq_n_f32(vsubq_f32(v74[v63 + 1], v74[v63]), v70.f32[0])), v75), v70, 1));
          }

          else
          {
            v77 = vaddq_f32(v64, v13);
            v78 = vcvtq_s32_f32(v77);
            v79 = vaddq_f32(vsubq_f32(v62, v9), v13);
            v80 = vcvtq_s32_f32(v79);
            *v77.f32 = vadd_s32(*v78.i8, *&vcgtq_f32(vcvtq_f32_s32(v78), v77));
            *v79.f32 = vadd_s32(*v80.i8, *&vcgtq_f32(vcvtq_f32_s32(v80), v79));
            *v79.f32 = vmla_s32(vzip1_s32(*v77.f32, *v79.f32), vzip2_s32(*v77.f32, *v79.f32), vdup_n_s32(v63));
            v81 = v79.i32[1];
            v73 = *(v65 + 16 * v79.i32[0]);
            v76 = *(v65 + 16 * v81);
          }

          v82 = (v11 + 16 * v15);
          *v82 = v73;
          v82[1] = v76;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v83 = *(this + 51);
        v84 = vsubq_f32(v17, *(v83 + 2));
        v85 = *(v83 + 1);
        v86 = *(v83 + 6);
        v87 = *(v83 + 7);
        v88 = *(v83 + 8);
        v89 = *(v83 + 9);
        v90 = vaddq_f32(v87, vmulq_f32(vmulq_f32(v85, v84), v88));
        v91 = vcvtq_f32_s32(vcvtq_s32_f32(v90));
        v92 = vsubq_f32(v90, vsubq_f32(v91, vandq_s8(v89, vcgtq_f32(v91, v90))));
        v93 = *(v83 + 10);
        v94 = vaddq_f32(v87, vabdq_f32(v92, v93));
        v95 = vmulq_f32(v94, v94);
        v96 = vaddq_f32(v87, vmulq_f32(vmulq_lane_f32(v85, *v84.f32, 1), v88));
        v97 = vcvtq_f32_s32(vcvtq_s32_f32(v96));
        v98 = vaddq_f32(v87, vabdq_f32(vsubq_f32(v96, vsubq_f32(v97, vandq_s8(v89, vcgtq_f32(v97, v96)))), v93));
        v99 = vmulq_f32(v98, v98);
        v100 = vmulq_f32(vextq_s8(v86, v86, 8uLL), vaddq_f32(vmulq_f32(v17, v86), vmulq_f32(*(v83 + 3), vmulq_f32(v86, vbslq_s8(*(v83 + 15), vmulq_f32(*v83, vmulq_f32(v98, vaddq_f32(*(v83 + 14), vmulq_f32(v99, vaddq_f32(*(v83 + 13), vmulq_f32(v99, vaddq_f32(*(v83 + 11), vmulq_f32(*(v83 + 12), v99)))))))), vmulq_n_f32(vrev64q_s32(vmulq_f32(v94, vaddq_f32(*(v83 + 14), vmulq_f32(v95, vaddq_f32(*(v83 + 13), vmulq_f32(v95, vaddq_f32(*(v83 + 11), vmulq_f32(*(v83 + 12), v95)))))))), COERCE_FLOAT(*v83)))))));
        v101 = vbslq_s8(vcgtq_f32(*(v83 + 16), *(v83 + 5)), v100, vmaxq_f32(vminq_f32(v100, *(v83 + 4)), vextq_s8(*(v83 + 4), *(v83 + 4), 8uLL)));
        v102 = *(a2 + 22);
        v103 = vsubq_f32(v101, v9);
        v104 = *(a2 + 10);
        if (v5)
        {
          v105 = vaddq_s32(vcvtq_s32_f32(v103), vcltzq_f32(v103));
          v106 = vsubq_f32(v103, vcvtq_f32_s32(v105)).u64[0];
          v107 = (v104 + 16 * (v105.i32[0] + v105.i32[1] * v102));
          v108 = vaddq_f32(*v107, vmulq_n_f32(vsubq_f32(v107[1], *v107), v106.f32[0]));
          v109 = vaddq_f32(v108, vmulq_lane_f32(vsubq_f32(vaddq_f32(v107[v102], vmulq_n_f32(vsubq_f32(v107[v102 + 1], v107[v102]), v106.f32[0])), v108), v106, 1));
        }

        else
        {
          v110 = vaddq_f32(v103, v13);
          v111 = vcvtq_s32_f32(v110);
          v110.i64[0] = vaddq_s32(v111, vcgtq_f32(vcvtq_f32_s32(v111), v110)).u64[0];
          v109 = *(v104 + 16 * (v110.i32[0] + v110.i32[1] * v102));
        }

        *(v11 + 16 * v15) = v109;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcWave::GetDOD(HgcWave *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcWave::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcWave::HgcWave(HgcWave *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E7AB0;
  operator new();
}

void HgcWave::~HgcWave(HGNode *this)
{
  *this = &unk_2871E7AB0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40881B329ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgcWave::~HgcWave(this);

  HGObject::operator delete(v1);
}

uint64_t HgcWave::SetParameter(HgcWave *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 6)
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

uint64_t HgcWave::GetParameter(HgcWave *this, unsigned int a2, float *a3)
{
  if (a2 > 6)
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

const char *HgcScaleAndAddClampDazzle::GetProgram(HgcScaleAndAddClampDazzle *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003b1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r1*half4(hg_Params[0]) + r0;\n    r1.w = fmin(r1.w, c0.w);\n    r1.xyz = fmin(r1.xyz, half3(hg_Params[1].xyz));\n    output.color0 = fmax(float4(r1), float4(c0.xxxx));\n    return output;\n}\n//MD5=fe79b40d:214bfd7f:518ff8a2:75725324\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000388\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r1*hg_Params[0] + r0;\n    r1.w = fmin(r1.w, c0.w);\n    r1.xyz = fmin(r1.xyz, hg_Params[1].xyz);\n    output.color0 = fmax(r1, c0.xxxx);\n    return output;\n}\n//MD5=38827cc6:0975ef63:75b0fada:9c695211\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000360\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = r1*hg_ProgramLocal0 + r0;\n    r1.w = min(r1.w, c0.w);\n    r1.xyz = min(r1.xyz, hg_ProgramLocal1.xyz);\n    gl_FragColor = max(r1, c0.xxxx);\n}\n//MD5=a22c88ac:6adfb8b3:27136144:420f2ceb\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FAA71C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAA7300(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAA7348()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAA7340);
}

uint64_t HgcScaleAndAddClampDazzle::BindTexture(HgcScaleAndAddClampDazzle *this, HGHandler *a2, int a3)
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

uint64_t HgcScaleAndAddClampDazzle::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcScaleAndAddClampDazzle::RenderTile(uint64_t a1, uint64_t a2)
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
          v15 = *(v14 + 16);
          v16 = vaddq_f32(*(v8 + v12 - 32), vmulq_f32(*(v6 + v12 - 32), *v14));
          v17 = vaddq_f32(*(v8 + v12 - 16), vmulq_f32(*(v6 + v12 - 16), *v14));
          v18 = vaddq_f32(*(v8 + v12), vmulq_f32(*(v6 + v12), *v14));
          v19 = vaddq_f32(*(v8 + v12 + 16), vmulq_f32(*(v6 + v12 + 16), *v14));
          v20 = *(v14 + 32);
          v21 = *(v14 + 48);
          v22 = vminq_f32(v16, v20);
          v23 = vminq_f32(v17, v20);
          v24 = vminq_f32(v18, v20);
          v25 = vminq_f32(v19, v20);
          v26 = vbslq_s8(v21, v25, vminq_f32(vbslq_s8(v21, v25, v19), v15));
          v27 = *(v14 + 64);
          v28 = (v5 + v12);
          v28[-2] = vmaxq_f32(vbslq_s8(v21, v22, vminq_f32(vbslq_s8(v21, v22, v16), v15)), v27);
          v28[-1] = vmaxq_f32(vbslq_s8(v21, v23, vminq_f32(vbslq_s8(v21, v23, v17), v15)), v27);
          *v28 = vmaxq_f32(vbslq_s8(v21, v24, vminq_f32(vbslq_s8(v21, v24, v18), v15)), v27);
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
          v31 = vminq_f32(v30, *(v29 + 32));
          *(v5 + 16 * v11++) = vmaxq_f32(vbslq_s8(*(v29 + 48), v31, vminq_f32(vbslq_s8(*(v29 + 48), v31, v30), *(v29 + 16))), *(v29 + 64));
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

uint64_t HgcScaleAndAddClampDazzle::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcScaleAndAddClampDazzle::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcScaleAndAddClampDazzle::HgcScaleAndAddClampDazzle(HgcScaleAndAddClampDazzle *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E7D18;
  operator new();
}

void HgcScaleAndAddClampDazzle::~HgcScaleAndAddClampDazzle(HGNode *this)
{
  *this = &unk_2871E7D18;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcScaleAndAddClampDazzle::~HgcScaleAndAddClampDazzle(this);

  HGObject::operator delete(v1);
}

uint64_t HgcScaleAndAddClampDazzle::SetParameter(HgcScaleAndAddClampDazzle *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      *(v8 + 80) = a3;
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

uint64_t HgcScaleAndAddClampDazzle::GetParameter(HgcScaleAndAddClampDazzle *this, int a2, float *a3)
{
  if (a2 == 1)
  {
    v5 = *(this + 51);
    *a3 = v5[20];
    a3[1] = v5[21];
    a3[2] = v5[22];
    v4 = v5 + 23;
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

const char *HgcOverlappingCircles::GetProgram(HgcOverlappingCircles *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n"
             "//LEN=0000000d2d\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]])\n"
             "{\n"
             "    const half4 c0 = half4(1.500000000, 2.000000000, 0.5000000000, 3.000000000);\n"
             "    const half4 c1 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n"
             "    half4 r0, r1;\n"
             "    float4 s0, s1, s2, s3;\n"
             "    FragmentOut output;\n"
             "\n"
             "    s0.z = dot(frag._texCoord0, hg_Params[6]);\n"
             "    s0.w = 1.00000f / hg_Params[1].x;\n"
             "    s0.x = dot(frag._texCoord0, hg_Params[5]);\n"
             "    s0.y = s0.z;\n"
             "    s1.xy = s0.ww*s0.xy;\n"
             "    s1.xy = floor(s1.xy);\n"
             "    s1.xy = -s1.xy*hg_Params[1].xx + s0.xy;\n"
             "    s1.zw = hg_Params[1].xx*float2(c0.zz);\n"
             "    r0.zw = c0.xx*half2(hg_Params[1].xx);\n"
             "    r1.y = half(s1.w);\n"
             "    r1.x = r0.z;\n"
             "    s2.zw = s1.xy - float2(r1.xy);\n"
             "    s2.w = s2.w*s2.w;\n"
             "    s2.z = s2.z*s2.z + s2.w;\n"
             "    s2.y = s1.w;\n"
             "    s2.x = -s1.z;\n"
             "    s2.xy = s1.xy - s2.xy;\n"
             "    s2.y = s2.y*s2.y;\n"
             "    s2.x = s2.x*s2.x + s2.y;\n"
             "    s2.yz = sqrt(s2.zx);\n"
             "    s2.y = hg_Params[0].x - s2.y;\n"
             "    s2.x = clamp(s2.y*hg_Params[7].x, 0.00000f, 1.00000f);\n"
             "    s2.y = hg_Params[0].x - s2.z;\n"
             "    s2.y = clamp(s2.y*hg_Params[7].x, 0.00000f, 1.00000f);\n"
             "    s2.z = -s2.x*float(c0.y) + float(c0.w);\n"
             "    s2.x = s2.x*s2.x;\n"
             "    s0.y = s2.x*s2.z;\n"
             "    s2.z = s2.y*s2.y;\n"
             "    s2.w = -s2.y*float(c0.y) + float(c0.w);\n"
             "    s2.xy = s1.xy - s1.zw;\n"
             "    s2.y = s2.y*s2.y;\n"
             "    s3.x = s2.x*s2.x + s2.y;\n"
             "    r0.y = sqrt(half(s3.x));\n"
             "    r0.y = half(hg_Params[0].x) - r0.y;\n"
             "    r0.y = clamp(r0.y*half(hg_Params[7].x), 0.00000h, 1.00000h);\n"
             "    r1.y = -half(s1.w);\n"
             "    r1.x = half(s1.z);\n"
             "    s3.xy = s1.xy - float2(r1.xy);\n"
             "    r0.x = half(s2.z)*half(s2.w);\n"
             "    s2 = mix(hg_Params[4], hg_Params[2], float4(r0.xxxx));\n"
             "    s2 = mix(s2, hg_Params[2], s0.yyyy);\n"
             "    s1.w = -float(r0.y)*float(c0.y) + float(c0.w);\n"
             "    r0.y = r0.y*r0.y;\n"
             "    r0.y = r0.y*half(s1.w);\n"
             "    s2 = mix(s2, hg_Params[3], float4(r0.yyyy));\n"
             "    s1.w = s3.y*s3.y;\n"
             "    s1.w = s3.x*s3.x + s1.w;\n"
             "    r0.z = rsqrt(half(s1.w));\n"
             "    s1.w = float(r0.w);\n"
             "    s1.xy = s1.xy - s1.zw;\n"
             "    s1.z = 1.00000f / float(r0.z);\n"
             "    s1.y = s1.y*s1.y;\n"
             "    s1.x = s1.x*s1.x + s1.y;\n"
             "    s1.z = hg_Params[0].x - s1.z;\n"
             "    s1.y = clamp(s1.z*hg_Params[7].x, 0.00000f, 1.00000f);\n"
             "    s1.x = sqrt(s1.x);\n"
             "    s1.x = hg_Params[0].x - s1.x;\n"
             "    r0.w = clamp(half(s1.x)*half(hg_Params[7].x), 0.00000h, 1.00000h);\n"
             "    s1.z = -s1.y*float(c0.y) + float(c0.w);\n"
             "    s1.y = s1.y*s1.y;\n"
             "    r0.z = half(s1.y)*half(s1.z);\n"
             "    s3 = mix(hg_Params[4], hg_Params[3], float4(r0.zzzz));\n"
             "    s1.x = -float(r0.w)*float(c0.y) + float(c0.w);\n"
             "    r0.w = r0.w*r0.w;\n"
             "    r0.w = r0.w*half(s1.x);\n"
             "    s3 = mix(s3, hg_Params[3], float4(r0.wwww));\n"
             "    s2 = mix(s2, hg_Params[2], float4(r0.wwww));\n"
             "    s2 = mix(s2, hg_Params[2], float4(r0.zzzz));\n"
             "    s3 = mix(s3, hg_Params[2], float4(r0.yyyy));\n"
             "    s1.xy = s0.wz*s0.xw;\n"
             "    s1.xz = floor(s1.yx);\n"
             "    s1.yw = s1.xz*float2(c0.zz);\n"
             "    s1.yw = floor(s1.yw);\n"
             "    s1.xz = -s1.yw*float2(c0.yy) + s1.xz;\n"
             "    s1.xy = float2(-fabs(s1.xz) >= float2(c1.xx));\n"
             "    s1.x = s1.x - s1.y;\n"
             "    s3 = mix(s3, hg_Params[3], float4(r0.xxxx));\n"
             "    s3 = mix(s3, hg_Params[3], s0.yyyy);\n"
             "    s1.x = float(-fabs(s1.x) >= float(c1.x));\n"
             "    output.color0 = select(s2, s3, -s1.xxxx < 0.00000h);\n"
             "    return output;\n"
             "}\n"
             "//MD5=729f8d42:3aa54242:f50e99e6:2a2f0512\n"
             "//SIG=00400000:00000000:00000000:00000000:0002:0008:0006:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000be9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(1.500000000, 2.000000000, 0.5000000000, 3.000000000);\n    const float4 c1 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0.z = dot(frag._texCoord0, hg_Params[6]);\n    r0.w = 1.00000f / hg_Params[1].x;\n    r0.x = dot(frag._texCoord0, hg_Params[5]);\n    r0.y = r0.z;\n    r1.xy = r0.ww*r0.xy;\n    r1.xy = floor(r1.xy);\n    r1.xy = -r1.xy*hg_Params[1].xx + r0.xy;\n    r1.zw = hg_Params[1].xx*c0.zz;\n    r2.zw = c0.xx*hg_Params[1].xx;\n    r3.y = r1.w;\n    r3.x = r2.z;\n    r3.zw = r1.xy - r3.xy;\n    r3.w = r3.w*r3.w;\n    r3.z = r3.z*r3.z + r3.w;\n    r3.y = r1.w;\n    r3.x = -r1.z;\n    r3.xy = r1.xy - r3.xy;\n    r3.y = r3.y*r3.y;\n    r3.x = r3.x*r3.x + r3.y;\n    r3.yz = sqrt(r3.zx);\n    r3.y = hg_Params[0].x - r3.y;\n    r3.x = clamp(r3.y*hg_Params[7].x, 0.00000f, 1.00000f);\n    r3.y = hg_Params[0].x - r3.z;\n    r3.y = clamp(r3.y*hg_Params[7].x, 0.00000f, 1.00000f);\n    r3.z = -r3.x*c0.y + c0.w;\n    r3.x = r3.x*r3.x;\n    r0.y = r3.x*r3.z;\n    r3.z = r3.y*r3.y;\n    r3.w = -r3.y*c0.y + c0.w;\n    r3.xy = r1.xy - r1.zw;\n    r3.y = r3.y*r3.y;\n    r4.x = r3.x*r3.x + r3.y;\n    r2.y = sqrt(r4.x);\n    r2.y = hg_Params[0].x - r2.y;\n    r2.y = clamp(r2.y*hg_Params[7].x, 0.00000f, 1.00000f);\n    r4.y = -r1.w;\n    r4.x = r1.z;\n    r4.xy = r1.xy - r4.xy;\n    r2.x = r3.z*r3.w;\n    r3 = mix(hg_Params[4], hg_Params[2], r2.xxxx);\n    r3 = mix(r3, hg_Params[2], r0.yyyy);\n    r1.w = -r2.y*c0.y + c0.w;\n    r2.y = r2.y*r2.y;\n    r2.y = r2.y*r1.w;\n    r3 = mix(r3, hg_Params[3], r2.yyyy);\n    r1.w = r4.y*r4.y;\n    r1.w = r4.x*r4.x + r1.w;\n    r2.z = rsqrt(r1.w);\n    r1.w = r2.w;\n    r1.xy = r1.xy - r1.zw;\n    r1.z = 1.00000f / r2.z;\n    r1.y = r1.y*r1.y;\n    r1.x = r1.x*r1.x + r1.y;\n    r1.z = hg_Params[0].x - r1.z;\n    r1.y = clamp(r1.z*hg_Params[7].x, 0.00000f, 1.00000f);\n    r1.x = sqrt(r1.x);\n    r1.x = hg_Params[0].x - r1.x;\n    r2.w = clamp(r1.x*hg_Params[7].x, 0.00000f, 1.00000f);\n    r1.z = -r1.y*c0.y + c0.w;\n    r1.y = r1.y*r1.y;\n    r2.z = r1.y*r1.z;\n    r4 = mix(hg_Params[4], hg_Params[3], r2.zzzz);\n    r1.x = -r2.w*c0.y + c0.w;\n    r2.w = r2.w*r2.w;\n    r2.w = r2.w*r1.x;\n    r4 = mix(r4, hg_Params[3], r2.wwww);\n    r3 = mix(r3, hg_Params[2], r2.wwww);\n    r3 = mix(r3, hg_Params[2], r2.zzzz);\n    r4 = mix(r4, hg_Params[2], r2.yyyy);\n    r1.xy = r0.wz*r0.xw;\n    r1.xz = floor(r1.yx);\n    r1.yw = r1.xz*c0.zz;\n    r1.yw = floor(r1.yw);\n    r1.xz = -r1.yw*c0.yy + r1.xz;\n    r1.xy = float2(-fabs(r1.xz) >= c1.xx);\n    r1.x = r1.x - r1.y;\n    r4 = mix(r4, hg_Params[3], r2.xxxx);\n    r4 = mix(r4, hg_Params[3], r0.yyyy);\n    r1.x = float(-fabs(r1.x) >= c1.x);\n    output.color0 = select(r3, r4, -r1.xxxx < 0.00000f);\n    return output;\n}\n//MD5=3541d97c:3ceca835:d1636424:fb3ca751\n//SIG=00000000:00000000:00000000:00000000:0002:0008:0005:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000dc6\n"
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
           "varying highp vec4 hg_TexCoord0;\n"
           "void main()\n"
           "{\n"
           "    const highp vec4 c0 = vec4(1.500000000, 2.000000000, 0.5000000000, 3.000000000);\n"
           "    const highp vec4 c1 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n"
           "    highp vec4 r0, r1, r2, r3, r4;\n"
           "\n"
           "    r0.z = dot(hg_TexCoord0, hg_ProgramLocal6);\n"
           "    r0.w = 1.00000 / hg_ProgramLocal1.x;\n"
           "    r0.x = dot(hg_TexCoord0, hg_ProgramLocal5);\n"
           "    r0.y = r0.z;\n"
           "    r1.xy = r0.ww*r0.xy;\n"
           "    r1.xy = floor(r1.xy);\n"
           "    r1.xy = -r1.xy*hg_ProgramLocal1.xx + r0.xy;\n"
           "    r1.zw = hg_ProgramLocal1.xx*c0.zz;\n"
           "    r2.zw = c0.xx*hg_ProgramLocal1.xx;\n"
           "    r3.y = r1.w;\n"
           "    r3.x = r2.z;\n"
           "    r3.zw = r1.xy - r3.xy;\n"
           "    r3.w = r3.w*r3.w;\n"
           "    r3.z = r3.z*r3.z + r3.w;\n"
           "    r3.y = r1.w;\n"
           "    r3.x = -r1.z;\n"
           "    r3.xy = r1.xy - r3.xy;\n"
           "    r3.y = r3.y*r3.y;\n"
           "    r3.x = r3.x*r3.x + r3.y;\n"
           "    r3.yz = sqrt(r3.zx);\n"
           "    r3.y = hg_ProgramLocal0.x - r3.y;\n"
           "    r3.x = clamp(r3.y*hg_ProgramLocal7.x, 0.00000, 1.00000);\n"
           "    r3.y = hg_ProgramLocal0.x - r3.z;\n"
           "    r3.y = clamp(r3.y*hg_ProgramLocal7.x, 0.00000, 1.00000);\n"
           "    r3.z = -r3.x*c0.y + c0.w;\n"
           "    r3.x = r3.x*r3.x;\n"
           "    r0.y = r3.x*r3.z;\n"
           "    r3.z = r3.y*r3.y;\n"
           "    r3.w = -r3.y*c0.y + c0.w;\n"
           "    r3.xy = r1.xy - r1.zw;\n"
           "    r3.y = r3.y*r3.y;\n"
           "    r4.x = r3.x*r3.x + r3.y;\n"
           "    r2.y = sqrt(r4.x);\n"
           "    r2.y = hg_ProgramLocal0.x - r2.y;\n"
           "    r2.y = clamp(r2.y*hg_ProgramLocal7.x, 0.00000, 1.00000);\n"
           "    r4.y = -r1.w;\n"
           "    r4.x = r1.z;\n"
           "    r4.xy = r1.xy - r4.xy;\n"
           "    r2.x = r3.z*r3.w;\n"
           "    r3 = mix(hg_ProgramLocal4, hg_ProgramLocal2, r2.xxxx);\n"
           "    r3 = mix(r3, hg_ProgramLocal2, r0.yyyy);\n"
           "    r1.w = -r2.y*c0.y + c0.w;\n"
           "    r2.y = r2.y*r2.y;\n"
           "    r2.y = r2.y*r1.w;\n"
           "    r3 = mix(r3, hg_ProgramLocal3, r2.yyyy);\n"
           "    r1.w = r4.y*r4.y;\n"
           "    r1.w = r4.x*r4.x + r1.w;\n"
           "    r2.z = inversesqrt(r1.w);\n"
           "    r1.w = r2.w;\n"
           "    r1.xy = r1.xy - r1.zw;\n"
           "    r1.z = 1.00000 / r2.z;\n"
           "    r1.y = r1.y*r1.y;\n"
           "    r1.x = r1.x*r1.x + r1.y;\n"
           "    r1.z = hg_ProgramLocal0.x - r1.z;\n"
           "    r1.y = clamp(r1.z*hg_ProgramLocal7.x, 0.00000, 1.00000);\n"
           "    r1.x = sqrt(r1.x);\n"
           "    r1.x = hg_ProgramLocal0.x - r1.x;\n"
           "    r2.w = clamp(r1.x*hg_ProgramLocal7.x, 0.00000, 1.00000);\n"
           "    r1.z = -r1.y*c0.y + c0.w;\n"
           "    r1.y = r1.y*r1.y;\n"
           "    r2.z = r1.y*r1.z;\n"
           "    r4 = mix(hg_ProgramLocal4, hg_ProgramLocal3, r2.zzzz);\n"
           "    r1.x = -r2.w*c0.y + c0.w;\n"
           "    r2.w = r2.w*r2.w;\n"
           "    r2.w = r2.w*r1.x;\n"
           "    r4 = mix(r4, hg_ProgramLocal3, r2.wwww);\n"
           "    r3 = mix(r3, hg_ProgramLocal2, r2.wwww);\n"
           "    r3 = mix(r3, hg_ProgramLocal2, r2.zzzz);\n"
           "    r4 = mix(r4, hg_ProgramLocal2, r2.yyyy);\n"
           "    r1.xy = r0.wz*r0.xw;\n"
           "    r1.xz = floor(r1.yx);\n"
           "    r1.yw = r1.xz*c0.zz;\n"
           "    r1.yw = floor(r1.yw);\n"
           "    r1.xz = -r1.yw*c0.yy + r1.xz;\n"
           "    r1.xy = vec2(greaterThanEqual(-abs(r1.xz), c1.xx));\n"
           "    r1.x = r1.x - r1.y;\n"
           "    r4 = mix(r4, hg_ProgramLocal3, r2.xxxx);\n"
           "    r4 = mix(r4, hg_ProgramLocal3, r0.yyyy);\n"
           "    r1.x = float(-abs(r1.x) >= c1.x);\n"
           "    gl_FragColor = vec4(-r1.x < 0.00000 ? r4.x : r3.x, -r1.x < 0.00000 ? r4.y : r3.y, -r1.x < 0.00000 ? r4.z : r3.z, -r1.x < 0.00000 ? r4.w : r3.w);\n"
           "}\n"
           "//MD5=7266f630:876155f1:694b993b:5f8533d7\n"
           "//SIG=00000000:00000000:00000000:00000000:0002:0008:0005:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_25FAA7AF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAA7BF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAA7C30()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAA7C28);
}

uint64_t HgcOverlappingCircles::Bind(HgcOverlappingCircles *this, HGHandler *a2)
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

uint64_t HgcOverlappingCircles::RenderTile(uint64_t a1, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    *v9.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v6 = xmmword_2603429B0;
    v7 = xmmword_2603429C0;
    v8 = a2[2];
    v9.i64[1] = 0x3F80000000000000;
    v10 = 16 * a2[3].i32[0];
    v11 = 0uLL;
    do
    {
      if (v5 < 2)
      {
        v12 = 0;
        v14 = v9;
      }

      else
      {
        v12 = 0;
        v13 = v5;
        v304 = v9;
        v14 = v9;
        do
        {
          v15 = vaddq_f32(v14, v6);
          v16 = *(a1 + 408);
          v17 = *(v16 + 96);
          v18 = *(v16 + 112);
          v19 = vmulq_f32(v14, v17);
          v20 = vmulq_f32(v15, v17);
          v21 = vaddq_f32(v19, vextq_s8(v19, v19, 4uLL));
          v22 = vaddq_f32(v20, vextq_s8(v20, v20, 4uLL));
          v23 = *(v16 + 16);
          v24 = vextq_s8(v23, v23, 4uLL);
          v25 = *(v16 + 128);
          v26 = *(v16 + 144);
          v27 = vaddq_f32(v21, vdupq_lane_s64(v21.i64[0], 0));
          v29 = *(v16 + 160);
          v28 = *(v16 + 176);
          v30 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v24), v25), v26), v29);
          v31 = vaddq_f32(v22, vdupq_lane_s64(v22.i64[0], 0));
          v32 = vmulq_f32(v30, vrecpsq_f32(v24, v30));
          v33 = *(v16 + 64);
          v34 = *(v16 + 80);
          v35 = vmulq_f32(v14, v34);
          v36 = vmulq_f32(v15, v34);
          v37 = vbslq_s8(v28, v27, v32);
          v38 = vaddq_f32(v35, vextq_s8(v35, v35, 4uLL));
          v39 = vbslq_s8(v28, v31, v32);
          v40 = vaddq_f32(v36, vextq_s8(v36, v36, 4uLL));
          v27.i64[0] = vaddq_f32(v38, vdupq_laneq_s64(v38, 1)).u64[0];
          v27.i64[1] = v37.i64[1];
          v40.i64[0] = vaddq_f32(v40, vdupq_laneq_s64(v40, 1)).u64[0];
          v40.i64[1] = v39.i64[1];
          v42 = *(v16 + 192);
          v41 = *(v16 + 208);
          v43 = vbslq_s8(v42, vextq_s8(v27, v27, 4uLL), v27);
          v44 = vbslq_s8(v42, vextq_s8(v40, v40, 4uLL), v40);
          v45 = vmulq_laneq_f32(v43, v43, 3);
          v46 = vmulq_laneq_f32(v44, v44, 3);
          v47 = vcvtq_f32_s32(vcvtq_s32_f32(v45));
          v48 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
          v49 = vsubq_f32(v43, vmulq_n_f32(vsubq_f32(v47, vbslq_s8(vcgtq_f32(v47, v45), v26, v11)), *v23.i32));
          v50 = vsubq_f32(v44, vmulq_n_f32(vsubq_f32(v48, vbslq_s8(vcgtq_f32(v48, v46), v26, v11)), *v23.i32));
          v51.i64[0] = v49.i64[0];
          v52.i64[0] = v50.i64[0];
          v51.i64[1] = vmulq_n_f32(v41, *&v23).i64[1];
          v52.i64[1] = v51.i64[1];
          v53 = *(v16 + 224);
          v54 = *(v16 + 240);
          v55 = vmulq_n_f32(v53, *v23.i32);
          v56 = vextq_s8(v51, v51, 8uLL);
          v57 = vextq_s8(v52, v52, 8uLL);
          v58 = vextq_s8(v55, v55, 8uLL);
          v59 = vsubq_f32(v51, vbslq_s8(v54, v58, v56));
          v60 = vsubq_f32(v52, vbslq_s8(v54, v58, v57));
          v61 = vmulq_f32(v59, v59);
          v62 = vmulq_f32(v60, v60);
          v63 = vbslq_s8(v28, vextq_s8(v59, v59, 8uLL), vextq_s8(v61, v61, 8uLL));
          v64 = vbslq_s8(v28, vextq_s8(v60, v60, 8uLL), vextq_s8(v62, v62, 8uLL));
          v65 = vaddq_f32(vmulq_f32(v64, v64), vrev64q_s32(v64));
          v66 = vnegq_f32(v51);
          v67 = vnegq_f32(v52);
          v68 = vextq_s8(v66, v66, 8uLL);
          v61.i64[0] = vsubq_f32(v49, v56).u64[0];
          v69 = vbslq_s8(v54, v56, v68);
          v56.i64[1] = vaddq_f32(vmulq_f32(v63, v63), vrev64q_s32(*&v63)).i64[1];
          v70 = vextq_s8(v67, v67, 8uLL);
          v71 = vbslq_s8(v54, v68, v56);
          v67.i64[0] = vsubq_f32(v50, v57).u64[0];
          v72 = vbslq_s8(v54, v57, v70);
          v57.i64[1] = v65.i64[1];
          v73 = vbslq_s8(v54, v70, v57);
          v49.i64[0] = vsubq_f32(v49, v71).u64[0];
          v50.i64[0] = vsubq_f32(v50, v73).u64[0];
          v49.i64[1] = v71.i64[1];
          v50.i64[1] = v73.i64[1];
          v74 = vbslq_s8(v42, vmulq_f32(v49, v49), v49);
          v75 = vbslq_s8(v42, vmulq_f32(v50, v50), v50);
          v50.i64[0] = vextq_s8(v74, v74, 8uLL).u64[0];
          *v68.i8 = vadd_f32(vmul_f32(*v74.i8, *v74.i8), vrev64_s32(*v74.i8));
          v77 = *(v16 + 256);
          v76 = *(v16 + 272);
          v68.i64[1] = v50.i64[0];
          *v70.f32 = vqtbl1_s8(v68, *v77.f32);
          v50.i64[0] = vextq_s8(v77, v77, 8uLL).u64[0];
          *v78.i8 = vadd_f32(vmul_f32(*v75.f32, *v75.f32), vrev64_s32(*v75.f32));
          v78.i64[1] = vextq_s8(v75, v75, 8uLL).u64[0];
          *v75.f32 = vqtbl1_s8(v78, *v77.f32);
          *&v70.u32[2] = vqtbl1_s8(v68, *v50.f32);
          *&v75.u32[2] = vqtbl1_s8(v78, *v50.f32);
          v79 = vminq_f32(vrsqrteq_f32(v70), v29);
          v80 = vminq_f32(vrsqrteq_f32(v75), v29);
          v81 = vminq_f32(vmulq_f32(v79, vrsqrtsq_f32(vmulq_f32(v79, v70), v79)), v29);
          v82 = vminq_f32(vmulq_f32(v80, vrsqrtsq_f32(vmulq_f32(v80, v75), v80)), v29);
          v83 = vmulq_f32(vminq_f32(vmulq_f32(v81, vrsqrtsq_f32(vmulq_f32(v81, v70), v81)), v29), v70);
          v84 = vmulq_f32(vminq_f32(vmulq_f32(v82, vrsqrtsq_f32(vmulq_f32(v82, v75), v82)), v29), v75);
          v85 = vrev64q_s32(*v16);
          v86 = vminq_f32(vmaxq_f32(vmulq_lane_f32(v18, *&vsubq_f32(v85, v83), 1), v53), v41);
          v87 = vminq_f32(vmaxq_f32(vmulq_lane_f32(v18, *&vsubq_f32(v85, v84), 1), v53), v41);
          *v70.f32 = vext_s8(*v86.i8, *&vextq_s8(v83, v83, 8uLL), 4uLL);
          v88 = vextq_s8(v83, v86, 0xCuLL).u64[0];
          *v89.f32 = vext_s8(*v87.i8, *&vextq_s8(v84, v84, 8uLL), 4uLL);
          v86.i64[1] = v83.i64[1];
          v83.i64[0] = vextq_s8(v84, v87, 0xCuLL).u64[0];
          v87.i64[1] = v84.i64[1];
          v70.i64[1] = v88;
          v89.i64[1] = v83.i64[0];
          v84.i64[0] = vbslq_s8(v54, v86, vminq_f32(vmaxq_f32(vmulq_n_f32(vbslq_s8(v54, v86, vsubq_f32(v85, v70)), v18.f32[0]), v53), v41)).u64[0];
          v90.i64[0] = vbslq_s8(v54, v87, vminq_f32(vmaxq_f32(vmulq_n_f32(vbslq_s8(v54, v87, vsubq_f32(v85, v89)), v18.f32[0]), v53), v41)).u64[0];
          v84.i64[1] = vsubq_f32(v26, vmulq_f32(v25, vdupq_lane_s64(*&v84, 0))).i64[1];
          v90.i64[1] = vsubq_f32(v26, vmulq_f32(v25, vdupq_lane_s64(*&v90, 0))).i64[1];
          v91 = vbslq_s8(v54, vmulq_f32(v84, v84), v84);
          v92 = vbslq_s8(v54, vmulq_f32(v90, v90), v90);
          v93 = vmulq_n_f32(vextq_s8(v91, v91, 4uLL), *v91.i32);
          v94 = *(v16 + 288);
          v95 = *(v16 + 304);
          v61.i64[1] = vbslq_s8(v28, vmulq_lane_f32(vextq_s8(v91, v91, 0xCuLL), *&v91, 1), vsubq_f32(v76, vmulq_f32(v94, vdupq_lane_s64(*&v91, 0)))).i64[1];
          v67.i64[1] = vbslq_s8(v28, vmulq_lane_f32(vextq_s8(v91, v92, 0xCuLL), *&v92, 1), vsubq_f32(v76, vmulq_f32(v94, vdupq_lane_s64(*&v92, 0)))).i64[1];
          v96 = vmulq_n_f32(vextq_s8(v92, v92, 4uLL), *v92.i32);
          v97 = vbslq_s8(v42, v93, v27);
          v98 = vbslq_s8(v42, vmulq_f32(v61, v61), v61);
          v99 = vbslq_s8(v42, vmulq_f32(v67, v67), v67);
          v100 = vaddq_f32(vrev64q_s32(vmulq_f32(v98, v98)), v98);
          v101 = vaddq_f32(vrev64q_s32(vmulq_f32(v99, v99)), v99);
          v102 = vminq_f32(vrsqrteq_f32(v100), v94);
          v103 = vminq_f32(vrsqrteq_f32(v101), v94);
          v104 = vminq_f32(vmulq_f32(v102, vrsqrtsq_f32(vmulq_f32(v102, v100), v102)), v94);
          v105 = vminq_f32(vmulq_f32(v103, vrsqrtsq_f32(vmulq_f32(v103, v101), v103)), v94);
          v106 = vbslq_s8(v42, v96, v40);
          v96.i64[0] = vsubq_f32(v85, vmulq_f32(vminq_f32(vmulq_f32(v104, vrsqrtsq_f32(vmulq_f32(v104, v100), v104)), v94), v100)).u64[0];
          v100.i64[0] = vsubq_f32(v85, vmulq_f32(vminq_f32(vmulq_f32(v105, vrsqrtsq_f32(vmulq_f32(v105, v101), v105)), v94), v101)).u64[0];
          v96.i64[1] = v55.i64[1];
          v100.i64[1] = v55.i64[1];
          v96.i64[0] = vminq_f32(vmaxq_f32(vmulq_n_f32(v96, v18.f32[0]), v76), v41).u64[0];
          v100.i64[0] = vminq_f32(vmaxq_f32(vmulq_n_f32(v100, v18.f32[0]), v76), v41).u64[0];
          v96.i64[1] = v55.i64[1];
          v107 = vsubq_f32(v51, v69);
          v108 = vsubq_f32(v52, v72);
          v100.i64[1] = v55.i64[1];
          v109 = vbslq_s8(v54, vmulq_laneq_f32(vextq_s8(v98, v98, 0xCuLL), v98, 2), v96);
          v110 = *(v16 + 32);
          v111 = *(v16 + 48);
          v112 = vbslq_s8(v54, vmulq_laneq_f32(vextq_s8(v99, v99, 0xCuLL), v99, 2), v100);
          v113 = vsubq_f32(v110, v33);
          v114 = vrev64q_s32(vbslq_s8(v95, vaddq_f32(vmulq_n_f32(vextq_s8(v107, v107, 4uLL), *v107.i32), vbslq_s8(v95, vmulq_lane_f32(vextq_s8(v107, v107, 8uLL), *v107.i8, 1), v51)), v51));
          v115 = vrev64q_s32(vbslq_s8(v95, vaddq_f32(vmulq_n_f32(vextq_s8(v108, v108, 4uLL), *v108.i32), vbslq_s8(v95, vmulq_lane_f32(vextq_s8(v108, v108, 8uLL), *v108.i8, 1), v52)), v52));
          v116 = vminq_f32(vrsqrteq_f32(v114), v94);
          v117 = vmulq_f32(v116, vrsqrtsq_f32(vmulq_f32(v116, v114), v116));
          v118 = vminq_f32(vrsqrteq_f32(v115), v94);
          v119 = vmulq_f32(v118, vrsqrtsq_f32(vmulq_f32(v118, v115), v118));
          v120 = vaddq_f32(v33, vmulq_n_f32(v113, v109.f32[0]));
          v121 = vbslq_s8(v42, vmulq_laneq_f32(vbslq_s8(v42, vmulq_f32(v109, v109), v109), vbslq_s8(v95, vsubq_f32(v76, vmulq_lane_f32(v94, *v109.f32, 1)), v51), 3), v109);
          v122 = vminq_f32(v117, v94);
          v123 = vminq_f32(v119, v94);
          v124 = vbslq_s8(v42, vmulq_laneq_f32(vbslq_s8(v42, vmulq_f32(v112, v112), v112), vbslq_s8(v95, vsubq_f32(v76, vmulq_lane_f32(v94, *v112.f32, 1)), v52), 3), v112);
          v125 = vbslq_s8(v28, vmulq_f32(v122, vrsqrtsq_f32(vmulq_f32(v122, v114), v122)), v121);
          v126 = vbslq_s8(v28, vmulq_f32(v123, vrsqrtsq_f32(vmulq_f32(v123, v115), v123)), v124);
          v127 = vbslq_s8(v95, v125, v51);
          v128 = vbslq_s8(v95, v126, v52);
          v127.i64[0] = vsubq_f32(v127, vdupq_laneq_s64(v127, 1)).u64[0];
          v129 = vminq_f32(vmaxq_f32(vrecpeq_f32(v125), v76), v29);
          v128.i64[0] = vsubq_f32(v128, vdupq_laneq_s64(v128, 1)).u64[0];
          v130 = vminq_f32(vmaxq_f32(vrecpeq_f32(v126), v76), v29);
          v131 = vminq_f32(vmaxq_f32(vmulq_f32(v129, vrecpsq_f32(v125, v129)), v76), v29);
          v132 = vminq_f32(vmaxq_f32(vmulq_f32(v130, vrecpsq_f32(v126, v130)), v76), v29);
          v127.i64[1] = vmulq_f32(v131, vrecpsq_f32(v125, v131)).i64[1];
          v128.i64[1] = vmulq_f32(v132, vrecpsq_f32(v126, v132)).i64[1];
          v133 = vbslq_s8(v42, vmulq_f32(v127, v127), v127);
          v134 = vbslq_s8(v42, vmulq_f32(v128, v128), v128);
          v132.i64[0] = vaddq_f32(vmulq_f32(v133, v133), vrev64q_s32(v133)).u64[0];
          v135 = vextq_s8(*v16, *v16, 8uLL);
          v29.i64[0] = vaddq_f32(vmulq_f32(v134, v134), vrev64q_s32(v134)).u64[0];
          v136 = vsubq_f32(v135, v133);
          v137 = vsubq_f32(v135, v134);
          v132.i64[1] = v136.i64[1];
          v29.i64[1] = v137.i64[1];
          v138 = vrev64q_s32(v18);
          v139 = vminq_f32(vmaxq_f32(vmulq_laneq_f32(v138, v136, 2), v76), v41);
          v140 = vminq_f32(vmaxq_f32(vmulq_laneq_f32(v138, v137, 2), v76), v41);
          v141 = vbslq_s8(v54, v132, v139);
          v142 = vbslq_s8(v54, v29, v140);
          v143 = vaddq_f32(v120, vmulq_lane_f32(vsubq_f32(v110, v120), *v97.i8, 1));
          v144 = vminq_f32(vrsqrteq_f32(v141), v94);
          v145 = vminq_f32(vrsqrteq_f32(v142), v94);
          v146 = vminq_f32(vmulq_f32(v144, vrsqrtsq_f32(vmulq_f32(v144, v141), v144)), v94);
          v147 = vminq_f32(vmulq_f32(v145, vrsqrtsq_f32(vmulq_f32(v145, v142), v145)), v94);
          v148 = vbslq_s8(v54, vsubq_f32(*v16, vbslq_s8(v54, vmulq_f32(vminq_f32(vmulq_f32(v146, vrsqrtsq_f32(vmulq_f32(v146, v141), v146)), v94), v141), v139)), v139);
          v149 = vbslq_s8(v54, vsubq_f32(*v16, vbslq_s8(v54, vmulq_f32(vminq_f32(vmulq_f32(v147, vrsqrtsq_f32(vmulq_f32(v147, v142), v147)), v94), v142), v140)), v140);
          v150 = vextq_s8(v18, v18, 4uLL);
          v151 = vmulq_n_f32(v150, v148.f32[0]);
          v152 = *(v16 + 320);
          v153 = *(v16 + 336);
          v154 = vsubq_f32(v153, vmulq_f32(v152, vextq_s8(v148, v149, 0xCuLL)));
          v148.i64[1] = vsubq_f32(v153, vmulq_f32(v152, vextq_s8(*&v148, *&v148, 0xCuLL))).i64[1];
          v149.i64[1] = v154.i64[1];
          v141.i64[0] = vmulq_f32(v148, v148).u64[0];
          v141.i64[1] = v148.i64[1];
          v54.i64[0] = vmulq_f32(v149, v149).u64[0];
          v54.i64[1] = v154.i64[1];
          v155 = vminq_f32(vmaxq_f32(vmulq_n_f32(v150, v149.f32[0]), v152), v153);
          v156 = vmulq_lane_f32(v54, *v54.f32, 1);
          v125.i64[1] = vminq_f32(vmaxq_f32(v151, v152), v153).i64[1];
          v157 = vbslq_s8(v28, vmulq_lane_f32(v141, *v141.f32, 1), v125);
          v126.i64[1] = v155.i64[1];
          *v148.f32 = vqtbl1_s8(v97, *v77.f32);
          v158 = vbslq_s8(v28, v156, v126);
          v11 = 0uLL;
          v160 = *(v16 + 352);
          v159 = *(v16 + 368);
          *v154.f32 = vqtbl1_s8(v97, *v160.f32);
          v94.i64[0] = vextq_s8(v160, v160, 8uLL).u64[0];
          *&v148.u32[2] = vqtbl1_s8(v97, *v50.f32);
          *&v154.u32[2] = vqtbl1_s8(v97, *v94.f32);
          v161 = vsubq_f32(v111, v33);
          v162 = vmulq_f32(v148, v154);
          *v155.f32 = vqtbl1_s8(v162, *v159.f32);
          v163 = vaddq_f32(v143, vmulq_lane_f32(vsubq_f32(v111, v143), *v121.i8, 1));
          v147.i64[0] = vextq_s8(v159, v159, 8uLL).u64[0];
          *&v155.u32[2] = vqtbl1_s8(v162, *v147.f32);
          v164 = vaddq_f32(v33, vmulq_laneq_f32(v161, v157, 2));
          *v77.f32 = vqtbl1_s8(v106, *v77.f32);
          *&v77.u32[2] = vqtbl1_s8(v106, *v50.f32);
          *v160.f32 = vqtbl1_s8(v106, *v160.f32);
          *&v160.u32[2] = vqtbl1_s8(v106, *v94.f32);
          v165 = vmulq_f32(v77, v160);
          *v159.f32 = vqtbl1_s8(v165, *v159.f32);
          *&v159.u32[2] = vqtbl1_s8(v165, *v147.f32);
          v166 = vcvtq_f32_s32(vcvtq_s32_f32(v155));
          v167 = vcvtq_f32_s32(vcvtq_s32_f32(v159));
          v168 = vbslq_s8(v95, vmulq_n_f32(vbslq_s8(v95, vmulq_f32(v157, v157), v157), vsubq_f32(v153, vmulq_laneq_f32(v152, v157, 3)).f32[0]), v157);
          v170 = *(v16 + 384);
          v169 = *(v16 + 400);
          v171 = vsubq_f32(v166, vandq_s8(v170, vcgtq_f32(v166, v155)));
          v172 = vsubq_f32(v167, vandq_s8(v170, vcgtq_f32(v167, v159)));
          v173 = vaddq_f32(v164, vmulq_laneq_f32(vsubq_f32(v111, v164), v168, 3));
          v174 = vbslq_s8(v169, v171, vmulq_f32(v170, vrev64q_s32(v171)));
          v175 = vbslq_s8(v169, v172, vmulq_f32(v170, vrev64q_s32(v172)));
          v176 = vcvtq_f32_s32(vcvtq_s32_f32(v174));
          v177 = vsubq_f32(v176, vandq_s8(v153, vcgtq_f32(v176, v174)));
          v178 = vcvtq_f32_s32(vcvtq_s32_f32(v175));
          v179 = vbslq_s8(v169, v171, v177);
          v180 = vaddq_f32(v163, vmulq_laneq_f32(vsubq_f32(v110, v163), v168, 3));
          v181 = vbslq_s8(v169, v172, vsubq_f32(v178, vandq_s8(v153, vcgtq_f32(v178, v175))));
          v183 = *(v16 + 416);
          v182 = *(v16 + 432);
          v184 = vaddq_f32(v173, vmulq_lane_f32(vsubq_f32(v110, v173), *v168.f32, 1));
          v185 = vorrq_s8(v183, vsubq_f32(v179, vmulq_lane_f32(vrev64q_s32(v179), *v152.f32, 1)));
          v186 = vandq_s8(v41, vcgeq_f32(vuzp1q_s32(v185, vrev64q_s32(v185)), v76));
          v187 = vaddq_f32(v184, vmulq_n_f32(vsubq_f32(v111, v184), v168.f32[0]));
          v188 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vandq_s8(v170, vcgeq_f32(vorrq_s8(v183, vsubq_f32(v186, vrev64q_s32(v186))), v76)), 0), v182), vaddq_f32(v187, vmulq_lane_f32(vsubq_f32(v111, v187), *v97.i8, 1)), vaddq_f32(v180, vmulq_laneq_f32(vsubq_f32(v110, v180), v168, 2)));
          v189 = vaddq_f32(v33, vmulq_n_f32(v113, v112.f32[0]));
          v190 = vaddq_f32(v189, vmulq_lane_f32(vsubq_f32(v110, v189), *v106.i8, 1));
          v191 = vbslq_s8(v95, vmulq_n_f32(vbslq_s8(v95, vmulq_f32(v158, v158), v158), vsubq_f32(v153, vmulq_laneq_f32(v152, v158, 3)).f32[0]), v158);
          v192 = vaddq_f32(v33, vmulq_laneq_f32(v161, v158, 2));
          v193 = vaddq_f32(v190, vmulq_lane_f32(vsubq_f32(v111, v190), *v124.i8, 1));
          v194 = vaddq_f32(v192, vmulq_laneq_f32(vsubq_f32(v111, v192), v191, 3));
          v195 = vaddq_f32(v193, vmulq_laneq_f32(vsubq_f32(v110, v193), v191, 3));
          v196 = vaddq_f32(v195, vmulq_laneq_f32(vsubq_f32(v110, v195), v191, 2));
          v197 = vorrq_s8(v183, vsubq_f32(v181, vmulq_lane_f32(vrev64q_s32(v181), *v152.f32, 1)));
          v198 = vaddq_f32(v194, vmulq_lane_f32(vsubq_f32(v110, v194), *v191.f32, 1));
          v199 = vandq_s8(v41, vcgeq_f32(vuzp1q_s32(v197, vrev64q_s32(v197)), v76));
          v200 = vaddq_f32(v198, vmulq_n_f32(vsubq_f32(v111, v198), v191.f32[0]));
          v201 = vcgtq_f32(vdupq_lane_s32(*&vandq_s8(v170, vcgeq_f32(vorrq_s8(v183, vsubq_f32(v199, vrev64q_s32(v199))), v76)), 0), v182);
          v6 = xmmword_2603429B0;
          v202 = (*&v8 + 16 * v12);
          *v202 = v188;
          v202[1] = vbslq_s8(v201, vaddq_f32(v200, vmulq_lane_f32(vsubq_f32(v111, v200), *v106.i8, 1)), v196);
          v14 = vaddq_f32(v15, xmmword_2603429B0);
          v12 += 2;
          v13 -= 2;
        }

        while (v13 > 1);
        v12 = v12;
        v7 = xmmword_2603429C0;
        v9 = v304;
      }

      if (v12 < v5)
      {
        v203 = *(a1 + 408);
        v204 = *(v203 + 112);
        v205 = vmulq_f32(v14, *(v203 + 96));
        v206 = vaddq_f32(v205, vextq_s8(v205, v205, 4uLL));
        v207 = *(v203 + 16);
        v208 = vextq_s8(v207, v207, 4uLL);
        v209 = *(v203 + 128);
        v210 = *(v203 + 144);
        v212 = *(v203 + 160);
        v211 = *(v203 + 176);
        v213 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v208), v209), v210), v212);
        v214 = vbslq_s8(v211, vaddq_f32(v206, vdupq_lane_s64(v206.i64[0], 0)), vmulq_f32(v213, vrecpsq_f32(v208, v213)));
        v215 = *(v203 + 64);
        v216 = vmulq_f32(v14, *(v203 + 80));
        v217 = vaddq_f32(v216, vextq_s8(v216, v216, 4uLL));
        v218.i64[0] = vaddq_f32(v217, vdupq_laneq_s64(v217, 1)).u64[0];
        v218.i64[1] = v214.i64[1];
        v220 = *(v203 + 192);
        v219 = *(v203 + 208);
        v221 = vbslq_s8(v220, vextq_s8(v218, v218, 4uLL), v218);
        v222 = vmulq_laneq_f32(v221, v221, 3);
        v223 = vcvtq_f32_s32(vcvtq_s32_f32(v222));
        v224 = vsubq_f32(v221, vmulq_n_f32(vsubq_f32(v223, vbslq_s8(vcgtq_f32(v223, v222), v210, v11)), *v207.i32));
        v225.i64[0] = v224.i64[0];
        v225.i64[1] = vmulq_n_f32(v219, *&v207).i64[1];
        v226 = *(v203 + 224);
        v227 = *(v203 + 240);
        v228 = vmulq_n_f32(v226, *v207.i32);
        v229 = vextq_s8(v225, v225, 8uLL);
        v230 = vsubq_f32(v225, vbslq_s8(v227, vextq_s8(v228, v228, 8uLL), v229));
        v231 = vmulq_f32(v230, v230);
        v232 = vbslq_s8(v211, vextq_s8(v230, v230, 8uLL), vextq_s8(v231, v231, 8uLL));
        v233 = vnegq_f32(v225);
        v234 = vextq_s8(v233, v233, 8uLL);
        v235.i64[0] = vsubq_f32(v224, v229).u64[0];
        v207.i64[0] = v229.i64[0];
        v207.i64[1] = vaddq_f32(vmulq_f32(v232, v232), vrev64q_s32(*&v232)).i64[1];
        v236 = vbslq_s8(v227, v234, v207);
        v224.i64[0] = vsubq_f32(v224, v236).u64[0];
        v224.i64[1] = v236.i64[1];
        v237 = vbslq_s8(v227, v229, v234);
        v238 = vbslq_s8(v220, vmulq_f32(v224, v224), v224);
        v229.i64[0] = vextq_s8(v238, v238, 8uLL).u64[0];
        *v238.i8 = vadd_f32(vmul_f32(*v238.i8, *v238.i8), vrev64_s32(*v238.i8));
        v238.i64[1] = v229.i64[0];
        v240 = *(v203 + 256);
        v239 = *(v203 + 272);
        *v229.f32 = vqtbl1_s8(v238, *v240.f32);
        v241 = vextq_s8(v240, v240, 8uLL).u64[0];
        *&v229.u32[2] = vqtbl1_s8(v238, v241);
        v242 = vminq_f32(vrsqrteq_f32(v229), v212);
        v243 = vminq_f32(vmulq_f32(v242, vrsqrtsq_f32(vmulq_f32(v242, v229), v242)), v212);
        v244 = vmulq_f32(vminq_f32(vmulq_f32(v243, vrsqrtsq_f32(vmulq_f32(v243, v229), v243)), v212), v229);
        v245 = vrev64q_s32(*v203);
        v246 = vminq_f32(vmaxq_f32(vmulq_lane_f32(v204, *&vsubq_f32(v245, v244), 1), v226), v219);
        *v247.f32 = vext_s8(*v246.i8, *&vextq_s8(v244, v244, 8uLL), 4uLL);
        v248 = vextq_s8(v244, v246, 0xCuLL).u64[0];
        v246.i64[1] = v244.i64[1];
        v247.i64[1] = v248;
        v244.i64[0] = vbslq_s8(v227, v246, vminq_f32(vmaxq_f32(vmulq_n_f32(vbslq_s8(v227, v246, vsubq_f32(v245, v247)), v204.f32[0]), v226), v219)).u64[0];
        v244.i64[1] = vsubq_f32(v210, vmulq_f32(v209, vdupq_lane_s64(*&v244, 0))).i64[1];
        v249 = vbslq_s8(v227, vmulq_f32(v244, v244), v244);
        v250 = vbslq_s8(v220, vmulq_n_f32(vextq_s8(v249, v249, 4uLL), *v249.i32), v218);
        v252 = *(v203 + 288);
        v251 = *(v203 + 304);
        v235.i64[1] = vbslq_s8(v211, vmulq_lane_f32(vextq_s8(v249, v249, 0xCuLL), *&v249, 1), vsubq_f32(v239, vmulq_f32(v252, vdupq_lane_s64(*&v249, 0)))).i64[1];
        v253 = vbslq_s8(v220, vmulq_f32(v235, v235), v235);
        v254 = vaddq_f32(vrev64q_s32(vmulq_f32(v253, v253)), v253);
        v255 = vminq_f32(vrsqrteq_f32(v254), v252);
        v256 = vminq_f32(vmulq_f32(v255, vrsqrtsq_f32(vmulq_f32(v255, v254), v255)), v252);
        v254.i64[0] = vsubq_f32(v245, vmulq_f32(vminq_f32(vmulq_f32(v256, vrsqrtsq_f32(vmulq_f32(v256, v254), v256)), v252), v254)).u64[0];
        v254.i64[1] = v228.i64[1];
        v254.i64[0] = vminq_f32(vmaxq_f32(vmulq_n_f32(v254, v204.f32[0]), v239), v219).u64[0];
        v254.i64[1] = v228.i64[1];
        v257 = vsubq_f32(v225, v237);
        v258 = vbslq_s8(v227, vmulq_laneq_f32(vextq_s8(v253, v253, 0xCuLL), v253, 2), v254);
        v260 = *(v203 + 32);
        v259 = *(v203 + 48);
        v261 = vaddq_f32(v215, vmulq_n_f32(vsubq_f32(v260, v215), v258.f32[0]));
        v262 = vaddq_f32(v261, vmulq_lane_f32(vsubq_f32(v260, v261), *v250.i8, 1));
        v263 = vbslq_s8(v220, vmulq_laneq_f32(vbslq_s8(v220, vmulq_f32(v258, v258), v258), vbslq_s8(v251, vsubq_f32(v239, vmulq_lane_f32(v252, *v258.f32, 1)), v225), 3), v258);
        v264 = vmulq_lane_f32(vsubq_f32(v259, v262), *v263.i8, 1);
        v265 = vrev64q_s32(vbslq_s8(v251, vaddq_f32(vmulq_n_f32(vextq_s8(v257, v257, 4uLL), *v257.i32), vbslq_s8(v251, vmulq_lane_f32(vextq_s8(v257, v257, 8uLL), *v257.i8, 1), v225)), v225));
        v266 = vminq_f32(vrsqrteq_f32(v265), v252);
        v267 = vminq_f32(vmulq_f32(v266, vrsqrtsq_f32(vmulq_f32(v266, v265), v266)), v252);
        v268 = vbslq_s8(v211, vmulq_f32(v267, vrsqrtsq_f32(vmulq_f32(v267, v265), v267)), v263);
        v269 = vbslq_s8(v251, v268, v225);
        v269.i64[0] = vsubq_f32(v269, vdupq_laneq_s64(v269, 1)).u64[0];
        v270 = vminq_f32(vmaxq_f32(vrecpeq_f32(v268), v239), v212);
        v271 = vminq_f32(vmaxq_f32(vmulq_f32(v270, vrecpsq_f32(v268, v270)), v239), v212);
        v269.i64[1] = vmulq_f32(v271, vrecpsq_f32(v268, v271)).i64[1];
        v272 = vbslq_s8(v220, vmulq_f32(v269, v269), v269);
        v271.i64[0] = vaddq_f32(vmulq_f32(v272, v272), vrev64q_s32(v272)).u64[0];
        v273 = vsubq_f32(vdupq_lane_s64(*v203, 0), v272);
        v271.i64[1] = v273.i64[1];
        v274 = vaddq_f32(v262, v264);
        v275 = vminq_f32(vmaxq_f32(vmulq_laneq_f32(vrev64q_s32(v204), v273, 2), v239), v219);
        v276 = vbslq_s8(v227, v271, v275);
        v277 = vminq_f32(vrsqrteq_f32(v276), v252);
        v278 = vminq_f32(vmulq_f32(v277, vrsqrtsq_f32(vmulq_f32(v277, v276), v277)), v252);
        v279 = vbslq_s8(v227, vsubq_f32(*v203, vbslq_s8(v227, vmulq_f32(vminq_f32(vmulq_f32(v278, vrsqrtsq_f32(vmulq_f32(v278, v276), v278)), v252), v276), v275)), v275);
        v280 = *(v203 + 320);
        v281 = *(v203 + 336);
        v279.i64[1] = vsubq_f32(v281, vmulq_f32(v280, vextq_s8(*&v268, *&v279, 0xCuLL))).i64[1];
        v227.i64[0] = vmulq_f32(v279, v279).u64[0];
        v227.i64[1] = v279.i64[1];
        v268.i64[1] = vminq_f32(vmaxq_f32(vmulq_n_f32(vextq_s8(*&v204, *&v204, 4uLL), *&v279), v280), v281).i64[1];
        v282 = vbslq_s8(v211, vmulq_lane_f32(v227, *v227.f32, 1), v268);
        v283 = vaddq_f32(v215, vmulq_laneq_f32(vsubq_f32(v259, v215), v282, 2));
        v284 = vbslq_s8(v251, vmulq_n_f32(vbslq_s8(v251, vmulq_f32(v282, v282), v282), vsubq_f32(v281, vmulq_laneq_f32(v280, v282, 3)).f32[0]), v282);
        v285 = vaddq_f32(v283, vmulq_laneq_f32(vsubq_f32(v259, v283), v284, 3));
        v286 = vaddq_f32(v274, vmulq_laneq_f32(vsubq_f32(v260, v274), v284, 3));
        v287 = vaddq_f32(v286, vmulq_laneq_f32(vsubq_f32(v260, v286), v284, 2));
        v288 = vaddq_f32(v285, vmulq_lane_f32(vsubq_f32(v260, v285), *v284.f32, 1));
        *v285.f32 = vqtbl1_s8(v250, *v240.f32);
        v289 = *(v203 + 352);
        v290 = *(v203 + 368);
        *v240.f32 = vqtbl1_s8(v250, *v289.i8);
        *&v285.u32[2] = vqtbl1_s8(v250, v241);
        *&v240.u32[2] = vqtbl1_s8(v250, *&vextq_s8(v289, v289, 8uLL));
        v291 = vmulq_f32(v285, v240);
        *v286.f32 = vqtbl1_s8(v291, *v290.i8);
        *&v286.u32[2] = vqtbl1_s8(v291, *&vextq_s8(v290, v290, 8uLL));
        v292 = vcvtq_f32_s32(vcvtq_s32_f32(v286));
        v293 = *(v203 + 384);
        v294 = *(v203 + 400);
        v295 = vsubq_f32(v292, vandq_s8(v293, vcgtq_f32(v292, v286)));
        v296 = vbslq_s8(v294, v295, vmulq_f32(v293, vrev64q_s32(v295)));
        v297 = vcvtq_f32_s32(vcvtq_s32_f32(v296));
        v298 = vbslq_s8(v294, v295, vsubq_f32(v297, vandq_s8(v281, vcgtq_f32(v297, v296))));
        v299 = *(v203 + 416);
        v300 = vorrq_s8(v299, vsubq_f32(v298, vmulq_lane_f32(vrev64q_s32(v298), *v280.f32, 1)));
        v301 = vandq_s8(v219, vcgeq_f32(vuzp1q_s32(v300, vrev64q_s32(v300)), v239));
        v302 = vaddq_f32(v288, vmulq_n_f32(vsubq_f32(v259, v288), v284.f32[0]));
        *(*&v8 + 16 * v12) = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vandq_s8(v293, vcgeq_f32(vorrq_s8(v299, vsubq_f32(v301, vrev64q_s32(v301))), v239)), 0), *(v203 + 432)), vaddq_f32(v302, vmulq_lane_f32(vsubq_f32(v259, v302), *v250.i8, 1)), v287);
      }

      v9 = vaddq_f32(v9, v7);
      *&v8 += v10;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcOverlappingCircles::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcOverlappingCircles::HgcOverlappingCircles(HgcOverlappingCircles *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E7F80;
  operator new();
}

void HgcOverlappingCircles::~HgcOverlappingCircles(HGNode *this)
{
  *this = &unk_2871E7F80;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40502CBA4ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgcOverlappingCircles::~HgcOverlappingCircles(this);

  HGObject::operator delete(v1);
}

uint64_t HgcOverlappingCircles::SetParameter(HgcOverlappingCircles *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 7)
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

uint64_t HgcOverlappingCircles::GetParameter(HgcOverlappingCircles *this, unsigned int a2, float *a3)
{
  if (a2 > 7)
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

const char *HgcStripes::GetProgram(HgcStripes *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000396\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, 1.000000000, -2.000000000, 3.000000000);\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.x = frag._texCoord0.x - hg_Params[0].x;\n    s0.x = s0.x*hg_Params[4].x;\n    s0.x = s0.x*hg_Params[3].x + float(c0.x);\n    s0.x = fract(s0.x);\n    s1.x = float(c0.y) - s0.x;\n    s0.x = fmin(s1.x, s0.x);\n    s0.x = clamp(s0.x*hg_Params[3].y + hg_Params[3].z, 0.00000f, 1.00000f);\n    s1.x = s0.x*s0.x;\n    s0.x = s0.x*float(c0.z) + float(c0.w);\n    s1.x = s1.x*s0.x;\n    s1 = mix(hg_Params[2], hg_Params[1], s1.xxxx);\n    s1.xyz = s1.xyz*s1.www;\n    output.color0 = s1;\n    return output;\n}\n//MD5=cd593903:1395adbb:516858ac:228073c2\n//SIG=00400000:00000000:00000000:00000000:0001:0005:0002:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000037c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, 1.000000000, -2.000000000, 3.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.x = frag._texCoord0.x - hg_Params[0].x;\n    r0.x = r0.x*hg_Params[4].x;\n    r0.x = r0.x*hg_Params[3].x + c0.x;\n    r0.x = fract(r0.x);\n    r1.x = c0.y - r0.x;\n    r0.x = fmin(r1.x, r0.x);\n    r0.x = clamp(r0.x*hg_Params[3].y + hg_Params[3].z, 0.00000f, 1.00000f);\n    r1.x = r0.x*r0.x;\n    r0.x = r0.x*c0.z + c0.w;\n    r1.x = r1.x*r0.x;\n    r1 = mix(hg_Params[2], hg_Params[1], r1.xxxx);\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = r1;\n    return output;\n}\n//MD5=d808b12e:5c6a25c2:eb69d0f7:d2428bf7\n//SIG=00000000:00000000:00000000:00000000:0001:0005:0002:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000431\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, 1.000000000, -2.000000000, 3.000000000);\n    highp vec4 r0, r1;\n\n    r0.x = hg_TexCoord0.x - hg_ProgramLocal0.x;\n    r0.x = r0.x*hg_ProgramLocal4.x;\n    r0.x = r0.x*hg_ProgramLocal3.x + c0.x;\n    r0.x = fract(r0.x);\n    r1.x = c0.y - r0.x;\n    r0.x = min(r1.x, r0.x);\n    r0.x = clamp(r0.x*hg_ProgramLocal3.y + hg_ProgramLocal3.z, 0.00000, 1.00000);\n    r1.x = r0.x*r0.x;\n    r0.x = r0.x*c0.z + c0.w;\n    r1.x = r1.x*r0.x;\n    r1 = mix(hg_ProgramLocal2, hg_ProgramLocal1, r1.xxxx);\n    r1.xyz = r1.xyz*r1.www;\n    gl_FragColor = r1;\n}\n//MD5=37d9f537:dbf71379:d39542ba:055040f7\n//SIG=00000000:00000000:00000000:00000000:0001:0005:0002:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_25FAA91AC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAA92AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAA92EC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAA92E4);
}

uint64_t HgcStripes::Bind(HgcStripes *this, HGHandler *a2)
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

uint64_t HgcStripes::RenderTile(uint64_t a1, int32x2_t *a2)
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
          v16 = vaddq_f32(v15, xmmword_2603429B0);
          v17 = *(a1 + 408);
          v18 = *(v17 + 64);
          v19 = *(v17 + 80);
          v20 = vmulq_f32(vsubq_f32(v13, *v17), v18);
          v21 = vmulq_f32(vsubq_f32(v14, *v17), v18);
          v22 = vmulq_f32(vsubq_f32(v15, *v17), v18);
          v23 = vmulq_f32(vsubq_f32(v16, *v17), v18);
          v24 = *(v17 + 32);
          v25 = *(v17 + 48);
          v26 = vaddq_f32(v19, vmulq_f32(v20, v25));
          v27 = vaddq_f32(v19, vmulq_f32(v21, v25));
          v28 = vaddq_f32(v19, vmulq_f32(v22, v25));
          v29 = vaddq_f32(v19, vmulq_f32(v23, v25));
          v30 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
          v31 = vcvtq_f32_s32(vcvtq_s32_f32(v27));
          v32 = vcvtq_f32_s32(vcvtq_s32_f32(v28));
          v33 = vcvtq_f32_s32(vcvtq_s32_f32(v29));
          v34 = *(v17 + 96);
          v35 = *(v17 + 112);
          v36 = vsubq_f32(v26, vsubq_f32(v30, vandq_s8(v34, vcgtq_f32(v30, v26))));
          v37 = vsubq_f32(v27, vsubq_f32(v31, vandq_s8(v34, vcgtq_f32(v31, v27))));
          v38 = vsubq_f32(v28, vsubq_f32(v32, vandq_s8(v34, vcgtq_f32(v32, v28))));
          v39 = vsubq_f32(v29, vsubq_f32(v33, vandq_s8(v34, vcgtq_f32(v33, v29))));
          v40 = vextq_s8(v25, v25, 8uLL);
          v41 = vaddq_f32(v40, vmulq_lane_f32(vminq_f32(vsubq_f32(v34, v37), v37), *v25.f32, 1));
          v42 = vaddq_f32(v40, vmulq_lane_f32(vminq_f32(vsubq_f32(v34, v38), v38), *v25.f32, 1));
          v43 = vaddq_f32(v40, vmulq_lane_f32(vminq_f32(vsubq_f32(v34, v39), v39), *v25.f32, 1));
          v44 = vminq_f32(vmaxq_f32(vaddq_f32(v40, vmulq_lane_f32(vminq_f32(vsubq_f32(v34, v36), v36), *v25.f32, 1)), v35), v34);
          v45 = vminq_f32(vmaxq_f32(v41, v35), v34);
          v46 = vminq_f32(vmaxq_f32(v42, v35), v34);
          v47 = vminq_f32(vmaxq_f32(v43, v35), v34);
          v48 = *(v17 + 128);
          v49 = *(v17 + 144);
          v50 = vsubq_f32(*(v17 + 16), v24);
          v51 = vaddq_f32(v24, vmulq_n_f32(v50, vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v48, vmulq_f32(v44, v49))).f32[0]));
          v52 = vaddq_f32(v24, vmulq_n_f32(v50, vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v48, vmulq_f32(v45, v49))).f32[0]));
          v53 = vaddq_f32(v24, vmulq_n_f32(v50, vmulq_f32(vmulq_f32(v46, v46), vaddq_f32(v48, vmulq_f32(v46, v49))).f32[0]));
          v54 = vaddq_f32(v24, vmulq_n_f32(v50, vmulq_f32(vmulq_f32(v47, v47), vaddq_f32(v48, vmulq_f32(v47, v49))).f32[0]));
          v55 = *(v17 + 160);
          v11[-2] = vbslq_s8(v55, v51, vmulq_laneq_f32(v51, v51, 3));
          v11[-1] = vbslq_s8(v55, v52, vmulq_laneq_f32(v52, v52, 3));
          *v11 = vbslq_s8(v55, v53, vmulq_laneq_f32(v53, v53, 3));
          v11[1] = vbslq_s8(v55, v54, vmulq_laneq_f32(v54, v54, 3));
          v11 += 4;
          v13 = vaddq_f32(v16, xmmword_2603429B0);
          v12 -= 4;
          v10 += 4;
        }

        while (v12 > 3);
      }

      if (v10 < v5)
      {
        do
        {
          v56 = *(a1 + 408);
          v57 = *(v56 + 48);
          v58 = vaddq_f32(*(v56 + 80), vmulq_f32(vmulq_f32(vsubq_f32(v13, *v56), *(v56 + 64)), v57));
          v59 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
          v60 = *(v56 + 96);
          v61 = vsubq_f32(v58, vsubq_f32(v59, vandq_s8(v60, vcgtq_f32(v59, v58))));
          v62 = vminq_f32(vmaxq_f32(vaddq_f32(vextq_s8(v57, v57, 8uLL), vmulq_lane_f32(vminq_f32(vsubq_f32(v60, v61), v61), *v57.f32, 1)), *(v56 + 112)), v60);
          v63 = vaddq_f32(*(v56 + 32), vmulq_n_f32(vsubq_f32(*(v56 + 16), *(v56 + 32)), vmulq_f32(vmulq_f32(v62, v62), vaddq_f32(*(v56 + 128), vmulq_f32(v62, *(v56 + 144)))).f32[0]));
          v6[v10] = vbslq_s8(*(v56 + 160), v63, vmulq_laneq_f32(v63, v63, 3));
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

uint64_t HgcStripes::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcStripes::HgcStripes(HgcStripes *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E81E8;
  operator new();
}

void HgcStripes::~HgcStripes(HGNode *this)
{
  *this = &unk_2871E81E8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40C3A7E6FCLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcStripes::~HgcStripes(this);

  HGObject::operator delete(v1);
}

uint64_t HgcStripes::SetParameter(HgcStripes *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcStripes::GetParameter(HgcStripes *this, unsigned int a2, float *a3)
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

const char *HgcTriangularCheckerboard::GetProgram(HgcTriangularCheckerboard *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000071c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, -2.000000000, 3.000000000, 1.000000000);\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xyz = frag._texCoord0.xyz;\n    s0.w = float(c0.w);\n    s1.x = dot(s0, hg_Params[4]);\n    s0.x = dot(s0, hg_Params[3]);\n    s0.y = s1.x;\n    s0.zw = fabs(s0.xy)*hg_Params[6].xy;\n    s0.xy = floor(s0.zw);\n    s0.zw = fract(s0.zw);\n    s0.xy = s0.xy*float2(c0.xx);\n    s0.xy = fract(s0.xy);\n    s0.xy = s0.xy + s0.xy;\n    s0.xy = floor(s0.xy);\n    s2.zw = s0.xy - float2(c0.ww);\n    s2.xy = float2(c0.ww) - s0.zw;\n    s0.w = select(s2.y, s0.w, s2.w < 0.00000h);\n    s0.z = select(s0.z, s2.x, s2.z < 0.00000h);\n    s2.zw = s0.zw*hg_Params[6].zw;\n    s0.zw = s2.zw - hg_Params[6].zw;\n    s2.x = s0.z;\n    s2.y = s2.w;\n    s0.x = dot(s2.xy, hg_Params[5].xy);\n    s2.z = s0.x;\n    s2.y = -s0.w;\n    s2.x = s2.w;\n    s2.xyz = abs(s2.xyz);\n    s0.zw = fmin(s2.yx, s2.zz);\n    s0.z = select(s0.z, s0.w, s0.x < 0.00000h);\n    s0.z = clamp(s0.z*hg_Params[2].z + float(c0.x), 0.00000f, 1.00000f);\n    s0.w = s0.z*float(c0.y) + float(c0.z);\n    s0.z = s0.z*s0.z;\n    s0.z = s0.z*s0.w;\n    s0.w = -s0.z + float(c0.w);\n    s0.y = s0.y - float(c0.w);\n    s0.y = select(s0.z, s0.w, s0.y < 0.00000h);\n    s0.z = -s0.y + float(c0.w);\n    s0.x = select(s0.y, s0.z, s0.x < 0.00000h);\n    s0.y = -s0.x + float(c0.w);\n    s0.z = select(float(c0.w), -float(c0.w), s1.x < 0.00000h);\n    s0.x = select(s0.x, s0.y, s0.z < 0.00000h);\n    output.color0 = mix(hg_Params[0], hg_Params[1], s0.xxxx);\n    return output;\n}\n//MD5=2110c064:e4c305a3:072ae072:19d887c8\n//SIG=00400000:00000000:00000000:00000000:0001:0007:0003:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000006c0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, -2.000000000, 3.000000000, 1.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xyz = frag._texCoord0.xyz;\n    r0.w = c0.w;\n    r1.x = dot(r0, hg_Params[4]);\n    r0.x = dot(r0, hg_Params[3]);\n    r0.y = r1.x;\n    r0.zw = fabs(r0.xy)*hg_Params[6].xy;\n    r0.xy = floor(r0.zw);\n    r0.zw = fract(r0.zw);\n    r0.xy = r0.xy*c0.xx;\n    r0.xy = fract(r0.xy);\n    r0.xy = r0.xy + r0.xy;\n    r0.xy = floor(r0.xy);\n    r2.zw = r0.xy - c0.ww;\n    r2.xy = c0.ww - r0.zw;\n    r0.w = select(r2.y, r0.w, r2.w < 0.00000f);\n    r0.z = select(r0.z, r2.x, r2.z < 0.00000f);\n    r2.zw = r0.zw*hg_Params[6].zw;\n    r0.zw = r2.zw - hg_Params[6].zw;\n    r2.x = r0.z;\n    r2.y = r2.w;\n    r0.x = dot(r2.xy, hg_Params[5].xy);\n    r2.z = r0.x;\n    r2.y = -r0.w;\n    r2.x = r2.w;\n    r2.xyz = abs(r2.xyz);\n    r0.zw = fmin(r2.yx, r2.zz);\n    r0.z = select(r0.z, r0.w, r0.x < 0.00000f);\n    r0.z = clamp(r0.z*hg_Params[2].z + c0.x, 0.00000f, 1.00000f);\n    r0.w = r0.z*c0.y + c0.z;\n    r0.z = r0.z*r0.z;\n    r0.z = r0.z*r0.w;\n    r0.w = -r0.z + c0.w;\n    r0.y = r0.y - c0.w;\n    r0.y = select(r0.z, r0.w, r0.y < 0.00000f);\n    r0.z = -r0.y + c0.w;\n    r0.x = select(r0.y, r0.z, r0.x < 0.00000f);\n    r0.y = -r0.x + c0.w;\n    r0.z = select(c0.w, -c0.w, r1.x < 0.00000f);\n    r0.x = select(r0.x, r0.y, r0.z < 0.00000f);\n    output.color0 = mix(hg_Params[0], hg_Params[1], r0.xxxx);\n    return output;\n}\n//MD5=26633091:d2a70f55:ff153893:8600ba58\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0003:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000795\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, -2.000000000, 3.000000000, 1.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xyz = hg_TexCoord0.xyz;\n    r0.w = c0.w;\n    r1.x = dot(r0, hg_ProgramLocal4);\n    r0.x = dot(r0, hg_ProgramLocal3);\n    r0.y = r1.x;\n    r0.zw = abs(r0.xy)*hg_ProgramLocal6.xy;\n    r0.xy = floor(r0.zw);\n    r0.zw = fract(r0.zw);\n    r0.xy = r0.xy*c0.xx;\n    r0.xy = fract(r0.xy);\n    r0.xy = r0.xy + r0.xy;\n    r0.xy = floor(r0.xy);\n    r2.zw = r0.xy - c0.ww;\n    r2.xy = c0.ww - r0.zw;\n    r0.w = r2.w < 0.00000 ? r0.w : r2.y;\n    r0.z = r2.z < 0.00000 ? r2.x : r0.z;\n    r2.zw = r0.zw*hg_ProgramLocal6.zw;\n    r0.zw = r2.zw - hg_ProgramLocal6.zw;\n    r2.x = r0.z;\n    r2.y = r2.w;\n    r0.x = dot(r2.xy, hg_ProgramLocal5.xy);\n    r2.z = r0.x;\n    r2.y = -r0.w;\n    r2.x = r2.w;\n    r2.xyz = abs(r2.xyz);\n    r0.zw = min(r2.yx, r2.zz);\n    r0.z = r0.x < 0.00000 ? r0.w : r0.z;\n    r0.z = clamp(r0.z*hg_ProgramLocal2.z + c0.x, 0.00000, 1.00000);\n    r0.w = r0.z*c0.y + c0.z;\n    r0.z = r0.z*r0.z;\n    r0.z = r0.z*r0.w;\n    r0.w = -r0.z + c0.w;\n    r0.y = r0.y - c0.w;\n    r0.y = r0.y < 0.00000 ? r0.w : r0.z;\n    r0.z = -r0.y + c0.w;\n    r0.x = r0.x < 0.00000 ? r0.z : r0.y;\n    r0.y = -r0.x + c0.w;\n    r0.z = r1.x < 0.00000 ? -c0.w : c0.w;\n    r0.x = r0.z < 0.00000 ? r0.y : r0.x;\n    gl_FragColor = mix(hg_ProgramLocal0, hg_ProgramLocal1, r0.xxxx);\n}\n//MD5=947deea3:fe3d74d0:edb136c6:894e955c\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0003:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_25FAA9B20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAA9C20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAA9C60()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAA9C58);
}

uint64_t HgcTriangularCheckerboard::Bind(HgcTriangularCheckerboard *this, HGHandler *a2)
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

uint64_t HgcTriangularCheckerboard::RenderTile(uint64_t a1, int32x2_t *a2)
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
    v8 = 16 * a2[3].i32[0];
    do
    {
      if (v5 < 2)
      {
        v9 = 0;
        v11 = v7;
      }

      else
      {
        v9 = 0;
        v10 = v5;
        v11 = v7;
        do
        {
          v12 = vaddq_f32(v11, xmmword_2603429B0);
          v11.i32[3] = 1.0;
          v13 = v12;
          v14 = *(a1 + 408);
          v15 = *(v14 + 64);
          v16 = *(v14 + 80);
          v13.i32[3] = 1.0;
          v17 = vmulq_f32(v11, v15);
          v18 = vmulq_f32(v13, v15);
          v19 = vaddq_f32(v17, vextq_s8(v17, v17, 4uLL));
          v20 = vaddq_f32(v18, vextq_s8(v18, v18, 4uLL));
          v21 = vaddq_f32(v19, vextq_s8(v19, v19, 8uLL));
          v23 = *(v14 + 32);
          v22 = *(v14 + 48);
          v24 = vmulq_f32(v11, v22);
          v25 = vmulq_f32(v13, v22);
          v26 = vaddq_f32(v24, vextq_s8(v24, v24, 4uLL));
          v27 = vaddq_f32(v25, vextq_s8(v25, v25, 4uLL));
          v28 = vaddq_f32(v20, vextq_s8(v20, v20, 8uLL));
          v30 = *(v14 + 96);
          v29 = *(v14 + 112);
          v31 = vmulq_f32(v30, vabsq_f32(vbslq_s8(v29, vaddq_f32(v26, vextq_s8(v26, v26, 8uLL)), vrev64q_s32(v21))));
          v32 = vmulq_f32(v30, vabsq_f32(vbslq_s8(v29, vaddq_f32(v27, vextq_s8(v27, v27, 8uLL)), vrev64q_s32(v28))));
          v33 = vcvtq_f32_s32(vcvtq_s32_f32(v31));
          v34 = vcvtq_f32_s32(vcvtq_s32_f32(v32));
          v36 = *(v14 + 128);
          v35 = *(v14 + 144);
          v37 = vsubq_f32(v33, vbslq_s8(vcgtq_f32(v33, v31), v36, 0));
          v38 = vmulq_f32(v35, v37);
          v37.i64[1] = v31.i64[0];
          v39 = vsubq_f32(v34, vbslq_s8(vcgtq_f32(v34, v32), v36, 0));
          v40 = vmulq_f32(v35, v39);
          v39.i64[1] = v32.i64[0];
          v41 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
          v42 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
          v43 = vsubq_f32(v37, vsubq_f32(v41, vbslq_s8(vcgtq_f32(v41, v37), v36, 0)));
          v37.i64[0] = v38.i64[0];
          v37.i64[1] = v43.i64[1];
          v44 = vsubq_f32(v39, vsubq_f32(v42, vbslq_s8(vcgtq_f32(v42, v39), v36, 0)));
          v42.i64[0] = v40.i64[0];
          v42.i64[1] = v44.i64[1];
          v45 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
          v46 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
          v47 = vsubq_f32(v38, vsubq_f32(v45, vbslq_s8(vcgtq_f32(v45, v37), v36, 0)));
          v48 = vsubq_f32(v40, vsubq_f32(v46, vbslq_s8(vcgtq_f32(v46, v42), v36, 0)));
          v47.i64[0] = vaddq_f32(v47, v47).u64[0];
          v48.i64[0] = vaddq_f32(v48, v48).u64[0];
          v47.i64[1] = v43.i64[1];
          v48.i64[1] = v44.i64[1];
          v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
          v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
          v51 = vsubq_f32(v49, vbslq_s8(vcgtq_f32(v49, v47), v36, 0));
          v52 = vextq_s8(v43, v51, 8uLL);
          v51.i64[1] = v43.i64[1];
          v53 = vsubq_f32(v50, vbslq_s8(vcgtq_f32(v50, v48), v36, 0));
          v54 = vextq_s8(v44, v53, 8uLL);
          v50.i64[0] = v53.i64[0];
          v50.i64[1] = v44.i64[1];
          v55 = vsubq_f32(v52, v35);
          v56 = vsubq_f32(v54, v35);
          v52.i64[0] = vsubq_f32(v36, v52).u64[0];
          v54.i64[0] = vsubq_f32(v36, v54).u64[0];
          v52.i64[1] = v55.i64[1];
          v54.i64[1] = v56.i64[1];
          v57 = vextq_s8(v52, v52, 8uLL);
          v58 = vextq_s8(v54, v54, 8uLL);
          v59 = *(v14 + 160);
          v60 = *(v14 + 176);
          v61 = vcgtq_f32(v59, v52);
          v62 = vcgtq_f32(v59, v54);
          v63 = vbslq_s8(v60, vbslq_s8(v61, v51, v57), v51);
          v64 = vbslq_s8(v60, vbslq_s8(v62, v50, v58), v50);
          v65 = vbslq_s8(v61, v57, v63);
          v66 = vbslq_s8(v62, v58, v64);
          v68 = *(v14 + 192);
          v67 = *(v14 + 208);
          v69 = vbslq_s8(v68, v65, v63);
          v70 = vbslq_s8(v68, v66, v64);
          v71 = vmulq_f32(v30, v69);
          v72 = vmulq_f32(v30, v70);
          v73 = vsubq_f32(v71, v30);
          v74 = vsubq_f32(v72, v30);
          v69.i64[1] = v73.i64[1];
          v70.i64[1] = v74.i64[1];
          v75 = vmvnq_s8(v68);
          v76 = vzip2q_s64(v73, v71);
          v77 = vzip2q_s64(v74, v72);
          v78 = vbslq_s8(v67, vextq_s8(v76, v76, 8uLL), v76);
          v79 = vbslq_s8(v67, vextq_s8(v77, v77, 8uLL), v77);
          v80 = vmulq_f32(v16, v78);
          v81 = vmulq_f32(v16, v79);
          v82 = vbslq_s8(v29, vaddq_f32(v80, vrev64q_s32(v80)), v69);
          *v73.i8 = vneg_f32(*&vextq_s8(v82, v82, 8uLL));
          v83 = vextq_s8(v68, v68, 8uLL).u64[0];
          v84 = vbslq_s8(v29, vaddq_f32(v81, vrev64q_s32(v81)), v70);
          v70.i64[0] = vextq_s8(v78, v78, 8uLL).u64[0];
          v78.i64[0] = vextq_s8(v75, v75, 8uLL).u64[0];
          v73.u64[1] = vorr_s8(vand_s8(*v82.i8, v83), vand_s8(*v70.f32, *v78.f32));
          *v70.f32 = vneg_f32(*&vextq_s8(v84, v84, 8uLL));
          *&v70.u32[2] = vorr_s8(vand_s8(*v84.i8, v83), vand_s8(*&vextq_s8(v79, v79, 8uLL), *v78.f32));
          v85 = vabsq_f32(vbslq_s8(v29, vextq_s8(v73, v73, 0xCuLL), v73));
          v87 = *(v14 + 224);
          v86 = *(v14 + 240);
          *v75.f32 = vqtbl1_s8(v85, *v87.f32);
          v88 = vextq_s8(v87, v87, 8uLL).u64[0];
          *&v75.u32[2] = vqtbl1_s8(v85, v88);
          v89 = vabsq_f32(vbslq_s8(v29, vextq_s8(v70, v70, 0xCuLL), v70));
          *v78.f32 = vqtbl1_s8(v89, *v87.f32);
          *&v78.u32[2] = vqtbl1_s8(v89, v88);
          v90 = vminq_f32(v75, vdupq_laneq_s32(v85, 2));
          v91 = vminq_f32(v78, vdupq_laneq_s32(v89, 2));
          v87.i64[0] = v82.i64[0];
          v87.i64[1] = vbslq_s8(vcgtq_f32(v59, vextq_s8(*&v90, *&v82, 8uLL)), vrev64q_s32(v90), *&v90).i64[1];
          v78.i64[0] = v84.i64[0];
          v78.i64[1] = vbslq_s8(vcgtq_f32(v59, vextq_s8(*&v91, *&v84, 8uLL)), vrev64q_s32(v91), *&v91).i64[1];
          v92 = vminq_f32(vmaxq_f32(vaddq_f32(v86, vmulq_f32(v23, v87)), v59), v35);
          v93 = vminq_f32(vmaxq_f32(vaddq_f32(v86, vmulq_f32(v23, v78)), v59), v35);
          v91.i64[0] = v82.i64[0];
          v91.i64[1] = v92.i64[1];
          v78.i64[0] = v84.i64[0];
          v78.i64[1] = v93.i64[1];
          v82.i64[1] = vdupq_laneq_s64(v92, 1).u64[0];
          v94 = vrev64q_s32(v82);
          v84.i64[1] = vdupq_laneq_s64(v93, 1).u64[0];
          v95 = *(v14 + 256);
          v96 = *(v14 + 272);
          v97 = vbslq_s8(v60, vaddq_f32(v86, vmulq_f32(v95, v94)), v91);
          v98 = vbslq_s8(v60, vaddq_f32(v86, vmulq_f32(v95, vrev64q_s32(v84))), v78);
          v99 = vbslq_s8(v68, vmulq_f32(v97, v97), v97);
          v100 = vbslq_s8(v68, vmulq_f32(v98, v98), v98);
          v101 = vmulq_laneq_f32(v99, v99, 3);
          v102 = vmulq_laneq_f32(v100, v100, 3);
          v94.i64[0] = v99.i64[0];
          v94.i64[1] = v101.i64[1];
          v87.i64[0] = v100.i64[0];
          v87.i64[1] = v102.i64[1];
          v99.i64[1] = vdupq_laneq_s64(v101, 1).u64[0];
          v100.i64[1] = vdupq_laneq_s64(v102, 1).u64[0];
          v103 = vsubq_f32(v35, vrev64q_s32(v99));
          v104 = vsubq_f32(v35, vrev64q_s32(v100));
          v105 = vbslq_s8(v60, v103, v94);
          v106 = vbslq_s8(v60, v104, v87);
          v107 = vbslq_s8(v67, vsubq_f32(v105, v59), v105);
          v108 = vbslq_s8(v67, vsubq_f32(v106, v59), v106);
          v109 = vbslq_s8(v29, v107, vbslq_s8(vcgtq_f32(v95, v107), vextq_s8(v107, v107, 8uLL), vextq_s8(v107, v107, 4uLL)));
          v110 = vbslq_s8(v29, v108, vbslq_s8(vcgtq_f32(v95, v108), vextq_s8(v108, v108, 8uLL), vextq_s8(v108, v108, 4uLL)));
          v111 = vsubq_f32(v95, vextq_s8(xmmword_2603429B0, v109, 0xCuLL));
          v103.i64[0] = v109.i64[0];
          v103.i64[1] = v111.i64[1];
          v99.i64[0] = v110.i64[0];
          v112 = vsubq_f32(v95, vextq_s8(xmmword_2603429B0, v110, 0xCuLL));
          v109.i64[1] = vdupq_laneq_s64(v111, 1).u64[0];
          v99.i64[1] = v112.i64[1];
          v11 = vaddq_f32(v12, xmmword_2603429B0);
          v110.i64[1] = vdupq_laneq_s64(v112, 1).u64[0];
          v113 = vbslq_s8(vcgtq_f32(v95, v103), vextq_s8(v103, v103, 8uLL), vrev64q_s32(v109));
          v114 = vbslq_s8(vcgtq_f32(v95, v99), vextq_s8(v99, v99, 8uLL), vrev64q_s32(v110));
          v115 = vbslq_s8(v29, v113, vsubq_f32(v86, vrev64q_s32(v113)));
          v116 = vbslq_s8(v29, v114, vsubq_f32(v86, vrev64q_s32(v114)));
          v115.i32[0] = vbslq_s8(vcgtq_f32(v96, vextq_s8(vbslq_s8(vcgtq_f32(v59, vextq_s8(v21, v21, 8uLL)), v96, v95), v115, 8uLL)), vdupq_lane_s32(*v115.i8, 1), v115).u32[0];
          v21.i32[0] = vbslq_s8(vcgtq_f32(v96, vextq_s8(vbslq_s8(vcgtq_f32(v59, vextq_s8(v28, v28, 8uLL)), v96, v95), v116, 8uLL)), vdupq_lane_s32(*v116.i8, 1), v116).u32[0];
          v117 = vsubq_f32(*(v14 + 16), *v14);
          v118 = vaddq_f32(*v14, vmulq_n_f32(v117, *v115.i32));
          v119 = vaddq_f32(*v14, vmulq_n_f32(v117, *v21.i32));
          v120 = (*&v6 + 16 * v9);
          *v120 = v118;
          v120[1] = v119;
          v9 += 2;
          v10 -= 2;
        }

        while (v10 > 1);
        v9 = v9;
      }

      if (v9 < v5)
      {
        v11.i32[3] = 1.0;
        v121 = *(a1 + 408);
        v122 = vmulq_f32(v11, *(v121 + 64));
        v123 = vaddq_f32(v122, vextq_s8(v122, v122, 4uLL));
        v124 = vaddq_f32(v123, vextq_s8(v123, v123, 8uLL));
        v125 = vmulq_f32(v11, *(v121 + 48));
        v126 = vaddq_f32(v125, vextq_s8(v125, v125, 4uLL));
        v127 = vaddq_f32(v126, vextq_s8(v126, v126, 8uLL));
        v129 = *(v121 + 96);
        v128 = *(v121 + 112);
        v130 = vmulq_f32(v129, vabsq_f32(vbslq_s8(v128, v127, vrev64q_s32(v124))));
        v131 = vcvtq_f32_s32(vcvtq_s32_f32(v130));
        v133 = *(v121 + 128);
        v132 = *(v121 + 144);
        v134 = vsubq_f32(v131, vbslq_s8(vcgtq_f32(v131, v130), v133, 0));
        v135 = vmulq_f32(v132, v134);
        v134.i64[1] = v130.i64[0];
        v136 = vcvtq_f32_s32(vcvtq_s32_f32(v134));
        v137 = vsubq_f32(v134, vsubq_f32(v136, vbslq_s8(vcgtq_f32(v136, v134), v133, 0)));
        v134.i64[0] = v135.i64[0];
        v134.i64[1] = v137.i64[1];
        v138 = vcvtq_f32_s32(vcvtq_s32_f32(v134));
        v139 = vsubq_f32(v135, vsubq_f32(v138, vbslq_s8(vcgtq_f32(v138, v134), v133, 0)));
        v139.i64[0] = vaddq_f32(v139, v139).u64[0];
        v139.i64[1] = v137.i64[1];
        v140 = vcvtq_f32_s32(vcvtq_s32_f32(v139));
        v141 = vsubq_f32(v140, vbslq_s8(vcgtq_f32(v140, v139), v133, 0));
        v142 = vextq_s8(v137, v141, 8uLL);
        v138.i64[0] = v141.i64[0];
        v138.i64[1] = v137.i64[1];
        v143 = vsubq_f32(v142, v132);
        v142.i64[0] = vsubq_f32(v133, v142).u64[0];
        v142.i64[1] = v143.i64[1];
        v144 = vextq_s8(v142, v142, 8uLL);
        v145 = *(v121 + 160);
        v146 = *(v121 + 176);
        v147 = vcgtq_f32(v145, v142);
        v148 = vbslq_s8(v146, vbslq_s8(v147, v138, v144), v138);
        v149 = vbslq_s8(v147, v144, v148);
        v151 = *(v121 + 192);
        v150 = *(v121 + 208);
        v152 = vbslq_s8(v151, v149, v148);
        v153 = vmulq_f32(v129, v152);
        v154 = vsubq_f32(v153, v129);
        v152.i64[1] = v154.i64[1];
        v155 = vmvnq_s8(v151);
        v156 = vzip2q_s64(v154, v153);
        v157 = vbslq_s8(v150, vextq_s8(v156, v156, 8uLL), v156);
        v158 = vmulq_f32(*(v121 + 80), v157);
        v159 = vbslq_s8(v128, vaddq_f32(v158, vrev64q_s32(v158)), v152);
        *v158.f32 = vneg_f32(*&vextq_s8(v159, v159, 8uLL));
        *&v158.u32[2] = vorr_s8(vand_s8(*v159.i8, *&vextq_s8(v151, v151, 8uLL)), vand_s8(*&vextq_s8(v157, v157, 8uLL), *&vextq_s8(v155, v155, 8uLL)));
        v160 = vabsq_f32(vbslq_s8(v128, vextq_s8(v158, v158, 0xCuLL), v158));
        v162 = *(v121 + 224);
        v161 = *(v121 + 240);
        *v155.f32 = vqtbl1_s8(v160, *v162.f32);
        *&v155.u32[2] = vqtbl1_s8(v160, *&vextq_s8(v162, v162, 8uLL));
        v163 = vminq_f32(v155, vdupq_laneq_s32(v160, 2));
        v162.i64[0] = v159.i64[0];
        v162.i64[1] = vbslq_s8(vcgtq_f32(v145, vextq_s8(*&v163, *&v159, 8uLL)), vrev64q_s32(v163), *&v163).i64[1];
        v164 = vminq_f32(vmaxq_f32(vaddq_f32(v161, vmulq_f32(*(v121 + 32), v162)), v145), v132);
        v163.i64[0] = v159.i64[0];
        v163.i64[1] = v164.i64[1];
        v159.i64[1] = vdupq_laneq_s64(v164, 1).u64[0];
        v165 = *(v121 + 256);
        v166 = vbslq_s8(v146, vaddq_f32(v161, vmulq_f32(v165, vrev64q_s32(v159))), v163);
        v167 = vbslq_s8(v151, vmulq_f32(v166, v166), v166);
        v168 = vmulq_laneq_f32(v167, v167, 3);
        v159.i64[0] = v167.i64[0];
        v159.i64[1] = v168.i64[1];
        v167.i64[1] = vdupq_laneq_s64(v168, 1).u64[0];
        v169 = vbslq_s8(v146, vsubq_f32(v132, vrev64q_s32(v167)), v159);
        v170 = vbslq_s8(v150, vsubq_f32(v169, v145), v169);
        v171 = vbslq_s8(v128, v170, vbslq_s8(vcgtq_f32(v165, v170), vextq_s8(v170, v170, 8uLL), vextq_s8(v170, v170, 4uLL)));
        v172 = vsubq_f32(v165, vextq_s8(xmmword_2603429B0, v171, 0xCuLL));
        v150.i64[0] = v171.i64[0];
        v150.i64[1] = v172.i64[1];
        v171.i64[1] = vdupq_laneq_s64(v172, 1).u64[0];
        v173 = vbslq_s8(vcgtq_f32(v165, v150), vextq_s8(v150, v150, 8uLL), vrev64q_s32(v171));
        v174 = vbslq_s8(v128, v173, vsubq_f32(v161, vrev64q_s32(v173)));
        *(*&v6 + 16 * v9) = vaddq_f32(*v121, vmulq_n_f32(vsubq_f32(*(v121 + 16), *v121), *vbslq_s8(vcgtq_f32(*(v121 + 272), vextq_s8(vbslq_s8(vcgtq_f32(v145, vextq_s8(v124, v124, 8uLL)), *(v121 + 272), v165), v174, 8uLL)), vdupq_lane_s32(*v174.i8, 1), v174).i32));
      }

      v7 = vaddq_f32(v7, xmmword_2603429C0);
      *&v6 += v8;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcTriangularCheckerboard::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcTriangularCheckerboard::HgcTriangularCheckerboard(HgcTriangularCheckerboard *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E8450;
  operator new();
}

void HgcTriangularCheckerboard::~HgcTriangularCheckerboard(HGNode *this)
{
  *this = &unk_2871E8450;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FDACBBE0);
  }

  HGNode::~HGNode(this);
}

{
  HgcTriangularCheckerboard::~HgcTriangularCheckerboard(this);

  HGObject::operator delete(v1);
}

uint64_t HgcTriangularCheckerboard::SetParameter(HgcTriangularCheckerboard *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
        if (*(v14 + 16) != a3.n128_f32[0] || *(v14 + 20) != a4 || *(v14 + 24) != a5 || *(v14 + 28) != a6)
        {
          *(v14 + 16) = a3.n128_u32[0];
          *(v14 + 20) = a4;
          *(v14 + 24) = a5;
          *(v14 + 28) = a6;
          goto LABEL_44;
        }

        return 0;
      case 2:
        v9 = *(this + 51);
        if (v9[2].n128_f32[0] != 0.0 || v9[2].n128_f32[1] != 0.0 || v9[2].n128_f32[2] != a3.n128_f32[0] || v9[2].n128_f32[3] != 0.0)
        {
          v9[2].n128_u64[0] = 0;
          v9[2].n128_u32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v9[2].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v9[18] = a3;
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

float HgcTriangularCheckerboard::GetParameter(HgcTriangularCheckerboard *this, int a2, float *a3)
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
        *a3 = v5[72];
        a3[1] = v5[73];
        a3[2] = v5[74];
        v4 = v5 + 75;
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

const char *HgcLumaKeyer::GetProgram(HgcLumaKeyer *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000042f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 255.0000000, 0.5000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = fmin(r0.x, half(hg_Params[2].x));\n    r0.x = r0.x*c0.y + c0.z;\n    r0.y = c0.z;\n    r1.xy = r0.xy + half2(hg_Params[3].xy);\n    r1.xy = r1.xy*half2(hg_Params[3].zw);\n    r1.x = (half) hg_Texture1.sample(hg_Sampler1, float2(r1.xy)).x;\n    output.color0 = clamp(float4(r1.xxxx)*hg_Params[1] + hg_Params[0], 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=9210a0b9:ff0b1101:f2edec97:0645fd57\n//SIG=00400000:00000001:00000001:00000003:0001:0004:0002:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003fe\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 255.0000000, 0.5000000000, 0.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = fmin(r0.x, hg_Params[2].x);\n    r0.x = r0.x*c0.y + c0.z;\n    r0.y = c0.z;\n    r0.xy = r0.xy + hg_Params[3].xy;\n    r0.xy = r0.xy*hg_Params[3].zw;\n    r0.x = hg_Texture1.sample(hg_Sampler1, r0.xy).x;\n    output.color0 = clamp(r0.xxxx*hg_Params[1] + hg_Params[0], 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=19e36f6b:1cb791d3:f1ba4e18:294004e7\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0001:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000419\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 255.0000000, 0.5000000000, 0.000000000);\n    mediump vec4 r0;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.x = max(r0.x, c0.x);\n    r0.x = min(r0.x, hg_ProgramLocal2.x);\n    r0.x = r0.x*c0.y + c0.z;\n    r0.y = c0.z;\n    r0.xy = r0.xy + hg_ProgramLocal3.xy;\n    r0.xy = r0.xy*hg_ProgramLocal3.zw;\n    r0.x = texture2D(hg_Texture1, r0.xy).x;\n    gl_FragColor = clamp(r0.xxxx*hg_ProgramLocal1 + hg_ProgramLocal0, vec4(0.00000), vec4(1.00000));\n}\n//MD5=e741176d:1294b5be:d42e275a:62f3727d\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0001:0000:0000:0000:0000:0000:0001:02:0:1:0\n";
  }
}

void sub_25FAAACDC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAAAE5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAAAEAC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAAAEA4);
}

uint64_t HgcLumaKeyer::BindTexture(HgcLumaKeyer *this, HGHandler *a2, int a3)
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

uint64_t HgcLumaKeyer::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcLumaKeyer::RenderTile(float32x4_t **this, HGTile *a2)
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
    v12 = *(a2 + 10);
    v13 = 16 * *(a2 + 22);
    v14 = 16 * *(a2 + 6);
    v15.i64[0] = 0x3F0000003F000000;
    v15.i64[1] = 0x3F0000003F000000;
    do
    {
      if (v10 < 4)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = 32;
        for (i = v10; i > 3; i -= 4)
        {
          v19 = this[51];
          v21 = v19[2];
          v20 = v19[3];
          v22 = vminq_f32(vmaxq_f32(*(v12 + v17 - 32), v20), v21);
          v23 = vminq_f32(vmaxq_f32(*(v12 + v17 - 16), v20), v21);
          v24 = vminq_f32(vmaxq_f32(*(v12 + v17), v20), v21);
          v25 = vminq_f32(vmaxq_f32(*(v12 + v17 + 16), v20), v21);
          v26 = v19[4];
          v27 = v19[5];
          v28 = vaddq_f32(v26, vmulq_f32(v22, v27));
          v29 = vaddq_f32(v26, vmulq_f32(v23, v27));
          v30 = vaddq_f32(v26, vmulq_f32(v24, v27));
          v28.i32[1] = 0.5;
          v29.i32[1] = 0.5;
          v30.i32[1] = 0.5;
          v31 = vaddq_f32(v26, vmulq_f32(v25, v27));
          v31.i32[1] = 0.5;
          v32 = *(a2 + 26);
          v33 = vsubq_f32(v28, v9);
          v34 = *(a2 + 12);
          if (v5)
          {
            v35 = vaddq_s32(vcvtq_s32_f32(v33), vcltzq_f32(v33));
            v36 = vsubq_f32(v33, vcvtq_f32_s32(v35)).u64[0];
            v37 = vsubq_f32(v29, v9);
            v38 = vaddq_s32(vcvtq_s32_f32(v37), vcltzq_f32(v37));
            v39 = vsubq_f32(v37, vcvtq_f32_s32(v38)).u64[0];
            v40 = vdup_n_s32(v32);
            *v35.i8 = vmla_s32(vzip1_s32(*v35.i8, *v38.i8), vzip2_s32(*v35.i8, *v38.i8), v40);
            v41 = (v34 + 16 * v35.i32[0]);
            v42 = vaddq_f32(*v41, vmulq_n_f32(vsubq_f32(v41[1], *v41), v36.f32[0]));
            v42.i32[0] = vaddq_f32(v42, vmulq_lane_f32(vsubq_f32(vaddq_f32(v41[v32], vmulq_n_f32(vsubq_f32(v41[v32 + 1], v41[v32]), v36.f32[0])), v42), v36, 1)).u32[0];
            v43 = (v34 + 16 * v35.i32[1]);
            v44 = vaddq_f32(*v43, vmulq_n_f32(vsubq_f32(v43[1], *v43), v39.f32[0]));
            v44.i32[0] = vaddq_f32(v44, vmulq_lane_f32(vsubq_f32(vaddq_f32(v43[v32], vmulq_n_f32(vsubq_f32(v43[v32 + 1], v43[v32]), v39.f32[0])), v44), v39, 1)).u32[0];
            v45 = vsubq_f32(v30, v9);
            v46 = vaddq_s32(vcvtq_s32_f32(v45), vcltzq_f32(v45));
            v45.i64[0] = vsubq_f32(v45, vcvtq_f32_s32(v46)).u64[0];
            v47 = vsubq_f32(v31, v9);
            v48 = vaddq_s32(vcvtq_s32_f32(v47), vcltzq_f32(v47));
            *v46.i8 = vmla_s32(vzip1_s32(*v46.i8, *v48.i8), vzip2_s32(*v46.i8, *v48.i8), v40);
            v49 = (v34 + 16 * v46.i32[0]);
            v48.i64[0] = vsubq_f32(v47, vcvtq_f32_s32(v48)).u64[0];
            v50 = vaddq_f32(*v49, vmulq_n_f32(vsubq_f32(v49[1], *v49), v45.f32[0]));
            v50.i32[0] = vaddq_f32(v50, vmulq_lane_f32(vsubq_f32(vaddq_f32(v49[v32], vmulq_n_f32(vsubq_f32(v49[v32 + 1], v49[v32]), v45.f32[0])), v50), *v45.f32, 1)).u32[0];
            v51 = (v34 + 16 * v46.i32[1]);
            v52 = vaddq_f32(*v51, vmulq_n_f32(vsubq_f32(v51[1], *v51), *v48.i32));
            v52.i32[0] = vaddq_f32(v52, vmulq_lane_f32(vsubq_f32(vaddq_f32(v51[v32], vmulq_n_f32(vsubq_f32(v51[v32 + 1], v51[v32]), *v48.i32)), v52), *v48.i8, 1)).u32[0];
          }

          else
          {
            v53 = vaddq_f32(v33, v15);
            v54 = vcvtq_s32_f32(v53);
            v55 = vaddq_f32(vsubq_f32(v29, v9), v15);
            v56 = vcvtq_s32_f32(v55);
            *v53.f32 = vadd_s32(*v54.i8, *&vcgtq_f32(vcvtq_f32_s32(v54), v53));
            *v55.f32 = vadd_s32(*v56.i8, *&vcgtq_f32(vcvtq_f32_s32(v56), v55));
            *v56.i8 = vdup_n_s32(v32);
            *v55.f32 = vmla_s32(vzip1_s32(*v53.f32, *v55.f32), vzip2_s32(*v53.f32, *v55.f32), *v56.i8);
            v57 = v55.i32[1];
            v42 = *(v34 + 16 * v55.i32[0]);
            v44 = *(v34 + 16 * v57);
            v58 = vaddq_f32(vsubq_f32(v30, v9), v15);
            v59 = vcvtq_s32_f32(v58);
            v60 = vaddq_f32(vsubq_f32(v31, v9), v15);
            v61 = vcvtq_s32_f32(v60);
            *v60.f32 = vadd_s32(*v61.i8, *&vcgtq_f32(vcvtq_f32_s32(v61), v60));
            *v58.f32 = vadd_s32(*v59.i8, *&vcgtq_f32(vcvtq_f32_s32(v59), v58));
            *v60.f32 = vmla_s32(vzip1_s32(*v58.f32, *v60.f32), vzip2_s32(*v58.f32, *v60.f32), *v56.i8);
            v62 = v60.i32[1];
            v50 = *(v34 + 16 * v60.i32[0]);
            v52 = *(v34 + 16 * v62);
          }

          v63 = v19[1];
          v64 = vmaxq_f32(vaddq_f32(*v19, vmulq_n_f32(v63, v42.f32[0])), v20);
          v65 = vmaxq_f32(vaddq_f32(*v19, vmulq_n_f32(v63, v44.f32[0])), v20);
          v66 = vmaxq_f32(vaddq_f32(*v19, vmulq_n_f32(v63, v50.f32[0])), v20);
          v67 = vmaxq_f32(vaddq_f32(*v19, vmulq_n_f32(v63, v52.f32[0])), v20);
          v68 = v19[6];
          v69 = (v11 + v17);
          v69[-2] = vminq_f32(v64, v68);
          v69[-1] = vminq_f32(v65, v68);
          *v69 = vminq_f32(v66, v68);
          v69[1] = vminq_f32(v67, v68);
          v16 += 4;
          v17 += 64;
        }
      }

      if (v16 < v10)
      {
        do
        {
          v70 = this[51];
          v71 = v70[3];
          v72 = vaddq_f32(v70[4], vmulq_f32(vminq_f32(vmaxq_f32(*(v12 + 16 * v16), v71), v70[2]), v70[5]));
          v72.i32[1] = 0.5;
          v73 = *(a2 + 26);
          v74 = vsubq_f32(v72, v9);
          v75 = *(a2 + 12);
          if (v5)
          {
            v76 = vaddq_s32(vcvtq_s32_f32(v74), vcltzq_f32(v74));
            v74.i64[0] = vsubq_f32(v74, vcvtq_f32_s32(v76)).u64[0];
            v77 = (v75 + 16 * (v76.i32[0] + v76.i32[1] * v73));
            v78 = vaddq_f32(*v77, vmulq_n_f32(vsubq_f32(v77[1], *v77), v74.f32[0]));
            v74.i32[0] = vaddq_f32(v78, vmulq_lane_f32(vsubq_f32(vaddq_f32(v77[v73], vmulq_n_f32(vsubq_f32(v77[v73 + 1], v77[v73]), v74.f32[0])), v78), *v74.f32, 1)).u32[0];
          }

          else
          {
            v79 = vaddq_f32(v74, v15);
            v80 = vcvtq_s32_f32(v79);
            v79.i64[0] = vaddq_s32(v80, vcgtq_f32(vcvtq_f32_s32(v80), v79)).u64[0];
            v74 = *(v75 + 16 * (v79.i32[0] + v79.i32[1] * v73));
          }

          *(v11 + 16 * v16++) = vminq_f32(vmaxq_f32(vaddq_f32(*v70, vmulq_n_f32(v70[1], v74.f32[0])), v71), v70[6]);
        }

        while (v16 < v10);
      }

      ++v8;
      v12 += v13;
      v11 += v14;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcLumaKeyer::GetDOD(HgcLumaKeyer *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcLumaKeyer::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcLumaKeyer::HgcLumaKeyer(HgcLumaKeyer *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E86B8;
  operator new();
}

void HgcLumaKeyer::~HgcLumaKeyer(HGNode *this)
{
  *this = &unk_2871E86B8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcLumaKeyer::~HgcLumaKeyer(this);

  HGObject::operator delete(v1);
}

uint64_t HgcLumaKeyer::SetParameter(HgcLumaKeyer *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
    if (v8[1].n128_f32[0] != a3.n128_f32[0] || v8[1].n128_f32[1] != a4 || v8[1].n128_f32[2] != a5 || v8[1].n128_f32[3] != a3.n128_f32[0])
    {
      v8[1].n128_f32[2] = a5;
      v8[1].n128_u32[3] = a3.n128_u32[0];
      v8[1].n128_u32[0] = a3.n128_u32[0];
      v8[1].n128_f32[1] = a4;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v8[8] = a3;
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
    if (v7->n128_f32[0] != a3.n128_f32[0] || v7->n128_f32[1] != a4 || v7->n128_f32[2] != a5 || v7->n128_f32[3] != a3.n128_f32[0])
    {
      v7->n128_f32[2] = a5;
      v7->n128_u32[3] = a3.n128_u32[0];
      v7->n128_u32[0] = a3.n128_u32[0];
      v7->n128_f32[1] = a4;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v7[7] = a3;
LABEL_19:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcLumaKeyer::GetParameter(HgcLumaKeyer *this, unsigned int a2, float *a3)
{
  if (a2 > 2)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = qword_260346AC8[a2];
  v6 = qword_260346AE0[a2];
  v7 = qword_260346AF8[a2];
  v8 = *(this + 51);
  *a3 = *(v8 + *&aP_9[8 * a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

const char *HgcLumaKey::GetProgram(HgcLumaKey *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000056d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xz = half2(dot(r0.xyz, half3(hg_Params[0].xyz)));\n    r2.x = half(hg_Params[2].y) - half(hg_Params[2].x);\n    r2.xz = 1.00000h / r2.xx;\n    r3.xz = r1.xz - half2(hg_Params[2].xx);\n    r3.xz = r3.xz*r2.xz;\n    r2.xz = half2(r1.xz >= half2(hg_Params[2].xx));\n    r2.xz = r2.xz*r3.xz;\n    r3.xz = half2(r1.xz >= half2(hg_Params[2].yy));\n    r2.x = clamp(r2.x + r3.x, 0.00000h, 1.00000h);\n    r2.y = c0.y - r2.x;\n    r4.z = c0.y - half(hg_Params[2].y);\n    r4.z = half(r1.z < r4.z);\n    r2.z = clamp(r3.z*r4.z + r2.z, 0.00000h, 1.00000h);\n    r2.w = c0.y - r2.z;\n    r2.w = dot(r2, half4(hg_Params[1]));\n    r2.w = r2.w*r0.w;\n    output.color0.xyz = float3(r0.xyz)*float3(r2.www);\n    output.color0.w = float(r2.w);\n    return output;\n}\n//MD5=52a4b6c7:8bf69931:c3eec1fe:8683b5cd\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000522\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xz = float2(dot(r0.xyz, hg_Params[0].xyz));\n    r2.x = hg_Params[2].y - hg_Params[2].x;\n    r2.xz = 1.00000f / r2.xx;\n    r3.xz = r1.xz - hg_Params[2].xx;\n    r3.xz = r3.xz*r2.xz;\n    r2.xz = float2(r1.xz >= hg_Params[2].xx);\n    r2.xz = r2.xz*r3.xz;\n    r3.xz = float2(r1.xz >= hg_Params[2].yy);\n    r2.x = clamp(r2.x + r3.x, 0.00000f, 1.00000f);\n    r2.y = c0.y - r2.x;\n    r4.z = c0.y - hg_Params[2].y;\n    r4.z = float(r1.z < r4.z);\n    r2.z = clamp(r3.z*r4.z + r2.z, 0.00000f, 1.00000f);\n    r2.w = c0.y - r2.z;\n    r2.w = dot(r2, hg_Params[1]);\n    r2.w = r2.w*r0.w;\n    output.color0.xyz = r0.xyz*r2.www;\n    output.color0.w = r2.w;\n    return output;\n}\n//MD5=34c6f3dd:16366c1e:a18fd862:e09b84d4\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000572\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xz = vec2(dot(r0.xyz, hg_ProgramLocal0.xyz));\n    r2.x = hg_ProgramLocal2.y - hg_ProgramLocal2.x;\n    r2.xz = vec2(1.00000) / r2.xx;\n    r3.xz = r1.xz - hg_ProgramLocal2.xx;\n    r3.xz = r3.xz*r2.xz;\n    r2.xz = vec2(greaterThanEqual(r1.xz, hg_ProgramLocal2.xx));\n    r2.xz = r2.xz*r3.xz;\n    r3.xz = vec2(greaterThanEqual(r1.xz, hg_ProgramLocal2.yy));\n    r2.x = clamp(r2.x + r3.x, 0.00000, 1.00000);\n    r2.y = c0.y - r2.x;\n    r4.z = c0.y - hg_ProgramLocal2.y;\n    r4.z = float(r1.z < r4.z);\n    r2.z = clamp(r3.z*r4.z + r2.z, 0.00000, 1.00000);\n    r2.w = c0.y - r2.z;\n    r2.w = dot(r2, hg_ProgramLocal1);\n    r2.w = r2.w*r0.w;\n    gl_FragColor.xyz = r0.xyz*r2.www;\n    gl_FragColor.w = r2.w;\n}\n//MD5=95a6db3a:54e9f3de:6f929bed:508d296b\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAABBF0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAABCF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAABD30()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAABD28);
}

uint64_t HgcLumaKey::BindTexture(HgcLumaKey *this, HGHandler *a2, int a3)
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

uint64_t HgcLumaKey::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcLumaKey::RenderTile(uint64_t a1, uint64_t a2)
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
          v12 = *(v6 + v9);
          v13 = *(v6 + v9 + 16);
          v14 = *(v6 + v9 + 32);
          v15 = *(a1 + 408);
          v16 = *(v15 + 32);
          v17 = *(v15 + 48);
          v18 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v17);
          v19 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v17);
          v20 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v17);
          v21 = *(v15 + 64);
          v22 = *(v15 + 80);
          v23 = vmulq_f32(vrecpeq_f32(v18), v21);
          v24 = vmulq_f32(vrecpeq_f32(v19), v21);
          v25 = vmulq_f32(vrecpeq_f32(v20), v21);
          v26 = vmulq_f32(v23, vrecpsq_f32(v23, v18));
          v27 = vmulq_f32(v24, vrecpsq_f32(v24, v19));
          v28 = vandq_s8(v22, v26);
          v29 = *(v15 + 96);
          v30 = vmulq_f32(v12, vorrq_s8(v28, v29));
          v31 = vmulq_f32(v13, vorrq_s8(vandq_s8(v22, v27), v29));
          v32 = vmulq_f32(v14, vorrq_s8(vandq_s8(v22, vmulq_f32(v25, vrecpsq_f32(v25, v20))), v29));
          v33 = *(v15 + 16);
          v34 = vmulq_f32(*v15, v30);
          v35 = vmulq_f32(*v15, v31);
          v36 = vmulq_f32(*v15, v32);
          v37 = vaddq_f32(vdupq_lane_s64(v36.i64[0], 0), vdupq_lane_s32(*v36.i8, 1));
          v38 = vdupq_laneq_s64(v36, 1);
          v39 = vaddq_f32(vaddq_f32(vdupq_lane_s64(v34.i64[0], 0), vdupq_lane_s32(*v34.i8, 1)), vdupq_laneq_s64(v34, 1));
          v40 = vdupq_lane_s64(vsubq_f32(vrev64q_s32(v16), v16).i64[0], 0);
          v41 = vaddq_f32(vaddq_f32(vdupq_lane_s64(v35.i64[0], 0), vdupq_lane_s32(*v35.i8, 1)), vdupq_laneq_s64(v35, 1));
          v42 = vmaxq_f32(vmulq_f32(v21, vrecpeq_f32(v40)), *(v15 + 112));
          v43 = *(v15 + 144);
          v44 = vminq_f32(v42, *(v15 + 128));
          v45 = vrecpsq_f32(v40, v44);
          v46 = vaddq_f32(v37, v38);
          v47 = vmulq_f32(v44, v45);
          v48 = vdupq_lane_s64(v16.i64[0], 0);
          v49 = vdupq_lane_s32(*v16.f32, 1);
          v50 = vmulq_f32(vandq_s8(v43, vcgeq_f32(v39, v48)), vmulq_f32(vsubq_f32(v39, v48), v47));
          v51 = vmulq_f32(vandq_s8(v43, vcgeq_f32(v41, v48)), vmulq_f32(vsubq_f32(v41, v48), v47));
          v52 = vandq_s8(v43, vcgeq_f32(v39, v49));
          v53 = vmulq_f32(vandq_s8(v43, vcgeq_f32(v46, v48)), vmulq_f32(vsubq_f32(v46, v48), v47));
          v54 = vandq_s8(v43, vcgeq_f32(v41, v49));
          v55 = vandq_s8(v43, vcgeq_f32(v46, v49));
          v49.i64[0] = vminq_f32(vmaxq_f32(vaddq_f32(v52, v50), v29), v43).u64[0];
          v56.i64[0] = v49.i64[0];
          v56.i64[1] = v50.i64[1];
          v57.i64[0] = vminq_f32(vmaxq_f32(vaddq_f32(v54, v51), v29), v43).u64[0];
          v58.i64[0] = v57.i64[0];
          v58.i64[1] = v51.i64[1];
          v59.i64[0] = vminq_f32(vmaxq_f32(vaddq_f32(v55, v53), v29), v43).u64[0];
          v49.i64[1] = vdupq_laneq_s64(v50, 1).u64[0];
          v50.i64[0] = v59.i64[0];
          v50.i64[1] = v53.i64[1];
          v57.i64[1] = vdupq_laneq_s64(v51, 1).u64[0];
          v59.i64[1] = vdupq_laneq_s64(v53, 1).u64[0];
          v60 = vsubq_f32(v43, vrev64q_s32(v57));
          v61 = vsubq_f32(v43, vrev64q_s32(v59));
          v63 = *(v15 + 160);
          v62 = *(v15 + 176);
          v64 = vbslq_s8(v63, vsubq_f32(v43, vrev64q_s32(v49)), v56);
          v65 = vbslq_s8(v63, v60, v58);
          v66 = vsubq_f32(v43, vextq_s8(v16, v16, 0xCuLL));
          v67 = vcgtq_f32(v66, v39);
          v68 = vcgtq_f32(v66, v41);
          v69 = vcgtq_f32(v66, v46);
          v70 = vbslq_s8(v63, v61, v50);
          v71 = vmaxq_f32(vaddq_f32(vmulq_f32(v54, vandq_s8(v43, v68)), v65), v29);
          v72 = vmaxq_f32(vaddq_f32(vmulq_f32(v55, vandq_s8(v43, v69)), v70), v29);
          v73 = vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v52, vandq_s8(v43, v67)), v64), v29), v43);
          v74 = vminq_f32(v71, v43);
          v75 = vminq_f32(v72, v43);
          v71.i64[0] = v64.i64[0];
          v71.i64[1] = v73.i64[1];
          v54.i64[0] = v65.i64[0];
          v54.i64[1] = v74.i64[1];
          v50.i64[0] = v70.i64[0];
          v50.i64[1] = v75.i64[1];
          v64.i64[1] = vdupq_laneq_s64(v73, 1).u64[0];
          v65.i64[1] = vdupq_laneq_s64(v74, 1).u64[0];
          v70.i64[1] = vdupq_laneq_s64(v75, 1).u64[0];
          v76 = vsubq_f32(v43, vrev64q_s32(v70));
          v77 = vmulq_f32(v33, vbslq_s8(v62, vsubq_f32(v43, vrev64q_s32(v64)), v71));
          v78 = vmulq_f32(v33, vbslq_s8(v62, vsubq_f32(v43, vrev64q_s32(v65)), v54));
          v79 = vmulq_f32(v33, vbslq_s8(v62, v76, v50));
          v80 = vaddq_f32(v77, vextq_s8(v77, v77, 4uLL));
          v81 = vaddq_f32(v78, vextq_s8(v78, v78, 4uLL));
          v82 = vaddq_f32(v79, vextq_s8(v79, v79, 4uLL));
          v83 = vmulq_f32(v30, vaddq_f32(v80, vextq_s8(v80, v80, 8uLL)));
          v84 = vmulq_f32(v31, vaddq_f32(v81, vextq_s8(v81, v81, 8uLL)));
          v85 = vmulq_f32(v32, vaddq_f32(v82, vextq_s8(v82, v82, 8uLL)));
          v86 = (v5 + v9);
          *v86 = vbslq_s8(v62, v83, vmulq_laneq_f32(v30, v83, 3));
          v86[1] = vbslq_s8(v62, v84, vmulq_laneq_f32(v31, v84, 3));
          v86[2] = vbslq_s8(v62, v85, vmulq_laneq_f32(v32, v85, 3));
          v10 += 3;
          v9 += 48;
        }
      }

      if (v10 < v4)
      {
        do
        {
          v87 = *(v6 + 16 * v10);
          v88 = *(a1 + 408);
          v89 = *(v88 + 32);
          v90 = vmaxq_f32(vdupq_laneq_s32(v87, 3), *(v88 + 48));
          v91 = *(v88 + 64);
          v92 = vmulq_f32(vrecpeq_f32(v90), v91);
          v93 = vandq_s8(*(v88 + 80), vmulq_f32(v92, vrecpsq_f32(v92, v90)));
          v94 = *(v88 + 96);
          v95 = vmulq_f32(v87, vorrq_s8(v93, v94));
          v96 = vmulq_f32(*v88, v95);
          v97 = vdupq_lane_s64(vsubq_f32(vrev64q_s32(v89), v89).i64[0], 0);
          v98 = vaddq_f32(vaddq_f32(vdupq_lane_s64(v96.i64[0], 0), vdupq_lane_s32(*v96.i8, 1)), vdupq_laneq_s64(v96, 1));
          v99 = *(v88 + 144);
          v100 = vminq_f32(vmaxq_f32(vmulq_f32(v91, vrecpeq_f32(v97)), *(v88 + 112)), *(v88 + 128));
          v101 = vdupq_lane_s64(v89.i64[0], 0);
          v102 = vmulq_f32(vandq_s8(v99, vcgeq_f32(v98, v101)), vmulq_f32(vsubq_f32(v98, v101), vmulq_f32(v100, vrecpsq_f32(v97, v100))));
          v103 = vandq_s8(v99, vcgeq_f32(v98, vdupq_lane_s32(*v89.f32, 1)));
          v97.i64[0] = vminq_f32(vmaxq_f32(vaddq_f32(v103, v102), v94), v99).u64[0];
          v104.i64[0] = v97.i64[0];
          v104.i64[1] = v102.i64[1];
          v97.i64[1] = vdupq_laneq_s64(v102, 1).u64[0];
          v105 = *(v88 + 176);
          v106 = vbslq_s8(*(v88 + 160), vsubq_f32(v99, vrev64q_s32(v97)), v104);
          v107 = vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v103, vandq_s8(v99, vcgtq_f32(vsubq_f32(v99, vextq_s8(v89, v89, 0xCuLL)), v98))), v106), v94), v99);
          v94.i64[0] = v106.i64[0];
          v94.i64[1] = v107.i64[1];
          v106.i64[1] = vdupq_laneq_s64(v107, 1).u64[0];
          v108 = vmulq_f32(*(v88 + 16), vbslq_s8(v105, vsubq_f32(v99, vrev64q_s32(v106)), v94));
          v109 = vaddq_f32(v108, vextq_s8(v108, v108, 4uLL));
          v110 = vmulq_f32(v95, vaddq_f32(v109, vextq_s8(v109, v109, 8uLL)));
          *(v5 + 16 * v10++) = vbslq_s8(v105, v110, vmulq_laneq_f32(v95, v110, 3));
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

uint64_t HgcLumaKey::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcLumaKey::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcLumaKey::HgcLumaKey(HgcLumaKey *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E8920;
  operator new();
}

void HgcLumaKey::~HgcLumaKey(HGNode *this)
{
  *this = &unk_2871E8920;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcLumaKey::~HgcLumaKey(this);

  HGObject::operator delete(v1);
}

uint64_t HgcLumaKey::SetParameter(HgcLumaKey *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcLumaKey::GetParameter(HgcLumaKey *this, unsigned int a2, float *a3)
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

const char *HgcSpillRemoval::GetProgram(HgcSpillRemoval *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000535\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(8.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = half3(dot(r0, half4(hg_Params[3])));\n    r2.xyz = half3(dot(r0, half4(hg_Params[4])));\n    r2.xyz = abs(r2.xyz);\n    r1.xyz = r2.xyz*half3(hg_Params[5].xyz) + r1.xyz;\n    r3.x = dot(r0, half4(hg_Params[0]));\n    r3.y = dot(r0, half4(hg_Params[1]));\n    r3.z = dot(r0, half4(hg_Params[2]));\n    r4.x = dot(r0, half4(hg_Params[6]));\n    r4.y = dot(r0, half4(hg_Params[7]));\n    r4.z = dot(r0, half4(hg_Params[8]));\n    r2.xyz = clamp(r2.xyz*half3(hg_Params[9].xyz), 0.00000h, 1.00000h);\n    r3.xyz = mix(r3.xyz, r4.xyz, r2.xyz);\n    r1.xyz = clamp(r1.xyz*c0.xxx + c0.yyy, 0.00000h, 1.00000h);\n    output.color0.xyz = mix(float3(r3.xyz), float3(r0.xyz), float3(r1.xyz));\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=dd20372d:5357e7df:1d9b6437:986450e5\n//SIG=00400000:00000001:00000001:00000001:0001:000a:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004ce\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(8.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = float3(dot(r0, hg_Params[3]));\n    r2.xyz = float3(dot(r0, hg_Params[4]));\n    r2.xyz = abs(r2.xyz);\n    r1.xyz = r2.xyz*hg_Params[5].xyz + r1.xyz;\n    r3.x = dot(r0, hg_Params[0]);\n    r3.y = dot(r0, hg_Params[1]);\n    r3.z = dot(r0, hg_Params[2]);\n    r4.x = dot(r0, hg_Params[6]);\n    r4.y = dot(r0, hg_Params[7]);\n    r4.z = dot(r0, hg_Params[8]);\n    r2.xyz = clamp(r2.xyz*hg_Params[9].xyz, 0.00000f, 1.00000f);\n    r3.xyz = mix(r3.xyz, r4.xyz, r2.xyz);\n    r1.xyz = clamp(r1.xyz*c0.xxx + c0.yyy, 0.00000f, 1.00000f);\n    output.color0.xyz = mix(r3.xyz, r0.xyz, r1.xyz);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=2a7f44f2:b70a9079:2738f6f9:4a6d0db3\n//SIG=00000000:00000001:00000001:00000000:0001:000a:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000630\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nuniform mediump vec4 hg_ProgramLocal5;\nuniform mediump vec4 hg_ProgramLocal6;\nuniform mediump vec4 hg_ProgramLocal7;\nuniform mediump vec4 hg_ProgramLocal8;\nuniform mediump vec4 hg_ProgramLocal9;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(8.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = vec3(dot(r0, hg_ProgramLocal3));\n    r2.xyz = vec3(dot(r0, hg_ProgramLocal4));\n    r2.xyz = abs(r2.xyz);\n    r1.xyz = r2.xyz*hg_ProgramLocal5.xyz + r1.xyz;\n    r3.x = dot(r0, hg_ProgramLocal0);\n    r3.y = dot(r0, hg_ProgramLocal1);\n    r3.z = dot(r0, hg_ProgramLocal2);\n    r4.x = dot(r0, hg_ProgramLocal6);\n    r4.y = dot(r0, hg_ProgramLocal7);\n    r4.z = dot(r0, hg_ProgramLocal8);\n    r2.xyz = clamp(r2.xyz*hg_ProgramLocal9.xyz, vec3(0.00000), vec3(1.00000));\n    r3.xyz = mix(r3.xyz, r4.xyz, r2.xyz);\n    r1.xyz = clamp(r1.xyz*c0.xxx + c0.yyy, vec3(0.00000), vec3(1.00000));\n    gl_FragColor.xyz = mix(r3.xyz, r0.xyz, r1.xyz);\n    gl_FragColor.w = r0.w;\n}\n//MD5=d7db2a5c:2a3b9e67:91789da8:3f82cfaa\n//SIG=00000000:00000001:00000001:00000000:0001:000a:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAAC79C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAAC89C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAAC8DC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAAC8D4);
}

uint64_t HgcSpillRemoval::BindTexture(HgcSpillRemoval *this, HGHandler *a2, int a3)
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

uint64_t HgcSpillRemoval::Bind(void *a1, uint64_t a2)
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
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcSpillRemoval::RenderTile(uint64_t a1, uint64_t a2)
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
          v16 = *(v14 + 32);
          v15 = *(v14 + 48);
          v17 = vmulq_f32(v12, v15);
          v18 = vmulq_f32(v13, v15);
          v19 = vaddq_f32(v17, vextq_s8(v17, v17, 4uLL));
          v20 = vaddq_f32(v18, vextq_s8(v18, v18, 4uLL));
          v22 = *(v14 + 64);
          v21 = *(v14 + 80);
          v23 = vmulq_f32(v12, v22);
          v24 = vmulq_f32(v13, v22);
          v25 = vaddq_f32(v19, vextq_s8(v19, v19, 8uLL));
          v26 = vaddq_f32(v23, vextq_s8(v23, v23, 4uLL));
          v27 = vaddq_f32(v24, vextq_s8(v24, v24, 4uLL));
          v28 = vaddq_f32(v20, vextq_s8(v20, v20, 8uLL));
          v29 = vaddq_f32(v26, vextq_s8(v26, v26, 8uLL));
          v30 = *(v14 + 16);
          v31 = vmulq_f32(v12, *v14);
          v32 = vmulq_f32(v13, *v14);
          v33 = vaddq_f32(v27, vextq_s8(v27, v27, 8uLL));
          v34 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
          v35 = vabsq_f32(v29);
          v36 = vaddq_f32(v32, vextq_s8(v32, v32, 4uLL));
          v37 = vmulq_f32(v12, v30);
          v38 = vmulq_f32(v13, v30);
          v39 = vaddq_f32(v34, vdupq_laneq_s64(v34, 1));
          v40 = vaddq_f32(v37, vextq_s8(v37, v37, 4uLL));
          v41 = vaddq_f32(v36, vdupq_laneq_s64(v36, 1));
          v42 = vaddq_f32(v38, vextq_s8(v38, v38, 4uLL));
          v43 = vmulq_f32(v12, v16);
          v44 = vmulq_f32(v13, v16);
          v45 = vaddq_f32(v40, vdupq_laneq_s64(v40, 1));
          v46 = vaddq_f32(v43, vextq_s8(v43, v43, 4uLL));
          v47 = vaddq_f32(v44, vextq_s8(v44, v44, 4uLL));
          v48 = *(v14 + 96);
          v49 = *(v14 + 112);
          v50 = vmulq_f32(v12, v48);
          v51 = vmulq_f32(v13, v48);
          v52 = vaddq_f32(v50, vextq_s8(v50, v50, 4uLL));
          v53 = vaddq_f32(v51, vextq_s8(v51, v51, 4uLL));
          v54 = vmulq_f32(v12, v49);
          v55 = vmulq_f32(v13, v49);
          v56 = vaddq_f32(v25, vmulq_f32(v21, v35));
          v57 = vaddq_f32(v54, vextq_s8(v54, v54, 4uLL));
          v58 = vaddq_f32(v55, vextq_s8(v55, v55, 4uLL));
          v59 = *(v14 + 160);
          v60 = *(v14 + 176);
          v39.i64[0] = vbslq_s8(v59, v39, v45).u64[0];
          v41.i64[0] = vbslq_s8(v59, v41, vaddq_f32(v42, vdupq_laneq_s64(v42, 1))).u64[0];
          v61 = vaddq_f32(v58, vdupq_laneq_s64(v58, 1));
          v45.i64[0] = vbslq_s8(v59, vaddq_f32(v52, vdupq_laneq_s64(v52, 1)), vaddq_f32(v57, vdupq_laneq_s64(v57, 1))).u64[0];
          v62 = *(v14 + 128);
          v63 = *(v14 + 144);
          v64 = vmulq_f32(v12, v62);
          v61.i64[0] = vbslq_s8(v59, vaddq_f32(v53, vdupq_laneq_s64(v53, 1)), v61).u64[0];
          v65 = vaddq_f32(v64, vextq_s8(v64, v64, 4uLL));
          v66 = vabsq_f32(v33);
          v67 = vmulq_f32(v13, v62);
          v39.i64[1] = vaddq_f32(v46, vdupq_lane_s64(*&v46, 0)).i64[1];
          v68 = vaddq_f32(v67, vextq_s8(v67, v67, 4uLL));
          v41.i64[1] = vaddq_f32(v47, vdupq_lane_s64(*&v47, 0)).i64[1];
          v45.i64[1] = vaddq_f32(v65, vdupq_lane_s64(*&v65, 0)).i64[1];
          v61.i64[1] = vaddq_f32(v68, vdupq_lane_s64(*&v68, 0)).i64[1];
          v69 = vaddq_f32(v28, vmulq_f32(v21, v66));
          v70 = vmaxq_f32(vmulq_f32(v35, v63), v60);
          v71 = vmaxq_f32(vmulq_f32(v66, v63), v60);
          v72 = *(v14 + 192);
          v73 = *(v14 + 208);
          v74 = vaddq_f32(v39, vmulq_f32(vminq_f32(v70, v72), vsubq_f32(v45, v39)));
          v75 = vaddq_f32(v41, vmulq_f32(vminq_f32(v71, v72), vsubq_f32(v61, v41)));
          v76 = vaddq_f32(v75, vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v72, vmulq_f32(v69, v73)), v60), v72), vsubq_f32(v13, v75)));
          v77 = *(v14 + 224);
          v78 = (v5 + v10);
          v78[-1] = vbslq_s8(v77, v12, vaddq_f32(v74, vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v72, vmulq_f32(v56, v73)), v60), v72), vsubq_f32(v12, v74))));
          *v78 = vbslq_s8(v77, v13, v76);
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v79 = *(v6 + 16 * v9);
        v80 = *(a1 + 408);
        v81 = vmulq_f32(v79, *(v80 + 48));
        v82 = vaddq_f32(v81, vextq_s8(v81, v81, 4uLL));
        v83 = vmulq_f32(v79, *(v80 + 64));
        v84 = vaddq_f32(v83, vextq_s8(v83, v83, 4uLL));
        v85 = vabsq_f32(vaddq_f32(v84, vextq_s8(v84, v84, 8uLL)));
        v86 = vaddq_f32(vaddq_f32(v82, vextq_s8(v82, v82, 8uLL)), vmulq_f32(*(v80 + 80), v85));
        v87 = vmulq_f32(v79, *v80);
        v88 = vaddq_f32(v87, vextq_s8(v87, v87, 4uLL));
        v89 = vmulq_f32(v79, *(v80 + 16));
        v90 = vaddq_f32(v89, vextq_s8(v89, v89, 4uLL));
        v91 = vmulq_f32(v79, *(v80 + 32));
        v92 = vaddq_f32(v91, vextq_s8(v91, v91, 4uLL));
        v93 = *(v80 + 160);
        v94 = *(v80 + 176);
        v88.i64[0] = vbslq_s8(v93, vaddq_f32(v88, vdupq_laneq_s64(v88, 1)), vaddq_f32(v90, vdupq_laneq_s64(v90, 1))).u64[0];
        v88.i64[1] = vaddq_f32(v92, vdupq_lane_s64(*&v92, 0)).i64[1];
        v95 = vmulq_f32(v79, *(v80 + 96));
        v96 = vaddq_f32(v95, vextq_s8(v95, v95, 4uLL));
        v97 = vmulq_f32(v79, *(v80 + 112));
        v98 = vaddq_f32(v97, vextq_s8(v97, v97, 4uLL));
        v96.i64[0] = vbslq_s8(v93, vaddq_f32(v96, vdupq_laneq_s64(v96, 1)), vaddq_f32(v98, vdupq_laneq_s64(v98, 1))).u64[0];
        v99 = vmulq_f32(v79, *(v80 + 128));
        v100 = vaddq_f32(v99, vextq_s8(v99, v99, 4uLL));
        v96.i64[1] = vaddq_f32(v100, vdupq_lane_s64(*&v100, 0)).i64[1];
        v101 = *(v80 + 192);
        v102 = vaddq_f32(v88, vmulq_f32(vminq_f32(vmaxq_f32(vmulq_f32(v85, *(v80 + 144)), v94), v101), vsubq_f32(v96, v88)));
        *(v5 + 16 * v9) = vbslq_s8(*(v80 + 224), v79, vaddq_f32(v102, vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v101, vmulq_f32(v86, *(v80 + 208))), v94), v101), vsubq_f32(v79, v102))));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcSpillRemoval::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcSpillRemoval::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcSpillRemoval::HgcSpillRemoval(HgcSpillRemoval *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E8B88;
  operator new();
}

void HgcSpillRemoval::~HgcSpillRemoval(HGNode *this)
{
  *this = &unk_2871E8B88;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);
}

{
  HgcSpillRemoval::~HgcSpillRemoval(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSpillRemoval::SetParameter(HgcSpillRemoval *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcSpillRemoval::GetParameter(HgcSpillRemoval *this, unsigned int a2, float *a3)
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

const char *HgcCopyAlpha::GetProgram(HgcCopyAlpha *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000308\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    output.color0 = select(float4(r0), float4(r1.wwww), hg_Params[0] < 0.00000h);\n    return output;\n}\n//MD5=11f893c9:de97dd84:418df084:cc2bc75e\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ec\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    output.color0 = select(r0, r1.wwww, hg_Params[0] < 0.00000f);\n    return output;\n}\n//MD5=a417c3aa:b6fd4dbf:6923bcc2:606096e3\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000031a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = texture2D(hg_Texture1, hg_TexCoord1.xy).w;\n    gl_FragColor = vec4(hg_ProgramLocal0.x < 0.00000 ? r1.w : r0.x, hg_ProgramLocal0.y < 0.00000 ? r1.w : r0.y, hg_ProgramLocal0.z < 0.00000 ? r1.w : r0.z, hg_ProgramLocal0.w < 0.00000 ? r1.w : r0.w);\n}\n//MD5=0f6e1c32:2a212d0f:09b27458:157f91ae\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FAAD3C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAAD504(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAAD54C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAAD544);
}

uint64_t HgcCopyAlpha::BindTexture(HgcCopyAlpha *this, HGHandler *a2, int a3)
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

uint64_t HgcCopyAlpha::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcCopyAlpha::RenderTile(uint64_t a1, uint64_t a2)
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
          v14 = vcgtq_f32(*(*(a1 + 408) + 16), **(a1 + 408));
          v15 = vbslq_s8(v14, vdupq_laneq_s32(*(v6 + v12 - 16), 3), *(v8 + v12 - 16));
          v16 = vbslq_s8(v14, vdupq_laneq_s32(*(v6 + v12), 3), *(v8 + v12));
          v17 = vbslq_s8(v14, vdupq_laneq_s32(*(v6 + v12 + 16), 3), *(v8 + v12 + 16));
          v18 = (v5 + v12);
          v18[-2] = vbslq_s8(v14, vdupq_laneq_s32(*(v6 + v12 - 32), 3), *(v8 + v12 - 32));
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
          *(v5 + 16 * v11) = vbslq_s8(vcgtq_f32(*(*(a1 + 408) + 16), **(a1 + 408)), vdupq_laneq_s32(*(v6 + 16 * v11), 3), *(v8 + 16 * v11));
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

uint64_t HgcCopyAlpha::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcCopyAlpha::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcCopyAlpha::HgcCopyAlpha(HgcCopyAlpha *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E8DF0;
  operator new();
}

void HgcCopyAlpha::~HgcCopyAlpha(HGNode *this)
{
  *this = &unk_2871E8DF0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);
}

{
  HgcCopyAlpha::~HgcCopyAlpha(this);

  HGObject::operator delete(v1);
}

uint64_t HgcCopyAlpha::SetParameter(HgcCopyAlpha *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = -a4;
  v9 = -a5;
  v10 = -a6;
  v11 = *(this + 51);
  if (v11->n128_f32[0] == -a3.n128_f32[0] && v11->n128_f32[1] == v8 && v11->n128_f32[2] == v9 && v11->n128_f32[3] == v10)
  {
    return 0;
  }

  v11->n128_f32[0] = -a3.n128_f32[0];
  v11->n128_f32[1] = v8;
  a3.n128_f32[1] = a4;
  v11->n128_f32[2] = v9;
  v11->n128_f32[3] = v10;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v11[2] = a3;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcCopyAlpha::GetParameter(HgcCopyAlpha *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = v3[8];
    a3[1] = v3[9];
    a3[2] = v3[10];
    result = v3[11];
    a3[3] = result;
  }

  return result;
}

const char *HgcAlphaMult::GetProgram(HgcAlphaMult *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000030d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    output.color0.xyz = float3(r0.xyz);\n    output.color0.w = float(r0.w)*float(r1.w);\n    return output;\n}\n//MD5=9e4dcdb5:915b7698:b2e65d35:32806837\n//SIG=00400000:00000003:00000003:00000003:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002eb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    output.color0.xyz = r0.xyz;\n    output.color0.w = r0.w*r1.w;\n    return output;\n}\n//MD5=72620547:651c5a3d:bc9c844f:23b4dcac\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000268\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = texture2D(hg_Texture1, hg_TexCoord1.xy).w;\n    gl_FragColor.xyz = r0.xyz;\n    gl_FragColor.w = r0.w*r1.w;\n}\n//MD5=230dbdb0:e5d30084:169cb3a0:451e7339\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FAADBCC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAADD0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAADD54()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAADD4CLL);
}

uint64_t HgcAlphaMult::BindTexture(HgcAlphaMult *this, HGHandler *a2, int a3)
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

uint64_t HgcAlphaMult::RenderTile(uint64_t a1, uint64_t a2)
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
          v15 = vbslq_s8(v14, vmulq_f32(*(v8 + v12 - 16), *(v6 + v12 - 16)), *(v8 + v12 - 16));
          v16 = vbslq_s8(v14, vmulq_f32(*(v8 + v12), *(v6 + v12)), *(v8 + v12));
          v17 = vbslq_s8(v14, vmulq_f32(*(v8 + v12 + 16), *(v6 + v12 + 16)), *(v8 + v12 + 16));
          v18 = (v5 + v12);
          v18[-2] = vbslq_s8(v14, vmulq_f32(*(v8 + v12 - 32), *(v6 + v12 - 32)), *(v8 + v12 - 32));
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
          *(v5 + 16 * v11) = vbslq_s8(**(a1 + 408), vmulq_f32(*(v8 + 16 * v11), *(v6 + 16 * v11)), *(v8 + 16 * v11));
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

uint64_t HgcAlphaMult::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcAlphaMult::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcAlphaMult::HgcAlphaMult(HgcAlphaMult *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E9058;
  operator new();
}

void HgcAlphaMult::~HgcAlphaMult(HGNode *this)
{
  *this = &unk_2871E9058;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  HgcAlphaMult::~HgcAlphaMult(this);

  HGObject::operator delete(v1);
}

const char *HgcSolidColor::GetProgram(HgcSolidColor *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000177\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Params[0];\n    return output;\n}\n//MD5=7872d295:7b2c1273:7805b654:83c6a562\n//SIG=00400000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000177\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Params[0];\n    return output;\n}\n//MD5=7872d295:7b2c1273:7805b654:83c6a562\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000162\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp vec4 hg_ProgramLocal0;\nvoid main()\n{\n\n    gl_FragColor = hg_ProgramLocal0;\n}\n//MD5=3516c664:47c72e5c:14a395a6:40522bd5\n//SIG=00000000:00000000:00000000:00000000:0000:0001:0000:0000:0000:0000:0000:0000:0000:00:0:1:0\n";
  }
}

void sub_25FAAE2C4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, __int128 a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  *(v31 - 64) = 4;
  std::string::basic_string[abi:ne200100]<0>((v31 - 56), "FragmentOut");
  *(v31 - 32) = xmmword_260343E00;
  HGProgramDescriptor::SetReturnBinding(v30, v31 - 64);
  if (*(v31 - 33) < 0)
  {
    operator delete(*(v31 - 56));
  }

  memset(v36, 0, 24);
  LODWORD(v32) = 2;
  std::string::basic_string[abi:ne200100]<0>(&v33, "float4");
  v35 = xmmword_260344A80;
  std::vector<HGBinding>::push_back[abi:ne200100](v36, &v32);
  if (v34 < 0)
  {
    operator delete(v33);
  }

  HGProgramDescriptor::SetArgumentBindings(v30, v36);
  v32 = v36;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v32);
}

void sub_25FAAE380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char *a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  a10 = &a19;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void sub_25FAAE3B8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAAE3B0);
}

uint64_t HgcSolidColor::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcSolidColor::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 16);
    v6 = (v5 + 32);
    v7 = 16 * *(a2 + 24);
    do
    {
      if (v4 < 4)
      {
        v8 = 0;
      }

      else
      {
        v8 = 0;
        v9 = v6;
        for (i = v4; i > 3; i -= 4)
        {
          v11 = *(a1 + 408);
          v12 = *v11;
          *(v9 - 2) = *v11;
          *(v9 - 1) = v12;
          *v9 = v12;
          v9[1] = v12;
          v9 += 4;
          v8 += 4;
        }
      }

      if (v8 < v4)
      {
        do
        {
          *(v5 + 16 * v8++) = **(a1 + 408);
        }

        while (v8 < v4);
      }

      ++v3;
      v6 = (v6 + v7);
      v5 += v7;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcSolidColor::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcSolidColor::HgcSolidColor(HgcSolidColor *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E92C0;
  operator new();
}

void HgcSolidColor::~HgcSolidColor(HGNode *this)
{
  *this = &unk_2871E92C0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  HgcSolidColor::~HgcSolidColor(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSolidColor::SetParameter(HgcSolidColor *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcSolidColor::GetParameter(HgcSolidColor *this, int a2, float *a3)
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

const char *HgcInsectEye::GetProgram(HgcInsectEye *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n"
             "//LEN=0000000e74\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< half > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]])\n"
             "{\n"
             "    const half4 c0 = half4(1.732100010, 2.000000000, 0.3333333433, 0.6666666865);\n"
             "    const half4 c1 = half4(3.000000000, 0.5000000000, 0.9990000129, 1.000000000);\n"
             "    const half4 c2 = half4(-1.500000000, 0.8659999967, 0.2500000000, 0.000000000);\n"
             "    half4 r0, r1, r2;\n"
             "    float4 s0, s1, s2, s3, s4, s5;\n"
             "    FragmentOut output;\n"
             "\n"
             "    s0.xy = frag._texCoord0.xy + hg_Params[5].xy;\n"
             "    s1.x = s0.x*hg_Params[3].x + hg_Params[3].z;\n"
             "    s1.yw = s1.xx + hg_Params[4].xx;\n"
             "    s2.z = s0.y*hg_Params[3].y + hg_Params[3].w;\n"
             "    s2.xy = s2.zz;\n"
             "    s2.zw = s2.zz + hg_Params[4].yy;\n"
             "    s1.xz = s1.xx;\n"
             "    s3 = s1*float4(c0.xxxx) + s2;\n"
             "    s1 = s1*float4(c0.xxxx) + -s2;\n"
             "    s2 = s2 + s2;\n"
             "    s2 = floor(s2);\n"
             "    s3 = floor(s3);\n"
             "    s4 = -s2*float4(c0.yyyy) + s3;\n"
             "    s5 = s4*float4(c0.zzzz) + float4(c0.wwww);\n"
             "    s5 = fract(s5);\n"
             "    s1 = floor(s1);\n"
             "    s1 = s2 + s1;\n"
             "    s5 = s5*float4(c1.xxxx) + float4(c1.yyyy);\n"
             "    s5 = floor(s5);\n"
             "    s1 = s1 - s3;\n"
             "    s1 = s1 + s5;\n"
             "    s4 = s4 - s5;\n"
             "    s4 = s4*float4(c0.zzzz);\n"
             "    s1 = float4(s1 >= float4(c1.zzzz));\n"
             "    s4 = floor(s4);\n"
             "    s4 = s4*float4(c0.yyyy) + s1;\n"
             "    s4 = s2 + s4;\n"
             "    s2 = s2*float4(c1.yyyy);\n"
             "    s4 = s4 + float4(c1.wwww);\n"
             "    s3 = s4*hg_Params[0].xxxx;\n"
             "    s2 = s1*float4(c2.xxxx) + s2;\n"
             "    s2 = s2 + float4(c1.wwww);\n"
             "    s2 = floor(s2);\n"
             "    s1 = s2 + s1;\n"
             "    s4 = s4*float4(c1.yyyy);\n"
             "    s4 = fract(s4);\n"
             "    s1 = s1 - s4;\n"
             "    s3 = s3*float4(c2.yyyy) + hg_Params[1].xxxx;\n"
             "    s5 = s0.xxxx - s3;\n"
             "    s1 = s1*hg_Params[0].yyyy + hg_Params[1].yyyy;\n"
             "    s0 = s0.yyyy - s1;\n"
             "    s2.x = s5.y*hg_Params[2].x + s3.y;\n"
             "    s2.y = s0.y*hg_Params[2].x + s1.y;\n"
             "    s3.y = s0.x*hg_Params[2].x + s1.x;\n"
             "    s3.x = s5.x*hg_Params[2].x + s3.x;\n"
             "    s1.xy = floor(s3.xy);\n"
             "    s2.xy = floor(s2.xy);\n"
             "    s3.xy = s2.xy - hg_Params[5].xy;\n"
             "    s1.xy = s1.xy - hg_Params[5].xy;\n"
             "    s3.xy = s3.xy + float2(c1.yy);\n"
             "    s3.xy = s3.xy*hg_Params[6].xy;\n"
             "    s1.xy = s1.xy + float2(c1.yy);\n"
             "    s1.xy = s1.xy*hg_Params[6].xy;\n"
             "    s3.xy = fmin(s3.xy, hg_Params[7].zw);\n"
             "    s1.xy = fmin(s1.xy, hg_Params[7].zw);\n"
             "    s3.xy = fmax(s3.xy, hg_Params[7].xy);\n"
             "    s4.xy = s3.xy + hg_Params[8].xy;\n"
             "    s4.xy = s4.xy*hg_Params[8].zw;\n"
             "    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s4.xy);\n"
             "    s1.xy = fmax(s1.xy, hg_Params[7].xy);\n"
             "    s2.xy = s1.xy + hg_Params[8].xy;\n"
             "    s2.xy = s2.xy*hg_Params[8].zw;\n"
             "    r1 = (half4) hg_Texture0.sample(hg_Sampler0, s2.xy);\n"
             "    s1.y = s0.z*hg_Params[2].x + s1.z;\n"
             "    s1.xz = s5.zw*hg_Params[2].xx + s3.zw;\n"
             "    s1.xy = floor(s1.xy);\n"
             "    s1.xy = s1.xy - hg_Params[5].xy;\n"
             "    s1.xy = s1.xy + float2(c1.yy);\n"
             "    s1.xy = s1.xy*hg_Params[6].xy;\n"
             "    s1.xy = fmin(s1.xy, hg_Params[7].zw);\n"
             "    s1.w = s0.w*hg_Params[2].x + s1.w;\n"
             "    s1.zw = floor(s1.zw);\n"
             "    s1.zw = s1.zw - hg_Params[5].xy;\n"
             "    s1.zw = s1.zw + float2(c1.yy);\n"
             "    s4.xy = s1.zw*hg_Params[6].xy;\n"
             "    s4.xy = fmin(s4.xy, hg_Params[7].zw);\n"
             "    r1 = r1 + r0;\n"
             "    s1.xy = fmax(s1.xy, hg_Params[7].xy);\n"
             "    s1.xy = s1.xy + hg_Params[8].xy;\n"
             "    s1.xy = s1.xy*hg_Params[8].zw;\n"
             "    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n"
             "    s4.xy = fmax(s4.xy, hg_Params[7].xy);\n"
             "    s4.xy = s4.xy + hg_Params[8].xy;\n"
             "    s4.xy = s4.xy*hg_Params[8].zw;\n"
             "    r2 = (half4) hg_Texture0.sample(hg_Sampler0, s4.xy);\n"
             "    r0 = r1 + r0;\n"
             "    r0 = r0 + r2;\n"
             "    output.color0 = float4(r0)*float4(c2.zzzz);\n"
             "    return output;\n"
             "}\n"
             "//MD5=52a01150:42be61b6:4acfa810:1af012e0\n"
             "//SIG=00400000:00000000:00000000:00000001:0003:0009:0009:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n"
             "//LEN=0000000d95\n"
             "fragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n"
             "    const constant float4* hg_Params [[ buffer(0) ]], \n"
             "    texture2d< float > hg_Texture0 [[ texture(0) ]], \n"
             "    sampler hg_Sampler0 [[ sampler(0) ]])\n"
             "{\n"
             "    const float4 c0 = float4(1.732100010, 2.000000000, 0.3333333433, 0.6666666865);\n"
             "    const float4 c1 = float4(3.000000000, 0.5000000000, 0.9990000129, 1.000000000);\n"
             "    const float4 c2 = float4(-1.500000000, 0.8659999967, 0.2500000000, 0.000000000);\n"
             "    float4 r0, r1, r2, r3, r4, r5;\n"
             "    FragmentOut output;\n"
             "\n"
             "    r0.xy = frag._texCoord0.xy + hg_Params[5].xy;\n"
             "    r1.x = r0.x*hg_Params[3].x + hg_Params[3].z;\n"
             "    r1.yw = r1.xx + hg_Params[4].xx;\n"
             "    r2.z = r0.y*hg_Params[3].y + hg_Params[3].w;\n"
             "    r2.xy = r2.zz;\n"
             "    r2.zw = r2.zz + hg_Params[4].yy;\n"
             "    r1.xz = r1.xx;\n"
             "    r3 = r1*c0.xxxx + r2;\n"
             "    r1 = r1*c0.xxxx + -r2;\n"
             "    r2 = r2 + r2;\n"
             "    r2 = floor(r2);\n"
             "    r3 = floor(r3);\n"
             "    r4 = -r2*c0.yyyy + r3;\n"
             "    r5 = r4*c0.zzzz + c0.wwww;\n"
             "    r5 = fract(r5);\n"
             "    r1 = floor(r1);\n"
             "    r1 = r2 + r1;\n"
             "    r5 = r5*c1.xxxx + c1.yyyy;\n"
             "    r5 = floor(r5);\n"
             "    r1 = r1 - r3;\n"
             "    r1 = r1 + r5;\n"
             "    r4 = r4 - r5;\n"
             "    r4 = r4*c0.zzzz;\n"
             "    r1 = float4(r1 >= c1.zzzz);\n"
             "    r4 = floor(r4);\n"
             "    r4 = r4*c0.yyyy + r1;\n"
             "    r4 = r2 + r4;\n"
             "    r2 = r2*c1.yyyy;\n"
             "    r4 = r4 + c1.wwww;\n"
             "    r3 = r4*hg_Params[0].xxxx;\n"
             "    r2 = r1*c2.xxxx + r2;\n"
             "    r2 = r2 + c1.wwww;\n"
             "    r2 = floor(r2);\n"
             "    r1 = r2 + r1;\n"
             "    r4 = r4*c1.yyyy;\n"
             "    r4 = fract(r4);\n"
             "    r1 = r1 - r4;\n"
             "    r3 = r3*c2.yyyy + hg_Params[1].xxxx;\n"
             "    r5 = r0.xxxx - r3;\n"
             "    r1 = r1*hg_Params[0].yyyy + hg_Params[1].yyyy;\n"
             "    r0 = r0.yyyy - r1;\n"
             "    r2.x = r5.y*hg_Params[2].x + r3.y;\n"
             "    r2.y = r0.y*hg_Params[2].x + r1.y;\n"
             "    r3.y = r0.x*hg_Params[2].x + r1.x;\n"
             "    r3.x = r5.x*hg_Params[2].x + r3.x;\n"
             "    r1.xy = floor(r3.xy);\n"
             "    r2.xy = floor(r2.xy);\n"
             "    r3.xy = r2.xy - hg_Params[5].xy;\n"
             "    r1.xy = r1.xy - hg_Params[5].xy;\n"
             "    r3.xy = r3.xy + c1.yy;\n"
             "    r3.xy = r3.xy*hg_Params[6].xy;\n"
             "    r1.xy = r1.xy + c1.yy;\n"
             "    r1.xy = r1.xy*hg_Params[6].xy;\n"
             "    r3.xy = fmin(r3.xy, hg_Params[7].zw);\n"
             "    r1.xy = fmin(r1.xy, hg_Params[7].zw);\n"
             "    r3.xy = fmax(r3.xy, hg_Params[7].xy);\n"
             "    r4.xy = r3.xy + hg_Params[8].xy;\n"
             "    r4.xy = r4.xy*hg_Params[8].zw;\n"
             "    r4 = hg_Texture0.sample(hg_Sampler0, r4.xy);\n"
             "    r1.xy = fmax(r1.xy, hg_Params[7].xy);\n"
             "    r2.xy = r1.xy + hg_Params[8].xy;\n"
             "    r2.xy = r2.xy*hg_Params[8].zw;\n"
             "    r2 = hg_Texture0.sample(hg_Sampler0, r2.xy);\n"
             "    r1.y = r0.z*hg_Params[2].x + r1.z;\n"
             "    r1.xz = r5.zw*hg_Params[2].xx + r3.zw;\n"
             "    r1.xy = floor(r1.xy);\n"
             "    r1.xy = r1.xy - hg_Params[5].xy;\n"
             "    r1.xy = r1.xy + c1.yy;\n"
             "    r1.xy = r1.xy*hg_Params[6].xy;\n"
             "    r1.xy = fmin(r1.xy, hg_Params[7].zw);\n"
             "    r1.w = r0.w*hg_Params[2].x + r1.w;\n"
             "    r1.zw = floor(r1.zw);\n"
             "    r1.zw = r1.zw - hg_Params[5].xy;\n"
             "    r1.zw = r1.zw + c1.yy;\n"
             "    r5.xy = r1.zw*hg_Params[6].xy;\n"
             "    r5.xy = fmin(r5.xy, hg_Params[7].zw);\n"
             "    r2 = r2 + r4;\n"
             "    r1.xy = fmax(r1.xy, hg_Params[7].xy);\n"
             "    r1.xy = r1.xy + hg_Params[8].xy;\n"
             "    r1.xy = r1.xy*hg_Params[8].zw;\n"
             "    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n"
             "    r5.xy = fmax(r5.xy, hg_Params[7].xy);\n"
             "    r5.xy = r5.xy + hg_Params[8].xy;\n"
             "    r5.xy = r5.xy*hg_Params[8].zw;\n"
             "    r5 = hg_Texture0.sample(hg_Sampler0, r5.xy);\n"
             "    r1 = r2 + r1;\n"
             "    r1 = r1 + r5;\n"
             "    output.color0 = r1*c2.zzzz;\n"
             "    return output;\n"
             "}\n"
             "//MD5=59327816:e3c49bf6:e84bc72b:d9fb3ed4\n"
             "//SIG=00000000:00000000:00000000:00000000:0003:0009:0006:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000f1a\n"
           "#ifndef GL_ES\n"
           "#define lowp\n"
           "#define mediump\n"
           "#define highp\n"
           "#endif\n"
           "#define defaultp mediump\n"
           "uniform defaultp sampler2D hg_Texture0;\n"
           "uniform highp vec4 hg_ProgramLocal0;\n"
           "uniform highp vec4 hg_ProgramLocal1;\n"
           "uniform highp vec4 hg_ProgramLocal2;\n"
           "uniform highp vec4 hg_ProgramLocal3;\n"
           "uniform highp vec4 hg_ProgramLocal4;\n"
           "uniform highp vec4 hg_ProgramLocal5;\n"
           "uniform highp vec4 hg_ProgramLocal6;\n"
           "uniform highp vec4 hg_ProgramLocal7;\n"
           "uniform highp vec4 hg_ProgramLocal8;\n"
           "varying highp vec4 hg_TexCoord0;\n"
           "void main()\n"
           "{\n"
           "    const highp vec4 c0 = vec4(1.732100010, 2.000000000, 0.3333333433, 0.6666666865);\n"
           "    const highp vec4 c1 = vec4(3.000000000, 0.5000000000, 0.9990000129, 1.000000000);\n"
           "    const highp vec4 c2 = vec4(-1.500000000, 0.8659999967, 0.2500000000, 0.000000000);\n"
           "    highp vec4 r0, r1, r2, r3, r4, r5;\n"
           "\n"
           "    r0.xy = hg_TexCoord0.xy + hg_ProgramLocal5.xy;\n"
           "    r1.x = r0.x*hg_ProgramLocal3.x + hg_ProgramLocal3.z;\n"
           "    r1.yw = r1.xx + hg_ProgramLocal4.xx;\n"
           "    r2.z = r0.y*hg_ProgramLocal3.y + hg_ProgramLocal3.w;\n"
           "    r2.xy = r2.zz;\n"
           "    r2.zw = r2.zz + hg_ProgramLocal4.yy;\n"
           "    r1.xz = r1.xx;\n"
           "    r3 = r1*c0.xxxx + r2;\n"
           "    r1 = r1*c0.xxxx + -r2;\n"
           "    r2 = r2 + r2;\n"
           "    r2 = floor(r2);\n"
           "    r3 = floor(r3);\n"
           "    r4 = -r2*c0.yyyy + r3;\n"
           "    r5 = r4*c0.zzzz + c0.wwww;\n"
           "    r5 = fract(r5);\n"
           "    r1 = floor(r1);\n"
           "    r1 = r2 + r1;\n"
           "    r5 = r5*c1.xxxx + c1.yyyy;\n"
           "    r5 = floor(r5);\n"
           "    r1 = r1 - r3;\n"
           "    r1 = r1 + r5;\n"
           "    r4 = r4 - r5;\n"
           "    r4 = r4*c0.zzzz;\n"
           "    r1 = vec4(greaterThanEqual(r1, c1.zzzz));\n"
           "    r4 = floor(r4);\n"
           "    r4 = r4*c0.yyyy + r1;\n"
           "    r4 = r2 + r4;\n"
           "    r2 = r2*c1.yyyy;\n"
           "    r4 = r4 + c1.wwww;\n"
           "    r3 = r4*hg_ProgramLocal0.xxxx;\n"
           "    r2 = r1*c2.xxxx + r2;\n"
           "    r2 = r2 + c1.wwww;\n"
           "    r2 = floor(r2);\n"
           "    r1 = r2 + r1;\n"
           "    r4 = r4*c1.yyyy;\n"
           "    r4 = fract(r4);\n"
           "    r1 = r1 - r4;\n"
           "    r3 = r3*c2.yyyy + hg_ProgramLocal1.xxxx;\n"
           "    r5 = r0.xxxx - r3;\n"
           "    r1 = r1*hg_ProgramLocal0.yyyy + hg_ProgramLocal1.yyyy;\n"
           "    r0 = r0.yyyy - r1;\n"
           "    r2.x = r5.y*hg_ProgramLocal2.x + r3.y;\n"
           "    r2.y = r0.y*hg_ProgramLocal2.x + r1.y;\n"
           "    r3.y = r0.x*hg_ProgramLocal2.x + r1.x;\n"
           "    r3.x = r5.x*hg_ProgramLocal2.x + r3.x;\n"
           "    r1.xy = floor(r3.xy);\n"
           "    r2.xy = floor(r2.xy);\n"
           "    r3.xy = r2.xy - hg_ProgramLocal5.xy;\n"
           "    r1.xy = r1.xy - hg_ProgramLocal5.xy;\n"
           "    r3.xy = r3.xy + c1.yy;\n"
           "    r3.xy = r3.xy*hg_ProgramLocal6.xy;\n"
           "    r1.xy = r1.xy + c1.yy;\n"
           "    r1.xy = r1.xy*hg_ProgramLocal6.xy;\n"
           "    r3.xy = min(r3.xy, hg_ProgramLocal7.zw);\n"
           "    r1.xy = min(r1.xy, hg_ProgramLocal7.zw);\n"
           "    r3.xy = max(r3.xy, hg_ProgramLocal7.xy);\n"
           "    r4.xy = r3.xy + hg_ProgramLocal8.xy;\n"
           "    r4.xy = r4.xy*hg_ProgramLocal8.zw;\n"
           "    r4 = texture2D(hg_Texture0, r4.xy);\n"
           "    r1.xy = max(r1.xy, hg_ProgramLocal7.xy);\n"
           "    r2.xy = r1.xy + hg_ProgramLocal8.xy;\n"
           "    r2.xy = r2.xy*hg_ProgramLocal8.zw;\n"
           "    r2 = texture2D(hg_Texture0, r2.xy);\n"
           "    r1.y = r0.z*hg_ProgramLocal2.x + r1.z;\n"
           "    r1.xz = r5.zw*hg_ProgramLocal2.xx + r3.zw;\n"
           "    r1.xy = floor(r1.xy);\n"
           "    r1.xy = r1.xy - hg_ProgramLocal5.xy;\n"
           "    r1.xy = r1.xy + c1.yy;\n"
           "    r1.xy = r1.xy*hg_ProgramLocal6.xy;\n"
           "    r1.xy = min(r1.xy, hg_ProgramLocal7.zw);\n"
           "    r1.w = r0.w*hg_ProgramLocal2.x + r1.w;\n"
           "    r1.zw = floor(r1.zw);\n"
           "    r1.zw = r1.zw - hg_ProgramLocal5.xy;\n"
           "    r1.zw = r1.zw + c1.yy;\n"
           "    r5.xy = r1.zw*hg_ProgramLocal6.xy;\n"
           "    r5.xy = min(r5.xy, hg_ProgramLocal7.zw);\n"
           "    r2 = r2 + r4;\n"
           "    r1.xy = max(r1.xy, hg_ProgramLocal7.xy);\n"
           "    r1.xy = r1.xy + hg_ProgramLocal8.xy;\n"
           "    r1.xy = r1.xy*hg_ProgramLocal8.zw;\n"
           "    r1 = texture2D(hg_Texture0, r1.xy);\n"
           "    r5.xy = max(r5.xy, hg_ProgramLocal7.xy);\n"
           "    r5.xy = r5.xy + hg_ProgramLocal8.xy;\n"
           "    r5.xy = r5.xy*hg_ProgramLocal8.zw;\n"
           "    r5 = texture2D(hg_Texture0, r5.xy);\n"
           "    r1 = r2 + r1;\n"
           "    r1 = r1 + r5;\n"
           "    gl_FragColor = r1*c2.zzzz;\n"
           "}\n"
           "//MD5=c3a3a991:cc1e86b8:4bc654a3:983f0a2e\n"
           "//SIG=00000000:00000000:00000000:00000000:0003:0009:0006:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void HgcInsectEye::InitProgramDescriptor(HgcInsectEye *this, HGProgramDescriptor *a2)
{
  HGProgramDescriptor::SetVisibleShaderWithSource( a2,  "HgcInsectEye_hgc_visible",  "//Metal1.0     \n //LEN=0000000cd4\n [[ visible ]] FragmentOut HgcInsectEye_hgc_visible(const constant float4* hg_Params, \n texture2d< float > hg_Texture0, \n sampler hg_Sampler0,\n float4 texCoord0)\n {\n const float4 c0 = float4(1.732100010, 2.000000000, 0.3333333433, 0.6666666865);\n"
    "    const float4 c1 = float4(3.000000000, 0.5000000000, 0.9990000129, 1.000000000);\n"
    "    const float4 c2 = float4(-1.500000000, 0.8659999967, 0.2500000000, 0.000000000);\n"
    "    float4 r0, r1, r2, r3, r4, r5;\n"
    "    FragmentOut output;\n"
    "\n"
    "    r0.xy = texCoord0.xy + hg_Params[5].xy;\n"
    "    r1.x = r0.x*hg_Params[3].x + hg_Params[3].z;\n"
    "    r1.yw = r1.xx + hg_Params[4].xx;\n"
    "    r2.z = r0.y*hg_Params[3].y + hg_Params[3].w;\n"
    "    r2.xy = r2.zz;\n"
    "    r2.zw = r2.zz + hg_Params[4].yy;\n"
    "    r1.xz = r1.xx;\n"
    "    r3 = r1*c0.xxxx + r2;\n"
    "    r1 = r1*c0.xxxx + -r2;\n"
    "    r2 = r2 + r2;\n"
    "    r2 = floor(r2);\n"
    "    r3 = floor(r3);\n"
    "    r4 = -r2*c0.yyyy + r3;\n"
    "    r5 = r4*c0.zzzz + c0.wwww;\n"
    "    r5 = fract(r5);\n"
    "    r1 = floor(r1);\n"
    "    r1 = r2 + r1;\n"
    "    r5 = r5*c1.xxxx + c1.yyyy;\n"
    "    r5 = floor(r5);\n"
    "    r1 = r1 - r3;\n"
    "    r1 = r1 + r5;\n"
    "    r4 = r4 - r5;\n"
    "    r4 = r4*c0.zzzz;\n"
    "    r1 = float4(r1 >= c1.zzzz);\n"
    "    r4 = floor(r4);\n"
    "    r4 = r4*c0.yyyy + r1;\n"
    "    r4 = r2 + r4;\n"
    "    r2 = r2*c1.yyyy;\n"
    "    r4 = r4 + c1.wwww;\n"
    "    r3 = r4*hg_Params[0].xxxx;\n"
    "    r2 = r1*c2.xxxx + r2;\n"
    "    r2 = r2 + c1.wwww;\n"
    "    r2 = floor(r2);\n"
    "    r1 = r2 + r1;\n"
    "    r4 = r4*c1.yyyy;\n"
    "    r4 = fract(r4);\n"
    "    r1 = r1 - r4;\n"
    "    r3 = r3*c2.yyyy + hg_Params[1].xxxx;\n"
    "    r5 = r0.xxxx - r3;\n"
    "    r1 = r1*hg_Params[0].yyyy + hg_Params[1].yyyy;\n"
    "    r0 = r0.yyyy - r1;\n"
    "    r2.x = r5.y*hg_Params[2].x + r3.y;\n"
    "    r2.y = r0.y*hg_Params[2].x + r1.y;\n"
    "    r3.y = r0.x*hg_Params[2].x + r1.x;\n"
    "    r3.x = r5.x*hg_Params[2].x + r3.x;\n"
    "    r1.xy = floor(r3.xy);\n"
    "    r2.xy = floor(r2.xy);\n"
    "    r3.xy = r2.xy - hg_Params[5].xy;\n"
    "    r1.xy = r1.xy - hg_Params[5].xy;\n"
    "    r3.xy = r3.xy + c1.yy;\n"
    "    r3.xy = r3.xy*hg_Params[6].xy;\n"
    "    r1.xy = r1.xy + c1.yy;\n"
    "    r1.xy = r1.xy*hg_Params[6].xy;\n"
    "    r3.xy = fmin(r3.xy, hg_Params[7].zw);\n"
    "    r1.xy = fmin(r1.xy, hg_Params[7].zw);\n"
    "    r3.xy = fmax(r3.xy, hg_Params[7].xy);\n"
    "    r4.xy = r3.xy + hg_Params[8].xy;\n"
    "    r4.xy = r4.xy*hg_Params[8].zw;\n"
    "    r4 = hg_Texture0.sample(hg_Sampler0, r4.xy);\n"
    "    r1.xy = fmax(r1.xy, hg_Params[7].xy);\n"
    "    r2.xy = r1.xy + hg_Params[8].xy;\n"
    "    r2.xy = r2.xy*hg_Params[8].zw;\n"
    "    r2 = hg_Texture0.sample(hg_Sampler0, r2.xy);\n"
    "    r1.y = r0.z*hg_Params[2].x + r1.z;\n"
    "    r1.xz = r5.zw*hg_Params[2].xx + r3.zw;\n"
    "    r1.xy = floor(r1.xy);\n"
    "    r1.xy = r1.xy - hg_Params[5].xy;\n"
    "    r1.xy = r1.xy + c1.yy;\n"
    "    r1.xy = r1.xy*hg_Params[6].xy;\n"
    "    r1.xy = fmin(r1.xy, hg_Params[7].zw);\n"
    "    r1.w = r0.w*hg_Params[2].x + r1.w;\n"
    "    r1.zw = floor(r1.zw);\n"
    "    r1.zw = r1.zw - hg_Params[5].xy;\n"
    "    r1.zw = r1.zw + c1.yy;\n"
    "    r5.xy = r1.zw*hg_Params[6].xy;\n"
    "    r5.xy = fmin(r5.xy, hg_Params[7].zw);\n"
    "    r2 = r2 + r4;\n"
    "    r1.xy = fmax(r1.xy, hg_Params[7].xy);\n"
    "    r1.xy = r1.xy + hg_Params[8].xy;\n"
    "    r1.xy = r1.xy*hg_Params[8].zw;\n"
    "    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n"
    "    r5.xy = fmax(r5.xy, hg_Params[7].xy);\n"
    "    r5.xy = r5.xy + hg_Params[8].xy;\n"
    "    r5.xy = r5.xy*hg_Params[8].zw;\n"
    "    r5 = hg_Texture0.sample(hg_Sampler0, r5.xy);\n"
    "    r1 = r2 + r1;\n"
    "    r1 = r1 + r5;\n"
    "    output.color0 = r1*c2.zzzz;\n"
    "    return output;\n"
    "}\n");
  HGProgramDescriptor::SetFragmentFunctionName(a2, "HgcInsectEye");
}

void sub_25FAAE83C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAAE9BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAAEA0C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAAEA04);
}

uint64_t HgcInsectEye::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 8, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcInsectEye::Bind(HgcInsectEye *this, HGHandler *a2)
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

uint64_t HgcInsectEye::RenderTile(HgcInsectEye *this, HGTile *a2)
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
      if (v10 >= 1)
      {
        v15 = 0;
        v16 = v14;
        do
        {
          v17 = *(this + 51);
          v19 = *(v17 + 64);
          v18 = *(v17 + 80);
          v20 = vaddq_f32(v16, v18);
          v21 = *(v17 + 32);
          v22 = *(v17 + 48);
          v23 = vaddq_f32(vmulq_f32(v20, v22), vextq_s8(v22, v22, 8uLL));
          v24 = vdupq_laneq_s32(v22, 3);
          v25 = vdupq_lane_s32(*v20.f32, 1);
          *v26.f32 = vdup_lane_s32(vadd_f32(*&vextq_s8(v24, v24, 8uLL), vmul_lane_f32(*&vextq_s8(v25, v25, 8uLL), *v22.f32, 1)), 0);
          *&v26.u32[2] = vadd_f32(vdup_lane_s32(*v19.f32, 1), *v26.f32);
          v27 = *(v17 + 144);
          v28 = vbslq_s8(*(v17 + 128), v23, vdupq_lane_s32(*&vaddq_f32(v19, v23), 0));
          v29 = vbslq_s8(v27, vdupq_lane_s64(v28.i64[0], 0), v28);
          v31 = *(v17 + 160);
          v30 = *(v17 + 176);
          v32 = vmulq_lane_f32(v29, *v31.f32, 1);
          v33 = vaddq_f32(v26, v32);
          v34 = vsubq_f32(v32, v26);
          v35 = vaddq_f32(v26, v26);
          v36 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
          v37 = vsubq_f32(v36, vandq_s8(v30, vcgtq_f32(v36, v35)));
          v38 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
          v39 = vsubq_f32(v38, vandq_s8(v30, vcgtq_f32(v38, v33)));
          v40 = vsubq_f32(v39, vmulq_n_f32(v37, v31.f32[0]));
          v41 = *(v17 + 208);
          v42 = vaddq_f32(*(v17 + 192), vmulq_f32(v41, v40));
          v43 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
          v44 = vsubq_f32(v42, vsubq_f32(v43, vandq_s8(v30, vcgtq_f32(v43, v42))));
          v45 = vcvtq_f32_s32(vcvtq_s32_f32(v34));
          v46 = vaddq_f32(v37, vsubq_f32(v45, vandq_s8(v30, vcgtq_f32(v45, v34))));
          v47 = *(v17 + 224);
          v48 = vaddq_f32(v47, vmulq_f32(*(v17 + 240), v44));
          v49 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
          v50 = vsubq_f32(v49, vandq_s8(v30, vcgtq_f32(v49, v48)));
          v51 = vaddq_f32(vsubq_f32(v46, v39), v50);
          v52 = vmulq_f32(v41, vsubq_f32(v40, v50));
          v53 = *(v17 + 272);
          v54 = vandq_s8(v30, vcgeq_f32(v51, *(v17 + 256)));
          v55 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
          v56 = vaddq_f32(v30, vaddq_f32(v37, vaddq_f32(v54, vmulq_n_f32(vsubq_f32(v55, vandq_s8(v30, vcgtq_f32(v55, v52))), v31.f32[0]))));
          v57 = *(v17 + 16);
          v58 = vaddq_f32(v30, vaddq_f32(vmulq_f32(v37, v47), vmulq_laneq_f32(v54, v31, 2)));
          v59 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
          v60 = vaddq_f32(v54, vsubq_f32(v59, vandq_s8(v30, vcgtq_f32(v59, v58))));
          v61 = vmulq_f32(v47, v56);
          v62 = vcvtq_f32_s32(vcvtq_s32_f32(v61));
          v63 = vaddq_f32(v60, vsubq_f32(vsubq_f32(v62, vandq_s8(v30, vcgtq_f32(v62, v61))), v61));
          v64 = vaddq_f32(vdupq_lane_s32(*&v57, 0), vmulq_n_f32(vmulq_n_f32(v56, COERCE_FLOAT(*v17)), *v53.i32));
          v65 = vsubq_f32(vdupq_lane_s32(*v20.f32, 0), v64);
          v66 = vaddq_f32(vdupq_lane_s32(*&v57, 1), vmulq_lane_f32(v63, *v17, 1));
          v67 = vsubq_f32(v25, v66);
          v68 = vmulq_n_f32(v67, v21.f32[0]);
          v69 = vbslq_s8(*(v17 + 128), vaddq_f32(vrev64q_s32(v64), vmulq_lane_f32(v21, *v65.f32, 1)), vaddq_f32(v66, v68));
          v70 = vrev64q_s32(v21);
          v71 = *(v17 + 304);
          v72 = vbslq_s8(*(v17 + 288), vaddq_f32(vrev64q_s32(v66), vmulq_n_f32(v70, v67.f32[0])), v64);
          v73 = vbslq_s8(*(v17 + 128), vaddq_f32(vmulq_f32(v21, v65), v72), v72);
          v74 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
          v75 = vextq_s8(v66, v66, 8uLL).u64[0];
          v76 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
          v77 = vsubq_f32(vsubq_f32(v76, vbslq_s8(vcgtq_f32(v76, v69), v30, 0)), v18);
          v78 = vsubq_f32(vsubq_f32(v74, vbslq_s8(vcgtq_f32(v74, v73), v30, 0)), v18);
          v79 = vaddq_f32(v71, v77);
          v81 = *(v17 + 96);
          v80 = *(v17 + 112);
          v79.i64[0] = vmulq_f32(v81, v79).u64[0];
          v79.i64[1] = v73.i64[1];
          v82.i64[0] = vmulq_f32(v81, vaddq_f32(v71, v78)).u64[0];
          v82.i64[1] = v66.i64[1];
          v83 = vextq_s8(v80, v80, 8uLL);
          v84.i64[0] = vminq_f32(v79, v83).u64[0];
          v84.i64[1] = v73.i64[1];
          v85 = vminq_f32(v82, v83).u64[0];
          v86 = vmaxq_f32(v84, v80);
          v66.i64[0] = v86.i64[0];
          v66.i64[1] = v73.i64[1];
          v87 = *(a2 + 22);
          v88 = vsubq_f32(v66, v9);
          v89 = *(a2 + 10);
          if (v5)
          {
            v90 = vaddq_s32(vcvtq_s32_f32(v88), vcltzq_f32(v88));
            v91 = vsubq_f32(v88, vcvtq_f32_s32(v90)).u64[0];
            *v92.f32 = vmax_f32(v85, *v80.f32);
            v92.i64[1] = v75;
            v93 = vsubq_f32(v92, v9);
            v94 = vaddq_s32(vcvtq_s32_f32(v93), vcltzq_f32(v93));
            v93.i64[0] = vsubq_f32(v93, vcvtq_f32_s32(v94)).u64[0];
            *v90.i8 = vmla_s32(vzip1_s32(*v90.i8, *v94.i8), vzip2_s32(*v90.i8, *v94.i8), vdup_n_s32(v87));
            v95 = v90.i32[1];
            v96 = (v89 + 16 * v90.i32[0]);
            v97 = vaddq_f32(*v96, vmulq_n_f32(vsubq_f32(v96[1], *v96), v91.f32[0]));
            v98 = vaddq_f32(v97, vmulq_lane_f32(vsubq_f32(vaddq_f32(v96[v87], vmulq_n_f32(vsubq_f32(v96[v87 + 1], v96[v87]), v91.f32[0])), v97), v91, 1));
            v99 = (v89 + 16 * v95);
            v100 = vaddq_f32(*v99, vmulq_n_f32(vsubq_f32(v99[1], *v99), v93.f32[0]));
            v101 = vaddq_f32(v100, vmulq_lane_f32(vsubq_f32(vaddq_f32(v99[v87], vmulq_n_f32(vsubq_f32(v99[v87 + 1], v99[v87]), v93.f32[0])), v100), *v93.f32, 1));
          }

          else
          {
            v102 = vaddq_f32(v88, v13);
            v103 = vcvtq_s32_f32(v102);
            *v92.f32 = vmax_f32(v85, *v80.f32);
            v92.i64[1] = v75;
            v104 = vaddq_f32(vsubq_f32(v92, v9), v13);
            v105 = vcvtq_s32_f32(v104);
            *v104.f32 = vadd_s32(*v105.i8, *&vcgtq_f32(vcvtq_f32_s32(v105), v104));
            *v102.f32 = vadd_s32(*v103.i8, *&vcgtq_f32(vcvtq_f32_s32(v103), v102));
            *v102.f32 = vmla_s32(vzip1_s32(*v102.f32, *v104.f32), vzip2_s32(*v102.f32, *v104.f32), vdup_n_s32(v87));
            v106 = v102.i32[1];
            v98 = *(v89 + 16 * v102.i32[0]);
            v101 = *(v89 + 16 * v106);
          }

          *v107.i8 = vadd_f32(vmul_laneq_f32(*v70.f32, v67, 2), *&vextq_s8(v92, v9, 4uLL));
          v107.i64[1] = v75;
          v108.i64[0] = v65.u32[2];
          v108.i64[1] = v65.u32[3];
          v109 = vorrq_s8(vandq_s8(v107, vmvnq_s8(v27)), vandq_s8(v27, vaddq_f32(vmulq_n_f32(v108, v21.f32[0]), vzip1q_s32(vextq_s8(v73, v73, 8uLL), v86))));
          v110 = vcvtq_f32_s32(vcvtq_s32_f32(v109));
          v111.i64[0] = vmulq_f32(v81, vaddq_f32(v71, vsubq_f32(vsubq_f32(v110, vbslq_s8(vcgtq_f32(v110, v109), v30, 0)), v18))).u64[0];
          v111.i64[1] = v109.i64[1];
          v111.i64[0] = vminq_f32(v111, v83).u64[0];
          v111.i64[1] = v109.i64[1];
          v112 = vbslq_s8(*(v17 + 320), vaddq_f32(v68, v111), v111);
          v113 = vcvtq_f32_s32(vcvtq_s32_f32(v112));
          v114 = vaddq_f32(*(v17 + 336), vsubq_f32(vsubq_f32(v113, vbslq_s8(vcgtq_f32(v113, v112), v53, 0)), vdupq_lane_s64(v18.i64[0], 0)));
          v115 = vextq_s8(v114, v112, 8uLL);
          v112.i64[1] = v114.i64[1];
          v116 = vminq_f32(vmulq_f32(v81, v115), v83);
          v117 = vsubq_f32(vmaxq_f32(v112, v80), v9);
          if (v5)
          {
            v118 = vaddq_s32(vcvtq_s32_f32(v117), vcltzq_f32(v117));
            v119 = vsubq_f32(v117, vcvtq_f32_s32(v118)).u64[0];
            v120 = vsubq_f32(vmaxq_f32(v116, v80), v9);
            v121 = vaddq_s32(vcvtq_s32_f32(v120), vcltzq_f32(v120));
            v122 = vsubq_f32(v120, vcvtq_f32_s32(v121)).u64[0];
            *v118.i8 = vmla_s32(vzip1_s32(*v118.i8, *v121.i8), vzip2_s32(*v118.i8, *v121.i8), vdup_n_s32(v87));
            v123 = (v89 + 16 * v118.i32[0]);
            v124 = vaddq_f32(*v123, vmulq_n_f32(vsubq_f32(v123[1], *v123), v119.f32[0]));
            v125 = vaddq_f32(v124, vmulq_lane_f32(vsubq_f32(vaddq_f32(v123[v87], vmulq_n_f32(vsubq_f32(v123[v87 + 1], v123[v87]), v119.f32[0])), v124), v119, 1));
            v126 = (v89 + 16 * v118.i32[1]);
            v127 = vaddq_f32(*v126, vmulq_n_f32(vsubq_f32(v126[1], *v126), v122.f32[0]));
            v128 = vaddq_f32(v127, vmulq_lane_f32(vsubq_f32(vaddq_f32(v126[v87], vmulq_n_f32(vsubq_f32(v126[v87 + 1], v126[v87]), v122.f32[0])), v127), v122, 1));
          }

          else
          {
            v129 = vaddq_f32(v117, v13);
            v130 = vcvtq_s32_f32(v129);
            v131 = vaddq_f32(vsubq_f32(vmaxq_f32(v116, v80), v9), v13);
            v132 = vcvtq_s32_f32(v131);
            *v129.f32 = vadd_s32(*v130.i8, *&vcgtq_f32(vcvtq_f32_s32(v130), v129));
            *v131.f32 = vadd_s32(*v132.i8, *&vcgtq_f32(vcvtq_f32_s32(v132), v131));
            *v131.f32 = vmla_s32(vzip1_s32(*v129.f32, *v131.f32), vzip2_s32(*v129.f32, *v131.f32), vdup_n_s32(v87));
            v133 = v131.i32[1];
            v125 = *(v89 + 16 * v131.i32[0]);
            v128 = *(v89 + 16 * v133);
          }

          *(v11 + v15) = vmulq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v98, v101), v125), v128), *(v17 + 352));
          v16 = vaddq_f32(v16, xmmword_2603429B0);
          v15 += 16;
        }

        while (16 * v10 != v15);
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      ++v8;
      v11 += v12;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcInsectEye::GetDOD(HgcInsectEye *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcInsectEye::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcInsectEye::HgcInsectEye(HgcInsectEye *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E9528;
  operator new();
}

void HgcInsectEye::~HgcInsectEye(HGNode *this)
{
  *this = &unk_2871E9528;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcInsectEye::~HgcInsectEye(this);

  HGObject::operator delete(v1);
}

uint64_t HgcInsectEye::SetParameter(HgcInsectEye *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 7)
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

uint64_t HgcInsectEye::GetParameter(HgcInsectEye *this, unsigned int a2, float *a3)
{
  if (a2 > 7)
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

const char *HgcAlphaKeyer::GetProgram(HgcAlphaKeyer *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000736\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, 255.0000000, 0.5000000000, 512.0000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r1.x = fmax(r0.x, c0.x);\n    r1.x = fmin(r1.x, half(hg_Params[3].x));\n    r1.x = r1.x*c0.y + c0.z;\n    r1.y = c0.z;\n    r2.xy = r1.xy + half2(hg_Params[5].xy);\n    r2.xy = r2.xy*half2(hg_Params[5].zw);\n    r2.xz = clamp((half2) hg_Texture2.sample(hg_Sampler2, float2(r2.xy)).xz, 0.00000h, 1.00000h);\n    r3.yz = half2(hg_Params[0].yz)*r2.zz + r0.yz;\n    r3.yz = r3.yz*c0.ww;\n    r3.yz = fmin(r3.yz, half2(hg_Params[4].yz));\n    r3.yz = fmax(r3.yz, -half2(hg_Params[4].yz));\n    r3.xy = r3.yz + half2(hg_Params[6].xy);\n    r3.xy = r3.xy*half2(hg_Params[6].zw);\n    r3.y = (half) hg_Texture1.sample(hg_Sampler1, float2(r3.xy)).y;\n    r3.x = clamp(r3.y, 0.00000h, 1.00000h);\n    r3.y = c0.z;\n    r3.x = r3.x*c0.y + c0.z;\n    r3.xy = r3.xy + half2(hg_Params[5].xy);\n    r3.xy = r3.xy*half2(hg_Params[5].zw);\n    r3.y = (half) hg_Texture2.sample(hg_Sampler2, float2(r3.xy)).y;\n    r3.x = r3.y*r2.x;\n    output.color0.xyz = float3(r0.xyz);\n    output.color0.w = clamp(float(r3.x)*hg_Params[2].w + hg_Params[1].w, 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=365ad5a4:2d70eae9:2a4a3903:d6200a4c\n//SIG=00400000:00000001:00000001:00000007:0001:0007:0004:0000:0000:0000:0002:0000:0001:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000006ae\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, 255.0000000, 0.5000000000, 512.0000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xyz;\n    r1.x = fmax(r0.x, c0.x);\n    r1.x = fmin(r1.x, hg_Params[3].x);\n    r1.x = r1.x*c0.y + c0.z;\n    r1.y = c0.z;\n    r1.xy = r1.xy + hg_Params[5].xy;\n    r1.xy = r1.xy*hg_Params[5].zw;\n    r1.xz = clamp(hg_Texture2.sample(hg_Sampler2, r1.xy).xz, 0.00000f, 1.00000f);\n    r2.yz = hg_Params[0].yz*r1.zz + r0.yz;\n    r2.yz = r2.yz*c0.ww;\n    r2.yz = fmin(r2.yz, hg_Params[4].yz);\n    r2.yz = fmax(r2.yz, -hg_Params[4].yz);\n    r2.xy = r2.yz + hg_Params[6].xy;\n    r2.xy = r2.xy*hg_Params[6].zw;\n    r2.y = hg_Texture1.sample(hg_Sampler1, r2.xy).y;\n    r2.x = clamp(r2.y, 0.00000f, 1.00000f);\n    r2.y = c0.z;\n    r2.x = r2.x*c0.y + c0.z;\n    r2.xy = r2.xy + hg_Params[5].xy;\n    r2.xy = r2.xy*hg_Params[5].zw;\n    r2.y = hg_Texture2.sample(hg_Sampler2, r2.xy).y;\n    r2.x = r2.y*r1.x;\n    output.color0.xyz = r0.xyz;\n    output.color0.w = clamp(r2.x*hg_Params[2].w + hg_Params[1].w, 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=3bba7fab:8b2bf066:7d4960ed:1e72d98b\n//SIG=00000000:00000001:00000001:00000000:0001:0007:0003:0000:0000:0000:0002:0000:0001:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000708\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nuniform mediump vec4 hg_ProgramLocal5;\nuniform mediump vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 255.0000000, 0.5000000000, 512.0000000);\n    mediump vec4 r0, r1, r2;\n\n    r0.xyz = texture2D(hg_Texture0, hg_TexCoord0.xy).xyz;\n    r1.x = max(r0.x, c0.x);\n    r1.x = min(r1.x, hg_ProgramLocal3.x);\n    r1.x = r1.x*c0.y + c0.z;\n    r1.y = c0.z;\n    r1.xy = r1.xy + hg_ProgramLocal5.xy;\n    r1.xy = r1.xy*hg_ProgramLocal5.zw;\n    r1.xz = clamp(texture2D(hg_Texture2, r1.xy).xz, vec2(0.00000), vec2(1.00000));\n    r2.yz = hg_ProgramLocal0.yz*r1.zz + r0.yz;\n    r2.yz = r2.yz*c0.ww;\n    r2.yz = min(r2.yz, hg_ProgramLocal4.yz);\n    r2.yz = max(r2.yz, -hg_ProgramLocal4.yz);\n    r2.xy = r2.yz + hg_ProgramLocal6.xy;\n    r2.xy = r2.xy*hg_ProgramLocal6.zw;\n    r2.y = texture2D(hg_Texture1, r2.xy).y;\n    r2.x = clamp(r2.y, 0.00000, 1.00000);\n    r2.y = c0.z;\n    r2.x = r2.x*c0.y + c0.z;\n    r2.xy = r2.xy + hg_ProgramLocal5.xy;\n    r2.xy = r2.xy*hg_ProgramLocal5.zw;\n    r2.y = texture2D(hg_Texture2, r2.xy).y;\n    r2.x = r2.y*r1.x;\n    gl_FragColor.xyz = r0.xyz;\n    gl_FragColor.w = clamp(r2.x*hg_ProgramLocal2.w + hg_ProgramLocal1.w, 0.00000, 1.00000);\n}\n//MD5=8bfb139e:c9783c82:edcf70dc:02dc9b7b\n//SIG=00000000:00000001:00000001:00000000:0001:0007:0003:0000:0000:0000:0000:0000:0001:03:0:1:0\n";
  }
}

void sub_25FAAF8DC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

  HGProgramDescriptor::SetArgumentBindings(v31, v37);
  v33 = v37;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&v33);
}

void sub_25FAAFADC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAAFB3C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAAFB34);
}

uint64_t HgcAlphaKeyer::BindTexture(HgcAlphaKeyer *this, HGHandler *a2, int a3)
{
  if (a3 == 2)
  {
    v12 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    v9.n128_f32[0] = *(a2 + 60);
    v10.n128_f32[0] = *(a2 + 61);
    if (v12)
    {
      v11 = *(*a2 + 136);
      v7.n128_u32[0] = 1.0;
      v8.n128_u32[0] = 1.0;
    }

    else
    {
      v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v11 = *(*a2 + 136);
      v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v13 = a2;
    v14 = 5;
    goto LABEL_15;
  }

  if (a3 == 1)
  {
    v6 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    v9.n128_f32[0] = *(a2 + 60);
    v10.n128_f32[0] = *(a2 + 61);
    if (v6)
    {
      v11 = *(*a2 + 136);
      v7.n128_u32[0] = 1.0;
      v8.n128_u32[0] = 1.0;
    }

    else
    {
      v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
      v11 = *(*a2 + 136);
      v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
    }

    v13 = a2;
    v14 = 6;
LABEL_15:
    v11(v13, v14, v9, v10, v7, v8);
    return 0;
  }

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
  return 0;
}

uint64_t HgcAlphaKeyer::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a2 + 144))(a2, 4, a1[51] + 64, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcAlphaKeyer::RenderTile(HgcAlphaKeyer *this, HGTile *a2)
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
    v13 = 16 * *(a2 + 22);
    v14 = 16 * *(a2 + 6);
    v15.i64[0] = 0x3F0000003F000000;
    v15.i64[1] = 0x3F0000003F000000;
    do
    {
      if (v10 < 4)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = 32;
        for (i = v10; i > 3; i -= 4)
        {
          v19 = *(v12 + v17 - 32);
          v20 = *(v12 + v17 - 16);
          v21 = *(v12 + v17);
          v22 = *(v12 + v17 + 16);
          v23 = *(this + 51);
          v25 = *(v23 + 80);
          v24 = *(v23 + 96);
          v26 = *(v23 + 48);
          v27 = *(v23 + 112);
          v28 = vaddq_f32(v24, vmulq_f32(vminq_f32(vmaxq_f32(v19, v25), v26), v27));
          v29 = vaddq_f32(v24, vmulq_f32(vminq_f32(vmaxq_f32(v20, v25), v26), v27));
          v30 = vaddq_f32(v24, vmulq_f32(vminq_f32(vmaxq_f32(v21, v25), v26), v27));
          v28.i32[1] = 0.5;
          v29.i32[1] = 0.5;
          v30.i32[1] = 0.5;
          v31 = vaddq_f32(v24, vmulq_f32(vminq_f32(vmaxq_f32(v22, v25), v26), v27));
          v31.i32[1] = 0.5;
          v32 = *(a2 + 30);
          v33 = vsubq_f32(v28, v9);
          v34 = *(a2 + 14);
          if (v5)
          {
            v35 = vaddq_s32(vcvtq_s32_f32(v33), vcltzq_f32(v33));
            v36 = vsubq_f32(v33, vcvtq_f32_s32(v35)).u64[0];
            v37 = vsubq_f32(v29, v9);
            v38 = vaddq_s32(vcvtq_s32_f32(v37), vcltzq_f32(v37));
            v39 = vsubq_f32(v37, vcvtq_f32_s32(v38)).u64[0];
            v40 = vdup_n_s32(v32);
            *v35.i8 = vmla_s32(vzip1_s32(*v35.i8, *v38.i8), vzip2_s32(*v35.i8, *v38.i8), v40);
            v41 = (v34 + 16 * v35.i32[0]);
            v42 = vaddq_f32(*v41, vmulq_n_f32(vsubq_f32(v41[1], *v41), v36.f32[0]));
            v43 = vaddq_f32(v42, vmulq_lane_f32(vsubq_f32(vaddq_f32(v41[v32], vmulq_n_f32(vsubq_f32(v41[v32 + 1], v41[v32]), v36.f32[0])), v42), v36, 1));
            v44 = (v34 + 16 * v35.i32[1]);
            v45 = vaddq_f32(*v44, vmulq_n_f32(vsubq_f32(v44[1], *v44), v39.f32[0]));
            v46 = vaddq_f32(v45, vmulq_lane_f32(vsubq_f32(vaddq_f32(v44[v32], vmulq_n_f32(vsubq_f32(v44[v32 + 1], v44[v32]), v39.f32[0])), v45), v39, 1));
            v47 = vsubq_f32(v30, v9);
            v48 = vaddq_s32(vcvtq_s32_f32(v47), vcltzq_f32(v47));
            v47.i64[0] = vsubq_f32(v47, vcvtq_f32_s32(v48)).u64[0];
            v49 = vsubq_f32(v31, v9);
            v50 = vaddq_s32(vcvtq_s32_f32(v49), vcltzq_f32(v49));
            *v48.i8 = vmla_s32(vzip1_s32(*v48.i8, *v50.i8), vzip2_s32(*v48.i8, *v50.i8), v40);
            v51 = (v34 + 16 * v48.i32[0]);
            v50.i64[0] = vsubq_f32(v49, vcvtq_f32_s32(v50)).u64[0];
            v52 = vaddq_f32(*v51, vmulq_n_f32(vsubq_f32(v51[1], *v51), v47.f32[0]));
            v53 = vaddq_f32(v52, vmulq_lane_f32(vsubq_f32(vaddq_f32(v51[v32], vmulq_n_f32(vsubq_f32(v51[v32 + 1], v51[v32]), v47.f32[0])), v52), *v47.f32, 1));
            v54 = (v34 + 16 * v48.i32[1]);
            v55 = vaddq_f32(*v54, vmulq_n_f32(vsubq_f32(v54[1], *v54), *v50.i32));
            v56 = vaddq_f32(v55, vmulq_lane_f32(vsubq_f32(vaddq_f32(v54[v32], vmulq_n_f32(vsubq_f32(v54[v32 + 1], v54[v32]), *v50.i32)), v55), *v50.i8, 1));
          }

          else
          {
            v57 = vaddq_f32(v33, v15);
            v58 = vcvtq_s32_f32(v57);
            v59 = vaddq_f32(vsubq_f32(v29, v9), v15);
            v60 = vcvtq_s32_f32(v59);
            *v57.f32 = vadd_s32(*v58.i8, *&vcgtq_f32(vcvtq_f32_s32(v58), v57));
            *v59.f32 = vadd_s32(*v60.i8, *&vcgtq_f32(vcvtq_f32_s32(v60), v59));
            *v60.i8 = vdup_n_s32(v32);
            *v59.f32 = vmla_s32(vzip1_s32(*v57.f32, *v59.f32), vzip2_s32(*v57.f32, *v59.f32), *v60.i8);
            v61 = v59.i32[1];
            v43 = *(v34 + 16 * v59.i32[0]);
            v46 = *(v34 + 16 * v61);
            v62 = vaddq_f32(vsubq_f32(v30, v9), v15);
            v63 = vcvtq_s32_f32(v62);
            v64 = vaddq_f32(vsubq_f32(v31, v9), v15);
            v65 = vcvtq_s32_f32(v64);
            *v64.f32 = vadd_s32(*v65.i8, *&vcgtq_f32(vcvtq_f32_s32(v65), v64));
            *v62.f32 = vadd_s32(*v63.i8, *&vcgtq_f32(vcvtq_f32_s32(v63), v62));
            *v64.f32 = vmla_s32(vzip1_s32(*v62.f32, *v64.f32), vzip2_s32(*v62.f32, *v64.f32), *v60.i8);
            v66 = v64.i32[1];
            v53 = *(v34 + 16 * v64.i32[0]);
            v56 = *(v34 + 16 * v66);
          }

          v67 = vmaxq_f32(v43, v25);
          v68 = vmaxq_f32(v53, v25);
          v69 = vmaxq_f32(v56, v25);
          v70 = *(v23 + 128);
          v71 = vminq_f32(v67, v70);
          v72 = vminq_f32(vmaxq_f32(v46, v25), v70);
          v73 = vminq_f32(v68, v70);
          v74 = vminq_f32(v69, v70);
          v75 = *(v23 + 64);
          v76 = vminq_f32(vmulq_f32(v27, vaddq_f32(v19, vmulq_laneq_f32(*v23, v71, 2))), v75);
          v77 = vminq_f32(vmulq_f32(v27, vaddq_f32(v20, vmulq_laneq_f32(*v23, v72, 2))), v75);
          v78 = vminq_f32(vmulq_f32(v27, vaddq_f32(v21, vmulq_laneq_f32(*v23, v73, 2))), v75);
          v79 = vminq_f32(vmulq_f32(v27, vaddq_f32(v22, vmulq_laneq_f32(*v23, v74, 2))), v75);
          v80 = vnegq_f32(v75);
          v81 = vmaxq_f32(v76, v80);
          v82 = vmaxq_f32(v77, v80);
          v83 = vmaxq_f32(v78, v80);
          v84 = vmaxq_f32(v79, v80);
          v85 = vextq_s8(v81, v81, 4uLL);
          v86 = vextq_s8(v82, v82, 4uLL);
          v87 = vextq_s8(v83, v83, 4uLL);
          v88 = vextq_s8(v84, v84, 4uLL);
          v89 = *(a2 + 26);
          v90 = vsubq_f32(v85, v9);
          v91 = *(a2 + 12);
          if (v5)
          {
            v92 = vaddq_s32(vcvtq_s32_f32(v90), vcltzq_f32(v90));
            v93 = vsubq_f32(v90, vcvtq_f32_s32(v92)).u64[0];
            v94 = vsubq_f32(v86, v9);
            v95 = vaddq_s32(vcvtq_s32_f32(v94), vcltzq_f32(v94));
            v96 = vsubq_f32(v94, vcvtq_f32_s32(v95)).u64[0];
            v97 = vdup_n_s32(v89);
            *v92.i8 = vmla_s32(vzip1_s32(*v92.i8, *v95.i8), vzip2_s32(*v92.i8, *v95.i8), v97);
            v98 = (v91 + 16 * v92.i32[0]);
            v99 = vaddq_f32(*v98, vmulq_n_f32(vsubq_f32(v98[1], *v98), v93.f32[0]));
            v100 = vaddq_f32(v99, vmulq_lane_f32(vsubq_f32(vaddq_f32(v98[v89], vmulq_n_f32(vsubq_f32(v98[v89 + 1], v98[v89]), v93.f32[0])), v99), v93, 1));
            v101 = (v91 + 16 * v92.i32[1]);
            v102 = vaddq_f32(*v101, vmulq_n_f32(vsubq_f32(v101[1], *v101), v96.f32[0]));
            v103 = vaddq_f32(v102, vmulq_lane_f32(vsubq_f32(vaddq_f32(v101[v89], vmulq_n_f32(vsubq_f32(v101[v89 + 1], v101[v89]), v96.f32[0])), v102), v96, 1));
            v104 = vsubq_f32(v87, v9);
            v105 = vaddq_s32(vcvtq_s32_f32(v104), vcltzq_f32(v104));
            v104.i64[0] = vsubq_f32(v104, vcvtq_f32_s32(v105)).u64[0];
            v106 = vsubq_f32(v88, v9);
            v107 = vaddq_s32(vcvtq_s32_f32(v106), vcltzq_f32(v106));
            *v105.i8 = vmla_s32(vzip1_s32(*v105.i8, *v107.i8), vzip2_s32(*v105.i8, *v107.i8), v97);
            v108 = (v91 + 16 * v105.i32[0]);
            v107.i64[0] = vsubq_f32(v106, vcvtq_f32_s32(v107)).u64[0];
            v109 = vaddq_f32(*v108, vmulq_n_f32(vsubq_f32(v108[1], *v108), v104.f32[0]));
            v110 = vaddq_f32(v109, vmulq_lane_f32(vsubq_f32(vaddq_f32(v108[v89], vmulq_n_f32(vsubq_f32(v108[v89 + 1], v108[v89]), v104.f32[0])), v109), *v104.f32, 1));
            v111 = (v91 + 16 * v105.i32[1]);
            v112 = vaddq_f32(*v111, vmulq_n_f32(vsubq_f32(v111[1], *v111), *v107.i32));
            v113 = vaddq_f32(v112, vmulq_lane_f32(vsubq_f32(vaddq_f32(v111[v89], vmulq_n_f32(vsubq_f32(v111[v89 + 1], v111[v89]), *v107.i32)), v112), *v107.i8, 1));
          }

          else
          {
            v114 = vaddq_f32(v90, v15);
            v115 = vcvtq_s32_f32(v114);
            v116 = vaddq_f32(vsubq_f32(v86, v9), v15);
            v117 = vcvtq_s32_f32(v116);
            *v114.f32 = vadd_s32(*v115.i8, *&vcgtq_f32(vcvtq_f32_s32(v115), v114));
            *v116.f32 = vadd_s32(*v117.i8, *&vcgtq_f32(vcvtq_f32_s32(v117), v116));
            *v117.i8 = vdup_n_s32(v89);
            *v116.f32 = vmla_s32(vzip1_s32(*v114.f32, *v116.f32), vzip2_s32(*v114.f32, *v116.f32), *v117.i8);
            v118 = v116.i32[1];
            v100 = *(v91 + 16 * v116.i32[0]);
            v103 = *(v91 + 16 * v118);
            v119 = vaddq_f32(vsubq_f32(v87, v9), v15);
            v120 = vcvtq_s32_f32(v119);
            v121 = vaddq_f32(vsubq_f32(v88, v9), v15);
            v122 = vcvtq_s32_f32(v121);
            *v121.f32 = vadd_s32(*v122.i8, *&vcgtq_f32(vcvtq_f32_s32(v122), v121));
            *v119.f32 = vadd_s32(*v120.i8, *&vcgtq_f32(vcvtq_f32_s32(v120), v119));
            *v121.f32 = vmla_s32(vzip1_s32(*v119.f32, *v121.f32), vzip2_s32(*v119.f32, *v121.f32), *v117.i8);
            v123 = v121.i32[1];
            v110 = *(v91 + 16 * v121.i32[0]);
            v113 = *(v91 + 16 * v123);
          }

          v124 = vminq_f32(vmaxq_f32(vrev64q_s32(v100), v25), v70);
          v125 = vminq_f32(vmaxq_f32(vrev64q_s32(v103), v25), v70);
          v126 = vminq_f32(vmaxq_f32(vrev64q_s32(v110), v25), v70);
          v127 = vminq_f32(vmaxq_f32(vrev64q_s32(v113), v25), v70);
          v124.i32[1] = 0.5;
          v125.i32[1] = 0.5;
          v126.i32[1] = 0.5;
          v127.i32[1] = 0.5;
          v128 = vaddq_f32(v24, vmulq_f32(v27, v126));
          v129 = vaddq_f32(v24, vmulq_f32(v27, v127));
          v130 = *(v23 + 144);
          v131 = vbslq_s8(v130, vaddq_f32(v24, vmulq_f32(v27, v124)), v124);
          v132 = vbslq_s8(v130, vaddq_f32(v24, vmulq_f32(v27, v125)), v125);
          v133 = vbslq_s8(v130, v128, v126);
          v134 = vbslq_s8(v130, v129, v127);
          v135 = vsubq_f32(v131, v9);
          if (v5)
          {
            v136 = vaddq_s32(vcvtq_s32_f32(v135), vcltzq_f32(v135));
            v137 = vsubq_f32(v135, vcvtq_f32_s32(v136)).u64[0];
            v138 = vsubq_f32(v132, v9);
            v139 = vaddq_s32(vcvtq_s32_f32(v138), vcltzq_f32(v138));
            v140 = vsubq_f32(v138, vcvtq_f32_s32(v139)).u64[0];
            v141 = vdup_n_s32(v32);
            *v136.i8 = vmla_s32(vzip1_s32(*v136.i8, *v139.i8), vzip2_s32(*v136.i8, *v139.i8), v141);
            v142 = (v34 + 16 * v136.i32[0]);
            v143 = vaddq_f32(*v142, vmulq_n_f32(vsubq_f32(v142[1], *v142), v137.f32[0]));
            v143.i64[0] = vaddq_f32(v143, vmulq_lane_f32(vsubq_f32(vaddq_f32(v142[v32], vmulq_n_f32(vsubq_f32(v142[v32 + 1], v142[v32]), v137.f32[0])), v143), v137, 1)).u64[0];
            v144 = (v34 + 16 * v136.i32[1]);
            v145 = vaddq_f32(*v144, vmulq_n_f32(vsubq_f32(v144[1], *v144), v140.f32[0]));
            v145.i64[0] = vaddq_f32(v145, vmulq_lane_f32(vsubq_f32(vaddq_f32(v144[v32], vmulq_n_f32(vsubq_f32(v144[v32 + 1], v144[v32]), v140.f32[0])), v145), v140, 1)).u64[0];
            v146 = vsubq_f32(v133, v9);
            v147 = vaddq_s32(vcvtq_s32_f32(v146), vcltzq_f32(v146));
            v146.i64[0] = vsubq_f32(v146, vcvtq_f32_s32(v147)).u64[0];
            v148 = vsubq_f32(v134, v9);
            v149 = vaddq_s32(vcvtq_s32_f32(v148), vcltzq_f32(v148));
            *v147.i8 = vmla_s32(vzip1_s32(*v147.i8, *v149.i8), vzip2_s32(*v147.i8, *v149.i8), v141);
            v150 = (v34 + 16 * v147.i32[0]);
            v149.i64[0] = vsubq_f32(v148, vcvtq_f32_s32(v149)).u64[0];
            v151 = vaddq_f32(*v150, vmulq_n_f32(vsubq_f32(v150[1], *v150), v146.f32[0]));
            v151.i64[0] = vaddq_f32(v151, vmulq_lane_f32(vsubq_f32(vaddq_f32(v150[v32], vmulq_n_f32(vsubq_f32(v150[v32 + 1], v150[v32]), v146.f32[0])), v151), *v146.f32, 1)).u64[0];
            v152 = (v34 + 16 * v147.i32[1]);
            v153 = vaddq_f32(*v152, vmulq_n_f32(vsubq_f32(v152[1], *v152), *v149.i32));
            v153.i64[0] = vaddq_f32(v153, vmulq_lane_f32(vsubq_f32(vaddq_f32(v152[v32], vmulq_n_f32(vsubq_f32(v152[v32 + 1], v152[v32]), *v149.i32)), v153), *v149.i8, 1)).u64[0];
          }

          else
          {
            v154 = vaddq_f32(v135, v15);
            v155 = vcvtq_s32_f32(v154);
            v156 = vaddq_f32(vsubq_f32(v132, v9), v15);
            v157 = vcvtq_s32_f32(v156);
            *v154.f32 = vadd_s32(*v155.i8, *&vcgtq_f32(vcvtq_f32_s32(v155), v154));
            *v156.f32 = vadd_s32(*v157.i8, *&vcgtq_f32(vcvtq_f32_s32(v157), v156));
            *v157.i8 = vdup_n_s32(v32);
            *v156.f32 = vmla_s32(vzip1_s32(*v154.f32, *v156.f32), vzip2_s32(*v154.f32, *v156.f32), *v157.i8);
            v158 = v156.i32[1];
            v143 = *(v34 + 16 * v156.i32[0]);
            v145 = *(v34 + 16 * v158);
            v159 = vaddq_f32(vsubq_f32(v133, v9), v15);
            v160 = vcvtq_s32_f32(v159);
            v161 = vaddq_f32(vsubq_f32(v134, v9), v15);
            v162 = vcvtq_s32_f32(v161);
            *v161.f32 = vadd_s32(*v162.i8, *&vcgtq_f32(vcvtq_f32_s32(v162), v161));
            *v159.f32 = vadd_s32(*v160.i8, *&vcgtq_f32(vcvtq_f32_s32(v160), v159));
            *v161.f32 = vmla_s32(vzip1_s32(*v159.f32, *v161.f32), vzip2_s32(*v159.f32, *v161.f32), *v157.i8);
            v163 = v161.i32[1];
            v151 = *(v34 + 16 * v161.i32[0]);
            v153 = *(v34 + 16 * v163);
          }

          LODWORD(v164) = vmulq_lane_f32(v71, *v143.f32, 1).u32[0];
          LODWORD(v165) = vmulq_lane_f32(v72, *v145.f32, 1).u32[0];
          LODWORD(v166) = vmulq_lane_f32(v73, *v151.f32, 1).u32[0];
          LODWORD(v167) = vmulq_lane_f32(v74, *v153.f32, 1).u32[0];
          v168 = *(v23 + 16);
          v169 = *(v23 + 32);
          v170 = vminq_f32(vmaxq_f32(vaddq_f32(v168, vmulq_n_f32(v169, v164)), v70), v27);
          v171 = vminq_f32(vmaxq_f32(vaddq_f32(v168, vmulq_n_f32(v169, v165)), v70), v27);
          v172 = vminq_f32(vmaxq_f32(vaddq_f32(v168, vmulq_n_f32(v169, v166)), v70), v27);
          v173 = vminq_f32(vmaxq_f32(vaddq_f32(v168, vmulq_n_f32(v169, v167)), v70), v27);
          v174 = *(v23 + 160);
          v175 = (v11 + v17);
          v175[-2] = vbslq_s8(v174, v170, v19);
          v175[-1] = vbslq_s8(v174, v171, v20);
          *v175 = vbslq_s8(v174, v172, v21);
          v175[1] = vbslq_s8(v174, v173, v22);
          v16 += 4;
          v17 += 64;
        }
      }

      if (v16 < v10)
      {
        do
        {
          v176 = *(v12 + 16 * v16);
          v177 = *(this + 51);
          v179 = *(v177 + 80);
          v178 = *(v177 + 96);
          v180 = *(v177 + 112);
          v181 = vaddq_f32(v178, vmulq_f32(vminq_f32(vmaxq_f32(v176, v179), *(v177 + 48)), v180));
          v181.i32[1] = 0.5;
          v182 = *(a2 + 30);
          v183 = vsubq_f32(v181, v9);
          v184 = *(a2 + 14);
          if (v5)
          {
            v185 = vaddq_s32(vcvtq_s32_f32(v183), vcltzq_f32(v183));
            v186 = vsubq_f32(v183, vcvtq_f32_s32(v185)).u64[0];
            v187 = (v184 + 16 * (v185.i32[0] + v185.i32[1] * v182));
            v188 = vaddq_f32(*v187, vmulq_n_f32(vsubq_f32(v187[1], *v187), v186.f32[0]));
            v189 = vaddq_f32(v188, vmulq_lane_f32(vsubq_f32(vaddq_f32(v187[v182], vmulq_n_f32(vsubq_f32(v187[v182 + 1], v187[v182]), v186.f32[0])), v188), v186, 1));
          }

          else
          {
            v190 = vaddq_f32(v183, v15);
            v191 = vcvtq_s32_f32(v190);
            v190.i64[0] = vaddq_s32(v191, vcgtq_f32(vcvtq_f32_s32(v191), v190)).u64[0];
            v189 = *(v184 + 16 * (v190.i32[0] + v190.i32[1] * v182));
          }

          v192 = vmaxq_f32(v189, v179);
          v193 = *(v177 + 128);
          v194 = vminq_f32(v192, v193);
          v195 = vmaxq_f32(vminq_f32(vmulq_f32(v180, vaddq_f32(v176, vmulq_laneq_f32(*v177, v194, 2))), *(v177 + 64)), vnegq_f32(*(v177 + 64)));
          v196 = *(a2 + 26);
          v197 = vsubq_f32(vextq_s8(v195, v195, 4uLL), v9);
          v198 = *(a2 + 12);
          if (v5)
          {
            v199 = vaddq_s32(vcvtq_s32_f32(v197), vcltzq_f32(v197));
            v200 = vsubq_f32(v197, vcvtq_f32_s32(v199)).u64[0];
            v201 = (v198 + 16 * (v199.i32[0] + v199.i32[1] * v196));
            v202 = vaddq_f32(*v201, vmulq_n_f32(vsubq_f32(v201[1], *v201), v200.f32[0]));
            v203 = vaddq_f32(v202, vmulq_lane_f32(vsubq_f32(vaddq_f32(v201[v196], vmulq_n_f32(vsubq_f32(v201[v196 + 1], v201[v196]), v200.f32[0])), v202), v200, 1));
          }

          else
          {
            v204 = vaddq_f32(v197, v15);
            v205 = vcvtq_s32_f32(v204);
            v204.i64[0] = vaddq_s32(v205, vcgtq_f32(vcvtq_f32_s32(v205), v204)).u64[0];
            v203 = *(v198 + 16 * (v204.i32[0] + v204.i32[1] * v196));
          }

          v206 = vminq_f32(vmaxq_f32(vrev64q_s32(v203), v179), v193);
          v206.i32[1] = 0.5;
          v207 = vsubq_f32(vbslq_s8(*(v177 + 144), vaddq_f32(v178, vmulq_f32(v180, v206)), v206), v9);
          if (v5)
          {
            v208 = vaddq_s32(vcvtq_s32_f32(v207), vcltzq_f32(v207));
            v209 = vsubq_f32(v207, vcvtq_f32_s32(v208)).u64[0];
            v210 = (v184 + 16 * (v208.i32[0] + v208.i32[1] * v182));
            v211 = vaddq_f32(*v210, vmulq_n_f32(vsubq_f32(v210[1], *v210), v209.f32[0]));
            v207.i64[0] = vaddq_f32(v211, vmulq_lane_f32(vsubq_f32(vaddq_f32(v210[v182], vmulq_n_f32(vsubq_f32(v210[v182 + 1], v210[v182]), v209.f32[0])), v211), v209, 1)).u64[0];
          }

          else
          {
            v212 = vaddq_f32(v207, v15);
            v213 = vcvtq_s32_f32(v212);
            v212.i64[0] = vaddq_s32(v213, vcgtq_f32(vcvtq_f32_s32(v213), v212)).u64[0];
            v207 = *(v184 + 16 * (v212.i32[0] + v212.i32[1] * v182));
          }

          *(v11 + 16 * v16++) = vbslq_s8(*(v177 + 160), vminq_f32(vmaxq_f32(vaddq_f32(*(v177 + 16), vmulq_n_f32(*(v177 + 32), vmulq_lane_f32(v194, *v207.f32, 1).f32[0])), v193), v180), v176);
        }

        while (v16 < v10);
      }

      ++v8;
      v12 += v13;
      v11 += v14;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcAlphaKeyer::GetDOD(HgcAlphaKeyer *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 2 || a3 == 1)
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

uint64_t HgcAlphaKeyer::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 == 2 || a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
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

void HgcAlphaKeyer::HgcAlphaKeyer(HgcAlphaKeyer *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E9790;
  operator new();
}

void HgcAlphaKeyer::~HgcAlphaKeyer(HGNode *this)
{
  *this = &unk_2871E9790;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F93440CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcAlphaKeyer::~HgcAlphaKeyer(this);

  HGObject::operator delete(v1);
}

uint64_t HgcAlphaKeyer::SetParameter(HgcAlphaKeyer *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v12 = *(this + 51);
      if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
      {
        *v12 = a3.n128_u32[0];
        *(v12 + 4) = a4;
        *(v12 + 8) = a5;
        *(v12 + 12) = a6;
        goto LABEL_32;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v9 = *(this + 51);
      if (v9[1].n128_f32[0] != 0.0 || v9[1].n128_f32[1] != 0.0 || v9[1].n128_f32[2] != 0.0 || v9[1].n128_f32[3] != a3.n128_f32[0])
      {
        v9[1].n128_u64[0] = 0;
        v9[1].n128_u32[3] = a3.n128_u32[0];
        a3.n128_f32[1] = a4;
        v9[1].n128_u32[2] = 0;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v9[11] = a3;
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
        v10 = *(this + 51);
        if (v10[2].n128_f32[0] != 0.0 || v10[2].n128_f32[1] != 0.0 || v10[2].n128_f32[2] != 0.0 || v10[2].n128_f32[3] != a3.n128_f32[0])
        {
          v10[2].n128_u64[0] = 0;
          v10[2].n128_u32[3] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v10[2].n128_u32[2] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v10[12] = a3;
          goto LABEL_32;
        }

        return 0;
      case 3:
        v11 = *(this + 51);
        if (*(v11 + 48) != a3.n128_f32[0] || *(v11 + 52) != a4 || *(v11 + 56) != a5 || *(v11 + 60) != a6)
        {
          *(v11 + 48) = a3.n128_u32[0];
          *(v11 + 52) = a4;
          *(v11 + 56) = a5;
          *(v11 + 60) = a6;
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

float HgcAlphaKeyer::GetParameter(HgcAlphaKeyer *this, int a2, float *a3)
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
      *a3 = v5[44];
      a3[1] = v5[45];
      a3[2] = v5[46];
      v4 = v5 + 47;
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
        *a3 = v6[48];
        a3[1] = v6[49];
        a3[2] = v6[50];
        v4 = v6 + 51;
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

const char *HgcSpillRemovalDarkEdges::GetProgram(HgcSpillRemovalDarkEdges *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000078a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(8.000000000, 1.000000000, 0.000000000, 0.000000000);\n    const half4 c1 = half4(-0.1145000011, -0.3855000138, 0.5000000000, 0.000000000);\n    const half4 c2 = half4(0.5016000271, -0.4555999935, -0.04589999840, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = half3(dot(r0, half4(hg_Params[3])));\n    r2.xyz = half3(dot(r0, half4(hg_Params[4])));\n    r2.xyz = abs(r2.xyz);\n    r1.xyz = r2.xyz*half3(hg_Params[5].xyz) + r1.xyz;\n    r3.x = dot(r0, half4(hg_Params[0]));\n    r3.y = dot(r0, half4(hg_Params[1]));\n    r3.z = dot(r0, half4(hg_Params[2]));\n    r4.x = dot(r0, half4(hg_Params[6]));\n    r4.y = dot(r0, half4(hg_Params[7]));\n    r4.z = dot(r0, half4(hg_Params[8]));\n    r2.xyz = clamp(r2.xyz*half3(hg_Params[9].xyz), 0.00000h, 1.00000h);\n    r3.xyz = mix(r3.xyz, r4.xyz, r2.xyz);\n    r1.xyz = clamp(r1.xyz*c0.xxx + c0.yyy, 0.00000h, 1.00000h);\n    r3.xyz = mix(r3.xyz, r0.xyz, r1.xyz);\n    r4.xyz = r0.xyz - r3.xyz;\n    r4.xyz = abs(r4.xyz);\n    r4.w = dot(r4.xyz, 1.00000h);\n    r4.w = clamp(r4.w + r4.w, 0.00000h, 1.00000h);\n    r5.x = dot(r3.xyz, c1.xyz);\n    r5.y = dot(r3.xyz, c2.xyz);\n    r5.w = fmax(r5.x, r5.y);\n    r5.w = clamp(r5.w*half(hg_Params[11].w), 0.00000h, 1.00000h);\n    r4.w = r4.w*-r5.w + r4.w;\n    r6.xyz = r3.xyz*half3(hg_Params[10].xyz);\n    output.color0.xyz = mix(float3(r3.xyz), float3(r6.xyz), float3(r4.www));\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=5e46a0a4:5e1795bd:dc5c1ec8:da3b6779\n//SIG=00400000:00000001:00000001:00000001:0003:000c:0007:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000712\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(8.000000000, 1.000000000, 0.000000000, 0.000000000);\n    const float4 c1 = float4(-0.1145000011, -0.3855000138, 0.5000000000, 0.000000000);\n    const float4 c2 = float4(0.5016000271, -0.4555999935, -0.04589999840, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = float3(dot(r0, hg_Params[3]));\n    r2.xyz = float3(dot(r0, hg_Params[4]));\n    r2.xyz = abs(r2.xyz);\n    r1.xyz = r2.xyz*hg_Params[5].xyz + r1.xyz;\n    r3.x = dot(r0, hg_Params[0]);\n    r3.y = dot(r0, hg_Params[1]);\n    r3.z = dot(r0, hg_Params[2]);\n    r4.x = dot(r0, hg_Params[6]);\n    r4.y = dot(r0, hg_Params[7]);\n    r4.z = dot(r0, hg_Params[8]);\n    r2.xyz = clamp(r2.xyz*hg_Params[9].xyz, 0.00000f, 1.00000f);\n    r3.xyz = mix(r3.xyz, r4.xyz, r2.xyz);\n    r1.xyz = clamp(r1.xyz*c0.xxx + c0.yyy, 0.00000f, 1.00000f);\n    r3.xyz = mix(r3.xyz, r0.xyz, r1.xyz);\n    r2.xyz = r0.xyz - r3.xyz;\n    r2.xyz = abs(r2.xyz);\n    r2.w = dot(r2.xyz, 1.00000f);\n    r2.w = clamp(r2.w + r2.w, 0.00000f, 1.00000f);\n    r4.x = dot(r3.xyz, c1.xyz);\n    r4.y = dot(r3.xyz, c2.xyz);\n    r4.w = fmax(r4.x, r4.y);\n    r4.w = clamp(r4.w*hg_Params[11].w, 0.00000f, 1.00000f);\n    r2.w = r2.w*-r4.w + r2.w;\n    r1.xyz = r3.xyz*hg_Params[10].xyz;\n    output.color0.xyz = mix(r3.xyz, r1.xyz, r2.www);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=68740772:3fbd3ca3:f1de555d:ef80afb8\n//SIG=00000000:00000001:00000001:00000000:0003:000c:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000008d4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nuniform mediump vec4 hg_ProgramLocal5;\nuniform mediump vec4 hg_ProgramLocal6;\nuniform mediump vec4 hg_ProgramLocal7;\nuniform mediump vec4 hg_ProgramLocal8;\nuniform mediump vec4 hg_ProgramLocal9;\nuniform mediump vec4 hg_ProgramLocal10;\nuniform mediump vec4 hg_ProgramLocal11;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(8.000000000, 1.000000000, 0.000000000, 0.000000000);\n    const mediump vec4 c1 = vec4(-0.1145000011, -0.3855000138, 0.5000000000, 0.000000000);\n    const mediump vec4 c2 = vec4(0.5016000271, -0.4555999935, -0.04589999840, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = vec3(dot(r0, hg_ProgramLocal3));\n    r2.xyz = vec3(dot(r0, hg_ProgramLocal4));\n    r2.xyz = abs(r2.xyz);\n    r1.xyz = r2.xyz*hg_ProgramLocal5.xyz + r1.xyz;\n    r3.x = dot(r0, hg_ProgramLocal0);\n    r3.y = dot(r0, hg_ProgramLocal1);\n    r3.z = dot(r0, hg_ProgramLocal2);\n    r4.x = dot(r0, hg_ProgramLocal6);\n    r4.y = dot(r0, hg_ProgramLocal7);\n    r4.z = dot(r0, hg_ProgramLocal8);\n    r2.xyz = clamp(r2.xyz*hg_ProgramLocal9.xyz, vec3(0.00000), vec3(1.00000));\n    r3.xyz = mix(r3.xyz, r4.xyz, r2.xyz);\n    r1.xyz = clamp(r1.xyz*c0.xxx + c0.yyy, vec3(0.00000), vec3(1.00000));\n    r3.xyz = mix(r3.xyz, r0.xyz, r1.xyz);\n    r2.xyz = r0.xyz - r3.xyz;\n    r2.xyz = abs(r2.xyz);\n    r2.w = dot(r2.xyz, vec3(1.00000));\n    r2.w = clamp(r2.w + r2.w, 0.00000, 1.00000);\n    r4.x = dot(r3.xyz, c1.xyz);\n    r4.y = dot(r3.xyz, c2.xyz);\n    r4.w = max(r4.x, r4.y);\n    r4.w = clamp(r4.w*hg_ProgramLocal11.w, 0.00000, 1.00000);\n    r2.w = r2.w*-r4.w + r2.w;\n    r1.xyz = r3.xyz*hg_ProgramLocal10.xyz;\n    gl_FragColor.xyz = mix(r3.xyz, r1.xyz, r2.www);\n    gl_FragColor.w = r0.w;\n}\n//MD5=410aa58f:8c05333b:5a6fa5fb:425b4ded\n//SIG=00000000:00000001:00000001:00000000:0003:000c:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FAB11C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FAB12C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FAB1300()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FAB12F8);
}

uint64_t HgcSpillRemovalDarkEdges::BindTexture(HgcSpillRemovalDarkEdges *this, HGHandler *a2, int a3)
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

uint64_t HgcSpillRemovalDarkEdges::Bind(void *a1, uint64_t a2)
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
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcSpillRemovalDarkEdges::RenderTile(uint64_t a1, uint64_t a2)
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
          v12 = *(a1 + 408);
          v13 = *(v6 + v10 - 16);
          v14 = *(v6 + v10);
          v16 = *(v12 + 32);
          v15 = *(v12 + 48);
          v17 = vmulq_f32(v13, v15);
          v18 = vmulq_f32(v14, v15);
          v19 = vaddq_f32(v17, vextq_s8(v17, v17, 4uLL));
          v20 = vaddq_f32(v18, vextq_s8(v18, v18, 4uLL));
          v22 = *(v12 + 64);
          v21 = *(v12 + 80);
          v23 = vaddq_f32(v19, vextq_s8(v19, v19, 8uLL));
          v24 = vmulq_f32(v13, v22);
          v25 = vmulq_f32(v14, v22);
          v26 = vaddq_f32(v20, vextq_s8(v20, v20, 8uLL));
          v27 = vaddq_f32(v24, vextq_s8(v24, v24, 4uLL));
          v28 = vaddq_f32(v25, vextq_s8(v25, v25, 4uLL));
          v29 = *(v12 + 16);
          v30 = vmulq_f32(v13, *v12);
          v31 = vmulq_f32(v14, *v12);
          v32 = vabsq_f32(vaddq_f32(v27, vextq_s8(v27, v27, 8uLL)));
          v33 = vaddq_f32(v30, vextq_s8(v30, v30, 4uLL));
          v34 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
          v35 = vabsq_f32(vaddq_f32(v28, vextq_s8(v28, v28, 8uLL)));
          v36 = vmulq_f32(v13, v29);
          v37 = vmulq_f32(v14, v29);
          v38 = vaddq_f32(v33, vdupq_laneq_s64(v33, 1));
          v39 = vaddq_f32(v36, vextq_s8(v36, v36, 4uLL));
          v40 = vaddq_f32(v37, vextq_s8(v37, v37, 4uLL));
          v41 = vmulq_f32(v13, v16);
          v42 = vmulq_f32(v14, v16);
          v43 = vaddq_f32(v39, vdupq_laneq_s64(v39, 1));
          v44 = vaddq_f32(v41, vextq_s8(v41, v41, 4uLL));
          v45 = vaddq_f32(v42, vextq_s8(v42, v42, 4uLL));
          v46 = vaddq_f32(v44, vdupq_lane_s64(v44.i64[0], 0));
          v47 = *(v12 + 96);
          v48 = *(v12 + 112);
          v49 = vmulq_f32(v13, v47);
          v50 = vmulq_f32(v14, v47);
          v51 = vaddq_f32(v49, vextq_s8(v49, v49, 4uLL));
          v52 = vmulq_f32(v21, v35);
          v53 = vaddq_f32(v50, vextq_s8(v50, v50, 4uLL));
          v54 = vaddq_f32(v23, vmulq_f32(v21, v32));
          v55 = vmulq_f32(v13, v48);
          v56 = vmulq_f32(v14, v48);
          v57 = vaddq_f32(v26, v52);
          v58 = vaddq_f32(v55, vextq_s8(v55, v55, 4uLL));
          v59 = *(v12 + 192);
          v60 = *(v12 + 208);
          v43.i64[0] = vbslq_s8(v59, v38, v43).u64[0];
          v61 = vaddq_f32(v56, vextq_s8(v56, v56, 4uLL));
          v37.i64[0] = vbslq_s8(v59, vaddq_f32(v34, vdupq_laneq_s64(v34, 1)), vaddq_f32(v40, vdupq_laneq_s64(v40, 1))).u64[0];
          v34.i64[0] = vbslq_s8(v59, vaddq_f32(v51, vdupq_laneq_s64(v51, 1)), vaddq_f32(v58, vdupq_laneq_s64(v58, 1))).u64[0];
          v62 = *(v12 + 128);
          v63 = *(v12 + 144);
          v53.i64[0] = vbslq_s8(v59, vaddq_f32(v53, vdupq_laneq_s64(v53, 1)), vaddq_f32(v61, vdupq_laneq_s64(v61, 1))).u64[0];
          v64 = vmulq_f32(v13, v62);
          v65 = vaddq_f32(v64, vextq_s8(v64, v64, 4uLL));
          v66 = vmulq_f32(v14, v62);
          v43.i64[1] = v46.i64[1];
          v67 = vaddq_f32(v66, vextq_s8(v66, v66, 4uLL));
          v37.i64[1] = vaddq_f32(v45, vdupq_lane_s64(*&v45, 0)).i64[1];
          v34.i64[1] = vaddq_f32(v65, vdupq_lane_s64(*&v65, 0)).i64[1];
          v53.i64[1] = vaddq_f32(v67, vdupq_lane_s64(*&v67, 0)).i64[1];
          v68 = vmaxq_f32(vmulq_f32(v32, v63), v60);
          v69 = *(v12 + 224);
          v70 = *(v12 + 240);
          v71 = vaddq_f32(v43, vmulq_f32(vminq_f32(v68, v69), vsubq_f32(v34, v43)));
          v72 = vaddq_f32(v37, vmulq_f32(vminq_f32(vmaxq_f32(vmulq_f32(v35, v63), v60), v69), vsubq_f32(v53, v37)));
          v73 = vaddq_f32(v71, vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v69, vmulq_f32(v54, v70)), v60), v69), vsubq_f32(v13, v71)));
          v74 = vaddq_f32(v72, vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v69, vmulq_f32(v57, v70)), v60), v69), vsubq_f32(v14, v72)));
          v75 = vabdq_f32(v13, v73);
          v76 = vabdq_f32(v14, v74);
          v77 = vaddq_f32(vextq_s8(v75, v75, 4uLL), vextq_s8(v75, v75, 8uLL));
          v78 = vrev64q_s32(v75);
          v79 = *(v12 + 256);
          v80 = *(v12 + 272);
          v81 = vmulq_f32(v73, v79);
          v82 = vmulq_f32(v74, v79);
          v83 = vmulq_f32(v73, v80);
          v84 = vaddq_f32(v78, v77);
          v85 = vaddq_f32(vextq_s8(v83, v83, 4uLL), vaddq_f32(v83, vrev64q_s32(v83)));
          v86 = vmulq_f32(v74, v80);
          v87 = vaddq_f32(vrev64q_s32(v76), vaddq_f32(vextq_s8(v76, v76, 4uLL), vextq_s8(v76, v76, 8uLL)));
          v88 = vmaxq_f32(vaddq_f32(v84, v84), v70);
          v89 = vbslq_s8(v59, vaddq_f32(vextq_s8(v81, v81, 8uLL), vaddq_f32(v81, vrev64q_s32(v81))), v85);
          v90 = vbslq_s8(v59, vaddq_f32(vextq_s8(v82, v82, 8uLL), vaddq_f32(v82, vrev64q_s32(v82))), vaddq_f32(vextq_s8(v86, v86, 4uLL), vaddq_f32(v86, vrev64q_s32(v86))));
          v91 = vmaxq_f32(vaddq_f32(v87, v87), v70);
          v92 = vmaxq_f32(vextq_s8(v89, v89, 4uLL), vextq_s8(v89, v89, 8uLL));
          v94 = *(v12 + 160);
          v93 = *(v12 + 176);
          v95 = vminq_f32(v88, v69);
          v96 = vminq_f32(v91, v69);
          v97 = vsubq_f32(v96, vmulq_f32(v96, vminq_f32(vmaxq_f32(vmulq_f32(vmaxq_f32(vextq_s8(v90, v90, 4uLL), vextq_s8(v90, v90, 8uLL)), v93), v80), v79)));
          v98 = vaddq_f32(v73, vmulq_laneq_f32(vsubq_f32(vmulq_f32(v73, v94), v73), vsubq_f32(v95, vmulq_f32(v95, vminq_f32(vmaxq_f32(vmulq_f32(v92, v93), v80), v79))), 3));
          v99 = *(v12 + 288);
          v100 = (v5 + v10);
          v100[-1] = vbslq_s8(v99, v13, v98);
          *v100 = vbslq_s8(v99, v14, vaddq_f32(v74, vmulq_laneq_f32(vsubq_f32(vmulq_f32(v74, v94), v74), v97, 3)));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v101 = *(v6 + 16 * v9);
        v102 = *(a1 + 408);
        v103 = vmulq_f32(v101, *(v102 + 48));
        v104 = vaddq_f32(v103, vextq_s8(v103, v103, 4uLL));
        v105 = vmulq_f32(v101, *(v102 + 64));
        v106 = vaddq_f32(v105, vextq_s8(v105, v105, 4uLL));
        v107 = vabsq_f32(vaddq_f32(v106, vextq_s8(v106, v106, 8uLL)));
        v108 = vaddq_f32(vaddq_f32(v104, vextq_s8(v104, v104, 8uLL)), vmulq_f32(*(v102 + 80), v107));
        v109 = vmulq_f32(v101, *v102);
        v110 = vaddq_f32(v109, vextq_s8(v109, v109, 4uLL));
        v111 = vaddq_f32(v110, vdupq_laneq_s64(v110, 1));
        v112 = vmulq_f32(v101, *(v102 + 16));
        v113 = vaddq_f32(v112, vextq_s8(v112, v112, 4uLL));
        v114 = vaddq_f32(v113, vdupq_laneq_s64(v113, 1));
        v115 = vmulq_f32(v101, *(v102 + 32));
        v116 = vaddq_f32(v115, vextq_s8(v115, v115, 4uLL));
        v117 = *(v102 + 192);
        v118 = *(v102 + 208);
        v114.i64[0] = vbslq_s8(v117, v111, v114).u64[0];
        v114.i64[1] = vaddq_f32(v116, vdupq_lane_s64(*&v116, 0)).i64[1];
        v119 = vmulq_f32(v101, *(v102 + 96));
        v120 = vaddq_f32(v119, vextq_s8(v119, v119, 4uLL));
        v121 = vmulq_f32(v101, *(v102 + 112));
        v122 = vaddq_f32(v121, vextq_s8(v121, v121, 4uLL));
        v120.i64[0] = vbslq_s8(v117, vaddq_f32(v120, vdupq_laneq_s64(v120, 1)), vaddq_f32(v122, vdupq_laneq_s64(v122, 1))).u64[0];
        v123 = vmulq_f32(v101, *(v102 + 128));
        v124 = vaddq_f32(v123, vextq_s8(v123, v123, 4uLL));
        v120.i64[1] = vaddq_f32(v124, vdupq_lane_s64(*&v124, 0)).i64[1];
        v125 = *(v102 + 224);
        v126 = *(v102 + 240);
        v127 = vaddq_f32(v114, vmulq_f32(vminq_f32(vmaxq_f32(vmulq_f32(v107, *(v102 + 144)), v118), v125), vsubq_f32(v120, v114)));
        v128 = vaddq_f32(v127, vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v125, vmulq_f32(v108, v126)), v118), v125), vsubq_f32(v101, v127)));
        v129 = vabdq_f32(v101, v128);
        v130 = vaddq_f32(vrev64q_s32(v129), vaddq_f32(vextq_s8(v129, v129, 4uLL), vextq_s8(v129, v129, 8uLL)));
        v131 = vminq_f32(vmaxq_f32(vaddq_f32(v130, v130), v126), v125);
        v132 = *(v102 + 256);
        v133 = *(v102 + 272);
        v134 = vmulq_f32(v132, v128);
        v135 = vmulq_f32(v133, v128);
        v136 = vbslq_s8(v117, vaddq_f32(vextq_s8(v134, v134, 8uLL), vaddq_f32(v134, vrev64q_s32(v134))), vaddq_f32(vextq_s8(v135, v135, 4uLL), vaddq_f32(v135, vrev64q_s32(v135))));
        *(v5 + 16 * v9) = vbslq_s8(*(v102 + 288), v101, vaddq_f32(v128, vmulq_laneq_f32(vsubq_f32(vmulq_f32(v128, *(v102 + 160)), v128), vsubq_f32(v131, vmulq_f32(v131, vminq_f32(vmaxq_f32(vmulq_f32(vmaxq_f32(vextq_s8(v136, v136, 4uLL), vextq_s8(v136, v136, 8uLL)), *(v102 + 176)), v133), v132))), 3)));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcSpillRemovalDarkEdges::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcSpillRemovalDarkEdges::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcSpillRemovalDarkEdges::HgcSpillRemovalDarkEdges(HgcSpillRemovalDarkEdges *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E99F8;
  operator new();
}

void HgcSpillRemovalDarkEdges::~HgcSpillRemovalDarkEdges(HGNode *this)
{
  *this = &unk_2871E99F8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FDACBBE0);
  }

  HGNode::~HGNode(this);
}

{
  HgcSpillRemovalDarkEdges::~HgcSpillRemovalDarkEdges(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSpillRemovalDarkEdges::SetParameter(HgcSpillRemovalDarkEdges *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 0xB)
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

uint64_t HgcSpillRemovalDarkEdges::GetParameter(HgcSpillRemovalDarkEdges *this, unsigned int a2, float *a3)
{
  if (a2 > 0xB)
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