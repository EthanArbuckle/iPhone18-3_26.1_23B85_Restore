uint64_t HgcConcentricCircles::GetParameter(HgcConcentricCircles *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 > 3)
  {
    if (a2 <= 5)
    {
      v6 = *(this + 51);
      if (a2 == 4)
      {
        *a3 = v6[72];
        a3[1] = v6[73];
        a3[2] = v6[74];
        v5 = v6 + 75;
      }

      else
      {
        *a3 = v6[20];
        a3[1] = v6[21];
        a3[2] = v6[22];
        v5 = v6 + 23;
      }

      goto LABEL_18;
    }

    if (a2 == 6)
    {
      v10 = *(this + 51);
      *a3 = v10[24];
      a3[1] = v10[25];
      a3[2] = v10[26];
      v5 = v10 + 27;
      goto LABEL_18;
    }

    if (a2 == 7)
    {
      v8 = *(this + 51);
      *a3 = v8[28];
      a3[1] = v8[29];
      a3[2] = v8[30];
      v5 = v8 + 31;
      goto LABEL_18;
    }
  }

  else
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

      goto LABEL_18;
    }

    if (!a2)
    {
      v9 = *(this + 51);
      *a3 = *v9;
      a3[1] = v9[1];
      a3[2] = v9[2];
      v5 = v9 + 3;
      goto LABEL_18;
    }

    if (a2 == 1)
    {
      v4 = *(this + 51);
      *a3 = v4[4];
      a3[1] = v4[5];
      a3[2] = v4[6];
      v5 = v4 + 7;
LABEL_18:
      v3 = 0;
      a3[3] = *v5;
    }
  }

  return v3;
}

const char *HgcGradientColorize::GetProgram(HgcGradientColorize *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000865\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.9999899864, 0.5000000000, -2.000000000, 1.000000000);\n    const half4 c1 = half4(0.000000000, 0.2989999950, 0.5870000124, 0.1140000001);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = dot(r1, half4(hg_Params[0]));\n    r1.x = c0.x - r1.x;\n    r1.x = r1.x*half(hg_Params[1].x) + half(hg_Params[1].y);\n    r1.y = r1.x*c0.y;\n    r1.y = fract(r1.y);\n    r1.z = -r1.y + c0.y;\n    r1.z = fabs(r1.z)*c0.z + c0.w;\n    r1.y = select(r1.z, r1.x, half(hg_Params[2].x) < 0.00000h);\n    r1.z = fract(r1.x);\n    r1.x = abs(r1.x);\n    r1.xz = half2(-r1.xz >= c1.xx);\n    r1.y = fract(r1.y);\n    r1.y = r1.y + r1.z;\n    r1.x = r1.y - r1.x;\n    r1.x = r1.x*half(hg_Params[3].x);\n    r1.x = fmin(r1.x, half(hg_Params[3].y));\n    r1.x = fmax(r1.x, c1.x);\n    r1.x = floor(r1.x);\n    r1.y = c0.y;\n    r1.x = r1.x + c0.y;\n    r1.xy = r1.xy + half2(hg_Params[8].xy);\n    r1.xy = r1.xy*half2(hg_Params[8].zw);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, float2(r1.xy));\n    r2.x = dot(r1.xyz, c1.yzw);\n    r2 = clamp(mix(r2.xxxx, r1, half4(hg_Params[4])), 0.00000h, 1.00000h);\n    r2 = select(r1, r2, -half4(hg_Params[6].xxxx) < 0.00000h);\n    r1.w = dot(r2, half4(hg_Params[5]));\n    r1.xyz = mix(r1.www, r2.yzw, half3(hg_Params[4].yzw));\n    r2 = r2.yzwx*r0.wwww + -r0;\n    r1.xyz = r1.xyz*r0.www;\n    r1.w = r0.w;\n    r1 = mix(r0, r1, half4(hg_Params[7].xxxx));\n    r0 = r2*half4(hg_Params[7].xxxx) + r0;\n    output.color0 = select(float4(r1), float4(r0), -fabs(hg_Params[6].xxxx) < 0.00000h);\n    return output;\n}\n//MD5=e4df9caf:550b4986:84965cbc:7a8ddf33\n//SIG=00400000:00000001:00000001:00000003:0002:0009:0003:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000007e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.9999899864, 0.5000000000, -2.000000000, 1.000000000);\n    const float4 c1 = float4(0.000000000, 0.2989999950, 0.5870000124, 0.1140000001);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = dot(r1, hg_Params[0]);\n    r1.x = c0.x - r1.x;\n    r1.x = r1.x*hg_Params[1].x + hg_Params[1].y;\n    r1.y = r1.x*c0.y;\n    r1.y = fract(r1.y);\n    r1.z = -r1.y + c0.y;\n    r1.z = fabs(r1.z)*c0.z + c0.w;\n    r1.y = select(r1.z, r1.x, hg_Params[2].x < 0.00000f);\n    r1.z = fract(r1.x);\n    r1.x = abs(r1.x);\n    r1.xz = float2(-r1.xz >= c1.xx);\n    r1.y = fract(r1.y);\n    r1.y = r1.y + r1.z;\n    r1.x = r1.y - r1.x;\n    r1.x = r1.x*hg_Params[3].x;\n    r1.x = fmin(r1.x, hg_Params[3].y);\n    r1.x = fmax(r1.x, c1.x);\n    r1.x = floor(r1.x);\n    r1.y = c0.y;\n    r1.x = r1.x + c0.y;\n    r1.xy = r1.xy + hg_Params[8].xy;\n    r1.xy = r1.xy*hg_Params[8].zw;\n    r1 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n    r2.x = dot(r1.xyz, c1.yzw);\n    r2 = clamp(mix(r2.xxxx, r1, hg_Params[4]), 0.00000f, 1.00000f);\n    r2 = select(r1, r2, -hg_Params[6].xxxx < 0.00000f);\n    r1.w = dot(r2, hg_Params[5]);\n    r1.xyz = mix(r1.www, r2.yzw, hg_Params[4].yzw);\n    r2 = r2.yzwx*r0.wwww + -r0;\n    r1.xyz = r1.xyz*r0.www;\n    r1.w = r0.w;\n    r1 = mix(r0, r1, hg_Params[7].xxxx);\n    r0 = r2*hg_Params[7].xxxx + r0;\n    output.color0 = select(r1, r0, -fabs(hg_Params[6].xxxx) < 0.00000f);\n    return output;\n}\n//MD5=5038cae5:eae89ab1:f10a7871:340599ee\n//SIG=00000000:00000001:00000001:00000000:0002:0009:0003:0000:0000:0000:0002:0000:0001:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000a11\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nuniform mediump vec4 hg_ProgramLocal5;\nuniform mediump vec4 hg_ProgramLocal6;\nuniform mediump vec4 hg_ProgramLocal7;\nuniform mediump vec4 hg_ProgramLocal8;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.9999899864, 0.5000000000, -2.000000000, 1.000000000);\n    const mediump vec4 c1 = vec4(0.000000000, 0.2989999950, 0.5870000124, 0.1140000001);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = dot(r1, hg_ProgramLocal0);\n    r1.x = c0.x - r1.x;\n    r1.x = r1.x*hg_ProgramLocal1.x + hg_ProgramLocal1.y;\n    r1.y = r1.x*c0.y;\n    r1.y = fract(r1.y);\n    r1.z = -r1.y + c0.y;\n    r1.z = abs(r1.z)*c0.z + c0.w;\n    r1.y = hg_ProgramLocal2.x < 0.00000 ? r1.x : r1.z;\n    r1.z = fract(r1.x);\n    r1.x = abs(r1.x);\n    r1.xz = vec2(greaterThanEqual(-r1.xz, c1.xx));\n    r1.y = fract(r1.y);\n    r1.y = r1.y + r1.z;\n    r1.x = r1.y - r1.x;\n    r1.x = r1.x*hg_ProgramLocal3.x;\n    r1.x = min(r1.x, hg_ProgramLocal3.y);\n    r1.x = max(r1.x, c1.x);\n    r1.x = floor(r1.x);\n    r1.y = c0.y;\n    r1.x = r1.x + c0.y;\n    r1.xy = r1.xy + hg_ProgramLocal8.xy;\n    r1.xy = r1.xy*hg_ProgramLocal8.zw;\n    r1 = texture2D(hg_Texture1, r1.xy);\n    r2.x = dot(r1.xyz, c1.yzw);\n    r2 = clamp(mix(r2.xxxx, r1, hg_ProgramLocal4), vec4(0.00000), vec4(1.00000));\n    r2 = vec4(-hg_ProgramLocal6.x < 0.00000 ? r2.x : r1.x, -hg_ProgramLocal6.x < 0.00000 ? r2.y : r1.y, -hg_ProgramLocal6.x < 0.00000 ? r2.z : r1.z, -hg_ProgramLocal6.x < 0.00000 ? r2.w : r1.w);\n    r1.w = dot(r2, hg_ProgramLocal5);\n    r1.xyz = mix(r1.www, r2.yzw, hg_ProgramLocal4.yzw);\n    r2 = r2.yzwx*r0.wwww + -r0;\n    r1.xyz = r1.xyz*r0.www;\n    r1.w = r0.w;\n    r1 = mix(r0, r1, hg_ProgramLocal7.xxxx);\n    r0 = r2*hg_ProgramLocal7.xxxx + r0;\n    gl_FragColor = vec4(-abs(hg_ProgramLocal6.x) < 0.00000 ? r0.x : r1.x, -abs(hg_ProgramLocal6.x) < 0.00000 ? r0.y : r1.y, -abs(hg_ProgramLocal6.x) < 0.00000 ? r0.z : r1.z, -abs(hg_ProgramLocal6.x) < 0.00000 ? r0.w : r1.w);\n}\n//MD5=d68c4bec:79c321ab:7cc31d0b:f45abdec\n//SIG=00000000:00000001:00000001:00000000:0002:0009:0003:0000:0000:0000:0000:0000:0001:02:0:1:0\n";
  }
}

void sub_25FA78A84(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA78C04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA78C54()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA78C4CLL);
}

uint64_t HgcGradientColorize::BindTexture(HgcGradientColorize *this, HGHandler *a2, int a3)
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
    (*(*a2 + 136))(a2, 8, v6, v7, v8, v9);
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

uint64_t HgcGradientColorize::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a2 + 144))(a2, 4, a1[51] + 64, 1);
  (*(*a2 + 144))(a2, 5, a1[51] + 80, 1);
  (*(*a2 + 144))(a2, 6, a1[51] + 96, 1);
  (*(*a2 + 144))(a2, 7, a1[51] + 112, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcGradientColorize::RenderTile(uint64_t a1, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = a2[2];
    v8 = a2[10];
    v9 = 16 * a2[3].i32[0];
    v10 = 16 * a2[11].i32[0];
    v11.i64[0] = 0x3F0000003F000000;
    v11.i64[1] = 0x3F0000003F000000;
    do
    {
      if (v6 < 3)
      {
        v13 = 0;
      }

      else
      {
        v12 = 0;
        v13 = 0;
        for (i = v6; i > 2; i -= 3)
        {
          v16 = *(*&v8 + v12);
          v15 = *(*&v8 + v12 + 16);
          v17 = *(*&v8 + v12 + 32);
          v18 = *(a1 + 408);
          v19 = *(v18 + 128);
          v20 = *(v18 + 144);
          v21 = vmaxq_f32(vdupq_laneq_s32(v16, 3), v19);
          v22 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v19);
          v23 = vmaxq_f32(vdupq_laneq_s32(v17, 3), v19);
          v24 = vmulq_f32(vrecpeq_f32(v21), v20);
          v25 = vmulq_f32(vrecpeq_f32(v22), v20);
          v26 = vmulq_f32(vrecpeq_f32(v23), v20);
          v27 = vmulq_f32(v24, vrecpsq_f32(v24, v21));
          v28 = vmulq_f32(v25, vrecpsq_f32(v25, v22));
          v29 = vmulq_f32(v26, vrecpsq_f32(v26, v23));
          v31 = *(v18 + 160);
          v30 = *(v18 + 176);
          v32 = *(v18 + 16);
          v33 = vmulq_f32(*v18, vmulq_f32(v16, vorrq_s8(vandq_s8(v31, v27), v30)));
          v34 = vmulq_f32(*v18, vmulq_f32(v15, vorrq_s8(vandq_s8(v31, v28), v30)));
          v35 = vmulq_f32(*v18, vmulq_f32(v17, vorrq_s8(vandq_s8(v31, v29), v30)));
          v36 = vaddq_f32(v33, vextq_s8(v33, v33, 4uLL));
          v37 = vaddq_f32(v34, vextq_s8(v34, v34, 4uLL));
          v38 = vaddq_f32(v35, vextq_s8(v35, v35, 4uLL));
          v39 = vaddq_f32(v36, vextq_s8(v36, v36, 8uLL));
          v40 = vaddq_f32(v38, vextq_s8(v38, v38, 8uLL));
          v42 = *(v18 + 192);
          v41 = *(v18 + 208);
          v43 = vrev64q_s32(v32);
          v44 = vaddq_f32(v43, vmulq_f32(v32, vsubq_f32(v42, v39)));
          v45 = vaddq_f32(v43, vmulq_f32(v32, vsubq_f32(v42, vaddq_f32(v37, vextq_s8(v37, v37, 8uLL)))));
          v46 = vaddq_f32(v43, vmulq_f32(v32, vsubq_f32(v42, v40)));
          v47 = vbslq_s8(v41, v44, vmulq_f32(v42, vrev64q_s32(v44)));
          v48 = vbslq_s8(v41, v45, vmulq_f32(v42, vrev64q_s32(v45)));
          v49 = vbslq_s8(v41, v46, vmulq_f32(v42, vrev64q_s32(v46)));
          v50 = vcvtq_f32_s32(vcvtq_s32_f32(v47));
          v51 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
          v52 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
          v54 = *(v18 + 224);
          v53 = *(v18 + 240);
          v55 = vbslq_s8(v41, v44, vsubq_f32(v47, vsubq_f32(v50, vandq_s8(v54, vcgtq_f32(v50, v47)))));
          v56 = vbslq_s8(v41, v45, vsubq_f32(v48, vsubq_f32(v51, vandq_s8(v54, vcgtq_f32(v51, v48)))));
          v57 = vbslq_s8(v41, v46, vsubq_f32(v49, vsubq_f32(v52, vandq_s8(v54, vcgtq_f32(v52, v49)))));
          v45.i64[0] = v55.i64[0];
          v45.i64[1] = vsubq_f32(v54, vextq_s8(*&v5, *&v55, 0xCuLL)).i64[1];
          v46.i64[0] = v56.i64[0];
          v46.i64[1] = vsubq_f32(v54, vextq_s8(*&v5, *&v56, 0xCuLL)).i64[1];
          v48.i64[0] = v57.i64[0];
          v48.i64[1] = vsubq_f32(v54, vextq_s8(*&v5, *&v57, 0xCuLL)).i64[1];
          v58 = vaddq_f32(v42, vmulq_f32(v53, vabsq_f32(v45)));
          v59 = vaddq_f32(v42, vmulq_f32(v53, vabsq_f32(v46)));
          v60 = vaddq_f32(v42, vmulq_f32(v53, vabsq_f32(v48)));
          v48.i64[0] = v55.i64[0];
          v48.i64[1] = v58.i64[1];
          v49.i64[0] = v56.i64[0];
          v49.i64[1] = v59.i64[1];
          v45.i64[0] = v57.i64[0];
          v45.i64[1] = v60.i64[1];
          v55.i64[1] = vdupq_laneq_s64(v58, 1).u64[0];
          v56.i64[1] = vdupq_laneq_s64(v59, 1).u64[0];
          v57.i64[1] = vdupq_laneq_s64(v60, 1).u64[0];
          v61 = *(v18 + 48);
          v62 = vcgtq_f32(v53, vrev64q_s32(*(v18 + 32)));
          v63 = vbslq_s8(v41, v48, vbslq_s8(v62, vrev64q_s32(v55), vextq_s8(v48, v48, 4uLL)));
          v64 = vbslq_s8(v41, v49, vbslq_s8(v62, vrev64q_s32(v56), vextq_s8(v49, v49, 4uLL)));
          v65 = vbslq_s8(v41, v45, vbslq_s8(v62, vrev64q_s32(v57), vextq_s8(v45, v45, 4uLL)));
          v66 = vextq_s8(v63, v63, 8uLL);
          v67 = vextq_s8(v64, v64, 8uLL);
          v68 = vextq_s8(v65, v65, 8uLL);
          v69 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
          v70 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
          v71 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
          v72 = vbslq_s8(vcgtq_f32(v70, v67), v42, 0);
          v73 = vsubq_f32(v68, vsubq_f32(v71, vbslq_s8(vcgtq_f32(v71, v68), v42, 0)));
          v63.i64[1] = vsubq_f32(v66, vsubq_f32(v69, vbslq_s8(vcgtq_f32(v69, v66), *&v42, 0))).i64[1];
          v75 = *(v18 + 256);
          v74 = *(v18 + 272);
          v76 = vandq_s8(v75, v63);
          v64.i64[1] = vsubq_f32(v67, vsubq_f32(v70, v72)).i64[1];
          v77 = vandq_s8(v75, v64);
          v65.i64[1] = v73.i64[1];
          v78 = vandq_s8(v75, v65);
          v79 = vandq_s8(v74, vcgeq_f32(vnegq_f32(v76), v30));
          v80 = vandq_s8(v74, vcgeq_f32(vnegq_f32(v77), v30));
          v81 = vandq_s8(v74, vcgeq_f32(vnegq_f32(v78), v30));
          v83 = *(v18 + 288);
          v82 = *(v18 + 304);
          v84 = vbslq_s8(v83, v76, v79);
          v85 = vbslq_s8(v83, v77, v80);
          v86 = vbslq_s8(v83, v78, v81);
          v87 = vcvtq_f32_s32(vcvtq_s32_f32(v84));
          v88 = vcvtq_f32_s32(vcvtq_s32_f32(v85));
          v89 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
          v90 = vbslq_s8(v83, vsubq_f32(v84, vsubq_f32(v87, vandq_s8(v74, vcgtq_f32(v87, v84)))), v79);
          v91 = vbslq_s8(v83, vsubq_f32(v85, vsubq_f32(v88, vandq_s8(v74, vcgtq_f32(v88, v85)))), v80);
          v92 = vbslq_s8(v83, vsubq_f32(v86, vsubq_f32(v89, vandq_s8(v74, vcgtq_f32(v89, v86)))), v81);
          v93 = vbslq_s8(v41, v90, vaddq_f32(vextq_s8(v90, v90, 4uLL), v90));
          v94 = vbslq_s8(v41, v91, vaddq_f32(vextq_s8(v91, v91, 4uLL), v91));
          v95 = vbslq_s8(v41, v92, vaddq_f32(vextq_s8(v92, v92, 4uLL), v92));
          v96 = vmulq_f32(v61, vsubq_f32(vrev64q_s32(v93), v93));
          v97 = vmulq_f32(v61, vsubq_f32(vrev64q_s32(v94), v94));
          v98 = vmulq_f32(v61, vsubq_f32(vrev64q_s32(v95), v95));
          v99 = vrev64q_s32(v61);
          v100 = vminq_f32(v97, v99);
          v101 = vminq_f32(v98, v99);
          v102 = vmaxq_f32(vminq_f32(v96, v99), v53);
          v103 = vmaxq_f32(v100, v53);
          v104 = vmaxq_f32(v101, v53);
          v105 = vcvtq_f32_s32(vcvtq_s32_f32(v102));
          v106 = vcvtq_f32_s32(vcvtq_s32_f32(v103));
          v107 = vcvtq_f32_s32(vcvtq_s32_f32(v104));
          v108 = vsubq_f32(v105, vbslq_s8(vcgtq_f32(v105, v102), v74, 0));
          v109 = vsubq_f32(v106, vbslq_s8(vcgtq_f32(v106, v103), v74, 0));
          v110 = vsubq_f32(v107, vbslq_s8(vcgtq_f32(v107, v104), v74, 0));
          v108.i32[1] = 0.5;
          v109.i32[1] = 0.5;
          v110.i32[1] = 0.5;
          v111 = vbslq_s8(v41, vaddq_f32(v82, v108), v108);
          v112 = vbslq_s8(v41, vaddq_f32(v82, v109), v109);
          v113 = vbslq_s8(v41, vaddq_f32(v82, v110), v110);
          v114 = a2[13].u32[0];
          v115 = vaddq_f32(vsubq_f32(v111, v5), v11);
          v116 = vcvtq_s32_f32(v115);
          v117 = a2[12];
          v118 = vaddq_f32(vsubq_f32(v112, v5), v11);
          v119 = vcvtq_s32_f32(v118);
          *v111.f32 = vadd_s32(*v119.i8, *&vcgtq_f32(vcvtq_f32_s32(v119), v118));
          *v115.f32 = vadd_s32(*v116.i8, *&vcgtq_f32(vcvtq_f32_s32(v116), v115));
          *v115.f32 = vmla_s32(vzip1_s32(*v115.f32, *v111.f32), vzip2_s32(*v115.f32, *v111.f32), vdup_n_s32(v114));
          v120 = v115.i32[1];
          v121 = vaddq_f32(vsubq_f32(v113, v5), v11);
          v122 = vcvtq_s32_f32(v121);
          v123 = *(*&v117 + 16 * v115.i32[0]);
          v121.i64[0] = vaddq_s32(v122, vcgtq_f32(vcvtq_f32_s32(v122), v121)).u64[0];
          v124 = *(*&v117 + 16 * v120);
          v125 = *(*&v117 + 16 * (v121.i32[0] + v121.i32[1] * v114));
          v127 = *(v18 + 320);
          v126 = *(v18 + 336);
          v128 = vmulq_f32(v123, v127);
          v129 = vmulq_f32(v124, v127);
          v130 = vmulq_f32(v125, v127);
          v131 = vdupq_lane_s32(*&vaddq_f32(vdupq_laneq_s32(v128, 2), vaddq_f32(v128, vdupq_lane_s32(*v128.f32, 1))), 0);
          v132 = vdupq_lane_s32(*&vaddq_f32(vdupq_laneq_s32(v129, 2), vaddq_f32(v129, vdupq_lane_s32(*v129.f32, 1))), 0);
          v133 = vdupq_lane_s32(*&vaddq_f32(vdupq_laneq_s32(v130, 2), vaddq_f32(v130, vdupq_lane_s32(*v130.f32, 1))), 0);
          v134 = *(v18 + 64);
          v135 = *(v18 + 80);
          v136 = vminq_f32(vmaxq_f32(vaddq_f32(v133, vmulq_f32(v134, vsubq_f32(v125, v133))), v126), v74);
          v137 = *(v18 + 112);
          v138 = vdupq_lane_s32(*(v18 + 96), 0);
          v139 = vcgtq_f32(v138, v126);
          v140 = vbslq_s8(v139, vminq_f32(vmaxq_f32(vaddq_f32(v131, vmulq_f32(v134, vsubq_f32(v123, v131))), v126), v74), v123);
          v141 = vbslq_s8(v139, vminq_f32(vmaxq_f32(vaddq_f32(v132, vmulq_f32(v134, vsubq_f32(v124, v132))), v126), v74), v124);
          v142 = vbslq_s8(v139, v136, v125);
          v143 = vmulq_f32(v135, v140);
          v144 = vmulq_f32(v135, v142);
          v145 = vmulq_f32(v135, v141);
          v146 = vaddq_f32(v143, vextq_s8(v143, v143, 4uLL));
          v147 = vaddq_f32(v144, vextq_s8(v144, v144, 4uLL));
          v148 = vaddq_f32(v145, vextq_s8(v145, v145, 4uLL));
          v149 = vdupq_laneq_s32(vaddq_f32(v146, vdupq_lane_s32(*v146.f32, 1)), 3);
          v150 = vextq_s8(v140, v140, 4uLL);
          v151 = vdupq_laneq_s32(vaddq_f32(v148, vdupq_lane_s32(*v148.f32, 1)), 3);
          v152 = vdupq_laneq_s32(vaddq_f32(v147, vdupq_lane_s32(*v147.f32, 1)), 3);
          v153 = vextq_s8(v141, v141, 4uLL);
          v154 = vextq_s8(v142, v142, 4uLL);
          v155 = vextq_s8(v134, v134, 4uLL);
          v156 = vaddq_f32(v149, vmulq_f32(v155, vsubq_f32(v150, v149)));
          v157 = vaddq_f32(v151, vmulq_f32(v155, vsubq_f32(v153, v151)));
          v158 = vaddq_f32(v152, vmulq_f32(v155, vsubq_f32(v154, v152)));
          v159 = vmulq_laneq_f32(v157, v15, 3);
          v160 = *(v18 + 352);
          v161 = vceqq_f32(v138, v126);
          v162 = (*&v7 + v12);
          *v162 = vaddq_f32(v16, vmulq_n_f32(vsubq_f32(vbslq_s8(v161, vmulq_laneq_f32(v150, v16, 3), vbslq_s8(v160, v16, vmulq_laneq_f32(v156, v16, 3))), v16), *&v137));
          v162[1] = vaddq_f32(v15, vmulq_n_f32(vsubq_f32(vbslq_s8(v161, vmulq_laneq_f32(v153, v15, 3), vbslq_s8(v160, v15, v159)), v15), *&v137));
          v162[2] = vaddq_f32(v17, vmulq_n_f32(vsubq_f32(vbslq_s8(v161, vmulq_laneq_f32(v154, v17, 3), vbslq_s8(v160, v17, vmulq_laneq_f32(v158, v17, 3))), v17), *&v137));
          v13 += 3;
          v12 += 48;
        }
      }

      if (v13 < v6)
      {
        do
        {
          v163 = *(*&v8 + 16 * v13);
          v164 = *(a1 + 408);
          v165 = vmaxq_f32(vdupq_laneq_s32(v163, 3), *(v164 + 128));
          v166 = vmulq_f32(vrecpeq_f32(v165), *(v164 + 144));
          v167 = vmulq_f32(v166, vrecpsq_f32(v166, v165));
          v168 = *(v164 + 176);
          v169 = vmulq_f32(*v164, vmulq_f32(v163, vorrq_s8(vandq_s8(*(v164 + 160), v167), v168)));
          v170 = vaddq_f32(v169, vextq_s8(v169, v169, 4uLL));
          v171 = vaddq_f32(v170, vextq_s8(v170, v170, 8uLL));
          v173 = *(v164 + 192);
          v172 = *(v164 + 208);
          v174 = vaddq_f32(vrev64q_s32(*(v164 + 16)), vmulq_f32(*(v164 + 16), vsubq_f32(v173, v171)));
          v175 = vbslq_s8(v172, v174, vmulq_f32(v173, vrev64q_s32(v174)));
          v176 = vcvtq_f32_s32(vcvtq_s32_f32(v175));
          v178 = *(v164 + 224);
          v177 = *(v164 + 240);
          v179 = vbslq_s8(v172, v174, vsubq_f32(v175, vsubq_f32(v176, vandq_s8(v178, vcgtq_f32(v176, v175)))));
          v176.i64[0] = v179.i64[0];
          v176.i64[1] = vsubq_f32(v178, vextq_s8(*&v5, *&v179, 0xCuLL)).i64[1];
          v180 = vaddq_f32(v173, vmulq_f32(v177, vabsq_f32(v176)));
          v176.i64[0] = v179.i64[0];
          v176.i64[1] = v180.i64[1];
          v179.i64[1] = vdupq_laneq_s64(v180, 1).u64[0];
          v181 = vbslq_s8(v172, v176, vbslq_s8(vcgtq_f32(v177, vrev64q_s32(*(v164 + 32))), vrev64q_s32(v179), vextq_s8(v176, v176, 4uLL)));
          v182 = vextq_s8(v181, v181, 8uLL);
          v183 = vcvtq_f32_s32(vcvtq_s32_f32(v182));
          v181.i64[1] = vsubq_f32(v182, vsubq_f32(v183, vbslq_s8(vcgtq_f32(v183, v182), *&v173, 0))).i64[1];
          v184 = *(v164 + 272);
          v185 = vandq_s8(*(v164 + 256), v181);
          v186 = vandq_s8(v184, vcgeq_f32(vnegq_f32(v185), v168));
          v187 = *(v164 + 288);
          v188 = vbslq_s8(v187, v185, v186);
          v189 = vcvtq_f32_s32(vcvtq_s32_f32(v188));
          v190 = vbslq_s8(v187, vsubq_f32(v188, vsubq_f32(v189, vandq_s8(v184, vcgtq_f32(v189, v188)))), v186);
          v191 = vbslq_s8(v172, v190, vaddq_f32(vextq_s8(v190, v190, 4uLL), v190));
          v192 = vmaxq_f32(vminq_f32(vmulq_f32(*(v164 + 48), vsubq_f32(vrev64q_s32(v191), v191)), vrev64q_s32(*(v164 + 48))), v177);
          v193 = vcvtq_f32_s32(vcvtq_s32_f32(v192));
          v194 = vsubq_f32(v193, vbslq_s8(vcgtq_f32(v193, v192), v184, 0));
          v194.i32[1] = 0.5;
          v195 = vaddq_f32(vsubq_f32(vbslq_s8(v172, vaddq_f32(*(v164 + 304), v194), v194), v5), v11);
          v196 = vcvtq_s32_f32(v195);
          v195.i64[0] = vaddq_s32(v196, vcgtq_f32(vcvtq_f32_s32(v196), v195)).u64[0];
          v197 = *(*&a2[12] + 16 * (v195.i32[0] + v195.i32[1] * a2[13].i32[0]));
          v198 = *(v164 + 336);
          v199 = vmulq_f32(v197, *(v164 + 320));
          v200 = vdupq_lane_s32(*&vaddq_f32(vdupq_laneq_s32(v199, 2), vaddq_f32(v199, vdupq_lane_s32(*v199.f32, 1))), 0);
          v201 = *(v164 + 64);
          v202 = vminq_f32(vmaxq_f32(vaddq_f32(v200, vmulq_f32(v201, vsubq_f32(v197, v200))), v198), v184);
          v203 = vdupq_lane_s32(*(v164 + 96), 0);
          v204 = vbslq_s8(vcgtq_f32(v203, v198), v202, v197);
          v205 = vmulq_f32(*(v164 + 80), v204);
          v206 = vaddq_f32(v205, vextq_s8(v205, v205, 4uLL));
          v207 = vdupq_laneq_s32(vaddq_f32(v206, vdupq_lane_s32(*v206.f32, 1)), 3);
          v208 = vextq_s8(v204, v204, 4uLL);
          *(*&v7 + 16 * v13++) = vaddq_f32(v163, vmulq_n_f32(vsubq_f32(vbslq_s8(vceqq_f32(v203, v198), vmulq_laneq_f32(v208, v163, 3), vbslq_s8(*(v164 + 352), v163, vmulq_laneq_f32(vaddq_f32(v207, vmulq_f32(vextq_s8(v201, v201, 4uLL), vsubq_f32(v208, v207))), v163, 3))), v163), COERCE_FLOAT(*(v164 + 112))));
        }

        while (v13 < v6);
      }

      ++v4;
      *&v7 += v9;
      *&v8 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcGradientColorize::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  if (a3 == 1)
  {
    v5 = &HGRectInfinite;
  }

  else
  {
    if (!a3)
    {
      return a4;
    }

    v5 = &HGRectNull;
  }

  return *v5;
}

uint64_t HgcGradientColorize::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    *&a4.var0 = HGRenderer::GetDOD(a2, Input);
  }

  else if (a3)
  {
    *&a4.var0 = 0;
  }

  return *&a4.var0;
}

void HgcGradientColorize::HgcGradientColorize(HgcGradientColorize *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E15A0;
  operator new();
}

void HgcGradientColorize::~HgcGradientColorize(HGNode *this)
{
  *this = &unk_2871E15A0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcGradientColorize::~HgcGradientColorize(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGradientColorize::SetParameter(HgcGradientColorize *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientColorize::GetParameter(HgcGradientColorize *this, unsigned int a2, float *a3)
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

const char *HgcColorize::GetProgram(HgcColorize *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000365\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.w = dot(r1.xyz, half3(hg_Params[4].xyz));\n    r2.xyz = mix(half3(hg_Params[0].xyz), half3(hg_Params[1].xyz), r1.www);\n    r1.xyz = mix(r1.xyz, r2.xyz, half3(hg_Params[2].xyz));\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(float4(r0), float4(r1), hg_Params[3]);\n    return output;\n}\n//MD5=3a4870b4:dd71f1cd:5ca4f76a:0c031596\n//SIG=00400000:00000001:00000001:00000001:0000:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000333\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.w = dot(r1.xyz, hg_Params[4].xyz);\n    r2.xyz = mix(hg_Params[0].xyz, hg_Params[1].xyz, r1.www);\n    r1.xyz = mix(r1.xyz, r2.xyz, hg_Params[2].xyz);\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(r0, r1, hg_Params[3]);\n    return output;\n}\n//MD5=980d7def:0d85c9e4:540ce630:ff0d306b\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003a9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.w = dot(r1.xyz, hg_ProgramLocal4.xyz);\n    r2.xyz = mix(hg_ProgramLocal0.xyz, hg_ProgramLocal1.xyz, r1.www);\n    r1.xyz = mix(r1.xyz, r2.xyz, hg_ProgramLocal2.xyz);\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    gl_FragColor = mix(r0, r1, hg_ProgramLocal3);\n}\n//MD5=fded8519:04e80645:c2334220:c7e1904c\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA79E20(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA79F20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA79F60()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA79F58);
}

uint64_t HgcColorize::BindTexture(HgcColorize *this, HGHandler *a2, int a3)
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

uint64_t HgcColorize::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a2 + 144))(a2, 4, a1[51] + 64, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcColorize::RenderTile(uint64_t a1, uint64_t a2)
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
          v13 = *(v6 + v9);
          v12 = *(v6 + v9 + 16);
          v14 = *(v6 + v9 + 32);
          v15 = *(a1 + 408);
          v17 = *(v15 + 64);
          v16 = *(v15 + 80);
          v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
          v19 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v16);
          v20 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
          v22 = *(v15 + 96);
          v21 = *(v15 + 112);
          v23 = vmulq_f32(vrecpeq_f32(v18), v22);
          v24 = vmulq_f32(vrecpeq_f32(v19), v22);
          v25 = vmulq_f32(vrecpeq_f32(v20), v22);
          v26 = vmulq_f32(v13, vmulq_f32(v23, vrecpsq_f32(v23, v18)));
          v27 = vmulq_f32(v12, vmulq_f32(v24, vrecpsq_f32(v24, v19)));
          v28 = vmulq_f32(v14, vmulq_f32(v25, vrecpsq_f32(v25, v20)));
          v29 = vmulq_f32(v26, v17);
          v30 = vmulq_f32(v27, v17);
          v31 = vmulq_f32(v17, v28);
          v32 = vbslq_s8(v21, vaddq_f32(vrev64q_s32(v29), vaddq_f32(vextq_s8(v29, v29, 4uLL), vextq_s8(v29, v29, 8uLL))), v26);
          v33 = vbslq_s8(v21, vaddq_f32(vrev64q_s32(v30), vaddq_f32(vextq_s8(v30, v30, 4uLL), vextq_s8(v30, v30, 8uLL))), v27);
          v34 = vbslq_s8(v21, vaddq_f32(vrev64q_s32(v31), vaddq_f32(vextq_s8(v31, v31, 4uLL), vextq_s8(v31, v31, 8uLL))), v28);
          v35 = vsubq_f32(*(v15 + 16), *v15);
          v36 = vsubq_f32(vaddq_f32(*v15, vmulq_laneq_f32(v35, v32, 3)), v32);
          v37 = vsubq_f32(vaddq_f32(*v15, vmulq_laneq_f32(v35, v33, 3)), v33);
          v38 = *(v15 + 32);
          v39 = *(v15 + 48);
          v40 = vaddq_f32(v14, vmulq_f32(v39, vsubq_f32(vbslq_s8(v21, v14, vmulq_laneq_f32(vbslq_s8(v21, v14, vaddq_f32(vmulq_f32(v38, vsubq_f32(vaddq_f32(*v15, vmulq_laneq_f32(v35, v34, 3)), v34)), v34)), v14, 3)), v14)));
          v41 = (v5 + v9);
          *v41 = vaddq_f32(v13, vmulq_f32(v39, vsubq_f32(vbslq_s8(v21, v13, vmulq_laneq_f32(vbslq_s8(v21, v13, vaddq_f32(vmulq_f32(v38, v36), v32)), v13, 3)), v13)));
          v41[1] = vaddq_f32(v12, vmulq_f32(v39, vsubq_f32(vbslq_s8(v21, v12, vmulq_laneq_f32(vbslq_s8(v21, v12, vaddq_f32(vmulq_f32(v38, v37), v33)), v12, 3)), v12)));
          v41[2] = v40;
          v10 += 3;
          v9 += 48;
        }
      }

      if (v10 < v4)
      {
        do
        {
          v42 = *(v6 + 16 * v10);
          v43 = *(a1 + 408);
          v44 = vmaxq_f32(vdupq_laneq_s32(v42, 3), *(v43 + 80));
          v45 = *(v43 + 112);
          v46 = vmulq_f32(vrecpeq_f32(v44), *(v43 + 96));
          v47 = vmulq_f32(v42, vmulq_f32(v46, vrecpsq_f32(v46, v44)));
          v48 = vmulq_f32(*(v43 + 64), v47);
          v49 = vbslq_s8(v45, vaddq_f32(vrev64q_s32(v48), vaddq_f32(vextq_s8(v48, v48, 4uLL), vextq_s8(v48, v48, 8uLL))), v47);
          *(v5 + 16 * v10++) = vaddq_f32(v42, vmulq_f32(*(v43 + 48), vsubq_f32(vbslq_s8(v45, v42, vmulq_laneq_f32(vbslq_s8(v45, v42, vaddq_f32(vmulq_f32(*(v43 + 32), vsubq_f32(vaddq_f32(*v43, vmulq_laneq_f32(vsubq_f32(*(v43 + 16), *v43), v49, 3)), v49)), v49)), v42, 3)), v42)));
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

uint64_t HgcColorize::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcColorize::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcColorize::HgcColorize(HgcColorize *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E1808;
  operator new();
}

void HgcColorize::~HgcColorize(HGNode *this)
{
  *this = &unk_2871E1808;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);
}

{
  HgcColorize::~HgcColorize(this);

  HGObject::operator delete(v1);
}

uint64_t HgcColorize::SetParameter(HgcColorize *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      v9 = *(this + 51);
      if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a4 || *(v9 + 24) != a5 || *(v9 + 28) != a6)
      {
        *(v9 + 16) = a3.n128_u32[0];
        *(v9 + 20) = a4;
        *(v9 + 24) = a5;
        *(v9 + 28) = a6;
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
        if (*(v10 + 32) != a3.n128_f32[0] || *(v10 + 36) != a3.n128_f32[0] || *(v10 + 40) != a3.n128_f32[0] || *(v10 + 44) != 0.0)
        {
          v11 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
          v11.i32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          *(v10 + 32) = v11;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v10 + 128) = a3;
          goto LABEL_32;
        }

        return 0;
      case 3:
        v12 = *(this + 51);
        if (*(v12 + 48) != a3.n128_f32[0] || *(v12 + 52) != a3.n128_f32[0] || *(v12 + 56) != a3.n128_f32[0] || *(v12 + 60) != a3.n128_f32[0])
        {
          v13 = vdupq_lane_s32(a3.n128_u64[0], 0);
          a3.n128_f32[1] = a4;
          *(v12 + 48) = v13;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v12 + 144) = a3;
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

float HgcColorize::GetParameter(HgcColorize *this, int a2, float *a3)
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
        *a3 = v6[32];
        a3[1] = v6[33];
        a3[2] = v6[34];
        v4 = v6 + 35;
        break;
      case 3:
        v7 = *(this + 51);
        *a3 = v7[36];
        a3[1] = v7[37];
        a3[2] = v7[38];
        v4 = v7 + 39;
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

const char *HgcTint::GetProgram(HgcTint *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000449\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 2.000000000, 0.5000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.w = dot(r0.xyz, half3(hg_Params[2].xyz));\n    r2.x = c0.x - r1.w;\n    r1.xyz = r2.xxx*half3(hg_Params[0].xyz) + -r2.xxx;\n    r2.xyz = r1.xyz*c0.yyy + c0.xxx;\n    r1.xyz = r1.www*half3(hg_Params[0].xyz);\n    r1.xyz = r1.xyz*c0.yyy + -r2.xyz;\n    r1.w = half(r1.w < c0.z);\n    r1.xyz = r1.www*r1.xyz + r2.xyz;\n    r0.xyz = mix(r0.xyz, r1.xyz, half3(hg_Params[1].xyz));\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=04f0bcff:4d38e968:d07fa6e8:57df7249\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000423\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 2.000000000, 0.5000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.w = dot(r0.xyz, hg_Params[2].xyz);\n    r2.x = c0.x - r1.w;\n    r1.xyz = r2.xxx*hg_Params[0].xyz + -r2.xxx;\n    r2.xyz = r1.xyz*c0.yyy + c0.xxx;\n    r1.xyz = r1.www*hg_Params[0].xyz;\n    r1.xyz = r1.xyz*c0.yyy + -r2.xyz;\n    r1.w = float(r1.w < c0.z);\n    r1.xyz = r1.www*r1.xyz + r2.xyz;\n    r0.xyz = mix(r0.xyz, r1.xyz, hg_Params[1].xyz);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=c6570594:5405df00:ca65ea1b:4658b6d9\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000449\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 2.000000000, 0.5000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.w = dot(r0.xyz, hg_ProgramLocal2.xyz);\n    r2.x = c0.x - r1.w;\n    r1.xyz = r2.xxx*hg_ProgramLocal0.xyz + -r2.xxx;\n    r2.xyz = r1.xyz*c0.yyy + c0.xxx;\n    r1.xyz = r1.www*hg_ProgramLocal0.xyz;\n    r1.xyz = r1.xyz*c0.yyy + -r2.xyz;\n    r1.w = float(r1.w < c0.z);\n    r1.xyz = r1.www*r1.xyz + r2.xyz;\n    r0.xyz = mix(r0.xyz, r1.xyz, hg_ProgramLocal1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=a108dd96:02070503:886bbc19:11741088\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA7A9CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA7AACC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA7AB0C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA7AB04);
}

uint64_t HgcTint::BindTexture(HgcTint *this, HGHandler *a2, int a3)
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

uint64_t HgcTint::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcTint::RenderTile(uint64_t a1, uint64_t a2)
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
          v17 = *(v16 + 32);
          v18 = *(v16 + 48);
          v19 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v18);
          v20 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v18);
          v21 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v18);
          v22 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v18);
          v23 = *(v16 + 64);
          v24 = *(v16 + 80);
          v25 = vmulq_f32(vrecpeq_f32(v19), v23);
          v26 = vmulq_f32(vrecpeq_f32(v20), v23);
          v27 = vmulq_f32(vrecpeq_f32(v21), v23);
          v28 = vmulq_f32(vrecpeq_f32(v22), v23);
          v29 = vmulq_f32(v26, vrecpsq_f32(v26, v20));
          v30 = vandq_s8(v24, vmulq_f32(v25, vrecpsq_f32(v25, v19)));
          v32 = *(v16 + 96);
          v31 = *(v16 + 112);
          v33 = vmulq_f32(v12, vorrq_s8(v30, v32));
          v34 = vmulq_f32(v13, vorrq_s8(vandq_s8(v24, v29), v32));
          v35 = vmulq_f32(v14, vorrq_s8(vandq_s8(v24, vmulq_f32(v27, vrecpsq_f32(v27, v21))), v32));
          v36 = vmulq_f32(v15, vorrq_s8(vandq_s8(v24, vmulq_f32(v28, vrecpsq_f32(v28, v22))), v32));
          v37 = vmulq_f32(v17, v33);
          v38 = vmulq_f32(v17, v34);
          v39 = vmulq_f32(v17, v35);
          v40 = vmulq_f32(v17, v36);
          v41 = vaddq_f32(vextq_s8(v40, v40, 4uLL), vextq_s8(v40, v40, 8uLL));
          v42 = vrev64q_s32(v40);
          v43 = vaddq_f32(vrev64q_s32(v37), vaddq_f32(vextq_s8(v37, v37, 4uLL), vextq_s8(v37, v37, 8uLL)));
          v44 = vaddq_f32(vrev64q_s32(v38), vaddq_f32(vextq_s8(v38, v38, 4uLL), vextq_s8(v38, v38, 8uLL)));
          v45 = vaddq_f32(vrev64q_s32(v39), vaddq_f32(vextq_s8(v39, v39, 4uLL), vextq_s8(v39, v39, 8uLL)));
          v46 = vaddq_f32(v42, v41);
          v47 = vsubq_f32(v32, v43);
          v48 = vsubq_f32(v32, v44);
          v49 = vsubq_f32(v32, v45);
          v50 = vsubq_f32(v32, v46);
          v51 = *(v16 + 16);
          v52 = vbslq_s8(v31, v43, vsubq_f32(vmulq_laneq_f32(*v16, v47, 3), vdupq_laneq_s32(v47, 3)));
          v53 = vbslq_s8(v31, v44, vsubq_f32(vmulq_laneq_f32(*v16, v48, 3), vdupq_laneq_s32(v48, 3)));
          v54 = vbslq_s8(v31, v45, vsubq_f32(vmulq_laneq_f32(*v16, v49, 3), vdupq_laneq_s32(v49, 3)));
          v55 = vbslq_s8(v31, v46, vsubq_f32(vmulq_laneq_f32(*v16, v50, 3), vdupq_laneq_s32(v50, 3)));
          v56 = *(v16 + 128);
          v57 = *(v16 + 144);
          v58 = vaddq_f32(v56, vmulq_f32(v57, v52));
          v59 = vaddq_f32(v56, vmulq_f32(v57, v53));
          v60 = vaddq_f32(v56, vmulq_f32(v57, v54));
          v61 = vmulq_laneq_f32(*v16, v55, 3);
          v62 = vaddq_f32(v56, vmulq_f32(v57, v55));
          v63 = vsubq_f32(vmulq_laneq_f32(vbslq_s8(v31, v43, vmulq_laneq_f32(*v16, v52, 3)), v57, 2), v58);
          v64 = vsubq_f32(vmulq_laneq_f32(vbslq_s8(v31, v44, vmulq_laneq_f32(*v16, v53, 3)), v57, 2), v59);
          v65 = vsubq_f32(vmulq_laneq_f32(vbslq_s8(v31, v45, vmulq_laneq_f32(*v16, v54, 3)), v57, 2), v60);
          v66 = vsubq_f32(vmulq_laneq_f32(vbslq_s8(v31, v46, v61), v57, 2), v62);
          v67 = vbslq_s8(v31, vandq_s8(v56, vcgtq_f32(v57, vbslq_s8(v31, v43, v63))), v63);
          v68 = vbslq_s8(v31, vandq_s8(v56, vcgtq_f32(v57, vbslq_s8(v31, v44, v64))), v64);
          v69 = vbslq_s8(v31, vandq_s8(v56, vcgtq_f32(v57, vbslq_s8(v31, v45, v65))), v65);
          v70 = vbslq_s8(v31, vandq_s8(v56, vcgtq_f32(v57, vbslq_s8(v31, v46, v66))), v66);
          v71 = vbslq_s8(v31, v33, vaddq_f32(v33, vmulq_f32(v51, vsubq_f32(vaddq_f32(v58, vmulq_laneq_f32(v67, v67, 3)), v33))));
          v72 = vbslq_s8(v31, v34, vaddq_f32(v34, vmulq_f32(v51, vsubq_f32(vaddq_f32(v59, vmulq_laneq_f32(v68, v68, 3)), v34))));
          v73 = vbslq_s8(v31, v35, vaddq_f32(v35, vmulq_f32(v51, vsubq_f32(vaddq_f32(v60, vmulq_laneq_f32(v69, v69, 3)), v35))));
          v74 = vbslq_s8(v31, v36, vaddq_f32(v36, vmulq_f32(v51, vsubq_f32(vaddq_f32(v62, vmulq_laneq_f32(v70, v70, 3)), v36))));
          v75 = (v5 + v10);
          v75[-2] = vbslq_s8(v31, v33, vmulq_laneq_f32(v71, v71, 3));
          v75[-1] = vbslq_s8(v31, v34, vmulq_laneq_f32(v72, v72, 3));
          *v75 = vbslq_s8(v31, v35, vmulq_laneq_f32(v73, v73, 3));
          v75[1] = vbslq_s8(v31, v36, vmulq_laneq_f32(v74, v74, 3));
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v76 = *(v6 + 16 * v9);
          v77 = *(a1 + 408);
          v78 = vmaxq_f32(vdupq_laneq_s32(v76, 3), *(v77 + 48));
          v79 = vmulq_f32(vrecpeq_f32(v78), *(v77 + 64));
          v80 = vandq_s8(*(v77 + 80), vmulq_f32(v79, vrecpsq_f32(v79, v78)));
          v81 = *(v77 + 96);
          v82 = *(v77 + 112);
          v83 = vmulq_f32(v76, vorrq_s8(v80, v81));
          v84 = vmulq_f32(*(v77 + 32), v83);
          v85 = vaddq_f32(vrev64q_s32(v84), vaddq_f32(vextq_s8(v84, v84, 4uLL), vextq_s8(v84, v84, 8uLL)));
          v86 = vsubq_f32(v81, v85);
          v87 = vbslq_s8(v82, v85, vsubq_f32(vmulq_laneq_f32(*v77, v86, 3), vdupq_laneq_s32(v86, 3)));
          v88 = *(v77 + 128);
          v89 = *(v77 + 144);
          v90 = vmulq_laneq_f32(*v77, v87, 3);
          v91 = vaddq_f32(v88, vmulq_f32(v89, v87));
          v92 = vsubq_f32(vmulq_laneq_f32(vbslq_s8(v82, v85, v90), v89, 2), v91);
          v93 = vbslq_s8(v82, vandq_s8(v88, vcgtq_f32(v89, vbslq_s8(v82, v85, v92))), v92);
          v94 = vbslq_s8(v82, v83, vaddq_f32(v83, vmulq_f32(*(v77 + 16), vsubq_f32(vaddq_f32(v91, vmulq_laneq_f32(v93, v93, 3)), v83))));
          *(v5 + 16 * v9++) = vbslq_s8(v82, v83, vmulq_laneq_f32(v94, v94, 3));
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

uint64_t HgcTint::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcTint::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcTint::HgcTint(HgcTint *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E1A70;
  operator new();
}

void HgcTint::~HgcTint(HGNode *this)
{
  *this = &unk_2871E1A70;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40C3A7E6FCLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcTint::~HgcTint(this);

  HGObject::operator delete(v1);
}

uint64_t HgcTint::SetParameter(HgcTint *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 2)
  {
    v10 = *(this + 51);
    if (*(v10 + 32) != a3.n128_f32[0] || *(v10 + 36) != a4 || *(v10 + 40) != a5 || *(v10 + 44) != a6)
    {
      *(v10 + 32) = a3.n128_u32[0];
      *(v10 + 36) = a4;
      *(v10 + 40) = a5;
      *(v10 + 44) = a6;
      goto LABEL_19;
    }
  }

  else if (a2 == 1)
  {
    v8 = *(this + 51);
    if (*(v8 + 16) != a3.n128_f32[0] || *(v8 + 20) != a3.n128_f32[0] || *(v8 + 24) != a3.n128_f32[0] || *(v8 + 28) != 0.0)
    {
      v9 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v9.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *(v8 + 16) = v9;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v8 + 160) = a3;
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

uint64_t HgcTint::GetParameter(HgcTint *this, int a2, float *a3)
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
      *a3 = v5[40];
      a3[1] = v5[41];
      a3[2] = v5[42];
      v4 = v5 + 43;
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

const char *HgcBadTVNoise::GetProgram(HgcBadTVNoise *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000c0a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.5000000000, -1.000000000, 0.000000000);\n    const half4 c1 = half4(9.999999975e-07, 3.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    float4 s0, s1, s2, s3;\n    FragmentOut output;\n\n    s0.x = dot(frag._texCoord0, hg_Params[3]);\n    s1.y = s0.x + hg_Params[6].y;\n    s0.y = float(c0.y)*hg_Params[9].x + s0.x;\n    s0.z = s0.y/hg_Params[9].x;\n    s0.w = floor(s0.z);\n    s0.w = -s0.w*hg_Params[9].x + s0.y;\n    s0.z = float(c0.y);\n    s0.xy = s0.zw + hg_Params[13].xy;\n    s0.xy = s0.xy*hg_Params[13].zw;\n    s1.x = (float) hg_Texture0.sample(hg_Sampler0, s0.xy).x;\n    s1.w = dot(frag._texCoord0, hg_Params[5]);\n    s1.z = dot(frag._texCoord0, hg_Params[4]);\n    r0.z = half(s1.x)*c0.x + c0.z;\n    r0.y = dot(half4(frag._texCoord0), half4(hg_Params[2]));\n    s1.x = float(r0.z)*hg_Params[8].x + float(r0.y);\n    r0.yzw = c0.www;\n    r0.x = half(hg_Params[11].x);\n    s0 = s1 - float4(r0);\n    s2 = s1 + float4(r0);\n    s3.x = dot(s0, hg_Params[0]);\n    s3.y = dot(s0, hg_Params[1]);\n    s3.xy = s3.xy + hg_Params[14].xy;\n    s3.xy = s3.xy*hg_Params[14].zw;\n    r0.z = (half) hg_Texture1.sample(hg_Sampler1, s3.xy).z;\n    r0.w = dot(half4(s1), half4(hg_Params[1]));\n    r0.y = dot(half4(s2), half4(hg_Params[1]));\n    r0.x = dot(half4(s2), half4(hg_Params[0]));\n    s1.x = dot(s1, hg_Params[0]);\n    s1.y = float(r0.w);\n    s0.xy = s1.xy + hg_Params[14].xy;\n    s0.xy = s0.xy*hg_Params[14].zw;\n    r1.yw = (half2) hg_Texture1.sample(hg_Sampler1, s0.xy).yw;\n    s3.xy = float2(r0.xy) + hg_Params[14].xy;\n    s3.xy = s3.xy*hg_Params[14].zw;\n    r0.x = (half) hg_Texture1.sample(hg_Sampler1, s3.xy).x;\n    r0.y = r1.y;\n    r2.x = fmax(r1.w, c1.x);\n    s1.xy = s1.xy + hg_Params[15].xy;\n    s1.xy = s1.xy*hg_Params[15].zw;\n    r1.xyz = (half3) hg_Texture2.sample(hg_Sampler2, s1.xy).xyz;\n    r2.xyz = r0.xyz/r2.xxx;\n    r2.xyz = r1.xyz*c0.xxx + r2.xyz;\n    r1.x = r0.w*half(hg_Params[10].y);\n    r1.x = fract(r1.x);\n    r1.x = clamp(r1.x*half(hg_Params[10].z) + -half(hg_Params[10].x), 0.00000h, 1.00000h);\n    r1.y = -r1.x - r1.x;\n    r2.xyz = r2.xyz + c0.zzz;\n    r2.w = r1.w;\n    r2.w = dot(r2, half4(hg_Params[12]));\n    r1.x = r1.x*r1.x;\n    r1.y = r1.y + c1.y;\n    r1.x = r1.x*r1.y;\n    r1.x = mix(half(hg_Params[10].w), -c0.z, r1.x);\n    r2.xyz = mix(r2.www, r2.xyz, half3(hg_Params[7].xyz));\n    s2.xyz = float3(r2.xyz)*float3(r1.xxx);\n    output.color0.xyz = float3(r1.www)*s2.xyz;\n    output.color0.w = float(r1.w);\n    return output;\n}\n//MD5=498cabae:86511759:b43e45ef:926b0e9e\n//SIG=00400000:00000000:00000000:00000007:0002:0010:0007:0000:0000:0000:0002:0000:0001:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000b11\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.5000000000, -1.000000000, 0.000000000);\n    const float4 c1 = float4(9.999999975e-07, 3.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.x = dot(frag._texCoord0, hg_Params[3]);\n    r1.y = r0.x + hg_Params[6].y;\n    r0.y = c0.y*hg_Params[9].x + r0.x;\n    r0.z = r0.y/hg_Params[9].x;\n    r0.w = floor(r0.z);\n    r0.w = -r0.w*hg_Params[9].x + r0.y;\n    r0.z = c0.y;\n    r0.xy = r0.zw + hg_Params[13].xy;\n    r0.xy = r0.xy*hg_Params[13].zw;\n    r1.x = hg_Texture0.sample(hg_Sampler0, r0.xy).x;\n    r1.w = dot(frag._texCoord0, hg_Params[5]);\n    r1.z = dot(frag._texCoord0, hg_Params[4]);\n    r0.z = r1.x*c0.x + c0.z;\n    r0.y = dot(frag._texCoord0, hg_Params[2]);\n    r1.x = r0.z*hg_Params[8].x + r0.y;\n    r0.yzw = c0.www;\n    r0.x = hg_Params[11].x;\n    r2 = r1 - r0;\n    r0 = r1 + r0;\n    r3.x = dot(r2, hg_Params[0]);\n    r3.y = dot(r2, hg_Params[1]);\n    r3.xy = r3.xy + hg_Params[14].xy;\n    r3.xy = r3.xy*hg_Params[14].zw;\n    r3.z = hg_Texture1.sample(hg_Sampler1, r3.xy).z;\n    r3.w = dot(r1, hg_Params[1]);\n    r3.y = dot(r0, hg_Params[1]);\n    r3.x = dot(r0, hg_Params[0]);\n    r1.x = dot(r1, hg_Params[0]);\n    r1.y = r3.w;\n    r2.xy = r1.xy + hg_Params[14].xy;\n    r2.xy = r2.xy*hg_Params[14].zw;\n    r2.yw = hg_Texture1.sample(hg_Sampler1, r2.xy).yw;\n    r0.xy = r3.xy + hg_Params[14].xy;\n    r0.xy = r0.xy*hg_Params[14].zw;\n    r3.x = hg_Texture1.sample(hg_Sampler1, r0.xy).x;\n    r3.y = r2.y;\n    r0.x = fmax(r2.w, c1.x);\n    r1.xy = r1.xy + hg_Params[15].xy;\n    r1.xy = r1.xy*hg_Params[15].zw;\n    r2.xyz = hg_Texture2.sample(hg_Sampler2, r1.xy).xyz;\n    r0.xyz = r3.xyz/r0.xxx;\n    r0.xyz = r2.xyz*c0.xxx + r0.xyz;\n    r2.x = r3.w*hg_Params[10].y;\n    r2.x = fract(r2.x);\n    r2.x = clamp(r2.x*hg_Params[10].z + -hg_Params[10].x, 0.00000f, 1.00000f);\n    r2.y = -r2.x - r2.x;\n    r0.xyz = r0.xyz + c0.zzz;\n    r0.w = r2.w;\n    r0.w = dot(r0, hg_Params[12]);\n    r2.x = r2.x*r2.x;\n    r2.y = r2.y + c1.y;\n    r2.x = r2.x*r2.y;\n    r2.x = mix(hg_Params[10].w, -c0.z, r2.x);\n    r0.xyz = mix(r0.www, r0.xyz, hg_Params[7].xyz);\n    r0.xyz = r0.xyz*r2.xxx;\n    output.color0.xyz = r2.www*r0.xyz;\n    output.color0.w = r2.w;\n    return output;\n}\n//MD5=0c2451b2:c060efc8:22fe2a90:433534a4\n//SIG=00000000:00000000:00000000:00000000:0002:0010:0004:0000:0000:0000:0002:0000:0001:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000ce7\n"
           "#ifndef GL_ES\n"
           "#define lowp\n"
           "#define mediump\n"
           "#define highp\n"
           "#endif\n"
           "#define defaultp mediump\n"
           "uniform defaultp sampler2D hg_Texture0;\n"
           "uniform defaultp sampler2D hg_Texture1;\n"
           "uniform defaultp sampler2D hg_Texture2;\n"
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
           "uniform highp vec4 hg_ProgramLocal14;\n"
           "uniform highp vec4 hg_ProgramLocal15;\n"
           "varying highp vec4 hg_TexCoord0;\n"
           "void main()\n"
           "{\n"
           "    const highp vec4 c0 = vec4(2.000000000, 0.5000000000, -1.000000000, 0.000000000);\n"
           "    const highp vec4 c1 = vec4(9.999999975e-07, 3.000000000, 0.000000000, 0.000000000);\n"
           "    highp vec4 r0, r1, r2, r3;\n"
           "\n"
           "    r0.x = dot(hg_TexCoord0, hg_ProgramLocal3);\n"
           "    r1.y = r0.x + hg_ProgramLocal6.y;\n"
           "    r0.y = c0.y*hg_ProgramLocal9.x + r0.x;\n"
           "    r0.z = r0.y/hg_ProgramLocal9.x;\n"
           "    r0.w = floor(r0.z);\n"
           "    r0.w = -r0.w*hg_ProgramLocal9.x + r0.y;\n"
           "    r0.z = c0.y;\n"
           "    r0.xy = r0.zw + hg_ProgramLocal13.xy;\n"
           "    r0.xy = r0.xy*hg_ProgramLocal13.zw;\n"
           "    r1.x = texture2D(hg_Texture0, r0.xy).x;\n"
           "    r1.w = dot(hg_TexCoord0, hg_ProgramLocal5);\n"
           "    r1.z = dot(hg_TexCoord0, hg_ProgramLocal4);\n"
           "    r0.z = r1.x*c0.x + c0.z;\n"
           "    r0.y = dot(hg_TexCoord0, hg_ProgramLocal2);\n"
           "    r1.x = r0.z*hg_ProgramLocal8.x + r0.y;\n"
           "    r0.yzw = c0.www;\n"
           "    r0.x = hg_ProgramLocal11.x;\n"
           "    r2 = r1 - r0;\n"
           "    r0 = r1 + r0;\n"
           "    r3.x = dot(r2, hg_ProgramLocal0);\n"
           "    r3.y = dot(r2, hg_ProgramLocal1);\n"
           "    r3.xy = r3.xy + hg_ProgramLocal14.xy;\n"
           "    r3.xy = r3.xy*hg_ProgramLocal14.zw;\n"
           "    r3.z = texture2D(hg_Texture1, r3.xy).z;\n"
           "    r3.w = dot(r1, hg_ProgramLocal1);\n"
           "    r3.y = dot(r0, hg_ProgramLocal1);\n"
           "    r3.x = dot(r0, hg_ProgramLocal0);\n"
           "    r1.x = dot(r1, hg_ProgramLocal0);\n"
           "    r1.y = r3.w;\n"
           "    r2.xy = r1.xy + hg_ProgramLocal14.xy;\n"
           "    r2.xy = r2.xy*hg_ProgramLocal14.zw;\n"
           "    r2.yw = texture2D(hg_Texture1, r2.xy).yw;\n"
           "    r0.xy = r3.xy + hg_ProgramLocal14.xy;\n"
           "    r0.xy = r0.xy*hg_ProgramLocal14.zw;\n"
           "    r3.x = texture2D(hg_Texture1, r0.xy).x;\n"
           "    r3.y = r2.y;\n"
           "    r0.x = max(r2.w, c1.x);\n"
           "    r1.xy = r1.xy + hg_ProgramLocal15.xy;\n"
           "    r1.xy = r1.xy*hg_ProgramLocal15.zw;\n"
           "    r2.xyz = texture2D(hg_Texture2, r1.xy).xyz;\n"
           "    r0.xyz = r3.xyz/r0.xxx;\n"
           "    r0.xyz = r2.xyz*c0.xxx + r0.xyz;\n"
           "    r2.x = r3.w*hg_ProgramLocal10.y;\n"
           "    r2.x = fract(r2.x);\n"
           "    r2.x = clamp(r2.x*hg_ProgramLocal10.z + -hg_ProgramLocal10.x, 0.00000, 1.00000);\n"
           "    r2.y = -r2.x - r2.x;\n"
           "    r0.xyz = r0.xyz + c0.zzz;\n"
           "    r0.w = r2.w;\n"
           "    r0.w = dot(r0, hg_ProgramLocal12);\n"
           "    r2.x = r2.x*r2.x;\n"
           "    r2.y = r2.y + c1.y;\n"
           "    r2.x = r2.x*r2.y;\n"
           "    r2.x = mix(hg_ProgramLocal10.w, -c0.z, r2.x);\n"
           "    r0.xyz = mix(r0.www, r0.xyz, hg_ProgramLocal7.xyz);\n"
           "    r0.xyz = r0.xyz*r2.xxx;\n"
           "    gl_FragColor.xyz = r2.www*r0.xyz;\n"
           "    gl_FragColor.w = r2.w;\n"
           "}\n"
           "//MD5=03a35758:837e8af4:ecd5aa3b:2dbff166\n"
           "//SIG=00000000:00000000:00000000:00000000:0002:0010:0004:0000:0000:0000:0000:0000:0001:03:0:1:0\n";
  }
}

void sub_25FA7B58C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA7B80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA7B87C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA7B874);
}

uint64_t HgcBadTVNoise::BindTexture(uint64_t a1, uint64_t a2, int a3)
{
  if (a3 == 2)
  {
    v11 = (*(**(a2 + 144) + 128))(*(a2 + 144), 46);
    v7.n128_f32[0] = *(a2 + 240);
    v8.n128_f32[0] = *(a2 + 244);
    if (v11)
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

    v13 = a2;
    v14 = 15;
  }

  else if (a3 == 1)
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

    v13 = a2;
    v14 = 14;
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

    v13 = a2;
    v14 = 13;
  }

  v9(v13, v14, v7, v8, v5, v6);
  return 0;
}

uint64_t HgcBadTVNoise::Bind(HgcBadTVNoise *this, HGHandler *a2)
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

uint64_t HgcBadTVNoise::RenderTile(HgcBadTVNoise *this, HGTile *a2)
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
          v25 = vrev64q_s32(vaddq_f32(v23, vextq_s8(v23, v23, 8uLL)));
          v26 = vrev64q_s32(vaddq_f32(v24, vextq_s8(v24, v24, 8uLL)));
          v27 = *(v19 + 144);
          v28 = *(v19 + 208);
          v29 = *(v19 + 224);
          v30 = vmulq_n_f32(v28, *v27.i32);
          v31 = vaddq_f32(v30, v25);
          v32 = vaddq_f32(v30, v26);
          v33 = vextq_s8(v27, v27, 8uLL);
          v34 = vminq_f32(vmaxq_f32(vrecpeq_f32(v33), v28), v29);
          v35 = vminq_f32(vmaxq_f32(vmulq_f32(v34, vrecpsq_f32(v33, v34)), v28), v29);
          v36 = vmulq_f32(v35, vrecpsq_f32(v33, v35));
          v37.i64[0] = v31.i64[0];
          v37.i64[1] = vdupq_laneq_s64(vmulq_lane_f32(v36, *v31.f32, 1), 1).u64[0];
          v38 = vrev64q_s32(v37);
          v37.i64[0] = v32.i64[0];
          v37.i64[1] = vdupq_laneq_s64(vmulq_lane_f32(v36, *v32.f32, 1), 1).u64[0];
          v39 = vrev64q_s32(v37);
          v40 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
          v41 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
          v42 = vsubq_f32(v40, vbslq_s8(vcgtq_f32(v40, v38), v28, 0));
          v43 = vsubq_f32(v41, vbslq_s8(vcgtq_f32(v41, v39), v28, 0));
          v44 = vextq_s8(v42, v31, 8uLL);
          v31.i32[3] = v42.i32[3];
          v45 = vextq_s8(v43, v32, 8uLL);
          v32.i32[3] = v43.i32[3];
          v46 = vsubq_f32(v44, vmulq_n_f32(v31, *v27.i32));
          v47 = vsubq_f32(v45, vmulq_n_f32(v32, *v27.i32));
          v46.i32[2] = 0.5;
          v47.i32[2] = 0.5;
          v48 = vextq_s8(v47, v47, 8uLL);
          v49 = *(a2 + 22);
          v50 = vsubq_f32(vextq_s8(v46, v46, 8uLL), v9);
          v51 = *(a2 + 10);
          if (v5)
          {
            v52 = vaddq_s32(vcvtq_s32_f32(v50), vcltzq_f32(v50));
            v53 = vsubq_f32(v50, vcvtq_f32_s32(v52)).u64[0];
            v54 = vsubq_f32(v48, v9);
            v55 = vaddq_s32(vcvtq_s32_f32(v54), vcltzq_f32(v54));
            v56 = vsubq_f32(v54, vcvtq_f32_s32(v55)).u64[0];
            *v52.i8 = vmla_s32(vzip1_s32(*v52.i8, *v55.i8), vzip2_s32(*v52.i8, *v55.i8), vdup_n_s32(v49));
            v57 = (v51 + 16 * v52.i32[0]);
            v58 = vaddq_f32(*v57, vmulq_n_f32(vsubq_f32(v57[1], *v57), v53.f32[0]));
            v59 = vaddq_f32(v58, vmulq_lane_f32(vsubq_f32(vaddq_f32(v57[v49], vmulq_n_f32(vsubq_f32(v57[v49 + 1], v57[v49]), v53.f32[0])), v58), v53, 1));
            v60 = (v51 + 16 * v52.i32[1]);
            v61 = vaddq_f32(*v60, vmulq_n_f32(vsubq_f32(v60[1], *v60), v56.f32[0]));
            v62 = vaddq_f32(v61, vmulq_lane_f32(vsubq_f32(vaddq_f32(v60[v49], vmulq_n_f32(vsubq_f32(v60[v49 + 1], v60[v49]), v56.f32[0])), v61), v56, 1));
          }

          else
          {
            v63 = vaddq_f32(v50, v13);
            v64 = vcvtq_s32_f32(v63);
            v65 = vaddq_f32(vsubq_f32(v48, v9), v13);
            v66 = vcvtq_s32_f32(v65);
            *v63.f32 = vadd_s32(*v64.i8, *&vcgtq_f32(vcvtq_f32_s32(v64), v63));
            *v65.f32 = vadd_s32(*v66.i8, *&vcgtq_f32(vcvtq_f32_s32(v66), v65));
            *v65.f32 = vmla_s32(vzip1_s32(*v63.f32, *v65.f32), vzip2_s32(*v63.f32, *v65.f32), vdup_n_s32(v49));
            v67 = v65.i32[1];
            v59 = *(v51 + 16 * v65.i32[0]);
            v62 = *(v51 + 16 * v67);
          }

          v68 = *(v19 + 96);
          v69 = vaddq_f32(v68, v25);
          v70 = vaddq_f32(v68, v26);
          v71 = *(v19 + 240);
          v72 = *(v19 + 256);
          v73.i64[0] = vbslq_s8(v71, v59, v69).u64[0];
          v70.i64[0] = vbslq_s8(v71, v62, v70).u64[0];
          v75 = *(v19 + 64);
          v74 = *(v19 + 80);
          v76 = vmulq_f32(v17, v74);
          v77 = vmulq_f32(v18, v74);
          v78 = vaddq_f32(v76, vextq_s8(v76, v76, 4uLL));
          v79 = vaddq_f32(v77, vextq_s8(v77, v77, 4uLL));
          v80 = vmulq_f32(v17, v75);
          v81 = vmulq_f32(v18, v75);
          v82 = vaddq_f32(v80, vextq_s8(v80, v80, 4uLL));
          v83 = vaddq_f32(v81, vextq_s8(v81, v81, 4uLL));
          v73.i64[1] = vaddq_f32(v78, vdupq_lane_s64(*&v78, 0)).i64[1];
          v70.i64[1] = vaddq_f32(v79, vdupq_lane_s64(*&v79, 0)).i64[1];
          v84 = vbslq_s8(v72, vaddq_f32(v82, vextq_s8(v82, v82, 8uLL)), v73);
          v85 = vbslq_s8(v72, vaddq_f32(v83, vextq_s8(v83, v83, 8uLL)), v70);
          v86 = *(v19 + 272);
          v87 = *(v19 + 288);
          v88 = vaddq_f32(v86, vmulq_f32(v87, vdupq_lane_s64(v84.i64[0], 0)));
          v89 = vaddq_f32(v86, vmulq_f32(v87, vdupq_lane_s64(v85.i64[0], 0)));
          v90 = *(v19 + 32);
          v91 = vmulq_f32(v17, v90);
          v92 = vmulq_f32(v18, v90);
          v93 = vaddq_f32(v91, vextq_s8(v91, v91, 4uLL));
          v94 = vaddq_f32(v92, vextq_s8(v92, v92, 4uLL));
          v95 = *(v19 + 128);
          v96 = vmulq_laneq_f32(v95, v88, 2);
          v88.i64[0] = vaddq_f32(v93, vdupq_laneq_s64(v93, 1)).u64[0];
          v93.i64[0] = vaddq_f32(v94, vdupq_laneq_s64(v94, 1)).u64[0];
          v97 = vmulq_laneq_f32(v95, v89, 2);
          v89.i64[0] = v93.i64[0];
          v98 = vbslq_s8(v71, vaddq_f32(vrev64q_s32(v88), v96), v84);
          v99 = vbslq_s8(v71, vaddq_f32(vrev64q_s32(v89), v97), v85);
          v100 = vandq_s8(*(v19 + 176), v71);
          v101 = vsubq_f32(v98, v100);
          v102 = vsubq_f32(v99, v100);
          v103 = *v19;
          v104 = *(v19 + 16);
          v105 = vmulq_f32(*v19, v101);
          v106 = vmulq_f32(*v19, v102);
          v107 = vaddq_f32(v105, vextq_s8(v105, v105, 4uLL));
          v108 = vaddq_f32(v106, vextq_s8(v106, v106, 4uLL));
          v109 = vmulq_f32(v104, v101);
          v110 = vmulq_f32(v104, v102);
          v111 = vaddq_f32(v109, vextq_s8(v109, v109, 4uLL));
          v112 = vaddq_f32(v110, vextq_s8(v110, v110, 4uLL));
          v113 = vbslq_s8(v71, vaddq_f32(v107, vextq_s8(v107, v107, 8uLL)), vaddq_f32(v111, vextq_s8(v111, v111, 8uLL)));
          v114 = vbslq_s8(v71, vaddq_f32(v108, vextq_s8(v108, v108, 8uLL)), vaddq_f32(v112, vextq_s8(v112, v112, 8uLL)));
          v115 = *(a2 + 26);
          v116 = vsubq_f32(v113, v9);
          v117 = *(a2 + 12);
          if (v5)
          {
            v118 = vaddq_s32(vcvtq_s32_f32(v116), vcltzq_f32(v116));
            v119 = vsubq_f32(v116, vcvtq_f32_s32(v118)).u64[0];
            v120 = vsubq_f32(v114, v9);
            v121 = vaddq_s32(vcvtq_s32_f32(v120), vcltzq_f32(v120));
            v120.i64[0] = vsubq_f32(v120, vcvtq_f32_s32(v121)).u64[0];
            *v118.i8 = vmla_s32(vzip1_s32(*v118.i8, *v121.i8), vzip2_s32(*v118.i8, *v121.i8), vdup_n_s32(v115));
            v122 = v118.i32[1];
            v123 = (v117 + 16 * v118.i32[0]);
            v124 = vaddq_f32(*v123, vmulq_n_f32(vsubq_f32(v123[1], *v123), v119.f32[0]));
            v125 = vaddq_f32(v124, vmulq_lane_f32(vsubq_f32(vaddq_f32(v123[v115], vmulq_n_f32(vsubq_f32(v123[v115 + 1], v123[v115]), v119.f32[0])), v124), v119, 1));
            v126 = (v117 + 16 * v122);
            v127 = vaddq_f32(*v126, vmulq_n_f32(vsubq_f32(v126[1], *v126), v120.f32[0]));
            v128 = vaddq_f32(v127, vmulq_lane_f32(vsubq_f32(vaddq_f32(v126[v115], vmulq_n_f32(vsubq_f32(v126[v115 + 1], v126[v115]), v120.f32[0])), v127), *v120.f32, 1));
          }

          else
          {
            v129 = vaddq_f32(v116, v13);
            v130 = vcvtq_s32_f32(v129);
            v131 = vaddq_f32(vsubq_f32(v114, v9), v13);
            v132 = vcvtq_s32_f32(v131);
            *v129.f32 = vadd_s32(*v130.i8, *&vcgtq_f32(vcvtq_f32_s32(v130), v129));
            *v131.f32 = vadd_s32(*v132.i8, *&vcgtq_f32(vcvtq_f32_s32(v132), v131));
            *v131.f32 = vmla_s32(vzip1_s32(*v129.f32, *v131.f32), vzip2_s32(*v129.f32, *v131.f32), vdup_n_s32(v115));
            v125 = *(v117 + 16 * v131.i32[0]);
            v128 = *(v117 + 16 * v131.i32[1]);
          }

          v133 = vmvnq_s8(v71);
          v134 = vmvnq_s8(v72);
          v135 = vaddq_f32(v100, v98);
          v136 = vmulq_f32(v104, v98);
          v137 = vmulq_f32(v104, v99);
          v138 = vaddq_f32(v136, vextq_s8(v136, v136, 4uLL));
          v139 = vaddq_f32(v137, vextq_s8(v137, v137, 4uLL));
          v140 = vaddq_f32(v100, v99);
          v141 = vorrq_s8(vandq_s8(v72, v125), vandq_s8(vaddq_f32(v138, vdupq_lane_s64(v138.i64[0], 0)), v134));
          v142 = vandq_s8(v72, v128);
          v143 = vandq_s8(vaddq_f32(v139, vdupq_lane_s64(v139.i64[0], 0)), v134);
          v144 = vmulq_f32(v104, v135);
          v145 = vmulq_f32(v104, v140);
          v146 = vaddq_f32(v144, vextq_s8(v144, v144, 4uLL));
          v147 = vaddq_f32(v145, vextq_s8(v145, v145, 4uLL));
          v148 = vorrq_s8(v142, v143);
          v143.i64[0] = vaddq_f32(v146, vdupq_laneq_s64(v146, 1)).u64[0];
          v147.i64[0] = vaddq_f32(v147, vdupq_laneq_s64(v147, 1)).u64[0];
          v149 = vmulq_f32(v103, v135);
          v150 = vmulq_f32(v103, v140);
          v151 = vaddq_f32(v149, vextq_s8(v149, v149, 4uLL));
          v152 = vaddq_f32(v150, vextq_s8(v150, v150, 4uLL));
          v153 = vaddq_f32(v152, vextq_s8(v152, v152, 8uLL));
          v143.i64[1] = v141.i64[1];
          v154 = vorrq_s8(vandq_s8(v143, v133), vandq_s8(v71, vaddq_f32(v151, vextq_s8(v151, v151, 8uLL))));
          v147.i64[1] = v148.i64[1];
          v155 = vorrq_s8(vandq_s8(v147, v133), vandq_s8(v71, v153));
          v156 = vmulq_f32(v103, v98);
          v157 = vmulq_f32(v103, v99);
          v158 = vaddq_f32(v156, vextq_s8(v156, v156, 4uLL));
          v159 = vaddq_f32(v157, vextq_s8(v157, v157, 4uLL));
          v160 = vorrq_s8(vandq_s8(vextq_s8(v154, v154, 8uLL), v133), vandq_s8(v71, vaddq_f32(v158, vextq_s8(v158, v158, 8uLL))));
          v161 = vorrq_s8(vandq_s8(vextq_s8(v155, v155, 8uLL), v133), vandq_s8(v71, vaddq_f32(v159, vextq_s8(v159, v159, 8uLL))));
          v162 = vsubq_f32(v160, v9);
          if (v5)
          {
            v163 = vaddq_s32(vcvtq_s32_f32(v162), vcltzq_f32(v162));
            v164 = vsubq_f32(v162, vcvtq_f32_s32(v163)).u64[0];
            v165 = vsubq_f32(v161, v9);
            v166 = vaddq_s32(vcvtq_s32_f32(v165), vcltzq_f32(v165));
            v167 = vsubq_f32(v165, vcvtq_f32_s32(v166)).u64[0];
            v168 = vdup_n_s32(v115);
            *v166.i8 = vmla_s32(vzip1_s32(*v163.i8, *v166.i8), vzip2_s32(*v163.i8, *v166.i8), v168);
            v169 = v166.i32[1];
            v170 = (v117 + 16 * v166.i32[0]);
            v171 = vaddq_f32(*v170, vmulq_n_f32(vsubq_f32(v170[1], *v170), v164.f32[0]));
            v172 = vaddq_f32(v171, vmulq_lane_f32(vsubq_f32(vaddq_f32(v170[v115], vmulq_n_f32(vsubq_f32(v170[v115 + 1], v170[v115]), v164.f32[0])), v171), v164, 1));
            v173 = (v117 + 16 * v169);
            v174 = vaddq_f32(*v173, vmulq_n_f32(vsubq_f32(v173[1], *v173), v167.f32[0]));
            v175 = vaddq_f32(v174, vmulq_lane_f32(vsubq_f32(vaddq_f32(v173[v115], vmulq_n_f32(vsubq_f32(v173[v115 + 1], v173[v115]), v167.f32[0])), v174), v167, 1));
            v176 = vsubq_f32(v154, v9);
            v177 = vaddq_s32(vcvtq_s32_f32(v176), vcltzq_f32(v176));
            v176.i64[0] = vsubq_f32(v176, vcvtq_f32_s32(v177)).u64[0];
            v178 = vsubq_f32(v155, v9);
            v179 = vaddq_s32(vcvtq_s32_f32(v178), vcltzq_f32(v178));
            v178.i64[0] = vsubq_f32(v178, vcvtq_f32_s32(v179)).u64[0];
            *v177.i8 = vmla_s32(vzip1_s32(*v177.i8, *v179.i8), vzip2_s32(*v177.i8, *v179.i8), v168);
            v180 = (v117 + 16 * v177.i32[0]);
            v181 = vaddq_f32(*v180, vmulq_n_f32(vsubq_f32(v180[1], *v180), v176.f32[0]));
            v181.i64[0] = vaddq_f32(v181, vmulq_lane_f32(vsubq_f32(vaddq_f32(v180[v115], vmulq_n_f32(vsubq_f32(v180[v115 + 1], v180[v115]), v176.f32[0])), v181), *v176.f32, 1)).u64[0];
            v182 = (v117 + 16 * v177.i32[1]);
            v183 = vaddq_f32(*v182, vmulq_n_f32(vsubq_f32(v182[1], *v182), v178.f32[0]));
            v183.i64[0] = vaddq_f32(v183, vmulq_lane_f32(vsubq_f32(vaddq_f32(v182[v115], vmulq_n_f32(vsubq_f32(v182[v115 + 1], v182[v115]), v178.f32[0])), v183), *v178.f32, 1)).u64[0];
          }

          else
          {
            v184 = vaddq_f32(v162, v13);
            v185 = vcvtq_s32_f32(v184);
            v165 = vsubq_f32(v161, v9);
            v186 = vaddq_f32(v165, v13);
            v187 = vcvtq_s32_f32(v186);
            *v184.f32 = vadd_s32(*v185.i8, *&vcgtq_f32(vcvtq_f32_s32(v185), v184));
            *v186.f32 = vadd_s32(*v187.i8, *&vcgtq_f32(vcvtq_f32_s32(v187), v186));
            *v187.i8 = vdup_n_s32(v115);
            *v186.f32 = vmla_s32(vzip1_s32(*v184.f32, *v186.f32), vzip2_s32(*v184.f32, *v186.f32), *v187.i8);
            v188 = v186.i32[1];
            v172 = *(v117 + 16 * v186.i32[0]);
            v175 = *(v117 + 16 * v188);
            v189 = vaddq_f32(vsubq_f32(v154, v9), v13);
            v190 = vcvtq_s32_f32(v189);
            v191 = vaddq_f32(vsubq_f32(v155, v9), v13);
            v192 = vcvtq_s32_f32(v191);
            *v191.f32 = vadd_s32(*v192.i8, *&vcgtq_f32(vcvtq_f32_s32(v192), v191));
            *v189.f32 = vadd_s32(*v190.i8, *&vcgtq_f32(vcvtq_f32_s32(v190), v189));
            *v189.f32 = vmla_s32(vzip1_s32(*v189.f32, *v191.f32), vzip2_s32(*v189.f32, *v191.f32), *v187.i8);
            v193 = v189.i32[1];
            v181 = *(v117 + 16 * v189.i32[0]);
            v183 = *(v117 + 16 * v193);
          }

          v194 = *(a2 + 30);
          v195 = *(a2 + 14);
          if (v5)
          {
            v196 = vaddq_s32(vcvtq_s32_f32(v162), vcltzq_f32(v162));
            v197 = vsubq_f32(v162, vcvtq_f32_s32(v196)).u64[0];
            v198 = vaddq_s32(vcvtq_s32_f32(v165), vcltzq_f32(v165));
            v199 = vsubq_f32(v165, vcvtq_f32_s32(v198)).u64[0];
            *v196.i8 = vmla_s32(vzip1_s32(*v196.i8, *v198.i8), vzip2_s32(*v196.i8, *v198.i8), vdup_n_s32(v194));
            v200 = (v195 + 16 * v196.i32[0]);
            v201 = vaddq_f32(*v200, vmulq_n_f32(vsubq_f32(v200[1], *v200), v197.f32[0]));
            v202 = vaddq_f32(v201, vmulq_lane_f32(vsubq_f32(vaddq_f32(v200[v194], vmulq_n_f32(vsubq_f32(v200[v194 + 1], v200[v194]), v197.f32[0])), v201), v197, 1));
            v203 = (v195 + 16 * v196.i32[1]);
            v204 = vaddq_f32(*v203, vmulq_n_f32(vsubq_f32(v203[1], *v203), v199.f32[0]));
            v205 = vaddq_f32(v204, vmulq_lane_f32(vsubq_f32(vaddq_f32(v203[v194], vmulq_n_f32(vsubq_f32(v203[v194 + 1], v203[v194]), v199.f32[0])), v204), v199, 1));
          }

          else
          {
            v206 = vaddq_f32(v162, v13);
            v207 = vcvtq_s32_f32(v206);
            v208 = vaddq_f32(v165, v13);
            v209 = vcvtq_s32_f32(v208);
            *v208.f32 = vadd_s32(*v209.i8, *&vcgtq_f32(vcvtq_f32_s32(v209), v208));
            *v206.f32 = vadd_s32(*v207.i8, *&vcgtq_f32(vcvtq_f32_s32(v207), v206));
            *v206.f32 = vmla_s32(vzip1_s32(*v206.f32, *v208.f32), vzip2_s32(*v206.f32, *v208.f32), vdup_n_s32(v194));
            v202 = *(v195 + 16 * v206.i32[0]);
            v205 = *(v195 + 16 * v206.i32[1]);
          }

          v181.i64[1] = v154.i64[1];
          v211 = *(v19 + 304);
          v210 = *(v19 + 320);
          v212 = vbslq_s8(v211, v172, v181);
          v183.i64[1] = v155.i64[1];
          v213 = vbslq_s8(v211, v175, v183);
          v214 = vbslq_s8(v210, v172, v202);
          v215 = vdupq_lane_s32(*&vmaxq_f32(vextq_s8(v172, v172, 0xCuLL), v87), 0);
          v216 = vdupq_lane_s32(*&vmaxq_f32(vextq_s8(v175, v175, 0xCuLL), v87), 0);
          v217 = vbslq_s8(v210, v175, v205);
          v218 = *(v19 + 336);
          v219 = *(v19 + 352);
          v220 = vmulq_f32(vrecpeq_f32(v216), v218);
          v221 = vmvnq_s8(v211);
          v222 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v215), v218), v219), v29);
          v223 = vminq_f32(vmaxq_f32(v220, v219), v29);
          v224 = vaddq_f32(vmulq_laneq_f32(v214, v87, 2), vmulq_f32(vmulq_f32(v222, vrecpsq_f32(v215, v222)), v212));
          v225 = vaddq_f32(vmulq_laneq_f32(v217, v87, 2), vmulq_f32(vmulq_f32(v223, vrecpsq_f32(v216, v223)), v213));
          v226 = *(v19 + 160);
          v227 = vrev64q_s32(v226);
          v228 = vmulq_laneq_f32(v227, v212, 3);
          v229 = vmulq_laneq_f32(v227, v213, 3);
          v227.i64[0] = v228.i64[0];
          v227.i64[1] = v214.i64[1];
          v216.i64[0] = v229.i64[0];
          v216.i64[1] = v217.i64[1];
          v230 = vcvtq_f32_s32(vcvtq_s32_f32(v227));
          v231 = vcvtq_f32_s32(vcvtq_s32_f32(v216));
          v228.i64[0] = vsubq_f32(v228, vsubq_f32(v230, vbslq_s8(vcgtq_f32(v230, v227), v86, 0))).u64[0];
          v229.i64[0] = vsubq_f32(v229, vsubq_f32(v231, vbslq_s8(vcgtq_f32(v231, v216), v86, 0))).u64[0];
          v228.i64[1] = v214.i64[1];
          v229.i64[1] = v217.i64[1];
          v228.i64[0] = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_laneq_f32(v228, v226, 2), v226), v28), v86).u64[0];
          v232.i64[0] = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_laneq_f32(v229, v226, 2), v226), v28), v86).u64[0];
          v228.i64[1] = v214.i64[1];
          v232.i64[1] = v217.i64[1];
          v233 = vorrq_s8(vandq_s8(vrev64q_s32(vsubq_f32(vnegq_f32(v228), v228)), v211), vandq_s8(v228, v221));
          v234 = vorrq_s8(vandq_s8(vrev64q_s32(vsubq_f32(vnegq_f32(v232), v232)), v211), vandq_s8(v232, v221));
          v235 = *(v19 + 368);
          v236 = *(v19 + 384);
          v237 = vsubq_f32(v224, v235);
          v238 = vsubq_f32(v225, v235);
          v239 = *(v19 + 192);
          v240 = vmulq_f32(v239, vbslq_s8(v210, v233, v237));
          v241 = vmulq_f32(v239, vbslq_s8(v210, v234, v238));
          v242 = vaddq_f32(v240, vextq_s8(v240, v240, 4uLL));
          v243 = vaddq_f32(v241, vextq_s8(v241, v241, 4uLL));
          v244 = vbslq_s8(v210, vaddq_f32(v242, vextq_s8(v242, v242, 8uLL)), v237);
          v245 = vbslq_s8(v210, vaddq_f32(v243, vextq_s8(v243, v243, 8uLL)), v238);
          v246 = vorrq_s8(vandq_s8(v71, vmulq_f32(v233, v233)), vandq_s8(v233, v133));
          v247 = vorrq_s8(vandq_s8(v71, vmulq_f32(v234, v234)), vandq_s8(v234, v133));
          v248 = vorrq_s8(vandq_s8(v211, vaddq_f32(v236, v246)), vandq_s8(v246, v221));
          v249 = vorrq_s8(vandq_s8(v211, vaddq_f32(v236, v247)), vandq_s8(v247, v221));
          v250 = vsubq_f32(v235, v226);
          v251 = vextq_s8(v250, v250, 0xCuLL);
          v252 = vextq_s8(v226, v226, 0xCuLL);
          v246.i64[0] = vaddq_f32(v252, vmulq_f32(v251, vmulq_lane_f32(v248, *v248.f32, 1))).u64[0];
          v252.i64[0] = vaddq_f32(v252, vmulq_f32(v251, vmulq_lane_f32(v249, *v249.f32, 1))).u64[0];
          v253 = vdupq_laneq_s32(v244, 3);
          v254 = vdupq_laneq_s32(v245, 3);
          v255 = *(v19 + 112);
          v246.i64[1] = v248.i64[1];
          v252.i64[1] = v249.i64[1];
          v256 = (v11 + 16 * v15);
          *v256 = vbslq_s8(v210, v246, vmulq_laneq_f32(vmulq_n_f32(vaddq_f32(v253, vmulq_f32(v255, vsubq_f32(v244, v253))), v246.f32[0]), v248, 3));
          v256[1] = vbslq_s8(v210, v252, vmulq_laneq_f32(vmulq_n_f32(vaddq_f32(v254, vmulq_f32(v255, vsubq_f32(v245, v254))), v252.f32[0]), v249, 3));
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v257 = *(this + 51);
        v258 = vmulq_f32(v17, *(v257 + 48));
        v259 = vaddq_f32(v258, vextq_s8(v258, v258, 4uLL));
        v260 = vrev64q_s32(vaddq_f32(v259, vextq_s8(v259, v259, 8uLL)));
        v261 = *(v257 + 144);
        v262 = *(v257 + 208);
        v263 = *(v257 + 224);
        v264 = vaddq_f32(vmulq_n_f32(v262, *v261.i32), v260);
        v265 = vextq_s8(v261, v261, 8uLL);
        v266 = vminq_f32(vmaxq_f32(vrecpeq_f32(v265), v262), v263);
        v267 = vminq_f32(vmaxq_f32(vmulq_f32(v266, vrecpsq_f32(v265, v266)), v262), v263);
        v265.i64[0] = vdupq_laneq_s64(vmulq_lane_f32(vmulq_f32(v267, vrecpsq_f32(v265, v267)), *v264.f32, 1), 1).u64[0];
        v267.i64[0] = v264.i64[0];
        v267.i64[1] = v265.i64[0];
        v268 = vrev64q_s32(v267);
        v269 = vcvtq_f32_s32(vcvtq_s32_f32(v268));
        v270 = vsubq_f32(v269, vbslq_s8(vcgtq_f32(v269, v268), v262, 0));
        v271 = vextq_s8(v270, v264, 8uLL);
        v264.i32[3] = v270.i32[3];
        v272 = vsubq_f32(v271, vmulq_n_f32(v264, *v261.i32));
        v272.i32[2] = 0.5;
        v273 = *(a2 + 22);
        v274 = vsubq_f32(vextq_s8(v272, v272, 8uLL), v9);
        v275 = *(a2 + 10);
        if (v5)
        {
          v276 = vaddq_s32(vcvtq_s32_f32(v274), vcltzq_f32(v274));
          v277 = vsubq_f32(v274, vcvtq_f32_s32(v276)).u64[0];
          v278 = (v275 + 16 * (v276.i32[0] + v276.i32[1] * v273));
          v279 = vaddq_f32(*v278, vmulq_n_f32(vsubq_f32(v278[1], *v278), v277.f32[0]));
          v280 = vaddq_f32(v279, vmulq_lane_f32(vsubq_f32(vaddq_f32(v278[v273], vmulq_n_f32(vsubq_f32(v278[v273 + 1], v278[v273]), v277.f32[0])), v279), v277, 1));
        }

        else
        {
          v281 = vaddq_f32(v274, v13);
          v282 = vcvtq_s32_f32(v281);
          v281.i64[0] = vaddq_s32(v282, vcgtq_f32(vcvtq_f32_s32(v282), v281)).u64[0];
          v280 = *(v275 + 16 * (v281.i32[0] + v281.i32[1] * v273));
        }

        v283 = vaddq_f32(*(v257 + 96), v260);
        v284 = *(v257 + 240);
        v285.i64[0] = vbslq_s8(v284, v280, v283).u64[0];
        v286 = vmulq_f32(v17, *(v257 + 80));
        v287 = vaddq_f32(v286, vextq_s8(v286, v286, 4uLL));
        v288 = vmulq_f32(v17, *(v257 + 64));
        v289 = vaddq_f32(v288, vextq_s8(v288, v288, 4uLL));
        v285.i64[1] = vaddq_f32(v287, vdupq_lane_s64(*&v287, 0)).i64[1];
        v290 = vbslq_s8(*(v257 + 256), vaddq_f32(v289, vextq_s8(v289, v289, 8uLL)), v285);
        v291 = *(v257 + 272);
        v292 = *(v257 + 288);
        v293 = vaddq_f32(v291, vmulq_f32(v292, vdupq_lane_s64(v290.i64[0], 0)));
        v294 = vmulq_f32(v17, *(v257 + 32));
        v295 = vaddq_f32(v294, vextq_s8(v294, v294, 4uLL));
        v296 = vmulq_laneq_f32(*(v257 + 128), v293, 2);
        v293.i64[0] = vaddq_f32(v295, vdupq_laneq_s64(v295, 1)).u64[0];
        v297 = vbslq_s8(v284, vaddq_f32(vrev64q_s32(v293), v296), v290);
        v298 = vandq_s8(*(v257 + 176), v284);
        v299 = vsubq_f32(v297, v298);
        v301 = *v257;
        v300 = *(v257 + 16);
        v302 = vmulq_f32(*v257, v299);
        v303 = vaddq_f32(v302, vextq_s8(v302, v302, 4uLL));
        v304 = vmulq_f32(v300, v299);
        v305 = vaddq_f32(v304, vextq_s8(v304, v304, 4uLL));
        v306 = *(a2 + 26);
        v307 = vsubq_f32(vbslq_s8(v284, vaddq_f32(v303, vextq_s8(v303, v303, 8uLL)), vaddq_f32(v305, vextq_s8(v305, v305, 8uLL))), v9);
        v308 = *(a2 + 12);
        if (v5)
        {
          v309 = vaddq_s32(vcvtq_s32_f32(v307), vcltzq_f32(v307));
          v310 = vsubq_f32(v307, vcvtq_f32_s32(v309)).u64[0];
          v311 = (v308 + 16 * (v309.i32[0] + v309.i32[1] * v306));
          v312 = vaddq_f32(*v311, vmulq_n_f32(vsubq_f32(v311[1], *v311), v310.f32[0]));
          v313 = vaddq_f32(v312, vmulq_lane_f32(vsubq_f32(vaddq_f32(v311[v306], vmulq_n_f32(vsubq_f32(v311[v306 + 1], v311[v306]), v310.f32[0])), v312), v310, 1));
        }

        else
        {
          v314 = vaddq_f32(v307, v13);
          v315 = vcvtq_s32_f32(v314);
          v314.i64[0] = vaddq_s32(v315, vcgtq_f32(vcvtq_f32_s32(v315), v314)).u64[0];
          v313 = *(v308 + 16 * (v314.i32[0] + v314.i32[1] * v306));
        }

        v316 = vmvnq_s8(v284);
        v317 = vaddq_f32(v298, v297);
        v318 = vmulq_f32(v300, v297);
        v319 = vaddq_f32(v318, vextq_s8(v318, v318, 4uLL));
        v320 = vmulq_f32(v300, v317);
        v321 = vaddq_f32(v320, vextq_s8(v320, v320, 4uLL));
        v321.i64[0] = vaddq_f32(v321, vdupq_laneq_s64(v321, 1)).u64[0];
        v322 = vmulq_f32(v301, v317);
        v323 = vaddq_f32(v322, vextq_s8(v322, v322, 4uLL));
        v321.i64[1] = vorrq_s8(vandq_s8(*(v257 + 256), v313), vandq_s8(vaddq_f32(v319, vdupq_lane_s64(*&v319, 0)), vmvnq_s8(*(v257 + 256)))).i64[1];
        v324 = vorrq_s8(vandq_s8(v321, v316), vandq_s8(v284, vaddq_f32(v323, vextq_s8(v323, v323, 8uLL))));
        v325 = vmulq_f32(v301, v297);
        v326 = vaddq_f32(v325, vextq_s8(v325, v325, 4uLL));
        v327 = vsubq_f32(vorrq_s8(vandq_s8(vextq_s8(v324, v324, 8uLL), v316), vandq_s8(v284, vaddq_f32(v326, vextq_s8(v326, v326, 8uLL)))), v9);
        if (v5)
        {
          v328 = vaddq_s32(vcvtq_s32_f32(v327), vcltzq_f32(v327));
          v336 = vsubq_f32(v324, v9);
          v329 = vaddq_s32(vcvtq_s32_f32(v336), vcltzq_f32(v336));
          v336.i64[0] = vsubq_f32(v336, vcvtq_f32_s32(v329)).u64[0];
          *v329.i8 = vmla_s32(vzip1_s32(*v328.i8, *v329.i8), vzip2_s32(*v328.i8, *v329.i8), vdup_n_s32(v306));
          v330 = v329.i32[1];
          v331 = (v308 + 16 * v329.i32[0]);
          v328.i64[0] = vsubq_f32(v327, vcvtq_f32_s32(v328)).u64[0];
          v332 = vaddq_f32(*v331, vmulq_n_f32(vsubq_f32(v331[1], *v331), *v328.i32));
          v333 = vaddq_f32(v332, vmulq_lane_f32(vsubq_f32(vaddq_f32(v331[v306], vmulq_n_f32(vsubq_f32(v331[v306 + 1], v331[v306]), *v328.i32)), v332), *v328.i8, 1));
          v334 = (v308 + 16 * v330);
          v335 = vaddq_f32(*v334, vmulq_n_f32(vsubq_f32(v334[1], *v334), v336.f32[0]));
          v336.i64[0] = vaddq_f32(v335, vmulq_lane_f32(vsubq_f32(vaddq_f32(v334[v306], vmulq_n_f32(vsubq_f32(v334[v306 + 1], v334[v306]), v336.f32[0])), v335), *v336.f32, 1)).u64[0];
        }

        else
        {
          v337 = vaddq_f32(v327, v13);
          v338 = vcvtq_s32_f32(v337);
          v339 = vaddq_f32(vsubq_f32(v324, v9), v13);
          v340 = vcvtq_s32_f32(v339);
          *v337.f32 = vadd_s32(*v338.i8, *&vcgtq_f32(vcvtq_f32_s32(v338), v337));
          *v338.i8 = vadd_s32(*v340.i8, *&vcgtq_f32(vcvtq_f32_s32(v340), v339));
          *v337.f32 = vmla_s32(vzip1_s32(*v337.f32, *v338.i8), vzip2_s32(*v337.f32, *v338.i8), vdup_n_s32(v306));
          v341 = v337.i32[1];
          v333 = *(v308 + 16 * v337.i32[0]);
          v336 = *(v308 + 16 * v341);
        }

        v342 = *(a2 + 30);
        v343 = *(a2 + 14);
        if (v5)
        {
          v344 = vaddq_s32(vcvtq_s32_f32(v327), vcltzq_f32(v327));
          v345 = vsubq_f32(v327, vcvtq_f32_s32(v344)).u64[0];
          v346 = (v343 + 16 * (v344.i32[0] + v344.i32[1] * v342));
          v347 = vaddq_f32(*v346, vmulq_n_f32(vsubq_f32(v346[1], *v346), v345.f32[0]));
          v348 = vaddq_f32(v347, vmulq_lane_f32(vsubq_f32(vaddq_f32(v346[v342], vmulq_n_f32(vsubq_f32(v346[v342 + 1], v346[v342]), v345.f32[0])), v347), v345, 1));
        }

        else
        {
          v349 = vaddq_f32(v327, v13);
          v350 = vcvtq_s32_f32(v349);
          v349.i64[0] = vaddq_s32(v350, vcgtq_f32(vcvtq_f32_s32(v350), v349)).u64[0];
          v348 = *(v343 + 16 * (v349.i32[0] + v349.i32[1] * v342));
        }

        v336.i64[1] = v324.i64[1];
        v352 = *(v257 + 304);
        v351 = *(v257 + 320);
        v353 = vbslq_s8(v352, v333, v336);
        v354 = vmaxq_f32(vextq_s8(v333, v333, 0xCuLL), v292).u64[0];
        v355 = vbslq_s8(v351, v333, v348);
        v356 = vdupq_lane_s32(v354, 0);
        v357 = vmvnq_s8(v352);
        v358 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v356), *(v257 + 336)), *(v257 + 352)), v263);
        v359 = vaddq_f32(vmulq_laneq_f32(v355, v292, 2), vmulq_f32(vmulq_f32(v358, vrecpsq_f32(v356, v358)), v353));
        v360 = *(v257 + 160);
        v361 = vmulq_laneq_f32(vrev64q_s32(v360), v353, 3);
        v356.i64[0] = v361.i64[0];
        v356.i64[1] = v355.i64[1];
        v362 = vcvtq_f32_s32(vcvtq_s32_f32(v356));
        v361.i64[0] = vsubq_f32(v361, vsubq_f32(v362, vbslq_s8(vcgtq_f32(v362, v356), v291, 0))).u64[0];
        v361.i64[1] = v355.i64[1];
        v363.i64[0] = vminq_f32(vmaxq_f32(vsubq_f32(vmulq_laneq_f32(v361, v360, 2), v360), v262), v291).u64[0];
        v363.i64[1] = v355.i64[1];
        v364 = vorrq_s8(vandq_s8(vrev64q_s32(vsubq_f32(vnegq_f32(v363), v363)), v352), vandq_s8(v363, v357));
        v365 = *(v257 + 368);
        v366 = vsubq_f32(v359, v365);
        v367 = vmulq_f32(*(v257 + 192), vbslq_s8(v351, v364, v366));
        v368 = vaddq_f32(v367, vextq_s8(v367, v367, 4uLL));
        v369 = vbslq_s8(v351, vaddq_f32(v368, vextq_s8(v368, v368, 8uLL)), v366);
        v370 = vorrq_s8(vandq_s8(v284, vmulq_f32(v364, v364)), vandq_s8(v364, v316));
        v371 = vorrq_s8(vandq_s8(v352, vaddq_f32(*(v257 + 384), v370)), vandq_s8(v370, v357));
        v372 = vsubq_f32(v365, v360);
        v373 = vmulq_f32(vextq_s8(v372, v372, 0xCuLL), vmulq_lane_f32(v371, *v371.f32, 1));
        v374 = vdupq_laneq_s32(v369, 3);
        v373.i64[0] = vaddq_f32(vextq_s8(v360, v360, 0xCuLL), v373).u64[0];
        v373.i64[1] = v371.i64[1];
        *(v11 + 16 * v15) = vbslq_s8(v351, v373, vmulq_laneq_f32(vmulq_n_f32(vaddq_f32(v374, vmulq_f32(*(v257 + 112), vsubq_f32(v369, v374))), v373.f32[0]), v371, 3));
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcBadTVNoise::GetDOD(HgcBadTVNoise *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 2)
  {
    if ((*(*this + 312))(this, a2) < 1)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  if (a3 > 1)
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

uint64_t HgcBadTVNoise::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 > 2)
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

void HgcBadTVNoise::HgcBadTVNoise(HgcBadTVNoise *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E1CD8;
  operator new();
}

void HgcBadTVNoise::~HgcBadTVNoise(HGNode *this)
{
  *this = &unk_2871E1CD8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019C028F0);
  }

  HGNode::~HGNode(this);
}

{
  HgcBadTVNoise::~HgcBadTVNoise(this);

  HGObject::operator delete(v1);
}

uint64_t HgcBadTVNoise::SetParameter(HgcBadTVNoise *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      *(*(this + 51) + 400) = a3;
      return v14;
    case 3:
      v14 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 51) + 416) = a3;
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
      v21[27] = a3;
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
      v12[28] = a3;
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

float HgcBadTVNoise::GetParameter(HgcBadTVNoise *this, int a2, float *a3)
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
      *a3 = v10[100];
      a3[1] = v10[101];
      a3[2] = v10[102];
      v4 = v10 + 103;
      goto LABEL_17;
    case 3:
      v11 = *(this + 51);
      *a3 = v11[104];
      a3[1] = v11[105];
      a3[2] = v11[106];
      v4 = v11 + 107;
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
      *a3 = v18[108];
      a3[1] = v18[109];
      a3[2] = v18[110];
      v4 = v18 + 111;
      goto LABEL_17;
    case 9:
      v9 = *(this + 51);
      *a3 = v9[112];
      a3[1] = v9[113];
      a3[2] = v9[114];
      v4 = v9 + 115;
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

const char *HgcPixellate::GetProgram(HgcPixellate *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000476\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0;\n    float4 s0, s1;\n    FragmentOut output;\n\n    r0.w = c0.w;\n    r0.xy = half2(frag._texCoord0.xy);\n    s0.x = dot(float3(r0.xyw), hg_Params[0].xyz);\n    s0.y = dot(float3(r0.xyw), hg_Params[1].xyz);\n    s0.xy = s0.xy - hg_Params[4].xy;\n    s0.xy = s0.xy*hg_Params[5].xx;\n    s0.xy = floor(s0.xy);\n    s0.xy = s0.xy + float2(c0.xx);\n    s0.xy = s0.xy*hg_Params[5].yy + hg_Params[4].xy;\n    s0.w = float(c0.w);\n    s1.x = dot(s0.xyw, hg_Params[2].xyz);\n    s1.y = dot(s0.xyw, hg_Params[3].xyz);\n    s1.xy = s1.xy + hg_Params[6].xy;\n    s1.xy = s1.xy*hg_Params[6].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    return output;\n}\n//MD5=0107f939:ef0cb262:11f4b0de:2cc04d20\n//SIG=00400000:00000000:00000000:00000001:0001:0007:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000043c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.w = c0.w;\n    r0.xy = frag._texCoord0.xy;\n    r1.x = dot(r0.xyw, hg_Params[0].xyz);\n    r1.y = dot(r0.xyw, hg_Params[1].xyz);\n    r1.xy = r1.xy - hg_Params[4].xy;\n    r1.xy = r1.xy*hg_Params[5].xx;\n    r1.xy = floor(r1.xy);\n    r1.xy = r1.xy + c0.xx;\n    r1.xy = r1.xy*hg_Params[5].yy + hg_Params[4].xy;\n    r1.w = c0.w;\n    r0.x = dot(r1.xyw, hg_Params[2].xyz);\n    r0.y = dot(r1.xyw, hg_Params[3].xyz);\n    r0.xy = r0.xy + hg_Params[6].xy;\n    r0.xy = r0.xy*hg_Params[6].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=440cbbda:b6a1b8d5:85aa1c1f:37511405\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000508\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1;\n\n    r0.w = c0.w;\n    r0.xy = hg_TexCoord0.xy;\n    r1.x = dot(r0.xyw, hg_ProgramLocal0.xyz);\n    r1.y = dot(r0.xyw, hg_ProgramLocal1.xyz);\n    r1.xy = r1.xy - hg_ProgramLocal4.xy;\n    r1.xy = r1.xy*hg_ProgramLocal5.xx;\n    r1.xy = floor(r1.xy);\n    r1.xy = r1.xy + c0.xx;\n    r1.xy = r1.xy*hg_ProgramLocal5.yy + hg_ProgramLocal4.xy;\n    r1.w = c0.w;\n    r0.x = dot(r1.xyw, hg_ProgramLocal2.xyz);\n    r0.y = dot(r1.xyw, hg_ProgramLocal3.xyz);\n    r0.xy = r0.xy + hg_ProgramLocal6.xy;\n    r0.xy = r0.xy*hg_ProgramLocal6.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=0b6d2b85:129e9ec3:f86fe2b2:4c57f63c\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA7DB5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA7DCDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA7DD2C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA7DD24);
}

uint64_t HgcPixellate::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcPixellate::Bind(HgcPixellate *this, HGHandler *a2)
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

uint64_t HgcPixellate::RenderTile(HgcPixellate *this, float32x4_t **a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
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
          v23 = *(this + 51);
          v25 = *(v23 + 96);
          v24 = *(v23 + 112);
          v26 = vextq_s8(v25, v25, 8uLL).u64[0];
          v19.i64[1] = v26;
          *v27.f32 = vqtbl1_s8(v19, *v24.f32);
          v28 = vextq_s8(v24, v24, 8uLL).u64[0];
          *&v27.u32[2] = vqtbl1_s8(v19, v28);
          v20.i64[1] = v26;
          *v29.f32 = vqtbl1_s8(v20, *v24.f32);
          *&v29.u32[2] = vqtbl1_s8(v20, v28);
          v21.i64[1] = v26;
          *v30.f32 = vqtbl1_s8(v21, *v24.f32);
          *&v30.u32[2] = vqtbl1_s8(v21, v28);
          v20.i64[0] = v22.i64[0];
          v20.i64[1] = v26;
          *v21.f32 = vqtbl1_s8(v20, *v24.f32);
          *&v21.u32[2] = vqtbl1_s8(v20, v28);
          v31 = *(v23 + 16);
          v32 = vmulq_f32(*v23, v27);
          v33 = vmulq_f32(*v23, v29);
          v34 = vmulq_f32(*v23, v30);
          v35 = vmulq_f32(*v23, v21);
          v36 = vaddq_f32(vextq_s8(v32, v32, 8uLL), vaddq_f32(v32, vrev64q_s32(v32)));
          v37 = vaddq_f32(vextq_s8(v35, v35, 8uLL), vaddq_f32(v35, vrev64q_s32(v35)));
          v38 = vmulq_f32(v31, v27);
          v39 = vmulq_f32(v31, v29);
          v40 = vmulq_f32(v31, v30);
          v41 = vmulq_f32(v31, v21);
          v42 = vaddq_f32(vextq_s8(v39, v39, 4uLL), vaddq_f32(v39, vrev64q_s32(v39)));
          v43 = *(v23 + 128);
          v44 = *(v23 + 144);
          v45 = vbslq_s8(v43, v36, vaddq_f32(vextq_s8(v38, v38, 4uLL), vaddq_f32(v38, vrev64q_s32(v38))));
          v46 = vbslq_s8(v43, vaddq_f32(vextq_s8(v33, v33, 8uLL), vaddq_f32(v33, vrev64q_s32(v33))), v42);
          v47 = vbslq_s8(v43, vaddq_f32(vextq_s8(v34, v34, 8uLL), vaddq_f32(v34, vrev64q_s32(v34))), vaddq_f32(vextq_s8(v40, v40, 4uLL), vaddq_f32(v40, vrev64q_s32(v40))));
          v48 = vbslq_s8(v43, v37, vaddq_f32(vextq_s8(v41, v41, 4uLL), vaddq_f32(v41, vrev64q_s32(v41))));
          v49 = *(v23 + 64);
          v50 = *(v23 + 80);
          v51 = vmulq_n_f32(vsubq_f32(v45, v49), *&v50);
          v52 = vmulq_n_f32(vsubq_f32(v46, v49), *&v50);
          v53 = vmulq_n_f32(vsubq_f32(v47, v49), *&v50);
          v54 = vmulq_n_f32(vsubq_f32(v48, v49), *&v50);
          v55 = vcvtq_f32_s32(vcvtq_s32_f32(v51));
          v56 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
          v57 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
          v58 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
          v59 = vandq_s8(v25, vcgtq_f32(v55, v51));
          v60 = vandq_s8(v25, vcgtq_f32(v56, v52));
          v61 = vandq_s8(v25, vcgtq_f32(v57, v53));
          v62 = vandq_s8(v25, vcgtq_f32(v58, v54));
          v63 = vaddq_f32(v49, vmulq_lane_f32(vaddq_f32(v44, vsubq_f32(v55, v59)), *&v50, 1));
          v64 = vaddq_f32(v49, vmulq_lane_f32(vaddq_f32(v44, vsubq_f32(v56, v60)), *&v50, 1));
          v65 = vaddq_f32(v49, vmulq_lane_f32(vaddq_f32(v44, vsubq_f32(v57, v61)), *&v50, 1));
          v66 = vaddq_f32(v49, vmulq_lane_f32(vaddq_f32(v44, vsubq_f32(v58, v62)), *&v50, 1));
          v67 = v63;
          v67.i32[3] = 1.0;
          v68 = v64;
          v68.i32[3] = 1.0;
          v69 = v65;
          v69.i32[3] = 1.0;
          v70 = v66;
          v70.i32[3] = 1.0;
          v63.i64[1] = vextq_s8(v67, v67, 8uLL).u64[0];
          *v67.f32 = vqtbl1_s8(v63, *v24.f32);
          *&v67.u32[2] = vqtbl1_s8(v63, v28);
          v64.i64[1] = vextq_s8(v68, v68, 8uLL).u64[0];
          *v63.f32 = vqtbl1_s8(v64, *v24.f32);
          *&v63.u32[2] = vqtbl1_s8(v64, v28);
          v65.i64[1] = vextq_s8(v69, v69, 8uLL).u64[0];
          *v64.f32 = vqtbl1_s8(v65, *v24.f32);
          *&v64.u32[2] = vqtbl1_s8(v65, v28);
          v66.i64[1] = vextq_s8(v70, v70, 8uLL).u64[0];
          *v24.f32 = vqtbl1_s8(v66, *v24.f32);
          *&v24.u32[2] = vqtbl1_s8(v66, v28);
          v71 = *(v23 + 32);
          v72 = *(v23 + 48);
          v73 = vmulq_f32(v71, v67);
          v74 = vmulq_f32(v71, v63);
          v75 = vmulq_f32(v71, v64);
          v76 = vmulq_f32(v71, v24);
          v77 = vmulq_f32(v72, v67);
          v78 = vmulq_f32(v72, v63);
          v79 = vmulq_f32(v72, v64);
          v80 = vmulq_f32(v72, v24);
          v81 = vaddq_f32(vextq_s8(v80, v80, 4uLL), vaddq_f32(v80, vrev64q_s32(v80)));
          v82 = vbslq_s8(v43, vaddq_f32(vextq_s8(v73, v73, 8uLL), vaddq_f32(v73, vrev64q_s32(v73))), vaddq_f32(vextq_s8(v77, v77, 4uLL), vaddq_f32(v77, vrev64q_s32(v77))));
          v83 = vbslq_s8(v43, vaddq_f32(vextq_s8(v74, v74, 8uLL), vaddq_f32(v74, vrev64q_s32(v74))), vaddq_f32(vextq_s8(v78, v78, 4uLL), vaddq_f32(v78, vrev64q_s32(v78))));
          v84 = vbslq_s8(v43, vaddq_f32(vextq_s8(v75, v75, 8uLL), vaddq_f32(v75, vrev64q_s32(v75))), vaddq_f32(vextq_s8(v79, v79, 4uLL), vaddq_f32(v79, vrev64q_s32(v79))));
          v85 = vbslq_s8(v43, vaddq_f32(vextq_s8(v76, v76, 8uLL), vaddq_f32(v76, vrev64q_s32(v76))), v81);
          v86 = *(a2 + 22);
          v87 = vsubq_f32(v82, v9);
          v88 = a2[10];
          if (v5)
          {
            v89 = vaddq_s32(vcvtq_s32_f32(v87), vcltzq_f32(v87));
            v90 = vsubq_f32(v87, vcvtq_f32_s32(v89)).u64[0];
            v91 = vsubq_f32(v83, v9);
            v92 = vaddq_s32(vcvtq_s32_f32(v91), vcltzq_f32(v91));
            v93 = vsubq_f32(v91, vcvtq_f32_s32(v92)).u64[0];
            v94 = vdup_n_s32(v86);
            *v89.i8 = vmla_s32(vzip1_s32(*v89.i8, *v92.i8), vzip2_s32(*v89.i8, *v92.i8), v94);
            v95 = &v88[v89.i32[0]];
            v96 = vaddq_f32(*v95, vmulq_n_f32(vsubq_f32(v95[1], *v95), v90.f32[0]));
            v97 = vaddq_f32(v96, vmulq_lane_f32(vsubq_f32(vaddq_f32(v95[v86], vmulq_n_f32(vsubq_f32(v95[v86 + 1], v95[v86]), v90.f32[0])), v96), v90, 1));
            v98 = &v88[v89.i32[1]];
            v99 = vaddq_f32(*v98, vmulq_n_f32(vsubq_f32(v98[1], *v98), v93.f32[0]));
            v100 = vaddq_f32(v99, vmulq_lane_f32(vsubq_f32(vaddq_f32(v98[v86], vmulq_n_f32(vsubq_f32(v98[v86 + 1], v98[v86]), v93.f32[0])), v99), v93, 1));
            v101 = vsubq_f32(v84, v9);
            v102 = vaddq_s32(vcvtq_s32_f32(v101), vcltzq_f32(v101));
            v101.i64[0] = vsubq_f32(v101, vcvtq_f32_s32(v102)).u64[0];
            v103 = vsubq_f32(v85, v9);
            v104 = vaddq_s32(vcvtq_s32_f32(v103), vcltzq_f32(v103));
            *v102.i8 = vmla_s32(vzip1_s32(*v102.i8, *v104.i8), vzip2_s32(*v102.i8, *v104.i8), v94);
            v105 = &v88[v102.i32[0]];
            v104.i64[0] = vsubq_f32(v103, vcvtq_f32_s32(v104)).u64[0];
            v106 = vaddq_f32(*v105, vmulq_n_f32(vsubq_f32(v105[1], *v105), v101.f32[0]));
            v107 = vaddq_f32(v106, vmulq_lane_f32(vsubq_f32(vaddq_f32(v105[v86], vmulq_n_f32(vsubq_f32(v105[v86 + 1], v105[v86]), v101.f32[0])), v106), *v101.f32, 1));
            v108 = &v88[v102.i32[1]];
            v109 = vaddq_f32(*v108, vmulq_n_f32(vsubq_f32(v108[1], *v108), *v104.i32));
            v110 = vaddq_f32(v109, vmulq_lane_f32(vsubq_f32(vaddq_f32(v108[v86], vmulq_n_f32(vsubq_f32(v108[v86 + 1], v108[v86]), *v104.i32)), v109), *v104.i8, 1));
          }

          else
          {
            v111 = vaddq_f32(v87, v14);
            v112 = vcvtq_s32_f32(v111);
            v113 = vaddq_f32(vsubq_f32(v83, v9), v14);
            v114 = vcvtq_s32_f32(v113);
            *v111.f32 = vadd_s32(*v112.i8, *&vcgtq_f32(vcvtq_f32_s32(v112), v111));
            *v113.f32 = vadd_s32(*v114.i8, *&vcgtq_f32(vcvtq_f32_s32(v114), v113));
            *v114.i8 = vdup_n_s32(v86);
            *v113.f32 = vmla_s32(vzip1_s32(*v111.f32, *v113.f32), vzip2_s32(*v111.f32, *v113.f32), *v114.i8);
            v115 = v113.i32[1];
            v97 = v88[v113.i32[0]];
            v100 = v88[v115];
            v116 = vaddq_f32(vsubq_f32(v84, v9), v14);
            v117 = vcvtq_s32_f32(v116);
            v118 = vaddq_f32(vsubq_f32(v85, v9), v14);
            v119 = vcvtq_s32_f32(v118);
            *v118.f32 = vadd_s32(*v119.i8, *&vcgtq_f32(vcvtq_f32_s32(v119), v118));
            *v116.f32 = vadd_s32(*v117.i8, *&vcgtq_f32(vcvtq_f32_s32(v117), v116));
            *v118.f32 = vmla_s32(vzip1_s32(*v116.f32, *v118.f32), vzip2_s32(*v116.f32, *v118.f32), *v114.i8);
            v120 = v118.i32[1];
            v107 = v88[v118.i32[0]];
            v110 = v88[v120];
          }

          v17[-2] = v97;
          v17[-1] = v100;
          *v17 = v107;
          v17[1] = v110;
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
          v121 = *(this + 51);
          v123 = *(v121 + 96);
          v122 = *(v121 + 112);
          v124.i64[0] = v19.i64[0];
          v124.i64[1] = vextq_s8(v123, v123, 8uLL).u64[0];
          *v125.f32 = vqtbl1_s8(v124, *v122.f32);
          v126 = vextq_s8(v122, v122, 8uLL).u64[0];
          *&v125.u32[2] = vqtbl1_s8(v124, v126);
          v127 = vmulq_f32(*v121, v125);
          v128 = vmulq_f32(*(v121 + 16), v125);
          v129 = *(v121 + 128);
          v130 = vbslq_s8(v129, vaddq_f32(vextq_s8(v127, v127, 8uLL), vaddq_f32(v127, vrev64q_s32(v127))), vaddq_f32(vextq_s8(v128, v128, 4uLL), vaddq_f32(v128, vrev64q_s32(v128))));
          v131 = *(v121 + 64);
          v132 = *(v121 + 80);
          v133 = vmulq_n_f32(vsubq_f32(v130, v131), *&v132);
          v134 = vcvtq_f32_s32(vcvtq_s32_f32(v133));
          v135 = vaddq_f32(v131, vmulq_lane_f32(vaddq_f32(*(v121 + 144), vsubq_f32(v134, vandq_s8(v123, vcgtq_f32(v134, v133)))), *&v132, 1));
          v136 = v135;
          v136.i32[3] = 1.0;
          v135.i64[1] = vextq_s8(v136, v136, 8uLL).u64[0];
          *v122.f32 = vqtbl1_s8(v135, *v122.f32);
          *&v122.u32[2] = vqtbl1_s8(v135, v126);
          v137 = vmulq_f32(*(v121 + 32), v122);
          v138 = vmulq_f32(*(v121 + 48), v122);
          v139 = *(a2 + 22);
          v140 = vsubq_f32(vbslq_s8(v129, vaddq_f32(vextq_s8(v137, v137, 8uLL), vaddq_f32(v137, vrev64q_s32(v137))), vaddq_f32(vextq_s8(v138, v138, 4uLL), vaddq_f32(v138, vrev64q_s32(v138)))), v9);
          v141 = a2[10];
          if (v5)
          {
            v142 = vaddq_s32(vcvtq_s32_f32(v140), vcltzq_f32(v140));
            v143 = vsubq_f32(v140, vcvtq_f32_s32(v142)).u64[0];
            v144 = &v141[v142.i32[0] + v142.i32[1] * v139];
            v145 = vaddq_f32(*v144, vmulq_n_f32(vsubq_f32(v144[1], *v144), v143.f32[0]));
            v146 = vaddq_f32(v145, vmulq_lane_f32(vsubq_f32(vaddq_f32(v144[v139], vmulq_n_f32(vsubq_f32(v144[v139 + 1], v144[v139]), v143.f32[0])), v145), v143, 1));
          }

          else
          {
            v147 = vaddq_f32(v140, v14);
            v148 = vcvtq_s32_f32(v147);
            v147.i64[0] = vaddq_s32(v148, vcgtq_f32(vcvtq_f32_s32(v148), v147)).u64[0];
            v146 = v141[v147.i32[0] + v147.i32[1] * v139];
          }

          v11[v16] = v146;
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

uint64_t HgcPixellate::GetDOD(HgcPixellate *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPixellate::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPixellate::HgcPixellate(HgcPixellate *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E1F40;
  operator new();
}

void HgcPixellate::~HgcPixellate(HGNode *this)
{
  *this = &unk_2871E1F40;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C405DF52C91);
  }

  HGNode::~HGNode(this);
}

{
  HgcPixellate::~HgcPixellate(this);

  HGObject::operator delete(v1);
}

uint64_t HgcPixellate::SetParameter(HgcPixellate *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v11 = *(this + 51);
        if (v11[3].n128_f32[0] != a3.n128_f32[0] || v11[3].n128_f32[1] != a4 || v11[3].n128_f32[2] != a6 || v11[3].n128_f32[3] != 0.0)
        {
          v11[3].n128_u32[0] = a3.n128_u32[0];
          v11[3].n128_f32[1] = a4;
          v11[3].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v11[3].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v11[13] = a3;
          goto LABEL_38;
        }

        return 0;
      case 4:
        v13 = *(this + 51);
        if (*(v13 + 64) != a3.n128_f32[0] || *(v13 + 68) != a4 || *(v13 + 72) != a5 || *(v13 + 76) != a6)
        {
          *(v13 + 64) = a3.n128_u32[0];
          *(v13 + 68) = a4;
          *(v13 + 72) = a5;
          *(v13 + 76) = a6;
          goto LABEL_38;
        }

        return 0;
      case 5:
        v9 = *(this + 51);
        if (*(v9 + 80) != a3.n128_f32[0] || *(v9 + 84) != a4 || *(v9 + 88) != a5 || *(v9 + 92) != a6)
        {
          *(v9 + 80) = a3.n128_u32[0];
          *(v9 + 84) = a4;
          *(v9 + 88) = a5;
          *(v9 + 92) = a6;
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
        if (v10->n128_f32[0] != a3.n128_f32[0] || v10->n128_f32[1] != a4 || v10->n128_f32[2] != a6 || v10->n128_f32[3] != 0.0)
        {
          v10->n128_u32[0] = a3.n128_u32[0];
          v10->n128_f32[1] = a4;
          v10->n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v10->n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v10[10] = a3;
          goto LABEL_38;
        }

        return 0;
      case 1:
        v12 = *(this + 51);
        if (v12[1].n128_f32[0] != a3.n128_f32[0] || v12[1].n128_f32[1] != a4 || v12[1].n128_f32[2] != a6 || v12[1].n128_f32[3] != 0.0)
        {
          v12[1].n128_u32[0] = a3.n128_u32[0];
          v12[1].n128_f32[1] = a4;
          v12[1].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v12[1].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v12[11] = a3;
          goto LABEL_38;
        }

        return 0;
      case 2:
        v8 = *(this + 51);
        if (v8[2].n128_f32[0] != a3.n128_f32[0] || v8[2].n128_f32[1] != a4 || v8[2].n128_f32[2] != a6 || v8[2].n128_f32[3] != 0.0)
        {
          v8[2].n128_u32[0] = a3.n128_u32[0];
          v8[2].n128_f32[1] = a4;
          v8[2].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v8[2].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v8[12] = a3;
LABEL_38:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

uint64_t HgcPixellate::GetParameter(HgcPixellate *this, unsigned int a2, float *a3)
{
  if (a2 > 5)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = qword_260345AB0[a2];
  v6 = qword_260345AE0[a2];
  v7 = qword_260345B10[a2];
  v8 = *(this + 51);
  *a3 = *(v8 + qword_260345A80[a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

const char *HgcSoftGradient::GetProgram(HgcSoftGradient *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000424\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const half4 c0 = half4(9.999999975e-07, 2.000000000, 3.000000000, 1.000000000);\n    float4 s0, s1, s2, s3;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy;\n    s0.w = float(c0.w);\n    s1.x = dot(s0.xyw, hg_Params[3].xyz);\n    s2.y = dot(s0.xyw, hg_Params[4].xyz);\n    s3.z = dot(s0.xyw, hg_Params[5].xyz);\n    s1.y = s2.y;\n    s1.z = s3.z;\n    s1.w = dot(s0.xyw, hg_Params[6].xyz);\n    s2 = 1.00000f / s1.wwww;\n    s2 = s1*s2 + hg_Params[0];\n    s2 = float4(dot(s2, s2));\n    s3.x = s2.x + float(c0.x);\n    s3 = rsqrt(s3.xxxx);\n    s3 = s2*s3;\n    s3 = clamp(s3*hg_Params[2] + float4(c0.wwww), 0.00000f, 1.00000f);\n    s0 = -s3*float4(c0.yyyy) + float4(c0.zzzz);\n    s3 = s3*s3;\n    s3 = s3*s0;\n    output.color0 = hg_Params[1]*s3;\n    return output;\n}\n//MD5=55e05c77:ee2e26c8:a35b3ccf:c483c97d\n//SIG=00400000:00000000:00000000:00000000:0001:0007:0004:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000400\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]])\n{\n    const float4 c0 = float4(9.999999975e-07, 2.000000000, 3.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy;\n    r0.w = c0.w;\n    r1.x = dot(r0.xyw, hg_Params[3].xyz);\n    r2.y = dot(r0.xyw, hg_Params[4].xyz);\n    r3.z = dot(r0.xyw, hg_Params[5].xyz);\n    r1.y = r2.y;\n    r1.z = r3.z;\n    r1.w = dot(r0.xyw, hg_Params[6].xyz);\n    r2 = 1.00000f / r1.wwww;\n    r2 = r1*r2 + hg_Params[0];\n    r2 = float4(dot(r2, r2));\n    r3.x = r2.x + c0.x;\n    r3 = rsqrt(r3.xxxx);\n    r3 = r2*r3;\n    r3 = clamp(r3*hg_Params[2] + c0.wwww, 0.00000f, 1.00000f);\n    r0 = -r3*c0.yyyy + c0.zzzz;\n    r3 = r3*r3;\n    r3 = r3*r0;\n    output.color0 = hg_Params[1]*r3;\n    return output;\n}\n//MD5=1cc6da38:f890ee88:351e9368:bd36a39f\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0004:0000:0000:0000:0002:0000:0001:00:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000515\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(9.999999975e-07, 2.000000000, 3.000000000, 1.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0.xy = hg_TexCoord0.xy;\n    r0.w = c0.w;\n    r1.x = dot(r0.xyw, hg_ProgramLocal3.xyz);\n    r2.y = dot(r0.xyw, hg_ProgramLocal4.xyz);\n    r3.z = dot(r0.xyw, hg_ProgramLocal5.xyz);\n    r1.y = r2.y;\n    r1.z = r3.z;\n    r1.w = dot(r0.xyw, hg_ProgramLocal6.xyz);\n    r2 = vec4(1.00000) / r1.wwww;\n    r2 = r1*r2 + hg_ProgramLocal0;\n    r2 = vec4(dot(r2, r2));\n    r3.x = r2.x + c0.x;\n    r3 = inversesqrt(r3.xxxx);\n    r3 = r2*r3;\n    r3 = clamp(r3*hg_ProgramLocal2 + c0.wwww, vec4(0.00000), vec4(1.00000));\n    r0 = -r3*c0.yyyy + c0.zzzz;\n    r3 = r3*r3;\n    r3 = r3*r0;\n    gl_FragColor = hg_ProgramLocal1*r3;\n}\n//MD5=efdce9e6:1314f22d:1502dc67:5c9715c8\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0004:0000:0000:0000:0000:0000:0001:00:0:1:0\n";
  }
}

void sub_25FA7EE44(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA7EF44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA7EF84()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA7EF7CLL);
}

uint64_t HgcSoftGradient::Bind(HgcSoftGradient *this, HGHandler *a2)
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

uint64_t HgcSoftGradient::RenderTile(uint64_t a1, int32x2_t *a2)
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
          v12 = v11;
          v13 = vaddq_f32(v11, xmmword_2603429B0);
          v12.i32[3] = 1.0;
          v14 = *(a1 + 408);
          v15.i64[0] = v13.i64[0];
          v16 = v13;
          v11.i64[1] = vextq_s8(v12, v12, 8uLL).u64[0];
          v18 = *(v14 + 96);
          v17 = *(v14 + 112);
          v16.i32[3] = 1.0;
          *v19.f32 = vqtbl1_s8(v11, *v17.i8);
          v20 = vextq_s8(v17, v17, 8uLL).u64[0];
          *&v19.u32[2] = vqtbl1_s8(v11, v20);
          v15.i64[1] = vextq_s8(v16, v16, 8uLL).u64[0];
          *v21.f32 = vqtbl1_s8(v15, *v17.i8);
          *&v21.u32[2] = vqtbl1_s8(v15, v20);
          v22 = *(v14 + 32);
          v23 = *(v14 + 48);
          v24 = vmulq_f32(v23, v19);
          v25 = vmulq_f32(v23, v21);
          v26 = *(v14 + 64);
          v27 = *(v14 + 80);
          v28 = vmulq_f32(v26, v19);
          v29 = vmulq_f32(v26, v21);
          v30 = vmulq_f32(v27, v19);
          v31 = vmulq_f32(v27, v21);
          v32 = vaddq_f32(v30, vaddq_f32(vdupq_lane_s64(v30.i64[0], 0), vextq_s8(v7, v30, 0xCuLL)));
          v33 = *(v14 + 128);
          v34 = *(v14 + 144);
          v24.i64[0] = vbslq_s8(v33, vaddq_f32(vdupq_laneq_s64(v24, 1), vaddq_f32(v24, vrev64q_s32(v24))), vaddq_f32(vextq_s8(v28, v7, 4uLL), vaddq_f32(v28, vrev64q_s32(v28)))).u64[0];
          v35 = vmulq_f32(v18, v19);
          v36 = vmulq_f32(v18, v21);
          v25.i64[0] = vbslq_s8(v33, vaddq_f32(vdupq_laneq_s64(v25, 1), vaddq_f32(v25, vrev64q_s32(v25))), vaddq_f32(vextq_s8(v29, v7, 4uLL), vaddq_f32(v29, vrev64q_s32(v29)))).u64[0];
          v24.i64[1] = v32.i64[1];
          v37 = vbslq_s8(v34, vaddq_f32(vrev64q_s32(v35), vaddq_f32(vextq_s8(v35, v35, 4uLL), vextq_s8(v35, v35, 8uLL))), v24);
          v25.i64[1] = vaddq_f32(v31, vaddq_f32(vdupq_lane_s64(*&v31, 0), vextq_s8(*&v7, *&v31, 0xCuLL))).i64[1];
          v38 = vbslq_s8(v34, vaddq_f32(vrev64q_s32(v36), vaddq_f32(vextq_s8(v36, v36, 4uLL), vextq_s8(v36, v36, 8uLL))), v25);
          v39 = vdupq_laneq_s32(v37, 3);
          v40 = vdupq_laneq_s32(v38, 3);
          v42 = *(v14 + 160);
          v41 = *(v14 + 176);
          v43 = vminq_f32(vmaxq_f32(vrecpeq_f32(v39), v42), v41);
          v44 = vminq_f32(vmaxq_f32(vrecpeq_f32(v40), v42), v41);
          v45 = vminq_f32(vmaxq_f32(vmulq_f32(v43, vrecpsq_f32(v39, v43)), v42), v41);
          v46 = vminq_f32(vmaxq_f32(vmulq_f32(v44, vrecpsq_f32(v40, v44)), v42), v41);
          v47 = vmulq_f32(vmulq_f32(v45, vrecpsq_f32(v39, v45)), v37);
          v48 = *(v14 + 16);
          v49 = vaddq_f32(v47, *v14);
          v50 = vaddq_f32(*v14, vmulq_f32(vmulq_f32(v46, vrecpsq_f32(v40, v46)), v38));
          v51 = vmulq_f32(v49, v49);
          v52 = vmulq_f32(v50, v50);
          v53 = vaddq_f32(v51, vextq_s8(v51, v51, 4uLL));
          v54 = vaddq_f32(v52, vextq_s8(v52, v52, 4uLL));
          v55 = vaddq_f32(v53, vextq_s8(v53, v53, 8uLL));
          v56 = *(v14 + 192);
          v57 = *(v14 + 208);
          v58 = vaddq_f32(v54, vextq_s8(v54, v54, 8uLL));
          v42.i64[0] = vaddq_f32(v56, v55).u64[0];
          v56.i64[0] = vaddq_f32(v56, v58).u64[0];
          v11 = vaddq_f32(v13, xmmword_2603429B0);
          v59 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v42.f32, 0)), v41);
          v60 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v56.f32, 0)), v41);
          v61 = vminq_f32(vmulq_f32(v59, vrsqrtsq_f32(vmulq_n_f32(v59, v42.f32[0]), v59)), v41);
          v62 = vminq_f32(vmulq_f32(v60, vrsqrtsq_f32(vmulq_n_f32(v60, v56.f32[0]), v60)), v41);
          v63 = vmulq_f32(vmulq_f32(v55, vmulq_f32(v61, vrsqrtsq_f32(vmulq_n_f32(v61, v42.f32[0]), v61))), v22);
          v64 = vaddq_f32(v57, vmulq_f32(vmulq_f32(v58, vmulq_f32(v62, vrsqrtsq_f32(vmulq_n_f32(v62, v56.f32[0]), v62))), v22));
          v65 = *(v14 + 224);
          v66 = *(v14 + 240);
          v67 = vminq_f32(vmaxq_f32(vaddq_f32(v57, v63), v65), v57);
          v68 = vminq_f32(vmaxq_f32(v64, v65), v57);
          v69 = *(v14 + 256);
          v70 = (*&v6 + 16 * v9);
          *v70 = vmulq_f32(v48, vmulq_f32(vmulq_f32(v67, v67), vsubq_f32(v66, vmulq_f32(v67, v69))));
          v70[1] = vmulq_f32(v48, vmulq_f32(vmulq_f32(v68, v68), vsubq_f32(v66, vmulq_f32(v68, v69))));
          v9 += 2;
          v10 -= 2;
        }

        while (v10 > 1);
        v9 = v9;
      }

      if (v9 < v5)
      {
        v71 = v11;
        v71.i32[3] = 1.0;
        v72 = *(a1 + 408);
        v11.i64[1] = vextq_s8(v71, v71, 8uLL).u64[0];
        v73 = *(v72 + 112);
        *v74.f32 = vqtbl1_s8(v11, *v73.i8);
        *&v74.u32[2] = vqtbl1_s8(v11, *&vextq_s8(v73, v73, 8uLL));
        v75 = vmulq_f32(*(v72 + 48), v74);
        v76 = vmulq_f32(*(v72 + 64), v74);
        v77 = vmulq_f32(*(v72 + 80), v74);
        v75.i64[0] = vbslq_s8(*(v72 + 128), vaddq_f32(vdupq_laneq_s64(v75, 1), vaddq_f32(v75, vrev64q_s32(v75))), vaddq_f32(vextq_s8(v76, v7, 4uLL), vaddq_f32(v76, vrev64q_s32(v76)))).u64[0];
        v78 = vmulq_f32(*(v72 + 96), v74);
        v75.i64[1] = vaddq_f32(v77, vaddq_f32(vdupq_lane_s64(*&v77, 0), vextq_s8(*&v7, *&v77, 0xCuLL))).i64[1];
        v79 = vbslq_s8(*(v72 + 144), vaddq_f32(vrev64q_s32(v78), vaddq_f32(vextq_s8(v78, v78, 4uLL), vextq_s8(v78, v78, 8uLL))), v75);
        v80 = vdupq_laneq_s32(v79, 3);
        v81 = *(v72 + 160);
        v82 = *(v72 + 176);
        v83 = vminq_f32(vmaxq_f32(vrecpeq_f32(v80), v81), v82);
        v84 = vminq_f32(vmaxq_f32(vmulq_f32(v83, vrecpsq_f32(v80, v83)), v81), v82);
        v85 = vaddq_f32(*v72, vmulq_f32(vmulq_f32(v84, vrecpsq_f32(v80, v84)), v79));
        v86 = vmulq_f32(v85, v85);
        v87 = vaddq_f32(v86, vextq_s8(v86, v86, 4uLL));
        v88 = vaddq_f32(v87, vextq_s8(v87, v87, 8uLL));
        v80.i64[0] = vaddq_f32(*(v72 + 192), v88).u64[0];
        v89 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v80.f32, 0)), v82);
        v90 = vminq_f32(vmulq_f32(v89, vrsqrtsq_f32(vmulq_n_f32(v89, v80.f32[0]), v89)), v82);
        v91 = vminq_f32(vmaxq_f32(vaddq_f32(*(v72 + 208), vmulq_f32(vmulq_f32(v88, vmulq_f32(v90, vrsqrtsq_f32(vmulq_n_f32(v90, v80.f32[0]), v90))), *(v72 + 32))), *(v72 + 224)), *(v72 + 208));
        *(*&v6 + 16 * v9) = vmulq_f32(*(v72 + 16), vmulq_f32(vmulq_f32(v91, v91), vsubq_f32(*(v72 + 240), vmulq_f32(v91, *(v72 + 256)))));
      }

      v7 = vaddq_f32(v7, xmmword_2603429C0);
      *&v6 += v8;
      ++v4;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcSoftGradient::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcSoftGradient::HgcSoftGradient(HgcSoftGradient *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E21A8;
  operator new();
}

void HgcSoftGradient::~HgcSoftGradient(HGNode *this)
{
  *this = &unk_2871E21A8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcSoftGradient::~HgcSoftGradient(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSoftGradient::SetParameter(HgcSoftGradient *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7, double a8)
{
  v8 = 0xFFFFFFFFLL;
  if (a2 <= 2)
  {
    switch(a2)
    {
      case 0:
        v12 = -a4;
        v13 = -a5;
        v14 = -a6;
        v15 = *(this + 51);
        if (v15->n128_f32[0] != -a3.n128_f32[0] || v15->n128_f32[1] != v12 || v15->n128_f32[2] != v13 || v15->n128_f32[3] != v14)
        {
          v15->n128_f32[0] = -a3.n128_f32[0];
          v15->n128_f32[1] = v12;
          a3.n128_f32[1] = a4;
          v15->n128_f32[2] = v13;
          v15->n128_f32[3] = v14;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v15[17] = a3;
          goto LABEL_44;
        }

        return 0;
      case 1:
        v18 = *(this + 51);
        if (*(v18 + 16) != a3.n128_f32[0] || *(v18 + 20) != a4 || *(v18 + 24) != a5 || *(v18 + 28) != a6)
        {
          *(v18 + 16) = a3.n128_u32[0];
          *(v18 + 20) = a4;
          *(v18 + 24) = a5;
          *(v18 + 28) = a6;
          goto LABEL_44;
        }

        return 0;
      case 2:
        *&a8 = -a3.n128_f32[0];
        v10 = *(this + 51);
        if (*(v10 + 32) != -a3.n128_f32[0] || *(v10 + 36) != *&a8 || *(v10 + 40) != *&a8 || *(v10 + 44) != *&a8)
        {
          a3.n128_f32[1] = a4;
          *(v10 + 32) = vdupq_lane_s32(*&a8, 0);
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v10 + 288) = a3;
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
        v16 = *(this + 51);
        if (v16[3].n128_f32[0] != a3.n128_f32[0] || v16[3].n128_f32[1] != a4 || v16[3].n128_f32[2] != a6 || v16[3].n128_f32[3] != 0.0)
        {
          v16[3].n128_u32[0] = a3.n128_u32[0];
          v16[3].n128_f32[1] = a4;
          v16[3].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v16[3].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v16[19] = a3;
          goto LABEL_44;
        }
      }

      else
      {
        v9 = *(this + 51);
        if (v9[4].n128_f32[0] != a3.n128_f32[0] || v9[4].n128_f32[1] != a4 || v9[4].n128_f32[2] != a6 || v9[4].n128_f32[3] != 0.0)
        {
          v9[4].n128_u32[0] = a3.n128_u32[0];
          v9[4].n128_f32[1] = a4;
          v9[4].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v9[4].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v9[20] = a3;
LABEL_44:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }
      }

      return 0;
    }

    if (a2 == 5)
    {
      v17 = *(this + 51);
      if (v17[5].n128_f32[0] != a3.n128_f32[0] || v17[5].n128_f32[1] != a4 || v17[5].n128_f32[2] != a6 || v17[5].n128_f32[3] != 0.0)
      {
        v17[5].n128_u32[0] = a3.n128_u32[0];
        v17[5].n128_f32[1] = a4;
        v17[5].n128_f32[2] = a6;
        a3.n128_f32[1] = a4;
        v17[5].n128_u32[3] = 0;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v17[21] = a3;
        goto LABEL_44;
      }

      return 0;
    }

    if (a2 == 6)
    {
      v11 = *(this + 51);
      if (v11[6].n128_f32[0] != a3.n128_f32[0] || v11[6].n128_f32[1] != a4 || v11[6].n128_f32[2] != a6 || v11[6].n128_f32[3] != 0.0)
      {
        v11[6].n128_u32[0] = a3.n128_u32[0];
        v11[6].n128_f32[1] = a4;
        v11[6].n128_f32[2] = a6;
        a3.n128_f32[1] = a4;
        v11[6].n128_u32[3] = 0;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v11[22] = a3;
        goto LABEL_44;
      }

      return 0;
    }
  }

  return v8;
}

uint64_t HgcSoftGradient::GetParameter(HgcSoftGradient *this, unsigned int a2, float *a3)
{
  if (a2 > 6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  v5 = qword_260345BA0[a2];
  v6 = qword_260345BD8[a2];
  v7 = qword_260345C10[a2];
  v8 = *(this + 51);
  *a3 = *(v8 + qword_260345B68[a2]);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v6);
  a3[3] = *(v8 + v7);
  return result;
}

const char *HgcSlitScanGlow::GetProgram(HgcSlitScanGlow *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000035c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s0.xyz = frag._texCoord1.xyz - hg_Params[3].xyz;\n    s0.xyz = hg_Params[0].xyz*float3(c0.xxz) + s0.xyz;\n    s0.y = dot(hg_Params[4].xyz, s0.xyz);\n    s0.x = hg_Params[1].x/fabs(s0.y);\n    output.color0 = s0.xxxx*hg_Params[2] + float4(r0);\n    return output;\n}\n//MD5=3331e337:d9b358da:1e3761e2:0cc37934\n//SIG=00400000:00000001:00000001:00000001:0001:0005:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000033d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = frag._texCoord1.xyz - hg_Params[3].xyz;\n    r1.xyz = hg_Params[0].xyz*c0.xxz + r1.xyz;\n    r1.y = dot(hg_Params[4].xyz, r1.xyz);\n    r1.x = hg_Params[1].x/fabs(r1.y);\n    output.color0 = r1.xxxx*hg_Params[2] + r0;\n    return output;\n}\n//MD5=f117c655:742faaba:2178c20e:cb142331\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = hg_TexCoord1.xyz - hg_ProgramLocal3.xyz;\n    r1.xyz = hg_ProgramLocal0.xyz*c0.xxz + r1.xyz;\n    r1.y = dot(hg_ProgramLocal4.xyz, r1.xyz);\n    r1.x = hg_ProgramLocal1.x/abs(r1.y);\n    gl_FragColor = r1.xxxx*hg_ProgramLocal2 + r0;\n}\n//MD5=15760490:e33b0e92:18590895:417bfdca\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0002:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FA7FC04(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA7FD44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA7FD8C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA7FD84);
}

uint64_t HgcSlitScanGlow::BindTexture(HgcSlitScanGlow *this, HGHandler *a2, int a3)
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

uint64_t HgcSlitScanGlow::Bind(HgcSlitScanGlow *this, HGHandler *a2)
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

uint64_t HgcSlitScanGlow::RenderTile(uint64_t a1, int32x2_t *a2)
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
          v18 = v17[3];
          v19 = v17[4];
          v20 = v17[6];
          v21 = v17[7];
          v22 = v17[1];
          v23 = v17[2];
          v24 = vmulq_f32(*v17, v17[5]);
          v25 = vmulq_f32(v19, vaddq_f32(vsubq_f32(v14, v18), v24));
          v26 = vmulq_f32(v19, vaddq_f32(vsubq_f32(v15, v18), v24));
          v27 = vmulq_f32(v19, vaddq_f32(vsubq_f32(v16, v18), v24));
          v28 = vabsq_f32(vrev64q_s32(vaddq_f32(vextq_s8(v25, v25, 4uLL), vaddq_f32(v25, vrev64q_s32(v25)))));
          v29 = vabsq_f32(vrev64q_s32(vaddq_f32(vextq_s8(v26, v26, 4uLL), vaddq_f32(v26, vrev64q_s32(v26)))));
          v30 = vabsq_f32(vrev64q_s32(vaddq_f32(vextq_s8(v27, v27, 4uLL), vaddq_f32(v27, vrev64q_s32(v27)))));
          v31 = vminq_f32(vmaxq_f32(vrecpeq_f32(v28), v20), v21);
          v32 = vminq_f32(vmaxq_f32(vrecpeq_f32(v29), v20), v21);
          v33 = vminq_f32(vmaxq_f32(vrecpeq_f32(v30), v20), v21);
          v34 = vminq_f32(vmaxq_f32(vmulq_f32(v31, vrecpsq_f32(v28, v31)), v20), v21);
          v35 = vminq_f32(vmaxq_f32(vmulq_f32(v32, vrecpsq_f32(v29, v32)), v20), v21);
          v36 = vminq_f32(vmaxq_f32(vmulq_f32(v33, vrecpsq_f32(v30, v33)), v20), v21);
          v37 = vaddq_f32(*(*&v7 + v11 + 16), vmulq_n_f32(v23, vmulq_f32(vmulq_f32(v35, vrecpsq_f32(v29, v35)), v22).f32[0]));
          v38 = vaddq_f32(*(*&v7 + v11 + 32), vmulq_n_f32(v23, vmulq_f32(vmulq_f32(v36, vrecpsq_f32(v30, v36)), v22).f32[0]));
          v39 = (*&v6 + v11);
          *v39 = vaddq_f32(*(*&v7 + v11), vmulq_n_f32(v23, vmulq_f32(vmulq_f32(v34, vrecpsq_f32(v28, v34)), v22).f32[0]));
          v39[1] = v37;
          v39[2] = v38;
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
          v40 = *(a1 + 408);
          v41 = vmulq_f32(v40[4], vaddq_f32(vsubq_f32(v14, v40[3]), vmulq_f32(*v40, v40[5])));
          v42 = vabsq_f32(vrev64q_s32(vaddq_f32(vextq_s8(v41, v41, 4uLL), vaddq_f32(v41, vrev64q_s32(v41)))));
          v43 = v40[6];
          v44 = v40[7];
          v45 = vminq_f32(vmaxq_f32(vrecpeq_f32(v42), v43), v44);
          v46 = vminq_f32(vmaxq_f32(vmulq_f32(v45, vrecpsq_f32(v42, v45)), v43), v44);
          *(*&v6 + 16 * v12) = vaddq_f32(*(*&v7 + 16 * v12), vmulq_n_f32(v40[2], vmulq_f32(vmulq_f32(v46, vrecpsq_f32(v42, v46)), v40[1]).f32[0]));
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

uint64_t HgcSlitScanGlow::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcSlitScanGlow::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcSlitScanGlow::HgcSlitScanGlow(HgcSlitScanGlow *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E2410;
  operator new();
}

void HgcSlitScanGlow::~HgcSlitScanGlow(HGNode *this)
{
  *this = &unk_2871E2410;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);
}

{
  HgcSlitScanGlow::~HgcSlitScanGlow(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSlitScanGlow::SetParameter(HgcSlitScanGlow *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 <= 2)
  {
    if (!a2)
    {
      v7 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 51) + 128) = a3;
      return v7;
    }

    if (a2 == 1)
    {
      v12 = *(this + 51);
      if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
      {
        *v12 = a3.n128_u32[0];
        *(v12 + 4) = a4;
        *(v12 + 8) = a5;
        *(v12 + 12) = a6;
        goto LABEL_36;
      }

      return 0;
    }

    if (a2 != 2)
    {
      return v7;
    }

    v8 = *(this + 51);
    if (v8[4] == a3.n128_f32[0] && v8[5] == a4 && v8[6] == a5 && v8[7] == a6)
    {
      return 0;
    }

    v8[4] = a3.n128_f32[0];
    v8[5] = a4;
    v8[6] = a5;
    v8[7] = a6;
    goto LABEL_36;
  }

  if (a2 > 4)
  {
    if (a2 == 5)
    {
      v11 = *(this + 51);
      if (*(v11 + 48) != a3.n128_f32[0] || *(v11 + 52) != a4 || *(v11 + 56) != a5 || *(v11 + 60) != a6)
      {
        *(v11 + 48) = a3.n128_u32[0];
        *(v11 + 52) = a4;
        *(v11 + 56) = a5;
        *(v11 + 60) = a6;
        goto LABEL_36;
      }

      return 0;
    }

    if (a2 != 6)
    {
      return v7;
    }

    v9 = *(this + 51);
    if (v9[16] == a3.n128_f32[0] && v9[17] == a4 && v9[18] == a5 && v9[19] == a6)
    {
      return 0;
    }

    v9[16] = a3.n128_f32[0];
    v9[17] = a4;
    v9[18] = a5;
    v9[19] = a6;
LABEL_36:
    HGNode::ClearBits(this, a2, a7);
    return 1;
  }

  if (a2 == 3)
  {
    v10 = *(this + 51);
    if (*(v10 + 32) != a3.n128_f32[0] || *(v10 + 36) != a4 || *(v10 + 40) != a5 || *(v10 + 44) != a6)
    {
      *(v10 + 32) = a3.n128_u32[0];
      *(v10 + 36) = a4;
      *(v10 + 40) = a5;
      *(v10 + 44) = a6;
      goto LABEL_36;
    }

    return 0;
  }

  v7 = 0;
  a3.n128_f32[1] = a4;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  *(*(this + 51) + 144) = a3;
  return v7;
}

float HgcSlitScanGlow::GetParameter(HgcSlitScanGlow *this, int a2, float *a3)
{
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v9 = *(this + 51);
        *a3 = *v9;
        a3[1] = v9[1];
        a3[2] = v9[2];
        v4 = v9 + 3;
      }

      else
      {
        if (a2 != 2)
        {
          return result;
        }

        v5 = *(this + 51);
        *a3 = v5[4];
        a3[1] = v5[5];
        a3[2] = v5[6];
        v4 = v5 + 7;
      }
    }

    else
    {
      v7 = *(this + 51);
      *a3 = v7[32];
      a3[1] = v7[33];
      a3[2] = v7[34];
      v4 = v7 + 35;
    }
  }

  else if (a2 > 4)
  {
    if (a2 == 5)
    {
      v8 = *(this + 51);
      *a3 = v8[12];
      a3[1] = v8[13];
      a3[2] = v8[14];
      v4 = v8 + 15;
    }

    else
    {
      if (a2 != 6)
      {
        return result;
      }

      v6 = *(this + 51);
      *a3 = v6[16];
      a3[1] = v6[17];
      a3[2] = v6[18];
      v4 = v6 + 19;
    }
  }

  else
  {
    v3 = *(this + 51);
    if (a2 == 3)
    {
      *a3 = v3[8];
      a3[1] = v3[9];
      a3[2] = v3[10];
      v4 = v3 + 11;
    }

    else
    {
      *a3 = v3[36];
      a3[1] = v3[37];
      a3[2] = v3[38];
      v4 = v3 + 39;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcPolarToRect::GetProgram(HgcPolarToRect *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000006b3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*hg_Params[3].xy + hg_Params[2].xy;\n    s1.x = s0.x*hg_Params[0].x;\n    s1.y = cos(s1.x);\n    s1.zw = hg_Params[2].xy + hg_Params[2].xy;\n    s1.x = sin(s1.x);\n    s1.xy = s0.yy*s1.xy + hg_Params[1].xy;\n    s0.zw = s1.xy/s1.zw;\n    s2.xy = fract(s0.zw);\n    s2.xy = s1.zw*s2.xy;\n    s0.xy = floor(s0.zw);\n    s0.zw = s0.xy*float2(c0.zz);\n    s0.zw = floor(s0.zw);\n    s0.xy = -s0.zw*float2(c0.xx) + s0.xy;\n    s1.zw = s1.zw - s2.xy;\n    s1.zw = mix(s2.xy, s1.zw, fabs(s0.xy));\n    r0.z = abs(half(hg_Params[5].z));\n    s1.xy = select(s1.zw, s1.xy, -float2(r0.zz) < 0.00000h);\n    r0.xy = half2(s1.zw) - half2(s1.xy);\n    r0.xy = half2(c0.zz < fabs(r0.xy));\n    r0.z = half(-r0.z >= c0.y);\n    r0.x = fmax(r0.x, r0.y);\n    r0.y = half(-r0.z >= c0.y);\n    r0.x = fmin(r0.y, r0.x);\n    s1.xy = select(s1.xy, s1.zw, -float2(r0.xx) < 0.00000h);\n    s1.xy = s1.xy - hg_Params[2].xy;\n    s1.xy = s1.xy*hg_Params[4].xy;\n    s1.xy = s1.xy + hg_Params[6].xy;\n    s1.xy = s1.xy*hg_Params[6].zw;\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    output.color0 = select(float4(r1), float4(c0.yyyy), -float4(r0.xxxx) < 0.00000h);\n    return output;\n}\n//MD5=4792c725:8e9383f8:97acf09a:4901eb69\n//SIG=00400000:00000000:00000000:00000001:0001:0007:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000653\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*hg_Params[3].xy + hg_Params[2].xy;\n    r1.x = r0.x*hg_Params[0].x;\n    r1.y = cos(r1.x);\n    r1.zw = hg_Params[2].xy + hg_Params[2].xy;\n    r1.x = sin(r1.x);\n    r1.xy = r0.yy*r1.xy + hg_Params[1].xy;\n    r0.zw = r1.xy/r1.zw;\n    r2.xy = fract(r0.zw);\n    r2.xy = r1.zw*r2.xy;\n    r0.xy = floor(r0.zw);\n    r0.zw = r0.xy*c0.zz;\n    r0.zw = floor(r0.zw);\n    r0.xy = -r0.zw*c0.xx + r0.xy;\n    r1.zw = r1.zw - r2.xy;\n    r1.zw = mix(r2.xy, r1.zw, fabs(r0.xy));\n    r0.z = abs(hg_Params[5].z);\n    r1.xy = select(r1.zw, r1.xy, -r0.zz < 0.00000f);\n    r0.xy = r1.zw - r1.xy;\n    r0.xy = float2(c0.zz < fabs(r0.xy));\n    r0.z = float(-r0.z >= c0.y);\n    r0.x = fmax(r0.x, r0.y);\n    r0.y = float(-r0.z >= c0.y);\n    r0.x = fmin(r0.y, r0.x);\n    r1.xy = select(r1.xy, r1.zw, -r0.xx < 0.00000f);\n    r1.xy = r1.xy - hg_Params[2].xy;\n    r1.xy = r1.xy*hg_Params[4].xy;\n    r1.xy = r1.xy + hg_Params[6].xy;\n    r1.xy = r1.xy*hg_Params[6].zw;\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    output.color0 = select(r1, c0.yyyy, -r0.xxxx < 0.00000f);\n    return output;\n}\n//MD5=b639f045:aeadeeb8:e66c00d4:18d96586\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000007b4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy*hg_ProgramLocal3.xy + hg_ProgramLocal2.xy;\n    r1.x = r0.x*hg_ProgramLocal0.x;\n    r1.y = cos(r1.x);\n    r1.zw = hg_ProgramLocal2.xy + hg_ProgramLocal2.xy;\n    r1.x = sin(r1.x);\n    r1.xy = r0.yy*r1.xy + hg_ProgramLocal1.xy;\n    r0.zw = r1.xy/r1.zw;\n    r2.xy = fract(r0.zw);\n    r2.xy = r1.zw*r2.xy;\n    r0.xy = floor(r0.zw);\n    r0.zw = r0.xy*c0.zz;\n    r0.zw = floor(r0.zw);\n    r0.xy = -r0.zw*c0.xx + r0.xy;\n    r1.zw = r1.zw - r2.xy;\n    r1.zw = mix(r2.xy, r1.zw, abs(r0.xy));\n    r0.z = abs(hg_ProgramLocal5.z);\n    r1.xy = vec2(-r0.z < 0.00000 ? r1.x : r1.z, -r0.z < 0.00000 ? r1.y : r1.w);\n    r0.xy = r1.zw - r1.xy;\n    r0.xy = vec2(lessThan(c0.zz, abs(r0.xy)));\n    r0.z = float(-r0.z >= c0.y);\n    r0.x = max(r0.x, r0.y);\n    r0.y = float(-r0.z >= c0.y);\n    r0.x = min(r0.y, r0.x);\n    r1.xy = vec2(-r0.x < 0.00000 ? r1.z : r1.x, -r0.x < 0.00000 ? r1.w : r1.y);\n    r1.xy = r1.xy - hg_ProgramLocal2.xy;\n    r1.xy = r1.xy*hg_ProgramLocal4.xy;\n    r1.xy = r1.xy + hg_ProgramLocal6.xy;\n    r1.xy = r1.xy*hg_ProgramLocal6.zw;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    gl_FragColor = vec4(-r0.x < 0.00000 ? c0.y : r1.x, -r0.x < 0.00000 ? c0.y : r1.y, -r0.x < 0.00000 ? c0.y : r1.z, -r0.x < 0.00000 ? c0.y : r1.w);\n}\n//MD5=f5d72695:4c61ea17:4f14cea2:d8909f3c\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA80898(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA80A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA80A68()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA80A60);
}

uint64_t HgcPolarToRect::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcPolarToRect::Bind(HgcPolarToRect *this, HGHandler *a2)
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

uint64_t HgcPolarToRect::RenderTile(HgcPolarToRect *this, HGTile *a2)
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
          v22 = vaddq_f32(v20, vmulq_f32(v17, v21));
          v23 = vaddq_f32(v20, vmulq_f32(v18, v21));
          v24 = *(v19 + 16);
          v25 = vmulq_f32(*v19, v22);
          v26 = vmulq_f32(*v19, v23);
          v27 = *(v19 + 96);
          v28 = *(v19 + 112);
          v29 = vmulq_f32(v27, vrev64q_s32(v25));
          v30 = vmulq_f32(v27, vrev64q_s32(v26));
          v31 = vcvtq_f32_s32(vcvtq_s32_f32(v29));
          v32 = vcvtq_f32_s32(vcvtq_s32_f32(v30));
          v33 = vsubq_f32(v30, vsubq_f32(v32, vandq_s8(v28, vcgtq_f32(v32, v30))));
          v34 = *(v19 + 128);
          v35 = *(v19 + 144);
          v36 = vsubq_f32(vabdq_f32(vsubq_f32(v29, vsubq_f32(v31, vandq_s8(v28, vcgtq_f32(v31, v29)))), v34), v35);
          v37 = vsubq_f32(vabdq_f32(v33, v34), v35);
          v38 = vmulq_f32(v36, v36);
          v39 = vmulq_f32(v37, v37);
          v40 = *(v19 + 160);
          v41 = *(v19 + 176);
          v42 = *(v19 + 192);
          v43 = *(v19 + 208);
          v44 = vmulq_f32(v36, vaddq_f32(v43, vmulq_f32(v38, vaddq_f32(v42, vmulq_f32(v38, vaddq_f32(v40, vmulq_f32(v41, v38)))))));
          v45 = vmulq_f32(v37, vaddq_f32(v43, vmulq_f32(v39, vaddq_f32(v42, vmulq_f32(v39, vaddq_f32(v40, vmulq_f32(v41, v39)))))));
          v46 = *(v19 + 224);
          v47 = *(v19 + 240);
          v25.i64[0] = vbslq_s8(v46, v25, v44).u64[0];
          v26.i64[0] = vbslq_s8(v46, v26, v45).u64[0];
          *&v25.u32[2] = vadd_f32(*v20.f32, *v20.f32);
          v26.i64[1] = v25.i64[1];
          v48 = vaddq_f32(v43, vmulq_f32(v42, v25));
          v49 = vaddq_f32(v43, vmulq_f32(v42, v26));
          v50 = vcvtq_f32_s32(vcvtq_s32_f32(v48));
          v51 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
          v52 = vaddq_f32(v43, vabdq_f32(vsubq_f32(v48, vsubq_f32(v50, vandq_s8(v41, vcgtq_f32(v50, v48)))), v40));
          v53 = vaddq_f32(v43, vabdq_f32(vsubq_f32(v49, vsubq_f32(v51, vandq_s8(v41, vcgtq_f32(v51, v49)))), v40));
          v54 = vmulq_f32(v52, v52);
          v55 = vmulq_f32(v53, v53);
          v56 = vaddq_f32(v35, vmulq_f32(v34, v54));
          v57 = vaddq_f32(v35, vmulq_f32(v34, v55));
          v58 = vbslq_s8(v46, vmulq_f32(v52, vaddq_f32(v27, vmulq_f32(v54, vaddq_f32(v28, vmulq_f32(v54, v56))))), v25);
          v59 = vbslq_s8(v46, vmulq_f32(v53, vaddq_f32(v27, vmulq_f32(v55, vaddq_f32(v28, vmulq_f32(v55, v57))))), v26);
          v60 = vaddq_f32(v24, vmulq_lane_f32(v58, *v22.f32, 1));
          v61 = vaddq_f32(v24, vmulq_lane_f32(v59, *v23.f32, 1));
          v28.i64[0] = v60.i64[0];
          v28.i64[1] = v58.i64[1];
          v57.i64[0] = v61.i64[0];
          v57.i64[1] = v59.i64[1];
          v62 = vminq_f32(vmaxq_f32(vrecpeq_f32(v28), v43), v47);
          v63 = vminq_f32(vmaxq_f32(vrecpeq_f32(v57), v43), v47);
          v64 = vminq_f32(vmaxq_f32(vmulq_f32(v62, vrecpsq_f32(v28, v62)), v43), v47);
          v65 = vminq_f32(vmaxq_f32(vmulq_f32(v63, vrecpsq_f32(v57, v63)), v43), v47);
          v66 = vextq_s8(v58, v60, 8uLL);
          v67 = vextq_s8(v59, v61, 8uLL);
          v68 = vmulq_f32(vmulq_f32(v64, vrecpsq_f32(v28, v64)), v66);
          v69 = vmulq_f32(vmulq_f32(v65, vrecpsq_f32(v57, v65)), v67);
          v70 = vextq_s8(v68, v68, 8uLL);
          v71 = vextq_s8(v69, v69, 8uLL);
          v72 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
          v73 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
          v74 = *(v19 + 256);
          v75 = *(v19 + 272);
          v76 = vsubq_f32(v72, vandq_s8(v74, vcgtq_f32(v72, v70)));
          v77 = vsubq_f32(v73, vandq_s8(v74, vcgtq_f32(v73, v71)));
          v78 = vmulq_f32(v66, vsubq_f32(v70, v76));
          v79 = vmulq_f32(v67, vsubq_f32(v71, v77));
          v53.i64[0] = v76.i64[0];
          v53.i64[1] = vmulq_f32(v74, vdupq_lane_s64(*&v76, 0)).i64[1];
          v70.i64[0] = v77.i64[0];
          v70.i64[1] = vmulq_f32(v74, vdupq_lane_s64(*&v77, 0)).i64[1];
          v80 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
          v81 = vcvtq_f32_s32(vcvtq_s32_f32(v70));
          v82 = vbslq_s8(vcgtq_f32(v80, v53), v42, 0);
          v83 = vbslq_s8(vcgtq_f32(v81, v70), v42, 0);
          v70.i64[0] = vsubq_f32(v76, vmulq_laneq_f32(vdupq_laneq_s64(vsubq_f32(v80, v82), 1), v41, 3)).u64[0];
          v41.i64[0] = vsubq_f32(v77, vmulq_laneq_f32(vdupq_laneq_s64(vsubq_f32(v81, v83), 1), v41, 3)).u64[0];
          v84 = vextq_s8(v78, v78, 8uLL);
          v85 = vextq_s8(v79, v79, 8uLL);
          v60.i64[1] = vaddq_f32(vdupq_lane_s64(*&v78, 0), vmulq_f32(vsubq_f32(vsubq_f32(v28, v84), v84), vabsq_f32(vdupq_lane_s64(*&v70, 0)))).i64[1];
          v61.i64[1] = vaddq_f32(vdupq_lane_s64(*&v79, 0), vmulq_f32(vsubq_f32(vsubq_f32(v57, v85), v85), vabsq_f32(vdupq_lane_s64(*&v41, 0)))).i64[1];
          *v78.i8 = vabs_f32(*(v19 + 88));
          v86 = vcgtq_f32(vdupq_lane_s32(*v78.i8, 0), v75);
          v41.i64[0] = vbslq_s8(v86, v60, vdupq_laneq_s64(v60, 1)).u64[0];
          v41.i64[1] = v60.i64[1];
          v84.i64[0] = vbslq_s8(v86, v61, vdupq_laneq_s64(v61, 1)).u64[0];
          v84.i64[1] = v61.i64[1];
          v87 = vextq_s8(v41, v41, 8uLL);
          v88 = vextq_s8(v84, v84, 8uLL);
          *v28.f32 = vsub_f32(*v87.i8, *v41.f32);
          v28.i64[1] = v78.i64[0];
          *v57.f32 = vsub_f32(*v88.i8, *v84.f32);
          v57.i64[1] = v78.i64[0];
          v89 = *(v19 + 288);
          v28.i64[0] = vandq_s8(vcagtq_f32(v28, v89), v74).u64[0];
          v57.i64[0] = vandq_s8(vcagtq_f32(v57, v89), v74).u64[0];
          v70.i64[0] = v28.i64[0];
          v70.i64[1] = v78.i64[0];
          v85.i64[0] = v57.i64[0];
          v85.i64[1] = v78.i64[0];
          v90 = vandq_s8(v75, vcgeq_f32(vnegq_f32(v70), v89));
          v91 = vandq_s8(v75, vcgeq_f32(vnegq_f32(v85), v89));
          v70.i64[0] = vextq_s8(v90, v90, 8uLL).u64[0];
          v85.i64[0] = v28.i64[0];
          v85.i64[1] = v90.i64[1];
          v76.i64[0] = vextq_s8(v91, v91, 8uLL).u64[0];
          v77.i64[0] = v57.i64[0];
          v77.i64[1] = v91.i64[1];
          v28.i64[1] = vdupq_laneq_s64(v90, 1).u64[0];
          v57.i64[1] = vdupq_laneq_s64(v91, 1).u64[0];
          v28.i64[0] = vmaxq_f32(v85, vrev64q_s32(v28)).u64[0];
          v57.i64[0] = vmaxq_f32(v77, vrev64q_s32(v57)).u64[0];
          *v85.f32 = vext_s8(*v70.f32, *v28.f32, 4uLL);
          *v70.f32 = vext_s8(*v28.f32, *v70.f32, 4uLL);
          v28.i64[1] = v90.i64[1];
          *v90.i8 = vext_s8(*v76.f32, *v57.f32, 4uLL);
          *v76.f32 = vext_s8(*v57.f32, *v76.f32, 4uLL);
          v57.i64[1] = v91.i64[1];
          v70.i64[1] = v85.i64[0];
          v76.i64[1] = v90.i64[0];
          v28.i64[0] = vbslq_s8(v46, v28, vandq_s8(v74, vcgeq_f32(vnegq_f32(v70), v75))).u64[0];
          v74.i64[0] = vbslq_s8(v46, v57, vandq_s8(v74, vcgeq_f32(vnegq_f32(v76), v75))).u64[0];
          v92 = vminq_f32(vdupq_lane_s32(*v28.f32, 1), vdupq_lane_s32(*v28.f32, 0));
          v93 = vminq_f32(vdupq_lane_s32(*v74.f32, 1), vdupq_lane_s32(*v74.f32, 0));
          v94 = vsubq_f32(vbslq_s8(vcgtq_f32(v92, v75), v87, v41), v20);
          v95 = vsubq_f32(vbslq_s8(vcgtq_f32(v93, v75), v88, v84), v20);
          v96 = *(v19 + 64);
          v97 = vmulq_f32(v96, v95);
          v98 = *(a2 + 22);
          v99 = vsubq_f32(vmulq_f32(v96, v94), v9);
          v100 = *(a2 + 10);
          if (v5)
          {
            v101 = vaddq_s32(vcvtq_s32_f32(v99), vcltzq_f32(v99));
            v102 = vsubq_f32(v99, vcvtq_f32_s32(v101)).u64[0];
            v103 = vsubq_f32(v97, v9);
            v104 = vaddq_s32(vcvtq_s32_f32(v103), vcltzq_f32(v103));
            v105 = vsubq_f32(v103, vcvtq_f32_s32(v104)).u64[0];
            *v101.i8 = vmla_s32(vzip1_s32(*v101.i8, *v104.i8), vzip2_s32(*v101.i8, *v104.i8), vdup_n_s32(v98));
            v106 = (v100 + 16 * v101.i32[0]);
            v107 = vaddq_f32(*v106, vmulq_n_f32(vsubq_f32(v106[1], *v106), v102.f32[0]));
            v108 = vaddq_f32(v107, vmulq_lane_f32(vsubq_f32(vaddq_f32(v106[v98], vmulq_n_f32(vsubq_f32(v106[v98 + 1], v106[v98]), v102.f32[0])), v107), v102, 1));
            v109 = (v100 + 16 * v101.i32[1]);
            v110 = vaddq_f32(*v109, vmulq_n_f32(vsubq_f32(v109[1], *v109), v105.f32[0]));
            v111 = vaddq_f32(v110, vmulq_lane_f32(vsubq_f32(vaddq_f32(v109[v98], vmulq_n_f32(vsubq_f32(v109[v98 + 1], v109[v98]), v105.f32[0])), v110), v105, 1));
          }

          else
          {
            v112 = vaddq_f32(v99, v13);
            v113 = vcvtq_s32_f32(v112);
            v114 = vaddq_f32(vsubq_f32(v97, v9), v13);
            v115 = vcvtq_s32_f32(v114);
            *v112.f32 = vadd_s32(*v113.i8, *&vcgtq_f32(vcvtq_f32_s32(v113), v112));
            *v114.f32 = vadd_s32(*v115.i8, *&vcgtq_f32(vcvtq_f32_s32(v115), v114));
            *v114.f32 = vmla_s32(vzip1_s32(*v112.f32, *v114.f32), vzip2_s32(*v112.f32, *v114.f32), vdup_n_s32(v98));
            v116 = v114.i32[1];
            v108 = *(v100 + 16 * v114.i32[0]);
            v111 = *(v100 + 16 * v116);
          }

          v117 = *(v19 + 304);
          v118 = (v11 + 16 * v15);
          *v118 = vbslq_s8(vcgtq_f32(v92, v117), v117, v108);
          v118[1] = vbslq_s8(vcgtq_f32(v93, v117), v117, v111);
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v119 = *(this + 51);
        v120 = *(v119 + 32);
        v121 = vaddq_f32(v120, vmulq_f32(v17, *(v119 + 48)));
        v122 = vmulq_f32(*v119, v121);
        v123 = *(v119 + 96);
        v124 = *(v119 + 112);
        v125 = vmulq_f32(v123, vrev64q_s32(v122));
        v126 = vcvtq_f32_s32(vcvtq_s32_f32(v125));
        v127 = *(v119 + 128);
        v128 = *(v119 + 144);
        v129 = vsubq_f32(vabdq_f32(vsubq_f32(v125, vsubq_f32(v126, vandq_s8(v124, vcgtq_f32(v126, v125)))), v127), v128);
        v130 = vmulq_f32(v129, v129);
        v132 = *(v119 + 160);
        v131 = *(v119 + 176);
        v133 = *(v119 + 192);
        v134 = *(v119 + 208);
        v135 = vmulq_f32(v129, vaddq_f32(v134, vmulq_f32(v130, vaddq_f32(v133, vmulq_f32(v130, vaddq_f32(v132, vmulq_f32(v131, v130)))))));
        v136 = *(v119 + 224);
        v137 = *(v119 + 240);
        v122.i64[0] = vbslq_s8(v136, v122, v135).u64[0];
        *&v122.u32[2] = vadd_f32(*v120.f32, *v120.f32);
        v138 = vaddq_f32(v134, vmulq_f32(v133, v122));
        v139 = vcvtq_f32_s32(vcvtq_s32_f32(v138));
        v140 = vaddq_f32(v134, vabdq_f32(vsubq_f32(v138, vsubq_f32(v139, vandq_s8(v131, vcgtq_f32(v139, v138)))), v132));
        v141 = vmulq_f32(v140, v140);
        v142 = vbslq_s8(v136, vmulq_f32(v140, vaddq_f32(v123, vmulq_f32(v141, vaddq_f32(v124, vmulq_f32(v141, vaddq_f32(v128, vmulq_f32(v127, v141))))))), v122);
        v143 = vaddq_f32(*(v119 + 16), vmulq_lane_f32(v142, *v121.f32, 1));
        v123.i64[0] = v143.i64[0];
        v123.i64[1] = v142.i64[1];
        v144 = vminq_f32(vmaxq_f32(vrecpeq_f32(v123), v134), v137);
        v145 = vminq_f32(vmaxq_f32(vmulq_f32(v144, vrecpsq_f32(v123, v144)), v134), v137);
        v146 = vextq_s8(v142, v143, 8uLL);
        v147 = vmulq_f32(vmulq_f32(v145, vrecpsq_f32(v123, v145)), v146);
        v148 = vextq_s8(v147, v147, 8uLL);
        v149 = vcvtq_f32_s32(vcvtq_s32_f32(v148));
        v150 = *(v119 + 256);
        v151 = *(v119 + 272);
        v152 = vsubq_f32(v149, vandq_s8(v150, vcgtq_f32(v149, v148)));
        v153 = vmulq_f32(v146, vsubq_f32(v148, v152));
        v140.i64[0] = v152.i64[0];
        v140.i64[1] = vmulq_f32(v150, vdupq_lane_s64(*&v152, 0)).i64[1];
        v154 = vcvtq_f32_s32(vcvtq_s32_f32(v140));
        v131.i64[0] = vsubq_f32(v152, vmulq_laneq_f32(vdupq_laneq_s64(vsubq_f32(v154, vbslq_s8(vcgtq_f32(v154, v140), v133, 0)), 1), v131, 3)).u64[0];
        v155 = vextq_s8(v153, v153, 8uLL);
        v143.i64[1] = vaddq_f32(vdupq_lane_s64(*&v153, 0), vmulq_f32(vsubq_f32(vsubq_f32(v123, v155), v155), vabsq_f32(vdupq_lane_s64(*&v131, 0)))).i64[1];
        *v123.f32 = vabs_f32(*(v119 + 88));
        v143.i64[0] = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v123.f32, 0), v151), v143, vdupq_laneq_s64(v143, 1)).u64[0];
        v156 = vextq_s8(v143, v143, 8uLL);
        *v155.f32 = vsub_f32(*v156.i8, *v143.i8);
        v155.i64[1] = v123.i64[0];
        v157 = *(v119 + 288);
        v155.i64[0] = vandq_s8(vcagtq_f32(v155, v157), v150).u64[0];
        v154.i64[0] = v155.i64[0];
        v154.i64[1] = v123.i64[0];
        v158 = vandq_s8(v151, vcgeq_f32(vnegq_f32(v154), v157));
        v157.i64[0] = v155.i64[0];
        v157.i64[1] = v158.i64[1];
        v152.i64[0] = vextq_s8(v158, v158, 8uLL).u64[0];
        v155.i64[1] = vdupq_laneq_s64(v158, 1).u64[0];
        v155.i64[0] = vmaxq_f32(v157, vrev64q_s32(v155)).u64[0];
        *v154.f32 = vext_s8(*v155.f32, *v152.f32, 4uLL);
        v155.i64[1] = v158.i64[1];
        *&v154.u32[2] = vext_s8(*v152.f32, *v155.f32, 4uLL);
        v136.i64[0] = vbslq_s8(v136, v155, vandq_s8(v150, vcgeq_f32(vnegq_f32(v154), v151))).u64[0];
        v159 = vminq_f32(vdupq_lane_s32(*v136.i8, 1), vdupq_lane_s32(*v136.i8, 0));
        v160 = *(a2 + 22);
        v161 = vsubq_f32(vmulq_f32(*(v119 + 64), vsubq_f32(vbslq_s8(vcgtq_f32(v159, v151), v156, v143), v120)), v9);
        v162 = *(a2 + 10);
        if (v5)
        {
          v163 = vaddq_s32(vcvtq_s32_f32(v161), vcltzq_f32(v161));
          v164 = vsubq_f32(v161, vcvtq_f32_s32(v163)).u64[0];
          v165 = (v162 + 16 * (v163.i32[0] + v163.i32[1] * v160));
          v166 = vaddq_f32(*v165, vmulq_n_f32(vsubq_f32(v165[1], *v165), v164.f32[0]));
          v167 = vaddq_f32(v166, vmulq_lane_f32(vsubq_f32(vaddq_f32(v165[v160], vmulq_n_f32(vsubq_f32(v165[v160 + 1], v165[v160]), v164.f32[0])), v166), v164, 1));
        }

        else
        {
          v168 = vaddq_f32(v161, v13);
          v169 = vcvtq_s32_f32(v168);
          v168.i64[0] = vaddq_s32(v169, vcgtq_f32(vcvtq_f32_s32(v169), v168)).u64[0];
          v167 = *(v162 + 16 * (v168.i32[0] + v168.i32[1] * v160));
        }

        *(v11 + 16 * v15) = vbslq_s8(vcgtq_f32(v159, *(v119 + 304)), *(v119 + 304), v167);
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcPolarToRect::GetDOD(HgcPolarToRect *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPolarToRect::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPolarToRect::HgcPolarToRect(HgcPolarToRect *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E2678;
  operator new();
}

void HgcPolarToRect::~HgcPolarToRect(HGNode *this)
{
  *this = &unk_2871E2678;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4055B0EC01);
  }

  HGNode::~HGNode(this);
}

{
  HgcPolarToRect::~HgcPolarToRect(this);

  HGObject::operator delete(v1);
}

uint64_t HgcPolarToRect::SetParameter(HgcPolarToRect *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
        if (*(v13 + 64) != a3.n128_f32[0] || *(v13 + 68) != a4 || *(v13 + 72) != a5 || *(v13 + 76) != a6)
        {
          *(v13 + 64) = a3.n128_u32[0];
          *(v13 + 68) = a4;
          *(v13 + 72) = a5;
          *(v13 + 76) = a6;
          goto LABEL_38;
        }

        return 0;
      case 5:
        v9 = *(this + 51);
        if (v9[5].n128_f32[0] != 0.0 || v9[5].n128_f32[1] != 0.0 || v9[5].n128_f32[2] != a3.n128_f32[0] || v9[5].n128_f32[3] != 0.0)
        {
          v9[5].n128_u64[0] = 0;
          v9[5].n128_u32[2] = a3.n128_u32[0];
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

float HgcPolarToRect::GetParameter(HgcPolarToRect *this, int a2, float *a3)
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
        *a3 = v9[16];
        a3[1] = v9[17];
        a3[2] = v9[18];
        v4 = v9 + 19;
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

const char *HgcConcentricTriangleChecker::GetProgram(HgcConcentricTriangleChecker *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_153;
    }

    else
    {
      return aMetal10Len0000_154;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_50;
  }
}

void sub_25FA81DF4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA81EF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA81F34()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA81F2CLL);
}

uint64_t HgcConcentricTriangleChecker::Bind(HgcConcentricTriangleChecker *this, HGHandler *a2)
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

uint64_t HgcConcentricTriangleChecker::RenderTile(uint64_t a1, uint64_t a2)
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
    v288 = v7;
    v8 = 16 * *(a2 + 24);
    v9 = 0uLL;
    do
    {
      if (v5 >= 1)
      {
        v10 = 0;
        v11 = v288;
        do
        {
          v310 = v11;
          v12 = *(a1 + 408);
          v13 = vmulq_f32(v11, *(v12 + 160));
          v14 = vaddq_f32(v13, vextq_s8(v13, v13, 4uLL));
          v15 = vmulq_f32(v11, *(v12 + 176));
          v16 = vaddq_f32(v15, vextq_s8(v15, v15, 4uLL));
          v17 = vextq_s8(v16, v14, 8uLL);
          v16.i64[1] = v14.i64[1];
          v18 = vaddq_f32(v16, v17);
          v19 = vabsq_f32(v18);
          v20 = *(v12 + 208);
          v21 = vandq_s8(*(v12 + 192), vsliq_n_s64(v18, v18, 0x20uLL));
          v22 = vbslq_s8(v20, vmaxq_f32(vextq_s8(v21, v21, 8uLL), vrev64q_s32(v19)), v21);
          v23 = vextq_s8(v22, v22, 0xCuLL);
          v24 = *(v12 + 224);
          v25 = *(v12 + 240);
          v26 = vminq_f32(vmaxq_f32(vrecpeq_f32(v23), v24), v25);
          v27 = vminq_f32(vmaxq_f32(vmulq_f32(v26, vrecpsq_f32(v23, v26)), v24), v25);
          v23.i64[0] = vmulq_f32(v27, vrecpsq_f32(v23, v27)).u64[0];
          v27.i64[0] = vdupq_laneq_s64(v19, 1).u64[0];
          v28.i64[0] = v23.i64[0];
          v28.i64[1] = v27.i64[0];
          v29 = vbslq_s8(v20, vmulq_n_f32(vbslq_s8(v20, vminq_f32(vextq_s8(v22, v22, 8uLL), vrev64q_s32(v28)), v21), v23.f32[0]), v21);
          v30 = v20;
          v31 = vmulq_laneq_f32(vextq_s8(v29, v29, 0xCuLL), v29, 3);
          v32.i64[0] = v31.i64[0];
          v32.i64[1] = v19.i64[1];
          *v23.f32 = vext_s8(*v31.i8, *&vextq_s8(v19, v19, 8uLL), 4uLL);
          v19.i64[0] = vextq_s8(v19, v31, 0xCuLL).u64[0];
          v31.i64[1] = v27.i64[0];
          v23.i64[1] = v19.i64[0];
          v33 = *(v12 + 256);
          v306 = *(v12 + 272);
          v34 = vaddq_f32(v24, vmulq_f32(v306, vrev64q_s32(v31)));
          v35 = *(v12 + 288);
          v305 = *(v12 + 304);
          v36 = vbslq_s8(v35, v32, v34);
          v37 = vsubq_f32(v23, v29);
          v38 = vbslq_s8(v35, v32, vaddq_f32(v305, vmulq_n_f32(v36, v36.f32[0])));
          v39 = *(v12 + 320);
          v307 = *(v12 + 336);
          v40 = vbslq_s8(v33, v37, v29);
          v41 = vbslq_s8(v35, v32, vaddq_f32(v39, vmulq_n_f32(v38, v38.f32[0])));
          v42 = vbslq_s8(v35, v32, vaddq_f32(v307, vmulq_n_f32(v41, v41.f32[0])));
          v43 = v35;
          v44 = vmulq_n_f32(v40, vaddq_f32(v307, vmulq_lane_f32(v42, *v42.f32, 1)).f32[0]);
          v45 = vbslq_s8(v30, vextq_s8(v40, v40, 4uLL), v40);
          v46 = vmulq_f32(v45, v45);
          v47 = vbslq_s8(v30, vaddq_f32(v46, vextq_s8(v46, v46, 0xCuLL)), v40);
          v48 = *(v12 + 352);
          v49 = *(v12 + 368);
          v50 = vbslq_s8(v33, vbslq_s8(vcgtq_f32(v48, v47), vrev64q_s32(vsubq_f32(v39, vextq_s8(v44, v44, 0xCuLL))), vextq_s8(v44, v44, 8uLL)), v47);
          v51 = vbslq_s8(v33, vbslq_s8(vcgtq_f32(v48, vextq_s8(v50, v50, 4uLL)), vsubq_f32(v49, v50), v50), v47);
          v52 = vextq_s8(v51, v51, 0xCuLL);
          v53 = vminq_f32(vrsqrteq_f32(v52), v49);
          v54 = vminq_f32(vmulq_f32(v53, vrsqrtsq_f32(vmulq_f32(v53, v52), v53)), v49);
          v55 = vminq_f32(vmulq_f32(v54, vrsqrtsq_f32(vmulq_f32(v54, v52), v54)), v49);
          v56 = *(v12 + 32);
          v57 = *(v12 + 48);
          v58 = vmulq_f32(v55, v52);
          v304 = v48;
          v59 = *(v12 + 400);
          v60 = vbslq_s8(vcgtq_f32(vandq_s8(v59, vceqq_f32(vrev64q_s32(v57), v48)), v48), v59, vrev64q_s32(v58));
          v300 = *(v12 + 384);
          v302 = *(v12 + 432);
          v303 = *(v12 + 416);
          v61 = vorrq_s8(vandq_s8(v60, v300), v59);
          v301 = *(v12 + 464);
          v62 = vandq_s8(v59, vcgtq_f32(v61, v301));
          v297 = *(v12 + 496);
          v63 = vsubq_f32(vsubq_f32(v61, v59), vmulq_f32(vmulq_f32(*(v12 + 480), v62), v61));
          v64 = vmulq_f32(v63, v63);
          v298 = *(v12 + 512);
          v299 = *(v12 + 448);
          v308 = *(v12 + 528);
          v309 = *(v12 + 544);
          v65 = *(v12 + 560);
          v66 = vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v60, 0x17uLL)), vandq_s8(v302, vcgtq_f32(v303, v60))), v299), v62), vmulq_f32(v63, vaddq_f32(*(v12 + 592), vmulq_f32(v63, vaddq_f32(vaddq_f32(v65, vmulq_f32(*(v12 + 576), v63)), vmulq_f32(v64, vaddq_f32(vaddq_f32(v297, vmulq_f32(v298, v63)), vmulq_f32(v64, vaddq_f32(v308, vmulq_f32(v309, v63)))))))))), *v57.i32);
          v67 = *(v12 + 624);
          v68 = veorq_s8(vandq_s8(v51, v300), vrev64q_s32(v51));
          v69 = vmaxq_f32(v66, *(v12 + 608));
          v70 = vcvtq_f32_s32(vcvtq_s32_f32(v69));
          v71 = vsubq_f32(v70, vandq_s8(v59, vcgtq_f32(v70, v69)));
          v72 = vsubq_f32(v69, v71);
          v73 = *(v12 + 640);
          v74 = *(v12 + 656);
          v75 = *(v12 + 688);
          v76 = *(v12 + 672);
          v77 = vcvtq_s32_f32(v71);
          v79 = *(v12 + 704);
          v78 = *(v12 + 720);
          v80 = vbslq_s8(v43, v68, vmulq_f32(vaddq_f32(v59, vmulq_f32(v72, vaddq_f32(v75, vmulq_f32(v72, vaddq_f32(vaddq_f32(v74, vmulq_f32(v76, v72)), vmulq_f32(vmulq_f32(v72, v72), vaddq_f32(v67, vmulq_f32(v73, v72)))))))), vshlq_n_s32(vaddq_s32(v79, v77), 0x17uLL)));
          v81 = vaddq_f32(vdupq_lane_s64(v80.i64[0], 0), vmulq_lane_f32(*(v12 + 64), *v80.i8, 1));
          v82 = vextq_s8(v81, v80, 8uLL);
          v80.i64[1] = v81.i64[1];
          v83 = vbslq_s8(v43, vmulq_f32(v75, v82), v80);
          v84 = vcvtq_f32_s32(vcvtq_s32_f32(v83));
          v85 = vbslq_s8(v43, vsubq_f32(v84, vandq_s8(v76, vcgtq_f32(v84, v83))), v80);
          v86 = vbslq_s8(v43, vsubq_f32(vextq_s8(v85, v85, 8uLL), vmulq_laneq_f32(v85, v75, 3)), v80);
          v87 = *(v12 + 208);
          v88 = vbslq_s8(v87, vaddq_f32(v75, vextq_s8(v86, v86, 4uLL)), v86);
          v89 = *(v12 + 16);
          v90 = vrev64q_s32(v89);
          v91 = vminq_f32(vmaxq_f32(vrecpeq_f32(v90), v78), v25);
          v296 = v75;
          v92 = vminq_f32(vmaxq_f32(vmulq_f32(v91, vrecpsq_f32(v90, v91)), v78), v25);
          v58.i64[1] = vbslq_s8(vcgtq_f32(v75, v88), vrev64q_s32(*&v88), *&v88).i64[1];
          v93 = vmulq_f32(vmulq_f32(v92, vrecpsq_f32(v90, v92)), v88);
          v94 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
          v95 = vsubq_f32(v94, vandq_s8(v59, vcgtq_f32(v94, v93)));
          v96 = vminq_f32(vmaxq_f32(vrecpeq_f32(v56), v78), v25);
          v97 = vbslq_s8(*(v12 + 256), v95, v58);
          v98 = vminq_f32(vmaxq_f32(vmulq_f32(v96, vrecpsq_f32(v56, v96)), v78), v25);
          v294 = v25;
          v99 = vmulq_laneq_f32(vmulq_f32(v98, vrecpsq_f32(v56, v98)), v97, 2);
          v100 = vextq_s8(v99, v99, 8uLL);
          v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
          v102 = vmulq_laneq_f32(v56, vsubq_f32(v101, vbslq_s8(vcgtq_f32(v101, v100), v78, v9)), 2);
          v103 = vmulq_f32(v76, vextq_s8(v102, v102, 8uLL));
          v104 = vcvtq_f32_s32(vcvtq_s32_f32(v103));
          v105 = vsubq_f32(vabdq_f32(vsubq_f32(v103, vsubq_f32(v104, vandq_s8(v78, vcgtq_f32(v104, v103)))), v74), v73);
          v106 = vmulq_f32(v105, v105);
          v291 = *(v12 + 608);
          v292 = *(v12 + 592);
          v107 = *(v12 + 576);
          v108 = vmulq_f32(v105, vaddq_f32(v107, vmulq_f32(v106, vaddq_f32(v292, vmulq_f32(v106, vaddq_f32(v67, vmulq_f32(v291, v106)))))));
          v56.i64[0] = vaddq_f32(v56, v102).u64[0];
          v295 = v78;
          v109 = vaddq_f32(v78, vmulq_f32(v76, vextq_s8(v102, v102, 4uLL)));
          v110 = vcvtq_f32_s32(vcvtq_s32_f32(v109));
          v56.i64[1] = v108.i64[1];
          v111 = vaddq_f32(v78, vabdq_f32(vsubq_f32(v109, vsubq_f32(v110, vandq_s8(v74, vcgtq_f32(v110, v109)))), v73));
          v112 = vmulq_f32(v111, v111);
          v113 = vbslq_s8(v87, vmulq_f32(v111, vaddq_f32(v75, vmulq_f32(v112, vaddq_f32(v292, vmulq_f32(v112, vaddq_f32(v67, vmulq_f32(v291, v112))))))), v56);
          v114 = *(v12 + 736);
          v115 = vaddq_f32(v114, vmulq_f32(*(v12 + 752), vrev64q_s32(v113)));
          v116 = vcvtq_f32_s32(vcvtq_s32_f32(v115));
          v289 = *(v12 + 480);
          v117 = vaddq_f32(v114, vabdq_f32(vsubq_f32(v115, vsubq_f32(v116, vandq_s8(v59, vcgtq_f32(v116, v115)))), v289));
          v118 = vmulq_f32(v117, v117);
          v119 = *(v12 + 768);
          v120 = *(v12 + 784);
          v121 = *(v12 + 800);
          v122 = *(v12 + 816);
          v123 = vmulq_f32(v122, v113);
          v124 = vcvtq_f32_s32(vcvtq_s32_f32(v123));
          v125 = vmulq_f32(v117, vaddq_f32(v122, vmulq_f32(v118, vaddq_f32(v121, vmulq_f32(v118, vaddq_f32(v119, vmulq_f32(v120, v118)))))));
          v126 = vsubq_f32(vabdq_f32(vsubq_f32(v123, vsubq_f32(v124, vandq_s8(v121, vcgtq_f32(v124, v123)))), v120), v119);
          v127 = vmulq_f32(v126, v126);
          v293 = *(v12 + 752);
          v290 = *(v12 + 640);
          v125.i64[0] = vbslq_s8(v43, vmulq_f32(v126, vaddq_f32(v290, vmulq_f32(v127, vaddq_f32(v74, vmulq_f32(v127, vaddq_f32(v293, vmulq_f32(v114, v127))))))), v125).u64[0];
          v128 = vextq_s8(v57, v57, 8uLL);
          v129 = vminq_f32(vmaxq_f32(vmulq_f32(v122, vrecpeq_f32(v128)), v121), v25);
          v130 = vmulq_f32(v129, vrecpsq_f32(v128, v129));
          v75.i64[0] = v125.i64[0];
          v125.i64[1] = vdupq_laneq_s64(v130, 1).u64[0];
          v131 = vbslq_s8(vcgtq_f32(vandq_s8(v121, vceqq_f32(vrev64q_s32(v125), v122)), v122), v121, vextq_s8(v113, vmulq_n_f32(v97, *v89.i32), 8uLL));
          v132 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v131, 0x17uLL)), vandq_s8(v119, vcgtq_f32(v120, v131)));
          v133 = vorrq_s8(vandq_s8(v131, v79), v121);
          v134 = vandq_s8(v121, vcgtq_f32(v133, v114));
          v135 = vsubq_f32(vsubq_f32(v133, v121), vmulq_f32(vmulq_f32(v290, v134), v133));
          v136 = vmulq_f32(v135, v135);
          v75.i64[1] = v130.i64[1];
          v137 = vmaxq_f32(vmulq_laneq_f32(vaddq_f32(vaddq_f32(vsubq_f32(v132, v293), v134), vmulq_f32(v135, vaddq_f32(v289, vmulq_f32(v135, vaddq_f32(vaddq_f32(v298, vmulq_f32(v297, v135)), vmulq_f32(v136, vaddq_f32(vaddq_f32(v107, vmulq_f32(v65, v135)), vmulq_f32(v136, vaddq_f32(v309, vmulq_f32(v308, v135)))))))))), v130, 2), v301);
          v138 = vcvtq_f32_s32(vcvtq_s32_f32(v137));
          v139 = vsubq_f32(v138, vandq_s8(v121, vcgtq_f32(v138, v137)));
          v140 = vsubq_f32(v137, v139);
          v141 = vbslq_s8(v87, vmulq_f32(vaddq_f32(v121, vmulq_f32(v140, vaddq_f32(v49, vmulq_f32(v140, vaddq_f32(vaddq_f32(v303, vmulq_f32(v59, v140)), vmulq_f32(vmulq_f32(v140, v140), vaddq_f32(v299, vmulq_f32(v302, v140)))))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v139), v300), 0x17uLL)), v97);
          v142 = vmulq_laneq_f32(v75, v141, 3);
          v143 = vextq_s8(v113, v142, 8uLL);
          v142.i64[1] = v113.i64[1];
          v144 = vmulq_laneq_f32(v143, v141, 3);
          v145 = vextq_s8(v142, vandq_s8(v59, vceqq_f32(v142, v144)), 0xCuLL);
          *v132.f32 = vext_s8(*v144.f32, *&vextq_s8(v145, v145, 8uLL), 4uLL);
          v132.i64[1] = vextq_s8(v145, v144, 0xCuLL).u64[0];
          v146 = vextq_s8(v89, v89, 4uLL);
          v145.i64[0] = v144.i64[0];
          v147 = vandq_s8(v121, vceqq_f32(v142, v145));
          v148 = vbslq_s8(v87, vextq_s8(v147, v147, 4uLL), v75);
          v149 = vminq_f32(vextq_s8(v148, v148, 8uLL), v132);
          v150 = vbslq_s8(v87, vaddq_f32(v146, vmulq_lane_f32(v146, *v141.f32, 1)), v75);
          v151 = v67;
          v152 = vbslq_s8(vcgtq_f32(vandq_s8(v121, vceqq_f32(vextq_s8(v150, v150, 8uLL), v67)), v67), v121, vextq_s8(v150, v150, 0xCuLL));
          v153 = vorrq_s8(vandq_s8(v152, v79), v121);
          v154 = vandq_s8(v121, vcgtq_f32(v153, v65));
          v155 = vsubq_f32(vsubq_f32(v153, v121), vmulq_f32(vmulq_f32(v120, v154), v153));
          v156 = vmulq_f32(v155, v155);
          v157 = *(v12 + 288);
          v158 = vbslq_s8(v43, vbslq_s8(vcgtq_f32(vrev64q_s32(v149), v67), vextq_s8(vsubq_f32(v143, v120), v144, 8uLL), v142), v142);
          v159 = vmaxq_f32(vmulq_laneq_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v152, 0x17uLL)), vandq_s8(v292, vcgtq_f32(v291, v152))), v107), v154), vmulq_f32(v155, vaddq_f32(v299, vmulq_f32(v155, vaddq_f32(vaddq_f32(v289, vmulq_f32(v301, v155)), vmulq_f32(v156, vaddq_f32(vaddq_f32(v309, vmulq_f32(v308, v155)), vmulq_f32(v156, vaddq_f32(v298, vmulq_f32(v297, v155)))))))))), v150, 2), v302);
          v160 = vcvtq_f32_s32(vcvtq_s32_f32(v159));
          v161 = vsubq_f32(v160, vandq_s8(v121, vcgtq_f32(v160, v159)));
          v162 = vsubq_f32(v159, v161);
          v164 = *(v12 + 832);
          v163 = *(v12 + 848);
          v165 = vmulq_f32(vaddq_f32(v121, vmulq_f32(v162, vaddq_f32(v306, vmulq_f32(v162, vaddq_f32(vaddq_f32(v304, vmulq_f32(v305, v162)), vmulq_f32(vmulq_f32(v162, v162), vaddq_f32(v303, vmulq_f32(*(v12 + 400), v162)))))))), vshlq_n_s32(vaddq_s32(v164, vcvtq_s32_f32(v161)), 0x17uLL));
          v166 = vrev64q_s32(v141);
          v167 = vaddq_f32(v295, vmulq_f32(v76, v166));
          v168 = vcvtq_f32_s32(vcvtq_s32_f32(v167));
          v156.i64[0] = vbslq_s8(v43, v165, v149).u64[0];
          v9 = 0uLL;
          v169 = vaddq_f32(v295, vabdq_f32(vsubq_f32(v167, vsubq_f32(v168, vandq_s8(v121, vcgtq_f32(v168, v167)))), v290));
          v170 = vmulq_f32(v169, v169);
          v171 = vaddq_f32(v296, vmulq_f32(v170, vaddq_f32(v292, vmulq_f32(v170, vaddq_f32(v151, vmulq_f32(v291, v170))))));
          v172 = vsubq_f32(vmulq_n_f32(v158, v156.f32[0]), vextq_s8(v158, v158, 8uLL));
          v173 = vmulq_f32(v169, v171);
          v174 = vmulq_f32(v119, v141);
          v175 = vcvtq_f32_s32(vcvtq_s32_f32(v174));
          v176 = vsubq_f32(vabdq_f32(vsubq_f32(v174, vsubq_f32(v175, vandq_s8(v293, vcgtq_f32(v175, v174)))), v114), v290);
          v177 = vmulq_f32(v176, v176);
          v178 = vmulq_f32(v172, v172);
          v158.i64[1] = v173.i64[1];
          v179 = vbslq_s8(v163, vmulq_f32(v176, vaddq_f32(v107, vmulq_f32(v177, vaddq_f32(v292, vmulq_f32(v177, vaddq_f32(v151, vmulq_f32(v291, v177))))))), v158);
          v180 = vmulq_n_f32(v179, v141.f32[0]);
          v176.i64[0] = v150.i64[0];
          v176.i64[1] = v180.i64[1];
          v43.i64[0] = v179.i64[0];
          v43.i64[1] = vsubq_f32(v180, vdupq_lane_s64(*&v179, 0)).i64[1];
          v181 = vmulq_f32(v172, v43);
          v182 = vextq_s8(vaddq_f32(v178, vextq_s8(v178, v178, 4uLL)), v144, 8uLL);
          v183 = vminq_f32(vmaxq_f32(vrecpeq_f32(v182), v295), v294);
          v184 = vminq_f32(vmaxq_f32(vmulq_f32(v183, vrecpsq_f32(v182, v183)), v295), v294);
          v181.i64[0] = vmulq_laneq_f32(vmulq_f32(v184, vrecpsq_f32(v182, v184)), vaddq_f32(v181, vdupq_laneq_s32(v181, 3)), 2).u64[0];
          v182.i64[0] = vextq_s8(v172, v172, 8uLL).u64[0];
          v185 = vdupq_laneq_s64(v172, 1);
          *v179.f32 = vadd_f32(vmul_n_f32(*v182.f32, v181.f32[0]), *v179.f32);
          v181.i64[1] = v185.i64[0];
          *&v179.u32[2] = vneg_f32(vrev64_s32(*v182.f32));
          v186 = vbslq_s8(v163, vrev64q_s32(v181), v179);
          v181.i64[0] = vextq_s8(v186, v186, 8uLL).u64[0];
          *v185.i8 = vmul_f32(*v181.f32, *v181.f32);
          *v185.i8 = vadd_f32(*v185.i8, vrev64_s32(*v185.i8));
          v187.i64[0] = v185.i64[0];
          v187.i64[1] = v182.i64[0];
          *v182.f32 = vext_s8(*v185.i8, *v182.f32, 4uLL);
          v188 = vsubq_f32(v176, vdupq_lane_s64(v186.i64[0], 0));
          v182.i64[1] = v181.i64[0];
          v189 = vminq_f32(vmaxq_f32(vrecpeq_f32(*v12), v295), v294);
          v190 = vminq_f32(vmaxq_f32(vmulq_f32(v189, vrecpsq_f32(*v12, v189)), v295), v294);
          v191 = vmulq_laneq_f32(vmulq_f32(v190, vrecpsq_f32(*v12, v190)), v141, 2);
          v190.i64[0] = v191.i64[0];
          v192 = vextq_s8(v172, v185, 8uLL);
          v190.i64[1] = v172.i64[1];
          v193 = vminq_f32(vrsqrteq_f32(v192), v65);
          v194 = vnegq_f32(v187);
          v195 = vbslq_s8(v157, vextq_s8(v194, v194, 0xCuLL), v182);
          v196 = vandq_s8(v121, vcgeq_f32(vrev64q_s32(vorrq_s8(v164, v190)), v122));
          v197 = *(v12 + 864);
          v198 = *(v12 + 880);
          v191.i64[0] = vmulq_f32(v191, v197).u64[0];
          v191.i64[1] = vdupq_laneq_s64(v196, 1).u64[0];
          v116.i64[0] = vextq_s8(v196, v196, 8uLL).u64[0];
          v199 = vrev64q_s32(v191);
          v200 = vminq_f32(vmulq_f32(v193, vrsqrtsq_f32(vmulq_f32(v193, v192), v193)), v65);
          v201 = vcvtq_f32_s32(vcvtq_s32_f32(v199));
          v199.i64[0] = vsubq_f32(v201, vbslq_s8(vcgtq_f32(v201, v199), v197, 0)).u64[0];
          *v201.f32 = vext_s8(*v199.f32, *v116.f32, 4uLL);
          *v116.f32 = vext_s8(*v116.f32, *v199.f32, 4uLL);
          v199.i64[1] = v196.i64[1];
          v185.i64[0] = v144.i64[0];
          v185.i64[1] = v188.i64[1];
          v116.i64[1] = v201.i64[0];
          v202 = vbslq_s8(v163, vmulq_f32(v197, v116), v199);
          v203 = vcvtq_f32_s32(vcvtq_s32_f32(v202));
          v204 = vandq_s8(v293, vcgtq_f32(v203, v202));
          v202.i64[0] = v195.i64[0];
          v205 = vbslq_s8(v163, vsubq_f32(v203, v204), v199);
          v206 = v157;
          v207 = vbslq_s8(v157, vmulq_f32(v120, v166), v205);
          v208 = vmulq_f32(v200, vrsqrtsq_f32(vmulq_f32(v200, v192), v200));
          v209 = vcvtq_f32_s32(vcvtq_s32_f32(v207));
          v210 = vsubq_f32(v209, vandq_s8(v121, vcgtq_f32(v209, v207)));
          v211 = vmulq_laneq_f32(v195, v208, 2);
          v212 = vbslq_s8(v157, v210, v205);
          v213 = *(v12 + 256);
          v214 = vbslq_s8(v213, vsubq_f32(v212, vmulq_laneq_f32(v198, v212, 2)), v212);
          v202.i64[1] = v211.i64[1];
          v215 = vbslq_s8(v157, vsubq_f32(v166, vmulq_lane_f32(v214, *v198.f32, 1)), v214);
          v192.i64[0] = vmulq_f32(v202, v202).u64[0];
          v216 = vbslq_s8(v157, vsubq_f32(v215, vrev64q_s32(v215)), vdupq_laneq_s64(v215, 1));
          v217 = *(v12 + 912);
          v202.i64[0] = vextq_s8(v188, v188, 8uLL).u64[0];
          v218 = vandq_s8(*(v12 + 400), vcgeq_f32(vnegq_f32(vdupq_lane_s64(vandq_s8(v216, *(v12 + 896)).i64[0], 0)), v304));
          *v202.f32 = vmul_f32(*v202.f32, *v202.f32);
          *v202.f32 = vadd_f32(*v202.f32, vrev64_s32(*v202.f32));
          v219 = vaddq_f32(vdupq_lane_s32(*v192.f32, 0), vdupq_lane_s32(*v192.f32, 1));
          v201.i64[0] = v156.i64[0];
          v202.i64[1] = vextq_s8(v218, v218, 8uLL).u64[0];
          v144.i64[1] = vdupq_laneq_s64(v188, 1).u64[0];
          v220 = vminq_f32(vdupq_laneq_s32(v218, 2), vdupq_lane_s32(*v218.i8, 1));
          v221 = *(v12 + 928);
          v222 = *(v12 + 944);
          v223 = vbslq_s8(v213, vaddq_f32(v221, vrev64q_s32(v144)), v202);
          v224 = vminq_f32(vrsqrteq_f32(v219), v294);
          v225 = vmulq_n_f32(vdupq_lane_s64(v150.i64[0], 0), v156.f32[0]);
          v156.i64[1] = vdupq_laneq_s64(v208, 1).u64[0];
          v226 = vminq_f32(vmulq_f32(v224, vrsqrtsq_f32(vmulq_f32(v224, v219), v224)), v294);
          v227 = vmulq_f32(v226, vrsqrtsq_f32(vmulq_f32(v226, v219), v226));
          v228 = vbslq_s8(v157, vbslq_s8(vcgtq_f32(vrev64q_s32(v156), v221), vrev64q_s32(v223), v185), v185);
          v229 = vsubq_f32(v228, vmulq_n_f32(v150, v156.f32[0]));
          v230 = vextq_s8(v223, v223, 4uLL);
          v231 = vmulq_f32(v227, v195);
          v232 = vminq_f32(vrsqrteq_f32(v230), v221);
          v43.i64[0] = v229.i64[0];
          v43.i64[1] = v228.i64[1];
          v233 = vminq_f32(vmulq_f32(v232, vrsqrtsq_f32(vmulq_f32(v232, v230), v232)), v221);
          v234 = vbslq_s8(v163, v223, vmulq_f32(v233, vrsqrtsq_f32(vmulq_f32(v233, v230), v233)));
          v235 = vmulq_f32(v43, v43);
          v235.i64[0] = vaddq_f32(v235, vrev64q_s32(v235)).u64[0];
          v236 = vmulq_f32(vzip2q_s64(vsubq_f32(v180, v225), v180), v43);
          v43.i64[0] = v231.i64[0];
          v43.i64[1] = v211.i64[1];
          v235.i64[1] = v234.i64[1];
          v211.i64[0] = vbslq_s8(vcgtq_f32(v220, v217), vdupq_laneq_s64(v43, 1), v231).u64[0];
          v237 = vminq_f32(vmaxq_f32(vrecpeq_f32(v235), v198), v294);
          v238 = vminq_f32(vmaxq_f32(vmulq_f32(v237, vrecpsq_f32(v235, v237)), v198), v294);
          v238.i64[0] = vmulq_f32(vmulq_f32(v238, vrecpsq_f32(v235, v238)), vaddq_f32(v236, vrev64q_s32(v236))).u64[0];
          v239 = vextq_s8(v228, v229, 8uLL);
          v235.i64[0] = vmulq_laneq_f32(v239, v234, 3).u64[0];
          v235.i64[1] = v180.i64[1];
          v211.i64[1] = vaddq_f32(v225, vmulq_n_f32(v239, *&v238)).i64[1];
          v240 = vmulq_f32(v235, v211);
          v241 = vextq_s8(v240, v240, 4uLL);
          v242 = vsubq_f32(v235, v211);
          v243 = vdupq_lane_s64(v240.i64[0], 0);
          v244 = vmulq_f32(v242, v242);
          v245 = vaddq_f32(v244, vextq_s8(v244, v244, 4uLL));
          v246 = vminq_f32(vrsqrteq_f32(v245), v221);
          v247 = vaddq_f32(v241, v243);
          v248 = vminq_f32(vmulq_f32(v246, vrsqrtsq_f32(vmulq_f32(v246, v245), v246)), v221);
          v229.i64[1] = v247.i64[1];
          v249 = vbslq_s8(v163, vmulq_f32(v248, vrsqrtsq_f32(vmulq_f32(v248, v245), v248)), v229);
          v250 = vrev64q_s32(v249);
          v251 = vnegq_f32(v250);
          v248.i64[0] = vbslq_s8(v206, v251, v250).u64[0];
          v252 = vextq_s8(v249, v249, 4uLL);
          v238.i64[1] = v234.i64[1];
          v180.i64[0] = v248.i64[0];
          *&v180.u32[2] = vabs_f32(*&vextq_s8(v252, v252, 8uLL));
          v248.i64[1] = vandq_s8(*&v198, vcgeq_f32(vnegq_f32(v180), v217)).i64[1];
          v253 = vbslq_s8(v163, v238, v248);
          v251.i64[1] = vmulq_laneq_f32(v242, v249, 2).i64[1];
          v254 = vandq_s8(v198, vcgeq_f32(vnegq_f32(v253), v217));
          v248.i64[0] = v253.i64[0];
          v248.i64[1] = v254.i64[1];
          v253.i64[1] = vdupq_laneq_s64(v254, 1).u64[0];
          v255 = vbslq_s8(v206, v250, v251);
          v256 = *(v12 + 208);
          v257 = vbslq_s8(v256, vminq_f32(vrev64q_s32(v253), v248), v248);
          v258 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v257, 3), v217), v255, v257);
          v254.i64[0] = vmulq_f32(v258, v258).u64[0];
          v259 = vaddq_f32(vdupq_lane_s32(*v254.i8, 0), vdupq_lane_s32(*v254.i8, 1));
          v260 = vminq_f32(vrsqrteq_f32(v259), v294);
          v261 = vminq_f32(vmulq_f32(v260, vrsqrtsq_f32(vmulq_f32(v260, v259), v260)), v294);
          v262 = vmulq_f32(vmulq_f32(v261, vrsqrtsq_f32(vmulq_f32(v261, v259), v261)), v258);
          v263 = vextq_s8(v255, v262, 8uLL);
          v262.i64[1] = v255.i64[1];
          *v255.i8 = vabs_f32(vext_s8(*&vextq_s8(v249, v249, 8uLL), *v249.f32, 4uLL));
          v255.i64[1] = vextq_s8(v234, v234, 8uLL).u64[0];
          *v261.f32 = vqtbl1_s8(v255, *v222.i8);
          v264 = vmulq_f32(v262, v263);
          *&v261.u32[2] = vqtbl1_s8(v255, *&vextq_s8(v222, v222, 8uLL));
          v265 = vminq_f32(vmaxq_f32(vrecpeq_f32(v261), v307), v294);
          v266 = vminq_f32(vmaxq_f32(vmulq_f32(v265, vrecpsq_f32(v261, v265)), v307), v294);
          v267 = vaddq_f32(v264, vrev64q_s32(v264));
          v268 = vmulq_f32(v266, vrecpsq_f32(v261, v266));
          *v263.f32 = vext_s8(*v267.i8, *&vextq_s8(v268, v268, 8uLL), 4uLL);
          v222.i64[0] = v267.i64[0];
          v222.i64[1] = v268.i64[1];
          v263.i64[1] = vextq_s8(v268, v267, 0xCuLL).u64[0];
          v269 = vbslq_s8(v213, vmulq_laneq_f32(v263, v249, 3), v222);
          v270 = vmulq_laneq_f32(v269, v269, 3);
          v269.i64[0] = vbslq_s8(v206, v269, v270).u64[0];
          v271 = vmulq_f32(v250, vabsq_f32(vdupq_lane_s32(*v269.f32, 0)));
          v272 = vminq_f32(vmaxq_f32(vrecpeq_f32(v271), v304), v294);
          v201.i64[1] = v208.i64[1];
          v273 = vminq_f32(vmaxq_f32(vmulq_f32(v272, vrecpsq_f32(v271, v272)), v304), v294);
          v274 = vbslq_s8(v163, v257, vmulq_n_f32(vmulq_f32(v273, vrecpsq_f32(v271, v273)), v269.f32[0]));
          v275 = vbslq_s8(v206, vsubq_f32(v201, v141), v270);
          v276 = vsubq_f32(v141, vextq_s8(v141, v141, 0xCuLL));
          v208.i64[0] = v276.i64[0];
          v208.i64[1] = vdupq_laneq_s64(v274, 1).u64[0];
          v275.i64[1] = vminq_f32(vextq_s8(v275, v275, 4uLL), vabsq_f32(vextq_s8(v275, v275, 8uLL))).i64[1];
          v277 = vbslq_s8(v163, vabsq_f32(vrev64q_s32(v208)), v275);
          v278 = vminq_f32(vdupq_lane_s32(*v276.i8, 0), v277);
          v279 = vextq_s8(v278, v277, 8uLL);
          v277.i64[1] = v278.i64[1];
          v280 = vbslq_s8(v206, vminq_f32(v279, v277), v277);
          v281 = vbslq_s8(v206, vbslq_s8(vcgtq_f32(vextq_s8(v274, v276, 8uLL), v221), v280, vextq_s8(v280, v280, 0xCuLL)), v277);
          v121.i64[0] = vminq_f32(vmaxq_f32(vmulq_f32(*(v12 + 128), v281), v221), v121).u64[0];
          v121.i64[1] = v274.i64[1];
          v282 = vbslq_s8(v256, vandq_s8(v198, vcgtq_f32(v121, v217)), v121);
          v283 = vsubq_f32(v309, vmulq_f32(v308, vdupq_lane_s64(v282.i64[0], 0)));
          v279.i64[0] = v282.i64[0];
          v279.i64[1] = vdupq_laneq_s64(v283, 1).u64[0];
          v280.i64[0] = v282.i64[0];
          v280.i64[1] = v283.i64[1];
          v284 = vbslq_s8(v213, vmulq_n_f32(vrev64q_s32(v279), *v282.i32), v280);
          v285 = vcgtq_f32(v217, vminq_f32(vnegq_f32(vminq_f32(vdupq_laneq_s32(v282, 2), vdupq_laneq_s32(v282, 3))), vnegq_f32(vminq_f32(vdupq_laneq_s32(v234, 2), vdupq_lane_s32(*&vandq_s8(v197, vcgtq_f32(v281, v217)), 1)))));
          v286 = vbslq_s8(v206, v284, vmulq_laneq_f32(v284, v284, 2));
          *(v6 + v10) = vaddq_f32(*(v12 + 112), vmulq_n_f32(vsubq_f32(vbslq_s8(v285, *(v12 + 80), *(v12 + 96)), *(v12 + 112)), *vbslq_s8(vcgtq_f32(v221, *(v12 + 144)), vdupq_lane_s32(*v286.i8, 1), v286).i32));
          v11 = vaddq_f32(v310, xmmword_2603429B0);
          v10 += 16;
        }

        while (16 * v5 != v10);
      }

      v288 = vaddq_f32(v288, xmmword_2603429C0);
      ++v4;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcConcentricTriangleChecker::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcConcentricTriangleChecker::HgcConcentricTriangleChecker(HgcConcentricTriangleChecker *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E28E0;
  operator new();
}

void HgcConcentricTriangleChecker::~HgcConcentricTriangleChecker(HGNode *this)
{
  *this = &unk_2871E28E0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C403ECDB685);
  }

  HGNode::~HGNode(this);
}

{
  HgcConcentricTriangleChecker::~HgcConcentricTriangleChecker(this);

  HGObject::operator delete(v1);
}

uint64_t HgcConcentricTriangleChecker::SetParameter(HgcConcentricTriangleChecker *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
          v15[61] = a3;
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
        if (v18[4].n128_f32[0] != 0.0 || v18[4].n128_f32[1] != 0.0 || v18[4].n128_f32[2] != a3.n128_f32[0] || v18[4].n128_f32[3] != 0.0)
        {
          v18[4].n128_u64[0] = 0;
          v18[4].n128_u32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v18[4].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v18[60] = a3;
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
        if (*v12 != a3.n128_f32[0] || *(v12 + 4) != a4 || *(v12 + 8) != a5 || *(v12 + 12) != a6)
        {
          *v12 = a3.n128_u32[0];
          *(v12 + 4) = a4;
          *(v12 + 8) = a5;
          *(v12 + 12) = a6;
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

uint64_t HgcConcentricTriangleChecker::GetParameter(HgcConcentricTriangleChecker *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 > 5)
  {
    if (a2 <= 8)
    {
      if (a2 == 6)
      {
        v10 = *(this + 51);
        *a3 = v10[24];
        a3[1] = v10[25];
        a3[2] = v10[26];
        v5 = v10 + 27;
      }

      else
      {
        v6 = *(this + 51);
        if (a2 == 7)
        {
          *a3 = v6[28];
          a3[1] = v6[29];
          a3[2] = v6[30];
          v5 = v6 + 31;
        }

        else
        {
          *a3 = v6[32];
          a3[1] = v6[33];
          a3[2] = v6[34];
          v5 = v6 + 35;
        }
      }

      goto LABEL_26;
    }

    switch(a2)
    {
      case 9:
        v12 = *(this + 51);
        *a3 = v12[244];
        a3[1] = v12[245];
        a3[2] = v12[246];
        v5 = v12 + 247;
        goto LABEL_26;
      case 10:
        v14 = *(this + 51);
        *a3 = v14[40];
        a3[1] = v14[41];
        a3[2] = v14[42];
        v5 = v14 + 43;
        goto LABEL_26;
      case 11:
        v8 = *(this + 51);
        *a3 = v8[44];
        a3[1] = v8[45];
        a3[2] = v8[46];
        v5 = v8 + 47;
        goto LABEL_26;
    }
  }

  else
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        v11 = *(this + 51);
        *a3 = v11[12];
        a3[1] = v11[13];
        a3[2] = v11[14];
        v5 = v11 + 15;
      }

      else
      {
        v7 = *(this + 51);
        if (a2 == 4)
        {
          *a3 = v7[240];
          a3[1] = v7[241];
          a3[2] = v7[242];
          v5 = v7 + 243;
        }

        else
        {
          *a3 = v7[20];
          a3[1] = v7[21];
          a3[2] = v7[22];
          v5 = v7 + 23;
        }
      }

      goto LABEL_26;
    }

    switch(a2)
    {
      case 0:
        v9 = *(this + 51);
        *a3 = *v9;
        a3[1] = v9[1];
        a3[2] = v9[2];
        v5 = v9 + 3;
        goto LABEL_26;
      case 1:
        v13 = *(this + 51);
        *a3 = v13[4];
        a3[1] = v13[5];
        a3[2] = v13[6];
        v5 = v13 + 7;
        goto LABEL_26;
      case 2:
        v4 = *(this + 51);
        *a3 = v4[8];
        a3[1] = v4[9];
        a3[2] = v4[10];
        v5 = v4 + 11;
LABEL_26:
        v3 = 0;
        a3[3] = *v5;
        break;
    }
  }

  return v3;
}

double HgcConcentricTriangleChecker::State::State(HgcConcentricTriangleChecker::State *this)
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
  *(this + 12) = xmmword_260344650;
  *(this + 13) = xmmword_260344600;
  v3.i64[0] = 0x80000000800000;
  v3.i64[1] = 0x80000000800000;
  *(this + 14) = xmmword_2603451A0;
  *(this + 15) = vnegq_f32(v3);
  *(this + 16) = xmmword_260344670;
  *(this + 17) = xmmword_260345D00;
  *(this + 18) = xmmword_2603444B0;
  *(this + 19) = xmmword_260345D10;
  *(this + 20) = xmmword_260345D20;
  *(this + 21) = xmmword_260345D30;
  *(this + 22) = xmmword_260345D40;
  *(this + 23) = xmmword_260345D50;
  *(this + 24) = xmmword_260345D60;
  *(this + 25) = xmmword_260345D70;
  *(this + 26) = xmmword_260345D80;
  *(this + 27) = xmmword_260345D90;
  *(this + 28) = xmmword_260345DA0;
  *(this + 29) = xmmword_260345DB0;
  *(this + 30) = xmmword_260345DC0;
  *(this + 31) = xmmword_260345DD0;
  *(this + 32) = xmmword_260345DE0;
  *(this + 33) = xmmword_260345DF0;
  *(this + 34) = xmmword_260345E00;
  *(this + 35) = xmmword_260345E10;
  *(this + 36) = xmmword_260345E20;
  *(this + 37) = xmmword_260345E30;
  *(this + 38) = xmmword_260345E40;
  *(this + 39) = xmmword_260345E50;
  *(this + 40) = xmmword_260345E60;
  *(this + 41) = xmmword_260345E70;
  *(this + 42) = xmmword_260345E80;
  *(this + 43) = xmmword_260345E90;
  *(this + 44) = xmmword_260345EA0;
  *(this + 45) = xmmword_260345EB0;
  *(this + 46) = xmmword_260345EC0;
  *(this + 47) = xmmword_260345ED0;
  *(this + 48) = xmmword_260345EE0;
  *(this + 49) = xmmword_260345EF0;
  *(this + 50) = xmmword_260345F00;
  *(this + 51) = xmmword_260345F10;
  *(this + 52) = xmmword_260345F20;
  *(this + 53) = xmmword_260344660;
  *(this + 54) = xmmword_260345F30;
  *(this + 55) = xmmword_260345F40;
  *(this + 56) = xmmword_260344AB0;
  *(this + 57) = 0u;
  *(this + 58) = xmmword_260345F50;
  *(this + 59) = xmmword_260345F60;
  *(this + 60) = 0u;
  *(this + 61) = 0u;
  return result;
}

const char *HgcRectToPolar::GetProgram(HgcRectToPolar *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000007af\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.01348046958, 0.05747731403, 0.000000000, -0.1212390736);\n    const half4 c1 = half4(0.1956359297, -0.3329946101, 0.9999956489, 1.570796371);\n    const half4 c2 = half4(6.283185482, 3.141592741, 0.000000000, 0.000000000);\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*hg_Params[4].xy;\n    s0.zw = float2(c0.zz);\n    s0 = s0 + hg_Params[6];\n    s0 = s0 - hg_Params[1];\n    s1.xy = abs(s0.xy);\n    s1.z = fmax(s1.x, s1.y);\n    s1.w = 1.00000f / s1.z;\n    s1.z = fmin(s1.x, s1.y);\n    s1.z = s1.z*s1.w;\n    s1.w = s1.z*s1.z;\n    s2.x = s1.w*float(c0.x) + float(c0.y);\n    s2.x = s2.x*s1.w + float(c0.w);\n    s2.x = s2.x*s1.w + float(c1.x);\n    s2.x = s2.x*s1.w + float(c1.y);\n    s1.w = s2.x*s1.w + float(c1.z);\n    s1.z = s1.w*s1.z;\n    s1.x = s1.y - s1.x;\n    s1.w = -s1.z + float(c1.w);\n    s1.x = select(s1.z, s1.w, s1.x < 0.00000h);\n    s1.y = -s1.x + float(c2.y);\n    s1.x = select(s1.x, s1.y, s0.y < 0.00000h);\n    s1.x = select(s1.x, -s1.x, s0.x < 0.00000h);\n    s0.x = dot(s0, s0);\n    s1.y = s1.x + float(c2.x);\n    s1.x = select(s1.x, s1.y, s1.x < 0.00000h);\n    s1.x = s1.x*hg_Params[0].x;\n    s1.y = float(s1.x < hg_Params[6].x);\n    s0.y = select(s1.x, hg_Params[2].y, -s1.y < 0.00000h);\n    s0.w = sqrt(s0.x);\n    s0.z = select(s0.y, s1.x, hg_Params[3].z < 0.00000h);\n    s0.xy = s0.zw - hg_Params[6].xy;\n    s0.xy = s0.xy*hg_Params[5].xy;\n    s0.xy = s0.xy + hg_Params[7].xy;\n    s0.xy = s0.xy*hg_Params[7].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=04e687d1:0d14dd88:2b14bde3:83f6d5b3\n//SIG=00400000:00000000:00000000:00000001:0003:0008:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000766\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.01348046958, 0.05747731403, 0.000000000, -0.1212390736);\n    const float4 c1 = float4(0.1956359297, -0.3329946101, 0.9999956489, 1.570796371);\n    const float4 c2 = float4(6.283185482, 3.141592741, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*hg_Params[4].xy;\n    r0.zw = c0.zz;\n    r0 = r0 + hg_Params[6];\n    r0 = r0 - hg_Params[1];\n    r1.xy = abs(r0.xy);\n    r1.z = fmax(r1.x, r1.y);\n    r1.w = 1.00000f / r1.z;\n    r1.z = fmin(r1.x, r1.y);\n    r1.z = r1.z*r1.w;\n    r1.w = r1.z*r1.z;\n    r2.x = r1.w*c0.x + c0.y;\n    r2.x = r2.x*r1.w + c0.w;\n    r2.x = r2.x*r1.w + c1.x;\n    r2.x = r2.x*r1.w + c1.y;\n    r1.w = r2.x*r1.w + c1.z;\n    r1.z = r1.w*r1.z;\n    r1.x = r1.y - r1.x;\n    r1.w = -r1.z + c1.w;\n    r1.x = select(r1.z, r1.w, r1.x < 0.00000f);\n    r1.y = -r1.x + c2.y;\n    r1.x = select(r1.x, r1.y, r0.y < 0.00000f);\n    r1.x = select(r1.x, -r1.x, r0.x < 0.00000f);\n    r0.x = dot(r0, r0);\n    r1.y = r1.x + c2.x;\n    r1.x = select(r1.x, r1.y, r1.x < 0.00000f);\n    r1.x = r1.x*hg_Params[0].x;\n    r1.y = float(r1.x < hg_Params[6].x);\n    r0.y = select(r1.x, hg_Params[2].y, -r1.y < 0.00000f);\n    r0.w = sqrt(r0.x);\n    r0.z = select(r0.y, r1.x, hg_Params[3].z < 0.00000f);\n    r0.xy = r0.zw - hg_Params[6].xy;\n    r0.xy = r0.xy*hg_Params[5].xy;\n    r0.xy = r0.xy + hg_Params[7].xy;\n    r0.xy = r0.xy*hg_Params[7].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=ef595f7a:523c5c3c:39779605:04665436\n//SIG=00000000:00000000:00000000:00000000:0003:0008:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000832\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.01348046958, 0.05747731403, 0.000000000, -0.1212390736);\n    const highp vec4 c1 = vec4(0.1956359297, -0.3329946101, 0.9999956489, 1.570796371);\n    const highp vec4 c2 = vec4(6.283185482, 3.141592741, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy*hg_ProgramLocal4.xy;\n    r0.zw = c0.zz;\n    r0 = r0 + hg_ProgramLocal6;\n    r0 = r0 - hg_ProgramLocal1;\n    r1.xy = abs(r0.xy);\n    r1.z = max(r1.x, r1.y);\n    r1.w = 1.00000 / r1.z;\n    r1.z = min(r1.x, r1.y);\n    r1.z = r1.z*r1.w;\n    r1.w = r1.z*r1.z;\n    r2.x = r1.w*c0.x + c0.y;\n    r2.x = r2.x*r1.w + c0.w;\n    r2.x = r2.x*r1.w + c1.x;\n    r2.x = r2.x*r1.w + c1.y;\n    r1.w = r2.x*r1.w + c1.z;\n    r1.z = r1.w*r1.z;\n    r1.x = r1.y - r1.x;\n    r1.w = -r1.z + c1.w;\n    r1.x = r1.x < 0.00000 ? r1.w : r1.z;\n    r1.y = -r1.x + c2.y;\n    r1.x = r0.y < 0.00000 ? r1.y : r1.x;\n    r1.x = r0.x < 0.00000 ? -r1.x : r1.x;\n    r0.x = dot(r0, r0);\n    r1.y = r1.x + c2.x;\n    r1.x = r1.x < 0.00000 ? r1.y : r1.x;\n    r1.x = r1.x*hg_ProgramLocal0.x;\n    r1.y = float(r1.x < hg_ProgramLocal6.x);\n    r0.y = -r1.y < 0.00000 ? hg_ProgramLocal2.y : r1.x;\n    r0.w = sqrt(r0.x);\n    r0.z = hg_ProgramLocal3.z < 0.00000 ? r1.x : r0.y;\n    r0.xy = r0.zw - hg_ProgramLocal6.xy;\n    r0.xy = r0.xy*hg_ProgramLocal5.xy;\n    r0.xy = r0.xy + hg_ProgramLocal7.xy;\n    r0.xy = r0.xy*hg_ProgramLocal7.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=b546554b:1773f366:575acd20:506c540d\n//SIG=00000000:00000000:00000000:00000000:0003:0008:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA83D64(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA83EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA83F34()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA83F2CLL);
}

uint64_t HgcRectToPolar::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcRectToPolar::Bind(HgcRectToPolar *this, HGHandler *a2)
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

uint64_t HgcRectToPolar::RenderTile(HgcRectToPolar *this, HGTile *a2)
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
        v17.i64[0] = v14.i64[0];
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
          v20 = *(v19 + 64);
          *v21.f32 = vmul_f32(*v17.f32, v20);
          v22 = *(v19 + 120);
          *&v21.u32[2] = vand_s8(v22, *v21.f32);
          *v23.f32 = vmul_f32(*v18.f32, v20);
          *&v23.u32[2] = vand_s8(v22, *v23.f32);
          v25 = *(v19 + 80);
          v24 = *(v19 + 96);
          v26 = vaddq_f32(v24, v21);
          v27 = vaddq_f32(v24, v23);
          v28 = *(v19 + 16);
          v29 = vsubq_f32(v26, v28);
          v30 = vsubq_f32(v27, v28);
          v31 = vabdq_f32(v26, v28);
          v32 = vabdq_f32(v27, v28);
          v33.i64[0] = v31.i64[0];
          v33.i64[1] = vdupq_laneq_s64(vmaxq_f32(vextq_s8(v31, v31, 8uLL), vextq_s8(v31, v31, 0xCuLL)), 1).u64[0];
          v34 = vrev64q_s32(v33);
          v33.i64[0] = v32.i64[0];
          v33.i64[1] = vdupq_laneq_s64(vmaxq_f32(vextq_s8(v32, v32, 8uLL), vextq_s8(v32, v32, 0xCuLL)), 1).u64[0];
          v35 = vrev64q_s32(v33);
          v36 = *(v19 + 128);
          v37 = *(v19 + 144);
          v38 = vminq_f32(vmaxq_f32(vrecpeq_f32(v34), v36), v37);
          v39 = vminq_f32(vmaxq_f32(vrecpeq_f32(v35), v36), v37);
          v40 = vminq_f32(vmaxq_f32(vmulq_f32(v38, vrecpsq_f32(v34, v38)), v36), v37);
          v41 = vminq_f32(vmaxq_f32(vmulq_f32(v39, vrecpsq_f32(v35, v39)), v36), v37);
          v42 = vmulq_f32(v40, vrecpsq_f32(v34, v40));
          v43 = vmulq_f32(v41, vrecpsq_f32(v35, v41));
          v44 = vextq_s8(v42, v31, 8uLL);
          v45.i64[0] = vextq_s8(v42, v31, 0xCuLL).u64[0];
          *v40.f32 = vext_s8(*v31.i8, *&vextq_s8(v42, v42, 8uLL), 4uLL);
          v31.i64[1] = v42.i64[1];
          v46 = vextq_s8(v43, v32, 8uLL);
          v47.i64[0] = vextq_s8(v43, v32, 0xCuLL).u64[0];
          v48.i64[0] = v32.i64[0];
          v48.i64[1] = v43.i64[1];
          v45.i64[1] = v40.i64[0];
          *&v47.u32[2] = vext_s8(*v32.i8, *&vextq_s8(v43, v43, 8uLL), 4uLL);
          v49 = *(v19 + 160);
          v50 = *(v19 + 176);
          v51 = vbslq_s8(v49, vminq_f32(v44, v45), v31);
          v52 = vbslq_s8(v49, vminq_f32(v46, v47), v48);
          v53 = vmulq_laneq_f32(v51, v51, 3);
          v54 = vmulq_laneq_f32(v52, v52, 3);
          v44.i64[0] = v51.i64[0];
          v44.i64[1] = v53.i64[1];
          v45.i64[0] = v52.i64[0];
          v45.i64[1] = v54.i64[1];
          v51.i64[1] = vdupq_laneq_s64(v53, 1).u64[0];
          v52.i64[1] = vdupq_laneq_s64(v54, 1).u64[0];
          v55 = vbslq_s8(v50, vmulq_laneq_f32(vrev64q_s32(v51), v53, 2), v44);
          v56 = vbslq_s8(v50, vmulq_laneq_f32(vrev64q_s32(v52), v54, 2), v45);
          v57 = *(v19 + 192);
          v58 = *(v19 + 208);
          v59 = vaddq_f32(v36, vmulq_laneq_f32(v57, v55, 3));
          v60 = vaddq_f32(v36, vmulq_laneq_f32(v57, v56, 3));
          v61 = vaddq_f32(v58, vmulq_laneq_f32(v59, v55, 3));
          v62 = vaddq_f32(v58, vmulq_laneq_f32(v60, v56, 3));
          v64 = *(v19 + 224);
          v63 = *(v19 + 240);
          v65 = vbslq_s8(v50, vaddq_f32(v63, vmulq_n_f32(v55, vaddq_f32(v63, vmulq_laneq_f32(vaddq_f32(v64, vmulq_laneq_f32(v61, v55, 3)), v55, 3)).f32[0])), v44);
          v66 = vbslq_s8(v50, vaddq_f32(v63, vmulq_n_f32(v56, vaddq_f32(v63, vmulq_laneq_f32(vaddq_f32(v64, vmulq_laneq_f32(v62, v56, 3)), v56, 3)).f32[0])), v45);
          v67 = vmulq_laneq_f32(v65, v65, 3);
          v65.i64[0] = vsubq_f32(vrev64q_s32(v65), v65).u64[0];
          v61.i64[0] = v65.i64[0];
          v61.i64[1] = v67.i64[1];
          v68 = vmulq_laneq_f32(v66, v66, 3);
          v65.i64[1] = vdupq_laneq_s64(v67, 1).u64[0];
          v66.i64[0] = vsubq_f32(vrev64q_s32(v66), v66).u64[0];
          v67.i64[0] = v66.i64[0];
          v67.i64[1] = v68.i64[1];
          v66.i64[1] = vdupq_laneq_s64(v68, 1).u64[0];
          v69 = vbslq_s8(v50, vsubq_f32(v64, vrev64q_s32(v65)), v61);
          v70 = vbslq_s8(v50, vsubq_f32(v64, vrev64q_s32(v66)), v67);
          v72 = *(v19 + 256);
          v71 = *(v19 + 272);
          v73 = vbslq_s8(vcgtq_f32(v72, v69), vextq_s8(v69, v69, 0xCuLL), vextq_s8(v69, v69, 8uLL));
          v74 = vbslq_s8(vcgtq_f32(v72, v70), vextq_s8(v70, v70, 0xCuLL), vextq_s8(v70, v70, 8uLL));
          v75 = vbslq_s8(v71, v73, vsubq_f32(v72, vrev64q_s32(v73)));
          v76 = vbslq_s8(v71, v74, vsubq_f32(v72, vrev64q_s32(v74)));
          v77 = vbslq_s8(vcgtq_f32(v72, vrev64q_s32(v30)), vrev64q_s32(v76), v76);
          v79 = *(v19 + 288);
          v78 = *(v19 + 304);
          v80 = veorq_s8(vbslq_s8(vcgtq_f32(v72, vrev64q_s32(v29)), vrev64q_s32(v75), v75), vandq_s8(v79, v29));
          v81 = veorq_s8(v77, vandq_s8(v79, v30));
          v82 = vmulq_f32(v29, v29);
          v83 = vmulq_f32(v30, v30);
          v84 = vaddq_f32(v82, vextq_s8(v82, v82, 4uLL));
          v85 = vaddq_f32(v83, vextq_s8(v83, v83, 4uLL));
          v86 = vbslq_s8(v71, v80, vaddq_f32(v63, vrev64q_s32(v80)));
          v87 = vbslq_s8(v71, v81, vaddq_f32(v63, vrev64q_s32(v81)));
          v88 = vmulq_f32(*v19, vbslq_s8(vcgtq_f32(v72, v86), vrev64q_s32(v86), v86));
          v89 = vmulq_f32(*v19, vbslq_s8(vcgtq_f32(v72, v87), vrev64q_s32(v87), v87));
          v90 = vbslq_s8(v71, v88, vrev64q_s32(vandq_s8(v78, vcgtq_f32(v24, v88))));
          v91 = vbslq_s8(v71, v89, vrev64q_s32(vandq_s8(v78, vcgtq_f32(v24, v89))));
          v92 = *(v19 + 32);
          v93 = vbslq_s8(v71, vaddq_f32(v84, vextq_s8(v84, v84, 8uLL)), vbslq_s8(vcgtq_f32(v90, v78), v92, vrev64q_s32(v90)));
          v94 = vbslq_s8(v71, vaddq_f32(v85, vextq_s8(v85, v85, 8uLL)), vbslq_s8(vcgtq_f32(v91, v78), v92, vrev64q_s32(v91)));
          v95 = vextq_s8(v93, v93, 4uLL);
          v96 = vextq_s8(v94, v94, 4uLL);
          v97 = vminq_f32(vrsqrteq_f32(v95), v78);
          v98 = vminq_f32(vrsqrteq_f32(v96), v78);
          v99 = vminq_f32(vmulq_f32(v97, vrsqrtsq_f32(vmulq_f32(v97, v95), v97)), v78);
          v100 = vminq_f32(vmulq_f32(v98, vrsqrtsq_f32(vmulq_f32(v98, v96), v98)), v78);
          v93.i64[1] = vmulq_f32(vminq_f32(vmulq_f32(v99, vrsqrtsq_f32(vmulq_f32(v99, v95), v99)), v78), v95).i64[1];
          v94.i64[1] = vmulq_f32(vminq_f32(vmulq_f32(v100, vrsqrtsq_f32(vmulq_f32(v100, v96), v100)), v78), v96).i64[1];
          v101 = vcgtq_f32(v78, *(v19 + 48));
          v102 = vbslq_s8(v49, vbslq_s8(v101, vextq_s8(v90, v90, 8uLL), vextq_s8(v93, v93, 0xCuLL)), v93);
          v103 = vbslq_s8(v49, vbslq_s8(v101, vextq_s8(v91, v91, 8uLL), vextq_s8(v94, v94, 0xCuLL)), v94);
          v104 = vsubq_f32(vextq_s8(v102, v102, 8uLL), v24);
          v105 = vmulq_f32(v25, vsubq_f32(vextq_s8(v103, v103, 8uLL), v24));
          v106 = *(a2 + 22);
          v107 = vsubq_f32(vmulq_f32(v25, v104), v9);
          v108 = *(a2 + 10);
          if (v5)
          {
            v109 = vaddq_s32(vcvtq_s32_f32(v107), vcltzq_f32(v107));
            v110 = vsubq_f32(v107, vcvtq_f32_s32(v109)).u64[0];
            v111 = vsubq_f32(v105, v9);
            v112 = vaddq_s32(vcvtq_s32_f32(v111), vcltzq_f32(v111));
            v113 = vsubq_f32(v111, vcvtq_f32_s32(v112)).u64[0];
            *v109.i8 = vmla_s32(vzip1_s32(*v109.i8, *v112.i8), vzip2_s32(*v109.i8, *v112.i8), vdup_n_s32(v106));
            v114 = (v108 + 16 * v109.i32[0]);
            v115 = vaddq_f32(*v114, vmulq_n_f32(vsubq_f32(v114[1], *v114), v110.f32[0]));
            v116 = vaddq_f32(v115, vmulq_lane_f32(vsubq_f32(vaddq_f32(v114[v106], vmulq_n_f32(vsubq_f32(v114[v106 + 1], v114[v106]), v110.f32[0])), v115), v110, 1));
            v117 = (v108 + 16 * v109.i32[1]);
            v118 = vaddq_f32(*v117, vmulq_n_f32(vsubq_f32(v117[1], *v117), v113.f32[0]));
            v119 = vaddq_f32(v118, vmulq_lane_f32(vsubq_f32(vaddq_f32(v117[v106], vmulq_n_f32(vsubq_f32(v117[v106 + 1], v117[v106]), v113.f32[0])), v118), v113, 1));
          }

          else
          {
            v120 = vaddq_f32(v107, v13);
            v121 = vcvtq_s32_f32(v120);
            v122 = vaddq_f32(vsubq_f32(v105, v9), v13);
            v123 = vcvtq_s32_f32(v122);
            *v120.f32 = vadd_s32(*v121.i8, *&vcgtq_f32(vcvtq_f32_s32(v121), v120));
            *v122.f32 = vadd_s32(*v123.i8, *&vcgtq_f32(vcvtq_f32_s32(v123), v122));
            *v122.f32 = vmla_s32(vzip1_s32(*v120.f32, *v122.f32), vzip2_s32(*v120.f32, *v122.f32), vdup_n_s32(v106));
            v124 = v122.i32[1];
            v116 = *(v108 + 16 * v122.i32[0]);
            v119 = *(v108 + 16 * v124);
          }

          v125 = (v11 + 16 * v15);
          *v125 = v116;
          v125[1] = v119;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v126 = *(this + 51);
        *v127.f32 = vmul_f32(*v17.f32, *(v126 + 64));
        *&v127.u32[2] = vand_s8(*(v126 + 120), *v127.f32);
        v128 = *(v126 + 96);
        v129 = vaddq_f32(v128, v127);
        v130 = *(v126 + 16);
        v131 = vsubq_f32(v129, v130);
        v132 = vabdq_f32(v129, v130);
        v133.i64[0] = v132.i64[0];
        v133.i64[1] = vdupq_laneq_s64(vmaxq_f32(vextq_s8(v132, v132, 8uLL), vextq_s8(v132, v132, 0xCuLL)), 1).u64[0];
        v134 = vrev64q_s32(v133);
        v135 = *(v126 + 128);
        v136 = *(v126 + 144);
        v137 = vminq_f32(vmaxq_f32(vrecpeq_f32(v134), v135), v136);
        v138 = vminq_f32(vmaxq_f32(vmulq_f32(v137, vrecpsq_f32(v134, v137)), v135), v136);
        v139 = vmulq_f32(v138, vrecpsq_f32(v134, v138));
        v140.i64[0] = vextq_s8(v139, v132, 0xCuLL).u64[0];
        v141.i64[0] = v132.i64[0];
        v141.i64[1] = v139.i64[1];
        *&v140.u32[2] = vext_s8(*v132.i8, *&vextq_s8(v139, v139, 8uLL), 4uLL);
        v142 = vminq_f32(vextq_s8(v139, v132, 8uLL), v140);
        v143 = *(v126 + 160);
        v144 = *(v126 + 176);
        v145 = vbslq_s8(v143, v142, v141);
        v146 = vmulq_laneq_f32(v145, v145, 3);
        v140.i64[0] = v145.i64[0];
        v140.i64[1] = v146.i64[1];
        v145.i64[1] = vdupq_laneq_s64(v146, 1).u64[0];
        v147 = vbslq_s8(v144, vmulq_laneq_f32(vrev64q_s32(v145), v146, 2), v140);
        v148 = *(v126 + 224);
        v149 = *(v126 + 240);
        v150 = vbslq_s8(v144, vaddq_f32(v149, vmulq_n_f32(v147, vaddq_f32(v149, vmulq_laneq_f32(vaddq_f32(v148, vmulq_laneq_f32(vaddq_f32(*(v126 + 208), vmulq_laneq_f32(vaddq_f32(v135, vmulq_laneq_f32(*(v126 + 192), v147, 3)), v147, 3)), v147, 3)), v147, 3)).f32[0])), v140);
        v151 = vmulq_laneq_f32(v150, v150, 3);
        v150.i64[0] = vsubq_f32(vrev64q_s32(v150), v150).u64[0];
        v140.i64[0] = v150.i64[0];
        v140.i64[1] = v151.i64[1];
        v150.i64[1] = vdupq_laneq_s64(v151, 1).u64[0];
        v152 = vbslq_s8(v144, vsubq_f32(v148, vrev64q_s32(v150)), v140);
        v153 = *(v126 + 256);
        v154 = *(v126 + 272);
        v155 = vbslq_s8(vcgtq_f32(v153, v152), vextq_s8(v152, v152, 0xCuLL), vextq_s8(v152, v152, 8uLL));
        v156 = vbslq_s8(v154, v155, vsubq_f32(v153, vrev64q_s32(v155)));
        v157 = *(v126 + 304);
        v158 = veorq_s8(vbslq_s8(vcgtq_f32(v153, vrev64q_s32(v131)), vrev64q_s32(v156), v156), vandq_s8(*(v126 + 288), v131));
        v159 = vbslq_s8(v154, v158, vaddq_f32(v149, vrev64q_s32(v158)));
        v160 = vmulq_f32(*v126, vbslq_s8(vcgtq_f32(v153, v159), vrev64q_s32(v159), v159));
        v161 = vbslq_s8(v154, v160, vrev64q_s32(vandq_s8(v157, vcgtq_f32(v128, v160))));
        v162 = vmulq_f32(v131, v131);
        v163 = vaddq_f32(v162, vextq_s8(v162, v162, 4uLL));
        v164 = vbslq_s8(v154, vaddq_f32(v163, vextq_s8(v163, v163, 8uLL)), vbslq_s8(vcgtq_f32(v161, v157), *(v126 + 32), vrev64q_s32(v161)));
        v165 = vextq_s8(v164, v164, 4uLL);
        v166 = vminq_f32(vrsqrteq_f32(v165), v157);
        v167 = vminq_f32(vmulq_f32(v166, vrsqrtsq_f32(vmulq_f32(v166, v165), v166)), v157);
        v164.i64[1] = vmulq_f32(vminq_f32(vmulq_f32(v167, vrsqrtsq_f32(vmulq_f32(v167, v165), v167)), v157), v165).i64[1];
        v168 = vbslq_s8(v143, vbslq_s8(vcgtq_f32(v157, *(v126 + 48)), vextq_s8(v161, v161, 8uLL), vextq_s8(v164, v164, 0xCuLL)), v164);
        v169 = vmulq_f32(*(v126 + 80), vsubq_f32(vextq_s8(v168, v168, 8uLL), v128));
        v170 = *(a2 + 22);
        v171 = vsubq_f32(v169, v9);
        v172 = *(a2 + 10);
        if (v5)
        {
          v173 = vaddq_s32(vcvtq_s32_f32(v171), vcltzq_f32(v171));
          v174 = vsubq_f32(v171, vcvtq_f32_s32(v173)).u64[0];
          v175 = (v172 + 16 * (v173.i32[0] + v173.i32[1] * v170));
          v176 = vaddq_f32(*v175, vmulq_n_f32(vsubq_f32(v175[1], *v175), v174.f32[0]));
          v177 = vaddq_f32(v176, vmulq_lane_f32(vsubq_f32(vaddq_f32(v175[v170], vmulq_n_f32(vsubq_f32(v175[v170 + 1], v175[v170]), v174.f32[0])), v176), v174, 1));
        }

        else
        {
          v178 = vaddq_f32(v171, v13);
          v179 = vcvtq_s32_f32(v178);
          v178.i64[0] = vaddq_s32(v179, vcgtq_f32(vcvtq_f32_s32(v179), v178)).u64[0];
          v177 = *(v172 + 16 * (v178.i32[0] + v178.i32[1] * v170));
        }

        *(v11 + 16 * v15) = v177;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcRectToPolar::GetDOD(HgcRectToPolar *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcRectToPolar::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcRectToPolar::HgcRectToPolar(HgcRectToPolar *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E2B48;
  operator new();
}

void HgcRectToPolar::~HgcRectToPolar(HGNode *this)
{
  *this = &unk_2871E2B48;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AF73A19ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgcRectToPolar::~HgcRectToPolar(this);

  HGObject::operator delete(v1);
}

uint64_t HgcRectToPolar::SetParameter(HgcRectToPolar *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
        if (v9[2].n128_f32[0] != 0.0 || v9[2].n128_f32[1] != a3.n128_f32[0] || v9[2].n128_f32[2] != 0.0 || v9[2].n128_f32[3] != 0.0)
        {
          v9[2].n128_u32[0] = 0;
          v9[2].n128_u32[1] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v9[2].n128_u64[1] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v9[20] = a3;
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
        if (v12[3].n128_f32[0] != 0.0 || v12[3].n128_f32[1] != 0.0 || v12[3].n128_f32[2] != a3.n128_f32[0] || v12[3].n128_f32[3] != 0.0)
        {
          v12[3].n128_u64[0] = 0;
          v12[3].n128_u32[2] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v12[3].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v12[21] = a3;
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

float HgcRectToPolar::GetParameter(HgcRectToPolar *this, int a2, float *a3)
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
        *a3 = v5[80];
        a3[1] = v5[81];
        a3[2] = v5[82];
        v4 = v5 + 83;
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
      *a3 = v3[84];
      a3[1] = v3[85];
      a3[2] = v3[86];
      v4 = v3 + 87;
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

const char *HgcRadialMask::GetProgram(HgcRadialMask *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000487\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(half4(hg_Params[3]), half4(frag._texCoord1));\n    r0.y = dot(half4(hg_Params[4]), half4(frag._texCoord1));\n    r0.w = dot(half4(hg_Params[5]), half4(frag._texCoord1));\n    r0.xy = r0.xy/r0.ww;\n    s0.xyz = float3(r0.xyz) - hg_Params[1].xyz;\n    s0.xyz = s0.xyz*hg_Params[0].xyz;\n    s0 = float4(dot(s0.xyz, s0.xyz));\n    s0 = sqrt(s0);\n    r0 = half4(hg_Params[2]) - c0.xxxx;\n    r0 = fmax(r0, c0.zzzz);\n    s0 = clamp(s0 - float4(r0), 0.00000f, 1.00000f);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r1)*-s0 + float4(r1);\n    return output;\n}\n//MD5=e75a9164:3b0d8c52:0c8fceba:c495b31d\n//SIG=00400000:00000001:00000001:00000001:0001:0006:0003:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000423\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_Params[3], frag._texCoord1);\n    r0.y = dot(hg_Params[4], frag._texCoord1);\n    r0.w = dot(hg_Params[5], frag._texCoord1);\n    r0.xy = r0.xy/r0.ww;\n    r0.xyz = r0.xyz - hg_Params[1].xyz;\n    r0.xyz = r0.xyz*hg_Params[0].xyz;\n    r0 = float4(dot(r0.xyz, r0.xyz));\n    r0 = sqrt(r0);\n    r1 = hg_Params[2] - c0.xxxx;\n    r1 = fmax(r1, c0.zzzz);\n    r0 = clamp(r0 - r1, 0.00000f, 1.00000f);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r1*-r0 + r1;\n    return output;\n}\n//MD5=df5607ad:9dddec28:82175469:ef6d075e\n//SIG=00000000:00000001:00000001:00000000:0001:0006:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004d9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_ProgramLocal3, hg_TexCoord1);\n    r0.y = dot(hg_ProgramLocal4, hg_TexCoord1);\n    r0.w = dot(hg_ProgramLocal5, hg_TexCoord1);\n    r0.xy = r0.xy/r0.ww;\n    r0.xyz = r0.xyz - hg_ProgramLocal1.xyz;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz;\n    r0 = vec4(dot(r0.xyz, r0.xyz));\n    r0 = sqrt(r0);\n    r1 = hg_ProgramLocal2 - c0.xxxx;\n    r1 = max(r1, c0.zzzz);\n    r0 = clamp(r0 - r1, vec4(0.00000), vec4(1.00000));\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r1*-r0 + r1;\n}\n//MD5=d1232ce3:078d3eef:7e652fe6:3c4368bf\n//SIG=00000000:00000001:00000001:00000000:0001:0006:0002:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FA852C8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA85408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA85450()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA85448);
}

uint64_t HgcRadialMask::BindTexture(HgcRadialMask *this, HGHandler *a2, int a3)
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

uint64_t HgcRadialMask::Bind(HgcRadialMask *this, HGHandler *a2)
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

uint64_t HgcRadialMask::RenderTile(uint64_t a1, int32x2_t *a2)
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
          v18 = *(v17 + 48);
          v19 = vmulq_f32(v14, v18);
          v20 = vmulq_f32(v15, v18);
          v21 = vmulq_f32(v16, v18);
          v22 = vaddq_f32(v19, vextq_s8(v19, v19, 4uLL));
          v23 = vaddq_f32(v20, vextq_s8(v20, v20, 4uLL));
          v24 = vaddq_f32(v21, vextq_s8(v21, v21, 4uLL));
          v25 = *(v17 + 64);
          v26 = *(v17 + 80);
          *v22.i8 = vadd_f32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
          v27 = vmulq_f32(v14, v25);
          v28 = vmulq_f32(v15, v25);
          v29 = vmulq_f32(v16, v25);
          *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
          v30 = vaddq_f32(v27, vextq_s8(v27, v27, 4uLL));
          v31 = vaddq_f32(v28, vextq_s8(v28, v28, 4uLL));
          v32 = vaddq_f32(v29, vextq_s8(v29, v29, 4uLL));
          *v24.i8 = vadd_f32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
          v33 = vaddq_f32(v31, vextq_s8(v31, v31, 8uLL));
          v34 = vmulq_f32(v14, v26);
          v35 = vmulq_f32(v15, v26);
          v36 = vmulq_f32(v16, v26);
          v37 = *(v17 + 96);
          v38 = *(v17 + 112);
          v39 = vbslq_s8(v37, vaddq_f32(v30, vextq_s8(v30, v30, 8uLL)), v22);
          v40 = vaddq_f32(v34, vextq_s8(v34, v34, 4uLL));
          v41 = vaddq_f32(v35, vextq_s8(v35, v35, 4uLL));
          v42 = vaddq_f32(v36, vextq_s8(v36, v36, 4uLL));
          v43 = vbslq_s8(v38, vaddq_f32(v40, vextq_s8(v40, v40, 8uLL)), v39);
          v44 = vbslq_s8(v38, vaddq_f32(v41, vextq_s8(v41, v41, 8uLL)), vbslq_s8(v37, v33, v23));
          v45 = vbslq_s8(v38, vaddq_f32(v42, vextq_s8(v42, v42, 8uLL)), vbslq_s8(v37, vaddq_f32(v32, vextq_s8(v32, v32, 8uLL)), v24));
          v46 = vdupq_laneq_s32(v43, 3);
          v47 = vdupq_laneq_s32(v44, 3);
          v48 = vdupq_laneq_s32(v45, 3);
          v50 = *(v17 + 128);
          v49 = *(v17 + 144);
          v51 = vminq_f32(vmaxq_f32(vrecpeq_f32(v46), v50), v49);
          v52 = vminq_f32(vmaxq_f32(vrecpeq_f32(v47), v50), v49);
          v53 = vminq_f32(vmaxq_f32(vrecpeq_f32(v48), v50), v49);
          v54 = vminq_f32(vmaxq_f32(vmulq_f32(v51, vrecpsq_f32(v46, v51)), v50), v49);
          v55 = vminq_f32(vmaxq_f32(vmulq_f32(v52, vrecpsq_f32(v47, v52)), v50), v49);
          v56 = vminq_f32(vmaxq_f32(vmulq_f32(v53, vrecpsq_f32(v48, v53)), v50), v49);
          v46.i64[0] = vmulq_f32(vmulq_f32(v54, vrecpsq_f32(v46, v54)), v43).u64[0];
          v47.i64[0] = vmulq_f32(vmulq_f32(v55, vrecpsq_f32(v47, v55)), v44).u64[0];
          v48.i64[0] = vmulq_f32(vmulq_f32(v56, vrecpsq_f32(v48, v56)), v45).u64[0];
          v46.i64[1] = v43.i64[1];
          v47.i64[1] = v44.i64[1];
          v48.i64[1] = v45.i64[1];
          v57 = *(v17 + 16);
          v58 = vmulq_f32(*v17, vsubq_f32(v46, v57));
          v59 = vmulq_f32(*v17, vsubq_f32(v47, v57));
          v60 = vmulq_f32(*v17, vsubq_f32(v48, v57));
          v61 = vmulq_f32(v58, v58);
          v62 = vmulq_f32(v59, v59);
          v63 = vmulq_f32(v60, v60);
          v64 = vaddq_f32(vdupq_laneq_s32(v61, 2), vaddq_f32(vdupq_lane_s32(*v61.i8, 0), vdupq_lane_s32(*v61.i8, 1)));
          v65 = vaddq_f32(vdupq_laneq_s32(v62, 2), vaddq_f32(vdupq_lane_s32(*v62.i8, 0), vdupq_lane_s32(*v62.i8, 1)));
          v66 = vaddq_f32(vdupq_laneq_s32(v63, 2), vaddq_f32(vdupq_lane_s32(*v63.i8, 0), vdupq_lane_s32(*v63.i8, 1)));
          v67 = vminq_f32(vrsqrteq_f32(v64), v49);
          v68 = vminq_f32(vrsqrteq_f32(v65), v49);
          v69 = vminq_f32(vrsqrteq_f32(v66), v49);
          v70 = vminq_f32(vmulq_f32(v67, vrsqrtsq_f32(vmulq_f32(v67, v64), v67)), v49);
          v71 = vminq_f32(vmulq_f32(v68, vrsqrtsq_f32(vmulq_f32(v68, v65), v68)), v49);
          v72 = vminq_f32(vmulq_f32(v69, vrsqrtsq_f32(vmulq_f32(v69, v66), v69)), v49);
          v73 = vminq_f32(vmulq_f32(v70, vrsqrtsq_f32(vmulq_f32(v64, v70), v70)), v49);
          v74 = vmulq_f32(v65, vminq_f32(vmulq_f32(v71, vrsqrtsq_f32(vmulq_f32(v65, v71), v71)), v49));
          v75 = *(v17 + 176);
          v76 = vmulq_f32(v66, vminq_f32(vmulq_f32(v72, vrsqrtsq_f32(vmulq_f32(v66, v72), v72)), v49));
          v77 = vmaxq_f32(vsubq_f32(*(v17 + 32), *(v17 + 160)), v75);
          v78 = vsubq_f32(v74, v77);
          v79 = vsubq_f32(v76, v77);
          v80 = vmaxq_f32(vsubq_f32(vmulq_f32(v64, v73), v77), v75);
          v81 = vmaxq_f32(v78, v75);
          v82 = *(v17 + 192);
          v83 = vsubq_f32(*(*&v7 + v11 + 16), vmulq_f32(vminq_f32(v81, v82), *(*&v7 + v11 + 16)));
          v84 = vsubq_f32(*(*&v7 + v11 + 32), vmulq_f32(vminq_f32(vmaxq_f32(v79, v75), v82), *(*&v7 + v11 + 32)));
          v85 = (*&v6 + v11);
          *v85 = vsubq_f32(*(*&v7 + v11), vmulq_f32(vminq_f32(v80, v82), *(*&v7 + v11)));
          v85[1] = v83;
          v85[2] = v84;
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
          v86 = *(a1 + 408);
          v87 = vmulq_f32(v14, *(v86 + 48));
          v88 = vaddq_f32(v87, vextq_s8(v87, v87, 4uLL));
          *v88.i8 = vadd_f32(*v88.i8, *&vextq_s8(v88, v88, 8uLL));
          v89 = vmulq_f32(v14, *(v86 + 64));
          v90 = vaddq_f32(v89, vextq_s8(v89, v89, 4uLL));
          v91 = vmulq_f32(v14, *(v86 + 80));
          v92 = vaddq_f32(v91, vextq_s8(v91, v91, 4uLL));
          v93 = vbslq_s8(*(v86 + 112), vaddq_f32(v92, vextq_s8(v92, v92, 8uLL)), vbslq_s8(*(v86 + 96), vaddq_f32(v90, vextq_s8(v90, v90, 8uLL)), v88));
          v94 = vdupq_laneq_s32(v93, 3);
          v95 = *(v86 + 128);
          v96 = *(v86 + 144);
          v97 = vminq_f32(vmaxq_f32(vrecpeq_f32(v94), v95), v96);
          v98 = vminq_f32(vmaxq_f32(vmulq_f32(v97, vrecpsq_f32(v94, v97)), v95), v96);
          v94.i64[0] = vmulq_f32(vmulq_f32(v98, vrecpsq_f32(v94, v98)), v93).u64[0];
          v94.i64[1] = v93.i64[1];
          v99 = vmulq_f32(*v86, vsubq_f32(v94, *(v86 + 16)));
          v100 = vmulq_f32(v99, v99);
          v101 = vaddq_f32(vdupq_laneq_s32(v100, 2), vaddq_f32(vdupq_lane_s32(*v100.i8, 0), vdupq_lane_s32(*v100.i8, 1)));
          v102 = vminq_f32(vrsqrteq_f32(v101), v96);
          v103 = vminq_f32(vmulq_f32(v102, vrsqrtsq_f32(vmulq_f32(v102, v101), v102)), v96);
          *(*&v6 + 16 * v12) = vsubq_f32(*(*&v7 + 16 * v12), vmulq_f32(vminq_f32(vmaxq_f32(vsubq_f32(vmulq_f32(vminq_f32(vmulq_f32(v103, vrsqrtsq_f32(vmulq_f32(v103, v101), v103)), v96), v101), vmaxq_f32(vsubq_f32(*(v86 + 32), *(v86 + 160)), *(v86 + 176))), *(v86 + 176)), *(v86 + 192)), *(*&v7 + 16 * v12)));
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

uint64_t HgcRadialMask::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcRadialMask::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcRadialMask::HgcRadialMask(HgcRadialMask *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E2DB0;
  operator new();
}

void HgcRadialMask::~HgcRadialMask(HGNode *this)
{
  *this = &unk_2871E2DB0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C405DF52C91);
  }

  HGNode::~HGNode(this);
}

{
  HgcRadialMask::~HgcRadialMask(this);

  HGObject::operator delete(v1);
}

uint64_t HgcRadialMask::SetParameter(HgcRadialMask *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 2)
  {
    switch(a2)
    {
      case 3:
        v12 = *(this + 51);
        if (*(v12 + 48) != a3.n128_f32[0] || *(v12 + 52) != a4 || *(v12 + 56) != a5 || *(v12 + 60) != a6)
        {
          *(v12 + 48) = a3.n128_u32[0];
          *(v12 + 52) = a4;
          *(v12 + 56) = a5;
          *(v12 + 60) = a6;
          goto LABEL_38;
        }

        return 0;
      case 4:
        v14 = *(this + 51);
        if (*(v14 + 64) != a3.n128_f32[0] || *(v14 + 68) != a4 || *(v14 + 72) != a5 || *(v14 + 76) != a6)
        {
          *(v14 + 64) = a3.n128_u32[0];
          *(v14 + 68) = a4;
          *(v14 + 72) = a5;
          *(v14 + 76) = a6;
          goto LABEL_38;
        }

        return 0;
      case 5:
        v10 = *(this + 51);
        if (*(v10 + 80) != a3.n128_f32[0] || *(v10 + 84) != a4 || *(v10 + 88) != a5 || *(v10 + 92) != a6)
        {
          *(v10 + 80) = a3.n128_u32[0];
          *(v10 + 84) = a4;
          *(v10 + 88) = a5;
          *(v10 + 92) = a6;
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
        v8 = *(this + 51);
        if (*(v8 + 32) != a3.n128_f32[0] || *(v8 + 36) != a3.n128_f32[0] || *(v8 + 40) != a3.n128_f32[0] || *(v8 + 44) != a3.n128_f32[0])
        {
          v9 = vdupq_lane_s32(a3.n128_u64[0], 0);
          a3.n128_f32[1] = a4;
          *(v8 + 32) = v9;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          *(v8 + 208) = a3;
LABEL_38:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

float HgcRadialMask::GetParameter(HgcRadialMask *this, int a2, float *a3)
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
        *a3 = v9[16];
        a3[1] = v9[17];
        a3[2] = v9[18];
        v4 = v9 + 19;
        break;
      case 5:
        v5 = *(this + 51);
        *a3 = v5[20];
        a3[1] = v5[21];
        a3[2] = v5[22];
        v4 = v5 + 23;
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
      *a3 = v3[52];
      a3[1] = v3[53];
      a3[2] = v3[54];
      v4 = v3 + 55;
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

const char *HgcWideScreen::GetProgram(HgcWideScreen *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000006a5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.x = dot(frag._texCoord0, hg_Params[7]);\n    s0.w = s0.x;\n    s1.x = 1.00000f / s0.x;\n    s0.z = dot(frag._texCoord0, hg_Params[6]);\n    s0.y = dot(frag._texCoord0, hg_Params[5]);\n    s0.x = dot(frag._texCoord0, hg_Params[4]);\n    s1 = s0*s1.xxxx;\n    s0.xzw = s1.xzw;\n    s0.y = s1.y - hg_Params[3].y;\n    s1.z = dot(s0, hg_Params[10]);\n    s2.x = 1.00000f / s1.z;\n    s1.w = dot(s0, hg_Params[9]);\n    s1.z = dot(s0, hg_Params[8]);\n    s2.xy = s2.xx*s1.zw;\n    s2.xy = s2.xy + hg_Params[12].xy;\n    s2.xy = s2.xy*hg_Params[12].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s2.xy);\n    s1.w = clamp(hg_Params[1].y - s1.y, 0.00000f, 1.00000f);\n    s1.z = clamp(s1.y - hg_Params[1].x, 0.00000f, 1.00000f);\n    s1.z = fmin(s1.z, s1.w);\n    s0 = mix(hg_Params[2], float4(r0), s1.zzzz);\n    s1.z = hg_Params[11].z - s1.x;\n    s1.x = s1.x - hg_Params[11].x;\n    s1.xz = fmax(s1.xz, float2(c0.xx));\n    s1.z = fmin(s1.x, s1.z);\n    s1.x = clamp(hg_Params[0].y - s1.y, 0.00000f, 1.00000f);\n    s1.y = clamp(s1.y - hg_Params[0].x, 0.00000f, 1.00000f);\n    s1.x = fmin(s1.y, s1.x);\n    s1.x = fmin(s1.x, s1.z);\n    output.color0 = s1.xxxx*s0;\n    return output;\n}\n//MD5=79b4dd01:96ef81ec:23a0b0b1:d588db1c\n//SIG=00400000:00000000:00000000:00000001:0001:000d:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000682\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = dot(frag._texCoord0, hg_Params[7]);\n    r0.w = r0.x;\n    r1.x = 1.00000f / r0.x;\n    r0.z = dot(frag._texCoord0, hg_Params[6]);\n    r0.y = dot(frag._texCoord0, hg_Params[5]);\n    r0.x = dot(frag._texCoord0, hg_Params[4]);\n    r1 = r0*r1.xxxx;\n    r0.xzw = r1.xzw;\n    r0.y = r1.y - hg_Params[3].y;\n    r1.z = dot(r0, hg_Params[10]);\n    r2.x = 1.00000f / r1.z;\n    r1.w = dot(r0, hg_Params[9]);\n    r1.z = dot(r0, hg_Params[8]);\n    r2.xy = r2.xx*r1.zw;\n    r2.xy = r2.xy + hg_Params[12].xy;\n    r2.xy = r2.xy*hg_Params[12].zw;\n    r2 = hg_Texture0.sample(hg_Sampler0, r2.xy);\n    r1.w = clamp(hg_Params[1].y - r1.y, 0.00000f, 1.00000f);\n    r1.z = clamp(r1.y - hg_Params[1].x, 0.00000f, 1.00000f);\n    r1.z = fmin(r1.z, r1.w);\n    r2 = mix(hg_Params[2], r2, r1.zzzz);\n    r1.z = hg_Params[11].z - r1.x;\n    r1.x = r1.x - hg_Params[11].x;\n    r1.xz = fmax(r1.xz, c0.xx);\n    r1.z = fmin(r1.x, r1.z);\n    r1.x = clamp(hg_Params[0].y - r1.y, 0.00000f, 1.00000f);\n    r1.y = clamp(r1.y - hg_Params[0].x, 0.00000f, 1.00000f);\n    r1.x = fmin(r1.y, r1.x);\n    r1.x = fmin(r1.x, r1.z);\n    output.color0 = r1.xxxx*r2;\n    return output;\n}\n//MD5=59775702:36a7ac3c:7db322bc:a7682c2c\n//SIG=00000000:00000000:00000000:00000000:0001:000d:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000833\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nuniform highp vec4 hg_ProgramLocal10;\nuniform highp vec4 hg_ProgramLocal11;\nuniform highp vec4 hg_ProgramLocal12;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.x = dot(hg_TexCoord0, hg_ProgramLocal7);\n    r0.w = r0.x;\n    r1.x = 1.00000 / r0.x;\n    r0.z = dot(hg_TexCoord0, hg_ProgramLocal6);\n    r0.y = dot(hg_TexCoord0, hg_ProgramLocal5);\n    r0.x = dot(hg_TexCoord0, hg_ProgramLocal4);\n    r1 = r0*r1.xxxx;\n    r0.xzw = r1.xzw;\n    r0.y = r1.y - hg_ProgramLocal3.y;\n    r1.z = dot(r0, hg_ProgramLocal10);\n    r2.x = 1.00000 / r1.z;\n    r1.w = dot(r0, hg_ProgramLocal9);\n    r1.z = dot(r0, hg_ProgramLocal8);\n    r2.xy = r2.xx*r1.zw;\n    r2.xy = r2.xy + hg_ProgramLocal12.xy;\n    r2.xy = r2.xy*hg_ProgramLocal12.zw;\n    r2 = texture2D(hg_Texture0, r2.xy);\n    r1.w = clamp(hg_ProgramLocal1.y - r1.y, 0.00000, 1.00000);\n    r1.z = clamp(r1.y - hg_ProgramLocal1.x, 0.00000, 1.00000);\n    r1.z = min(r1.z, r1.w);\n    r2 = mix(hg_ProgramLocal2, r2, r1.zzzz);\n    r1.z = hg_ProgramLocal11.z - r1.x;\n    r1.x = r1.x - hg_ProgramLocal11.x;\n    r1.xz = max(r1.xz, c0.xx);\n    r1.z = min(r1.x, r1.z);\n    r1.x = clamp(hg_ProgramLocal0.y - r1.y, 0.00000, 1.00000);\n    r1.y = clamp(r1.y - hg_ProgramLocal0.x, 0.00000, 1.00000);\n    r1.x = min(r1.y, r1.x);\n    r1.x = min(r1.x, r1.z);\n    gl_FragColor = r1.xxxx*r2;\n}\n//MD5=e3e38e5f:edf6dd79:ba35ac24:50971d88\n//SIG=00000000:00000000:00000000:00000000:0001:000d:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA861A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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
  v36 = xmmword_260344850;
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

void sub_25FA86320(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA86370()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA86368);
}

uint64_t HgcWideScreen::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 12, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcWideScreen::Bind(HgcWideScreen *this, HGHandler *a2)
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

uint64_t HgcWideScreen::RenderTile(HgcWideScreen *this, HGTile *a2)
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
          v20 = *(v19 + 112);
          v21 = *(v19 + 128);
          v22 = vmulq_f32(v17, v20);
          v23 = vmulq_f32(v18, v20);
          v24 = vaddq_f32(v22, vextq_s8(v22, v22, 4uLL));
          v25 = vaddq_f32(v23, vextq_s8(v23, v23, 4uLL));
          v26 = vaddq_f32(v24, vextq_s8(v24, v24, 8uLL));
          v27 = vextq_s8(v26, v26, 4uLL);
          v29 = *(v19 + 80);
          v28 = *(v19 + 96);
          v30 = vmulq_f32(v17, v28);
          v31 = vaddq_f32(v30, vextq_s8(v30, v30, 4uLL));
          v32 = vaddq_f32(v31, vdupq_lane_s64(v31.i64[0], 0));
          v34 = *(v19 + 224);
          v33 = *(v19 + 240);
          v35 = vbslq_s8(v34, v32, v27);
          v27.i64[0] = v26.i64[0];
          v36 = vaddq_f32(v25, vextq_s8(v25, v25, 8uLL));
          v37 = vmulq_f32(v18, v28);
          v38 = vaddq_f32(v37, vextq_s8(v37, v37, 4uLL));
          v39 = vextq_s8(v36, v36, 4uLL);
          v40 = vbslq_s8(v34, vaddq_f32(v38, vdupq_lane_s64(v38.i64[0], 0)), v39);
          v39.i64[0] = v36.i64[0];
          v41 = *(v19 + 192);
          v42 = *(v19 + 208);
          v43 = vminq_f32(vmaxq_f32(vrecpeq_f32(v27), v41), v42);
          v44 = vminq_f32(vmaxq_f32(vrecpeq_f32(v39), v41), v42);
          v45 = vminq_f32(vmaxq_f32(vmulq_f32(v43, vrecpsq_f32(v27, v43)), v41), v42);
          v46 = vminq_f32(vmaxq_f32(vmulq_f32(v44, vrecpsq_f32(v39, v44)), v41), v42);
          v27.i32[0] = vmulq_f32(v45, vrecpsq_f32(v27, v45)).u32[0];
          v39.i32[0] = vmulq_f32(v46, vrecpsq_f32(v39, v46)).u32[0];
          v47 = vmulq_f32(v17, v29);
          v48 = vmulq_f32(v18, v29);
          v49 = vaddq_f32(v47, vextq_s8(v47, v47, 4uLL));
          v50 = vaddq_f32(v48, vextq_s8(v48, v48, 4uLL));
          v49.i64[0] = vaddq_f32(v49, vdupq_laneq_s64(v49, 1)).u64[0];
          v50.i64[0] = vaddq_f32(v50, vdupq_laneq_s64(v50, 1)).u64[0];
          v52 = *(v19 + 48);
          v51 = *(v19 + 64);
          v53 = vmulq_f32(v17, v51);
          v54 = vmulq_f32(v18, v51);
          v55 = vaddq_f32(v53, vextq_s8(v53, v53, 4uLL));
          v56 = vaddq_f32(v54, vextq_s8(v54, v54, 4uLL));
          v49.i64[1] = v35.i64[1];
          v50.i64[1] = v40.i64[1];
          v57 = vmulq_n_f32(vbslq_s8(v33, vaddq_f32(v55, vextq_s8(v55, v55, 8uLL)), v49), v27.f32[0]);
          v58 = vmulq_n_f32(vbslq_s8(v33, vaddq_f32(v56, vextq_s8(v56, v56, 8uLL)), v50), v39.f32[0]);
          v59 = *(v19 + 256);
          v60 = vbslq_s8(v59, vsubq_f32(v57, v52), v57);
          v61 = vbslq_s8(v59, vsubq_f32(v58, v52), v58);
          v63 = *(v19 + 144);
          v62 = *(v19 + 160);
          v64 = vmulq_f32(v62, v60);
          v65 = vmulq_f32(v62, v61);
          v66 = vaddq_f32(v64, vextq_s8(v64, v64, 4uLL));
          v67 = vaddq_f32(v65, vextq_s8(v65, v65, 4uLL));
          v68 = vextq_s8(vaddq_f32(v66, vdupq_lane_s64(v66.i64[0], 0)), v57, 8uLL);
          v69 = vextq_s8(vaddq_f32(v67, vdupq_lane_s64(v67.i64[0], 0)), v58, 8uLL);
          v70 = vminq_f32(vmaxq_f32(vrecpeq_f32(v68), v41), v42);
          v71 = vminq_f32(vmaxq_f32(vrecpeq_f32(v69), v41), v42);
          v72 = vminq_f32(vmaxq_f32(vmulq_f32(v70, vrecpsq_f32(v68, v70)), v41), v42);
          v73 = vminq_f32(vmaxq_f32(vmulq_f32(v71, vrecpsq_f32(v69, v71)), v41), v42);
          v69.i32[0] = vmulq_f32(v73, vrecpsq_f32(v69, v73)).u32[0];
          v74 = vmulq_f32(v63, v60);
          v75 = vmulq_f32(v63, v61);
          v76 = vaddq_f32(v74, vextq_s8(v74, v74, 4uLL));
          v77 = vaddq_f32(v75, vextq_s8(v75, v75, 4uLL));
          v57.i64[1] = vaddq_f32(v76, vdupq_lane_s64(*&v76, 0)).i64[1];
          v58.i64[1] = vaddq_f32(v77, vdupq_lane_s64(*&v77, 0)).i64[1];
          v78 = vmulq_f32(v21, v60);
          v79 = vmulq_f32(v21, v61);
          v80 = vaddq_f32(v78, vextq_s8(v78, v78, 4uLL));
          v81 = vaddq_f32(v79, vextq_s8(v79, v79, 4uLL));
          v82 = vbslq_s8(v34, vaddq_f32(v80, vextq_s8(v80, v80, 8uLL)), v57);
          v83 = vbslq_s8(v34, vaddq_f32(v81, vextq_s8(v81, v81, 8uLL)), v58);
          v84 = vmulq_n_f32(vextq_s8(v83, v83, 8uLL), v69.f32[0]);
          v85 = *(a2 + 22);
          v86 = vsubq_f32(vmulq_n_f32(vextq_s8(v82, v82, 8uLL), vmulq_f32(v72, vrecpsq_f32(v68, v72)).f32[0]), v9);
          v87 = *(a2 + 10);
          if (v5)
          {
            v88 = vaddq_s32(vcvtq_s32_f32(v86), vcltzq_f32(v86));
            v89 = vsubq_f32(v86, vcvtq_f32_s32(v88)).u64[0];
            v90 = vsubq_f32(v84, v9);
            v91 = vaddq_s32(vcvtq_s32_f32(v90), vcltzq_f32(v90));
            v90.i64[0] = vsubq_f32(v90, vcvtq_f32_s32(v91)).u64[0];
            *v88.i8 = vmla_s32(vzip1_s32(*v88.i8, *v91.i8), vzip2_s32(*v88.i8, *v91.i8), vdup_n_s32(v85));
            v92 = v88.i32[1];
            v93 = (v87 + 16 * v88.i32[0]);
            v94 = vaddq_f32(*v93, vmulq_n_f32(vsubq_f32(v93[1], *v93), v89.f32[0]));
            v95 = vaddq_f32(v94, vmulq_lane_f32(vsubq_f32(vaddq_f32(v93[v85], vmulq_n_f32(vsubq_f32(v93[v85 + 1], v93[v85]), v89.f32[0])), v94), v89, 1));
            v96 = (v87 + 16 * v92);
            v97 = vaddq_f32(*v96, vmulq_n_f32(vsubq_f32(v96[1], *v96), v90.f32[0]));
            v98 = vaddq_f32(v97, vmulq_lane_f32(vsubq_f32(vaddq_f32(v96[v85], vmulq_n_f32(vsubq_f32(v96[v85 + 1], v96[v85]), v90.f32[0])), v97), *v90.f32, 1));
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
            v95 = *(v87 + 16 * v101.i32[0]);
            v98 = *(v87 + 16 * v101.i32[1]);
          }

          v103 = vmvnq_s8(v34);
          v104 = vmvnq_s8(v33);
          v105 = vmvnq_s8(v59);
          v106 = *(v19 + 16);
          v107 = vsubq_f32(v106, v82);
          v108 = vsubq_f32(v106, v83);
          v109 = vmaxq_f32(vextq_s8(v107, v107, 8uLL), v41);
          v110 = vmaxq_f32(vextq_s8(v108, v108, 8uLL), v41);
          v112 = *(v19 + 272);
          v111 = *(v19 + 288);
          v113 = vminq_f32(v109, v112);
          v114 = vminq_f32(v110, v112);
          v115 = vextq_s8(v113, v113, 8uLL).u64[0];
          v116.i64[0] = v82.i64[0];
          v116.i64[1] = v113.i64[1];
          v113.i64[0] = vextq_s8(v113, v82, 0xCuLL).u64[0];
          v117 = vext_s8(*v82.f32, v115, 4uLL);
          v118.i64[0] = v83.i64[0];
          v118.i64[1] = v114.i64[1];
          *&v113.u32[2] = v117;
          v119 = vextq_s8(v114, v114, 8uLL).u64[0];
          v114.i64[0] = vextq_s8(v114, v83, 0xCuLL).u64[0];
          *&v114.u32[2] = vext_s8(*v83.f32, v119, 4uLL);
          v120 = vextq_s8(v106, v106, 8uLL);
          v121 = vorrq_s8(vandq_s8(v34, vminq_f32(vmaxq_f32(vsubq_f32(v113, v120), v112), v41)), vandq_s8(v116, v103));
          v122 = vorrq_s8(vandq_s8(v34, vminq_f32(vmaxq_f32(vsubq_f32(v114, v120), v112), v41)), vandq_s8(v118, v103));
          v123 = *(v19 + 32);
          v124 = vaddq_f32(v123, vmulq_f32(vminq_f32(vdupq_laneq_s32(v121, 2), vdupq_laneq_s32(v121, 3)), vsubq_f32(v95, v123)));
          v125 = vmulq_f32(vminq_f32(vdupq_laneq_s32(v122, 2), vdupq_laneq_s32(v122, 3)), vsubq_f32(v98, v123));
          v126 = *(v19 + 176);
          v121.i64[1] = vsubq_f32(v126, vdupq_lane_s64(*&v121, 0)).i64[1];
          v122.i64[1] = vsubq_f32(v126, vdupq_lane_s64(*&v122, 0)).i64[1];
          v127 = vorrq_s8(vandq_s8(v33, vsubq_f32(v121, v126)), vandq_s8(v121, v104));
          v128 = vorrq_s8(vandq_s8(v33, vsubq_f32(v122, v126)), vandq_s8(v122, v104));
          v129 = vorrq_s8(vandq_s8(v127, v59), vandq_s8(vmaxq_f32(v127, v112), v105));
          v130 = vorrq_s8(vandq_s8(v128, v59), vandq_s8(vmaxq_f32(v128, v112), v105));
          v129.i64[1] = vminq_f32(vextq_s8(*&v129, *&v129, 8uLL), v129).i64[1];
          v130.i64[1] = vminq_f32(vextq_s8(*&v130, *&v130, 8uLL), v130).i64[1];
          v131 = vorrq_s8(vandq_s8(v129, v104), vandq_s8(v33, vminq_f32(vmaxq_f32(vrev64q_s32(vsubq_f32(*v19, v129)), v112), v111)));
          v132 = vorrq_s8(vandq_s8(v130, v104), vandq_s8(v33, vminq_f32(vmaxq_f32(vrev64q_s32(vsubq_f32(*v19, v130)), v112), v111)));
          v133 = vrev64q_s32(*v19);
          v134 = vminq_f32(vmaxq_f32(vsubq_f32(v131, v133), v111), v41);
          v135 = vminq_f32(vmaxq_f32(vsubq_f32(v132, v133), v111), v41);
          v136 = vorrq_s8(vandq_s8(v131, v105), vandq_s8(v59, v134));
          v137 = vorrq_s8(vandq_s8(v132, v105), vandq_s8(v59, v135));
          v138 = vminq_f32(vrev64q_s32(v136), v136);
          v139 = vminq_f32(vrev64q_s32(v137), v137);
          v140 = vextq_s8(v136, v138, 8uLL);
          v138.i64[1] = v136.i64[1];
          v141 = vextq_s8(v137, v139, 8uLL);
          v139.i64[1] = v137.i64[1];
          v142 = (v11 + 16 * v15);
          *v142 = vmulq_n_f32(v124, vminq_f32(v138, v140).f32[0]);
          v142[1] = vmulq_n_f32(vaddq_f32(v123, v125), vminq_f32(v139, v141).f32[0]);
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v143 = *(this + 51);
        v144 = vmulq_f32(v17, *(v143 + 112));
        v145 = vaddq_f32(v144, vextq_s8(v144, v144, 4uLL));
        v146 = vaddq_f32(v145, vextq_s8(v145, v145, 8uLL));
        v147 = vextq_s8(v146, v146, 4uLL);
        v148 = vmulq_f32(v17, *(v143 + 96));
        v149 = vaddq_f32(v148, vextq_s8(v148, v148, 4uLL));
        v150 = vaddq_f32(v149, vdupq_lane_s64(v149.i64[0], 0));
        v152 = *(v143 + 224);
        v151 = *(v143 + 240);
        v153 = vbslq_s8(v152, v150, v147);
        v147.i64[0] = v146.i64[0];
        v154 = *(v143 + 192);
        v155 = *(v143 + 208);
        v156 = vminq_f32(vmaxq_f32(vrecpeq_f32(v147), v154), v155);
        v157 = vminq_f32(vmaxq_f32(vmulq_f32(v156, vrecpsq_f32(v147, v156)), v154), v155);
        v158 = vmulq_f32(v17, *(v143 + 80));
        v159 = vaddq_f32(v158, vextq_s8(v158, v158, 4uLL));
        v159.i64[0] = vaddq_f32(v159, vdupq_laneq_s64(v159, 1)).u64[0];
        v160 = vmulq_f32(v17, *(v143 + 64));
        v161 = vaddq_f32(v160, vextq_s8(v160, v160, 4uLL));
        v159.i64[1] = v153.i64[1];
        v162 = vmulq_n_f32(vbslq_s8(v151, vaddq_f32(v161, vextq_s8(v161, v161, 8uLL)), v159), vmulq_f32(v157, vrecpsq_f32(v147, v157)).f32[0]);
        v163 = *(v143 + 256);
        v164 = vbslq_s8(v163, vsubq_f32(v162, *(v143 + 48)), v162);
        v165 = vmulq_f32(*(v143 + 160), v164);
        v166 = vaddq_f32(v165, vextq_s8(v165, v165, 4uLL));
        v167 = vextq_s8(vaddq_f32(v166, vdupq_lane_s64(v166.i64[0], 0)), v162, 8uLL);
        v168 = vminq_f32(vmaxq_f32(vrecpeq_f32(v167), v154), v155);
        v169 = vminq_f32(vmaxq_f32(vmulq_f32(v168, vrecpsq_f32(v167, v168)), v154), v155);
        v170 = vmulq_f32(*(v143 + 144), v164);
        v171 = vaddq_f32(v170, vextq_s8(v170, v170, 4uLL));
        v162.i64[1] = vaddq_f32(v171, vdupq_lane_s64(*&v171, 0)).i64[1];
        v172 = vmulq_f32(*(v143 + 128), v164);
        v173 = vaddq_f32(v172, vextq_s8(v172, v172, 4uLL));
        v174 = vbslq_s8(v152, vaddq_f32(v173, vextq_s8(v173, v173, 8uLL)), v162);
        v175 = *(a2 + 22);
        v176 = vsubq_f32(vmulq_n_f32(vextq_s8(v174, v174, 8uLL), vmulq_f32(v169, vrecpsq_f32(v167, v169)).f32[0]), v9);
        v177 = *(a2 + 10);
        if (v5)
        {
          v178 = vaddq_s32(vcvtq_s32_f32(v176), vcltzq_f32(v176));
          v179 = vsubq_f32(v176, vcvtq_f32_s32(v178)).u64[0];
          v180 = (v177 + 16 * (v178.i32[0] + v178.i32[1] * v175));
          v181 = vaddq_f32(*v180, vmulq_n_f32(vsubq_f32(v180[1], *v180), v179.f32[0]));
          v182 = vaddq_f32(v181, vmulq_lane_f32(vsubq_f32(vaddq_f32(v180[v175], vmulq_n_f32(vsubq_f32(v180[v175 + 1], v180[v175]), v179.f32[0])), v181), v179, 1));
        }

        else
        {
          v183 = vaddq_f32(v176, v13);
          v184 = vcvtq_s32_f32(v183);
          v183.i64[0] = vaddq_s32(v184, vcgtq_f32(vcvtq_f32_s32(v184), v183)).u64[0];
          v182 = *(v177 + 16 * (v183.i32[0] + v183.i32[1] * v175));
        }

        v185 = *(v143 + 16);
        v186 = vsubq_f32(v185, v174);
        v187 = *(v143 + 272);
        v188 = *(v143 + 288);
        v189 = vminq_f32(vmaxq_f32(vextq_s8(v186, v186, 8uLL), v154), v187);
        v190 = vextq_s8(v189, v189, 8uLL).u64[0];
        v191.i64[0] = v174.i64[0];
        v191.i64[1] = v189.i64[1];
        v189.i64[0] = vextq_s8(v189, v174, 0xCuLL).u64[0];
        *&v189.u32[2] = vext_s8(*v174.f32, v190, 4uLL);
        v192 = vmvnq_s8(v151);
        v193 = vmvnq_s8(v163);
        v194 = vorrq_s8(vandq_s8(v152, vminq_f32(vmaxq_f32(vsubq_f32(v189, vextq_s8(v185, v185, 8uLL)), v187), v154)), vandq_s8(v191, vmvnq_s8(v152)));
        v195 = vaddq_f32(*(v143 + 32), vmulq_f32(vminq_f32(vdupq_laneq_s32(v194, 2), vdupq_laneq_s32(v194, 3)), vsubq_f32(v182, *(v143 + 32))));
        v196 = *(v143 + 176);
        v194.i64[1] = vsubq_f32(v196, vdupq_lane_s64(*&v194, 0)).i64[1];
        v197 = vorrq_s8(vandq_s8(v151, vsubq_f32(v194, v196)), vandq_s8(v194, v192));
        v198 = vorrq_s8(vandq_s8(v197, v163), vandq_s8(vmaxq_f32(v197, v187), v193));
        v198.i64[1] = vminq_f32(vextq_s8(*&v198, *&v198, 8uLL), v198).i64[1];
        v199 = vorrq_s8(vandq_s8(v198, v192), vandq_s8(v151, vminq_f32(vmaxq_f32(vrev64q_s32(vsubq_f32(*v143, v198)), v187), v188)));
        v200 = vorrq_s8(vandq_s8(v199, v193), vandq_s8(v163, vminq_f32(vmaxq_f32(vsubq_f32(v199, vrev64q_s32(*v143)), v188), v154)));
        v201 = vminq_f32(vrev64q_s32(v200), v200);
        v202 = vextq_s8(v200, v201, 8uLL);
        v201.i64[1] = v200.i64[1];
        *(v11 + 16 * v15) = vmulq_n_f32(v195, vminq_f32(v201, v202).f32[0]);
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcWideScreen::GetDOD(HgcWideScreen *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcWideScreen::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcWideScreen::HgcWideScreen(HgcWideScreen *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E3018;
  operator new();
}

void HgcWideScreen::~HgcWideScreen(HGNode *this)
{
  *this = &unk_2871E3018;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4055B0EC01);
  }

  HGNode::~HGNode(this);
}

{
  HgcWideScreen::~HgcWideScreen(this);

  HGObject::operator delete(v1);
}

uint64_t HgcWideScreen::SetParameter(HgcWideScreen *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      goto LABEL_64;
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
      goto LABEL_64;
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
      goto LABEL_64;
    case 3:
      v13 = *(this + 51);
      if (v13[3].n128_f32[0] == 0.0 && v13[3].n128_f32[1] == a3.n128_f32[0] && v13[3].n128_f32[2] == 0.0 && v13[3].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v13[3].n128_u32[0] = 0;
      v13[3].n128_u32[1] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v13[3].n128_u64[1] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v13[19] = a3;
      goto LABEL_64;
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
      goto LABEL_64;
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
      goto LABEL_64;
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
      goto LABEL_64;
    case 7:
      v14 = *(this + 51);
      if (v14[28] == a3.n128_f32[0] && v14[29] == a4 && v14[30] == a5 && v14[31] == a6)
      {
        return 0;
      }

      v14[28] = a3.n128_f32[0];
      v14[29] = a4;
      v14[30] = a5;
      v14[31] = a6;
      goto LABEL_64;
    case 8:
      v19 = *(this + 51);
      if (v19[32] == a3.n128_f32[0] && v19[33] == a4 && v19[34] == a5 && v19[35] == a6)
      {
        return 0;
      }

      v19[32] = a3.n128_f32[0];
      v19[33] = a4;
      v19[34] = a5;
      v19[35] = a6;
      goto LABEL_64;
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
      goto LABEL_64;
    case 10:
      v17 = 0;
      a3.n128_f32[1] = a4;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(*(this + 51) + 320) = a3;
      return v17;
    case 11:
      v8 = *(this + 51);
      if (v8[40] == a3.n128_f32[0] && v8[41] == a4 && v8[42] == a5 && v8[43] == a6)
      {
        return 0;
      }

      v8[40] = a3.n128_f32[0];
      v8[41] = a4;
      v8[42] = a5;
      v8[43] = a6;
      goto LABEL_64;
    case 12:
      v10 = *(this + 51);
      if (v10[44] == a3.n128_f32[0] && v10[45] == a4 && v10[46] == a5 && v10[47] == a6)
      {
        return 0;
      }

      v10[44] = a3.n128_f32[0];
      v10[45] = a4;
      v10[46] = a5;
      v10[47] = a6;
LABEL_64:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

float HgcWideScreen::GetParameter(HgcWideScreen *this, int a2, float *a3)
{
  switch(a2)
  {
    case 0:
      v3 = *(this + 51);
      *a3 = *v3;
      a3[1] = v3[1];
      a3[2] = v3[2];
      v4 = v3 + 3;
      goto LABEL_15;
    case 1:
      v12 = *(this + 51);
      *a3 = v12[4];
      a3[1] = v12[5];
      a3[2] = v12[6];
      v4 = v12 + 7;
      goto LABEL_15;
    case 2:
      v9 = *(this + 51);
      *a3 = v9[8];
      a3[1] = v9[9];
      a3[2] = v9[10];
      v4 = v9 + 11;
      goto LABEL_15;
    case 3:
      v10 = *(this + 51);
      *a3 = v10[76];
      a3[1] = v10[77];
      a3[2] = v10[78];
      v4 = v10 + 79;
      goto LABEL_15;
    case 4:
      v6 = *(this + 51);
      *a3 = v6[16];
      a3[1] = v6[17];
      a3[2] = v6[18];
      v4 = v6 + 19;
      goto LABEL_15;
    case 5:
      v13 = *(this + 51);
      *a3 = v13[20];
      a3[1] = v13[21];
      a3[2] = v13[22];
      v4 = v13 + 23;
      goto LABEL_15;
    case 6:
      v14 = *(this + 51);
      *a3 = v14[24];
      a3[1] = v14[25];
      a3[2] = v14[26];
      v4 = v14 + 27;
      goto LABEL_15;
    case 7:
      v11 = *(this + 51);
      *a3 = v11[28];
      a3[1] = v11[29];
      a3[2] = v11[30];
      v4 = v11 + 31;
      goto LABEL_15;
    case 8:
      v16 = *(this + 51);
      *a3 = v16[32];
      a3[1] = v16[33];
      a3[2] = v16[34];
      v4 = v16 + 35;
      goto LABEL_15;
    case 9:
      v8 = *(this + 51);
      *a3 = v8[36];
      a3[1] = v8[37];
      a3[2] = v8[38];
      v4 = v8 + 39;
      goto LABEL_15;
    case 10:
      v15 = *(this + 51);
      *a3 = v15[80];
      a3[1] = v15[81];
      a3[2] = v15[82];
      v4 = v15 + 83;
      goto LABEL_15;
    case 11:
      v5 = *(this + 51);
      *a3 = v5[40];
      a3[1] = v5[41];
      a3[2] = v5[42];
      v4 = v5 + 43;
      goto LABEL_15;
    case 12:
      v7 = *(this + 51);
      *a3 = v7[44];
      a3[1] = v7[45];
      a3[2] = v7[46];
      v4 = v7 + 47;
LABEL_15:
      result = *v4;
      a3[3] = *v4;
      break;
    default:
      return result;
  }

  return result;
}

const char *HgcInvert::GetProgram(HgcInvert *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000032c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(9.999999975e-07, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = fmax(r0.w, c0.x);\n    r1.x = 1.00000h / r1.x;\n    r1.xyz = -r0.xyz*r1.xxx + c0.yyy;\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(float4(r0), float4(r1), hg_Params[0]);\n    return output;\n}\n//MD5=5349f503:9490d2ad:6deddcd2:a0e49043\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000318\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(9.999999975e-07, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = fmax(r0.w, c0.x);\n    r1.x = 1.00000f / r1.x;\n    r1.xyz = -r0.xyz*r1.xxx + c0.yyy;\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(r0, r1, hg_Params[0]);\n    return output;\n}\n//MD5=10a12ec8:c6429c29:23372981:4ba120da\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002e6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(9.999999975e-07, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = max(r0.w, c0.x);\n    r1.x = 1.00000 / r1.x;\n    r1.xyz = -r0.xyz*r1.xxx + c0.yyy;\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    gl_FragColor = mix(r0, r1, hg_ProgramLocal0);\n}\n//MD5=a9364a1b:d6c67907:14d2fe4a:a93ad32b\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA87A70(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA87B70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA87BB0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA87BA8);
}

uint64_t HgcInvert::BindTexture(HgcInvert *this, HGHandler *a2, int a3)
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

uint64_t HgcInvert::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcInvert::RenderTile(uint64_t a1, uint64_t a2)
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
          v13 = *(v6 + v10 - 32);
          v12 = *(v6 + v10 - 16);
          v15 = *(v6 + v10);
          v14 = *(v6 + v10 + 16);
          v16 = *(a1 + 408);
          v17 = *(v16 + 16);
          v18 = vmaxq_f32(vextq_s8(v13, v13, 0xCuLL), v17);
          v19 = vmaxq_f32(vextq_s8(v12, v12, 0xCuLL), v17);
          v20 = vmaxq_f32(vextq_s8(v15, v15, 0xCuLL), v17);
          v21 = vmaxq_f32(vextq_s8(v14, v14, 0xCuLL), v17);
          v22 = *(v16 + 32);
          v23 = *(v16 + 48);
          v24 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v18), v22), v23);
          v25 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v19), v22), v23);
          v26 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v20), v22), v23);
          v27 = vmaxq_f32(vmulq_f32(vrecpeq_f32(v21), v22), v23);
          v28 = *(v16 + 64);
          v29 = *(v16 + 80);
          v30 = vminq_f32(v24, v28);
          v31 = vminq_f32(v25, v28);
          v32 = vminq_f32(v26, v28);
          v33 = vminq_f32(v27, v28);
          v34 = vsubq_f32(v29, vmulq_n_f32(v13, vmulq_f32(v30, vrecpsq_f32(v18, v30)).f32[0]));
          v35 = *(v16 + 96);
          v36 = vaddq_f32(v13, vmulq_f32(*v16, vsubq_f32(vbslq_s8(v35, v13, vmulq_laneq_f32(vbslq_s8(v35, v13, v34), v13, 3)), v13)));
          v37 = vmulq_f32(*v16, vsubq_f32(vbslq_s8(v35, v12, vmulq_laneq_f32(vbslq_s8(v35, v12, vsubq_f32(v29, vmulq_n_f32(v12, vmulq_f32(v31, vrecpsq_f32(v19, v31)).f32[0]))), v12, 3)), v12));
          v38 = vaddq_f32(v15, vmulq_f32(*v16, vsubq_f32(vbslq_s8(v35, v15, vmulq_laneq_f32(vbslq_s8(v35, v15, vsubq_f32(v29, vmulq_n_f32(v15, vmulq_f32(v32, vrecpsq_f32(v20, v32)).f32[0]))), v15, 3)), v15)));
          v39 = vaddq_f32(v14, vmulq_f32(*v16, vsubq_f32(vbslq_s8(v35, v14, vmulq_laneq_f32(vbslq_s8(v35, v14, vsubq_f32(v29, vmulq_n_f32(v14, vmulq_f32(v33, vrecpsq_f32(v21, v33)).f32[0]))), v14, 3)), v14)));
          v40 = (v5 + v10);
          v40[-2] = v36;
          v40[-1] = vaddq_f32(v12, v37);
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
          v41 = *(v6 + 16 * v9);
          v42 = *(a1 + 408);
          v43 = vmaxq_f32(vextq_s8(v41, v41, 0xCuLL), *(v42 + 16));
          v44 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v43), *(v42 + 32)), *(v42 + 48)), *(v42 + 64));
          *(v5 + 16 * v9++) = vaddq_f32(v41, vmulq_f32(*v42, vsubq_f32(vbslq_s8(*(v42 + 96), v41, vmulq_laneq_f32(vbslq_s8(*(v42 + 96), v41, vsubq_f32(*(v42 + 80), vmulq_n_f32(v41, vmulq_f32(v44, vrecpsq_f32(v43, v44)).f32[0]))), v41, 3)), v41)));
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

uint64_t HgcInvert::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcInvert::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcInvert::HgcInvert(HgcInvert *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E3280;
  operator new();
}

void HgcInvert::~HgcInvert(HGNode *this)
{
  *this = &unk_2871E3280;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);
}

{
  HgcInvert::~HgcInvert(this);

  HGObject::operator delete(v1);
}

uint64_t HgcInvert::SetParameter(HgcInvert *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcInvert::GetParameter(HgcInvert *this, int a2, float *a3)
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

const char *HgcChannelMixer::GetProgram(HgcChannelMixer *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000375\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r2.x = clamp(dot(r1, half4(hg_Params[3])), 0.00000h, 1.00000h);\n    r3.w = r2.x;\n    r3.z = dot(r1, half4(hg_Params[2]));\n    r3.x = dot(r1, half4(hg_Params[0]));\n    r3.y = dot(r1, half4(hg_Params[1]));\n    r3.xyz = r3.xyz*r2.xxx;\n    output.color0 = mix(float4(r0), float4(r3), hg_Params[4]);\n    return output;\n}\n//MD5=ee693deb:25a18329:2369ace4:a9832916\n//SIG=00400000:00000001:00000001:00000001:0000:0005:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000344\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r2.x = clamp(dot(r1, hg_Params[3]), 0.00000f, 1.00000f);\n    r3.w = r2.x;\n    r3.z = dot(r1, hg_Params[2]);\n    r3.x = dot(r1, hg_Params[0]);\n    r3.y = dot(r1, hg_Params[1]);\n    r3.xyz = r3.xyz*r2.xxx;\n    output.color0 = mix(r0, r3, hg_Params[4]);\n    return output;\n}\n//MD5=8c34ae41:ec1890af:07ea7f20:d2990174\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003b6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nuniform mediump vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r2.x = clamp(dot(r1, hg_ProgramLocal3), 0.00000, 1.00000);\n    r3.w = r2.x;\n    r3.z = dot(r1, hg_ProgramLocal2);\n    r3.x = dot(r1, hg_ProgramLocal0);\n    r3.y = dot(r1, hg_ProgramLocal1);\n    r3.xyz = r3.xyz*r2.xxx;\n    gl_FragColor = mix(r0, r3, hg_ProgramLocal4);\n}\n//MD5=5ad42bd4:4af0283b:59ba1e6b:099c0690\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA882E4(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA883E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA88424()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA8841CLL);
}

uint64_t HgcChannelMixer::BindTexture(HgcChannelMixer *this, HGHandler *a2, int a3)
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

uint64_t HgcChannelMixer::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a2 + 144))(a2, 4, a1[51] + 64, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcChannelMixer::RenderTile(uint64_t a1, uint64_t a2)
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
          v16 = *(v14 + 64);
          v15 = *(v14 + 80);
          v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v15);
          v18 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v15);
          v19 = *(v14 + 96);
          v20 = *(v14 + 112);
          v21 = vmulq_f32(vrecpeq_f32(v17), v19);
          v22 = vmulq_f32(vrecpeq_f32(v18), v19);
          v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
          v24 = vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18)));
          v25 = *(v14 + 128);
          v26 = *(v14 + 144);
          v27 = vmulq_f32(v13, vorrq_s8(v23, v25));
          v28 = vmulq_f32(v12, vorrq_s8(v24, v25));
          v30 = *(v14 + 32);
          v29 = *(v14 + 48);
          v31 = vmulq_f32(v29, v27);
          v32 = vmulq_f32(v29, v28);
          v33 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
          v34 = vaddq_f32(v32, vextq_s8(v32, v32, 4uLL));
          v35 = vmulq_f32(v27, v30);
          v36 = vmulq_f32(v28, v30);
          v37 = vmaxq_f32(vaddq_f32(v33, vextq_s8(v33, v33, 8uLL)), v25);
          v38 = vaddq_f32(v35, vextq_s8(v35, v35, 4uLL));
          v39 = vaddq_f32(v36, vextq_s8(v36, v36, 4uLL));
          v40 = vmaxq_f32(vaddq_f32(v34, vextq_s8(v34, v34, 8uLL)), v25);
          v41 = *(v14 + 16);
          v42 = vaddq_f32(v39, vdupq_lane_s64(v39.i64[0], 0));
          v43 = vmulq_f32(v27, *v14);
          v44 = vmulq_f32(v28, *v14);
          v45 = vaddq_f32(v43, vextq_s8(v43, v43, 4uLL));
          v46 = vminq_f32(v37, v26);
          v47 = vaddq_f32(v44, vextq_s8(v44, v44, 4uLL));
          v48 = vminq_f32(v40, v26);
          v45.i64[0] = vaddq_f32(v45, vdupq_laneq_s64(v45, 1)).u64[0];
          v47.i64[0] = vaddq_f32(v47, vdupq_laneq_s64(v47, 1)).u64[0];
          v49 = *(v14 + 160);
          v50 = *(v14 + 176);
          v51 = vmulq_f32(v27, v41);
          v52 = vmulq_f32(v28, v41);
          v53 = vaddq_f32(v51, vextq_s8(v51, v51, 4uLL));
          v54 = vaddq_f32(v52, vextq_s8(v52, v52, 4uLL));
          v45.i64[1] = vbslq_s8(v49, vaddq_f32(v38, vdupq_lane_s64(*&v38, 0)), vextq_s8(v46, v46, 4uLL)).i64[1];
          v55 = vbslq_s8(v50, vaddq_f32(v53, vextq_s8(v53, v53, 8uLL)), v45);
          v47.i64[1] = vbslq_s8(v49, v42, vextq_s8(v48, v48, 4uLL)).i64[1];
          v56 = vbslq_s8(v50, vaddq_f32(v54, vextq_s8(v54, v54, 8uLL)), v47);
          v57 = *(v14 + 192);
          v58 = (v5 + v10);
          v58[-1] = vaddq_f32(v13, vmulq_f32(v16, vsubq_f32(vbslq_s8(v57, v55, vmulq_n_f32(v55, *v46.i32)), v13)));
          *v58 = vaddq_f32(v12, vmulq_f32(v16, vsubq_f32(vbslq_s8(v57, v56, vmulq_n_f32(v56, *v48.i32)), v12)));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v59 = *(v6 + 16 * v9);
        v60 = *(a1 + 408);
        v61 = vmaxq_f32(vdupq_laneq_s32(v59, 3), *(v60 + 80));
        v62 = vmulq_f32(vrecpeq_f32(v61), *(v60 + 96));
        v63 = vandq_s8(*(v60 + 112), vmulq_f32(v62, vrecpsq_f32(v62, v61)));
        v64 = *(v60 + 128);
        v65 = vmulq_f32(v59, vorrq_s8(v63, v64));
        v66 = vmulq_f32(*(v60 + 48), v65);
        v67 = vaddq_f32(v66, vextq_s8(v66, v66, 4uLL));
        v68 = vminq_f32(vmaxq_f32(vaddq_f32(v67, vextq_s8(v67, v67, 8uLL)), v64), *(v60 + 144));
        v69 = vmulq_f32(v65, *(v60 + 32));
        v70 = vaddq_f32(v69, vextq_s8(v69, v69, 4uLL));
        v71 = vmulq_f32(v65, *v60);
        v72 = vaddq_f32(v71, vextq_s8(v71, v71, 4uLL));
        v73 = vbslq_s8(*(v60 + 160), vaddq_f32(v70, vdupq_lane_s64(v70.i64[0], 0)), vextq_s8(v68, v68, 4uLL));
        v70.i64[0] = vaddq_f32(v72, vdupq_laneq_s64(v72, 1)).u64[0];
        v74 = vmulq_f32(v65, *(v60 + 16));
        v75 = vaddq_f32(v74, vextq_s8(v74, v74, 4uLL));
        v70.i64[1] = v73.i64[1];
        v76 = vbslq_s8(*(v60 + 176), vaddq_f32(v75, vextq_s8(v75, v75, 8uLL)), v70);
        *(v5 + 16 * v9) = vaddq_f32(v59, vmulq_f32(*(v60 + 64), vsubq_f32(vbslq_s8(*(v60 + 192), v76, vmulq_n_f32(v76, *v68.i32)), v59)));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcChannelMixer::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcChannelMixer::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcChannelMixer::HgcChannelMixer(HgcChannelMixer *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E34E8;
  operator new();
}

void HgcChannelMixer::~HgcChannelMixer(HGNode *this)
{
  *this = &unk_2871E34E8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F93440CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcChannelMixer::~HgcChannelMixer(this);

  HGObject::operator delete(v1);
}

uint64_t HgcChannelMixer::SetParameter(HgcChannelMixer *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcChannelMixer::GetParameter(HgcChannelMixer *this, unsigned int a2, float *a3)
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

const char *HgcChannelBalance::GetProgram(HgcChannelBalance *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004eb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 2.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2.xyz = half3(hg_Params[2].xyz) - half3(hg_Params[1].xyz);\n    r3.xyz = r1.xyz - c0.xxx;\n    r3.xyz = r3.xyz*r2.xyz;\n    r3.xyz = r3.xyz + r3.xyz;\n    r2.xyz = half3(hg_Params[1].xyz) - half3(hg_Params[0].xyz);\n    r2.xyz = r2.xyz*r1.xyz;\n    r4.xyz = half3(r1.xyz >= c0.xxx);\n    r3.xyz = r3.xyz + half3(hg_Params[1].xyz);\n    r4.xyz = r3.xyz*r4.xyz;\n    r2.xyz = r2.xyz*c0.yyy + half3(hg_Params[0].xyz);\n    r1.xyz = half3(r1.xyz < c0.xxx);\n    r1.xyz = r2.xyz*r1.xyz + r4.xyz;\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(float4(r0), float4(r1), hg_Params[3]);\n    return output;\n}\n//MD5=eb9e2f45:42fccbc9:fba54ed1:3a8cef47\n//SIG=00400000:00000001:00000001:00000001:0001:0004:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004af\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 2.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2.xyz = hg_Params[2].xyz - hg_Params[1].xyz;\n    r3.xyz = r1.xyz - c0.xxx;\n    r3.xyz = r3.xyz*r2.xyz;\n    r3.xyz = r3.xyz + r3.xyz;\n    r2.xyz = hg_Params[1].xyz - hg_Params[0].xyz;\n    r2.xyz = r2.xyz*r1.xyz;\n    r4.xyz = float3(r1.xyz >= c0.xxx);\n    r3.xyz = r3.xyz + hg_Params[1].xyz;\n    r4.xyz = r3.xyz*r4.xyz;\n    r2.xyz = r2.xyz*c0.yyy + hg_Params[0].xyz;\n    r1.xyz = float3(r1.xyz < c0.xxx);\n    r1.xyz = r2.xyz*r1.xyz + r4.xyz;\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    output.color0 = mix(r0, r1, hg_Params[3]);\n    return output;\n}\n//MD5=b9bbdce9:9128e2b8:6729f690:c077f518\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000051f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.5000000000, 2.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2.xyz = hg_ProgramLocal2.xyz - hg_ProgramLocal1.xyz;\n    r3.xyz = r1.xyz - c0.xxx;\n    r3.xyz = r3.xyz*r2.xyz;\n    r3.xyz = r3.xyz + r3.xyz;\n    r2.xyz = hg_ProgramLocal1.xyz - hg_ProgramLocal0.xyz;\n    r2.xyz = r2.xyz*r1.xyz;\n    r4.xyz = vec3(greaterThanEqual(r1.xyz, c0.xxx));\n    r3.xyz = r3.xyz + hg_ProgramLocal1.xyz;\n    r4.xyz = r3.xyz*r4.xyz;\n    r2.xyz = r2.xyz*c0.yyy + hg_ProgramLocal0.xyz;\n    r1.xyz = vec3(lessThan(r1.xyz, c0.xxx));\n    r1.xyz = r2.xyz*r1.xyz + r4.xyz;\n    r1.w = r0.w;\n    r1.xyz = r1.xyz*r0.www;\n    gl_FragColor = mix(r0, r1, hg_ProgramLocal3);\n}\n//MD5=5895473c:eceea28d:f9ab752f:c58b7f58\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA88D0C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA88E0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA88E4C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA88E44);
}

uint64_t HgcChannelBalance::BindTexture(HgcChannelBalance *this, HGHandler *a2, int a3)
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

uint64_t HgcChannelBalance::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcChannelBalance::RenderTile(uint64_t a1, uint64_t a2)
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
          v13 = *(v6 + v9);
          v12 = *(v6 + v9 + 16);
          v14 = *(v6 + v9 + 32);
          v15 = *(a1 + 408);
          v16 = *(v15 + 64);
          v17 = *(v15 + 80);
          v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
          v19 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v16);
          v20 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
          v21 = vmulq_f32(vrecpeq_f32(v18), v17);
          v22 = vmulq_f32(vrecpeq_f32(v19), v17);
          v23 = vmulq_f32(vrecpeq_f32(v20), v17);
          v24 = vmulq_f32(v21, vrecpsq_f32(v21, v18));
          v25 = vmulq_f32(v22, vrecpsq_f32(v22, v19));
          v26 = vmulq_f32(v23, vrecpsq_f32(v23, v20));
          v27 = vmulq_f32(v13, v24);
          v28 = vmulq_f32(v12, v25);
          v29 = vmulq_f32(v14, v26);
          v30 = *(v15 + 16);
          v31 = *(v15 + 48);
          v32 = *(v15 + 96);
          v33 = *(v15 + 112);
          v34 = vsubq_f32(*(v15 + 32), v30);
          v35 = vmulq_f32(v34, vsubq_f32(v27, v32));
          v36 = vmulq_f32(v34, vsubq_f32(v28, v32));
          v37 = vmulq_f32(v34, vsubq_f32(v29, v32));
          v38 = vsubq_f32(v30, *v15);
          v39 = vaddq_f32(v30, vaddq_f32(v35, v35));
          v40 = vaddq_f32(v30, vaddq_f32(v36, v36));
          v41 = vaddq_f32(v30, vaddq_f32(v37, v37));
          v42 = vmulq_f32(v39, vandq_s8(v33, vcgeq_f32(v27, v32)));
          v43 = *(v15 + 128);
          v44 = *(v15 + 144);
          v45 = vaddq_f32(v13, vmulq_f32(v31, vsubq_f32(vbslq_s8(v44, v13, vmulq_laneq_f32(vbslq_s8(v44, v13, vaddq_f32(v42, vmulq_f32(vandq_s8(v33, vcgtq_f32(v32, v27)), vaddq_f32(*v15, vmulq_lane_f32(vmulq_f32(v27, v38), *&v43, 1))))), v13, 3)), v13)));
          v46 = vaddq_f32(v12, vmulq_f32(v31, vsubq_f32(vbslq_s8(v44, v12, vmulq_laneq_f32(vbslq_s8(v44, v12, vaddq_f32(vmulq_f32(v40, vandq_s8(v33, vcgeq_f32(v28, v32))), vmulq_f32(vandq_s8(v33, vcgtq_f32(v32, v28)), vaddq_f32(*v15, vmulq_lane_f32(vmulq_f32(v28, v38), *&v43, 1))))), v12, 3)), v12)));
          v47 = vaddq_f32(v14, vmulq_f32(v31, vsubq_f32(vbslq_s8(v44, v14, vmulq_laneq_f32(vbslq_s8(v44, v14, vaddq_f32(vmulq_f32(v41, vandq_s8(v33, vcgeq_f32(v29, v32))), vmulq_f32(vandq_s8(v33, vcgtq_f32(v32, v29)), vaddq_f32(*v15, vmulq_lane_f32(vmulq_f32(v29, v38), *&v43, 1))))), v14, 3)), v14)));
          v48 = (v5 + v9);
          *v48 = v45;
          v48[1] = v46;
          v48[2] = v47;
          v10 += 3;
          v9 += 48;
        }
      }

      if (v10 < v4)
      {
        do
        {
          v49 = *(v6 + 16 * v10);
          v50 = *(a1 + 408);
          v51 = vmaxq_f32(vdupq_laneq_s32(v49, 3), *(v50 + 64));
          v52 = vmulq_f32(vrecpeq_f32(v51), *(v50 + 80));
          v53 = vmulq_f32(v49, vmulq_f32(v52, vrecpsq_f32(v52, v51)));
          v54 = *(v50 + 16);
          v55 = *(v50 + 96);
          v56 = vmulq_f32(vsubq_f32(*(v50 + 32), v54), vsubq_f32(v53, v55));
          *(v5 + 16 * v10++) = vaddq_f32(v49, vmulq_f32(*(v50 + 48), vsubq_f32(vbslq_s8(*(v50 + 144), v49, vmulq_laneq_f32(vbslq_s8(*(v50 + 144), v49, vaddq_f32(vmulq_f32(vaddq_f32(v54, vaddq_f32(v56, v56)), vandq_s8(*(v50 + 112), vcgeq_f32(v53, v55))), vmulq_f32(vandq_s8(*(v50 + 112), vcgtq_f32(v55, v53)), vaddq_f32(*v50, vmulq_lane_f32(vmulq_f32(v53, vsubq_f32(v54, *v50)), *(v50 + 128), 1))))), v49, 3)), v49)));
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

uint64_t HgcChannelBalance::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcChannelBalance::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcChannelBalance::HgcChannelBalance(HgcChannelBalance *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E3750;
  operator new();
}

void HgcChannelBalance::~HgcChannelBalance(HGNode *this)
{
  *this = &unk_2871E3750;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);
}

{
  HgcChannelBalance::~HgcChannelBalance(this);

  HGObject::operator delete(v1);
}

uint64_t HgcChannelBalance::SetParameter(HgcChannelBalance *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcChannelBalance::GetParameter(HgcChannelBalance *this, unsigned int a2, float *a3)
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

const char *HgcCircleBlur2::GetProgram(HgcCircleBlur2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_174;
    }

    else
    {
      return aMetal10Len0000_175;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_57;
  }
}

void HgcCircleBlur2::InitProgramDescriptor(HgcCircleBlur2 *this, HGProgramDescriptor *a2)
{
  HGProgramDescriptor::SetVisibleShaderWithSource( a2,  "HgcCircleBlur2_hgc_visible",  "//Metal1.0     \n //LEN=0000000d02\n [[ visible ]] FragmentOut HgcCircleBlur2_hgc_visible(const constant float4* hg_Params,\n float4 color0,\n float4 color1,\n float4 color2,\n float4 color3,\n float4 color4,\n float4 texCoord5)\n {\n const float4 c0 = float4(7.000000000, 3.000000000, 2.000000000, 1.000000000);\n"
    "    const float4 c1 = float4(4.000000000, 1.000000000, 0.000000000, 0.000000000);\n"
    "    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9;\n"
    "    FragmentOut output;\n"
    "\n"
    "    r0 = color0;\n"
    "    r1.w = c0.w;\n"
    "    r1.xy = texCoord5.xy;\n"
    "    r2.y = dot(r1.xyw, hg_Params[3].xyz);\n"
    "    r2.x = dot(r1.xyw, hg_Params[2].xyz);\n"
    "    r2.x = dot(r2.xy, r2.xy);\n"
    "    r2.x = sqrt(r2.x);\n"
    "    r2.x = -r2.x*hg_Params[1].x + c0.w;\n"
    "    r2.y = r2.x*c0.x;\n"
    "    r1 = color1;\n"
    "    r3 = color2;\n"
    "    r4 = color3;\n"
    "    r2.z = floor(fabs(r2.y));\n"
    "    r2.z = select(r2.z, -r2.z, r2.y < 0.00000f);\n"
    "    r5.x = r2.z - c0.y;\n"
    "    r5.w = r5.x - c0.w;\n"
    "    r6.yz = r5.xx - c0.zy;\n"
    "    r5.w = abs(r5.w);\n"
    "    r6.yz = abs(r6.yz);\n"
    "    r2.y = r2.y - r2.z;\n"
    "    r5.z = float(c1.z < r2.x);\n"
    "    r5.y = float(r2.x < c0.w);\n"
    "    r5.y = fmin(r5.z, r5.y);\n"
    "    r5.z = r5.y*hg_Params[0].x;\n"
    "    r2.w = float(r2.z >= c1.x);\n"
    "    r2.w = r5.z*r2.w;\n"
    "    r5.z = float(c1.z >= r5.x);\n"
    "    r5.zw = float2(-r5.zw >= c1.zz);\n"
    "    r5.x = abs(r5.x);\n"
    "    r7 = color4;\n"
    "    r5.z = r2.w*r5.z;\n"
    "    r6.x = r5.z*r5.w;\n"
    "    r5.z = r5.z*-r5.w + r5.z;\n"
    "    r6.y = float(-r6.y >= c1.z);\n"
    "    r5.w = r5.z*r6.y;\n"
    "    r8 = select(r0, r1, -r6.xxxx < 0.00000f);\n"
    "    r9 = select(r1, r3, -r6.xxxx < 0.00000f);\n"
    "    r6.yz = float2(-r6.yz >= c1.zz);\n"
    "    r9 = select(r9, r4, -r5.wwww < 0.00000f);\n"
    "    r8 = select(r8, r3, -r5.wwww < 0.00000f);\n"
    "    r5.z = r5.z*r6.y;\n"
    "    r6.y = r5.z*r6.z;\n"
    "    r6.z = float(-r6.z >= c1.z);\n"
    "    r5.z = r5.z*r6.z;\n"
    "    r8 = select(r8, r4, -r6.yyyy < 0.00000f);\n"
    "    r6 = select(r9, r7, -r6.yyyy < 0.00000f);\n"
    "    r6 = select(r6, c1.yzzy, -r5.zzzz < 0.00000f);\n"
    "    r9.x = float(-fabs(hg_Params[0].x) >= c1.z);\n"
    "    r8 = select(r8, c1.yzzy, -r5.zzzz < 0.00000f);\n"
    "    r5.w = r2.z - c1.y;\n"
    "    r5.z = abs(r5.w);\n"
    "    r5.w = float(c1.z >= r2.z);\n"
    "    r9.y = fmin(r5.y, r9.x);\n"
    "    r5.zw = float2(-r5.zw >= c1.zz);\n"
    "    r5.w = fmin(r9.y, r5.w);\n"
    "    r9.z = fmin(r5.w, r5.z);\n"
    "    r5.xz = float2(-r5.xz >= c1.zz);\n"
    "    r5.z = fmin(r5.w, r5.z);\n"
    "    r2.z = float(r2.z == c0.z);\n"
    "    r5.w = fmin(r5.z, r2.z);\n"
    "    r9.w = c1.y - r2.y;\n"
    "    r6 = mix(r6, r8, r9.wwww);\n"
    "    r8 = select(r1, r3, -r9.zzzz < 0.00000f);\n"
    "    r1 = select(r0, r1, -r9.zzzz < 0.00000f);\n"
    "    r2.z = r5.z*-r2.z + r5.z;\n"
    "    r5.z = fmin(r2.z, r5.x);\n"
    "    r8 = select(r8, r4, -r5.wwww < 0.00000f);\n"
    "    r1 = select(r1, r3, -r5.wwww < 0.00000f);\n"
    "    r2.z = r2.z*-r5.x + r2.z;\n"
    "    r8 = select(r8, r7, -r5.zzzz < 0.00000f);\n"
    "    r8 = select(r8, c1.yzzy, -r2.zzzz < 0.00000f);\n"
    "    r1 = select(r1, r4, -r5.zzzz < 0.00000f);\n"
    "    r1 = select(r1, c1.yzzy, -r2.zzzz < 0.00000f);\n"
    "    r2.x = float(c1.z >= r2.x);\n"
    "    r2.y = r2.x;\n"
    "    r2.z = r5.y;\n"
    "    r2.yz = float2(-r2.yz >= c1.zz);\n"
    "    r2.xy = fmin(r2.zz, r2.xy);\n"
    "    r1 = mix(r8, r1, r9.wwww);\n"
    "    r6 = select(r0, r6, -r2.wwww < 0.00000f);\n"
    "    r6 = select(r6, r1, -r9.yyyy < 0.00000f);\n"
    "    r6 = select(r6, r0, -r2.xxxx < 0.00000f);\n"
    "    r2.x = r2.y*-hg_Params[0].x;\n"
    "    r6 = select(r6, r7, r2.xxxx < 0.00000f);\n"
    "    r2.x = fmin(r2.y, r9.x);\n"
    "    output.color0 = select(r6, r0, -r2.xxxx < 0.00000f);\n"
    "    return output;\n"
    "}\n");
  HGProgramDescriptor::SetFragmentFunctionName(a2, "HgcCircleBlur2");
}

void sub_25FA896CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA8990C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA89974()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA8996CLL);
}

uint64_t HgcCircleBlur2::BindTexture(HgcCircleBlur2 *this, HGHandler *a2, int a3)
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

uint64_t HgcCircleBlur2::Bind(HgcCircleBlur2 *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 5, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcCircleBlur2::RenderTile(uint64_t a1, uint64_t a2)
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
    v15.f32[0] = *a2 + 0.5;
    v15.f32[1] = v2 + 0.5;
    v16 = *(a2 + 88);
    v15.i32[2] = 0;
    v15.i32[3] = 1.0;
    v121 = v15;
    v17 = 16 * *(a2 + 24);
    v18 = 16 * *(a2 + 152);
    v19 = 16 * v11;
    v20 = 16 * v16;
    v21 = xmmword_2603429C0;
    do
    {
      if (v5 >= 1)
      {
        v22 = 0;
        v23 = v121;
        do
        {
          v24 = *(a1 + 408);
          v25 = *(v24 + 64);
          v26 = *(v24 + 80);
          v27.i64[0] = v23.i64[0];
          v27.i64[1] = vextq_s8(v25, v25, 8uLL).u64[0];
          *v28.f32 = vqtbl1_s8(v27, *v26.i8);
          v29 = vextq_s8(v26, v26, 8uLL).u64[0];
          *&v28.u32[2] = vqtbl1_s8(v27, v29);
          v30 = vmulq_f32(*(v24 + 48), v28);
          v31 = vmulq_f32(*(v24 + 32), v28);
          v32 = vaddq_f32(vextq_s8(v31, v31, 8uLL), vaddq_f32(v31, vrev64q_s32(v31)));
          v33 = *(v24 + 96);
          v34 = *(v24 + 112);
          v35 = vbslq_s8(v33, v32, vaddq_f32(vextq_s8(v30, v30, 4uLL), vaddq_f32(v30, vrev64q_s32(v30))));
          v36 = vmulq_f32(v35, v35);
          v37 = vaddq_f32(v36, vrev64q_s32(v36));
          v38 = vminq_f32(vrsqrteq_f32(v37), v25);
          v39 = vminq_f32(vmulq_f32(v38, vrsqrtsq_f32(vmulq_f32(v38, v37), v38)), v25);
          v40 = vsubq_f32(v34, vmulq_f32(*(v24 + 16), vmulq_f32(vminq_f32(vmulq_f32(v39, vrsqrtsq_f32(vmulq_f32(v39, v37), v39)), v25), v37)));
          v41 = vbslq_s8(v33, v40, vmulq_f32(v34, vrev64q_s32(v40)));
          v42 = vabsq_f32(vextq_s8(v41, v41, 0xCuLL));
          v43 = *(v14 + v22);
          v44 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
          v45 = *(v12 + v22);
          v46 = vsubq_f32(v44, vbslq_s8(vcgtq_f32(v44, v42), v34, 0));
          v47.i64[0] = v41.i64[0];
          v47.i64[1] = v46.i64[1];
          v48 = *(v10 + v22);
          v50 = *(v24 + 128);
          v49 = *(v24 + 144);
          v51 = vandq_s8(vextq_s8(v21, v47, 0xCuLL), v50);
          v52 = veorq_s8(v51, v47);
          *v46.f32 = veor_s8(*&vextq_s8(v51, v51, 8uLL), *&vextq_s8(v46, v46, 8uLL));
          *v51.i8 = vext_s8(*v46.f32, *v41.f32, 4uLL);
          *v46.f32 = vext_s8(*v41.f32, *v46.f32, 4uLL);
          v53 = vextq_s8(v52, v41, 8uLL);
          v41.i64[1] = v52.i64[1];
          v54 = vsubq_f32(v53, v49);
          v55 = vdupq_lane_s32(*v54.i8, 0);
          v46.i64[1] = v51.i64[0];
          v54.i64[1] = vsubq_f32(vextq_s8(v54, v54, 4uLL), v49).i64[1];
          v56 = *(v24 + 176);
          v57 = vbslq_s8(v56, vsubq_f32(v41, v46), v41);
          v58 = *(v24 + 192);
          v59 = *(v24 + 208);
          v60 = vandq_s8(v34, vcgtq_f32(v57, v58));
          v61 = vrev64q_s32(v57);
          v62 = vbslq_s8(v59, vextq_s8(v60, v60, 8uLL), vandq_s8(*(v24 + 160), v54));
          v63 = vbslq_s8(v56, vandq_s8(v58, vcgtq_f32(v58, v61)), v62);
          v64 = vbslq_s8(v56, vminq_f32(vextq_s8(v63, v63, 4uLL), v63), v62);
          v65 = vbslq_s8(v59, vmulq_lane_f32(vextq_s8(*v24, *v24, 8uLL), *v64.i8, 1), v64);
          v66 = vandq_s8(v49, vcgeq_f32(v61, v58));
          v68 = *(v24 + 224);
          v67 = *(v24 + 240);
          v69 = vandq_s8(v34, vcgeq_f32(v58, v65));
          v70 = vbslq_s8(v68, vmulq_laneq_f32(vbslq_s8(v68, v66, v57), v65, 2), v57);
          v71 = vbslq_s8(v59, vextq_s8(v69, v69, 8uLL), v64);
          v72 = vandq_s8(v34, vcgeq_f32(vnegq_f32(v71), v67));
          v73 = *(v24 + 272);
          v71.i64[0] = vandq_s8(v71, *(v24 + 256)).u64[0];
          v71.i64[1] = v72.i64[1];
          v74 = vbslq_s8(v59, vmulq_laneq_f32(v71, v70, 3), v71);
          v75 = vbslq_s8(v33, vmulq_laneq_f32(vextq_s8(v74, v74, 0xCuLL), v74, 2), vabdq_f32(v55, v49));
          v76 = *(v8 + v22);
          v77 = vsubq_f32(v74, vmulq_laneq_f32(v74, v74, 3));
          v78 = *(v7 + v22);
          v79 = vbslq_s8(v56, vandq_s8(v58, vcgeq_f32(vnegq_f32(v75), v67)), v75);
          v74.i64[1] = v77.i64[1];
          v80 = vbslq_s8(v68, vmulq_laneq_f32(vextq_s8(v79, v79, 8uLL), v77, 2), v74);
          v81 = vcgtq_f32(vdupq_lane_s32(*v79.f32, 0), v67);
          v82 = vbslq_s8(v81, v45, v43);
          v83 = vandq_s8(v58, vcgeq_f32(vnegq_f32(v79), v67));
          v84 = vcgtq_f32(vdupq_laneq_s32(v80, 3), v67);
          v85 = vmulq_lane_f32(v80, *v83.i8, 1);
          v86.i64[0] = vmulq_laneq_f32(vextq_s8(v83, v21, 4uLL), v85, 2).u64[0];
          v87 = vbslq_s8(v84, v76, vbslq_s8(v81, v48, v45));
          v86.i64[1] = v83.i64[1];
          v88 = vrev64q_s32(v70);
          v89 = vbslq_s8(v84, v48, v82);
          v90 = vcgtq_f32(vdupq_lane_s32(*v86.f32, 1), v67);
          v91 = vandq_s8(v73, vcgeq_f32(vorrq_s8(v50, *v24), v67));
          *&v80.u32[2] = vsub_f32(*&vextq_s8(v88, v88, 8uLL), *&vextq_s8(v73, v73, 8uLL));
          *v92.i8 = vqtbl1_s8(v80, *v26.i8);
          v92.u64[1] = vand_s8(vqtbl1_s8(v80, v29), *&vextq_s8(*(v24 + 288), *(v24 + 288), 8uLL));
          v93 = vbslq_s8(v68, vandq_s8(v73, vcgeq_f32(v67, v88)), v92);
          v94 = vbslq_s8(v33, v91, vminq_f32(v93, vrev64q_s32(v91)));
          v95 = vcgtq_f32(vdupq_laneq_s32(vmulq_f32(v85, vbslq_s8(vcgeq_f32(vnegq_f32(v86), v67), v58, 0)), 2), v67);
          v93.i64[1] = vandq_s8(*&v34, vcgeq_f32(vnegq_f32(v93), v67)).i64[1];
          v96 = vbslq_s8(v95, v73, vbslq_s8(v90, v78, v87));
          v97 = vbslq_s8(v68, vminq_f32(vextq_s8(v94, v94, 8uLL), v93), v93);
          v98 = vbslq_s8(*(v24 + 304), vandq_s8(v34, vcgeq_f32(vnegq_f32(v97), v67)), v97);
          v98.i64[1] = vminq_f32(vrev64q_s32(*&v98), v98).i64[1];
          v99 = vbslq_s8(v59, vandq_s8(v58, vceqq_f32(v25, v70)), v70);
          v100 = vbslq_s8(v68, vrev64q_s32(vminq_f32(v98, v99)), v98);
          v101 = vsubq_f32(v58, v99);
          v94.i64[1] = vminq_f32(vrev64q_s32(*&v97), v97).i64[1];
          v102 = vbslq_s8(v68, vextq_s8(v101, v101, 8uLL), v94);
          v103 = vaddq_f32(vmulq_laneq_f32(vsubq_f32(vbslq_s8(v95, v73, vbslq_s8(v90, v76, v89)), v96), v102, 3), v96);
          v104 = vcgtq_f32(vdupq_laneq_s32(v102, 2), v67);
          v105 = vbslq_s8(v104, v48, v45);
          v106 = vbslq_s8(v104, v45, v43);
          v107 = vbslq_s8(v59, vsubq_f32(v100, vmulq_f32(v99, v100)), v70);
          v108 = vbslq_s8(v59, vminq_f32(v107, vextq_s8(v100, v100, 8uLL)), v100);
          v109 = vcgtq_f32(vdupq_laneq_s32(v108, 3), v67);
          v110 = vbslq_s8(v109, v48, v106);
          v111 = vbslq_s8(v59, vsubq_f32(v107, vmulq_n_f32(v107, *v108.i32)), v70);
          v112 = vcgtq_f32(vdupq_laneq_s32(v108, 2), v67);
          v113 = vbslq_s8(v112, v78, vbslq_s8(v109, v76, v105));
          v114 = vbslq_s8(v112, v76, v110);
          v112.i64[0] = vandq_s8(v73, vcgeq_f32(v67, v111)).u64[0];
          v68.i64[0] = v112.i64[0];
          v115 = vcgtq_f32(vdupq_laneq_s32(v111, 2), v67);
          v68.i64[1] = vdupq_laneq_s64(v111, 1).u64[0];
          v112.i64[1] = v111.i64[1];
          v116 = vbslq_s8(v115, v73, v113);
          v117 = vbslq_s8(v59, vextq_s8(v108, v108, 0xCuLL), vbslq_s8(v56, vrev64q_s32(v68), v112));
          v118 = vbslq_s8(*(v24 + 320), vandq_s8(v58, vcgeq_f32(vnegq_f32(v117), v73)), v117);
          v111.i64[0] = vminq_f32(vdupq_laneq_s32(v118, 2), v118).u64[0];
          v119 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v102.f32, 1), v67), vaddq_f32(vmulq_laneq_f32(vsubq_f32(vbslq_s8(v115, v73, v114), v116), v102, 3), v116), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v118, 3), v67), v103, v43));
          v111.i64[1] = v118.i64[1];
          v114.i64[0] = vbslq_s8(v33, vmulq_lane_f32(vnegq_f32(*v24), *v111.f32, 1), v111).u64[0];
          v21 = vbslq_s8(vcgtq_f32(vminq_f32(vdupq_lane_s32(*v114.i8, 1), vdupq_lane_s32(*v102.f32, 0)), v67), v43, vbslq_s8(vcgtq_f32(v67, vdupq_lane_s32(*v114.i8, 0)), v78, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v111.f32, 0), v67), v43, v119)));
          *(v6 + v22) = v21;
          v23 = vaddq_f32(v23, xmmword_2603429B0);
          v22 += 16;
        }

        while (16 * v5 != v22);
      }

      v21 = vaddq_f32(v121, xmmword_2603429C0);
      v121 = v21;
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

uint64_t HgcCircleBlur2::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcCircleBlur2::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcCircleBlur2::HgcCircleBlur2(HgcCircleBlur2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E39B8;
  operator new();
}

void HgcCircleBlur2::~HgcCircleBlur2(HGNode *this)
{
  *this = &unk_2871E39B8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcCircleBlur2::~HgcCircleBlur2(this);

  HGObject::operator delete(v1);
}

uint64_t HgcCircleBlur2::SetParameter(HgcCircleBlur2 *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v11 = *(this + 51);
      if (v11[2].n128_f32[0] != a3.n128_f32[0] || v11[2].n128_f32[1] != a4 || v11[2].n128_f32[2] != a6 || v11[2].n128_f32[3] != 0.0)
      {
        v11[2].n128_u32[0] = a3.n128_u32[0];
        v11[2].n128_f32[1] = a4;
        v11[2].n128_f32[2] = a6;
        a3.n128_f32[1] = a4;
        v11[2].n128_u32[3] = 0;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v11[21] = a3;
        goto LABEL_26;
      }

      return 0;
    }

    if (a2 == 3)
    {
      v9 = *(this + 51);
      if (v9[3].n128_f32[0] != a3.n128_f32[0] || v9[3].n128_f32[1] != a4 || v9[3].n128_f32[2] != a6 || v9[3].n128_f32[3] != 0.0)
      {
        v9[3].n128_u32[0] = a3.n128_u32[0];
        v9[3].n128_f32[1] = a4;
        v9[3].n128_f32[2] = a6;
        a3.n128_f32[1] = a4;
        v9[3].n128_u32[3] = 0;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v9[22] = a3;
        goto LABEL_26;
      }

      return 0;
    }
  }

  else
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

float HgcCircleBlur2::GetParameter(HgcCircleBlur2 *this, int a2, float *a3)
{
  if (a2 > 1)
  {
    if (a2 == 2)
    {
      v7 = *(this + 51);
      *a3 = v7[84];
      a3[1] = v7[85];
      a3[2] = v7[86];
      v4 = v7 + 87;
    }

    else
    {
      if (a2 != 3)
      {
        return result;
      }

      v5 = *(this + 51);
      *a3 = v5[88];
      a3[1] = v5[89];
      a3[2] = v5[90];
      v4 = v5 + 91;
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

const char *HgcDesaturate::GetProgram(HgcDesaturate *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002ec\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz*half3(hg_Params[1].xyz);\n    r2.xyz = r1.xxx + r1.yyy;\n    r2.xyz = r2.xyz + r1.zzz;\n    output.color0.xyz = mix(float3(r0.xyz), float3(r2.xyz), hg_Params[0].xyz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=c13c1f6f:a8d34f6a:c6f98e80:605f6713\n//SIG=00400000:00000001:00000001:00000001:0000:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002c8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz*hg_Params[1].xyz;\n    r2.xyz = r1.xxx + r1.yyy;\n    r2.xyz = r2.xyz + r1.zzz;\n    output.color0.xyz = mix(r0.xyz, r2.xyz, hg_Params[0].xyz);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=d12e2948:f98c727c:a06757c8:adf771b8\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz*hg_ProgramLocal1.xyz;\n    r2.xyz = r1.xxx + r1.yyy;\n    r2.xyz = r2.xyz + r1.zzz;\n    gl_FragColor.xyz = mix(r0.xyz, r2.xyz, hg_ProgramLocal0.xyz);\n    gl_FragColor.w = r0.w;\n}\n//MD5=e6fa976f:92b63afd:66546278:4f57367f\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA8A8A0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA8A9A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA8A9E0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA8A9D8);
}

uint64_t HgcDesaturate::BindTexture(HgcDesaturate *this, HGHandler *a2, int a3)
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

uint64_t HgcDesaturate::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcDesaturate::RenderTile(uint64_t a1, uint64_t a2)
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
          v18 = vmulq_f32(v12, v17);
          v19 = vmulq_f32(v13, v17);
          v20 = vmulq_f32(v14, v17);
          v21 = vmulq_f32(v15, v17);
          v22 = *(v16 + 32);
          v23 = vbslq_s8(v22, v12, vaddq_f32(v12, vmulq_f32(*v16, vsubq_f32(vaddq_f32(vdupq_laneq_s32(v18, 2), vaddq_f32(vdupq_lane_s32(*v18.i8, 0), vdupq_lane_s32(*v18.i8, 1))), v12))));
          v24 = vbslq_s8(v22, v13, vaddq_f32(v13, vmulq_f32(*v16, vsubq_f32(vaddq_f32(vdupq_laneq_s32(v19, 2), vaddq_f32(vdupq_lane_s32(*v19.i8, 0), vdupq_lane_s32(*v19.i8, 1))), v13))));
          v25 = vbslq_s8(v22, v14, vaddq_f32(v14, vmulq_f32(*v16, vsubq_f32(vaddq_f32(vdupq_laneq_s32(v20, 2), vaddq_f32(vdupq_lane_s32(*v20.i8, 0), vdupq_lane_s32(*v20.i8, 1))), v14))));
          v26 = vbslq_s8(v22, v15, vaddq_f32(v15, vmulq_f32(*v16, vsubq_f32(vaddq_f32(vdupq_laneq_s32(v21, 2), vaddq_f32(vdupq_lane_s32(*v21.i8, 0), vdupq_lane_s32(*v21.i8, 1))), v15))));
          v27 = (v5 + v10);
          v27[-2] = v23;
          v27[-1] = v24;
          *v27 = v25;
          v27[1] = v26;
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v28 = *(v6 + 16 * v9);
          v29 = *(a1 + 408);
          v30 = vmulq_f32(v28, *(v29 + 16));
          *(v5 + 16 * v9++) = vbslq_s8(*(v29 + 32), v28, vaddq_f32(v28, vmulq_f32(*v29, vsubq_f32(vaddq_f32(vdupq_laneq_s32(v30, 2), vaddq_f32(vdupq_lane_s32(*v30.i8, 0), vdupq_lane_s32(*v30.i8, 1))), v28))));
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

uint64_t HgcDesaturate::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcDesaturate::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcDesaturate::HgcDesaturate(HgcDesaturate *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E3C20;
  operator new();
}

void HgcDesaturate::~HgcDesaturate(HGNode *this)
{
  *this = &unk_2871E3C20;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FA0F61DDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcDesaturate::~HgcDesaturate(this);

  HGObject::operator delete(v1);
}

uint64_t HgcDesaturate::SetParameter(HgcDesaturate *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    v9 = *(this + 51);
    if (*(v9 + 16) != a3.n128_f32[0] || *(v9 + 20) != a4 || *(v9 + 24) != a5 || *(v9 + 28) != a6)
    {
      *(v9 + 16) = a3.n128_u32[0];
      *(v9 + 20) = a4;
      *(v9 + 24) = a5;
      *(v9 + 28) = a6;
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
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != 0.0)
    {
      v8 = vzip1q_s32(a3.n128_u32[0], a3.n128_u32[0]);
      v8.i32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 48) = a3;
LABEL_13:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcDesaturate::GetParameter(HgcDesaturate *this, int a2, float *a3)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    v3 = 28;
    v4 = 24;
    v5 = 20;
    v6 = 16;
  }

  else
  {
    v3 = 60;
    v4 = 56;
    v5 = 52;
    v6 = 48;
  }

  v7 = 0;
  v8 = *(this + 51);
  *a3 = *(v8 + v6);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v4);
  a3[3] = *(v8 + v3);
  return v7;
}

const char *HgcGamma::GetProgram(HgcGamma *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002cd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1 = pow(r0, half4(hg_Params[0]));\n    r0 = select(r1, r0, r0 < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=d445bf68:80be2210:5727272c:2d70df80\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002b9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1 = pow(r0, hg_Params[0]);\n    r0 = select(r1, r0, r0 < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=b121f8af:89f66aab:78391152:b6d2352f\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002e0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1 = pow(r0, hg_ProgramLocal0);\n    r0 = vec4(r0.x < 0.00000 ? r0.x : r1.x, r0.y < 0.00000 ? r0.y : r1.y, r0.z < 0.00000 ? r0.z : r1.z, r0.w < 0.00000 ? r0.w : r1.w);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=edf8dcf2:63809fb8:16f51e90:99a1d9d8\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA8B12C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA8B22C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA8B26C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA8B264);
}

uint64_t HgcGamma::BindTexture(HgcGamma *this, HGHandler *a2, int a3)
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

uint64_t HgcGamma::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcGamma::RenderTile(uint64_t a1, uint64_t a2)
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
          v16 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v15);
          v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v15);
          v18 = *(v14 + 32);
          v19 = *(v14 + 48);
          v20 = vmulq_f32(vrecpeq_f32(v16), v18);
          v21 = vmulq_f32(vrecpeq_f32(v17), v18);
          v22 = vandq_s8(v19, vmulq_f32(v20, vrecpsq_f32(v20, v16)));
          v23 = vandq_s8(v19, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
          v24 = *(v14 + 64);
          v25 = *(v14 + 80);
          v26 = vmulq_f32(v12, vorrq_s8(v22, v24));
          v27 = vmulq_f32(v13, vorrq_s8(v23, v24));
          v28 = vandq_s8(v25, v26);
          v29 = vandq_s8(v25, v27);
          v30 = *(v14 + 96);
          v31 = *(v14 + 112);
          v32 = vorrq_s8(v28, v30);
          v33 = vorrq_s8(v29, v30);
          v34 = *(v14 + 128);
          v35 = *(v14 + 144);
          v36 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v26, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v31, v26)));
          v37 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v31, v27)));
          v38 = *(v14 + 160);
          v39 = *(v14 + 176);
          v40 = vsubq_f32(v36, v35);
          v41 = vandq_s8(v30, vcgtq_f32(v32, v38));
          v42 = vandq_s8(v30, vcgtq_f32(v33, v38));
          v43 = vsubq_f32(v37, v35);
          v44 = vsubq_f32(vsubq_f32(v32, v30), vmulq_f32(vmulq_f32(v39, v41), v32));
          v45 = vsubq_f32(vsubq_f32(v33, v30), vmulq_f32(vmulq_f32(v39, v42), v33));
          v46 = *(v14 + 192);
          v47 = *(v14 + 208);
          v48 = *(v14 + 224);
          v49 = *(v14 + 240);
          v50 = vmulq_f32(*v14, vaddq_f32(vaddq_f32(v43, v42), vmulq_f32(v45, vaddq_f32(vaddq_f32(v48, vmulq_f32(v49, v45)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v46, vmulq_f32(v47, v45)))))));
          v51 = *(v14 + 256);
          v52 = *(v14 + 272);
          v53 = vmaxq_f32(vmulq_f32(*v14, vaddq_f32(vaddq_f32(v40, v41), vmulq_f32(v44, vaddq_f32(vaddq_f32(v48, vmulq_f32(v49, v44)), vmulq_f32(vmulq_f32(v44, v44), vaddq_f32(v46, vmulq_f32(v47, v44))))))), v51);
          v54 = vmaxq_f32(v50, v51);
          v55 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
          v56 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
          v57 = vsubq_f32(v55, vandq_s8(v30, vcgtq_f32(v55, v53)));
          v58 = vsubq_f32(v56, vandq_s8(v30, vcgtq_f32(v56, v54)));
          v59 = vsubq_f32(v53, v57);
          v60 = vsubq_f32(v54, v58);
          v61 = *(v14 + 288);
          v62 = *(v14 + 304);
          v63 = vmulq_f32(v60, vaddq_f32(v62, vmulq_f32(v60, vaddq_f32(v52, vmulq_f32(v61, v60)))));
          v64 = vaddq_f32(v30, vmulq_f32(v59, vaddq_f32(v62, vmulq_f32(v59, vaddq_f32(v52, vmulq_f32(v61, v59))))));
          v65 = vcvtq_s32_f32(v58);
          v66 = vaddq_f32(v30, v63);
          v67 = *(v14 + 320);
          v68 = *(v14 + 336);
          v69 = vbslq_s8(vcgtq_f32(v68, v26), v26, vmulq_f32(v64, vshlq_n_s32(vaddq_s32(v67, vcvtq_s32_f32(v57)), 0x17uLL)));
          v70 = vbslq_s8(vcgtq_f32(v68, v27), v27, vmulq_f32(v66, vshlq_n_s32(vaddq_s32(v67, v65), 0x17uLL)));
          v71 = *(v14 + 352);
          v72 = (v5 + v10);
          v72[-1] = vbslq_s8(v71, v69, vmulq_laneq_f32(v69, v69, 3));
          *v72 = vbslq_s8(v71, v70, vmulq_laneq_f32(v70, v70, 3));
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v73 = *(v6 + 16 * v9);
        v74 = *(a1 + 408);
        v75 = vmaxq_f32(vdupq_laneq_s32(v73, 3), *(v74 + 16));
        v76 = vmulq_f32(vrecpeq_f32(v75), *(v74 + 32));
        v77 = vmulq_f32(v73, vorrq_s8(vandq_s8(*(v74 + 48), vmulq_f32(v76, vrecpsq_f32(v76, v75))), *(v74 + 64)));
        v78 = *(v74 + 96);
        v79 = vorrq_s8(vandq_s8(*(v74 + 80), v77), v78);
        v80 = vandq_s8(v78, vcgtq_f32(v79, *(v74 + 160)));
        v81 = vsubq_f32(vsubq_f32(v79, v78), vmulq_f32(vmulq_f32(*(v74 + 176), v80), v79));
        v82 = vmaxq_f32(vmulq_f32(*v74, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v77, 0x17uLL)), vandq_s8(*(v74 + 128), vcgtq_f32(*(v74 + 112), v77))), *(v74 + 144)), v80), vmulq_f32(v81, vaddq_f32(vaddq_f32(*(v74 + 224), vmulq_f32(*(v74 + 240), v81)), vmulq_f32(vmulq_f32(v81, v81), vaddq_f32(*(v74 + 192), vmulq_f32(*(v74 + 208), v81))))))), *(v74 + 256));
        v83 = vcvtq_f32_s32(vcvtq_s32_f32(v82));
        v84 = vsubq_f32(v83, vandq_s8(v78, vcgtq_f32(v83, v82)));
        v85 = vsubq_f32(v82, v84);
        v86 = vbslq_s8(vcgtq_f32(*(v74 + 336), v77), v77, vmulq_f32(vaddq_f32(v78, vmulq_f32(v85, vaddq_f32(*(v74 + 304), vmulq_f32(v85, vaddq_f32(*(v74 + 272), vmulq_f32(*(v74 + 288), v85)))))), vshlq_n_s32(vaddq_s32(*(v74 + 320), vcvtq_s32_f32(v84)), 0x17uLL)));
        *(v5 + 16 * v9) = vbslq_s8(*(v74 + 352), v86, vmulq_laneq_f32(v86, v86, 3));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}