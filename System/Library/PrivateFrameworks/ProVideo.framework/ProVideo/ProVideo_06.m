const char *HgcColorAndGradientStroke::GetProgram(HgcColorAndGradientStroke *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000007ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.y = half(half(hg_Params[0].x) < r0.x);\n    r0.w = half(half(hg_Params[0].y) >= r0.x);\n    r0.w = fmin(r0.y, r0.w);\n    r0.z = half(hg_Params[0].y) - half(hg_Params[0].x);\n    r0.y = r0.z*half(hg_Params[0].w);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = select(c0.xxxx, r1, -r0.wwww < 0.00000h);\n    r0.z = r0.z + r0.y;\n    r0.w = r0.y + half(hg_Params[0].y);\n    r0.w = -r0.z*half(hg_Params[1].x) + r0.w;\n    r2.x = half(hg_Params[0].x) - r0.y;\n    r0.z = r0.z*half(hg_Params[1].y) + r2.x;\n    r2.xy = half2(r0.zx >= r0.xw);\n    r2.x = fmax(r2.x, r2.y);\n    r2.z = r0.x - r0.z;\n    r2.y = 1.00000h / r0.y;\n    r2.w = r2.z*r2.y;\n    r2.z = select(r1.w, c0.x, -r2.x < 0.00000h);\n    r1.w = r0.w - r0.y;\n    r0.y = r0.z + r0.y;\n    r3.x = half(r0.x < r1.w);\n    r0.z = half(r0.y < r0.x);\n    r0.w = r0.w - r0.x;\n    r0.z = fmin(r0.z, r3.x);\n    r0.y = half(r0.y >= r0.x);\n    r1.w = half(r0.x >= r1.w);\n    r2.w = r2.z*r2.w;\n    r2.x = half(-r2.x >= c0.x);\n    r0.z = half(-r0.z >= c0.x);\n    r0.zw = r2.xy*r0.zw;\n    r0.y = fmin(r0.z, r0.y);\n    r0.y = select(r2.z, r2.w, -r0.y < 0.00000h);\n    r0.x = r0.y*r0.w;\n    r1.w = fmin(r0.z, r1.w);\n    r1.w = select(r0.y, r0.x, -r1.w < 0.00000h);\n    r1.w = pow(r1.w, half(hg_Params[0].z));\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = float4(r1);\n    return output;\n}\n//MD5=7ea8a260:fb019ba9:e5fc926e:40b5962c\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000007ba\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.y = float(hg_Params[0].x < r0.x);\n    r0.w = float(hg_Params[0].y >= r0.x);\n    r0.w = fmin(r0.y, r0.w);\n    r0.z = hg_Params[0].y - hg_Params[0].x;\n    r0.y = r0.z*hg_Params[0].w;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = select(c0.xxxx, r1, -r0.wwww < 0.00000f);\n    r0.z = r0.z + r0.y;\n    r0.w = r0.y + hg_Params[0].y;\n    r0.w = -r0.z*hg_Params[1].x + r0.w;\n    r2.x = hg_Params[0].x - r0.y;\n    r0.z = r0.z*hg_Params[1].y + r2.x;\n    r2.xy = float2(r0.zx >= r0.xw);\n    r2.x = fmax(r2.x, r2.y);\n    r2.z = r0.x - r0.z;\n    r2.y = 1.00000f / r0.y;\n    r2.w = r2.z*r2.y;\n    r2.z = select(r1.w, c0.x, -r2.x < 0.00000f);\n    r1.w = r0.w - r0.y;\n    r0.y = r0.z + r0.y;\n    r3.x = float(r0.x < r1.w);\n    r0.z = float(r0.y < r0.x);\n    r0.w = r0.w - r0.x;\n    r0.z = fmin(r0.z, r3.x);\n    r0.y = float(r0.y >= r0.x);\n    r1.w = float(r0.x >= r1.w);\n    r2.w = r2.z*r2.w;\n    r2.x = float(-r2.x >= c0.x);\n    r0.z = float(-r0.z >= c0.x);\n    r0.zw = r2.xy*r0.zw;\n    r0.y = fmin(r0.z, r0.y);\n    r0.y = select(r2.z, r2.w, -r0.y < 0.00000f);\n    r0.x = r0.y*r0.w;\n    r1.w = fmin(r0.z, r1.w);\n    r1.w = select(r0.y, r0.x, -r1.w < 0.00000f);\n    r1.w = pow(r1.w, hg_Params[0].z);\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = r1;\n    return output;\n}\n//MD5=e34a4054:e6495867:d6bd89f9:dc9d02a3\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000007fc\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.y = float(hg_ProgramLocal0.x < r0.x);\n    r0.w = float(hg_ProgramLocal0.y >= r0.x);\n    r0.w = min(r0.y, r0.w);\n    r0.z = hg_ProgramLocal0.y - hg_ProgramLocal0.x;\n    r0.y = r0.z*hg_ProgramLocal0.w;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = vec4(-r0.w < 0.00000 ? r1.x : c0.x, -r0.w < 0.00000 ? r1.y : c0.x, -r0.w < 0.00000 ? r1.z : c0.x, -r0.w < 0.00000 ? r1.w : c0.x);\n    r0.z = r0.z + r0.y;\n    r0.w = r0.y + hg_ProgramLocal0.y;\n    r0.w = -r0.z*hg_ProgramLocal1.x + r0.w;\n    r2.x = hg_ProgramLocal0.x - r0.y;\n    r0.z = r0.z*hg_ProgramLocal1.y + r2.x;\n    r2.xy = vec2(greaterThanEqual(r0.zx, r0.xw));\n    r2.x = max(r2.x, r2.y);\n    r2.z = r0.x - r0.z;\n    r2.y = 1.00000 / r0.y;\n    r2.w = r2.z*r2.y;\n    r2.z = -r2.x < 0.00000 ? c0.x : r1.w;\n    r1.w = r0.w - r0.y;\n    r0.y = r0.z + r0.y;\n    r3.x = float(r0.x < r1.w);\n    r0.z = float(r0.y < r0.x);\n    r0.w = r0.w - r0.x;\n    r0.z = min(r0.z, r3.x);\n    r0.y = float(r0.y >= r0.x);\n    r1.w = float(r0.x >= r1.w);\n    r2.w = r2.z*r2.w;\n    r2.x = float(-r2.x >= c0.x);\n    r0.z = float(-r0.z >= c0.x);\n    r0.zw = r2.xy*r0.zw;\n    r0.y = min(r0.z, r0.y);\n    r0.y = -r0.y < 0.00000 ? r2.w : r2.z;\n    r0.x = r0.y*r0.w;\n    r1.w = min(r0.z, r1.w);\n    r1.w = -r1.w < 0.00000 ? r0.x : r0.y;\n    r1.w = pow(r1.w, hg_ProgramLocal0.z);\n    r1.xyz = r1.xyz*r1.www;\n    gl_FragColor = r1;\n}\n//MD5=dd2282e2:5a8e8dd1:40c1b0d2:633ea21e\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA5288C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA529CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA52A14()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA52A0CLL);
}

uint64_t HgcColorAndGradientStroke::BindTexture(HgcColorAndGradientStroke *this, HGHandler *a2, int a3)
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

uint64_t HgcColorAndGradientStroke::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcColorAndGradientStroke::RenderTile(uint64_t a1, uint64_t a2)
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
    v9 = 16 * *(a2 + 24);
    v10 = 16 * *(a2 + 104);
    do
    {
      if (v4 < 2)
      {
        v11 = 0;
      }

      else
      {
        v11 = 0;
        v12 = 16;
        for (i = v4; i > 1; i -= 2)
        {
          v14 = *(a1 + 408);
          v15 = *v14;
          v16 = *(v14 + 16);
          v18 = *(v14 + 32);
          v17 = *(v14 + 48);
          v19 = vbslq_s8(v17, *(v8 + v12 - 16), vrev64q_s32(vandq_s8(v18, vcgtq_f32(*(v8 + v12 - 16), *v14))));
          v20 = vbslq_s8(v17, *(v8 + v12), vrev64q_s32(vandq_s8(v18, vcgtq_f32(*(v8 + v12), *v14))));
          v21 = vextq_s8(v15, v15, 8uLL);
          v22 = vandq_s8(v18, vcgeq_f32(v21, vextq_s8(v19, v19, 4uLL)));
          v23 = vandq_s8(v18, vcgeq_f32(v21, vextq_s8(v20, v20, 4uLL)));
          v24.i64[0] = v19.i64[0];
          v24.i64[1] = v22.i64[1];
          v25.i64[0] = v20.i64[0];
          v25.i64[1] = v23.i64[1];
          v19.i64[1] = vminq_f32(vextq_s8(v22, v19, 8uLL), v24).i64[1];
          v20.i64[1] = vminq_f32(vextq_s8(v23, v20, 8uLL), v25).i64[1];
          v26 = *(v14 + 64);
          v27 = *(v14 + 80);
          v28 = vsubq_f32(vextq_s8(v15, v15, 0xCuLL), v21);
          v29 = vbslq_s8(v26, v28, v19);
          v30 = vbslq_s8(v26, v28, v20);
          v31 = vbslq_s8(v27, vmulq_laneq_f32(v21, v29, 2), v29);
          v32 = vbslq_s8(v27, vmulq_laneq_f32(v21, v30, 2), v30);
          v33 = vdupq_laneq_s32(v31, 3);
          v34 = vdupq_laneq_s32(v32, 3);
          v31.i64[1] = vaddq_f32(vextq_s8(*v14, *&v31, 0xCuLL), v31).i64[1];
          v32.i64[1] = vaddq_f32(vextq_s8(*v14, *&v32, 0xCuLL), v32).i64[1];
          v35 = vaddq_f32(*v14, v31);
          v36 = vaddq_f32(*v14, v32);
          v38 = *(v14 + 96);
          v37 = *(v14 + 112);
          v39 = vbslq_s8(v37, vextq_s8(v35, v35, 8uLL), v31);
          v40 = vbslq_s8(v37, vextq_s8(v36, v36, 8uLL), v32);
          v41 = vextq_s8(v16, v16, 4uLL);
          v42 = vbslq_s8(v37, vsubq_f32(v39, vmulq_laneq_f32(v41, v39, 2)), v31);
          v43 = vbslq_s8(v37, vsubq_f32(v40, vmulq_laneq_f32(v41, v40, 2)), v32);
          v44 = vsubq_f32(*v14, vrev64q_s32(v42));
          v45 = vsubq_f32(*v14, vrev64q_s32(v43));
          v46 = vbslq_s8(v26, vaddq_f32(vmulq_lane_f32(v42, *v16.i8, 1), vextq_s8(v44, v44, 8uLL)), v42);
          v47 = vbslq_s8(v26, vaddq_f32(vmulq_lane_f32(v43, *v16.i8, 1), vextq_s8(v45, v45, 8uLL)), v43);
          v48 = *(v14 + 128);
          v49 = *(v14 + 144);
          *v41.f32 = vqtbl1_s8(v46, *v48.i8);
          v16.i64[0] = vextq_s8(v48, v48, 8uLL).u64[0];
          *&v41.u32[2] = vqtbl1_s8(v46, *v16.i8);
          *v50.f32 = vqtbl1_s8(v47, *v48.i8);
          *&v50.u32[2] = vqtbl1_s8(v47, *v16.i8);
          v51 = vcgtq_f32(v33, v38);
          *v33.f32 = vqtbl1_s8(v46, *v49.i8);
          v52 = vextq_s8(v49, v49, 8uLL).u64[0];
          *&v33.u32[2] = vqtbl1_s8(v46, v52);
          *v53.f32 = vqtbl1_s8(v47, *v49.i8);
          *&v53.u32[2] = vqtbl1_s8(v47, v52);
          v54 = vbslq_s8(v51, *(v6 + v12 - 16), v38);
          v55 = vbslq_s8(vcgtq_f32(v34, v38), *(v6 + v12), v38);
          v56 = vandq_s8(v18, vcgeq_f32(v33, v41));
          v57 = vandq_s8(v18, vcgeq_f32(v53, v50));
          v58 = vextq_s8(v46, v46, 8uLL);
          v59 = vextq_s8(v47, v47, 8uLL);
          v50.i64[0] = vmaxq_f32(v56, vrev64q_s32(v56)).u64[0];
          v61 = *(v14 + 160);
          v60 = *(v14 + 176);
          v57.i64[0] = vmaxq_f32(v57, vrev64q_s32(v57)).u64[0];
          v50.i64[1] = vsubq_f32(v58, v46).i64[1];
          v62 = *(v14 + 192);
          v63 = *(v14 + 208);
          v64 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v46), v61), v60), v62);
          v65 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v47), v61), v60), v62);
          v57.i64[1] = vsubq_f32(v59, v47).i64[1];
          v66 = vbslq_s8(v27, vmulq_f32(v64, vrecpsq_f32(v46, v64)), v50);
          v67 = vbslq_s8(v27, vmulq_f32(v65, vrecpsq_f32(v47, v65)), v57);
          v68 = vmulq_laneq_f32(vdupq_lane_s64(v66.i64[0], 0), v66, 2);
          v69 = vmulq_laneq_f32(vdupq_lane_s64(v67.i64[0], 0), v67, 2);
          v70 = vextq_s8(v68, v66, 8uLL);
          v71 = vextq_s8(v69, v67, 8uLL);
          v72 = vbslq_s8(v37, vsubq_f32(v46, v58), v54);
          v73 = vbslq_s8(v37, vsubq_f32(v47, v59), v55);
          v66.i64[1] = v68.i64[1];
          v74 = vbslq_s8(v27, vaddq_f32(vextq_s8(v46, v46, 4uLL), v46), v46);
          v75 = vbslq_s8(v27, vaddq_f32(vextq_s8(v47, v47, 4uLL), v47), v47);
          v67.i64[1] = v69.i64[1];
          v76 = vcgtq_f32(vextq_s8(v72, v72, 0xCuLL), v74);
          v77 = vbslq_s8(v26, vandq_s8(v61, vcgtq_f32(vextq_s8(v74, v74, 8uLL), vextq_s8(v74, v74, 0xCuLL))), v74);
          v78 = vcgtq_f32(v71, v60);
          v79 = vcgtq_f32(vextq_s8(v73, v73, 0xCuLL), v75);
          v80 = vbslq_s8(v26, vandq_s8(v61, vcgtq_f32(vextq_s8(v75, v75, 8uLL), vextq_s8(v75, v75, 0xCuLL))), v75);
          v81 = vbslq_s8(v37, vsubq_f32(v77, vextq_s8(v77, v77, 4uLL)), v77);
          v82 = vbslq_s8(v37, vsubq_f32(v80, vextq_s8(v80, v80, 4uLL)), v80);
          v83 = vandq_s8(v60, v76);
          v84 = vandq_s8(v60, v79);
          v85 = vbslq_s8(v26, vbslq_s8(vcgtq_f32(v70, v60), v60, vrev64q_s32(v54)), v66);
          v86 = vbslq_s8(v26, vminq_f32(v81, vextq_s8(v83, v83, 8uLL)), v81);
          v87 = vbslq_s8(v26, vminq_f32(v82, vextq_s8(v84, v84, 8uLL)), v82);
          v88 = vbslq_s8(v26, vbslq_s8(v78, v60, vrev64q_s32(v55)), v67);
          v89 = vbslq_s8(v27, vandq_s8(v18, vcgeq_f32(v86, vrev64q_s32(v86))), v86);
          v90 = vbslq_s8(v27, vandq_s8(v18, vcgeq_f32(v87, vrev64q_s32(v87))), v87);
          v91 = vandq_s8(v60, vcgeq_f32(vextq_s8(v89, v89, 4uLL), v72));
          v92 = vandq_s8(v60, vcgeq_f32(vextq_s8(v90, v90, 4uLL), v73));
          v93 = vbslq_s8(v37, vmulq_laneq_f32(v85, v85, 2), v85);
          v94 = vbslq_s8(v37, vmulq_laneq_f32(v88, v88, 2), v88);
          v95 = vbslq_s8(v17, vandq_s8(v60, vcgeq_f32(vnegq_f32(v93), v61)), v93);
          v96 = vbslq_s8(v17, vandq_s8(v60, vcgeq_f32(vnegq_f32(v94), v61)), v94);
          v97 = vbslq_s8(v26, vandq_s8(v61, vcgeq_f32(vnegq_f32(v89), v60)), v89);
          v98 = vbslq_s8(v26, vandq_s8(v61, vcgeq_f32(vnegq_f32(v90), v60)), v90);
          v99 = vextq_s8(v95, v95, 8uLL);
          v100 = vextq_s8(v96, v96, 8uLL);
          v101 = vmulq_f32(v99, v97);
          v102 = vmulq_f32(v100, v98);
          v83.i64[0] = vextq_s8(v101, v101, 8uLL).u64[0];
          v70.i64[0] = vextq_s8(v102, v102, 8uLL).u64[0];
          *v103.f32 = vext_s8(*v97.f32, *v83.i8, 4uLL);
          v103.i64[1] = vextq_s8(v101, v97, 0xCuLL).u64[0];
          *v76.f32 = vext_s8(*v98.f32, *v70.f32, 4uLL);
          v76.i64[1] = vextq_s8(v102, v98, 0xCuLL).u64[0];
          v97.i64[1] = v101.i64[1];
          v98.i64[1] = v102.i64[1];
          v97.i64[0] = vminq_f32(v103, v97).u64[0];
          v98.i64[0] = vminq_f32(v76, v98).u64[0];
          v97.i64[1] = v101.i64[1];
          v98.i64[1] = v102.i64[1];
          v104 = vcgtq_f32(v97, v38);
          v105 = vcgtq_f32(v98, v38);
          v106 = vbslq_s8(v104, v99, vextq_s8(v95, *v14, 4uLL));
          v107 = vbslq_s8(v105, v100, vextq_s8(v96, *v14, 4uLL));
          v104.i64[0] = vextq_s8(v101, v106, 0xCuLL).u64[0];
          *&v104.u32[2] = vext_s8(*v106.i8, *v83.i8, 4uLL);
          v95.i64[0] = vextq_s8(v102, v107, 0xCuLL).u64[0];
          *&v95.u32[2] = vext_s8(*v107.i8, *v70.f32, 4uLL);
          v106.i64[1] = v101.i64[1];
          v107.i64[1] = v102.i64[1];
          v108 = vbslq_s8(v17, vmulq_lane_f32(v104, *v106.i8, 1), v106);
          v109 = vbslq_s8(v17, vmulq_lane_f32(v95, *v107.i8, 1), v107);
          v110 = vbslq_s8(v37, vbslq_s8(vcgtq_f32(vbslq_s8(v37, vminq_f32(vrev64q_s32(v108), vbslq_s8(v37, v91, v54)), v54), v61), vextq_s8(v108, v108, 4uLL), vextq_s8(v108, v108, 8uLL)), v54);
          v111 = vbslq_s8(v37, vbslq_s8(vcgtq_f32(vbslq_s8(v37, vminq_f32(vrev64q_s32(v109), vbslq_s8(v37, v92, v55)), v55), v61), vextq_s8(v109, v109, 4uLL), vextq_s8(v109, v109, 8uLL)), v55);
          v112 = vorrq_s8(vandq_s8(v110, v49), v60);
          v113 = *(v14 + 224);
          v114 = *(v14 + 240);
          v115 = vorrq_s8(vandq_s8(v111, v49), v60);
          v116 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v110, 0x17uLL)), vandq_s8(v113, vcgtq_f32(v63, v110))), v114);
          v117 = *(v14 + 256);
          v118 = *(v14 + 272);
          v119 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v111, 0x17uLL)), vandq_s8(v113, vcgtq_f32(v63, v111))), v114);
          v120 = vandq_s8(v60, vcgtq_f32(v112, v117));
          v121 = vandq_s8(v60, vcgtq_f32(v115, v117));
          v122 = vsubq_f32(vsubq_f32(v112, v60), vmulq_f32(vmulq_f32(v118, v120), v112));
          v123 = vsubq_f32(vsubq_f32(v115, v60), vmulq_f32(vmulq_f32(v118, v121), v115));
          v124 = *(v14 + 288);
          v125 = *(v14 + 304);
          v126 = vaddq_f32(v124, vmulq_f32(v125, v122));
          v127 = vaddq_f32(v124, vmulq_f32(v125, v123));
          v129 = *(v14 + 320);
          v128 = *(v14 + 336);
          v130 = vmulq_laneq_f32(vaddq_f32(vaddq_f32(v116, v120), vmulq_f32(v122, vaddq_f32(vaddq_f32(v129, vmulq_f32(v128, v122)), vmulq_f32(vmulq_f32(v122, v122), v126)))), *v14, 2);
          v131 = vmulq_laneq_f32(vaddq_f32(vaddq_f32(v119, v121), vmulq_f32(v123, vaddq_f32(vaddq_f32(v129, vmulq_f32(v128, v123)), vmulq_f32(vmulq_f32(v123, v123), v127)))), *v14, 2);
          v132 = *(v14 + 352);
          v133 = *(v14 + 368);
          v134 = vmaxq_f32(v130, v132);
          v135 = vmaxq_f32(v131, v132);
          v136 = vcvtq_f32_s32(vcvtq_s32_f32(v134));
          v137 = vcvtq_f32_s32(vcvtq_s32_f32(v135));
          v138 = vsubq_f32(v136, vandq_s8(v60, vcgtq_f32(v136, v134)));
          v139 = vsubq_f32(v137, vandq_s8(v60, vcgtq_f32(v137, v135)));
          v140 = vsubq_f32(v134, v138);
          v141 = vsubq_f32(v135, v139);
          v142 = *(v14 + 384);
          v143 = *(v14 + 400);
          v144 = vaddq_f32(v60, vmulq_f32(v141, vaddq_f32(v143, vmulq_f32(v141, vaddq_f32(v133, vmulq_f32(v142, v141))))));
          v145 = vmulq_f32(vaddq_f32(v60, vmulq_f32(v140, vaddq_f32(v143, vmulq_f32(v140, vaddq_f32(v133, vmulq_f32(v142, v140)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v138), v48), 0x17uLL));
          v146 = vmulq_f32(v144, vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v139), v48), 0x17uLL));
          v147 = vbslq_s8(v37, v145, v54);
          v148 = vbslq_s8(v37, v146, v55);
          v149 = (v5 + v12);
          v149[-1] = vbslq_s8(v37, v145, vmulq_laneq_f32(v147, v147, 3));
          *v149 = vbslq_s8(v37, v146, vmulq_laneq_f32(v148, v148, 3));
          v11 += 2;
          v12 += 32;
        }
      }

      if (v11 < v4)
      {
        v150 = *(a1 + 408);
        v151 = *v150;
        v152 = *(v150 + 16);
        v154 = *(v150 + 32);
        v153 = *(v150 + 48);
        v155 = vbslq_s8(v153, *(v8 + 16 * v11), vrev64q_s32(vandq_s8(v154, vcgtq_f32(*(v8 + 16 * v11), *v150))));
        v156 = vextq_s8(v151, v151, 8uLL);
        v157 = vandq_s8(v154, vcgeq_f32(v156, vextq_s8(v155, v155, 4uLL)));
        v158.i64[0] = v155.i64[0];
        v158.i64[1] = v157.i64[1];
        v155.i64[1] = vminq_f32(vextq_s8(v157, v155, 8uLL), v158).i64[1];
        v159 = *(v150 + 64);
        v160 = *(v150 + 80);
        v161 = vbslq_s8(v159, vsubq_f32(vextq_s8(v151, v151, 0xCuLL), v156), v155);
        v162 = vbslq_s8(v160, vmulq_laneq_f32(v156, v161, 2), v161);
        v164 = *(v150 + 96);
        v163 = *(v150 + 112);
        v165 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v162, 3), v164), *(v6 + 16 * v11), v164);
        v162.i64[1] = vaddq_f32(vextq_s8(*v150, *&v162, 0xCuLL), v162).i64[1];
        v166 = vaddq_f32(*v150, v162);
        v167 = vbslq_s8(v163, vextq_s8(v166, v166, 8uLL), v162);
        v168 = vbslq_s8(v163, vsubq_f32(v167, vmulq_laneq_f32(vextq_s8(v152, v152, 4uLL), v167, 2)), v162);
        v169 = vsubq_f32(*v150, vrev64q_s32(v168));
        v170 = vbslq_s8(v159, vaddq_f32(vmulq_lane_f32(v168, *v152.i8, 1), vextq_s8(v169, v169, 8uLL)), v168);
        v171 = *(v150 + 128);
        v172 = *(v150 + 144);
        *v168.f32 = vqtbl1_s8(v170, *v171.i8);
        *&v168.u32[2] = vqtbl1_s8(v170, *&vextq_s8(v171, v171, 8uLL));
        *v173.f32 = vqtbl1_s8(v170, *v172.i8);
        *&v173.u32[2] = vqtbl1_s8(v170, *&vextq_s8(v172, v172, 8uLL));
        v174 = vandq_s8(v154, vcgeq_f32(v173, v168));
        v175.i64[0] = vmaxq_f32(v174, vrev64q_s32(v174)).u64[0];
        v176 = vextq_s8(v170, v170, 8uLL);
        v175.i64[1] = vsubq_f32(v176, v170).i64[1];
        v178 = *(v150 + 160);
        v177 = *(v150 + 176);
        v179 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v170), v178), v177), *(v150 + 192));
        v180 = vbslq_s8(v160, vmulq_f32(v179, vrecpsq_f32(v170, v179)), v175);
        v181 = vmulq_laneq_f32(vdupq_lane_s64(v180.i64[0], 0), v180, 2);
        v182 = vextq_s8(v181, v180, 8uLL);
        v180.i64[1] = v181.i64[1];
        v183 = vbslq_s8(v159, vbslq_s8(vcgtq_f32(v182, v177), v177, vrev64q_s32(v165)), v180);
        v184 = vbslq_s8(v163, vsubq_f32(v170, v176), v165);
        v185 = vbslq_s8(v160, vaddq_f32(vextq_s8(v170, v170, 4uLL), v170), v170);
        v186 = vcgtq_f32(vextq_s8(v184, v184, 0xCuLL), v185);
        v187 = vbslq_s8(v159, vandq_s8(v178, vcgtq_f32(vextq_s8(v185, v185, 8uLL), vextq_s8(v185, v185, 0xCuLL))), v185);
        v188 = vbslq_s8(v163, vsubq_f32(v187, vextq_s8(v187, v187, 4uLL)), v187);
        v189 = vandq_s8(v177, v186);
        v190 = vbslq_s8(v159, vminq_f32(v188, vextq_s8(v189, v189, 8uLL)), v188);
        v191 = vbslq_s8(v160, vandq_s8(v154, vcgeq_f32(v190, vrev64q_s32(v190))), v190);
        v192 = vbslq_s8(v163, vandq_s8(v177, vcgeq_f32(vextq_s8(v191, v191, 4uLL), v184)), v165);
        v193 = vbslq_s8(v163, vmulq_laneq_f32(v183, v183, 2), v183);
        v194 = vbslq_s8(v153, vandq_s8(v177, vcgeq_f32(vnegq_f32(v193), v178)), v193);
        v195 = vbslq_s8(v159, vandq_s8(v178, vcgeq_f32(vnegq_f32(v191), v177)), v191);
        v196 = vextq_s8(v194, v194, 8uLL);
        v197 = vmulq_f32(v196, v195);
        v183.i64[0] = vextq_s8(v197, v197, 8uLL).u64[0];
        v189.i64[0] = vextq_s8(v197, v195, 0xCuLL).u64[0];
        *v186.f32 = vext_s8(*v195.f32, *v183.f32, 4uLL);
        v195.i64[1] = v197.i64[1];
        v186.i64[1] = v189.i64[0];
        v195.i64[0] = vminq_f32(v186, v195).u64[0];
        v195.i64[1] = v197.i64[1];
        v198 = vbslq_s8(vcgtq_f32(v195, v164), v196, vextq_s8(v194, *v150, 4uLL));
        v196.i64[0] = vextq_s8(v197, v198, 0xCuLL).u64[0];
        *&v196.u32[2] = vext_s8(*v198.i8, *v183.f32, 4uLL);
        v198.i64[1] = v197.i64[1];
        v199 = vbslq_s8(v153, vmulq_lane_f32(v196, *v198.i8, 1), v198);
        v200 = vbslq_s8(v163, vbslq_s8(vcgtq_f32(vbslq_s8(v163, vminq_f32(vrev64q_s32(v199), v192), v165), v178), vextq_s8(v199, v199, 4uLL), vextq_s8(v199, v199, 8uLL)), v165);
        v201 = vorrq_s8(vandq_s8(v200, v172), v177);
        v202 = vandq_s8(v177, vcgtq_f32(v201, *(v150 + 256)));
        v203 = vsubq_f32(vsubq_f32(v201, v177), vmulq_f32(vmulq_f32(*(v150 + 272), v202), v201));
        v204 = vmaxq_f32(vmulq_laneq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v200, 0x17uLL)), vandq_s8(*(v150 + 224), vcgtq_f32(*(v150 + 208), v200))), *(v150 + 240)), v202), vmulq_f32(v203, vaddq_f32(vaddq_f32(*(v150 + 320), vmulq_f32(*(v150 + 336), v203)), vmulq_f32(vmulq_f32(v203, v203), vaddq_f32(*(v150 + 288), vmulq_f32(*(v150 + 304), v203)))))), *v150, 2), *(v150 + 352));
        v205 = vcvtq_f32_s32(vcvtq_s32_f32(v204));
        v206 = vsubq_f32(v205, vandq_s8(v177, vcgtq_f32(v205, v204)));
        v207 = vsubq_f32(v204, v206);
        v208 = vmulq_f32(vaddq_f32(v177, vmulq_f32(v207, vaddq_f32(*(v150 + 400), vmulq_f32(v207, vaddq_f32(*(v150 + 368), vmulq_f32(*(v150 + 384), v207)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v206), v171), 0x17uLL));
        v209 = vbslq_s8(v163, v208, v165);
        *(v5 + 16 * v11) = vbslq_s8(v163, v208, vmulq_laneq_f32(v209, v209, 3));
      }

      v8 += v7;
      v6 += v10;
      v5 += v9;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcColorAndGradientStroke::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcColorAndGradientStroke::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcColorAndGradientStroke::HgcColorAndGradientStroke(HgcColorAndGradientStroke *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DBA30;
  operator new();
}

void HgcColorAndGradientStroke::~HgcColorAndGradientStroke(HGNode *this)
{
  *this = &unk_2871DBA30;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C407DC911DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcColorAndGradientStroke::~HgcColorAndGradientStroke(this);

  HGObject::operator delete(v1);
}

uint64_t HgcColorAndGradientStroke::SetParameter(HgcColorAndGradientStroke *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcColorAndGradientStroke::GetParameter(HgcColorAndGradientStroke *this, unsigned int a2, float *a3)
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

double HgcColorAndGradientStroke::State::State(HgcColorAndGradientStroke::State *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = xmmword_260344950;
  *(this + 3) = xmmword_2603444B0;
  *(this + 4) = xmmword_260344660;
  *(this + 5) = xmmword_260344670;
  *(this + 12) = 0;
  *(this + 13) = 0;
  *(this + 7) = xmmword_260344600;
  *(this + 8) = xmmword_260344960;
  *(this + 9) = xmmword_260344970;
  *(this + 10) = xmmword_260344980;
  v1.i64[0] = 0x80000000800000;
  v1.i64[1] = 0x80000000800000;
  *(this + 11) = xmmword_260344990;
  *(this + 12) = vnegq_f32(v1);
  *(this + 13) = xmmword_2603444D0;
  *(this + 14) = xmmword_2603444E0;
  *(this + 15) = xmmword_2603444F0;
  *(this + 16) = xmmword_260344500;
  *(this + 17) = xmmword_260344510;
  *(this + 18) = xmmword_2603449A0;
  *(this + 19) = xmmword_2603449B0;
  *(this + 20) = xmmword_2603449C0;
  *(this + 21) = xmmword_2603449D0;
  *(this + 22) = xmmword_260344590;
  *(this + 23) = xmmword_2603449E0;
  *(this + 24) = xmmword_2603449F0;
  result = 0.0;
  *(this + 25) = xmmword_260344A00;
  return result;
}

const char *HgcOutlineGradientStroke::GetProgram(HgcOutlineGradientStroke *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000008d1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.z = half(hg_Params[0].y) - half(hg_Params[0].x);\n    r1.x = r0.x - half(hg_Params[0].x);\n    r1.x = clamp(r1.x/r0.z, 0.00000h, 1.00000h);\n    r0.y = half(half(hg_Params[0].x) < r0.x);\n    r0.w = half(half(hg_Params[0].y) >= r0.x);\n    r0.w = fmin(r0.y, r0.w);\n    r0.y = r0.z*half(hg_Params[0].w);\n    r1.x = r0.z*r1.x;\n    r1.y = c0.y;\n    r1.xy = r1.xy + half2(hg_Params[2].xy);\n    r1.xy = r1.xy*half2(hg_Params[2].zw);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r1.xy));\n    r1 = select(c0.xxxx, r1, -r0.wwww < 0.00000h);\n    r0.z = r0.z + r0.y;\n    r0.w = r0.y + half(hg_Params[0].y);\n    r0.w = -r0.z*half(hg_Params[1].x) + r0.w;\n    r2.x = half(hg_Params[0].x) - r0.y;\n    r0.z = r0.z*half(hg_Params[1].y) + r2.x;\n    r2.xy = half2(r0.zx >= r0.xw);\n    r2.x = fmax(r2.x, r2.y);\n    r2.z = r0.x - r0.z;\n    r2.y = 1.00000h / r0.y;\n    r2.w = r2.z*r2.y;\n    r2.z = select(r1.w, c0.x, -r2.x < 0.00000h);\n    r1.w = r0.w - r0.y;\n    r0.y = r0.z + r0.y;\n    r3.x = half(r0.x < r1.w);\n    r0.z = half(r0.y < r0.x);\n    r0.w = r0.w - r0.x;\n    r0.z = fmin(r0.z, r3.x);\n    r0.y = half(r0.y >= r0.x);\n    r1.w = half(r0.x >= r1.w);\n    r2.w = r2.z*r2.w;\n    r2.x = half(-r2.x >= c0.x);\n    r0.z = half(-r0.z >= c0.x);\n    r0.zw = r2.xy*r0.zw;\n    r0.y = fmin(r0.z, r0.y);\n    r0.y = select(r2.z, r2.w, -r0.y < 0.00000h);\n    r0.x = r0.y*r0.w;\n    r1.w = fmin(r0.z, r1.w);\n    r1.w = select(r0.y, r0.x, -r1.w < 0.00000h);\n    r1.w = pow(r1.w, half(hg_Params[0].z));\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = float4(r1);\n    return output;\n}\n//MD5=23aec663:a1006d38:1aab4f17:4fa0d840\n//SIG=00400000:00000001:00000001:00000003:0001:0003:0004:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000870\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.z = hg_Params[0].y - hg_Params[0].x;\n    r1.x = r0.x - hg_Params[0].x;\n    r1.x = clamp(r1.x/r0.z, 0.00000f, 1.00000f);\n    r0.y = float(hg_Params[0].x < r0.x);\n    r0.w = float(hg_Params[0].y >= r0.x);\n    r0.w = fmin(r0.y, r0.w);\n    r0.y = r0.z*hg_Params[0].w;\n    r1.x = r0.z*r1.x;\n    r1.y = c0.y;\n    r1.xy = r1.xy + hg_Params[2].xy;\n    r1.xy = r1.xy*hg_Params[2].zw;\n    r1 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n    r1 = select(c0.xxxx, r1, -r0.wwww < 0.00000f);\n    r0.z = r0.z + r0.y;\n    r0.w = r0.y + hg_Params[0].y;\n    r0.w = -r0.z*hg_Params[1].x + r0.w;\n    r2.x = hg_Params[0].x - r0.y;\n    r0.z = r0.z*hg_Params[1].y + r2.x;\n    r2.xy = float2(r0.zx >= r0.xw);\n    r2.x = fmax(r2.x, r2.y);\n    r2.z = r0.x - r0.z;\n    r2.y = 1.00000f / r0.y;\n    r2.w = r2.z*r2.y;\n    r2.z = select(r1.w, c0.x, -r2.x < 0.00000f);\n    r1.w = r0.w - r0.y;\n    r0.y = r0.z + r0.y;\n    r3.x = float(r0.x < r1.w);\n    r0.z = float(r0.y < r0.x);\n    r0.w = r0.w - r0.x;\n    r0.z = fmin(r0.z, r3.x);\n    r0.y = float(r0.y >= r0.x);\n    r1.w = float(r0.x >= r1.w);\n    r2.w = r2.z*r2.w;\n    r2.x = float(-r2.x >= c0.x);\n    r0.z = float(-r0.z >= c0.x);\n    r0.zw = r2.xy*r0.zw;\n    r0.y = fmin(r0.z, r0.y);\n    r0.y = select(r2.z, r2.w, -r0.y < 0.00000f);\n    r0.x = r0.y*r0.w;\n    r1.w = fmin(r0.z, r1.w);\n    r1.w = select(r0.y, r0.x, -r1.w < 0.00000f);\n    r1.w = pow(r1.w, hg_Params[0].z);\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = r1;\n    return output;\n}\n//MD5=2d2bf367:a80b0c77:40425e29:ddb955b0\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000008c5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.z = hg_ProgramLocal0.y - hg_ProgramLocal0.x;\n    r1.x = r0.x - hg_ProgramLocal0.x;\n    r1.x = clamp(r1.x/r0.z, 0.00000, 1.00000);\n    r0.y = float(hg_ProgramLocal0.x < r0.x);\n    r0.w = float(hg_ProgramLocal0.y >= r0.x);\n    r0.w = min(r0.y, r0.w);\n    r0.y = r0.z*hg_ProgramLocal0.w;\n    r1.x = r0.z*r1.x;\n    r1.y = c0.y;\n    r1.xy = r1.xy + hg_ProgramLocal2.xy;\n    r1.xy = r1.xy*hg_ProgramLocal2.zw;\n    r1 = texture2D(hg_Texture1, r1.xy);\n    r1 = vec4(-r0.w < 0.00000 ? r1.x : c0.x, -r0.w < 0.00000 ? r1.y : c0.x, -r0.w < 0.00000 ? r1.z : c0.x, -r0.w < 0.00000 ? r1.w : c0.x);\n    r0.z = r0.z + r0.y;\n    r0.w = r0.y + hg_ProgramLocal0.y;\n    r0.w = -r0.z*hg_ProgramLocal1.x + r0.w;\n    r2.x = hg_ProgramLocal0.x - r0.y;\n    r0.z = r0.z*hg_ProgramLocal1.y + r2.x;\n    r2.xy = vec2(greaterThanEqual(r0.zx, r0.xw));\n    r2.x = max(r2.x, r2.y);\n    r2.z = r0.x - r0.z;\n    r2.y = 1.00000 / r0.y;\n    r2.w = r2.z*r2.y;\n    r2.z = -r2.x < 0.00000 ? c0.x : r1.w;\n    r1.w = r0.w - r0.y;\n    r0.y = r0.z + r0.y;\n    r3.x = float(r0.x < r1.w);\n    r0.z = float(r0.y < r0.x);\n    r0.w = r0.w - r0.x;\n    r0.z = min(r0.z, r3.x);\n    r0.y = float(r0.y >= r0.x);\n    r1.w = float(r0.x >= r1.w);\n    r2.w = r2.z*r2.w;\n    r2.x = float(-r2.x >= c0.x);\n    r0.z = float(-r0.z >= c0.x);\n    r0.zw = r2.xy*r0.zw;\n    r0.y = min(r0.z, r0.y);\n    r0.y = -r0.y < 0.00000 ? r2.w : r2.z;\n    r0.x = r0.y*r0.w;\n    r1.w = min(r0.z, r1.w);\n    r1.w = -r1.w < 0.00000 ? r0.x : r0.y;\n    r1.w = pow(r1.w, hg_ProgramLocal0.z);\n    r1.xyz = r1.xyz*r1.www;\n    gl_FragColor = r1;\n}\n//MD5=a3aaa346:e66c7ddd:eac16ee8:b26dc26e\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:02:0:1:0\n";
  }
}

void sub_25FA53A0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA53B8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA53BDC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA53BD4);
}

uint64_t HgcOutlineGradientStroke::BindTexture(HgcOutlineGradientStroke *this, HGHandler *a2, int a3)
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
    (*(*a2 + 136))(a2, 2, v6, v7, v8, v9);
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

uint64_t HgcOutlineGradientStroke::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcOutlineGradientStroke::RenderTile(HgcOutlineGradientStroke *this, HGTile *a2)
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
      if (v10 < 2)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        v17 = 16;
        for (i = v10; i > 1; i -= 2)
        {
          v19 = *(v12 + v17 - 16);
          v20 = *(this + 51);
          v21 = *v20;
          v22 = vextq_s8(v21, v21, 8uLL);
          v23 = vsubq_f32(vextq_s8(v9, *v20, 0xCuLL), v22);
          v24 = vextq_s8(v23, v19, 8uLL);
          v19.i64[1] = v23.i64[1];
          v25 = vextq_s8(v23, *(v12 + v17), 8uLL);
          v26.i64[0] = *(v12 + v17);
          v26.i64[1] = v23.i64[1];
          v27 = *(v20 + 32);
          v28 = *(v20 + 48);
          v30 = *(v20 + 64);
          v29 = *(v20 + 80);
          v31 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v24), v27), v28), v30);
          v32 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v25), v27), v28), v30);
          v33 = vmulq_f32(vsubq_f32(v26, *v20), vmulq_f32(v32, vrecpsq_f32(v25, v32)));
          v34 = vmaxq_f32(vmulq_f32(vsubq_f32(v19, *v20), vmulq_f32(v31, vrecpsq_f32(v24, v31))), v29);
          v35 = *(v20 + 96);
          v36 = *(v20 + 112);
          v37 = vminq_f32(v34, v35);
          v38 = vminq_f32(vmaxq_f32(v33, v29), v35);
          v39 = vmvnq_s8(v36);
          v40 = vbslq_s8(v36, vrev64q_s32(vandq_s8(v35, vcgtq_f32(v19, *v20))), v19);
          v41 = vbslq_s8(v36, vrev64q_s32(vandq_s8(v35, vcgtq_f32(v26, *v20))), v26);
          v42 = *(v20 + 128);
          v43 = vmvnq_s8(v42);
          v44 = vbslq_s8(v42, vandq_s8(v35, vcgeq_f32(v22, vextq_s8(v40, v40, 4uLL))), v40);
          v45 = vbslq_s8(v42, vandq_s8(v35, vcgeq_f32(v22, vextq_s8(v41, v41, 4uLL))), v41);
          v46 = vbslq_s8(v42, vminq_f32(vextq_s8(v44, v44, 8uLL), v44), v40);
          v47 = vbslq_s8(v42, vminq_f32(vextq_s8(v45, v45, 8uLL), v45), v41);
          v48 = vbslq_s8(v36, vmulq_laneq_f32(v22, v46, 2), v46);
          v49 = vbslq_s8(v36, vmulq_laneq_f32(v22, v47, 2), v47);
          v50 = vmulq_laneq_f32(v37, v48, 2);
          v50.i32[1] = 0.5;
          v51 = vmulq_laneq_f32(v38, v49, 2);
          v51.i32[1] = 0.5;
          v52 = *(a2 + 26);
          v53 = vsubq_f32(v50, v9);
          v54 = *(a2 + 12);
          if (v5)
          {
            v55 = vaddq_s32(vcvtq_s32_f32(v53), vcltzq_f32(v53));
            v56 = vsubq_f32(v53, vcvtq_f32_s32(v55)).u64[0];
            v57 = vsubq_f32(v51, v9);
            v58 = vaddq_s32(vcvtq_s32_f32(v57), vcltzq_f32(v57));
            v59 = vsubq_f32(v57, vcvtq_f32_s32(v58)).u64[0];
            *v55.i8 = vmla_s32(vzip1_s32(*v55.i8, *v58.i8), vzip2_s32(*v55.i8, *v58.i8), vdup_n_s32(v52));
            v60 = (v54 + 16 * v55.i32[0]);
            v61 = vaddq_f32(*v60, vmulq_n_f32(vsubq_f32(v60[1], *v60), v56.f32[0]));
            v62 = vaddq_f32(v61, vmulq_lane_f32(vsubq_f32(vaddq_f32(v60[v52], vmulq_n_f32(vsubq_f32(v60[v52 + 1], v60[v52]), v56.f32[0])), v61), v56, 1));
            v63 = (v54 + 16 * v55.i32[1]);
            v64 = vaddq_f32(*v63, vmulq_n_f32(vsubq_f32(v63[1], *v63), v59.f32[0]));
            v65 = vaddq_f32(v64, vmulq_lane_f32(vsubq_f32(vaddq_f32(v63[v52], vmulq_n_f32(vsubq_f32(v63[v52 + 1], v63[v52]), v59.f32[0])), v64), v59, 1));
          }

          else
          {
            v66 = vaddq_f32(v53, v15);
            v67 = vcvtq_s32_f32(v66);
            v68 = vaddq_f32(vsubq_f32(v51, v9), v15);
            v69 = vcvtq_s32_f32(v68);
            *v66.f32 = vadd_s32(*v67.i8, *&vcgtq_f32(vcvtq_f32_s32(v67), v66));
            *v68.f32 = vadd_s32(*v69.i8, *&vcgtq_f32(vcvtq_f32_s32(v69), v68));
            *v68.f32 = vmla_s32(vzip1_s32(*v66.f32, *v68.f32), vzip2_s32(*v66.f32, *v68.f32), vdup_n_s32(v52));
            v70 = v68.i32[1];
            v62 = *(v54 + 16 * v68.i32[0]);
            v65 = *(v54 + 16 * v70);
          }

          v71 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v48, 3), v29), v62, v29);
          v72 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v49, 3), v29), v65, v29);
          v48.i64[1] = vaddq_f32(vextq_s8(*&v9, *&v48, 0xCuLL), v48).i64[1];
          v49.i64[1] = vaddq_f32(vextq_s8(*&v9, *&v49, 0xCuLL), v49).i64[1];
          v73 = vaddq_f32(v21, v48);
          v74 = vaddq_f32(v21, v49);
          v75 = vandq_s8(v48, v43);
          v76 = vorrq_s8(vandq_s8(v42, vextq_s8(v73, v73, 8uLL)), v75);
          v77 = vandq_s8(v49, v43);
          v78 = vorrq_s8(vandq_s8(v42, vextq_s8(v74, v74, 8uLL)), v77);
          v79 = *(v20 + 16);
          v80 = vextq_s8(v79, v79, 4uLL);
          v81 = vorrq_s8(vandq_s8(v42, vsubq_f32(v76, vmulq_laneq_f32(v80, v76, 2))), v75);
          v82 = vorrq_s8(vandq_s8(v42, vsubq_f32(v78, vmulq_laneq_f32(v80, v78, 2))), v77);
          v83 = vsubq_f32(v21, vrev64q_s32(v81));
          v84 = vsubq_f32(v21, vrev64q_s32(v82));
          v85 = vaddq_f32(vmulq_lane_f32(v81, *v79.i8, 1), vextq_s8(v83, v83, 8uLL));
          v86 = vaddq_f32(vmulq_lane_f32(v82, *v79.i8, 1), vextq_s8(v84, v84, 8uLL));
          v88 = *(v20 + 144);
          v87 = *(v20 + 160);
          v89 = vbslq_s8(v88, v85, v81);
          *v90.f32 = vqtbl1_s8(v89, *v87.i8);
          v81.i64[0] = vextq_s8(v87, v87, 8uLL).u64[0];
          *&v90.u32[2] = vqtbl1_s8(v89, *v81.f32);
          v91 = vbslq_s8(v88, v86, v82);
          *v92.f32 = vqtbl1_s8(v91, *v87.i8);
          *&v92.u32[2] = vqtbl1_s8(v91, *v81.f32);
          v93 = *(v20 + 176);
          v94 = *(v20 + 192);
          *v95.f32 = vqtbl1_s8(v89, *v93.i8);
          v96 = vextq_s8(v93, v93, 8uLL).u64[0];
          *&v95.u32[2] = vqtbl1_s8(v89, v96);
          *v97.f32 = vqtbl1_s8(v91, *v93.i8);
          *&v97.u32[2] = vqtbl1_s8(v91, v96);
          v98 = vandq_s8(v35, vcgeq_f32(v95, v90));
          v99 = vandq_s8(v35, vcgeq_f32(v97, v92));
          v98.i64[0] = vmaxq_f32(v98, vrev64q_s32(v98)).u64[0];
          v99.i64[0] = vmaxq_f32(v99, vrev64q_s32(v99)).u64[0];
          v100 = vextq_s8(v89, v89, 8uLL);
          v101 = vextq_s8(v91, v91, 8uLL);
          v98.i64[1] = vsubq_f32(v100, v89).i64[1];
          v99.i64[1] = vsubq_f32(v101, v91).i64[1];
          v102 = vminq_f32(vmaxq_f32(vmulq_f32(v28, vrecpeq_f32(v89)), v27), v30);
          v103 = vminq_f32(vmaxq_f32(vmulq_f32(v28, vrecpeq_f32(v91)), v27), v30);
          v104 = vorrq_s8(vandq_s8(v36, vmulq_f32(v102, vrecpsq_f32(v89, v102))), vandq_s8(v98, v39));
          v105 = vorrq_s8(vandq_s8(v36, vmulq_f32(v103, vrecpsq_f32(v91, v103))), vandq_s8(v99, v39));
          v106 = vmulq_laneq_f32(vdupq_lane_s64(v104.i64[0], 0), v104, 2);
          v107 = vmulq_laneq_f32(vdupq_lane_s64(v105.i64[0], 0), v105, 2);
          v108 = vextq_s8(v106, v104, 8uLL);
          v104.i64[1] = v106.i64[1];
          v109 = vextq_s8(v107, v105, 8uLL);
          v105.i64[1] = v107.i64[1];
          v110 = vbslq_s8(vcgtq_f32(v108, v35), v35, vrev64q_s32(v71));
          v111 = vbslq_s8(vcgtq_f32(v109, v35), v35, vrev64q_s32(v72));
          v112 = vbslq_s8(v88, v110, v104);
          v113 = vbslq_s8(v88, v111, v105);
          v114 = vsubq_f32(v89, v100);
          v115 = vsubq_f32(v91, v101);
          v116 = vandq_s8(v42, v114);
          v117 = vandq_s8(v71, v43);
          v118 = vorrq_s8(v116, v117);
          v119 = vandq_s8(v72, v43);
          v120 = vorrq_s8(vandq_s8(v42, v115), v119);
          v121 = vorrq_s8(vandq_s8(v36, vaddq_f32(vextq_s8(v89, v89, 4uLL), v89)), vandq_s8(v89, v39));
          v122 = vorrq_s8(vandq_s8(v36, vaddq_f32(vextq_s8(v91, v91, 4uLL), v91)), vandq_s8(v91, v39));
          v123 = vcgtq_f32(vextq_s8(v118, v118, 0xCuLL), v121);
          v124 = vcgtq_f32(vextq_s8(v120, v120, 0xCuLL), v122);
          v125 = vbslq_s8(v88, vandq_s8(v28, vcgtq_f32(vextq_s8(v121, v121, 8uLL), vextq_s8(v121, v121, 0xCuLL))), v121);
          v126 = vbslq_s8(v88, vandq_s8(v28, vcgtq_f32(vextq_s8(v122, v122, 8uLL), vextq_s8(v122, v122, 0xCuLL))), v122);
          v127 = vorrq_s8(vandq_s8(v42, vsubq_f32(v125, vextq_s8(v125, v125, 4uLL))), vandq_s8(v125, v43));
          v128 = vorrq_s8(vandq_s8(v42, vsubq_f32(v126, vextq_s8(v126, v126, 4uLL))), vandq_s8(v126, v43));
          v129 = vandq_s8(v35, v123);
          v130 = vandq_s8(v35, v124);
          v131 = vbslq_s8(v88, vminq_f32(v127, vextq_s8(v129, v129, 8uLL)), v127);
          v132 = vbslq_s8(v88, vminq_f32(v128, vextq_s8(v130, v130, 8uLL)), v128);
          v133 = vandq_s8(v35, v36);
          v134 = vorrq_s8(vandq_s8(v133, vcgeq_f32(v131, vrev64q_s32(v131))), vandq_s8(v131, v39));
          v135 = vorrq_s8(vandq_s8(v133, vcgeq_f32(v132, vrev64q_s32(v132))), vandq_s8(v132, v39));
          v136 = vcgeq_f32(vextq_s8(v134, v134, 4uLL), v118);
          v137 = vandq_s8(v35, v42);
          v138 = vorrq_s8(vandq_s8(v137, v136), v117);
          v139 = vorrq_s8(vandq_s8(v137, vcgeq_f32(vextq_s8(v135, v135, 4uLL), v120)), v119);
          v140 = vorrq_s8(vandq_s8(v42, vmulq_laneq_f32(v112, v112, 2)), vandq_s8(v112, v43));
          v141 = vorrq_s8(vandq_s8(v42, vmulq_laneq_f32(v113, v113, 2)), vandq_s8(v113, v43));
          v142 = vbslq_s8(v94, vandq_s8(v35, vcgeq_f32(vnegq_f32(v140), v29)), v140);
          v143 = vbslq_s8(v94, vandq_s8(v35, vcgeq_f32(vnegq_f32(v141), v29)), v141);
          v144 = vbslq_s8(v88, vandq_s8(v28, vcgeq_f32(vnegq_f32(v134), v35)), v134);
          v145 = vbslq_s8(v88, vandq_s8(v28, vcgeq_f32(vnegq_f32(v135), v35)), v135);
          v146 = vextq_s8(v142, v142, 8uLL);
          v147 = vextq_s8(v143, v143, 8uLL);
          v148 = vmulq_f32(v146, v144);
          v149 = vmulq_f32(v147, v145);
          v130.i64[0] = vextq_s8(v148, v148, 8uLL).u64[0];
          v111.i64[0] = vextq_s8(v148, v144, 0xCuLL).u64[0];
          *v150.f32 = vext_s8(*v144.f32, *v130.i8, 4uLL);
          v144.i64[1] = v148.i64[1];
          v151 = vextq_s8(v149, v149, 8uLL).u64[0];
          v150.i64[1] = v111.i64[0];
          v111.i64[0] = vextq_s8(v149, v145, 0xCuLL).u64[0];
          *v152.f32 = vext_s8(*v145.f32, v151, 4uLL);
          v145.i64[1] = v149.i64[1];
          v152.i64[1] = v111.i64[0];
          v144.i64[0] = vminq_f32(v150, v144).u64[0];
          v145.i64[0] = vminq_f32(v152, v145).u64[0];
          v144.i64[1] = v148.i64[1];
          v145.i64[1] = v149.i64[1];
          v153 = vbslq_s8(vcgtq_f32(v144, v29), v146, vextq_s8(v142, v9, 4uLL));
          v154 = vbslq_s8(vcgtq_f32(v145, v29), v147, vextq_s8(v143, v9, 4uLL));
          v142.i64[0] = vextq_s8(v148, v153, 0xCuLL).u64[0];
          *&v142.u32[2] = vext_s8(*v153.i8, *v130.i8, 4uLL);
          v155 = vmulq_lane_f32(v142, *v153.i8, 1);
          v153.i64[1] = v148.i64[1];
          v142.i64[0] = vextq_s8(v149, v154, 0xCuLL).u64[0];
          *&v142.u32[2] = vext_s8(*v154.i8, v151, 4uLL);
          v154.i64[1] = v149.i64[1];
          v156 = vbslq_s8(v94, v155, v153);
          v157 = vbslq_s8(v94, vmulq_lane_f32(v142, *v154.i8, 1), v154);
          v158 = vorrq_s8(vandq_s8(vbslq_s8(vcgtq_f32(vorrq_s8(vandq_s8(v42, vminq_f32(vrev64q_s32(v156), v138)), v117), v29), vextq_s8(v156, v156, 4uLL), vextq_s8(v156, v156, 8uLL)), v42), v117);
          v159 = vorrq_s8(vandq_s8(vbslq_s8(vcgtq_f32(vorrq_s8(vandq_s8(v42, vminq_f32(vrev64q_s32(v157), v139)), v119), v29), vextq_s8(v157, v157, 4uLL), vextq_s8(v157, v157, 8uLL)), v42), v119);
          v160 = vorrq_s8(vandq_s8(v158, v93), v35);
          v161 = vorrq_s8(vandq_s8(v159, v93), v35);
          v162 = vandq_s8(v27, vcgtq_f32(v28, v158));
          v163 = vandq_s8(v27, vcgtq_f32(v28, v159));
          v164 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v158, 0x17uLL)), v162);
          v165 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v159, 0x17uLL)), v163);
          v166 = *(v20 + 208);
          v167 = *(v20 + 224);
          v168 = vsubq_f32(v164, v166);
          v169 = vsubq_f32(v165, v166);
          v170 = vandq_s8(v35, vcgtq_f32(v160, v167));
          v171 = vandq_s8(v35, vcgtq_f32(v161, v167));
          v172 = vaddq_f32(v168, v170);
          v173 = vaddq_f32(v169, v171);
          v174 = *(v20 + 240);
          v175 = *(v20 + 256);
          v176 = vsubq_f32(vsubq_f32(v160, v35), vmulq_f32(vmulq_f32(v174, v170), v160));
          v177 = vsubq_f32(vsubq_f32(v161, v35), vmulq_f32(vmulq_f32(v174, v171), v161));
          v178 = *(v20 + 272);
          v179 = *(v20 + 288);
          v180 = vaddq_f32(v175, vmulq_f32(v178, v176));
          v181 = vaddq_f32(v175, vmulq_f32(v178, v177));
          v182 = *(v20 + 304);
          v183 = *(v20 + 320);
          v184 = vmulq_laneq_f32(vaddq_f32(v172, vmulq_f32(v176, vaddq_f32(vaddq_f32(v179, vmulq_f32(v182, v176)), vmulq_f32(vmulq_f32(v176, v176), v180)))), v21, 2);
          v185 = vmulq_laneq_f32(vaddq_f32(v173, vmulq_f32(v177, vaddq_f32(vaddq_f32(v179, vmulq_f32(v182, v177)), vmulq_f32(vmulq_f32(v177, v177), v181)))), v21, 2);
          v186 = vmaxq_f32(v184, v183);
          v187 = vmaxq_f32(v185, v183);
          v188 = vcvtq_f32_s32(vcvtq_s32_f32(v186));
          v189 = vcvtq_f32_s32(vcvtq_s32_f32(v187));
          v190 = vsubq_f32(v188, vandq_s8(v35, vcgtq_f32(v188, v186)));
          v191 = vsubq_f32(v189, vandq_s8(v35, vcgtq_f32(v189, v187)));
          v192 = vsubq_f32(v186, v190);
          v193 = vsubq_f32(v187, v191);
          v194 = *(v20 + 336);
          v195 = *(v20 + 352);
          v196 = vaddq_f32(v194, vmulq_f32(v195, v192));
          v197 = vaddq_f32(v194, vmulq_f32(v195, v193));
          v198 = *(v20 + 368);
          v199 = vaddq_f32(v35, vmulq_f32(v193, vaddq_f32(v198, vmulq_f32(v193, v197))));
          v200 = vandq_s8(v42, vmulq_f32(vaddq_f32(v35, vmulq_f32(v192, vaddq_f32(v198, vmulq_f32(v192, v196)))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v190), v87), 0x17uLL)));
          v201 = vorrq_s8(v200, v117);
          v202 = vandq_s8(v42, vmulq_f32(v199, vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v191), v87), 0x17uLL)));
          v203 = vorrq_s8(v202, v119);
          v204 = (v11 + v17);
          v204[-1] = vorrq_s8(vandq_s8(vmulq_laneq_f32(v201, v201, 3), v43), v200);
          *v204 = vorrq_s8(vandq_s8(vmulq_laneq_f32(v203, v203, 3), v43), v202);
          v16 += 2;
          v17 += 32;
        }
      }

      if (v16 < v10)
      {
        v205 = *(this + 51);
        v206 = *v205;
        v207 = vextq_s8(v206, v206, 8uLL);
        v208 = vsubq_f32(vextq_s8(v9, *v205, 0xCuLL), v207);
        v209 = vextq_s8(v208, *(v12 + 16 * v16), 8uLL);
        v210.i64[0] = *(v12 + 16 * v16);
        v210.i64[1] = v208.i64[1];
        v211 = *(v205 + 32);
        v212 = *(v205 + 48);
        v214 = *(v205 + 64);
        v213 = *(v205 + 80);
        v215 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v209), v211), v212), v214);
        v216 = *(v205 + 96);
        v217 = *(v205 + 112);
        v218 = vminq_f32(vmaxq_f32(vmulq_f32(vsubq_f32(v210, *v205), vmulq_f32(v215, vrecpsq_f32(v209, v215))), v213), v216);
        v219 = vbslq_s8(v217, vrev64q_s32(vandq_s8(v216, vcgtq_f32(v210, *v205))), v210);
        v220 = *(v205 + 128);
        v221 = vbslq_s8(v220, vandq_s8(v216, vcgeq_f32(v207, vextq_s8(v219, v219, 4uLL))), v219);
        v222 = vbslq_s8(v220, vminq_f32(vextq_s8(v221, v221, 8uLL), v221), v219);
        v223 = vbslq_s8(v217, vmulq_laneq_f32(v207, v222, 2), v222);
        v224 = vmulq_laneq_f32(v218, v223, 2);
        v224.i32[1] = 0.5;
        v225 = *(a2 + 26);
        v226 = vsubq_f32(v224, v9);
        v227 = *(a2 + 12);
        if (v5)
        {
          v228 = vaddq_s32(vcvtq_s32_f32(v226), vcltzq_f32(v226));
          v229 = vsubq_f32(v226, vcvtq_f32_s32(v228)).u64[0];
          v230 = (v227 + 16 * (v228.i32[0] + v228.i32[1] * v225));
          v231 = vaddq_f32(*v230, vmulq_n_f32(vsubq_f32(v230[1], *v230), v229.f32[0]));
          v232 = vaddq_f32(v231, vmulq_lane_f32(vsubq_f32(vaddq_f32(v230[v225], vmulq_n_f32(vsubq_f32(v230[v225 + 1], v230[v225]), v229.f32[0])), v231), v229, 1));
        }

        else
        {
          v233 = vaddq_f32(v226, v15);
          v234 = vcvtq_s32_f32(v233);
          v233.i64[0] = vaddq_s32(v234, vcgtq_f32(vcvtq_f32_s32(v234), v233)).u64[0];
          v232 = *(v227 + 16 * (v233.i32[0] + v233.i32[1] * v225));
        }

        v235 = vmvnq_s8(v217);
        v236 = vmvnq_s8(v220);
        v237 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v223, 3), v213), v232, v213);
        v223.i64[1] = vaddq_f32(vextq_s8(*&v9, *&v223, 0xCuLL), v223).i64[1];
        v238 = vaddq_f32(v206, v223);
        v239 = vandq_s8(v223, v236);
        v240 = vorrq_s8(vandq_s8(v220, vextq_s8(v238, v238, 8uLL)), v239);
        v241 = *(v205 + 16);
        v242 = vorrq_s8(vandq_s8(v220, vsubq_f32(v240, vmulq_laneq_f32(vextq_s8(v241, v241, 4uLL), v240, 2))), v239);
        v243 = vsubq_f32(v206, vrev64q_s32(v242));
        v244 = vaddq_f32(vmulq_lane_f32(v242, *v241.i8, 1), vextq_s8(v243, v243, 8uLL));
        v246 = *(v205 + 144);
        v245 = *(v205 + 160);
        v247 = vbslq_s8(v246, v244, v242);
        *v248.f32 = vqtbl1_s8(v247, *v245.i8);
        *&v248.u32[2] = vqtbl1_s8(v247, *&vextq_s8(v245, v245, 8uLL));
        v249 = *(v205 + 176);
        v250 = *(v205 + 192);
        *v251.f32 = vqtbl1_s8(v247, *v249.i8);
        *&v251.u32[2] = vqtbl1_s8(v247, *&vextq_s8(v249, v249, 8uLL));
        v252 = vandq_s8(v216, vcgeq_f32(v251, v248));
        v252.i64[0] = vmaxq_f32(v252, vrev64q_s32(v252)).u64[0];
        v253 = vextq_s8(v247, v247, 8uLL);
        v252.i64[1] = vsubq_f32(v253, v247).i64[1];
        v254 = vminq_f32(vmaxq_f32(vmulq_f32(v212, vrecpeq_f32(v247)), v211), v214);
        v255 = vorrq_s8(vandq_s8(v252, v235), vandq_s8(v217, vmulq_f32(v254, vrecpsq_f32(v247, v254))));
        v256 = vmulq_laneq_f32(vdupq_lane_s64(v255.i64[0], 0), v255, 2);
        v257 = vextq_s8(v256, v255, 8uLL);
        v255.i64[1] = v256.i64[1];
        v258 = vbslq_s8(v246, vbslq_s8(vcgtq_f32(v257, v216), v216, vrev64q_s32(v237)), v255);
        v259 = vandq_s8(v237, v236);
        v260 = vorrq_s8(vandq_s8(v220, vsubq_f32(v247, v253)), v259);
        v261 = vorrq_s8(vandq_s8(v217, vaddq_f32(vextq_s8(v247, v247, 4uLL), v247)), vandq_s8(v247, v235));
        v262 = vcgtq_f32(vextq_s8(v260, v260, 0xCuLL), v261);
        v263 = vbslq_s8(v246, vandq_s8(v212, vcgtq_f32(vextq_s8(v261, v261, 8uLL), vextq_s8(v261, v261, 0xCuLL))), v261);
        v264 = vorrq_s8(vandq_s8(v220, vsubq_f32(v263, vextq_s8(v263, v263, 4uLL))), vandq_s8(v263, v236));
        v265 = vandq_s8(v216, v262);
        v266 = vbslq_s8(v246, vminq_f32(v264, vextq_s8(v265, v265, 8uLL)), v264);
        v267 = vorrq_s8(vandq_s8(vandq_s8(v216, v217), vcgeq_f32(v266, vrev64q_s32(v266))), vandq_s8(v266, v235));
        v268 = vcgeq_f32(vextq_s8(v267, v267, 4uLL), v260);
        v269 = vorrq_s8(vandq_s8(v220, vmulq_laneq_f32(v258, v258, 2)), vandq_s8(v258, v236));
        v270 = vbslq_s8(v250, vandq_s8(v216, vcgeq_f32(vnegq_f32(v269), v213)), v269);
        v271 = vbslq_s8(v246, vandq_s8(v212, vcgeq_f32(vnegq_f32(v267), v216)), v267);
        v272 = vextq_s8(v270, v270, 8uLL);
        v273 = vmulq_f32(v272, v271);
        v258.i64[0] = vextq_s8(v273, v273, 8uLL).u64[0];
        *v262.f32 = vext_s8(*v271.f32, *v258.f32, 4uLL);
        v262.i64[1] = vextq_s8(v273, v271, 0xCuLL).u64[0];
        v271.i64[1] = v273.i64[1];
        v271.i64[0] = vminq_f32(v262, v271).u64[0];
        v271.i64[1] = v273.i64[1];
        v274 = vbslq_s8(vcgtq_f32(v271, v213), v272, vextq_s8(v270, v9, 4uLL));
        v270.i64[0] = vextq_s8(v273, v274, 0xCuLL).u64[0];
        *&v270.u32[2] = vext_s8(*v274.i8, *v258.f32, 4uLL);
        v274.i64[1] = v273.i64[1];
        v275 = vbslq_s8(v250, vmulq_lane_f32(v270, *v274.i8, 1), v274);
        v276 = vorrq_s8(vandq_s8(vbslq_s8(vcgtq_f32(vorrq_s8(vandq_s8(v220, vminq_f32(vrev64q_s32(v275), vorrq_s8(vandq_s8(vandq_s8(v216, v220), v268), v259))), v259), v213), vextq_s8(v275, v275, 4uLL), vextq_s8(v275, v275, 8uLL)), v220), v259);
        v277 = vorrq_s8(vandq_s8(v276, v249), v216);
        v278 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v276, 0x17uLL)), vandq_s8(v211, vcgtq_f32(v212, v276))), *(v205 + 208));
        v279 = vandq_s8(v216, vcgtq_f32(v277, *(v205 + 224)));
        v280 = vaddq_f32(v278, v279);
        v281 = vsubq_f32(vsubq_f32(v277, v216), vmulq_f32(vmulq_f32(*(v205 + 240), v279), v277));
        v282 = vmaxq_f32(vmulq_laneq_f32(vaddq_f32(v280, vmulq_f32(v281, vaddq_f32(vaddq_f32(*(v205 + 288), vmulq_f32(*(v205 + 304), v281)), vmulq_f32(vmulq_f32(v281, v281), vaddq_f32(*(v205 + 256), vmulq_f32(*(v205 + 272), v281)))))), v206, 2), *(v205 + 320));
        v283 = vcvtq_f32_s32(vcvtq_s32_f32(v282));
        v284 = vsubq_f32(v283, vandq_s8(v216, vcgtq_f32(v283, v282)));
        v285 = vsubq_f32(v282, v284);
        v286 = vandq_s8(v220, vmulq_f32(vaddq_f32(v216, vmulq_f32(v285, vaddq_f32(*(v205 + 368), vmulq_f32(v285, vaddq_f32(*(v205 + 336), vmulq_f32(*(v205 + 352), v285)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v284), v245), 0x17uLL)));
        v287 = vorrq_s8(v286, v259);
        *(v11 + 16 * v16) = vorrq_s8(vandq_s8(vmulq_laneq_f32(v287, v287, 3), v236), v286);
      }

      v12 += v14;
      v11 += v13;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcOutlineGradientStroke::GetDOD(HgcOutlineGradientStroke *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcOutlineGradientStroke::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcOutlineGradientStroke::HgcOutlineGradientStroke(HgcOutlineGradientStroke *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DBC98;
  operator new();
}

void HgcOutlineGradientStroke::~HgcOutlineGradientStroke(HGNode *this)
{
  *this = &unk_2871DBC98;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F47AF14);
  }

  HGNode::~HGNode(this);
}

{
  HgcOutlineGradientStroke::~HgcOutlineGradientStroke(this);

  HGObject::operator delete(v1);
}

uint64_t HgcOutlineGradientStroke::SetParameter(HgcOutlineGradientStroke *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcOutlineGradientStroke::GetParameter(HgcOutlineGradientStroke *this, unsigned int a2, float *a3)
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

double HgcOutlineGradientStroke::State::State(HgcOutlineGradientStroke::State *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = xmmword_260344A40;
  *(this + 3) = xmmword_260344A50;
  v1.i64[0] = 0x80000000800000;
  v1.i64[1] = 0x80000000800000;
  *(this + 4) = vnegq_f32(v1);
  *(this + 10) = 0;
  *(this + 11) = 0;
  *(this + 6) = xmmword_260344950;
  *(this + 7) = xmmword_260344670;
  *(this + 8) = xmmword_260344600;
  *(this + 9) = xmmword_260344660;
  *(this + 10) = xmmword_260344960;
  *(this + 11) = xmmword_260344970;
  *(this + 12) = xmmword_2603444B0;
  *(this + 13) = xmmword_2603444F0;
  *(this + 14) = xmmword_260344500;
  *(this + 15) = xmmword_260344510;
  *(this + 16) = xmmword_2603449A0;
  *(this + 17) = xmmword_2603449B0;
  *(this + 18) = xmmword_2603449C0;
  *(this + 19) = xmmword_2603449D0;
  *(this + 20) = xmmword_260344590;
  *(this + 21) = xmmword_2603449E0;
  result = 0.0;
  *(this + 22) = xmmword_2603449F0;
  *(this + 23) = xmmword_260344A00;
  return result;
}

const char *HgcReconstructDT::GetProgram(HgcReconstructDT *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.x = r0.x*half(hg_Params[0].x);\n    output.color0.xyz = float3(r0.xxx);\n    output.color0.w = float(-float(fabs(r0.x)) < float(c0.w));\n    return output;\n}\n//MD5=278b20d3:6e9f84aa:893390ef:ca59203b\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ca\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.x = r0.x*hg_Params[0].x;\n    output.color0.xyz = r0.xxx;\n    output.color0.w = float(-fabs(r0.x) < c0.w);\n    return output;\n}\n//MD5=9bf17ba0:58c9dc9b:59940475:6450d3b5\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000029b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    gl_FragColor.xyz = r0.xxx;\n    gl_FragColor.w = float(-abs(r0.x) < c0.w);\n}\n//MD5=82f7c31d:b098a326:2e8e493b:e1c33954\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA5513C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA5523C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA5527C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA55274);
}

uint64_t HgcReconstructDT::BindTexture(HgcReconstructDT *this, HGHandler *a2, int a3)
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

uint64_t HgcReconstructDT::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcReconstructDT::RenderTile(uint64_t a1, uint64_t a2)
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
          v14 = vmulq_f32(*(v6 + v10 - 32), *v12);
          v15 = vmulq_f32(*(v6 + v10 - 16), *v12);
          v16 = vmulq_f32(*(v6 + v10), *v12);
          v17 = vmulq_f32(*(v6 + v10 + 16), *v12);
          v18 = *(v12 + 32);
          v19 = *(v12 + 48);
          v20 = vorrq_s8(v18, v14);
          v21 = vcgtq_f32(v13, vorrq_s8(v18, v15));
          v22 = vcgtq_f32(v13, vorrq_s8(v18, v16));
          v23 = vcgtq_f32(v13, vorrq_s8(v18, v17));
          v24 = vandq_s8(v19, vcgtq_f32(v13, v20));
          v25 = vandq_s8(v19, v21);
          v26 = vandq_s8(v19, v22);
          v27 = vandq_s8(v19, v23);
          v28 = vextq_s8(v25, v25, 4uLL);
          v29 = vextq_s8(v26, v26, 4uLL);
          v30 = *(v12 + 64);
          v31 = (v5 + v10);
          v31[-2] = vbslq_s8(v30, vextq_s8(v24, v24, 4uLL), vdupq_lane_s32(*v14.i8, 0));
          v31[-1] = vbslq_s8(v30, v28, vdupq_lane_s32(*v15.i8, 0));
          *v31 = vbslq_s8(v30, v29, vdupq_lane_s32(*v16.i8, 0));
          v31[1] = vbslq_s8(v30, vextq_s8(v27, v27, 4uLL), vdupq_lane_s32(*v17.i8, 0));
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v32 = *(a1 + 408);
          v33 = vmulq_f32(*(v6 + 16 * v9), *v32);
          v34 = vandq_s8(*(v32 + 48), vcgtq_f32(*(v32 + 16), vorrq_s8(*(v32 + 32), v33)));
          *(v5 + 16 * v9++) = vbslq_s8(*(v32 + 64), vextq_s8(v34, v34, 4uLL), vdupq_lane_s32(*v33.i8, 0));
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

uint64_t HgcReconstructDT::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcReconstructDT::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcReconstructDT::HgcReconstructDT(HgcReconstructDT *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DBF00;
  operator new();
}

void HgcReconstructDT::~HgcReconstructDT(HGNode *this)
{
  *this = &unk_2871DBF00;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcReconstructDT::~HgcReconstructDT(this);

  HGObject::operator delete(v1);
}

uint64_t HgcReconstructDT::SetParameter(HgcReconstructDT *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = *(this + 51);
  if (v8->n128_f32[0] == a4 && v8->n128_f32[1] == 0.0 && v8->n128_f32[2] == 0.0 && v8->n128_f32[3] == 0.0)
  {
    return 0;
  }

  v8->n128_f32[0] = a4;
  v8->n128_u64[1] = 0;
  v8->n128_u32[1] = 0;
  a3.n128_f32[1] = a4;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v8[5] = a3;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcReconstructDT::GetParameter(HgcReconstructDT *this, int a2, float *a3)
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

const char *HgcMaskAlpha::GetProgram(HgcMaskAlpha *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004d5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0.y = half(r0.w < half(hg_Params[0].y));\n    r0.z = r0.y;\n    r0.w = half(r0.w >= half(hg_Params[0].y));\n    r1.x = r0.w;\n    r0.x = half(hg_Params[0].x) - c0.x;\n    r0.x = abs(r0.x);\n    r0.xz = half2(-r0.xz >= c0.yy);\n    r0.xy = fmin(r0.xx, r0.zy);\n    r0.y = half(-r0.y < c0.y);\n    r0.z = half(-half(fabs(hg_Params[0].x)) >= c0.y);\n    r0.w = fmin(r0.z, r0.w);\n    r0.xy = select(r0.yy, c0.yx, -r0.xx < 0.00000h);\n    r1.x = half(-r1.x >= c0.y);\n    r0.xy = select(r0.xy, c0.xx, -r0.ww < 0.00000h);\n    r0.z = fmin(r0.z, r1.x);\n    output.color0 = select(float4(r0.xxxy), float4(c0.yyyx), -float4(r0.zzzz) < 0.00000h);\n    return output;\n}\n//MD5=f7c1f6b7:91423e38:7c42cf0b:124028ba\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004a8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0.y = float(r0.w < hg_Params[0].y);\n    r0.z = r0.y;\n    r0.w = float(r0.w >= hg_Params[0].y);\n    r1.x = r0.w;\n    r0.x = hg_Params[0].x - c0.x;\n    r0.x = abs(r0.x);\n    r0.xz = float2(-r0.xz >= c0.yy);\n    r0.xy = fmin(r0.xx, r0.zy);\n    r0.y = float(-r0.y < c0.y);\n    r0.z = float(-fabs(hg_Params[0].x) >= c0.y);\n    r0.w = fmin(r0.z, r0.w);\n    r0.xy = select(r0.yy, c0.yx, -r0.xx < 0.00000f);\n    r1.x = float(-r1.x >= c0.y);\n    r0.xy = select(r0.xy, c0.xx, -r0.ww < 0.00000f);\n    r0.z = fmin(r0.z, r1.x);\n    output.color0 = select(r0.xxxy, c0.yyyx, -r0.zzzz < 0.00000f);\n    return output;\n}\n//MD5=e3c547bd:c3842600:67a3067c:f3d81428\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000051a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r0.y = float(r0.w < hg_ProgramLocal0.y);\n    r0.z = r0.y;\n    r0.w = float(r0.w >= hg_ProgramLocal0.y);\n    r1.x = r0.w;\n    r0.x = hg_ProgramLocal0.x - c0.x;\n    r0.x = abs(r0.x);\n    r0.xz = vec2(greaterThanEqual(-r0.xz, c0.yy));\n    r0.xy = min(r0.xx, r0.zy);\n    r0.y = float(-r0.y < c0.y);\n    r0.z = float(-abs(hg_ProgramLocal0.x) >= c0.y);\n    r0.w = min(r0.z, r0.w);\n    r0.xy = vec2(-r0.x < 0.00000 ? c0.y : r0.y, -r0.x < 0.00000 ? c0.x : r0.y);\n    r1.x = float(-r1.x >= c0.y);\n    r0.xy = vec2(-r0.w < 0.00000 ? c0.x : r0.x, -r0.w < 0.00000 ? c0.x : r0.y);\n    r0.z = min(r0.z, r1.x);\n    gl_FragColor = vec4(-r0.z < 0.00000 ? c0.y : r0.x, -r0.z < 0.00000 ? c0.y : r0.x, -r0.z < 0.00000 ? c0.y : r0.x, -r0.z < 0.00000 ? c0.x : r0.y);\n}\n//MD5=bdb2a379:fd50a540:3ea1bf96:8406a7ed\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA558F4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA559F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA55A34()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA55A2CLL);
}

uint64_t HgcMaskAlpha::BindTexture(HgcMaskAlpha *this, HGHandler *a2, int a3)
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

uint64_t HgcMaskAlpha::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcMaskAlpha::RenderTile(uint64_t a1, uint64_t a2)
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
          v14.i64[0] = vandq_s8(v13, vcgtq_f32(*v12, vextq_s8(*(v6 + v10 - 32), *(v6 + v10 - 32), 8uLL))).u64[0];
          v15.i64[0] = vandq_s8(v13, vcgtq_f32(*v12, vextq_s8(*(v6 + v10 - 16), *(v6 + v10 - 16), 8uLL))).u64[0];
          v16.i64[0] = vandq_s8(v13, vcgtq_f32(*v12, vextq_s8(*(v6 + v10), *(v6 + v10), 8uLL))).u64[0];
          v17.i64[0] = vandq_s8(v13, vcgtq_f32(*v12, vextq_s8(*(v6 + v10 + 16), *(v6 + v10 + 16), 8uLL))).u64[0];
          v14.i64[1] = *(v6 + v10 - 24);
          v15.i64[1] = *(v6 + v10 - 8);
          v16.i64[1] = *(v6 + v10 + 8);
          v17.i64[1] = *(v6 + v10 + 24);
          v19 = *(v12 + 32);
          v18 = *(v12 + 48);
          v20 = vbslq_s8(v19, vextq_s8(v14, v14, 0xCuLL), v14);
          v21 = vbslq_s8(v19, vextq_s8(v15, v15, 0xCuLL), v15);
          v22 = vbslq_s8(v19, vextq_s8(v16, v16, 0xCuLL), v16);
          v23 = vbslq_s8(v19, vextq_s8(v17, v17, 0xCuLL), v17);
          v24 = vextq_s8(*v12, *v12, 8uLL);
          v25 = vandq_s8(v13, vcgeq_f32(v23, v24));
          v26 = vbslq_s8(v18, vandq_s8(v13, vcgeq_f32(v20, v24)), v20);
          v27 = vbslq_s8(v18, vandq_s8(v13, vcgeq_f32(v21, v24)), v21);
          v28 = vbslq_s8(v18, vandq_s8(v13, vcgeq_f32(v22, v24)), v22);
          v29 = vbslq_s8(v18, v25, v23);
          v30 = vextq_s8(v26, v26, 0xCuLL);
          v31 = vextq_s8(v27, v27, 0xCuLL);
          v32 = vsubq_f32(*v12, v13);
          v33 = *(v12 + 64);
          v34 = *(v12 + 80);
          v35 = vbslq_s8(v33, v32, v26);
          v36 = vbslq_s8(v33, v32, v27);
          v37 = vbslq_s8(v33, v32, v28);
          v38 = vbslq_s8(v33, v32, v29);
          v33.i64[0] = vandq_s8(v35, v34).u64[0];
          v39.i64[0] = vandq_s8(v36, v34).u64[0];
          v33.i64[1] = v35.i64[1];
          v39.i64[1] = v36.i64[1];
          v40.i64[0] = vandq_s8(v37, v34).u64[0];
          v36.i64[0] = vandq_s8(v38, v34).u64[0];
          v40.i64[1] = v37.i64[1];
          v36.i64[1] = v38.i64[1];
          v41 = *(v12 + 96);
          v42 = vbslq_s8(*(v12 + 112), vandq_s8(v13, vcgeq_f32(vnegq_f32(v33), v41)), v33);
          v43 = vbslq_s8(*(v12 + 112), vandq_s8(v13, vcgeq_f32(vnegq_f32(v39), v41)), v39);
          v44 = vbslq_s8(*(v12 + 112), vandq_s8(v13, vcgeq_f32(vnegq_f32(v40), v41)), v40);
          v45 = *(v12 + 128);
          v46 = *(v12 + 144);
          *v47.f32 = vqtbl1_s8(v42, *v45.i8);
          v48 = vextq_s8(v45, v45, 8uLL).u64[0];
          *&v47.u32[2] = vqtbl1_s8(v42, v48);
          *v49.f32 = vqtbl1_s8(v43, *v45.i8);
          *&v49.u32[2] = vqtbl1_s8(v43, v48);
          v50 = vbslq_s8(*(v12 + 112), vandq_s8(v13, vcgeq_f32(vnegq_f32(v36), v41)), v36);
          *v51.f32 = vqtbl1_s8(v44, *v45.i8);
          *v52.f32 = vqtbl1_s8(v50, *v45.i8);
          *&v51.u32[2] = vqtbl1_s8(v44, v48);
          *&v52.u32[2] = vqtbl1_s8(v50, v48);
          v39.i64[0] = vminq_f32(vdupq_lane_s32(*v42.f32, 0), v47).u64[0];
          v40.i64[0] = vminq_f32(vdupq_lane_s32(*v43.i8, 0), v49).u64[0];
          v51.i64[0] = vminq_f32(vdupq_lane_s32(*v44.i8, 0), v51).u64[0];
          v39.i64[1] = v42.i64[1];
          v40.i64[1] = v43.i64[1];
          v42.i64[0] = vminq_f32(vdupq_lane_s32(*v50.i8, 0), v52).u64[0];
          v51.i64[1] = v44.i64[1];
          v42.i64[1] = v50.i64[1];
          v53 = vorrq_s8(v45, *v12);
          v54 = vbslq_s8(v46, vandq_s8(v13, vcgtq_f32(v41, vnegq_f32(v42))), v42);
          v55 = vandq_s8(v13, vcgeq_f32(vextq_s8(v53, v53, 8uLL), v41));
          v56 = vbslq_s8(v19, v55, vbslq_s8(v46, vandq_s8(v13, vcgtq_f32(v41, vnegq_f32(v39))), v39));
          v57 = vbslq_s8(v19, v55, vbslq_s8(v46, vandq_s8(v13, vcgtq_f32(v41, vnegq_f32(v40))), v40));
          v58 = vbslq_s8(v19, v55, vbslq_s8(v46, vandq_s8(v13, vcgtq_f32(v41, vnegq_f32(v51))), v51));
          v59 = vbslq_s8(v19, v55, v54);
          v60 = vbslq_s8(v18, vminq_f32(vrev64q_s32(v56), v56), v56);
          v61 = vbslq_s8(v18, vminq_f32(vrev64q_s32(v57), v57), v57);
          v62 = vbslq_s8(v18, vminq_f32(vrev64q_s32(v58), v58), v58);
          v63 = vbslq_s8(v18, vminq_f32(vrev64q_s32(v59), v59), v59);
          v65 = *(v12 + 160);
          v64 = *(v12 + 176);
          v57.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v60, 3), v41), v13, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v60.f32, 0), v41), v65, vdupq_lane_s32(*v60.f32, 1))).u64[0];
          v58.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v61, 3), v41), v13, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v61.f32, 0), v41), v65, vdupq_lane_s32(*v61.f32, 1))).u64[0];
          v43.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v62, 3), v41), v13, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v62.f32, 0), v41), v65, vdupq_lane_s32(*v62.f32, 1))).u64[0];
          v51.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v63, 3), v41), v13, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v63.i8, 0), v41), v65, vdupq_lane_s32(*v63.i8, 1))).u64[0];
          v39.i64[0] = v57.i64[0];
          v39.i64[1] = v60.i64[1];
          v60.i64[0] = v58.i64[0];
          v60.i64[1] = v61.i64[1];
          v61.i64[0] = v43.i64[0];
          v61.i64[1] = v62.i64[1];
          v62.i64[0] = v51.i64[0];
          v62.i64[1] = v63.i64[1];
          v66 = vandq_s8(v13, vcgeq_f32(vnegq_f32(v30), v65));
          v67 = vandq_s8(v13, vcgeq_f32(vnegq_f32(v31), v65));
          v68 = vandq_s8(v13, vcgeq_f32(vnegq_f32(vextq_s8(v28, v28, 0xCuLL)), v65));
          v69 = vandq_s8(v13, vcgeq_f32(vnegq_f32(vextq_s8(v29, v29, 0xCuLL)), v65));
          v70 = vminq_f32(v39, vextq_s8(v66, v66, 8uLL));
          v71 = vminq_f32(v60, vextq_s8(v67, v67, 8uLL));
          v72 = vminq_f32(v61, vextq_s8(v68, v68, 8uLL));
          v73 = vminq_f32(v62, vextq_s8(v69, v69, 8uLL));
          v57.i64[1] = v70.i64[1];
          *v62.f32 = vqtbl1_s8(v57, *v64.i8);
          v61.i64[0] = vextq_s8(v64, v64, 8uLL).u64[0];
          *v28.i8 = vqtbl1_s8(v57, *v61.f32);
          v58.i64[1] = v71.i64[1];
          *v29.i8 = vqtbl1_s8(v58, *v64.i8);
          v43.i64[1] = v72.i64[1];
          *v57.f32 = vqtbl1_s8(v43, *v64.i8);
          v62.i64[1] = v28.i64[0];
          v51.i64[1] = v73.i64[1];
          *v28.i8 = vqtbl1_s8(v51, *v64.i8);
          v29.u64[1] = vqtbl1_s8(v58, *v61.f32);
          *&v57.u32[2] = vqtbl1_s8(v43, *v61.f32);
          v28.u64[1] = vqtbl1_s8(v51, *v61.f32);
          v74 = *(v12 + 192);
          v75 = (v5 + v10);
          v75[-2] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v70, 2), v74), v41, v62);
          v75[-1] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v71, 2), v74), v41, v29);
          *v75 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v72, 2), v74), v41, v57);
          v75[1] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v73, 2), v74), v41, v28);
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v76 = *(a1 + 408);
          v77 = *(v76 + 16);
          v78.i64[0] = vandq_s8(v77, vcgtq_f32(*v76, vextq_s8(*(v6 + 16 * v9), *(v6 + 16 * v9), 8uLL))).u64[0];
          v78.i64[1] = *(v6 + 16 * v9 + 8);
          v79 = *(v76 + 32);
          v80 = *(v76 + 48);
          v81 = vbslq_s8(v79, vextq_s8(v78, v78, 0xCuLL), v78);
          v82 = vbslq_s8(v80, vandq_s8(v77, vcgeq_f32(v81, vextq_s8(*v76, *v76, 8uLL))), v81);
          v83 = vbslq_s8(*(v76 + 64), vsubq_f32(*v76, v77), v82);
          v84.i64[0] = vandq_s8(v83, *(v76 + 80)).u64[0];
          v84.i64[1] = v83.i64[1];
          v85 = *(v76 + 96);
          v86 = vbslq_s8(*(v76 + 112), vandq_s8(v77, vcgeq_f32(vnegq_f32(v84), v85)), v84);
          v87 = *(v76 + 128);
          *v88.f32 = vqtbl1_s8(v86, *v87.i8);
          *&v88.u32[2] = vqtbl1_s8(v86, *&vextq_s8(v87, v87, 8uLL));
          v88.i64[0] = vminq_f32(vdupq_lane_s32(*v86.i8, 0), v88).u64[0];
          v88.i64[1] = v86.i64[1];
          v89 = vorrq_s8(v87, *v76);
          v90 = vbslq_s8(v79, vandq_s8(v77, vcgeq_f32(vextq_s8(v89, v89, 8uLL), v85)), vbslq_s8(*(v76 + 144), vandq_s8(v77, vcgtq_f32(v85, vnegq_f32(v88))), v88));
          v91 = vbslq_s8(v80, vminq_f32(vrev64q_s32(v90), v90), v90);
          v92 = *(v76 + 160);
          v93 = *(v76 + 176);
          v79.i64[0] = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v91, 3), v85), v77, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v91.i8, 0), v85), v92, vdupq_lane_s32(*v91.i8, 1))).u64[0];
          v80.i64[0] = v79.i64[0];
          v80.i64[1] = v91.i64[1];
          v94 = vandq_s8(v77, vcgeq_f32(vnegq_f32(vextq_s8(v82, v82, 0xCuLL)), v92));
          v95 = vminq_f32(v80, vextq_s8(v94, v94, 8uLL));
          v79.i64[1] = v95.i64[1];
          *v91.i8 = vqtbl1_s8(v79, *v93.i8);
          v91.u64[1] = vqtbl1_s8(v79, *&vextq_s8(v93, v93, 8uLL));
          *(v5 + 16 * v9++) = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v95, 2), *(v76 + 192)), v85, v91);
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

uint64_t HgcMaskAlpha::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcMaskAlpha::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcMaskAlpha::HgcMaskAlpha(HgcMaskAlpha *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DC168;
  operator new();
}

void HgcMaskAlpha::~HgcMaskAlpha(HGNode *this)
{
  *this = &unk_2871DC168;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F93440CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcMaskAlpha::~HgcMaskAlpha(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMaskAlpha::SetParameter(HgcMaskAlpha *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcMaskAlpha::GetParameter(HgcMaskAlpha *this, int a2, float *a3)
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

const char *HgcSimpleAdd::GetProgram(HgcSimpleAdd *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002e0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r1) + float4(r0);\n    return output;\n}\n//MD5=b9d0f3ff:6eb0ab3e:bf9eb7ca:83d31c9c\n//SIG=00400000:00000003:00000003:00000003:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002c3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r1 + r0;\n    return output;\n}\n//MD5=c8c34beb:ec63a391:4a47a9b1:6168da55\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000241\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r1 + r0;\n}\n//MD5=eda39bd3:057505f8:05bb095c:802de8a1\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA564F0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA56630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA56678()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA56670);
}

uint64_t HgcSimpleAdd::BindTexture(HgcSimpleAdd *this, HGHandler *a2, int a3)
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

uint64_t HgcSimpleAdd::RenderTile(uint64_t a1, uint64_t a2)
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
          v14 = vaddq_f32(*(v8 + v12 - 16), *(v6 + v12 - 16));
          v15 = vaddq_f32(*(v8 + v12), *(v6 + v12));
          v16 = vaddq_f32(*(v8 + v12 + 16), *(v6 + v12 + 16));
          v17 = (v5 + v12);
          v17[-2] = vaddq_f32(*(v8 + v12 - 32), *(v6 + v12 - 32));
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
          *(v5 + 16 * v11) = vaddq_f32(*(v8 + 16 * v11), *(v6 + 16 * v11));
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

uint64_t HgcSimpleAdd::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcSimpleAdd::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcSimpleAdd::HgcSimpleAdd(HgcSimpleAdd *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DC3D0;
  operator new();
}

void HgcSimpleAdd::~HgcSimpleAdd(HGNode *this)
{
  *this = &unk_2871DC3D0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);
}

{
  HgcSimpleAdd::~HgcSimpleAdd(this);

  HGObject::operator delete(v1);
}

const char *HgcLevels::GetProgram(HgcLevels *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000059a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(9.999999747e-06, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = half4(hg_Params[0]) - half4(hg_Params[2]);\n    r1 = r1 + c0.xxxx;\n    r2 = half4(hg_Params[1]) - half4(hg_Params[3]);\n    r3 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1 = r2/r1;\n    r2 = r1*-half4(hg_Params[0]) + half4(hg_Params[1]);\n    r1 = clamp(r3*r1 + r2, 0.00000h, 1.00000h);\n    r1 = clamp(r1 + c0.xxxx, 0.00000h, 1.00000h);\n    r3 = half4(hg_Params[5]) - half4(hg_Params[7]);\n    r3 = r3 + c0.xxxx;\n    r2 = half4(hg_Params[6]) - half4(hg_Params[8]);\n    r1 = pow(r1, half4(hg_Params[4]));\n    r3 = r2/r3;\n    r2 = r3*-half4(hg_Params[5]) + half4(hg_Params[6]);\n    r1 = clamp(r1*r3 + r2, 0.00000h, 1.00000h);\n    r1 = clamp(r1 + c0.xxxx, 0.00000h, 1.00000h);\n    r1 = pow(r1, half4(hg_Params[9]));\n    r1.xyz = r1.www*r1.xyz;\n    output.color0 = mix(float4(r0), float4(r1), hg_Params[10]);\n    return output;\n}\n//MD5=a7a0e798:4ed60d72:7be40f84:21b0661b\n//SIG=00400000:00000001:00000001:00000001:0001:000b:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000525\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(9.999999747e-06, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Params[0] - hg_Params[2];\n    r1 = r1 + c0.xxxx;\n    r2 = hg_Params[1] - hg_Params[3];\n    r3 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1 = r2/r1;\n    r2 = r1*-hg_Params[0] + hg_Params[1];\n    r1 = clamp(r3*r1 + r2, 0.00000f, 1.00000f);\n    r1 = clamp(r1 + c0.xxxx, 0.00000f, 1.00000f);\n    r3 = hg_Params[5] - hg_Params[7];\n    r3 = r3 + c0.xxxx;\n    r2 = hg_Params[6] - hg_Params[8];\n    r1 = pow(r1, hg_Params[4]);\n    r3 = r2/r3;\n    r2 = r3*-hg_Params[5] + hg_Params[6];\n    r1 = clamp(r1*r3 + r2, 0.00000f, 1.00000f);\n    r1 = clamp(r1 + c0.xxxx, 0.00000f, 1.00000f);\n    r1 = pow(r1, hg_Params[9]);\n    r1.xyz = r1.www*r1.xyz;\n    output.color0 = mix(r0, r1, hg_Params[10]);\n    return output;\n}\n//MD5=c23151d5:de73ee7f:ff1ea122:1f2df5d9\n//SIG=00000000:00000001:00000001:00000000:0001:000b:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006d8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nuniform mediump vec4 hg_ProgramLocal5;\nuniform mediump vec4 hg_ProgramLocal6;\nuniform mediump vec4 hg_ProgramLocal7;\nuniform mediump vec4 hg_ProgramLocal8;\nuniform mediump vec4 hg_ProgramLocal9;\nuniform mediump vec4 hg_ProgramLocal10;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(9.999999747e-06, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = hg_ProgramLocal0 - hg_ProgramLocal2;\n    r1 = r1 + c0.xxxx;\n    r2 = hg_ProgramLocal1 - hg_ProgramLocal3;\n    r3 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1 = r2/r1;\n    r2 = r1*-hg_ProgramLocal0 + hg_ProgramLocal1;\n    r1 = clamp(r3*r1 + r2, vec4(0.00000), vec4(1.00000));\n    r1 = clamp(r1 + c0.xxxx, vec4(0.00000), vec4(1.00000));\n    r3 = hg_ProgramLocal5 - hg_ProgramLocal7;\n    r3 = r3 + c0.xxxx;\n    r2 = hg_ProgramLocal6 - hg_ProgramLocal8;\n    r1 = pow(r1, hg_ProgramLocal4);\n    r3 = r2/r3;\n    r2 = r3*-hg_ProgramLocal5 + hg_ProgramLocal6;\n    r1 = clamp(r1*r3 + r2, vec4(0.00000), vec4(1.00000));\n    r1 = clamp(r1 + c0.xxxx, vec4(0.00000), vec4(1.00000));\n    r1 = pow(r1, hg_ProgramLocal9);\n    r1.xyz = r1.www*r1.xyz;\n    gl_FragColor = mix(r0, r1, hg_ProgramLocal10);\n}\n//MD5=52a0e8cd:61c1d4cc:431cd2e4:db34cb52\n//SIG=00000000:00000001:00000001:00000000:0001:000b:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA56BB0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA56CB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA56CF0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA56CE8);
}

uint64_t HgcLevels::BindTexture(HgcLevels *this, HGHandler *a2, int a3)
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

uint64_t HgcLevels::Bind(void *a1, uint64_t a2)
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
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcLevels::RenderTile(uint64_t a1, uint64_t a2)
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
          v13 = *(v6 + v10 - 16);
          v12 = *(v6 + v10);
          v14 = *(a1 + 408);
          v15 = *(v14 + 16);
          v17 = *(v14 + 160);
          v16 = *(v14 + 176);
          v18 = vaddq_f32(vsubq_f32(*v14, *(v14 + 32)), v16);
          v20 = *(v14 + 192);
          v19 = *(v14 + 208);
          v21 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v20);
          v22 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v20);
          v23 = vmulq_f32(vrecpeq_f32(v21), v19);
          v24 = vmulq_f32(vrecpeq_f32(v22), v19);
          v25 = vmulq_f32(v23, vrecpsq_f32(v23, v21));
          v26 = vmulq_f32(v24, vrecpsq_f32(v24, v22));
          v27 = *(v14 + 224);
          v28 = *(v14 + 240);
          v29 = vorrq_s8(vandq_s8(v27, v25), v28);
          v30 = vorrq_s8(vandq_s8(v27, v26), v28);
          v31 = vmulq_f32(v13, v29);
          v33 = *(v14 + 256);
          v32 = *(v14 + 272);
          v34 = vminq_f32(vmaxq_f32(vmulq_f32(v19, vrecpeq_f32(v18)), v33), v32);
          v35 = vmulq_f32(vsubq_f32(v15, *(v14 + 48)), vmulq_f32(v34, vrecpsq_f32(v18, v34)));
          v36 = vsubq_f32(v15, vmulq_f32(*v14, v35));
          v37 = vaddq_f32(vmulq_f32(v31, v35), v36);
          v38 = vaddq_f32(vmulq_f32(vmulq_f32(v12, v30), v35), v36);
          v40 = *(v14 + 288);
          v39 = *(v14 + 304);
          v41 = vminq_f32(vmaxq_f32(vaddq_f32(v16, vminq_f32(vmaxq_f32(v37, v40), v39)), v40), v39);
          v42 = *(v14 + 96);
          v44 = *(v14 + 64);
          v43 = *(v14 + 80);
          v45 = vminq_f32(vmaxq_f32(vaddq_f32(v16, vminq_f32(vmaxq_f32(v38, v40), v39)), v40), v39);
          v46 = vaddq_f32(v16, vsubq_f32(v43, *(v14 + 112)));
          v48 = *(v14 + 320);
          v47 = *(v14 + 336);
          v49 = vorrq_s8(vandq_s8(v48, v41), v39);
          v50 = vorrq_s8(vandq_s8(v48, v45), v39);
          v52 = *(v14 + 352);
          v51 = *(v14 + 368);
          v53 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v45, 0x17uLL)), vandq_s8(v52, vcgtq_f32(v47, v45)));
          v55 = *(v14 + 384);
          v54 = *(v14 + 400);
          v56 = vandq_s8(v39, vcgtq_f32(v49, v55));
          v57 = vandq_s8(v39, vcgtq_f32(v50, v55));
          v58 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v41, 0x17uLL)), vandq_s8(v52, vcgtq_f32(v47, v41))), v51), v56);
          v59 = vaddq_f32(vsubq_f32(v53, v51), v57);
          v60 = vmulq_f32(vmulq_f32(v54, v57), v50);
          v61 = vsubq_f32(vsubq_f32(v49, v39), vmulq_f32(vmulq_f32(v54, v56), v49));
          v62 = vsubq_f32(vsubq_f32(v50, v39), v60);
          v63 = *(v14 + 416);
          v64 = *(v14 + 432);
          v65 = *(v14 + 448);
          v66 = *(v14 + 464);
          v67 = vaddq_f32(v58, vmulq_f32(v61, vaddq_f32(vaddq_f32(v65, vmulq_f32(v61, v66)), vmulq_f32(vmulq_f32(v61, v61), vaddq_f32(v63, vmulq_f32(v64, v61))))));
          v68 = vaddq_f32(v59, vmulq_f32(v62, vaddq_f32(vaddq_f32(v65, vmulq_f32(v62, v66)), vmulq_f32(vmulq_f32(v62, v62), vaddq_f32(v63, vmulq_f32(v64, v62))))));
          v69 = vmulq_f32(v44, v67);
          v70 = vmulq_f32(v44, v68);
          v72 = *(v14 + 480);
          v71 = *(v14 + 496);
          v73 = vmaxq_f32(v69, v72);
          v74 = vmaxq_f32(v70, v72);
          v75 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
          v76 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
          v77 = vsubq_f32(v75, vandq_s8(v39, vcgtq_f32(v75, v73)));
          v78 = vsubq_f32(v76, vandq_s8(v39, vcgtq_f32(v76, v74)));
          v79 = vsubq_f32(v73, v77);
          v80 = *(v14 + 512);
          v81 = *(v14 + 528);
          v82 = vsubq_f32(v74, v78);
          v83 = vmulq_f32(v82, vaddq_f32(v81, vmulq_f32(v82, vaddq_f32(v71, vmulq_f32(v80, v82)))));
          v84 = vaddq_f32(v39, vmulq_f32(v79, vaddq_f32(v81, vmulq_f32(v79, vaddq_f32(v71, vmulq_f32(v80, v79))))));
          v85 = *(v14 + 544);
          v86 = *(v14 + 560);
          v87 = vmaxq_f32(vmulq_f32(v19, vrecpeq_f32(v46)), v33);
          v88 = *(v14 + 144);
          v89 = vminq_f32(v87, v32);
          v90 = vmulq_f32(vsubq_f32(v42, *(v14 + 128)), vmulq_f32(v89, vrecpsq_f32(v46, v89)));
          v91 = vsubq_f32(v42, vmulq_f32(v43, v90));
          v92 = vaddq_f32(v16, vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(vmulq_f32(v84, vshlq_n_s32(vaddq_s32(v85, vcvtq_s32_f32(v77)), 0x17uLL)), v90), v91), v40), v39));
          v93 = vmaxq_f32(vaddq_f32(v16, vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(vmulq_f32(vaddq_f32(v39, v83), vshlq_n_s32(vaddq_s32(v85, vcvtq_s32_f32(v78)), 0x17uLL)), v90), v91), v40), v39)), v40);
          v94 = vminq_f32(vmaxq_f32(v92, v40), v39);
          v95 = vminq_f32(v93, v39);
          v96 = vorrq_s8(vandq_s8(v48, v94), v39);
          v97 = vorrq_s8(vandq_s8(v48, v95), v39);
          v98 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(v52, vcgtq_f32(v47, v94))), v51);
          v99 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v95, 0x17uLL)), vandq_s8(v52, vcgtq_f32(v47, v95))), v51);
          v100 = vandq_s8(v39, vcgtq_f32(v96, v55));
          v101 = vandq_s8(v39, vcgtq_f32(v97, v55));
          v102 = vaddq_f32(v99, v101);
          v103 = vsubq_f32(vsubq_f32(v96, v39), vmulq_f32(vmulq_f32(v54, v100), v96));
          v104 = vsubq_f32(vsubq_f32(v97, v39), vmulq_f32(vmulq_f32(v54, v101), v97));
          v105 = vmaxq_f32(vmulq_f32(v88, vaddq_f32(vaddq_f32(v98, v100), vmulq_f32(v103, vaddq_f32(vaddq_f32(v65, vmulq_f32(v66, v103)), vmulq_f32(vmulq_f32(v103, v103), vaddq_f32(v63, vmulq_f32(v64, v103))))))), v72);
          v106 = vmaxq_f32(vmulq_f32(v88, vaddq_f32(v102, vmulq_f32(v104, vaddq_f32(vaddq_f32(v65, vmulq_f32(v66, v104)), vmulq_f32(vmulq_f32(v104, v104), vaddq_f32(v63, vmulq_f32(v64, v104))))))), v72);
          v107 = vcvtq_f32_s32(vcvtq_s32_f32(v105));
          v108 = vcvtq_f32_s32(vcvtq_s32_f32(v106));
          v109 = vsubq_f32(v107, vandq_s8(v39, vcgtq_f32(v107, v105)));
          v110 = vsubq_f32(v108, vandq_s8(v39, vcgtq_f32(v108, v106)));
          v111 = vsubq_f32(v105, v109);
          v112 = vsubq_f32(v106, v110);
          v113 = vmulq_f32(vaddq_f32(v39, vmulq_f32(v111, vaddq_f32(v81, vmulq_f32(v111, vaddq_f32(v71, vmulq_f32(v80, v111)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v109), v85), 0x17uLL));
          v114 = vmulq_f32(vaddq_f32(v39, vmulq_f32(v112, vaddq_f32(v81, vmulq_f32(v112, vaddq_f32(v71, vmulq_f32(v80, v112)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v110), v85), 0x17uLL));
          v115 = (v5 + v10);
          v115[-1] = vaddq_f32(v13, vmulq_f32(v17, vsubq_f32(vbslq_s8(v86, v113, vmulq_laneq_f32(v113, v113, 3)), v13)));
          *v115 = vaddq_f32(v12, vmulq_f32(v17, vsubq_f32(vbslq_s8(v86, v114, vmulq_laneq_f32(v114, v114, 3)), v12)));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v116 = *(v6 + 16 * v9);
        v117 = *(a1 + 408);
        v118 = *(v117 + 16);
        v119 = *(v117 + 176);
        v120 = vaddq_f32(vsubq_f32(*v117, *(v117 + 32)), v119);
        v121 = *(v117 + 208);
        v122 = vmaxq_f32(vdupq_laneq_s32(v116, 3), *(v117 + 192));
        v123 = vmulq_f32(vrecpeq_f32(v122), v121);
        v124 = vmulq_f32(v116, vorrq_s8(vandq_s8(*(v117 + 224), vmulq_f32(v123, vrecpsq_f32(v123, v122))), *(v117 + 240)));
        v125 = *(v117 + 256);
        v126 = *(v117 + 272);
        v127 = vminq_f32(vmaxq_f32(vmulq_f32(v121, vrecpeq_f32(v120)), v125), v126);
        v128 = vmulq_f32(vsubq_f32(v118, *(v117 + 48)), vmulq_f32(v127, vrecpsq_f32(v120, v127)));
        v129 = vaddq_f32(vmulq_f32(v124, v128), vsubq_f32(v118, vmulq_f32(*v117, v128)));
        v131 = *(v117 + 288);
        v130 = *(v117 + 304);
        v132 = vminq_f32(vmaxq_f32(vaddq_f32(v119, vminq_f32(vmaxq_f32(v129, v131), v130)), v131), v130);
        v133 = *(v117 + 96);
        v134 = *(v117 + 80);
        v135 = vaddq_f32(v119, vsubq_f32(v134, *(v117 + 112)));
        v137 = *(v117 + 320);
        v136 = *(v117 + 336);
        v138 = vorrq_s8(vandq_s8(v137, v132), v130);
        v140 = *(v117 + 352);
        v139 = *(v117 + 368);
        v141 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v132, 0x17uLL)), vandq_s8(v140, vcgtq_f32(v136, v132))), v139);
        v143 = *(v117 + 384);
        v142 = *(v117 + 400);
        v144 = vandq_s8(v130, vcgtq_f32(v138, v143));
        v145 = vaddq_f32(v141, v144);
        v146 = vsubq_f32(vsubq_f32(v138, v130), vmulq_f32(vmulq_f32(v142, v144), v138));
        v147 = *(v117 + 416);
        v148 = *(v117 + 432);
        v149 = *(v117 + 448);
        v150 = *(v117 + 464);
        v151 = vmulq_f32(*(v117 + 64), vaddq_f32(v145, vmulq_f32(v146, vaddq_f32(vaddq_f32(v149, vmulq_f32(v146, v150)), vmulq_f32(vmulq_f32(v146, v146), vaddq_f32(v147, vmulq_f32(v148, v146)))))));
        v153 = *(v117 + 480);
        v152 = *(v117 + 496);
        v154 = vmaxq_f32(v151, v153);
        v155 = vcvtq_f32_s32(vcvtq_s32_f32(v154));
        v156 = vsubq_f32(v155, vandq_s8(v130, vcgtq_f32(v155, v154)));
        v157 = vsubq_f32(v154, v156);
        v158 = *(v117 + 512);
        v159 = *(v117 + 528);
        v160 = *(v117 + 544);
        v161 = vminq_f32(vmaxq_f32(vmulq_f32(v121, vrecpeq_f32(v135)), v125), v126);
        v162 = vmulq_f32(vsubq_f32(v133, *(v117 + 128)), vmulq_f32(v161, vrecpsq_f32(v135, v161)));
        v163 = vminq_f32(vmaxq_f32(vaddq_f32(v119, vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v162, vmulq_f32(vaddq_f32(v130, vmulq_f32(v157, vaddq_f32(v159, vmulq_f32(v157, vaddq_f32(v152, vmulq_f32(v158, v157)))))), vshlq_n_s32(vaddq_s32(v160, vcvtq_s32_f32(v156)), 0x17uLL))), vsubq_f32(v133, vmulq_f32(v134, v162))), v131), v130)), v131), v130);
        v164 = vorrq_s8(vandq_s8(v137, v163), v130);
        v165 = vandq_s8(v130, vcgtq_f32(v164, v143));
        v166 = vsubq_f32(vsubq_f32(v164, v130), vmulq_f32(vmulq_f32(v142, v165), v164));
        v167 = vmaxq_f32(vmulq_f32(*(v117 + 144), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v163, 0x17uLL)), vandq_s8(v140, vcgtq_f32(v136, v163))), v139), v165), vmulq_f32(v166, vaddq_f32(vaddq_f32(v149, vmulq_f32(v150, v166)), vmulq_f32(vmulq_f32(v166, v166), vaddq_f32(v147, vmulq_f32(v148, v166))))))), v153);
        v168 = vcvtq_f32_s32(vcvtq_s32_f32(v167));
        v169 = vsubq_f32(v168, vandq_s8(v130, vcgtq_f32(v168, v167)));
        v170 = vsubq_f32(v167, v169);
        v171 = vmulq_f32(vaddq_f32(v130, vmulq_f32(v170, vaddq_f32(v159, vmulq_f32(v170, vaddq_f32(v152, vmulq_f32(v158, v170)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v169), v160), 0x17uLL));
        *(v5 + 16 * v9) = vaddq_f32(v116, vmulq_f32(*(v117 + 160), vsubq_f32(vbslq_s8(*(v117 + 560), v171, vmulq_laneq_f32(v171, v171, 3)), v116)));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcLevels::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcLevels::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcLevels::HgcLevels(HgcLevels *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DC638;
  operator new();
}

void HgcLevels::~HgcLevels(HGNode *this)
{
  *this = &unk_2871DC638;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4044C9E2E8);
  }

  HGNode::~HGNode(this);
}

{
  HgcLevels::~HgcLevels(this);

  HGObject::operator delete(v1);
}

uint64_t HgcLevels::SetParameter(HgcLevels *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcLevels::GetParameter(HgcLevels *this, unsigned int a2, float *a3)
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

double HgcLevels::State::State(HgcLevels::State *this)
{
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
  *(this + 10) = 0u;
  *(this + 11) = vdupq_n_s32(0x3727C5ACu);
  *(this + 12) = vdupq_n_s32(0x358637BDu);
  *(this + 13) = vdupq_n_s32(0x3F804020u);
  *(this + 14) = xmmword_260344B20;
  *(this + 15) = xmmword_2603427D0;
  v1.i64[0] = 0x80000000800000;
  v1.i64[1] = 0x80000000800000;
  *(this + 16) = v1;
  *(this + 17) = vnegq_f32(v1);
  *(this + 36) = 0;
  *(this + 37) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  *(this + 19) = _Q0;
  *(this + 20) = vnegq_f32(v7);
  *&_Q0 = 0x80000000800000;
  *(&_Q0 + 1) = 0x80000000800000;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  *(this + 21) = _Q0;
  *(this + 22) = vnegq_f32(v7);
  *(this + 23) = vdupq_n_s32(0x42FE0000u);
  *(this + 24) = vdupq_n_s32(0x3FB504F3u);
  *&_Q0 = 0x3F0000003F000000;
  *(&_Q0 + 1) = 0x3F0000003F000000;
  *(this + 25) = _Q0;
  *(this + 26) = vdupq_n_s32(0x3F047D53u);
  *(this + 27) = vdupq_n_s32(0xBEA9AC62);
  *(this + 28) = vdupq_n_s32(0x3FB89666u);
  *(this + 29) = vdupq_n_s32(0xBF398D4B);
  *(this + 30) = vdupq_n_s32(0xC2FE0000);
  *(this + 31) = vdupq_n_s32(0x3E6E687Cu);
  *(this + 32) = vdupq_n_s32(0x3D96C2DFu);
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  *(this + 33) = vdupq_n_s32(0x3F318D85u);
  *(this + 34) = v7;
  result = 0.0;
  *(this + 35) = xmmword_260344600;
  return result;
}

const char *HgcSatCurves::GetProgram(HgcSatCurves *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_33;
    }

    else
    {
      return aMetal10Len0000_34;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_10;
  }
}

void sub_25FA57C84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260344B40;
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

void sub_25FA57F84(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA58004()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA57FFCLL);
}

uint64_t HgcSatCurves::BindTexture(HgcSatCurves *this, HGHandler *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
      {
        (*(*a2 + 72))(a2, 1, 0);
        (*(*a2 + 56))(a2, 0);
      }

      v10.n128_f32[0] = (*(a2 + 49) - *(a2 + 47));
      v11.n128_u64[0] = 0;
      v12.n128_u64[0] = 0;
      v13.n128_u64[0] = 0;
      (*(*a2 + 136))(a2, 15, v10, v11, v12, v13);
    }

    else
    {
      (*(*a2 + 72))(a2, 0);
      (*(*a2 + 48))(a2, 0, 0);
      HGHandler::TexCoord(a2, 0, 0, 0, 0);
      v22 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
      result = 0;
      if (v22)
      {
        return result;
      }

      (*(*a2 + 168))(a2);
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
        {
          (*(*a2 + 72))(a2, 2, 0);
          (*(*a2 + 56))(a2, 0);
        }

        v14.n128_f32[0] = (*(a2 + 49) - *(a2 + 47));
        v15.n128_u64[0] = 0;
        v16.n128_u64[0] = 0;
        v17.n128_u64[0] = 0;
        (*(*a2 + 136))(a2, 16, v14, v15, v16, v17);
        break;
      case 3:
        if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
        {
          (*(*a2 + 72))(a2, 3, 0);
          (*(*a2 + 56))(a2, 0);
        }

        v18.n128_f32[0] = (*(a2 + 49) - *(a2 + 47));
        v19.n128_u64[0] = 0;
        v20.n128_u64[0] = 0;
        v21.n128_u64[0] = 0;
        (*(*a2 + 136))(a2, 18, v18, v19, v20, v21);
        break;
      case 4:
        (*(*a2 + 72))(a2, 4, 0);
        (*(*a2 + 48))(a2, 0, 0);
        if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
        {
          v9 = *(*a2 + 136);
          v7.n128_u32[0] = 1.0;
          v8.n128_u32[0] = 1.0;
        }

        else
        {
          v7.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
          v9 = *(*a2 + 136);
          v8.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
        }

        v5.n128_f32[0] = *(a2 + 60);
        v6.n128_f32[0] = *(a2 + 61);
        v9(a2, 17, v5, v6, v7, v8);
        break;
      default:
        return result;
    }
  }

  return 0;
}

uint64_t HgcSatCurves::Bind(void *a1, uint64_t a2)
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
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcSatCurves::RenderTile(HgcSatCurves *this, HGTile *a2)
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
    __asm { FMOV            V5.2S, #-1.0 }

    v162 = COERCE_UNSIGNED_INT((*(a2 + 66) - *(a2 + 64)));
    v163 = COERCE_UNSIGNED_INT((*(a2 + 58) - *(a2 + 56)));
    v160 = vadd_f32(v163, _D5);
    v161 = COERCE_UNSIGNED_INT((*(a2 + 62) - *(a2 + 60)));
    v159 = vadd_f32(v161, _D5);
    v156 = vadd_f32(v159, _D5);
    v157 = vadd_f32(v160, _D5);
    v158 = vadd_f32(v162, _D5);
    v155 = vadd_f32(v158, _D5);
    v18 = 16 * *(a2 + 6);
    v19 = 16 * *(a2 + 22);
    v20.i64[0] = 0x3F0000003F000000;
    v20.i64[1] = 0x3F0000003F000000;
    do
    {
      if (v10 >= 1)
      {
        v21 = 0;
        do
        {
          v22 = *(v12 + v21);
          v23 = *(this + 51);
          v24 = *(v23 + 48);
          v25 = vmulq_f32(v22, v24);
          v26 = vaddq_f32(vdupq_laneq_s32(v25, 2), vaddq_f32(vdupq_lane_s32(*v25.i8, 0), vdupq_lane_s32(*v25.i8, 1)));
          v27 = *(v23 + 144);
          v28 = *(v23 + 160);
          v29 = vmul_f32(v163, vmin_f32(vmax_f32(*v26.f32, *v27.f32), *v28.f32));
          if (v5)
          {
            v30 = vmin_f32(vmax_f32(vadd_f32(v29, 0xBF000000BF000000), 0), v160);
            v31 = vcvt_s32_f32(vmin_f32(v30, v157));
            v32 = (*(a2 + 12) + 16 * v31.i32[0]);
            *&v33 = vaddq_f32(*v32, vmulq_n_f32(vsubq_f32(v32[1], *v32), vsub_f32(v30, vcvt_f32_s32(v31)).f32[0])).u64[0];
          }

          else
          {
            v33 = *(*(a2 + 12) + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v29, 0), v160)).i32[0]);
          }

          v34 = vsubq_f32(v26, vdupq_lane_s32(*v28.f32, 0));
          v36 = *(v23 + 240);
          v35 = *(v23 + 256);
          v37 = vsubq_f32(v26, vdupq_lane_s32(*v27.f32, 0));
          v38 = vbslq_s8(vcgtq_f32(v36, v37), vaddq_f32(v35, vaddq_f32(vdupq_lane_s32(*v27.f32, 1), vmulq_laneq_f32(vminq_f32(v37, v36), v27, 2))), vbslq_s8(vcgtq_f32(v36, v34), vdupq_lane_s32(*&v33, 0), vaddq_f32(v35, vaddq_f32(vdupq_lane_s32(*v28.f32, 1), vmulq_laneq_f32(vmaxq_f32(v34, v36), v28, 2)))));
          v39 = *(v23 + 16);
          v41 = *(v23 + 272);
          v40 = *(v23 + 288);
          v42 = vaddq_f32(v26, vmulq_f32(vsubq_f32(v22, v26), vmaxq_f32(vaddq_f32(vdupq_lane_s32(*v39.i8, 0), vmulq_f32(v41, v38)), v36)));
          v43 = vrev64q_s32(v42);
          v44 = vminq_f32(vminq_f32(v42, vextq_s8(v42, v42, 8uLL)), v43);
          v45 = vbslq_s8(v40, v44, vmaxq_f32(vbslq_s8(v40, v44, vmaxq_f32(v43, vextq_s8(v42, v42, 4uLL))), v42));
          v46.i64[0] = v45.i64[0];
          v46.i64[1] = vaddq_f32(vdupq_lane_s64(*&v45, 0), vextq_s8(*&v9, *&v45, 0xCuLL)).i64[1];
          v47 = vextq_s8(v46, v46, 8uLL);
          v48 = *(v23 + 320);
          v49 = vmulq_f32(*(v23 + 304), v46);
          v50.i64[0] = v45.i64[0];
          v50.i64[1] = v49.i64[1];
          v45.i64[1] = vdupq_laneq_s64(v49, 1).u64[0];
          v51 = vsubq_f32(vrev64q_s32(v45), v50);
          v52 = vbslq_s8(v40, v47, vsubq_f32(v41, vrev64q_s32(v47)));
          v53 = vbslq_s8(vcgtq_f32(v36, vsubq_f32(v50, vextq_s8(v35, v35, 8uLL))), vextq_s8(v52, v52, 8uLL), vextq_s8(v52, v52, 0xCuLL));
          v54 = vextq_s8(v53, v53, 8uLL);
          v55 = *(v23 + 336);
          v56 = *(v23 + 352);
          v57 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v54), v48), v55), v56);
          v58 = vmulq_f32(vmulq_f32(v57, vrecpsq_f32(v54, v57)), v51);
          v59 = *(v23 + 176);
          v60 = *(v23 + 192);
          v61 = vmul_f32(v161, vmin_f32(vmax_f32(*v58.f32, *v59.f32), *v60.f32));
          if (v5)
          {
            v62 = vmin_f32(vmax_f32(vadd_f32(v61, 0xBF000000BF000000), 0), v159);
            v63 = vcvt_s32_f32(vmin_f32(v62, v156));
            v64 = (*(a2 + 14) + 16 * v63.i32[0]);
            *&v65 = vaddq_f32(*v64, vmulq_n_f32(vsubq_f32(v64[1], *v64), vsub_f32(v62, vcvt_f32_s32(v63)).f32[0])).u64[0];
          }

          else
          {
            v65 = *(*(a2 + 14) + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v61, 0), v159)).i32[0]);
          }

          v66 = vmvnq_s8(v40);
          v67 = vdupq_lane_s32(*&vsubq_f32(v58, v60), 0);
          v68 = vdupq_lane_s32(*&vsubq_f32(v58, v59), 0);
          v69 = vbslq_s8(vcgtq_f32(v36, v67), vdupq_lane_s32(*&v65, 0), vaddq_f32(v35, vaddq_f32(vdupq_lane_s32(*v60.f32, 1), vmulq_laneq_f32(vmaxq_f32(v67, v36), v60, 2))));
          v70 = vmulq_f32(v24, v42);
          v71 = vbslq_s8(vcgtq_f32(v36, v68), vaddq_f32(v35, vaddq_f32(vdupq_lane_s32(*v59.f32, 1), vmulq_laneq_f32(vminq_f32(v68, v36), v59, 2))), v69);
          v72 = vaddq_f32(vdupq_laneq_s32(v70, 2), vaddq_f32(vdupq_lane_s32(*v70.i8, 0), vdupq_lane_s32(*v70.i8, 1)));
          v73 = *(v23 + 368);
          v74 = vminq_f32(vmaxq_f32(vaddq_f32(vdupq_laneq_s32(*v23, 2), vmulq_laneq_f32(vaddq_f32(v72, vmulq_f32(vsubq_f32(v42, v72), vmaxq_f32(vaddq_f32(vdupq_lane_s32(*v39.i8, 1), vmulq_f32(v41, v71)), v36))), *v23, 3)), v36), v73);
          v75 = vaddq_f32(vdupq_lane_s32(*v23, 0), vmulq_lane_f32(v74, *v23, 1));
          v76 = vrev64q_s32(v75);
          v77 = vandq_s8(v40, vminq_f32(vminq_f32(v75, vextq_s8(v75, v75, 8uLL)), v76));
          v78 = vorrq_s8(vandq_s8(vmaxq_f32(vorrq_s8(vandq_s8(vmaxq_f32(v76, vextq_s8(v75, v75, 4uLL)), v66), v77), v75), v66), v77);
          v79 = vextq_s8(v78, v78, 8uLL);
          v80 = vextq_s8(v78, v78, 0xCuLL);
          v81 = vaddq_f32(v80, vmulq_f32(v55, vsubq_f32(v79, v80)));
          v82 = *(v23 + 208);
          v83 = *(v23 + 224);
          v84 = vmul_f32(v162, vmin_f32(vmax_f32(*&vextq_s8(v81, v81, 8uLL), *v82.f32), *v83.f32));
          if (v5)
          {
            v85 = vmin_f32(vmax_f32(vadd_f32(v84, 0xBF000000BF000000), 0), v158);
            v86 = vcvt_s32_f32(vmin_f32(v85, v155));
            v87 = (*(a2 + 16) + 16 * v86.i32[0]);
            *&v88 = vaddq_f32(*v87, vmulq_n_f32(vsubq_f32(v87[1], *v87), vsub_f32(v85, vcvt_f32_s32(v86)).f32[0])).u64[0];
          }

          else
          {
            v88 = *(*(a2 + 16) + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v84, 0), v158)).i32[0]);
          }

          v89 = *(v23 + 384);
          v90 = *(v23 + 400);
          v91 = vminq_f32(vmaxq_f32(vmulq_f32(v74, v89), v36), v89);
          v92 = vcvtq_f32_s32(vcvtq_s32_f32(v91));
          v93 = vsubq_f32(v92, vandq_s8(v73, vcgtq_f32(v92, v91)));
          v94 = vmulq_f32(v90, vsubq_f32(vminq_f32(vaddq_f32(v73, v93), v89), v93));
          v95 = vmulq_f32(v90, v93);
          v96 = vaddq_f32(v35, vorrq_s8(vandq_s8(v40, vaddq_f32(v95, vrev64q_s32(v95))), vandq_s8(vextq_s8(v93, v93, 4uLL), v66)));
          v97 = (a2 + 152);
          v98 = vaddq_f32(vsubq_f32(v96, v9), v20);
          v99 = vcvtq_s32_f32(v98);
          v100 = vcgtq_f32(vcvtq_f32_s32(v99), v98).u64[0];
          v101 = vandq_s8(v96, v66);
          v102 = vorrq_s8(vandq_s8(v40, vaddq_f32(v94, v96)), v101);
          v103 = vaddq_f32(vsubq_f32(v102, v9), v20);
          v104 = vcvtq_s32_f32(v103);
          *v104.i8 = vadd_s32(*v104.i8, *&vcgtq_f32(vcvtq_f32_s32(v104), v103));
          v105 = vadd_s32(*v99.i8, v100);
          *v99.i8 = vld1_dup_f32(v97);
          v106 = vmla_s32(vzip1_s32(v105, *v104.i8), vzip2_s32(v105, *v104.i8), *v99.i8);
          LODWORD(v97) = v106.i32[1];
          v107 = v106.i32[0];
          v108 = vrev64q_s32(v94);
          v109 = vorrq_s8(vandq_s8(v40, vaddq_f32(v108, v102)), v101);
          v110 = vaddq_f32(vsubq_f32(v109, v9), v20);
          v111 = vcvtq_s32_f32(v110);
          v112 = vandq_s8(v40, vsubq_f32(v109, v94));
          v113 = vorrq_s8(v112, v101);
          v114 = vaddq_f32(vsubq_f32(v113, v9), v20);
          v115 = vcvtq_s32_f32(v114);
          *v110.f32 = vadd_s32(*v111.i8, *&vcgtq_f32(vcvtq_f32_s32(v111), v110));
          *v111.i8 = vadd_s32(*v115.i8, *&vcgtq_f32(vcvtq_f32_s32(v115), v114));
          *v110.f32 = vmla_s32(vzip1_s32(*v110.f32, *v111.i8), vzip2_s32(*v110.f32, *v111.i8), *v99.i8);
          v116 = v110.i32[1];
          v117 = v110.i32[0];
          v118 = vandq_s8(vaddq_f32(vextq_s8(v94, v94, 4uLL), v113), v66);
          v119 = vorrq_s8(v118, v112);
          v120 = vaddq_f32(vsubq_f32(v119, v9), v20);
          v121 = vcvtq_s32_f32(v120);
          v122 = vorrq_s8(vandq_s8(v40, vsubq_f32(v119, v108)), v118);
          v123 = vaddq_f32(vsubq_f32(v122, v9), v20);
          v124 = vcvtq_s32_f32(v123);
          *v120.f32 = vadd_s32(*v121.i8, *&vcgtq_f32(vcvtq_f32_s32(v121), v120));
          *v121.i8 = vadd_s32(*v124.i8, *&vcgtq_f32(vcvtq_f32_s32(v124), v123));
          *v120.f32 = vmla_s32(vzip1_s32(*v120.f32, *v121.i8), vzip2_s32(*v120.f32, *v121.i8), *v99.i8);
          v125 = vorrq_s8(vandq_s8(v40, vaddq_f32(v94, v122)), v118);
          v126 = vaddq_f32(vsubq_f32(v125, v9), v20);
          v127 = vcvtq_s32_f32(v126);
          v128 = vaddq_f32(vsubq_f32(vorrq_s8(vandq_s8(v40, vaddq_f32(v108, v125)), v118), v9), v20);
          v129 = vcvtq_s32_f32(v128);
          v130 = *(a2 + 18);
          *v126.f32 = vadd_s32(*v127.i8, *&vcgtq_f32(vcvtq_f32_s32(v127), v126));
          v131 = *(v130 + 16 * v107);
          *v128.f32 = vadd_s32(*v129.i8, *&vcgtq_f32(vcvtq_f32_s32(v129), v128));
          *v128.f32 = vmla_s32(vzip1_s32(*v126.f32, *v128.f32), vzip2_s32(*v126.f32, *v128.f32), *v99.i8);
          v132 = *(v130 + 16 * v116);
          v133 = vsubq_f32(v91, v93);
          v134 = v128.i32[1];
          v135 = v128.i32[0];
          v136 = vaddq_f32(v131, vmulq_n_f32(vsubq_f32(*(v130 + 16 * v97), v131), v133.f32[0]));
          v137 = vaddq_f32(*(v130 + 16 * v120.i32[1]), vmulq_n_f32(vsubq_f32(*(v130 + 16 * v135), *(v130 + 16 * v120.i32[1])), v133.f32[0]));
          v138 = vaddq_f32(v136, vmulq_lane_f32(vsubq_f32(vaddq_f32(v132, vmulq_n_f32(vsubq_f32(*(v130 + 16 * v117), v132), v133.f32[0])), v136), *v133.f32, 1));
          v139 = vsubq_f32(vaddq_f32(v138, vmulq_laneq_f32(vsubq_f32(vaddq_f32(v137, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v130 + 16 * v120.i32[0]), vmulq_n_f32(vsubq_f32(*(v130 + 16 * v134), *(v130 + 16 * v120.i32[0])), v133.f32[0])), v137), *v133.f32, 1)), v138), v133, 2)), v55);
          v140 = vsubq_f32(vextq_s8(v139, v139, 4uLL), *(v23 + 32));
          v141 = vorrq_s8(vandq_s8(v40, vmulq_f32(v140, v140)), vandq_s8(v140, v66));
          v142 = vaddq_f32(vmulq_lane_f32(vrev64q_s32(v141), *v141.f32, 1), v141);
          v143 = vminq_f32(vmulq_f32(v48, vrsqrteq_f32(v142)), v56);
          v133.i32[0] = vmaxq_f32(vsubq_f32(v90, vmulq_f32(vminq_f32(vmulq_f32(v143, vrsqrtsq_f32(vmulq_f32(v143, v142), v143)), v56), v142)), v36).u32[0];
          v144 = vmulq_f32(v24, v75);
          v145 = vdupq_laneq_s32(v81, 2);
          v146 = vsubq_f32(v145, vdupq_lane_s32(*v83.f32, 0));
          v147 = vmulq_f32(v75, *(v23 + 64));
          v144.i64[0] = vorrq_s8(vandq_s8(vaddq_f32(vextq_s8(v147, v9, 4uLL), vaddq_f32(v147, vrev64q_s32(v147))), v66), vandq_s8(v40, vaddq_f32(vdupq_laneq_s64(v144, 1), vaddq_f32(v144, vrev64q_s32(v144))))).u64[0];
          v148 = vmulq_f32(v75, *(v23 + 80));
          v149 = vsubq_f32(v145, vdupq_lane_s32(*v82.f32, 0));
          v144.i64[1] = vaddq_f32(v148, vaddq_f32(vdupq_lane_s64(*&v148, 0), vextq_s8(*&v9, *&v148, 0xCuLL))).i64[1];
          v150 = vorrq_s8(vandq_s8(vaddq_f32(v48, vmulq_f32(vsubq_f32(v144, v48), vmaxq_f32(vaddq_f32(v73, vmulq_n_f32(vsubq_f32(vaddq_f32(vdupq_laneq_s32(v39, 2), vmulq_f32(v41, vbslq_s8(vcgtq_f32(v48, v149), vaddq_f32(v55, vaddq_f32(vdupq_lane_s32(*v82.f32, 1), vmulq_laneq_f32(vminq_f32(v149, v48), v82, 2))), vbslq_s8(vcgtq_f32(v48, v146), vdupq_lane_s32(*&v88, 0), vaddq_f32(v55, vaddq_f32(vdupq_lane_s32(*v83.f32, 1), vmulq_laneq_f32(vmaxq_f32(v146, v48), v83, 2))))))), v73), v133.f32[0])), v48))), v66), vandq_s8(v40, v144));
          v151 = vmulq_f32(*(v23 + 96), v150);
          v152 = vmulq_f32(*(v23 + 112), v150);
          v153 = vmulq_f32(*(v23 + 128), v150);
          v151.i64[0] = vorrq_s8(vandq_s8(v40, vaddq_f32(vdupq_laneq_s64(v151, 1), vaddq_f32(v151, vrev64q_s32(v151)))), vandq_s8(vaddq_f32(vextq_s8(v152, v9, 4uLL), vaddq_f32(v152, vrev64q_s32(v152))), v66)).u64[0];
          v151.i64[1] = vaddq_f32(v153, vaddq_f32(vdupq_lane_s64(*&v153, 0), vextq_s8(*&v9, *&v153, 0xCuLL))).i64[1];
          *(v11 + v21) = vbslq_s8(*(v23 + 416), v22, v151);
          v21 += 16;
        }

        while (16 * v10 != v21);
      }

      ++v8;
      v11 += v18;
      v12 += v19;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcSatCurves::GetDOD(HGNode *this, HGRenderer *a2, signed int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 > 1)
  {
    if (a3 != 2 && a3 != 3)
    {
      if (a3 == 4)
      {
        v8 = &HGRectInfinite;
        return *v8;
      }

LABEL_9:
      v8 = &HGRectNull;
      return *v8;
    }

LABEL_8:
    Input = HGRenderer::GetInput(a2, this, a3);
    DOD = HGRenderer::GetDOD(a2, Input);
    v12 = HGRectIntersection(v5, v4, DOD, v11);
    if (!HGRectIsNull(v12, v13))
    {
      v14 = HGRenderer::GetInput(a2, this, 0);
      v15 = HGRenderer::GetDOD(a2, v14);
      v17 = v16;
      v18 = HGRenderer::GetInput(a2, this, 4u);
      v19 = HGRenderer::GetDOD(a2, v18);
      v21 = HGRectUnion(v19, v20, 0, 0);
      return HGRectUnion(v15, v17, v21, v22);
    }

    goto LABEL_9;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  return v5;
}

uint64_t HgcSatCurves::GetROI(HGNode *this, HGRenderer *a2, signed int a3, HGRect a4)
{
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 3 || a3 == 4)
    {
      goto LABEL_5;
    }

LABEL_9:
    *&a4.var0 = 0;
    return *&a4.var0;
  }

  if (!a3)
  {
    return *&a4.var0;
  }

  if (a3 != 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  Input = HGRenderer::GetInput(a2, this, a3);
  *&a4.var0 = HGRenderer::GetDOD(a2, Input);
  return *&a4.var0;
}

void HgcSatCurves::HgcSatCurves(HgcSatCurves *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DC8A0;
  operator new();
}

void HgcSatCurves::~HgcSatCurves(HGNode *this)
{
  *this = &unk_2871DC8A0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40502CBA4ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgcSatCurves::~HgcSatCurves(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSatCurves::SetParameter(HgcSatCurves *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      goto LABEL_78;
    case 1:
      v17 = *(this + 51);
      if (v17[4] == a3.n128_f32[0] && v17[5] == a4 && v17[6] == a5 && v17[7] == a6)
      {
        return 0;
      }

      v17[4] = a3.n128_f32[0];
      v17[5] = a4;
      v17[6] = a5;
      v17[7] = a6;
      goto LABEL_78;
    case 2:
      v13 = *(this + 51);
      if (v13[2].n128_f32[0] == a4 && v13[2].n128_f32[1] == a5 && v13[2].n128_f32[2] == 0.0 && v13[2].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v13[2].n128_f32[0] = a4;
      v13[2].n128_f32[1] = a5;
      a3.n128_f32[1] = a4;
      v13[2].n128_u64[1] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v13[27] = a3;
      goto LABEL_78;
    case 3:
      v15 = *(this + 51);
      if (v15[12] == a3.n128_f32[0] && v15[13] == a4 && v15[14] == a5 && v15[15] == a6)
      {
        return 0;
      }

      v15[12] = a3.n128_f32[0];
      v15[13] = a4;
      v15[14] = a5;
      v15[15] = a6;
      goto LABEL_78;
    case 4:
      v10 = *(this + 51);
      if (v10[16] == a3.n128_f32[0] && v10[17] == a4 && v10[18] == a5 && v10[19] == a6)
      {
        return 0;
      }

      v10[16] = a3.n128_f32[0];
      v10[17] = a4;
      v10[18] = a5;
      v10[19] = a6;
      goto LABEL_78;
    case 5:
      v18 = *(this + 51);
      if (v18[20] == a3.n128_f32[0] && v18[21] == a4 && v18[22] == a5 && v18[23] == a6)
      {
        return 0;
      }

      v18[20] = a3.n128_f32[0];
      v18[21] = a4;
      v18[22] = a5;
      v18[23] = a6;
      goto LABEL_78;
    case 6:
      v20 = *(this + 51);
      if (v20[24] == a3.n128_f32[0] && v20[25] == a4 && v20[26] == a5 && v20[27] == a6)
      {
        return 0;
      }

      v20[24] = a3.n128_f32[0];
      v20[25] = a4;
      v20[26] = a5;
      v20[27] = a6;
      goto LABEL_78;
    case 7:
      v16 = *(this + 51);
      if (v16[28] == a3.n128_f32[0] && v16[29] == a4 && v16[30] == a5 && v16[31] == a6)
      {
        return 0;
      }

      v16[28] = a3.n128_f32[0];
      v16[29] = a4;
      v16[30] = a5;
      v16[31] = a6;
      goto LABEL_78;
    case 8:
      v22 = *(this + 51);
      if (v22[32] == a3.n128_f32[0] && v22[33] == a4 && v22[34] == a5 && v22[35] == a6)
      {
        return 0;
      }

      v22[32] = a3.n128_f32[0];
      v22[33] = a4;
      v22[34] = a5;
      v22[35] = a6;
      goto LABEL_78;
    case 9:
      v12 = *(this + 51);
      if (v12[36] == a3.n128_f32[0] && v12[37] == a4 && v12[38] == a5 && v12[39] == a6)
      {
        return 0;
      }

      v12[36] = a3.n128_f32[0];
      v12[37] = a4;
      v12[38] = a5;
      v12[39] = a6;
      goto LABEL_78;
    case 10:
      v21 = *(this + 51);
      if (v21[40] == a3.n128_f32[0] && v21[41] == a4 && v21[42] == a5 && v21[43] == a6)
      {
        return 0;
      }

      v21[40] = a3.n128_f32[0];
      v21[41] = a4;
      v21[42] = a5;
      v21[43] = a6;
      goto LABEL_78;
    case 11:
      v9 = *(this + 51);
      if (v9[44] == a3.n128_f32[0] && v9[45] == a4 && v9[46] == a5 && v9[47] == a6)
      {
        return 0;
      }

      v9[44] = a3.n128_f32[0];
      v9[45] = a4;
      v9[46] = a5;
      v9[47] = a6;
      goto LABEL_78;
    case 12:
      v11 = *(this + 51);
      if (v11[48] == a3.n128_f32[0] && v11[49] == a4 && v11[50] == a5 && v11[51] == a6)
      {
        return 0;
      }

      v11[48] = a3.n128_f32[0];
      v11[49] = a4;
      v11[50] = a5;
      v11[51] = a6;
      goto LABEL_78;
    case 13:
      v19 = *(this + 51);
      if (v19[52] == a3.n128_f32[0] && v19[53] == a4 && v19[54] == a5 && v19[55] == a6)
      {
        return 0;
      }

      v19[52] = a3.n128_f32[0];
      v19[53] = a4;
      v19[54] = a5;
      v19[55] = a6;
      goto LABEL_78;
    case 14:
      v8 = *(this + 51);
      if (v8[56] == a3.n128_f32[0] && v8[57] == a4 && v8[58] == a5 && v8[59] == a6)
      {
        return 0;
      }

      v8[56] = a3.n128_f32[0];
      v8[57] = a4;
      v8[58] = a5;
      v8[59] = a6;
LABEL_78:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

float HgcSatCurves::GetParameter(HgcSatCurves *this, int a2, float *a3)
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
      *a3 = v10[108];
      a3[1] = v10[109];
      a3[2] = v10[110];
      v4 = v10 + 111;
      goto LABEL_17;
    case 3:
      v11 = *(this + 51);
      *a3 = v11[12];
      a3[1] = v11[13];
      a3[2] = v11[14];
      v4 = v11 + 15;
      goto LABEL_17;
    case 4:
      v7 = *(this + 51);
      *a3 = v7[16];
      a3[1] = v7[17];
      a3[2] = v7[18];
      v4 = v7 + 19;
      goto LABEL_17;
    case 5:
      v14 = *(this + 51);
      *a3 = v14[20];
      a3[1] = v14[21];
      a3[2] = v14[22];
      v4 = v14 + 23;
      goto LABEL_17;
    case 6:
      v16 = *(this + 51);
      *a3 = v16[24];
      a3[1] = v16[25];
      a3[2] = v16[26];
      v4 = v16 + 27;
      goto LABEL_17;
    case 7:
      v12 = *(this + 51);
      *a3 = v12[28];
      a3[1] = v12[29];
      a3[2] = v12[30];
      v4 = v12 + 31;
      goto LABEL_17;
    case 8:
      v18 = *(this + 51);
      *a3 = v18[32];
      a3[1] = v18[33];
      a3[2] = v18[34];
      v4 = v18 + 35;
      goto LABEL_17;
    case 9:
      v9 = *(this + 51);
      *a3 = v9[36];
      a3[1] = v9[37];
      a3[2] = v9[38];
      v4 = v9 + 39;
      goto LABEL_17;
    case 10:
      v17 = *(this + 51);
      *a3 = v17[40];
      a3[1] = v17[41];
      a3[2] = v17[42];
      v4 = v17 + 43;
      goto LABEL_17;
    case 11:
      v6 = *(this + 51);
      *a3 = v6[44];
      a3[1] = v6[45];
      a3[2] = v6[46];
      v4 = v6 + 47;
      goto LABEL_17;
    case 12:
      v8 = *(this + 51);
      *a3 = v8[48];
      a3[1] = v8[49];
      a3[2] = v8[50];
      v4 = v8 + 51;
      goto LABEL_17;
    case 13:
      v15 = *(this + 51);
      *a3 = v15[52];
      a3[1] = v15[53];
      a3[2] = v15[54];
      v4 = v15 + 55;
      goto LABEL_17;
    case 14:
      v5 = *(this + 51);
      *a3 = v5[56];
      a3[1] = v5[57];
      a3[2] = v5[58];
      v4 = v5 + 59;
LABEL_17:
      result = *v4;
      a3[3] = *v4;
      break;
    default:
      return result;
  }

  return result;
}

const char *HgcStyleTransferANEPost::GetProgram(HgcStyleTransferANEPost *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004e3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r1.x = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    r0.w = (half) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy).w;\n    r2.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r2.z = r1.x;\n    r2.y = r0.x;\n    r0.xyz = r2.xyz*c0.xxx + c0.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=f52d0ab7:1384f653:b903e6f0:1d860112\n//SIG=00400000:0000000f:0000000f:0000000f:0001:0000:0003:0000:0000:0000:001e:0000:0004:04:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004c6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r1.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    r0.w = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy).w;\n    r2.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r2.z = r1.x;\n    r2.y = r0.x;\n    r0.xyz = r2.xyz*c0.xxx + c0.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=602bc2e9:4d81d660:e5a9a1ef:810a49a3\n//SIG=00000000:0000000f:0000000f:00000000:0001:0000:0003:0000:0000:0000:001e:0000:0004:04:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000401\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0.x = texture2D(hg_Texture1, hg_TexCoord1.xy).x;\n    r1.x = texture2D(hg_Texture2, hg_TexCoord2.xy).x;\n    r0.w = texture2D(hg_Texture3, hg_TexCoord3.xy).w;\n    r2.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r2.z = r1.x;\n    r2.y = r0.x;\n    r0.xyz = r2.xyz*c0.xxx + c0.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=9773afd2:7c1ee8b3:e770e7da:fd748111\n//SIG=00000000:0000000f:0000000f:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0004:04:0:1:0\n";
  }
}

void sub_25FA59D54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA59F14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA59F6C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA59F64);
}

uint64_t HgcStyleTransferANEPost::BindTexture(HgcStyleTransferANEPost *this, HGHandler *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      (*(*a2 + 72))(a2, 2, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 2;
    }

    else
    {
      if (a3 != 3)
      {
        return result;
      }

      (*(*a2 + 72))(a2, 3, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 3;
    }
  }

  else if (a3)
  {
    if (a3 != 1)
    {
      return result;
    }

    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 1;
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

uint64_t HgcStyleTransferANEPost::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 8) - *a2;
    v5 = *(a2 + 24);
    v6 = *(a2 + 16);
    v7 = *(a2 + 80);
    v8 = *(a2 + 88);
    v9 = *(a2 + 128);
    v10 = *(a2 + 112);
    v11 = 16 * *(a2 + 136);
    v12 = 16 * *(a2 + 120);
    v13 = 16 * *(a2 + 104);
    v14 = *(a2 + 96);
    v15 = 16 * v8;
    v16 = 16 * v5;
    do
    {
      if (v4 < 4)
      {
        v18 = 0;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        for (i = v4; i > 3; i -= 4)
        {
          v20 = *(v14 + v17);
          v21 = *(v14 + v17 + 16);
          v22 = *(v14 + v17 + 32);
          v23 = *(v14 + v17 + 48);
          v24.i64[0] = *(v14 + v17);
          v25.i64[0] = *(v14 + v17 + 16);
          v26.i64[0] = *(v14 + v17 + 32);
          v27 = *(v7 + v17);
          v28 = *(v7 + v17 + 16);
          v29 = *(v7 + v17 + 32);
          v30 = *(v7 + v17 + 48);
          v27.i64[1] = *(v10 + v17);
          v28.i64[1] = *(v10 + v17 + 16);
          v29.i64[1] = *(v10 + v17 + 32);
          v24.i64[1] = *(v9 + v17 + 8);
          v30.i64[1] = *(v10 + v17 + 48);
          v25.i64[1] = *(v9 + v17 + 24);
          v20.i64[1] = vdupq_laneq_s64(*(v9 + v17), 1).u64[0];
          v21.i64[1] = vdupq_laneq_s64(*(v9 + v17 + 16), 1).u64[0];
          v31.i64[0] = *(v14 + v17 + 48);
          v22.i64[1] = vdupq_laneq_s64(*(v9 + v17 + 32), 1).u64[0];
          v23.i64[1] = vdupq_laneq_s64(*(v9 + v17 + 48), 1).u64[0];
          v32 = *(a1 + 408);
          v33 = *(v32 + 16);
          v26.i64[1] = *(v9 + v17 + 40);
          v31.i64[1] = *(v9 + v17 + 56);
          v34 = vaddq_f32(v33, vmulq_f32(v33, vbslq_s8(*v32, vrev64q_s32(v20), v27)));
          v35 = *(v32 + 32);
          v36 = vbslq_s8(v35, v24, v34);
          v37 = vbslq_s8(v35, v25, vaddq_f32(v33, vmulq_f32(v33, vbslq_s8(*v32, vrev64q_s32(v21), v28))));
          v38 = vbslq_s8(v35, v26, vaddq_f32(v33, vmulq_f32(v33, vbslq_s8(*v32, vrev64q_s32(v22), v29))));
          v39 = vbslq_s8(v35, v31, vaddq_f32(v33, vmulq_f32(v33, vbslq_s8(*v32, vrev64q_s32(v23), v30))));
          v40 = (v6 + v17);
          *v40 = vbslq_s8(v35, v24, vmulq_laneq_f32(v36, v36, 3));
          v40[1] = vbslq_s8(v35, v25, vmulq_laneq_f32(v37, v37, 3));
          v40[2] = vbslq_s8(v35, v26, vmulq_laneq_f32(v38, v38, 3));
          v40[3] = vbslq_s8(v35, v31, vmulq_laneq_f32(v39, v39, 3));
          v18 += 4;
          v17 += 64;
        }
      }

      if (v18 < v4)
      {
        do
        {
          v41 = *(v14 + 16 * v18);
          v42.i64[0] = *(v14 + 16 * v18);
          v42.i64[1] = *(v9 + 16 * v18 + 8);
          v43 = *(v7 + 16 * v18);
          v43.i64[1] = *(v10 + 16 * v18);
          v41.i64[1] = vdupq_laneq_s64(*(v9 + 16 * v18), 1).u64[0];
          v44 = *(a1 + 408);
          v45 = *(v44 + 32);
          v46 = vbslq_s8(v45, v42, vaddq_f32(*(v44 + 16), vmulq_f32(*(v44 + 16), vbslq_s8(*v44, vrev64q_s32(v41), v43))));
          *(v6 + 16 * v18++) = vbslq_s8(v45, v42, vmulq_laneq_f32(v46, v46, 3));
        }

        while (v18 < v4);
      }

      ++v3;
      v9 += v11;
      v10 += v12;
      v14 += v13;
      v7 += v15;
      v6 += v16;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcStyleTransferANEPost::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 4)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcStyleTransferANEPost::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 4)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcStyleTransferANEPost::HgcStyleTransferANEPost(HgcStyleTransferANEPost *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DCB08;
  operator new();
}

void HgcStyleTransferANEPost::~HgcStyleTransferANEPost(HGNode *this)
{
  *this = &unk_2871DCB08;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);
}

{
  HgcStyleTransferANEPost::~HgcStyleTransferANEPost(this);

  HGObject::operator delete(v1);
}

const char *HgcASC_CDL::GetProgram(HgcASC_CDL *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003aa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.2125999928, 0.7152000070, 0.07220000029, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz), 0.00000h, 1.00000h);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[2].xyz));\n    r2.xyz = half3(dot(r1.xyz, c0.xyz));\n    r1.xyz = clamp(mix(r2.xyz, r1.xyz, half3(hg_Params[3].xyz)), 0.00000h, 1.00000h);\n    r1.w = r0.w;\n    output.color0 = float4(r1);\n    return output;\n}\n//MD5=5ba0f389:acdf4bc8:beb086b0:fb53554a\n//SIG=00400000:00000001:00000001:00000001:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000383\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.2125999928, 0.7152000070, 0.07220000029, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz, 0.00000f, 1.00000f);\n    r1.xyz = pow(r1.xyz, hg_Params[2].xyz);\n    r2.xyz = float3(dot(r1.xyz, c0.xyz));\n    r1.xyz = clamp(mix(r2.xyz, r1.xyz, hg_Params[3].xyz), 0.00000f, 1.00000f);\n    r1.w = r0.w;\n    output.color0 = r1;\n    return output;\n}\n//MD5=2e44c5e3:f30a6789:564267a0:1f6c5899\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003e6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.2125999928, 0.7152000070, 0.07220000029, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = clamp(r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz, vec3(0.00000), vec3(1.00000));\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal2.xyz);\n    r2.xyz = vec3(dot(r1.xyz, c0.xyz));\n    r1.xyz = clamp(mix(r2.xyz, r1.xyz, hg_ProgramLocal3.xyz), vec3(0.00000), vec3(1.00000));\n    r1.w = r0.w;\n    gl_FragColor = r1;\n}\n//MD5=f796bbb7:48b83b79:d126ddf0:4c8345b2\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA5A6FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA5A7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA5A83C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA5A834);
}

uint64_t HgcASC_CDL::BindTexture(HgcASC_CDL *this, HGHandler *a2, int a3)
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

uint64_t HgcASC_CDL::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcASC_CDL::RenderTile(uint64_t a1, uint64_t a2)
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
          v15 = *(v14 + 16);
          v16 = vaddq_f32(v15, vmulq_f32(v12, *v14));
          v17 = vaddq_f32(v15, vmulq_f32(v13, *v14));
          v18 = *(v14 + 64);
          v19 = *(v14 + 80);
          v20 = vminq_f32(vmaxq_f32(v16, v18), v19);
          v21 = vminq_f32(vmaxq_f32(v17, v18), v19);
          v22 = *(v14 + 96);
          v23 = *(v14 + 112);
          v24 = vorrq_s8(vandq_s8(v22, v20), v19);
          v25 = vorrq_s8(vandq_s8(v22, v21), v19);
          v26 = *(v14 + 128);
          v27 = *(v14 + 144);
          v28 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v20, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v23, v20)));
          v29 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v21, 0x17uLL)), vandq_s8(v26, vcgtq_f32(v23, v21)));
          v30 = *(v14 + 160);
          v31 = *(v14 + 176);
          v32 = vandq_s8(v19, vcgtq_f32(v24, v30));
          v33 = vandq_s8(v19, vcgtq_f32(v25, v30));
          v34 = vaddq_f32(vsubq_f32(v28, v27), v32);
          v35 = vsubq_f32(vsubq_f32(v24, v19), vmulq_f32(vmulq_f32(v31, v32), v24));
          v36 = vsubq_f32(vsubq_f32(v25, v19), vmulq_f32(vmulq_f32(v31, v33), v25));
          v37 = *(v14 + 192);
          v38 = *(v14 + 208);
          v39 = *(v14 + 224);
          v40 = *(v14 + 240);
          v41 = vaddq_f32(vaddq_f32(vsubq_f32(v29, v27), v33), vmulq_f32(v36, vaddq_f32(vaddq_f32(v39, vmulq_f32(v36, v40)), vmulq_f32(vmulq_f32(v36, v36), vaddq_f32(v37, vmulq_f32(v38, v36))))));
          v42 = *(v14 + 32);
          v43 = *(v14 + 48);
          v44 = vmulq_f32(v42, vaddq_f32(v34, vmulq_f32(v35, vaddq_f32(vaddq_f32(v39, vmulq_f32(v35, v40)), vmulq_f32(vmulq_f32(v35, v35), vaddq_f32(v37, vmulq_f32(v38, v35)))))));
          v45 = vmulq_f32(v42, v41);
          v46 = *(v14 + 256);
          v47 = *(v14 + 272);
          v48 = vmaxq_f32(v44, v46);
          v49 = vmaxq_f32(v45, v46);
          v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
          v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
          v52 = vsubq_f32(v50, vandq_s8(v19, vcgtq_f32(v50, v48)));
          v53 = vsubq_f32(v51, vandq_s8(v19, vcgtq_f32(v51, v49)));
          v54 = vsubq_f32(v48, v52);
          v55 = vsubq_f32(v49, v53);
          v56 = *(v14 + 288);
          v57 = *(v14 + 304);
          v58 = vmulq_f32(v55, vaddq_f32(v57, vmulq_f32(v55, vaddq_f32(v47, vmulq_f32(v56, v55)))));
          v59 = vaddq_f32(v19, vmulq_f32(v54, vaddq_f32(v57, vmulq_f32(v54, vaddq_f32(v47, vmulq_f32(v56, v54))))));
          v60 = vcvtq_s32_f32(v53);
          v61 = *(v14 + 320);
          v62 = *(v14 + 336);
          v63 = vmulq_f32(v59, vshlq_n_s32(vaddq_s32(v61, vcvtq_s32_f32(v52)), 0x17uLL));
          v64 = vmulq_f32(vaddq_f32(v19, v58), vshlq_n_s32(vaddq_s32(v61, v60), 0x17uLL));
          v65 = vmulq_f32(v62, v63);
          v66 = vmulq_f32(v62, v64);
          v67 = vaddq_f32(vdupq_laneq_s32(v65, 2), vaddq_f32(vdupq_lane_s32(*v65.i8, 0), vdupq_lane_s32(*v65.i8, 1)));
          v68 = vaddq_f32(vdupq_laneq_s32(v66, 2), vaddq_f32(vdupq_lane_s32(*v66.i8, 0), vdupq_lane_s32(*v66.i8, 1)));
          v69 = vminq_f32(vmaxq_f32(vaddq_f32(v67, vmulq_f32(v43, vsubq_f32(v63, v67))), v18), v19);
          v70 = vminq_f32(vmaxq_f32(vaddq_f32(v68, vmulq_f32(v43, vsubq_f32(v64, v68))), v18), v19);
          v71 = *(v14 + 352);
          v72 = (v5 + v10);
          v72[-1] = vbslq_s8(v71, v12, v69);
          *v72 = vbslq_s8(v71, v13, v70);
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v73 = *(v6 + 16 * v9);
        v74 = *(a1 + 408);
        v75 = *(v74 + 64);
        v76 = *(v74 + 80);
        v77 = vminq_f32(vmaxq_f32(vaddq_f32(*(v74 + 16), vmulq_f32(v73, *v74)), v75), v76);
        v78 = vorrq_s8(vandq_s8(*(v74 + 96), v77), v76);
        v79 = vandq_s8(v76, vcgtq_f32(v78, *(v74 + 160)));
        v80 = vsubq_f32(vsubq_f32(v78, v76), vmulq_f32(vmulq_f32(*(v74 + 176), v79), v78));
        v81 = vmaxq_f32(vmulq_f32(*(v74 + 32), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v77, 0x17uLL)), vandq_s8(*(v74 + 128), vcgtq_f32(*(v74 + 112), v77))), *(v74 + 144)), v79), vmulq_f32(v80, vaddq_f32(vaddq_f32(*(v74 + 224), vmulq_f32(v80, *(v74 + 240))), vmulq_f32(vmulq_f32(v80, v80), vaddq_f32(*(v74 + 192), vmulq_f32(*(v74 + 208), v80))))))), *(v74 + 256));
        v82 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
        v83 = vsubq_f32(v82, vandq_s8(v76, vcgtq_f32(v82, v81)));
        v84 = vsubq_f32(v81, v83);
        v85 = vmulq_f32(vaddq_f32(v76, vmulq_f32(v84, vaddq_f32(*(v74 + 304), vmulq_f32(v84, vaddq_f32(*(v74 + 272), vmulq_f32(*(v74 + 288), v84)))))), vshlq_n_s32(vaddq_s32(*(v74 + 320), vcvtq_s32_f32(v83)), 0x17uLL));
        v86 = vmulq_f32(*(v74 + 336), v85);
        v87 = vaddq_f32(vdupq_laneq_s32(v86, 2), vaddq_f32(vdupq_lane_s32(*v86.i8, 0), vdupq_lane_s32(*v86.i8, 1)));
        *(v5 + 16 * v9) = vbslq_s8(*(v74 + 352), v73, vminq_f32(vmaxq_f32(vaddq_f32(v87, vmulq_f32(*(v74 + 48), vsubq_f32(v85, v87))), v75), v76));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcASC_CDL::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcASC_CDL::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcASC_CDL::HgcASC_CDL(HgcASC_CDL *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DCD70;
  operator new();
}

void HgcASC_CDL::~HgcASC_CDL(HGNode *this)
{
  *this = &unk_2871DCD70;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F47AF14);
  }

  HGNode::~HGNode(this);
}

{
  HgcASC_CDL::~HgcASC_CDL(this);

  HGObject::operator delete(v1);
}

uint64_t HgcASC_CDL::SetParameter(HgcASC_CDL *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      v9 = *(this + 51);
      if (*(v9 + 48) != a3.n128_f32[0] || *(v9 + 52) != a3.n128_f32[0] || *(v9 + 56) != a3.n128_f32[0] || *(v9 + 60) != 0.0)
      {
        v10 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
        v10.i32[2] = a3.n128_u32[0];
        a3.n128_f32[1] = a4;
        *(v9 + 48) = v10;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        *(v9 + 368) = a3;
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

float HgcASC_CDL::GetParameter(HgcASC_CDL *this, int a2, float *a3)
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
      *a3 = v5[92];
      a3[1] = v5[93];
      a3[2] = v5[94];
      v4 = v5 + 95;
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

const char *HgcColorCurves::GetProgram(HgcColorCurves *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_42;
    }

    else
    {
      return aMetal10Len0000_43;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_13;
  }
}

void sub_25FA5B3C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260344D10;
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

void sub_25FA5B6C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA5B748()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA5B740);
}

uint64_t HgcColorCurves::BindTexture(HgcColorCurves *this, HGHandler *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
      {
        (*(*a2 + 72))(a2, 1, 0);
        (*(*a2 + 56))(a2, 0);
      }

      v9.n128_f32[0] = (*(a2 + 49) - *(a2 + 47));
      v10.n128_u64[0] = 0;
      v11.n128_u64[0] = 0;
      v12.n128_u64[0] = 0;
      (*(*a2 + 136))(a2, 18, v9, v10, v11, v12);
    }

    else
    {
      (*(*a2 + 72))(a2, 0);
      (*(*a2 + 48))(a2, 0, 0);
      HGHandler::TexCoord(a2, 0, 0, 0, 0);
      v21 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
      result = 0;
      if (v21)
      {
        return result;
      }

      (*(*a2 + 168))(a2);
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
        {
          (*(*a2 + 72))(a2, 2, 0);
          (*(*a2 + 56))(a2, 0);
        }

        v13.n128_f32[0] = (*(a2 + 49) - *(a2 + 47));
        v14.n128_u64[0] = 0;
        v15.n128_u64[0] = 0;
        v16.n128_u64[0] = 0;
        (*(*a2 + 136))(a2, 19, v13, v14, v15, v16);
        break;
      case 3:
        if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
        {
          (*(*a2 + 72))(a2, 3, 0);
          (*(*a2 + 56))(a2, 0);
        }

        v17.n128_f32[0] = (*(a2 + 49) - *(a2 + 47));
        v18.n128_u64[0] = 0;
        v19.n128_u64[0] = 0;
        v20.n128_u64[0] = 0;
        (*(*a2 + 136))(a2, 20, v17, v18, v19, v20);
        break;
      case 4:
        if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
        {
          (*(*a2 + 72))(a2, 4, 0);
          (*(*a2 + 56))(a2, 0);
        }

        v5.n128_f32[0] = (*(a2 + 49) - *(a2 + 47));
        v6.n128_u64[0] = 0;
        v7.n128_u64[0] = 0;
        v8.n128_u64[0] = 0;
        (*(*a2 + 136))(a2, 21, v5, v6, v7, v8);
        break;
      default:
        return result;
    }
  }

  return 0;
}

uint64_t HgcColorCurves::Bind(void *a1, uint64_t a2)
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
  (*(*a2 + 144))(a2, 16, a1[51] + 256, 1);
  (*(*a2 + 144))(a2, 17, a1[51] + 272, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcColorCurves::RenderTile(HgcColorCurves *this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *(a2 + 3) - *(a2 + 1);
  if (v6 >= 1)
  {
    v7 = 0;
    v8.i32[1] = 0;
    v8.f32[0] = (*(a2 + 58) - *(a2 + 56));
    v11.i32[1] = 0;
    v9.i32[1] = 0;
    v9.f32[0] = (*(a2 + 62) - *(a2 + 60));
    v10.i32[1] = 0;
    v10.f32[0] = (*(a2 + 66) - *(a2 + 64));
    v11.f32[0] = (*(a2 + 70) - *(a2 + 68));
    v12 = *(a2 + 2) - *a2;
    v13 = *(a2 + 2);
    v14 = *(a2 + 10);
    __asm { FMOV            V0.2S, #-1.0 }

    v328 = vadd_f32(v8.u32[0], _D0);
    v326 = vadd_f32(v328, _D0);
    v20 = vadd_f32(v9.u32[0], _D0);
    v329 = vadd_f32(v20, _D0);
    v21 = vadd_f32(v10.u32[0], _D0);
    v22 = vadd_f32(v21, _D0);
    v23 = vadd_f32(v11.u32[0], _D0);
    v24 = vadd_f32(v23, _D0);
    v25 = 16 * *(a2 + 6);
    v26 = 16 * *(a2 + 22);
    v327 = v8.u32[0];
    do
    {
      if (v12 < 2)
      {
        v27 = 0;
      }

      else
      {
        v27 = 0;
        v28 = 16;
        v29 = v12;
        do
        {
          v31 = *(v14 + v28 - 16);
          v30 = *(v14 + v28);
          v32 = *(this + 51);
          v33 = *(v32 + 64);
          v34 = vmulq_f32(v31, v33);
          v35 = vmulq_f32(v30, v33);
          v36 = vaddq_f32(vdupq_laneq_s32(v34, 2), vaddq_f32(vdupq_lane_s32(*v34.i8, 0), vdupq_lane_s32(*v34.i8, 1)));
          v37 = vaddq_f32(vdupq_laneq_s32(v35, 2), vaddq_f32(vdupq_lane_s32(*v35.i8, 0), vdupq_lane_s32(*v35.i8, 1)));
          v38 = *(v32 + 160);
          v39 = *(v32 + 176);
          v40 = vminq_f32(vmaxq_f32(v37, v38), v39).u64[0];
          v41 = vmul_f32(v8, vmin_f32(vmax_f32(*v36.f32, *v38.f32), *v39.f32));
          if (v5)
          {
            v42 = vmin_f32(vmax_f32(vadd_f32(v41, 0xBF000000BF000000), 0), v328);
            v43 = vcvt_s32_f32(vmin_f32(v42, v326));
            v44 = *(a2 + 12);
            *&v45 = vaddq_f32(*(v44 + 16 * v43.i32[0]), vmulq_n_f32(vsubq_f32(*(v44 + 16 * v43.i32[0] + 16), *(v44 + 16 * v43.i32[0])), vsub_f32(v42, vcvt_f32_s32(v43)).f32[0])).u64[0];
            v46 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v8, v40), 0xBF000000BF000000), 0), v328);
            v47 = vcvt_s32_f32(vmin_f32(v46, v326));
            *&v48 = vaddq_f32(*(v44 + 16 * v47.i32[0]), vmulq_n_f32(vsubq_f32(*(v44 + 16 * v47.i32[0] + 16), *(v44 + 16 * v47.i32[0])), vsub_f32(v46, vcvt_f32_s32(v47)).f32[0])).u64[0];
          }

          else
          {
            v49 = *(a2 + 12);
            v45 = *(v49 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v41, 0), v328)).i32[0]);
            v48 = *(v49 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v8, v40), 0), v328)).i32[0]);
          }

          v50 = vdupq_lane_s32(*v39.f32, 0);
          v51 = vsubq_f32(v36, v50);
          v52 = vsubq_f32(v37, v50);
          v53 = *(v32 + 288);
          v54 = vdupq_lane_s32(*v39.f32, 1);
          v55 = vaddq_f32(v54, vmulq_laneq_f32(vmaxq_f32(v51, v53), v39, 2));
          v56 = vaddq_f32(v54, vmulq_laneq_f32(vmaxq_f32(v52, v53), v39, 2));
          v57 = vdupq_lane_s32(*v38.f32, 0);
          v58 = vsubq_f32(v36, v57);
          v59 = vsubq_f32(v37, v57);
          v60 = vdupq_lane_s32(*v38.f32, 1);
          v61 = vsubq_f32(vbslq_s8(vcgtq_f32(v53, v59), vaddq_f32(v60, vmulq_laneq_f32(vminq_f32(v59, v53), v38, 2)), vbslq_s8(vcgtq_f32(v53, v52), vdupq_lane_s32(*&v48, 0), v56)), v37);
          v62 = vaddq_f32(v31, vsubq_f32(vbslq_s8(vcgtq_f32(v53, v58), vaddq_f32(v60, vmulq_laneq_f32(vminq_f32(v58, v53), v38, 2)), vbslq_s8(vcgtq_f32(v53, v51), vdupq_lane_s32(*&v45, 0), v55)), v36));
          v63 = vaddq_f32(v30, v61);
          v65 = *(v32 + 192);
          v64 = *(v32 + 208);
          v66 = vdupq_lane_s32(*v65.f32, 0);
          v67 = vdupq_lane_s32(*v64.f32, 0);
          v68 = vminq_f32(vmaxq_f32(v62, v66), v67);
          v69 = vminq_f32(vmaxq_f32(v63, v66), v67);
          v70 = vmul_f32(v9, *v68.i8);
          if (v5)
          {
            v71 = vmin_f32(vmax_f32(vadd_f32(v70, 0xBF000000BF000000), 0), v20);
            v72 = vcvt_s32_f32(vmin_f32(v71, v329));
            v73 = *(a2 + 14);
            v74 = vaddq_f32(*(v73 + 16 * v72.i32[0]), vmulq_n_f32(vsubq_f32(*(v73 + 16 * v72.i32[0] + 16), *(v73 + 16 * v72.i32[0])), vsub_f32(v71, vcvt_f32_s32(v72)).f32[0]));
            v75 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v9, *v69.i8), 0xBF000000BF000000), 0), v20);
            v76 = vcvt_s32_f32(vmin_f32(v75, v329));
            v77 = vaddq_f32(*(v73 + 16 * v76.i32[0]), vmulq_n_f32(vsubq_f32(*(v73 + 16 * v76.i32[0] + 16), *(v73 + 16 * v76.i32[0])), vsub_f32(v75, vcvt_f32_s32(v76)).f32[0]));
          }

          else
          {
            v73 = *(a2 + 14);
            v74 = *(v73 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v70, 0), v20)).i32[0]);
            v77 = *(v73 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v9, *v69.i8), 0), v20)).i32[0]);
          }

          v78 = *(v32 + 304);
          v79 = vbslq_s8(v78, v74, v68);
          v80 = vbslq_s8(v78, v77, v69);
          v81 = vrev64q_s32(v80).u64[0];
          v82 = vmul_f32(v9, vrev64_s32(*v79.i8));
          if (v5)
          {
            v83 = vmin_f32(vmax_f32(vadd_f32(v82, 0xBF000000BF000000), 0), v20);
            v84 = vcvt_s32_f32(vmin_f32(v83, v329));
            v85 = vaddq_f32(*(v73 + 16 * v84.i32[0]), vmulq_n_f32(vsubq_f32(*(v73 + 16 * v84.i32[0] + 16), *(v73 + 16 * v84.i32[0])), vsub_f32(v83, vcvt_f32_s32(v84)).f32[0]));
            v86 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v9, v81), 0xBF000000BF000000), 0), v20);
            v87 = vcvt_s32_f32(vmin_f32(v86, v329));
            v88 = vaddq_f32(*(v73 + 16 * v87.i32[0]), vmulq_n_f32(vsubq_f32(*(v73 + 16 * v87.i32[0] + 16), *(v73 + 16 * v87.i32[0])), vsub_f32(v86, vcvt_f32_s32(v87)).f32[0]));
          }

          else
          {
            v85 = *(v73 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v82, 0), v20)).i32[0]);
            v88 = *(v73 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v9, v81), 0), v20)).i32[0]);
          }

          v89 = *(v32 + 320);
          v90 = vbslq_s8(v89, vrev64q_s32(v85), v79);
          v91 = vbslq_s8(v89, vrev64q_s32(v88), v80);
          v92 = vextq_s8(v91, v91, 8uLL).u64[0];
          v93 = vmul_f32(v9, *&vextq_s8(v90, v90, 8uLL));
          if (v5)
          {
            v94 = vmin_f32(vmax_f32(vadd_f32(v93, 0xBF000000BF000000), 0), v20);
            v95 = vcvt_s32_f32(vmin_f32(v94, v329));
            *&v96 = vaddq_f32(*(v73 + 16 * v95.i32[0]), vmulq_n_f32(vsubq_f32(*(v73 + 16 * v95.i32[0] + 16), *(v73 + 16 * v95.i32[0])), vsub_f32(v94, vcvt_f32_s32(v95)).f32[0])).u64[0];
            v97 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v9, v92), 0xBF000000BF000000), 0), v20);
            v98 = vcvt_s32_f32(vmin_f32(v97, v329));
            *&v99 = vaddq_f32(*(v73 + 16 * v98.i32[0]), vmulq_n_f32(vsubq_f32(*(v73 + 16 * v98.i32[0] + 16), *(v73 + 16 * v98.i32[0])), vsub_f32(v97, vcvt_f32_s32(v98)).f32[0])).u64[0];
          }

          else
          {
            v96 = *(v73 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v93, 0), v20)).i32[0]);
            v99 = *(v73 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v9, v92), 0), v20)).i32[0]);
          }

          v90.i64[1] = v96;
          v91.i64[1] = v99;
          v100 = vsubq_f32(v62, v67);
          v101 = vsubq_f32(v63, v67);
          v102 = vdupq_lane_s32(*v64.f32, 1);
          v103 = vaddq_f32(v102, vmulq_laneq_f32(vmaxq_f32(v100, v53), v64, 2));
          v104 = vbslq_s8(vcgtq_f32(v53, v101), v91, vaddq_f32(v102, vmulq_laneq_f32(vmaxq_f32(v101, v53), v64, 2)));
          v105 = vsubq_f32(v62, v66);
          v106 = vsubq_f32(v63, v66);
          v107 = vdupq_lane_s32(*v65.f32, 1);
          v108 = vsubq_f32(vbslq_s8(vcgtq_f32(v53, v106), vaddq_f32(v107, vmulq_laneq_f32(vminq_f32(v106, v53), v65, 2)), v104), v63);
          v109 = vaddq_f32(v62, vmulq_f32(*v32, vsubq_f32(vbslq_s8(vcgtq_f32(v53, v105), vaddq_f32(v107, vmulq_laneq_f32(vminq_f32(v105, v53), v65, 2)), vbslq_s8(vcgtq_f32(v53, v100), v90, v103)), v62)));
          v110 = vaddq_f32(v63, vmulq_f32(*v32, v108));
          v111 = *(v32 + 224);
          v112 = *(v32 + 240);
          v113 = vdupq_lane_s32(*v111.f32, 0);
          v114 = vdupq_lane_s32(*v112.f32, 0);
          v115 = vminq_f32(vmaxq_f32(v109, v113), v114);
          v116 = vminq_f32(vmaxq_f32(v110, v113), v114);
          v117 = vmul_f32(v10, *v115.i8);
          if (v5)
          {
            v118 = vmin_f32(vmax_f32(vadd_f32(v117, 0xBF000000BF000000), 0), v21);
            v119 = vcvt_s32_f32(vmin_f32(v118, v22));
            v120 = *(a2 + 16);
            v121 = vaddq_f32(*(v120 + 16 * v119.i32[0]), vmulq_n_f32(vsubq_f32(*(v120 + 16 * v119.i32[0] + 16), *(v120 + 16 * v119.i32[0])), vsub_f32(v118, vcvt_f32_s32(v119)).f32[0]));
            v122 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, *v116.i8), 0xBF000000BF000000), 0), v21);
            v123 = vcvt_s32_f32(vmin_f32(v122, v22));
            v124 = vaddq_f32(*(v120 + 16 * v123.i32[0]), vmulq_n_f32(vsubq_f32(*(v120 + 16 * v123.i32[0] + 16), *(v120 + 16 * v123.i32[0])), vsub_f32(v122, vcvt_f32_s32(v123)).f32[0]));
          }

          else
          {
            v120 = *(a2 + 16);
            v121 = *(v120 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v117, 0), v21)).i32[0]);
            v124 = *(v120 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, *v116.i8), 0), v21)).i32[0]);
          }

          v125 = vmvnq_s8(v78);
          v126 = vorrq_s8(vandq_s8(v78, v121), vandq_s8(v115, v125));
          v127 = vorrq_s8(vandq_s8(v78, v124), vandq_s8(v116, v125));
          v128 = vrev64q_s32(v127).u64[0];
          v129 = vmul_f32(v10, vrev64_s32(*v126.i8));
          if (v5)
          {
            v130 = vmin_f32(vmax_f32(vadd_f32(v129, 0xBF000000BF000000), 0), v21);
            v131 = vcvt_s32_f32(vmin_f32(v130, v22));
            v132 = vaddq_f32(*(v120 + 16 * v131.i32[0]), vmulq_n_f32(vsubq_f32(*(v120 + 16 * v131.i32[0] + 16), *(v120 + 16 * v131.i32[0])), vsub_f32(v130, vcvt_f32_s32(v131)).f32[0]));
            v133 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, v128), 0xBF000000BF000000), 0), v21);
            v134 = vcvt_s32_f32(vmin_f32(v133, v22));
            v135 = vaddq_f32(*(v120 + 16 * v134.i32[0]), vmulq_n_f32(vsubq_f32(*(v120 + 16 * v134.i32[0] + 16), *(v120 + 16 * v134.i32[0])), vsub_f32(v133, vcvt_f32_s32(v134)).f32[0]));
          }

          else
          {
            v132 = *(v120 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v129, 0), v21)).i32[0]);
            v135 = *(v120 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, v128), 0), v21)).i32[0]);
          }

          v136 = vmvnq_s8(v89);
          v137 = vorrq_s8(vandq_s8(vrev64q_s32(v132), v89), vandq_s8(v126, v136));
          v138 = vorrq_s8(vandq_s8(vrev64q_s32(v135), v89), vandq_s8(v127, v136));
          v139 = vextq_s8(v138, v138, 8uLL).u64[0];
          v140 = vmul_f32(v10, *&vextq_s8(v137, v137, 8uLL));
          if (v5)
          {
            v141 = vmin_f32(vmax_f32(vadd_f32(v140, 0xBF000000BF000000), 0), v21);
            v142 = vcvt_s32_f32(vmin_f32(v141, v22));
            *&v143 = vaddq_f32(*(v120 + 16 * v142.i32[0]), vmulq_n_f32(vsubq_f32(*(v120 + 16 * v142.i32[0] + 16), *(v120 + 16 * v142.i32[0])), vsub_f32(v141, vcvt_f32_s32(v142)).f32[0])).u64[0];
            v144 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, v139), 0xBF000000BF000000), 0), v21);
            v145 = vcvt_s32_f32(vmin_f32(v144, v22));
            *&v146 = vaddq_f32(*(v120 + 16 * v145.i32[0]), vmulq_n_f32(vsubq_f32(*(v120 + 16 * v145.i32[0] + 16), *(v120 + 16 * v145.i32[0])), vsub_f32(v144, vcvt_f32_s32(v145)).f32[0])).u64[0];
          }

          else
          {
            v143 = *(v120 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v140, 0), v21)).i32[0]);
            v146 = *(v120 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, v139), 0), v21)).i32[0]);
          }

          v137.i64[1] = v143;
          v138.i64[1] = v146;
          v147 = vsubq_f32(v109, v114);
          v148 = vsubq_f32(v110, v114);
          v149 = vdupq_lane_s32(*v112.f32, 1);
          v150 = vbslq_s8(vcgtq_f32(v53, v147), v137, vaddq_f32(v149, vmulq_laneq_f32(vmaxq_f32(v147, v53), v112, 2)));
          v151 = vbslq_s8(vcgtq_f32(v53, v148), v138, vaddq_f32(v149, vmulq_laneq_f32(vmaxq_f32(v148, v53), v112, 2)));
          v152 = vsubq_f32(v109, v113);
          v153 = vsubq_f32(v110, v113);
          v154 = vdupq_lane_s32(*v111.f32, 1);
          v155 = vsubq_f32(vbslq_s8(vcgtq_f32(v53, v152), vaddq_f32(v154, vmulq_laneq_f32(vminq_f32(v152, v53), v111, 2)), v150), v109);
          v156 = *(v32 + 16);
          v157 = vaddq_f32(v109, vmulq_f32(v156, v155));
          v158 = vaddq_f32(v110, vmulq_f32(v156, vsubq_f32(vbslq_s8(vcgtq_f32(v53, v153), vaddq_f32(v154, vmulq_laneq_f32(vminq_f32(v153, v53), v111, 2)), v151), v110)));
          v159 = *(v32 + 256);
          v160 = *(v32 + 272);
          v161 = vdupq_lane_s32(*v159.f32, 0);
          v162 = vdupq_lane_s32(*v160.f32, 0);
          v163 = vminq_f32(vmaxq_f32(v157, v161), v162);
          v164 = vminq_f32(vmaxq_f32(v158, v161), v162);
          v165 = vmul_f32(v11, *v163.i8);
          if (v5)
          {
            v166 = vmin_f32(vmax_f32(vadd_f32(v165, 0xBF000000BF000000), 0), v23);
            v167 = vcvt_s32_f32(vmin_f32(v166, v24));
            v168 = *(a2 + 18);
            v169 = vaddq_f32(*(v168 + 16 * v167.i32[0]), vmulq_n_f32(vsubq_f32(*(v168 + 16 * v167.i32[0] + 16), *(v168 + 16 * v167.i32[0])), vsub_f32(v166, vcvt_f32_s32(v167)).f32[0]));
            v170 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v11, *v164.i8), 0xBF000000BF000000), 0), v23);
            v171 = vcvt_s32_f32(vmin_f32(v170, v24));
            v172 = vaddq_f32(*(v168 + 16 * v171.i32[0]), vmulq_n_f32(vsubq_f32(*(v168 + 16 * v171.i32[0] + 16), *(v168 + 16 * v171.i32[0])), vsub_f32(v170, vcvt_f32_s32(v171)).f32[0]));
          }

          else
          {
            v168 = *(a2 + 18);
            v169 = *(v168 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v165, 0), v23)).i32[0]);
            v172 = *(v168 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v11, *v164.i8), 0), v23)).i32[0]);
          }

          v173 = vorrq_s8(vandq_s8(v78, v169), vandq_s8(v163, v125));
          v174 = vorrq_s8(vandq_s8(v78, v172), vandq_s8(v164, v125));
          v175 = vrev64q_s32(v174).u64[0];
          v176 = vmul_f32(v11, vrev64_s32(*v173.i8));
          if (v5)
          {
            v177 = vmin_f32(vmax_f32(vadd_f32(v176, 0xBF000000BF000000), 0), v23);
            v178 = vcvt_s32_f32(vmin_f32(v177, v24));
            v179 = vaddq_f32(*(v168 + 16 * v178.i32[0]), vmulq_n_f32(vsubq_f32(*(v168 + 16 * v178.i32[0] + 16), *(v168 + 16 * v178.i32[0])), vsub_f32(v177, vcvt_f32_s32(v178)).f32[0]));
            v180 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v11, v175), 0xBF000000BF000000), 0), v23);
            v181 = vcvt_s32_f32(vmin_f32(v180, v24));
            v182 = vaddq_f32(*(v168 + 16 * v181.i32[0]), vmulq_n_f32(vsubq_f32(*(v168 + 16 * v181.i32[0] + 16), *(v168 + 16 * v181.i32[0])), vsub_f32(v180, vcvt_f32_s32(v181)).f32[0]));
          }

          else
          {
            v179 = *(v168 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v176, 0), v23)).i32[0]);
            v182 = *(v168 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v11, v175), 0), v23)).i32[0]);
          }

          v183 = vmulq_f32(v33, v62);
          v184 = vmulq_f32(v33, v63);
          v185 = vaddq_f32(vdupq_laneq_s64(v183, 1), vaddq_f32(v183, vrev64q_s32(v183)));
          v186 = vaddq_f32(vdupq_laneq_s64(v184, 1), vaddq_f32(v184, vrev64q_s32(v184)));
          v187 = vorrq_s8(vandq_s8(vrev64q_s32(v179), v89), vandq_s8(v173, v136));
          v188 = vorrq_s8(vandq_s8(vrev64q_s32(v182), v89), vandq_s8(v174, v136));
          v189 = vextq_s8(v188, v188, 8uLL).u64[0];
          v190 = vmul_f32(v11, *&vextq_s8(v187, v187, 8uLL));
          if (v5)
          {
            v191 = vmin_f32(vmax_f32(vadd_f32(v190, 0xBF000000BF000000), 0), v23);
            v192 = vcvt_s32_f32(vmin_f32(v191, v24));
            *&v193 = vaddq_f32(*(v168 + 16 * v192.i32[0]), vmulq_n_f32(vsubq_f32(*(v168 + 16 * v192.i32[0] + 16), *(v168 + 16 * v192.i32[0])), vsub_f32(v191, vcvt_f32_s32(v192)).f32[0])).u64[0];
            v194 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v11, v189), 0xBF000000BF000000), 0), v23);
            v195 = vcvt_s32_f32(vmin_f32(v194, v24));
            *&v196 = vaddq_f32(*(v168 + 16 * v195.i32[0]), vmulq_n_f32(vsubq_f32(*(v168 + 16 * v195.i32[0] + 16), *(v168 + 16 * v195.i32[0])), vsub_f32(v194, vcvt_f32_s32(v195)).f32[0])).u64[0];
          }

          else
          {
            v193 = *(v168 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v190, 0), v23)).i32[0]);
            v196 = *(v168 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v11, v189), 0), v23)).i32[0]);
          }

          v187.i64[1] = v193;
          v188.i64[1] = v196;
          v197 = vsubq_f32(v157, v162);
          v198 = vsubq_f32(v158, v162);
          v199 = vdupq_lane_s32(*v160.f32, 1);
          v200 = vsubq_f32(v157, v161);
          v201 = vsubq_f32(v158, v161);
          v202 = vdupq_lane_s32(*v159.f32, 1);
          v203 = vsubq_f32(vbslq_s8(vcgtq_f32(v53, v200), vaddq_f32(v202, vmulq_laneq_f32(vminq_f32(v200, v53), v159, 2)), vbslq_s8(vcgtq_f32(v53, v197), v187, vaddq_f32(v199, vmulq_laneq_f32(vmaxq_f32(v197, v53), v160, 2)))), v157);
          v204 = *(v32 + 32);
          v205 = vaddq_f32(v157, vmulq_f32(v204, v203));
          v206 = vaddq_f32(v158, vmulq_f32(v204, vsubq_f32(vbslq_s8(vcgtq_f32(v53, v201), vaddq_f32(v202, vmulq_laneq_f32(vminq_f32(v201, v53), v159, 2)), vbslq_s8(vcgtq_f32(v53, v198), v188, vaddq_f32(v199, vmulq_laneq_f32(vmaxq_f32(v198, v53), v160, 2)))), v158)));
          v207 = vmulq_f32(v33, v205);
          v208 = vmulq_f32(v33, v206);
          v209 = vcgtq_f32(v53, *(v32 + 48));
          v210 = vbslq_s8(v209, v185, vaddq_f32(vdupq_laneq_s64(v207, 1), vaddq_f32(v207, vrev64q_s32(v207))));
          v211 = vbslq_s8(v209, v186, vaddq_f32(vdupq_laneq_s64(v208, 1), vaddq_f32(v208, vrev64q_s32(v208))));
          v212 = *(v32 + 80);
          v213 = *(v32 + 96);
          v214 = vmulq_f32(v212, v205);
          v215 = vmulq_f32(v212, v206);
          v210.i64[0] = vorrq_s8(vandq_s8(v78, v210), vandq_s8(vaddq_f32(vextq_s8(v214, v205, 4uLL), vaddq_f32(v214, vrev64q_s32(v214))), v125)).u64[0];
          v211.i64[0] = vorrq_s8(vandq_s8(v78, v211), vandq_s8(vaddq_f32(vextq_s8(v215, v205, 4uLL), vaddq_f32(v215, vrev64q_s32(v215))), v125)).u64[0];
          v216 = vmulq_f32(v213, v205);
          v217 = vmulq_f32(v213, v206);
          v210.i64[1] = vaddq_f32(v216, vaddq_f32(vdupq_lane_s64(*&v216, 0), vextq_s8(*&v216, *&v216, 0xCuLL))).i64[1];
          v211.i64[1] = vaddq_f32(v217, vaddq_f32(vdupq_lane_s64(*&v217, 0), vextq_s8(*&v216, *&v217, 0xCuLL))).i64[1];
          v218 = *(v32 + 112);
          v219 = *(v32 + 128);
          v220 = vmulq_f32(v218, v210);
          v221 = vmulq_f32(v218, v211);
          v222 = vaddq_f32(vdupq_laneq_s64(v221, 1), vaddq_f32(v221, vrev64q_s32(v221)));
          v223 = vmulq_f32(v219, v210);
          v224 = vmulq_f32(v219, v211);
          v220.i64[0] = vorrq_s8(vandq_s8(v78, vaddq_f32(vdupq_laneq_s64(v220, 1), vaddq_f32(v220, vrev64q_s32(v220)))), vandq_s8(vaddq_f32(vextq_s8(v223, v222, 4uLL), vaddq_f32(v223, vrev64q_s32(v223))), v125)).u64[0];
          v225 = vorrq_s8(vandq_s8(v78, v222), vandq_s8(vaddq_f32(vextq_s8(v224, v222, 4uLL), vaddq_f32(v224, vrev64q_s32(v224))), v125));
          v226 = *(v32 + 144);
          v227 = vmulq_f32(v226, v210);
          v228 = vmulq_f32(v226, v211);
          v220.i64[1] = vaddq_f32(v227, vaddq_f32(vdupq_lane_s64(*&v227, 0), vextq_s8(v225, *&v227, 0xCuLL))).i64[1];
          v229 = vbslq_s8(*(v32 + 336), v31, v220);
          v225.i64[1] = vaddq_f32(v228, vaddq_f32(vdupq_lane_s64(*&v228, 0), vextq_s8(v225, *&v228, 0xCuLL))).i64[1];
          v230 = vbslq_s8(*(v32 + 336), v30, v225);
          v231 = (v13 + v28);
          v231[-1] = v229;
          *v231 = v230;
          v29 -= 2;
          v27 += 2;
          v28 += 32;
          v8 = v327;
        }

        while (v29 > 1);
      }

      if (v27 < v12)
      {
        v232 = *(v14 + 16 * v27);
        v233 = *(this + 51);
        v234 = *(v233 + 64);
        v235 = vmulq_f32(v232, v234);
        v236 = vaddq_f32(vdupq_laneq_s32(v235, 2), vaddq_f32(vdupq_lane_s32(*v235.i8, 0), vdupq_lane_s32(*v235.i8, 1)));
        v238 = *(v233 + 160);
        v237 = *(v233 + 176);
        v239 = vmul_f32(v8, vmin_f32(vmax_f32(*v236.f32, *v238.f32), *v237.f32));
        if (v5)
        {
          v240 = vmin_f32(vmax_f32(vadd_f32(v239, 0xBF000000BF000000), 0), v328);
          v241 = vcvt_s32_f32(vmin_f32(v240, v326));
          v242 = (*(a2 + 12) + 16 * v241.i32[0]);
          *&v243 = vaddq_f32(*v242, vmulq_n_f32(vsubq_f32(v242[1], *v242), vsub_f32(v240, vcvt_f32_s32(v241)).f32[0])).u64[0];
        }

        else
        {
          v243 = *(*(a2 + 12) + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v239, 0), v328)).i32[0]);
        }

        v244 = vsubq_f32(v236, vdupq_lane_s32(*v237.f32, 0));
        v245 = *(v233 + 288);
        v246 = vsubq_f32(v236, vdupq_lane_s32(*v238.f32, 0));
        v248 = *(v233 + 192);
        v247 = *(v233 + 208);
        v249 = vdupq_lane_s32(*v248.f32, 0);
        v250 = vaddq_f32(v232, vsubq_f32(vbslq_s8(vcgtq_f32(v245, v246), vaddq_f32(vdupq_lane_s32(*v238.f32, 1), vmulq_laneq_f32(vminq_f32(v246, v245), v238, 2)), vbslq_s8(vcgtq_f32(v245, v244), vdupq_lane_s32(*&v243, 0), vaddq_f32(vdupq_lane_s32(*v237.f32, 1), vmulq_laneq_f32(vmaxq_f32(v244, v245), v237, 2)))), v236));
        v251 = vdupq_lane_s32(*v247.f32, 0);
        v252 = vminq_f32(vmaxq_f32(v250, v249), v251);
        v253 = vmul_f32(v9, *v252.i8);
        if (v5)
        {
          v254 = vmin_f32(vmax_f32(vadd_f32(v253, 0xBF000000BF000000), 0), v20);
          v255 = vcvt_s32_f32(vmin_f32(v254, v329));
          v256 = *(a2 + 14);
          v257 = vaddq_f32(*(v256 + 16 * v255.i32[0]), vmulq_n_f32(vsubq_f32(*(v256 + 16 * v255.i32[0] + 16), *(v256 + 16 * v255.i32[0])), vsub_f32(v254, vcvt_f32_s32(v255)).f32[0]));
        }

        else
        {
          v256 = *(a2 + 14);
          v257 = *(v256 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v253, 0), v20)).i32[0]);
        }

        v258 = *(v233 + 304);
        v259 = vbslq_s8(v258, v257, v252);
        v260 = vmul_f32(v9, vrev64_s32(*v259.i8));
        if (v5)
        {
          v261 = vmin_f32(vmax_f32(vadd_f32(v260, 0xBF000000BF000000), 0), v20);
          v262 = vcvt_s32_f32(vmin_f32(v261, v329));
          v263 = vaddq_f32(*(v256 + 16 * v262.i32[0]), vmulq_n_f32(vsubq_f32(*(v256 + 16 * v262.i32[0] + 16), *(v256 + 16 * v262.i32[0])), vsub_f32(v261, vcvt_f32_s32(v262)).f32[0]));
        }

        else
        {
          v263 = *(v256 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v260, 0), v20)).i32[0]);
        }

        v264 = *(v233 + 320);
        v265 = vbslq_s8(v264, vrev64q_s32(v263), v259);
        v266 = vmul_f32(v9, *&vextq_s8(v265, v265, 8uLL));
        if (v5)
        {
          v267 = vmin_f32(vmax_f32(vadd_f32(v266, 0xBF000000BF000000), 0), v20);
          v268 = vcvt_s32_f32(vmin_f32(v267, v329));
          *&v269 = vaddq_f32(*(v256 + 16 * v268.i32[0]), vmulq_n_f32(vsubq_f32(*(v256 + 16 * v268.i32[0] + 16), *(v256 + 16 * v268.i32[0])), vsub_f32(v267, vcvt_f32_s32(v268)).f32[0])).u64[0];
        }

        else
        {
          v269 = *(v256 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v266, 0), v20)).i32[0]);
        }

        v270 = vmvnq_s8(v258);
        v271 = vmvnq_s8(v264);
        v265.i64[1] = v269;
        v272 = vsubq_f32(v250, v251);
        v273 = vsubq_f32(v250, v249);
        v274 = vaddq_f32(v250, vmulq_f32(*v233, vsubq_f32(vbslq_s8(vcgtq_f32(v245, v273), vaddq_f32(vdupq_lane_s32(*v248.f32, 1), vmulq_laneq_f32(vminq_f32(v273, v245), v248, 2)), vbslq_s8(vcgtq_f32(v245, v272), v265, vaddq_f32(vdupq_lane_s32(*v247.f32, 1), vmulq_laneq_f32(vmaxq_f32(v272, v245), v247, 2)))), v250)));
        v276 = *(v233 + 224);
        v275 = *(v233 + 240);
        v277 = vdupq_lane_s32(*v276.f32, 0);
        v278 = vdupq_lane_s32(*v275.f32, 0);
        v279 = vminq_f32(vmaxq_f32(v274, v277), v278);
        v280 = vmul_f32(v10, *v279.i8);
        v281 = vandq_s8(v279, v270);
        if (v5)
        {
          v282 = vmin_f32(vmax_f32(vadd_f32(v280, 0xBF000000BF000000), 0), v21);
          v283 = vcvt_s32_f32(vmin_f32(v282, v22));
          v284 = *(a2 + 16);
          v289 = vorrq_s8(vandq_s8(v258, vaddq_f32(*(v284 + 16 * v283.i32[0]), vmulq_n_f32(vsubq_f32(*(v284 + 16 * v283.i32[0] + 16), *(v284 + 16 * v283.i32[0])), vsub_f32(v282, vcvt_f32_s32(v283)).f32[0]))), v281);
          v285 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, vrev64_s32(*v289.i8)), 0xBF000000BF000000), 0), v21);
          v286 = vcvt_s32_f32(vmin_f32(v285, v22));
          v287 = vorrq_s8(vandq_s8(vrev64q_s32(vaddq_f32(*(v284 + 16 * v286.i32[0]), vmulq_n_f32(vsubq_f32(*(v284 + 16 * v286.i32[0] + 16), *(v284 + 16 * v286.i32[0])), vsub_f32(v285, vcvt_f32_s32(v286)).f32[0]))), v264), vandq_s8(v289, v271));
          *v289.i8 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v10, *&vextq_s8(v287, v287, 8uLL)), 0xBF000000BF000000), 0), v21);
          v288 = vcvt_s32_f32(vmin_f32(*v289.i8, v22));
          v289.i64[0] = vaddq_f32(*(v284 + 16 * v288.i32[0]), vmulq_n_f32(vsubq_f32(*(v284 + 16 * v288.i32[0] + 16), *(v284 + 16 * v288.i32[0])), vsub_f32(*v289.i8, vcvt_f32_s32(v288)).f32[0])).u64[0];
        }

        else
        {
          v290 = *(a2 + 16);
          v291 = vorrq_s8(vandq_s8(*(v290 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v280, 0), v21)).i32[0]), v258), v281);
          v287 = vorrq_s8(vandq_s8(vrev64q_s32(*(v290 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, vrev64_s32(*v291.i8)), 0), v21)).i32[0])), v264), vandq_s8(v291, v271));
          v289 = *(v290 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v10, *&vextq_s8(v287, v287, 8uLL)), 0), v21)).i32[0]);
        }

        v287.i64[1] = v289.i64[0];
        v292 = vsubq_f32(v274, v278);
        v293 = vsubq_f32(v274, v277);
        v294 = vaddq_f32(v274, vmulq_f32(*(v233 + 16), vsubq_f32(vbslq_s8(vcgtq_f32(v245, v293), vaddq_f32(vdupq_lane_s32(*v276.f32, 1), vmulq_laneq_f32(vminq_f32(v293, v245), v276, 2)), vbslq_s8(vcgtq_f32(v245, v292), v287, vaddq_f32(vdupq_lane_s32(*v275.f32, 1), vmulq_laneq_f32(vmaxq_f32(v292, v245), v275, 2)))), v274)));
        v296 = *(v233 + 256);
        v295 = *(v233 + 272);
        v297 = vdupq_lane_s32(*v296.f32, 0);
        v298 = vdupq_lane_s32(*v295.f32, 0);
        v299 = vminq_f32(vmaxq_f32(v294, v297), v298);
        v300 = vmul_f32(v11, *v299.i8);
        v301 = vandq_s8(v299, v270);
        if (v5)
        {
          v302 = vmin_f32(vmax_f32(vadd_f32(v300, 0xBF000000BF000000), 0), v23);
          v303 = vcvt_s32_f32(vmin_f32(v302, v24));
          v304 = *(a2 + 18);
          v309 = vorrq_s8(vandq_s8(v258, vaddq_f32(*(v304 + 16 * v303.i32[0]), vmulq_n_f32(vsubq_f32(*(v304 + 16 * v303.i32[0] + 16), *(v304 + 16 * v303.i32[0])), vsub_f32(v302, vcvt_f32_s32(v303)).f32[0]))), v301);
          v305 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v11, vrev64_s32(*v309.i8)), 0xBF000000BF000000), 0), v23);
          v306 = vcvt_s32_f32(vmin_f32(v305, v24));
          v307 = vorrq_s8(vandq_s8(vrev64q_s32(vaddq_f32(*(v304 + 16 * v306.i32[0]), vmulq_n_f32(vsubq_f32(*(v304 + 16 * v306.i32[0] + 16), *(v304 + 16 * v306.i32[0])), vsub_f32(v305, vcvt_f32_s32(v306)).f32[0]))), v264), vandq_s8(v309, v271));
          *v309.i8 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v11, *&vextq_s8(v307, v307, 8uLL)), 0xBF000000BF000000), 0), v23);
          v308 = vcvt_s32_f32(vmin_f32(*v309.i8, v24));
          v309.i64[0] = vaddq_f32(*(v304 + 16 * v308.i32[0]), vmulq_n_f32(vsubq_f32(*(v304 + 16 * v308.i32[0] + 16), *(v304 + 16 * v308.i32[0])), vsub_f32(*v309.i8, vcvt_f32_s32(v308)).f32[0])).u64[0];
        }

        else
        {
          v310 = *(a2 + 18);
          v311 = vorrq_s8(vandq_s8(*(v310 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(v300, 0), v23)).i32[0]), v258), v301);
          v307 = vorrq_s8(vandq_s8(vrev64q_s32(*(v310 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v11, vrev64_s32(*v311.i8)), 0), v23)).i32[0])), v264), vandq_s8(v311, v271));
          v309 = *(v310 + 16 * vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v11, *&vextq_s8(v307, v307, 8uLL)), 0), v23)).i32[0]);
        }

        v312 = vmulq_f32(v234, v250);
        v307.i64[1] = v309.i64[0];
        v313 = vaddq_f32(vdupq_laneq_s64(v312, 1), vaddq_f32(v312, vrev64q_s32(v312)));
        v314 = vsubq_f32(v294, v298);
        v315 = vsubq_f32(v294, v297);
        v316 = vaddq_f32(v294, vmulq_f32(*(v233 + 32), vsubq_f32(vbslq_s8(vcgtq_f32(v245, v315), vaddq_f32(vdupq_lane_s32(*v296.f32, 1), vmulq_laneq_f32(vminq_f32(v315, v245), v296, 2)), vbslq_s8(vcgtq_f32(v245, v314), v307, vaddq_f32(vdupq_lane_s32(*v295.f32, 1), vmulq_laneq_f32(vmaxq_f32(v314, v245), v295, 2)))), v294)));
        v317 = vmulq_f32(v234, v316);
        v318 = vbslq_s8(vcgtq_f32(v245, *(v233 + 48)), v313, vaddq_f32(vdupq_laneq_s64(v317, 1), vaddq_f32(v317, vrev64q_s32(v317))));
        v319 = vmulq_f32(*(v233 + 80), v316);
        v320 = vmulq_f32(*(v233 + 96), v316);
        v321 = vorrq_s8(vandq_s8(v258, v318), vandq_s8(vaddq_f32(vextq_s8(v319, v318, 4uLL), vaddq_f32(v319, vrev64q_s32(v319))), v270));
        v321.i64[1] = vaddq_f32(v320, vaddq_f32(vdupq_lane_s64(*&v320, 0), vextq_s8(*&v321, *&v320, 0xCuLL))).i64[1];
        v322 = vmulq_f32(*(v233 + 112), v321);
        v323 = vmulq_f32(*(v233 + 128), v321);
        v322.i64[0] = vorrq_s8(vandq_s8(v258, vaddq_f32(vdupq_laneq_s64(v322, 1), vaddq_f32(v322, vrev64q_s32(v322)))), vandq_s8(vaddq_f32(vextq_s8(v323, v321, 4uLL), vaddq_f32(v323, vrev64q_s32(v323))), v270)).u64[0];
        v324 = vmulq_f32(*(v233 + 144), v321);
        v322.i64[1] = vaddq_f32(v324, vaddq_f32(vdupq_lane_s64(*&v324, 0), vextq_s8(*&v324, *&v324, 0xCuLL))).i64[1];
        *(v13 + 16 * v27) = vbslq_s8(*(v233 + 336), v232, v322);
      }

      v14 += v26;
      v13 += v25;
      ++v7;
    }

    while (v7 != v6);
  }

  return 0;
}

uint64_t HgcColorCurves::GetDOD(HGNode *this, HGRenderer *a2, signed int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 > 1)
  {
    if (a3 != 2 && a3 != 3 && a3 != 4)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (a3)
  {
    if (a3 != 1)
    {
      return 0;
    }

LABEL_8:
    Input = HGRenderer::GetInput(a2, this, a3);
    DOD = HGRenderer::GetDOD(a2, Input);
    v11 = HGRectIntersection(v5, v4, DOD, v10);
    if (!HGRectIsNull(v11, v12))
    {
      v13 = HGRenderer::GetInput(a2, this, 0);
      v14 = HGRenderer::GetDOD(a2, v13);
      return HGRectUnion(v14, v15, 0, 0);
    }

    return 0;
  }

  return v5;
}

uint64_t HgcColorCurves::GetROI(HGNode *this, HGRenderer *a2, signed int a3, HGRect a4)
{
  if (a3 > 1)
  {
    if (a3 == 2 || a3 == 3 || a3 == 4)
    {
      goto LABEL_5;
    }

LABEL_9:
    *&a4.var0 = 0;
    return *&a4.var0;
  }

  if (!a3)
  {
    return *&a4.var0;
  }

  if (a3 != 1)
  {
    goto LABEL_9;
  }

LABEL_5:
  Input = HGRenderer::GetInput(a2, this, a3);
  *&a4.var0 = HGRenderer::GetDOD(a2, Input);
  return *&a4.var0;
}

void HgcColorCurves::HgcColorCurves(HgcColorCurves *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DCFD8;
  operator new();
}

void HgcColorCurves::~HgcColorCurves(HGNode *this)
{
  *this = &unk_2871DCFD8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AF73A19ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgcColorCurves::~HgcColorCurves(this);

  HGObject::operator delete(v1);
}

uint64_t HgcColorCurves::SetParameter(HgcColorCurves *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  switch(a2)
  {
    case 0:
      v8 = *(this + 51);
      if (*v8 == a3 && v8[1] == a4 && v8[2] == a5 && v8[3] == a6)
      {
        return 0;
      }

      *v8 = a3;
      v8[1] = a4;
      v9 = v8 + 3;
      v8[2] = a5;
      goto LABEL_92;
    case 1:
      v14 = *(this + 51);
      if (v14[4] == a3 && v14[5] == a4 && v14[6] == a5 && v14[7] == a6)
      {
        return 0;
      }

      v14[4] = a3;
      v14[5] = a4;
      v9 = v14 + 7;
      v14[6] = a5;
      goto LABEL_92;
    case 2:
      v18 = *(this + 51);
      if (v18[8] == a3 && v18[9] == a4 && v18[10] == a5 && v18[11] == a6)
      {
        return 0;
      }

      v18[8] = a3;
      v18[9] = a4;
      v9 = v18 + 11;
      v18[10] = a5;
      goto LABEL_92;
    case 3:
      v17 = *(this + 51);
      if (v17[12] == a3 && v17[13] == a4 && v17[14] == a5 && v17[15] == a6)
      {
        return 0;
      }

      v17[12] = a3;
      v17[13] = a4;
      v9 = v17 + 15;
      v17[14] = a5;
      goto LABEL_92;
    case 5:
      v12 = *(this + 51);
      if (v12[16] == a3 && v12[17] == a4 && v12[18] == a5 && v12[19] == a6)
      {
        return 0;
      }

      v12[16] = a3;
      v12[17] = a4;
      v9 = v12 + 19;
      v12[18] = a5;
      goto LABEL_92;
    case 6:
      v15 = *(this + 51);
      if (v15[20] == a3 && v15[21] == a4 && v15[22] == a5 && v15[23] == a6)
      {
        return 0;
      }

      v15[20] = a3;
      v15[21] = a4;
      v9 = v15 + 23;
      v15[22] = a5;
      goto LABEL_92;
    case 7:
      v19 = *(this + 51);
      if (v19[24] == a3 && v19[25] == a4 && v19[26] == a5 && v19[27] == a6)
      {
        return 0;
      }

      v19[24] = a3;
      v19[25] = a4;
      v9 = v19 + 27;
      v19[26] = a5;
      goto LABEL_92;
    case 8:
      v20 = *(this + 51);
      if (v20[28] == a3 && v20[29] == a4 && v20[30] == a5 && v20[31] == a6)
      {
        return 0;
      }

      v20[28] = a3;
      v20[29] = a4;
      v9 = v20 + 31;
      v20[30] = a5;
      goto LABEL_92;
    case 9:
      v24 = *(this + 51);
      if (v24[32] == a3 && v24[33] == a4 && v24[34] == a5 && v24[35] == a6)
      {
        return 0;
      }

      v24[32] = a3;
      v24[33] = a4;
      v9 = v24 + 35;
      v24[34] = a5;
      goto LABEL_92;
    case 10:
      v23 = *(this + 51);
      if (v23[36] == a3 && v23[37] == a4 && v23[38] == a5 && v23[39] == a6)
      {
        return 0;
      }

      v23[36] = a3;
      v23[37] = a4;
      v9 = v23 + 39;
      v23[38] = a5;
      goto LABEL_92;
    case 11:
      v11 = *(this + 51);
      if (v11[40] == a3 && v11[41] == a4 && v11[42] == a5 && v11[43] == a6)
      {
        return 0;
      }

      v11[40] = a3;
      v11[41] = a4;
      v9 = v11 + 43;
      v11[42] = a5;
      goto LABEL_92;
    case 12:
      v16 = *(this + 51);
      if (v16[44] == a3 && v16[45] == a4 && v16[46] == a5 && v16[47] == a6)
      {
        return 0;
      }

      v16[44] = a3;
      v16[45] = a4;
      v9 = v16 + 47;
      v16[46] = a5;
      goto LABEL_92;
    case 13:
      v13 = *(this + 51);
      if (v13[48] == a3 && v13[49] == a4 && v13[50] == a5 && v13[51] == a6)
      {
        return 0;
      }

      v13[48] = a3;
      v13[49] = a4;
      v9 = v13 + 51;
      v13[50] = a5;
      goto LABEL_92;
    case 14:
      v10 = *(this + 51);
      if (v10[52] == a3 && v10[53] == a4 && v10[54] == a5 && v10[55] == a6)
      {
        return 0;
      }

      v10[52] = a3;
      v10[53] = a4;
      v9 = v10 + 55;
      v10[54] = a5;
      goto LABEL_92;
    case 15:
      v21 = *(this + 51);
      if (v21[56] == a3 && v21[57] == a4 && v21[58] == a5 && v21[59] == a6)
      {
        return 0;
      }

      v21[56] = a3;
      v21[57] = a4;
      v9 = v21 + 59;
      v21[58] = a5;
      goto LABEL_92;
    case 16:
      v22 = *(this + 51);
      if (v22[60] == a3 && v22[61] == a4 && v22[62] == a5 && v22[63] == a6)
      {
        return 0;
      }

      v22[60] = a3;
      v22[61] = a4;
      v9 = v22 + 63;
      v22[62] = a5;
      goto LABEL_92;
    case 17:
      v26 = *(this + 51);
      if (v26[64] == a3 && v26[65] == a4 && v26[66] == a5 && v26[67] == a6)
      {
        return 0;
      }

      v26[64] = a3;
      v26[65] = a4;
      v9 = v26 + 67;
      v26[66] = a5;
      goto LABEL_92;
    case 18:
      v25 = *(this + 51);
      if (v25[68] == a3 && v25[69] == a4 && v25[70] == a5 && v25[71] == a6)
      {
        return 0;
      }

      v25[68] = a3;
      v25[69] = a4;
      v9 = v25 + 71;
      v25[70] = a5;
LABEL_92:
      *v9 = a6;
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return v7;
  }
}

uint64_t HgcColorCurves::GetParameter(HgcColorCurves *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  switch(a2)
  {
    case 0:
      v4 = *(this + 51);
      *a3 = *v4;
      a3[1] = v4[1];
      a3[2] = v4[2];
      v5 = v4 + 3;
      goto LABEL_20;
    case 1:
      v10 = *(this + 51);
      *a3 = v10[4];
      a3[1] = v10[5];
      a3[2] = v10[6];
      v5 = v10 + 7;
      goto LABEL_20;
    case 2:
      v14 = *(this + 51);
      *a3 = v14[8];
      a3[1] = v14[9];
      a3[2] = v14[10];
      v5 = v14 + 11;
      goto LABEL_20;
    case 3:
      v13 = *(this + 51);
      *a3 = v13[12];
      a3[1] = v13[13];
      a3[2] = v13[14];
      v5 = v13 + 15;
      goto LABEL_20;
    case 5:
      v8 = *(this + 51);
      *a3 = v8[16];
      a3[1] = v8[17];
      a3[2] = v8[18];
      v5 = v8 + 19;
      goto LABEL_20;
    case 6:
      v11 = *(this + 51);
      *a3 = v11[20];
      a3[1] = v11[21];
      a3[2] = v11[22];
      v5 = v11 + 23;
      goto LABEL_20;
    case 7:
      v15 = *(this + 51);
      *a3 = v15[24];
      a3[1] = v15[25];
      a3[2] = v15[26];
      v5 = v15 + 27;
      goto LABEL_20;
    case 8:
      v16 = *(this + 51);
      *a3 = v16[28];
      a3[1] = v16[29];
      a3[2] = v16[30];
      v5 = v16 + 31;
      goto LABEL_20;
    case 9:
      v20 = *(this + 51);
      *a3 = v20[32];
      a3[1] = v20[33];
      a3[2] = v20[34];
      v5 = v20 + 35;
      goto LABEL_20;
    case 10:
      v19 = *(this + 51);
      *a3 = v19[36];
      a3[1] = v19[37];
      a3[2] = v19[38];
      v5 = v19 + 39;
      goto LABEL_20;
    case 11:
      v7 = *(this + 51);
      *a3 = v7[40];
      a3[1] = v7[41];
      a3[2] = v7[42];
      v5 = v7 + 43;
      goto LABEL_20;
    case 12:
      v12 = *(this + 51);
      *a3 = v12[44];
      a3[1] = v12[45];
      a3[2] = v12[46];
      v5 = v12 + 47;
      goto LABEL_20;
    case 13:
      v9 = *(this + 51);
      *a3 = v9[48];
      a3[1] = v9[49];
      a3[2] = v9[50];
      v5 = v9 + 51;
      goto LABEL_20;
    case 14:
      v6 = *(this + 51);
      *a3 = v6[52];
      a3[1] = v6[53];
      a3[2] = v6[54];
      v5 = v6 + 55;
      goto LABEL_20;
    case 15:
      v17 = *(this + 51);
      *a3 = v17[56];
      a3[1] = v17[57];
      a3[2] = v17[58];
      v5 = v17 + 59;
      goto LABEL_20;
    case 16:
      v18 = *(this + 51);
      *a3 = v18[60];
      a3[1] = v18[61];
      a3[2] = v18[62];
      v5 = v18 + 63;
      goto LABEL_20;
    case 17:
      v22 = *(this + 51);
      *a3 = v22[64];
      a3[1] = v22[65];
      a3[2] = v22[66];
      v5 = v22 + 67;
      goto LABEL_20;
    case 18:
      v21 = *(this + 51);
      *a3 = v21[68];
      a3[1] = v21[69];
      a3[2] = v21[70];
      v5 = v21 + 71;
LABEL_20:
      v3 = 0;
      a3[3] = *v5;
      break;
    default:
      return v3;
  }

  return v3;
}

const char *HgcEquirectToSinusoidal::GetProgram(HgcEquirectToSinusoidal *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005e0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 3.141592741, 1.570796371, 0.1591549367);\n    const half4 c1 = half4(-6.283185482, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1;\n    FragmentOut output;\n\n    r0.xy = half2(hg_Params[0].xy);\n    s0.y = dot(frag._texCoord0, hg_Params[3]);\n    s0.x = dot(frag._texCoord0, hg_Params[2]);\n    s0.xy = float2(r0.xy)*float2(c0.xx) + s0.xy;\n    s0.xz = s0.xy*hg_Params[1].xy;\n    s0.xz = s0.xz - float2(c0.yz);\n    s0.z = cos(s0.z);\n    s0.w = 1.00000f / s0.z;\n    s0.w = s0.x*s0.w;\n    s0.z = abs(s0.z);\n    s0.x = select(s0.x, s0.w, -s0.z < 0.00000h);\n    s0.x = s0.x + float(c0.y);\n    s0.z = s0.x*float(c0.w);\n    s0.z = floor(s0.z);\n    s0.w = 1.00000f / hg_Params[1].x;\n    s0.x = s0.z*float(c1.x) + s0.x;\n    s0.x = s0.x*s0.w;\n    s0.xy = float2(r0.xy)*-float2(c0.xx) + s0.xy;\n    s0.w = float(c1.y);\n    s1.y = dot(s0.xyw, hg_Params[5].xyz);\n    s1.x = dot(s0.xyw, hg_Params[4].xyz);\n    s1.xy = s1.xy + hg_Params[6].xy;\n    s1.xy = s1.xy*hg_Params[6].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    return output;\n}\n//MD5=739ef7cd:ec497388:410f5cf9:f088d68f\n//SIG=00400000:00000000:00000000:00000001:0002:0007:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000583\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 3.141592741, 1.570796371, 0.1591549367);\n    const float4 c1 = float4(-6.283185482, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Params[0].xy;\n    r1.y = dot(frag._texCoord0, hg_Params[3]);\n    r1.x = dot(frag._texCoord0, hg_Params[2]);\n    r1.xy = r0.xy*c0.xx + r1.xy;\n    r1.xz = r1.xy*hg_Params[1].xy;\n    r1.xz = r1.xz - c0.yz;\n    r1.z = cos(r1.z);\n    r1.w = 1.00000f / r1.z;\n    r1.w = r1.x*r1.w;\n    r1.z = abs(r1.z);\n    r1.x = select(r1.x, r1.w, -r1.z < 0.00000f);\n    r1.x = r1.x + c0.y;\n    r1.z = r1.x*c0.w;\n    r1.z = floor(r1.z);\n    r1.w = 1.00000f / hg_Params[1].x;\n    r1.x = r1.z*c1.x + r1.x;\n    r1.x = r1.x*r1.w;\n    r1.xy = r0.xy*-c0.xx + r1.xy;\n    r1.w = c1.y;\n    r0.y = dot(r1.xyw, hg_Params[5].xyz);\n    r0.x = dot(r1.xyw, hg_Params[4].xyz);\n    r0.xy = r0.xy + hg_Params[6].xy;\n    r0.xy = r0.xy*hg_Params[6].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=aeeac98c:3c5d117d:e39fb2a0:534a5e83\n//SIG=00000000:00000000:00000000:00000000:0002:0007:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000641\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 3.141592741, 1.570796371, 0.1591549367);\n    const highp vec4 c1 = vec4(-6.283185482, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.xy = hg_ProgramLocal0.xy;\n    r1.y = dot(hg_TexCoord0, hg_ProgramLocal3);\n    r1.x = dot(hg_TexCoord0, hg_ProgramLocal2);\n    r1.xy = r0.xy*c0.xx + r1.xy;\n    r1.xz = r1.xy*hg_ProgramLocal1.xy;\n    r1.xz = r1.xz - c0.yz;\n    r1.z = cos(r1.z);\n    r1.w = 1.00000 / r1.z;\n    r1.w = r1.x*r1.w;\n    r1.z = abs(r1.z);\n    r1.x = -r1.z < 0.00000 ? r1.w : r1.x;\n    r1.x = r1.x + c0.y;\n    r1.z = r1.x*c0.w;\n    r1.z = floor(r1.z);\n    r1.w = 1.00000 / hg_ProgramLocal1.x;\n    r1.x = r1.z*c1.x + r1.x;\n    r1.x = r1.x*r1.w;\n    r1.xy = r0.xy*-c0.xx + r1.xy;\n    r1.w = c1.y;\n    r0.y = dot(r1.xyw, hg_ProgramLocal5.xyz);\n    r0.x = dot(r1.xyw, hg_ProgramLocal4.xyz);\n    r0.xy = r0.xy + hg_ProgramLocal6.xy;\n    r0.xy = r0.xy*hg_ProgramLocal6.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=3a4335bf:4b19fd84:3008ac39:3dc1cae3\n//SIG=00000000:00000000:00000000:00000000:0002:0007:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA5E0FC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA5E27C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA5E2CC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA5E2C4);
}

uint64_t HgcEquirectToSinusoidal::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 6, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcEquirectToSinusoidal::Bind(HgcEquirectToSinusoidal *this, HGHandler *a2)
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

uint64_t HgcEquirectToSinusoidal::RenderTile(HgcEquirectToSinusoidal *this, HGTile *a2)
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
          v22 = vmulq_f32(v17, v20);
          v23 = vmulq_f32(v18, v20);
          v24 = vaddq_f32(v22, vextq_s8(v22, v22, 4uLL));
          v25 = vaddq_f32(v23, vextq_s8(v23, v23, 4uLL));
          v26 = vmulq_f32(v17, v21);
          v27 = vmulq_f32(v18, v21);
          v28 = vaddq_f32(v26, vextq_s8(v26, v26, 4uLL));
          v29 = vaddq_f32(v27, vextq_s8(v27, v27, 4uLL));
          v30 = vaddq_f32(v28, vextq_s8(v28, v28, 8uLL));
          v31 = *(v19 + 96);
          v32 = *(v19 + 112);
          v33 = vbslq_s8(v31, v30, vaddq_f32(v24, vextq_s8(v24, v24, 8uLL)));
          v34 = vbslq_s8(v31, vaddq_f32(v29, vextq_s8(v29, v29, 8uLL)), vaddq_f32(v25, vextq_s8(v25, v25, 8uLL)));
          v35 = *(v19 + 16);
          v36 = vmulq_laneq_f32(*v19, v32, 2);
          v37 = vaddq_f32(v36, v33);
          v38 = vaddq_f32(v36, v34);
          v39 = vmulq_f32(v35, v37);
          v40 = vmulq_f32(v35, v38);
          v41 = *(v19 + 128);
          v42 = *(v19 + 144);
          v43 = vbslq_s8(v41, v37, vsubq_f32(vbslq_s8(v41, v37, vzip1q_s32(v39, v39)), v42));
          v44 = vbslq_s8(v41, v38, vsubq_f32(vbslq_s8(v41, v38, vzip1q_s32(v40, v40)), v42));
          v46 = *(v19 + 160);
          v45 = *(v19 + 176);
          v47 = vmulq_f32(v46, v43);
          v48 = vmulq_f32(v46, v44);
          v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
          v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
          v51 = vabdq_f32(vsubq_f32(v47, vsubq_f32(v49, vandq_s8(v45, vcgtq_f32(v49, v47)))), v32);
          v52 = vabdq_f32(vsubq_f32(v48, vsubq_f32(v50, vandq_s8(v45, vcgtq_f32(v50, v48)))), v32);
          v53 = *(v19 + 192);
          v54 = *(v19 + 208);
          v55 = vsubq_f32(v51, v53);
          v56 = vsubq_f32(v52, v53);
          v57 = vmulq_f32(v55, v55);
          v58 = vmulq_f32(v56, v56);
          v59 = *(v19 + 224);
          v60 = *(v19 + 240);
          v61 = vaddq_f32(v60, vmulq_f32(v58, vaddq_f32(v54, vmulq_f32(v59, v58))));
          v62 = vmulq_f32(v57, vaddq_f32(v60, vmulq_f32(v57, vaddq_f32(v54, vmulq_f32(v59, v57)))));
          v63 = *(v19 + 256);
          v64 = *(v19 + 272);
          v65 = vmulq_f32(v55, vaddq_f32(v63, v62));
          v66 = vmulq_f32(v56, vaddq_f32(v63, vmulq_f32(v58, v61)));
          v58.i64[0] = v43.i64[0];
          v58.i64[1] = v65.i64[1];
          v62.i64[0] = v44.i64[0];
          v62.i64[1] = v66.i64[1];
          v43.i64[1] = vdupq_laneq_s64(v65, 1).u64[0];
          v67 = vrev64q_s32(v43);
          v44.i64[1] = vdupq_laneq_s64(v66, 1).u64[0];
          v68 = vrev64q_s32(v44);
          v69 = vminq_f32(vmaxq_f32(vrecpeq_f32(v67), v63), v64);
          v70 = vminq_f32(vmaxq_f32(vrecpeq_f32(v68), v63), v64);
          v71 = vminq_f32(vmaxq_f32(vmulq_f32(v69, vrecpsq_f32(v67, v69)), v63), v64);
          v72 = vminq_f32(vmaxq_f32(vmulq_f32(v70, vrecpsq_f32(v68, v70)), v63), v64);
          v73 = vmulq_f32(v71, vrecpsq_f32(v67, v71));
          v74 = vmulq_f32(v72, vrecpsq_f32(v68, v72));
          v75 = *(v19 + 288);
          v76 = *(v19 + 304);
          v77 = vbslq_s8(v75, v73, v58);
          v78 = vbslq_s8(v75, v74, v62);
          v79 = vbslq_s8(v75, vmulq_n_f32(v77, v77.f32[0]), v58);
          v80 = vbslq_s8(v75, vmulq_n_f32(v78, v78.f32[0]), v62);
          v81 = vandq_s8(v79, v76);
          v82 = vandq_s8(v80, v76);
          v83.i64[0] = vextq_s8(v81, v79, 0xCuLL).u64[0];
          v84 = vextq_s8(v81, v79, 8uLL);
          v79.i64[1] = v81.i64[1];
          v83.u64[1] = vext_s8(*v79.i8, *&vextq_s8(v81, v81, 8uLL), 4uLL);
          v62.i64[0] = vextq_s8(v82, v80, 0xCuLL).u64[0];
          v85 = vextq_s8(v82, v80, 8uLL);
          v80.i64[1] = v82.i64[1];
          *&v62.u32[2] = vext_s8(*v80.i8, *&vextq_s8(v82, v82, 8uLL), 4uLL);
          v79.i64[0] = vbslq_s8(v31, vaddq_f32(v60, vbslq_s8(v31, vbslq_s8(vcgtq_f32(v84, v63), v83, v79), v79)), v79).u64[0];
          v80.i64[0] = vbslq_s8(v31, vaddq_f32(v60, vbslq_s8(v31, vbslq_s8(vcgtq_f32(v85, v63), v62, v80), v80)), v80).u64[0];
          v81.i64[0] = v79.i64[0];
          v81.i64[1] = vmulq_f32(v46, vdupq_lane_s64(*&v79, 0)).i64[1];
          v82.i64[0] = v80.i64[0];
          v82.i64[1] = vmulq_f32(v46, vdupq_lane_s64(*&v80, 0)).i64[1];
          v86 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
          v87 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
          v79.i64[1] = vsubq_f32(v86, vbslq_s8(vcgtq_f32(v86, v81), v45, 0)).i64[1];
          v80.i64[1] = vsubq_f32(v87, vbslq_s8(vcgtq_f32(v87, v82), v45, 0)).i64[1];
          v88 = vextq_s8(v35, v35, 4uLL);
          v89 = vminq_f32(vmaxq_f32(vmulq_f32(v60, vrecpeq_f32(v88)), v63), v64);
          v90 = vmulq_f32(v89, vrecpsq_f32(v88, v89));
          v91 = vbslq_s8(v75, v90, v79);
          v92 = vbslq_s8(v75, v90, v80);
          v93 = vbslq_s8(v31, vaddq_f32(vmulq_laneq_f32(v59, v91, 2), v91), v91);
          v94 = vbslq_s8(v31, vaddq_f32(vmulq_laneq_f32(v59, v92, 2), v92), v92);
          v95 = vsubq_f32(vbslq_s8(v31, vmulq_laneq_f32(v93, v93, 3), v91), v36);
          v96 = vsubq_f32(vbslq_s8(v31, vmulq_laneq_f32(v94, v94, 3), v92), v36);
          v97 = v95;
          v97.i32[3] = 1.0;
          v98 = v96;
          v98.i32[3] = 1.0;
          v99 = *(v19 + 320);
          v95.i64[1] = vextq_s8(v97, v97, 8uLL).u64[0];
          *v97.f32 = vqtbl1_s8(v95, *v99.i8);
          v60.i64[0] = vextq_s8(v99, v99, 8uLL).u64[0];
          *&v97.u32[2] = vqtbl1_s8(v95, *v60.f32);
          v96.i64[1] = vextq_s8(v98, v98, 8uLL).u64[0];
          *v95.f32 = vqtbl1_s8(v96, *v99.i8);
          *&v95.u32[2] = vqtbl1_s8(v96, *v60.f32);
          v101 = *(v19 + 64);
          v100 = *(v19 + 80);
          v102 = vmulq_f32(v100, v97);
          v103 = vmulq_f32(v100, v95);
          v104 = vmulq_f32(v101, v97);
          v105 = vmulq_f32(v101, v95);
          v106 = vbslq_s8(v31, vaddq_f32(vextq_s8(v104, v104, 8uLL), vaddq_f32(v104, vrev64q_s32(v104))), vaddq_f32(vextq_s8(v102, v102, 4uLL), vaddq_f32(v102, vrev64q_s32(v102))));
          v107 = vbslq_s8(v31, vaddq_f32(vextq_s8(v105, v105, 8uLL), vaddq_f32(v105, vrev64q_s32(v105))), vaddq_f32(vextq_s8(v103, v103, 4uLL), vaddq_f32(v103, vrev64q_s32(v103))));
          v108 = *(a2 + 22);
          v109 = vsubq_f32(v106, v9);
          v110 = *(a2 + 10);
          if (v5)
          {
            v111 = vaddq_s32(vcvtq_s32_f32(v109), vcltzq_f32(v109));
            v112 = vsubq_f32(v109, vcvtq_f32_s32(v111)).u64[0];
            v113 = vsubq_f32(v107, v9);
            v114 = vaddq_s32(vcvtq_s32_f32(v113), vcltzq_f32(v113));
            v115 = vsubq_f32(v113, vcvtq_f32_s32(v114)).u64[0];
            *v111.i8 = vmla_s32(vzip1_s32(*v111.i8, *v114.i8), vzip2_s32(*v111.i8, *v114.i8), vdup_n_s32(v108));
            v116 = (v110 + 16 * v111.i32[0]);
            v117 = vaddq_f32(*v116, vmulq_n_f32(vsubq_f32(v116[1], *v116), v112.f32[0]));
            v118 = vaddq_f32(v117, vmulq_lane_f32(vsubq_f32(vaddq_f32(v116[v108], vmulq_n_f32(vsubq_f32(v116[v108 + 1], v116[v108]), v112.f32[0])), v117), v112, 1));
            v119 = (v110 + 16 * v111.i32[1]);
            v120 = vaddq_f32(*v119, vmulq_n_f32(vsubq_f32(v119[1], *v119), v115.f32[0]));
            v121 = vaddq_f32(v120, vmulq_lane_f32(vsubq_f32(vaddq_f32(v119[v108], vmulq_n_f32(vsubq_f32(v119[v108 + 1], v119[v108]), v115.f32[0])), v120), v115, 1));
          }

          else
          {
            v122 = vaddq_f32(v109, v13);
            v123 = vcvtq_s32_f32(v122);
            v124 = vaddq_f32(vsubq_f32(v107, v9), v13);
            v125 = vcvtq_s32_f32(v124);
            *v122.f32 = vadd_s32(*v123.i8, *&vcgtq_f32(vcvtq_f32_s32(v123), v122));
            *v124.f32 = vadd_s32(*v125.i8, *&vcgtq_f32(vcvtq_f32_s32(v125), v124));
            *v124.f32 = vmla_s32(vzip1_s32(*v122.f32, *v124.f32), vzip2_s32(*v122.f32, *v124.f32), vdup_n_s32(v108));
            v126 = v124.i32[1];
            v118 = *(v110 + 16 * v124.i32[0]);
            v121 = *(v110 + 16 * v126);
          }

          v127 = (v11 + 16 * v15);
          *v127 = v118;
          v127[1] = v121;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v128 = *(this + 51);
        v129 = vmulq_f32(v17, *(v128 + 48));
        v130 = vaddq_f32(v129, vextq_s8(v129, v129, 4uLL));
        v131 = vaddq_f32(v130, vextq_s8(v130, v130, 8uLL));
        v132 = vmulq_f32(v17, *(v128 + 32));
        v133 = vaddq_f32(v132, vextq_s8(v132, v132, 4uLL));
        v134 = vaddq_f32(v133, vextq_s8(v133, v133, 8uLL));
        v135 = *(v128 + 96);
        v136 = *(v128 + 112);
        v137 = vbslq_s8(v135, v134, v131);
        v138 = *(v128 + 16);
        v139 = vmulq_laneq_f32(*v128, v136, 2);
        v140 = vaddq_f32(v139, v137);
        v141 = vmulq_f32(v138, v140);
        v142 = vbslq_s8(*(v128 + 128), v140, vsubq_f32(vbslq_s8(*(v128 + 128), v140, vzip1q_s32(v141, v141)), *(v128 + 144)));
        v144 = *(v128 + 160);
        v143 = *(v128 + 176);
        v145 = vmulq_f32(v144, v142);
        v146 = vcvtq_f32_s32(vcvtq_s32_f32(v145));
        v147 = vsubq_f32(vabdq_f32(vsubq_f32(v145, vsubq_f32(v146, vandq_s8(v143, vcgtq_f32(v146, v145)))), v136), *(v128 + 192));
        v148 = vmulq_f32(v147, v147);
        v149 = *(v128 + 224);
        v150 = *(v128 + 240);
        v151 = *(v128 + 256);
        v152 = *(v128 + 272);
        v153 = vmulq_f32(v147, vaddq_f32(v151, vmulq_f32(v148, vaddq_f32(v150, vmulq_f32(v148, vaddq_f32(*(v128 + 208), vmulq_f32(v149, v148)))))));
        v148.i64[0] = v142.i64[0];
        v148.i64[1] = v153.i64[1];
        v142.i64[1] = vdupq_laneq_s64(v153, 1).u64[0];
        v154 = vrev64q_s32(v142);
        v155 = vminq_f32(vmaxq_f32(vrecpeq_f32(v154), v151), v152);
        v156 = vminq_f32(vmaxq_f32(vmulq_f32(v155, vrecpsq_f32(v154, v155)), v151), v152);
        v157 = vmulq_f32(v156, vrecpsq_f32(v154, v156));
        v158 = *(v128 + 288);
        v159 = vbslq_s8(v158, v157, v148);
        v160 = vbslq_s8(v158, vmulq_n_f32(v159, v159.f32[0]), v148);
        v161 = vandq_s8(v160, *(v128 + 304));
        v162.i64[0] = vextq_s8(v161, v160, 0xCuLL).u64[0];
        v163 = vextq_s8(v161, v160, 8uLL);
        v160.i64[1] = v161.i64[1];
        v162.u64[1] = vext_s8(*v160.i8, *&vextq_s8(v161, v161, 8uLL), 4uLL);
        v160.i64[0] = vbslq_s8(v135, vaddq_f32(v150, vbslq_s8(v135, vbslq_s8(vcgtq_f32(v163, v151), v162, v160), v160)), v160).u64[0];
        v161.i64[0] = v160.i64[0];
        v161.i64[1] = vmulq_f32(v144, vdupq_lane_s64(*&v160, 0)).i64[1];
        v164 = vcvtq_f32_s32(vcvtq_s32_f32(v161));
        v160.i64[1] = vsubq_f32(v164, vbslq_s8(vcgtq_f32(v164, v161), v143, 0)).i64[1];
        v165 = vextq_s8(v138, v138, 4uLL);
        v166 = vminq_f32(vmaxq_f32(vmulq_f32(v150, vrecpeq_f32(v165)), v151), v152);
        v167 = vbslq_s8(v158, vmulq_f32(v166, vrecpsq_f32(v165, v166)), v160);
        v168 = vbslq_s8(v135, vaddq_f32(vmulq_laneq_f32(v149, v167, 2), v167), v167);
        v169 = vsubq_f32(vbslq_s8(v135, vmulq_laneq_f32(v168, v168, 3), v167), v139);
        v170 = v169;
        v170.i32[3] = 1.0;
        v171 = *(v128 + 320);
        v169.i64[1] = vextq_s8(v170, v170, 8uLL).u64[0];
        *v170.f32 = vqtbl1_s8(v169, *v171.i8);
        *&v170.u32[2] = vqtbl1_s8(v169, *&vextq_s8(v171, v171, 8uLL));
        v172 = vmulq_f32(*(v128 + 80), v170);
        v173 = vmulq_f32(*(v128 + 64), v170);
        v174 = *(a2 + 22);
        v175 = vsubq_f32(vbslq_s8(v135, vaddq_f32(vextq_s8(v173, v173, 8uLL), vaddq_f32(v173, vrev64q_s32(v173))), vaddq_f32(vextq_s8(v172, v172, 4uLL), vaddq_f32(v172, vrev64q_s32(v172)))), v9);
        v176 = *(a2 + 10);
        if (v5)
        {
          v177 = vaddq_s32(vcvtq_s32_f32(v175), vcltzq_f32(v175));
          v178 = vsubq_f32(v175, vcvtq_f32_s32(v177)).u64[0];
          v179 = (v176 + 16 * (v177.i32[0] + v177.i32[1] * v174));
          v180 = vaddq_f32(*v179, vmulq_n_f32(vsubq_f32(v179[1], *v179), v178.f32[0]));
          v181 = vaddq_f32(v180, vmulq_lane_f32(vsubq_f32(vaddq_f32(v179[v174], vmulq_n_f32(vsubq_f32(v179[v174 + 1], v179[v174]), v178.f32[0])), v180), v178, 1));
        }

        else
        {
          v182 = vaddq_f32(v175, v13);
          v183 = vcvtq_s32_f32(v182);
          v182.i64[0] = vaddq_s32(v183, vcgtq_f32(vcvtq_f32_s32(v183), v182)).u64[0];
          v181 = *(v176 + 16 * (v182.i32[0] + v182.i32[1] * v174));
        }

        *(v11 + 16 * v15) = v181;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcEquirectToSinusoidal::GetDOD(HgcEquirectToSinusoidal *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcEquirectToSinusoidal::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcEquirectToSinusoidal::HgcEquirectToSinusoidal(HgcEquirectToSinusoidal *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DD240;
  operator new();
}

void HgcEquirectToSinusoidal::~HgcEquirectToSinusoidal(HGNode *this)
{
  *this = &unk_2871DD240;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcEquirectToSinusoidal::~HgcEquirectToSinusoidal(this);

  HGObject::operator delete(v1);
}

uint64_t HgcEquirectToSinusoidal::SetParameter(HgcEquirectToSinusoidal *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v11 = *(this + 51);
        if (*(v11 + 48) != a3.n128_f32[0] || *(v11 + 52) != a4 || *(v11 + 56) != a5 || *(v11 + 60) != a6)
        {
          *(v11 + 48) = a3.n128_u32[0];
          *(v11 + 52) = a4;
          *(v11 + 56) = a5;
          *(v11 + 60) = a6;
          goto LABEL_38;
        }

        return 0;
      case 4:
        v13 = *(this + 51);
        if (v13[4].n128_f32[0] != a3.n128_f32[0] || v13[4].n128_f32[1] != a4 || v13[4].n128_f32[2] != a6 || v13[4].n128_f32[3] != 0.0)
        {
          v13[4].n128_u32[0] = a3.n128_u32[0];
          v13[4].n128_f32[1] = a4;
          v13[4].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v13[4].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v13[21] = a3;
          goto LABEL_38;
        }

        return 0;
      case 5:
        v9 = *(this + 51);
        if (v9[5].n128_f32[0] != a3.n128_f32[0] || v9[5].n128_f32[1] != a4 || v9[5].n128_f32[2] != a6 || v9[5].n128_f32[3] != 0.0)
        {
          v9[5].n128_u32[0] = a3.n128_u32[0];
          v9[5].n128_f32[1] = a4;
          v9[5].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v9[5].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v9[22] = a3;
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
        v10 = *(this + 51);
        if (*v10 != a3.n128_f32[0] || *(v10 + 4) != a4 || *(v10 + 8) != a5 || *(v10 + 12) != a6)
        {
          *v10 = a3.n128_u32[0];
          *(v10 + 4) = a4;
          *(v10 + 8) = a5;
          *(v10 + 12) = a6;
          goto LABEL_38;
        }

        return 0;
      case 1:
        v12 = *(this + 51);
        if (*(v12 + 16) != a3.n128_f32[0] || *(v12 + 20) != a4 || *(v12 + 24) != a5 || *(v12 + 28) != a6)
        {
          *(v12 + 16) = a3.n128_u32[0];
          *(v12 + 20) = a4;
          *(v12 + 24) = a5;
          *(v12 + 28) = a6;
          goto LABEL_38;
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
LABEL_38:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

float HgcEquirectToSinusoidal::GetParameter(HgcEquirectToSinusoidal *this, int a2, float *a3)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v7 = *(this + 51);
        *a3 = v7[12];
        a3[1] = v7[13];
        a3[2] = v7[14];
        v4 = v7 + 15;
        break;
      case 4:
        v9 = *(this + 51);
        *a3 = v9[84];
        a3[1] = v9[85];
        a3[2] = v9[86];
        v4 = v9 + 87;
        break;
      case 5:
        v5 = *(this + 51);
        *a3 = v5[88];
        a3[1] = v5[89];
        a3[2] = v5[90];
        v4 = v5 + 91;
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

const char *HgcSinusoidalToEquirect::GetProgram(HgcSinusoidalToEquirect *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000477\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 3.141592741, 1.570796371, 1.000000000);\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.y = dot(frag._texCoord0, hg_Params[3]);\n    s0.x = dot(frag._texCoord0, hg_Params[2]);\n    s0.xy = hg_Params[0].xy*float2(c0.xx) + s0.xy;\n    s0.xz = s0.xy*hg_Params[1].xy;\n    s0.xz = s0.xz - float2(c0.yz);\n    s0.z = cos(s0.z);\n    s0.x = s0.x*s0.z + float(c0.y);\n    s0.x = s0.x/hg_Params[1].x;\n    s0.xy = hg_Params[0].xy*-float2(c0.xx) + s0.xy;\n    s0.w = float(c0.w);\n    s1.y = dot(s0.xyw, hg_Params[5].xyz);\n    s1.x = dot(s0.xyw, hg_Params[4].xyz);\n    s1.xy = s1.xy + hg_Params[6].xy;\n    s1.xy = s1.xy*hg_Params[6].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    return output;\n}\n//MD5=907f1e3b:69c9b012:9e08d289:d3acd372\n//SIG=00400000:00000000:00000000:00000001:0001:0007:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 3.141592741, 1.570796371, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.y = dot(frag._texCoord0, hg_Params[3]);\n    r0.x = dot(frag._texCoord0, hg_Params[2]);\n    r0.xy = hg_Params[0].xy*c0.xx + r0.xy;\n    r0.xz = r0.xy*hg_Params[1].xy;\n    r0.xz = r0.xz - c0.yz;\n    r0.z = cos(r0.z);\n    r0.x = r0.x*r0.z + c0.y;\n    r0.x = r0.x/hg_Params[1].x;\n    r0.xy = hg_Params[0].xy*-c0.xx + r0.xy;\n    r0.w = c0.w;\n    r1.y = dot(r0.xyw, hg_Params[5].xyz);\n    r1.x = dot(r0.xyw, hg_Params[4].xyz);\n    r1.xy = r1.xy + hg_Params[6].xy;\n    r1.xy = r1.xy*hg_Params[6].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    return output;\n}\n//MD5=de8c2ebc:47618ec8:de3c5c19:82ba5b0b\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000514\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 3.141592741, 1.570796371, 1.000000000);\n    highp vec4 r0, r1;\n\n    r0.y = dot(hg_TexCoord0, hg_ProgramLocal3);\n    r0.x = dot(hg_TexCoord0, hg_ProgramLocal2);\n    r0.xy = hg_ProgramLocal0.xy*c0.xx + r0.xy;\n    r0.xz = r0.xy*hg_ProgramLocal1.xy;\n    r0.xz = r0.xz - c0.yz;\n    r0.z = cos(r0.z);\n    r0.x = r0.x*r0.z + c0.y;\n    r0.x = r0.x/hg_ProgramLocal1.x;\n    r0.xy = hg_ProgramLocal0.xy*-c0.xx + r0.xy;\n    r0.w = c0.w;\n    r1.y = dot(r0.xyw, hg_ProgramLocal5.xyz);\n    r1.x = dot(r0.xyw, hg_ProgramLocal4.xyz);\n    r1.xy = r1.xy + hg_ProgramLocal6.xy;\n    r1.xy = r1.xy*hg_ProgramLocal6.zw;\n    gl_FragColor = texture2D(hg_Texture0, r1.xy);\n}\n//MD5=ad3a381e:4e10c63a:6e43c5d0:f30a6f2c\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA5F568(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA5F6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA5F738()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA5F730);
}

uint64_t HgcSinusoidalToEquirect::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 6, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcSinusoidalToEquirect::Bind(HgcSinusoidalToEquirect *this, HGHandler *a2)
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

uint64_t HgcSinusoidalToEquirect::RenderTile(HgcSinusoidalToEquirect *this, HGTile *a2)
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
          v22 = vmulq_f32(v17, v20);
          v23 = vmulq_f32(v18, v20);
          v24 = vaddq_f32(v22, vextq_s8(v22, v22, 4uLL));
          v25 = vaddq_f32(v23, vextq_s8(v23, v23, 4uLL));
          v26 = vmulq_f32(v17, v21);
          v27 = vmulq_f32(v18, v21);
          v28 = vaddq_f32(v26, vextq_s8(v26, v26, 4uLL));
          v29 = vaddq_f32(v27, vextq_s8(v27, v27, 4uLL));
          v30 = vaddq_f32(v28, vextq_s8(v28, v28, 8uLL));
          v31 = *(v19 + 96);
          v32 = *(v19 + 112);
          v33 = vbslq_s8(v31, v30, vaddq_f32(v24, vextq_s8(v24, v24, 8uLL)));
          v34 = vbslq_s8(v31, vaddq_f32(v29, vextq_s8(v29, v29, 8uLL)), vaddq_f32(v25, vextq_s8(v25, v25, 8uLL)));
          v35 = *(v19 + 16);
          v36 = vmulq_laneq_f32(*v19, v32, 2);
          v37 = vaddq_f32(v36, v33);
          v38 = vaddq_f32(v36, v34);
          v39 = vmulq_f32(v35, v37);
          v40 = vmulq_f32(v35, v38);
          v41 = *(v19 + 128);
          v42 = *(v19 + 144);
          v43 = vbslq_s8(v41, v37, vsubq_f32(vbslq_s8(v41, v37, vzip1q_s32(v39, v39)), v42));
          v44 = vbslq_s8(v41, v38, vsubq_f32(vbslq_s8(v41, v38, vzip1q_s32(v40, v40)), v42));
          v45 = *(v19 + 160);
          v46 = *(v19 + 176);
          v47 = vmulq_f32(v45, v43);
          v48 = vmulq_f32(v45, v44);
          v49 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
          v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
          v51 = vsubq_f32(v48, vsubq_f32(v50, vandq_s8(v46, vcgtq_f32(v50, v48))));
          v52 = vabdq_f32(vsubq_f32(v47, vsubq_f32(v49, vandq_s8(v46, vcgtq_f32(v49, v47)))), v32);
          v53 = vabdq_f32(v51, v32);
          v54 = *(v19 + 192);
          v55 = *(v19 + 208);
          v56 = vsubq_f32(v52, v54);
          v57 = vsubq_f32(v53, v54);
          v58 = vmulq_f32(v56, v56);
          v59 = vmulq_f32(v57, v57);
          v60 = *(v19 + 224);
          v61 = *(v19 + 240);
          v62 = vaddq_f32(v55, vmulq_f32(v60, v58));
          v63 = vaddq_f32(v55, vmulq_f32(v60, v59));
          v64 = vmulq_f32(v58, vaddq_f32(v61, vmulq_f32(v58, v62)));
          v65 = *(v19 + 256);
          v66 = *(v19 + 272);
          v67 = vmulq_f32(v56, vaddq_f32(v65, v64));
          v68 = vmulq_f32(v57, vaddq_f32(v65, vmulq_f32(v59, vaddq_f32(v61, vmulq_f32(v59, v63)))));
          v43.i64[1] = v67.i64[1];
          v44.i64[1] = v68.i64[1];
          v69 = vminq_f32(vmaxq_f32(vrecpeq_f32(v35), v61), v66);
          v70 = vminq_f32(vmaxq_f32(vmulq_f32(v69, vrecpsq_f32(v35, v69)), v61), v66);
          v71 = vmulq_f32(v70, vrecpsq_f32(v35, v70));
          v72 = vsubq_f32(vbslq_s8(v31, vmulq_f32(v71, vbslq_s8(v31, vaddq_f32(v65, vmulq_laneq_f32(v43, v67, 2)), v43)), v43), v36);
          v73 = vsubq_f32(vbslq_s8(v31, vmulq_f32(v71, vbslq_s8(v31, vaddq_f32(v65, vmulq_laneq_f32(v44, v68, 2)), v44)), v44), v36);
          v74 = v72;
          v74.i32[3] = 1.0;
          v75 = v73;
          v75.i32[3] = 1.0;
          v76 = *(v19 + 288);
          v72.i64[1] = vextq_s8(v74, v74, 8uLL).u64[0];
          *v74.f32 = vqtbl1_s8(v72, *v76.i8);
          v67.i64[0] = vextq_s8(v76, v76, 8uLL).u64[0];
          *&v74.u32[2] = vqtbl1_s8(v72, *v67.f32);
          v73.i64[1] = vextq_s8(v75, v75, 8uLL).u64[0];
          *v72.f32 = vqtbl1_s8(v73, *v76.i8);
          *&v72.u32[2] = vqtbl1_s8(v73, *v67.f32);
          v78 = *(v19 + 64);
          v77 = *(v19 + 80);
          v79 = vmulq_f32(v77, v74);
          v80 = vmulq_f32(v77, v72);
          v81 = vmulq_f32(v78, v74);
          v82 = vmulq_f32(v78, v72);
          v83 = vbslq_s8(v31, vaddq_f32(vextq_s8(v81, v81, 8uLL), vaddq_f32(v81, vrev64q_s32(v81))), vaddq_f32(vextq_s8(v79, v79, 4uLL), vaddq_f32(v79, vrev64q_s32(v79))));
          v84 = vbslq_s8(v31, vaddq_f32(vextq_s8(v82, v82, 8uLL), vaddq_f32(v82, vrev64q_s32(v82))), vaddq_f32(vextq_s8(v80, v80, 4uLL), vaddq_f32(v80, vrev64q_s32(v80))));
          v85 = *(a2 + 22);
          v86 = vsubq_f32(v83, v9);
          v87 = *(a2 + 10);
          if (v5)
          {
            v88 = vaddq_s32(vcvtq_s32_f32(v86), vcltzq_f32(v86));
            v89 = vsubq_f32(v86, vcvtq_f32_s32(v88)).u64[0];
            v90 = vsubq_f32(v84, v9);
            v91 = vaddq_s32(vcvtq_s32_f32(v90), vcltzq_f32(v90));
            v92 = vsubq_f32(v90, vcvtq_f32_s32(v91)).u64[0];
            *v88.i8 = vmla_s32(vzip1_s32(*v88.i8, *v91.i8), vzip2_s32(*v88.i8, *v91.i8), vdup_n_s32(v85));
            v93 = (v87 + 16 * v88.i32[0]);
            v94 = vaddq_f32(*v93, vmulq_n_f32(vsubq_f32(v93[1], *v93), v89.f32[0]));
            v95 = vaddq_f32(v94, vmulq_lane_f32(vsubq_f32(vaddq_f32(v93[v85], vmulq_n_f32(vsubq_f32(v93[v85 + 1], v93[v85]), v89.f32[0])), v94), v89, 1));
            v96 = (v87 + 16 * v88.i32[1]);
            v97 = vaddq_f32(*v96, vmulq_n_f32(vsubq_f32(v96[1], *v96), v92.f32[0]));
            v98 = vaddq_f32(v97, vmulq_lane_f32(vsubq_f32(vaddq_f32(v96[v85], vmulq_n_f32(vsubq_f32(v96[v85 + 1], v96[v85]), v92.f32[0])), v97), v92, 1));
          }

          else
          {
            v99 = vaddq_f32(v86, v13);
            v100 = vcvtq_s32_f32(v99);
            v101 = vaddq_f32(vsubq_f32(v84, v9), v13);
            v102 = vcvtq_s32_f32(v101);
            *v99.f32 = vadd_s32(*v100.i8, *&vcgtq_f32(vcvtq_f32_s32(v100), v99));
            *v101.f32 = vadd_s32(*v102.i8, *&vcgtq_f32(vcvtq_f32_s32(v102), v101));
            *v101.f32 = vmla_s32(vzip1_s32(*v99.f32, *v101.f32), vzip2_s32(*v99.f32, *v101.f32), vdup_n_s32(v85));
            v103 = v101.i32[1];
            v95 = *(v87 + 16 * v101.i32[0]);
            v98 = *(v87 + 16 * v103);
          }

          v104 = (v11 + 16 * v15);
          *v104 = v95;
          v104[1] = v98;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v105 = *(this + 51);
        v106 = vmulq_f32(v17, *(v105 + 48));
        v107 = vaddq_f32(v106, vextq_s8(v106, v106, 4uLL));
        v108 = vaddq_f32(v107, vextq_s8(v107, v107, 8uLL));
        v109 = vmulq_f32(v17, *(v105 + 32));
        v110 = vaddq_f32(v109, vextq_s8(v109, v109, 4uLL));
        v111 = vaddq_f32(v110, vextq_s8(v110, v110, 8uLL));
        v112 = *(v105 + 96);
        v113 = *(v105 + 112);
        v114 = vbslq_s8(v112, v111, v108);
        v115 = *(v105 + 16);
        v116 = vmulq_laneq_f32(*v105, v113, 2);
        v117 = vaddq_f32(v116, v114);
        v118 = vmulq_f32(v115, v117);
        v119 = vbslq_s8(*(v105 + 128), v117, vsubq_f32(vbslq_s8(*(v105 + 128), v117, vzip1q_s32(v118, v118)), *(v105 + 144)));
        v120 = vmulq_f32(*(v105 + 160), v119);
        v121 = vcvtq_f32_s32(vcvtq_s32_f32(v120));
        v122 = vsubq_f32(vabdq_f32(vsubq_f32(v120, vsubq_f32(v121, vandq_s8(*(v105 + 176), vcgtq_f32(v121, v120)))), v113), *(v105 + 192));
        v123 = vmulq_f32(v122, v122);
        v124 = *(v105 + 240);
        v125 = *(v105 + 256);
        v126 = *(v105 + 272);
        v127 = vmulq_f32(v122, vaddq_f32(v125, vmulq_f32(v123, vaddq_f32(v124, vmulq_f32(v123, vaddq_f32(*(v105 + 208), vmulq_f32(*(v105 + 224), v123)))))));
        v119.i64[1] = v127.i64[1];
        v128 = vminq_f32(vmaxq_f32(vrecpeq_f32(v115), v124), v126);
        v129 = vminq_f32(vmaxq_f32(vmulq_f32(v128, vrecpsq_f32(v115, v128)), v124), v126);
        v130 = vsubq_f32(vbslq_s8(v112, vmulq_f32(vmulq_f32(v129, vrecpsq_f32(v115, v129)), vbslq_s8(v112, vaddq_f32(v125, vmulq_laneq_f32(v119, v127, 2)), v119)), v119), v116);
        v131 = v130;
        v131.i32[3] = 1.0;
        v132 = *(v105 + 288);
        v130.i64[1] = vextq_s8(v131, v131, 8uLL).u64[0];
        *v131.f32 = vqtbl1_s8(v130, *v132.i8);
        *&v131.u32[2] = vqtbl1_s8(v130, *&vextq_s8(v132, v132, 8uLL));
        v133 = vmulq_f32(*(v105 + 80), v131);
        v134 = vmulq_f32(*(v105 + 64), v131);
        v135 = *(a2 + 22);
        v136 = vsubq_f32(vbslq_s8(v112, vaddq_f32(vextq_s8(v134, v134, 8uLL), vaddq_f32(v134, vrev64q_s32(v134))), vaddq_f32(vextq_s8(v133, v133, 4uLL), vaddq_f32(v133, vrev64q_s32(v133)))), v9);
        v137 = *(a2 + 10);
        if (v5)
        {
          v138 = vaddq_s32(vcvtq_s32_f32(v136), vcltzq_f32(v136));
          v139 = vsubq_f32(v136, vcvtq_f32_s32(v138)).u64[0];
          v140 = (v137 + 16 * (v138.i32[0] + v138.i32[1] * v135));
          v141 = vaddq_f32(*v140, vmulq_n_f32(vsubq_f32(v140[1], *v140), v139.f32[0]));
          v142 = vaddq_f32(v141, vmulq_lane_f32(vsubq_f32(vaddq_f32(v140[v135], vmulq_n_f32(vsubq_f32(v140[v135 + 1], v140[v135]), v139.f32[0])), v141), v139, 1));
        }

        else
        {
          v143 = vaddq_f32(v136, v13);
          v144 = vcvtq_s32_f32(v143);
          v143.i64[0] = vaddq_s32(v144, vcgtq_f32(vcvtq_f32_s32(v144), v143)).u64[0];
          v142 = *(v137 + 16 * (v143.i32[0] + v143.i32[1] * v135));
        }

        *(v11 + 16 * v15) = v142;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcSinusoidalToEquirect::GetDOD(HgcSinusoidalToEquirect *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcSinusoidalToEquirect::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcSinusoidalToEquirect::HgcSinusoidalToEquirect(HgcSinusoidalToEquirect *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DD4A8;
  operator new();
}

void HgcSinusoidalToEquirect::~HgcSinusoidalToEquirect(HGNode *this)
{
  *this = &unk_2871DD4A8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4055B0EC01);
  }

  HGNode::~HGNode(this);
}

{
  HgcSinusoidalToEquirect::~HgcSinusoidalToEquirect(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSinusoidalToEquirect::SetParameter(HgcSinusoidalToEquirect *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v11 = *(this + 51);
        if (*(v11 + 48) != a3.n128_f32[0] || *(v11 + 52) != a4 || *(v11 + 56) != a5 || *(v11 + 60) != a6)
        {
          *(v11 + 48) = a3.n128_u32[0];
          *(v11 + 52) = a4;
          *(v11 + 56) = a5;
          *(v11 + 60) = a6;
          goto LABEL_38;
        }

        return 0;
      case 4:
        v13 = *(this + 51);
        if (v13[4].n128_f32[0] != a3.n128_f32[0] || v13[4].n128_f32[1] != a4 || v13[4].n128_f32[2] != a6 || v13[4].n128_f32[3] != 0.0)
        {
          v13[4].n128_u32[0] = a3.n128_u32[0];
          v13[4].n128_f32[1] = a4;
          v13[4].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v13[4].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v13[19] = a3;
          goto LABEL_38;
        }

        return 0;
      case 5:
        v9 = *(this + 51);
        if (v9[5].n128_f32[0] != a3.n128_f32[0] || v9[5].n128_f32[1] != a4 || v9[5].n128_f32[2] != a6 || v9[5].n128_f32[3] != 0.0)
        {
          v9[5].n128_u32[0] = a3.n128_u32[0];
          v9[5].n128_f32[1] = a4;
          v9[5].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v9[5].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v9[20] = a3;
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
        v10 = *(this + 51);
        if (*v10 != a3.n128_f32[0] || *(v10 + 4) != a4 || *(v10 + 8) != a5 || *(v10 + 12) != a6)
        {
          *v10 = a3.n128_u32[0];
          *(v10 + 4) = a4;
          *(v10 + 8) = a5;
          *(v10 + 12) = a6;
          goto LABEL_38;
        }

        return 0;
      case 1:
        v12 = *(this + 51);
        if (*(v12 + 16) != a3.n128_f32[0] || *(v12 + 20) != a4 || *(v12 + 24) != a5 || *(v12 + 28) != a6)
        {
          *(v12 + 16) = a3.n128_u32[0];
          *(v12 + 20) = a4;
          *(v12 + 24) = a5;
          *(v12 + 28) = a6;
          goto LABEL_38;
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
LABEL_38:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

float HgcSinusoidalToEquirect::GetParameter(HgcSinusoidalToEquirect *this, int a2, float *a3)
{
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v7 = *(this + 51);
        *a3 = v7[12];
        a3[1] = v7[13];
        a3[2] = v7[14];
        v4 = v7 + 15;
        break;
      case 4:
        v9 = *(this + 51);
        *a3 = v9[76];
        a3[1] = v9[77];
        a3[2] = v9[78];
        v4 = v9 + 79;
        break;
      case 5:
        v5 = *(this + 51);
        *a3 = v5[80];
        a3[1] = v5[81];
        a3[2] = v5[82];
        v4 = v5 + 83;
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

const char *HgcOuterGlowColorize::GetProgram(HgcOuterGlowColorize *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000036e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0.x = r0.w*half(hg_Params[3].x);\n    r0.x = fmin(r0.x, c0.x);\n    r1.xyz = mix(half3(hg_Params[0].xyz), half3(hg_Params[1].xyz), r0.xxx);\n    r0.x = r0.x*half(hg_Params[2].x);\n    r1.w = fmin(r0.x, c0.x);\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = float4(r1);\n    return output;\n}\n//MD5=a78979a8:fd2d617d:0ff48bb0:9d0bd711\n//SIG=00400000:00000001:00000001:00000001:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000349\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r0.x = r0.w*hg_Params[3].x;\n    r0.x = fmin(r0.x, c0.x);\n    r1.xyz = mix(hg_Params[0].xyz, hg_Params[1].xyz, r0.xxx);\n    r0.x = r0.x*hg_Params[2].x;\n    r1.w = fmin(r0.x, c0.x);\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = r1;\n    return output;\n}\n//MD5=bf2ac94e:cbede188:491e5bf7:f6bff8f8\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000039e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r0.x = r0.w*hg_ProgramLocal3.x;\n    r0.x = min(r0.x, c0.x);\n    r1.xyz = mix(hg_ProgramLocal0.xyz, hg_ProgramLocal1.xyz, r0.xxx);\n    r0.x = r0.x*hg_ProgramLocal2.x;\n    r1.w = min(r0.x, c0.x);\n    r1.xyz = r1.xyz*r1.www;\n    gl_FragColor = r1;\n}\n//MD5=b36fd428:cd4964f7:0a8f8443:c0a19b70\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA607D8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA608D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA60918()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA60910);
}

uint64_t HgcOuterGlowColorize::BindTexture(HgcOuterGlowColorize *this, HGHandler *a2, int a3)
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

uint64_t HgcOuterGlowColorize::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcOuterGlowColorize::RenderTile(uint64_t a1, uint64_t a2)
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
          v14 = *(v12 + 32);
          v13 = *(v12 + 48);
          v15 = vmulq_laneq_f32(v13, *(v6 + v10 - 32), 3);
          v16 = vmulq_laneq_f32(v13, *(v6 + v10 - 16), 3);
          v17 = vmulq_laneq_f32(v13, *(v6 + v10), 3);
          v18 = vmulq_laneq_f32(v13, *(v6 + v10 + 16), 3);
          v19 = *(v12 + 64);
          v20 = *(v12 + 80);
          v21 = vminq_f32(v15, v19);
          v22 = vminq_f32(v16, v19);
          v23 = vminq_f32(v17, v19);
          v24 = vminq_f32(v18, v19);
          v25 = vsubq_f32(*(v12 + 16), *v12);
          v26 = vaddq_f32(*v12, vmulq_n_f32(v25, v21.f32[0]));
          v27 = vaddq_f32(*v12, vmulq_n_f32(v25, v22.f32[0]));
          v28 = vaddq_f32(*v12, vmulq_n_f32(v25, v23.f32[0]));
          v29 = vaddq_f32(*v12, vmulq_n_f32(v25, v24.f32[0]));
          v30 = vmulq_f32(v21, v14);
          v31 = vmulq_f32(v22, v14);
          v32 = vmulq_f32(v23, v14);
          v33 = vmulq_f32(v24, v14);
          v34 = vminq_f32(vextq_s8(v30, v30, 4uLL), v19);
          v35 = vminq_f32(vextq_s8(v31, v31, 4uLL), v19);
          v36 = vminq_f32(vextq_s8(v32, v32, 4uLL), v19);
          v37 = vminq_f32(vextq_s8(v33, v33, 4uLL), v19);
          v38 = vbslq_s8(v20, v34, v26);
          v39 = vbslq_s8(v20, v35, v27);
          v40 = vbslq_s8(v20, v36, v28);
          v41 = vbslq_s8(v20, v37, v29);
          v42 = (v5 + v10);
          v42[-2] = vbslq_s8(v20, v34, vmulq_laneq_f32(v38, v38, 3));
          v42[-1] = vbslq_s8(v20, v35, vmulq_laneq_f32(v39, v39, 3));
          *v42 = vbslq_s8(v20, v36, vmulq_laneq_f32(v40, v40, 3));
          v42[1] = vbslq_s8(v20, v37, vmulq_laneq_f32(v41, v41, 3));
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v43 = *(a1 + 408);
          v44 = *(v43 + 64);
          v45 = vminq_f32(vmulq_laneq_f32(*(v43 + 48), *(v6 + 16 * v9), 3), v44);
          v46 = vaddq_f32(*v43, vmulq_n_f32(vsubq_f32(*(v43 + 16), *v43), v45.f32[0]));
          v47 = vmulq_f32(v45, *(v43 + 32));
          v48 = vminq_f32(vextq_s8(v47, v47, 4uLL), v44);
          v49 = vbslq_s8(*(v43 + 80), v48, v46);
          *(v5 + 16 * v9++) = vbslq_s8(*(v43 + 80), v48, vmulq_laneq_f32(v49, v49, 3));
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

uint64_t HgcOuterGlowColorize::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcOuterGlowColorize::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcOuterGlowColorize::HgcOuterGlowColorize(HgcOuterGlowColorize *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DD710;
  operator new();
}

void HgcOuterGlowColorize::~HgcOuterGlowColorize(HGNode *this)
{
  *this = &unk_2871DD710;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcOuterGlowColorize::~HgcOuterGlowColorize(this);

  HGObject::operator delete(v1);
}

uint64_t HgcOuterGlowColorize::SetParameter(HgcOuterGlowColorize *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcOuterGlowColorize::GetParameter(HgcOuterGlowColorize *this, unsigned int a2, float *a3)
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

const char *HgcOuterGlowLumaWeight::GetProgram(HgcOuterGlowLumaWeight *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000322\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.x = dot(r1, half4(hg_Params[0]));\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.xxxx));\n    return output;\n}\n//MD5=f7bfe6a2:88950761:be7159d0:97f9f84c\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002f6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.x = dot(r1, hg_Params[0]);\n    output.color0 = mix(r0, r1, r2.xxxx);\n    return output;\n}\n//MD5=9fa36ebc:6508dcfd:296c9c6b:33b0a2dc\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002a0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2.x = dot(r1, hg_ProgramLocal0);\n    gl_FragColor = mix(r0, r1, r2.xxxx);\n}\n//MD5=3b9e3d80:45d1b0ae:1c548164:2c72b248\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA6107C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA611BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA61204()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA611FCLL);
}

uint64_t HgcOuterGlowLumaWeight::BindTexture(HgcOuterGlowLumaWeight *this, HGHandler *a2, int a3)
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

uint64_t HgcOuterGlowLumaWeight::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcOuterGlowLumaWeight::RenderTile(uint64_t a1, uint64_t a2)
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
          v14 = *(v8 + v12 - 16);
          v15 = *(v6 + v12 - 32);
          v16 = *(v6 + v12 - 16);
          v17 = *(v6 + v12);
          v18 = *(v6 + v12 + 16);
          v19 = **(a1 + 408);
          v20 = vmulq_f32(v15, v19);
          v21 = vmulq_f32(v16, v19);
          v22 = vmulq_f32(v17, v19);
          v23 = vmulq_f32(v18, v19);
          v24 = vaddq_f32(v20, vextq_s8(v20, v20, 4uLL));
          v25 = vaddq_f32(v21, vextq_s8(v21, v21, 4uLL));
          v26 = vaddq_f32(v22, vextq_s8(v22, v22, 4uLL));
          v27 = vaddq_f32(v23, vextq_s8(v23, v23, 4uLL));
          v28 = vaddq_f32(*(v8 + v12), vmulq_n_f32(vsubq_f32(v17, *(v8 + v12)), vaddq_f32(v26, vdupq_laneq_s32(v26, 2)).f32[0]));
          v29 = vaddq_f32(*(v8 + v12 + 16), vmulq_n_f32(vsubq_f32(v18, *(v8 + v12 + 16)), vaddq_f32(v27, vdupq_laneq_s32(v27, 2)).f32[0]));
          v30 = (v5 + v12);
          v30[-2] = vaddq_f32(*(v8 + v12 - 32), vmulq_n_f32(vsubq_f32(v15, *(v8 + v12 - 32)), vaddq_f32(v24, vdupq_laneq_s32(v24, 2)).f32[0]));
          v30[-1] = vaddq_f32(v14, vmulq_n_f32(vsubq_f32(v16, v14), vaddq_f32(v25, vdupq_laneq_s32(v25, 2)).f32[0]));
          *v30 = v28;
          v30[1] = v29;
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v31 = *(v6 + 16 * v11);
          v32 = vmulq_f32(v31, **(a1 + 408));
          v33 = vaddq_f32(v32, vextq_s8(v32, v32, 4uLL));
          *(v5 + 16 * v11) = vaddq_f32(*(v8 + 16 * v11), vmulq_n_f32(vsubq_f32(v31, *(v8 + 16 * v11)), vaddq_f32(v33, vdupq_laneq_s32(v33, 2)).f32[0]));
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

uint64_t HgcOuterGlowLumaWeight::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcOuterGlowLumaWeight::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcOuterGlowLumaWeight::HgcOuterGlowLumaWeight(HgcOuterGlowLumaWeight *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DD978;
  operator new();
}

void HgcOuterGlowLumaWeight::~HgcOuterGlowLumaWeight(HGNode *this)
{
  *this = &unk_2871DD978;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);
}

{
  HgcOuterGlowLumaWeight::~HgcOuterGlowLumaWeight(this);

  HGObject::operator delete(v1);
}

uint64_t HgcOuterGlowLumaWeight::SetParameter(HgcOuterGlowLumaWeight *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcOuterGlowLumaWeight::GetParameter(HgcOuterGlowLumaWeight *this, int a2, float *a3)
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

const char *HgcFillColor::GetProgram(HgcFillColor *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = half3(hg_Params[0].xyz);\n    r1.w = c0.w;\n    r1 = mix(r0, r1, half4(hg_Params[1]));\n    output.color0 = float4(r1)*float4(r0.wwww);\n    return output;\n}\n//MD5=ac5026c4:147961bc:ea1ebdb9:14a34980\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002cd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = hg_Params[0].xyz;\n    r1.w = c0.w;\n    r1 = mix(r0, r1, hg_Params[1]);\n    output.color0 = r1*r0.wwww;\n    return output;\n}\n//MD5=56f16a5c:e268dd2e:7b8ddc53:4c1b5dba\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002cc\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = hg_ProgramLocal0.xyz;\n    r1.w = c0.w;\n    r1 = mix(r0, r1, hg_ProgramLocal1);\n    gl_FragColor = r1*r0.wwww;\n}\n//MD5=17569828:c63ee1b1:73a10350:7f7b3af7\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA618CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA619CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA61A0C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA61A04);
}

uint64_t HgcFillColor::BindTexture(HgcFillColor *this, HGHandler *a2, int a3)
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

uint64_t HgcFillColor::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcFillColor::RenderTile(uint64_t a1, uint64_t a2)
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
          v12 = *(v6 + v10 - 16);
          v13 = *(v6 + v10);
          v14 = *(a1 + 408);
          v15 = *v14;
          v16 = v14[1];
          v15.i32[3] = 1.0;
          v17 = vmulq_laneq_f32(vaddq_f32(*(v6 + v10 + 16), vmulq_f32(v16, vsubq_f32(v15, *(v6 + v10 + 16)))), *(v6 + v10 + 16), 3);
          v18 = (v5 + v10);
          v18[-2] = vmulq_laneq_f32(vaddq_f32(*(v6 + v10 - 32), vmulq_f32(v16, vsubq_f32(v15, *(v6 + v10 - 32)))), *(v6 + v10 - 32), 3);
          v18[-1] = vmulq_laneq_f32(vaddq_f32(v12, vmulq_f32(v16, vsubq_f32(v15, v12))), v12, 3);
          *v18 = vmulq_laneq_f32(vaddq_f32(v13, vmulq_f32(v16, vsubq_f32(v15, v13))), v13, 3);
          v18[1] = v17;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v19 = *(a1 + 408);
          v20 = *v19;
          v20.i32[3] = 1.0;
          *(v5 + 16 * v9) = vmulq_laneq_f32(vaddq_f32(*(v6 + 16 * v9), vmulq_f32(v19[1], vsubq_f32(v20, *(v6 + 16 * v9)))), *(v6 + 16 * v9), 3);
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

uint64_t HgcFillColor::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcFillColor::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcFillColor::HgcFillColor(HgcFillColor *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DDBE0;
  operator new();
}

void HgcFillColor::~HgcFillColor(HGNode *this)
{
  *this = &unk_2871DDBE0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);
}

{
  HgcFillColor::~HgcFillColor(this);

  HGObject::operator delete(v1);
}

uint64_t HgcFillColor::SetParameter(HgcFillColor *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    v8 = *(this + 51);
    if (*(v8 + 16) != a3.n128_f32[0] || *(v8 + 20) != a3.n128_f32[0] || *(v8 + 24) != a3.n128_f32[0] || *(v8 + 28) != a3.n128_f32[0])
    {
      v9 = vdupq_lane_s32(a3.n128_u64[0], 0);
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v8 + 16) = v9;
      *(v8 + 32) = a3;
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

uint64_t HgcFillColor::GetParameter(HgcFillColor *this, int a2, float *a3)
{
  if (a2 == 1)
  {
    v5 = *(this + 51);
    *a3 = v5[8];
    a3[1] = v5[9];
    a3[2] = v5[10];
    v4 = v5 + 11;
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

const char *HgcVignetteBB::GetProgram(HgcVignetteBB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000055f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 1.000000000, 0.5870000124, 0.2989999950);\n    const half4 c1 = half4(0.1140000001, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord1.xy*hg_Params[3].xy;\n    s0.xy = s0.xy*float2(c0.xx) + hg_Params[0].xy;\n    s0.xy = s0.xy + float2(c0.yy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s0.x = dot(s0.xy, s0.xy);\n    s0.x = sqrt(s0.x);\n    s0.x = clamp(s0.x*hg_Params[1].x + hg_Params[1].y, 0.00000f, 1.00000f);\n    s0.xyz = mix(float3(c0.yyy), hg_Params[2].xyz, s0.xxx);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    s1.xyz = float3(r1.xyz)*s0.xxx;\n    s1.w = s1.y*float(c0.z);\n    s1.w = s1.x*float(c0.w) + s1.w;\n    s0.x = s1.z*float(c1.x) + s1.w;\n    s1.w = float(r0.w);\n    s0 = mix(s0.xxxx, s1, s0.yyyz);\n    s1.w = s0.w;\n    s1.xyz = s0.xyz*s0.www;\n    output.color0 = mix(float4(r0), s1, hg_Params[4]);\n    return output;\n}\n//MD5=95f5cf05:5ec1ea8a:596c5974:cb603b52\n//SIG=00400000:00000001:00000001:00000001:0002:0005:0004:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000050a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 1.000000000, 0.5870000124, 0.2989999950);\n    const float4 c1 = float4(0.1140000001, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord1.xy*hg_Params[3].xy;\n    r0.xy = r0.xy*c0.xx + hg_Params[0].xy;\n    r0.xy = r0.xy + c0.yy;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0.xy, r0.xy);\n    r0.x = sqrt(r0.x);\n    r0.x = clamp(r0.x*hg_Params[1].x + hg_Params[1].y, 0.00000f, 1.00000f);\n    r0.xyz = mix(c0.yyy, hg_Params[2].xyz, r0.xxx);\n    r2.xyz = r1.xyz / fmax(r1.w, 1.00000e-06f);\n    r2.xyz = r2.xyz*r0.xxx;\n    r2.w = r2.y*c0.z;\n    r2.w = r2.x*c0.w + r2.w;\n    r0.x = r2.z*c1.x + r2.w;\n    r2.w = r1.w;\n    r0 = mix(r0.xxxx, r2, r0.yyyz);\n    r2.w = r0.w;\n    r2.xyz = r0.xyz*r0.www;\n    output.color0 = mix(r1, r2, hg_Params[4]);\n    return output;\n}\n//MD5=04da8362:7b4fb5ce:32995c07:3621730f\n//SIG=00000000:00000001:00000001:00000000:0002:0005:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000598\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 1.000000000, 0.5870000124, 0.2989999950);\n    const highp vec4 c1 = vec4(0.1140000001, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord1.xy*hg_ProgramLocal3.xy;\n    r0.xy = r0.xy*c0.xx + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy + c0.yy;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = dot(r0.xy, r0.xy);\n    r0.x = sqrt(r0.x);\n    r0.x = clamp(r0.x*hg_ProgramLocal1.x + hg_ProgramLocal1.y, 0.00000, 1.00000);\n    r0.xyz = mix(c0.yyy, hg_ProgramLocal2.xyz, r0.xxx);\n    r2.xyz = r1.xyz / max(r1.w, 1.00000e-06);\n    r2.xyz = r2.xyz*r0.xxx;\n    r2.w = r2.y*c0.z;\n    r2.w = r2.x*c0.w + r2.w;\n    r0.x = r2.z*c1.x + r2.w;\n    r2.w = r1.w;\n    r0 = mix(r0.xxxx, r2, r0.yyyz);\n    r2.w = r0.w;\n    r2.xyz = r0.xyz*r0.www;\n    gl_FragColor = mix(r1, r2, hg_ProgramLocal4);\n}\n//MD5=61180778:7d0e1783:10075720:d28f755e\n//SIG=00000000:00000001:00000001:00000000:0002:0005:0003:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FA620C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA62208(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA62250()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA62248);
}

uint64_t HgcVignetteBB::BindTexture(HgcVignetteBB *this, HGHandler *a2, int a3)
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

uint64_t HgcVignetteBB::Bind(HgcVignetteBB *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcVignetteBB::RenderTile(uint64_t a1, int32x2_t *a2)
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
          v16 = *(a1 + 408);
          v17 = vaddq_f32(v15, xmmword_2603429B0);
          v18 = *(v16 + 48);
          v19 = vmulq_f32(v14, v18);
          v20 = vmulq_f32(v15, v18);
          v21 = *(v16 + 64);
          v22 = *(v16 + 80);
          v23 = *(v16 + 16);
          v25 = *(v16 + 96);
          v24 = *(v16 + 112);
          v26 = vaddq_f32(v25, vaddq_f32(*v16, vmulq_lane_f32(v19, *v22.f32, 1)));
          v27 = vaddq_f32(v25, vaddq_f32(*v16, vmulq_lane_f32(v20, *v22.f32, 1)));
          v28 = vaddq_f32(v25, vaddq_f32(*v16, vmulq_lane_f32(vmulq_f32(v17, v18), *v22.f32, 1)));
          v29 = *(*&v7 + v11);
          v30 = *(*&v7 + v11 + 16);
          v31 = vmulq_f32(v26, v26);
          v32 = vmulq_f32(v27, v27);
          v33 = vmulq_f32(v28, v28);
          v34 = vaddq_f32(v31, vrev64q_s32(v31));
          v35 = vaddq_f32(v32, vrev64q_s32(v32));
          v36 = vaddq_f32(v33, vrev64q_s32(v33));
          v37 = vminq_f32(vrsqrteq_f32(v34), v22);
          v38 = vminq_f32(vrsqrteq_f32(v35), v22);
          v39 = vminq_f32(vrsqrteq_f32(v36), v22);
          v40 = vmulq_f32(v37, vrsqrtsq_f32(vmulq_f32(v34, v37), v37));
          v41 = *(*&v7 + v11 + 32);
          v42 = vminq_f32(v40, v22);
          v43 = vminq_f32(vmulq_f32(v38, vrsqrtsq_f32(vmulq_f32(v35, v38), v38)), v22);
          v44 = vminq_f32(vmulq_f32(v39, vrsqrtsq_f32(vmulq_f32(v36, v39), v39)), v22);
          v45 = vminq_f32(vmulq_f32(v42, vrsqrtsq_f32(vmulq_f32(v34, v42), v42)), v22);
          v46 = vminq_f32(vmulq_f32(v43, vrsqrtsq_f32(vmulq_f32(v35, v43), v43)), v22);
          v47 = vmulq_f32(v36, vminq_f32(vmulq_f32(v44, vrsqrtsq_f32(vmulq_f32(v36, v44), v44)), v22));
          v48 = vrev64q_s32(v23);
          v49 = vmulq_f32(v47, v23);
          v50 = vsubq_f32(*(v16 + 32), v25);
          v51 = vmulq_n_f32(v50, vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(vmulq_f32(v34, v45), v23), v48), v24), v25).f32[0]);
          v52 = vmulq_n_f32(v50, vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(vmulq_f32(v35, v46), v23), v48), v24), v25).f32[0]);
          v53 = vmulq_n_f32(v50, vminq_f32(vmaxq_f32(vaddq_f32(v49, v48), v24), v25).f32[0]);
          v55 = *(v16 + 128);
          v54 = *(v16 + 144);
          v56 = vmaxq_f32(vdupq_laneq_s32(v29, 3), v55);
          v57 = vmaxq_f32(vdupq_laneq_s32(v30, 3), v55);
          v58 = vmaxq_f32(vdupq_laneq_s32(v41, 3), v55);
          v59 = vaddq_f32(v25, v51);
          v60 = vmulq_f32(vrecpeq_f32(v56), v54);
          v61 = vmulq_f32(vrecpeq_f32(v57), v54);
          v62 = vmulq_f32(vrecpeq_f32(v58), v54);
          v63 = vaddq_f32(v25, v52);
          v64 = vaddq_f32(v25, v53);
          v65 = vmulq_n_f32(vmulq_f32(v29, vmulq_f32(v60, vrecpsq_f32(v60, v56))), *v59.i32);
          v66 = vmulq_n_f32(vmulq_f32(v30, vmulq_f32(v61, vrecpsq_f32(v61, v57))), *v63.i32);
          v67 = vmulq_n_f32(vmulq_f32(v41, vmulq_f32(v62, vrecpsq_f32(v62, v58))), *v64.i32);
          v68 = *(v16 + 160);
          v69 = *(v16 + 176);
          v70 = vbslq_s8(v68, vmulq_f32(v54, vextq_s8(v65, v65, 8uLL)), v65);
          v71 = vbslq_s8(v68, vmulq_f32(v54, vextq_s8(v66, v66, 8uLL)), v66);
          v72 = vbslq_s8(v68, vmulq_f32(v54, vextq_s8(v67, v67, 8uLL)), v67);
          v73 = vaddq_f32(vmulq_n_f32(v24, v71.f32[0]), v71);
          v74 = vaddq_f32(vmulq_n_f32(v24, v72.f32[0]), v72);
          v75 = vbslq_s8(v68, vaddq_f32(vmulq_n_f32(v24, v70.f32[0]), v70), v65);
          v76 = vbslq_s8(v68, v73, v66);
          v77 = vbslq_s8(v68, v74, v67);
          v78 = vaddq_f32(vextq_s8(v75, v75, 0xCuLL), vmulq_laneq_f32(v69, v75, 2));
          v79 = vaddq_f32(vextq_s8(v76, v76, 0xCuLL), vmulq_laneq_f32(v69, v76, 2));
          v80 = vaddq_f32(vextq_s8(v77, v77, 0xCuLL), vmulq_laneq_f32(v69, v77, 2));
          v81 = *(v16 + 192);
          v82 = *(v16 + 208);
          v83 = vbslq_s8(v81, v78, v59);
          v84 = vbslq_s8(v81, v79, v63);
          v85 = vbslq_s8(v81, v80, v64);
          v86 = vbslq_s8(v68, v29, v65);
          v87 = vdupq_lane_s32(*v83.i8, 0);
          v88 = vdupq_lane_s32(*v84.i8, 0);
          v89 = vdupq_lane_s32(*v85.i8, 0);
          *v81.f32 = vqtbl1_s8(v83, *v82.i8);
          v90 = vextq_s8(v82, v82, 8uLL).u64[0];
          *&v81.u32[2] = vqtbl1_s8(v83, v90);
          v91 = vbslq_s8(v68, v41, v67);
          *v67.f32 = vqtbl1_s8(v84, *v82.i8);
          *&v67.u32[2] = vqtbl1_s8(v84, v90);
          v92 = vsubq_f32(vbslq_s8(v68, v30, v66), v88);
          *v66.f32 = vqtbl1_s8(v85, *v82.i8);
          *&v66.u32[2] = vqtbl1_s8(v85, v90);
          v93 = vsubq_f32(v91, v89);
          v94 = vaddq_f32(v87, vmulq_f32(vsubq_f32(v86, v87), v81));
          v95 = vaddq_f32(v88, vmulq_f32(v92, v67));
          v96 = vaddq_f32(v89, vmulq_f32(v93, v66));
          v97 = (*&v6 + v11);
          *v97 = vaddq_f32(v29, vmulq_f32(v21, vsubq_f32(vbslq_s8(v68, v94, vmulq_laneq_f32(v94, v94, 3)), v29)));
          v97[1] = vaddq_f32(v30, vmulq_f32(v21, vsubq_f32(vbslq_s8(v68, v95, vmulq_laneq_f32(v95, v95, 3)), v30)));
          v97[2] = vaddq_f32(v41, vmulq_f32(v21, vsubq_f32(vbslq_s8(v68, v96, vmulq_laneq_f32(v96, v96, 3)), v41)));
          v14 = vaddq_f32(v17, xmmword_2603429B0);
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
          v99 = *(v98 + 80);
          v100 = *(v98 + 96);
          v101 = *(v98 + 112);
          v102 = vaddq_f32(v100, vaddq_f32(*v98, vmulq_lane_f32(vmulq_f32(v14, *(v98 + 48)), *v99.f32, 1)));
          v103 = vmulq_f32(v102, v102);
          v104 = vaddq_f32(v103, vrev64q_s32(v103));
          v105 = vminq_f32(vrsqrteq_f32(v104), v99);
          v106 = vminq_f32(vmulq_f32(v105, vrsqrtsq_f32(vmulq_f32(v105, v104), v105)), v99);
          v107 = vminq_f32(vmulq_f32(v106, vrsqrtsq_f32(vmulq_f32(v106, v104), v106)), v99);
          v108 = *(*&v7 + 16 * v12);
          v109 = vaddq_f32(v100, vmulq_n_f32(vsubq_f32(*(v98 + 32), v100), vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(vmulq_f32(v104, v107), *(v98 + 16)), vrev64q_s32(*(v98 + 16))), v101), v100).f32[0]));
          v110 = *(v98 + 144);
          v111 = vmaxq_f32(vdupq_laneq_s32(v108, 3), *(v98 + 128));
          v112 = vmulq_f32(vrecpeq_f32(v111), v110);
          v113 = vmulq_n_f32(vmulq_f32(v108, vmulq_f32(v112, vrecpsq_f32(v112, v111))), *v109.i32);
          v114 = vmulq_f32(v110, vextq_s8(v113, v113, 8uLL));
          v115 = *(v98 + 160);
          v116 = vbslq_s8(v115, v114, v113);
          v117 = vbslq_s8(v115, vaddq_f32(vmulq_n_f32(v101, v116.f32[0]), v116), v113);
          v118 = *(v98 + 208);
          v119 = vbslq_s8(*(v98 + 192), vaddq_f32(vextq_s8(v117, v117, 0xCuLL), vmulq_laneq_f32(*(v98 + 176), v117, 2)), v109);
          *v117.f32 = vqtbl1_s8(v119, *v118.i8);
          v120 = vqtbl1_s8(v119, *&vextq_s8(v118, v118, 8uLL));
          v121 = vdupq_lane_s32(*v119.i8, 0);
          *&v117.u32[2] = v120;
          v122 = vaddq_f32(v121, vmulq_f32(vsubq_f32(vbslq_s8(v115, v108, v113), v121), v117));
          *(*&v6 + 16 * v12) = vaddq_f32(v108, vmulq_f32(*(v98 + 64), vsubq_f32(vbslq_s8(v115, v122, vmulq_laneq_f32(v122, v122, 3)), v108)));
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

uint64_t HgcVignetteBB::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcVignetteBB::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcVignetteBB::HgcVignetteBB(HgcVignetteBB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DDE48;
  operator new();
}

void HgcVignetteBB::~HgcVignetteBB(HGNode *this)
{
  *this = &unk_2871DDE48;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40881B329ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgcVignetteBB::~HgcVignetteBB(this);

  HGObject::operator delete(v1);
}

uint64_t HgcVignetteBB::SetParameter(HgcVignetteBB *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 1)
  {
    if (!a2)
    {
      v14 = *(this + 51);
      if (*v14 != a3.n128_f32[0] || *(v14 + 4) != a4 || *(v14 + 8) != a5 || *(v14 + 12) != a6)
      {
        *v14 = a3.n128_u32[0];
        *(v14 + 4) = a4;
        *(v14 + 8) = a5;
        *(v14 + 12) = a6;
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
        if (v11[2].n128_f32[0] != a3.n128_f32[0] || v11[2].n128_f32[1] != a4 || v11[2].n128_f32[2] != a6 || v11[2].n128_f32[3] != 0.0)
        {
          v11[2].n128_u32[0] = a3.n128_u32[0];
          v11[2].n128_f32[1] = a4;
          v11[2].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v11[2].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v11[14] = a3;
          goto LABEL_32;
        }

        return 0;
      case 3:
        v12 = -a4;
        v13 = *(this + 51);
        if (v13[3].n128_f32[0] != -a3.n128_f32[0] || v13[3].n128_f32[1] != v12 || v13[3].n128_f32[2] != 0.0 || v13[3].n128_f32[3] != 0.0)
        {
          v13[3].n128_f32[0] = -a3.n128_f32[0];
          v13[3].n128_f32[1] = v12;
          a3.n128_f32[1] = a4;
          v13[3].n128_u64[1] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v13[15] = a3;
          goto LABEL_32;
        }

        return 0;
      case 4:
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a3.n128_f32[0] || *(v8 + 72) != a3.n128_f32[0] || *(v8 + 76) != a3.n128_f32[0])
        {
          v9 = vdupq_lane_s32(a3.n128_u64[0], 0);
          a3.n128_f32[1] = a4;
          *(v8 + 64) = v9;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v8 + 256) = a3;
LABEL_32:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

float HgcVignetteBB::GetParameter(HgcVignetteBB *this, int a2, float *a3)
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
        *a3 = v6[56];
        a3[1] = v6[57];
        a3[2] = v6[58];
        v4 = v6 + 59;
        break;
      case 3:
        v7 = *(this + 51);
        *a3 = v7[60];
        a3[1] = v7[61];
        a3[2] = v7[62];
        v4 = v7 + 63;
        break;
      case 4:
        v3 = *(this + 51);
        *a3 = v3[64];
        a3[1] = v3[65];
        a3[2] = v3[66];
        v4 = v3 + 67;
        break;
      default:
        return result;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcGradientBlur2::GetProgram(HgcGradientBlur2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_63;
    }

    else
    {
      return aMetal10Len0000_64;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_20;
  }
}

void HgcGradientBlur2::InitProgramDescriptor(HgcGradientBlur2 *this, HGProgramDescriptor *a2)
{
  HGProgramDescriptor::SetVisibleShaderWithSource( a2,  "HgcGradientBlur2_hgc_visible",  "//Metal1.0     \n //LEN=0000000d41\n [[ visible ]] FragmentOut HgcGradientBlur2_hgc_visible(const constant float4* hg_Params,\n float4 color0,\n float4 color1,\n float4 color2,\n float4 color3,\n float4 color4,\n float4 texCoord5)\n {\n const float4 c0 = float4(7.000000000, 3.000000000, 2.000000000, 1.000000000);\n"
    "    const float4 c1 = float4(4.000000000, 0.000000000, 1.000000000, 0.000000000);\n"
    "    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9;\n"
    "    FragmentOut output;\n"
    "\n"
    "    r0 = color0;\n"
    "    r1 = color1;\n"
    "    r2.w = c0.w;\n"
    "    r2.xy = texCoord5.xy;\n"
    "    r2.x = dot(r2.xyw, hg_Params[1].xyz);\n"
    "    r2.x = r2.x*hg_Params[2].x + c0.w;\n"
    "    r3.x = r2.x*c0.x;\n"
    "    r4.y = floor(fabs(r3.x));\n"
    "    r3.w = select(r4.y, -r4.y, r3.x < 0.00000f);\n"
    "    r2.w = r3.w - c0.y;\n"
    "    r4.x = r3.x - r3.w;\n"
    "    r3.x = abs(hg_Params[0].x);\n"
    "    r5.y = float(r2.w == c0.z);\n"
    "    r6.x = float(r3.w < c1.x);\n"
    "    r6.z = float(r2.x < c0.w);\n"
    "    r6.y = float(c1.y < r2.x);\n"
    "    r2.y = fmin(r6.y, r6.z);\n"
    "    r6.y = float(-r6.x >= c1.y);\n"
    "    r6.x = r2.y*hg_Params[0].x;\n"
    "    r2.z = r6.x*r6.y;\n"
    "    r6.x = float(c1.y >= r2.w);\n"
    "    r6.y = r2.w - c0.w;\n"
    "    r6.y = abs(r6.y);\n"
    "    r6.x = float(-r6.x >= c1.y);\n"
    "    r7.x = r2.z*r6.x;\n"
    "    r7.y = float(-r6.y >= c1.y);\n"
    "    r6.z = r7.x*r7.y;\n"
    "    r7.y = float(-r7.y >= c1.y);\n"
    "    r5.x = r7.x*r7.y;\n"
    "    r7 = select(r0, r1, -r6.zzzz < 0.00000f);\n"
    "    r8 = color2;\n"
    "    r6.x = r5.x*r5.y;\n"
    "    r7 = select(r7, r8, -r6.xxxx < 0.00000f);\n"
    "    r9.y = float(-r5.y >= c1.y);\n"
    "    r9.x = float(r2.w == c0.y);\n"
    "    r6.y = r5.x*r9.y;\n"
    "    r6.w = r9.x;\n"
    "    r3.z = r6.y*r9.x;\n"
    "    r5 = color3;\n"
    "    r7 = select(r7, r5, -r3.zzzz < 0.00000f);\n"
    "    r6.w = float(-r6.w >= c1.y);\n"
    "    r3.y = r6.y*r6.w;\n"
    "    r9 = select(r1, r8, -r6.zzzz < 0.00000f);\n"
    "    r6 = select(r9, r5, -r6.xxxx < 0.00000f);\n"
    "    r9 = color4;\n"
    "    r6 = select(r6, r9, -r3.zzzz < 0.00000f);\n"
    "    r6 = select(r6, c1.zyyz, -r3.yyyy < 0.00000f);\n"
    "    r7 = select(r7, c1.zyyz, -r3.yyyy < 0.00000f);\n"
    "    r4.z = float(r3.w == c1.z);\n"
    "    r3.y = float(c1.y >= r3.w);\n"
    "    r3.w = r3.w - c0.z;\n"
    "    r3.w = abs(r3.w);\n"
    "    r3.xzw = float3(-r3.xyw >= c1.yyy);\n"
    "    r3.y = fmin(r2.y, r3.x);\n"
    "    r4.y = fmin(r3.y, r3.z);\n"
    "    r4.w = fmin(r4.y, r4.z);\n"
    "    r4.y = r4.y*-r4.z + r4.y;\n"
    "    r3.z = c1.z - r4.x;\n"
    "    r6 = mix(r6, r7, r3.zzzz);\n"
    "    r7 = select(r1, r8, -r4.wwww < 0.00000f);\n"
    "    r1 = select(r0, r1, -r4.wwww < 0.00000f);\n"
    "    r4.z = fmin(r4.y, r3.w);\n"
    "    r8 = select(r1, r8, -r4.zzzz < 0.00000f);\n"
    "    r7 = select(r7, r5, -r4.zzzz < 0.00000f);\n"
    "    r1.x = r3.w;\n"
    "    r1.y = abs(r2.w);\n"
    "    r1.xy = float2(-r1.xy >= c1.yy);\n"
    "    r1.z = r1.y;\n"
    "    r1.x = fmin(r4.y, r1.x);\n"
    "    r1.y = fmin(r1.x, r1.y);\n"
    "    r1.z = float(-r1.z >= c1.y);\n"
    "    r5 = select(r8, r5, -r1.yyyy < 0.00000f);\n"
    "    r1.x = fmin(r1.x, r1.z);\n"
    "    r7 = select(r7, r9, -r1.yyyy < 0.00000f);\n"
    "    r7 = select(r7, c1.zyyz, -r1.xxxx < 0.00000f);\n"
    "    r5 = select(r5, c1.zyyz, -r1.xxxx < 0.00000f);\n"
    "    r5 = mix(r7, r5, r3.zzzz);\n"
    "    r6 = select(r0, r6, -r2.zzzz < 0.00000f);\n"
    "    r5 = select(r6, r5, -r3.yyyy < 0.00000f);\n"
    "    r4.x = float(c1.y >= r2.x);\n"
    "    r8.x = r4.x;\n"
    "    r8.y = r2.y;\n"
    "    r8.xy = float2(-r8.xy >= c1.yy);\n"
    "    r8.x = fmin(r8.y, r8.x);\n"
    "    r8.y = fmin(r8.y, r4.x);\n"
    "    r5 = select(r5, r0, -r8.yyyy < 0.00000f);\n"
    "    r8.y = r8.x*-hg_Params[0].x;\n"
    "    r5 = select(r5, r9, r8.yyyy < 0.00000f);\n"
    "    r8.x = fmin(r8.x, r3.x);\n"
    "    output.color0 = select(r5, r0, -r8.xxxx < 0.00000f);\n"
    "    return output;\n"
    "}\n");
  HGProgramDescriptor::SetFragmentFunctionName(a2, "HgcGradientBlur2");
}

void sub_25FA62F88(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA631C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA63230()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA63228);
}

uint64_t HgcGradientBlur2::BindTexture(HgcGradientBlur2 *this, HGHandler *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        return result;
      }

      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 1;
    }

    else
    {
      (*(*a2 + 72))(a2, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 0;
    }
  }

  else
  {
    switch(a3)
    {
      case 2:
        (*(*a2 + 72))(a2, 2, 0);
        (*(*a2 + 48))(a2, 0, 0);
        v5 = a2;
        v6 = 2;
        break;
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
      default:
        return result;
    }
  }

  HGHandler::TexCoord(v5, v6, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcGradientBlur2::Bind(HgcGradientBlur2 *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 5, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcGradientBlur2::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 8) - *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 144);
    v8 = *(a2 + 128);
    v9 = *(a2 + 136);
    v10 = *(a2 + 112);
    v11 = *(a2 + 120);
    v12 = *(a2 + 96);
    v13 = *(a2 + 104);
    v14 = *(a2 + 80);
    v16.f32[0] = *a2 + 0.5;
    v16.f32[1] = v2 + 0.5;
    v15 = *(a2 + 88);
    v16.i32[2] = 0;
    v16.i32[3] = 1.0;
    v17 = 16 * *(a2 + 24);
    v18 = 16 * *(a2 + 152);
    v19 = 16 * v11;
    v20 = 16 * v15;
    do
    {
      if (v5 >= 1)
      {
        v21 = 0;
        v22 = v16;
        do
        {
          v23 = *(a1 + 408);
          v24 = *(v23 + 48);
          v25.i64[0] = v22.i64[0];
          v25.i64[1] = vextq_s8(v24, v24, 8uLL).u64[0];
          v26 = *(v23 + 64);
          v27 = *(v23 + 80);
          *v28.f32 = vqtbl1_s8(v25, *v26.i8);
          *&v28.u32[2] = vqtbl1_s8(v25, *&vextq_s8(v26, v26, 8uLL));
          v29 = vmulq_f32(*(v23 + 16), v28);
          v30 = vaddq_f32(v24, vmulq_f32(*(v23 + 32), vaddq_f32(vextq_s8(v29, v29, 8uLL), vaddq_f32(v29, vrev64q_s32(v29)))));
          v31 = vmulq_f32(v27, v30);
          v32 = vabsq_f32(vrev64q_s32(v31));
          v33 = vcvtq_f32_s32(vcvtq_s32_f32(v32));
          v34 = vandq_s8(vextq_s8(v31, v31, 4uLL), v26);
          v35 = veorq_s8(vdupq_lane_s64(vsubq_f32(v33, vbslq_s8(vcgtq_f32(v33, v32), v27, 0)).i64[0], 0), v34);
          v36 = *(v14 + v21);
          v37 = vextq_s8(v35, v35, 8uLL).u64[0];
          *v34.f32 = vext_s8(v37, *v31.f32, 4uLL);
          v38.i64[0] = vsubq_f32(v31, v34).u64[0];
          v39 = *(v12 + v21);
          v31.i64[1] = v35.i64[1];
          v40 = vsubq_f32(v31, v27);
          *v41.i8 = vabs_f32(*v23);
          v42.i64[0] = v30.i64[0];
          *v43.f32 = vext_s8(v37, *v41.i8, 4uLL);
          v41.u64[1] = v37;
          v42.i64[1] = v40.i64[1];
          *&v43.u32[2] = vext_s8(*v41.i8, v37, 4uLL);
          v44 = *(v23 + 96);
          v45 = *(v23 + 112);
          v46.i64[0] = vandq_s8(v24, vcgtq_f32(v44, v43)).u64[0];
          v46.i64[1] = vandq_s8(*&v44, vcgtq_f32(v44, vextq_s8(v40, *&v30, 8uLL))).i64[1];
          v48 = *(v23 + 128);
          v47 = *(v23 + 144);
          v49 = vandq_s8(v24, vceqq_f32(v42, v44));
          v50 = vbslq_s8(v48, vrev64q_s32(vandq_s8(v24, vcgtq_f32(v42, v45))), v46);
          v51 = vbslq_s8(v48, vminq_f32(v50, vextq_s8(v50, v50, 4uLL)), v42);
          v52 = vbslq_s8(v47, vmulq_lane_f32(*v23, *v51.i8, 1), vrev64q_s32(vandq_s8(v24, vcgeq_f32(vnegq_f32(v50), v45))));
          v53 = *(v23 + 160);
          v54 = vbslq_s8(v53, vmulq_n_f32(vextq_s8(v52, v52, 0xCuLL), *v52.i32), v51);
          v55 = vextq_s8(v54, v54, 0xCuLL);
          v56 = vextq_s8(v54, v54, 8uLL);
          v57 = vsubq_f32(v56, v45);
          v58 = vorrq_s8(vandq_s8(vandq_s8(v24, v47), vcgeq_f32(vnegq_f32(vandq_s8(vbslq_s8(v47, vandq_s8(v24, vcgeq_f32(v45, v55)), v57), *(v23 + 176))), v45)), vandq_s8(vbicq_s8(v57, v47), *(v23 + 176)));
          v59 = vmulq_laneq_f32(v58, v54, 2);
          v60 = vbslq_s8(v47, v59, vandq_s8(v45, vcgeq_f32(vnegq_f32(v58), v44)));
          v61 = vbslq_s8(v47, v59, vandq_s8(v45, vcgeq_f32(vnegq_f32(v60), v44)));
          v62 = vmulq_n_f32(vextq_s8(v16, v60, 0xCuLL), v60.f32[0]);
          v63 = vmulq_lane_f32(v61, *v61.f32, 1);
          v64 = *(v23 + 192);
          v65 = *(v23 + 208);
          v66 = vbslq_s8(v47, v63, vextq_s8(v49, v49, 8uLL));
          v67 = *(v10 + v21);
          v68.i64[0] = vmulq_lane_f32(v66, *v66.f32, 1).u64[0];
          v69 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v62, 2), v64), v39, v36);
          v68.i64[1] = v62.i64[1];
          v70 = vbslq_s8(v47, vandq_s8(v24, vceqq_f32(v55, v65)), vandq_s8(v45, vcgeq_f32(vnegq_f32(v66), v64)));
          v71 = vcgtq_f32(vdupq_lane_s32(*v68.i8, 0), v64);
          v72 = vbslq_s8(v48, vmulq_n_f32(v70, v66.f32[0]), v68);
          v74 = *(v23 + 224);
          v73 = *(v23 + 240);
          v75 = vbslq_s8(v74, vextq_s8(v70, v70, 4uLL), v72);
          v76 = vbslq_s8(v71, v67, v69);
          v77 = vmulq_lane_f32(vextq_s8(v70, v70, 8uLL), *v75.f32, 1);
          v78 = *(v8 + v21);
          v79 = vbslq_s8(v53, v77, v41);
          v80 = vbslq_s8(v74, vandq_s8(v45, vcgeq_f32(vnegq_f32(v75), v65)), v72);
          v81 = vdupq_laneq_s32(v79, 2);
          v82 = vbslq_s8(v48, vmulq_laneq_f32(v80, v80, 3), v79);
          v83 = vbslq_s8(v48, vandq_s8(v45, vcgeq_f32(v65, vextq_s8(v82, v82, 8uLL))), v79);
          v84 = vextq_s8(v73, v73, 8uLL);
          v85 = *(v23 + 272);
          *v84.i8 = vand_s8(*&vextq_s8(*(v23 + 256), *(v23 + 256), 8uLL), vsub_f32(*&vextq_s8(v83, v83, 8uLL), *v84.i8));
          v86 = vbslq_s8(vcgtq_f32(v81, v64), v78, v76);
          v87 = vandq_s8(v85, vcgeq_f32(vnegq_f32(vzip1q_s32(v83, v84)), v64));
          v38.i64[1] = vandq_s8(*&v65, vceqq_f32(vrev64q_s32(v82), v65)).i64[1];
          v88 = vbslq_s8(v48, vminq_f32(v54, vrev64q_s32(v87)), v87);
          v89 = vbslq_s8(v48, vminq_f32(v88, vextq_s8(v88, v88, 4uLL)), v38);
          v90 = *(v7 + v21);
          v91 = vcgtq_f32(vdupq_laneq_s32(v82, 2), v64);
          v92 = vcgtq_f32(vdupq_lane_s32(*v82.i8, 1), v64);
          v93 = vbslq_s8(v74, vminq_f32(vextq_s8(v89, v89, 8uLL), vrev64q_s32(v89)), v89);
          v94 = vbslq_s8(v92, v24, vbslq_s8(v91, v90, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v80.f32, 0), v64), v78, vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v80, 2), v64), v67, v39))));
          v95 = vbslq_s8(v48, vsubq_f32(v93, vmulq_laneq_f32(v93, v93, 2)), v93);
          v96 = vbslq_s8(v53, vsubq_f32(v85, vextq_s8(v95, v95, 8uLL)), v88);
          v97 = vaddq_f32(vmulq_laneq_f32(vsubq_f32(vbslq_s8(v92, v24, v86), v94), v96, 2), v94);
          v98 = vcgtq_f32(vdupq_laneq_s32(v95, 3), v64);
          v99 = vbslq_s8(v98, v67, v39);
          v100 = vbslq_s8(v98, v39, v36);
          v101 = vminq_f32(vextq_s8(v95, v95, 0xCuLL), vrev64q_s32(v96));
          v102 = vandq_s8(v85, vcgeq_f32(vnegq_f32(vbslq_s8(v47, vextq_s8(v96, v96, 0xCuLL), vabsq_f32(v56))), v73));
          v103 = vcgtq_f32(vdupq_laneq_s32(v101, 2), v64);
          v104 = vextq_s8(v16, v102, 0xCuLL);
          v104.i64[0] = v102.i64[0];
          v101.i64[0] = v95.i64[0];
          v105 = vbslq_s8(v47, vminq_f32(vrev64q_s32(v101), v104), v104);
          v106 = vbslq_s8(v48, vminq_f32(vrev64q_s32(v105), v105), v105);
          v107 = vandq_s8(v85, vcgeq_f32(vnegq_f32(v106), v73));
          v108 = vextq_s8(v107, v106, 8uLL);
          v106.i64[1] = v107.i64[1];
          v109 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v106.f32, 1), v64), v78, vbslq_s8(v103, v67, v100));
          v106.i64[0] = vbslq_s8(v47, vminq_f32(v106, v108), v106).u64[0];
          v110 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v106.f32, 1), v64), v90, vbslq_s8(v103, v78, v99));
          v111 = vcgtq_f32(vdupq_lane_s32(*v106.f32, 0), v64);
          v112 = vbslq_s8(v111, v24, v109);
          v113 = vbslq_s8(v111, v24, v110);
          v114 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v54, 2), v64), v97, v36);
          v115 = vandq_s8(v85, vcgeq_f32(v73, v54));
          v116 = vandq_s8(v85, vcgeq_f32(vnegq_f32(vbslq_s8(v47, v115, v54)), v73));
          v117 = vminq_f32(vrev64q_s32(v116), v116);
          v118 = vaddq_f32(vmulq_laneq_f32(vsubq_f32(v112, v113), v96, 2), v113);
          v112.i64[0] = vbslq_s8(v47, v117, vminq_f32(vbslq_s8(v47, v117, v116), vrev64q_s32(v115))).u64[0];
          v119 = vbslq_s8(v47, v117, vmulq_n_f32(vnegq_f32(vrev64q_s32(*v23)), v112.f32[0]));
          *(v6 + v21) = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vminq_f32(v119, v96), 0), v64), v36, vbslq_s8(vcgtq_f32(v64, vdupq_lane_s32(*v119.f32, 1)), v90, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v112.f32, 1), v64), v36, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v96.f32, 1), v64), v118, v114))));
          v22 = vaddq_f32(v22, xmmword_2603429B0);
          v21 += 16;
        }

        while (16 * v5 != v21);
      }

      v16 = vaddq_f32(v16, xmmword_2603429C0);
      ++v4;
      v6 += v17;
      v7 += v18;
      v8 += 16 * v9;
      v10 += v19;
      v12 += 16 * v13;
      v14 += v20;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcGradientBlur2::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

uint64_t HgcGradientBlur2::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (a3 >= 5)
  {
    return 0;
  }

  else
  {
    return a4;
  }
}

void HgcGradientBlur2::HgcGradientBlur2(HgcGradientBlur2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DE0B0;
  operator new();
}

void HgcGradientBlur2::~HgcGradientBlur2(HGNode *this)
{
  *this = &unk_2871DE0B0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FDACBBE0);
  }

  HGNode::~HGNode(this);
}

{
  HgcGradientBlur2::~HgcGradientBlur2(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGradientBlur2::SetParameter(HgcGradientBlur2 *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
    v8 = -a4;
    v9 = -a6;
    v10 = *(this + 51);
    if (v10[1].n128_f32[0] != -a3.n128_f32[0] || v10[1].n128_f32[1] != v8 || v10[1].n128_f32[2] != v9 || v10[1].n128_f32[3] != 0.0)
    {
      v10[1].n128_f32[0] = -a3.n128_f32[0];
      v10[1].n128_f32[1] = v8;
      v10[1].n128_f32[2] = v9;
      a3.n128_f32[1] = a4;
      v10[1].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v10[18] = a3;
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
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a4 || *(v7 + 8) != a5 || *(v7 + 12) != a6)
    {
      *v7 = a3.n128_u32[0];
      *(v7 + 4) = a4;
      *(v7 + 8) = a5;
      *(v7 + 12) = a6;
LABEL_19:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcGradientBlur2::GetParameter(HgcGradientBlur2 *this, int a2, float *a3)
{
  switch(a2)
  {
    case 2:
      v6 = *(this + 51);
      *a3 = v6[8];
      a3[1] = v6[9];
      a3[2] = v6[10];
      v4 = v6 + 11;
      goto LABEL_7;
    case 1:
      v5 = *(this + 51);
      *a3 = v5[72];
      a3[1] = v5[73];
      a3[2] = v5[74];
      v4 = v5 + 75;
      goto LABEL_7;
    case 0:
      v3 = *(this + 51);
      *a3 = *v3;
      a3[1] = v3[1];
      a3[2] = v3[2];
      v4 = v3 + 3;
LABEL_7:
      result = 0;
      a3[3] = *v4;
      return result;
  }

  return 0xFFFFFFFFLL;
}

const char *HgcCheckerboard::GetProgram(HgcCheckerboard *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000050a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, 1.000000000, -2.000000000, 3.000000000);\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.y = select(-frag._texCoord0.y, frag._texCoord0.y, hg_Params[4].z < 0.00000h);\n    s0.x = frag._texCoord0.x;\n    s0.xy = s0.xy - hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[4].xy;\n    s0.z = dot(s0.xy, hg_Params[5].xy);\n    s0.w = dot(s0.xy, hg_Params[6].xy);\n    s0.xy = s0.zw*hg_Params[3].xx + float2(c0.xx);\n    s0.xy = fract(s0.xy);\n    s0.zw = -s0.xy + float2(c0.yy);\n    s0.xy = fmin(s0.zw, s0.xy);\n    s0.xy = clamp(s0.xy*hg_Params[3].yy + hg_Params[3].zz, 0.00000f, 1.00000f);\n    s0.zw = s0.xy*float2(c0.zz) + float2(c0.ww);\n    s0.zw = s0.zw*s0.xy;\n    s0.zw = s0.zw*s0.xy;\n    s0.y = fmin(s0.z, s0.w);\n    s0.x = fmax(s0.z, s0.w);\n    s0.x = s0.y - s0.x;\n    s0.x = s0.x + float(c0.y);\n    s0 = mix(hg_Params[2], hg_Params[1], s0.xxxx);\n    s1.w = s0.w;\n    s1.xyz = s0.xyz*s0.www;\n    output.color0 = mix(s1, s0, hg_Params[7]);\n    return output;\n}\n//MD5=2b8d1193:0f2d3a2f:e34f6846:3561d638\n//SIG=00400000:00000000:00000000:00000000:0001:0008:0002:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, 1.000000000, -2.000000000, 3.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.y = select(-frag._texCoord0.y, frag._texCoord0.y, hg_Params[4].z < 0.00000f);\n    r0.x = frag._texCoord0.x;\n    r0.xy = r0.xy - hg_Params[0].xy;\n    r0.xy = r0.xy*hg_Params[4].xy;\n    r0.z = dot(r0.xy, hg_Params[5].xy);\n    r0.w = dot(r0.xy, hg_Params[6].xy);\n    r0.xy = r0.zw*hg_Params[3].xx + c0.xx;\n    r0.xy = fract(r0.xy);\n    r0.zw = -r0.xy + c0.yy;\n    r0.xy = fmin(r0.zw, r0.xy);\n    r0.xy = clamp(r0.xy*hg_Params[3].yy + hg_Params[3].zz, 0.00000f, 1.00000f);\n    r0.zw = r0.xy*c0.zz + c0.ww;\n    r0.zw = r0.zw*r0.xy;\n    r0.zw = r0.zw*r0.xy;\n    r0.y = fmin(r0.z, r0.w);\n    r0.x = fmax(r0.z, r0.w);\n    r0.x = r0.y - r0.x;\n    r0.x = r0.x + c0.y;\n    r0 = mix(hg_Params[2], hg_Params[1], r0.xxxx);\n    r1.w = r0.w;\n    r1.xyz = r0.xyz*r0.www;\n    output.color0 = mix(r1, r0, hg_Params[7]);\n    return output;\n}\n//MD5=5a8a2c8b:f5b10d58:b97e6cdf:7a8e7ddc\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0002:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000616\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, 1.000000000, -2.000000000, 3.000000000);\n    highp vec4 r0, r1;\n\n    r0.y = hg_ProgramLocal4.z < 0.00000 ? hg_TexCoord0.y : -hg_TexCoord0.y;\n    r0.x = hg_TexCoord0.x;\n    r0.xy = r0.xy - hg_ProgramLocal0.xy;\n    r0.xy = r0.xy*hg_ProgramLocal4.xy;\n    r0.z = dot(r0.xy, hg_ProgramLocal5.xy);\n    r0.w = dot(r0.xy, hg_ProgramLocal6.xy);\n    r0.xy = r0.zw*hg_ProgramLocal3.xx + c0.xx;\n    r0.xy = fract(r0.xy);\n    r0.zw = -r0.xy + c0.yy;\n    r0.xy = min(r0.zw, r0.xy);\n    r0.xy = clamp(r0.xy*hg_ProgramLocal3.yy + hg_ProgramLocal3.zz, vec2(0.00000), vec2(1.00000));\n    r0.zw = r0.xy*c0.zz + c0.ww;\n    r0.zw = r0.zw*r0.xy;\n    r0.zw = r0.zw*r0.xy;\n    r0.y = min(r0.z, r0.w);\n    r0.x = max(r0.z, r0.w);\n    r0.x = r0.y - r0.x;\n    r0.x = r0.x + c0.y;\n    r0 = mix(hg_ProgramLocal2, hg_ProgramLocal1, r0.xxxx);\n    r1.w = r0.w;\n    r1.xyz = r0.xyz*r0.www;\n    gl_FragColor = mix(r1, r0, hg_ProgramLocal7);\n}\n//MD5=cca23b34:3829397e:b592375e:962cf0d3\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0002:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_25FA6403C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA6413C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA6417C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA64174);
}

uint64_t HgcCheckerboard::Bind(HgcCheckerboard *this, HGHandler *a2)
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

uint64_t HgcCheckerboard::RenderTile(uint64_t a1, int32x2_t *a2)
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
          v20 = *(v17 + 144);
          v21 = vandq_s8(vextq_s8(v18, v18, 4uLL), *(v17 + 128));
          v22 = vmulq_f32(v18, vsubq_f32(vbslq_s8(v20, v13, veorq_s8(v21, vnegq_f32(v13))), *v17));
          v23 = vmulq_f32(v18, vsubq_f32(vbslq_s8(v20, v14, veorq_s8(v21, vnegq_f32(v14))), *v17));
          v24 = vmulq_f32(v18, vsubq_f32(vbslq_s8(v20, v15, veorq_s8(v21, vnegq_f32(v15))), *v17));
          v25 = vmulq_f32(v18, vsubq_f32(vbslq_s8(v20, v16, veorq_s8(v21, vnegq_f32(v16))), *v17));
          v26 = vmulq_f32(v19, v22);
          v27 = vmulq_f32(v19, v23);
          v28 = vmulq_f32(v19, v24);
          v29 = vmulq_f32(v19, v25);
          v22.i64[1] = vaddq_f32(vdupq_lane_s64(*&v26, 0), vextq_s8(*&v7, v26, 0xCuLL)).i64[1];
          v23.i64[1] = vaddq_f32(vdupq_lane_s64(*&v27, 0), vextq_s8(*&v7, v27, 0xCuLL)).i64[1];
          v24.i64[1] = vaddq_f32(vdupq_lane_s64(*&v28, 0), vextq_s8(*&v7, v28, 0xCuLL)).i64[1];
          v25.i64[1] = vaddq_f32(vdupq_lane_s64(*&v29, 0), vextq_s8(*&v7, v29, 0xCuLL)).i64[1];
          v31 = *(v17 + 96);
          v30 = *(v17 + 112);
          v32 = vmulq_f32(v31, v22);
          v33 = vmulq_f32(v31, v23);
          v34 = vmulq_f32(v31, v24);
          v35 = vmulq_f32(v31, v25);
          v36 = *(v17 + 160);
          v37 = *(v17 + 176);
          v38 = vbslq_s8(v36, v22, vaddq_f32(vextq_s8(v32, v32, 4uLL), vextq_s8(v32, v32, 8uLL)));
          v39 = vbslq_s8(v36, v23, vaddq_f32(vextq_s8(v33, v33, 4uLL), vextq_s8(v33, v33, 8uLL)));
          v40 = vbslq_s8(v36, v24, vaddq_f32(vextq_s8(v34, v34, 4uLL), vextq_s8(v34, v34, 8uLL)));
          v41 = vbslq_s8(v36, v25, vaddq_f32(vextq_s8(v35, v35, 4uLL), vextq_s8(v35, v35, 8uLL)));
          v42 = vextq_s8(v39, v39, 8uLL);
          v43 = vextq_s8(v41, v41, 8uLL);
          v44 = *(v17 + 32);
          v45 = *(v17 + 48);
          v46 = vaddq_f32(v37, vmulq_n_f32(vextq_s8(v38, v38, 8uLL), v45.f32[0]));
          v47 = vaddq_f32(v37, vmulq_n_f32(v42, v45.f32[0]));
          v48 = vaddq_f32(v37, vmulq_n_f32(vextq_s8(v40, v40, 8uLL), v45.f32[0]));
          v49 = vaddq_f32(v37, vmulq_n_f32(v43, v45.f32[0]));
          v50 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
          v51 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
          v52 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
          v53 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
          v54 = *(v17 + 192);
          v55 = *(v17 + 208);
          *v46.f32 = vsub_f32(*v46.f32, vsub_f32(*v50.f32, vand_s8(*v54.f32, *&vcgtq_f32(v50, v46))));
          v50.i64[0] = vextq_s8(v54, v54, 8uLL).u64[0];
          v56 = vsub_f32(*v50.f32, *v46.f32);
          *v47.f32 = vsub_f32(*v47.f32, vsub_f32(*v51.f32, vand_s8(*v54.f32, *&vcgtq_f32(v51, v47))));
          *v51.f32 = vsub_f32(*v50.f32, *v47.f32);
          *v48.f32 = vsub_f32(*v48.f32, vsub_f32(*v52.f32, vand_s8(*v54.f32, *&vcgtq_f32(v52, v48))));
          *v52.f32 = vsub_f32(*v50.f32, *v48.f32);
          *v49.f32 = vsub_f32(*v49.f32, vsub_f32(*v53.f32, vand_s8(*v54.f32, *&vcgtq_f32(v53, v49))));
          *v53.f32 = vsub_f32(*v50.f32, *v49.f32);
          v50.i64[0] = vdupq_laneq_s32(v45, 2).u64[0];
          v37.i64[0] = vextq_s8(v37, v37, 8uLL).u64[0];
          *v46.f32 = vmin_f32(vmax_f32(vadd_f32(*v50.f32, vmul_lane_f32(vmin_f32(v56, *v46.f32), *v45.f32, 1)), *v55.i8), *v54.f32);
          v57 = vextq_s8(v55, v55, 8uLL).u64[0];
          *v47.f32 = vmin_f32(vmax_f32(vadd_f32(*v50.f32, vmul_lane_f32(vmin_f32(*v51.f32, *v47.f32), *v45.f32, 1)), *v55.i8), *v54.f32);
          *v48.f32 = vmin_f32(vmax_f32(vadd_f32(*v50.f32, vmul_lane_f32(vmin_f32(*v52.f32, *v48.f32), *v45.f32, 1)), *v55.i8), *v54.f32);
          *v45.f32 = vmin_f32(vmax_f32(vadd_f32(*v50.f32, vmul_lane_f32(vmin_f32(*v53.f32, *v49.f32), *v45.f32, 1)), *v55.i8), *v54.f32);
          *v49.f32 = vadd_f32(v57, vmul_f32(*v37.f32, *v45.f32));
          *v53.f32 = vmul_f32(*v46.f32, vadd_f32(v57, vmul_f32(*v37.f32, *v46.f32)));
          v53.i64[1] = v46.i64[0];
          *v50.f32 = vmul_f32(*v53.f32, *v46.f32);
          *v58.f32 = vmul_f32(*v47.f32, vadd_f32(v57, vmul_f32(*v37.f32, *v47.f32)));
          v58.i64[1] = v47.i64[0];
          *v59.f32 = vmul_f32(*v48.f32, vadd_f32(v57, vmul_f32(*v37.f32, *v48.f32)));
          v59.i64[1] = v48.i64[0];
          v60 = vmul_f32(*v58.f32, *v47.f32);
          v46.i64[1] = v53.i64[0];
          *v51.f32 = vmul_f32(*v59.f32, *v48.f32);
          *v61.f32 = vmul_f32(*v45.f32, *v49.f32);
          v47.i64[1] = v58.i64[0];
          v61.i64[1] = v45.i64[0];
          *v52.f32 = vmul_f32(*v61.f32, *v45.f32);
          v48.i64[1] = v59.i64[0];
          v45.i64[1] = v61.i64[0];
          v62 = vmulq_f32(v46, v53);
          v63 = vmulq_f32(v47, v58);
          v64 = vmulq_f32(v48, v59);
          v65 = vmulq_f32(v45, v61);
          v66 = vminq_f32(vextq_s8(v62, v62, 4uLL), vextq_s8(v62, v62, 8uLL));
          v67 = vminq_f32(vextq_s8(v63, v63, 4uLL), vextq_s8(v63, v63, 8uLL));
          v68 = vminq_f32(vextq_s8(v64, v64, 4uLL), vextq_s8(v64, v64, 8uLL));
          v69 = vminq_f32(vextq_s8(v65, v65, 4uLL), vextq_s8(v65, v65, 8uLL));
          v70 = vextq_s8(v62, v66, 8uLL);
          *v61.f32 = vext_s8(*v66.i8, *v50.f32, 4uLL);
          *v50.f32 = vext_s8(*v50.f32, *v66.i8, 4uLL);
          v66.i64[1] = v62.i64[1];
          v71 = vextq_s8(v63, v67, 8uLL);
          *v55.i8 = vext_s8(*v67.i8, v60, 4uLL);
          *v72.f32 = vext_s8(v60, *v67.i8, 4uLL);
          v67.i64[1] = v63.i64[1];
          v73 = vextq_s8(v64, v68, 8uLL);
          v74 = vext_s8(*v68.i8, *v51.f32, 4uLL);
          *v51.f32 = vext_s8(*v51.f32, *v68.i8, 4uLL);
          v68.i64[1] = v64.i64[1];
          v75 = vextq_s8(v65, v69, 8uLL);
          v76 = vext_s8(*v69.i8, *v52.f32, 4uLL);
          *v52.f32 = vext_s8(*v52.f32, *v69.i8, 4uLL);
          v50.i64[1] = v61.i64[0];
          v72.i64[1] = v55.i64[0];
          *&v51.u32[2] = v74;
          v69.i64[1] = v65.i64[1];
          *&v52.u32[2] = v76;
          v77 = vbslq_s8(v20, vmaxq_f32(v70, v50), v66);
          v78 = vbslq_s8(v20, vmaxq_f32(v71, v72), v67);
          v79 = vbslq_s8(v20, vmaxq_f32(v73, v51), v68);
          v80 = vbslq_s8(v20, vmaxq_f32(v75, v52), v69);
          v77.i32[0] = vaddq_f32(v54, vsubq_f32(vdupq_lane_s32(*v77.f32, 1), v77)).u32[0];
          v75.i32[0] = vaddq_f32(v54, vsubq_f32(vdupq_lane_s32(*v78.f32, 1), v78)).u32[0];
          v79.i32[0] = vaddq_f32(v54, vsubq_f32(vdupq_lane_s32(*v79.f32, 1), v79)).u32[0];
          v80.i32[0] = vaddq_f32(v54, vsubq_f32(vdupq_lane_s32(*v80.f32, 1), v80)).u32[0];
          v81 = vsubq_f32(*(v17 + 16), v44);
          v82 = vaddq_f32(v44, vmulq_n_f32(v81, v77.f32[0]));
          v83 = vaddq_f32(v44, vmulq_n_f32(v81, v75.f32[0]));
          v84 = vaddq_f32(v44, vmulq_n_f32(v81, v79.f32[0]));
          v85 = vaddq_f32(v44, vmulq_n_f32(v81, v80.f32[0]));
          v86 = *(v17 + 224);
          v87 = vbslq_s8(v86, v82, vmulq_laneq_f32(v82, v82, 3));
          v88 = vbslq_s8(v86, v83, vmulq_laneq_f32(v83, v83, 3));
          v89 = vbslq_s8(v86, v84, vmulq_laneq_f32(v84, v84, 3));
          v90 = vbslq_s8(v86, v85, vmulq_laneq_f32(v85, v85, 3));
          v11[-2] = vaddq_f32(vmulq_f32(v30, vsubq_f32(v82, v87)), v87);
          v11[-1] = vaddq_f32(vmulq_f32(v30, vsubq_f32(v83, v88)), v88);
          *v11 = vaddq_f32(vmulq_f32(v30, vsubq_f32(v84, v89)), v89);
          v11[1] = vaddq_f32(vmulq_f32(v30, vsubq_f32(v85, v90)), v90);
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
          v91 = *(a1 + 408);
          v92 = *(v91 + 144);
          v93 = vmulq_f32(*(v91 + 64), vsubq_f32(vbslq_s8(v92, v13, veorq_s8(vandq_s8(vextq_s8(*(v91 + 64), *(v91 + 64), 4uLL), *(v91 + 128)), vnegq_f32(v13))), *v91));
          v94 = vmulq_f32(*(v91 + 80), v93);
          v93.i64[1] = vaddq_f32(vdupq_lane_s64(*&v94, 0), vextq_s8(*&v7, v94, 0xCuLL)).i64[1];
          v95 = vmulq_f32(*(v91 + 96), v93);
          v96 = *(v91 + 176);
          v97 = vbslq_s8(*(v91 + 160), v93, vaddq_f32(vextq_s8(v95, v95, 4uLL), vextq_s8(v95, v95, 8uLL)));
          v98 = *(v91 + 48);
          v99 = vaddq_f32(v96, vmulq_n_f32(vextq_s8(v97, v97, 8uLL), *v98.i32));
          v100 = vcvtq_f32_s32(vcvtq_s32_f32(v99));
          v101 = *(v91 + 192);
          v102 = *(v91 + 208);
          *v99.f32 = vsub_f32(*v99.f32, vsub_f32(*v100.f32, vand_s8(*v101.f32, *&vcgtq_f32(v100, v99))));
          *v99.f32 = vmin_f32(vmax_f32(vadd_f32(*&vdupq_laneq_s32(v98, 2), vmul_lane_f32(vmin_f32(vsub_f32(*&vextq_s8(v101, v101, 8uLL), *v99.f32), *v99.f32), *v98.i8, 1)), *v102.i8), *v101.f32);
          *v96.f32 = vmul_f32(*v99.f32, vadd_f32(*&vextq_s8(v102, v102, 8uLL), vmul_f32(*&vextq_s8(v96, v96, 8uLL), *v99.f32)));
          v96.i64[1] = v99.i64[0];
          *v100.f32 = vmul_f32(*v96.f32, *v99.f32);
          v99.i64[1] = v96.i64[0];
          v103 = vmulq_f32(v99, v96);
          v104 = vminq_f32(vextq_s8(v103, v103, 4uLL), vextq_s8(v103, v103, 8uLL));
          v105 = vextq_s8(v103, v104, 8uLL);
          v106 = vext_s8(*v104.i8, *v100.f32, 4uLL);
          *v100.f32 = vext_s8(*v100.f32, *v104.i8, 4uLL);
          v104.i64[1] = v103.i64[1];
          *&v100.u32[2] = v106;
          v107 = vbslq_s8(v92, vmaxq_f32(v105, v100), v104);
          v108 = vaddq_f32(*(v91 + 32), vmulq_n_f32(vsubq_f32(*(v91 + 16), *(v91 + 32)), vaddq_f32(v101, vsubq_f32(vdupq_lane_s32(*v107.f32, 1), v107)).f32[0]));
          v109 = vbslq_s8(*(v91 + 224), v108, vmulq_laneq_f32(v108, v108, 3));
          v6[v10] = vaddq_f32(vmulq_f32(*(v91 + 112), vsubq_f32(v108, v109)), v109);
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

uint64_t HgcCheckerboard::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcCheckerboard::HgcCheckerboard(HgcCheckerboard *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DE318;
  operator new();
}

void HgcCheckerboard::~HgcCheckerboard(HGNode *this)
{
  *this = &unk_2871DE318;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);
}

{
  HgcCheckerboard::~HgcCheckerboard(this);

  HGObject::operator delete(v1);
}

uint64_t HgcCheckerboard::SetParameter(HgcCheckerboard *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcCheckerboard::GetParameter(HgcCheckerboard *this, unsigned int a2, float *a3)
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

const char *HgcConcentricPolygons::GetProgram(HgcConcentricPolygons *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000007bd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 1.000000000, 0.7500000000, 0.000000000);\n    const half4 c1 = half4(0.2500000000, 3.000000000, -2.000000000, 0.000000000);\n    float4 s0, s1, s2, s3;\n    FragmentOut output;\n\n    s0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    s0.xy = s0.xy*hg_Params[5].xy;\n    s1.y = dot(s0.xyz, hg_Params[7].zwz);\n    s0.x = dot(s0.xyz, hg_Params[7].xyx);\n    s0.y = s1.y;\n    s1 = float4(dot(s0.xy, s0.xy));\n    s1 = sqrt(s1);\n    s0.x = atan2(s0.y, s0.x);\n    s2.x = s0.x;\n    s0.x = s0.x*hg_Params[6].y;\n    s0.x = floor(s0.x);\n    s0.x = float(c0.x) + s0.x;\n    s0.x = hg_Params[6].x*s0.x + -s2.x;\n    s0 = cos(s0.xxxx);\n    s0 = s0*s1;\n    s2.x = clamp(s0.x - hg_Params[8].x, 0.00000f, 1.00000f);\n    s2.x = float(c0.y) - s2.x;\n    s1.x = float(c0.y) + s0.x;\n    s1.x = clamp(s1.x - hg_Params[9].x, 0.00000f, 1.00000f);\n    s2.x = s2.x*s1.x;\n    s0 = s0/hg_Params[3].xxxx;\n    s0 = fract(s0);\n    s0 = s0 + hg_Params[3].yyyy;\n    s0 = fract(s0);\n    s1 = float4(c0.zzzz) - s0;\n    s3 = float4(s1 < float4(c0.wwww));\n    s1 = float4(c0.zzzz) + s1;\n    s0 = select(s0, s1, -s3 < 0.00000h);\n    s3 = float4(c1.xxxx) - s0;\n    s1 = float4(s3 < float4(c0.wwww));\n    s3 = float4(c1.xxxx) + s3;\n    s0 = select(s3, s0, -s1 < 0.00000h);\n    s0 = clamp(mix(float4(c0.xxxx), s0, hg_Params[4]), 0.00000f, 1.00000f);\n    s1 = s0*s0;\n    s3 = s1*float4(c1.yyyy);\n    s1 = s1*s0;\n    s1 = s1*float4(c1.zzzz) + s3;\n    s1 = mix(hg_Params[1], hg_Params[2], s1);\n    s0.x = s2.x*s2.x;\n    s3.x = s0.x*float(c1.y);\n    s0.x = s0.x*s2.x;\n    s0.x = s0.x*float(c1.z) + s3.x;\n    output.color0.xyz = s1.xyz*s0.xxx;\n    output.color0.w = s0.x*s1.w;\n    return output;\n}\n//MD5=86fd0cc1:c4902811:0f4c8661:2d2e7bc8\n//SIG=00400000:00000000:00000000:00000000:0002:000a:0004:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000756\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 1.000000000, 0.7500000000, 0.000000000);\n    const float4 c1 = float4(0.2500000000, 3.000000000, -2.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    r0.xy = r0.xy*hg_Params[5].xy;\n    r1.y = dot(r0.xyz, hg_Params[7].zwz);\n    r0.x = dot(r0.xyz, hg_Params[7].xyx);\n    r0.y = r1.y;\n    r1 = float4(dot(r0.xy, r0.xy));\n    r1 = sqrt(r1);\n    r0.x = atan2(r0.y, r0.x);\n    r2.x = r0.x;\n    r0.x = r0.x*hg_Params[6].y;\n    r0.x = floor(r0.x);\n    r0.x = c0.x + r0.x;\n    r0.x = hg_Params[6].x*r0.x + -r2.x;\n    r0 = cos(r0.xxxx);\n    r0 = r0*r1;\n    r2.x = clamp(r0.x - hg_Params[8].x, 0.00000f, 1.00000f);\n    r2.x = c0.y - r2.x;\n    r1.x = c0.y + r0.x;\n    r1.x = clamp(r1.x - hg_Params[9].x, 0.00000f, 1.00000f);\n    r2.x = r2.x*r1.x;\n    r0 = r0/hg_Params[3].xxxx;\n    r0 = fract(r0);\n    r0 = r0 + hg_Params[3].yyyy;\n    r0 = fract(r0);\n    r1 = c0.zzzz - r0;\n    r3 = float4(r1 < c0.wwww);\n    r1 = c0.zzzz + r1;\n    r0 = select(r0, r1, -r3 < 0.00000f);\n    r3 = c1.xxxx - r0;\n    r1 = float4(r3 < c0.wwww);\n    r3 = c1.xxxx + r3;\n    r0 = select(r3, r0, -r1 < 0.00000f);\n    r0 = clamp(mix(c0.xxxx, r0, hg_Params[4]), 0.00000f, 1.00000f);\n    r1 = r0*r0;\n    r3 = r1*c1.yyyy;\n    r1 = r1*r0;\n    r1 = r1*c1.zzzz + r3;\n    r1 = mix(hg_Params[1], hg_Params[2], r1);\n    r0.x = r2.x*r2.x;\n    r3.x = r0.x*c1.y;\n    r0.x = r0.x*r2.x;\n    r0.x = r0.x*c1.z + r3.x;\n    output.color0.xyz = r1.xyz*r0.xxx;\n    output.color0.w = r0.x*r1.w;\n    return output;\n}\n//MD5=ae5dc3ce:fae50fae:dfe3436a:57d73211\n//SIG=00000000:00000000:00000000:00000000:0002:000a:0004:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000009b5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 1.000000000, 0.7500000000, 0.000000000);\n    const highp vec4 c1 = vec4(0.2500000000, 3.000000000, -2.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0.xyz = hg_TexCoord0.xyz - hg_ProgramLocal0.xyz;\n    r0.xy = r0.xy*hg_ProgramLocal5.xy;\n    r1.y = dot(r0.xyz, hg_ProgramLocal7.zwz);\n    r0.x = dot(r0.xyz, hg_ProgramLocal7.xyx);\n    r0.y = r1.y;\n    r1 = vec4(dot(r0.xy, r0.xy));\n    r1 = sqrt(r1);\n    r0.x = atan(r0.y, r0.x);\n    r2.x = r0.x;\n    r0.x = r0.x*hg_ProgramLocal6.y;\n    r0.x = floor(r0.x);\n    r0.x = c0.x + r0.x;\n    r0.x = hg_ProgramLocal6.x*r0.x + -r2.x;\n    r0 = cos(r0.xxxx);\n    r0 = r0*r1;\n    r2.x = clamp(r0.x - hg_ProgramLocal8.x, 0.00000, 1.00000);\n    r2.x = c0.y - r2.x;\n    r1.x = c0.y + r0.x;\n    r1.x = clamp(r1.x - hg_ProgramLocal9.x, 0.00000, 1.00000);\n    r2.x = r2.x*r1.x;\n    r0 = r0/hg_ProgramLocal3.xxxx;\n    r0 = fract(r0);\n    r0 = r0 + hg_ProgramLocal3.yyyy;\n    r0 = fract(r0);\n    r1 = c0.zzzz - r0;\n    r3 = vec4(lessThan(r1, c0.wwww));\n    r1 = c0.zzzz + r1;\n    r0 = vec4(-r3.x < 0.00000 ? r1.x : r0.x, -r3.y < 0.00000 ? r1.y : r0.y, -r3.z < 0.00000 ? r1.z : r0.z, -r3.w < 0.00000 ? r1.w : r0.w);\n    r3 = c1.xxxx - r0;\n    r1 = vec4(lessThan(r3, c0.wwww));\n    r3 = c1.xxxx + r3;\n    r0 = vec4(-r1.x < 0.00000 ? r0.x : r3.x, -r1.y < 0.00000 ? r0.y : r3.y, -r1.z < 0.00000 ? r0.z : r3.z, -r1.w < 0.00000 ? r0.w : r3.w);\n    r0 = clamp(mix(c0.xxxx, r0, hg_ProgramLocal4), vec4(0.00000), vec4(1.00000));\n    r1 = r0*r0;\n    r3 = r1*c1.yyyy;\n    r1 = r1*r0;\n    r1 = r1*c1.zzzz + r3;\n    r1 = mix(hg_ProgramLocal1, hg_ProgramLocal2, r1);\n    r0.x = r2.x*r2.x;\n    r3.x = r0.x*c1.y;\n    r0.x = r0.x*r2.x;\n    r0.x = r0.x*c1.z + r3.x;\n    gl_FragColor.xyz = r1.xyz*r0.xxx;\n    gl_FragColor.w = r0.x*r1.w;\n}\n//MD5=95471142:9a52715b:c290f85f:c081a39b\n//SIG=00000000:00000000:00000000:00000000:0002:000a:0004:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_25FA64D54(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA64E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA64E94()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA64E8CLL);
}

uint64_t HgcConcentricPolygons::Bind(HgcConcentricPolygons *this, HGHandler *a2)
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
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcConcentricPolygons::RenderTile(uint64_t a1, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    *v7.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v6 = a2[2];
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
          v13 = *(a1 + 408);
          v14 = *(v13 + 16);
          v15 = vsubq_f32(v11, *v13);
          v16 = vsubq_f32(v12, *v13);
          v17 = *(v13 + 64);
          v18 = *(v13 + 80);
          v19.i64[0] = vmulq_f32(v15, v18).u64[0];
          v18.i64[0] = vmulq_f32(v16, v18).u64[0];
          v19.i64[1] = v15.i64[1];
          v21 = *(v13 + 96);
          v20 = *(v13 + 112);
          v22 = vdupq_laneq_s64(v20, 1);
          v18.i64[1] = v16.i64[1];
          v23 = vmulq_f32(v19, v22);
          v24 = vmulq_f32(v18, v22);
          v25 = vdupq_lane_s64(v20.i64[0], 0);
          v26 = vmulq_f32(v25, v19);
          v27 = vaddq_f32(vextq_s8(v23, v23, 4uLL), vaddq_f32(v23, vrev64q_s32(v23)));
          v28 = vmulq_f32(v25, v18);
          v29 = vaddq_f32(vextq_s8(v24, v24, 4uLL), vaddq_f32(v24, vrev64q_s32(v24)));
          v30 = vaddq_f32(vextq_s8(v28, v28, 8uLL), vaddq_f32(v28, vrev64q_s32(v28)));
          v31 = *(v13 + 176);
          v32 = vbslq_s8(*(v13 + 160), vaddq_f32(vextq_s8(v26, v26, 8uLL), vaddq_f32(v26, vrev64q_s32(v26))), v27);
          v33 = vbslq_s8(*(v13 + 160), v30, v29);
          v25.i64[0] = vmulq_f32(v32, v32).u64[0];
          v30.i64[0] = vmulq_f32(v33, v33).u64[0];
          v34 = vaddq_f32(vdupq_lane_s32(*v25.f32, 0), vdupq_lane_s32(*v25.f32, 1));
          v35 = vaddq_f32(vdupq_lane_s32(*v30.i8, 0), vdupq_lane_s32(*v30.i8, 1));
          v36 = vminq_f32(vrsqrteq_f32(v34), v31);
          v37 = vminq_f32(vrsqrteq_f32(v35), v31);
          v38 = vrev64q_s32(v32);
          v39 = vrev64q_s32(v33);
          v40 = vabsq_f32(v38);
          v41 = vabsq_f32(v39);
          v42 = vabsq_f32(v32);
          v43 = vabsq_f32(v33);
          v44 = vmaxq_f32(v42, v40);
          v45 = vmaxq_f32(v43, v41);
          v46 = vminq_f32(v42, v40);
          v47 = vminq_f32(v43, v41);
          v48 = vsubq_f32(v40, v42);
          v49 = vsubq_f32(v41, v43);
          v51 = *(v13 + 192);
          v50 = *(v13 + 208);
          v52 = vmaxq_f32(v44, v51);
          v53 = vmaxq_f32(v45, v51);
          v54 = vminq_f32(vmaxq_f32(vrecpeq_f32(v52), v50), v31);
          v55 = vminq_f32(vmaxq_f32(vrecpeq_f32(v53), v50), v31);
          v56 = vminq_f32(vmaxq_f32(vmulq_f32(v54, vrecpsq_f32(v52, v54)), v50), v31);
          v57 = vminq_f32(vmulq_f32(v36, vrsqrtsq_f32(vmulq_f32(v36, v34), v36)), v31);
          v58 = vminq_f32(vmaxq_f32(vmulq_f32(v55, vrecpsq_f32(v53, v55)), v50), v31);
          v59 = vmulq_f32(v46, vmulq_f32(v56, vrecpsq_f32(v52, v56)));
          v60 = vmulq_f32(v47, vmulq_f32(v58, vrecpsq_f32(v53, v58)));
          v61 = vmulq_f32(v59, v59);
          v62 = vmulq_f32(v60, v60);
          v63 = *(v13 + 224);
          v64 = *(v13 + 240);
          v65 = vaddq_f32(v63, vmulq_f32(v61, v64));
          v66 = vaddq_f32(v63, vmulq_f32(v64, v62));
          v67 = *(v13 + 256);
          v68 = *(v13 + 272);
          v69 = vaddq_f32(v67, vmulq_f32(v61, v65));
          v70 = vaddq_f32(v67, vmulq_f32(v62, v66));
          v71 = vmulq_f32(v57, vrsqrtsq_f32(vmulq_f32(v57, v34), v57));
          v72 = vaddq_f32(v68, vmulq_f32(v61, v69));
          v73 = vaddq_f32(v68, vmulq_f32(v62, v70));
          v74 = *(v13 + 288);
          v75 = *(v13 + 304);
          v76 = vminq_f32(vmulq_f32(v37, vrsqrtsq_f32(vmulq_f32(v37, v35), v37)), v31);
          v77 = vmulq_f32(v61, vaddq_f32(v74, vmulq_f32(v61, v72)));
          v78 = vmulq_f32(v62, vaddq_f32(v74, vmulq_f32(v62, v73)));
          v79 = vmulq_f32(v59, vaddq_f32(v75, v77));
          v81 = *(v13 + 320);
          v80 = *(v13 + 336);
          v82 = vbslq_s8(vcgtq_f32(v48, v80), vsubq_f32(v81, v79), v79);
          v83 = vmulq_f32(v60, vaddq_f32(v75, v78));
          v84 = vbslq_s8(vcgtq_f32(v49, v80), vsubq_f32(v81, v83), v83);
          v85 = *(v13 + 352);
          v86 = *(v13 + 368);
          v87 = veorq_s8(vandq_s8(v86, v38), vbslq_s8(vcgtq_f32(v80, v32), vsubq_f32(v85, v82), v82));
          v88 = veorq_s8(vandq_s8(v86, v39), vbslq_s8(vcgtq_f32(v80, v33), vsubq_f32(v85, v84), v84));
          v89 = vmulq_lane_f32(v87, *v21.f32, 1);
          v90 = vmulq_lane_f32(v88, *v21.f32, 1);
          v91 = vcvtq_f32_s32(vcvtq_s32_f32(v89));
          v92 = vcvtq_f32_s32(vcvtq_s32_f32(v90));
          v93 = vcgtq_f32(v91, v89);
          v94 = vcgtq_f32(v92, v90);
          v95 = *(v13 + 384);
          v96 = *(v13 + 400);
          v87.i32[0] = vsubq_f32(vmulq_f32(v21, vaddq_f32(v96, vsubq_f32(v91, vbslq_s8(v93, v95, 0)))), v87).u32[0];
          v88.i32[0] = vsubq_f32(vmulq_f32(v21, vaddq_f32(v96, vsubq_f32(v92, vbslq_s8(v94, v95, 0)))), v88).u32[0];
          v98 = *(v13 + 416);
          v97 = *(v13 + 432);
          v99 = vmulq_f32(v35, vminq_f32(vmulq_f32(v76, vrsqrtsq_f32(vmulq_f32(v76, v35), v76)), v31));
          v100 = vmulq_n_f32(v98, v87.f32[0]);
          v101 = vmulq_n_f32(v98, v88.f32[0]);
          v102 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
          v103 = vcvtq_f32_s32(vcvtq_s32_f32(v101));
          v104 = vsubq_f32(vabdq_f32(vsubq_f32(v100, vsubq_f32(v102, vandq_s8(v95, vcgtq_f32(v102, v100)))), v96), v97);
          v105 = vsubq_f32(vabdq_f32(vsubq_f32(v101, vsubq_f32(v103, vandq_s8(v95, vcgtq_f32(v103, v101)))), v96), v97);
          v106 = vmulq_f32(v104, v104);
          v107 = vmulq_f32(v105, v105);
          v108 = *(v13 + 448);
          v109 = *(v13 + 464);
          v110 = vaddq_f32(v108, vmulq_f32(v109, v106));
          v111 = vaddq_f32(v108, vmulq_f32(v109, v107));
          v112 = vmulq_f32(v106, v110);
          v113 = *(v13 + 480);
          v114 = *(v13 + 496);
          v115 = vmulq_f32(vmulq_f32(vminq_f32(v71, v31), v34), vmulq_f32(v104, vaddq_f32(v114, vmulq_f32(v106, vaddq_f32(v113, v112)))));
          v116 = vmulq_f32(v99, vmulq_f32(v105, vaddq_f32(v114, vmulq_f32(v107, vaddq_f32(v113, vmulq_f32(v107, v111))))));
          v117 = *(v13 + 128);
          v118 = *(v13 + 144);
          v119 = *(v13 + 48);
          v120 = vdupq_lane_s32(*&v119, 0);
          v121 = vsubq_f32(vaddq_f32(v95, v115), v118);
          v122 = vminq_f32(vmaxq_f32(vrecpeq_f32(v120), v50), v31);
          v123 = vmulq_f32(v122, vrecpsq_f32(v120, v122));
          v124 = vsubq_f32(v115, v117);
          v125 = vsubq_f32(v95, vminq_f32(vmaxq_f32(vsubq_f32(v116, v117), v80), v95));
          v126 = vminq_f32(vmaxq_f32(v123, v50), v31);
          v127 = vmulq_f32(v126, vrecpsq_f32(v120, v126));
          v128 = vmulq_f32(v127, v115);
          v129 = vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v95, v116), v118), v80), v95);
          v130 = vmulq_f32(v127, v116);
          v131 = vcvtq_f32_s32(vcvtq_s32_f32(v128));
          v132 = vcvtq_f32_s32(vcvtq_s32_f32(v130));
          v133 = vmulq_f32(vsubq_f32(v95, vminq_f32(vmaxq_f32(v124, v80), v95)), vminq_f32(vmaxq_f32(v121, v80), v95));
          v134 = vmulq_f32(v125, v129);
          v135 = vdupq_lane_s32(*&v119, 1);
          v136 = vaddq_f32(v135, vsubq_f32(v128, vsubq_f32(v131, vandq_s8(v95, vcgtq_f32(v131, v128)))));
          v137 = vaddq_f32(v135, vsubq_f32(v130, vsubq_f32(v132, vandq_s8(v95, vcgtq_f32(v132, v130)))));
          v138 = vcvtq_f32_s32(vcvtq_s32_f32(v136));
          v139 = vcvtq_f32_s32(vcvtq_s32_f32(v137));
          v140 = vsubq_f32(v136, vsubq_f32(v138, vandq_s8(v95, vcgtq_f32(v138, v136))));
          v141 = vsubq_f32(v137, vsubq_f32(v139, vandq_s8(v95, vcgtq_f32(v139, v137))));
          v142 = *(v13 + 512);
          v143 = *(v13 + 528);
          v144 = vsubq_f32(v142, v140);
          v145 = vsubq_f32(v142, v141);
          v146 = vbslq_s8(vcgtq_f32(vandq_s8(v95, vcgtq_f32(v80, v144)), v80), vaddq_f32(v142, v144), v140);
          v147 = vbslq_s8(vcgtq_f32(vandq_s8(v95, vcgtq_f32(v80, v145)), v80), vaddq_f32(v142, v145), v141);
          v148 = vsubq_f32(v97, v146);
          v149 = vsubq_f32(v97, v147);
          v150 = vaddq_f32(v96, vmulq_f32(v17, vsubq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v95, vcgtq_f32(v80, v148)), v80), v146, vaddq_f32(v97, v148)), v96)));
          v151 = vmaxq_f32(vaddq_f32(v96, vmulq_f32(v17, vsubq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v95, vcgtq_f32(v80, v149)), v80), v147, vaddq_f32(v97, v149)), v96))), v80);
          v152 = vminq_f32(vmaxq_f32(v150, v80), v95);
          v153 = vminq_f32(v151, v95);
          v154 = vmulq_f32(v152, v152);
          v155 = vmulq_f32(v153, v153);
          v156 = vmulq_f32(v154, v143);
          v157 = vmulq_f32(v152, v154);
          v158 = *(v13 + 544);
          v159 = vsubq_f32(vmulq_f32(v155, v143), vmulq_f32(vmulq_f32(v153, v155), v158));
          v160 = vsubq_f32(*(v13 + 32), v14);
          v161 = vmulq_f32(vsubq_f32(v156, vmulq_f32(v157, v158)), v160);
          v162 = vmulq_f32(v159, v160);
          v163 = vmulq_f32(v133, v133);
          v164 = vmulq_f32(v134, v134);
          v165 = (*&v6 + 16 * v9);
          *v165 = vmulq_n_f32(vaddq_f32(v14, v161), vsubq_f32(vmulq_f32(v163, v143), vmulq_f32(vmulq_f32(v133, v163), v158)).f32[0]);
          v165[1] = vmulq_n_f32(vaddq_f32(v14, v162), vsubq_f32(vmulq_f32(v164, v143), vmulq_f32(vmulq_f32(v134, v164), v158)).f32[0]);
          v11 = vaddq_f32(v12, xmmword_2603429B0);
          v9 += 2;
          v10 -= 2;
        }

        while (v10 > 1);
        v9 = v9;
      }

      if (v9 < v5)
      {
        v166 = *(a1 + 408);
        v167 = vsubq_f32(v11, *v166);
        v168.i64[0] = vmulq_f32(v167, *(v166 + 80)).u64[0];
        v168.i64[1] = v167.i64[1];
        v170 = *(v166 + 96);
        v169 = *(v166 + 112);
        v171 = vmulq_f32(v168, vdupq_laneq_s64(v169, 1));
        v172 = vmulq_f32(vdupq_lane_s64(v169.i64[0], 0), v168);
        v173 = vaddq_f32(vextq_s8(v172, v172, 8uLL), vaddq_f32(v172, vrev64q_s32(v172)));
        v174 = *(v166 + 176);
        v175 = vbslq_s8(*(v166 + 160), v173, vaddq_f32(vextq_s8(v171, v171, 4uLL), vaddq_f32(v171, vrev64q_s32(v171))));
        v173.i64[0] = vmulq_f32(v175, v175).u64[0];
        v176 = vaddq_f32(vdupq_lane_s32(*v173.i8, 0), vdupq_lane_s32(*v173.i8, 1));
        v177 = vminq_f32(vrsqrteq_f32(v176), v174);
        v178 = vminq_f32(vmulq_f32(v177, vrsqrtsq_f32(vmulq_f32(v177, v176), v177)), v174);
        v179 = vmulq_f32(vminq_f32(vmulq_f32(v178, vrsqrtsq_f32(vmulq_f32(v178, v176), v178)), v174), v176);
        v180 = vrev64q_s32(v175);
        v181 = vabsq_f32(v180);
        v182 = vabsq_f32(v175);
        v183 = vmaxq_f32(v182, v181);
        v184 = vminq_f32(v182, v181);
        v185 = vsubq_f32(v181, v182);
        v186 = *(v166 + 208);
        v187 = vmaxq_f32(v183, *(v166 + 192));
        v188 = vminq_f32(vmaxq_f32(vrecpeq_f32(v187), v186), v174);
        v189 = vminq_f32(vmaxq_f32(vmulq_f32(v188, vrecpsq_f32(v187, v188)), v186), v174);
        v190 = vmulq_f32(v184, vmulq_f32(v189, vrecpsq_f32(v187, v189)));
        v191 = vmulq_f32(v190, v190);
        v192 = vmulq_f32(v190, vaddq_f32(*(v166 + 304), vmulq_f32(v191, vaddq_f32(*(v166 + 288), vmulq_f32(v191, vaddq_f32(*(v166 + 272), vmulq_f32(v191, vaddq_f32(*(v166 + 256), vmulq_f32(v191, vaddq_f32(*(v166 + 224), vmulq_f32(*(v166 + 240), v191)))))))))));
        v193 = *(v166 + 336);
        v194 = vbslq_s8(vcgtq_f32(v185, v193), vsubq_f32(*(v166 + 320), v192), v192);
        v195 = veorq_s8(vandq_s8(*(v166 + 368), v180), vbslq_s8(vcgtq_f32(v193, v175), vsubq_f32(*(v166 + 352), v194), v194));
        v196 = vmulq_lane_f32(v195, *v170.f32, 1);
        v197 = vcvtq_f32_s32(vcvtq_s32_f32(v196));
        v198 = vcgtq_f32(v197, v196);
        v199 = *(v166 + 384);
        v200 = *(v166 + 400);
        v195.i32[0] = vsubq_f32(vmulq_f32(v170, vaddq_f32(v200, vsubq_f32(v197, vbslq_s8(v198, v199, 0)))), v195).u32[0];
        v201 = *(v166 + 432);
        v202 = vmulq_n_f32(*(v166 + 416), v195.f32[0]);
        v203 = vcvtq_f32_s32(vcvtq_s32_f32(v202));
        v204 = vsubq_f32(vabdq_f32(vsubq_f32(v202, vsubq_f32(v203, vandq_s8(v199, vcgtq_f32(v203, v202)))), v200), v201);
        v205 = vmulq_f32(v204, v204);
        v206 = vmulq_f32(v179, vmulq_f32(v204, vaddq_f32(*(v166 + 496), vmulq_f32(v205, vaddq_f32(*(v166 + 480), vmulq_f32(v205, vaddq_f32(*(v166 + 448), vmulq_f32(*(v166 + 464), v205))))))));
        v207 = vmulq_f32(vsubq_f32(v199, vminq_f32(vmaxq_f32(vsubq_f32(v206, *(v166 + 128)), v193), v199)), vminq_f32(vmaxq_f32(vsubq_f32(vaddq_f32(v199, v206), *(v166 + 144)), v193), v199));
        v208 = *(v166 + 48);
        v209 = vdupq_lane_s32(*&v208, 0);
        v210 = vminq_f32(vmaxq_f32(vrecpeq_f32(v209), v186), v174);
        v211 = vminq_f32(vmaxq_f32(vmulq_f32(v210, vrecpsq_f32(v209, v210)), v186), v174);
        v212 = vmulq_f32(vmulq_f32(v211, vrecpsq_f32(v209, v211)), v206);
        v213 = vcvtq_f32_s32(vcvtq_s32_f32(v212));
        v214 = vaddq_f32(vdupq_lane_s32(*&v208, 1), vsubq_f32(v212, vsubq_f32(v213, vandq_s8(v199, vcgtq_f32(v213, v212)))));
        v215 = vcvtq_f32_s32(vcvtq_s32_f32(v214));
        v216 = vsubq_f32(v214, vsubq_f32(v215, vandq_s8(v199, vcgtq_f32(v215, v214))));
        v217 = *(v166 + 512);
        v218 = vsubq_f32(v217, v216);
        v219 = vbslq_s8(vcgtq_f32(vandq_s8(v199, vcgtq_f32(v193, v218)), v193), vaddq_f32(v217, v218), v216);
        v220 = vsubq_f32(v201, v219);
        v221 = vminq_f32(vmaxq_f32(vaddq_f32(v200, vmulq_f32(*(v166 + 64), vsubq_f32(vbslq_s8(vcgtq_f32(vandq_s8(v199, vcgtq_f32(v193, v220)), v193), v219, vaddq_f32(v201, v220)), v200))), v193), v199);
        v222 = vmulq_f32(v221, v221);
        v223 = vmulq_f32(v207, v207);
        *(*&v6 + 16 * v9) = vmulq_n_f32(vaddq_f32(*(v166 + 16), vmulq_f32(vsubq_f32(vmulq_f32(v222, *(v166 + 528)), vmulq_f32(vmulq_f32(v221, v222), *(v166 + 544))), vsubq_f32(*(v166 + 32), *(v166 + 16)))), vsubq_f32(vmulq_f32(v223, *(v166 + 528)), vmulq_f32(vmulq_f32(v207, v223), *(v166 + 544))).f32[0]);
      }

      v7 = vaddq_f32(v7, xmmword_2603429C0);
      *&v6 += v8;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcConcentricPolygons::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcConcentricPolygons::HgcConcentricPolygons(HgcConcentricPolygons *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871DE580;
  operator new();
}

void HgcConcentricPolygons::~HgcConcentricPolygons(HGNode *this)
{
  *this = &unk_2871DE580;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40CD7AB3DBLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcConcentricPolygons::~HgcConcentricPolygons(this);

  HGObject::operator delete(v1);
}

uint64_t HgcConcentricPolygons::SetParameter(HgcConcentricPolygons *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v14 = *(this + 51);
        if (*(v14 + 80) != a3.n128_f32[0] || *(v14 + 84) != a4 || *(v14 + 88) != a5 || *(v14 + 92) != a6)
        {
          *(v14 + 80) = a3.n128_u32[0];
          *(v14 + 84) = a4;
          *(v14 + 88) = a5;
          *(v14 + 92) = a6;
          goto LABEL_62;
        }
      }

      else
      {
        v12 = *(this + 51);
        if (*(v12 + 96) != a3.n128_f32[0] || *(v12 + 100) != a4 || *(v12 + 104) != a5 || *(v12 + 108) != a6)
        {
          *(v12 + 96) = a3.n128_u32[0];
          *(v12 + 100) = a4;
          *(v12 + 104) = a5;
          *(v12 + 108) = a6;
          goto LABEL_62;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 7:
        v16 = *(this + 51);
        if (*(v16 + 112) != a3.n128_f32[0] || *(v16 + 116) != a4 || *(v16 + 120) != a5 || *(v16 + 124) != a6)
        {
          *(v16 + 112) = a3.n128_u32[0];
          *(v16 + 116) = a4;
          *(v16 + 120) = a5;
          *(v16 + 124) = a6;
          goto LABEL_62;
        }

        return 0;
      case 8:
        v18 = *(this + 51);
        if (*(v18 + 128) != a3.n128_f32[0] || *(v18 + 132) != a4 || *(v18 + 136) != a5 || *(v18 + 140) != a6)
        {
          *(v18 + 128) = a3.n128_u32[0];
          *(v18 + 132) = a4;
          *(v18 + 136) = a5;
          *(v18 + 140) = a6;
          goto LABEL_62;
        }

        return 0;
      case 9:
        v10 = *(this + 51);
        if (*(v10 + 144) != a3.n128_f32[0] || *(v10 + 148) != a4 || *(v10 + 152) != a5 || *(v10 + 156) != a6)
        {
          *(v10 + 144) = a3.n128_u32[0];
          *(v10 + 148) = a4;
          *(v10 + 152) = a5;
          *(v10 + 156) = a6;
          goto LABEL_62;
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
          goto LABEL_62;
        }
      }

      else if (a2 == 3)
      {
        v17 = *(this + 51);
        if (*(v17 + 48) != a3.n128_f32[0] || *(v17 + 52) != a4 || *(v17 + 56) != a5 || *(v17 + 60) != a6)
        {
          *(v17 + 48) = a3.n128_u32[0];
          *(v17 + 52) = a4;
          *(v17 + 56) = a5;
          *(v17 + 60) = a6;
          goto LABEL_62;
        }
      }

      else
      {
        v8 = *(this + 51);
        if (*(v8 + 64) != a3.n128_f32[0] || *(v8 + 68) != a3.n128_f32[0] || *(v8 + 72) != a3.n128_f32[0] || *(v8 + 76) != a3.n128_f32[0])
        {
          v9 = vdupq_lane_s32(a3.n128_u64[0], 0);
          a3.n128_f32[1] = a4;
          *(v8 + 64) = v9;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v8 + 576) = a3;
LABEL_62:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    if (!a2)
    {
      v13 = *(this + 51);
      if (*v13 != a3.n128_f32[0] || *(v13 + 4) != a4 || *(v13 + 8) != a5 || *(v13 + 12) != a6)
      {
        *v13 = a3.n128_u32[0];
        *(v13 + 4) = a4;
        *(v13 + 8) = a5;
        *(v13 + 12) = a6;
        goto LABEL_62;
      }

      return 0;
    }

    if (a2 == 1)
    {
      v11 = *(this + 51);
      if (*(v11 + 16) != a3.n128_f32[0] || *(v11 + 20) != a4 || *(v11 + 24) != a5 || *(v11 + 28) != a6)
      {
        *(v11 + 16) = a3.n128_u32[0];
        *(v11 + 20) = a4;
        *(v11 + 24) = a5;
        *(v11 + 28) = a6;
        goto LABEL_62;
      }

      return 0;
    }
  }

  return v7;
}

uint64_t HgcConcentricPolygons::GetParameter(HgcConcentricPolygons *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      v8 = *(this + 51);
      if (a2 == 5)
      {
        *a3 = v8[20];
        a3[1] = v8[21];
        a3[2] = v8[22];
        v5 = v8 + 23;
      }

      else
      {
        *a3 = v8[24];
        a3[1] = v8[25];
        a3[2] = v8[26];
        v5 = v8 + 27;
      }

      goto LABEL_22;
    }

    switch(a2)
    {
      case 7:
        v11 = *(this + 51);
        *a3 = v11[28];
        a3[1] = v11[29];
        a3[2] = v11[30];
        v5 = v11 + 31;
        goto LABEL_22;
      case 8:
        v12 = *(this + 51);
        *a3 = v12[32];
        a3[1] = v12[33];
        a3[2] = v12[34];
        v5 = v12 + 35;
        goto LABEL_22;
      case 9:
        v6 = *(this + 51);
        *a3 = v6[36];
        a3[1] = v6[37];
        a3[2] = v6[38];
        v5 = v6 + 39;
LABEL_22:
        v3 = 0;
        a3[3] = *v5;
        break;
    }
  }

  else
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        v10 = *(this + 51);
        *a3 = v10[8];
        a3[1] = v10[9];
        a3[2] = v10[10];
        v5 = v10 + 11;
      }

      else
      {
        v4 = *(this + 51);
        if (a2 == 3)
        {
          *a3 = v4[12];
          a3[1] = v4[13];
          a3[2] = v4[14];
          v5 = v4 + 15;
        }

        else
        {
          *a3 = v4[144];
          a3[1] = v4[145];
          a3[2] = v4[146];
          v5 = v4 + 147;
        }
      }

      goto LABEL_22;
    }

    if (!a2)
    {
      v9 = *(this + 51);
      *a3 = *v9;
      a3[1] = v9[1];
      a3[2] = v9[2];
      v5 = v9 + 3;
      goto LABEL_22;
    }

    if (a2 == 1)
    {
      v7 = *(this + 51);
      *a3 = v7[4];
      a3[1] = v7[5];
      a3[2] = v7[6];
      v5 = v7 + 7;
      goto LABEL_22;
    }
  }

  return v3;
}

double HgcConcentricPolygons::State::State(HgcConcentricPolygons::State *this)
{
  result = 0.0;
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
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(this + 10) = xmmword_2603444B0;
  *(this + 11) = vnegq_f32(v2);
  *(this + 12) = xmmword_260344DF0;
  *(this + 13) = v2;
  *(this + 14) = xmmword_2603450A0;
  *(this + 15) = xmmword_2603450B0;
  *(this + 16) = xmmword_2603450C0;
  *(this + 17) = xmmword_2603450D0;
  *(this + 18) = xmmword_2603450E0;
  *(this + 19) = xmmword_2603450F0;
  *(this + 20) = xmmword_260345100;
  *(this + 21) = 0u;
  *(this + 22) = xmmword_260345110;
  *(this + 23) = xmmword_260344700;
  __asm { FMOV            V1.4S, #1.0 }

  v2.i64[0] = 0x3F0000003F000000;
  v2.i64[1] = 0x3F0000003F000000;
  *(this + 24) = _Q1;
  *(this + 25) = v2;
  __asm { FMOV            V2.4S, #0.25 }

  *(this + 26) = vdupq_n_s32(0x3E22F983u);
  *(this + 27) = _Q2;
  *(this + 28) = vdupq_n_s32(0x42A2BAF0u);
  *(this + 29) = vdupq_n_s32(0xC28E3DFF);
  *(this + 30) = vdupq_n_s32(0xC2255A97);
  *(this + 31) = vdupq_n_s32(0x40C90FDBu);
  __asm
  {
    FMOV            V1.4S, #0.75
    FMOV            V2.4S, #3.0
  }

  *(this + 32) = _Q1;
  *(this + 33) = _Q2;
  *&_Q1 = 0x4000000040000000;
  *(&_Q1 + 1) = 0x4000000040000000;
  *(this + 34) = _Q1;
  *(this + 35) = xmmword_260344600;
  *(this + 36) = 0u;
  return result;
}