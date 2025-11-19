const char *HgcYUV444BiPlanar_601ToRGB::GetProgram(HgcYUV444BiPlanar_601ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const half4 c1 = half4(1.401999950, -0.7141363025, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(c1.w);\n    return output;\n}\n//MD5=0e00be48:1d4c1030:c845256d:4f625dda\n//SIG=00400000:00000003:00000003:00000003:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000415\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const float4 c1 = float4(1.401999950, -0.7141363025, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = c1.w;\n    return output;\n}\n//MD5=e920bf17:693c75e5:4f148dce:a2580259\n//SIG=00000000:00000003:00000003:00000000:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.401999950, -0.7141363025, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = c1.w;\n}\n//MD5=b28b84a9:65d97aa9:3bf19568:b311251d\n//SIG=00000000:00000003:00000003:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDEC04C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDEC080(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDEC078);
}

uint64_t HgcYUV444BiPlanar_601ToRGB::BindTexture(HgcYUV444BiPlanar_601ToRGB *this, HGHandler *a2, int a3)
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

uint64_t HgcYUV444BiPlanar_601ToRGB::Bind(HgcYUV444BiPlanar_601ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV444BiPlanar_601ToRGB::RenderTile(HgcYUV444BiPlanar_601ToRGB *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 12);
    v5 = *(a2 + 10);
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 22);
    v9 = *(a2 + 26);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v45 = 0;
        v46 = 16 * v9;
        v47 = 16 * v8;
        v48 = 16 * v7;
        v49 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v50 = 0;
          do
          {
            v51 = *(this + 51);
            v52 = vaddq_f32(*(v51 + 16), vmulq_f32(*v51, vbslq_s8(*(v51 + 32), v5[v50 / 0x10], vextq_s8(v4[v50 / 0x10], v4[v50 / 0x10], 0xCuLL))));
            v53 = vaddq_f32(vmulq_laneq_f32(*(v51 + 64), v52, 2), vaddq_f32(vdupq_lane_s32(*v52.f32, 0), vmulq_lane_f32(*(v51 + 48), *v52.f32, 1)));
            v53.i32[3] = 1.0;
            v6[v50 / 0x10] = v53;
            v50 += 16;
          }

          while (v49 != v50);
          ++v45;
          v4 = (v4 + v46);
          v5 = (v5 + v47);
          v6 = (v6 + v48);
        }

        while (v45 != v2);
      }
    }

    else
    {
      v10 = 0;
      v11 = 16 * v8;
      v12 = 16 * v7;
      v13 = 16 * v9;
      v14 = v4 + 4;
      v15 = v5 + 4;
      v16 = v6 + 4;
      do
      {
        v17 = 0;
        v18 = 0;
        v19 = v16;
        v20 = v15;
        v21 = v14;
        do
        {
          v22 = *(this + 51);
          v23 = *(v22 + 32);
          v24 = *(v22 + 48);
          v25 = *(v22 + 16);
          v26 = v21;
          v27 = vaddq_f32(v25, vmulq_f32(*v22, vbslq_s8(v23, v5[v17], vextq_s8(v4[v17], v4[v17], 0xCuLL))));
          v28 = vaddq_f32(v25, vmulq_f32(*v22, vbslq_s8(v23, v5[v17 + 1], vextq_s8(v4[v17 + 1], v4[v17 + 1], 0xCuLL))));
          v29 = vaddq_f32(v25, vmulq_f32(*v22, vbslq_s8(v23, v5[v17 + 2], vextq_s8(v4[v17 + 2], v4[v17 + 2], 0xCuLL))));
          v30 = vaddq_f32(v25, vmulq_f32(*v22, vbslq_s8(v23, v5[v17 + 3], vextq_s8(v4[v17 + 3], v4[v17 + 3], 0xCuLL))));
          v31 = *(v22 + 64);
          v32 = vaddq_f32(vmulq_laneq_f32(v31, v27, 2), vaddq_f32(vdupq_lane_s32(*v27.f32, 0), vmulq_lane_f32(v24, *v27.f32, 1)));
          v33 = vaddq_f32(vmulq_laneq_f32(v31, v28, 2), vaddq_f32(vdupq_lane_s32(*v28.f32, 0), vmulq_lane_f32(v24, *v28.f32, 1)));
          v34 = vaddq_f32(vmulq_laneq_f32(v31, v29, 2), vaddq_f32(vdupq_lane_s32(*v29.f32, 0), vmulq_lane_f32(v24, *v29.f32, 1)));
          v32.i32[3] = 1.0;
          v33.i32[3] = 1.0;
          v35 = vaddq_f32(vmulq_laneq_f32(v31, v30, 2), vaddq_f32(vdupq_lane_s32(*v30.f32, 0), vmulq_lane_f32(v24, *v30.f32, 1)));
          v34.i32[3] = 1.0;
          v35.i32[3] = 1.0;
          v36 = v20;
          v37 = v19;
          v38 = &v6[v17];
          v18 += 4;
          v17 += 4;
          *v38 = v32;
          v38[1] = v33;
          v38[2] = v34;
          v38[3] = v35;
          v21 += 4;
          v20 += 4;
          v19 = v37 + 4;
        }

        while (v18 < (v3 - 3));
        if (v3 > v18)
        {
          do
          {
            v39 = *v26++;
            v40 = vextq_s8(v39, v39, 0xCuLL);
            v41 = *v36++;
            v42 = *(this + 51);
            v43 = vaddq_f32(*(v42 + 16), vmulq_f32(*v42, vbslq_s8(*(v42 + 32), v41, v40)));
            v44 = vaddq_f32(vmulq_laneq_f32(*(v42 + 64), v43, 2), vaddq_f32(vdupq_lane_s32(*v43.f32, 0), vmulq_lane_f32(*(v42 + 48), *v43.f32, 1)));
            v44.i32[3] = 1.0;
            *v37++ = v44;
            ++v18;
          }

          while (v18 < v3);
        }

        ++v10;
        v5 = (v5 + v11);
        v6 = (v6 + v12);
        v4 = (v4 + v13);
        v14 = (v14 + v13);
        v15 = (v15 + v11);
        v16 = (v16 + v12);
      }

      while (v10 != v2);
    }
  }

  return 0;
}

uint64_t HgcYUV444BiPlanar_601ToRGB::GetDOD(HgcYUV444BiPlanar_601ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcYUV444BiPlanar_601ToRGB::GetROI(HgcYUV444BiPlanar_601ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcYUV444BiPlanar_601ToRGB::HgcYUV444BiPlanar_601ToRGB(HgcYUV444BiPlanar_601ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287231D00;
  operator new();
}

void HgcYUV444BiPlanar_601ToRGB::~HgcYUV444BiPlanar_601ToRGB(HgcYUV444BiPlanar_601ToRGB *this)
{
  *this = &unk_287231D00;
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
  *this = &unk_287231D00;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV444BiPlanar_601ToRGB::~HgcYUV444BiPlanar_601ToRGB(HGNode *this)
{
  *this = &unk_287231D00;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV444BiPlanar_601ToRGB::SetParameter(HgcYUV444BiPlanar_601ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV444BiPlanar_601ToRGB::GetParameter(HgcYUV444BiPlanar_601ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV420BiPlanar_709ToRGB::GetProgram(HgcYUV420BiPlanar_709ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const half4 c1 = half4(1.574800014, -0.4681242704, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(c1.w);\n    return output;\n}\n//MD5=1048caae:387a44ef:fc83ffd8:52b73979\n//SIG=00400000:00000001:00000001:00000003:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000415\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const float4 c1 = float4(1.574800014, -0.4681242704, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = c1.w;\n    return output;\n}\n//MD5=2408e641:b05fbd09:a6279793:e6b41496\n//SIG=00000000:00000001:00000001:00000000:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.574800014, -0.4681242704, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = c1.w;\n}\n//MD5=50acfb20:dc59fe91:195acf38:f03e2245\n//SIG=00000000:00000001:00000001:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDECD4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDECD88(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDECD80);
}

uint64_t HgcYUV420BiPlanar_709ToRGB::BindTexture(HgcYUV420BiPlanar_709ToRGB *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 48))(a2, 0, 0);
      HGHandler::TexCoord(a2, 1, 0, 0, 0);
      if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
      {
        (*(*a2 + 168))(a2);
      }

      (*(*a2 + 104))(a2, 0.5, 0.5, 1.0);
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
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
  }

  return result;
}

uint64_t HgcYUV420BiPlanar_709ToRGB::Bind(HgcYUV420BiPlanar_709ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV420BiPlanar_709ToRGB::RenderTile(HgcYUV420BiPlanar_709ToRGB *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = vmulq_f32(v5, xmmword_260346A40);
    v8 = a2[2];
    v9 = a2[10];
    v10 = 16 * a2[11].i32[0];
    v11 = 16 * a2[3].i32[0];
    v12 = 0uLL;
    __asm { FMOV            V5.4S, #4.0 }

    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    while (1)
    {
      v19 = vaddq_f32(v7, vmulq_f32(v12, xmmword_260344920));
      if (v6 >= 4)
      {
        break;
      }

      v20 = 0;
      v21 = 0uLL;
      __asm { FMOV            V18.4S, #1.0 }

      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v12 = vaddq_f32(v12, _Q18);
      ++v4;
      *&v9 += v10;
      *&v8 += v11;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v20 = 0;
    v21 = 0uLL;
    v22 = 32;
    for (i = v6; i > 3; i -= 4)
    {
      v24 = vaddq_f32(v19, vmulq_f32(v21, xmmword_260344E30));
      v25 = vaddq_f32(v24, xmmword_260344E30);
      v26 = vaddq_f32(v25, xmmword_260344E30);
      v27 = vaddq_f32(v26, xmmword_260344E30);
      v28 = a2[12];
      v29 = &a2[13];
      v30 = vaddq_f32(vsubq_f32(v24, v5), v18);
      v31 = vcvtq_s32_f32(v30);
      v32 = vaddq_f32(vsubq_f32(v25, v5), v18);
      v33 = vcvtq_s32_f32(v32);
      *v30.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
      *v31.i8 = vld1_dup_f32(v29);
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v30.f32 = vmla_s32(vzip1_s32(*v30.f32, *v32.f32), vzip2_s32(*v30.f32, *v32.f32), *v31.i8);
      LODWORD(v29) = v30.i32[1];
      v34 = vaddq_f32(vsubq_f32(v26, v5), v18);
      v35 = vcvtq_s32_f32(v34);
      v36 = v30.i32[0];
      v37 = vaddq_f32(vsubq_f32(v27, v5), v18);
      v38 = vcvtq_s32_f32(v37);
      v39 = *(*&v28 + 16 * v36);
      *v34.f32 = vadd_s32(*v35.i8, *&vcgtq_f32(vcvtq_f32_s32(v35), v34));
      *v37.f32 = vadd_s32(*v38.i8, *&vcgtq_f32(vcvtq_f32_s32(v38), v37));
      *v35.i8 = vzip2_s32(*v34.f32, *v37.f32);
      *v37.f32 = vzip1_s32(*v34.f32, *v37.f32);
      v40 = *(*&v28 + 16 * v29);
      *v37.f32 = vmla_s32(*v37.f32, *v35.i8, *v31.i8);
      v41 = *(*&v28 + 16 * v37.i32[1]);
      v42 = vextq_s8(*(*&v28 + 16 * v37.i32[0]), *(*&v28 + 16 * v37.i32[0]), 0xCuLL);
      v43 = *(this + 51);
      v44 = *(v43 + 32);
      v45 = *(v43 + 48);
      v46 = *(v43 + 16);
      v47 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v9 + v22 - 32), vextq_s8(v39, v39, 0xCuLL))));
      v48 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v9 + v22 - 16), vextq_s8(v40, v40, 0xCuLL))));
      v49 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v9 + v22), v42)));
      v50 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v9 + v22 + 16), vextq_s8(v41, v41, 0xCuLL))));
      v51 = *(v43 + 64);
      v52 = vaddq_f32(vmulq_laneq_f32(v51, v47, 2), vaddq_f32(vdupq_lane_s32(*v47.f32, 0), vmulq_lane_f32(v45, *v47.f32, 1)));
      v53 = vaddq_f32(vmulq_laneq_f32(v51, v48, 2), vaddq_f32(vdupq_lane_s32(*v48.f32, 0), vmulq_lane_f32(v45, *v48.f32, 1)));
      v54 = vaddq_f32(vmulq_laneq_f32(v51, v49, 2), vaddq_f32(vdupq_lane_s32(*v49.f32, 0), vmulq_lane_f32(v45, *v49.f32, 1)));
      v55 = vaddq_f32(vmulq_laneq_f32(v51, v50, 2), vaddq_f32(vdupq_lane_s32(*v50.f32, 0), vmulq_lane_f32(v45, *v50.f32, 1)));
      v52.i32[3] = 1.0;
      v53.i32[3] = 1.0;
      v54.i32[3] = 1.0;
      v55.i32[3] = 1.0;
      v21 = vaddq_f32(v21, _Q5);
      v56 = (*&v8 + v22);
      v56[-2] = v52;
      v56[-1] = v53;
      *v56 = v54;
      v56[1] = v55;
      v20 += 4;
      v22 += 64;
    }

    __asm { FMOV            V18.4S, #1.0 }

    if (v20 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v58 = vaddq_f32(vsubq_f32(vaddq_f32(v19, vmulq_f32(v21, xmmword_260344E30)), v5), v18);
      v59 = vcvtq_s32_f32(v58);
      v58.i64[0] = vaddq_s32(v59, vcgtq_f32(vcvtq_f32_s32(v59), v58)).u64[0];
      v60 = *(this + 51);
      v61 = vaddq_f32(*(v60 + 16), vmulq_f32(*v60, vbslq_s8(*(v60 + 32), *(*&v9 + 16 * v20), vextq_s8(*(*&a2[12] + 16 * (v58.i32[0] + v58.i32[1] * a2[13].i32[0])), *(*&a2[12] + 16 * (v58.i32[0] + v58.i32[1] * a2[13].i32[0])), 0xCuLL))));
      v62 = vaddq_f32(vmulq_laneq_f32(*(v60 + 64), v61, 2), vaddq_f32(vdupq_lane_s32(*v61.f32, 0), vmulq_lane_f32(*(v60 + 48), *v61.f32, 1)));
      v62.i32[3] = 1.0;
      *(*&v8 + 16 * v20) = v62;
      v21 = vaddq_f32(v21, _Q18);
      ++v20;
    }

    while (v20 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcYUV420BiPlanar_709ToRGB::GetDOD(HgcYUV420BiPlanar_709ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = *&a4.var0;
      v6 = *&a4.var2;
      v7 = HGRectMake4i(0, 0, a3, 1u);
      v8 = HGRectGrow(v5, v6, v7);
      v9 = HGRectFloat(v8);
      v13 = HGRectScale(v9, v10, v11, v12, 2.0);
      v18 = HGRectIntegral(v14, v13, v15, v16, v17);
      return HGRectUnion(0, 0, v18, v19);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t HgcYUV420BiPlanar_709ToRGB::GetROI(HgcYUV420BiPlanar_709ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = HGRectFloat(a4.var0);
      v9 = HGRectScale(v5, v6, v7, v8, 0.5);
      v14 = HGRectIntegral(v10, v9, v11, v12, v13);
      v16 = v15;
      v17 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 0, 0);
      v18 = HGRectGrow(v14, v16, v17);
      return HGRectUnion(0, 0, v18, v19);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void HgcYUV420BiPlanar_709ToRGB::HgcYUV420BiPlanar_709ToRGB(HgcYUV420BiPlanar_709ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287231F68;
  operator new();
}

void HgcYUV420BiPlanar_709ToRGB::~HgcYUV420BiPlanar_709ToRGB(HgcYUV420BiPlanar_709ToRGB *this)
{
  *this = &unk_287231F68;
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
  *this = &unk_287231F68;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420BiPlanar_709ToRGB::~HgcYUV420BiPlanar_709ToRGB(HGNode *this)
{
  *this = &unk_287231F68;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV420BiPlanar_709ToRGB::SetParameter(HgcYUV420BiPlanar_709ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV420BiPlanar_709ToRGB::GetParameter(HgcYUV420BiPlanar_709ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcMultiTexBlend_8::GetProgram(HgcMultiTexBlend_8 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000816\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< half > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]], \n    texture2d< half > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]], \n    texture2d< half > hg_Texture7 [[ texture(7) ]], \n    sampler hg_Sampler7 [[ sampler(7) ]])\n{\n    half4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = (half4) hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r6 = (half4) hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    r7 = (half4) hg_Texture7.sample(hg_Sampler7, frag._texCoord7.xy);\n    r0 = half4(hg_Params[0].xxxx)*r0;\n    r0 = half4(hg_Params[0].yyyy)*r1 + r0;\n    r0 = half4(hg_Params[0].zzzz)*r2 + r0;\n    r0 = half4(hg_Params[0].wwww)*r3 + r0;\n    r0 = half4(hg_Params[1].xxxx)*r4 + r0;\n    r0 = half4(hg_Params[1].yyyy)*r5 + r0;\n    r0 = half4(hg_Params[1].zzzz)*r6 + r0;\n    output.color0 = hg_Params[1].wwww*float4(r7) + float4(r0);\n    return output;\n}\n//MD5=ba77e172:499d5e50:ba48f7a9:fb1ede91\n//SIG=00400000:000000ff:000000ff:000000ff:0000:0002:0008:0000:0000:0000:01fe:0000:0008:08:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000079e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< float > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]], \n    texture2d< float > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]], \n    texture2d< float > hg_Texture7 [[ texture(7) ]], \n    sampler hg_Sampler7 [[ sampler(7) ]])\n{\n    float4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r6 = hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    r7 = hg_Texture7.sample(hg_Sampler7, frag._texCoord7.xy);\n    r0 = hg_Params[0].xxxx*r0;\n    r0 = hg_Params[0].yyyy*r1 + r0;\n    r0 = hg_Params[0].zzzz*r2 + r0;\n    r0 = hg_Params[0].wwww*r3 + r0;\n    r0 = hg_Params[1].xxxx*r4 + r0;\n    r0 = hg_Params[1].yyyy*r5 + r0;\n    r0 = hg_Params[1].zzzz*r6 + r0;\n    output.color0 = hg_Params[1].wwww*r7 + r0;\n    return output;\n}\n//MD5=e2d0b895:1047a73b:cf113545:5f20f4cb\n//SIG=00000000:000000ff:000000ff:00000000:0000:0002:0008:0000:0000:0000:01fe:0000:0008:08:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006b4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture4;\nuniform defaultp sampler2D hg_Texture5;\nuniform defaultp sampler2D hg_Texture6;\nuniform defaultp sampler2D hg_Texture7;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvarying highp vec4 hg_TexCoord6;\nvarying highp vec4 hg_TexCoord7;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3, r4, r5, r6, r7;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture4, hg_TexCoord4.xy);\n    r5 = texture2D(hg_Texture5, hg_TexCoord5.xy);\n    r6 = texture2D(hg_Texture6, hg_TexCoord6.xy);\n    r7 = texture2D(hg_Texture7, hg_TexCoord7.xy);\n    r0 = hg_ProgramLocal0.xxxx*r0;\n    r0 = hg_ProgramLocal0.yyyy*r1 + r0;\n    r0 = hg_ProgramLocal0.zzzz*r2 + r0;\n    r0 = hg_ProgramLocal0.wwww*r3 + r0;\n    r0 = hg_ProgramLocal1.xxxx*r4 + r0;\n    r0 = hg_ProgramLocal1.yyyy*r5 + r0;\n    r0 = hg_ProgramLocal1.zzzz*r6 + r0;\n    gl_FragColor = hg_ProgramLocal1.wwww*r7 + r0;\n}\n//MD5=037c2ec9:d4a3ecf1:f512314e:ade30c08\n//SIG=00000000:000000ff:000000ff:00000000:0000:0002:0008:0000:0000:0000:0000:0000:0008:08:0:1:0\n";
  }
}

void sub_25FDEDF30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDEDF7C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDEDF74);
}

uint64_t HgcMultiTexBlend_8::BindTexture(HgcMultiTexBlend_8 *this, HGHandler *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 > 3)
  {
    if (a3 > 5)
    {
      if (a3 == 6)
      {
        (*(*a2 + 72))(a2, 6, 0);
        (*(*a2 + 48))(a2, 0, 0);
        v5 = a2;
        v6 = 6;
      }

      else
      {
        if (a3 != 7)
        {
          return result;
        }

        (*(*a2 + 72))(a2, 7, 0);
        (*(*a2 + 48))(a2, 0, 0);
        v5 = a2;
        v6 = 7;
      }
    }

    else if (a3 == 4)
    {
      (*(*a2 + 72))(a2, 4, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 4;
    }

    else
    {
      (*(*a2 + 72))(a2, 5, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 5;
    }
  }

  else if (a3 > 1)
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

uint64_t HgcMultiTexBlend_8::Bind(HgcMultiTexBlend_8 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMultiTexBlend_8::RenderTile(HgcMultiTexBlend_8 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = *(a2 + 2) - *a2;
    v4 = *(a2 + 10);
    v5 = *(a2 + 12);
    v6 = *(a2 + 14);
    v7 = *(a2 + 16);
    v8 = *(a2 + 18);
    v9 = *(a2 + 20);
    v10 = *(a2 + 22);
    v11 = *(a2 + 24);
    v12 = *(a2 + 2);
    v13 = *(a2 + 6);
    v14 = *(a2 + 50);
    v15 = *(a2 + 46);
    v16 = *(a2 + 42);
    v17 = *(a2 + 38);
    v18 = *(a2 + 34);
    v19 = *(a2 + 30);
    v20 = *(a2 + 26);
    v21 = *(a2 + 22);
    if (v3 < 2)
    {
      if (v3 == 1)
      {
        v41 = 16 * v21;
        v42 = 16 * v19;
        v43 = 16 * v18;
        v44 = 16 * v17;
        v45 = 16 * v16;
        v46 = 16 * v15;
        v47 = 16 * v14;
        v48 = 16 * v13;
        do
        {
          v49 = *(this + 51);
          v50 = v49[1];
          v51 = vaddq_f32(vmulq_laneq_f32(*v10, v50, 2), vaddq_f32(vmulq_lane_f32(*v9, *v50.f32, 1), vaddq_f32(vmulq_n_f32(*v8, v50.f32[0]), vaddq_f32(vmulq_laneq_f32(*v7, *v49, 3), vaddq_f32(vmulq_laneq_f32(*v6, *v49, 2), vaddq_f32(vmulq_n_f32(*v4, COERCE_FLOAT(*v49)), vmulq_lane_f32(*v5, *v49->f32, 1)))))));
          v4 = (v4 + v41);
          v5 += v20;
          v6 = (v6 + v42);
          v7 = (v7 + v43);
          v8 = (v8 + v44);
          v9 = (v9 + v45);
          *v12 = vaddq_f32(vmulq_laneq_f32(*v11, v50, 3), v51);
          v10 = (v10 + v46);
          v11 = (v11 + v47);
          v12 = (v12 + v48);
          --v2;
        }

        while (v2);
      }
    }

    else
    {
      v22 = 0;
      v23 = 16 * v19;
      v24 = 16 * v18;
      v25 = 16 * v17;
      v26 = 16 * v16;
      v27 = 16 * v15;
      v28 = 16 * v14;
      v29 = 16 * v13;
      v30 = 16 * v21;
      v31 = 16 * v20;
      do
      {
        v32 = 0;
        v33 = 0;
        for (i = v3; i > 1; i -= 2)
        {
          v35 = *(this + 51);
          v36 = v35[1];
          v37 = vaddq_f32(vmulq_laneq_f32(v11[v32 + 1], v36, 3), vaddq_f32(vmulq_laneq_f32(v10[v32 + 1], v36, 2), vaddq_f32(vmulq_lane_f32(v9[v32 + 1], *v36.f32, 1), vaddq_f32(vmulq_n_f32(v8[v32 + 1], v36.f32[0]), vaddq_f32(vmulq_laneq_f32(v7[v32 + 1], *v35, 3), vaddq_f32(vmulq_laneq_f32(v6[v32 + 1], *v35, 2), vaddq_f32(vmulq_n_f32(v4[v32 + 1], COERCE_FLOAT(*v35)), vmulq_lane_f32(v5[v32 + 1], *v35->f32, 1))))))));
          v38 = &v12[v32];
          *v38 = vaddq_f32(vmulq_laneq_f32(v11[v32], v36, 3), vaddq_f32(vmulq_laneq_f32(v10[v32], v36, 2), vaddq_f32(vmulq_lane_f32(v9[v32], *v36.f32, 1), vaddq_f32(vmulq_n_f32(v8[v32], v36.f32[0]), vaddq_f32(vmulq_laneq_f32(v7[v32], *v35, 3), vaddq_f32(vmulq_laneq_f32(v6[v32], *v35, 2), vaddq_f32(vmulq_n_f32(v4[v32], COERCE_FLOAT(*v35)), vmulq_lane_f32(v5[v32], *v35->f32, 1))))))));
          v38[1] = v37;
          v33 += 2;
          v32 += 2;
        }

        if (v3 > v33)
        {
          v39 = *(this + 51);
          v40 = v39[1];
          v12[v32] = vaddq_f32(vmulq_laneq_f32(v11[v32], v40, 3), vaddq_f32(vmulq_laneq_f32(v10[v32], v40, 2), vaddq_f32(vmulq_lane_f32(v9[v32], *v40.f32, 1), vaddq_f32(vmulq_n_f32(v8[v32], v40.f32[0]), vaddq_f32(vmulq_laneq_f32(v7[v32], *v39, 3), vaddq_f32(vmulq_laneq_f32(v6[v32], *v39, 2), vaddq_f32(vmulq_n_f32(v4[v32], COERCE_FLOAT(*v39)), vmulq_lane_f32(v5[v32], *v39->f32, 1))))))));
        }

        ++v22;
        v6 = (v6 + v23);
        v7 = (v7 + v24);
        v8 = (v8 + v25);
        v9 = (v9 + v26);
        v10 = (v10 + v27);
        v11 = (v11 + v28);
        v12 = (v12 + v29);
        v4 = (v4 + v30);
        v5 = (v5 + v31);
      }

      while (v22 != v2);
    }
  }

  return 0;
}

uint64_t HgcMultiTexBlend_8::GetDOD(HgcMultiTexBlend_8 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 8)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcMultiTexBlend_8::GetROI(HgcMultiTexBlend_8 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 8)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcMultiTexBlend_8::HgcMultiTexBlend_8(HgcMultiTexBlend_8 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872321D0;
  operator new();
}

void HgcMultiTexBlend_8::~HgcMultiTexBlend_8(HgcMultiTexBlend_8 *this)
{
  *this = &unk_2872321D0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcMultiTexBlend_8::~HgcMultiTexBlend_8(HGNode *this)
{
  *this = &unk_2872321D0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcMultiTexBlend_8::SetParameter(HgcMultiTexBlend_8 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMultiTexBlend_8::GetParameter(HgcMultiTexBlend_8 *this, unsigned int a2, float *a3)
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

const char *HgcMultiTexBlend_2::GetProgram(HgcMultiTexBlend_2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000318\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = half4(hg_Params[0].xxxx)*r0;\n    output.color0 = hg_Params[0].yyyy*float4(r1) + float4(r0);\n    return output;\n}\n//MD5=6a73d4da:17adb56f:e7bd03ff:96b24d50\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002f4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = hg_Params[0].xxxx*r0;\n    output.color0 = hg_Params[0].yyyy*r1 + r0;\n    return output;\n}\n//MD5=4e913d9e:9986742c:dfcf17ed:4ab82079\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002a2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = hg_ProgramLocal0.xxxx*r0;\n    gl_FragColor = hg_ProgramLocal0.yyyy*r1 + r0;\n}\n//MD5=e2a4ad3f:8093be2a:11c9162f:b54ec260\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDEEDD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDEEE08(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDEEE00);
}

uint64_t HgcMultiTexBlend_2::BindTexture(HgcMultiTexBlend_2 *this, HGHandler *a2, int a3)
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

uint64_t HgcMultiTexBlend_2::Bind(HgcMultiTexBlend_2 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMultiTexBlend_2::RenderTile(HgcMultiTexBlend_2 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 12);
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 26);
    v9 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v33 = 0;
        v34 = 16 * v9;
        v35 = 16 * v8;
        v36 = 16 * v7;
        v37 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v38 = 0;
          do
          {
            v6[v38 / 0x10] = vaddq_f32(vmulq_n_f32(v4[v38 / 0x10], COERCE_FLOAT(**(this + 51))), vmulq_lane_f32(v5[v38 / 0x10], **(this + 51), 1));
            v38 += 16;
          }

          while (v37 != v38);
          ++v33;
          v4 = (v4 + v34);
          v5 = (v5 + v35);
          v6 = (v6 + v36);
        }

        while (v33 != v2);
      }
    }

    else
    {
      v10 = 0;
      v11 = 16 * v8;
      v12 = 16 * v7;
      v13 = 16 * v9;
      v14 = v4 + 4;
      v15 = v5 + 4;
      v16 = v6 + 4;
      do
      {
        v17 = 0;
        v18 = 0;
        v19 = v16;
        v20 = v15;
        v21 = v14;
        do
        {
          v22 = v21;
          v23 = v20;
          v24 = v19;
          v25 = **(this + 51);
          v26 = vaddq_f32(vmulq_n_f32(v4[v17 + 1], *&v25), vmulq_lane_f32(v5[v17 + 1], *&v25, 1));
          v27 = vaddq_f32(vmulq_n_f32(v4[v17 + 2], *&v25), vmulq_lane_f32(v5[v17 + 2], *&v25, 1));
          v28 = vaddq_f32(vmulq_n_f32(v4[v17 + 3], *&v25), vmulq_lane_f32(v5[v17 + 3], *&v25, 1));
          v29 = &v6[v17];
          *v29 = vaddq_f32(vmulq_n_f32(v4[v17], *&v25), vmulq_lane_f32(v5[v17], *&v25, 1));
          v29[1] = v26;
          v18 += 4;
          v17 += 4;
          v29[2] = v27;
          v29[3] = v28;
          v21 += 4;
          v20 += 4;
          v19 = v24 + 4;
        }

        while (v18 < (v3 - 3));
        if (v3 > v18)
        {
          do
          {
            v30 = *v22++;
            v31 = v30;
            v32 = *v23++;
            *v24++ = vaddq_f32(vmulq_n_f32(v31, COERCE_FLOAT(**(this + 51))), vmulq_lane_f32(v32, **(this + 51), 1));
            ++v18;
          }

          while (v18 < v3);
        }

        ++v10;
        v5 = (v5 + v11);
        v6 = (v6 + v12);
        v4 = (v4 + v13);
        v14 = (v14 + v13);
        v15 = (v15 + v11);
        v16 = (v16 + v12);
      }

      while (v10 != v2);
    }
  }

  return 0;
}

uint64_t HgcMultiTexBlend_2::GetDOD(HgcMultiTexBlend_2 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcMultiTexBlend_2::GetROI(HgcMultiTexBlend_2 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcMultiTexBlend_2::HgcMultiTexBlend_2(HgcMultiTexBlend_2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287232438;
  operator new();
}

void HgcMultiTexBlend_2::~HgcMultiTexBlend_2(HgcMultiTexBlend_2 *this)
{
  *this = &unk_287232438;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcMultiTexBlend_2::~HgcMultiTexBlend_2(HGNode *this)
{
  *this = &unk_287232438;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcMultiTexBlend_2::SetParameter(HgcMultiTexBlend_2 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcMultiTexBlend_2::GetParameter(HgcMultiTexBlend_2 *this, int a2, float *a3)
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

const char *HgcMultiTexBlend_5::GetProgram(HgcMultiTexBlend_5 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000592\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]])\n{\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r0 = half4(hg_Params[0].xxxx)*r0;\n    r0 = half4(hg_Params[0].yyyy)*r1 + r0;\n    r0 = half4(hg_Params[0].zzzz)*r2 + r0;\n    r0 = half4(hg_Params[0].wwww)*r3 + r0;\n    output.color0 = hg_Params[1]*float4(r4) + float4(r0);\n    return output;\n}\n//MD5=2ebe55f7:cd345d72:633071a4:844930c7\n//SIG=00400000:0000001f:0000001f:0000001f:0000:0002:0005:0000:0000:0000:003e:0000:0005:05:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000544\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]])\n{\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r0 = hg_Params[0].xxxx*r0;\n    r0 = hg_Params[0].yyyy*r1 + r0;\n    r0 = hg_Params[0].zzzz*r2 + r0;\n    r0 = hg_Params[0].wwww*r3 + r0;\n    output.color0 = hg_Params[1]*r4 + r0;\n    return output;\n}\n//MD5=4d49c78f:1cb5eac2:32689adf:f7a27f9e\n//SIG=00000000:0000001f:0000001f:00000000:0000:0002:0005:0000:0000:0000:003e:0000:0005:05:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004ba\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture4;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture4, hg_TexCoord4.xy);\n    r0 = hg_ProgramLocal0.xxxx*r0;\n    r0 = hg_ProgramLocal0.yyyy*r1 + r0;\n    r0 = hg_ProgramLocal0.zzzz*r2 + r0;\n    r0 = hg_ProgramLocal0.wwww*r3 + r0;\n    gl_FragColor = hg_ProgramLocal1*r4 + r0;\n}\n//MD5=ae575d71:1ffff228:b9e973a0:e48fa370\n//SIG=00000000:0000001f:0000001f:00000000:0000:0002:0005:0000:0000:0000:0000:0000:0005:05:0:1:0\n";
  }
}

void sub_25FDEF9C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDEFA08(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDEFA00);
}

uint64_t HgcMultiTexBlend_5::BindTexture(HgcMultiTexBlend_5 *this, HGHandler *a2, int a3)
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

uint64_t HgcMultiTexBlend_5::Bind(HgcMultiTexBlend_5 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMultiTexBlend_5::RenderTile(HgcMultiTexBlend_5 *this, HGTile *a2)
{
  v70 = *(a2 + 3) - *(a2 + 1);
  if (v70 >= 1)
  {
    v2 = (*(a2 + 2) - *a2);
    v3 = *(a2 + 10);
    v4 = *(a2 + 12);
    v5 = *(a2 + 14);
    v6 = *(a2 + 16);
    v7 = *(a2 + 18);
    v8 = *(a2 + 2);
    v9 = *(a2 + 6);
    v10 = *(a2 + 38);
    v11 = *(a2 + 34);
    v12 = *(a2 + 30);
    v13 = *(a2 + 26);
    v14 = *(a2 + 22);
    if (v2 < 3)
    {
      if (v2 >= 1)
      {
        v53 = 0;
        v54 = 16 * v14;
        v55 = 16 * v13;
        v56 = 16 * v12;
        v57 = 16 * v11;
        v58 = 16 * v10;
        v59 = 16 * v9;
        v60 = 16 * v2;
        do
        {
          v61 = 0;
          do
          {
            v62 = *(this + 51);
            v8[v61 / 0x10] = vaddq_f32(vmulq_f32(v7[v61 / 0x10], v62[1]), vaddq_f32(vmulq_laneq_f32(v6[v61 / 0x10], *v62, 3), vaddq_f32(vmulq_laneq_f32(v5[v61 / 0x10], *v62, 2), vaddq_f32(vmulq_n_f32(v3[v61 / 0x10], COERCE_FLOAT(*v62)), vmulq_lane_f32(v4[v61 / 0x10], *v62->f32, 1)))));
            v61 += 16;
          }

          while (v60 != v61);
          ++v53;
          v3 = (v3 + v54);
          v4 = (v4 + v55);
          v5 = (v5 + v56);
          v6 = (v6 + v57);
          v7 = (v7 + v58);
          v8 = (v8 + v59);
        }

        while (v53 != v70);
      }
    }

    else
    {
      v15 = 0;
      v69 = v13;
      v68 = 16 * v12;
      v67 = 16 * v11;
      v16 = v3 + 3;
      v66 = 16 * v10;
      v17 = v4 + 3;
      v65 = 16 * v9;
      v18 = v5 + 3;
      v64 = v14;
      v19 = v6 + 3;
      v20 = v7 + 3;
      v21 = v8 + 3;
      do
      {
        v73 = v15;
        v22 = 0;
        v23 = 0;
        v24 = 3;
        v25 = v21;
        v26 = v20;
        v27 = v19;
        v28 = v18;
        v71 = v17;
        v72 = v16;
        do
        {
          v29 = v16;
          v30 = v17;
          v31 = v28;
          v32 = v27;
          v33 = v26;
          v34 = v25;
          v35 = v24;
          v36 = *(this + 51);
          v37 = v36[1];
          v38 = vaddq_f32(vmulq_laneq_f32(v6[v22 + 2], *v36, 3), vaddq_f32(vmulq_laneq_f32(v5[v22 + 2], *v36, 2), vaddq_f32(vmulq_n_f32(v3[v22 + 2], COERCE_FLOAT(*v36)), vmulq_lane_f32(v4[v22 + 2], *v36->f32, 1))));
          v39 = vaddq_f32(vmulq_f32(v7[v22], v37), vaddq_f32(vmulq_laneq_f32(v6[v22], *v36, 3), vaddq_f32(vmulq_laneq_f32(v5[v22], *v36, 2), vaddq_f32(vmulq_n_f32(v3[v22], COERCE_FLOAT(*v36)), vmulq_lane_f32(v4[v22], *v36->f32, 1)))));
          v40 = vaddq_f32(vmulq_f32(v7[v22 + 1], v37), vaddq_f32(vmulq_laneq_f32(v6[v22 + 1], *v36, 3), vaddq_f32(vmulq_laneq_f32(v5[v22 + 1], *v36, 2), vaddq_f32(vmulq_n_f32(v3[v22 + 1], COERCE_FLOAT(*v36)), vmulq_lane_f32(v4[v22 + 1], *v36->f32, 1)))));
          v41 = vmulq_f32(v7[v22 + 2], v37);
          v42 = &v8[v22];
          v23 += 3;
          v22 += 3;
          v16 = v29 + 3;
          v17 += 3;
          v28 += 3;
          v27 += 3;
          *v42 = v39;
          v42[1] = v40;
          v42[2] = vaddq_f32(v41, v38);
          v26 += 3;
          v25 += 3;
          v24 = v35 + 3;
        }

        while (v23 < v2 - 2);
        if (v2 > v23)
        {
          do
          {
            v43 = *v29++;
            v44 = v43;
            v45 = *v30++;
            v46 = v45;
            v47 = *v31++;
            v48 = v47;
            v49 = *v32++;
            v50 = v49;
            v51 = *(this + 51);
            v52 = *v33++;
            *v34++ = vaddq_f32(vmulq_f32(v52, v51[1]), vaddq_f32(vmulq_laneq_f32(v50, *v51, 3), vaddq_f32(vmulq_laneq_f32(v48, *v51, 2), vaddq_f32(vmulq_n_f32(v44, COERCE_FLOAT(*v51)), vmulq_lane_f32(v46, *v51->f32, 1)))));
            ++v35;
          }

          while (v2 > v35);
        }

        v15 = v73 + 1;
        v4 = (v4 + v69 * 16);
        v5 = (v5 + v68);
        v6 = (v6 + v67);
        v7 = (v7 + v66);
        v8 = (v8 + v65);
        v3 = (v3 + v64 * 16);
        v16 = &v72[v64];
        v17 = &v71[v69];
        v18 = (v18 + v68);
        v19 = (v19 + v67);
        v20 = (v20 + v66);
        v21 = (v21 + v65);
      }

      while (v73 + 1 != v70);
    }
  }

  return 0;
}

uint64_t HgcMultiTexBlend_5::GetDOD(HgcMultiTexBlend_5 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 5)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcMultiTexBlend_5::GetROI(HgcMultiTexBlend_5 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 5)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcMultiTexBlend_5::HgcMultiTexBlend_5(HgcMultiTexBlend_5 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872326A0;
  operator new();
}

void HgcMultiTexBlend_5::~HgcMultiTexBlend_5(HgcMultiTexBlend_5 *this)
{
  *this = &unk_2872326A0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40EED21634);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcMultiTexBlend_5::~HgcMultiTexBlend_5(HGNode *this)
{
  *this = &unk_2872326A0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcMultiTexBlend_5::SetParameter(HgcMultiTexBlend_5 *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMultiTexBlend_5::GetParameter(HgcMultiTexBlend_5 *this, int a2, float *a3)
{
  if (a2 == 1)
  {
    v5 = *(this + 51);
    *a3 = v5[8];
    a3[1] = v5[9];
    a3[2] = v5[10];
    result = 0;
    a3[3] = v5[11];
  }

  else if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    v3 = *(this + 51);
    *a3 = *v3;
    a3[1] = v3[1];
    a3[2] = v3[2];
    result = 0;
    a3[3] = v3[3];
  }

  return result;
}

const char *HgcYUV444BiPlanar_709ToRGB::GetProgram(HgcYUV444BiPlanar_709ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const half4 c1 = half4(1.574800014, -0.4681242704, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(c1.w);\n    return output;\n}\n//MD5=1048caae:387a44ef:fc83ffd8:52b73979\n//SIG=00400000:00000003:00000003:00000003:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000415\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const float4 c1 = float4(1.574800014, -0.4681242704, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = c1.w;\n    return output;\n}\n//MD5=2408e641:b05fbd09:a6279793:e6b41496\n//SIG=00000000:00000003:00000003:00000000:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.574800014, -0.4681242704, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = c1.w;\n}\n//MD5=50acfb20:dc59fe91:195acf38:f03e2245\n//SIG=00000000:00000003:00000003:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDF07C4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF07F8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF07F0);
}

uint64_t HgcYUV444BiPlanar_709ToRGB::BindTexture(HgcYUV444BiPlanar_709ToRGB *this, HGHandler *a2, int a3)
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

uint64_t HgcYUV444BiPlanar_709ToRGB::Bind(HgcYUV444BiPlanar_709ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV444BiPlanar_709ToRGB::RenderTile(HgcYUV444BiPlanar_709ToRGB *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 12);
    v5 = *(a2 + 10);
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 22);
    v9 = *(a2 + 26);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v45 = 0;
        v46 = 16 * v9;
        v47 = 16 * v8;
        v48 = 16 * v7;
        v49 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v50 = 0;
          do
          {
            v51 = *(this + 51);
            v52 = vaddq_f32(*(v51 + 16), vmulq_f32(*v51, vbslq_s8(*(v51 + 32), v5[v50 / 0x10], vextq_s8(v4[v50 / 0x10], v4[v50 / 0x10], 0xCuLL))));
            v53 = vaddq_f32(vmulq_laneq_f32(*(v51 + 64), v52, 2), vaddq_f32(vdupq_lane_s32(*v52.f32, 0), vmulq_lane_f32(*(v51 + 48), *v52.f32, 1)));
            v53.i32[3] = 1.0;
            v6[v50 / 0x10] = v53;
            v50 += 16;
          }

          while (v49 != v50);
          ++v45;
          v4 = (v4 + v46);
          v5 = (v5 + v47);
          v6 = (v6 + v48);
        }

        while (v45 != v2);
      }
    }

    else
    {
      v10 = 0;
      v11 = 16 * v8;
      v12 = 16 * v7;
      v13 = 16 * v9;
      v14 = v4 + 4;
      v15 = v5 + 4;
      v16 = v6 + 4;
      do
      {
        v17 = 0;
        v18 = 0;
        v19 = v16;
        v20 = v15;
        v21 = v14;
        do
        {
          v22 = *(this + 51);
          v23 = *(v22 + 32);
          v24 = *(v22 + 48);
          v25 = *(v22 + 16);
          v26 = v21;
          v27 = vaddq_f32(v25, vmulq_f32(*v22, vbslq_s8(v23, v5[v17], vextq_s8(v4[v17], v4[v17], 0xCuLL))));
          v28 = vaddq_f32(v25, vmulq_f32(*v22, vbslq_s8(v23, v5[v17 + 1], vextq_s8(v4[v17 + 1], v4[v17 + 1], 0xCuLL))));
          v29 = vaddq_f32(v25, vmulq_f32(*v22, vbslq_s8(v23, v5[v17 + 2], vextq_s8(v4[v17 + 2], v4[v17 + 2], 0xCuLL))));
          v30 = vaddq_f32(v25, vmulq_f32(*v22, vbslq_s8(v23, v5[v17 + 3], vextq_s8(v4[v17 + 3], v4[v17 + 3], 0xCuLL))));
          v31 = *(v22 + 64);
          v32 = vaddq_f32(vmulq_laneq_f32(v31, v27, 2), vaddq_f32(vdupq_lane_s32(*v27.f32, 0), vmulq_lane_f32(v24, *v27.f32, 1)));
          v33 = vaddq_f32(vmulq_laneq_f32(v31, v28, 2), vaddq_f32(vdupq_lane_s32(*v28.f32, 0), vmulq_lane_f32(v24, *v28.f32, 1)));
          v34 = vaddq_f32(vmulq_laneq_f32(v31, v29, 2), vaddq_f32(vdupq_lane_s32(*v29.f32, 0), vmulq_lane_f32(v24, *v29.f32, 1)));
          v32.i32[3] = 1.0;
          v33.i32[3] = 1.0;
          v35 = vaddq_f32(vmulq_laneq_f32(v31, v30, 2), vaddq_f32(vdupq_lane_s32(*v30.f32, 0), vmulq_lane_f32(v24, *v30.f32, 1)));
          v34.i32[3] = 1.0;
          v35.i32[3] = 1.0;
          v36 = v20;
          v37 = v19;
          v38 = &v6[v17];
          v18 += 4;
          v17 += 4;
          *v38 = v32;
          v38[1] = v33;
          v38[2] = v34;
          v38[3] = v35;
          v21 += 4;
          v20 += 4;
          v19 = v37 + 4;
        }

        while (v18 < (v3 - 3));
        if (v3 > v18)
        {
          do
          {
            v39 = *v26++;
            v40 = vextq_s8(v39, v39, 0xCuLL);
            v41 = *v36++;
            v42 = *(this + 51);
            v43 = vaddq_f32(*(v42 + 16), vmulq_f32(*v42, vbslq_s8(*(v42 + 32), v41, v40)));
            v44 = vaddq_f32(vmulq_laneq_f32(*(v42 + 64), v43, 2), vaddq_f32(vdupq_lane_s32(*v43.f32, 0), vmulq_lane_f32(*(v42 + 48), *v43.f32, 1)));
            v44.i32[3] = 1.0;
            *v37++ = v44;
            ++v18;
          }

          while (v18 < v3);
        }

        ++v10;
        v5 = (v5 + v11);
        v6 = (v6 + v12);
        v4 = (v4 + v13);
        v14 = (v14 + v13);
        v15 = (v15 + v11);
        v16 = (v16 + v12);
      }

      while (v10 != v2);
    }
  }

  return 0;
}

uint64_t HgcYUV444BiPlanar_709ToRGB::GetDOD(HgcYUV444BiPlanar_709ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcYUV444BiPlanar_709ToRGB::GetROI(HgcYUV444BiPlanar_709ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcYUV444BiPlanar_709ToRGB::HgcYUV444BiPlanar_709ToRGB(HgcYUV444BiPlanar_709ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287232908;
  operator new();
}

void HgcYUV444BiPlanar_709ToRGB::~HgcYUV444BiPlanar_709ToRGB(HgcYUV444BiPlanar_709ToRGB *this)
{
  *this = &unk_287232908;
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
  *this = &unk_287232908;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV444BiPlanar_709ToRGB::~HgcYUV444BiPlanar_709ToRGB(HGNode *this)
{
  *this = &unk_287232908;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV444BiPlanar_709ToRGB::SetParameter(HgcYUV444BiPlanar_709ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV444BiPlanar_709ToRGB::GetParameter(HgcYUV444BiPlanar_709ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcColorClamp::GetProgram(HgcColorClamp *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000265\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmin(r0, half4(hg_Params[0]));\n    output.color0 = fmax(float4(r0), hg_Params[1]);\n    return output;\n}\n//MD5=1fa9eff4:6b098975:051c3a71:ce7e3a5d\n//SIG=00400000:00000001:00000001:00000001:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000250\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmin(r0, hg_Params[0]);\n    output.color0 = fmax(r0, hg_Params[1]);\n    return output;\n}\n//MD5=8bd8f6b7:d61ba1b5:de97aeb6:868bcdb1\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000248\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = min(r0, hg_ProgramLocal0);\n    gl_FragColor = max(r0, hg_ProgramLocal1);\n}\n//MD5=b29813de:3fb28b2e:1d30ba03:4d6a0c54\n//SIG=00000000:00000001:00000001:00000000:0000:0002:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDF1308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF1338(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF1330);
}

uint64_t HgcColorClamp::BindTexture(HgcColorClamp *this, HGHandler *a2, int a3)
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

uint64_t HgcColorClamp::Bind(HgcColorClamp *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcColorClamp::RenderTile(HgcColorClamp *this, HGTile *a2)
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
            v5[v31 / 0x10] = vmaxq_f32(vminq_f32(v4[v31 / 0x10], **(this + 51)), *(*(this + 51) + 16));
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
          v17 = *(this + 51);
          v18 = v17[1];
          v19 = vminq_f32(v4[v16 - 2], *v17);
          v20 = vminq_f32(v4[v16 - 1], *v17);
          v21 = vminq_f32(v4[v16], *v17);
          v22 = vminq_f32(v4[v16 + 1], *v17);
          v23 = v15;
          v24 = v14;
          v25 = &v5[v16];
          v25[-2] = vmaxq_f32(v19, v18);
          v25[-1] = vmaxq_f32(v20, v18);
          v13 += 4;
          *v25 = vmaxq_f32(v21, v18);
          v25[1] = vmaxq_f32(v22, v18);
          v16 += 4;
          v15 += 4;
          v14 = v24 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v26 = *v23++;
            *v24++ = vmaxq_f32(vminq_f32(v26, **(this + 51)), *(*(this + 51) + 16));
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

uint64_t HgcColorClamp::GetDOD(HgcColorClamp *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcColorClamp::GetROI(HgcColorClamp *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcColorClamp::HgcColorClamp(HgcColorClamp *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287232B70;
  operator new();
}

void HgcColorClamp::~HgcColorClamp(HgcColorClamp *this)
{
  *this = &unk_287232B70;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcColorClamp::~HgcColorClamp(HGNode *this)
{
  *this = &unk_287232B70;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcColorClamp::SetParameter(HgcColorClamp *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcColorClamp::GetParameter(HgcColorClamp *this, unsigned int a2, float *a3)
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

const char *HgcMultiTexBlend_4::GetProgram(HgcMultiTexBlend_4 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004c2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]])\n{\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r0 = half4(hg_Params[0].xxxx)*r0;\n    r0 = half4(hg_Params[0].yyyy)*r1 + r0;\n    r0 = half4(hg_Params[0].zzzz)*r2 + r0;\n    output.color0 = hg_Params[0].wwww*float4(r3) + float4(r0);\n    return output;\n}\n//MD5=1a6c17cb:31f0a26b:ade5145e:0414ab15\n//SIG=00400000:0000000f:0000000f:0000000f:0000:0001:0004:0000:0000:0000:001e:0000:0004:04:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000482\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]])\n{\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r0 = hg_Params[0].xxxx*r0;\n    r0 = hg_Params[0].yyyy*r1 + r0;\n    r0 = hg_Params[0].zzzz*r2 + r0;\n    output.color0 = hg_Params[0].wwww*r3 + r0;\n    return output;\n}\n//MD5=5298a64d:65565521:895e2114:65f6560f\n//SIG=00000000:0000000f:0000000f:00000000:0000:0001:0004:0000:0000:0000:001e:0000:0004:04:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r0 = hg_ProgramLocal0.xxxx*r0;\n    r0 = hg_ProgramLocal0.yyyy*r1 + r0;\n    r0 = hg_ProgramLocal0.zzzz*r2 + r0;\n    gl_FragColor = hg_ProgramLocal0.wwww*r3 + r0;\n}\n//MD5=57e6a43b:2edcb015:005cc30e:7898f273\n//SIG=00000000:0000000f:0000000f:00000000:0000:0001:0004:0000:0000:0000:0000:0000:0004:04:0:1:0\n";
  }
}

void sub_25FDF1DB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF1DEC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF1DE4);
}

uint64_t HgcMultiTexBlend_4::BindTexture(HgcMultiTexBlend_4 *this, HGHandler *a2, int a3)
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

uint64_t HgcMultiTexBlend_4::Bind(HgcMultiTexBlend_4 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMultiTexBlend_4::RenderTile(HgcMultiTexBlend_4 *this, HGTile *a2)
{
  v55 = *(a2 + 3) - *(a2 + 1);
  if (v55 >= 1)
  {
    v2 = (*(a2 + 2) - *a2);
    v3 = *(a2 + 10);
    v4 = *(a2 + 12);
    v5 = *(a2 + 14);
    v6 = *(a2 + 16);
    v7 = *(a2 + 2);
    v8 = *(a2 + 6);
    v9 = *(a2 + 34);
    v10 = *(a2 + 30);
    v11 = *(a2 + 26);
    v12 = *(a2 + 22);
    if (v2 < 4)
    {
      if (v2 >= 1)
      {
        v46 = 0;
        v47 = 16 * v12;
        v48 = 16 * v11;
        v49 = 16 * v9;
        v50 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v51 = 0;
          do
          {
            v7[v51 / 0x10] = vaddq_f32(vmulq_laneq_f32(v6[v51 / 0x10], **(this + 51), 3), vaddq_f32(vmulq_laneq_f32(v5[v51 / 0x10], **(this + 51), 2), vaddq_f32(vmulq_n_f32(v3[v51 / 0x10], COERCE_FLOAT(**(this + 51))), vmulq_lane_f32(v4[v51 / 0x10], **(this + 51), 1))));
            v51 += 16;
          }

          while (v50 != v51);
          ++v46;
          v3 = (v3 + v47);
          v4 = (v4 + v48);
          v5 += v10;
          v6 = (v6 + v49);
          v7 += v8;
        }

        while (v46 != v55);
      }
    }

    else
    {
      v13 = 0;
      v54 = 16 * v11;
      v53 = 16 * v10;
      v14 = 16 * v9;
      v15 = v3 + 4;
      v16 = 16 * v8;
      v17 = v4 + 4;
      v18 = 16 * v12;
      v19 = v5 + 4;
      v20 = v6 + 4;
      v21 = v7 + 4;
      do
      {
        v22 = 0;
        v23 = 0;
        v24 = v21;
        v25 = v20;
        v26 = v19;
        v27 = v17;
        v28 = v15;
        do
        {
          v29 = v28;
          v30 = v27;
          v31 = v26;
          v32 = v25;
          v33 = v24;
          v34 = **(this + 51);
          v35 = vaddq_f32(vmulq_laneq_f32(v6[v22 + 1], v34, 3), vaddq_f32(vmulq_laneq_f32(v5[v22 + 1], v34, 2), vaddq_f32(vmulq_n_f32(v3[v22 + 1], v34.f32[0]), vmulq_lane_f32(v4[v22 + 1], *v34.f32, 1))));
          v36 = vaddq_f32(vmulq_laneq_f32(v6[v22 + 2], v34, 3), vaddq_f32(vmulq_laneq_f32(v5[v22 + 2], v34, 2), vaddq_f32(vmulq_n_f32(v3[v22 + 2], v34.f32[0]), vmulq_lane_f32(v4[v22 + 2], *v34.f32, 1))));
          v37 = vaddq_f32(vmulq_laneq_f32(v6[v22 + 3], v34, 3), vaddq_f32(vmulq_laneq_f32(v5[v22 + 3], v34, 2), vaddq_f32(vmulq_n_f32(v3[v22 + 3], v34.f32[0]), vmulq_lane_f32(v4[v22 + 3], *v34.f32, 1))));
          v38 = &v7[v22];
          *v38 = vaddq_f32(vmulq_laneq_f32(v6[v22], v34, 3), vaddq_f32(vmulq_laneq_f32(v5[v22], v34, 2), vaddq_f32(vmulq_n_f32(v3[v22], v34.f32[0]), vmulq_lane_f32(v4[v22], *v34.f32, 1))));
          v38[1] = v35;
          v23 += 4;
          v22 += 4;
          v28 += 4;
          v27 += 4;
          v38[2] = v36;
          v38[3] = v37;
          v26 = v31 + 4;
          v25 += 4;
          v24 += 4;
        }

        while (v23 < (v2 - 3));
        if (v2 > v23)
        {
          do
          {
            v39 = *v29++;
            v40 = v39;
            v41 = *v30++;
            v42 = v41;
            v43 = *v31++;
            v44 = v43;
            v45 = *v32++;
            *v33++ = vaddq_f32(vmulq_laneq_f32(v45, **(this + 51), 3), vaddq_f32(vmulq_laneq_f32(v44, **(this + 51), 2), vaddq_f32(vmulq_n_f32(v40, COERCE_FLOAT(**(this + 51))), vmulq_lane_f32(v42, **(this + 51), 1))));
            ++v23;
          }

          while (v23 < v2);
        }

        ++v13;
        v4 = (v4 + v54);
        v5 = (v5 + v53);
        v6 = (v6 + v14);
        v7 = (v7 + v16);
        v3 = (v3 + v18);
        v15 = (v15 + v18);
        v17 = (v17 + v54);
        v19 = (v19 + v53);
        v20 = (v20 + v14);
        v21 = (v21 + v16);
      }

      while (v13 != v55);
    }
  }

  return 0;
}

uint64_t HgcMultiTexBlend_4::GetDOD(HgcMultiTexBlend_4 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 4)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcMultiTexBlend_4::GetROI(HgcMultiTexBlend_4 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 4)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcMultiTexBlend_4::HgcMultiTexBlend_4(HgcMultiTexBlend_4 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287232DD8;
  operator new();
}

void HgcMultiTexBlend_4::~HgcMultiTexBlend_4(HgcMultiTexBlend_4 *this)
{
  *this = &unk_287232DD8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcMultiTexBlend_4::~HgcMultiTexBlend_4(HGNode *this)
{
  *this = &unk_287232DD8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcMultiTexBlend_4::SetParameter(HgcMultiTexBlend_4 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcMultiTexBlend_4::GetParameter(HgcMultiTexBlend_4 *this, int a2, float *a3)
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

const char *HgcMultiTexBlend_7::GetProgram(HgcMultiTexBlend_7 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000741\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< half > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]], \n    texture2d< half > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]])\n{\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = (half4) hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r6 = (half4) hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    r0 = half4(hg_Params[0].xxxx)*r0;\n    r0 = half4(hg_Params[0].yyyy)*r1 + r0;\n    r0 = half4(hg_Params[0].zzzz)*r2 + r0;\n    r0 = half4(hg_Params[0].wwww)*r3 + r0;\n    r0 = half4(hg_Params[1].xxxx)*r4 + r0;\n    r0 = half4(hg_Params[1].yyyy)*r5 + r0;\n    output.color0 = hg_Params[1].zzzz*float4(r6) + float4(r0);\n    return output;\n}\n//MD5=0919c6bd:8f8b1602:660b36e3:90776682\n//SIG=00400000:0000007f:0000007f:0000007f:0000:0002:0007:0000:0000:0000:00fe:0000:0007:07:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000006d7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< float > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]], \n    texture2d< float > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]])\n{\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r6 = hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    r0 = hg_Params[0].xxxx*r0;\n    r0 = hg_Params[0].yyyy*r1 + r0;\n    r0 = hg_Params[0].zzzz*r2 + r0;\n    r0 = hg_Params[0].wwww*r3 + r0;\n    r0 = hg_Params[1].xxxx*r4 + r0;\n    r0 = hg_Params[1].yyyy*r5 + r0;\n    output.color0 = hg_Params[1].zzzz*r6 + r0;\n    return output;\n}\n//MD5=91d90a23:e17307a0:56e74a97:fbca53d8\n//SIG=00000000:0000007f:0000007f:00000000:0000:0002:0007:0000:0000:0000:00fe:0000:0007:07:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000060d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture4;\nuniform defaultp sampler2D hg_Texture5;\nuniform defaultp sampler2D hg_Texture6;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvarying highp vec4 hg_TexCoord6;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture4, hg_TexCoord4.xy);\n    r5 = texture2D(hg_Texture5, hg_TexCoord5.xy);\n    r6 = texture2D(hg_Texture6, hg_TexCoord6.xy);\n    r0 = hg_ProgramLocal0.xxxx*r0;\n    r0 = hg_ProgramLocal0.yyyy*r1 + r0;\n    r0 = hg_ProgramLocal0.zzzz*r2 + r0;\n    r0 = hg_ProgramLocal0.wwww*r3 + r0;\n    r0 = hg_ProgramLocal1.xxxx*r4 + r0;\n    r0 = hg_ProgramLocal1.yyyy*r5 + r0;\n    gl_FragColor = hg_ProgramLocal1.zzzz*r6 + r0;\n}\n//MD5=f1f5c9f2:cb3caeb2:b31a6ebb:ceea2000\n//SIG=00000000:0000007f:0000007f:00000000:0000:0002:0007:0000:0000:0000:0000:0000:0007:07:0:1:0\n";
  }
}

void sub_25FDF2CDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF2D24(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF2D1CLL);
}

uint64_t HgcMultiTexBlend_7::BindTexture(HgcMultiTexBlend_7 *this, HGHandler *a2, int a3)
{
  result = 0xFFFFFFFFLL;
  if (a3 <= 2)
  {
    if (a3)
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
  }

  else if (a3 > 4)
  {
    if (a3 == 5)
    {
      (*(*a2 + 72))(a2, 5, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 5;
    }

    else
    {
      if (a3 != 6)
      {
        return result;
      }

      (*(*a2 + 72))(a2, 6, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v5 = a2;
      v6 = 6;
    }
  }

  else if (a3 == 3)
  {
    (*(*a2 + 72))(a2, 3, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 3;
  }

  else
  {
    (*(*a2 + 72))(a2, 4, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 4;
  }

  HGHandler::TexCoord(v5, v6, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcMultiTexBlend_7::Bind(HgcMultiTexBlend_7 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMultiTexBlend_7::RenderTile(HgcMultiTexBlend_7 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = *(a2 + 2) - *a2;
    v4 = *(a2 + 10);
    v5 = *(a2 + 12);
    v6 = *(a2 + 14);
    v7 = *(a2 + 16);
    v8 = *(a2 + 18);
    v9 = *(a2 + 20);
    v10 = *(a2 + 22);
    v11 = *(a2 + 2);
    v12 = *(a2 + 6);
    v13 = *(a2 + 46);
    v14 = *(a2 + 42);
    v15 = *(a2 + 38);
    v16 = *(a2 + 34);
    v17 = *(a2 + 30);
    v18 = *(a2 + 26);
    v19 = *(a2 + 22);
    if (v3 < 2)
    {
      if (v3 == 1)
      {
        v38 = 16 * v19;
        v39 = 16 * v17;
        v40 = 16 * v16;
        v41 = 16 * v15;
        v42 = 16 * v14;
        v43 = 16 * v13;
        v44 = 16 * v12;
        do
        {
          v45 = *(this + 51);
          v46 = v45[1];
          v47 = vaddq_f32(vmulq_lane_f32(*v9, *v46.f32, 1), vaddq_f32(vmulq_n_f32(*v8, v46.f32[0]), vaddq_f32(vmulq_laneq_f32(*v7, *v45, 3), vaddq_f32(vmulq_laneq_f32(*v6, *v45, 2), vaddq_f32(vmulq_n_f32(*v4, COERCE_FLOAT(*v45)), vmulq_lane_f32(*v5, *v45->f32, 1))))));
          v4 = (v4 + v38);
          v5 += v18;
          v6 = (v6 + v39);
          v7 = (v7 + v40);
          v8 = (v8 + v41);
          *v11 = vaddq_f32(vmulq_laneq_f32(*v10, v46, 2), v47);
          v9 = (v9 + v42);
          v10 = (v10 + v43);
          v11 = (v11 + v44);
          --v2;
        }

        while (v2);
      }
    }

    else
    {
      v20 = 0;
      v21 = 16 * v17;
      v22 = 16 * v16;
      v23 = 16 * v15;
      v24 = 16 * v14;
      v25 = 16 * v13;
      v26 = 16 * v12;
      v27 = 16 * v19;
      v28 = 16 * v18;
      do
      {
        v29 = 0;
        v30 = 0;
        for (i = v3; i > 1; i -= 2)
        {
          v32 = *(this + 51);
          v33 = v32[1];
          v34 = vaddq_f32(vmulq_laneq_f32(v10[v29], v33, 2), vaddq_f32(vmulq_lane_f32(v9[v29], *v33.f32, 1), vaddq_f32(vmulq_n_f32(v8[v29], v33.f32[0]), vaddq_f32(vmulq_laneq_f32(v7[v29], *v32, 3), vaddq_f32(vmulq_laneq_f32(v6[v29], *v32, 2), vaddq_f32(vmulq_n_f32(v4[v29], COERCE_FLOAT(*v32)), vmulq_lane_f32(v5[v29], *v32->f32, 1)))))));
          v35 = vaddq_f32(vmulq_laneq_f32(v10[v29 + 1], v33, 2), vaddq_f32(vmulq_lane_f32(v9[v29 + 1], *v33.f32, 1), vaddq_f32(vmulq_n_f32(v8[v29 + 1], v33.f32[0]), vaddq_f32(vmulq_laneq_f32(v7[v29 + 1], *v32, 3), vaddq_f32(vmulq_laneq_f32(v6[v29 + 1], *v32, 2), vaddq_f32(vmulq_n_f32(v4[v29 + 1], COERCE_FLOAT(*v32)), vmulq_lane_f32(v5[v29 + 1], *v32->f32, 1)))))));
          v36 = &v11[v29];
          *v36 = v34;
          v36[1] = v35;
          v30 += 2;
          v29 += 2;
        }

        if (v3 > v30)
        {
          v37 = *(this + 51);
          v11[v29] = vaddq_f32(vmulq_laneq_f32(v10[v29], v37[1], 2), vaddq_f32(vmulq_lane_f32(v9[v29], *v37[1].f32, 1), vaddq_f32(vmulq_n_f32(v8[v29], COERCE_FLOAT(*&v37[1])), vaddq_f32(vmulq_laneq_f32(v7[v29], *v37, 3), vaddq_f32(vmulq_laneq_f32(v6[v29], *v37, 2), vaddq_f32(vmulq_n_f32(v4[v29], COERCE_FLOAT(*v37)), vmulq_lane_f32(v5[v29], *v37->f32, 1)))))));
        }

        ++v20;
        v6 = (v6 + v21);
        v7 = (v7 + v22);
        v8 = (v8 + v23);
        v9 = (v9 + v24);
        v10 = (v10 + v25);
        v11 = (v11 + v26);
        v4 = (v4 + v27);
        v5 = (v5 + v28);
      }

      while (v20 != v2);
    }
  }

  return 0;
}

uint64_t HgcMultiTexBlend_7::GetDOD(HgcMultiTexBlend_7 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 7)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

uint64_t HgcMultiTexBlend_7::GetROI(HgcMultiTexBlend_7 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 >= 7)
  {
    return 0;
  }

  else
  {
    return *&a4.var0;
  }
}

void HgcMultiTexBlend_7::HgcMultiTexBlend_7(HgcMultiTexBlend_7 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287233040;
  operator new();
}

void HgcMultiTexBlend_7::~HgcMultiTexBlend_7(HgcMultiTexBlend_7 *this)
{
  *this = &unk_287233040;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcMultiTexBlend_7::~HgcMultiTexBlend_7(HGNode *this)
{
  *this = &unk_287233040;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcMultiTexBlend_7::SetParameter(HgcMultiTexBlend_7 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMultiTexBlend_7::GetParameter(HgcMultiTexBlend_7 *this, unsigned int a2, float *a3)
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

const char *HgcYUV420BiPlanar_601ToRGB::GetProgram(HgcYUV420BiPlanar_601ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const half4 c1 = half4(1.401999950, -0.7141363025, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(c1.w);\n    return output;\n}\n//MD5=0e00be48:1d4c1030:c845256d:4f625dda\n//SIG=00400000:00000001:00000001:00000003:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000415\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const float4 c1 = float4(1.401999950, -0.7141363025, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = c1.w;\n    return output;\n}\n//MD5=e920bf17:693c75e5:4f148dce:a2580259\n//SIG=00000000:00000001:00000001:00000000:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.401999950, -0.7141363025, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = c1.w;\n}\n//MD5=b28b84a9:65d97aa9:3bf19568:b311251d\n//SIG=00000000:00000001:00000001:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDF3BD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF3C0C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF3C04);
}

uint64_t HgcYUV420BiPlanar_601ToRGB::BindTexture(HgcYUV420BiPlanar_601ToRGB *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 48))(a2, 0, 0);
      HGHandler::TexCoord(a2, 1, 0, 0, 0);
      if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
      {
        (*(*a2 + 168))(a2);
      }

      (*(*a2 + 104))(a2, 0.5, 0.5, 1.0);
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
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
  }

  return result;
}

uint64_t HgcYUV420BiPlanar_601ToRGB::Bind(HgcYUV420BiPlanar_601ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV420BiPlanar_601ToRGB::RenderTile(HgcYUV420BiPlanar_601ToRGB *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = vmulq_f32(v5, xmmword_260346A40);
    v8 = a2[2];
    v9 = a2[10];
    v10 = 16 * a2[11].i32[0];
    v11 = 16 * a2[3].i32[0];
    v12 = 0uLL;
    __asm { FMOV            V5.4S, #4.0 }

    v18.i64[0] = 0x3F0000003F000000;
    v18.i64[1] = 0x3F0000003F000000;
    while (1)
    {
      v19 = vaddq_f32(v7, vmulq_f32(v12, xmmword_260344920));
      if (v6 >= 4)
      {
        break;
      }

      v20 = 0;
      v21 = 0uLL;
      __asm { FMOV            V18.4S, #1.0 }

      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v12 = vaddq_f32(v12, _Q18);
      ++v4;
      *&v9 += v10;
      *&v8 += v11;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v20 = 0;
    v21 = 0uLL;
    v22 = 32;
    for (i = v6; i > 3; i -= 4)
    {
      v24 = vaddq_f32(v19, vmulq_f32(v21, xmmword_260344E30));
      v25 = vaddq_f32(v24, xmmword_260344E30);
      v26 = vaddq_f32(v25, xmmword_260344E30);
      v27 = vaddq_f32(v26, xmmword_260344E30);
      v28 = a2[12];
      v29 = &a2[13];
      v30 = vaddq_f32(vsubq_f32(v24, v5), v18);
      v31 = vcvtq_s32_f32(v30);
      v32 = vaddq_f32(vsubq_f32(v25, v5), v18);
      v33 = vcvtq_s32_f32(v32);
      *v30.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
      *v31.i8 = vld1_dup_f32(v29);
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v30.f32 = vmla_s32(vzip1_s32(*v30.f32, *v32.f32), vzip2_s32(*v30.f32, *v32.f32), *v31.i8);
      LODWORD(v29) = v30.i32[1];
      v34 = vaddq_f32(vsubq_f32(v26, v5), v18);
      v35 = vcvtq_s32_f32(v34);
      v36 = v30.i32[0];
      v37 = vaddq_f32(vsubq_f32(v27, v5), v18);
      v38 = vcvtq_s32_f32(v37);
      v39 = *(*&v28 + 16 * v36);
      *v34.f32 = vadd_s32(*v35.i8, *&vcgtq_f32(vcvtq_f32_s32(v35), v34));
      *v37.f32 = vadd_s32(*v38.i8, *&vcgtq_f32(vcvtq_f32_s32(v38), v37));
      *v35.i8 = vzip2_s32(*v34.f32, *v37.f32);
      *v37.f32 = vzip1_s32(*v34.f32, *v37.f32);
      v40 = *(*&v28 + 16 * v29);
      *v37.f32 = vmla_s32(*v37.f32, *v35.i8, *v31.i8);
      v41 = *(*&v28 + 16 * v37.i32[1]);
      v42 = vextq_s8(*(*&v28 + 16 * v37.i32[0]), *(*&v28 + 16 * v37.i32[0]), 0xCuLL);
      v43 = *(this + 51);
      v44 = *(v43 + 32);
      v45 = *(v43 + 48);
      v46 = *(v43 + 16);
      v47 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v9 + v22 - 32), vextq_s8(v39, v39, 0xCuLL))));
      v48 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v9 + v22 - 16), vextq_s8(v40, v40, 0xCuLL))));
      v49 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v9 + v22), v42)));
      v50 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v9 + v22 + 16), vextq_s8(v41, v41, 0xCuLL))));
      v51 = *(v43 + 64);
      v52 = vaddq_f32(vmulq_laneq_f32(v51, v47, 2), vaddq_f32(vdupq_lane_s32(*v47.f32, 0), vmulq_lane_f32(v45, *v47.f32, 1)));
      v53 = vaddq_f32(vmulq_laneq_f32(v51, v48, 2), vaddq_f32(vdupq_lane_s32(*v48.f32, 0), vmulq_lane_f32(v45, *v48.f32, 1)));
      v54 = vaddq_f32(vmulq_laneq_f32(v51, v49, 2), vaddq_f32(vdupq_lane_s32(*v49.f32, 0), vmulq_lane_f32(v45, *v49.f32, 1)));
      v55 = vaddq_f32(vmulq_laneq_f32(v51, v50, 2), vaddq_f32(vdupq_lane_s32(*v50.f32, 0), vmulq_lane_f32(v45, *v50.f32, 1)));
      v52.i32[3] = 1.0;
      v53.i32[3] = 1.0;
      v54.i32[3] = 1.0;
      v55.i32[3] = 1.0;
      v21 = vaddq_f32(v21, _Q5);
      v56 = (*&v8 + v22);
      v56[-2] = v52;
      v56[-1] = v53;
      *v56 = v54;
      v56[1] = v55;
      v20 += 4;
      v22 += 64;
    }

    __asm { FMOV            V18.4S, #1.0 }

    if (v20 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v58 = vaddq_f32(vsubq_f32(vaddq_f32(v19, vmulq_f32(v21, xmmword_260344E30)), v5), v18);
      v59 = vcvtq_s32_f32(v58);
      v58.i64[0] = vaddq_s32(v59, vcgtq_f32(vcvtq_f32_s32(v59), v58)).u64[0];
      v60 = *(this + 51);
      v61 = vaddq_f32(*(v60 + 16), vmulq_f32(*v60, vbslq_s8(*(v60 + 32), *(*&v9 + 16 * v20), vextq_s8(*(*&a2[12] + 16 * (v58.i32[0] + v58.i32[1] * a2[13].i32[0])), *(*&a2[12] + 16 * (v58.i32[0] + v58.i32[1] * a2[13].i32[0])), 0xCuLL))));
      v62 = vaddq_f32(vmulq_laneq_f32(*(v60 + 64), v61, 2), vaddq_f32(vdupq_lane_s32(*v61.f32, 0), vmulq_lane_f32(*(v60 + 48), *v61.f32, 1)));
      v62.i32[3] = 1.0;
      *(*&v8 + 16 * v20) = v62;
      v21 = vaddq_f32(v21, _Q18);
      ++v20;
    }

    while (v20 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcYUV420BiPlanar_601ToRGB::GetDOD(HgcYUV420BiPlanar_601ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = *&a4.var0;
      v6 = *&a4.var2;
      v7 = HGRectMake4i(0, 0, a3, 1u);
      v8 = HGRectGrow(v5, v6, v7);
      v9 = HGRectFloat(v8);
      v13 = HGRectScale(v9, v10, v11, v12, 2.0);
      v18 = HGRectIntegral(v14, v13, v15, v16, v17);
      return HGRectUnion(0, 0, v18, v19);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t HgcYUV420BiPlanar_601ToRGB::GetROI(HgcYUV420BiPlanar_601ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = HGRectFloat(a4.var0);
      v9 = HGRectScale(v5, v6, v7, v8, 0.5);
      v14 = HGRectIntegral(v10, v9, v11, v12, v13);
      v16 = v15;
      v17 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 0, 0);
      v18 = HGRectGrow(v14, v16, v17);
      return HGRectUnion(0, 0, v18, v19);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void HgcYUV420BiPlanar_601ToRGB::HgcYUV420BiPlanar_601ToRGB(HgcYUV420BiPlanar_601ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872332A8;
  operator new();
}

void HgcYUV420BiPlanar_601ToRGB::~HgcYUV420BiPlanar_601ToRGB(HgcYUV420BiPlanar_601ToRGB *this)
{
  *this = &unk_2872332A8;
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
  *this = &unk_2872332A8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420BiPlanar_601ToRGB::~HgcYUV420BiPlanar_601ToRGB(HGNode *this)
{
  *this = &unk_2872332A8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV420BiPlanar_601ToRGB::SetParameter(HgcYUV420BiPlanar_601ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV420BiPlanar_601ToRGB::GetParameter(HgcYUV420BiPlanar_601ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcMultiTexBlend_3::GetProgram(HgcMultiTexBlend_3 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ed\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r0 = half4(hg_Params[0].xxxx)*r0;\n    r0 = half4(hg_Params[0].yyyy)*r1 + r0;\n    output.color0 = hg_Params[0].zzzz*float4(r2) + float4(r0);\n    return output;\n}\n//MD5=cc766481:a53c051c:4e34c2a5:82be33cf\n//SIG=00400000:00000007:00000007:00000007:0000:0001:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003bb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r0 = hg_Params[0].xxxx*r0;\n    r0 = hg_Params[0].yyyy*r1 + r0;\n    output.color0 = hg_Params[0].zzzz*r2 + r0;\n    return output;\n}\n//MD5=f558b7ce:73db4aed:13eb5976:1ab74be0\n//SIG=00000000:00000007:00000007:00000000:0000:0001:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000349\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r0 = hg_ProgramLocal0.xxxx*r0;\n    r0 = hg_ProgramLocal0.yyyy*r1 + r0;\n    gl_FragColor = hg_ProgramLocal0.zzzz*r2 + r0;\n}\n//MD5=08d99f4b:8e68f2aa:db8b3680:60eeb43c\n//SIG=00000000:00000007:00000007:00000000:0000:0001:0003:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDF4AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF4B08(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF4B00);
}

uint64_t HgcMultiTexBlend_3::BindTexture(HgcMultiTexBlend_3 *this, HGHandler *a2, int a3)
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

uint64_t HgcMultiTexBlend_3::Bind(HgcMultiTexBlend_3 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMultiTexBlend_3::RenderTile(HgcMultiTexBlend_3 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 12);
    v6 = *(a2 + 14);
    v7 = *(a2 + 2);
    v8 = *(a2 + 6);
    v9 = *(a2 + 30);
    v10 = *(a2 + 26);
    v11 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v41 = 0;
        v42 = 16 * v10;
        v43 = 16 * v9;
        v44 = 16 * v8;
        v45 = 16 * v3;
        do
        {
          v46 = 0;
          do
          {
            v7[v46 / 0x10] = vaddq_f32(vmulq_laneq_f32(v6[v46 / 0x10], **(this + 51), 2), vaddq_f32(vmulq_n_f32(v4[v46 / 0x10], COERCE_FLOAT(**(this + 51))), vmulq_lane_f32(v5[v46 / 0x10], **(this + 51), 1)));
            v46 += 16;
          }

          while (v45 != v46);
          ++v41;
          v4 += v11;
          v5 = (v5 + v42);
          v6 = (v6 + v43);
          v7 = (v7 + v44);
        }

        while (v41 != v2);
      }
    }

    else
    {
      v12 = 0;
      v13 = 16 * v10;
      v14 = 16 * v9;
      v15 = 16 * v8;
      v16 = v4 + 4;
      v17 = 16 * v11;
      v18 = v5 + 4;
      v19 = v6 + 4;
      v20 = v7 + 4;
      do
      {
        v21 = 0;
        v22 = 0;
        v23 = v20;
        v24 = v19;
        v25 = v18;
        v26 = v16;
        do
        {
          v27 = v26;
          v28 = v25;
          v29 = v24;
          v30 = v23;
          v31 = **(this + 51);
          v32 = vaddq_f32(vmulq_laneq_f32(v6[v21 + 1], v31, 2), vaddq_f32(vmulq_n_f32(v4[v21 + 1], v31.f32[0]), vmulq_lane_f32(v5[v21 + 1], *v31.f32, 1)));
          v33 = vaddq_f32(vmulq_laneq_f32(v6[v21 + 2], v31, 2), vaddq_f32(vmulq_n_f32(v4[v21 + 2], v31.f32[0]), vmulq_lane_f32(v5[v21 + 2], *v31.f32, 1)));
          v34 = vaddq_f32(vmulq_laneq_f32(v6[v21 + 3], v31, 2), vaddq_f32(vmulq_n_f32(v4[v21 + 3], v31.f32[0]), vmulq_lane_f32(v5[v21 + 3], *v31.f32, 1)));
          v35 = &v7[v21];
          *v35 = vaddq_f32(vmulq_laneq_f32(v6[v21], v31, 2), vaddq_f32(vmulq_n_f32(v4[v21], v31.f32[0]), vmulq_lane_f32(v5[v21], *v31.f32, 1)));
          v35[1] = v32;
          v22 += 4;
          v21 += 4;
          v26 += 4;
          v35[2] = v33;
          v35[3] = v34;
          v25 += 4;
          v24 += 4;
          v23 = v30 + 4;
        }

        while (v22 < (v3 - 3));
        if (v3 > v22)
        {
          do
          {
            v36 = *v27++;
            v37 = v36;
            v38 = *v28++;
            v39 = v38;
            v40 = *v29++;
            *v30++ = vaddq_f32(vmulq_laneq_f32(v40, **(this + 51), 2), vaddq_f32(vmulq_n_f32(v37, COERCE_FLOAT(**(this + 51))), vmulq_lane_f32(v39, **(this + 51), 1)));
            ++v22;
          }

          while (v22 < v3);
        }

        ++v12;
        v5 = (v5 + v13);
        v6 = (v6 + v14);
        v7 = (v7 + v15);
        v4 = (v4 + v17);
        v16 = (v16 + v17);
        v18 = (v18 + v13);
        v19 = (v19 + v14);
        v20 = (v20 + v15);
      }

      while (v12 != v2);
    }
  }

  return 0;
}

uint64_t HgcMultiTexBlend_3::GetDOD(HgcMultiTexBlend_3 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcMultiTexBlend_3::GetROI(HgcMultiTexBlend_3 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcMultiTexBlend_3::HgcMultiTexBlend_3(HgcMultiTexBlend_3 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287233510;
  operator new();
}

void HgcMultiTexBlend_3::~HgcMultiTexBlend_3(HgcMultiTexBlend_3 *this)
{
  *this = &unk_287233510;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcMultiTexBlend_3::~HgcMultiTexBlend_3(HGNode *this)
{
  *this = &unk_287233510;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcMultiTexBlend_3::SetParameter(HgcMultiTexBlend_3 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcMultiTexBlend_3::GetParameter(HgcMultiTexBlend_3 *this, int a2, float *a3)
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

const char *HgcMultiTexBlend_6::GetProgram(HgcMultiTexBlend_6 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000066c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< half > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]])\n{\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = (half4) hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r0 = half4(hg_Params[0].xxxx)*r0;\n    r0 = half4(hg_Params[0].yyyy)*r1 + r0;\n    r0 = half4(hg_Params[0].zzzz)*r2 + r0;\n    r0 = half4(hg_Params[0].wwww)*r3 + r0;\n    r0 = half4(hg_Params[1].xxxx)*r4 + r0;\n    output.color0 = hg_Params[1].yyyy*float4(r5) + float4(r0);\n    return output;\n}\n//MD5=552ccccb:a1de3632:dbe40462:70e09c4d\n//SIG=00400000:0000003f:0000003f:0000003f:0000:0002:0006:0000:0000:0000:007e:0000:0006:06:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000610\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< float > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]])\n{\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r0 = hg_Params[0].xxxx*r0;\n    r0 = hg_Params[0].yyyy*r1 + r0;\n    r0 = hg_Params[0].zzzz*r2 + r0;\n    r0 = hg_Params[0].wwww*r3 + r0;\n    r0 = hg_Params[1].xxxx*r4 + r0;\n    output.color0 = hg_Params[1].yyyy*r5 + r0;\n    return output;\n}\n//MD5=69605aab:03823b9c:4ce0d041:98b9bc19\n//SIG=00000000:0000003f:0000003f:00000000:0000:0002:0006:0000:0000:0000:007e:0000:0006:06:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000566\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture4;\nuniform defaultp sampler2D hg_Texture5;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture4, hg_TexCoord4.xy);\n    r5 = texture2D(hg_Texture5, hg_TexCoord5.xy);\n    r0 = hg_ProgramLocal0.xxxx*r0;\n    r0 = hg_ProgramLocal0.yyyy*r1 + r0;\n    r0 = hg_ProgramLocal0.zzzz*r2 + r0;\n    r0 = hg_ProgramLocal0.wwww*r3 + r0;\n    r0 = hg_ProgramLocal1.xxxx*r4 + r0;\n    gl_FragColor = hg_ProgramLocal1.yyyy*r5 + r0;\n}\n//MD5=6976d0bc:7777c38e:336b9450:9480e558\n//SIG=00000000:0000003f:0000003f:00000000:0000:0002:0006:0000:0000:0000:0000:0000:0006:06:0:1:0\n";
  }
}

void sub_25FDF5858(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF589C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF5894);
}

uint64_t HgcMultiTexBlend_6::BindTexture(HgcMultiTexBlend_6 *this, HGHandler *a2, int a3)
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

uint64_t HgcMultiTexBlend_6::Bind(HgcMultiTexBlend_6 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMultiTexBlend_6::RenderTile(HgcMultiTexBlend_6 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = *(a2 + 2) - *a2;
    v4 = *(a2 + 10);
    v5 = *(a2 + 12);
    v6 = *(a2 + 14);
    v7 = *(a2 + 16);
    v8 = *(a2 + 18);
    v9 = *(a2 + 20);
    v10 = *(a2 + 2);
    v11 = *(a2 + 6);
    v12 = *(a2 + 42);
    v13 = *(a2 + 38);
    v14 = *(a2 + 34);
    v15 = *(a2 + 30);
    v16 = *(a2 + 26);
    v17 = *(a2 + 22);
    if (v3 < 2)
    {
      if (v3 == 1)
      {
        v35 = 16 * v17;
        v36 = 16 * v14;
        v37 = 16 * v13;
        v38 = 16 * v12;
        v39 = 16 * v11;
        do
        {
          v40 = *(this + 51);
          v41 = v40[1];
          v42 = vaddq_f32(vmulq_n_f32(*v8, v41.f32[0]), vaddq_f32(vmulq_laneq_f32(*v7, *v40, 3), vaddq_f32(vmulq_laneq_f32(*v6, *v40, 2), vaddq_f32(vmulq_n_f32(*v4, COERCE_FLOAT(*v40)), vmulq_lane_f32(*v5, *v40->f32, 1)))));
          v4 = (v4 + v35);
          v5 += v16;
          v6 += v15;
          v7 = (v7 + v36);
          *v10 = vaddq_f32(vmulq_lane_f32(*v9, *v41.f32, 1), v42);
          v8 = (v8 + v37);
          v9 = (v9 + v38);
          v10 = (v10 + v39);
          --v2;
        }

        while (v2);
      }
    }

    else
    {
      v18 = 0;
      v19 = 16 * v15;
      v20 = 16 * v14;
      v21 = 16 * v13;
      v22 = 16 * v12;
      v23 = 16 * v11;
      v24 = 16 * v17;
      v25 = 16 * v16;
      do
      {
        v26 = 0;
        v27 = 0;
        for (i = v3; i > 1; i -= 2)
        {
          v29 = *(this + 51);
          v30 = v29[1];
          v31 = vaddq_f32(vmulq_lane_f32(v9[v26], *v30.f32, 1), vaddq_f32(vmulq_n_f32(v8[v26], v30.f32[0]), vaddq_f32(vmulq_laneq_f32(v7[v26], *v29, 3), vaddq_f32(vmulq_laneq_f32(v6[v26], *v29, 2), vaddq_f32(vmulq_n_f32(v4[v26], COERCE_FLOAT(*v29)), vmulq_lane_f32(v5[v26], *v29->f32, 1))))));
          v32 = vaddq_f32(vmulq_lane_f32(v9[v26 + 1], *v30.f32, 1), vaddq_f32(vmulq_n_f32(v8[v26 + 1], v30.f32[0]), vaddq_f32(vmulq_laneq_f32(v7[v26 + 1], *v29, 3), vaddq_f32(vmulq_laneq_f32(v6[v26 + 1], *v29, 2), vaddq_f32(vmulq_n_f32(v4[v26 + 1], COERCE_FLOAT(*v29)), vmulq_lane_f32(v5[v26 + 1], *v29->f32, 1))))));
          v33 = &v10[v26];
          *v33 = v31;
          v33[1] = v32;
          v27 += 2;
          v26 += 2;
        }

        if (v3 > v27)
        {
          v34 = *(this + 51);
          v10[v26] = vaddq_f32(vmulq_lane_f32(v9[v26], *v34[1].f32, 1), vaddq_f32(vmulq_n_f32(v8[v26], COERCE_FLOAT(*&v34[1])), vaddq_f32(vmulq_laneq_f32(v7[v26], *v34, 3), vaddq_f32(vmulq_laneq_f32(v6[v26], *v34, 2), vaddq_f32(vmulq_n_f32(v4[v26], COERCE_FLOAT(*v34)), vmulq_lane_f32(v5[v26], *v34->f32, 1))))));
        }

        ++v18;
        v6 = (v6 + v19);
        v7 = (v7 + v20);
        v8 = (v8 + v21);
        v9 = (v9 + v22);
        v10 = (v10 + v23);
        v4 = (v4 + v24);
        v5 = (v5 + v25);
      }

      while (v18 != v2);
    }
  }

  return 0;
}

uint64_t HgcMultiTexBlend_6::GetDOD(HgcMultiTexBlend_6 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcMultiTexBlend_6::GetROI(HgcMultiTexBlend_6 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcMultiTexBlend_6::HgcMultiTexBlend_6(HgcMultiTexBlend_6 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287233778;
  operator new();
}

void HgcMultiTexBlend_6::~HgcMultiTexBlend_6(HgcMultiTexBlend_6 *this)
{
  *this = &unk_287233778;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcMultiTexBlend_6::~HgcMultiTexBlend_6(HGNode *this)
{
  *this = &unk_287233778;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcMultiTexBlend_6::SetParameter(HgcMultiTexBlend_6 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMultiTexBlend_6::GetParameter(HgcMultiTexBlend_6 *this, unsigned int a2, float *a3)
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

const char *HgcGamutMap::GetProgram(HgcGamutMap *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000573\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(2.000000000, 1.000000000, 0.3330000043, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = fmin(r0.x, c0.x);\n    r1.z = c0.x - r1.x;\n    r2.xyz = (half3) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r1.xy = c0.yy;\n    r1.xyz = -r2.xyz*r1.xyz + r0.xyz;\n    r2.w = dot(r1.xyz, r1.xyz);\n    r2.w = sqrt(r2.w);\n    r1.x = r2.w + c0.y;\n    r1.y = 1.00000h / r1.x;\n    r1.x = r2.w*r2.w + c0.y;\n    r2.w = clamp(dot(r0.xyz, c0.zzz), 0.00000h, 1.00000h);\n    r0.x = 1.00000h / r1.x;\n    r0.y = r2.w*r2.w + -r2.w;\n    r2.w = r2.w*r0.y + r2.w;\n    r2.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    r0.xyz = mix(r0.xxx, r1.yyy, half3(hg_Params[0].xyz));\n    output.color0.xyz = mix(float3(r2.www), float3(r2.xyz), float3(r0.xyz));\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=9fd12417:c540b2a9:193700f8:2013b2a7\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000542\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(2.000000000, 1.000000000, 0.3330000043, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = fmin(r0.x, c0.x);\n    r1.z = c0.x - r1.x;\n    r2.xyz = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r1.xy = c0.yy;\n    r1.xyz = -r2.xyz*r1.xyz + r0.xyz;\n    r2.w = dot(r1.xyz, r1.xyz);\n    r2.w = sqrt(r2.w);\n    r1.x = r2.w + c0.y;\n    r1.y = 1.00000f / r1.x;\n    r1.x = r2.w*r2.w + c0.y;\n    r2.w = clamp(dot(r0.xyz, c0.zzz), 0.00000f, 1.00000f);\n    r0.x = 1.00000f / r1.x;\n    r0.y = r2.w*r2.w + -r2.w;\n    r2.w = r2.w*r0.y + r2.w;\n    r2.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = mix(r0.xxx, r1.yyy, hg_Params[0].xyz);\n    output.color0.xyz = mix(r2.www, r2.xyz, r0.xyz);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=7c8a7355:917bfc5f:f837ebc6:4b23a8cd\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004f2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 1.000000000, 0.3330000043, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = min(r0.x, c0.x);\n    r1.z = c0.x - r1.x;\n    r2.xyz = texture2D(hg_Texture1, hg_TexCoord1.xy).xyz;\n    r1.xy = c0.yy;\n    r1.xyz = -r2.xyz*r1.xyz + r0.xyz;\n    r2.w = dot(r1.xyz, r1.xyz);\n    r2.w = sqrt(r2.w);\n    r1.x = r2.w + c0.y;\n    r1.y = 1.00000 / r1.x;\n    r1.x = r2.w*r2.w + c0.y;\n    r2.w = clamp(dot(r0.xyz, c0.zzz), 0.00000, 1.00000);\n    r0.x = 1.00000 / r1.x;\n    r0.y = r2.w*r2.w + -r2.w;\n    r2.w = r2.w*r0.y + r2.w;\n    r2.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = mix(r0.xxx, r1.yyy, hg_ProgramLocal0.xyz);\n    gl_FragColor.xyz = mix(r2.www, r2.xyz, r0.xyz);\n    gl_FragColor.w = r0.w;\n}\n//MD5=37364881:eadfc1fa:492b9576:fb1eb981\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDF6554(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF6588(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF6580);
}

uint64_t HgcGamutMap::BindTexture(HgcGamutMap *this, HGHandler *a2, int a3)
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

uint64_t HgcGamutMap::Bind(HgcGamutMap *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcGamutMap::RenderTile(HgcGamutMap *this, HGTile *a2)
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
    while (v4 < 2)
    {
      v11 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 += v7;
      v6 += v10;
      v5 += v9;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v11 = 0;
    v12 = 16;
    for (i = v4; i > 1; i -= 2)
    {
      v15 = *(v8 + v12 - 16);
      v14 = *(v8 + v12);
      v16 = *(this + 51);
      v17 = *(v16 + 16);
      v18 = vminq_f32(v15, v17);
      v19 = vminq_f32(v14, v17);
      v20 = vsubq_f32(v17, vextq_s8(v19, v19, 8uLL));
      v21 = *(v6 + v12 - 16);
      v22 = *(v6 + v12);
      v24 = *(v16 + 32);
      v23 = *(v16 + 48);
      v25 = vsubq_f32(v15, vmulq_f32(v21, vbslq_s8(v23, vsubq_f32(v17, vextq_s8(v18, v18, 8uLL)), v24)));
      v26 = vsubq_f32(v14, vmulq_f32(v22, vbslq_s8(v23, v20, v24)));
      v27 = vmulq_f32(v25, v25);
      v28 = vmulq_f32(v26, v26);
      v29 = vaddq_f32(vrev64q_s32(v27), vaddq_f32(vextq_s8(v27, v27, 4uLL), vextq_s8(v27, v27, 8uLL)));
      v30 = *(v16 + 64);
      v31 = *(v16 + 80);
      v32 = vbslq_s8(v30, v29, v21);
      v33 = vbslq_s8(v30, vaddq_f32(vrev64q_s32(v28), vaddq_f32(vextq_s8(v28, v28, 4uLL), vextq_s8(v28, v28, 8uLL))), v22);
      v34 = vminq_f32(vmulq_f32(v24, vrsqrteq_f32(v32)), v17);
      v35 = vminq_f32(vmulq_f32(v24, vrsqrteq_f32(v33)), v17);
      v36 = vbslq_s8(v30, vmulq_f32(vminq_f32(vmulq_f32(v34, vrsqrtsq_f32(vmulq_f32(v34, v32), v34)), v17), v32), v21);
      v37 = vbslq_s8(v30, vmulq_f32(vminq_f32(vmulq_f32(v35, vrsqrtsq_f32(vmulq_f32(v35, v33), v35)), v17), v33), v22);
      v38 = vextq_s8(v36, v36, 0xCuLL);
      v39 = vextq_s8(v37, v37, 0xCuLL);
      v40 = vrev64q_s32(vaddq_f32(v24, v38));
      v41 = vrev64q_s32(vaddq_f32(v24, v39));
      v42 = *(v16 + 96);
      v43 = *(v16 + 112);
      v44 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpeq_f32(v40)), v31), v42);
      v45 = vminq_f32(vmaxq_f32(vmulq_f32(v17, vrecpeq_f32(v41)), v31), v42);
      v46 = vbslq_s8(v43, vaddq_f32(v31, vmulq_laneq_f32(v38, v36, 3)), vmulq_f32(v44, vrecpsq_f32(v40, v44)));
      v47 = vbslq_s8(v43, vaddq_f32(v31, vmulq_laneq_f32(v39, v37, 3)), vmulq_f32(v45, vrecpsq_f32(v41, v45)));
      v48 = *(v16 + 128);
      v49 = *(v16 + 144);
      v50 = vmulq_f32(v15, v48);
      v51 = vmulq_f32(v14, v48);
      v52 = vmaxq_f32(vaddq_f32(vrev64q_s32(v50), vaddq_f32(vextq_s8(v50, v50, 4uLL), vextq_s8(v50, v50, 8uLL))), v48);
      v53 = vminq_f32(vmaxq_f32(vaddq_f32(vrev64q_s32(v51), vaddq_f32(vextq_s8(v51, v51, 4uLL), vextq_s8(v51, v51, 8uLL))), v48), v31);
      v54 = vbslq_s8(v30, vminq_f32(v52, v31), v21);
      v55 = vbslq_s8(v30, v53, v22);
      v56 = *(v16 + 160);
      v57 = *(v16 + 176);
      v58 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v46), v49), v56), v42);
      v59 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v47), v49), v56), v42);
      v58.i64[0] = vmulq_f32(v58, vrecpsq_f32(v46, v58)).u64[0];
      v59.i64[0] = vmulq_f32(v59, vrecpsq_f32(v47, v59)).u64[0];
      v58.i64[1] = *(v8 + v12 - 8);
      v60 = vextq_s8(v54, v54, 8uLL);
      v59.i64[1] = *(v8 + v12 + 8);
      v61 = vextq_s8(v55, v55, 8uLL);
      v62 = vbslq_s8(v57, vsubq_f32(vmulq_laneq_f32(v60, v54, 3), v60), v58);
      v63 = vbslq_s8(v57, vsubq_f32(vmulq_laneq_f32(v61, v55, 3), v61), v59);
      v64 = vbslq_s8(v30, vaddq_f32(vmulq_lane_f32(v55, *v63.i8, 1), v55), v22);
      v65 = *(v16 + 192);
      v66 = *(v16 + 208);
      v67 = vmaxq_f32(vbslq_s8(v30, vaddq_f32(vmulq_lane_f32(v54, *v62.i8, 1), v54), v21), v65);
      v68 = vmaxq_f32(v64, v65);
      v69 = vdupq_lane_s32(*v62.i8, 0);
      v70 = vminq_f32(v67, v66);
      v71 = vminq_f32(v68, v66);
      v72 = vdupq_lane_s32(*v63.i8, 0);
      v73 = vdupq_laneq_s32(v70, 3);
      v74 = vbslq_s8(v30, v62, vaddq_f32(v69, vmulq_f32(*v16, vsubq_f32(vdupq_lane_s32(*v46.f32, 1), v69))));
      v75 = vdupq_laneq_s32(v71, 3);
      v76 = vbslq_s8(v30, v63, vaddq_f32(v75, vmulq_f32(vsubq_f32(v71, v75), vbslq_s8(v30, v63, vaddq_f32(v72, vmulq_f32(*v16, vsubq_f32(vdupq_lane_s32(*v47.f32, 1), v72)))))));
      v77 = (v5 + v12);
      v77[-1] = vbslq_s8(v30, v62, vaddq_f32(v73, vmulq_f32(vsubq_f32(v70, v73), v74)));
      *v77 = v76;
      v11 += 2;
      v12 += 32;
    }

    if (v11 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v78 = 16 * v11;
    v79 = *(v8 + v78);
    v80 = *(this + 51);
    v81 = *(v80 + 16);
    v82 = vminq_f32(v79, v81);
    v83 = *(v6 + v78);
    v84 = *(v80 + 32);
    v85 = vsubq_f32(v79, vmulq_f32(v83, vbslq_s8(*(v80 + 48), vsubq_f32(v81, vextq_s8(v82, v82, 8uLL)), v84)));
    v86 = vmulq_f32(v85, v85);
    v87 = vaddq_f32(vrev64q_s32(v86), vaddq_f32(vextq_s8(v86, v86, 4uLL), vextq_s8(v86, v86, 8uLL)));
    v88 = *(v80 + 64);
    v89 = *(v80 + 80);
    v90 = vbslq_s8(v88, v87, v83);
    v91 = vminq_f32(vmulq_f32(v84, vrsqrteq_f32(v90)), v81);
    v92 = vbslq_s8(v88, vmulq_f32(vminq_f32(vmulq_f32(v91, vrsqrtsq_f32(vmulq_f32(v91, v90), v91)), v81), v90), v83);
    v93 = vextq_s8(v92, v92, 0xCuLL);
    v94 = vrev64q_s32(vaddq_f32(v84, v93));
    v95 = *(v80 + 96);
    v96 = vminq_f32(vmaxq_f32(vmulq_f32(v81, vrecpeq_f32(v94)), v89), v95);
    v97 = vbslq_s8(*(v80 + 112), vaddq_f32(v89, vmulq_laneq_f32(v93, v92, 3)), vmulq_f32(v96, vrecpsq_f32(v94, v96)));
    v98 = *(v80 + 128);
    v99 = vmulq_f32(v79, v98);
    v100 = vbslq_s8(v88, vminq_f32(vmaxq_f32(vaddq_f32(vrev64q_s32(v99), vaddq_f32(vextq_s8(v99, v99, 4uLL), vextq_s8(v99, v99, 8uLL))), v98), v89), v83);
    v101 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v97), *(v80 + 144)), *(v80 + 160)), v95);
    v101.i64[0] = vmulq_f32(v101, vrecpsq_f32(v97, v101)).u64[0];
    v101.i64[1] = *(v8 + v78 + 8);
    v102 = vextq_s8(v100, v100, 8uLL);
    v103 = vbslq_s8(*(v80 + 176), vsubq_f32(vmulq_laneq_f32(v102, v100, 3), v102), v101);
    v104 = vminq_f32(vmaxq_f32(vbslq_s8(v88, vaddq_f32(vmulq_lane_f32(v100, *v103.i8, 1), v100), v83), *(v80 + 192)), *(v80 + 208));
    v105 = vdupq_lane_s32(*v103.i8, 0);
    v106 = vdupq_laneq_s32(v104, 3);
    *(v5 + v78) = vbslq_s8(v88, v103, vaddq_f32(v106, vmulq_f32(vsubq_f32(v104, v106), vbslq_s8(v88, v103, vaddq_f32(v105, vmulq_f32(*v80, vsubq_f32(vdupq_lane_s32(*v97.f32, 1), v105)))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcGamutMap::GetDOD(HgcGamutMap *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcGamutMap::GetROI(HgcGamutMap *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcGamutMap::HgcGamutMap(HgcGamutMap *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872339E0;
  operator new();
}

void HgcGamutMap::~HgcGamutMap(HgcGamutMap *this)
{
  *this = &unk_2872339E0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C405DF52C91);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGamutMap::~HgcGamutMap(HGNode *this)
{
  *this = &unk_2872339E0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C405DF52C91);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGamutMap::SetParameter(HgcGamutMap *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcGamutMap::GetParameter(HgcGamutMap *this, int a2, float *a3)
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

const char *HgcGamutDebug::GetProgram(HgcGamutDebug *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000315\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = half3(r0.xyz < c0.xxx);\n    r1.x = clamp(dot(r1.xyz, 1.00000h), 0.00000h, 1.00000h);\n    output.color0 = select(float4(r0), float4(c0.yyyy), -float4(r1.xxxx) < 0.00000h);\n    return output;\n}\n//MD5=2d0afb17:dab469cd:798741a4:58cd198f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = float3(r0.xyz < c0.xxx);\n    r1.x = clamp(dot(r1.xyz, 1.00000f), 0.00000f, 1.00000f);\n    output.color0 = select(r0, c0.yyyy, -r1.xxxx < 0.00000f);\n    return output;\n}\n//MD5=71fe4496:7156453e:b7d65510:ea5aafa6\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000303\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = vec3(lessThan(r0.xyz, c0.xxx));\n    r1.x = clamp(dot(r1.xyz, vec3(1.00000)), 0.00000, 1.00000);\n    gl_FragColor = vec4(-r1.x < 0.00000 ? c0.y : r0.x, -r1.x < 0.00000 ? c0.y : r0.y, -r1.x < 0.00000 ? c0.y : r0.z, -r1.x < 0.00000 ? c0.y : r0.w);\n}\n//MD5=a7127b0a:d9e000dc:3c8303cb:b3e5bf56\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDF71D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF7200(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF71F8);
}

uint64_t HgcGamutDebug::BindTexture(HgcGamutDebug *this, HGHandler *a2, int a3)
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

uint64_t HgcGamutDebug::RenderTile(HgcGamutDebug *this, HGTile *a2)
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
            v46 = v45[1];
            v47 = vandq_s8(v46, vcgtq_f32(*v45, v44));
            v5[v43 / 0x10] = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vminq_f32(vmaxq_f32(vaddq_f32(vextq_s8(v47, v47, 8uLL), vaddq_f32(vrev64q_s32(v47), v47)), *v45), v46), 0), *v45), v46, v44);
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
          v17 = v4[v16 - 2];
          v18 = v4[v16 - 1];
          v19 = v4[v16];
          v20 = v4[v16 + 1];
          v21 = *(this + 51);
          v22 = *v21;
          v23 = v21[1];
          v24 = v15;
          v25 = vandq_s8(v23, vcgtq_f32(*v21, v17));
          v26 = vandq_s8(v23, vcgtq_f32(*v21, v18));
          v27 = vandq_s8(v23, vcgtq_f32(*v21, v19));
          v28 = vandq_s8(v23, vcgtq_f32(*v21, v20));
          v29 = vdupq_lane_s32(*&vminq_f32(vmaxq_f32(vaddq_f32(vextq_s8(v25, v25, 8uLL), vaddq_f32(vrev64q_s32(v25), v25)), *v21), v23), 0);
          v30 = vdupq_lane_s32(*&vminq_f32(vmaxq_f32(vaddq_f32(vextq_s8(v26, v26, 8uLL), vaddq_f32(vrev64q_s32(v26), v26)), *v21), v23), 0);
          v31 = vdupq_lane_s32(*&vminq_f32(vmaxq_f32(vaddq_f32(vextq_s8(v27, v27, 8uLL), vaddq_f32(vrev64q_s32(v27), v27)), *v21), v23), 0);
          v32 = vdupq_lane_s32(*&vminq_f32(vmaxq_f32(vaddq_f32(vextq_s8(v28, v28, 8uLL), vaddq_f32(vrev64q_s32(v28), v28)), *v21), v23), 0);
          v33 = v14;
          v34 = &v5[v16];
          v13 += 4;
          v34[-2] = vbslq_s8(vcgtq_f32(v29, v22), v23, v17);
          v34[-1] = vbslq_s8(vcgtq_f32(v30, v22), v23, v18);
          *v34 = vbslq_s8(vcgtq_f32(v31, v22), v23, v19);
          v34[1] = vbslq_s8(vcgtq_f32(v32, v22), v23, v20);
          v16 += 4;
          v15 += 4;
          v14 = v33 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v35 = *(this + 51);
            v36 = *v24++;
            v37 = v35[1];
            v38 = vandq_s8(v37, vcgtq_f32(*v35, v36));
            *v33++ = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vminq_f32(vmaxq_f32(vaddq_f32(vextq_s8(v38, v38, 8uLL), vaddq_f32(vrev64q_s32(v38), v38)), *v35), v37), 0), *v35), v37, v36);
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

uint64_t HgcGamutDebug::GetDOD(HgcGamutDebug *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcGamutDebug::GetROI(HgcGamutDebug *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcGamutDebug::HgcGamutDebug(HgcGamutDebug *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287233C48;
  operator new();
}

void HgcGamutDebug::~HgcGamutDebug(HgcGamutDebug *this)
{
  *this = &unk_287233C48;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGamutDebug::~HgcGamutDebug(HGNode *this)
{
  *this = &unk_287233C48;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcCinematicDepthFX_ColorPop::GetProgram(HgcCinematicDepthFX_ColorPop *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000435\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.6779999733, 0.2626999915, 0.05930000171);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.x - half(hg_Params[0].x);\n    r1.y = abs(r1.x);\n    r1.x = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r1.x = half(r1.x < r1.y);\n    r1.z = r0.y*c0.y;\n    r1.y = r0.x*c0.z + r1.z;\n    r1.y = r0.z*c0.w + r1.y;\n    output.color0.xyz = select(float3(r0.xyz), float3(r1.yyy), -float3(r1.xxx) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=1298defe:3711e2e2:cd1e08c0:d5f1acf3\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000407\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.6779999733, 0.2626999915, 0.05930000171);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.x - hg_Params[0].x;\n    r1.y = abs(r1.x);\n    r1.x = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r1.x = float(r1.x < r1.y);\n    r1.z = r0.y*c0.y;\n    r1.y = r0.x*c0.z + r1.z;\n    r1.y = r0.z*c0.w + r1.y;\n    output.color0.xyz = select(r0.xyz, r1.yyy, -r1.xxx < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=55869529:89b21dce:60251d5d:c1ca7ed8\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003ec\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.6779999733, 0.2626999915, 0.05930000171);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.x - hg_ProgramLocal0.x;\n    r1.y = abs(r1.x);\n    r1.x = texture2D(hg_Texture1, hg_TexCoord1.xy).x;\n    r1.x = float(r1.x < r1.y);\n    r1.z = r0.y*c0.y;\n    r1.y = r0.x*c0.z + r1.z;\n    r1.y = r0.z*c0.w + r1.y;\n    gl_FragColor.xyz = vec3(-r1.x < 0.00000 ? r1.y : r0.x, -r1.x < 0.00000 ? r1.y : r0.y, -r1.x < 0.00000 ? r1.y : r0.z);\n    gl_FragColor.w = r0.w;\n}\n//MD5=b5739cb7:e2f53a23:ffaea585:6fd6d74e\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDF7AFC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF7B30(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF7B28);
}

uint64_t HgcCinematicDepthFX_ColorPop::BindTexture(HgcCinematicDepthFX_ColorPop *this, HGHandler *a2, int a3)
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

uint64_t HgcCinematicDepthFX_ColorPop::Bind(HgcCinematicDepthFX_ColorPop *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcCinematicDepthFX_ColorPop::RenderTile(HgcCinematicDepthFX_ColorPop *this, HGTile *a2)
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
    while (v4 < 4)
    {
      v11 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v3;
      v8 += v7;
      v6 += v9;
      v5 += v10;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v11 = 0;
    v12 = 32;
    for (i = v4; i > 3; i -= 4)
    {
      v14 = *(this + 51);
      v15 = *(v14 + 16);
      v16 = *(v8 + v12 - 32);
      v17 = *(v8 + v12 - 16);
      v18 = vabsq_f32(vrev64q_s32(vsubq_f32(v15, *v14)));
      v19 = *(v14 + 32);
      v20 = *(v14 + 48);
      v21 = *(v8 + v12);
      v22 = *(v8 + v12 + 16);
      v23 = vbslq_s8(v19, *(v6 + v12 - 32), v18);
      v24 = vbslq_s8(v19, *(v6 + v12 - 16), v18);
      v25 = vbslq_s8(v19, *(v6 + v12), v18);
      v26 = vbslq_s8(v19, *(v6 + v12 + 16), v18);
      v27 = vandq_s8(v15, vcgtq_f32(vrev64q_s32(v23), v23));
      v28 = vandq_s8(v15, vcgtq_f32(vrev64q_s32(v24), v24));
      v29 = vandq_s8(v15, vcgtq_f32(vrev64q_s32(v25), v25));
      v30 = vmulq_f32(vextq_s8(v16, v16, 0xCuLL), v15);
      v31 = vmulq_f32(vextq_s8(v16, v17, 0xCuLL), v15);
      v32 = vmulq_f32(vextq_s8(v16, v21, 0xCuLL), v15);
      v33 = vandq_s8(v15, vcgtq_f32(vrev64q_s32(v26), v26));
      *v34.f32 = vext_s8(*v27.i8, *&vextq_s8(v30, v30, 8uLL), 4uLL);
      v35 = vextq_s8(v30, v27, 0xCuLL).u64[0];
      v27.i64[1] = v30.i64[1];
      *v30.f32 = vext_s8(*v28.i8, *&vextq_s8(v31, v31, 8uLL), 4uLL);
      v36 = vextq_s8(v31, v28, 0xCuLL).u64[0];
      v28.i64[1] = v31.i64[1];
      *v31.f32 = vext_s8(*v29.i8, *&vextq_s8(v32, v32, 8uLL), 4uLL);
      v37 = vextq_s8(v32, v29, 0xCuLL).u64[0];
      v29.i64[1] = v32.i64[1];
      v38 = vmulq_f32(vextq_s8(v16, v22, 0xCuLL), v15);
      *v39.f32 = vext_s8(*v33.i8, *&vextq_s8(v38, v38, 8uLL), 4uLL);
      v40.i64[0] = v33.i64[0];
      v40.i64[1] = v38.i64[1];
      v34.i64[1] = v35;
      v30.i64[1] = v36;
      v31.i64[1] = v37;
      v39.i64[1] = vextq_s8(v38, v33, 0xCuLL).u64[0];
      v27.i64[0] = vbslq_s8(v19, v27, vaddq_f32(vmulq_laneq_f32(v20, v16, 2), vbslq_s8(v19, v27, vaddq_f32(vmulq_n_f32(v15, v16.f32[0]), v34)))).u64[0];
      v28.i64[0] = vbslq_s8(v19, v28, vaddq_f32(vmulq_laneq_f32(v20, v17, 2), vbslq_s8(v19, v28, vaddq_f32(vmulq_n_f32(v15, v17.f32[0]), v30)))).u64[0];
      v29.i64[0] = vbslq_s8(v19, v29, vaddq_f32(vmulq_laneq_f32(v20, v21, 2), vbslq_s8(v19, v29, vaddq_f32(vmulq_n_f32(v15, v21.f32[0]), v31)))).u64[0];
      v19.i64[0] = vbslq_s8(v19, v40, vaddq_f32(vmulq_laneq_f32(v20, v22, 2), vbslq_s8(v19, v40, vaddq_f32(vmulq_n_f32(v15, v22.f32[0]), v39)))).u64[0];
      v41 = *(v14 + 64);
      v42 = *(v14 + 80);
      v43 = (v5 + v12);
      v43[-2] = vbslq_s8(v42, v16, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v27.i8, 0), v41), vdupq_lane_s32(*v27.i8, 1), v16));
      v43[-1] = vbslq_s8(v42, v17, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v28.i8, 0), v41), vdupq_lane_s32(*v28.i8, 1), v17));
      *v43 = vbslq_s8(v42, v21, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v29.i8, 0), v41), vdupq_lane_s32(*v29.i8, 1), v21));
      v43[1] = vbslq_s8(v42, v22, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v19.i8, 0), v41), vdupq_lane_s32(*v19.i8, 1), v22));
      v11 += 4;
      v12 += 64;
    }

    if (v11 >= v4)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v44 = *(v8 + 16 * v11);
      v45 = *(this + 51);
      v46 = *(v45 + 16);
      v47 = *(v45 + 32);
      v48 = vbslq_s8(v47, *(v6 + 16 * v11), vabsq_f32(vrev64q_s32(vsubq_f32(v46, *v45))));
      v49 = vandq_s8(v46, vcgtq_f32(vrev64q_s32(v48), v48));
      v50 = vmulq_f32(vextq_s8(v44, v44, 0xCuLL), v46);
      *v51.f32 = vext_s8(*v49.i8, *&vextq_s8(v50, v50, 8uLL), 4uLL);
      v52 = vextq_s8(v50, v49, 0xCuLL).u64[0];
      v49.i64[1] = v50.i64[1];
      v51.i64[1] = v52;
      v46.i64[0] = vbslq_s8(v47, v49, vaddq_f32(vmulq_laneq_f32(*(v45 + 48), v44, 2), vbslq_s8(v47, v49, vaddq_f32(vmulq_n_f32(v46, v44.f32[0]), v51)))).u64[0];
      *(v5 + 16 * v11++) = vbslq_s8(*(v45 + 80), v44, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v46.f32, 0), *(v45 + 64)), vdupq_lane_s32(*v46.f32, 1), v44));
    }

    while (v11 < v4);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcCinematicDepthFX_ColorPop::GetDOD(HgcCinematicDepthFX_ColorPop *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcCinematicDepthFX_ColorPop::GetROI(HgcCinematicDepthFX_ColorPop *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcCinematicDepthFX_ColorPop::HgcCinematicDepthFX_ColorPop(HgcCinematicDepthFX_ColorPop *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287233EB0;
  operator new();
}

void HgcCinematicDepthFX_ColorPop::~HgcCinematicDepthFX_ColorPop(HgcCinematicDepthFX_ColorPop *this)
{
  *this = &unk_287233EB0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcCinematicDepthFX_ColorPop::~HgcCinematicDepthFX_ColorPop(HGNode *this)
{
  *this = &unk_287233EB0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcCinematicDepthFX_ColorPop::SetParameter(HgcCinematicDepthFX_ColorPop *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcCinematicDepthFX_ColorPop::GetParameter(HgcCinematicDepthFX_ColorPop *this, int a2, float *a3)
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

const char *HgcCinematicDepthFX_FadeOut::GetProgram(HgcCinematicDepthFX_FadeOut *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000033c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r0.x = pow(r0.x, half(hg_Params[0].x));\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = float3(r1.xyz)*float3(r0.xxx);\n    output.color0.w = float(r1.w);\n    return output;\n}\n//MD5=5d72101a:0d1ba2d4:a3186824:d7a1b699\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000313\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.x = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).x;\n    r0.x = pow(r0.x, hg_Params[0].x);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.xyz = r1.xyz*r0.xxx;\n    output.color0.w = r1.w;\n    return output;\n}\n//MD5=c08c65b8:bcd4ef5b:1ac91bee:f607030c\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002ba\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    mediump vec4 r0, r1;\n\n    r0.x = texture2D(hg_Texture1, hg_TexCoord1.xy).x;\n    r0.x = pow(r0.x, hg_ProgramLocal0.x);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor.xyz = r1.xyz*r0.xxx;\n    gl_FragColor.w = r1.w;\n}\n//MD5=4fc1596e:38c41ba7:94ce35ad:ee78ae36\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDF8678(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF86AC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF86A4);
}

uint64_t HgcCinematicDepthFX_FadeOut::BindTexture(HgcCinematicDepthFX_FadeOut *this, HGHandler *a2, int a3)
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

uint64_t HgcCinematicDepthFX_FadeOut::Bind(HgcCinematicDepthFX_FadeOut *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcCinematicDepthFX_FadeOut::RenderTile(HgcCinematicDepthFX_FadeOut *this, HGTile *a2)
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
    v9 = 16 * *(a2 + 6);
    v10 = 16 * *(a2 + 22);
    while (v4 < 3)
    {
      v11 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v3;
      v8 += v7;
      v5 += v9;
      v6 += v10;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v11 = 0;
    v12 = 32;
    for (i = v4; i > 2; i -= 3)
    {
      v15 = *(v8 + v12 - 32);
      v14 = *(v8 + v12 - 16);
      v16 = *(this + 51);
      v17 = *(v8 + v12);
      v18 = *(v16 + 16);
      v19 = *(v16 + 32);
      v20 = *(v16 + 48);
      v21 = vorrq_s8(vandq_s8(v18, v15), v19);
      v22 = vorrq_s8(vandq_s8(v18, v14), v19);
      v23 = vcgtq_f32(v20, v14);
      v24 = vorrq_s8(vandq_s8(v18, v17), v19);
      v25 = *(v16 + 64);
      v26 = *(v16 + 80);
      v27 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v20, v17)));
      v28 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v15, 0x17uLL)), vandq_s8(v25, vcgtq_f32(v20, v15))), v26);
      v29 = *(v16 + 96);
      v30 = *(v16 + 112);
      v31 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v14, 0x17uLL)), vandq_s8(v25, v23)), v26);
      v32 = vandq_s8(v19, vcgtq_f32(v21, v29));
      v33 = vsubq_f32(v27, v26);
      v34 = vandq_s8(v19, vcgtq_f32(v22, v29));
      v35 = vandq_s8(v19, vcgtq_f32(v24, v29));
      v36 = vaddq_f32(v31, v34);
      v37 = vsubq_f32(vsubq_f32(v21, v19), vmulq_f32(vmulq_f32(v30, v32), v21));
      v38 = vsubq_f32(vsubq_f32(v22, v19), vmulq_f32(vmulq_f32(v30, v34), v22));
      v39 = vsubq_f32(vsubq_f32(v24, v19), vmulq_f32(vmulq_f32(v30, v35), v24));
      v40 = *(v16 + 128);
      v41 = *(v16 + 144);
      v42 = vaddq_f32(v40, vmulq_f32(v41, v37));
      v43 = vaddq_f32(v40, vmulq_f32(v41, v38));
      v44 = vaddq_f32(v40, vmulq_f32(v41, v39));
      v45 = *(v16 + 160);
      v46 = *(v16 + 176);
      v47 = vmulq_f32(*v16, vaddq_f32(vaddq_f32(v33, v35), vmulq_f32(v39, vaddq_f32(vaddq_f32(v45, vmulq_f32(v39, v46)), vmulq_f32(vmulq_f32(v39, v39), v44)))));
      v48 = *(v16 + 192);
      v49 = *(v16 + 208);
      v50 = vmaxq_f32(vmulq_f32(*v16, vaddq_f32(vaddq_f32(v28, v32), vmulq_f32(v37, vaddq_f32(vaddq_f32(v45, vmulq_f32(v37, v46)), vmulq_f32(vmulq_f32(v37, v37), v42))))), v48);
      v51 = vmaxq_f32(vmulq_f32(*v16, vaddq_f32(v36, vmulq_f32(v38, vaddq_f32(vaddq_f32(v45, vmulq_f32(v38, v46)), vmulq_f32(vmulq_f32(v38, v38), v43))))), v48);
      v52 = vmaxq_f32(v47, v48);
      v53 = vcvtq_f32_s32(vcvtq_s32_f32(v50));
      v54 = vcvtq_f32_s32(vcvtq_s32_f32(v51));
      v55 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v56 = vsubq_f32(v53, vandq_s8(v19, vcgtq_f32(v53, v50)));
      v57 = vsubq_f32(v54, vandq_s8(v19, vcgtq_f32(v54, v51)));
      v58 = vsubq_f32(v55, vandq_s8(v19, vcgtq_f32(v55, v52)));
      v59 = vsubq_f32(v50, v56);
      v60 = vsubq_f32(v51, v57);
      v61 = vsubq_f32(v52, v58);
      v62 = *(v16 + 224);
      v63 = *(v16 + 240);
      v64 = vaddq_f32(v49, vmulq_f32(v62, v60));
      v65 = vmulq_f32(v61, vaddq_f32(v63, vmulq_f32(v61, vaddq_f32(v49, vmulq_f32(v62, v61)))));
      v66 = vaddq_f32(v19, vmulq_f32(v59, vaddq_f32(v63, vmulq_f32(v59, vaddq_f32(v49, vmulq_f32(v62, v59))))));
      v67 = vcvtq_s32_f32(v57);
      v68 = vcvtq_s32_f32(v58);
      v69 = *(v16 + 256);
      v70 = *(v16 + 272);
      v71 = vbslq_s8(v70, *(v6 + v12 - 16), vmulq_n_f32(*(v6 + v12 - 16), vmulq_f32(vaddq_f32(v19, vmulq_f32(v60, vaddq_f32(v63, vmulq_f32(v60, v64)))), vshlq_n_s32(vaddq_s32(v69, v67), 0x17uLL)).f32[0]));
      v72 = vbslq_s8(v70, *(v6 + v12), vmulq_n_f32(*(v6 + v12), vmulq_f32(vaddq_f32(v19, v65), vshlq_n_s32(vaddq_s32(v69, v68), 0x17uLL)).f32[0]));
      v73 = (v5 + v12);
      v73[-2] = vbslq_s8(v70, *(v6 + v12 - 32), vmulq_n_f32(*(v6 + v12 - 32), vmulq_f32(v66, vshlq_n_s32(vaddq_s32(v69, vcvtq_s32_f32(v56)), 0x17uLL)).f32[0]));
      v73[-1] = v71;
      *v73 = v72;
      v11 += 3;
      v12 += 48;
    }

    if (v11 >= v4)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v74 = *(v8 + 16 * v11);
      v75 = *(this + 51);
      v76 = *(v75 + 32);
      v77 = vorrq_s8(vandq_s8(*(v75 + 16), v74), v76);
      v78 = vandq_s8(v76, vcgtq_f32(v77, *(v75 + 96)));
      v79 = vsubq_f32(vsubq_f32(v77, v76), vmulq_f32(vmulq_f32(*(v75 + 112), v78), v77));
      v80 = vmaxq_f32(vmulq_f32(*v75, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v74, 0x17uLL)), vandq_s8(*(v75 + 64), vcgtq_f32(*(v75 + 48), v74))), *(v75 + 80)), v78), vmulq_f32(v79, vaddq_f32(vaddq_f32(*(v75 + 160), vmulq_f32(v79, *(v75 + 176))), vmulq_f32(vmulq_f32(v79, v79), vaddq_f32(*(v75 + 128), vmulq_f32(*(v75 + 144), v79))))))), *(v75 + 192));
      v81 = vcvtq_f32_s32(vcvtq_s32_f32(v80));
      v82 = vsubq_f32(v81, vandq_s8(v76, vcgtq_f32(v81, v80)));
      v83 = vsubq_f32(v80, v82);
      *(v5 + 16 * v11) = vbslq_s8(*(v75 + 272), *(v6 + 16 * v11), vmulq_n_f32(*(v6 + 16 * v11), vmulq_f32(vaddq_f32(v76, vmulq_f32(v83, vaddq_f32(*(v75 + 240), vmulq_f32(v83, vaddq_f32(*(v75 + 208), vmulq_f32(*(v75 + 224), v83)))))), vshlq_n_s32(vaddq_s32(*(v75 + 256), vcvtq_s32_f32(v82)), 0x17uLL)).f32[0]));
      ++v11;
    }

    while (v11 < v4);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcCinematicDepthFX_FadeOut::GetDOD(HgcCinematicDepthFX_FadeOut *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcCinematicDepthFX_FadeOut::GetROI(HgcCinematicDepthFX_FadeOut *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcCinematicDepthFX_FadeOut::HgcCinematicDepthFX_FadeOut(HgcCinematicDepthFX_FadeOut *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287234118;
  operator new();
}

void HgcCinematicDepthFX_FadeOut::~HgcCinematicDepthFX_FadeOut(HgcCinematicDepthFX_FadeOut *this)
{
  *this = &unk_287234118;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40A8CFB95ELL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcCinematicDepthFX_FadeOut::~HgcCinematicDepthFX_FadeOut(HGNode *this)
{
  *this = &unk_287234118;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40A8CFB95ELL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcCinematicDepthFX_FadeOut::SetParameter(HgcCinematicDepthFX_FadeOut *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcCinematicDepthFX_FadeOut::GetParameter(HgcCinematicDepthFX_FadeOut *this, int a2, float *a3)
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

const char *HgcCinematicDepthFX_Fog::GetProgram(HgcCinematicDepthFX_Fog *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000400\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 2.718281746, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r0.xyz = c0.xxx - r0.xyz;\n    r0.xyz = fabs(r0.xyz)*half3(hg_Params[0].xyz);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = pow(c0.yyy, r0.xyz);\n    r1.xyz = r1.xyz*r0.xyz + -r0.xyz;\n    output.color0.xyz = float3(r1.xyz) + float3(c0.xxx);\n    output.color0.w = float(r1.w);\n    return output;\n}\n//MD5=95cd50d6:e7470ad6:0a32471f:84c275c9\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003d7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 2.718281746, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r0.xyz = c0.xxx - r0.xyz;\n    r0.xyz = fabs(r0.xyz)*hg_Params[0].xyz;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = pow(c0.yyy, r0.xyz);\n    r1.xyz = r1.xyz*r0.xyz + -r0.xyz;\n    output.color0.xyz = r1.xyz + c0.xxx;\n    output.color0.w = r1.w;\n    return output;\n}\n//MD5=91a66ef9:927addd3:c7b26079:fd8ccfc6\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000381\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 2.718281746, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0.xyz = texture2D(hg_Texture1, hg_TexCoord1.xy).xyz;\n    r0.xyz = c0.xxx - r0.xyz;\n    r0.xyz = abs(r0.xyz)*hg_ProgramLocal0.xyz;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = pow(c0.yyy, r0.xyz);\n    r1.xyz = r1.xyz*r0.xyz + -r0.xyz;\n    gl_FragColor.xyz = r1.xyz + c0.xxx;\n    gl_FragColor.w = r1.w;\n}\n//MD5=4a441193:7bfac871:d695a5d5:1d33ddce\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDF938C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF93C0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF93B8);
}

uint64_t HgcCinematicDepthFX_Fog::BindTexture(HgcCinematicDepthFX_Fog *this, HGHandler *a2, int a3)
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

uint64_t HgcCinematicDepthFX_Fog::Bind(HgcCinematicDepthFX_Fog *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcCinematicDepthFX_Fog::RenderTile(HgcCinematicDepthFX_Fog *this, HGTile *a2)
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
    v9 = 16 * *(a2 + 6);
    v10 = 16 * *(a2 + 22);
    while (v4 < 3)
    {
      v11 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v3;
      v8 += v7;
      v5 += v9;
      v6 += v10;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v11 = 0;
    v12 = 32;
    for (i = v4; i > 2; i -= 3)
    {
      v14 = *(this + 51);
      v15 = *(v14 + 16);
      v16 = *(v6 + v12 - 32);
      v17 = *(v6 + v12 - 16);
      v19 = *(v14 + 32);
      v18 = *(v14 + 48);
      v20 = vmaxq_f32(vmulq_f32(vmulq_f32(*v14, vabdq_f32(v15, *(v8 + v12 - 32))), v19), v18);
      v21 = vmaxq_f32(vmulq_f32(vmulq_f32(*v14, vabdq_f32(v15, *(v8 + v12 - 16))), v19), v18);
      v22 = vmaxq_f32(vmulq_f32(vmulq_f32(*v14, vabdq_f32(v15, *(v8 + v12))), v19), v18);
      v23 = vcvtq_f32_s32(vcvtq_s32_f32(v20));
      v24 = vcvtq_f32_s32(vcvtq_s32_f32(v21));
      v25 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
      v26 = vsubq_f32(v23, vandq_s8(v15, vcgtq_f32(v23, v20)));
      v27 = vsubq_f32(v24, vandq_s8(v15, vcgtq_f32(v24, v21)));
      v28 = vsubq_f32(v25, vandq_s8(v15, vcgtq_f32(v25, v22)));
      v29 = vsubq_f32(v20, v26);
      v30 = vsubq_f32(v21, v27);
      v31 = vsubq_f32(v22, v28);
      v32 = *(v14 + 64);
      v33 = *(v14 + 80);
      v34 = vaddq_f32(v32, vmulq_f32(v33, v29));
      v35 = vaddq_f32(v32, vmulq_f32(v33, v30));
      v36 = vaddq_f32(v32, vmulq_f32(v33, v31));
      v37 = *(v14 + 96);
      v38 = *(v14 + 112);
      v39 = vmulq_f32(vaddq_f32(v15, vmulq_f32(v29, vaddq_f32(v37, vmulq_f32(v29, v34)))), vshlq_n_s32(vaddq_s32(v38, vcvtq_s32_f32(v26)), 0x17uLL));
      v40 = vmulq_f32(vaddq_f32(v15, vmulq_f32(v30, vaddq_f32(v37, vmulq_f32(v30, v35)))), vshlq_n_s32(vaddq_s32(v38, vcvtq_s32_f32(v27)), 0x17uLL));
      v41 = vmulq_f32(vaddq_f32(v15, vmulq_f32(v31, vaddq_f32(v37, vmulq_f32(v31, v36)))), vshlq_n_s32(vaddq_s32(v38, vcvtq_s32_f32(v28)), 0x17uLL));
      v42 = *(v14 + 128);
      v43 = vaddq_f32(v15, vbslq_s8(v42, v16, vsubq_f32(vmulq_f32(v16, v39), v39)));
      v44 = vaddq_f32(v15, vbslq_s8(v42, v17, vsubq_f32(vmulq_f32(v17, v40), v40)));
      v45 = vbslq_s8(v42, *(v6 + v12), vaddq_f32(v15, vbslq_s8(v42, *(v6 + v12), vsubq_f32(vmulq_f32(*(v6 + v12), v41), v41))));
      v46 = (v5 + v12);
      v46[-2] = vbslq_s8(v42, v16, v43);
      v46[-1] = vbslq_s8(v42, v17, v44);
      *v46 = v45;
      v11 += 3;
      v12 += 48;
    }

    if (v11 >= v4)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v47 = *(this + 51);
      v48 = *(v47 + 16);
      v49 = vmaxq_f32(vmulq_f32(vmulq_f32(*v47, vabdq_f32(v48, *(v8 + 16 * v11))), *(v47 + 32)), *(v47 + 48));
      v50 = vcvtq_f32_s32(vcvtq_s32_f32(v49));
      v51 = vsubq_f32(v50, vandq_s8(v48, vcgtq_f32(v50, v49)));
      v52 = vsubq_f32(v49, v51);
      v53 = vmulq_f32(vaddq_f32(v48, vmulq_f32(v52, vaddq_f32(*(v47 + 96), vmulq_f32(v52, vaddq_f32(*(v47 + 64), vmulq_f32(*(v47 + 80), v52)))))), vshlq_n_s32(vaddq_s32(*(v47 + 112), vcvtq_s32_f32(v51)), 0x17uLL));
      *(v5 + 16 * v11) = vbslq_s8(*(v47 + 128), *(v6 + 16 * v11), vaddq_f32(v48, vbslq_s8(*(v47 + 128), *(v6 + 16 * v11), vsubq_f32(vmulq_f32(*(v6 + 16 * v11), v53), v53))));
      ++v11;
    }

    while (v11 < v4);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcCinematicDepthFX_Fog::GetDOD(HgcCinematicDepthFX_Fog *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcCinematicDepthFX_Fog::GetROI(HgcCinematicDepthFX_Fog *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcCinematicDepthFX_Fog::HgcCinematicDepthFX_Fog(HgcCinematicDepthFX_Fog *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287234380;
  operator new();
}

void HgcCinematicDepthFX_Fog::~HgcCinematicDepthFX_Fog(HgcCinematicDepthFX_Fog *this)
{
  *this = &unk_287234380;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40B8406A4ELL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcCinematicDepthFX_Fog::~HgcCinematicDepthFX_Fog(HGNode *this)
{
  *this = &unk_287234380;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcCinematicDepthFX_Fog::SetParameter(HgcCinematicDepthFX_Fog *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v8 = -a3.n128_f32[0];
  v9 = *(this + 51);
  if (v9->n128_f32[0] == -a3.n128_f32[0] && v9->n128_f32[1] == v8 && v9->n128_f32[2] == v8 && v9->n128_f32[3] == 0.0)
  {
    return 0;
  }

  v10 = vzip1q_s32(LODWORD(v8), LODWORD(v8));
  *&v10.i32[2] = -a3.n128_f32[0];
  a3.n128_f32[1] = a4;
  *v9 = v10;
  a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
  v9[9] = a3;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcCinematicDepthFX_Fog::GetParameter(HgcCinematicDepthFX_Fog *this, int a2, float *a3)
{
  if (!a2)
  {
    v3 = *(this + 51);
    *a3 = v3[36];
    a3[1] = v3[37];
    a3[2] = v3[38];
    result = v3[39];
    a3[3] = result;
  }

  return result;
}

const char *HgcGammaNoPremult::GetProgram(HgcGammaNoPremult *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002b3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = abs(r0);\n    r2.xyz = pow(r1.xyz, half3(hg_Params[0].xyz));\n    r2.w = r1.w;\n    output.color0 = select(float4(r2), -float4(r2), float4(r0) < 0.00000h);\n    return output;\n}\n//MD5=07195965:b14d782f:2455a915:5205ce07\n//SIG=00400000:00000001:00000001:00000001:0000:0001:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000028e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = abs(r0);\n    r2.xyz = pow(r1.xyz, hg_Params[0].xyz);\n    r2.w = r1.w;\n    output.color0 = select(r2, -r2, r0 < 0.00000f);\n    return output;\n}\n//MD5=5bc0a167:957bca21:4fe89d3a:884daf25\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002b5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    highp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = abs(r0);\n    r2.xyz = pow(r1.xyz, hg_ProgramLocal0.xyz);\n    r2.w = r1.w;\n    gl_FragColor = vec4(r0.x < 0.00000 ? -r2.x : r2.x, r0.y < 0.00000 ? -r2.y : r2.y, r0.z < 0.00000 ? -r2.z : r2.z, r0.w < 0.00000 ? -r2.w : r2.w);\n}\n//MD5=9548e277:2e546086:10e1df88:2981f6f1\n//SIG=00000000:00000001:00000001:00000000:0000:0001:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDF9E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDF9EB8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDF9EB0);
}

uint64_t HgcGammaNoPremult::BindTexture(HgcGammaNoPremult *this, HGHandler *a2, int a3)
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

uint64_t HgcGammaNoPremult::Bind(HgcGammaNoPremult *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcGammaNoPremult::RenderTile(HgcGammaNoPremult *this, HGTile *a2)
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
        v11 = vabsq_f32(v10);
        v12 = *(this + 51);
        v13 = *(v12 + 16);
        v14 = *(v12 + 32);
        v15 = vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(*v12, v13)), v13), v14, v11);
        v16 = vcgtq_f32(*(v12 + 48), v15);
        v17 = vmulq_f32(v15, vaddq_f32(v14, vandq_s8(*(v12 + 64), v16)));
        v18 = vorrq_s8(vandq_s8(*(v12 + 80), v17), v14);
        v19 = *(v12 + 128);
        v20 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(*(v12 + 96), vceqq_f32(v15, *(v12 + 96))), vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v15, v13), *(v12 + 112)), vandq_s8(*(v12 + 96), vceqq_f32(v15, v13))), vandq_s8(v19, v16))), *(v12 + 144)), vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)));
        v21 = vandq_s8(v14, vcgtq_f32(v18, *(v12 + 160)));
        v22 = vaddq_f32(v20, v21);
        v23 = vsubq_f32(vsubq_f32(v18, v14), vmulq_f32(vmulq_f32(*(v12 + 176), v21), v18));
        v24 = vmulq_f32(v23, v23);
        v25 = vmulq_f32(*v12, vaddq_f32(v22, vmulq_f32(v23, vaddq_f32(*(v12 + 320), vmulq_f32(v23, vaddq_f32(vaddq_f32(vmulq_f32(v24, vaddq_f32(*(v12 + 256), vmulq_f32(*(v12 + 272), v23))), vaddq_f32(*(v12 + 288), vmulq_f32(v23, *(v12 + 304)))), vmulq_f32(vmulq_f32(v24, v24), vaddq_f32(vaddq_f32(*(v12 + 224), vmulq_f32(*(v12 + 240), v23)), vmulq_f32(v24, vaddq_f32(*(v12 + 192), vmulq_f32(*(v12 + 208), v23)))))))))));
        v26 = vminq_f32(vmaxq_f32(v25, *(v12 + 336)), *(v12 + 352));
        v27 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
        v28 = vsubq_f32(v27, vandq_s8(v14, vcgtq_f32(v27, v26)));
        v29 = vsubq_f32(v26, v28);
        v30 = vmulq_f32(v29, v29);
        v31 = vcgtq_f32(*(v12 + 464), v28);
        *(v6 + v9) = veorq_s8(vbslq_s8(*(v12 + 512), v11, vbslq_s8(vcgtq_f32(vandq_s8(v14, vceqq_f32(v25, v25)), v13), vmulq_f32(vaddq_f32(v14, vandq_s8(*(v12 + 480), v31)), vmulq_f32(vaddq_f32(v14, vmulq_f32(v29, vaddq_f32(vaddq_f32(*(v12 + 432), vmulq_f32(v29, *(v12 + 448))), vmulq_f32(v30, vaddq_f32(vaddq_f32(*(v12 + 400), vmulq_f32(*(v12 + 416), v29)), vmulq_f32(v30, vaddq_f32(*(v12 + 368), vmulq_f32(*(v12 + 384), v29)))))))), vshlq_n_s32(vaddq_s32(*(v12 + 496), vcvtq_s32_f32(vaddq_f32(v28, vandq_s8(v19, v31)))), 0x17uLL))), v25)), vandq_s8(*(v12 + 528), v10));
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

uint64_t HgcGammaNoPremult::GetDOD(HgcGammaNoPremult *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcGammaNoPremult::GetROI(HgcGammaNoPremult *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcGammaNoPremult::HgcGammaNoPremult(HgcGammaNoPremult *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872345E8;
  operator new();
}

void HgcGammaNoPremult::~HgcGammaNoPremult(HgcGammaNoPremult *this)
{
  *this = &unk_2872345E8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4027AB4E27);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_2872345E8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4027AB4E27);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGammaNoPremult::~HgcGammaNoPremult(HGNode *this)
{
  *this = &unk_2872345E8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4027AB4E27);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGammaNoPremult::SetParameter(HgcGammaNoPremult *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcGammaNoPremult::GetParameter(HgcGammaNoPremult *this, int a2, float *a3)
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

const char *HgcToneParamCurve1AntiSymmetric::GetProgram(HgcToneParamCurve1AntiSymmetric *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000051c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz);\n    r2.xyz = r1.xyz*half3(hg_Params[1].xyz) + half3(hg_Params[2].xyz);\n    r1.xyz = r1.xyz - half3(hg_Params[3].xyz);\n    r1.w = pow(r2.z, half(hg_Params[0].z));\n    r1.z = select(r1.w, c0.z, r1.z < 0.00000h);\n    output.color0.z = select(float(r1.z), -float(r1.z), float(r0.z) < 0.00000h);\n    r0.z = pow(r2.y, half(hg_Params[0].y));\n    r1.z = pow(r2.x, half(hg_Params[0].x));\n    r0.z = select(r0.z, c0.z, r1.y < 0.00000h);\n    r1.x = select(r1.z, c0.z, r1.x < 0.00000h);\n    output.color0.y = select(float(r0.z), -float(r0.z), float(r0.y) < 0.00000h);\n    output.color0.x = select(float(r1.x), -float(r1.x), float(r0.x) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=d718f972:caaf58f4:2a79117f:c79f3bd7\n//SIG=00400000:00000001:00000001:00000001:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004ab\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz);\n    r2.xyz = r1.xyz*hg_Params[1].xyz + hg_Params[2].xyz;\n    r1.xyz = r1.xyz - hg_Params[3].xyz;\n    r1.w = pow(r2.z, hg_Params[0].z);\n    r1.z = select(r1.w, c0.z, r1.z < 0.00000f);\n    output.color0.z = select(r1.z, -r1.z, r0.z < 0.00000f);\n    r0.z = pow(r2.y, hg_Params[0].y);\n    r1.z = pow(r2.x, hg_Params[0].x);\n    r0.z = select(r0.z, c0.z, r1.y < 0.00000f);\n    r1.x = select(r1.z, c0.z, r1.x < 0.00000f);\n    output.color0.y = select(r0.z, -r0.z, r0.y < 0.00000f);\n    output.color0.x = select(r1.x, -r1.x, r0.x < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=8bd267df:aff60290:d6b8443b:3a9c691b\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004c7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = abs(r0.xyz);\n    r2.xyz = r1.xyz*hg_ProgramLocal1.xyz + hg_ProgramLocal2.xyz;\n    r1.xyz = r1.xyz - hg_ProgramLocal3.xyz;\n    r1.w = pow(r2.z, hg_ProgramLocal0.z);\n    r1.z = r1.z < 0.00000 ? c0.z : r1.w;\n    gl_FragColor.z = r0.z < 0.00000 ? -r1.z : r1.z;\n    r0.z = pow(r2.y, hg_ProgramLocal0.y);\n    r1.z = pow(r2.x, hg_ProgramLocal0.x);\n    r0.z = r1.y < 0.00000 ? c0.z : r0.z;\n    r1.x = r1.x < 0.00000 ? c0.z : r1.z;\n    gl_FragColor.y = r0.y < 0.00000 ? -r0.z : r0.z;\n    gl_FragColor.x = r0.x < 0.00000 ? -r1.x : r1.x;\n    gl_FragColor.w = r0.w;\n}\n//MD5=0e82e012:3c12addf:abe4b0a7:1bdc9d8c\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDFA9D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDFAA04(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDFA9FCLL);
}

uint64_t HgcToneParamCurve1AntiSymmetric::BindTexture(HgcToneParamCurve1AntiSymmetric *this, HGHandler *a2, int a3)
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

uint64_t HgcToneParamCurve1AntiSymmetric::Bind(HgcToneParamCurve1AntiSymmetric *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcToneParamCurve1AntiSymmetric::RenderTile(HgcToneParamCurve1AntiSymmetric *this, HGTile *a2)
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
        v78 = *(v4 + v9);
        v10 = vabsq_f32(v78);
        v11 = *(this + 51);
        v12 = *v11;
        v13 = vaddq_f32(*(v11 + 2), vmulq_f32(v10, *(v11 + 1)));
        v14 = *(v11 + 4);
        v15 = *(v11 + 5);
        v16 = vbslq_s8(vcgtq_f32(vandq_s8(v15, vceqq_f32(vrev64q_s32(*v11), v14)), v14), v15, vrev64q_s32(v13));
        v18 = *(v11 + 6);
        v17 = *(v11 + 7);
        v19 = vorrq_s8(vandq_s8(v16, v18), v15);
        v20 = *(v11 + 8);
        v21 = *(v11 + 9);
        v22 = *(v11 + 10);
        v23 = *(v11 + 11);
        v24 = vandq_s8(v15, vcgtq_f32(v19, v22));
        v25 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v16, 0x17uLL)), vandq_s8(v20, vcgtq_f32(v17, v16))), v21), v24);
        v26 = vsubq_f32(vsubq_f32(v19, v15), vmulq_f32(vmulq_f32(v23, v24), v19));
        v27 = *(v11 + 12);
        v28 = *(v11 + 13);
        v29 = vmulq_f32(v26, v26);
        v30 = *(v11 + 14);
        v31 = *(v11 + 15);
        v32 = *(v11 + 16);
        v33 = *(v11 + 17);
        v34 = *(v11 + 18);
        v35 = *(v11 + 19);
        v37 = *(v11 + 20);
        v36 = *(v11 + 21);
        v38 = vmaxq_f32(vmulq_laneq_f32(vaddq_f32(v25, vmulq_f32(v26, vaddq_f32(v34, vmulq_f32(v26, vaddq_f32(vaddq_f32(v32, vmulq_f32(v26, v33)), vmulq_f32(v29, vaddq_f32(vaddq_f32(v27, vmulq_f32(v28, v26)), vmulq_f32(v29, vaddq_f32(v30, vmulq_f32(v31, v26)))))))))), *v11, 2), v35);
        v39 = *(v11 + 22);
        v40 = *(v11 + 23);
        v41 = *(v11 + 24);
        v42 = *(v11 + 25);
        v43 = vbslq_s8(vcgtq_f32(vandq_s8(v40, vceqq_f32(vextq_s8(v12, v12, 0xCuLL), v41)), v41), v40, vextq_s8(v13, v13, 0xCuLL));
        v44 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
        v45 = vorrq_s8(vandq_s8(v43, v18), v40);
        v46 = vandq_s8(v40, vcgtq_f32(v45, v35));
        v47 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v43, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v39, v43))), v37), v46);
        v48 = vsubq_f32(vsubq_f32(v45, v40), vmulq_f32(vmulq_f32(v34, v46), v45));
        v49 = vsubq_f32(v44, vandq_s8(v15, vcgtq_f32(v44, v38)));
        v50 = vmulq_f32(v48, v48);
        v51 = vsubq_f32(v38, v49);
        v52 = vmaxq_f32(vmulq_lane_f32(vaddq_f32(v47, vmulq_f32(v48, vaddq_f32(v23, vmulq_f32(v48, vaddq_f32(vaddq_f32(v28, vmulq_f32(v27, v48)), vmulq_f32(v50, vaddq_f32(vaddq_f32(v33, vmulq_f32(v32, v48)), vmulq_f32(v50, vaddq_f32(v31, vmulq_f32(v30, v48)))))))))), *v11, 1), v22);
        v53 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
        v54 = vsubq_f32(v53, vandq_s8(v40, vcgtq_f32(v53, v52)));
        v55 = vsubq_f32(v52, v54);
        v56 = vbslq_s8(vcgtq_f32(vandq_s8(v40, vceqq_f32(vextq_s8(v12, v12, 8uLL), v41)), v41), v40, vextq_s8(v13, v13, 8uLL));
        v57 = vorrq_s8(vandq_s8(v56, v18), v40);
        v58 = vandq_s8(v40, vcgtq_f32(v57, v35));
        v59 = vsubq_f32(vsubq_f32(v57, v40), vmulq_f32(vmulq_f32(v34, v58), v57));
        v60 = vaddq_f32(v28, vmulq_f32(v27, v59));
        v61 = vmulq_f32(v59, v59);
        v62 = vmulq_f32(v59, vaddq_f32(v23, vmulq_f32(v59, vaddq_f32(v60, vmulq_f32(v61, vaddq_f32(vaddq_f32(v33, vmulq_f32(v32, v59)), vmulq_f32(v61, vaddq_f32(v31, vmulq_f32(v30, v59)))))))));
        v63 = vmulq_f32(vaddq_f32(v15, vmulq_f32(v51, vaddq_f32(v41, vmulq_f32(v51, vaddq_f32(vaddq_f32(v39, vmulq_f32(v40, v51)), vmulq_f32(vmulq_f32(v51, v51), vaddq_f32(v37, vmulq_f32(v36, v51)))))))), vshlq_n_s32(vaddq_s32(v42, vcvtq_s32_f32(v49)), 0x17uLL));
        v64 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v56, 0x17uLL)), vandq_s8(v36, vcgtq_f32(v39, v56))), v37), v58), v62), COERCE_FLOAT(*v11)), v22);
        v65 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
        v66 = vsubq_f32(v65, vandq_s8(v40, vcgtq_f32(v65, v64)));
        v67 = vsubq_f32(v64, v66);
        v68 = vaddq_f32(v40, vmulq_f32(v55, vaddq_f32(v14, vmulq_f32(v55, vaddq_f32(vaddq_f32(v17, vmulq_f32(v15, v55)), vmulq_f32(vmulq_f32(v55, v55), vaddq_f32(v21, vmulq_f32(v20, v55))))))));
        v69 = vaddq_f32(v14, vmulq_f32(v67, vaddq_f32(vaddq_f32(v17, vmulq_f32(v15, v67)), vmulq_f32(vmulq_f32(v67, v67), vaddq_f32(v21, vmulq_f32(v20, v67))))));
        v70 = *(v11 + 27);
        v71 = vmulq_f32(v67, v69);
        v72 = *(v11 + 26);
        v73 = vbslq_s8(v72, v63, vsubq_f32(v10, *(v11 + 3)));
        v74 = vmulq_f32(vaddq_f32(v40, v71), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v66), v70), 0x17uLL));
        v20.i64[0] = vextq_s8(v74, v73, 0xCuLL).u64[0];
        v21.i64[0] = v73.i64[0];
        v21.i64[1] = v74.i64[1];
        *&v20.u32[2] = vext_s8(*v73.f32, *&vextq_s8(v74, v74, 8uLL), 4uLL);
        v75 = vbslq_s8(*(v11 + 28), vbslq_s8(vcgtq_f32(v41, v20), v41, vbslq_s8(*(v11 + 28), vmulq_f32(v68, vshlq_n_s32(vaddq_s32(v70, vcvtq_s32_f32(v54)), 0x17uLL)), v78)), v78);
        v76 = vandq_s8(v75, v70);
        v74.i64[0] = veorq_s8(v76, vextq_s8(v75, v75, 4uLL)).u64[0];
        v74.i64[1] = veorq_s8(vandq_s8(*&v42, *&v78), vbslq_s8(vcgtq_f32(v41, v73), *&v41, vrev64q_s32(*&v73))).i64[1];
        *(v6 + v9) = vbslq_s8(v72, v75, vbslq_s8(*(v11 + 29), veorq_s8(v76, vbslq_s8(vcgtq_f32(v41, v21), v41, vextq_s8(v21, v21, 8uLL))), v74));
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

uint64_t HgcToneParamCurve1AntiSymmetric::GetDOD(HgcToneParamCurve1AntiSymmetric *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcToneParamCurve1AntiSymmetric::GetROI(HgcToneParamCurve1AntiSymmetric *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcToneParamCurve1AntiSymmetric::HgcToneParamCurve1AntiSymmetric(HgcToneParamCurve1AntiSymmetric *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287234850;
  operator new();
}

void HgcToneParamCurve1AntiSymmetric::~HgcToneParamCurve1AntiSymmetric(HgcToneParamCurve1AntiSymmetric *this)
{
  *this = &unk_287234850;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40048C4DA3);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcToneParamCurve1AntiSymmetric::~HgcToneParamCurve1AntiSymmetric(HGNode *this)
{
  *this = &unk_287234850;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40048C4DA3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcToneParamCurve1AntiSymmetric::SetParameter(HgcToneParamCurve1AntiSymmetric *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcToneParamCurve1AntiSymmetric::GetParameter(HgcToneParamCurve1AntiSymmetric *this, unsigned int a2, float *a3)
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

const char *HgcToneParamCurve2AntiSymmetric::GetProgram(HgcToneParamCurve2AntiSymmetric *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000455\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz);\n    r2.xyz = r1.xyz*half3(hg_Params[1].xyz) + half3(hg_Params[2].xyz);\n    r1.xyz = r1.xyz - half3(hg_Params[4].xyz);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xyz));\n    r2.xyz = r2.xyz + half3(hg_Params[3].xyz);\n    r2.xz = select(r2.xz, half2(hg_Params[3].xz), r1.xz < 0.00000h);\n    output.color0.xz = select(float2(r2.xz), -float2(r2.xz), float2(r0.xz) < 0.00000h);\n    r0.z = select(r2.y, half(hg_Params[3].y), r1.y < 0.00000h);\n    output.color0.y = select(float(r0.z), -float(r0.z), float(r0.y) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=058b8728:b732aed8:ceabb34a:625557cb\n//SIG=00400000:00000001:00000001:00000001:0000:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003eb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz);\n    r2.xyz = r1.xyz*hg_Params[1].xyz + hg_Params[2].xyz;\n    r1.xyz = r1.xyz - hg_Params[4].xyz;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xyz);\n    r2.xyz = r2.xyz + hg_Params[3].xyz;\n    r2.xz = select(r2.xz, hg_Params[3].xz, r1.xz < 0.00000f);\n    output.color0.xz = select(r2.xz, -r2.xz, r0.xz < 0.00000f);\n    r0.z = select(r2.y, hg_Params[3].y, r1.y < 0.00000f);\n    output.color0.y = select(r0.z, -r0.z, r0.y < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=ce2eeb4b:e2a50521:c7bd3e50:b5953cf0\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000048e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    highp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = abs(r0.xyz);\n    r2.xyz = r1.xyz*hg_ProgramLocal1.xyz + hg_ProgramLocal2.xyz;\n    r1.xyz = r1.xyz - hg_ProgramLocal4.xyz;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xyz);\n    r2.xyz = r2.xyz + hg_ProgramLocal3.xyz;\n    r2.xz = vec2(r1.x < 0.00000 ? hg_ProgramLocal3.x : r2.x, r1.z < 0.00000 ? hg_ProgramLocal3.z : r2.z);\n    gl_FragColor.xz = vec2(r0.x < 0.00000 ? -r2.x : r2.x, r0.z < 0.00000 ? -r2.z : r2.z);\n    r0.z = r1.y < 0.00000 ? hg_ProgramLocal3.y : r2.y;\n    gl_FragColor.y = r0.y < 0.00000 ? -r0.z : r0.z;\n    gl_FragColor.w = r0.w;\n}\n//MD5=56d606f4:e7adcee5:7dc2a713:12142499\n//SIG=00000000:00000001:00000001:00000000:0000:0005:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDFB738(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDFB768(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDFB760);
}

uint64_t HgcToneParamCurve2AntiSymmetric::BindTexture(HgcToneParamCurve2AntiSymmetric *this, HGHandler *a2, int a3)
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

uint64_t HgcToneParamCurve2AntiSymmetric::Bind(HgcToneParamCurve2AntiSymmetric *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcToneParamCurve2AntiSymmetric::RenderTile(HgcToneParamCurve2AntiSymmetric *this, HGTile *a2)
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
      v14 = vabsq_f32(v12);
      v15 = vabsq_f32(v13);
      v16 = *(this + 51);
      v17 = *(v16 + 16);
      v19 = *(v16 + 32);
      v18 = *(v16 + 48);
      v20 = vaddq_f32(v19, vmulq_f32(v14, v17));
      v21 = vaddq_f32(v19, vmulq_f32(v15, v17));
      v23 = *(v16 + 64);
      v22 = *(v16 + 80);
      v24 = *(v16 + 96);
      v25 = *(v16 + 112);
      v26 = vcgtq_f32(vandq_s8(v24, vceqq_f32(*v16, v22)), v22);
      v27 = vbslq_s8(v26, v24, v20);
      v28 = vbslq_s8(v26, v24, v21);
      v29 = vorrq_s8(vandq_s8(v25, v27), v24);
      v30 = vorrq_s8(vandq_s8(v25, v28), v24);
      v31 = *(v16 + 128);
      v32 = *(v16 + 144);
      v33 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v31, v27)));
      v34 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v31, v28)));
      v35 = *(v16 + 160);
      v36 = *(v16 + 176);
      v37 = vsubq_f32(v33, v35);
      v38 = vsubq_f32(v34, v35);
      v39 = vandq_s8(v24, vcgtq_f32(v29, v36));
      v40 = vandq_s8(v24, vcgtq_f32(v30, v36));
      v41 = *(v16 + 192);
      v42 = *(v16 + 208);
      v43 = vaddq_f32(v37, v39);
      v44 = vsubq_f32(vsubq_f32(v29, v24), vmulq_f32(vmulq_f32(v41, v39), v29));
      v45 = vsubq_f32(vsubq_f32(v30, v24), vmulq_f32(vmulq_f32(v41, v40), v30));
      v46 = vmulq_f32(v44, v44);
      v47 = *(v16 + 224);
      v48 = *(v16 + 240);
      v49 = vaddq_f32(v42, vmulq_f32(v47, v44));
      v50 = vaddq_f32(v42, vmulq_f32(v47, v45));
      v51 = *(v16 + 256);
      v52 = *(v16 + 272);
      v53 = vaddq_f32(v48, vmulq_f32(v51, v44));
      v54 = vaddq_f32(v48, vmulq_f32(v51, v45));
      v55 = *(v16 + 288);
      v56 = *(v16 + 304);
      v57 = vaddq_f32(v52, vmulq_f32(v44, v55));
      v58 = vaddq_f32(v52, vmulq_f32(v45, v55));
      v59 = vmulq_f32(v45, v45);
      v60 = vmulq_f32(*v16, vaddq_f32(v43, vmulq_f32(v44, vaddq_f32(v56, vmulq_f32(v44, vaddq_f32(v57, vmulq_f32(v46, vaddq_f32(v49, vmulq_f32(v46, v53)))))))));
      v61 = vmulq_f32(*v16, vaddq_f32(vaddq_f32(v38, v40), vmulq_f32(v45, vaddq_f32(v56, vmulq_f32(v45, vaddq_f32(v58, vmulq_f32(v59, vaddq_f32(v50, vmulq_f32(v59, v54)))))))));
      v62 = *(v16 + 320);
      v63 = *(v16 + 336);
      v64 = vsubq_f32(v14, v23);
      v65 = vmaxq_f32(v60, v62);
      v66 = vmaxq_f32(v61, v62);
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
      v68 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
      v69 = vsubq_f32(v67, vandq_s8(v24, vcgtq_f32(v67, v65)));
      v70 = vsubq_f32(v68, vandq_s8(v24, vcgtq_f32(v68, v66)));
      v71 = vsubq_f32(v65, v69);
      v72 = vsubq_f32(v66, v70);
      v73 = *(v16 + 352);
      v74 = *(v16 + 368);
      v75 = vaddq_f32(v63, vmulq_f32(v73, v71));
      v76 = vaddq_f32(v63, vmulq_f32(v73, v72));
      v78 = *(v16 + 384);
      v77 = *(v16 + 400);
      v79 = vaddq_f32(v24, vmulq_f32(v71, vaddq_f32(v77, vmulq_f32(v71, vaddq_f32(vaddq_f32(v74, vmulq_f32(v71, v78)), vmulq_f32(vmulq_f32(v71, v71), v75))))));
      v80 = vaddq_f32(v24, vmulq_f32(v72, vaddq_f32(v77, vmulq_f32(v72, vaddq_f32(vaddq_f32(v74, vmulq_f32(v78, v72)), vmulq_f32(vmulq_f32(v72, v72), v76))))));
      v81 = vcvtq_s32_f32(v70);
      v82 = *(v16 + 416);
      v83 = *(v16 + 432);
      v84 = vsubq_f32(v15, v23);
      v85 = vaddq_f32(v18, vmulq_f32(v79, vshlq_n_s32(vaddq_s32(v82, vcvtq_s32_f32(v69)), 0x17uLL)));
      v86 = vaddq_f32(v18, vmulq_f32(v80, vshlq_n_s32(vaddq_s32(v82, v81), 0x17uLL)));
      v87 = vcgtq_f32(v22, v64);
      v88 = vcgtq_f32(v22, v84);
      v89 = vbslq_s8(v83, v85, vbslq_s8(v87, v18, v85));
      v90 = vbslq_s8(v83, v86, vbslq_s8(v88, v18, v86));
      v91 = *(v16 + 448);
      v92 = *(v16 + 464);
      v93 = vandq_s8(v91, v13);
      v94 = veorq_s8(v89, vandq_s8(v91, v12));
      v95 = vbslq_s8(v87, v18, v89);
      v96 = vbslq_s8(v88, v18, v90);
      v97 = vbslq_s8(v92, vextq_s8(v95, v95, 0xCuLL), v12);
      v98 = vbslq_s8(v92, vextq_s8(v96, v96, 0xCuLL), v13);
      v99 = vbslq_s8(v83, veorq_s8(vandq_s8(v98, v91), vextq_s8(v98, v98, 4uLL)), veorq_s8(v90, v93));
      v100 = *(v16 + 480);
      v101 = (v5 + v10);
      v101[-1] = vbslq_s8(v100, v97, vbslq_s8(v83, veorq_s8(vandq_s8(v97, v91), vextq_s8(v97, v97, 4uLL)), v94));
      *v101 = vbslq_s8(v100, v98, v99);
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v102 = 16 * v9;
    v103 = *(v6 + v102);
    v104 = vabsq_f32(v103);
    v105 = *(this + 51);
    v106 = *(v105 + 48);
    v107 = *(v105 + 80);
    v108 = *(v105 + 96);
    v109 = vbslq_s8(vcgtq_f32(vandq_s8(v108, vceqq_f32(*v105, v107)), v107), v108, vaddq_f32(*(v105 + 32), vmulq_f32(v104, *(v105 + 16))));
    v110 = vorrq_s8(vandq_s8(*(v105 + 112), v109), v108);
    v111 = vandq_s8(v108, vcgtq_f32(v110, *(v105 + 176)));
    v112 = vsubq_f32(vsubq_f32(v110, v108), vmulq_f32(vmulq_f32(*(v105 + 192), v111), v110));
    v113 = vmulq_f32(v112, v112);
    v114 = vmaxq_f32(vmulq_f32(*v105, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v109, 0x17uLL)), vandq_s8(*(v105 + 144), vcgtq_f32(*(v105 + 128), v109))), *(v105 + 160)), v111), vmulq_f32(v112, vaddq_f32(*(v105 + 304), vmulq_f32(v112, vaddq_f32(vaddq_f32(*(v105 + 272), vmulq_f32(v112, *(v105 + 288))), vmulq_f32(v113, vaddq_f32(vaddq_f32(*(v105 + 208), vmulq_f32(*(v105 + 224), v112)), vmulq_f32(v113, vaddq_f32(*(v105 + 240), vmulq_f32(*(v105 + 256), v112))))))))))), *(v105 + 320));
    v115 = vcvtq_f32_s32(vcvtq_s32_f32(v114));
    v116 = vsubq_f32(v115, vandq_s8(v108, vcgtq_f32(v115, v114)));
    v117 = vsubq_f32(v114, v116);
    v118 = *(v105 + 432);
    v119 = vaddq_f32(v106, vmulq_f32(vaddq_f32(v108, vmulq_f32(v117, vaddq_f32(*(v105 + 400), vmulq_f32(v117, vaddq_f32(vaddq_f32(*(v105 + 368), vmulq_f32(*(v105 + 384), v117)), vmulq_f32(vmulq_f32(v117, v117), vaddq_f32(*(v105 + 336), vmulq_f32(*(v105 + 352), v117)))))))), vshlq_n_s32(vaddq_s32(*(v105 + 416), vcvtq_s32_f32(v116)), 0x17uLL)));
    v120 = vcgtq_f32(v107, vsubq_f32(v104, *(v105 + 64)));
    v121 = vbslq_s8(v118, v119, vbslq_s8(v120, v106, v119));
    v122 = *(v105 + 448);
    v123 = veorq_s8(v121, vandq_s8(v122, v103));
    v124 = vbslq_s8(v120, v106, v121);
    v125 = vbslq_s8(*(v105 + 464), vextq_s8(v124, v124, 0xCuLL), v103);
    *(v5 + v102) = vbslq_s8(*(v105 + 480), v125, vbslq_s8(v118, veorq_s8(vandq_s8(v125, v122), vextq_s8(v125, v125, 4uLL)), v123));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcToneParamCurve2AntiSymmetric::GetDOD(HgcToneParamCurve2AntiSymmetric *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcToneParamCurve2AntiSymmetric::GetROI(HgcToneParamCurve2AntiSymmetric *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcToneParamCurve2AntiSymmetric::HgcToneParamCurve2AntiSymmetric(HgcToneParamCurve2AntiSymmetric *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287234AB8;
  operator new();
}

void HgcToneParamCurve2AntiSymmetric::~HgcToneParamCurve2AntiSymmetric(HgcToneParamCurve2AntiSymmetric *this)
{
  *this = &unk_287234AB8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4051E21E55);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcToneParamCurve2AntiSymmetric::~HgcToneParamCurve2AntiSymmetric(HGNode *this)
{
  *this = &unk_287234AB8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4051E21E55);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcToneParamCurve2AntiSymmetric::SetParameter(HgcToneParamCurve2AntiSymmetric *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcToneParamCurve2AntiSymmetric::GetParameter(HgcToneParamCurve2AntiSymmetric *this, unsigned int a2, float *a3)
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

const char *HgcToneParamCurve3AntiSymmetric::GetProgram(HgcToneParamCurve3AntiSymmetric *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000438\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = abs(r0.xyz);\n    r2.xyz = r1.xyz*half3(hg_Params[1].xyz) + half3(hg_Params[2].xyz);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xyz));\n    r3.xyz = r1.xyz*half3(hg_Params[3].xyz) + -r2.xyz;\n    r1.xyz = half3(r1.xyz < half3(hg_Params[4].xyz));\n    r2.xyz = r1.xyz*r3.xyz + r2.xyz;\n    r1.xyz = r2.xyz*c0.xxx;\n    r0.xyz = half3(r0.xyz < c0.yyy);\n    output.color0.xyz = float3(r0.xyz)*float3(r1.xyz) + float3(r2.xyz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=c5899dcc:9555caf0:c3bcf81f:37a2c769\n//SIG=00400000:00000001:00000001:00000001:0001:0005:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003f4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = abs(r0.xyz);\n    r2.xyz = r1.xyz*hg_Params[1].xyz + hg_Params[2].xyz;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xyz);\n    r3.xyz = r1.xyz*hg_Params[3].xyz + -r2.xyz;\n    r1.xyz = float3(r1.xyz < hg_Params[4].xyz);\n    r2.xyz = r1.xyz*r3.xyz + r2.xyz;\n    r1.xyz = r2.xyz*c0.xxx;\n    r0.xyz = float3(r0.xyz < c0.yyy);\n    output.color0.xyz = r0.xyz*r1.xyz + r2.xyz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=eef59206:cc43f70e:921111e4:957edf63\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000046c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = abs(r0.xyz);\n    r2.xyz = r1.xyz*hg_ProgramLocal1.xyz + hg_ProgramLocal2.xyz;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xyz);\n    r3.xyz = r1.xyz*hg_ProgramLocal3.xyz + -r2.xyz;\n    r1.xyz = vec3(lessThan(r1.xyz, hg_ProgramLocal4.xyz));\n    r2.xyz = r1.xyz*r3.xyz + r2.xyz;\n    r1.xyz = r2.xyz*c0.xxx;\n    r0.xyz = vec3(lessThan(r0.xyz, c0.yyy));\n    gl_FragColor.xyz = r0.xyz*r1.xyz + r2.xyz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=22cc40e9:55017b8d:7a25fcde:8c47c86f\n//SIG=00000000:00000001:00000001:00000000:0001:0005:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDFC568(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDFC598(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDFC590);
}

uint64_t HgcToneParamCurve3AntiSymmetric::BindTexture(HgcToneParamCurve3AntiSymmetric *this, HGHandler *a2, int a3)
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

uint64_t HgcToneParamCurve3AntiSymmetric::Bind(HgcToneParamCurve3AntiSymmetric *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcToneParamCurve3AntiSymmetric::RenderTile(HgcToneParamCurve3AntiSymmetric *this, HGTile *a2)
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
      v14 = vabsq_f32(v12);
      v15 = vabsq_f32(v13);
      v16 = *(this + 51);
      v17 = *(v16 + 16);
      v18 = *(v16 + 32);
      v19 = *(v16 + 48);
      v20 = vaddq_f32(v18, vmulq_f32(v14, v17));
      v21 = vaddq_f32(v18, vmulq_f32(v15, v17));
      v23 = *(v16 + 64);
      v22 = *(v16 + 80);
      v24 = *(v16 + 96);
      v25 = *(v16 + 112);
      v26 = vcgtq_f32(vandq_s8(v24, vceqq_f32(*v16, v22)), v22);
      v27 = vbslq_s8(v26, v24, v20);
      v28 = vbslq_s8(v26, v24, v21);
      v29 = vorrq_s8(vandq_s8(v25, v27), v24);
      v30 = vorrq_s8(vandq_s8(v25, v28), v24);
      v31 = *(v16 + 128);
      v32 = *(v16 + 144);
      v33 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v27, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v31, v27)));
      v34 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v32, vcgtq_f32(v31, v28)));
      v35 = *(v16 + 160);
      v36 = *(v16 + 176);
      v37 = vsubq_f32(v33, v35);
      v38 = vsubq_f32(v34, v35);
      v39 = vandq_s8(v24, vcgtq_f32(v29, v36));
      v40 = vandq_s8(v24, vcgtq_f32(v30, v36));
      v41 = *(v16 + 192);
      v42 = *(v16 + 208);
      v43 = vaddq_f32(v37, v39);
      v44 = vsubq_f32(vsubq_f32(v29, v24), vmulq_f32(vmulq_f32(v41, v39), v29));
      v45 = vsubq_f32(vsubq_f32(v30, v24), vmulq_f32(vmulq_f32(v41, v40), v30));
      v46 = vmulq_f32(v44, v44);
      v47 = *(v16 + 224);
      v48 = *(v16 + 240);
      v49 = vaddq_f32(v42, vmulq_f32(v47, v44));
      v50 = vaddq_f32(v42, vmulq_f32(v47, v45));
      v51 = *(v16 + 256);
      v52 = *(v16 + 272);
      v53 = vaddq_f32(v48, vmulq_f32(v51, v44));
      v54 = vaddq_f32(v48, vmulq_f32(v51, v45));
      v55 = *(v16 + 288);
      v56 = *(v16 + 304);
      v57 = vaddq_f32(v52, vmulq_f32(v44, v55));
      v58 = vaddq_f32(v52, vmulq_f32(v45, v55));
      v59 = vmulq_f32(v45, v45);
      v60 = vmulq_f32(*v16, vaddq_f32(v43, vmulq_f32(v44, vaddq_f32(v56, vmulq_f32(v44, vaddq_f32(v57, vmulq_f32(v46, vaddq_f32(v49, vmulq_f32(v46, v53)))))))));
      v61 = vmulq_f32(*v16, vaddq_f32(vaddq_f32(v38, v40), vmulq_f32(v45, vaddq_f32(v56, vmulq_f32(v45, vaddq_f32(v58, vmulq_f32(v59, vaddq_f32(v50, vmulq_f32(v59, v54)))))))));
      v62 = *(v16 + 320);
      v63 = *(v16 + 336);
      v64 = vmaxq_f32(v60, v62);
      v65 = vmaxq_f32(v61, v62);
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
      v68 = vsubq_f32(v66, vandq_s8(v24, vcgtq_f32(v66, v64)));
      v69 = vsubq_f32(v67, vandq_s8(v24, vcgtq_f32(v67, v65)));
      v70 = vsubq_f32(v64, v68);
      v71 = vsubq_f32(v65, v69);
      v72 = *(v16 + 352);
      v73 = *(v16 + 368);
      v74 = *(v16 + 384);
      v75 = *(v16 + 400);
      v76 = vmulq_f32(v71, vaddq_f32(v75, vmulq_f32(v71, vaddq_f32(vaddq_f32(v73, vmulq_f32(v74, v71)), vmulq_f32(vmulq_f32(v71, v71), vaddq_f32(v63, vmulq_f32(v72, v71)))))));
      v77 = vaddq_f32(v24, vmulq_f32(v70, vaddq_f32(v75, vmulq_f32(v70, vaddq_f32(vaddq_f32(v73, vmulq_f32(v70, v74)), vmulq_f32(vmulq_f32(v70, v70), vaddq_f32(v63, vmulq_f32(v72, v70))))))));
      v78 = vcvtq_s32_f32(v69);
      v79 = *(v16 + 416);
      v80 = *(v16 + 432);
      v81 = vmulq_f32(v77, vshlq_n_s32(vaddq_s32(v79, vcvtq_s32_f32(v68)), 0x17uLL));
      v82 = vmulq_f32(vaddq_f32(v24, v76), vshlq_n_s32(vaddq_s32(v79, v78), 0x17uLL));
      v83 = vaddq_f32(v81, vmulq_f32(vandq_s8(v24, vcgtq_f32(v23, v14)), vsubq_f32(vmulq_f32(v14, v19), v81)));
      v84 = vaddq_f32(v82, vmulq_f32(vandq_s8(v24, vcgtq_f32(v23, v15)), vsubq_f32(vmulq_f32(v15, v19), v82)));
      v85 = vandq_s8(v24, vcgtq_f32(v22, v12));
      v86 = vandq_s8(v24, vcgtq_f32(v22, v13));
      v87 = *(v16 + 448);
      v88 = (v5 + v10);
      v88[-1] = vbslq_s8(v87, v12, vaddq_f32(v83, vmulq_f32(vmulq_f32(v80, v83), vbslq_s8(v87, v12, v85))));
      *v88 = vbslq_s8(v87, v13, vaddq_f32(v84, vmulq_f32(vmulq_f32(v80, v84), vbslq_s8(v87, v13, v86))));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v89 = 16 * v9;
    v90 = *(v6 + v89);
    v91 = vabsq_f32(v90);
    v92 = *(this + 51);
    v93 = *(v92 + 80);
    v94 = *(v92 + 96);
    v95 = vbslq_s8(vcgtq_f32(vandq_s8(v94, vceqq_f32(*v92, v93)), v93), v94, vaddq_f32(*(v92 + 32), vmulq_f32(v91, *(v92 + 16))));
    v96 = vorrq_s8(vandq_s8(*(v92 + 112), v95), v94);
    v97 = vandq_s8(v94, vcgtq_f32(v96, *(v92 + 176)));
    v98 = vsubq_f32(vsubq_f32(v96, v94), vmulq_f32(vmulq_f32(*(v92 + 192), v97), v96));
    v99 = vmulq_f32(v98, v98);
    v100 = vmaxq_f32(vmulq_f32(*v92, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v95, 0x17uLL)), vandq_s8(*(v92 + 144), vcgtq_f32(*(v92 + 128), v95))), *(v92 + 160)), v97), vmulq_f32(v98, vaddq_f32(*(v92 + 304), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(v92 + 272), vmulq_f32(v98, *(v92 + 288))), vmulq_f32(v99, vaddq_f32(vaddq_f32(*(v92 + 208), vmulq_f32(*(v92 + 224), v98)), vmulq_f32(v99, vaddq_f32(*(v92 + 240), vmulq_f32(*(v92 + 256), v98))))))))))), *(v92 + 320));
    v101 = vcvtq_f32_s32(vcvtq_s32_f32(v100));
    v102 = vsubq_f32(v101, vandq_s8(v94, vcgtq_f32(v101, v100)));
    v103 = vsubq_f32(v100, v102);
    v104 = vmulq_f32(vaddq_f32(v94, vmulq_f32(v103, vaddq_f32(*(v92 + 400), vmulq_f32(v103, vaddq_f32(vaddq_f32(*(v92 + 368), vmulq_f32(*(v92 + 384), v103)), vmulq_f32(vmulq_f32(v103, v103), vaddq_f32(*(v92 + 336), vmulq_f32(*(v92 + 352), v103)))))))), vshlq_n_s32(vaddq_s32(*(v92 + 416), vcvtq_s32_f32(v102)), 0x17uLL));
    v105 = vaddq_f32(v104, vmulq_f32(vandq_s8(v94, vcgtq_f32(*(v92 + 64), v91)), vsubq_f32(vmulq_f32(v91, *(v92 + 48)), v104)));
    *(v5 + v89) = vbslq_s8(*(v92 + 448), v90, vaddq_f32(v105, vmulq_f32(vmulq_f32(*(v92 + 432), v105), vbslq_s8(*(v92 + 448), v90, vandq_s8(v94, vcgtq_f32(v93, v90))))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcToneParamCurve3AntiSymmetric::GetDOD(HgcToneParamCurve3AntiSymmetric *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcToneParamCurve3AntiSymmetric::GetROI(HgcToneParamCurve3AntiSymmetric *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcToneParamCurve3AntiSymmetric::HgcToneParamCurve3AntiSymmetric(HgcToneParamCurve3AntiSymmetric *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287234D20;
  operator new();
}

void HgcToneParamCurve3AntiSymmetric::~HgcToneParamCurve3AntiSymmetric(HgcToneParamCurve3AntiSymmetric *this)
{
  *this = &unk_287234D20;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4019C028F0);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcToneParamCurve3AntiSymmetric::~HgcToneParamCurve3AntiSymmetric(HGNode *this)
{
  *this = &unk_287234D20;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019C028F0);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcToneParamCurve3AntiSymmetric::SetParameter(HgcToneParamCurve3AntiSymmetric *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcToneParamCurve3AntiSymmetric::GetParameter(HgcToneParamCurve3AntiSymmetric *this, unsigned int a2, float *a3)
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

const char *HgcToneParamCurve4AntiSymmetric::GetProgram(HgcToneParamCurve4AntiSymmetric *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000494\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz);\n    r2.xyz = r1.xyz*half3(hg_Params[1].xyz) + half3(hg_Params[2].xyz);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xyz));\n    r2.xyz = r2.xyz + half3(hg_Params[5].xyz);\n    r3.xyz = r1.xyz*half3(hg_Params[3].xyz);\n    r1.xyz = r1.xyz - half3(hg_Params[4].xyz);\n    r3.xyz = r3.xyz + half3(hg_Params[6].xyz);\n    r1.xz = select(r2.xz, r3.xz, r1.xz < 0.00000h);\n    output.color0.xz = select(float2(r1.xz), -float2(r1.xz), float2(r0.xz) < 0.00000h);\n    r0.z = select(r2.y, r3.y, r1.y < 0.00000h);\n    output.color0.y = select(float(r0.z), -float(r0.z), float(r0.y) < 0.00000h);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=6701f725:e5cd2a86:d8f2e6e4:94645d52\n//SIG=00400000:00000001:00000001:00000001:0000:0007:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000429\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fabs(r0.xyz);\n    r2.xyz = r1.xyz*hg_Params[1].xyz + hg_Params[2].xyz;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xyz);\n    r2.xyz = r2.xyz + hg_Params[5].xyz;\n    r3.xyz = r1.xyz*hg_Params[3].xyz;\n    r1.xyz = r1.xyz - hg_Params[4].xyz;\n    r3.xyz = r3.xyz + hg_Params[6].xyz;\n    r1.xz = select(r2.xz, r3.xz, r1.xz < 0.00000f);\n    output.color0.xz = select(r1.xz, -r1.xz, r0.xz < 0.00000f);\n    r0.z = select(r2.y, r3.y, r1.y < 0.00000f);\n    output.color0.y = select(r0.z, -r0.z, r0.y < 0.00000f);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=e8a9e9fa:346b61d9:9c01e056:7ecca853\n//SIG=00000000:00000001:00000001:00000000:0000:0007:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000508\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = abs(r0.xyz);\n    r2.xyz = r1.xyz*hg_ProgramLocal1.xyz + hg_ProgramLocal2.xyz;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xyz);\n    r2.xyz = r2.xyz + hg_ProgramLocal5.xyz;\n    r3.xyz = r1.xyz*hg_ProgramLocal3.xyz;\n    r1.xyz = r1.xyz - hg_ProgramLocal4.xyz;\n    r3.xyz = r3.xyz + hg_ProgramLocal6.xyz;\n    r1.xz = vec2(r1.x < 0.00000 ? r3.x : r2.x, r1.z < 0.00000 ? r3.z : r2.z);\n    gl_FragColor.xz = vec2(r0.x < 0.00000 ? -r1.x : r1.x, r0.z < 0.00000 ? -r1.z : r1.z);\n    r0.z = r1.y < 0.00000 ? r3.y : r2.y;\n    gl_FragColor.y = r0.y < 0.00000 ? -r0.z : r0.z;\n    gl_FragColor.w = r0.w;\n}\n//MD5=e8be88c2:c272e374:876071e8:50ed2741\n//SIG=00000000:00000001:00000001:00000000:0000:0007:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDFD354(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDFD384(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDFD37CLL);
}

uint64_t HgcToneParamCurve4AntiSymmetric::BindTexture(HgcToneParamCurve4AntiSymmetric *this, HGHandler *a2, int a3)
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

uint64_t HgcToneParamCurve4AntiSymmetric::Bind(HgcToneParamCurve4AntiSymmetric *this, HGHandler *a2)
{
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

uint64_t HgcToneParamCurve4AntiSymmetric::RenderTile(HgcToneParamCurve4AntiSymmetric *this, HGTile *a2)
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
      v14 = vabsq_f32(v12);
      v15 = vabsq_f32(v13);
      v16 = *(this + 51);
      v17 = *(v16 + 16);
      v19 = *(v16 + 32);
      v18 = *(v16 + 48);
      v20 = vaddq_f32(v19, vmulq_f32(v14, v17));
      v21 = vmulq_f32(v15, v17);
      v23 = *(v16 + 96);
      v22 = *(v16 + 112);
      v24 = vaddq_f32(v19, v21);
      v25 = *(v16 + 128);
      v26 = *(v16 + 144);
      v27 = vcgtq_f32(vandq_s8(v25, vceqq_f32(*v16, v22)), v22);
      v28 = vbslq_s8(v27, v25, v20);
      v29 = vbslq_s8(v27, v25, v24);
      v30 = vorrq_s8(vandq_s8(v26, v28), v25);
      v31 = *(v16 + 160);
      v32 = *(v16 + 176);
      v33 = vorrq_s8(vandq_s8(v26, v29), v25);
      v34 = vcgtq_f32(v31, v28);
      v35 = vandq_s8(v32, vcgtq_f32(v31, v29));
      v36 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v32, v34));
      v37 = *(v16 + 192);
      v38 = *(v16 + 208);
      v39 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), v35);
      v40 = vsubq_f32(v36, v37);
      v41 = vandq_s8(v25, vcgtq_f32(v30, v38));
      v42 = vandq_s8(v25, vcgtq_f32(v33, v38));
      v43 = vsubq_f32(v39, v37);
      v44 = *(v16 + 224);
      v45 = *(v16 + 240);
      v46 = vaddq_f32(v40, v41);
      v47 = vsubq_f32(vsubq_f32(v30, v25), vmulq_f32(vmulq_f32(v44, v41), v30));
      v48 = vsubq_f32(vsubq_f32(v33, v25), vmulq_f32(vmulq_f32(v44, v42), v33));
      v49 = vmulq_f32(v47, v47);
      v50 = *(v16 + 256);
      v51 = *(v16 + 272);
      v52 = *(v16 + 288);
      v53 = *(v16 + 304);
      v54 = vaddq_f32(v45, vmulq_f32(v50, v47));
      v55 = vaddq_f32(v51, vmulq_f32(v52, v47));
      v56 = vaddq_f32(v51, vmulq_f32(v52, v48));
      v57 = vaddq_f32(v45, vmulq_f32(v50, v48));
      v58 = *(v16 + 320);
      v59 = *(v16 + 336);
      v60 = vaddq_f32(v53, vmulq_f32(v47, v58));
      v61 = vaddq_f32(v53, vmulq_f32(v48, v58));
      v62 = vmulq_f32(v48, v48);
      v63 = vmulq_f32(*v16, vaddq_f32(v46, vmulq_f32(v47, vaddq_f32(v59, vmulq_f32(v47, vaddq_f32(v60, vmulq_f32(v49, vaddq_f32(v54, vmulq_f32(v49, v55)))))))));
      v64 = vmulq_f32(*v16, vaddq_f32(vaddq_f32(v43, v42), vmulq_f32(v48, vaddq_f32(v59, vmulq_f32(v48, vaddq_f32(v61, vmulq_f32(v62, vaddq_f32(v57, vmulq_f32(v62, v56)))))))));
      v65 = *(v16 + 352);
      v66 = *(v16 + 368);
      v67 = vmaxq_f32(v63, v65);
      v68 = vmaxq_f32(v64, v65);
      v69 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
      v70 = vcvtq_f32_s32(vcvtq_s32_f32(v68));
      v71 = vsubq_f32(v69, vandq_s8(v25, vcgtq_f32(v69, v67)));
      v72 = vsubq_f32(v70, vandq_s8(v25, vcgtq_f32(v70, v68)));
      v73 = vsubq_f32(v67, v71);
      v74 = vsubq_f32(v68, v72);
      v75 = *(v16 + 384);
      v76 = *(v16 + 400);
      v77 = vaddq_f32(v66, vmulq_f32(v75, v73));
      v78 = vaddq_f32(v66, vmulq_f32(v75, v74));
      v79 = *(v16 + 416);
      v80 = *(v16 + 432);
      v81 = vmulq_f32(v74, vaddq_f32(v80, vmulq_f32(v74, vaddq_f32(vaddq_f32(v76, vmulq_f32(v79, v74)), vmulq_f32(vmulq_f32(v74, v74), v78)))));
      v82 = vcvtq_s32_f32(v72);
      v83 = *(v16 + 448);
      v84 = *(v16 + 464);
      v85 = vaddq_f32(v25, v81);
      v86 = vmulq_f32(vaddq_f32(v25, vmulq_f32(v73, vaddq_f32(v80, vmulq_f32(v73, vaddq_f32(vaddq_f32(v76, vmulq_f32(v73, v79)), vmulq_f32(vmulq_f32(v73, v73), v77)))))), vshlq_n_s32(vaddq_s32(v83, vcvtq_s32_f32(v71)), 0x17uLL));
      v87 = vmulq_f32(v85, vshlq_n_s32(vaddq_s32(v83, v82), 0x17uLL));
      v89 = *(v16 + 64);
      v88 = *(v16 + 80);
      v90 = vaddq_f32(v88, v86);
      v91 = vmulq_f32(v14, v18);
      v92 = vmulq_f32(v15, v18);
      v93 = vaddq_f32(v88, v87);
      v94 = vsubq_f32(v14, v89);
      v95 = vsubq_f32(v15, v89);
      v96 = vaddq_f32(v91, v23);
      v97 = vaddq_f32(v92, v23);
      v98 = vbslq_s8(v84, v94, vbslq_s8(vcgtq_f32(v22, v94), v96, v90));
      v99 = vbslq_s8(v84, v95, vbslq_s8(vcgtq_f32(v22, v95), v97, v93));
      v100 = *(v16 + 480);
      v101 = *(v16 + 496);
      v102 = vandq_s8(v100, v13);
      v103 = veorq_s8(v98, vandq_s8(v100, v12));
      v104 = vbslq_s8(vcgtq_f32(v22, v98), v96, v90);
      v105 = vbslq_s8(vcgtq_f32(v22, v99), v97, v93);
      v106 = vbslq_s8(v101, vextq_s8(v104, v104, 0xCuLL), v12);
      v107 = vbslq_s8(v101, vextq_s8(v105, v105, 0xCuLL), v13);
      v108 = *(v16 + 512);
      v109 = (v5 + v10);
      v109[-1] = vbslq_s8(v108, v106, vbslq_s8(v84, veorq_s8(vandq_s8(v106, v100), vextq_s8(v106, v106, 4uLL)), v103));
      *v109 = vbslq_s8(v108, v107, vbslq_s8(v84, veorq_s8(vandq_s8(v107, v100), vextq_s8(v107, v107, 4uLL)), veorq_s8(v99, v102)));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v110 = 16 * v9;
    v111 = *(v6 + v110);
    v112 = vabsq_f32(v111);
    v113 = *(this + 51);
    v114 = *(v113 + 112);
    v115 = *(v113 + 128);
    v116 = vbslq_s8(vcgtq_f32(vandq_s8(v115, vceqq_f32(*v113, v114)), v114), v115, vaddq_f32(*(v113 + 32), vmulq_f32(v112, *(v113 + 16))));
    v117 = vorrq_s8(vandq_s8(*(v113 + 144), v116), v115);
    v118 = vandq_s8(v115, vcgtq_f32(v117, *(v113 + 208)));
    v119 = vsubq_f32(vsubq_f32(v117, v115), vmulq_f32(vmulq_f32(*(v113 + 224), v118), v117));
    v120 = vmulq_f32(v119, v119);
    v121 = vmaxq_f32(vmulq_f32(*v113, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v116, 0x17uLL)), vandq_s8(*(v113 + 176), vcgtq_f32(*(v113 + 160), v116))), *(v113 + 192)), v118), vmulq_f32(v119, vaddq_f32(*(v113 + 336), vmulq_f32(v119, vaddq_f32(vaddq_f32(*(v113 + 304), vmulq_f32(v119, *(v113 + 320))), vmulq_f32(v120, vaddq_f32(vaddq_f32(*(v113 + 240), vmulq_f32(*(v113 + 256), v119)), vmulq_f32(v120, vaddq_f32(*(v113 + 272), vmulq_f32(*(v113 + 288), v119))))))))))), *(v113 + 352));
    v122 = vcvtq_f32_s32(vcvtq_s32_f32(v121));
    v123 = vsubq_f32(v122, vandq_s8(v115, vcgtq_f32(v122, v121)));
    v124 = vsubq_f32(v121, v123);
    v125 = *(v113 + 464);
    v126 = vaddq_f32(*(v113 + 80), vmulq_f32(vaddq_f32(v115, vmulq_f32(v124, vaddq_f32(*(v113 + 432), vmulq_f32(v124, vaddq_f32(vaddq_f32(*(v113 + 400), vmulq_f32(*(v113 + 416), v124)), vmulq_f32(vmulq_f32(v124, v124), vaddq_f32(*(v113 + 368), vmulq_f32(*(v113 + 384), v124)))))))), vshlq_n_s32(vaddq_s32(*(v113 + 448), vcvtq_s32_f32(v123)), 0x17uLL)));
    v127 = vmulq_f32(v112, *(v113 + 48));
    v128 = vsubq_f32(v112, *(v113 + 64));
    v129 = vaddq_f32(v127, *(v113 + 96));
    v130 = vbslq_s8(v125, v128, vbslq_s8(vcgtq_f32(v114, v128), v129, v126));
    v131 = *(v113 + 480);
    v132 = veorq_s8(v130, vandq_s8(v131, v111));
    v133 = vbslq_s8(vcgtq_f32(v114, v130), v129, v126);
    v134 = vbslq_s8(*(v113 + 496), vextq_s8(v133, v133, 0xCuLL), v111);
    *(v5 + v110) = vbslq_s8(*(v113 + 512), v134, vbslq_s8(v125, veorq_s8(vandq_s8(v134, v131), vextq_s8(v134, v134, 4uLL)), v132));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcToneParamCurve4AntiSymmetric::GetDOD(HgcToneParamCurve4AntiSymmetric *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcToneParamCurve4AntiSymmetric::GetROI(HgcToneParamCurve4AntiSymmetric *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcToneParamCurve4AntiSymmetric::HgcToneParamCurve4AntiSymmetric(HgcToneParamCurve4AntiSymmetric *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287234F88;
  operator new();
}

void HgcToneParamCurve4AntiSymmetric::~HgcToneParamCurve4AntiSymmetric(HgcToneParamCurve4AntiSymmetric *this)
{
  *this = &unk_287234F88;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C409F0D1415);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcToneParamCurve4AntiSymmetric::~HgcToneParamCurve4AntiSymmetric(HGNode *this)
{
  *this = &unk_287234F88;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409F0D1415);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcToneParamCurve4AntiSymmetric::SetParameter(HgcToneParamCurve4AntiSymmetric *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcToneParamCurve4AntiSymmetric::GetParameter(HgcToneParamCurve4AntiSymmetric *this, unsigned int a2, float *a3)
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

const char *HgcBT2446_Method_A_TMO::GetProgram(HgcBT2446_Method_A_TMO *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000007d4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.4166666567, 0.6779999733, 0.2626999915, 0.05930000171);\n    const half4 c1 = half4(12.25979805, 1.000000000, 0.2681693435, 0.9908999801);\n    const half4 c2 = half4(0.000000000, 0.7398999929, -1.151000023, 1.077000022);\n    const half4 c3 = half4(2.781100035, 0.000000000, -0.6302000284, 0.5000000000);\n    const half4 c4 = half4(5.696958065, 1.100000024, 5.960464478e-08, 0.2129037529);\n    const half4 c5 = half4(0.6781499982, 0.1000000015, 0.5315190554, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xy = pow(r0.xy, c0.xx);\n    r0.y = r0.y*c0.y;\n    r1.x = r0.x*c0.z + r0.y;\n    r0.y = pow(r0.z, c0.x);\n    r0.z = r0.y*c0.w + r1.x;\n    r1.x = r0.z*c1.x + c1.y;\n    r1.x = log2(r1.x);\n    r1.x = r1.x*c1.z;\n    r1.z = half(r1.x < c1.w);\n    r1.y = half(c2.y < r1.x);\n    r1.w = fmin(r1.y, r1.z);\n    r1.y = half(c2.y < r1.x);\n    r1.z = half(-r1.w >= c2.x);\n    r1.yw = fmin(r1.yy, r1.zw);\n    r2.xy = r1.xx*c2.zw + c3.xy;\n    r2.x = r1.x*r2.x + c3.z;\n    r0.xy = r0.xy - r0.zz;\n    r1.w = select(r2.y, r2.x, -r1.w < 0.00000h);\n    r1.x = r1.x*c3.w + c3.w;\n    r1.x = select(r1.w, r1.x, -r1.y < 0.00000h);\n    r1.y = r0.z*c4.y;\n    r1.x = pow(c4.x, r1.x);\n    r1.y = fmax(r1.y, c4.z);\n    r1.x = r1.x*c4.w + -c4.w;\n    r1.y = r1.x/r1.y;\n    r0.xy = r0.xy*r1.yy;\n    r0.x = r0.x*c5.x;\n    r1.z = r0.x*c5.y;\n    r0.z = fmax(r1.z, c3.y);\n    output.color0.x = float(r1.x) - float(r0.z);\n    output.color0.y = float(r0.y)*float(c5.z);\n    output.color0.zw = float2(r0.xw);\n    return output;\n}\n//MD5=00594ba5:384afdf9:88664fca:8e0e4589\n//SIG=00400000:00000001:00000001:00000001:0006:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000007ba\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.4166666567, 0.6779999733, 0.2626999915, 0.05930000171);\n    const float4 c1 = float4(12.25979805, 1.000000000, 0.2681693435, 0.9908999801);\n    const float4 c2 = float4(0.000000000, 0.7398999929, -1.151000023, 1.077000022);\n    const float4 c3 = float4(2.781100035, 0.000000000, -0.6302000284, 0.5000000000);\n    const float4 c4 = float4(5.696958065, 1.100000024, 5.960464478e-08, 0.2129037529);\n    const float4 c5 = float4(0.6781499982, 0.1000000015, 0.5315190554, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xy = pow(r0.xy, c0.xx);\n    r0.y = r0.y*c0.y;\n    r1.x = r0.x*c0.z + r0.y;\n    r0.y = pow(r0.z, c0.x);\n    r0.z = r0.y*c0.w + r1.x;\n    r1.x = r0.z*c1.x + c1.y;\n    r1.x = log2(r1.x);\n    r1.x = r1.x*c1.z;\n    r1.z = float(r1.x < c1.w);\n    r1.y = float(c2.y < r1.x);\n    r1.w = fmin(r1.y, r1.z);\n    r1.y = float(c2.y < r1.x);\n    r1.z = float(-r1.w >= c2.x);\n    r1.yw = fmin(r1.yy, r1.zw);\n    r2.xy = r1.xx*c2.zw + c3.xy;\n    r2.x = r1.x*r2.x + c3.z;\n    r0.xy = r0.xy - r0.zz;\n    r1.w = select(r2.y, r2.x, -r1.w < 0.00000f);\n    r1.x = r1.x*c3.w + c3.w;\n    r1.x = select(r1.w, r1.x, -r1.y < 0.00000f);\n    r1.y = r0.z*c4.y;\n    r1.x = pow(c4.x, r1.x);\n    r1.y = fmax(r1.y, c4.z);\n    r1.x = r1.x*c4.w + -c4.w;\n    r1.y = r1.x/r1.y;\n    r0.xy = r0.xy*r1.yy;\n    r0.x = r0.x*c5.x;\n    r1.z = r0.x*c5.y;\n    r0.z = fmax(r1.z, c3.y);\n    output.color0.x = r1.x - r0.z;\n    output.color0.y = r0.y*c5.z;\n    output.color0.zw = r0.xw;\n    return output;\n}\n//MD5=ac33f7a0:aaa13e44:0e17b65d:b527b488\n//SIG=00000000:00000001:00000001:00000000:0006:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000075f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.4166666567, 0.6779999733, 0.2626999915, 0.05930000171);\n    const mediump vec4 c1 = vec4(12.25979805, 1.000000000, 0.2681693435, 0.9908999801);\n    const mediump vec4 c2 = vec4(0.000000000, 0.7398999929, -1.151000023, 1.077000022);\n    const mediump vec4 c3 = vec4(2.781100035, 0.000000000, -0.6302000284, 0.5000000000);\n    const mediump vec4 c4 = vec4(5.696958065, 1.100000024, 5.960464478e-08, 0.2129037529);\n    const mediump vec4 c5 = vec4(0.6781499982, 0.1000000015, 0.5315190554, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xy = pow(r0.xy, c0.xx);\n    r0.y = r0.y*c0.y;\n    r1.x = r0.x*c0.z + r0.y;\n    r0.y = pow(r0.z, c0.x);\n    r0.z = r0.y*c0.w + r1.x;\n    r1.x = r0.z*c1.x + c1.y;\n    r1.x = log2(r1.x);\n    r1.x = r1.x*c1.z;\n    r1.z = float(r1.x < c1.w);\n    r1.y = float(c2.y < r1.x);\n    r1.w = min(r1.y, r1.z);\n    r1.y = float(c2.y < r1.x);\n    r1.z = float(-r1.w >= c2.x);\n    r1.yw = min(r1.yy, r1.zw);\n    r2.xy = r1.xx*c2.zw + c3.xy;\n    r2.x = r1.x*r2.x + c3.z;\n    r0.xy = r0.xy - r0.zz;\n    r1.w = -r1.w < 0.00000 ? r2.x : r2.y;\n    r1.x = r1.x*c3.w + c3.w;\n    r1.x = -r1.y < 0.00000 ? r1.x : r1.w;\n    r1.y = r0.z*c4.y;\n    r1.x = pow(c4.x, r1.x);\n    r1.y = max(r1.y, c4.z);\n    r1.x = r1.x*c4.w + -c4.w;\n    r1.y = r1.x/r1.y;\n    r0.xy = r0.xy*r1.yy;\n    r0.x = r0.x*c5.x;\n    r1.z = r0.x*c5.y;\n    r0.z = max(r1.z, c3.y);\n    gl_FragColor.x = r1.x - r0.z;\n    gl_FragColor.y = r0.y*c5.z;\n    gl_FragColor.zw = r0.xw;\n}\n//MD5=23dc2221:3ec35feb:ba705176:9ebe6741\n//SIG=00000000:00000001:00000001:00000000:0006:0000:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDFE218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDFE248(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDFE240);
}

uint64_t HgcBT2446_Method_A_TMO::BindTexture(HgcBT2446_Method_A_TMO *this, HGHandler *a2, int a3)
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

uint64_t HgcBT2446_Method_A_TMO::RenderTile(HgcBT2446_Method_A_TMO *this, HGTile *a2)
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
      v16 = vorrq_s8(vandq_s8(*v14, v12), v15);
      v17 = *(v14 + 32);
      v18 = *(v14 + 48);
      v19 = vorrq_s8(vandq_s8(*v14, v13), v15);
      v20 = *(v14 + 64);
      v21 = *(v14 + 80);
      v22 = vandq_s8(v15, vcgtq_f32(v16, v21));
      v23 = vandq_s8(v15, vcgtq_f32(v19, v21));
      v24 = *(v14 + 96);
      v25 = *(v14 + 112);
      v26 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v12, 0x17uLL)), vandq_s8(v18, vcgtq_f32(v17, v12))), v20), v22);
      v27 = vsubq_f32(vsubq_f32(v16, v15), vmulq_f32(vmulq_f32(v24, v22), v16));
      v28 = vsubq_f32(vsubq_f32(v19, v15), vmulq_f32(vmulq_f32(v24, v23), v19));
      v30 = *(v14 + 128);
      v29 = *(v14 + 144);
      v32 = *(v14 + 160);
      v31 = *(v14 + 176);
      v33 = vmulq_f32(v31, vaddq_f32(v26, vmulq_f32(v27, vaddq_f32(vaddq_f32(v29, vmulq_f32(v27, v32)), vmulq_f32(vmulq_f32(v27, v27), vaddq_f32(v25, vmulq_f32(v30, v27)))))));
      v34 = vmulq_f32(v31, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v13, 0x17uLL)), vandq_s8(v18, vcgtq_f32(v17, v13))), v20), v23), vmulq_f32(v28, vaddq_f32(vaddq_f32(v29, vmulq_f32(v28, v32)), vmulq_f32(vmulq_f32(v28, v28), vaddq_f32(v25, vmulq_f32(v30, v28)))))));
      v36 = *(v14 + 192);
      v35 = *(v14 + 208);
      v37 = vmaxq_f32(v33, v36);
      v38 = vmaxq_f32(v34, v36);
      v39 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v41 = vsubq_f32(v39, vandq_s8(v15, vcgtq_f32(v39, v37)));
      v42 = vsubq_f32(v40, vandq_s8(v15, vcgtq_f32(v40, v38)));
      v43 = vsubq_f32(v37, v41);
      v44 = vsubq_f32(v38, v42);
      v45 = *(v14 + 224);
      v46 = *(v14 + 240);
      v47 = vcvtq_s32_f32(v41);
      v48 = vcvtq_s32_f32(v42);
      v50 = *(v14 + 256);
      v49 = *(v14 + 272);
      v43.i64[0] = vmulq_f32(vaddq_f32(v15, vmulq_f32(v43, vaddq_f32(v46, vmulq_f32(v43, vaddq_f32(v35, vmulq_f32(v45, v43)))))), vshlq_n_s32(vaddq_s32(v50, v47), 0x17uLL)).u64[0];
      v44.i64[0] = vmulq_f32(vaddq_f32(v15, vmulq_f32(v44, vaddq_f32(v46, vmulq_f32(v44, vaddq_f32(v35, vmulq_f32(v45, v44)))))), vshlq_n_s32(vaddq_s32(v50, v48), 0x17uLL)).u64[0];
      v43.i64[1] = *(v6 + v10 - 8);
      v44.i64[1] = *(v6 + v10 + 8);
      v52 = *(v14 + 288);
      v51 = *(v14 + 304);
      v53 = vbslq_s8(v52, vmulq_f32(v49, v43), v43);
      v54 = vbslq_s8(v52, vmulq_f32(v49, v44), v44);
      v55 = vextq_s8(v53, v53, 4uLL);
      v56 = vaddq_f32(vmulq_f32(v51, v53), vrev64q_s32(v53));
      v57 = vextq_s8(v54, v54, 4uLL);
      v58 = vorrq_s8(vandq_s8(v55, *v14), v51);
      v59 = vorrq_s8(vandq_s8(v57, *v14), v51);
      v60 = vandq_s8(v51, vcgtq_f32(v58, v21));
      v61 = vandq_s8(v51, vcgtq_f32(v59, v21));
      v62 = vsubq_f32(vsubq_f32(v58, v51), vmulq_f32(vmulq_f32(v24, v60), v58));
      v63 = vsubq_f32(vsubq_f32(v59, v51), vmulq_f32(vmulq_f32(v24, v61), v59));
      v64 = vmulq_f32(v31, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v55, 0x17uLL)), vandq_s8(v18, vcgtq_f32(v17, v55))), v20), v60), vmulq_f32(v62, vaddq_f32(vaddq_f32(v29, vmulq_f32(v32, v62)), vmulq_f32(vmulq_f32(v62, v62), vaddq_f32(v25, vmulq_f32(v30, v62)))))));
      v65 = vmulq_f32(v31, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v57, 0x17uLL)), vandq_s8(v18, vcgtq_f32(v17, v57))), v20), v61), vmulq_f32(v63, vaddq_f32(vaddq_f32(v29, vmulq_f32(v32, v63)), vmulq_f32(vmulq_f32(v63, v63), vaddq_f32(v25, vmulq_f32(v30, v63)))))));
      v66 = vmaxq_f32(v64, v36);
      v67 = vmaxq_f32(v65, v36);
      v68 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
      v69 = vcvtq_f32_s32(vcvtq_s32_f32(v67));
      v70 = vsubq_f32(v68, vandq_s8(v51, vcgtq_f32(v68, v66)));
      v71 = vsubq_f32(v69, vandq_s8(v51, vcgtq_f32(v69, v67)));
      v72 = vaddq_f32(vmulq_f32(v51, v54), vrev64q_s32(v54));
      v73 = vsubq_f32(v66, v70);
      v74 = vsubq_f32(v67, v71);
      v75 = vmulq_f32(vaddq_f32(v51, vmulq_f32(v74, vaddq_f32(v46, vmulq_f32(v74, vaddq_f32(v35, vmulq_f32(v45, v74)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v71), v50), 0x17uLL));
      v76 = vbslq_s8(v52, vmulq_f32(vaddq_f32(v51, vmulq_f32(v73, vaddq_f32(v46, vmulq_f32(v73, vaddq_f32(v35, vmulq_f32(v45, v73)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v70), v50), 0x17uLL)), v43);
      v77 = vbslq_s8(v52, v75, v44);
      v78 = vaddq_f32(vextq_s8(v56, v56, 8uLL), vmulq_lane_f32(v51, *v76.i8, 1));
      v79 = vaddq_f32(vextq_s8(v72, v72, 8uLL), vmulq_lane_f32(v51, *v77.i8, 1));
      v80 = *(v14 + 320);
      v81 = *(v14 + 336);
      v82 = vbslq_s8(v80, v78, v76);
      v83 = vbslq_s8(v80, v79, v77);
      v84 = vextq_s8(v82, v82, 8uLL);
      v85 = vextq_s8(v83, v83, 8uLL);
      v86 = vaddq_f32(v49, vmulq_f32(v81, v84));
      v87 = vaddq_f32(v49, vmulq_f32(v81, v85));
      v88 = vandq_s8(v18, vcgtq_f32(v17, v86));
      v89 = vandq_s8(v18, vcgtq_f32(v17, v87));
      v90 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v86, 0x17uLL)), v88);
      v91 = vorrq_s8(vandq_s8(*v14, v86), v49);
      v92 = vorrq_s8(vandq_s8(*v14, v87), v49);
      v93 = vsubq_f32(v90, v20);
      v94 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v87, 0x17uLL)), v89), v20);
      v95 = vandq_s8(v49, vcgtq_f32(v91, v21));
      v96 = vandq_s8(v49, vcgtq_f32(v92, v21));
      v97 = vaddq_f32(v93, v95);
      v98 = vsubq_f32(vsubq_f32(v91, v49), vmulq_f32(vmulq_f32(v24, v95), v91));
      v99 = vsubq_f32(vsubq_f32(v92, v49), vmulq_f32(vmulq_f32(v24, v96), v92));
      v100 = vaddq_f32(v94, v96);
      v101 = vaddq_f32(v97, vmulq_f32(v98, vaddq_f32(vaddq_f32(v29, vmulq_f32(v32, v98)), vmulq_f32(vmulq_f32(v98, v98), vaddq_f32(v25, vmulq_f32(v30, v98))))));
      v102 = vaddq_f32(v100, vmulq_f32(v99, vaddq_f32(vaddq_f32(v29, vmulq_f32(v32, v99)), vmulq_f32(vmulq_f32(v99, v99), vaddq_f32(v25, vmulq_f32(v30, v99))))));
      v103 = *(v14 + 352);
      v104 = *(v14 + 368);
      v105 = vmulq_f32(v103, v101);
      v106 = vmulq_f32(v103, v102);
      v107 = vandq_s8(v81, vcgtq_f32(v103, vextq_s8(v105, v105, 8uLL)));
      v108 = vandq_s8(v81, vcgtq_f32(v103, vextq_s8(v106, v106, 8uLL)));
      v29.i64[0] = v105.i64[0];
      v30.i64[0] = v106.i64[0];
      v29.i64[1] = v107.i64[1];
      v30.i64[1] = v108.i64[1];
      v105.i64[1] = vdupq_laneq_s64(v107, 1).u64[0];
      v106.i64[1] = vdupq_laneq_s64(v108, 1).u64[0];
      v109 = vbslq_s8(v52, vandq_s8(v81, vcgtq_f32(vrev64q_s32(v105), v103)), v29);
      v110 = vbslq_s8(v52, vandq_s8(v81, vcgtq_f32(vrev64q_s32(v106), v103)), v30);
      v111 = vminq_f32(vextq_s8(v109, v109, 8uLL), vrev64q_s32(v109));
      v112 = vminq_f32(vextq_s8(v110, v110, 8uLL), vrev64q_s32(v110));
      v29.i64[0] = v109.i64[0];
      v29.i64[1] = v111.i64[1];
      v30.i64[0] = v110.i64[0];
      v30.i64[1] = v112.i64[1];
      v109.i64[1] = vdupq_laneq_s64(v111, 1).u64[0];
      v110.i64[1] = vdupq_laneq_s64(v112, 1).u64[0];
      v113 = vbslq_s8(v52, vandq_s8(v81, vcgtq_f32(vrev64q_s32(v109), v103)), v29);
      v114 = vbslq_s8(v52, vandq_s8(v81, vcgtq_f32(vrev64q_s32(v110), v103)), v30);
      v115 = vbslq_s8(v80, vandq_s8(v81, vcgeq_f32(vnegq_f32(vrev64q_s32(v113)), v46)), v113);
      v116 = vbslq_s8(v80, vandq_s8(v81, vcgeq_f32(vnegq_f32(vrev64q_s32(v114)), v46)), v114);
      *v112.f32 = vqtbl1_s8(v115, *v104.i8);
      v114.i64[0] = vextq_s8(v104, v104, 8uLL).u64[0];
      *&v112.u32[2] = vqtbl1_s8(v115, *v114.i8);
      v117 = vminq_f32(vdupq_lane_s64(v115.i64[0], 0), v112);
      v118 = *(v14 + 384);
      v119 = *(v14 + 400);
      v120 = vbslq_s8(v118, v115, v117);
      v121 = *(v14 + 416);
      v122 = *(v14 + 432);
      v123 = vaddq_f32(v119, vmulq_n_f32(v121, v120.f32[0]));
      v124 = vbslq_s8(v118, vaddq_f32(v122, vmulq_f32(v123, v120)), v123);
      *v32.f32 = vqtbl1_s8(v116, *v104.i8);
      *&v32.u32[2] = vqtbl1_s8(v116, *v114.i8);
      v125 = vbslq_s8(v118, v116, vminq_f32(vdupq_lane_s64(v116.i64[0], 0), v32));
      v126 = vaddq_f32(v119, vmulq_n_f32(v121, v125.f32[0]));
      v127 = vbslq_s8(v118, vaddq_f32(v122, vmulq_f32(v126, v125)), v126);
      v120.i64[1] = vbslq_s8(vcgtq_f32(v120, v122), vextq_s8(v124, v124, 4uLL), vdupq_lane_s64(*&v124, 0)).i64[1];
      v125.i64[1] = vbslq_s8(vcgtq_f32(v125, v122), vextq_s8(v127, v127, 4uLL), vdupq_lane_s64(*&v127, 0)).i64[1];
      v128 = vbslq_s8(v118, vaddq_f32(v24, vmulq_f32(v24, v120)), v120);
      v129 = vbslq_s8(v118, vaddq_f32(v24, vmulq_f32(v24, v125)), v125);
      v131 = *(v14 + 448);
      v130 = *(v14 + 464);
      v132 = vbslq_s8(vcgtq_f32(vrev64q_s32(v128), v131), v128, vextq_s8(v128, v128, 0xCuLL));
      v133 = vbslq_s8(vcgtq_f32(vrev64q_s32(v129), v131), v129, vextq_s8(v129, v129, 0xCuLL));
      v134 = vsubq_f32(v82, vdupq_laneq_s32(v82, 2));
      v135 = vsubq_f32(v83, vdupq_laneq_s32(v83, 2));
      *v119.f32 = vext_s8(*v84.f32, *v134.f32, 4uLL);
      *v84.f32 = vext_s8(*v134.f32, *v84.f32, 4uLL);
      v84.i64[1] = v119.i64[0];
      *v119.f32 = vext_s8(*v85.f32, *v135.f32, 4uLL);
      *v85.f32 = vext_s8(*v135.f32, *v85.f32, 4uLL);
      v85.i64[1] = v119.i64[0];
      v136 = vmulq_f32(v131, v84);
      v137 = vmulq_f32(v131, v85);
      v138 = vmaxq_f32(vmulq_f32(v130, vbslq_s8(v118, v132, v136)), v36);
      v139 = vmaxq_f32(vmulq_f32(v130, vbslq_s8(v118, v133, v137)), v36);
      v140 = vcvtq_f32_s32(vcvtq_s32_f32(v138));
      v141 = vcvtq_f32_s32(vcvtq_s32_f32(v139));
      v142 = vsubq_f32(v140, vandq_s8(v49, vcgtq_f32(v140, v138)));
      v143 = vsubq_f32(v141, vandq_s8(v49, vcgtq_f32(v141, v139)));
      v144 = vsubq_f32(v138, v142);
      v145 = vsubq_f32(v139, v143);
      v146 = vaddq_f32(v35, vmulq_f32(v45, v144));
      v147 = vmulq_f32(v145, vaddq_f32(v46, vmulq_f32(v145, vaddq_f32(v35, vmulq_f32(v45, v145)))));
      v148 = vmulq_f32(vaddq_f32(v49, vmulq_f32(v144, vaddq_f32(v46, vmulq_f32(v144, v146)))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v142), v104), 0x17uLL));
      v149 = vmulq_f32(vaddq_f32(v49, v147), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v143), v104), 0x17uLL));
      v150 = *(v14 + 480);
      v151 = *(v14 + 496);
      v152 = vmaxq_f32(vbslq_s8(v118, v148, v136), v150);
      v153 = vmaxq_f32(vbslq_s8(v118, v149, v137), v150);
      v154 = *(v14 + 512);
      v155 = *(v14 + 528);
      v156 = vaddq_f32(v151, vmulq_f32(v154, vbslq_s8(v118, v148, v152)));
      v157 = vaddq_f32(v151, vmulq_f32(v154, vbslq_s8(v118, v149, v153)));
      v158 = vbslq_s8(v118, v156, v152);
      v159 = vbslq_s8(v118, v157, v153);
      v160 = vminq_f32(vmaxq_f32(vmulq_f32(v154, vrecpeq_f32(v158)), v151), v155);
      v161 = vminq_f32(vmaxq_f32(vmulq_f32(v154, vrecpeq_f32(v159)), v151), v155);
      v156.i64[0] = vbslq_s8(v118, v156, vmulq_n_f32(vmulq_f32(v160, vrecpsq_f32(v158, v160)), v158.f32[0])).u64[0];
      v157.i64[0] = vbslq_s8(v118, v157, vmulq_n_f32(vmulq_f32(v161, vrecpsq_f32(v159, v161)), v159.f32[0])).u64[0];
      v158.i64[0] = vmulq_lane_f32(v134, *v156.i8, 1).u64[0];
      v159.i64[0] = vmulq_lane_f32(v135, *v157.i8, 1).u64[0];
      v158.i64[1] = v82.i64[1];
      v159.i64[1] = v83.i64[1];
      v162 = *(v14 + 544);
      v163 = vbslq_s8(v118, vmulq_f32(v162, v158), v158);
      v164 = vbslq_s8(v118, vmulq_f32(v162, v159), v159);
      v161.i64[0] = v156.i64[0];
      v161.i64[1] = vmulq_f32(v162, vdupq_lane_s64(*&v163, 0)).i64[1];
      v82.i64[0] = v157.i64[0];
      v82.i64[1] = vmulq_f32(v162, vdupq_lane_s64(*&v164, 0)).i64[1];
      v165 = vbslq_s8(v80, vmaxq_f32(v161, v154), v163);
      v166 = vbslq_s8(v80, vmaxq_f32(v82, v154), v164);
      v154.i64[0] = vmvnq_s8(v118).u64[0];
      *v156.i8 = vorr_s8(vand_s8(*v118.i8, vsub_f32(*v156.i8, *&vextq_s8(v165, v165, 8uLL))), vand_s8(vmul_f32(*v130.f32, *v165.i8), *v154.f32));
      v156.u64[1] = vqtbl1_s8(v165, *v114.i8);
      *v130.f32 = vorr_s8(vand_s8(*v118.i8, vsub_f32(*v157.i8, *&vextq_s8(v166, v166, 8uLL))), vand_s8(vmul_f32(*v130.f32, *v166.i8), *v154.f32));
      *&v130.u32[2] = vqtbl1_s8(v166, *v114.i8);
      v167 = (v5 + v10);
      v167[-1] = v156;
      *v167 = v130;
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v168 = 16 * v9;
    v169 = *(v6 + v168);
    v170 = *(this + 51);
    v171 = *(v170 + 16);
    v172 = vorrq_s8(vandq_s8(*v170, v169), v171);
    v173 = *(v170 + 32);
    v174 = *(v170 + 48);
    v175 = *(v170 + 64);
    v176 = *(v170 + 80);
    v177 = vandq_s8(v171, vcgtq_f32(v172, v176));
    v178 = *(v170 + 96);
    v179 = *(v170 + 112);
    v180 = vsubq_f32(vsubq_f32(v172, v171), vmulq_f32(vmulq_f32(v178, v177), v172));
    v181 = *(v170 + 128);
    v182 = *(v170 + 144);
    v184 = *(v170 + 160);
    v183 = *(v170 + 176);
    v185 = vmulq_f32(v183, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v169, 0x17uLL)), vandq_s8(v174, vcgtq_f32(v173, v169))), v175), v177), vmulq_f32(v180, vaddq_f32(vaddq_f32(v182, vmulq_f32(v180, v184)), vmulq_f32(vmulq_f32(v180, v180), vaddq_f32(v179, vmulq_f32(v181, v180)))))));
    v186 = *(v170 + 192);
    v187 = *(v170 + 208);
    v188 = vmaxq_f32(v185, v186);
    v189 = vcvtq_f32_s32(vcvtq_s32_f32(v188));
    v190 = vsubq_f32(v189, vandq_s8(v171, vcgtq_f32(v189, v188)));
    v191 = vsubq_f32(v188, v190);
    v192 = *(v170 + 224);
    v193 = *(v170 + 240);
    v194 = vaddq_f32(v171, vmulq_f32(v191, vaddq_f32(v193, vmulq_f32(v191, vaddq_f32(v187, vmulq_f32(v192, v191))))));
    v196 = *(v170 + 256);
    v195 = *(v170 + 272);
    v190.i64[0] = vmulq_f32(v194, vshlq_n_s32(vaddq_s32(v196, vcvtq_s32_f32(v190)), 0x17uLL)).u64[0];
    v190.i64[1] = *(v6 + v168 + 8);
    v197 = *(v170 + 288);
    v198 = *(v170 + 304);
    v199 = vbslq_s8(v197, vmulq_f32(v195, v190), v190);
    v200 = vaddq_f32(vmulq_f32(v198, v199), vrev64q_s32(v199));
    v201 = vextq_s8(v199, v199, 4uLL);
    v202 = vorrq_s8(vandq_s8(v201, *v170), v198);
    v203 = vandq_s8(v198, vcgtq_f32(v202, v176));
    v204 = vsubq_f32(vsubq_f32(v202, v198), vmulq_f32(vmulq_f32(v178, v203), v202));
    v205 = vmaxq_f32(vmulq_f32(v183, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v201, 0x17uLL)), vandq_s8(v174, vcgtq_f32(v173, v201))), v175), v203), vmulq_f32(v204, vaddq_f32(vaddq_f32(v182, vmulq_f32(v184, v204)), vmulq_f32(vmulq_f32(v204, v204), vaddq_f32(v179, vmulq_f32(v181, v204))))))), v186);
    v206 = vcvtq_f32_s32(vcvtq_s32_f32(v205));
    v207 = vsubq_f32(v206, vandq_s8(v198, vcgtq_f32(v206, v205)));
    v208 = vsubq_f32(v205, v207);
    v209 = vbslq_s8(v197, vmulq_f32(vaddq_f32(v198, vmulq_f32(v208, vaddq_f32(v193, vmulq_f32(v208, vaddq_f32(v187, vmulq_f32(v192, v208)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v207), v196), 0x17uLL)), v190);
    v210 = *(v170 + 320);
    v211 = *(v170 + 336);
    v212 = vbslq_s8(v210, vaddq_f32(vextq_s8(v200, v200, 8uLL), vmulq_lane_f32(v198, *v209.i8, 1)), v209);
    v213 = vextq_s8(v212, v212, 8uLL);
    v214 = vaddq_f32(v195, vmulq_f32(v211, v213));
    v215 = vorrq_s8(vandq_s8(*v170, v214), v195);
    v216 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v214, 0x17uLL)), vandq_s8(v174, vcgtq_f32(v173, v214))), v175);
    v217 = vandq_s8(v195, vcgtq_f32(v215, v176));
    v218 = vsubq_f32(vsubq_f32(v215, v195), vmulq_f32(vmulq_f32(v178, v217), v215));
    v219 = vaddq_f32(vaddq_f32(v216, v217), vmulq_f32(v218, vaddq_f32(vaddq_f32(v182, vmulq_f32(v184, v218)), vmulq_f32(vmulq_f32(v218, v218), vaddq_f32(v179, vmulq_f32(v181, v218))))));
    v220 = *(v170 + 352);
    v221 = *(v170 + 368);
    v222 = vmulq_f32(v220, v219);
    v223 = vandq_s8(v211, vcgtq_f32(v220, vextq_s8(v222, v222, 8uLL)));
    v176.i64[0] = v222.i64[0];
    v176.i64[1] = v223.i64[1];
    v222.i64[1] = vdupq_laneq_s64(v223, 1).u64[0];
    v224 = vbslq_s8(v197, vandq_s8(v211, vcgtq_f32(vrev64q_s32(v222), v220)), v176);
    v225 = vminq_f32(vextq_s8(v224, v224, 8uLL), vrev64q_s32(v224));
    v176.i64[0] = v224.i64[0];
    v176.i64[1] = v225.i64[1];
    v224.i64[1] = vdupq_laneq_s64(v225, 1).u64[0];
    v226 = vbslq_s8(v197, vandq_s8(v211, vcgtq_f32(vrev64q_s32(v224), v220)), v176);
    v227 = vbslq_s8(v210, vandq_s8(v211, vcgeq_f32(vnegq_f32(vrev64q_s32(v226)), v193)), v226);
    *v176.f32 = vqtbl1_s8(v227, *v221.i8);
    v220.i64[0] = vextq_s8(v221, v221, 8uLL).u64[0];
    *&v176.u32[2] = vqtbl1_s8(v227, *v220.f32);
    v228 = *(v170 + 384);
    v229 = vbslq_s8(v228, v227, vminq_f32(vdupq_lane_s64(v227.i64[0], 0), v176));
    v230 = *(v170 + 432);
    v231 = vaddq_f32(*(v170 + 400), vmulq_n_f32(*(v170 + 416), v229.f32[0]));
    v232 = vbslq_s8(v228, vaddq_f32(v230, vmulq_f32(v231, v229)), v231);
    v233 = vsubq_f32(v212, vdupq_laneq_s32(v212, 2));
    v229.i64[1] = vbslq_s8(vcgtq_f32(v229, v230), vextq_s8(v232, v232, 4uLL), vdupq_lane_s64(*&v232, 0)).i64[1];
    v234 = vbslq_s8(v228, vaddq_f32(v178, vmulq_f32(v178, v229)), v229);
    v236 = *(v170 + 448);
    v235 = *(v170 + 464);
    *v182.f32 = vext_s8(*v213.f32, *v233.f32, 4uLL);
    *v213.f32 = vext_s8(*v233.f32, *v213.f32, 4uLL);
    v213.i64[1] = v182.i64[0];
    v237 = vmulq_f32(v236, v213);
    v238 = vmaxq_f32(vmulq_f32(v235, vbslq_s8(v228, vbslq_s8(vcgtq_f32(vrev64q_s32(v234), v236), v234, vextq_s8(v234, v234, 0xCuLL)), v237)), v186);
    v239 = vcvtq_f32_s32(vcvtq_s32_f32(v238));
    v240 = vsubq_f32(v239, vandq_s8(v195, vcgtq_f32(v239, v238)));
    v241 = vsubq_f32(v238, v240);
    v242 = vmulq_f32(vaddq_f32(v195, vmulq_f32(v241, vaddq_f32(v193, vmulq_f32(v241, vaddq_f32(v187, vmulq_f32(v192, v241)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v240), v221), 0x17uLL));
    v243 = *(v170 + 496);
    v244 = vmaxq_f32(vbslq_s8(v228, v242, v237), *(v170 + 480));
    v245 = *(v170 + 512);
    v246 = vaddq_f32(v243, vmulq_f32(v245, vbslq_s8(v228, v242, v244)));
    v247 = vbslq_s8(v228, v246, v244);
    v248 = vminq_f32(vmaxq_f32(vmulq_f32(v245, vrecpeq_f32(v247)), v243), *(v170 + 528));
    v246.i64[0] = vbslq_s8(v228, v246, vmulq_n_f32(vmulq_f32(v248, vrecpsq_f32(v247, v248)), v247.f32[0])).u64[0];
    v247.i64[0] = vmulq_lane_f32(v233, *v246.i8, 1).u64[0];
    v247.i64[1] = v212.i64[1];
    v249 = *(v170 + 544);
    v250 = vbslq_s8(v228, vmulq_f32(v249, v247), v247);
    v195.i64[0] = v246.i64[0];
    v195.i64[1] = vmulq_f32(v249, vdupq_lane_s64(*&v250, 0)).i64[1];
    v251 = vbslq_s8(v210, vmaxq_f32(v195, v245), v250);
    *v235.f32 = vorr_s8(vand_s8(*v228.i8, vsub_f32(*v246.i8, *&vextq_s8(v251, v251, 8uLL))), vand_s8(vmul_f32(*v235.f32, *v251.i8), *&vmvnq_s8(v228)));
    *&v235.u32[2] = vqtbl1_s8(v251, *v220.f32);
    *(v5 + v168) = v235;
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2446_Method_A_TMO::GetDOD(HgcBT2446_Method_A_TMO *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2446_Method_A_TMO::GetROI(HgcBT2446_Method_A_TMO *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2446_Method_A_TMO::HgcBT2446_Method_A_TMO(HgcBT2446_Method_A_TMO *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872351F0;
  operator new();
}

void HgcBT2446_Method_A_TMO::~HgcBT2446_Method_A_TMO(HgcBT2446_Method_A_TMO *this)
{
  *this = &unk_2872351F0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40897A1F55);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2446_Method_A_TMO::~HgcBT2446_Method_A_TMO(HGNode *this)
{
  *this = &unk_2872351F0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40897A1F55);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcBT2446_Method_A_TMO_Input_Clamped::GetProgram(HgcBT2446_Method_A_TMO_Input_Clamped *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000007f0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.4166666567, 0.6779999733, 0.2626999915);\n    const half4 c1 = half4(12.25979805, 1.000000000, 0.05930000171, 0.2681693435);\n    const half4 c2 = half4(0.7398999929, -1.151000023, 0.9908999801, 1.077000022);\n    const half4 c3 = half4(2.781100035, 0.000000000, -0.6302000284, 0.5000000000);\n    const half4 c4 = half4(5.696958065, 1.100000024, 5.960464478e-08, 0.2129037529);\n    const half4 c5 = half4(0.6781499982, 0.1000000015, 0.5315190554, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmax(r0, c0.xxxx);\n    r0.xy = pow(r0.xy, c0.yy);\n    r0.y = r0.y*c0.z;\n    r1.x = r0.x*c0.w + r0.y;\n    r0.y = pow(r0.z, c0.y);\n    r0.z = r0.y*c1.z + r1.x;\n    r1.x = r0.z*c1.x + c1.y;\n    r1.x = log2(r1.x);\n    r1.x = r1.x*c1.w;\n    r1.z = half(r1.x < c2.z);\n    r1.y = half(c2.x < r1.x);\n    r1.w = fmin(r1.y, r1.z);\n    r1.y = half(c2.x < r1.x);\n    r1.z = half(-r1.w >= c0.x);\n    r1.yw = fmin(r1.yy, r1.zw);\n    r2.xy = r1.xx*c2.yw + c3.xy;\n    r2.x = r1.x*r2.x + c3.z;\n    r0.xy = r0.xy - r0.zz;\n    r1.w = select(r2.y, r2.x, -r1.w < 0.00000h);\n    r1.x = r1.x*c3.w + c3.w;\n    r1.x = select(r1.w, r1.x, -r1.y < 0.00000h);\n    r1.y = r0.z*c4.y;\n    r1.x = pow(c4.x, r1.x);\n    r1.y = fmax(r1.y, c4.z);\n    r1.x = r1.x*c4.w + -c4.w;\n    r1.y = r1.x/r1.y;\n    r0.xy = r0.xy*r1.yy;\n    r0.x = r0.x*c5.x;\n    r1.z = r0.x*c5.y;\n    r0.z = fmax(r1.z, c3.y);\n    output.color0.x = float(r1.x) - float(r0.z);\n    output.color0.y = float(r0.y)*float(c5.z);\n    output.color0.zw = float2(r0.xw);\n    return output;\n}\n//MD5=cc0a64d2:44602f95:51ae6a6f:b8abc699\n//SIG=00400000:00000001:00000001:00000001:0006:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000007d6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.4166666567, 0.6779999733, 0.2626999915);\n    const float4 c1 = float4(12.25979805, 1.000000000, 0.05930000171, 0.2681693435);\n    const float4 c2 = float4(0.7398999929, -1.151000023, 0.9908999801, 1.077000022);\n    const float4 c3 = float4(2.781100035, 0.000000000, -0.6302000284, 0.5000000000);\n    const float4 c4 = float4(5.696958065, 1.100000024, 5.960464478e-08, 0.2129037529);\n    const float4 c5 = float4(0.6781499982, 0.1000000015, 0.5315190554, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmax(r0, c0.xxxx);\n    r0.xy = pow(r0.xy, c0.yy);\n    r0.y = r0.y*c0.z;\n    r1.x = r0.x*c0.w + r0.y;\n    r0.y = pow(r0.z, c0.y);\n    r0.z = r0.y*c1.z + r1.x;\n    r1.x = r0.z*c1.x + c1.y;\n    r1.x = log2(r1.x);\n    r1.x = r1.x*c1.w;\n    r1.z = float(r1.x < c2.z);\n    r1.y = float(c2.x < r1.x);\n    r1.w = fmin(r1.y, r1.z);\n    r1.y = float(c2.x < r1.x);\n    r1.z = float(-r1.w >= c0.x);\n    r1.yw = fmin(r1.yy, r1.zw);\n    r2.xy = r1.xx*c2.yw + c3.xy;\n    r2.x = r1.x*r2.x + c3.z;\n    r0.xy = r0.xy - r0.zz;\n    r1.w = select(r2.y, r2.x, -r1.w < 0.00000f);\n    r1.x = r1.x*c3.w + c3.w;\n    r1.x = select(r1.w, r1.x, -r1.y < 0.00000f);\n    r1.y = r0.z*c4.y;\n    r1.x = pow(c4.x, r1.x);\n    r1.y = fmax(r1.y, c4.z);\n    r1.x = r1.x*c4.w + -c4.w;\n    r1.y = r1.x/r1.y;\n    r0.xy = r0.xy*r1.yy;\n    r0.x = r0.x*c5.x;\n    r1.z = r0.x*c5.y;\n    r0.z = fmax(r1.z, c3.y);\n    output.color0.x = r1.x - r0.z;\n    output.color0.y = r0.y*c5.z;\n    output.color0.zw = r0.xw;\n    return output;\n}\n//MD5=cfc8a029:e305a50f:078af61c:309e7d5a\n//SIG=00000000:00000001:00000001:00000000:0006:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000077a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.4166666567, 0.6779999733, 0.2626999915);\n    const mediump vec4 c1 = vec4(12.25979805, 1.000000000, 0.05930000171, 0.2681693435);\n    const mediump vec4 c2 = vec4(0.7398999929, -1.151000023, 0.9908999801, 1.077000022);\n    const mediump vec4 c3 = vec4(2.781100035, 0.000000000, -0.6302000284, 0.5000000000);\n    const mediump vec4 c4 = vec4(5.696958065, 1.100000024, 5.960464478e-08, 0.2129037529);\n    const mediump vec4 c5 = vec4(0.6781499982, 0.1000000015, 0.5315190554, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = max(r0, c0.xxxx);\n    r0.xy = pow(r0.xy, c0.yy);\n    r0.y = r0.y*c0.z;\n    r1.x = r0.x*c0.w + r0.y;\n    r0.y = pow(r0.z, c0.y);\n    r0.z = r0.y*c1.z + r1.x;\n    r1.x = r0.z*c1.x + c1.y;\n    r1.x = log2(r1.x);\n    r1.x = r1.x*c1.w;\n    r1.z = float(r1.x < c2.z);\n    r1.y = float(c2.x < r1.x);\n    r1.w = min(r1.y, r1.z);\n    r1.y = float(c2.x < r1.x);\n    r1.z = float(-r1.w >= c0.x);\n    r1.yw = min(r1.yy, r1.zw);\n    r2.xy = r1.xx*c2.yw + c3.xy;\n    r2.x = r1.x*r2.x + c3.z;\n    r0.xy = r0.xy - r0.zz;\n    r1.w = -r1.w < 0.00000 ? r2.x : r2.y;\n    r1.x = r1.x*c3.w + c3.w;\n    r1.x = -r1.y < 0.00000 ? r1.x : r1.w;\n    r1.y = r0.z*c4.y;\n    r1.x = pow(c4.x, r1.x);\n    r1.y = max(r1.y, c4.z);\n    r1.x = r1.x*c4.w + -c4.w;\n    r1.y = r1.x/r1.y;\n    r0.xy = r0.xy*r1.yy;\n    r0.x = r0.x*c5.x;\n    r1.z = r0.x*c5.y;\n    r0.z = max(r1.z, c3.y);\n    gl_FragColor.x = r1.x - r0.z;\n    gl_FragColor.y = r0.y*c5.z;\n    gl_FragColor.zw = r0.xw;\n}\n//MD5=714dff85:561e4c87:9a5079b2:1332a3ac\n//SIG=00000000:00000001:00000001:00000000:0006:0000:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDFF674(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDFF6A4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDFF69CLL);
}

uint64_t HgcBT2446_Method_A_TMO_Input_Clamped::BindTexture(HgcBT2446_Method_A_TMO_Input_Clamped *this, HGHandler *a2, int a3)
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

uint64_t HgcBT2446_Method_A_TMO_Input_Clamped::RenderTile(HgcBT2446_Method_A_TMO_Input_Clamped *this, HGTile *a2)
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
      v14 = vmaxq_f32(*(v6 + v10 - 16), *v12);
      v15 = vmaxq_f32(*(v6 + v10), *v12);
      v16 = *(v12 + 32);
      v17 = *(v12 + 48);
      v18 = vorrq_s8(vandq_s8(v13, v14), v16);
      v19 = vorrq_s8(vandq_s8(v13, v15), v16);
      v21 = *(v12 + 64);
      v20 = *(v12 + 80);
      v23 = *(v12 + 96);
      v22 = *(v12 + 112);
      v24 = vandq_s8(v16, vcgtq_f32(v18, v23));
      v25 = vandq_s8(v16, vcgtq_f32(v19, v23));
      v26 = vsubq_f32(vsubq_f32(v18, v16), vmulq_f32(vmulq_f32(v22, v24), v18));
      v27 = vsubq_f32(vsubq_f32(v19, v16), vmulq_f32(vmulq_f32(v22, v25), v19));
      v28 = *(v12 + 128);
      v29 = *(v12 + 144);
      v30 = *(v12 + 160);
      v31 = *(v12 + 176);
      v32 = vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v14, 0x17uLL)), vandq_s8(v21, vcgtq_f32(v17, v14))), v20), v24), vmulq_f32(v26, vaddq_f32(vaddq_f32(v30, vmulq_f32(v26, v31)), vmulq_f32(vmulq_f32(v26, v26), vaddq_f32(v28, vmulq_f32(v29, v26))))));
      v34 = *(v12 + 192);
      v33 = *(v12 + 208);
      v35 = vmaxq_f32(vmulq_f32(v34, v32), v33);
      v36 = vmaxq_f32(vmulq_f32(v34, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v15, 0x17uLL)), vandq_s8(v21, vcgtq_f32(v17, v15))), v20), v25), vmulq_f32(v27, vaddq_f32(vaddq_f32(v30, vmulq_f32(v27, v31)), vmulq_f32(vmulq_f32(v27, v27), vaddq_f32(v28, vmulq_f32(v29, v27))))))), v33);
      v37 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
      v38 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
      v39 = vsubq_f32(v37, vandq_s8(v16, vcgtq_f32(v37, v35)));
      v40 = vsubq_f32(v38, vandq_s8(v16, vcgtq_f32(v38, v36)));
      v41 = vsubq_f32(v35, v39);
      v42 = *(v12 + 224);
      v43 = *(v12 + 240);
      v44 = vsubq_f32(v36, v40);
      v45 = *(v12 + 256);
      v46 = *(v12 + 272);
      v41.i64[0] = vmulq_f32(vaddq_f32(v16, vmulq_f32(v41, vaddq_f32(v45, vmulq_f32(v41, vaddq_f32(v42, vmulq_f32(v43, v41)))))), vshlq_n_s32(vaddq_s32(v46, vcvtq_s32_f32(v39)), 0x17uLL)).u64[0];
      v39.i64[0] = vmulq_f32(vaddq_f32(v16, vmulq_f32(v44, vaddq_f32(v45, vmulq_f32(v44, vaddq_f32(v42, vmulq_f32(v43, v44)))))), vshlq_n_s32(vaddq_s32(v46, vcvtq_s32_f32(v40)), 0x17uLL)).u64[0];
      v41.i64[1] = v14.i64[1];
      v39.i64[1] = v15.i64[1];
      v47 = *(v12 + 288);
      v48 = *(v12 + 304);
      v49 = vbslq_s8(v48, vmulq_f32(v47, v41), v41);
      v50 = vbslq_s8(v48, vmulq_f32(v47, v39), v39);
      v51 = *(v12 + 320);
      v52 = *(v12 + 336);
      v53 = vaddq_f32(vrev64q_s32(v49), vmulq_lane_f32(v49, *v51.f32, 1));
      v54 = vextq_s8(v49, v49, 4uLL);
      v55 = vextq_s8(v50, v50, 4uLL);
      v56 = vorrq_s8(vandq_s8(v54, v13), v16);
      v57 = vorrq_s8(vandq_s8(v55, v13), v16);
      v58 = vandq_s8(v16, vcgtq_f32(v56, v23));
      v59 = vandq_s8(v16, vcgtq_f32(v57, v23));
      v60 = vsubq_f32(vsubq_f32(v56, v16), vmulq_f32(vmulq_f32(v22, v58), v56));
      v61 = vsubq_f32(vsubq_f32(v57, v16), vmulq_f32(vmulq_f32(v22, v59), v57));
      v62 = vmaxq_f32(vmulq_f32(v34, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v54, 0x17uLL)), vandq_s8(v21, vcgtq_f32(v17, v54))), v20), v58), vmulq_f32(v60, vaddq_f32(vaddq_f32(v30, vmulq_f32(v31, v60)), vmulq_f32(vmulq_f32(v60, v60), vaddq_f32(v28, vmulq_f32(v29, v60))))))), v33);
      v63 = vmaxq_f32(vmulq_f32(v34, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v55, 0x17uLL)), vandq_s8(v21, vcgtq_f32(v17, v55))), v20), v59), vmulq_f32(v61, vaddq_f32(vaddq_f32(v30, vmulq_f32(v31, v61)), vmulq_f32(vmulq_f32(v61, v61), vaddq_f32(v28, vmulq_f32(v29, v61))))))), v33);
      v64 = vaddq_f32(vrev64q_s32(v50), vmulq_lane_f32(v50, *v51.f32, 1));
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v62));
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v67 = vsubq_f32(v65, vandq_s8(v16, vcgtq_f32(v65, v62)));
      v68 = vsubq_f32(v66, vandq_s8(v16, vcgtq_f32(v66, v63)));
      v69 = vsubq_f32(v62, v67);
      v70 = vsubq_f32(v63, v68);
      v71 = vaddq_f32(v16, vmulq_f32(v69, vaddq_f32(v45, vmulq_f32(v69, vaddq_f32(v42, vmulq_f32(v43, v69))))));
      v72 = vaddq_f32(v16, vmulq_f32(v70, vaddq_f32(v45, vmulq_f32(v70, vaddq_f32(v42, vmulq_f32(v43, v70))))));
      v73 = vbslq_s8(v48, vmulq_f32(v71, vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v67), v46), 0x17uLL)), v41);
      v74 = vbslq_s8(v48, vmulq_f32(v72, vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v68), v46), 0x17uLL)), v39);
      v75 = vbslq_s8(v52, vaddq_f32(vextq_s8(v53, v53, 8uLL), vmulq_lane_f32(v51, *v73.i8, 1)), v73);
      v76 = vbslq_s8(v52, vaddq_f32(vextq_s8(v64, v64, 8uLL), vmulq_lane_f32(v51, *v74.i8, 1)), v74);
      v77 = vextq_s8(v75, v75, 8uLL);
      v78 = vextq_s8(v76, v76, 8uLL);
      v79 = *(v12 + 352);
      v80 = *(v12 + 368);
      v81 = vaddq_f32(v51, vmulq_f32(v79, v77));
      v82 = vaddq_f32(v51, vmulq_f32(v79, v78));
      v83 = vandq_s8(v21, vcgtq_f32(v17, v81));
      v84 = vandq_s8(v21, vcgtq_f32(v17, v82));
      v85 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v81, 0x17uLL)), v83);
      v86 = vorrq_s8(vandq_s8(v13, v81), v51);
      v87 = vorrq_s8(vandq_s8(v13, v82), v51);
      v88 = vsubq_f32(v85, v20);
      v89 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v82, 0x17uLL)), v84), v20);
      v90 = vandq_s8(v51, vcgtq_f32(v86, v23));
      v91 = vandq_s8(v51, vcgtq_f32(v87, v23));
      v92 = vaddq_f32(v88, v90);
      v93 = vsubq_f32(vsubq_f32(v86, v51), vmulq_f32(vmulq_f32(v22, v90), v86));
      v94 = vsubq_f32(vsubq_f32(v87, v51), vmulq_f32(vmulq_f32(v22, v91), v87));
      v95 = vaddq_f32(vaddq_f32(v89, v91), vmulq_f32(v94, vaddq_f32(vaddq_f32(v30, vmulq_f32(v31, v94)), vmulq_f32(vmulq_f32(v94, v94), vaddq_f32(v28, vmulq_f32(v29, v94))))));
      v96 = vmulq_f32(v80, vaddq_f32(v92, vmulq_f32(v93, vaddq_f32(vaddq_f32(v30, vmulq_f32(v31, v93)), vmulq_f32(vmulq_f32(v93, v93), vaddq_f32(v28, vmulq_f32(v29, v93)))))));
      v97 = vmulq_f32(v80, v95);
      v98 = vandq_s8(v79, vcgtq_f32(v80, vextq_s8(v96, v96, 8uLL)));
      v99 = vandq_s8(v79, vcgtq_f32(v80, vextq_s8(v97, v97, 8uLL)));
      v91.i64[0] = v96.i64[0];
      v28.i64[0] = v97.i64[0];
      v91.i64[1] = v98.i64[1];
      v28.i64[1] = v99.i64[1];
      v96.i64[1] = vdupq_laneq_s64(v98, 1).u64[0];
      v97.i64[1] = vdupq_laneq_s64(v99, 1).u64[0];
      v100 = vbslq_s8(v48, vandq_s8(v79, vcgtq_f32(vrev64q_s32(v96), v80)), v91);
      v101 = vbslq_s8(v48, vandq_s8(v79, vcgtq_f32(vrev64q_s32(v97), v80)), v28);
      v102 = vminq_f32(vextq_s8(v100, v100, 8uLL), vrev64q_s32(v100));
      v103 = vminq_f32(vextq_s8(v101, v101, 8uLL), vrev64q_s32(v101));
      v91.i64[0] = v100.i64[0];
      v91.i64[1] = v102.i64[1];
      v28.i64[0] = v101.i64[0];
      v28.i64[1] = v103.i64[1];
      v100.i64[1] = vdupq_laneq_s64(v102, 1).u64[0];
      v101.i64[1] = vdupq_laneq_s64(v103, 1).u64[0];
      v104 = vbslq_s8(v48, vandq_s8(v79, vcgtq_f32(vrev64q_s32(v100), v80)), v91);
      v105 = vbslq_s8(v48, vandq_s8(v79, vcgtq_f32(vrev64q_s32(v101), v80)), v28);
      v106 = vbslq_s8(v52, vandq_s8(v79, vcgeq_f32(vnegq_f32(vrev64q_s32(v104)), v45)), v104);
      v107 = vbslq_s8(v52, vandq_s8(v79, vcgeq_f32(vnegq_f32(vrev64q_s32(v105)), v45)), v105);
      v109 = *(v12 + 384);
      v108 = *(v12 + 400);
      *v30.f32 = vqtbl1_s8(v106, *v109.i8);
      v104.i64[0] = vextq_s8(v109, v109, 8uLL).u64[0];
      *&v30.u32[2] = vqtbl1_s8(v106, *v104.i8);
      *v31.f32 = vqtbl1_s8(v107, *v109.i8);
      *&v31.u32[2] = vqtbl1_s8(v107, *v104.i8);
      v110 = vminq_f32(vdupq_lane_s64(v106.i64[0], 0), v30);
      v111 = vminq_f32(vdupq_lane_s64(v107.i64[0], 0), v31);
      v112 = vbslq_s8(v108, v106, v110);
      v113 = *(v12 + 416);
      v114 = *(v12 + 432);
      v115 = vbslq_s8(v108, v107, v111);
      v116 = vaddq_f32(v113, vmulq_n_f32(v114, v112.f32[0]));
      v117 = vaddq_f32(v113, vmulq_n_f32(v114, v115.f32[0]));
      v119 = *(v12 + 448);
      v118 = *(v12 + 464);
      v120 = vbslq_s8(v108, vaddq_f32(v119, vmulq_f32(v116, v112)), v116);
      v121 = vbslq_s8(v108, vaddq_f32(v119, vmulq_f32(v117, v115)), v117);
      v112.i64[1] = vbslq_s8(vcgtq_f32(v112, v119), vextq_s8(v120, v120, 4uLL), vdupq_lane_s64(*&v120, 0)).i64[1];
      v122 = vbslq_s8(v108, vaddq_f32(v22, vmulq_f32(v22, v112)), v112);
      v115.i64[1] = vbslq_s8(vcgtq_f32(v115, v119), vextq_s8(*&v121, *&v121, 4uLL), vdupq_lane_s64(*&v121, 0)).i64[1];
      v123 = vbslq_s8(v108, vaddq_f32(v22, vmulq_f32(v22, v115)), v115);
      v124 = vbslq_s8(vcgtq_f32(vrev64q_s32(v123), *v12), v123, vextq_s8(v123, v123, 0xCuLL));
      v125 = vsubq_f32(v75, vdupq_laneq_s32(v75, 2));
      v126 = vsubq_f32(v76, vdupq_laneq_s32(v76, 2));
      *v121.f32 = vext_s8(*v125.f32, *v77.f32, 4uLL);
      *&v121.u32[2] = vext_s8(*v77.f32, *v125.f32, 4uLL);
      *v48.f32 = vext_s8(*v126.f32, *v78.f32, 4uLL);
      *&v48.u32[2] = vext_s8(*v78.f32, *v126.f32, 4uLL);
      v127 = vmulq_f32(v119, v121);
      v128 = vmulq_f32(v119, v48);
      v129 = vmaxq_f32(vmulq_f32(v118, vbslq_s8(v108, vbslq_s8(vcgtq_f32(vrev64q_s32(v122), *v12), v122, vextq_s8(v122, v122, 0xCuLL)), v127)), v33);
      v130 = vmaxq_f32(vmulq_f32(v118, vbslq_s8(v108, v124, v128)), v33);
      v131 = vcvtq_f32_s32(vcvtq_s32_f32(v129));
      v132 = vcvtq_f32_s32(vcvtq_s32_f32(v130));
      v133 = vsubq_f32(v131, vandq_s8(v51, vcgtq_f32(v131, v129)));
      v134 = vsubq_f32(v132, vandq_s8(v51, vcgtq_f32(v132, v130)));
      v135 = vsubq_f32(v129, v133);
      v136 = vsubq_f32(v130, v134);
      v137 = vaddq_f32(v42, vmulq_f32(v43, v135));
      v138 = vmulq_f32(v136, vaddq_f32(v45, vmulq_f32(v136, vaddq_f32(v42, vmulq_f32(v43, v136)))));
      v139 = vmulq_f32(vaddq_f32(v51, vmulq_f32(v135, vaddq_f32(v45, vmulq_f32(v135, v137)))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v133), v109), 0x17uLL));
      v140 = vmulq_f32(vaddq_f32(v51, v138), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v134), v109), 0x17uLL));
      v141 = *(v12 + 480);
      v142 = *(v12 + 496);
      v143 = vmaxq_f32(vbslq_s8(v108, v139, v127), v141);
      v144 = vmaxq_f32(vbslq_s8(v108, v140, v128), v141);
      v145 = *(v12 + 512);
      v146 = *(v12 + 528);
      v147 = vaddq_f32(v142, vmulq_f32(v145, vbslq_s8(v108, v139, v143)));
      v148 = vaddq_f32(v142, vmulq_f32(v145, vbslq_s8(v108, v140, v144)));
      v149 = vbslq_s8(v108, v147, v143);
      v150 = vbslq_s8(v108, v148, v144);
      v151 = vminq_f32(vmaxq_f32(vmulq_f32(v145, vrecpeq_f32(v149)), v142), v146);
      v152 = vminq_f32(vmaxq_f32(vmulq_f32(v145, vrecpeq_f32(v150)), v142), v146);
      v147.i64[0] = vbslq_s8(v108, v147, vmulq_n_f32(vmulq_f32(v151, vrecpsq_f32(v149, v151)), v149.f32[0])).u64[0];
      v148.i64[0] = vbslq_s8(v108, v148, vmulq_n_f32(vmulq_f32(v152, vrecpsq_f32(v150, v152)), v150.f32[0])).u64[0];
      v125.i64[0] = vmulq_lane_f32(v125, *v147.i8, 1).u64[0];
      v126.i64[0] = vmulq_lane_f32(v126, *v148.i8, 1).u64[0];
      v125.i64[1] = v75.i64[1];
      v126.i64[1] = v76.i64[1];
      v153 = *(v12 + 544);
      v154 = vbslq_s8(v108, vmulq_f32(v153, v125), v125);
      v155 = vbslq_s8(v108, vmulq_f32(v153, v126), v126);
      v76.i64[0] = v147.i64[0];
      v76.i64[1] = vmulq_f32(v153, vdupq_lane_s64(*&v154, 0)).i64[1];
      v150.i64[0] = v148.i64[0];
      v150.i64[1] = vmulq_f32(v153, vdupq_lane_s64(*&v155, 0)).i64[1];
      v156 = vbslq_s8(v52, vmaxq_f32(v76, v145), v154);
      v157 = vbslq_s8(v52, vmaxq_f32(v150, v145), v155);
      v153.i64[0] = vmvnq_s8(v108).u64[0];
      *v147.i8 = vorr_s8(vand_s8(*v108.i8, vsub_f32(*v147.i8, *&vextq_s8(v156, v156, 8uLL))), vand_s8(vmul_f32(*v118.f32, *v156.i8), *v153.f32));
      v147.u64[1] = vqtbl1_s8(v156, *v104.i8);
      *v156.i8 = vorr_s8(vand_s8(*v108.i8, vsub_f32(*v148.i8, *&vextq_s8(v157, v157, 8uLL))), vand_s8(vmul_f32(*v118.f32, *v157.i8), *v153.f32));
      v156.u64[1] = vqtbl1_s8(v157, *v104.i8);
      v158 = (v5 + v10);
      v158[-1] = v147;
      *v158 = v156;
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v159 = 16 * v9;
    v160 = *(this + 51);
    v161 = *(v160 + 16);
    v162 = vmaxq_f32(*(v6 + v159), *v160);
    v164 = *(v160 + 32);
    v163 = *(v160 + 48);
    v165 = vorrq_s8(vandq_s8(v161, v162), v164);
    v166 = *(v160 + 64);
    v167 = *(v160 + 80);
    v169 = *(v160 + 96);
    v168 = *(v160 + 112);
    v170 = vandq_s8(v164, vcgtq_f32(v165, v169));
    v171 = vsubq_f32(vsubq_f32(v165, v164), vmulq_f32(vmulq_f32(v168, v170), v165));
    v172 = *(v160 + 128);
    v173 = *(v160 + 144);
    v174 = *(v160 + 160);
    v175 = *(v160 + 176);
    v176 = vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v162, 0x17uLL)), vandq_s8(v166, vcgtq_f32(v163, v162))), v167), v170), vmulq_f32(v171, vaddq_f32(vaddq_f32(v174, vmulq_f32(v171, v175)), vmulq_f32(vmulq_f32(v171, v171), vaddq_f32(v172, vmulq_f32(v173, v171))))));
    v178 = *(v160 + 192);
    v177 = *(v160 + 208);
    v179 = vmaxq_f32(vmulq_f32(v178, v176), v177);
    v180 = vcvtq_f32_s32(vcvtq_s32_f32(v179));
    v181 = vsubq_f32(v180, vandq_s8(v164, vcgtq_f32(v180, v179)));
    v182 = vsubq_f32(v179, v181);
    v183 = *(v160 + 224);
    v184 = *(v160 + 240);
    v185 = *(v160 + 256);
    v186 = *(v160 + 272);
    v187.i64[0] = vmulq_f32(vaddq_f32(v164, vmulq_f32(v182, vaddq_f32(v185, vmulq_f32(v182, vaddq_f32(v183, vmulq_f32(v184, v182)))))), vshlq_n_s32(vaddq_s32(v186, vcvtq_s32_f32(v181)), 0x17uLL)).u64[0];
    v187.i64[1] = v162.i64[1];
    v188 = *(v160 + 304);
    v189 = vbslq_s8(v188, vmulq_f32(*(v160 + 288), v187), v187);
    v190 = *(v160 + 320);
    v191 = *(v160 + 336);
    v192 = vaddq_f32(vrev64q_s32(v189), vmulq_lane_f32(v189, *v190.f32, 1));
    v193 = vextq_s8(v189, v189, 4uLL);
    v194 = vorrq_s8(vandq_s8(v193, v161), v164);
    v195 = vandq_s8(v164, vcgtq_f32(v194, v169));
    v196 = vsubq_f32(vsubq_f32(v194, v164), vmulq_f32(vmulq_f32(v168, v195), v194));
    v197 = vmaxq_f32(vmulq_f32(v178, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v193, 0x17uLL)), vandq_s8(v166, vcgtq_f32(v163, v193))), v167), v195), vmulq_f32(v196, vaddq_f32(vaddq_f32(v174, vmulq_f32(v175, v196)), vmulq_f32(vmulq_f32(v196, v196), vaddq_f32(v172, vmulq_f32(v173, v196))))))), v177);
    v198 = vcvtq_f32_s32(vcvtq_s32_f32(v197));
    v199 = vsubq_f32(v198, vandq_s8(v164, vcgtq_f32(v198, v197)));
    v200 = vsubq_f32(v197, v199);
    v201 = vbslq_s8(v188, vmulq_f32(vaddq_f32(v164, vmulq_f32(v200, vaddq_f32(v185, vmulq_f32(v200, vaddq_f32(v183, vmulq_f32(v184, v200)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v199), v186), 0x17uLL)), v187);
    v202 = vbslq_s8(v191, vaddq_f32(vextq_s8(v192, v192, 8uLL), vmulq_lane_f32(v190, *v201.i8, 1)), v201);
    v203 = vextq_s8(v202, v202, 8uLL);
    v204 = *(v160 + 352);
    v205 = *(v160 + 368);
    v206 = vaddq_f32(v190, vmulq_f32(v204, v203));
    v207 = vorrq_s8(vandq_s8(v161, v206), v190);
    v208 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v206, 0x17uLL)), vandq_s8(v166, vcgtq_f32(v163, v206))), v167);
    v209 = vandq_s8(v190, vcgtq_f32(v207, v169));
    v210 = vsubq_f32(vsubq_f32(v207, v190), vmulq_f32(vmulq_f32(v168, v209), v207));
    v211 = vmulq_f32(v205, vaddq_f32(vaddq_f32(v208, v209), vmulq_f32(v210, vaddq_f32(vaddq_f32(v174, vmulq_f32(v175, v210)), vmulq_f32(vmulq_f32(v210, v210), vaddq_f32(v172, vmulq_f32(v173, v210)))))));
    v212 = vandq_s8(v204, vcgtq_f32(v205, vextq_s8(v211, v211, 8uLL)));
    v209.i64[0] = v211.i64[0];
    v209.i64[1] = v212.i64[1];
    v211.i64[1] = vdupq_laneq_s64(v212, 1).u64[0];
    v213 = vbslq_s8(v188, vandq_s8(v204, vcgtq_f32(vrev64q_s32(v211), v205)), v209);
    v214 = vminq_f32(vextq_s8(v213, v213, 8uLL), vrev64q_s32(v213));
    v209.i64[0] = v213.i64[0];
    v209.i64[1] = v214.i64[1];
    v213.i64[1] = vdupq_laneq_s64(v214, 1).u64[0];
    v215 = vbslq_s8(v188, vandq_s8(v204, vcgtq_f32(vrev64q_s32(v213), v205)), v209);
    v216 = vbslq_s8(v191, vandq_s8(v204, vcgeq_f32(vnegq_f32(vrev64q_s32(v215)), v185)), v215);
    v218 = *(v160 + 384);
    v217 = *(v160 + 400);
    *v172.f32 = vqtbl1_s8(v216, *v218.i8);
    v214.i64[0] = vextq_s8(v218, v218, 8uLL).u64[0];
    *&v172.u32[2] = vqtbl1_s8(v216, *v214.i8);
    v219 = vbslq_s8(v217, v216, vminq_f32(vdupq_lane_s64(v216.i64[0], 0), v172));
    v220 = vaddq_f32(*(v160 + 416), vmulq_n_f32(*(v160 + 432), v219.f32[0]));
    v222 = *(v160 + 448);
    v221 = *(v160 + 464);
    v223 = vbslq_s8(v217, vaddq_f32(v222, vmulq_f32(v220, v219)), v220);
    v224 = vsubq_f32(v202, vdupq_laneq_s32(v202, 2));
    v219.i64[1] = vbslq_s8(vcgtq_f32(v219, v222), vextq_s8(v223, v223, 4uLL), vdupq_lane_s64(*&v223, 0)).i64[1];
    v225 = vbslq_s8(v217, vaddq_f32(v168, vmulq_f32(v168, v219)), v219);
    *v175.f32 = vext_s8(*v224.f32, *v203.f32, 4uLL);
    *&v175.u32[2] = vext_s8(*v203.f32, *v224.f32, 4uLL);
    v226 = vbslq_s8(vcgtq_f32(vrev64q_s32(v225), *v160), v225, vextq_s8(v225, v225, 0xCuLL));
    v227 = vmulq_f32(v222, v175);
    v228 = vmaxq_f32(vmulq_f32(v221, vbslq_s8(v217, v226, v227)), v177);
    v229 = vcvtq_f32_s32(vcvtq_s32_f32(v228));
    v230 = vsubq_f32(v229, vandq_s8(v190, vcgtq_f32(v229, v228)));
    v231 = vsubq_f32(v228, v230);
    v232 = vmulq_f32(vaddq_f32(v190, vmulq_f32(v231, vaddq_f32(v185, vmulq_f32(v231, vaddq_f32(v183, vmulq_f32(v184, v231)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v230), v218), 0x17uLL));
    v233 = *(v160 + 496);
    v234 = vmaxq_f32(vbslq_s8(v217, v232, v227), *(v160 + 480));
    v235 = *(v160 + 512);
    v236 = vaddq_f32(v233, vmulq_f32(v235, vbslq_s8(v217, v232, v234)));
    v237 = vbslq_s8(v217, v236, v234);
    v238 = vminq_f32(vmaxq_f32(vmulq_f32(v235, vrecpeq_f32(v237)), v233), *(v160 + 528));
    v236.i64[0] = vbslq_s8(v217, v236, vmulq_n_f32(vmulq_f32(v238, vrecpsq_f32(v237, v238)), v237.f32[0])).u64[0];
    v237.i64[0] = vmulq_lane_f32(v224, *v236.i8, 1).u64[0];
    v237.i64[1] = v202.i64[1];
    v239 = *(v160 + 544);
    v240 = vbslq_s8(v217, vmulq_f32(v239, v237), v237);
    v184.i64[0] = v236.i64[0];
    v184.i64[1] = vmulq_f32(v239, vdupq_lane_s64(*&v240, 0)).i64[1];
    v241 = vbslq_s8(v191, vmaxq_f32(v184, v235), v240);
    *v236.i8 = vorr_s8(vand_s8(*v217.i8, vsub_f32(*v236.i8, *&vextq_s8(v241, v241, 8uLL))), vand_s8(vmul_f32(*v221.f32, *v241.i8), *&vmvnq_s8(v217)));
    v236.u64[1] = vqtbl1_s8(v241, *v214.i8);
    *(v5 + v159) = v236;
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2446_Method_A_TMO_Input_Clamped::GetDOD(HgcBT2446_Method_A_TMO_Input_Clamped *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2446_Method_A_TMO_Input_Clamped::GetROI(HgcBT2446_Method_A_TMO_Input_Clamped *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2446_Method_A_TMO_Input_Clamped::HgcBT2446_Method_A_TMO_Input_Clamped(HgcBT2446_Method_A_TMO_Input_Clamped *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287235458;
  operator new();
}

void HgcBT2446_Method_A_TMO_Input_Clamped::~HgcBT2446_Method_A_TMO_Input_Clamped(HgcBT2446_Method_A_TMO_Input_Clamped *this)
{
  *this = &unk_287235458;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40897A1F55);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2446_Method_A_TMO_Input_Clamped::~HgcBT2446_Method_A_TMO_Input_Clamped(HGNode *this)
{
  *this = &unk_287235458;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40897A1F55);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcBT2446_Method_A_ITMO::GetProgram(HgcBT2446_Method_A_ITMO *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000069a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(255.0000000, 1.871200038e-05, 2.830500080e-06, 70.00000000);\n    const half4 c1 = half4(1.252799988, -0.002733400092, -0.0007462200010, 1.314100027);\n    const half4 c2 = half4(0.000000000, 1.075000048, 1.000000000, 1.474599957);\n    const half4 c3 = half4(0.001000000047, 1000.000000, -0.1645500064, 2.400000095);\n    const half4 c4 = half4(1.881399989, -0.5713499784, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = r0.x*c0.x;\n    r1.yz = r1.xx*c0.yz + c1.yz;\n    r1.zw = r1.xx*r1.zy + c1.xw;\n    r1.y = c0.w - r1.x;\n    r1.y = select(r1.w, r1.z, r1.y < 0.00000h);\n    r1.x = fmax(r1.x, c2.x);\n    r1.x = pow(r1.x, r1.y);\n    r1.y = r1.x/r0.x;\n    r1.y = r1.y*c2.y;\n    r0.x = select(c2.z, r1.y, -r0.x < 0.00000h);\n    r0.xz = r0.yz*r0.xx;\n    r1.y = r0.z*c2.w + r1.x;\n    r1.y = fmin(r1.y, c3.y);\n    r1.y = fmax(r1.y, c2.x);\n    r0.y = r1.y*c3.x;\n    r1.y = r0.x*c3.z + r1.x;\n    output.color0.x = pow(float(r0.y), float(c3.w));\n    r0.xy = r0.xz*c4.xy + r1.xy;\n    r0.xy = fmin(r0.xy, c3.yy);\n    r0.xy = fmax(r0.xy, c2.xx);\n    r0.xy = r0.xy*c3.xx;\n    output.color0.yz = pow(float2(r0.yx), float2(c3.ww));\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=52cfe100:87057625:53164afc:07fec1d0\n//SIG=00400000:00000001:00000001:00000001:0005:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000679\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(255.0000000, 1.871200038e-05, 2.830500080e-06, 70.00000000);\n    const float4 c1 = float4(1.252799988, -0.002733400092, -0.0007462200010, 1.314100027);\n    const float4 c2 = float4(0.000000000, 1.075000048, 1.000000000, 1.474599957);\n    const float4 c3 = float4(0.001000000047, 1000.000000, -0.1645500064, 2.400000095);\n    const float4 c4 = float4(1.881399989, -0.5713499784, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = r0.x*c0.x;\n    r1.yz = r1.xx*c0.yz + c1.yz;\n    r1.zw = r1.xx*r1.zy + c1.xw;\n    r1.y = c0.w - r1.x;\n    r1.y = select(r1.w, r1.z, r1.y < 0.00000f);\n    r1.x = fmax(r1.x, c2.x);\n    r1.x = pow(r1.x, r1.y);\n    r1.y = r1.x/r0.x;\n    r1.y = r1.y*c2.y;\n    r0.x = select(c2.z, r1.y, -r0.x < 0.00000f);\n    r0.xz = r0.yz*r0.xx;\n    r1.y = r0.z*c2.w + r1.x;\n    r1.y = fmin(r1.y, c3.y);\n    r1.y = fmax(r1.y, c2.x);\n    r0.y = r1.y*c3.x;\n    r1.y = r0.x*c3.z + r1.x;\n    output.color0.x = pow(r0.y, c3.w);\n    r0.xy = r0.xz*c4.xy + r1.xy;\n    r0.xy = fmin(r0.xy, c3.yy);\n    r0.xy = fmax(r0.xy, c2.xx);\n    r0.xy = r0.xy*c3.xx;\n    output.color0.yz = pow(r0.yx, c3.ww);\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=5fd96646:90622500:0191c3b0:ef8ed030\n//SIG=00000000:00000001:00000001:00000000:0005:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000619\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(255.0000000, 1.871200038e-05, 2.830500080e-06, 70.00000000);\n    const mediump vec4 c1 = vec4(1.252799988, -0.002733400092, -0.0007462200010, 1.314100027);\n    const mediump vec4 c2 = vec4(0.000000000, 1.075000048, 1.000000000, 1.474599957);\n    const mediump vec4 c3 = vec4(0.001000000047, 1000.000000, -0.1645500064, 2.400000095);\n    const mediump vec4 c4 = vec4(1.881399989, -0.5713499784, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = r0.x*c0.x;\n    r1.yz = r1.xx*c0.yz + c1.yz;\n    r1.zw = r1.xx*r1.zy + c1.xw;\n    r1.y = c0.w - r1.x;\n    r1.y = r1.y < 0.00000 ? r1.z : r1.w;\n    r1.x = max(r1.x, c2.x);\n    r1.x = pow(r1.x, r1.y);\n    r1.y = r1.x/r0.x;\n    r1.y = r1.y*c2.y;\n    r0.x = -r0.x < 0.00000 ? r1.y : c2.z;\n    r0.xz = r0.yz*r0.xx;\n    r1.y = r0.z*c2.w + r1.x;\n    r1.y = min(r1.y, c3.y);\n    r1.y = max(r1.y, c2.x);\n    r0.y = r1.y*c3.x;\n    r1.y = r0.x*c3.z + r1.x;\n    gl_FragColor.x = pow(r0.y, c3.w);\n    r0.xy = r0.xz*c4.xy + r1.xy;\n    r0.xy = min(r0.xy, c3.yy);\n    r0.xy = max(r0.xy, c2.xx);\n    r0.xy = r0.xy*c3.xx;\n    gl_FragColor.yz = pow(r0.yx, c3.ww);\n    gl_FragColor.w = r0.w;\n}\n//MD5=4c3db6c5:8c56c001:502585ba:cb00e598\n//SIG=00000000:00000001:00000001:00000000:0005:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE00AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE00B08(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE00B00);
}

uint64_t HgcBT2446_Method_A_ITMO::BindTexture(HgcBT2446_Method_A_ITMO *this, HGHandler *a2, int a3)
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

uint64_t HgcBT2446_Method_A_ITMO::RenderTile(HgcBT2446_Method_A_ITMO *this, HGTile *a2)
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
      v16 = vmulq_f32(v12, *v14);
      v17 = vmulq_f32(v13, *v14);
      v18 = *(v14 + 32);
      v19 = *(v14 + 48);
      v20 = vbslq_s8(v18, v16, vaddq_f32(*v14, vmulq_n_f32(v15, *v16.i32)));
      v21 = vextq_s8(v19, v19, 8uLL).u64[0];
      v22 = vbslq_s8(v18, v17, vaddq_f32(*v14, vmulq_n_f32(v15, *v17.i32)));
      *v23.f32 = vqtbl1_s8(v20, v21);
      v23.i64[1] = v23.i64[0];
      *v24.f32 = vqtbl1_s8(v22, v21);
      v24.i64[1] = v24.i64[0];
      v25 = *(v14 + 64);
      v26 = *(v14 + 80);
      v20.i64[1] = vaddq_f32(v25, vmulq_n_f32(v23, *&v20)).i64[1];
      v22.i64[1] = vaddq_f32(v25, vmulq_n_f32(v24, *&v22)).i64[1];
      v27 = vbslq_s8(v26, vrev64q_s32(vsubq_f32(v25, v20)), v20);
      v28 = vbslq_s8(v26, vrev64q_s32(vsubq_f32(v25, v22)), v22);
      v29 = vbslq_s8(vcgtq_f32(v25, v27), vextq_s8(v27, v27, 4uLL), vextq_s8(v27, v27, 8uLL));
      v30 = vbslq_s8(vcgtq_f32(v25, v28), vextq_s8(v28, v28, 4uLL), vextq_s8(v28, v28, 8uLL));
      v31 = vbslq_s8(v18, v27, v29);
      v33 = *(v14 + 96);
      v32 = *(v14 + 112);
      v34 = vbslq_s8(v18, vmaxq_f32(v31, v33), v29);
      v35 = vbslq_s8(v18, vmaxq_f32(vbslq_s8(v18, v28, v30), v33), v30);
      v36 = vorrq_s8(vandq_s8(v34, v19), v15);
      v37 = vorrq_s8(vandq_s8(v35, v19), v15);
      v39 = *(v14 + 128);
      v38 = *(v14 + 144);
      v40 = *(v14 + 160);
      v41 = *(v14 + 176);
      v42 = vandq_s8(v15, vcgtq_f32(v36, v40));
      v43 = vandq_s8(v15, vcgtq_f32(v37, v40));
      v44 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v32, v34))), v38), v42);
      v45 = vsubq_f32(vsubq_f32(v36, v15), vmulq_f32(vmulq_f32(v41, v42), v36));
      v46 = vsubq_f32(vsubq_f32(v37, v15), vmulq_f32(vmulq_f32(v41, v43), v37));
      v47 = *(v14 + 192);
      v48 = *(v14 + 208);
      v49 = *(v14 + 224);
      v50 = *(v14 + 240);
      v51 = vmulq_lane_f32(vaddq_f32(v44, vmulq_f32(v45, vaddq_f32(vaddq_f32(v49, vmulq_f32(v50, v45)), vmulq_f32(vmulq_f32(v45, v45), vaddq_f32(v47, vmulq_f32(v48, v45)))))), *v34.f32, 1);
      v52 = vmulq_lane_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v35, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v32, v35))), v38), v43), vmulq_f32(v46, vaddq_f32(vaddq_f32(v49, vmulq_f32(v50, v46)), vmulq_f32(vmulq_f32(v46, v46), vaddq_f32(v47, vmulq_f32(v48, v46)))))), *v35.f32, 1);
      v54 = *(v14 + 256);
      v53 = *(v14 + 272);
      v55 = vmaxq_f32(v51, v54);
      v56 = vmaxq_f32(v52, v54);
      v57 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v59 = vsubq_f32(v57, vandq_s8(v15, vcgtq_f32(v57, v55)));
      v60 = vsubq_f32(v58, vandq_s8(v15, vcgtq_f32(v58, v56)));
      v61 = vsubq_f32(v55, v59);
      v63 = *(v14 + 288);
      v62 = *(v14 + 304);
      v64 = vsubq_f32(v56, v60);
      v65 = vmulq_f32(v64, vaddq_f32(v62, vmulq_f32(v64, vaddq_f32(v53, vmulq_f32(v63, v64)))));
      v67 = *(v14 + 320);
      v66 = *(v14 + 336);
      v68 = vaddq_f32(v15, vmulq_f32(v61, vaddq_f32(v62, vmulq_f32(v61, vaddq_f32(v53, vmulq_f32(v63, v61))))));
      v69 = vshlq_n_s32(vaddq_s32(v67, vcvtq_s32_f32(v60)), 0x17uLL);
      v70 = vrev64q_s32(v12);
      v71 = vrev64q_s32(v13);
      v72 = vaddq_f32(v15, v65);
      v73 = vminq_f32(vmaxq_f32(vmulq_f32(v62, vrecpeq_f32(v70)), v63), v66);
      v74 = vmulq_f32(v68, vshlq_n_s32(vaddq_s32(v67, vcvtq_s32_f32(v59)), 0x17uLL));
      v75 = vminq_f32(vmaxq_f32(vmulq_f32(v62, vrecpeq_f32(v71)), v63), v66);
      v76 = vmulq_f32(v75, vrecpsq_f32(v71, v75));
      v77 = vmulq_f32(v72, v69);
      v78 = vmulq_n_f32(v76, *v77.i32);
      v80 = *(v14 + 352);
      v79 = *(v14 + 368);
      v81 = vrev64q_s32(vbslq_s8(v18, v74, vmulq_f32(v80, vbslq_s8(v18, v74, vmulq_n_f32(vmulq_f32(v73, vrecpsq_f32(v70, v73)), *v74.i32)))));
      v82 = vrev64q_s32(vbslq_s8(v18, v77, vmulq_f32(v80, vbslq_s8(v18, v77, v78))));
      v83 = vbslq_s8(v18, vbslq_s8(vcgtq_f32(v12, v33), v81, v80), v12);
      v84 = vbslq_s8(v18, vbslq_s8(vcgtq_f32(v13, v33), v82, v80), v13);
      *v12.f32 = vqtbl1_s8(v83, *v79.f32);
      v33.i64[0] = vextq_s8(v79, v79, 8uLL).u64[0];
      *v79.f32 = vqtbl1_s8(v84, *v79.f32);
      *&v12.u32[2] = vqtbl1_s8(v83, *v33.f32);
      *&v79.u32[2] = vqtbl1_s8(v84, *v33.f32);
      v85 = vmulq_n_f32(v12, *v83.i32);
      v87 = *(v14 + 384);
      v86 = *(v14 + 400);
      v88 = vbslq_s8(v87, v83, v85);
      v89 = vbslq_s8(v87, v84, vmulq_n_f32(v79, *v84.i32));
      v90 = vbslq_s8(v18, v74, vmaxq_f32(vbslq_s8(v18, v74, vminq_f32(vbslq_s8(v18, v74, vaddq_f32(v81, vmulq_laneq_f32(v53, v88, 2))), v39)), v86));
      v91 = vbslq_s8(v18, v77, vmaxq_f32(vbslq_s8(v18, v77, vminq_f32(vbslq_s8(v18, v77, vaddq_f32(v82, vmulq_laneq_f32(v53, v89, 2))), v39)), v86));
      v92 = vbslq_s8(v26, vmulq_f32(v54, v90), v88);
      v93 = vbslq_s8(v26, vmulq_f32(v54, v91), v89);
      v94 = vaddq_f32(vrev64q_s32(v90), vmulq_n_f32(v50, *v92.i32));
      v95 = vrev64q_s32(v92);
      v96 = vrev64q_s32(v93);
      v97 = vorrq_s8(vandq_s8(v95, v19), v80);
      v98 = vorrq_s8(vandq_s8(v96, v19), v80);
      v99 = vbslq_s8(v18, v74, v94);
      v100 = vandq_s8(v39, vcgtq_f32(v32, v95));
      v101 = vandq_s8(v39, vcgtq_f32(v32, v96));
      v102 = vshrq_n_u32(v95, 0x17uLL);
      v103 = vshrq_n_u32(v96, 0x17uLL);
      v104 = vcvtq_f32_u32(v102);
      v105 = vbslq_s8(v18, v77, vaddq_f32(vrev64q_s32(v91), vmulq_n_f32(v50, *v93.i32)));
      v106 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(v103), v101), v38);
      v107 = vandq_s8(v80, vcgtq_f32(v97, v40));
      v108 = vandq_s8(v80, vcgtq_f32(v98, v40));
      v109 = vaddq_f32(vsubq_f32(vsubq_f32(v104, v100), v38), v107);
      v110 = vsubq_f32(vsubq_f32(v97, v80), vmulq_f32(vmulq_f32(v41, v107), v97));
      v111 = vsubq_f32(vsubq_f32(v98, v80), vmulq_f32(vmulq_f32(v41, v108), v98));
      v112 = vmulq_f32(v111, vaddq_f32(vaddq_f32(v49, vmulq_f32(v50, v111)), vmulq_f32(vmulq_f32(v111, v111), vaddq_f32(v47, vmulq_f32(v48, v111)))));
      v113 = vaddq_f32(v109, vmulq_f32(v110, vaddq_f32(vaddq_f32(v49, vmulq_f32(v50, v110)), vmulq_f32(vmulq_f32(v110, v110), vaddq_f32(v47, vmulq_f32(v48, v110))))));
      v114 = vaddq_f32(vaddq_f32(v106, v108), v112);
      v115 = *(v14 + 416);
      v116 = *(v14 + 432);
      v117 = vmaxq_f32(vmulq_f32(v115, v113), v54);
      v118 = vmaxq_f32(vmulq_f32(v115, v114), v54);
      v119 = vcvtq_f32_s32(vcvtq_s32_f32(v117));
      v120 = vcvtq_f32_s32(vcvtq_s32_f32(v118));
      v121 = vsubq_f32(v119, vandq_s8(v80, vcgtq_f32(v119, v117)));
      v122 = vsubq_f32(v120, vandq_s8(v80, vcgtq_f32(v120, v118)));
      v123 = vsubq_f32(v117, v121);
      v124 = vsubq_f32(v118, v122);
      v125 = vcvtq_s32_f32(v121);
      *v121.f32 = vqtbl1_s8(v92, *v116.f32);
      *v116.f32 = vqtbl1_s8(v93, *v116.f32);
      v126 = *(v14 + 448);
      v127 = *(v14 + 464);
      v99.i64[0] = vaddq_f32(vmulq_f32(v121, v126), v99).u64[0];
      v105.i64[0] = vaddq_f32(vmulq_f32(v126, v116), v105).u64[0];
      v99.i64[1] = v92.i64[1];
      v105.i64[1] = v93.i64[1];
      v99.i64[0] = vminq_f32(v99, v127).u64[0];
      v128 = vmulq_f32(v63, v123);
      v105.i64[0] = vminq_f32(v105, v127).u64[0];
      v99.i64[1] = v92.i64[1];
      v105.i64[1] = v93.i64[1];
      v129 = vmulq_f32(v63, v124);
      v131 = *(v14 + 480);
      v130 = *(v14 + 496);
      v132 = vmaxq_f32(v105, v131);
      v133 = vshlq_n_s32(vaddq_s32(v125, v67), 0x17uLL);
      v131.i64[0] = vmulq_f32(vmaxq_f32(v99, v131), v130).u64[0];
      v134 = vdupq_lane_s64(v131.i64[0], 0);
      v131.i64[1] = v92.i64[1];
      v135 = vaddq_f32(v53, v128);
      v125.i64[0] = vmulq_f32(v132, v130).u64[0];
      v136 = vdupq_lane_s64(v125.i64[0], 0);
      v125.i64[1] = v93.i64[1];
      v137 = vaddq_f32(v53, v129);
      v138 = vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v122), v67), 0x17uLL);
      v139 = vorrq_s8(vandq_s8(v67, v134), v115);
      v140 = vorrq_s8(vandq_s8(v67, v136), v115);
      v141 = vandq_s8(v48, vcgtq_f32(v49, v134));
      v142 = vandq_s8(v48, vcgtq_f32(v49, v136));
      v143 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v134, 0x17uLL)), v141), v47);
      v144 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v136, 0x17uLL)), v142), v47);
      v145 = vandq_s8(v115, vcgtq_f32(v139, v41));
      v146 = vandq_s8(v115, vcgtq_f32(v140, v41));
      v147 = vaddq_f32(v143, v145);
      v148 = vaddq_f32(v144, v146);
      v149 = vmulq_f32(v40, v145);
      v150 = vmulq_f32(v40, v146);
      v151 = vmulq_f32(v123, vaddq_f32(v62, vmulq_f32(v123, v135)));
      v152 = vsubq_f32(vsubq_f32(v139, v115), vmulq_f32(v149, v139));
      v153 = vmulq_f32(v124, vaddq_f32(v62, vmulq_f32(v124, v137)));
      v154 = vsubq_f32(vsubq_f32(v140, v115), vmulq_f32(v150, v140));
      v155 = vaddq_f32(v38, vmulq_f32(v32, v152));
      v156 = vaddq_f32(v80, v151);
      v157 = vaddq_f32(v38, vmulq_f32(v32, v154));
      v158 = *(v14 + 512);
      v159 = *(v14 + 528);
      v160 = vaddq_f32(vaddq_f32(v158, vmulq_f32(v159, v154)), vmulq_f32(vmulq_f32(v154, v154), v157));
      v161 = vaddq_f32(v147, vmulq_f32(v152, vaddq_f32(vaddq_f32(v158, vmulq_f32(v159, v152)), vmulq_f32(vmulq_f32(v152, v152), v155))));
      v162 = vmulq_f32(v154, v160);
      v163 = vmulq_f32(vaddq_f32(v80, v153), v138);
      v164 = vaddq_f32(v148, v162);
      v165 = *(v14 + 544);
      v166 = *(v14 + 560);
      v167 = vmaxq_f32(vmulq_f32(v165, v161), v166);
      v168 = vmaxq_f32(vmulq_f32(v165, v164), v166);
      v169 = vcvtq_f32_s32(vcvtq_s32_f32(v167));
      v170 = vcvtq_f32_s32(vcvtq_s32_f32(v168));
      v171 = vsubq_f32(v169, vandq_s8(v115, vcgtq_f32(v169, v167)));
      v172 = vsubq_f32(v170, vandq_s8(v115, vcgtq_f32(v170, v168)));
      v173 = vsubq_f32(v167, v171);
      v174 = vsubq_f32(v168, v172);
      v175 = *(v14 + 576);
      v176 = *(v14 + 592);
      v177 = vaddq_f32(v175, vmulq_f32(v176, v173));
      v178 = vaddq_f32(v175, vmulq_f32(v176, v174));
      v179 = vmulq_f32(v173, v177);
      v180 = *(v14 + 608);
      v181 = *(v14 + 624);
      v182 = (v5 + v10);
      v182[-1] = vbslq_s8(v87, v131, vbslq_s8(v18, vmulq_f32(v156, v133), vmulq_f32(vaddq_f32(v115, vmulq_f32(v173, vaddq_f32(v180, v179))), vshlq_n_s32(vaddq_s32(v181, vcvtq_s32_f32(v171)), 0x17uLL))));
      *v182 = vbslq_s8(v87, v125, vbslq_s8(v18, v163, vmulq_f32(vaddq_f32(v115, vmulq_f32(v174, vaddq_f32(v180, vmulq_f32(v174, v178)))), vshlq_n_s32(vaddq_s32(v181, vcvtq_s32_f32(v172)), 0x17uLL))));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v183 = 16 * v9;
    v184 = *(v6 + v183);
    v185 = *(this + 51);
    v186 = *(v185 + 16);
    v187 = vmulq_f32(v184, *v185);
    v188 = *(v185 + 32);
    v189 = *(v185 + 48);
    v190 = vbslq_s8(v188, v187, vaddq_f32(*v185, vmulq_n_f32(v186, *v187.i32)));
    *v191.f32 = vqtbl1_s8(v190, *&vextq_s8(v189, v189, 8uLL));
    v191.i64[1] = v191.i64[0];
    v192 = *(v185 + 64);
    v193 = *(v185 + 80);
    v190.i64[1] = vaddq_f32(v192, vmulq_n_f32(v191, *&v190)).i64[1];
    v194 = vbslq_s8(v193, vrev64q_s32(vsubq_f32(v192, v190)), v190);
    v195 = vbslq_s8(vcgtq_f32(v192, v194), vextq_s8(v194, v194, 4uLL), vextq_s8(v194, v194, 8uLL));
    v196 = vbslq_s8(v188, v194, v195);
    v198 = *(v185 + 96);
    v197 = *(v185 + 112);
    v199 = vbslq_s8(v188, vmaxq_f32(v196, v198), v195);
    v200 = vorrq_s8(vandq_s8(v199, v189), v186);
    v202 = *(v185 + 128);
    v201 = *(v185 + 144);
    v203 = *(v185 + 160);
    v204 = *(v185 + 176);
    v205 = vandq_s8(v186, vcgtq_f32(v200, v203));
    v206 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v199, 0x17uLL)), vandq_s8(v202, vcgtq_f32(v197, v199))), v201), v205);
    v207 = vsubq_f32(vsubq_f32(v200, v186), vmulq_f32(vmulq_f32(v204, v205), v200));
    v208 = *(v185 + 192);
    v209 = *(v185 + 208);
    v210 = *(v185 + 224);
    v211 = *(v185 + 240);
    v212 = vmulq_lane_f32(vaddq_f32(v206, vmulq_f32(v207, vaddq_f32(vaddq_f32(v210, vmulq_f32(v211, v207)), vmulq_f32(vmulq_f32(v207, v207), vaddq_f32(v208, vmulq_f32(v209, v207)))))), *v199.f32, 1);
    v213 = *(v185 + 256);
    v214 = *(v185 + 272);
    v215 = vmaxq_f32(v212, v213);
    v216 = vcvtq_f32_s32(vcvtq_s32_f32(v215));
    v217 = vsubq_f32(v216, vandq_s8(v186, vcgtq_f32(v216, v215)));
    v218 = vsubq_f32(v215, v217);
    v219 = *(v185 + 288);
    v220 = *(v185 + 304);
    v221 = vaddq_f32(v186, vmulq_f32(v218, vaddq_f32(v220, vmulq_f32(v218, vaddq_f32(v214, vmulq_f32(v219, v218))))));
    v222 = *(v185 + 320);
    v223 = vmulq_f32(v221, vshlq_n_s32(vaddq_s32(v222, vcvtq_s32_f32(v217)), 0x17uLL));
    v224 = vrev64q_s32(v184);
    v225 = vminq_f32(vmaxq_f32(vmulq_f32(v220, vrecpeq_f32(v224)), v219), *(v185 + 336));
    v226 = vbslq_s8(v188, v223, vmulq_n_f32(vmulq_f32(v225, vrecpsq_f32(v224, v225)), *v223.i32));
    v227 = *(v185 + 352);
    v228 = *(v185 + 368);
    v229 = vrev64q_s32(vbslq_s8(v188, v223, vmulq_f32(v227, v226)));
    v230 = vbslq_s8(v188, vbslq_s8(vcgtq_f32(v184, v198), v229, v227), v184);
    *v184.f32 = vqtbl1_s8(v230, *v228.i8);
    *&v184.u32[2] = vqtbl1_s8(v230, *&vextq_s8(v228, v228, 8uLL));
    v231 = vmulq_n_f32(v184, *v230.i32);
    v232 = *(v185 + 384);
    v233 = vbslq_s8(v232, v230, v231);
    v234 = vbslq_s8(v188, v223, vmaxq_f32(vbslq_s8(v188, v223, vminq_f32(vbslq_s8(v188, v223, vaddq_f32(v229, vmulq_laneq_f32(v214, v233, 2))), v202)), *(v185 + 400)));
    v235 = vbslq_s8(v193, vmulq_f32(v213, v234), v233);
    v236 = vbslq_s8(v188, v223, vaddq_f32(vrev64q_s32(v234), vmulq_n_f32(v211, *v235.i32)));
    v237 = vrev64q_s32(v235);
    v238 = vorrq_s8(vandq_s8(v237, v189), v227);
    v239 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v237, 0x17uLL)), vandq_s8(v202, vcgtq_f32(v197, v237))), v201);
    v240 = vandq_s8(v227, vcgtq_f32(v238, v203));
    v241 = vsubq_f32(vsubq_f32(v238, v227), vmulq_f32(vmulq_f32(v204, v240), v238));
    v242 = vaddq_f32(vaddq_f32(v239, v240), vmulq_f32(v241, vaddq_f32(vaddq_f32(v210, vmulq_f32(v211, v241)), vmulq_f32(vmulq_f32(v241, v241), vaddq_f32(v208, vmulq_f32(v209, v241))))));
    v243 = *(v185 + 416);
    v244 = vmaxq_f32(vmulq_f32(v243, v242), v213);
    v245 = vcvtq_f32_s32(vcvtq_s32_f32(v244));
    v246 = vsubq_f32(v245, vandq_s8(v227, vcgtq_f32(v245, v244)));
    v247 = vsubq_f32(v244, v246);
    v248 = vaddq_f32(v227, vmulq_f32(v247, vaddq_f32(v220, vmulq_f32(v247, vaddq_f32(v214, vmulq_f32(v219, v247))))));
    v249 = vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v246), v222), 0x17uLL);
    *v246.f32 = vqtbl1_s8(v235, *(v185 + 432));
    v246.i64[0] = vaddq_f32(vmulq_f32(*(v185 + 448), v246), v236).u64[0];
    v246.i64[1] = v235.i64[1];
    v250 = vmulq_f32(v248, v249);
    v249.i64[0] = vminq_f32(v246, *(v185 + 464)).u64[0];
    v249.i64[1] = v235.i64[1];
    v249.i64[0] = vmulq_f32(vmaxq_f32(v249, *(v185 + 480)), *(v185 + 496)).u64[0];
    v251 = vdupq_lane_s64(v249.i64[0], 0);
    v249.i64[1] = v235.i64[1];
    v252 = vorrq_s8(vandq_s8(v222, v251), v243);
    v253 = vandq_s8(v243, vcgtq_f32(v252, v204));
    v254 = vsubq_f32(vsubq_f32(v252, v243), vmulq_f32(vmulq_f32(v203, v253), v252));
    v255 = vmaxq_f32(vmulq_f32(*(v185 + 544), vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v251, 0x17uLL)), vandq_s8(v209, vcgtq_f32(v210, v251))), v208), v253), vmulq_f32(v254, vaddq_f32(vaddq_f32(*(v185 + 512), vmulq_f32(*(v185 + 528), v254)), vmulq_f32(vmulq_f32(v254, v254), vaddq_f32(v201, vmulq_f32(v197, v254))))))), *(v185 + 560));
    v256 = vcvtq_f32_s32(vcvtq_s32_f32(v255));
    v257 = vsubq_f32(v256, vandq_s8(v243, vcgtq_f32(v256, v255)));
    v258 = vsubq_f32(v255, v257);
    *(v5 + v183) = vbslq_s8(v232, v249, vbslq_s8(v188, v250, vmulq_f32(vaddq_f32(v243, vmulq_f32(v258, vaddq_f32(*(v185 + 608), vmulq_f32(v258, vaddq_f32(*(v185 + 576), vmulq_f32(*(v185 + 592), v258)))))), vshlq_n_s32(vaddq_s32(*(v185 + 624), vcvtq_s32_f32(v257)), 0x17uLL))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2446_Method_A_ITMO::GetDOD(HgcBT2446_Method_A_ITMO *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2446_Method_A_ITMO::GetROI(HgcBT2446_Method_A_ITMO *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2446_Method_A_ITMO::HgcBT2446_Method_A_ITMO(HgcBT2446_Method_A_ITMO *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872356C0;
  operator new();
}

void HgcBT2446_Method_A_ITMO::~HgcBT2446_Method_A_ITMO(HgcBT2446_Method_A_ITMO *this)
{
  *this = &unk_2872356C0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40B6D25C9CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2446_Method_A_ITMO::~HgcBT2446_Method_A_ITMO(HGNode *this)
{
  *this = &unk_2872356C0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B6D25C9CLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcBT2390_Gain_Sat_ToneAdj::GetProgram(HgcBT2390_Gain_Sat_ToneAdj *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000482\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.2649999857, 1.100000024, 0.6779980063);\n    const half4 c1 = half4(0.05930199847, 1.000000000, 12.00000000, 0.2626999915);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmax(r0, c0.xxxx);\n    r1.xyz = r0.xyz*c0.yyy;\n    r0.xy = pow(r1.xy, c0.zz);\n    r0.z = r0.y*c0.w;\n    r1.w = r0.x*c1.w + r0.z;\n    r1.y = r1.y*c0.w;\n    r1.x = r1.x*c1.w + r1.y;\n    r0.z = pow(r1.z, c0.z);\n    r1.w = r0.z*c1.x + r1.w;\n    r1.x = r1.z*c1.x + r1.x;\n    r1.x = r1.x/r1.w;\n    r1.x = select(c1.y, r1.x, -r1.w < 0.00000h);\n    r0.xyz = r0.xyz*r1.xxx;\n    output.color0.xyz = float3(r0.xyz)*float3(c1.zzz);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=c4ba51af:835a3309:a06f8f2a:0fe182e4\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000469\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.2649999857, 1.100000024, 0.6779980063);\n    const float4 c1 = float4(0.05930199847, 1.000000000, 12.00000000, 0.2626999915);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = fmax(r0, c0.xxxx);\n    r1.xyz = r0.xyz*c0.yyy;\n    r0.xy = pow(r1.xy, c0.zz);\n    r0.z = r0.y*c0.w;\n    r1.w = r0.x*c1.w + r0.z;\n    r1.y = r1.y*c0.w;\n    r1.x = r1.x*c1.w + r1.y;\n    r0.z = pow(r1.z, c0.z);\n    r1.w = r0.z*c1.x + r1.w;\n    r1.x = r1.z*c1.x + r1.x;\n    r1.x = r1.x/r1.w;\n    r1.x = select(c1.y, r1.x, -r1.w < 0.00000f);\n    r0.xyz = r0.xyz*r1.xxx;\n    output.color0.xyz = r0.xyz*c1.zzz;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=2c714e19:97ce859d:2d1a1eb0:61cf40b1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000409\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.2649999857, 1.100000024, 0.6779980063);\n    const mediump vec4 c1 = vec4(0.05930199847, 1.000000000, 12.00000000, 0.2626999915);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = max(r0, c0.xxxx);\n    r1.xyz = r0.xyz*c0.yyy;\n    r0.xy = pow(r1.xy, c0.zz);\n    r0.z = r0.y*c0.w;\n    r1.w = r0.x*c1.w + r0.z;\n    r1.y = r1.y*c0.w;\n    r1.x = r1.x*c1.w + r1.y;\n    r0.z = pow(r1.z, c0.z);\n    r1.w = r0.z*c1.x + r1.w;\n    r1.x = r1.z*c1.x + r1.x;\n    r1.x = r1.x/r1.w;\n    r1.x = -r1.w < 0.00000 ? r1.x : c1.y;\n    r0.xyz = r0.xyz*r1.xxx;\n    gl_FragColor.xyz = r0.xyz*c1.zzz;\n    gl_FragColor.w = r0.w;\n}\n//MD5=2b807689:01e4ee76:eadbe047:2c27b0e4\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE01D94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE01DC4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE01DBCLL);
}

uint64_t HgcBT2390_Gain_Sat_ToneAdj::BindTexture(HgcBT2390_Gain_Sat_ToneAdj *this, HGHandler *a2, int a3)
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

uint64_t HgcBT2390_Gain_Sat_ToneAdj::RenderTile(HgcBT2390_Gain_Sat_ToneAdj *this, HGTile *a2)
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
      v14 = vmaxq_f32(*(v6 + v10 - 16), *v12);
      v15 = vmaxq_f32(*(v6 + v10), *v12);
      v16 = vmulq_f32(v14, v13);
      v17 = vmulq_f32(v15, v13);
      v18 = *(v12 + 32);
      v19 = *(v12 + 48);
      v20 = vorrq_s8(vandq_s8(v18, v16), v19);
      v21 = vorrq_s8(vandq_s8(v18, v17), v19);
      v22 = *(v12 + 64);
      v23 = *(v12 + 80);
      v24 = *(v12 + 96);
      v25 = *(v12 + 112);
      v26 = vandq_s8(v19, vcgtq_f32(v20, v25));
      v27 = vandq_s8(v19, vcgtq_f32(v21, v25));
      v28 = *(v12 + 128);
      v29 = *(v12 + 144);
      v30 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v17, 0x17uLL)), vandq_s8(v23, vcgtq_f32(v22, v17))), v24), v27);
      v31 = vsubq_f32(vsubq_f32(v20, v19), vmulq_f32(vmulq_f32(v28, v26), v20));
      v32 = vsubq_f32(vsubq_f32(v21, v19), vmulq_f32(vmulq_f32(v28, v27), v21));
      v33 = *(v12 + 160);
      v34 = *(v12 + 176);
      v35 = *(v12 + 192);
      v36 = *(v12 + 208);
      v37 = vmulq_f32(v36, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v16, 0x17uLL)), vandq_s8(v23, vcgtq_f32(v22, v16))), v24), v26), vmulq_f32(v31, vaddq_f32(vaddq_f32(v34, vmulq_f32(v31, v35)), vmulq_f32(vmulq_f32(v31, v31), vaddq_f32(v29, vmulq_f32(v33, v31)))))));
      v38 = vmulq_f32(v36, vaddq_f32(v30, vmulq_f32(v32, vaddq_f32(vaddq_f32(v34, vmulq_f32(v32, v35)), vmulq_f32(vmulq_f32(v32, v32), vaddq_f32(v29, vmulq_f32(v33, v32)))))));
      v39 = *(v12 + 224);
      v40 = *(v12 + 240);
      v41 = vmaxq_f32(v37, v39);
      v42 = vmaxq_f32(v38, v39);
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v45 = vsubq_f32(v43, vandq_s8(v19, vcgtq_f32(v43, v41)));
      v46 = vsubq_f32(v44, vandq_s8(v19, vcgtq_f32(v44, v42)));
      v47 = vsubq_f32(v41, v45);
      v48 = vsubq_f32(v42, v46);
      v49 = *(v12 + 256);
      v50 = *(v12 + 272);
      v51 = vaddq_f32(v19, vmulq_f32(v47, vaddq_f32(v50, vmulq_f32(v47, vaddq_f32(v40, vmulq_f32(v49, v47))))));
      v52 = vcvtq_s32_f32(v46);
      v53 = *(v12 + 288);
      v54 = *(v12 + 304);
      v55 = vmulq_f32(v51, vshlq_n_s32(vaddq_s32(v53, vcvtq_s32_f32(v45)), 0x17uLL));
      v56 = vmulq_f32(vaddq_f32(v19, vmulq_f32(v48, vaddq_f32(v50, vmulq_f32(v48, vaddq_f32(v40, vmulq_f32(v49, v48)))))), vshlq_n_s32(vaddq_s32(v53, v52), 0x17uLL));
      *v52.i8 = vext_s8(*v55.i8, *&vextq_s8(v14, v14, 8uLL), 4uLL);
      v57.i64[0] = vextq_s8(v14, v55, 0xCuLL).u64[0];
      v48.i64[0] = v55.i64[0];
      v48.i64[1] = v14.i64[1];
      v58.i64[0] = vextq_s8(v15, v56, 0xCuLL).u64[0];
      v55.i64[0] = v56.i64[0];
      v55.i64[1] = v15.i64[1];
      v57.i64[1] = v52.i64[0];
      *&v58.u32[2] = vext_s8(*v56.i8, *&vextq_s8(v15, v15, 8uLL), 4uLL);
      v59 = vbslq_s8(v54, vmulq_f32(v50, v57), v48);
      v60 = vbslq_s8(v54, vmulq_f32(v50, v58), v55);
      v61 = vaddq_f32(vrev64q_s32(v59), vmulq_n_f32(v50, *v59.i32));
      v62 = vaddq_f32(vrev64q_s32(v60), vmulq_n_f32(v50, *v60.i32));
      v63 = *(v12 + 320);
      v64 = *(v12 + 336);
      v65 = vbslq_s8(v63, v61, v16);
      v66 = vbslq_s8(v63, v62, v17);
      v67 = *(v12 + 352);
      v68 = *(v12 + 368);
      v69 = vbslq_s8(v67, vmulq_f32(v64, v65), v65);
      v70 = vbslq_s8(v67, vmulq_f32(v64, v66), v66);
      v66.i64[0] = vaddq_f32(vmulq_f32(v68, v69), vrev64q_s32(v69)).u64[0];
      v62.i64[0] = vaddq_f32(vmulq_f32(v68, v70), vrev64q_s32(v70)).u64[0];
      v66.i64[1] = v69.i64[1];
      v62.i64[1] = v70.i64[1];
      v71 = vorrq_s8(vandq_s8(v53, v66), v68);
      v72 = vorrq_s8(vandq_s8(v53, v62), v68);
      v73 = vandq_s8(v40, vcgtq_f32(v49, v66));
      v74 = vandq_s8(v40, vcgtq_f32(v49, v62));
      v75 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v66, 0x17uLL)), v73), v39);
      v76 = vandq_s8(v68, vcgtq_f32(v71, v36));
      v77 = vandq_s8(v68, vcgtq_f32(v72, v36));
      v78 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v62, 0x17uLL)), v74), v39);
      v79 = vaddq_f32(v75, v76);
      v80 = vsubq_f32(vsubq_f32(v71, v68), vmulq_f32(vmulq_f32(v35, v76), v71));
      v81 = vsubq_f32(vsubq_f32(v72, v68), vmulq_f32(vmulq_f32(v35, v77), v72));
      v82 = vaddq_f32(v34, vmulq_f32(v33, v80));
      v83 = vaddq_f32(v34, vmulq_f32(v33, v81));
      v84 = vmulq_f32(v28, v80);
      v85 = vaddq_f32(v29, vmulq_f32(v28, v81));
      v86 = vmulq_f32(v25, vaddq_f32(v79, vmulq_f32(v80, vaddq_f32(vaddq_f32(v29, v84), vmulq_f32(vmulq_f32(v80, v80), v82)))));
      v87 = vmulq_f32(v25, vaddq_f32(vaddq_f32(v78, v77), vmulq_f32(v81, vaddq_f32(v85, vmulq_f32(vmulq_f32(v81, v81), v83)))));
      v88 = vmaxq_f32(v86, v24);
      v89 = vmaxq_f32(v87, v24);
      v90 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
      v91 = vcvtq_f32_s32(vcvtq_s32_f32(v89));
      v92 = vsubq_f32(v90, vandq_s8(v68, vcgtq_f32(v90, v88)));
      v93 = vsubq_f32(v91, vandq_s8(v68, vcgtq_f32(v91, v89)));
      v94 = vsubq_f32(v88, v92);
      v95 = vsubq_f32(v89, v93);
      v96 = vaddq_f32(v23, vmulq_f32(v22, v94));
      v97 = vaddq_f32(v23, vmulq_f32(v22, v95));
      v98 = vaddq_f32(v19, vmulq_f32(v94, v96));
      v99 = vmulq_f32(vaddq_f32(v68, vmulq_f32(v95, vaddq_f32(v19, vmulq_f32(v95, v97)))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v93), v18), 0x17uLL));
      v100 = vbslq_s8(v54, vmulq_f32(vaddq_f32(v68, vmulq_f32(v94, v98)), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v92), v18), 0x17uLL)), v48);
      v101 = vbslq_s8(v54, v99, v55);
      v102 = vbslq_s8(v63, vaddq_f32(vmulq_laneq_f32(v68, v100, 2), v66), v66);
      v103 = vbslq_s8(v63, vaddq_f32(vmulq_laneq_f32(v68, v101, 2), v62), v62);
      v95.i64[0] = vextq_s8(v102, v102, 8uLL).u64[0];
      v104 = *(v12 + 384);
      v105 = *(v12 + 400);
      v68.i64[0] = vextq_s8(v103, v103, 8uLL).u64[0];
      v106 = vaddq_f32(vmulq_laneq_f32(v104, v102, 2), v102);
      v107 = vaddq_f32(vmulq_laneq_f32(v104, v103, 2), v103);
      *v93.f32 = vext_s8(*v95.f32, *v106.f32, 4uLL);
      *&v93.u32[2] = vext_s8(*v106.f32, *v95.f32, 4uLL);
      *v66.f32 = vext_s8(*v68.f32, *v107.f32, 4uLL);
      *&v66.u32[2] = vext_s8(*v107.f32, *v68.f32, 4uLL);
      v108 = *(v12 + 416);
      v109 = *(v12 + 432);
      v110 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v93), v105), v108), v109);
      v111 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v66), v105), v108), v109);
      v112 = vmulq_f32(vmulq_f32(v110, vrecpsq_f32(v93, v110)), v106);
      v113 = vmulq_f32(vmulq_f32(v111, vrecpsq_f32(v66, v111)), v107);
      *v110.f32 = vext_s8(*v112.i8, *v95.f32, 4uLL);
      *v95.f32 = vext_s8(*v95.f32, *v112.i8, 4uLL);
      v95.i64[1] = v110.i64[0];
      *v111.f32 = vext_s8(*v68.f32, *v113.i8, 4uLL);
      *&v111.u32[2] = vext_s8(*v113.i8, *v68.f32, 4uLL);
      v114 = vbslq_s8(v63, v101, vmulq_n_f32(v101, *vbslq_s8(vcgtq_f32(v111, *v12), v113, v64).i32));
      v115 = *(v12 + 448);
      v116 = vbslq_s8(v63, v100, vmulq_f32(v115, vbslq_s8(v63, v100, vmulq_n_f32(v100, *vbslq_s8(vcgtq_f32(v95, *v12), v112, v64).i32))));
      v117 = (v5 + v10);
      v117[-1] = v116;
      *v117 = vbslq_s8(v63, v101, vmulq_f32(v115, v114));
      v9 += 2;
      v10 += 32;
    }

    if (v9 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v118 = 16 * v9;
    v119 = *(this + 51);
    v120 = vmaxq_f32(*(v6 + v118), *v119);
    v121 = vmulq_f32(v120, *(v119 + 16));
    v122 = *(v119 + 32);
    v123 = *(v119 + 48);
    v124 = vorrq_s8(vandq_s8(v122, v121), v123);
    v125 = *(v119 + 64);
    v126 = *(v119 + 80);
    v127 = *(v119 + 96);
    v128 = *(v119 + 112);
    v129 = vandq_s8(v123, vcgtq_f32(v124, v128));
    v130 = vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v121, 0x17uLL)), vandq_s8(v126, vcgtq_f32(v125, v121))), v127), v129);
    v131 = *(v119 + 128);
    v132 = *(v119 + 144);
    v133 = vsubq_f32(vsubq_f32(v124, v123), vmulq_f32(vmulq_f32(v131, v129), v124));
    v134 = *(v119 + 160);
    v135 = *(v119 + 176);
    v136 = *(v119 + 192);
    v137 = *(v119 + 208);
    v138 = vmulq_f32(v137, vaddq_f32(v130, vmulq_f32(v133, vaddq_f32(vaddq_f32(v135, vmulq_f32(v133, v136)), vmulq_f32(vmulq_f32(v133, v133), vaddq_f32(v132, vmulq_f32(v134, v133)))))));
    v139 = *(v119 + 224);
    v140 = *(v119 + 240);
    v141 = vmaxq_f32(v138, v139);
    v142 = vcvtq_f32_s32(vcvtq_s32_f32(v141));
    v143 = vsubq_f32(v142, vandq_s8(v123, vcgtq_f32(v142, v141)));
    v144 = vsubq_f32(v141, v143);
    v145 = *(v119 + 256);
    v146 = *(v119 + 272);
    v147 = vcvtq_s32_f32(v143);
    v149 = *(v119 + 288);
    v148 = *(v119 + 304);
    v150 = vmulq_f32(vaddq_f32(v123, vmulq_f32(v144, vaddq_f32(v146, vmulq_f32(v144, vaddq_f32(v140, vmulq_f32(v145, v144)))))), vshlq_n_s32(vaddq_s32(v149, v147), 0x17uLL));
    v151.i64[0] = vextq_s8(v120, v150, 0xCuLL).u64[0];
    v150.i64[1] = v120.i64[1];
    *&v151.u32[2] = vext_s8(*v150.i8, *&vextq_s8(v120, v120, 8uLL), 4uLL);
    v152 = vbslq_s8(v148, vmulq_f32(v146, v151), v150);
    v153 = vaddq_f32(vrev64q_s32(v152), vmulq_n_f32(v146, *v152.i32));
    v154 = *(v119 + 320);
    v155 = *(v119 + 336);
    v156 = vbslq_s8(v154, v153, v121);
    v157 = *(v119 + 368);
    v158 = vbslq_s8(*(v119 + 352), vmulq_f32(v155, v156), v156);
    v153.i64[0] = vaddq_f32(vmulq_f32(v157, v158), vrev64q_s32(v158)).u64[0];
    v153.i64[1] = v158.i64[1];
    v159 = vorrq_s8(vandq_s8(v149, v153), v157);
    v160 = vandq_s8(v157, vcgtq_f32(v159, v137));
    v161 = vsubq_f32(vsubq_f32(v159, v157), vmulq_f32(vmulq_f32(v136, v160), v159));
    v162 = vmaxq_f32(vmulq_f32(v128, vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v153, 0x17uLL)), vandq_s8(v140, vcgtq_f32(v145, v153))), v139), v160), vmulq_f32(v161, vaddq_f32(vaddq_f32(v132, vmulq_f32(v131, v161)), vmulq_f32(vmulq_f32(v161, v161), vaddq_f32(v135, vmulq_f32(v134, v161))))))), v127);
    v163 = vcvtq_f32_s32(vcvtq_s32_f32(v162));
    v164 = vsubq_f32(v163, vandq_s8(v157, vcgtq_f32(v163, v162)));
    v165 = vsubq_f32(v162, v164);
    v166 = vbslq_s8(v148, vmulq_f32(vaddq_f32(v157, vmulq_f32(v165, vaddq_f32(v123, vmulq_f32(v165, vaddq_f32(v126, vmulq_f32(v125, v165)))))), vshlq_n_s32(vaddq_s32(vcvtq_s32_f32(v164), v122), 0x17uLL)), v150);
    v167 = vbslq_s8(v154, vaddq_f32(vmulq_laneq_f32(v157, v166, 2), v153), v153);
    v125.i64[0] = vextq_s8(v167, v167, 8uLL).u64[0];
    v168 = vaddq_f32(vmulq_laneq_f32(*(v119 + 384), v167, 2), v167);
    *v164.f32 = vext_s8(*v125.f32, *v168.f32, 4uLL);
    *&v164.u32[2] = vext_s8(*v168.f32, *v125.f32, 4uLL);
    v169 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v164), *(v119 + 400)), *(v119 + 416)), *(v119 + 432));
    v170 = vmulq_f32(vmulq_f32(v169, vrecpsq_f32(v164, v169)), v168);
    *v169.f32 = vext_s8(*v170.i8, *v125.f32, 4uLL);
    *v125.f32 = vext_s8(*v125.f32, *v170.i8, 4uLL);
    v125.i64[1] = v169.i64[0];
    *(v5 + v118) = vbslq_s8(v154, v166, vmulq_f32(*(v119 + 448), vbslq_s8(v154, v166, vmulq_n_f32(v166, *vbslq_s8(vcgtq_f32(v125, *v119), v170, v155).i32))));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBT2390_Gain_Sat_ToneAdj::GetDOD(HgcBT2390_Gain_Sat_ToneAdj *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBT2390_Gain_Sat_ToneAdj::GetROI(HgcBT2390_Gain_Sat_ToneAdj *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBT2390_Gain_Sat_ToneAdj::HgcBT2390_Gain_Sat_ToneAdj(HgcBT2390_Gain_Sat_ToneAdj *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287235928;
  operator new();
}

void HgcBT2390_Gain_Sat_ToneAdj::~HgcBT2390_Gain_Sat_ToneAdj(HgcBT2390_Gain_Sat_ToneAdj *this)
{
  *this = &unk_287235928;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4019C028F0);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBT2390_Gain_Sat_ToneAdj::~HgcBT2390_Gain_Sat_ToneAdj(HGNode *this)
{
  *this = &unk_287235928;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019C028F0);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcRasterizerTextureNoColor::GetProgram(HgcRasterizerTextureNoColor *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002c8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.xy = half2(frag._texCoord0.xy)/half2(frag._texCoord0.ww);\n    r0.xy = r0.xy + half2(hg_Params[5].xy);\n    r0.xy = r0.xy*half2(hg_Params[5].zw);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, float2(r0.xy));\n    output.color0 = float4(r0)*hg_Params[0];\n    return output;\n}\n//MD5=4aaae76a:5a25eb2d:36af91f0:a92036c5\n//SIG=02400000:00000000:00000000:00000000:0000:0006:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000296\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy/frag._texCoord0.ww;\n    r0.xy = r0.xy + hg_Params[5].xy;\n    r0.xy = r0.xy*hg_Params[5].zw;\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    output.color0 = r0*hg_Params[0];\n    return output;\n}\n//MD5=b070b0e3:02ff281f:fd62ccc2:049b1c99\n//SIG=02000000:00000000:00000000:00000000:0000:0006:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000031c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    highp vec4 r0;\n\n    r0.xy = hg_TexCoord0.xy/hg_TexCoord0.ww;\n    r0.xy = r0.xy + hg_ProgramLocal5.xy;\n    r0.xy = r0.xy*hg_ProgramLocal5.zw;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    gl_FragColor = r0*hg_ProgramLocal0;\n}\n//MD5=8b328c37:2cd8c50a:51b32aa3:3f5d6ce5\n//SIG=02000000:00000000:00000000:00000000:0000:0006:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FE02DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE02DFC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE02DF4);
}

uint64_t HgcRasterizerTextureNoColor::BindTexture(HgcRasterizerTextureNoColor *this, HGHandler *a2, int a3)
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
  (*(*a2 + 136))(a2, 5, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcRasterizerTextureNoColor::Bind(HgcRasterizerTextureNoColor *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 120))(a2, *(this + 51) + 16);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcRasterizerTextureNoColor::RenderFragment(uint64_t a1, float32x4_t *a2, int32x2_t *a3)
{
  *v3.f32 = vadd_f32(vcvt_f32_s32(*a3), 0x3F0000003F000000);
  v3.i64[1] = 0x3F80000000000000;
  v4 = a2[1];
  v5 = vdupq_laneq_s32(v4, 3);
  v6 = *(a1 + 408);
  v7 = v6[9];
  v8 = v6[10];
  v9 = vminq_f32(vmaxq_f32(vrecpeq_f32(v5), v7), v8);
  v10 = vminq_f32(vmaxq_f32(vmulq_f32(v9, vrecpsq_f32(v5, v9)), v7), v8);
  v11 = a3[10];
  v12 = a3[11].i32[0];
  v13 = vsubq_f32(vmulq_f32(v4, vmulq_f32(v10, vrecpsq_f32(v5, v10))), v3);
  if (a2[14].i32[0])
  {
    v14 = vaddq_s32(vcvtq_s32_f32(v13), vcltzq_f32(v13));
    v15 = vsubq_f32(v13, vcvtq_f32_s32(v14)).u64[0];
    v16 = (*&v11 + 16 * (v14.i32[0] + v14.i32[1] * v12));
    v17 = vaddq_f32(*v16, vmulq_n_f32(vsubq_f32(v16[1], *v16), v15.f32[0]));
    v18 = vmulq_f32(vaddq_f32(v17, vmulq_lane_f32(vsubq_f32(vaddq_f32(v16[v12], vmulq_n_f32(vsubq_f32(v16[v12 + 1], v16[v12]), v15.f32[0])), v17), v15, 1)), *v6);
  }

  else
  {
    v20.i64[0] = 0x3F0000003F000000;
    v20.i64[1] = 0x3F0000003F000000;
    v21 = vaddq_f32(v13, v20);
    v22 = vcvtq_s32_f32(v21);
    v21.i64[0] = vaddq_s32(v22, vcgtq_f32(vcvtq_f32_s32(v22), v21)).u64[0];
    v18 = vmulq_f32(*(*&v11 + 16 * (v21.i32[0] + v21.i32[1] * v12)), *v6);
  }

  **&a3[2] = v18;
  return 0;
}

uint64_t HgcRasterizerTextureNoColor::RenderTile(float32x4_t **this, HGTile *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = ((*this)[19].i64[1])(this, v4);
  v6 = *a2;
  v7 = *(a2 + 3) - HIDWORD(*a2);
  if (v7 >= 1)
  {
    v8 = (*(a2 + 2) - v6.i32[0]);
    if (v8 >= 1)
    {
      *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
      v9.i64[1] = 0x3F80000000000000;
      v10 = *(a2 + 2);
      v11 = 0;
      v12 = 16 * *(a2 + 6);
      v13 = 16 * v8;
      if (v5)
      {
        v14 = v9;
        do
        {
          v15 = 0;
          v16 = v14;
          do
          {
            v17 = vdupq_laneq_s32(v16, 3);
            v18 = this[51];
            v19 = v18[9];
            v20 = v18[10];
            v21 = vminq_f32(vmaxq_f32(vrecpeq_f32(v17), v19), v20);
            v22 = vminq_f32(vmaxq_f32(vmulq_f32(v21, vrecpsq_f32(v17, v21)), v19), v20);
            v23 = *(a2 + 22);
            v24 = vsubq_f32(vmulq_f32(v16, vmulq_f32(v22, vrecpsq_f32(v17, v22))), v9);
            v25 = vaddq_s32(vcvtq_s32_f32(v24), vcltzq_f32(v24));
            v24.i64[0] = vsubq_f32(v24, vcvtq_f32_s32(v25)).u64[0];
            v26 = (*(a2 + 10) + 16 * (v25.i32[0] + v25.i32[1] * v23));
            v27 = vaddq_f32(*v26, vmulq_n_f32(vsubq_f32(v26[1], *v26), v24.f32[0]));
            *(v10 + v15) = vmulq_f32(vaddq_f32(v27, vmulq_lane_f32(vsubq_f32(vaddq_f32(v26[v23], vmulq_n_f32(vsubq_f32(v26[v23 + 1], v26[v23]), v24.f32[0])), v27), *v24.f32, 1)), *v18);
            v16 = vaddq_f32(v16, xmmword_2603429B0);
            v15 += 16;
          }

          while (v13 != v15);
          v14 = vaddq_f32(v14, xmmword_2603429C0);
          ++v11;
          v10 += v12;
        }

        while (v11 != v7);
      }

      else
      {
        v28.i64[0] = 0x3F0000003F000000;
        v28.i64[1] = 0x3F0000003F000000;
        v29 = v9;
        do
        {
          v30 = 0;
          v31 = v29;
          do
          {
            v32 = vdupq_laneq_s32(v31, 3);
            v33 = this[51];
            v34 = v33[9];
            v35 = v33[10];
            v36 = vminq_f32(vmaxq_f32(vrecpeq_f32(v32), v34), v35);
            v37 = vminq_f32(vmaxq_f32(vmulq_f32(v36, vrecpsq_f32(v32, v36)), v34), v35);
            v38 = vaddq_f32(vsubq_f32(vmulq_f32(v31, vmulq_f32(v37, vrecpsq_f32(v32, v37))), v9), v28);
            v39 = vcvtq_s32_f32(v38);
            v38.i64[0] = vaddq_s32(v39, vcgtq_f32(vcvtq_f32_s32(v39), v38)).u64[0];
            *(v10 + v30) = vmulq_f32(*(*(a2 + 10) + 16 * (v38.i32[0] + v38.i32[1] * *(a2 + 22))), *v33);
            v31 = vaddq_f32(v31, xmmword_2603429B0);
            v30 += 16;
          }

          while (v13 != v30);
          v29 = vaddq_f32(v29, xmmword_2603429C0);
          ++v11;
          v10 += v12;
        }

        while (v11 != v7);
      }
    }
  }

  return 0;
}

uint64_t HgcRasterizerTextureNoColor::GetDOD(HgcRasterizerTextureNoColor *this, HGRenderer *a2, int a3, HGRect a4)
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

  HGTransform::HGTransform(v15);
  HGTransform::LoadMatrixf(v15, (*(this + 51) + 16));
  HGTransform::Invert2D(v15);
  v11 = HGTransformUtils::MinW(v10);
  *&v16.var0 = v5;
  DOD = HGTransformUtils::GetDOD(v15, v6, v16, 0.5, v11);
  v14 = HGRectUnion(0, 0, DOD, v13);
  HGTransform::~HGTransform(v15);
  return v14;
}

uint64_t HgcRasterizerTextureNoColor::GetROI(HgcRasterizerTextureNoColor *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    HGTransform::HGTransform(v17);
    HGTransform::LoadMatrixf(v17, (*(this + 51) + 16));
    v10 = HGTransformUtils::MinW(v9);
    *&v18.var0 = v5;
    ROI = HGTransformUtils::GetROI(v17, v6, v18, 0.5, v10);
    v4 = HGRectUnion(0, 0, ROI, v12);
    v14 = v13;
    HGTransform::~HGTransform(v17);
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v15 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      return HGRectGrow(v4, v14, v15);
    }
  }

  return v4;
}

void HgcRasterizerTextureNoColor::HgcRasterizerTextureNoColor(HgcRasterizerTextureNoColor *this)
{
  HGNode3D::HGNode3D(this);
  *v1 = &unk_287235B90;
  *(v1 + 416) = 1;
  operator new();
}

void HgcRasterizerTextureNoColor::~HgcRasterizerTextureNoColor(HgcRasterizerTextureNoColor *this)
{
  *this = &unk_287235B90;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40C3A7E6FCLL);
    this = v2;
    v1 = vars8;
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  *this = &unk_287235B90;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40C3A7E6FCLL);
    this = v2;
    v1 = vars8;
  }

  HGMipmapLevel::~HGMipmapLevel(this);
}

{
  *this = &unk_287235B90;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40C3A7E6FCLL);
  }

  HGMipmapLevel::~HGMipmapLevel(this);

  HGObject::operator delete(v3);
}

uint64_t HgcRasterizerTextureNoColor::SetParameter(HgcRasterizerTextureNoColor *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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
  *(this + 104) = 1;
  HGNode::ClearBits(this, a2, a7);
  return 1;
}

float HgcRasterizerTextureNoColor::GetParameter(HgcRasterizerTextureNoColor *this, int a2, float *a3)
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

double HgcRasterizerTextureNoColor::GetOutput(HgcRasterizerTextureNoColor *this, HGRenderer *a2)
{
  if (*(this + 104))
  {
    v2 = *(this + 51);
    v3 = *(v2 + 96);
    *(v2 + 16) = *(v2 + 80);
    *(*(this + 51) + 32) = v3;
    *(*(this + 51) + 48) = xmmword_2603429D0;
    result = 0.0;
    *(*(this + 51) + 64) = xmmword_2603427D0;
    *(this + 104) = 0;
  }

  return result;
}

const char *HgcDemosaic_1::GetProgram(HgcDemosaic_1 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1118;
    }

    else
    {
      return aMetal10Len0000_1119;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_421;
  }
}

void sub_25FE03E74(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FE03EAC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FE03EA4);
}

uint64_t HgcDemosaic_1::BindTexture(HgcDemosaic_1 *this, HGHandler *a2, int a3)
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
  (*(*a2 + 136))(a2, 3, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcDemosaic_1::Bind(HgcDemosaic_1 *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcDemosaic_1::RenderTile(HgcDemosaic_1 *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = (a2[1].i32[0] - v2.i32[0]);
    if (v4 >= 1)
    {
      v5 = 0;
      v6 = a2[11].i32[0];
      *v7.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
      v7.i64[1] = 0x3F80000000000000;
      v8 = a2[10];
      v9 = a2[2];
      v10 = &v8[2 * v6];
      v11 = 16 * v6;
      v12 = &v8[v6];
      v13 = -2 * v6;
      v14 = -v6;
      v15 = 16 * a2[3].i32[0];
      v16 = 0uLL;
      do
      {
        v17 = 0;
        v18 = v8;
        v222 = v7;
        v19 = v8;
        do
        {
          v225 = v7;
          v20 = vcvtq_f32_s32(vcvtq_s32_f32(v7));
          v21 = *(this + 51);
          v23 = *(v21 + 32);
          v22 = *(v21 + 48);
          v24 = vsubq_f32(v20, vandq_s8(v22, vcgtq_f32(v20, v7)));
          v25.i64[0] = v24.i64[0];
          v25.i64[1] = vmulq_f32(v22, vdupq_lane_s64(*&v24, 0)).i64[1];
          v26 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
          v27 = *(v21 + 64);
          v28 = vsubq_f32(v26, vbslq_s8(vcgtq_f32(v26, v25), v27, v16));
          v29 = vextq_s8(v28, v24, 8uLL);
          v24.i64[1] = v28.i64[1];
          v30 = vsubq_f32(v24, vmulq_lane_f32(v29, *v27.f32, 1));
          v224 = *(v21 + 80);
          v31 = vaddq_f32(vextq_s8(v30, v30, 8uLL), vmulq_lane_f32(v224, *v30.i8, 1));
          v32 = *(v21 + 16);
          v33 = vrev64q_s32(*v21);
          v34 = v19[1];
          ++v19;
          v36 = *(v21 + 96);
          v35 = *(v21 + 112);
          v37 = vsubq_f32(v33, vextq_s8(v31, v31, 4uLL));
          v38 = vextq_s8(*v21, *v21, 8uLL);
          v39 = vrev64q_s32(vsubq_f32(vaddq_f32(v38, v31), v35));
          v40 = vrev64q_s32(vbslq_s8(v36, v34, v37));
          v41 = vbslq_s8(v36, v18[2], v37);
          v39.i64[0] = v41.i64[0];
          v42 = vabsq_f32(v39);
          v43 = vbslq_s8(v36, v18[-2], v42);
          v44 = vdupq_laneq_s32(*v21, 3);
          v40.i64[0] = vbslq_s8(v36, v18[-1], v40).u64[0];
          v45 = vextq_s8(v41, v41, 4uLL);
          v40.i64[1] = v43.i64[0];
          v47 = *(v21 + 128);
          v46 = *(v21 + 144);
          v48 = vbslq_s8(v36, vbslq_s8(vcgtq_f32(v27, vbslq_s8(v36, vsubq_f32(vrev64q_s32(v43), v224), v42)), v23, vrev64q_s32(v23)), v42);
          *v43.f32 = vqtbl1_s8(v48, *v46.i8);
          v49 = vextq_s8(v46, v46, 8uLL).u64[0];
          *&v43.u32[2] = vqtbl1_s8(v48, v49);
          v50 = vbslq_s8(v47, v45, v40);
          v51 = vandq_s8(v27, vcgtq_f32(v22, v43));
          v43.i64[0] = vextq_s8(v51, v51, 8uLL).u64[0];
          *v45.i8 = vext_s8(*v43.f32, *v48.i8, 4uLL);
          *v43.f32 = vext_s8(*v48.i8, *v43.f32, 4uLL);
          v52 = vextq_s8(v51, v48, 8uLL);
          v43.i64[1] = v45.i64[0];
          v48.i64[1] = v51.i64[1];
          v53 = vmaxq_f32(v43, v52);
          v54 = vbslq_s8(v36, v48, vrev64q_s32(vandq_s8(v35, vcgtq_f32(v35, v225))));
          v55 = vmulq_laneq_f32(vsubq_f32(v50, v44), v23, 2);
          v50.i64[0] = *(v21 + 112);
          v50.i32[2] = v54.i32[0];
          v56 = vminq_f32(v53, v54);
          v50.i32[3] = v54.i32[0];
          v57 = vextq_s8(v54, v56, 0xCuLL);
          v58 = vextq_s8(v57, v57, 8uLL).u64[0];
          v59.i64[0] = vextq_s8(v57, v54, 0xCuLL).u64[0];
          v57.i64[0] = v54.i64[0];
          v60 = vminq_f32(v55, v50);
          v62 = *(v21 + 160);
          v61 = *(v21 + 176);
          *v63.i8 = vqtbl1_s8(v60, *v62.i8);
          v64 = vextq_s8(v62, v62, 8uLL).u64[0];
          *v65.i8 = vqtbl1_s8(v60, *v46.i8);
          *&v59.u32[2] = vext_s8(*v54.f32, v58, 4uLL);
          v66 = *(v21 + 192);
          v67 = *(v21 + 208);
          v68 = vbslq_s8(v66, vandq_s8(v27, vcgeq_f32(vnegq_f32(v59), v61)), v60);
          v63.u64[1] = vqtbl1_s8(v60, v64);
          v69 = vbslq_s8(v36, v57, vsubq_f32(vrev64q_s32(vbslq_s8(v36, *v18, v68)), v38));
          v70 = vmulq_lane_f32(v23, *v69.i8, 1);
          v65.u64[1] = vqtbl1_s8(v60, v49);
          v57.i64[0] = v53.i64[0];
          v57.i64[1] = v70.i64[1];
          v53.i64[1] = vdupq_laneq_s64(v70, 1).u64[0];
          v71 = vcgtq_f32(v61, v225);
          v72 = vbslq_s8(v47, vminq_f32(vextq_s8(v69, v69, 4uLL), vrev64q_s32(v53)), v57);
          v73 = vbslq_s8(v36, vandq_s8(v35, v71), v68);
          v74 = vextq_s8(v72, v72, 0xCuLL);
          v75 = vbslq_s8(v66, vminq_f32(v74, v73), v73);
          v76 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v56.i8, 1), v61), v65, v63);
          v77 = vnegq_f32(v75);
          v78 = vcgtq_f32(vminq_f32(vrev64q_s32(vextq_s8(v75, v75, 4uLL)), v75), v27);
          v79 = vbslq_s8(v36, vsubq_f32(v33, v35), v75);
          v80 = vandq_s8(v35, vcgeq_f32(v77, v27));
          v81 = vextq_s8(v80, v80, 8uLL);
          v82 = vbslq_s8(v78, v74, vextq_s8(v76, v76, 0xCuLL));
          v83 = vbslq_s8(v66, vminq_f32(v79, v81), v79);
          v84 = vextq_s8(v76, v82, 8uLL);
          v85 = vbslq_s8(v36, vandq_s8(v35, vcgtq_f32(v225, v83)), v83);
          *v77.f32 = vqtbl1_s8(v85, *v62.i8);
          *v46.i8 = vqtbl1_s8(v84, *v46.i8);
          v86 = *(v21 + 224);
          v87 = *(v21 + 240);
          v88 = vbslq_s8(vcgtq_f32(vminq_f32(vdupq_laneq_s32(v85, 2), vdupq_lane_s32(*v85.i8, 0)), v67), v46, v77);
          v89 = vbslq_s8(v86, vsubq_f32(*v21, v61), v85);
          v77.i64[0] = v88.i64[0];
          v90 = vextq_s8(v76, v88, 8uLL);
          v91 = vbslq_s8(v36, vandq_s8(v35, vcgeq_f32(vnegq_f32(v89), v67)), v89);
          v88.i64[1] = v76.i64[1];
          v77.i64[1] = vdupq_laneq_s64(v76, 1).u64[0];
          v92 = vbslq_s8(v86, vandq_s8(v35, vcgtq_f32(vrev64q_s32(v225), v91)), v91);
          v93 = vbslq_s8(v36, vminq_f32(vextq_s8(v92, v92, 8uLL), v92), v92);
          v94 = vextq_s8(v72, v72, 8uLL);
          v95 = vbslq_s8(v36, v82, vbslq_s8(vcgtq_f32(vminq_f32(vrev64q_s32(v93), v93), v67), v94, v88));
          v96 = vbslq_s8(v47, vextq_s8(v95, v95, 8uLL), vbslq_s8(v86, vrev64q_s32(v77), v84));
          v97 = vdupq_lane_s32(*v32.f32, 0);
          v98 = vaddq_f32(v97, v96);
          v223 = v96;
          v99 = vdupq_laneq_s32(v32, 2);
          v100 = vdupq_laneq_s32(v32, 3);
          v101 = vaddq_f32(vmaxq_f32(vmulq_lane_f32(vmulq_f32(v98, v98), *v32.f32, 1), v99), v100);
          v102 = vminq_f32(vrsqrteq_f32(v101), v87);
          v103 = vminq_f32(vmulq_f32(v102, vrsqrtsq_f32(vmulq_f32(v101, v102), v102)), v87);
          v104 = vmulq_f32(v101, vminq_f32(vmulq_f32(v103, vrsqrtsq_f32(vmulq_f32(v101, v103), v103)), v87));
          *v76.i8 = v64;
          v105 = vrev64q_s32(v95);
          v82.i64[0] = vsubq_f32(v105, v95).u64[0];
          v106 = vsubq_f32(v90, v88);
          v107 = vmvnq_s8(v66);
          v82.u64[1] = vadd_f32(vqtbl1_s8(v104, v64), vqtbl1_s8(v104, v49));
          v108 = vbslq_s8(v36, vmulq_lane_f32(v106, *v82.i8, 1), v82);
          v109 = vabsq_f32(vextq_s8(v106, v106, 8uLL));
          v110 = vabsq_f32(vextq_s8(v108, v108, 8uLL));
          v77.i64[0] = vsubq_f32(v105, v74).u64[0];
          *v109.i8 = vorr_s8(vand_s8(*&vextq_s8(v110, v110, 8uLL), *&vextq_s8(v107, v107, 8uLL)), vand_s8(*&vextq_s8(v66, v66, 8uLL), *&vextq_s8(v109, v109, 8uLL)));
          v111 = vbslq_s8(v86, vmulq_n_f32(vbslq_s8(v86, vsubq_f32(v105, v94), v108), v77.f32[0]), v108);
          v113 = *(v21 + 256);
          v112 = *(v21 + 272);
          *v77.f32 = vbic_s8(*v77.f32, *v112.f32);
          v77.i64[1] = v109.i64[0];
          v114 = vandq_s8(v113, vcgtq_f32(v111, v77));
          v115 = vandq_s8(v113, vcgtq_f32(v96, v104));
          v109.i64[0] = vmaxq_f32(v114, vrev64q_s32(v114)).u64[0];
          v109.i64[1] = v114.i64[1];
          v116 = vbslq_s8(v86, vminq_f32(vminq_f32(vrev64q_s32(v115), v115), vextq_s8(v115, v115, 4uLL)), v109);
          v117 = vbslq_s8(v36, vmaxq_f32(v116, vextq_s8(v116, v116, 8uLL)), v116);
          v115.i64[0] = vminq_f32(v117, vextq_s8(v115, v115, 8uLL)).u64[0];
          v115.i64[1] = vmaxq_f32(vextq_s8(*&v117, *&v117, 8uLL), vrev64q_s32(*&v117)).i64[1];
          v118 = vbslq_s8(v36, v8[v13 + v17], v115);
          v119 = vextq_s8(v118, v118, 8uLL);
          v96.i64[0] = vbslq_s8(v36, v119, v115).u64[0];
          v119.i64[0] = vbslq_s8(v36, v8[v14 + v17], vrev64q_s32(v12[v17])).u64[0];
          v120 = vextq_s8(v225, v225, 0xCuLL);
          v121 = vandq_s8(v113, vcgtq_f32(v113, v120));
          v115.i64[0] = v96.i64[0];
          v115.i64[1] = vdupq_laneq_s64(v121, 1).u64[0];
          v122 = vsubq_f32(vbslq_s8(v47, vextq_s8(v10[v17], v10[v17], 4uLL), v119), v44);
          v96.i64[1] = v121.i64[1];
          v123 = vbslq_s8(v47, vminq_f32(v94, vrev64q_s32(v115)), v96);
          v124 = vminq_f32(v50, vmulq_laneq_f32(v122, v23, 2));
          v125 = vbslq_s8(vcgtq_f32(vdupq_laneq_s64(v123, 1), v67), v124, vrev64q_s32(v124));
          v126 = vandq_s8(v113, v71);
          v127 = vbslq_s8(v66, vextq_s8(v126, v126, 0xCuLL), v124);
          v128 = *(v21 + 304);
          v129 = vbslq_s8(*(v21 + 288), v88, v125);
          v130 = vrev64q_s32(v72);
          v131 = vbslq_s8(v36, vsubq_f32(v130, vmulq_lane_f32(vextq_s8(v123, v123, 8uLL), *v72.f32, 1)), v127);
          v132 = vbslq_s8(v66, vandq_s8(v113, vcgtq_f32(v120, vbslq_s8(v66, vsubq_f32(*v21, v113), v131))), v131);
          v133 = vextq_s8(vminq_f32(vextq_s8(v131, v131, 8uLL), v131), v123, 8uLL);
          v123.i64[1] = v131.i64[1];
          v134 = vbslq_s8(v86, v123, vandq_s8(v113, vcgeq_f32(vnegq_f32(v123), v67)));
          v135 = vbslq_s8(vcgtq_f32(v133, v67), v74, vextq_s8(v129, v129, 0xCuLL));
          v136 = vbslq_s8(v36, vminq_f32(v132, vextq_s8(v134, v134, 8uLL)), v132);
          *v132.f32 = vqtbl1_s8(v136, v49);
          v137 = vandq_s8(v113, vcgeq_f32(vnegq_f32(v136), v67));
          v121.i64[0] = v136.i64[0];
          v121.i64[1] = v137.i64[1];
          v137.i64[0] = vminq_f32(v121, vextq_s8(v137, v136, 8uLL)).u64[0];
          v137.i64[1] = vsubq_f32(*v21, v224).i64[1];
          v138 = vrev64q_s32(v32);
          v139 = vbslq_s8(v86, vaddq_f32(v138, v94), v137);
          v139.i64[1] = vandq_s8(*&v113, vcgtq_f32(v120, v139)).i64[1];
          *v120.f32 = vrev64_s32(*v129.i8);
          v120.i64[1] = v135.i64[0];
          v132.i64[1] = v132.i64[0];
          *v140.i8 = vqtbl1_s8(v120, *v76.i8);
          v140.i64[1] = v140.i64[0];
          v141 = vbslq_s8(vcgtq_f32(vminq_f32(vdupq_lane_s32(*v136.f32, 0), vdupq_laneq_s32(v136, 2)), v67), v140, v132);
          v142 = vmulq_f32(vdupq_lane_s64(v139.i64[0], 0), v139);
          v143 = vmulq_lane_f32(v138, *v142.i8, 1);
          v101.i64[1] = v141.i64[1];
          v144 = vaddq_f32(vextq_s8(v32, v32, 4uLL), vmaxq_f32(vextq_s8(v143, v143, 8uLL), v32));
          v145 = vminq_f32(vrsqrteq_f32(v144), v87);
          v146 = vminq_f32(vmulq_f32(v145, vrsqrtsq_f32(vmulq_f32(v145, v144), v145)), v87);
          v147 = vmulq_f32(v144, vminq_f32(vmulq_f32(v146, vrsqrtsq_f32(vmulq_f32(v144, v146), v146)), v87));
          v146.i64[0] = v134.i64[0];
          v146.i64[1] = v147.i64[1];
          v148 = vandq_s8(v113, vcgtq_f32(v130, v146));
          v130.i64[0] = v134.i64[0];
          v134.i64[1] = vdupq_laneq_s64(v148, 1).u64[0];
          v130.i64[1] = v148.i64[1];
          v149 = vbslq_s8(v36, v135, vbslq_s8(vcgtq_f32(vextq_s8(v142, v142, 4uLL), v67), v94, vextq_s8(v101, v101, 8uLL)));
          v150 = vbslq_s8(v47, vminq_f32(v94, vrev64q_s32(v134)), v101);
          v151 = vextq_s8(v150, v150, 0xCuLL);
          v152 = vbslq_s8(v36, vminq_f32(v151, v130), v130);
          v153 = vbslq_s8(v86, vextq_s8(v150, v150, 4uLL), vbslq_s8(v47, vextq_s8(v149, v149, 8uLL), v120));
          v154 = vaddq_f32(v97, v153);
          v155 = vaddq_f32(v100, vmaxq_f32(vmulq_lane_f32(vmulq_f32(v154, v154), *v32.f32, 1), v99));
          *v135.f32 = vqtbl1_s8(v155, *v128.i8);
          v154.i64[0] = vextq_s8(v128, v128, 8uLL).u64[0];
          *&v135.u32[2] = vqtbl1_s8(v155, *v154.f32);
          v156 = vminq_f32(vrsqrteq_f32(v135), v87);
          v157 = vminq_f32(vmulq_f32(v156, vrsqrtsq_f32(vmulq_f32(v156, v135), v156)), v87);
          v158 = vbslq_s8(vcgtq_f32(v152, v67), v67, vrev64q_s32(v152));
          v159 = vmulq_f32(v157, vrsqrtsq_f32(vmulq_f32(v157, v135), v157));
          v160 = *(v21 + 320);
          v161 = *(v21 + 336);
          *v135.f32 = vqtbl1_s8(v159, *v160.f32);
          v160.i64[0] = vextq_s8(v160, v160, 8uLL).u64[0];
          *&v135.u32[2] = vqtbl1_s8(v159, *v160.f32);
          v162 = vminq_f32(vmaxq_f32(vrecpeq_f32(v135), v161), v87);
          v163 = vaddq_f32(v105, v95);
          v164 = vrev64q_s32(vbslq_s8(v36, v163, v159));
          v165 = vminq_f32(vmaxq_f32(vrecpeq_f32(v164), v161), v87);
          v166 = vminq_f32(vmaxq_f32(vmulq_f32(v162, vrecpsq_f32(v135, v162)), v161), v87);
          v167 = vminq_f32(vmaxq_f32(vmulq_f32(v165, vrecpsq_f32(v164, v165)), v161), v87);
          v168 = vrecpsq_f32(v164, v167);
          v169 = vrev64q_s32(v149);
          v170 = vrecpsq_f32(v135, v166);
          v171 = vaddq_f32(vdupq_lane_s64(vbslq_s8(v36, v163, vaddq_f32(v169, v149)).i64[0], 0), vmulq_laneq_f32(*(v21 + 352), v72, 3));
          v172 = vminq_f32(vrsqrteq_f32(v155), v161);
          v173 = vmulq_f32(v166, v170);
          v174 = vminq_f32(vmulq_f32(v172, vrsqrtsq_f32(vmulq_f32(v155, v172), v172)), v161);
          v175 = vaddq_f32(v171, v171);
          v176 = vbslq_s8(v47, vmulq_f32(v155, vminq_f32(vmulq_f32(v174, vrsqrtsq_f32(vmulq_f32(v155, v174), v174)), v161)), vbslq_s8(v36, vmulq_f32(v167, v168), v173));
          v177 = vminq_f32(vmaxq_f32(vrecpeq_f32(v175), v161), v87);
          v178 = vminq_f32(vmaxq_f32(vmulq_f32(v177, vrecpsq_f32(v175, v177)), v161), v87);
          v178.i64[0] = vbslq_s8(v36, vmulq_f32(v178, vrecpsq_f32(v175, v178)), vsubq_f32(v169, v149)).u64[0];
          v179 = vbslq_s8(v36, v158, v173);
          *v158.i8 = vadd_f32(vqtbl1_s8(v176, *v160.f32), vqtbl1_s8(v176, *v154.f32));
          v180 = vbslq_s8(v47, vminq_f32(v150, vextq_s8(v179, v179, 4uLL)), v129);
          v160.i64[0] = v178.i64[0];
          v181 = vextq_s8(v180, v180, 0xCuLL);
          v178.i64[1] = v158.i64[0];
          v160.i64[1] = v158.i64[0];
          v182 = vsubq_f32(v181, v150);
          v149.i64[1] = v182.i64[1];
          v183 = vbslq_s8(v36, vmulq_laneq_f32(vrev64q_s32(v178), v182, 2), v160);
          v184 = vbslq_s8(v47, vabsq_f32(vextq_s8(v183, v183, 8uLL)), v149);
          v74.i64[0] = vsubq_f32(v184, v74).u64[0];
          v185 = vbslq_s8(v86, vmulq_n_f32(vbslq_s8(v86, vsubq_f32(v184, v94), v183), v74.f32[0]), v183);
          v74.i64[1] = vextq_s8(v184, v184, 8uLL).u64[0];
          *v184.f32 = vmvn_s8(*v112.f32);
          v184.i64[1] = vextq_s8(*(v21 + 368), *(v21 + 368), 8uLL).u64[0];
          v186 = vandq_s8(v113, vcgtq_f32(v185, vandq_s8(v74, v184)));
          v187 = vaddq_f32(vextq_s8(v186, v186, 4uLL), v186);
          v188 = vandq_s8(v113, vcgtq_f32(v153, v176));
          v189 = vminq_f32(vmaxq_f32(vaddq_f32(v187, vextq_s8(v187, v187, 8uLL)), v67), v113);
          v190 = vminq_f32(vbslq_s8(v36, v189, vminq_f32(vbslq_s8(v36, v189, vminq_f32(vrev64q_s32(v188), v188)), vextq_s8(v188, v188, 4uLL))), vextq_s8(v188, v188, 8uLL));
          v191 = vbslq_s8(v36, vmulq_laneq_f32(v160, v171, 2), v171);
          v192 = vbslq_s8(v36, vandq_s8(v113, vcgeq_f32(vnegq_f32(vbslq_s8(v36, v189, v190)), v67)), v190);
          v193 = vextq_s8(v192, vaddq_f32(v191, v191), 0xCuLL);
          v193.i64[0] = v192.i64[0];
          v194 = vbslq_s8(v36, vminq_f32(v151, v193), v193);
          v193.i64[0] = vbslq_s8(vcgtq_f32(v194, v67), v67, vrev64q_s32(v194)).u64[0];
          v112.i64[0] = vextq_s8(v194, v194, 8uLL).u64[0];
          *v176.f32 = vext_s8(*v112.f32, *v193.f32, 4uLL);
          *v112.f32 = vext_s8(*v193.f32, *v112.f32, 4uLL);
          v112.i64[1] = v176.i64[0];
          v193.i64[1] = v194.i64[1];
          v195 = vminq_f32(vmaxq_f32(vrecpeq_f32(v112), v161), v87);
          v196 = vminq_f32(vmaxq_f32(vmulq_f32(v195, vrecpsq_f32(v112, v195)), v161), v87);
          v197 = vmulq_laneq_f32(vmulq_f32(v196, vrecpsq_f32(v112, v196)), v191, 3);
          v197.i64[0] = vbslq_s8(v36, vminq_f32(v151, vbslq_s8(v36, v193, v197)), v197).u64[0];
          v198 = vextq_s8(v180, v180, 8uLL);
          v197.i64[1] = vaddq_f32(v198, v180).i64[1];
          v199 = vrev64q_s32(v150);
          v200 = vbslq_s8(v47, vaddq_f32(v199, v198), v197);
          v201 = vbslq_s8(v36, vbslq_s8(vcgtq_f32(v181, v67), v191, v67), vbslq_s8(vcgtq_f32(vrev64q_s32(v200), v67), v200, v67));
          v202 = vextq_s8(v200, v200, 8uLL);
          v203 = vmulq_f32(v224, vsubq_f32(v202, vmulq_f32(v202, v201)));
          v204 = vdupq_laneq_s32(v72, 3);
          *v191.f32 = vdup_lane_s32(*v203.i8, 0);
          v191.i64[1] = v204.i64[0];
          v205 = vsubq_f32(v223, v191);
          v206 = vmulq_f32(v205, v205);
          v203.i64[1] = vsubq_f32(vdupq_lane_s64(*&v203, 0), vextq_s8(v204, v203, 0xCuLL)).i64[1];
          v207 = vaddq_f32(v206, vextq_s8(v206, v206, 4uLL));
          v208 = vbslq_s8(v36, vaddq_f32(vaddq_f32(v207, vextq_s8(v207, v207, 8uLL)), vbslq_s8(v36, vaddq_f32(v199, v150), v203)), v203);
          *v199.f32 = vdup_lane_s32(*v208.i8, 1);
          v199.i64[1] = v204.i64[0];
          v209 = vsubq_f32(v153, v199);
          v210 = vmulq_f32(v209, v209);
          v211 = vaddq_f32(v210, vextq_s8(v210, v210, 4uLL));
          v212 = vbslq_s8(v47, vaddq_f32(vextq_s8(v155, v155, 4uLL), vextq_s8(v155, v155, 8uLL)), v208);
          v213 = vaddq_f32(vextq_s8(v212, v212, 0xCuLL), vaddq_f32(v211, vextq_s8(v211, v211, 8uLL)));
          v214 = vbslq_s8(v36, v213, vrev64q_s32(vaddq_f32(v213, v212)));
          v215 = vminq_f32(vmaxq_f32(vrecpeq_f32(v214), v161), v87);
          v216 = vminq_f32(vmaxq_f32(vmulq_f32(v215, vrecpsq_f32(v214, v215)), v161), v87);
          v217 = vmulq_f32(v216, vrecpsq_f32(v214, v216));
          v218 = vbslq_s8(v36, vmulq_laneq_f32(vbslq_s8(v36, v213, v217), v212, 2), v217);
          v219 = vbslq_s8(v36, vaddq_f32(vrev64q_s32(v212), vmulq_lane_f32(v218, *v218.f32, 1)), vandq_s8(v113, vcgeq_f32(vnegq_f32(v72), v67)));
          v16 = 0uLL;
          v220 = vbslq_s8(v86, vbslq_s8(vcgtq_f32(v219, v67), vextq_s8(v72, v204, 4uLL), vrev64q_s32(v219)), vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v219.f32, 1), v67), v67, v204));
          v220.i32[3] = 1.0;
          *(*&v9 + 16 * v17) = v220;
          v7 = vaddq_f32(v225, xmmword_2603429B0);
          v18 = v19;
          ++v17;
        }

        while (v4 != v17);
        v8 = (v8 + v11);
        ++v5;
        v7 = vaddq_f32(v222, xmmword_2603429C0);
        v10 = (v10 + v11);
        v12 = (v12 + v11);
        *&v9 += v15;
      }

      while (v5 != v3);
    }
  }

  return 0;
}

uint64_t HgcDemosaic_1::GetDOD(HgcDemosaic_1 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFE, 0xFFFFFFFE, 2u, 2u);
  return HGRectGrow(v6, v5, v7);
}

uint64_t HgcDemosaic_1::GetROI(HgcDemosaic_1 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFE, 0xFFFFFFFE, 2u, 2u);
  return HGRectGrow(v6, v5, v7);
}

void HgcDemosaic_1::HgcDemosaic_1(HgcDemosaic_1 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287235E08;
  operator new();
}

void HgcDemosaic_1::~HgcDemosaic_1(HgcDemosaic_1 *this)
{
  *this = &unk_287235E08;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C400F47AF14);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287235E08;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C400F47AF14);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcDemosaic_1::~HgcDemosaic_1(HGNode *this)
{
  *this = &unk_287235E08;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F47AF14);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcDemosaic_1::SetParameter(HgcDemosaic_1 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcDemosaic_1::GetParameter(HgcDemosaic_1 *this, unsigned int a2, float *a3)
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

const char *HgcDemosaic_2::GetProgram(HgcDemosaic_2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_1121;
    }

    else
    {
      return aMetal10Len0000_1122;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_422;
  }
}