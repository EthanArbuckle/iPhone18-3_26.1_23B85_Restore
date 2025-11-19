void HgcYUV420TriPlanar_709ToRGB::~HgcYUV420TriPlanar_709ToRGB(HGNode *this)
{
  *this = &unk_28722D000;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV420TriPlanar_709ToRGB::SetParameter(HgcYUV420TriPlanar_709ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV420TriPlanar_709ToRGB::GetParameter(HgcYUV420TriPlanar_709ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV420TriPlanar_2020ToRGB::GetProgram(HgcYUV420TriPlanar_2020ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const half4 c1 = half4(1.474599957, -0.5713531375, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(r0.x);\n    return output;\n}\n//MD5=f79a664b:38284d73:72f9ca6b:398dd0ca\n//SIG=00400000:00000005:00000005:00000007:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004b8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const float4 c1 = float4(1.474599957, -0.5713531375, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = r0.x;\n    return output;\n}\n//MD5=7637b7ca:94e18948:9249a20f:2be63cfc\n//SIG=00000000:00000005:00000005:00000000:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000473\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.474599957, -0.5713531375, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = texture2D(hg_Texture2, hg_TexCoord2.xy).x;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = r0.x;\n}\n//MD5=a3e884d8:41b7c32f:d6ccb16b:fb255cb1\n//SIG=00000000:00000005:00000005:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDD1B04(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD1B44(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD1B3CLL);
}

uint64_t HgcYUV420TriPlanar_2020ToRGB::BindTexture(HgcYUV420TriPlanar_2020ToRGB *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 != 2)
    {
      if (a3 != 1)
      {
        return 0xFFFFFFFFLL;
      }

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

    (*(*a2 + 72))(a2, 2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 2;
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

uint64_t HgcYUV420TriPlanar_2020ToRGB::Bind(HgcYUV420TriPlanar_2020ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV420TriPlanar_2020ToRGB::RenderTile(HgcYUV420TriPlanar_2020ToRGB *this, int32x2_t *a2)
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
    v9 = a2[14];
    v10 = a2[10];
    v11 = 16 * a2[11].i32[0];
    v12 = 16 * a2[15].i32[0];
    v13 = 16 * a2[3].i32[0];
    v14 = 0uLL;
    __asm { FMOV            V5.4S, #4.0 }

    v20.i64[0] = 0x3F0000003F000000;
    v20.i64[1] = 0x3F0000003F000000;
    while (1)
    {
      v21 = vaddq_f32(v7, vmulq_f32(v14, xmmword_260344920));
      if (v6 >= 4)
      {
        break;
      }

      v22 = 0;
      v23 = 0uLL;
      __asm { FMOV            V17.4S, #1.0 }

      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v14 = vaddq_f32(v14, _Q17);
      *&v10 += v11;
      *&v9 += v12;
      *&v8 += v13;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v22 = 0;
    v23 = 0uLL;
    v24 = 32;
    for (i = v6; i > 3; i -= 4)
    {
      v26 = vaddq_f32(v21, vmulq_f32(v23, xmmword_260344E30));
      v27 = vaddq_f32(v26, xmmword_260344E30);
      v28 = vaddq_f32(v27, xmmword_260344E30);
      v29 = vaddq_f32(v28, xmmword_260344E30);
      v30 = a2[12];
      v31 = &a2[13];
      v32 = vaddq_f32(vsubq_f32(v26, v5), v20);
      v33 = vcvtq_s32_f32(v32);
      v34 = vaddq_f32(vsubq_f32(v27, v5), v20);
      v35 = vcvtq_s32_f32(v34);
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v34.f32 = vadd_s32(*v35.i8, *&vcgtq_f32(vcvtq_f32_s32(v35), v34));
      *v35.i8 = vld1_dup_f32(v31);
      *v32.f32 = vmla_s32(vzip1_s32(*v32.f32, *v34.f32), vzip2_s32(*v32.f32, *v34.f32), *v35.i8);
      LODWORD(v31) = v32.i32[1];
      v36 = vaddq_f32(vsubq_f32(v28, v5), v20);
      v37 = vcvtq_s32_f32(v36);
      v38 = v32.i32[0];
      v32.i64[0] = vcgtq_f32(vcvtq_f32_s32(v37), v36).u64[0];
      v39 = vaddq_f32(vsubq_f32(v29, v5), v20);
      v40 = *(*&v30 + 16 * v38);
      v41 = vcvtq_s32_f32(v39);
      *v32.f32 = vadd_s32(*v37.i8, *v32.f32);
      *v39.f32 = vadd_s32(*v41.i8, *&vcgtq_f32(vcvtq_f32_s32(v41), v39));
      *v32.f32 = vmla_s32(vzip1_s32(*v32.f32, *v39.f32), vzip2_s32(*v32.f32, *v39.f32), *v35.i8);
      v42 = *(*&v30 + 16 * v32.i32[1]);
      v43 = vextq_s8(*(*&v30 + 16 * v31), *(*&v30 + 16 * v31), 0xCuLL);
      v44 = vextq_s8(*(*&v30 + 16 * v32.i32[0]), *(*&v30 + 16 * v32.i32[0]), 0xCuLL);
      v45 = *(this + 51);
      v46 = *(v45 + 32);
      v47 = *(v45 + 48);
      v48 = *(v45 + 16);
      v49 = vaddq_f32(v48, vmulq_f32(*v45, vbslq_s8(v46, *(*&v10 + v24 - 32), vextq_s8(v40, v40, 0xCuLL))));
      v50 = vaddq_f32(v48, vmulq_f32(*v45, vbslq_s8(v46, *(*&v10 + v24 - 16), v43)));
      v51 = vaddq_f32(v48, vmulq_f32(*v45, vbslq_s8(v46, *(*&v10 + v24), v44)));
      v52 = vaddq_f32(v48, vmulq_f32(*v45, vbslq_s8(v46, *(*&v10 + v24 + 16), vextq_s8(v42, v42, 0xCuLL))));
      v53 = vaddq_f32(vdupq_lane_s32(*v49.f32, 0), vmulq_lane_f32(v47, *v49.f32, 1));
      v54 = vaddq_f32(vdupq_lane_s32(*v50.f32, 0), vmulq_lane_f32(v47, *v50.f32, 1));
      v55 = *(*&v9 + v24 - 32);
      v56 = *(*&v9 + v24 - 16);
      v55.i64[1] = v49.i64[1];
      v57 = vaddq_f32(vdupq_lane_s32(*v51.f32, 0), vmulq_lane_f32(v47, *v51.f32, 1));
      v59 = *(*&v9 + v24);
      v58 = *(*&v9 + v24 + 16);
      v56.i64[1] = v50.i64[1];
      v59.i64[1] = v51.i64[1];
      v60 = vaddq_f32(vdupq_lane_s32(*v52.f32, 0), vmulq_lane_f32(v47, *v52.f32, 1));
      v58.i64[1] = v52.i64[1];
      v61 = *(v45 + 64);
      v62 = *(v45 + 80);
      v23 = vaddq_f32(v23, _Q5);
      v63 = (*&v8 + v24);
      v63[-2] = vbslq_s8(v62, vextq_s8(v55, v55, 4uLL), vaddq_f32(v53, vmulq_laneq_f32(v61, v49, 2)));
      v63[-1] = vbslq_s8(v62, vextq_s8(v56, v56, 4uLL), vaddq_f32(v54, vmulq_laneq_f32(v61, v50, 2)));
      *v63 = vbslq_s8(v62, vextq_s8(v59, v59, 4uLL), vaddq_f32(v57, vmulq_laneq_f32(v61, v51, 2)));
      v63[1] = vbslq_s8(v62, vextq_s8(v58, v58, 4uLL), vaddq_f32(v60, vmulq_laneq_f32(v61, v52, 2)));
      v22 += 4;
      v24 += 64;
    }

    __asm { FMOV            V17.4S, #1.0 }

    if (v22 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v65 = vaddq_f32(vsubq_f32(vaddq_f32(v21, vmulq_f32(v23, xmmword_260344E30)), v5), v20);
      v66 = vcvtq_s32_f32(v65);
      v65.i64[0] = vaddq_s32(v66, vcgtq_f32(vcvtq_f32_s32(v66), v65)).u64[0];
      v67 = *(*&a2[12] + 16 * (v65.i32[0] + v65.i32[1] * a2[13].i32[0]));
      v68 = *(this + 51);
      v69 = vaddq_f32(*(v68 + 16), vmulq_f32(*v68, vbslq_s8(*(v68 + 32), *(*&v10 + 16 * v22), vextq_s8(v67, v67, 0xCuLL))));
      v70 = *(*&v9 + 16 * v22);
      v70.i64[1] = v69.i64[1];
      *(*&v8 + 16 * v22) = vbslq_s8(*(v68 + 80), vextq_s8(v70, v70, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v68 + 64), v69, 2), vaddq_f32(vdupq_lane_s32(*v69.f32, 0), vmulq_lane_f32(*(v68 + 48), *v69.f32, 1))));
      v23 = vaddq_f32(v23, _Q17);
      ++v22;
    }

    while (v22 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcYUV420TriPlanar_2020ToRGB::GetDOD(HgcYUV420TriPlanar_2020ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3 && a3 != 2)
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

uint64_t HgcYUV420TriPlanar_2020ToRGB::GetROI(HgcYUV420TriPlanar_2020ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3 && a3 != 2)
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

void HgcYUV420TriPlanar_2020ToRGB::HgcYUV420TriPlanar_2020ToRGB(HgcYUV420TriPlanar_2020ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722D268;
  operator new();
}

void HgcYUV420TriPlanar_2020ToRGB::~HgcYUV420TriPlanar_2020ToRGB(HgcYUV420TriPlanar_2020ToRGB *this)
{
  *this = &unk_28722D268;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722D268;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420TriPlanar_2020ToRGB::~HgcYUV420TriPlanar_2020ToRGB(HGNode *this)
{
  *this = &unk_28722D268;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV420TriPlanar_2020ToRGB::SetParameter(HgcYUV420TriPlanar_2020ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV420TriPlanar_2020ToRGB::GetParameter(HgcYUV420TriPlanar_2020ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV422TriPlanar_601ToRGB::GetProgram(HgcYUV422TriPlanar_601ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const half4 c1 = half4(1.401999950, -0.7141363025, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(r0.x);\n    return output;\n}\n//MD5=6c0cd9a4:962f63d5:0783359b:49528c86\n//SIG=00400000:00000005:00000005:00000007:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004b8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const float4 c1 = float4(1.401999950, -0.7141363025, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = r0.x;\n    return output;\n}\n//MD5=24010ee7:6e1cd76d:c31b9c85:b9fbda97\n//SIG=00000000:00000005:00000005:00000000:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000473\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.401999950, -0.7141363025, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = texture2D(hg_Texture2, hg_TexCoord2.xy).x;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = r0.x;\n}\n//MD5=6448df2f:b4b78b65:3a0dc9a8:4e1d16fb\n//SIG=00000000:00000005:00000005:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDD2BF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD2C34(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD2C2CLL);
}

uint64_t HgcYUV422TriPlanar_601ToRGB::BindTexture(HgcYUV422TriPlanar_601ToRGB *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 != 2)
    {
      if (a3 != 1)
      {
        return 0xFFFFFFFFLL;
      }

      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 48))(a2, 0, 0);
      HGHandler::TexCoord(a2, 1, 0, 0, 0);
      if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
      {
        (*(*a2 + 168))(a2);
      }

      (*(*a2 + 104))(a2, 0.5, 1.0, 1.0);
      return 0;
    }

    (*(*a2 + 72))(a2, 2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 2;
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

uint64_t HgcYUV422TriPlanar_601ToRGB::Bind(HgcYUV422TriPlanar_601ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV422TriPlanar_601ToRGB::RenderTile(HgcYUV422TriPlanar_601ToRGB *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = vmulq_f32(v5, xmmword_2608457E0);
    v8 = a2[2];
    v9 = a2[14];
    v10 = a2[10];
    v11 = 16 * a2[11].i32[0];
    v12 = 16 * a2[15].i32[0];
    v13 = 16 * a2[3].i32[0];
    __asm { FMOV            V4.4S, #4.0 }

    v19.i64[0] = 0x3F0000003F000000;
    v19.i64[1] = 0x3F0000003F000000;
    while (v6 < 4)
    {
      v20 = 0;
      v21 = 0uLL;
      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v7 = vaddq_f32(v7, xmmword_2603429C0);
      *&v10 += v11;
      *&v9 += v12;
      *&v8 += v13;
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
      v24 = vaddq_f32(v7, vmulq_f32(v21, xmmword_260344E30));
      v25 = vaddq_f32(v24, xmmword_260344E30);
      v26 = vaddq_f32(v25, xmmword_260344E30);
      v27 = vaddq_f32(v26, xmmword_260344E30);
      v28 = a2[12];
      v29 = &a2[13];
      v30 = vaddq_f32(vsubq_f32(v24, v5), v19);
      v31 = vcvtq_s32_f32(v30);
      v32 = vaddq_f32(vsubq_f32(v25, v5), v19);
      v33 = vcvtq_s32_f32(v32);
      *v30.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v33.i8 = vld1_dup_f32(v29);
      *v30.f32 = vmla_s32(vzip1_s32(*v30.f32, *v32.f32), vzip2_s32(*v30.f32, *v32.f32), *v33.i8);
      LODWORD(v29) = v30.i32[1];
      v34 = vaddq_f32(vsubq_f32(v26, v5), v19);
      v35 = vcvtq_s32_f32(v34);
      v36 = v30.i32[0];
      v30.i64[0] = vcgtq_f32(vcvtq_f32_s32(v35), v34).u64[0];
      v37 = vaddq_f32(vsubq_f32(v27, v5), v19);
      v38 = *(*&v28 + 16 * v36);
      v39 = vcvtq_s32_f32(v37);
      *v30.f32 = vadd_s32(*v35.i8, *v30.f32);
      *v37.f32 = vadd_s32(*v39.i8, *&vcgtq_f32(vcvtq_f32_s32(v39), v37));
      *v30.f32 = vmla_s32(vzip1_s32(*v30.f32, *v37.f32), vzip2_s32(*v30.f32, *v37.f32), *v33.i8);
      v40 = *(*&v28 + 16 * v30.i32[1]);
      v41 = vextq_s8(*(*&v28 + 16 * v29), *(*&v28 + 16 * v29), 0xCuLL);
      v42 = vextq_s8(*(*&v28 + 16 * v30.i32[0]), *(*&v28 + 16 * v30.i32[0]), 0xCuLL);
      v43 = *(this + 51);
      v44 = *(v43 + 32);
      v45 = *(v43 + 48);
      v46 = *(v43 + 16);
      v47 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22 - 32), vextq_s8(v38, v38, 0xCuLL))));
      v48 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22 - 16), v41)));
      v49 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22), v42)));
      v50 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22 + 16), vextq_s8(v40, v40, 0xCuLL))));
      v51 = vaddq_f32(vdupq_lane_s32(*v47.f32, 0), vmulq_lane_f32(v45, *v47.f32, 1));
      v52 = vaddq_f32(vdupq_lane_s32(*v48.f32, 0), vmulq_lane_f32(v45, *v48.f32, 1));
      v53 = *(*&v9 + v22 - 32);
      v54 = *(*&v9 + v22 - 16);
      v53.i64[1] = v47.i64[1];
      v55 = vaddq_f32(vdupq_lane_s32(*v49.f32, 0), vmulq_lane_f32(v45, *v49.f32, 1));
      v57 = *(*&v9 + v22);
      v56 = *(*&v9 + v22 + 16);
      v54.i64[1] = v48.i64[1];
      v57.i64[1] = v49.i64[1];
      v58 = vaddq_f32(vdupq_lane_s32(*v50.f32, 0), vmulq_lane_f32(v45, *v50.f32, 1));
      v56.i64[1] = v50.i64[1];
      v59 = *(v43 + 64);
      v60 = *(v43 + 80);
      v21 = vaddq_f32(v21, _Q4);
      v61 = (*&v8 + v22);
      v61[-2] = vbslq_s8(v60, vextq_s8(v53, v53, 4uLL), vaddq_f32(v51, vmulq_laneq_f32(v59, v47, 2)));
      v61[-1] = vbslq_s8(v60, vextq_s8(v54, v54, 4uLL), vaddq_f32(v52, vmulq_laneq_f32(v59, v48, 2)));
      *v61 = vbslq_s8(v60, vextq_s8(v57, v57, 4uLL), vaddq_f32(v55, vmulq_laneq_f32(v59, v49, 2)));
      v61[1] = vbslq_s8(v60, vextq_s8(v56, v56, 4uLL), vaddq_f32(v58, vmulq_laneq_f32(v59, v50, 2)));
      v20 += 4;
      v22 += 64;
    }

    if (v20 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v62 = vaddq_f32(vsubq_f32(vaddq_f32(v7, vmulq_f32(v21, xmmword_260344E30)), v5), v19);
      v63 = vcvtq_s32_f32(v62);
      v62.i64[0] = vaddq_s32(v63, vcgtq_f32(vcvtq_f32_s32(v63), v62)).u64[0];
      v64 = *(*&a2[12] + 16 * (v62.i32[0] + v62.i32[1] * a2[13].i32[0]));
      v65 = *(this + 51);
      v66 = vaddq_f32(*(v65 + 16), vmulq_f32(*v65, vbslq_s8(*(v65 + 32), *(*&v10 + 16 * v20), vextq_s8(v64, v64, 0xCuLL))));
      v67 = *(*&v9 + 16 * v20);
      v67.i64[1] = v66.i64[1];
      *(*&v8 + 16 * v20) = vbslq_s8(*(v65 + 80), vextq_s8(v67, v67, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v65 + 64), v66, 2), vaddq_f32(vdupq_lane_s32(*v66.f32, 0), vmulq_lane_f32(*(v65 + 48), *v66.f32, 1))));
      __asm { FMOV            V7.4S, #1.0 }

      v21 = vaddq_f32(v21, _Q7);
      ++v20;
    }

    while (v20 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcYUV422TriPlanar_601ToRGB::GetDOD(HgcYUV422TriPlanar_601ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3 && a3 != 2)
  {
    if (a3 == 1)
    {
      v5 = *&a4.var0;
      v6 = *&a4.var2;
      v7 = HGRectMake4i(0, 0, a3, 0);
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

uint64_t HgcYUV422TriPlanar_601ToRGB::GetROI(HgcYUV422TriPlanar_601ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3 && a3 != 2)
  {
    if (a3 == 1)
    {
      v5 = HGRectFloat(a4.var0);
      v9 = HGRectScale(v5, v6, v7, v8, 0.5);
      v14 = HGRectIntegral(v10, v9, v11, v12, v13);
      v16 = v15;
      v17 = HGRectMake4i(0xFFFFFFFF, 0, 0, 0);
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

void HgcYUV422TriPlanar_601ToRGB::HgcYUV422TriPlanar_601ToRGB(HgcYUV422TriPlanar_601ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722D4D0;
  operator new();
}

void HgcYUV422TriPlanar_601ToRGB::~HgcYUV422TriPlanar_601ToRGB(HgcYUV422TriPlanar_601ToRGB *this)
{
  *this = &unk_28722D4D0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722D4D0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV422TriPlanar_601ToRGB::~HgcYUV422TriPlanar_601ToRGB(HGNode *this)
{
  *this = &unk_28722D4D0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV422TriPlanar_601ToRGB::SetParameter(HgcYUV422TriPlanar_601ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV422TriPlanar_601ToRGB::GetParameter(HgcYUV422TriPlanar_601ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV422TriPlanar_709ToRGB::GetProgram(HgcYUV422TriPlanar_709ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const half4 c1 = half4(1.574800014, -0.4681242704, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(r0.x);\n    return output;\n}\n//MD5=cdf2c357:0e58722b:1e4f6b69:f6729461\n//SIG=00400000:00000005:00000005:00000007:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004b8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const float4 c1 = float4(1.574800014, -0.4681242704, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = r0.x;\n    return output;\n}\n//MD5=05c81fc8:e3feb89a:8a806bcd:71aa8c88\n//SIG=00000000:00000005:00000005:00000000:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000473\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.574800014, -0.4681242704, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = texture2D(hg_Texture2, hg_TexCoord2.xy).x;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = r0.x;\n}\n//MD5=d2915400:9b8d3537:638e9298:f328421c\n//SIG=00000000:00000005:00000005:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDD3CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD3D10(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD3D08);
}

uint64_t HgcYUV422TriPlanar_709ToRGB::BindTexture(HgcYUV422TriPlanar_709ToRGB *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 != 2)
    {
      if (a3 != 1)
      {
        return 0xFFFFFFFFLL;
      }

      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 48))(a2, 0, 0);
      HGHandler::TexCoord(a2, 1, 0, 0, 0);
      if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
      {
        (*(*a2 + 168))(a2);
      }

      (*(*a2 + 104))(a2, 0.5, 1.0, 1.0);
      return 0;
    }

    (*(*a2 + 72))(a2, 2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 2;
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

uint64_t HgcYUV422TriPlanar_709ToRGB::Bind(HgcYUV422TriPlanar_709ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV422TriPlanar_709ToRGB::RenderTile(HgcYUV422TriPlanar_709ToRGB *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = vmulq_f32(v5, xmmword_2608457E0);
    v8 = a2[2];
    v9 = a2[14];
    v10 = a2[10];
    v11 = 16 * a2[11].i32[0];
    v12 = 16 * a2[15].i32[0];
    v13 = 16 * a2[3].i32[0];
    __asm { FMOV            V4.4S, #4.0 }

    v19.i64[0] = 0x3F0000003F000000;
    v19.i64[1] = 0x3F0000003F000000;
    while (v6 < 4)
    {
      v20 = 0;
      v21 = 0uLL;
      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v7 = vaddq_f32(v7, xmmword_2603429C0);
      *&v10 += v11;
      *&v9 += v12;
      *&v8 += v13;
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
      v24 = vaddq_f32(v7, vmulq_f32(v21, xmmword_260344E30));
      v25 = vaddq_f32(v24, xmmword_260344E30);
      v26 = vaddq_f32(v25, xmmword_260344E30);
      v27 = vaddq_f32(v26, xmmword_260344E30);
      v28 = a2[12];
      v29 = &a2[13];
      v30 = vaddq_f32(vsubq_f32(v24, v5), v19);
      v31 = vcvtq_s32_f32(v30);
      v32 = vaddq_f32(vsubq_f32(v25, v5), v19);
      v33 = vcvtq_s32_f32(v32);
      *v30.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v33.i8 = vld1_dup_f32(v29);
      *v30.f32 = vmla_s32(vzip1_s32(*v30.f32, *v32.f32), vzip2_s32(*v30.f32, *v32.f32), *v33.i8);
      LODWORD(v29) = v30.i32[1];
      v34 = vaddq_f32(vsubq_f32(v26, v5), v19);
      v35 = vcvtq_s32_f32(v34);
      v36 = v30.i32[0];
      v30.i64[0] = vcgtq_f32(vcvtq_f32_s32(v35), v34).u64[0];
      v37 = vaddq_f32(vsubq_f32(v27, v5), v19);
      v38 = *(*&v28 + 16 * v36);
      v39 = vcvtq_s32_f32(v37);
      *v30.f32 = vadd_s32(*v35.i8, *v30.f32);
      *v37.f32 = vadd_s32(*v39.i8, *&vcgtq_f32(vcvtq_f32_s32(v39), v37));
      *v30.f32 = vmla_s32(vzip1_s32(*v30.f32, *v37.f32), vzip2_s32(*v30.f32, *v37.f32), *v33.i8);
      v40 = *(*&v28 + 16 * v30.i32[1]);
      v41 = vextq_s8(*(*&v28 + 16 * v29), *(*&v28 + 16 * v29), 0xCuLL);
      v42 = vextq_s8(*(*&v28 + 16 * v30.i32[0]), *(*&v28 + 16 * v30.i32[0]), 0xCuLL);
      v43 = *(this + 51);
      v44 = *(v43 + 32);
      v45 = *(v43 + 48);
      v46 = *(v43 + 16);
      v47 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22 - 32), vextq_s8(v38, v38, 0xCuLL))));
      v48 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22 - 16), v41)));
      v49 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22), v42)));
      v50 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22 + 16), vextq_s8(v40, v40, 0xCuLL))));
      v51 = vaddq_f32(vdupq_lane_s32(*v47.f32, 0), vmulq_lane_f32(v45, *v47.f32, 1));
      v52 = vaddq_f32(vdupq_lane_s32(*v48.f32, 0), vmulq_lane_f32(v45, *v48.f32, 1));
      v53 = *(*&v9 + v22 - 32);
      v54 = *(*&v9 + v22 - 16);
      v53.i64[1] = v47.i64[1];
      v55 = vaddq_f32(vdupq_lane_s32(*v49.f32, 0), vmulq_lane_f32(v45, *v49.f32, 1));
      v57 = *(*&v9 + v22);
      v56 = *(*&v9 + v22 + 16);
      v54.i64[1] = v48.i64[1];
      v57.i64[1] = v49.i64[1];
      v58 = vaddq_f32(vdupq_lane_s32(*v50.f32, 0), vmulq_lane_f32(v45, *v50.f32, 1));
      v56.i64[1] = v50.i64[1];
      v59 = *(v43 + 64);
      v60 = *(v43 + 80);
      v21 = vaddq_f32(v21, _Q4);
      v61 = (*&v8 + v22);
      v61[-2] = vbslq_s8(v60, vextq_s8(v53, v53, 4uLL), vaddq_f32(v51, vmulq_laneq_f32(v59, v47, 2)));
      v61[-1] = vbslq_s8(v60, vextq_s8(v54, v54, 4uLL), vaddq_f32(v52, vmulq_laneq_f32(v59, v48, 2)));
      *v61 = vbslq_s8(v60, vextq_s8(v57, v57, 4uLL), vaddq_f32(v55, vmulq_laneq_f32(v59, v49, 2)));
      v61[1] = vbslq_s8(v60, vextq_s8(v56, v56, 4uLL), vaddq_f32(v58, vmulq_laneq_f32(v59, v50, 2)));
      v20 += 4;
      v22 += 64;
    }

    if (v20 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v62 = vaddq_f32(vsubq_f32(vaddq_f32(v7, vmulq_f32(v21, xmmword_260344E30)), v5), v19);
      v63 = vcvtq_s32_f32(v62);
      v62.i64[0] = vaddq_s32(v63, vcgtq_f32(vcvtq_f32_s32(v63), v62)).u64[0];
      v64 = *(*&a2[12] + 16 * (v62.i32[0] + v62.i32[1] * a2[13].i32[0]));
      v65 = *(this + 51);
      v66 = vaddq_f32(*(v65 + 16), vmulq_f32(*v65, vbslq_s8(*(v65 + 32), *(*&v10 + 16 * v20), vextq_s8(v64, v64, 0xCuLL))));
      v67 = *(*&v9 + 16 * v20);
      v67.i64[1] = v66.i64[1];
      *(*&v8 + 16 * v20) = vbslq_s8(*(v65 + 80), vextq_s8(v67, v67, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v65 + 64), v66, 2), vaddq_f32(vdupq_lane_s32(*v66.f32, 0), vmulq_lane_f32(*(v65 + 48), *v66.f32, 1))));
      __asm { FMOV            V7.4S, #1.0 }

      v21 = vaddq_f32(v21, _Q7);
      ++v20;
    }

    while (v20 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcYUV422TriPlanar_709ToRGB::GetDOD(HgcYUV422TriPlanar_709ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3 && a3 != 2)
  {
    if (a3 == 1)
    {
      v5 = *&a4.var0;
      v6 = *&a4.var2;
      v7 = HGRectMake4i(0, 0, a3, 0);
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

uint64_t HgcYUV422TriPlanar_709ToRGB::GetROI(HgcYUV422TriPlanar_709ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3 && a3 != 2)
  {
    if (a3 == 1)
    {
      v5 = HGRectFloat(a4.var0);
      v9 = HGRectScale(v5, v6, v7, v8, 0.5);
      v14 = HGRectIntegral(v10, v9, v11, v12, v13);
      v16 = v15;
      v17 = HGRectMake4i(0xFFFFFFFF, 0, 0, 0);
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

void HgcYUV422TriPlanar_709ToRGB::HgcYUV422TriPlanar_709ToRGB(HgcYUV422TriPlanar_709ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722D738;
  operator new();
}

void HgcYUV422TriPlanar_709ToRGB::~HgcYUV422TriPlanar_709ToRGB(HgcYUV422TriPlanar_709ToRGB *this)
{
  *this = &unk_28722D738;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722D738;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV422TriPlanar_709ToRGB::~HgcYUV422TriPlanar_709ToRGB(HGNode *this)
{
  *this = &unk_28722D738;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV422TriPlanar_709ToRGB::SetParameter(HgcYUV422TriPlanar_709ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV422TriPlanar_709ToRGB::GetParameter(HgcYUV422TriPlanar_709ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV422TriPlanar_2020ToRGB::GetProgram(HgcYUV422TriPlanar_2020ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const half4 c1 = half4(1.474599957, -0.5713531375, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(r0.x);\n    return output;\n}\n//MD5=f79a664b:38284d73:72f9ca6b:398dd0ca\n//SIG=00400000:00000005:00000005:00000007:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004b8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const float4 c1 = float4(1.474599957, -0.5713531375, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = r0.x;\n    return output;\n}\n//MD5=7637b7ca:94e18948:9249a20f:2be63cfc\n//SIG=00000000:00000005:00000005:00000000:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000473\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.474599957, -0.5713531375, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = texture2D(hg_Texture2, hg_TexCoord2.xy).x;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = r0.x;\n}\n//MD5=a3e884d8:41b7c32f:d6ccb16b:fb255cb1\n//SIG=00000000:00000005:00000005:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDD4DAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD4DEC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD4DE4);
}

uint64_t HgcYUV422TriPlanar_2020ToRGB::BindTexture(HgcYUV422TriPlanar_2020ToRGB *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 != 2)
    {
      if (a3 != 1)
      {
        return 0xFFFFFFFFLL;
      }

      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 48))(a2, 0, 0);
      HGHandler::TexCoord(a2, 1, 0, 0, 0);
      if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
      {
        (*(*a2 + 168))(a2);
      }

      (*(*a2 + 104))(a2, 0.5, 1.0, 1.0);
      return 0;
    }

    (*(*a2 + 72))(a2, 2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    v5 = a2;
    v6 = 2;
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

uint64_t HgcYUV422TriPlanar_2020ToRGB::Bind(HgcYUV422TriPlanar_2020ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV422TriPlanar_2020ToRGB::RenderTile(HgcYUV422TriPlanar_2020ToRGB *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = vmulq_f32(v5, xmmword_2608457E0);
    v8 = a2[2];
    v9 = a2[14];
    v10 = a2[10];
    v11 = 16 * a2[11].i32[0];
    v12 = 16 * a2[15].i32[0];
    v13 = 16 * a2[3].i32[0];
    __asm { FMOV            V4.4S, #4.0 }

    v19.i64[0] = 0x3F0000003F000000;
    v19.i64[1] = 0x3F0000003F000000;
    while (v6 < 4)
    {
      v20 = 0;
      v21 = 0uLL;
      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v7 = vaddq_f32(v7, xmmword_2603429C0);
      *&v10 += v11;
      *&v9 += v12;
      *&v8 += v13;
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
      v24 = vaddq_f32(v7, vmulq_f32(v21, xmmword_260344E30));
      v25 = vaddq_f32(v24, xmmword_260344E30);
      v26 = vaddq_f32(v25, xmmword_260344E30);
      v27 = vaddq_f32(v26, xmmword_260344E30);
      v28 = a2[12];
      v29 = &a2[13];
      v30 = vaddq_f32(vsubq_f32(v24, v5), v19);
      v31 = vcvtq_s32_f32(v30);
      v32 = vaddq_f32(vsubq_f32(v25, v5), v19);
      v33 = vcvtq_s32_f32(v32);
      *v30.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v33.i8 = vld1_dup_f32(v29);
      *v30.f32 = vmla_s32(vzip1_s32(*v30.f32, *v32.f32), vzip2_s32(*v30.f32, *v32.f32), *v33.i8);
      LODWORD(v29) = v30.i32[1];
      v34 = vaddq_f32(vsubq_f32(v26, v5), v19);
      v35 = vcvtq_s32_f32(v34);
      v36 = v30.i32[0];
      v30.i64[0] = vcgtq_f32(vcvtq_f32_s32(v35), v34).u64[0];
      v37 = vaddq_f32(vsubq_f32(v27, v5), v19);
      v38 = *(*&v28 + 16 * v36);
      v39 = vcvtq_s32_f32(v37);
      *v30.f32 = vadd_s32(*v35.i8, *v30.f32);
      *v37.f32 = vadd_s32(*v39.i8, *&vcgtq_f32(vcvtq_f32_s32(v39), v37));
      *v30.f32 = vmla_s32(vzip1_s32(*v30.f32, *v37.f32), vzip2_s32(*v30.f32, *v37.f32), *v33.i8);
      v40 = *(*&v28 + 16 * v30.i32[1]);
      v41 = vextq_s8(*(*&v28 + 16 * v29), *(*&v28 + 16 * v29), 0xCuLL);
      v42 = vextq_s8(*(*&v28 + 16 * v30.i32[0]), *(*&v28 + 16 * v30.i32[0]), 0xCuLL);
      v43 = *(this + 51);
      v44 = *(v43 + 32);
      v45 = *(v43 + 48);
      v46 = *(v43 + 16);
      v47 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22 - 32), vextq_s8(v38, v38, 0xCuLL))));
      v48 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22 - 16), v41)));
      v49 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22), v42)));
      v50 = vaddq_f32(v46, vmulq_f32(*v43, vbslq_s8(v44, *(*&v10 + v22 + 16), vextq_s8(v40, v40, 0xCuLL))));
      v51 = vaddq_f32(vdupq_lane_s32(*v47.f32, 0), vmulq_lane_f32(v45, *v47.f32, 1));
      v52 = vaddq_f32(vdupq_lane_s32(*v48.f32, 0), vmulq_lane_f32(v45, *v48.f32, 1));
      v53 = *(*&v9 + v22 - 32);
      v54 = *(*&v9 + v22 - 16);
      v53.i64[1] = v47.i64[1];
      v55 = vaddq_f32(vdupq_lane_s32(*v49.f32, 0), vmulq_lane_f32(v45, *v49.f32, 1));
      v57 = *(*&v9 + v22);
      v56 = *(*&v9 + v22 + 16);
      v54.i64[1] = v48.i64[1];
      v57.i64[1] = v49.i64[1];
      v58 = vaddq_f32(vdupq_lane_s32(*v50.f32, 0), vmulq_lane_f32(v45, *v50.f32, 1));
      v56.i64[1] = v50.i64[1];
      v59 = *(v43 + 64);
      v60 = *(v43 + 80);
      v21 = vaddq_f32(v21, _Q4);
      v61 = (*&v8 + v22);
      v61[-2] = vbslq_s8(v60, vextq_s8(v53, v53, 4uLL), vaddq_f32(v51, vmulq_laneq_f32(v59, v47, 2)));
      v61[-1] = vbslq_s8(v60, vextq_s8(v54, v54, 4uLL), vaddq_f32(v52, vmulq_laneq_f32(v59, v48, 2)));
      *v61 = vbslq_s8(v60, vextq_s8(v57, v57, 4uLL), vaddq_f32(v55, vmulq_laneq_f32(v59, v49, 2)));
      v61[1] = vbslq_s8(v60, vextq_s8(v56, v56, 4uLL), vaddq_f32(v58, vmulq_laneq_f32(v59, v50, 2)));
      v20 += 4;
      v22 += 64;
    }

    if (v20 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v62 = vaddq_f32(vsubq_f32(vaddq_f32(v7, vmulq_f32(v21, xmmword_260344E30)), v5), v19);
      v63 = vcvtq_s32_f32(v62);
      v62.i64[0] = vaddq_s32(v63, vcgtq_f32(vcvtq_f32_s32(v63), v62)).u64[0];
      v64 = *(*&a2[12] + 16 * (v62.i32[0] + v62.i32[1] * a2[13].i32[0]));
      v65 = *(this + 51);
      v66 = vaddq_f32(*(v65 + 16), vmulq_f32(*v65, vbslq_s8(*(v65 + 32), *(*&v10 + 16 * v20), vextq_s8(v64, v64, 0xCuLL))));
      v67 = *(*&v9 + 16 * v20);
      v67.i64[1] = v66.i64[1];
      *(*&v8 + 16 * v20) = vbslq_s8(*(v65 + 80), vextq_s8(v67, v67, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v65 + 64), v66, 2), vaddq_f32(vdupq_lane_s32(*v66.f32, 0), vmulq_lane_f32(*(v65 + 48), *v66.f32, 1))));
      __asm { FMOV            V7.4S, #1.0 }

      v21 = vaddq_f32(v21, _Q7);
      ++v20;
    }

    while (v20 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcYUV422TriPlanar_2020ToRGB::GetDOD(HgcYUV422TriPlanar_2020ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3 && a3 != 2)
  {
    if (a3 == 1)
    {
      v5 = *&a4.var0;
      v6 = *&a4.var2;
      v7 = HGRectMake4i(0, 0, a3, 0);
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

uint64_t HgcYUV422TriPlanar_2020ToRGB::GetROI(HgcYUV422TriPlanar_2020ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3 && a3 != 2)
  {
    if (a3 == 1)
    {
      v5 = HGRectFloat(a4.var0);
      v9 = HGRectScale(v5, v6, v7, v8, 0.5);
      v14 = HGRectIntegral(v10, v9, v11, v12, v13);
      v16 = v15;
      v17 = HGRectMake4i(0xFFFFFFFF, 0, 0, 0);
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

void HgcYUV422TriPlanar_2020ToRGB::HgcYUV422TriPlanar_2020ToRGB(HgcYUV422TriPlanar_2020ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722D9A0;
  operator new();
}

void HgcYUV422TriPlanar_2020ToRGB::~HgcYUV422TriPlanar_2020ToRGB(HgcYUV422TriPlanar_2020ToRGB *this)
{
  *this = &unk_28722D9A0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722D9A0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV422TriPlanar_2020ToRGB::~HgcYUV422TriPlanar_2020ToRGB(HGNode *this)
{
  *this = &unk_28722D9A0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV422TriPlanar_2020ToRGB::SetParameter(HgcYUV422TriPlanar_2020ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV422TriPlanar_2020ToRGB::GetParameter(HgcYUV422TriPlanar_2020ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV444TriPlanar_601ToRGB::GetProgram(HgcYUV444TriPlanar_601ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const half4 c1 = half4(1.401999950, -0.7141363025, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(r0.x);\n    return output;\n}\n//MD5=6c0cd9a4:962f63d5:0783359b:49528c86\n//SIG=00400000:00000007:00000007:00000007:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004b8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const float4 c1 = float4(1.401999950, -0.7141363025, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = r0.x;\n    return output;\n}\n//MD5=24010ee7:6e1cd76d:c31b9c85:b9fbda97\n//SIG=00000000:00000007:00000007:00000000:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000473\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.3441362977, 1.771999955, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.401999950, -0.7141363025, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = texture2D(hg_Texture2, hg_TexCoord2.xy).x;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = r0.x;\n}\n//MD5=6448df2f:b4b78b65:3a0dc9a8:4e1d16fb\n//SIG=00000000:00000007:00000007:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDD5D64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD5D9C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD5D94);
}

uint64_t HgcYUV444TriPlanar_601ToRGB::BindTexture(HgcYUV444TriPlanar_601ToRGB *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      (*(*a2 + 72))(a2, 2, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v4 = a2;
      v5 = 2;
    }

    else
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

uint64_t HgcYUV444TriPlanar_601ToRGB::Bind(HgcYUV444TriPlanar_601ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV444TriPlanar_601ToRGB::RenderTile(HgcYUV444TriPlanar_601ToRGB *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 12);
    v5 = *(a2 + 10);
    v6 = *(a2 + 14);
    v7 = *(a2 + 2);
    v8 = *(a2 + 6);
    v9 = *(a2 + 30);
    v10 = *(a2 + 22);
    v11 = *(a2 + 26);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v57 = 0;
        v58 = 16 * v11;
        v59 = 16 * v10;
        v60 = 16 * v9;
        v61 = 16 * v8;
        v62 = 16 * v3;
        do
        {
          v63 = 0;
          do
          {
            v64 = *(this + 51);
            v65 = vaddq_f32(*(v64 + 16), vmulq_f32(*v64, vbslq_s8(*(v64 + 32), v5[v63 / 0x10], vextq_s8(v4[v63 / 0x10], v4[v63 / 0x10], 0xCuLL))));
            v66 = *(v6 + v63);
            v66.i64[1] = v65.i64[1];
            v7[v63 / 0x10] = vbslq_s8(*(v64 + 80), vextq_s8(v66, v66, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v64 + 64), v65, 2), vaddq_f32(vdupq_lane_s32(*v65.f32, 0), vmulq_lane_f32(*(v64 + 48), *v65.f32, 1))));
            v63 += 16;
          }

          while (v62 != v63);
          ++v57;
          v4 = (v4 + v58);
          v5 = (v5 + v59);
          v6 += v60;
          v7 = (v7 + v61);
        }

        while (v57 != v2);
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
      v19 = (v6 + 64);
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
          v31 = *(this + 51);
          v32 = *(v31 + 32);
          v33 = *(v31 + 48);
          v34 = *(v31 + 16);
          v35 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21], vextq_s8(v4[v21], v4[v21], 0xCuLL))));
          v36 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21 + 1], vextq_s8(v4[v21 + 1], v4[v21 + 1], 0xCuLL))));
          v37 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21 + 2], vextq_s8(v4[v21 + 2], v4[v21 + 2], 0xCuLL))));
          v38 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21 + 3], vextq_s8(v4[v21 + 3], v4[v21 + 3], 0xCuLL))));
          v39 = vaddq_f32(vdupq_lane_s32(*v35.f32, 0), vmulq_lane_f32(v33, *v35.f32, 1));
          v40 = vaddq_f32(vdupq_lane_s32(*v36.f32, 0), vmulq_lane_f32(v33, *v36.f32, 1));
          v41 = vaddq_f32(vdupq_lane_s32(*v37.f32, 0), vmulq_lane_f32(v33, *v37.f32, 1));
          v43 = *(v6 + v21 * 16);
          v42 = *(v6 + v21 * 16 + 16);
          v44 = *(v6 + v21 * 16 + 32);
          v45 = *(v6 + v21 * 16 + 48);
          v43.i64[1] = v35.i64[1];
          v46 = vaddq_f32(vdupq_lane_s32(*v38.f32, 0), vmulq_lane_f32(v33, *v38.f32, 1));
          v42.i64[1] = v36.i64[1];
          v47 = *(v31 + 64);
          v48 = *(v31 + 80);
          v44.i64[1] = v37.i64[1];
          v45.i64[1] = v38.i64[1];
          v49 = &v7[v21];
          v22 += 4;
          v21 += 4;
          v26 = v27 + 4;
          *v49 = vbslq_s8(v48, vextq_s8(v43, v43, 4uLL), vaddq_f32(v39, vmulq_laneq_f32(v47, v35, 2)));
          v49[1] = vbslq_s8(v48, vextq_s8(v42, v42, 4uLL), vaddq_f32(v40, vmulq_laneq_f32(v47, v36, 2)));
          v49[2] = vbslq_s8(v48, vextq_s8(v44, v44, 4uLL), vaddq_f32(v41, vmulq_laneq_f32(v47, v37, 2)));
          v49[3] = vbslq_s8(v48, vextq_s8(v45, v45, 4uLL), vaddq_f32(v46, vmulq_laneq_f32(v47, v38, 2)));
          v25 += 4;
          v24 += 4;
          v23 = v30 + 4;
        }

        while (v22 < (v3 - 3));
        if (v3 > v22)
        {
          do
          {
            v50 = *v27++;
            v51 = v50;
            v52 = *v28++;
            v53 = *(this + 51);
            v54 = vaddq_f32(*(v53 + 16), vmulq_f32(*v53, vbslq_s8(*(v53 + 32), v52, vextq_s8(v51, v51, 0xCuLL))));
            v55 = *v29++;
            v56.i64[0] = v55;
            v56.i64[1] = v54.i64[1];
            *v30++ = vbslq_s8(*(v53 + 80), vextq_s8(v56, v56, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v53 + 64), v54, 2), vaddq_f32(vdupq_lane_s32(*v54.f32, 0), vmulq_lane_f32(*(v53 + 48), *v54.f32, 1))));
            ++v22;
          }

          while (v22 < v3);
        }

        ++v12;
        v5 = (v5 + v13);
        v6 += v14;
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

uint64_t HgcYUV444TriPlanar_601ToRGB::GetDOD(HgcYUV444TriPlanar_601ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcYUV444TriPlanar_601ToRGB::GetROI(HgcYUV444TriPlanar_601ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcYUV444TriPlanar_601ToRGB::HgcYUV444TriPlanar_601ToRGB(HgcYUV444TriPlanar_601ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722DC08;
  operator new();
}

void HgcYUV444TriPlanar_601ToRGB::~HgcYUV444TriPlanar_601ToRGB(HgcYUV444TriPlanar_601ToRGB *this)
{
  *this = &unk_28722DC08;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722DC08;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV444TriPlanar_601ToRGB::~HgcYUV444TriPlanar_601ToRGB(HGNode *this)
{
  *this = &unk_28722DC08;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV444TriPlanar_601ToRGB::SetParameter(HgcYUV444TriPlanar_601ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV444TriPlanar_601ToRGB::GetParameter(HgcYUV444TriPlanar_601ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV444TriPlanar_709ToRGB::GetProgram(HgcYUV444TriPlanar_709ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const half4 c1 = half4(1.574800014, -0.4681242704, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(r0.x);\n    return output;\n}\n//MD5=cdf2c357:0e58722b:1e4f6b69:f6729461\n//SIG=00400000:00000007:00000007:00000007:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004b8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const float4 c1 = float4(1.574800014, -0.4681242704, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = r0.x;\n    return output;\n}\n//MD5=05c81fc8:e3feb89a:8a806bcd:71aa8c88\n//SIG=00000000:00000007:00000007:00000000:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000473\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1873242706, 1.855599999, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.574800014, -0.4681242704, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = texture2D(hg_Texture2, hg_TexCoord2.xy).x;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = r0.x;\n}\n//MD5=d2915400:9b8d3537:638e9298:f328421c\n//SIG=00000000:00000007:00000007:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDD6AD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD6B0C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD6B04);
}

uint64_t HgcYUV444TriPlanar_709ToRGB::BindTexture(HgcYUV444TriPlanar_709ToRGB *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      (*(*a2 + 72))(a2, 2, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v4 = a2;
      v5 = 2;
    }

    else
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

uint64_t HgcYUV444TriPlanar_709ToRGB::Bind(HgcYUV444TriPlanar_709ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV444TriPlanar_709ToRGB::RenderTile(HgcYUV444TriPlanar_709ToRGB *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 12);
    v5 = *(a2 + 10);
    v6 = *(a2 + 14);
    v7 = *(a2 + 2);
    v8 = *(a2 + 6);
    v9 = *(a2 + 30);
    v10 = *(a2 + 22);
    v11 = *(a2 + 26);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v57 = 0;
        v58 = 16 * v11;
        v59 = 16 * v10;
        v60 = 16 * v9;
        v61 = 16 * v8;
        v62 = 16 * v3;
        do
        {
          v63 = 0;
          do
          {
            v64 = *(this + 51);
            v65 = vaddq_f32(*(v64 + 16), vmulq_f32(*v64, vbslq_s8(*(v64 + 32), v5[v63 / 0x10], vextq_s8(v4[v63 / 0x10], v4[v63 / 0x10], 0xCuLL))));
            v66 = *(v6 + v63);
            v66.i64[1] = v65.i64[1];
            v7[v63 / 0x10] = vbslq_s8(*(v64 + 80), vextq_s8(v66, v66, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v64 + 64), v65, 2), vaddq_f32(vdupq_lane_s32(*v65.f32, 0), vmulq_lane_f32(*(v64 + 48), *v65.f32, 1))));
            v63 += 16;
          }

          while (v62 != v63);
          ++v57;
          v4 = (v4 + v58);
          v5 = (v5 + v59);
          v6 += v60;
          v7 = (v7 + v61);
        }

        while (v57 != v2);
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
      v19 = (v6 + 64);
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
          v31 = *(this + 51);
          v32 = *(v31 + 32);
          v33 = *(v31 + 48);
          v34 = *(v31 + 16);
          v35 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21], vextq_s8(v4[v21], v4[v21], 0xCuLL))));
          v36 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21 + 1], vextq_s8(v4[v21 + 1], v4[v21 + 1], 0xCuLL))));
          v37 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21 + 2], vextq_s8(v4[v21 + 2], v4[v21 + 2], 0xCuLL))));
          v38 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21 + 3], vextq_s8(v4[v21 + 3], v4[v21 + 3], 0xCuLL))));
          v39 = vaddq_f32(vdupq_lane_s32(*v35.f32, 0), vmulq_lane_f32(v33, *v35.f32, 1));
          v40 = vaddq_f32(vdupq_lane_s32(*v36.f32, 0), vmulq_lane_f32(v33, *v36.f32, 1));
          v41 = vaddq_f32(vdupq_lane_s32(*v37.f32, 0), vmulq_lane_f32(v33, *v37.f32, 1));
          v43 = *(v6 + v21 * 16);
          v42 = *(v6 + v21 * 16 + 16);
          v44 = *(v6 + v21 * 16 + 32);
          v45 = *(v6 + v21 * 16 + 48);
          v43.i64[1] = v35.i64[1];
          v46 = vaddq_f32(vdupq_lane_s32(*v38.f32, 0), vmulq_lane_f32(v33, *v38.f32, 1));
          v42.i64[1] = v36.i64[1];
          v47 = *(v31 + 64);
          v48 = *(v31 + 80);
          v44.i64[1] = v37.i64[1];
          v45.i64[1] = v38.i64[1];
          v49 = &v7[v21];
          v22 += 4;
          v21 += 4;
          v26 = v27 + 4;
          *v49 = vbslq_s8(v48, vextq_s8(v43, v43, 4uLL), vaddq_f32(v39, vmulq_laneq_f32(v47, v35, 2)));
          v49[1] = vbslq_s8(v48, vextq_s8(v42, v42, 4uLL), vaddq_f32(v40, vmulq_laneq_f32(v47, v36, 2)));
          v49[2] = vbslq_s8(v48, vextq_s8(v44, v44, 4uLL), vaddq_f32(v41, vmulq_laneq_f32(v47, v37, 2)));
          v49[3] = vbslq_s8(v48, vextq_s8(v45, v45, 4uLL), vaddq_f32(v46, vmulq_laneq_f32(v47, v38, 2)));
          v25 += 4;
          v24 += 4;
          v23 = v30 + 4;
        }

        while (v22 < (v3 - 3));
        if (v3 > v22)
        {
          do
          {
            v50 = *v27++;
            v51 = v50;
            v52 = *v28++;
            v53 = *(this + 51);
            v54 = vaddq_f32(*(v53 + 16), vmulq_f32(*v53, vbslq_s8(*(v53 + 32), v52, vextq_s8(v51, v51, 0xCuLL))));
            v55 = *v29++;
            v56.i64[0] = v55;
            v56.i64[1] = v54.i64[1];
            *v30++ = vbslq_s8(*(v53 + 80), vextq_s8(v56, v56, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v53 + 64), v54, 2), vaddq_f32(vdupq_lane_s32(*v54.f32, 0), vmulq_lane_f32(*(v53 + 48), *v54.f32, 1))));
            ++v22;
          }

          while (v22 < v3);
        }

        ++v12;
        v5 = (v5 + v13);
        v6 += v14;
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

uint64_t HgcYUV444TriPlanar_709ToRGB::GetDOD(HgcYUV444TriPlanar_709ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcYUV444TriPlanar_709ToRGB::GetROI(HgcYUV444TriPlanar_709ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcYUV444TriPlanar_709ToRGB::HgcYUV444TriPlanar_709ToRGB(HgcYUV444TriPlanar_709ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722DE70;
  operator new();
}

void HgcYUV444TriPlanar_709ToRGB::~HgcYUV444TriPlanar_709ToRGB(HgcYUV444TriPlanar_709ToRGB *this)
{
  *this = &unk_28722DE70;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722DE70;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV444TriPlanar_709ToRGB::~HgcYUV444TriPlanar_709ToRGB(HGNode *this)
{
  *this = &unk_28722DE70;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV444TriPlanar_709ToRGB::SetParameter(HgcYUV444TriPlanar_709ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV444TriPlanar_709ToRGB::GetParameter(HgcYUV444TriPlanar_709ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV444TriPlanar_2020ToRGB::GetProgram(HgcYUV444TriPlanar_2020ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const half4 c1 = half4(1.474599957, -0.5713531375, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(r0.x);\n    return output;\n}\n//MD5=f79a664b:38284d73:72f9ca6b:398dd0ca\n//SIG=00400000:00000007:00000007:00000007:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004b8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const float4 c1 = float4(1.474599957, -0.5713531375, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).x;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = r0.x;\n    return output;\n}\n//MD5=7637b7ca:94e18948:9249a20f:2be63cfc\n//SIG=00000000:00000007:00000007:00000000:0002:0002:0002:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000473\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.474599957, -0.5713531375, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    r0.x = texture2D(hg_Texture2, hg_TexCoord2.xy).x;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = r0.x;\n}\n//MD5=a3e884d8:41b7c32f:d6ccb16b:fb255cb1\n//SIG=00000000:00000007:00000007:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDD7844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD787C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD7874);
}

uint64_t HgcYUV444TriPlanar_2020ToRGB::BindTexture(HgcYUV444TriPlanar_2020ToRGB *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 == 2)
    {
      (*(*a2 + 72))(a2, 2, 0);
      (*(*a2 + 48))(a2, 0, 0);
      v4 = a2;
      v5 = 2;
    }

    else
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

uint64_t HgcYUV444TriPlanar_2020ToRGB::Bind(HgcYUV444TriPlanar_2020ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV444TriPlanar_2020ToRGB::RenderTile(HgcYUV444TriPlanar_2020ToRGB *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 12);
    v5 = *(a2 + 10);
    v6 = *(a2 + 14);
    v7 = *(a2 + 2);
    v8 = *(a2 + 6);
    v9 = *(a2 + 30);
    v10 = *(a2 + 22);
    v11 = *(a2 + 26);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v57 = 0;
        v58 = 16 * v11;
        v59 = 16 * v10;
        v60 = 16 * v9;
        v61 = 16 * v8;
        v62 = 16 * v3;
        do
        {
          v63 = 0;
          do
          {
            v64 = *(this + 51);
            v65 = vaddq_f32(*(v64 + 16), vmulq_f32(*v64, vbslq_s8(*(v64 + 32), v5[v63 / 0x10], vextq_s8(v4[v63 / 0x10], v4[v63 / 0x10], 0xCuLL))));
            v66 = *(v6 + v63);
            v66.i64[1] = v65.i64[1];
            v7[v63 / 0x10] = vbslq_s8(*(v64 + 80), vextq_s8(v66, v66, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v64 + 64), v65, 2), vaddq_f32(vdupq_lane_s32(*v65.f32, 0), vmulq_lane_f32(*(v64 + 48), *v65.f32, 1))));
            v63 += 16;
          }

          while (v62 != v63);
          ++v57;
          v4 = (v4 + v58);
          v5 = (v5 + v59);
          v6 += v60;
          v7 = (v7 + v61);
        }

        while (v57 != v2);
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
      v19 = (v6 + 64);
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
          v31 = *(this + 51);
          v32 = *(v31 + 32);
          v33 = *(v31 + 48);
          v34 = *(v31 + 16);
          v35 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21], vextq_s8(v4[v21], v4[v21], 0xCuLL))));
          v36 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21 + 1], vextq_s8(v4[v21 + 1], v4[v21 + 1], 0xCuLL))));
          v37 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21 + 2], vextq_s8(v4[v21 + 2], v4[v21 + 2], 0xCuLL))));
          v38 = vaddq_f32(v34, vmulq_f32(*v31, vbslq_s8(v32, v5[v21 + 3], vextq_s8(v4[v21 + 3], v4[v21 + 3], 0xCuLL))));
          v39 = vaddq_f32(vdupq_lane_s32(*v35.f32, 0), vmulq_lane_f32(v33, *v35.f32, 1));
          v40 = vaddq_f32(vdupq_lane_s32(*v36.f32, 0), vmulq_lane_f32(v33, *v36.f32, 1));
          v41 = vaddq_f32(vdupq_lane_s32(*v37.f32, 0), vmulq_lane_f32(v33, *v37.f32, 1));
          v43 = *(v6 + v21 * 16);
          v42 = *(v6 + v21 * 16 + 16);
          v44 = *(v6 + v21 * 16 + 32);
          v45 = *(v6 + v21 * 16 + 48);
          v43.i64[1] = v35.i64[1];
          v46 = vaddq_f32(vdupq_lane_s32(*v38.f32, 0), vmulq_lane_f32(v33, *v38.f32, 1));
          v42.i64[1] = v36.i64[1];
          v47 = *(v31 + 64);
          v48 = *(v31 + 80);
          v44.i64[1] = v37.i64[1];
          v45.i64[1] = v38.i64[1];
          v49 = &v7[v21];
          v22 += 4;
          v21 += 4;
          v26 = v27 + 4;
          *v49 = vbslq_s8(v48, vextq_s8(v43, v43, 4uLL), vaddq_f32(v39, vmulq_laneq_f32(v47, v35, 2)));
          v49[1] = vbslq_s8(v48, vextq_s8(v42, v42, 4uLL), vaddq_f32(v40, vmulq_laneq_f32(v47, v36, 2)));
          v49[2] = vbslq_s8(v48, vextq_s8(v44, v44, 4uLL), vaddq_f32(v41, vmulq_laneq_f32(v47, v37, 2)));
          v49[3] = vbslq_s8(v48, vextq_s8(v45, v45, 4uLL), vaddq_f32(v46, vmulq_laneq_f32(v47, v38, 2)));
          v25 += 4;
          v24 += 4;
          v23 = v30 + 4;
        }

        while (v22 < (v3 - 3));
        if (v3 > v22)
        {
          do
          {
            v50 = *v27++;
            v51 = v50;
            v52 = *v28++;
            v53 = *(this + 51);
            v54 = vaddq_f32(*(v53 + 16), vmulq_f32(*v53, vbslq_s8(*(v53 + 32), v52, vextq_s8(v51, v51, 0xCuLL))));
            v55 = *v29++;
            v56.i64[0] = v55;
            v56.i64[1] = v54.i64[1];
            *v30++ = vbslq_s8(*(v53 + 80), vextq_s8(v56, v56, 4uLL), vaddq_f32(vmulq_laneq_f32(*(v53 + 64), v54, 2), vaddq_f32(vdupq_lane_s32(*v54.f32, 0), vmulq_lane_f32(*(v53 + 48), *v54.f32, 1))));
            ++v22;
          }

          while (v22 < v3);
        }

        ++v12;
        v5 = (v5 + v13);
        v6 += v14;
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

uint64_t HgcYUV444TriPlanar_2020ToRGB::GetDOD(HgcYUV444TriPlanar_2020ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcYUV444TriPlanar_2020ToRGB::GetROI(HgcYUV444TriPlanar_2020ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcYUV444TriPlanar_2020ToRGB::HgcYUV444TriPlanar_2020ToRGB(HgcYUV444TriPlanar_2020ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722E0D8;
  operator new();
}

void HgcYUV444TriPlanar_2020ToRGB::~HgcYUV444TriPlanar_2020ToRGB(HgcYUV444TriPlanar_2020ToRGB *this)
{
  *this = &unk_28722E0D8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722E0D8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV444TriPlanar_2020ToRGB::~HgcYUV444TriPlanar_2020ToRGB(HGNode *this)
{
  *this = &unk_28722E0D8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV444TriPlanar_2020ToRGB::SetParameter(HgcYUV444TriPlanar_2020ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV444TriPlanar_2020ToRGB::GetParameter(HgcYUV444TriPlanar_2020ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV420BiPlanar_luma::GetProgram(HgcYUV420BiPlanar_luma *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000020a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut output;\n\n    output.color0.x = (float) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    return output;\n}\n//MD5=362a17a2:e54929ff:e041de3e:e21b3210\n//SIG=00400000:00000001:00000001:00000001:0000:0000:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000203\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    FragmentOut output;\n\n    output.color0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    return output;\n}\n//MD5=2456f903:b3470d55:359ed246:2c083ec0\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0000:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000019e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n\n    gl_FragColor.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n}\n//MD5=df35ce51:fa3c22ab:4af7cc35:bf3b1e9a\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDD8490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD84C0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD84B8);
}

uint64_t HgcYUV420BiPlanar_luma::BindTexture(HgcYUV420BiPlanar_luma *this, HGHandler *a2, int a3)
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

uint64_t HgcYUV420BiPlanar_luma::RenderTile(HgcYUV420BiPlanar_luma *this, HGTile *a2)
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
            v5[v31 / 0x10] = vbslq_s8(*(*(this + 51) + 16), v4[v31 / 0x10], **(this + 51));
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
          v17 = v15;
          v18 = v14;
          v19 = *(this + 51);
          v20 = v19[1];
          v21 = vbslq_s8(v20, v4[v16 - 2], *v19);
          v22 = vbslq_s8(v20, v4[v16 - 1], *v19);
          v23 = vbslq_s8(v20, v4[v16], *v19);
          v24 = vbslq_s8(v20, v4[v16 + 1], *v19);
          v25 = &v5[v16];
          v25[-2] = v21;
          v25[-1] = v22;
          v13 += 4;
          *v25 = v23;
          v25[1] = v24;
          v16 += 4;
          v15 += 4;
          v14 = v18 + 4;
        }

        while (v13 < (v3 - 3));
        if (v3 > v13)
        {
          do
          {
            v26 = *v17++;
            *v18++ = vbslq_s8(*(*(this + 51) + 16), v26, **(this + 51));
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

uint64_t HgcYUV420BiPlanar_luma::GetDOD(HgcYUV420BiPlanar_luma *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcYUV420BiPlanar_luma::GetROI(HgcYUV420BiPlanar_luma *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcYUV420BiPlanar_luma::HgcYUV420BiPlanar_luma(HgcYUV420BiPlanar_luma *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722E340;
  operator new();
}

void HgcYUV420BiPlanar_luma::~HgcYUV420BiPlanar_luma(HgcYUV420BiPlanar_luma *this)
{
  *this = &unk_28722E340;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420BiPlanar_luma::~HgcYUV420BiPlanar_luma(HGNode *this)
{
  *this = &unk_28722E340;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcYUV420BiPlanar_luma_pack2::GetProgram(HgcYUV420BiPlanar_luma_pack2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000284\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    output.color0.x = (float) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    output.color0.y = float(r0.x);\n    return output;\n}\n//MD5=4456c075:b6d6ba4d:38e99e92:436ff40d\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0001:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000270\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    output.color0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    output.color0.y = r0.x;\n    return output;\n}\n//MD5=b0085e2f:e0f56ad7:4e83395a:f54f2528\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0001:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000226\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    gl_FragColor.x = texture2D(hg_Texture0, hg_TexCoord1.xy).x;\n    gl_FragColor.y = r0.x;\n}\n//MD5=eaeac9e2:ac28c509:f186b78a:7563dbf5\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FDD8E34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD8E70(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD8E68);
}

uint64_t HgcYUV420BiPlanar_luma_pack2::BindTexture(HgcYUV420BiPlanar_luma_pack2 *this, HGHandler *a2, int a3)
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

  (*(*a2 + 96))(a2, 0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 2.0, 1.0, 1.0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 2.0, 1.0, 1.0);
  return 0;
}

uint64_t HgcYUV420BiPlanar_luma_pack2::RenderTile(HgcYUV420BiPlanar_luma_pack2 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = (*(a2 + 2) - v3);
    v5 = *(a2 + 10);
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v35 = 0;
        v36 = 16 * v7;
        v37 = v5 + 16 * v3 + 16;
        v38 = 16 * v8;
        v39 = 16 * v4;
        do
        {
          v40 = 0;
          v41 = v37;
          do
          {
            v6[v40 / 0x10] = vbslq_s8(*(*(this + 51) + 32), vrev64q_s32(*v41), vbslq_s8(*(*(this + 51) + 16), v41[-1], **(this + 51)));
            v40 += 16;
            v41 += 2;
          }

          while (v39 != v40);
          ++v35;
          v6 = (v6 + v36);
          v37 += v38;
        }

        while (v35 != v2);
      }
    }

    else
    {
      v9 = 0;
      v10 = (v5 + 16 * v3);
      v11 = v10 + 4;
      v12 = 16 * v8;
      v13 = v6 + 2;
      v14 = 16 * v7;
      v15 = v6 + 4;
      v16 = v10 + 9;
      do
      {
        v17 = 0;
        v18 = v16;
        v19 = v15;
        v20 = v13;
        v21 = v11;
        do
        {
          v22 = v19;
          v23 = v18;
          v24 = *(this + 51);
          v25 = v24[1];
          v26 = vbslq_s8(v25, v21[-4], *v24);
          v27 = vbslq_s8(v25, v21[-2], *v24);
          v28 = vbslq_s8(v25, *v21, *v24);
          v29 = vbslq_s8(v25, v21[2], *v24);
          v30 = v24[2];
          v31 = vbslq_s8(v30, vrev64q_s32(v21[-3]), v26);
          v32 = vbslq_s8(v30, vrev64q_s32(v21[-1]), v27);
          v33 = vbslq_s8(v30, vrev64q_s32(v21[1]), v28);
          v34 = vbslq_s8(v30, vrev64q_s32(v21[3]), v29);
          v20[-2] = v31;
          v20[-1] = v32;
          v17 += 4;
          v21 += 8;
          *v20 = v33;
          v20[1] = v34;
          v20 += 4;
          v19 += 4;
          v18 = v23 + 8;
        }

        while (v17 < (v4 - 3));
        if (v4 > v17)
        {
          do
          {
            *v22++ = vbslq_s8(*(*(this + 51) + 32), vrev64q_s32(*v23), vbslq_s8(*(*(this + 51) + 16), v23[-1], **(this + 51)));
            ++v17;
            v23 += 2;
          }

          while (v17 < v4);
        }

        ++v9;
        v11 = (v11 + v12);
        v13 = (v13 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
      }

      while (v9 != v2);
    }
  }

  return 0;
}

uint64_t HgcYUV420BiPlanar_luma_pack2::GetDOD(HgcYUV420BiPlanar_luma_pack2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0, 0, 0xFFFFFFFF, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 0.5);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcYUV420BiPlanar_luma_pack2::GetROI(HgcYUV420BiPlanar_luma_pack2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 2.0);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0, 0, 1u, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcYUV420BiPlanar_luma_pack2::HgcYUV420BiPlanar_luma_pack2(HgcYUV420BiPlanar_luma_pack2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722E5A8;
  operator new();
}

void HgcYUV420BiPlanar_luma_pack2::~HgcYUV420BiPlanar_luma_pack2(HgcYUV420BiPlanar_luma_pack2 *this)
{
  *this = &unk_28722E5A8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40EED21634);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420BiPlanar_luma_pack2::~HgcYUV420BiPlanar_luma_pack2(HGNode *this)
{
  *this = &unk_28722E5A8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcYUV420BiPlanar_luma_pack4::GetProgram(HgcYUV420BiPlanar_luma_pack4 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000364\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    r2.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy).x;\n    output.color0.x = (float) hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy).x;\n    output.color0.y = float(r0.x);\n    output.color0.z = float(r1.x);\n    output.color0.w = float(r2.x);\n    return output;\n}\n//MD5=8b57dc08:a504f16a:c8e16446:44c11f04\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0003:0000:0000:0000:001e:0000:0004:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000334\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    r2.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy).x;\n    output.color0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy).x;\n    output.color0.y = r0.x;\n    output.color0.z = r1.x;\n    output.color0.w = r2.x;\n    return output;\n}\n//MD5=2e819e4d:f08f0348:7d03619e:883413bd\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0003:0000:0000:0000:001e:0000:0004:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000312\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r1.x = texture2D(hg_Texture0, hg_TexCoord1.xy).x;\n    r2.x = texture2D(hg_Texture0, hg_TexCoord2.xy).x;\n    gl_FragColor.x = texture2D(hg_Texture0, hg_TexCoord3.xy).x;\n    gl_FragColor.y = r0.x;\n    gl_FragColor.z = r1.x;\n    gl_FragColor.w = r2.x;\n}\n//MD5=c72d106c:41629b4d:88d61728:329143b3\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0003:0000:0000:0000:0000:0000:0004:01:0:1:0\n";
  }
}

void sub_25FDD9BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD9C24(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD9C1CLL);
}

uint64_t HgcYUV420BiPlanar_luma_pack4::BindTexture(HgcYUV420BiPlanar_luma_pack4 *this, HGHandler *a2, int a3)
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

  (*(*a2 + 96))(a2, -0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 4.0, 1.0, 1.0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 4.0, 1.0, 1.0);
  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 1.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 4.0, 1.0, 1.0);
  HGHandler::TexCoord(a2, 3, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -1.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 4.0, 1.0, 1.0);
  return 0;
}

uint64_t HgcYUV420BiPlanar_luma_pack4::RenderTile(HgcYUV420BiPlanar_luma_pack4 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = 3 * *a2;
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v36 = 0;
        v37 = 16 * v7;
        v38 = 16 * (*(a2 + 2) - *a2);
        v39 = v4 + 16 * v5 + 32;
        v40 = 16 * v8;
        do
        {
          v41 = 0;
          v42 = v39;
          do
          {
            v43 = *(this + 51);
            v44.i64[0] = vbslq_s8(*v43, v42[-2], vrev64q_s32(v42[-1])).u64[0];
            v45 = *v42;
            v46 = v42[1];
            v42 += 4;
            v44.i64[1] = v45.i64[0];
            v6[v41 / 0x10] = vbslq_s8(v43[1], vextq_s8(v46, v46, 4uLL), v44);
            v41 += 16;
          }

          while (v38 != v41);
          ++v36;
          v6 = (v6 + v37);
          v39 += v40;
        }

        while (v36 != v2);
      }
    }

    else
    {
      v9 = 0;
      v10 = (v4 + 16 * v5);
      v11 = v10 + 8;
      v12 = 16 * v8;
      v13 = v6 + 2;
      v14 = 16 * v7;
      v15 = v6 + 4;
      v16 = v10 + 18;
      do
      {
        v17 = 0;
        v18 = v16;
        v19 = v15;
        v20 = v13;
        v21 = v11;
        do
        {
          v22 = v19;
          v23 = v18;
          v24 = *(this + 51);
          v25.i64[0] = vbslq_s8(*v24, v21[-8], vrev64q_s32(v21[-7])).u64[0];
          v26.i64[0] = vbslq_s8(*v24, v21[-4], vrev64q_s32(v21[-3])).u64[0];
          v27.i64[0] = vbslq_s8(*v24, *v21, vrev64q_s32(v21[1])).u64[0];
          v28.i64[0] = vbslq_s8(*v24, v21[4], vrev64q_s32(v21[5])).u64[0];
          v25.i64[1] = v21[-6].i64[0];
          v26.i64[1] = v21[-2].i64[0];
          v29 = vbslq_s8(v24[1], vextq_s8(v21[-1], v21[-1], 4uLL), v26);
          v27.i64[1] = v21[2].i64[0];
          v28.i64[1] = v21[6].i64[0];
          v30 = vbslq_s8(v24[1], vextq_s8(v21[3], v21[3], 4uLL), v27);
          v31 = vbslq_s8(v24[1], vextq_s8(v21[7], v21[7], 4uLL), v28);
          v20[-2] = vbslq_s8(v24[1], vextq_s8(v21[-5], v21[-5], 4uLL), v25);
          v20[-1] = v29;
          v17 += 4;
          v21 += 16;
          *v20 = v30;
          v20[1] = v31;
          v20 += 4;
          v19 += 4;
          v18 = v23 + 16;
        }

        while (v17 < (v3 - 3));
        if (v3 > v17)
        {
          do
          {
            v32 = *(this + 51);
            v33.i64[0] = vbslq_s8(*v32, v23[-2], vrev64q_s32(v23[-1])).u64[0];
            v34 = *v23;
            v35 = v23[1];
            v23 += 4;
            v33.i64[1] = v34.i64[0];
            *v22++ = vbslq_s8(v32[1], vextq_s8(v35, v35, 4uLL), v33);
            ++v17;
          }

          while (v17 < v3);
        }

        ++v9;
        v11 = (v11 + v12);
        v13 = (v13 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
      }

      while (v9 != v2);
    }
  }

  return 0;
}

uint64_t HgcYUV420BiPlanar_luma_pack4::GetDOD(HgcYUV420BiPlanar_luma_pack4 *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0, 0, 0xFFFFFFFD, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 0.25);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcYUV420BiPlanar_luma_pack4::GetROI(HgcYUV420BiPlanar_luma_pack4 *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 4.0);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0, 0, 3u, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcYUV420BiPlanar_luma_pack4::HgcYUV420BiPlanar_luma_pack4(HgcYUV420BiPlanar_luma_pack4 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722E810;
  operator new();
}

void HgcYUV420BiPlanar_luma_pack4::~HgcYUV420BiPlanar_luma_pack4(HgcYUV420BiPlanar_luma_pack4 *this)
{
  *this = &unk_28722E810;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420BiPlanar_luma_pack4::~HgcYUV420BiPlanar_luma_pack4(HGNode *this)
{
  *this = &unk_28722E810;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcYUV420BiPlanar_chroma_pack2::GetProgram(HgcYUV420BiPlanar_chroma_pack2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002ab\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).yz;\n    r1.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = float2(r0.yz);\n    output.color0.zw = float2(r1.yz);\n    return output;\n}\n//MD5=33bdb345:2758fc0c:d30c75e2:ea65b96f\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000028d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).yz;\n    r1.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = r0.yz;\n    output.color0.zw = r1.yz;\n    return output;\n}\n//MD5=6888e40f:7ebf1f5f:d902b6ad:5e066264\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000243\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.yz = texture2D(hg_Texture0, hg_TexCoord1.xy).yz;\n    r1.yz = texture2D(hg_Texture0, hg_TexCoord0.xy).yz;\n    gl_FragColor.xy = r0.yz;\n    gl_FragColor.zw = r1.yz;\n}\n//MD5=0c7412c0:8a79fbe3:17780697:6248caac\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FDDAA5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDDAA98(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDDAA90);
}

uint64_t HgcYUV420BiPlanar_chroma_pack2::BindTexture(HgcYUV420BiPlanar_chroma_pack2 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -1.5, -0.5, 0.0);
  (*(*a2 + 104))(a2, 4.0, 2.0, 1.0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 0.5, -0.5, 0.0);
  (*(*a2 + 104))(a2, 4.0, 2.0, 1.0);
  return 0;
}

uint64_t HgcYUV420BiPlanar_chroma_pack2::RenderTile(HgcYUV420BiPlanar_chroma_pack2 *this, HGTile *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 3) - v2;
  if (v3 >= 1)
  {
    v4 = (*(a2 + 2) - *a2);
    v5 = *(a2 + 22);
    v6 = *(a2 + 10);
    v7 = v5 * v2;
    v8 = 3 * *a2;
    v9 = *(a2 + 2);
    v10 = *(a2 + 6);
    v11 = 2 * v5;
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v38 = 0;
        v39 = 16 * v10;
        v40 = 16 * (*(a2 + 2) - *a2);
        v41 = 16 * v7 + 16 * v8 + v6 + 32;
        v42 = 16 * v11;
        do
        {
          v43 = 0;
          v44 = v41;
          do
          {
            v45 = v44[-2];
            v46 = *v44;
            v44 += 4;
            v47 = vextq_s8(v45, v46, 0xCuLL);
            v45.i64[0] = vextq_s8(v45, v47, 4uLL).u64[0];
            v45.i64[1] = v47.i64[1];
            *(v9 + v43) = v45;
            v43 += 16;
          }

          while (v40 != v43);
          ++v38;
          v9 += v39;
          v41 += v42;
        }

        while (v38 != v3);
      }
    }

    else
    {
      v12 = 0;
      v13 = (16 * v7 + 16 * v8 + v6);
      v14 = v13 + 8;
      v15 = 16 * v11;
      v16 = (v9 + 32);
      v17 = 16 * v10;
      v18 = (v9 + 64);
      v19 = v13 + 18;
      do
      {
        v20 = 0;
        v21 = v19;
        v22 = v18;
        v23 = v16;
        v24 = v14;
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = v24[-8];
          v28 = vextq_s8(v27, v24[-6], 0xCuLL);
          v29 = vextq_s8(v27, v24[-2], 0xCuLL);
          v30 = vextq_s8(v27, v24[2], 0xCuLL);
          v31 = vextq_s8(v27, v24[6], 0xCuLL);
          v27.i64[0] = vextq_s8(v27, v28, 4uLL).u64[0];
          v27.i64[1] = v28.i64[1];
          *&v32 = vextq_s8(v24[-4], v29, 4uLL).u64[0];
          *(&v32 + 1) = v29.i64[1];
          *&v33 = vextq_s8(*v24, v30, 4uLL).u64[0];
          *(&v33 + 1) = v30.i64[1];
          *&v34 = vextq_s8(v24[4], v31, 4uLL).u64[0];
          *(&v34 + 1) = v31.i64[1];
          *(v23 - 2) = v27;
          *(v23 - 1) = v32;
          v20 += 4;
          v24 += 16;
          *v23 = v33;
          v23[1] = v34;
          v23 += 4;
          v22 += 4;
          v21 += 16;
        }

        while (v20 < (v4 - 3));
        if (v4 > v20)
        {
          do
          {
            v35 = v26[-2];
            v36 = *v26;
            v26 += 4;
            v37 = vextq_s8(v35, v36, 0xCuLL);
            v35.i64[0] = vextq_s8(v35, v37, 4uLL).u64[0];
            v35.i64[1] = v37.i64[1];
            *v25++ = v35;
            ++v20;
          }

          while (v20 < v4);
        }

        ++v12;
        v14 = (v14 + v15);
        v16 = (v16 + v17);
        v18 = (v18 + v17);
        v19 = (v19 + v15);
      }

      while (v12 != v3);
    }
  }

  return 0;
}

uint64_t HgcYUV420BiPlanar_chroma_pack2::GetDOD(HgcYUV420BiPlanar_chroma_pack2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0, 0, 0xFFFFFFFE, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 0.25);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcYUV420BiPlanar_chroma_pack2::GetROI(HgcYUV420BiPlanar_chroma_pack2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 4.0);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0, 0, 2u, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcYUV420BiPlanar_chroma_pack2::HgcYUV420BiPlanar_chroma_pack2(HgcYUV420BiPlanar_chroma_pack2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722EA78;
  operator new();
}

void HgcYUV420BiPlanar_chroma_pack2::~HgcYUV420BiPlanar_chroma_pack2(HgcYUV420BiPlanar_chroma_pack2 *this)
{
  *this = &unk_28722EA78;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0xC400A2AC0F1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420BiPlanar_chroma_pack2::~HgcYUV420BiPlanar_chroma_pack2(HGNode *this)
{
  *this = &unk_28722EA78;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcYUV420BiPlanar_chroma::GetProgram(HgcYUV420BiPlanar_chroma *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000235\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = float2(r0.yz);\n    return output;\n}\n//MD5=b5ceef05:898edb99:9f947171:98dbaa5b\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000227\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = r0.yz;\n    return output;\n}\n//MD5=513314b2:face81c8:9010d868:78fd2bc7\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001c9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0.yz = texture2D(hg_Texture0, hg_TexCoord0.xy).yz;\n    gl_FragColor.xy = r0.yz;\n}\n//MD5=6e8f9b59:fe470076:deb0cf55:8a2a4614\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDDB630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDDB668(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDDB660);
}

uint64_t HgcYUV420BiPlanar_chroma::BindTexture(HgcYUV420BiPlanar_chroma *this, HGHandler *a2, int a3)
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

  (*(*a2 + 96))(a2, -0.5, -0.5, 0.0);
  (*(*a2 + 104))(a2, 2.0, 2.0, 1.0);
  return 0;
}

uint64_t HgcYUV420BiPlanar_chroma::RenderTile(HgcYUV420BiPlanar_chroma *this, HGTile *a2)
{
  v2 = *(a2 + 1);
  v3 = *(a2 + 3) - v2;
  if (v3 >= 1)
  {
    v4 = *a2;
    v5 = (*(a2 + 2) - v4);
    v6 = *(a2 + 22);
    v7 = *(a2 + 10);
    v8 = v6 * v2;
    v9 = *(a2 + 2);
    v10 = *(a2 + 6);
    v11 = 2 * v6;
    if (v5 < 4)
    {
      if (v5 >= 1)
      {
        v33 = 0;
        v34 = v7 + 16 * v8;
        v35 = 16 * v11;
        v36 = 16 * v10;
        v37 = 32 * (*(a2 + 2) - v4);
        v38 = v34 + 16 * v4;
        do
        {
          v39 = 0;
          v40 = v9;
          do
          {
            *v40++ = vbslq_s8(*(*(this + 51) + 16), vextq_s8(*(v38 + v39), *(v38 + v39), 4uLL), **(this + 51));
            v39 += 32;
          }

          while (v37 != v39);
          ++v33;
          v38 += v35;
          v9 = (v9 + v36);
        }

        while (v33 != v3);
      }
    }

    else
    {
      v12 = 0;
      v13 = (16 * v4 + 16 * v8 + v7);
      v14 = v13 + 4;
      v15 = 16 * v11;
      v16 = v9 + 2;
      v17 = 16 * v10;
      v18 = v13 + 8;
      v19 = v9 + 4;
      do
      {
        v20 = 0;
        v21 = v19;
        v22 = v18;
        v23 = v16;
        v24 = v14;
        do
        {
          v25 = v22;
          v26 = v21;
          v27 = *(this + 51);
          v28 = v27[1];
          v29 = vbslq_s8(v28, vextq_s8(v24[-2], v24[-2], 4uLL), *v27);
          v30 = vbslq_s8(v28, vextq_s8(*v24, *v24, 4uLL), *v27);
          v31 = vbslq_s8(v28, vextq_s8(v24[2], v24[2], 4uLL), *v27);
          v23[-2] = vbslq_s8(v28, vextq_s8(v24[-4], v24[-4], 4uLL), *v27);
          v23[-1] = v29;
          v20 += 4;
          v24 += 8;
          *v23 = v30;
          v23[1] = v31;
          v23 += 4;
          v22 += 8;
          v21 = v26 + 4;
        }

        while (v20 < (v5 - 3));
        if (v5 > v20)
        {
          do
          {
            v32 = *v25;
            v25 += 2;
            *v26++ = vbslq_s8(*(*(this + 51) + 16), vextq_s8(v32, v32, 4uLL), **(this + 51));
            ++v20;
          }

          while (v20 < v5);
        }

        ++v12;
        v14 = (v14 + v15);
        v16 = (v16 + v17);
        v18 = (v18 + v15);
        v19 = (v19 + v17);
      }

      while (v12 != v3);
    }
  }

  return 0;
}

uint64_t HgcYUV420BiPlanar_chroma::GetDOD(HgcYUV420BiPlanar_chroma *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 0.5);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    return HGRectUnion(0, 0, v14, v15);
  }

  return result;
}

uint64_t HgcYUV420BiPlanar_chroma::GetROI(HgcYUV420BiPlanar_chroma *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 2.0);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    return HGRectUnion(0, 0, v14, v15);
  }

  return result;
}

void HgcYUV420BiPlanar_chroma::HgcYUV420BiPlanar_chroma(HgcYUV420BiPlanar_chroma *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722ECE0;
  operator new();
}

void HgcYUV420BiPlanar_chroma::~HgcYUV420BiPlanar_chroma(HgcYUV420BiPlanar_chroma *this)
{
  *this = &unk_28722ECE0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420BiPlanar_chroma::~HgcYUV420BiPlanar_chroma(HGNode *this)
{
  *this = &unk_28722ECE0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcYUV422BiPlanar_chroma::GetProgram(HgcYUV422BiPlanar_chroma *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000235\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = float2(r0.yz);\n    return output;\n}\n//MD5=b5ceef05:898edb99:9f947171:98dbaa5b\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000227\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = r0.yz;\n    return output;\n}\n//MD5=513314b2:face81c8:9010d868:78fd2bc7\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001c9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0.yz = texture2D(hg_Texture0, hg_TexCoord0.xy).yz;\n    gl_FragColor.xy = r0.yz;\n}\n//MD5=6e8f9b59:fe470076:deb0cf55:8a2a4614\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDDC0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDDC0F0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDDC0E8);
}

uint64_t HgcYUV422BiPlanar_chroma::BindTexture(HgcYUV422BiPlanar_chroma *this, HGHandler *a2, int a3)
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

  (*(*a2 + 96))(a2, -0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 2.0, 1.0, 1.0);
  return 0;
}

uint64_t HgcYUV422BiPlanar_chroma::RenderTile(HgcYUV422BiPlanar_chroma *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = *a2;
    v4 = (*(a2 + 2) - v3);
    v5 = *(a2 + 10) + 16 * v3;
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 22);
    if (v4 < 4)
    {
      if (v4 >= 1)
      {
        v29 = 0;
        v30 = 16 * v8;
        v31 = 32 * v4;
        do
        {
          v32 = 0;
          v33 = v6;
          do
          {
            *v33++ = vbslq_s8(*(*(this + 51) + 16), vextq_s8(*(v5 + v32), *(v5 + v32), 4uLL), **(this + 51));
            v32 += 32;
          }

          while (v31 != v32);
          ++v29;
          v5 += v30;
          v6 += v7;
        }

        while (v29 != v2);
      }
    }

    else
    {
      v9 = 0;
      v10 = (v5 + 64);
      v11 = 16 * v8;
      v12 = v6 + 2;
      v13 = 16 * v7;
      v14 = v5 + 128;
      v15 = v6 + 4;
      do
      {
        v16 = 0;
        v17 = v15;
        v18 = v14;
        v19 = v12;
        v20 = v10;
        do
        {
          v21 = v18;
          v22 = v17;
          v23 = *(this + 51);
          v24 = v23[1];
          v25 = vbslq_s8(v24, vextq_s8(v20[-2], v20[-2], 4uLL), *v23);
          v26 = vbslq_s8(v24, vextq_s8(*v20, *v20, 4uLL), *v23);
          v27 = vbslq_s8(v24, vextq_s8(v20[2], v20[2], 4uLL), *v23);
          v19[-2] = vbslq_s8(v24, vextq_s8(v20[-4], v20[-4], 4uLL), *v23);
          v19[-1] = v25;
          v16 += 4;
          v20 += 8;
          *v19 = v26;
          v19[1] = v27;
          v19 += 4;
          v18 += 8;
          v17 = v22 + 4;
        }

        while (v16 < (v4 - 3));
        if (v4 > v16)
        {
          do
          {
            v28 = *v21;
            v21 += 2;
            *v22++ = vbslq_s8(*(*(this + 51) + 16), vextq_s8(v28, v28, 4uLL), **(this + 51));
            ++v16;
          }

          while (v16 < v4);
        }

        ++v9;
        v10 = (v10 + v11);
        v12 = (v12 + v13);
        v14 += v11;
        v15 = (v15 + v13);
      }

      while (v9 != v2);
    }
  }

  return 0;
}

uint64_t HgcYUV422BiPlanar_chroma::GetDOD(HgcYUV422BiPlanar_chroma *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 0.5);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    return HGRectUnion(0, 0, v14, v15);
  }

  return result;
}

uint64_t HgcYUV422BiPlanar_chroma::GetROI(HgcYUV422BiPlanar_chroma *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 2.0);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    return HGRectUnion(0, 0, v14, v15);
  }

  return result;
}

void HgcYUV422BiPlanar_chroma::HgcYUV422BiPlanar_chroma(HgcYUV422BiPlanar_chroma *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722EF48;
  operator new();
}

void HgcYUV422BiPlanar_chroma::~HgcYUV422BiPlanar_chroma(HgcYUV422BiPlanar_chroma *this)
{
  *this = &unk_28722EF48;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40E0EAB150);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV422BiPlanar_chroma::~HgcYUV422BiPlanar_chroma(HGNode *this)
{
  *this = &unk_28722EF48;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcYUV422BiPlanar_chroma_pack2::GetProgram(HgcYUV422BiPlanar_chroma_pack2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002ab\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).yz;\n    r1.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = float2(r0.yz);\n    output.color0.zw = float2(r1.yz);\n    return output;\n}\n//MD5=33bdb345:2758fc0c:d30c75e2:ea65b96f\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000028d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).yz;\n    r1.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = r0.yz;\n    output.color0.zw = r1.yz;\n    return output;\n}\n//MD5=6888e40f:7ebf1f5f:d902b6ad:5e066264\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000243\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.yz = texture2D(hg_Texture0, hg_TexCoord1.xy).yz;\n    r1.yz = texture2D(hg_Texture0, hg_TexCoord0.xy).yz;\n    gl_FragColor.xy = r0.yz;\n    gl_FragColor.zw = r1.yz;\n}\n//MD5=0c7412c0:8a79fbe3:17780697:6248caac\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FDDCBB4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDDCBF0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDDCBE8);
}

uint64_t HgcYUV422BiPlanar_chroma_pack2::BindTexture(HgcYUV422BiPlanar_chroma_pack2 *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  (*(*a2 + 72))(a2, 0);
  (*(*a2 + 48))(a2, 0, 0);
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -1.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 4.0, 1.0, 1.0);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 0.5, 0.0, 0.0);
  (*(*a2 + 104))(a2, 4.0, 1.0, 1.0);
  return 0;
}

uint64_t HgcYUV422BiPlanar_chroma_pack2::RenderTile(HgcYUV422BiPlanar_chroma_pack2 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = 3 * *a2;
    v6 = *(a2 + 2);
    v7 = *(a2 + 6);
    v8 = *(a2 + 22);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v35 = 0;
        v36 = 16 * v7;
        v37 = v4 + 16 * v5 + 32;
        v38 = 16 * v8;
        v39 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v40 = 0;
          v41 = v37;
          do
          {
            v42 = v41[-2];
            v43 = *v41;
            v41 += 4;
            v44 = vextq_s8(v42, v43, 0xCuLL);
            v42.i64[0] = vextq_s8(v42, v44, 4uLL).u64[0];
            v42.i64[1] = v44.i64[1];
            *(v6 + v40) = v42;
            v40 += 16;
          }

          while (v39 != v40);
          ++v35;
          v6 += v36;
          v37 += v38;
        }

        while (v35 != v2);
      }
    }

    else
    {
      v9 = 0;
      v10 = (v4 + 16 * v5);
      v11 = v10 + 8;
      v12 = 16 * v8;
      v13 = (v6 + 32);
      v14 = 16 * v7;
      v15 = (v6 + 64);
      v16 = v10 + 18;
      do
      {
        v17 = 0;
        v18 = v16;
        v19 = v15;
        v20 = v13;
        v21 = v11;
        do
        {
          v22 = v19;
          v23 = v18;
          v24 = v21[-8];
          v25 = vextq_s8(v24, v21[-6], 0xCuLL);
          v26 = vextq_s8(v24, v21[-2], 0xCuLL);
          v27 = vextq_s8(v24, v21[2], 0xCuLL);
          v28 = vextq_s8(v24, v21[6], 0xCuLL);
          v24.i64[0] = vextq_s8(v24, v25, 4uLL).u64[0];
          v24.i64[1] = v25.i64[1];
          *&v29 = vextq_s8(v21[-4], v26, 4uLL).u64[0];
          *(&v29 + 1) = v26.i64[1];
          *&v30 = vextq_s8(*v21, v27, 4uLL).u64[0];
          *(&v30 + 1) = v27.i64[1];
          *&v31 = vextq_s8(v21[4], v28, 4uLL).u64[0];
          *(&v31 + 1) = v28.i64[1];
          *(v20 - 2) = v24;
          *(v20 - 1) = v29;
          v17 += 4;
          v21 += 16;
          *v20 = v30;
          v20[1] = v31;
          v20 += 4;
          v19 += 4;
          v18 += 16;
        }

        while (v17 < (v3 - 3));
        if (v3 > v17)
        {
          do
          {
            v32 = v23[-2];
            v33 = *v23;
            v23 += 4;
            v34 = vextq_s8(v32, v33, 0xCuLL);
            v32.i64[0] = vextq_s8(v32, v34, 4uLL).u64[0];
            v32.i64[1] = v34.i64[1];
            *v22++ = v32;
            ++v17;
          }

          while (v17 < v3);
        }

        ++v9;
        v11 = (v11 + v12);
        v13 = (v13 + v14);
        v15 = (v15 + v14);
        v16 = (v16 + v12);
      }

      while (v9 != v2);
    }
  }

  return 0;
}

uint64_t HgcYUV422BiPlanar_chroma_pack2::GetDOD(HgcYUV422BiPlanar_chroma_pack2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = *&a4.var2;
    v6 = *&a4.var0;
    v7 = HGRectMake4i(0, 0, 0xFFFFFFFE, 0);
    v8 = HGRectGrow(v6, v5, v7);
    v9 = HGRectFloat(v8);
    v13 = HGRectScale(v9, v10, v11, v12, 0.25);
    v18 = HGRectIntegral(v14, v13, v15, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

uint64_t HgcYUV422BiPlanar_chroma_pack2::GetROI(HgcYUV422BiPlanar_chroma_pack2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  result = 0;
  if (!a3)
  {
    v5 = HGRectFloat(a4.var0);
    v9 = HGRectScale(v5, v6, v7, v8, 4.0);
    v14 = HGRectIntegral(v10, v9, v11, v12, v13);
    v16 = v15;
    v17 = HGRectMake4i(0, 0, 2u, 0);
    v18 = HGRectGrow(v14, v16, v17);
    return HGRectUnion(0, 0, v18, v19);
  }

  return result;
}

void HgcYUV422BiPlanar_chroma_pack2::HgcYUV422BiPlanar_chroma_pack2(HgcYUV422BiPlanar_chroma_pack2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722F1B0;
  operator new();
}

void HgcYUV422BiPlanar_chroma_pack2::~HgcYUV422BiPlanar_chroma_pack2(HgcYUV422BiPlanar_chroma_pack2 *this)
{
  *this = &unk_28722F1B0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0xC400A2AC0F1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV422BiPlanar_chroma_pack2::~HgcYUV422BiPlanar_chroma_pack2(HGNode *this)
{
  *this = &unk_28722F1B0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcYUV422BiPlanar_601ToRGB::GetProgram(HgcYUV422BiPlanar_601ToRGB *this, HGRenderer *a2)
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

void sub_25FDDD7FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDDD838(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDDD830);
}

uint64_t HgcYUV422BiPlanar_601ToRGB::BindTexture(HgcYUV422BiPlanar_601ToRGB *this, HGHandler *a2, int a3)
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

      (*(*a2 + 104))(a2, 0.5, 1.0, 1.0);
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

uint64_t HgcYUV422BiPlanar_601ToRGB::Bind(HgcYUV422BiPlanar_601ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV422BiPlanar_601ToRGB::RenderTile(HgcYUV422BiPlanar_601ToRGB *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = vmulq_f32(v5, xmmword_2608457E0);
    v8 = a2[2];
    v9 = a2[10];
    v10 = 16 * a2[11].i32[0];
    v11 = 16 * a2[3].i32[0];
    __asm { FMOV            V4.4S, #4.0 }

    v17.i64[0] = 0x3F0000003F000000;
    v17.i64[1] = 0x3F0000003F000000;
    while (v6 < 4)
    {
      v18 = 0;
      v19 = 0uLL;
      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 = vaddq_f32(v7, xmmword_2603429C0);
      ++v4;
      *&v9 += v10;
      *&v8 += v11;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v18 = 0;
    v19 = 0uLL;
    v20 = 32;
    for (i = v6; i > 3; i -= 4)
    {
      v22 = vaddq_f32(v7, vmulq_f32(v19, xmmword_260344E30));
      v23 = vaddq_f32(v22, xmmword_260344E30);
      v24 = vaddq_f32(v23, xmmword_260344E30);
      v25 = vaddq_f32(v24, xmmword_260344E30);
      v26 = a2[12];
      v27 = &a2[13];
      v28 = vaddq_f32(vsubq_f32(v22, v5), v17);
      v29 = vcvtq_s32_f32(v28);
      v30 = vaddq_f32(vsubq_f32(v23, v5), v17);
      v31 = vcvtq_s32_f32(v30);
      *v28.f32 = vadd_s32(*v29.i8, *&vcgtq_f32(vcvtq_f32_s32(v29), v28));
      *v29.i8 = vld1_dup_f32(v27);
      *v30.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
      *v28.f32 = vmla_s32(vzip1_s32(*v28.f32, *v30.f32), vzip2_s32(*v28.f32, *v30.f32), *v29.i8);
      LODWORD(v27) = v28.i32[1];
      v32 = vaddq_f32(vsubq_f32(v24, v5), v17);
      v33 = vcvtq_s32_f32(v32);
      v34 = v28.i32[0];
      v35 = vaddq_f32(vsubq_f32(v25, v5), v17);
      v36 = vcvtq_s32_f32(v35);
      v37 = *(*&v26 + 16 * v34);
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v35.f32 = vadd_s32(*v36.i8, *&vcgtq_f32(vcvtq_f32_s32(v36), v35));
      *v33.i8 = vzip2_s32(*v32.f32, *v35.f32);
      *v35.f32 = vzip1_s32(*v32.f32, *v35.f32);
      v38 = *(*&v26 + 16 * v27);
      *v35.f32 = vmla_s32(*v35.f32, *v33.i8, *v29.i8);
      v39 = *(*&v26 + 16 * v35.i32[1]);
      v40 = vextq_s8(*(*&v26 + 16 * v35.i32[0]), *(*&v26 + 16 * v35.i32[0]), 0xCuLL);
      v41 = *(this + 51);
      v42 = *(v41 + 32);
      v43 = *(v41 + 48);
      v44 = *(v41 + 16);
      v45 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20 - 32), vextq_s8(v37, v37, 0xCuLL))));
      v46 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20 - 16), vextq_s8(v38, v38, 0xCuLL))));
      v47 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20), v40)));
      v48 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20 + 16), vextq_s8(v39, v39, 0xCuLL))));
      v49 = *(v41 + 64);
      v50 = vaddq_f32(vmulq_laneq_f32(v49, v45, 2), vaddq_f32(vdupq_lane_s32(*v45.f32, 0), vmulq_lane_f32(v43, *v45.f32, 1)));
      v51 = vaddq_f32(vmulq_laneq_f32(v49, v46, 2), vaddq_f32(vdupq_lane_s32(*v46.f32, 0), vmulq_lane_f32(v43, *v46.f32, 1)));
      v52 = vaddq_f32(vmulq_laneq_f32(v49, v47, 2), vaddq_f32(vdupq_lane_s32(*v47.f32, 0), vmulq_lane_f32(v43, *v47.f32, 1)));
      v53 = vaddq_f32(vmulq_laneq_f32(v49, v48, 2), vaddq_f32(vdupq_lane_s32(*v48.f32, 0), vmulq_lane_f32(v43, *v48.f32, 1)));
      v50.i32[3] = 1.0;
      v51.i32[3] = 1.0;
      v52.i32[3] = 1.0;
      v53.i32[3] = 1.0;
      v19 = vaddq_f32(v19, _Q4);
      v54 = (*&v8 + v20);
      v54[-2] = v50;
      v54[-1] = v51;
      *v54 = v52;
      v54[1] = v53;
      v18 += 4;
      v20 += 64;
    }

    if (v18 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v55 = vaddq_f32(vsubq_f32(vaddq_f32(v7, vmulq_f32(v19, xmmword_260344E30)), v5), v17);
      v56 = vcvtq_s32_f32(v55);
      v55.i64[0] = vaddq_s32(v56, vcgtq_f32(vcvtq_f32_s32(v56), v55)).u64[0];
      v57 = *(this + 51);
      v58 = vaddq_f32(*(v57 + 16), vmulq_f32(*v57, vbslq_s8(*(v57 + 32), *(*&v9 + 16 * v18), vextq_s8(*(*&a2[12] + 16 * (v55.i32[0] + v55.i32[1] * a2[13].i32[0])), *(*&a2[12] + 16 * (v55.i32[0] + v55.i32[1] * a2[13].i32[0])), 0xCuLL))));
      v59 = vaddq_f32(vmulq_laneq_f32(*(v57 + 64), v58, 2), vaddq_f32(vdupq_lane_s32(*v58.f32, 0), vmulq_lane_f32(*(v57 + 48), *v58.f32, 1)));
      v59.i32[3] = 1.0;
      *(*&v8 + 16 * v18) = v59;
      __asm { FMOV            V16.4S, #1.0 }

      v19 = vaddq_f32(v19, _Q16);
      ++v18;
    }

    while (v18 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcYUV422BiPlanar_601ToRGB::GetDOD(HgcYUV422BiPlanar_601ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = *&a4.var0;
      v6 = *&a4.var2;
      v7 = HGRectMake4i(0, 0, a3, 0);
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

uint64_t HgcYUV422BiPlanar_601ToRGB::GetROI(HgcYUV422BiPlanar_601ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
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
      v17 = HGRectMake4i(0xFFFFFFFF, 0, 0, 0);
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

void HgcYUV422BiPlanar_601ToRGB::HgcYUV422BiPlanar_601ToRGB(HgcYUV422BiPlanar_601ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722F418;
  operator new();
}

void HgcYUV422BiPlanar_601ToRGB::~HgcYUV422BiPlanar_601ToRGB(HgcYUV422BiPlanar_601ToRGB *this)
{
  *this = &unk_28722F418;
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
  *this = &unk_28722F418;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV422BiPlanar_601ToRGB::~HgcYUV422BiPlanar_601ToRGB(HGNode *this)
{
  *this = &unk_28722F418;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV422BiPlanar_601ToRGB::SetParameter(HgcYUV422BiPlanar_601ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV422BiPlanar_601ToRGB::GetParameter(HgcYUV422BiPlanar_601ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV422BiPlanar_709ToRGB::GetProgram(HgcYUV422BiPlanar_709ToRGB *this, HGRenderer *a2)
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

void sub_25FDDE780(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDDE7BC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDDE7B4);
}

uint64_t HgcYUV422BiPlanar_709ToRGB::BindTexture(HgcYUV422BiPlanar_709ToRGB *this, HGHandler *a2, int a3)
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

      (*(*a2 + 104))(a2, 0.5, 1.0, 1.0);
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

uint64_t HgcYUV422BiPlanar_709ToRGB::Bind(HgcYUV422BiPlanar_709ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV422BiPlanar_709ToRGB::RenderTile(HgcYUV422BiPlanar_709ToRGB *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = vmulq_f32(v5, xmmword_2608457E0);
    v8 = a2[2];
    v9 = a2[10];
    v10 = 16 * a2[11].i32[0];
    v11 = 16 * a2[3].i32[0];
    __asm { FMOV            V4.4S, #4.0 }

    v17.i64[0] = 0x3F0000003F000000;
    v17.i64[1] = 0x3F0000003F000000;
    while (v6 < 4)
    {
      v18 = 0;
      v19 = 0uLL;
      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 = vaddq_f32(v7, xmmword_2603429C0);
      ++v4;
      *&v9 += v10;
      *&v8 += v11;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v18 = 0;
    v19 = 0uLL;
    v20 = 32;
    for (i = v6; i > 3; i -= 4)
    {
      v22 = vaddq_f32(v7, vmulq_f32(v19, xmmword_260344E30));
      v23 = vaddq_f32(v22, xmmword_260344E30);
      v24 = vaddq_f32(v23, xmmword_260344E30);
      v25 = vaddq_f32(v24, xmmword_260344E30);
      v26 = a2[12];
      v27 = &a2[13];
      v28 = vaddq_f32(vsubq_f32(v22, v5), v17);
      v29 = vcvtq_s32_f32(v28);
      v30 = vaddq_f32(vsubq_f32(v23, v5), v17);
      v31 = vcvtq_s32_f32(v30);
      *v28.f32 = vadd_s32(*v29.i8, *&vcgtq_f32(vcvtq_f32_s32(v29), v28));
      *v29.i8 = vld1_dup_f32(v27);
      *v30.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
      *v28.f32 = vmla_s32(vzip1_s32(*v28.f32, *v30.f32), vzip2_s32(*v28.f32, *v30.f32), *v29.i8);
      LODWORD(v27) = v28.i32[1];
      v32 = vaddq_f32(vsubq_f32(v24, v5), v17);
      v33 = vcvtq_s32_f32(v32);
      v34 = v28.i32[0];
      v35 = vaddq_f32(vsubq_f32(v25, v5), v17);
      v36 = vcvtq_s32_f32(v35);
      v37 = *(*&v26 + 16 * v34);
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v35.f32 = vadd_s32(*v36.i8, *&vcgtq_f32(vcvtq_f32_s32(v36), v35));
      *v33.i8 = vzip2_s32(*v32.f32, *v35.f32);
      *v35.f32 = vzip1_s32(*v32.f32, *v35.f32);
      v38 = *(*&v26 + 16 * v27);
      *v35.f32 = vmla_s32(*v35.f32, *v33.i8, *v29.i8);
      v39 = *(*&v26 + 16 * v35.i32[1]);
      v40 = vextq_s8(*(*&v26 + 16 * v35.i32[0]), *(*&v26 + 16 * v35.i32[0]), 0xCuLL);
      v41 = *(this + 51);
      v42 = *(v41 + 32);
      v43 = *(v41 + 48);
      v44 = *(v41 + 16);
      v45 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20 - 32), vextq_s8(v37, v37, 0xCuLL))));
      v46 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20 - 16), vextq_s8(v38, v38, 0xCuLL))));
      v47 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20), v40)));
      v48 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20 + 16), vextq_s8(v39, v39, 0xCuLL))));
      v49 = *(v41 + 64);
      v50 = vaddq_f32(vmulq_laneq_f32(v49, v45, 2), vaddq_f32(vdupq_lane_s32(*v45.f32, 0), vmulq_lane_f32(v43, *v45.f32, 1)));
      v51 = vaddq_f32(vmulq_laneq_f32(v49, v46, 2), vaddq_f32(vdupq_lane_s32(*v46.f32, 0), vmulq_lane_f32(v43, *v46.f32, 1)));
      v52 = vaddq_f32(vmulq_laneq_f32(v49, v47, 2), vaddq_f32(vdupq_lane_s32(*v47.f32, 0), vmulq_lane_f32(v43, *v47.f32, 1)));
      v53 = vaddq_f32(vmulq_laneq_f32(v49, v48, 2), vaddq_f32(vdupq_lane_s32(*v48.f32, 0), vmulq_lane_f32(v43, *v48.f32, 1)));
      v50.i32[3] = 1.0;
      v51.i32[3] = 1.0;
      v52.i32[3] = 1.0;
      v53.i32[3] = 1.0;
      v19 = vaddq_f32(v19, _Q4);
      v54 = (*&v8 + v20);
      v54[-2] = v50;
      v54[-1] = v51;
      *v54 = v52;
      v54[1] = v53;
      v18 += 4;
      v20 += 64;
    }

    if (v18 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v55 = vaddq_f32(vsubq_f32(vaddq_f32(v7, vmulq_f32(v19, xmmword_260344E30)), v5), v17);
      v56 = vcvtq_s32_f32(v55);
      v55.i64[0] = vaddq_s32(v56, vcgtq_f32(vcvtq_f32_s32(v56), v55)).u64[0];
      v57 = *(this + 51);
      v58 = vaddq_f32(*(v57 + 16), vmulq_f32(*v57, vbslq_s8(*(v57 + 32), *(*&v9 + 16 * v18), vextq_s8(*(*&a2[12] + 16 * (v55.i32[0] + v55.i32[1] * a2[13].i32[0])), *(*&a2[12] + 16 * (v55.i32[0] + v55.i32[1] * a2[13].i32[0])), 0xCuLL))));
      v59 = vaddq_f32(vmulq_laneq_f32(*(v57 + 64), v58, 2), vaddq_f32(vdupq_lane_s32(*v58.f32, 0), vmulq_lane_f32(*(v57 + 48), *v58.f32, 1)));
      v59.i32[3] = 1.0;
      *(*&v8 + 16 * v18) = v59;
      __asm { FMOV            V16.4S, #1.0 }

      v19 = vaddq_f32(v19, _Q16);
      ++v18;
    }

    while (v18 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcYUV422BiPlanar_709ToRGB::GetDOD(HgcYUV422BiPlanar_709ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = *&a4.var0;
      v6 = *&a4.var2;
      v7 = HGRectMake4i(0, 0, a3, 0);
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

uint64_t HgcYUV422BiPlanar_709ToRGB::GetROI(HgcYUV422BiPlanar_709ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
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
      v17 = HGRectMake4i(0xFFFFFFFF, 0, 0, 0);
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

void HgcYUV422BiPlanar_709ToRGB::HgcYUV422BiPlanar_709ToRGB(HgcYUV422BiPlanar_709ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722F680;
  operator new();
}

void HgcYUV422BiPlanar_709ToRGB::~HgcYUV422BiPlanar_709ToRGB(HgcYUV422BiPlanar_709ToRGB *this)
{
  *this = &unk_28722F680;
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
  *this = &unk_28722F680;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV422BiPlanar_709ToRGB::~HgcYUV422BiPlanar_709ToRGB(HGNode *this)
{
  *this = &unk_28722F680;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV422BiPlanar_709ToRGB::SetParameter(HgcYUV422BiPlanar_709ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV422BiPlanar_709ToRGB::GetParameter(HgcYUV422BiPlanar_709ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV422BiPlanar_2020ToRGB::GetProgram(HgcYUV422BiPlanar_2020ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const half4 c1 = half4(1.474599957, -0.5713531375, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(c1.w);\n    return output;\n}\n//MD5=5b2c3b8c:71d74731:f5cd4f36:083b9890\n//SIG=00400000:00000001:00000001:00000003:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000415\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const float4 c1 = float4(1.474599957, -0.5713531375, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = c1.w;\n    return output;\n}\n//MD5=76c81ece:94c5249f:ae40b588:a20d303a\n//SIG=00000000:00000001:00000001:00000000:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.474599957, -0.5713531375, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = c1.w;\n}\n//MD5=39ba3a76:86163c26:2e7e27c5:49379347\n//SIG=00000000:00000001:00000001:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDDF704(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDDF740(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDDF738);
}

uint64_t HgcYUV422BiPlanar_2020ToRGB::BindTexture(HgcYUV422BiPlanar_2020ToRGB *this, HGHandler *a2, int a3)
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

      (*(*a2 + 104))(a2, 0.5, 1.0, 1.0);
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

uint64_t HgcYUV422BiPlanar_2020ToRGB::Bind(HgcYUV422BiPlanar_2020ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV422BiPlanar_2020ToRGB::RenderTile(HgcYUV422BiPlanar_2020ToRGB *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    *v5.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v5.i64[1] = 0x3F80000000000000;
    v6 = a2[1].i32[0] - v2.i32[0];
    v7 = vmulq_f32(v5, xmmword_2608457E0);
    v8 = a2[2];
    v9 = a2[10];
    v10 = 16 * a2[11].i32[0];
    v11 = 16 * a2[3].i32[0];
    __asm { FMOV            V4.4S, #4.0 }

    v17.i64[0] = 0x3F0000003F000000;
    v17.i64[1] = 0x3F0000003F000000;
    while (v6 < 4)
    {
      v18 = 0;
      v19 = 0uLL;
      if (v6 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 = vaddq_f32(v7, xmmword_2603429C0);
      ++v4;
      *&v9 += v10;
      *&v8 += v11;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v18 = 0;
    v19 = 0uLL;
    v20 = 32;
    for (i = v6; i > 3; i -= 4)
    {
      v22 = vaddq_f32(v7, vmulq_f32(v19, xmmword_260344E30));
      v23 = vaddq_f32(v22, xmmword_260344E30);
      v24 = vaddq_f32(v23, xmmword_260344E30);
      v25 = vaddq_f32(v24, xmmword_260344E30);
      v26 = a2[12];
      v27 = &a2[13];
      v28 = vaddq_f32(vsubq_f32(v22, v5), v17);
      v29 = vcvtq_s32_f32(v28);
      v30 = vaddq_f32(vsubq_f32(v23, v5), v17);
      v31 = vcvtq_s32_f32(v30);
      *v28.f32 = vadd_s32(*v29.i8, *&vcgtq_f32(vcvtq_f32_s32(v29), v28));
      *v29.i8 = vld1_dup_f32(v27);
      *v30.f32 = vadd_s32(*v31.i8, *&vcgtq_f32(vcvtq_f32_s32(v31), v30));
      *v28.f32 = vmla_s32(vzip1_s32(*v28.f32, *v30.f32), vzip2_s32(*v28.f32, *v30.f32), *v29.i8);
      LODWORD(v27) = v28.i32[1];
      v32 = vaddq_f32(vsubq_f32(v24, v5), v17);
      v33 = vcvtq_s32_f32(v32);
      v34 = v28.i32[0];
      v35 = vaddq_f32(vsubq_f32(v25, v5), v17);
      v36 = vcvtq_s32_f32(v35);
      v37 = *(*&v26 + 16 * v34);
      *v32.f32 = vadd_s32(*v33.i8, *&vcgtq_f32(vcvtq_f32_s32(v33), v32));
      *v35.f32 = vadd_s32(*v36.i8, *&vcgtq_f32(vcvtq_f32_s32(v36), v35));
      *v33.i8 = vzip2_s32(*v32.f32, *v35.f32);
      *v35.f32 = vzip1_s32(*v32.f32, *v35.f32);
      v38 = *(*&v26 + 16 * v27);
      *v35.f32 = vmla_s32(*v35.f32, *v33.i8, *v29.i8);
      v39 = *(*&v26 + 16 * v35.i32[1]);
      v40 = vextq_s8(*(*&v26 + 16 * v35.i32[0]), *(*&v26 + 16 * v35.i32[0]), 0xCuLL);
      v41 = *(this + 51);
      v42 = *(v41 + 32);
      v43 = *(v41 + 48);
      v44 = *(v41 + 16);
      v45 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20 - 32), vextq_s8(v37, v37, 0xCuLL))));
      v46 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20 - 16), vextq_s8(v38, v38, 0xCuLL))));
      v47 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20), v40)));
      v48 = vaddq_f32(v44, vmulq_f32(*v41, vbslq_s8(v42, *(*&v9 + v20 + 16), vextq_s8(v39, v39, 0xCuLL))));
      v49 = *(v41 + 64);
      v50 = vaddq_f32(vmulq_laneq_f32(v49, v45, 2), vaddq_f32(vdupq_lane_s32(*v45.f32, 0), vmulq_lane_f32(v43, *v45.f32, 1)));
      v51 = vaddq_f32(vmulq_laneq_f32(v49, v46, 2), vaddq_f32(vdupq_lane_s32(*v46.f32, 0), vmulq_lane_f32(v43, *v46.f32, 1)));
      v52 = vaddq_f32(vmulq_laneq_f32(v49, v47, 2), vaddq_f32(vdupq_lane_s32(*v47.f32, 0), vmulq_lane_f32(v43, *v47.f32, 1)));
      v53 = vaddq_f32(vmulq_laneq_f32(v49, v48, 2), vaddq_f32(vdupq_lane_s32(*v48.f32, 0), vmulq_lane_f32(v43, *v48.f32, 1)));
      v50.i32[3] = 1.0;
      v51.i32[3] = 1.0;
      v52.i32[3] = 1.0;
      v53.i32[3] = 1.0;
      v19 = vaddq_f32(v19, _Q4);
      v54 = (*&v8 + v20);
      v54[-2] = v50;
      v54[-1] = v51;
      *v54 = v52;
      v54[1] = v53;
      v18 += 4;
      v20 += 64;
    }

    if (v18 >= v6)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v55 = vaddq_f32(vsubq_f32(vaddq_f32(v7, vmulq_f32(v19, xmmword_260344E30)), v5), v17);
      v56 = vcvtq_s32_f32(v55);
      v55.i64[0] = vaddq_s32(v56, vcgtq_f32(vcvtq_f32_s32(v56), v55)).u64[0];
      v57 = *(this + 51);
      v58 = vaddq_f32(*(v57 + 16), vmulq_f32(*v57, vbslq_s8(*(v57 + 32), *(*&v9 + 16 * v18), vextq_s8(*(*&a2[12] + 16 * (v55.i32[0] + v55.i32[1] * a2[13].i32[0])), *(*&a2[12] + 16 * (v55.i32[0] + v55.i32[1] * a2[13].i32[0])), 0xCuLL))));
      v59 = vaddq_f32(vmulq_laneq_f32(*(v57 + 64), v58, 2), vaddq_f32(vdupq_lane_s32(*v58.f32, 0), vmulq_lane_f32(*(v57 + 48), *v58.f32, 1)));
      v59.i32[3] = 1.0;
      *(*&v8 + 16 * v18) = v59;
      __asm { FMOV            V16.4S, #1.0 }

      v19 = vaddq_f32(v19, _Q16);
      ++v18;
    }

    while (v18 < v6);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcYUV422BiPlanar_2020ToRGB::GetDOD(HgcYUV422BiPlanar_2020ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  result = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      v5 = *&a4.var0;
      v6 = *&a4.var2;
      v7 = HGRectMake4i(0, 0, a3, 0);
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

uint64_t HgcYUV422BiPlanar_2020ToRGB::GetROI(HgcYUV422BiPlanar_2020ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
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
      v17 = HGRectMake4i(0xFFFFFFFF, 0, 0, 0);
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

void HgcYUV422BiPlanar_2020ToRGB::HgcYUV422BiPlanar_2020ToRGB(HgcYUV422BiPlanar_2020ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722F8E8;
  operator new();
}

void HgcYUV422BiPlanar_2020ToRGB::~HgcYUV422BiPlanar_2020ToRGB(HgcYUV422BiPlanar_2020ToRGB *this)
{
  *this = &unk_28722F8E8;
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
  *this = &unk_28722F8E8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV422BiPlanar_2020ToRGB::~HgcYUV422BiPlanar_2020ToRGB(HGNode *this)
{
  *this = &unk_28722F8E8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV422BiPlanar_2020ToRGB::SetParameter(HgcYUV422BiPlanar_2020ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV422BiPlanar_2020ToRGB::GetParameter(HgcYUV422BiPlanar_2020ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV420BiPlanar_2020ToRGB::GetProgram(HgcYUV420BiPlanar_2020ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const half4 c1 = half4(1.474599957, -0.5713531375, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(c1.w);\n    return output;\n}\n//MD5=5b2c3b8c:71d74731:f5cd4f36:083b9890\n//SIG=00400000:00000001:00000001:00000003:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000415\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const float4 c1 = float4(1.474599957, -0.5713531375, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = c1.w;\n    return output;\n}\n//MD5=76c81ece:94c5249f:ae40b588:a20d303a\n//SIG=00000000:00000001:00000001:00000000:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.474599957, -0.5713531375, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = c1.w;\n}\n//MD5=39ba3a76:86163c26:2e7e27c5:49379347\n//SIG=00000000:00000001:00000001:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDE068C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE06C8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE06C0);
}

uint64_t HgcYUV420BiPlanar_2020ToRGB::BindTexture(HgcYUV420BiPlanar_2020ToRGB *this, HGHandler *a2, int a3)
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

uint64_t HgcYUV420BiPlanar_2020ToRGB::Bind(HgcYUV420BiPlanar_2020ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV420BiPlanar_2020ToRGB::RenderTile(HgcYUV420BiPlanar_2020ToRGB *this, int32x2_t *a2)
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

uint64_t HgcYUV420BiPlanar_2020ToRGB::GetDOD(HgcYUV420BiPlanar_2020ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcYUV420BiPlanar_2020ToRGB::GetROI(HgcYUV420BiPlanar_2020ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcYUV420BiPlanar_2020ToRGB::HgcYUV420BiPlanar_2020ToRGB(HgcYUV420BiPlanar_2020ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722FB50;
  operator new();
}

void HgcYUV420BiPlanar_2020ToRGB::~HgcYUV420BiPlanar_2020ToRGB(HgcYUV420BiPlanar_2020ToRGB *this)
{
  *this = &unk_28722FB50;
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
  *this = &unk_28722FB50;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420BiPlanar_2020ToRGB::~HgcYUV420BiPlanar_2020ToRGB(HGNode *this)
{
  *this = &unk_28722FB50;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV420BiPlanar_2020ToRGB::SetParameter(HgcYUV420BiPlanar_2020ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV420BiPlanar_2020ToRGB::GetParameter(HgcYUV420BiPlanar_2020ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV444BiPlanar_2020ToRGB::GetProgram(HgcYUV444BiPlanar_2020ToRGB *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const half4 c1 = half4(1.474599957, -0.5713531375, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz) + half3(hg_Params[1].xyz);\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = float3(r0.zzz)*float3(c1.xyz) + float3(r1.xyz);\n    output.color0.w = float(c1.w);\n    return output;\n}\n//MD5=5b2c3b8c:71d74731:f5cd4f36:083b9890\n//SIG=00400000:00000003:00000003:00000003:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000415\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const float4 c1 = float4(1.474599957, -0.5713531375, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_Params[0].xyz + hg_Params[1].xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    output.color0.xyz = r0.zzz*c1.xyz + r1.xyz;\n    output.color0.w = c1.w;\n    return output;\n}\n//MD5=76c81ece:94c5249f:ae40b588:a20d303a\n//SIG=00000000:00000003:00000003:00000000:0002:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, -0.1645531207, 1.881399989, 0.000000000);\n    const defaultp vec4 c1 = vec4(1.474599957, -0.5713531375, 0.000000000, 1.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xy = texture2D(hg_Texture1, hg_TexCoord1.xy).xy;\n    r0.yz = r0.xy;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz + hg_ProgramLocal1.xyz;\n    r1.xyz = r0.yyy*c0.xyz + r0.xxx;\n    gl_FragColor.xyz = r0.zzz*c1.xyz + r1.xyz;\n    gl_FragColor.w = c1.w;\n}\n//MD5=39ba3a76:86163c26:2e7e27c5:49379347\n//SIG=00000000:00000003:00000003:00000000:0002:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDE14FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE1530(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE1528);
}

uint64_t HgcYUV444BiPlanar_2020ToRGB::BindTexture(HgcYUV444BiPlanar_2020ToRGB *this, HGHandler *a2, int a3)
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

uint64_t HgcYUV444BiPlanar_2020ToRGB::Bind(HgcYUV444BiPlanar_2020ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV444BiPlanar_2020ToRGB::RenderTile(HgcYUV444BiPlanar_2020ToRGB *this, HGTile *a2)
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

uint64_t HgcYUV444BiPlanar_2020ToRGB::GetDOD(HgcYUV444BiPlanar_2020ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcYUV444BiPlanar_2020ToRGB::GetROI(HgcYUV444BiPlanar_2020ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcYUV444BiPlanar_2020ToRGB::HgcYUV444BiPlanar_2020ToRGB(HgcYUV444BiPlanar_2020ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722FDB8;
  operator new();
}

void HgcYUV444BiPlanar_2020ToRGB::~HgcYUV444BiPlanar_2020ToRGB(HgcYUV444BiPlanar_2020ToRGB *this)
{
  *this = &unk_28722FDB8;
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
  *this = &unk_28722FDB8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV444BiPlanar_2020ToRGB::~HgcYUV444BiPlanar_2020ToRGB(HGNode *this)
{
  *this = &unk_28722FDB8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV444BiPlanar_2020ToRGB::SetParameter(HgcYUV444BiPlanar_2020ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV444BiPlanar_2020ToRGB::GetParameter(HgcYUV444BiPlanar_2020ToRGB *this, unsigned int a2, float *a3)
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

uint64_t HgcDither_CPU_NoClamp::RenderTile(HgcDither_CPU_NoClamp *this, HGTile *a2)
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
            v6[v38 / 0x10] = vaddq_f32(v4[v38 / 0x10], vmulq_f32(v5[v38 / 0x10], **(this + 51)));
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
          v26 = vaddq_f32(v4[v17 + 1], vmulq_f32(v5[v17 + 1], v25));
          v27 = vaddq_f32(v4[v17 + 2], vmulq_f32(v5[v17 + 2], v25));
          v28 = vaddq_f32(v4[v17 + 3], vmulq_f32(v5[v17 + 3], v25));
          v29 = &v6[v17];
          *v29 = vaddq_f32(v4[v17], vmulq_f32(v5[v17], v25));
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
            *v24++ = vaddq_f32(v31, vmulq_f32(v32, **(this + 51)));
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

uint64_t HgcDither_CPU_NoClamp::GetDOD(HgcDither_CPU_NoClamp *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcDither_CPU_NoClamp::GetROI(HgcDither_CPU_NoClamp *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcDither_CPU_NoClamp::HgcDither_CPU_NoClamp(HgcDither_CPU_NoClamp *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287230020;
  operator new();
}

void HgcDither_CPU_NoClamp::~HgcDither_CPU_NoClamp(HgcDither_CPU_NoClamp *this)
{
  *this = &unk_287230020;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40451B5BE8);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcDither_CPU_NoClamp::~HgcDither_CPU_NoClamp(HGNode *this)
{
  *this = &unk_287230020;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40451B5BE8);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcDither_CPU::RenderTile(HgcDither_CPU *this, HGTile *a2)
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
        v35 = 0;
        v36 = 16 * v9;
        v37 = 16 * v8;
        v38 = 16 * v7;
        v39 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v40 = 0;
          do
          {
            v6[v40 / 0x10] = vminq_f32(vmaxq_f32(vaddq_f32(v4[v40 / 0x10], vmulq_f32(v5[v40 / 0x10], **(this + 51))), *(*(this + 51) + 16)), *(*(this + 51) + 32));
            v40 += 16;
          }

          while (v39 != v40);
          ++v35;
          v4 = (v4 + v36);
          v5 = (v5 + v37);
          v6 = (v6 + v38);
        }

        while (v35 != v2);
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
          v25 = *(this + 51);
          v26 = v25[1];
          v27 = v25[2];
          v28 = vminq_f32(vmaxq_f32(vaddq_f32(v4[v17 + 1], vmulq_f32(v5[v17 + 1], *v25)), v26), v27);
          v29 = vminq_f32(vmaxq_f32(vaddq_f32(v4[v17 + 2], vmulq_f32(v5[v17 + 2], *v25)), v26), v27);
          v30 = vminq_f32(vmaxq_f32(vaddq_f32(v4[v17 + 3], vmulq_f32(v5[v17 + 3], *v25)), v26), v27);
          v31 = &v6[v17];
          *v31 = vminq_f32(vmaxq_f32(vaddq_f32(v4[v17], vmulq_f32(v5[v17], *v25)), v26), v27);
          v31[1] = v28;
          v18 += 4;
          v17 += 4;
          v31[2] = v29;
          v31[3] = v30;
          v21 += 4;
          v20 = v23 + 4;
          v19 = v24 + 4;
        }

        while (v18 < (v3 - 3));
        if (v3 > v18)
        {
          do
          {
            v32 = *v22++;
            v33 = v32;
            v34 = *v23++;
            *v24++ = vminq_f32(vmaxq_f32(vaddq_f32(v33, vmulq_f32(v34, **(this + 51))), *(*(this + 51) + 16)), *(*(this + 51) + 32));
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

uint64_t HgcDither_CPU::GetDOD(HgcDither_CPU *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcDither_CPU::GetROI(HgcDither_CPU *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcDither_CPU::HgcDither_CPU(HgcDither_CPU *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287230288;
  operator new();
}

void HgcDither_CPU::~HgcDither_CPU(HgcDither_CPU *this)
{
  *this = &unk_287230288;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40EED21634);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcDither_CPU::~HgcDither_CPU(HGNode *this)
{
  *this = &unk_287230288;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40EED21634);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcDither_GPU_NoClamp::GetProgram(HgcDither_GPU_NoClamp *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003f2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.003921568394, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0;\n    FragmentOut output;\n\n    s0.xy = hg_Params[1].xy;\n    s0.xy = frag._texCoord1.xy - s0.xy*floor(frag._texCoord1.xy/s0.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s0.xy = s0.xy + hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[0].zw;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, s0.xy);\n    output.color0 = float4(r1)*float4(c0.xxxw) + float4(r0);\n    return output;\n}\n//MD5=fecfdea2:4af1a003:559b7893:a59f823d\n//SIG=00400000:00000001:00000001:00000003:0001:0002:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003c0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.003921568394, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Params[1].xy;\n    r0.xy = frag._texCoord1.xy - r0.xy*floor(frag._texCoord1.xy/r0.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xy = r0.xy + hg_Params[0].xy;\n    r0.xy = r0.xy*hg_Params[0].zw;\n    r0 = hg_Texture1.sample(hg_Sampler1, r0.xy);\n    output.color0 = r0*c0.xxxw + r1;\n    return output;\n}\n//MD5=6b1be8b7:ff006c96:12e0fa22:9998b3f1\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000377\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.003921568394, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.xy = hg_ProgramLocal1.xy;\n    r0.xy = mod(hg_TexCoord1.xy, r0.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xy = r0.xy + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy*hg_ProgramLocal0.zw;\n    r0 = texture2D(hg_Texture1, r0.xy);\n    gl_FragColor = r0*c0.xxxw + r1;\n}\n//MD5=93fb8dbc:091fea70:eb857dc2:db227491\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDE2918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE2954(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE294CLL);
}

uint64_t HgcDither_GPU_NoClamp::BindTexture(HgcDither_GPU_NoClamp *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 48))(a2, 0, 0);
      if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
      {
        v6.n128_u32[0] = 1.0;
        v7.n128_u32[0] = 1.0;
      }

      else
      {
        v6.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
        v7.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
      }

      v4.n128_f32[0] = *(a2 + 60);
      v5.n128_f32[0] = *(a2 + 61);
      (*(*a2 + 136))(a2, 0, v4, v5, v6, v7);
      (*(*a2 + 136))(a2, 1, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), *(a2 + 47), *(a2 + 48));
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
    v8 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (!v8)
    {
      (*(*a2 + 168))(a2);
      return 0;
    }
  }

  return result;
}

uint64_t HgcDither_GPU_NoClamp::Bind(HgcDither_GPU_NoClamp *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcDither_GPU_NoClamp::GetDOD(HgcDither_GPU_NoClamp *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (!a3)
  {
    return *&a4.var0;
  }

  if (a3 == 1)
  {
    return 0x8000000080000000;
  }

  return 0;
}

uint64_t HgcDither_GPU_NoClamp::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (!a3)
  {
    return *&a4.var0;
  }

  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    *&a4.var0 = HGRenderer::GetDOD(a2, Input);
    return *&a4.var0;
  }

  return 0;
}

void HgcDither_GPU_NoClamp::HgcDither_GPU_NoClamp(HgcDither_GPU_NoClamp *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872304F0;
  operator new();
}

void HgcDither_GPU_NoClamp::~HgcDither_GPU_NoClamp(HgcDither_GPU_NoClamp *this)
{
  *this = &unk_2872304F0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0xC400A2AC0F1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcDither_GPU_NoClamp::~HgcDither_GPU_NoClamp(HGNode *this)
{
  *this = &unk_2872304F0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcDither_GPU::GetProgram(HgcDither_GPU *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000040d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.003921568394, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0;\n    FragmentOut output;\n\n    s0.xy = hg_Params[1].xy;\n    s0.xy = frag._texCoord1.xy - s0.xy*floor(frag._texCoord1.xy/s0.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s0.xy = s0.xy + hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[0].zw;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, s0.xy);\n    output.color0 = clamp(float4(r1)*float4(c0.xxxw) + float4(r0), 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=73956a5f:71c66c21:a7e6c42e:944d9b9b\n//SIG=00400000:00000001:00000001:00000003:0001:0002:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003db\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.003921568394, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xy = hg_Params[1].xy;\n    r0.xy = frag._texCoord1.xy - r0.xy*floor(frag._texCoord1.xy/r0.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xy = r0.xy + hg_Params[0].xy;\n    r0.xy = r0.xy*hg_Params[0].zw;\n    r0 = hg_Texture1.sample(hg_Sampler1, r0.xy);\n    output.color0 = clamp(r0*c0.xxxw + r1, 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=b0267f22:5a359f19:1b29b0a6:fbd2585f\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000039c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.003921568394, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.xy = hg_ProgramLocal1.xy;\n    r0.xy = mod(hg_TexCoord1.xy, r0.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xy = r0.xy + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy*hg_ProgramLocal0.zw;\n    r0 = texture2D(hg_Texture1, r0.xy);\n    gl_FragColor = clamp(r0*c0.xxxw + r1, vec4(0.00000), vec4(1.00000));\n}\n//MD5=09402855:043f81c6:ab992516:1920d05e\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDE339C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE33D8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE33D0);
}

uint64_t HgcDither_GPU::BindTexture(HgcDither_GPU *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 == 1)
    {
      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 48))(a2, 0, 0);
      if ((*(**(a2 + 18) + 128))(*(a2 + 18), 46))
      {
        v6.n128_u32[0] = 1.0;
        v7.n128_u32[0] = 1.0;
      }

      else
      {
        v6.n128_f32[0] = 1.0 / (*(a2 + 57) - *(a2 + 55));
        v7.n128_f32[0] = 1.0 / (*(a2 + 58) - *(a2 + 56));
      }

      v4.n128_f32[0] = *(a2 + 60);
      v5.n128_f32[0] = *(a2 + 61);
      (*(*a2 + 136))(a2, 0, v4, v5, v6, v7);
      (*(*a2 + 136))(a2, 1, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), *(a2 + 47), *(a2 + 48));
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
    v8 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (!v8)
    {
      (*(*a2 + 168))(a2);
      return 0;
    }
  }

  return result;
}

uint64_t HgcDither_GPU::Bind(HgcDither_GPU *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcDither_GPU::GetDOD(HgcDither_GPU *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (!a3)
  {
    return *&a4.var0;
  }

  if (a3 == 1)
  {
    return 0x8000000080000000;
  }

  return 0;
}

uint64_t HgcDither_GPU::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (!a3)
  {
    return *&a4.var0;
  }

  if (a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    *&a4.var0 = HGRenderer::GetDOD(a2, Input);
    return *&a4.var0;
  }

  return 0;
}

void HgcDither_GPU::HgcDither_GPU(HgcDither_GPU *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287230758;
  operator new();
}

void HgcDither_GPU::~HgcDither_GPU(HgcDither_GPU *this)
{
  *this = &unk_287230758;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0xC400A2AC0F1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcDither_GPU::~HgcDither_GPU(HGNode *this)
{
  *this = &unk_287230758;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcGradientLinearTranslate::GetProgram(HgcGradientLinearTranslate *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004ae\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(half4(hg_Params[3]), half4(frag._texCoord0));\n    r0.y = dot(half4(hg_Params[4]), half4(frag._texCoord0));\n    s0.xyz = float3(r0.xyz) - hg_Params[0].xyz;\n    s0.x = dot(hg_Params[1].xyz, s0.xyz);\n    s0.x = s0.x*hg_Params[2].x;\n    s0.x = clamp(s0.x*hg_Params[5].x + hg_Params[5].y, 0.00000f, 1.00000f);\n    s0.y = float(c0.x);\n    s0.xy = s0.xy*hg_Params[6].xy;\n    s0.xy = fmax(s0.xy, float2(c0.xx));\n    s1.xy = hg_Params[6].xy - float2(c0.xx);\n    s0.xy = fmin(s0.xy, s1.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    r1 = r0;\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = float4(r1);\n    return output;\n}\n//MD5=46452133:57680ffc:173d5a39:c04c88c5\n//SIG=00400000:00000000:00000000:00000001:0001:0007:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000447\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_Params[3], frag._texCoord0);\n    r0.y = dot(hg_Params[4], frag._texCoord0);\n    r0.xyz = r0.xyz - hg_Params[0].xyz;\n    r0.x = dot(hg_Params[1].xyz, r0.xyz);\n    r0.x = r0.x*hg_Params[2].x;\n    r0.x = clamp(r0.x*hg_Params[5].x + hg_Params[5].y, 0.00000f, 1.00000f);\n    r0.y = c0.x;\n    r0.xy = r0.xy*hg_Params[6].xy;\n    r0.xy = fmax(r0.xy, c0.xx);\n    r1.xy = hg_Params[6].xy - c0.xx;\n    r0.xy = fmin(r0.xy, r1.xy);\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=3e663d75:e0a55e8b:34c412a8:0286977f\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004a5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_ProgramLocal3, hg_TexCoord0);\n    r0.y = dot(hg_ProgramLocal4, hg_TexCoord0);\n    r0.xyz = r0.xyz - hg_ProgramLocal0.xyz;\n    r0.x = dot(hg_ProgramLocal1.xyz, r0.xyz);\n    r0.x = r0.x*hg_ProgramLocal2.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal5.x + hg_ProgramLocal5.y, 0.00000, 1.00000);\n    r0.y = c0.x;\n    r0.xy = hg_ProgramLocal6.xy*c0.zz + r0.xy;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=b8811881:1a7c8d4d:3ce9ee81:ce3624a3\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDE3D54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE3D8C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE3D84);
}

uint64_t HgcGradientLinearTranslate::BindTexture(HgcGradientLinearTranslate *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 6, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcGradientLinearTranslate::Bind(HgcGradientLinearTranslate *this, HGHandler *a2)
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

uint64_t HgcGradientLinearTranslate::RenderTile(HgcGradientLinearTranslate *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
    v7 = a2[2];
    *v8.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v8.i64[1] = 0x3F80000000000000;
    __asm { FMOV            V3.2S, #-1.0 }

    v14 = vadd_f32(v6, _D3);
    v15 = vadd_f32(v14, _D3);
    v16 = (*&v7 + 32);
    v17 = 16 * a2[3].i32[0];
    while (v5 < 4)
    {
      v18 = 0;
      v21 = v8;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      v16 = (v16 + v17);
      *&v7 += v17;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v18 = 0;
    v19 = v16;
    v20 = v5;
    v21 = v8;
    do
    {
      v22 = vaddq_f32(v21, xmmword_2603429B0);
      v23 = vaddq_f32(v22, xmmword_2603429B0);
      v24 = vaddq_f32(v23, xmmword_2603429B0);
      v25 = *(this + 51);
      v26 = *(v25 + 32);
      v27 = *(v25 + 48);
      v28 = vmulq_f32(v21, v27);
      v29 = vmulq_f32(v22, v27);
      v30 = vmulq_f32(v23, v27);
      v31 = vmulq_f32(v24, v27);
      v32 = vaddq_f32(v28, vextq_s8(v28, v28, 4uLL));
      v33 = vaddq_f32(v29, vextq_s8(v29, v29, 4uLL));
      v34 = vaddq_f32(v30, vextq_s8(v30, v30, 4uLL));
      v35 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
      *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v37 = *(v25 + 64);
      v36 = *(v25 + 80);
      v38 = vmulq_f32(v21, v37);
      v39 = vmulq_f32(v22, v37);
      *v33.i8 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v40 = vmulq_f32(v23, v37);
      v41 = vmulq_f32(v24, v37);
      *v34.i8 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v42 = vaddq_f32(v38, vextq_s8(v38, v38, 4uLL));
      v43 = vaddq_f32(v39, vextq_s8(v39, v39, 4uLL));
      v44 = vaddq_f32(v40, vextq_s8(v40, v40, 4uLL));
      v45 = vaddq_f32(v41, vextq_s8(v41, v41, 4uLL));
      *v35.i8 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
      v46 = *(v25 + 96);
      v47 = *(v25 + 112);
      v48 = vbslq_s8(v46, vaddq_f32(v44, vextq_s8(v44, v44, 8uLL)), v34);
      v49 = *(v25 + 16);
      v50 = vmulq_f32(v49, vsubq_f32(vbslq_s8(v46, vaddq_f32(v42, vextq_s8(v42, v42, 8uLL)), v32), *v25));
      v51 = vmulq_f32(v49, vsubq_f32(vbslq_s8(v46, vaddq_f32(v43, vextq_s8(v43, v43, 8uLL)), v33), *v25));
      v52 = vmulq_f32(v49, vsubq_f32(v48, *v25));
      v53 = vmulq_f32(v49, vsubq_f32(vbslq_s8(v46, vaddq_f32(v45, vextq_s8(v45, v45, 8uLL)), v35), *v25));
      v54 = vmulq_f32(v26, vaddq_f32(vextq_s8(v50, v50, 8uLL), vaddq_f32(v50, vrev64q_s32(v50))));
      v55 = vmulq_f32(v26, vaddq_f32(vextq_s8(v51, v51, 8uLL), vaddq_f32(v51, vrev64q_s32(v51))));
      v56 = vmulq_f32(v26, vaddq_f32(vextq_s8(v52, v52, 8uLL), vaddq_f32(v52, vrev64q_s32(v52))));
      v57 = vmulq_f32(v26, vaddq_f32(vextq_s8(v53, v53, 8uLL), vaddq_f32(v53, vrev64q_s32(v53))));
      v58 = vrev64q_s32(v36);
      v59 = vaddq_f32(v58, vmulq_f32(v36, v56));
      v60 = vmaxq_f32(vaddq_f32(v58, vmulq_f32(v36, v54)), v47);
      v61 = vmaxq_f32(vaddq_f32(v58, vmulq_f32(v36, v55)), v47);
      v62 = vmaxq_f32(vaddq_f32(v58, vmulq_f32(v36, v57)), v47);
      v63 = *(v25 + 128);
      v64 = *(v25 + 144);
      v60.i32[0] = vminq_f32(v60, v63).u32[0];
      v61.i32[0] = vminq_f32(v61, v63).u32[0];
      v55.i32[0] = vminq_f32(vmaxq_f32(v59, v47), v63).u32[0];
      v62.i32[0] = vminq_f32(v62, v63).u32[0];
      v60.i32[1] = 0.5;
      v61.i32[1] = 0.5;
      v55.i32[1] = 0.5;
      v62.i32[1] = 0.5;
      v65 = a2[10];
      v66 = a2[11].i32[0];
      *v60.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v60.f32), 0xBF000000BF000000), 0), v14);
      *v63.f32 = vcvt_s32_f32(vmin_f32(*v60.f32, v15));
      *v61.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v61.f32), 0xBF000000BF000000), 0), v14);
      *v49.f32 = vcvt_s32_f32(vmin_f32(*v61.f32, v15));
      *v60.f32 = vsub_f32(*v60.f32, vcvt_f32_s32(*v63.f32));
      *v59.f32 = vdup_n_s32(v66);
      *v63.f32 = vmla_s32(vzip1_s32(*v63.f32, *v49.f32), vzip2_s32(*v63.f32, *v49.f32), *v59.f32);
      v67 = v63.i32[1];
      *v61.f32 = vsub_f32(*v61.f32, vcvt_f32_s32(*v49.f32));
      v68 = (*&v65 + 16 * v63.i32[0]);
      v66 *= 16;
      v69 = vaddq_f32(*v68, vmulq_n_f32(vsubq_f32(v68[1], *v68), v60.f32[0]));
      v70 = (*&v65 + 16 * v67);
      *v55.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v55.f32), 0xBF000000BF000000), 0), v14);
      v71 = vcvt_s32_f32(vmin_f32(*v55.f32, v15));
      *v55.f32 = vsub_f32(*v55.f32, vcvt_f32_s32(v71));
      v72 = vaddq_f32(*v70, vmulq_n_f32(vsubq_f32(v70[1], *v70), v61.f32[0]));
      *v62.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v62.f32), 0xBF000000BF000000), 0), v14);
      *v45.f32 = vcvt_s32_f32(vmin_f32(*v62.f32, v15));
      *v62.f32 = vsub_f32(*v62.f32, vcvt_f32_s32(*v45.f32));
      *v45.f32 = vmla_s32(vzip1_s32(v71, *v45.f32), vzip2_s32(v71, *v45.f32), *v59.f32);
      v73 = vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v68 + v66), vmulq_n_f32(vsubq_f32(*(v68 + v66 + 16), *(v68 + v66)), v60.f32[0])), v69), *v60.f32, 1);
      v74 = (*&v65 + 16 * v45.i32[0]);
      v75 = vaddq_f32(*v74, vmulq_n_f32(vsubq_f32(v74[1], *v74), v55.f32[0]));
      v76 = vaddq_f32(v69, v73);
      v77 = (*&v65 + 16 * v45.i32[1]);
      v78 = vaddq_f32(*v77, vmulq_n_f32(vsubq_f32(v77[1], *v77), v62.f32[0]));
      v79 = vaddq_f32(v72, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v70 + v66), vmulq_n_f32(vsubq_f32(*(v70 + v66 + 16), *(v70 + v66)), v61.f32[0])), v72), *v61.f32, 1));
      v80 = vaddq_f32(v75, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v74 + v66), vmulq_n_f32(vsubq_f32(*(v74 + v66 + 16), *(v74 + v66)), v55.f32[0])), v75), *v55.f32, 1));
      v81 = vaddq_f32(v78, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v77 + v66), vmulq_n_f32(vsubq_f32(*(v77 + v66 + 16), *(v77 + v66)), v62.f32[0])), v78), *v62.f32, 1));
      v19[-2] = vbslq_s8(v64, v76, vmulq_laneq_f32(v76, v76, 3));
      v19[-1] = vbslq_s8(v64, v79, vmulq_laneq_f32(v79, v79, 3));
      *v19 = vbslq_s8(v64, v80, vmulq_laneq_f32(v80, v80, 3));
      v19[1] = vbslq_s8(v64, v81, vmulq_laneq_f32(v81, v81, 3));
      v19 += 4;
      v21 = vaddq_f32(v24, xmmword_2603429B0);
      v20 -= 4;
      v18 += 4;
    }

    while (v20 > 3);
    if (v18 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v82 = *(this + 51);
      v83 = vmulq_f32(v21, *(v82 + 48));
      v84 = vaddq_f32(v83, vextq_s8(v83, v83, 4uLL));
      v85 = vmulq_f32(v21, *(v82 + 64));
      *v84.i8 = vadd_f32(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
      v86 = vaddq_f32(v85, vextq_s8(v85, v85, 4uLL));
      v87 = vmulq_f32(*(v82 + 16), vsubq_f32(vbslq_s8(*(v82 + 96), vaddq_f32(v86, vextq_s8(v86, v86, 8uLL)), v84), *v82));
      v88 = *(v82 + 144);
      v87.i32[0] = vminq_f32(vmaxq_f32(vaddq_f32(vrev64q_s32(*(v82 + 80)), vmulq_f32(*(v82 + 80), vmulq_f32(*(v82 + 32), vaddq_f32(vextq_s8(v87, v87, 8uLL), vaddq_f32(v87, vrev64q_s32(v87)))))), *(v82 + 112)), *(v82 + 128)).u32[0];
      v87.i32[1] = 0.5;
      *v87.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v87.f32), 0xBF000000BF000000), 0), v14);
      v89 = a2[11].i32[0];
      v90 = vcvt_s32_f32(vmin_f32(*v87.f32, v15));
      *v87.f32 = vsub_f32(*v87.f32, vcvt_f32_s32(v90));
      v91 = (*&a2[10] + 16 * (v90.i32[0] + v90.i32[1] * v89));
      v92 = vaddq_f32(*v91, vmulq_n_f32(vsubq_f32(v91[1], *v91), v87.f32[0]));
      v93 = vaddq_f32(v92, vmulq_lane_f32(vsubq_f32(vaddq_f32(v91[v89], vmulq_n_f32(vsubq_f32(v91[v89 + 1], v91[v89]), v87.f32[0])), v92), *v87.f32, 1));
      *(*&v7 + 16 * v18) = vbslq_s8(v88, v93, vmulq_laneq_f32(v93, v93, 3));
      v21 = vaddq_f32(v21, xmmword_2603429B0);
      ++v18;
    }

    while (v18 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcGradientLinearTranslate::GetDOD(HgcGradientLinearTranslate *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcGradientLinearTranslate::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientLinearTranslate::HgcGradientLinearTranslate(HgcGradientLinearTranslate *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872309C0;
  operator new();
}

void HgcGradientLinearTranslate::~HgcGradientLinearTranslate(HgcGradientLinearTranslate *this)
{
  *this = &unk_2872309C0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40B8406A4ELL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGradientLinearTranslate::~HgcGradientLinearTranslate(HGNode *this)
{
  *this = &unk_2872309C0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGradientLinearTranslate::SetParameter(HgcGradientLinearTranslate *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientLinearTranslate::GetParameter(HgcGradientLinearTranslate *this, unsigned int a2, float *a3)
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

const char *HgcGradientLinearAffine::GetProgram(HgcGradientLinearAffine *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004ae\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(half4(hg_Params[3]), half4(frag._texCoord0));\n    r0.y = dot(half4(hg_Params[4]), half4(frag._texCoord0));\n    s0.xyz = float3(r0.xyz) - hg_Params[0].xyz;\n    s0.x = dot(hg_Params[1].xyz, s0.xyz);\n    s0.x = s0.x*hg_Params[2].x;\n    s0.x = clamp(s0.x*hg_Params[5].x + hg_Params[5].y, 0.00000f, 1.00000f);\n    s0.y = float(c0.x);\n    s0.xy = s0.xy*hg_Params[6].xy;\n    s0.xy = fmax(s0.xy, float2(c0.xx));\n    s1.xy = hg_Params[6].xy - float2(c0.xx);\n    s0.xy = fmin(s0.xy, s1.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    r1 = r0;\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = float4(r1);\n    return output;\n}\n//MD5=46452133:57680ffc:173d5a39:c04c88c5\n//SIG=00400000:00000000:00000000:00000001:0001:0007:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000447\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_Params[3], frag._texCoord0);\n    r0.y = dot(hg_Params[4], frag._texCoord0);\n    r0.xyz = r0.xyz - hg_Params[0].xyz;\n    r0.x = dot(hg_Params[1].xyz, r0.xyz);\n    r0.x = r0.x*hg_Params[2].x;\n    r0.x = clamp(r0.x*hg_Params[5].x + hg_Params[5].y, 0.00000f, 1.00000f);\n    r0.y = c0.x;\n    r0.xy = r0.xy*hg_Params[6].xy;\n    r0.xy = fmax(r0.xy, c0.xx);\n    r1.xy = hg_Params[6].xy - c0.xx;\n    r0.xy = fmin(r0.xy, r1.xy);\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=3e663d75:e0a55e8b:34c412a8:0286977f\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004a5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_ProgramLocal3, hg_TexCoord0);\n    r0.y = dot(hg_ProgramLocal4, hg_TexCoord0);\n    r0.xyz = r0.xyz - hg_ProgramLocal0.xyz;\n    r0.x = dot(hg_ProgramLocal1.xyz, r0.xyz);\n    r0.x = r0.x*hg_ProgramLocal2.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal5.x + hg_ProgramLocal5.y, 0.00000, 1.00000);\n    r0.y = c0.x;\n    r0.xy = hg_ProgramLocal6.xy*c0.zz + r0.xy;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=b8811881:1a7c8d4d:3ce9ee81:ce3624a3\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDE4D20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE4D58(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE4D50);
}

uint64_t HgcGradientLinearAffine::BindTexture(HgcGradientLinearAffine *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 6, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcGradientLinearAffine::Bind(HgcGradientLinearAffine *this, HGHandler *a2)
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

uint64_t HgcGradientLinearAffine::RenderTile(HgcGradientLinearAffine *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
    v7 = a2[2];
    *v8.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v8.i64[1] = 0x3F80000000000000;
    __asm { FMOV            V3.2S, #-1.0 }

    v14 = vadd_f32(v6, _D3);
    v15 = vadd_f32(v14, _D3);
    v16 = (*&v7 + 32);
    v17 = 16 * a2[3].i32[0];
    while (v5 < 4)
    {
      v18 = 0;
      v21 = v8;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      v16 = (v16 + v17);
      *&v7 += v17;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v18 = 0;
    v19 = v16;
    v20 = v5;
    v21 = v8;
    do
    {
      v22 = vaddq_f32(v21, xmmword_2603429B0);
      v23 = vaddq_f32(v22, xmmword_2603429B0);
      v24 = vaddq_f32(v23, xmmword_2603429B0);
      v25 = *(this + 51);
      v26 = *(v25 + 32);
      v27 = *(v25 + 48);
      v28 = vmulq_f32(v21, v27);
      v29 = vmulq_f32(v22, v27);
      v30 = vmulq_f32(v23, v27);
      v31 = vmulq_f32(v24, v27);
      v32 = vaddq_f32(v28, vextq_s8(v28, v28, 4uLL));
      v33 = vaddq_f32(v29, vextq_s8(v29, v29, 4uLL));
      v34 = vaddq_f32(v30, vextq_s8(v30, v30, 4uLL));
      v35 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
      *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      v37 = *(v25 + 64);
      v36 = *(v25 + 80);
      v38 = vmulq_f32(v21, v37);
      v39 = vmulq_f32(v22, v37);
      *v33.i8 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v40 = vmulq_f32(v23, v37);
      v41 = vmulq_f32(v24, v37);
      *v34.i8 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v42 = vaddq_f32(v38, vextq_s8(v38, v38, 4uLL));
      v43 = vaddq_f32(v39, vextq_s8(v39, v39, 4uLL));
      v44 = vaddq_f32(v40, vextq_s8(v40, v40, 4uLL));
      v45 = vaddq_f32(v41, vextq_s8(v41, v41, 4uLL));
      *v35.i8 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
      v46 = *(v25 + 96);
      v47 = *(v25 + 112);
      v48 = vbslq_s8(v46, vaddq_f32(v44, vextq_s8(v44, v44, 8uLL)), v34);
      v49 = *(v25 + 16);
      v50 = vmulq_f32(v49, vsubq_f32(vbslq_s8(v46, vaddq_f32(v42, vextq_s8(v42, v42, 8uLL)), v32), *v25));
      v51 = vmulq_f32(v49, vsubq_f32(vbslq_s8(v46, vaddq_f32(v43, vextq_s8(v43, v43, 8uLL)), v33), *v25));
      v52 = vmulq_f32(v49, vsubq_f32(v48, *v25));
      v53 = vmulq_f32(v49, vsubq_f32(vbslq_s8(v46, vaddq_f32(v45, vextq_s8(v45, v45, 8uLL)), v35), *v25));
      v54 = vmulq_f32(v26, vaddq_f32(vextq_s8(v50, v50, 8uLL), vaddq_f32(v50, vrev64q_s32(v50))));
      v55 = vmulq_f32(v26, vaddq_f32(vextq_s8(v51, v51, 8uLL), vaddq_f32(v51, vrev64q_s32(v51))));
      v56 = vmulq_f32(v26, vaddq_f32(vextq_s8(v52, v52, 8uLL), vaddq_f32(v52, vrev64q_s32(v52))));
      v57 = vmulq_f32(v26, vaddq_f32(vextq_s8(v53, v53, 8uLL), vaddq_f32(v53, vrev64q_s32(v53))));
      v58 = vrev64q_s32(v36);
      v59 = vaddq_f32(v58, vmulq_f32(v36, v56));
      v60 = vmaxq_f32(vaddq_f32(v58, vmulq_f32(v36, v54)), v47);
      v61 = vmaxq_f32(vaddq_f32(v58, vmulq_f32(v36, v55)), v47);
      v62 = vmaxq_f32(vaddq_f32(v58, vmulq_f32(v36, v57)), v47);
      v63 = *(v25 + 128);
      v64 = *(v25 + 144);
      v60.i32[0] = vminq_f32(v60, v63).u32[0];
      v61.i32[0] = vminq_f32(v61, v63).u32[0];
      v55.i32[0] = vminq_f32(vmaxq_f32(v59, v47), v63).u32[0];
      v62.i32[0] = vminq_f32(v62, v63).u32[0];
      v60.i32[1] = 0.5;
      v61.i32[1] = 0.5;
      v55.i32[1] = 0.5;
      v62.i32[1] = 0.5;
      v65 = a2[10];
      v66 = a2[11].i32[0];
      *v60.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v60.f32), 0xBF000000BF000000), 0), v14);
      *v63.f32 = vcvt_s32_f32(vmin_f32(*v60.f32, v15));
      *v61.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v61.f32), 0xBF000000BF000000), 0), v14);
      *v49.f32 = vcvt_s32_f32(vmin_f32(*v61.f32, v15));
      *v60.f32 = vsub_f32(*v60.f32, vcvt_f32_s32(*v63.f32));
      *v59.f32 = vdup_n_s32(v66);
      *v63.f32 = vmla_s32(vzip1_s32(*v63.f32, *v49.f32), vzip2_s32(*v63.f32, *v49.f32), *v59.f32);
      v67 = v63.i32[1];
      *v61.f32 = vsub_f32(*v61.f32, vcvt_f32_s32(*v49.f32));
      v68 = (*&v65 + 16 * v63.i32[0]);
      v66 *= 16;
      v69 = vaddq_f32(*v68, vmulq_n_f32(vsubq_f32(v68[1], *v68), v60.f32[0]));
      v70 = (*&v65 + 16 * v67);
      *v55.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v55.f32), 0xBF000000BF000000), 0), v14);
      v71 = vcvt_s32_f32(vmin_f32(*v55.f32, v15));
      *v55.f32 = vsub_f32(*v55.f32, vcvt_f32_s32(v71));
      v72 = vaddq_f32(*v70, vmulq_n_f32(vsubq_f32(v70[1], *v70), v61.f32[0]));
      *v62.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v62.f32), 0xBF000000BF000000), 0), v14);
      *v45.f32 = vcvt_s32_f32(vmin_f32(*v62.f32, v15));
      *v62.f32 = vsub_f32(*v62.f32, vcvt_f32_s32(*v45.f32));
      *v45.f32 = vmla_s32(vzip1_s32(v71, *v45.f32), vzip2_s32(v71, *v45.f32), *v59.f32);
      v73 = vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v68 + v66), vmulq_n_f32(vsubq_f32(*(v68 + v66 + 16), *(v68 + v66)), v60.f32[0])), v69), *v60.f32, 1);
      v74 = (*&v65 + 16 * v45.i32[0]);
      v75 = vaddq_f32(*v74, vmulq_n_f32(vsubq_f32(v74[1], *v74), v55.f32[0]));
      v76 = vaddq_f32(v69, v73);
      v77 = (*&v65 + 16 * v45.i32[1]);
      v78 = vaddq_f32(*v77, vmulq_n_f32(vsubq_f32(v77[1], *v77), v62.f32[0]));
      v79 = vaddq_f32(v72, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v70 + v66), vmulq_n_f32(vsubq_f32(*(v70 + v66 + 16), *(v70 + v66)), v61.f32[0])), v72), *v61.f32, 1));
      v80 = vaddq_f32(v75, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v74 + v66), vmulq_n_f32(vsubq_f32(*(v74 + v66 + 16), *(v74 + v66)), v55.f32[0])), v75), *v55.f32, 1));
      v81 = vaddq_f32(v78, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v77 + v66), vmulq_n_f32(vsubq_f32(*(v77 + v66 + 16), *(v77 + v66)), v62.f32[0])), v78), *v62.f32, 1));
      v19[-2] = vbslq_s8(v64, v76, vmulq_laneq_f32(v76, v76, 3));
      v19[-1] = vbslq_s8(v64, v79, vmulq_laneq_f32(v79, v79, 3));
      *v19 = vbslq_s8(v64, v80, vmulq_laneq_f32(v80, v80, 3));
      v19[1] = vbslq_s8(v64, v81, vmulq_laneq_f32(v81, v81, 3));
      v19 += 4;
      v21 = vaddq_f32(v24, xmmword_2603429B0);
      v20 -= 4;
      v18 += 4;
    }

    while (v20 > 3);
    if (v18 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v82 = *(this + 51);
      v83 = vmulq_f32(v21, *(v82 + 48));
      v84 = vaddq_f32(v83, vextq_s8(v83, v83, 4uLL));
      v85 = vmulq_f32(v21, *(v82 + 64));
      *v84.i8 = vadd_f32(*v84.i8, *&vextq_s8(v84, v84, 8uLL));
      v86 = vaddq_f32(v85, vextq_s8(v85, v85, 4uLL));
      v87 = vmulq_f32(*(v82 + 16), vsubq_f32(vbslq_s8(*(v82 + 96), vaddq_f32(v86, vextq_s8(v86, v86, 8uLL)), v84), *v82));
      v88 = *(v82 + 144);
      v87.i32[0] = vminq_f32(vmaxq_f32(vaddq_f32(vrev64q_s32(*(v82 + 80)), vmulq_f32(*(v82 + 80), vmulq_f32(*(v82 + 32), vaddq_f32(vextq_s8(v87, v87, 8uLL), vaddq_f32(v87, vrev64q_s32(v87)))))), *(v82 + 112)), *(v82 + 128)).u32[0];
      v87.i32[1] = 0.5;
      *v87.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v87.f32), 0xBF000000BF000000), 0), v14);
      v89 = a2[11].i32[0];
      v90 = vcvt_s32_f32(vmin_f32(*v87.f32, v15));
      *v87.f32 = vsub_f32(*v87.f32, vcvt_f32_s32(v90));
      v91 = (*&a2[10] + 16 * (v90.i32[0] + v90.i32[1] * v89));
      v92 = vaddq_f32(*v91, vmulq_n_f32(vsubq_f32(v91[1], *v91), v87.f32[0]));
      v93 = vaddq_f32(v92, vmulq_lane_f32(vsubq_f32(vaddq_f32(v91[v89], vmulq_n_f32(vsubq_f32(v91[v89 + 1], v91[v89]), v87.f32[0])), v92), *v87.f32, 1));
      *(*&v7 + 16 * v18) = vbslq_s8(v88, v93, vmulq_laneq_f32(v93, v93, 3));
      v21 = vaddq_f32(v21, xmmword_2603429B0);
      ++v18;
    }

    while (v18 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcGradientLinearAffine::GetDOD(HgcGradientLinearAffine *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcGradientLinearAffine::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientLinearAffine::HgcGradientLinearAffine(HgcGradientLinearAffine *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287230C28;
  operator new();
}

void HgcGradientLinearAffine::~HgcGradientLinearAffine(HgcGradientLinearAffine *this)
{
  *this = &unk_287230C28;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40B8406A4ELL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGradientLinearAffine::~HgcGradientLinearAffine(HGNode *this)
{
  *this = &unk_287230C28;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGradientLinearAffine::SetParameter(HgcGradientLinearAffine *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientLinearAffine::GetParameter(HgcGradientLinearAffine *this, unsigned int a2, float *a3)
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

const char *HgcGradientLinearPerspective::GetProgram(HgcGradientLinearPerspective *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000504\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(half4(hg_Params[3]), half4(frag._texCoord0));\n    r0.y = dot(half4(hg_Params[4]), half4(frag._texCoord0));\n    r0.w = dot(half4(hg_Params[5]), half4(frag._texCoord0));\n    r0.xy = r0.xy/r0.ww;\n    s0.xyz = float3(r0.xyz) - hg_Params[0].xyz;\n    s0.x = dot(hg_Params[1].xyz, s0.xyz);\n    s0.x = s0.x*hg_Params[2].x;\n    s0.x = clamp(s0.x*hg_Params[6].x + hg_Params[6].y, 0.00000f, 1.00000f);\n    s0.y = float(c0.x);\n    s0.xy = s0.xy*hg_Params[7].xy;\n    s0.xy = fmax(s0.xy, float2(c0.xx));\n    s1.xy = hg_Params[7].xy - float2(c0.xx);\n    s0.xy = fmin(s0.xy, s1.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    r1 = r0;\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = float4(r1);\n    return output;\n}\n//MD5=2e08a5bb:aa373144:fd65e842:17accea7\n//SIG=00400000:00000000:00000000:00000001:0001:0008:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000048f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_Params[3], frag._texCoord0);\n    r0.y = dot(hg_Params[4], frag._texCoord0);\n    r0.w = dot(hg_Params[5], frag._texCoord0);\n    r0.xy = r0.xy/r0.ww;\n    r0.xyz = r0.xyz - hg_Params[0].xyz;\n    r0.x = dot(hg_Params[1].xyz, r0.xyz);\n    r0.x = r0.x*hg_Params[2].x;\n    r0.x = clamp(r0.x*hg_Params[6].x + hg_Params[6].y, 0.00000f, 1.00000f);\n    r0.y = c0.x;\n    r0.xy = r0.xy*hg_Params[7].xy;\n    r0.xy = fmax(r0.xy, c0.xx);\n    r1.xy = hg_Params[7].xy - c0.xx;\n    r0.xy = fmin(r0.xy, r1.xy);\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=55ccf5f9:4165b0cb:ef29e9dd:cc6692a4\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000513\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_ProgramLocal3, hg_TexCoord0);\n    r0.y = dot(hg_ProgramLocal4, hg_TexCoord0);\n    r0.w = dot(hg_ProgramLocal5, hg_TexCoord0);\n    r0.xy = r0.xy/r0.ww;\n    r0.xyz = r0.xyz - hg_ProgramLocal0.xyz;\n    r0.x = dot(hg_ProgramLocal1.xyz, r0.xyz);\n    r0.x = r0.x*hg_ProgramLocal2.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal6.x + hg_ProgramLocal6.y, 0.00000, 1.00000);\n    r0.y = c0.x;\n    r0.xy = hg_ProgramLocal7.xy*c0.zz + r0.xy;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=c492827a:59585925:8987f7c8:7cfbe231\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDE5CF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE5D28(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE5D20);
}

uint64_t HgcGradientLinearPerspective::BindTexture(HgcGradientLinearPerspective *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 7, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcGradientLinearPerspective::Bind(HgcGradientLinearPerspective *this, HGHandler *a2)
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

uint64_t HgcGradientLinearPerspective::RenderTile(HgcGradientLinearPerspective *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
    v7 = a2[2];
    *v8.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v8.i64[1] = 0x3F80000000000000;
    __asm { FMOV            V3.2S, #-1.0 }

    v14 = vadd_f32(v6, _D3);
    v15 = vadd_f32(v14, _D3);
    v16 = 16 * a2[3].i32[0];
    while (v5 < 3)
    {
      v17 = 0;
      v19 = v8;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      *&v7 += v16;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v17 = 0;
    v18 = v5;
    v19 = v8;
    do
    {
      v20 = vaddq_f32(v19, xmmword_2603429B0);
      v21 = vaddq_f32(v20, xmmword_2603429B0);
      v22 = *(this + 51);
      v24 = *(v22 + 32);
      v23 = *(v22 + 48);
      v25 = vmulq_f32(v19, v23);
      v26 = vmulq_f32(v20, v23);
      v27 = vmulq_f32(v21, v23);
      v28 = vaddq_f32(v25, vextq_s8(v25, v25, 4uLL));
      v29 = vaddq_f32(v26, vextq_s8(v26, v26, 4uLL));
      v30 = vaddq_f32(v27, vextq_s8(v27, v27, 4uLL));
      v31 = *(v22 + 64);
      v32 = *(v22 + 80);
      *v28.i8 = vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
      v33 = vmulq_f32(v19, v31);
      v34 = vmulq_f32(v20, v31);
      v35 = vmulq_f32(v21, v31);
      *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
      v36 = vaddq_f32(v33, vextq_s8(v33, v33, 4uLL));
      v37 = vaddq_f32(v34, vextq_s8(v34, v34, 4uLL));
      v38 = vaddq_f32(v35, vextq_s8(v35, v35, 4uLL));
      *v30.i8 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
      v39 = vmulq_f32(v19, v32);
      v40 = vmulq_f32(v20, v32);
      v41 = vmulq_f32(v21, v32);
      v42 = *(v22 + 96);
      v43 = *(v22 + 112);
      v44 = vbslq_s8(v43, vaddq_f32(v36, vextq_s8(v36, v36, 8uLL)), v28);
      v45 = vaddq_f32(v39, vextq_s8(v39, v39, 4uLL));
      v46 = vaddq_f32(v40, vextq_s8(v40, v40, 4uLL));
      v47 = vaddq_f32(v41, vextq_s8(v41, v41, 4uLL));
      v48 = vaddq_f32(v45, vextq_s8(v45, v45, 8uLL));
      v49 = vbslq_s8(v43, vaddq_f32(v38, vextq_s8(v38, v38, 8uLL)), v30);
      v50 = vaddq_f32(v47, vextq_s8(v47, v47, 8uLL));
      v51 = *(v22 + 128);
      v52 = *(v22 + 144);
      v53 = vbslq_s8(v51, v48, v44);
      v54 = vbslq_s8(v51, vaddq_f32(v46, vextq_s8(v46, v46, 8uLL)), vbslq_s8(v43, vaddq_f32(v37, vextq_s8(v37, v37, 8uLL)), v29));
      v55 = vbslq_s8(v51, v50, v49);
      v56 = vdupq_laneq_s32(v53, 3);
      v57 = vdupq_laneq_s32(v54, 3);
      v58 = vdupq_laneq_s32(v55, 3);
      v60 = *(v22 + 160);
      v59 = *(v22 + 176);
      v61 = vminq_f32(vmaxq_f32(vrecpeq_f32(v56), v52), v60);
      v62 = vminq_f32(vmaxq_f32(vrecpeq_f32(v57), v52), v60);
      v63 = vminq_f32(vmaxq_f32(vrecpeq_f32(v58), v52), v60);
      v64 = vminq_f32(vmaxq_f32(vmulq_f32(v61, vrecpsq_f32(v56, v61)), v52), v60);
      v65 = vminq_f32(vmaxq_f32(vmulq_f32(v62, vrecpsq_f32(v57, v62)), v52), v60);
      v66 = vminq_f32(vmaxq_f32(vmulq_f32(v63, vrecpsq_f32(v58, v63)), v52), v60);
      v56.i64[0] = vmulq_f32(vmulq_f32(v64, vrecpsq_f32(v56, v64)), v53).u64[0];
      v57.i64[0] = vmulq_f32(vmulq_f32(v65, vrecpsq_f32(v57, v65)), v54).u64[0];
      v56.i64[1] = v53.i64[1];
      v57.i64[1] = v54.i64[1];
      v53.i64[0] = vmulq_f32(vmulq_f32(v66, vrecpsq_f32(v58, v66)), v55).u64[0];
      v53.i64[1] = v55.i64[1];
      v67 = *(v22 + 16);
      v68 = vsubq_f32(v53, *v22);
      v69 = vmulq_f32(v67, vsubq_f32(v56, *v22));
      v70 = vmulq_f32(v67, vsubq_f32(v57, *v22));
      v71 = vmulq_f32(v67, v68);
      v72 = vmulq_f32(v24, vaddq_f32(vextq_s8(v69, v69, 8uLL), vaddq_f32(v69, vrev64q_s32(v69))));
      v73 = vmulq_f32(v24, vaddq_f32(vextq_s8(v70, v70, 8uLL), vaddq_f32(v70, vrev64q_s32(v70))));
      v74 = vmulq_f32(v24, vaddq_f32(vextq_s8(v71, v71, 8uLL), vaddq_f32(v71, vrev64q_s32(v71))));
      v75 = vrev64q_s32(v42);
      v76 = vaddq_f32(v75, vmulq_f32(v42, v72));
      v77 = vaddq_f32(v75, vmulq_f32(v42, v73));
      v78 = vaddq_f32(v75, vmulq_f32(v42, v74));
      v79 = vmaxq_f32(v76, v59);
      v80 = *(v22 + 192);
      v79.i32[0] = vminq_f32(v79, v80).u32[0];
      v75.i32[0] = vminq_f32(vmaxq_f32(v77, v59), v80).u32[0];
      v78.i32[0] = vminq_f32(vmaxq_f32(v78, v59), v80).u32[0];
      v79.i32[1] = 0.5;
      v75.i32[1] = 0.5;
      v78.i32[1] = 0.5;
      v81 = a2[10];
      v82 = a2[11].i32[0];
      *v79.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v79.f32), 0xBF000000BF000000), 0), v14);
      *v80.f32 = vcvt_s32_f32(vmin_f32(*v79.f32, v15));
      *v70.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v75.f32), 0xBF000000BF000000), 0), v14);
      *v75.f32 = vsub_f32(*v79.f32, vcvt_f32_s32(*v80.f32));
      *v77.f32 = vcvt_s32_f32(vmin_f32(*v70.f32, v15));
      *v79.f32 = vsub_f32(*v70.f32, vcvt_f32_s32(*v77.f32));
      *v80.f32 = vmla_s32(vzip1_s32(*v80.f32, *v77.f32), vzip2_s32(*v80.f32, *v77.f32), vdup_n_s32(v82));
      v83 = v80.i32[1];
      v84 = (*&v81 + 16 * v80.i32[0]);
      v85 = vaddq_f32(*v84, vmulq_n_f32(vsubq_f32(v84[1], *v84), v75.f32[0]));
      v86 = (*&v81 + 16 * v83);
      v87 = vaddq_f32(*v86, vmulq_n_f32(vsubq_f32(v86[1], *v86), v79.f32[0]));
      *v78.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v78.f32), 0xBF000000BF000000), 0), v14);
      *v77.f32 = vcvt_s32_f32(vmin_f32(*v78.f32, v15));
      *v78.f32 = vsub_f32(*v78.f32, vcvt_f32_s32(*v77.f32));
      v88 = (*&v81 + 16 * (v77.i32[0] + v77.i32[1] * v82));
      v89 = vaddq_f32(v85, vmulq_lane_f32(vsubq_f32(vaddq_f32(v84[v82], vmulq_n_f32(vsubq_f32(v84[v82 + 1], v84[v82]), v75.f32[0])), v85), *v75.f32, 1));
      v90 = vaddq_f32(*v88, vmulq_n_f32(vsubq_f32(v88[1], *v88), v78.f32[0]));
      v91 = vaddq_f32(v87, vmulq_lane_f32(vsubq_f32(vaddq_f32(v86[v82], vmulq_n_f32(vsubq_f32(v86[v82 + 1], v86[v82]), v79.f32[0])), v87), *v79.f32, 1));
      v92 = vaddq_f32(v90, vmulq_lane_f32(vsubq_f32(vaddq_f32(v88[v82], vmulq_n_f32(vsubq_f32(v88[v82 + 1], v88[v82]), v78.f32[0])), v90), *v78.f32, 1));
      v93 = (*&v7 + 16 * v17);
      *v93 = vbslq_s8(v51, v89, vmulq_laneq_f32(v89, v89, 3));
      v93[1] = vbslq_s8(v51, v91, vmulq_laneq_f32(v91, v91, 3));
      v93[2] = vbslq_s8(v51, v92, vmulq_laneq_f32(v92, v92, 3));
      v19 = vaddq_f32(v21, xmmword_2603429B0);
      v17 += 3;
      v18 -= 3;
    }

    while (v18 > 2);
    v17 = v17;
    if (v17 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v94 = *(this + 51);
      v95 = vmulq_f32(v19, *(v94 + 48));
      v96 = vaddq_f32(v95, vextq_s8(v95, v95, 4uLL));
      v97 = vextq_s8(v96, v96, 8uLL);
      v98 = vmulq_f32(v19, *(v94 + 64));
      *v97.i8 = vadd_f32(*v96.i8, *v97.i8);
      v99 = vaddq_f32(v98, vextq_s8(v98, v98, 4uLL));
      v100 = vmulq_f32(v19, *(v94 + 80));
      v101 = vaddq_f32(v100, vextq_s8(v100, v100, 4uLL));
      v102 = vbslq_s8(*(v94 + 112), vaddq_f32(v99, vextq_s8(v99, v99, 8uLL)), v97);
      v103 = *(v94 + 128);
      v104 = *(v94 + 144);
      v105 = vbslq_s8(v103, vaddq_f32(v101, vextq_s8(v101, v101, 8uLL)), v102);
      v106 = vdupq_laneq_s32(v105, 3);
      v107 = *(v94 + 160);
      v108 = vminq_f32(vmaxq_f32(vrecpeq_f32(v106), v104), v107);
      v109 = vminq_f32(vmaxq_f32(vmulq_f32(v108, vrecpsq_f32(v106, v108)), v104), v107);
      v109.i64[0] = vmulq_f32(vmulq_f32(v109, vrecpsq_f32(v106, v109)), v105).u64[0];
      v109.i64[1] = v105.i64[1];
      v110 = vmulq_f32(*(v94 + 16), vsubq_f32(v109, *v94));
      v111.i32[0] = vminq_f32(vmaxq_f32(vaddq_f32(vrev64q_s32(*(v94 + 96)), vmulq_f32(*(v94 + 96), vmulq_f32(*(v94 + 32), vaddq_f32(vextq_s8(v110, v110, 8uLL), vaddq_f32(v110, vrev64q_s32(v110)))))), *(v94 + 176)), *(v94 + 192)).u32[0];
      v111.i32[1] = 0.5;
      v112 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, v111), 0xBF000000BF000000), 0), v14);
      v113 = a2[11].i32[0];
      *v110.f32 = vcvt_s32_f32(vmin_f32(v112, v15));
      v114 = vsub_f32(v112, vcvt_f32_s32(*v110.f32));
      v115 = (*&a2[10] + 16 * (v110.i32[0] + v110.i32[1] * v113));
      v116 = vaddq_f32(*v115, vmulq_n_f32(vsubq_f32(v115[1], *v115), v114.f32[0]));
      v117 = vaddq_f32(v116, vmulq_lane_f32(vsubq_f32(vaddq_f32(v115[v113], vmulq_n_f32(vsubq_f32(v115[v113 + 1], v115[v113]), v114.f32[0])), v116), v114, 1));
      *(*&v7 + 16 * v17) = vbslq_s8(v103, v117, vmulq_laneq_f32(v117, v117, 3));
      v19 = vaddq_f32(v19, xmmword_2603429B0);
      ++v17;
    }

    while (v17 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcGradientLinearPerspective::GetDOD(HgcGradientLinearPerspective *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcGradientLinearPerspective::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientLinearPerspective::HgcGradientLinearPerspective(HgcGradientLinearPerspective *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287230E90;
  operator new();
}

void HgcGradientLinearPerspective::~HgcGradientLinearPerspective(HgcGradientLinearPerspective *this)
{
  *this = &unk_287230E90;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C400F93440CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGradientLinearPerspective::~HgcGradientLinearPerspective(HGNode *this)
{
  *this = &unk_287230E90;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F93440CLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGradientLinearPerspective::SetParameter(HgcGradientLinearPerspective *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientLinearPerspective::GetParameter(HgcGradientLinearPerspective *this, unsigned int a2, float *a3)
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

const char *HgcGradientLinearIdentity::GetProgram(HgcGradientLinearIdentity *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000417\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    s0.x = dot(hg_Params[1].xyz, s0.xyz);\n    s0.x = s0.x*hg_Params[2].x;\n    s0.x = clamp(s0.x*hg_Params[3].x + hg_Params[3].y, 0.00000f, 1.00000f);\n    s0.y = float(c0.y);\n    s0.xy = s0.xy*hg_Params[4].xy;\n    s0.xy = fmax(s0.xy, float2(c0.yy));\n    s1.xy = hg_Params[4].xy - float2(c0.yy);\n    s0.xy = fmin(s0.xy, s1.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=90469e23:e8a58590:544d7d30:1a3cbdd3\n//SIG=00400000:00000000:00000000:00000001:0001:0005:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    r0.x = dot(hg_Params[1].xyz, r0.xyz);\n    r0.x = r0.x*hg_Params[2].x;\n    r0.x = clamp(r0.x*hg_Params[3].x + hg_Params[3].y, 0.00000f, 1.00000f);\n    r0.y = c0.y;\n    r0.xy = r0.xy*hg_Params[4].xy;\n    r0.xy = fmax(r0.xy, c0.yy);\n    r1.xy = hg_Params[4].xy - c0.yy;\n    r0.xy = fmin(r0.xy, r1.xy);\n    r0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=f0cefc8b:5dc30f52:2b0338bb:b15223e3\n//SIG=00000000:00000000:00000000:00000000:0001:0005:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    highp vec4 r0;\n\n    r0.xyz = hg_TexCoord0.xyz - hg_ProgramLocal0.xyz;\n    r0.x = dot(hg_ProgramLocal1.xyz, r0.xyz);\n    r0.x = r0.x*hg_ProgramLocal2.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal3.x + hg_ProgramLocal3.y, 0.00000, 1.00000);\n    r0.y = c0.y;\n    r0.xy = hg_ProgramLocal4.xy*c0.xx + r0.xy;\n    r0 = texture2D(hg_Texture0, r0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=25a463cb:436ff83f:4101e589:fcdc7897\n//SIG=00000000:00000000:00000000:00000000:0001:0005:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDE6D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE6DB8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE6DB0);
}

uint64_t HgcGradientLinearIdentity::BindTexture(HgcGradientLinearIdentity *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 4, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcGradientLinearIdentity::Bind(HgcGradientLinearIdentity *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcGradientLinearIdentity::RenderTile(HgcGradientLinearIdentity *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
    v7 = a2[2];
    *v8.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v8.i64[1] = 0x3F80000000000000;
    __asm { FMOV            V3.2S, #-1.0 }

    v14 = vadd_f32(v6, _D3);
    v15 = vadd_f32(v14, _D3);
    v16 = (*&v7 + 32);
    v17 = 16 * a2[3].i32[0];
    while (v5 < 4)
    {
      v18 = 0;
      v21 = v8;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      v16 = (v16 + v17);
      *&v7 += v17;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v18 = 0;
    v19 = v16;
    v20 = v5;
    v21 = v8;
    do
    {
      v22 = vaddq_f32(v21, xmmword_2603429B0);
      v23 = vaddq_f32(v22, xmmword_2603429B0);
      v24 = *(this + 51);
      v25 = vaddq_f32(v23, xmmword_2603429B0);
      v26 = *(v24 + 16);
      v27 = vmulq_f32(v26, vsubq_f32(v21, *v24));
      v28 = vmulq_f32(v26, vsubq_f32(v22, *v24));
      v29 = vmulq_f32(v26, vsubq_f32(v23, *v24));
      v30 = vmulq_f32(v26, vsubq_f32(v25, *v24));
      v31 = *(v24 + 32);
      v32 = *(v24 + 48);
      v33 = vmulq_f32(v31, vaddq_f32(vextq_s8(v27, v27, 8uLL), vaddq_f32(v27, vrev64q_s32(v27))));
      v34 = vmulq_f32(v31, vaddq_f32(vextq_s8(v28, v28, 8uLL), vaddq_f32(v28, vrev64q_s32(v28))));
      v35 = vmulq_f32(v31, vaddq_f32(vextq_s8(v29, v29, 8uLL), vaddq_f32(v29, vrev64q_s32(v29))));
      v36 = vmulq_f32(v31, vaddq_f32(vextq_s8(v30, v30, 8uLL), vaddq_f32(v30, vrev64q_s32(v30))));
      v37 = vrev64q_s32(v32);
      v38 = vaddq_f32(v37, vmulq_f32(v32, v33));
      v39 = vaddq_f32(v37, vmulq_f32(v32, v34));
      v40 = vaddq_f32(v37, vmulq_f32(v32, v35));
      v41 = vaddq_f32(v37, vmulq_f32(v32, v36));
      v43 = *(v24 + 64);
      v42 = *(v24 + 80);
      v44 = vmaxq_f32(v38, v43);
      v45 = vmaxq_f32(v39, v43);
      v46 = vmaxq_f32(v40, v43);
      v47 = vmaxq_f32(v41, v43);
      v44.i32[0] = vminq_f32(v44, v42).u32[0];
      v45.i32[0] = vminq_f32(v45, v42).u32[0];
      v41.i32[0] = vminq_f32(v46, v42).u32[0];
      v44.i32[1] = 0.5;
      v45.i32[1] = 0.5;
      v46.i32[0] = vminq_f32(v47, v42).u32[0];
      v41.i32[1] = 0.5;
      v46.i32[1] = 0.5;
      v48 = a2[10];
      v49 = a2[11].i32[0];
      *v44.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v44.f32), 0xBF000000BF000000), 0), v14);
      *v47.f32 = vcvt_s32_f32(vmin_f32(*v44.f32, v15));
      v50 = vmax_f32(vadd_f32(vmul_f32(v6, *v45.f32), 0xBF000000BF000000), 0);
      *v45.f32 = vsub_f32(*v44.f32, vcvt_f32_s32(*v47.f32));
      *v44.f32 = vmin_f32(v50, v14);
      v51 = vcvt_s32_f32(vmin_f32(*v44.f32, v15));
      *v44.f32 = vsub_f32(*v44.f32, vcvt_f32_s32(v51));
      *v42.f32 = vdup_n_s32(v49);
      *v47.f32 = vmla_s32(vzip1_s32(*v47.f32, v51), vzip2_s32(*v47.f32, v51), *v42.f32);
      v52 = (*&v48 + 16 * v47.i32[0]);
      v49 *= 16;
      v53 = (*&v48 + 16 * v47.i32[1]);
      *v41.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v41.f32), 0xBF000000BF000000), 0), v14);
      v54 = vcvt_s32_f32(vmin_f32(*v41.f32, v15));
      *v41.f32 = vsub_f32(*v41.f32, vcvt_f32_s32(v54));
      v55 = vaddq_f32(*v52, vmulq_n_f32(vsubq_f32(v52[1], *v52), v45.f32[0]));
      *v46.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v46.f32), 0xBF000000BF000000), 0), v14);
      v56 = vcvt_s32_f32(vmin_f32(*v46.f32, v15));
      *v46.f32 = vsub_f32(*v46.f32, vcvt_f32_s32(v56));
      v57 = vaddq_f32(*v53, vmulq_n_f32(vsubq_f32(v53[1], *v53), v44.f32[0]));
      v58 = (v53 + v49);
      v59 = vmla_s32(vzip1_s32(v54, v56), vzip2_s32(v54, v56), *v42.f32);
      v60 = *v58;
      v61 = vsubq_f32(vaddq_f32(*(v52 + v49), vmulq_n_f32(vsubq_f32(*(v52 + v49 + 16), *(v52 + v49)), v45.f32[0])), v55);
      v62 = vmulq_n_f32(vsubq_f32(v58[1], *v58), v44.f32[0]);
      LODWORD(v58) = v59.i32[1];
      v63 = (*&v48 + 16 * v59.i32[0]);
      v64 = vaddq_f32(*v63, vmulq_n_f32(vsubq_f32(v63[1], *v63), v41.f32[0]));
      v65 = vaddq_f32(v55, vmulq_lane_f32(v61, *v45.f32, 1));
      v66 = (*&v48 + 16 * v58);
      v67 = vaddq_f32(v57, vmulq_lane_f32(vsubq_f32(vaddq_f32(v60, v62), v57), *v44.f32, 1));
      v68 = vaddq_f32(*v66, vmulq_n_f32(vsubq_f32(v66[1], *v66), v46.f32[0]));
      v69 = vaddq_f32(v64, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v63 + v49), vmulq_n_f32(vsubq_f32(*(v63 + v49 + 16), *(v63 + v49)), v41.f32[0])), v64), *v41.f32, 1));
      v70 = vaddq_f32(v68, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v66 + v49), vmulq_n_f32(vsubq_f32(*(v66 + v49 + 16), *(v66 + v49)), v46.f32[0])), v68), *v46.f32, 1));
      v71 = *(v24 + 96);
      v19[-2] = vbslq_s8(v71, v65, vmulq_laneq_f32(v65, v65, 3));
      v19[-1] = vbslq_s8(v71, v67, vmulq_laneq_f32(v67, v67, 3));
      *v19 = vbslq_s8(v71, v69, vmulq_laneq_f32(v69, v69, 3));
      v19[1] = vbslq_s8(v71, v70, vmulq_laneq_f32(v70, v70, 3));
      v19 += 4;
      v21 = vaddq_f32(v25, xmmword_2603429B0);
      v20 -= 4;
      v18 += 4;
    }

    while (v20 > 3);
    if (v18 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v72 = *(this + 51);
      v73 = vmulq_f32(*(v72 + 16), vsubq_f32(v21, *v72));
      v73.i32[0] = vminq_f32(vmaxq_f32(vaddq_f32(vrev64q_s32(*(v72 + 48)), vmulq_f32(*(v72 + 48), vmulq_f32(*(v72 + 32), vaddq_f32(vextq_s8(v73, v73, 8uLL), vaddq_f32(v73, vrev64q_s32(v73)))))), *(v72 + 64)), *(v72 + 80)).u32[0];
      v73.i32[1] = 0.5;
      *v73.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, *v73.f32), 0xBF000000BF000000), 0), v14);
      v74 = a2[11].i32[0];
      v75 = vcvt_s32_f32(vmin_f32(*v73.f32, v15));
      *v73.f32 = vsub_f32(*v73.f32, vcvt_f32_s32(v75));
      v76 = (*&a2[10] + 16 * (v75.i32[0] + v75.i32[1] * v74));
      v77 = vaddq_f32(*v76, vmulq_n_f32(vsubq_f32(v76[1], *v76), v73.f32[0]));
      v78 = vaddq_f32(v77, vmulq_lane_f32(vsubq_f32(vaddq_f32(v76[v74], vmulq_n_f32(vsubq_f32(v76[v74 + 1], v76[v74]), v73.f32[0])), v77), *v73.f32, 1));
      *(*&v7 + 16 * v18) = vbslq_s8(*(v72 + 96), v78, vmulq_laneq_f32(v78, v78, 3));
      v21 = vaddq_f32(v21, xmmword_2603429B0);
      ++v18;
    }

    while (v18 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcGradientLinearIdentity::GetDOD(HgcGradientLinearIdentity *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcGradientLinearIdentity::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientLinearIdentity::HgcGradientLinearIdentity(HgcGradientLinearIdentity *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872310F8;
  operator new();
}

void HgcGradientLinearIdentity::~HgcGradientLinearIdentity(HgcGradientLinearIdentity *this)
{
  *this = &unk_2872310F8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGradientLinearIdentity::~HgcGradientLinearIdentity(HGNode *this)
{
  *this = &unk_2872310F8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGradientLinearIdentity::SetParameter(HgcGradientLinearIdentity *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientLinearIdentity::GetParameter(HgcGradientLinearIdentity *this, unsigned int a2, float *a3)
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

const char *HgcGradientRadialAffine::GetProgram(HgcGradientRadialAffine *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000579\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(half4(hg_Params[3]), half4(frag._texCoord0));\n    r0.y = dot(half4(hg_Params[4]), half4(frag._texCoord0));\n    s0.xyz = float3(r0.xyz) - hg_Params[1].xyz;\n    s0.x = s0.x*hg_Params[0].x;\n    s0.xy = float2(dot(s0.xyz, s0.xyz));\n    s0.xy = sqrt(s0.xy);\n    s1.xy = s0.xy*hg_Params[2].ww;\n    s1.xy = fmin(s1.xy, float2(c0.xx));\n    s1.xy = s1.xy*hg_Params[5].xy;\n    s1.xy = fmax(s1.xy, float2(c0.yy));\n    s2.xy = hg_Params[5].xy - float2(c0.yy);\n    s1.xy = fmin(s1.xy, s2.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    r0.xyz = r0.xyz*r0.www;\n    r1.x = half(hg_Params[2].x) - c0.y;\n    r1.x = fmax(r1.x, c0.z);\n    s0.x = clamp(s0.x - float(r1.x), 0.00000f, 1.00000f);\n    s0 = float4(r0)*-s0.xxxx + float4(r0);\n    output.color0 = select(s0, float4(r0), hg_Params[2].yyyy == 0.00000h);\n    return output;\n}\n//MD5=686d5007:b53467b8:2344a822:939db735\n//SIG=00400000:00000000:00000000:00000001:0001:0006:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000501\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_Params[3], frag._texCoord0);\n    r0.y = dot(hg_Params[4], frag._texCoord0);\n    r0.xyz = r0.xyz - hg_Params[1].xyz;\n    r0.x = r0.x*hg_Params[0].x;\n    r0.xy = float2(dot(r0.xyz, r0.xyz));\n    r0.xy = sqrt(r0.xy);\n    r1.xy = r0.xy*hg_Params[2].ww;\n    r1.xy = fmin(r1.xy, c0.xx);\n    r1.xy = r1.xy*hg_Params[5].xy;\n    r1.xy = fmax(r1.xy, c0.yy);\n    r2.xy = hg_Params[5].xy - c0.yy;\n    r1.xy = fmin(r1.xy, r2.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    r2.x = hg_Params[2].x - c0.y;\n    r2.x = fmax(r2.x, c0.z);\n    r2.x = clamp(r0.x - r2.x, 0.00000f, 1.00000f);\n    r2 = r1*-r2.xxxx + r1;\n    output.color0 = select(r2, r1, hg_Params[2].yyyy == 0.00000f);\n    return output;\n}\n//MD5=d5e6b64b:323bc96d:e3898f43:70f17049\n//SIG=00000000:00000000:00000000:00000000:0001:0006:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005c1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_ProgramLocal3, hg_TexCoord0);\n    r0.y = dot(hg_ProgramLocal4, hg_TexCoord0);\n    r0.xyz = r0.xyz - hg_ProgramLocal1.xyz;\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    r0.xy = vec2(dot(r0.xyz, r0.xyz));\n    r0.xy = sqrt(r0.xy);\n    r1.xy = r0.xy*hg_ProgramLocal2.ww;\n    r1.xy = min(r1.xy, c0.xx);\n    r1.xy = hg_ProgramLocal5.xy*c0.zz + r1.xy;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    r2.x = hg_ProgramLocal2.x - c0.y;\n    r2.x = max(r2.x, c0.z);\n    r2.x = clamp(r0.x - r2.x, 0.00000, 1.00000);\n    r2 = r1*-r2.xxxx + r1;\n    gl_FragColor = vec4(hg_ProgramLocal2.y == 0.00000 ? r1.x : r2.x, hg_ProgramLocal2.y == 0.00000 ? r1.y : r2.y, hg_ProgramLocal2.y == 0.00000 ? r1.z : r2.z, hg_ProgramLocal2.y == 0.00000 ? r1.w : r2.w);\n}\n//MD5=c9df8185:4b2e9f5c:f34b2e0b:0cf74b2f\n//SIG=00000000:00000000:00000000:00000000:0001:0006:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDE7BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE7C18(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE7C10);
}

uint64_t HgcGradientRadialAffine::BindTexture(HgcGradientRadialAffine *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 5, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcGradientRadialAffine::Bind(HgcGradientRadialAffine *this, HGHandler *a2)
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

uint64_t HgcGradientRadialAffine::RenderTile(HgcGradientRadialAffine *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
    v7 = a2[2];
    *v8.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v8.i64[1] = 0x3F80000000000000;
    __asm { FMOV            V3.2S, #-1.0 }

    v14 = vadd_f32(v6, _D3);
    v15 = vadd_f32(v14, _D3);
    v16 = (*&v7 + 32);
    v17 = 16 * a2[3].i32[0];
    while (v5 < 4)
    {
      v18 = 0;
      v21 = v8;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      v16 = (v16 + v17);
      *&v7 += v17;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v18 = 0;
    v19 = v16;
    v20 = v5;
    v21 = v8;
    do
    {
      v22 = vaddq_f32(v21, xmmword_2603429B0);
      v23 = vaddq_f32(v22, xmmword_2603429B0);
      v24 = *(this + 51);
      v25 = *(v24 + 32);
      v26 = *(v24 + 48);
      v27 = vaddq_f32(v23, xmmword_2603429B0);
      v28 = vmulq_f32(v21, v26);
      v29 = vmulq_f32(v22, v26);
      v30 = vmulq_f32(v23, v26);
      v31 = vmulq_f32(v27, v26);
      v32 = vaddq_f32(v28, vextq_s8(v28, v28, 4uLL));
      v33 = vaddq_f32(v29, vextq_s8(v29, v29, 4uLL));
      v34 = vaddq_f32(v30, vextq_s8(v30, v30, 4uLL));
      v35 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
      *v32.i8 = vadd_f32(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
      *v33.i8 = vadd_f32(*v33.i8, *&vextq_s8(v33, v33, 8uLL));
      v37 = *(v24 + 64);
      v36 = *(v24 + 80);
      v38 = vmulq_f32(v21, v37);
      v39 = vmulq_f32(v22, v37);
      v40 = vmulq_f32(v23, v37);
      v41 = vmulq_f32(v27, v37);
      *v34.i8 = vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL));
      v42 = vaddq_f32(v38, vextq_s8(v38, v38, 4uLL));
      v43 = vaddq_f32(v39, vextq_s8(v39, v39, 4uLL));
      v44 = vaddq_f32(v40, vextq_s8(v40, v40, 4uLL));
      v45 = vaddq_f32(v41, vextq_s8(v41, v41, 4uLL));
      *v35.i8 = vadd_f32(*v35.i8, *&vextq_s8(v35, v35, 8uLL));
      v46 = vbslq_s8(v36, vaddq_f32(v42, vextq_s8(v42, v42, 8uLL)), v32);
      v47 = vbslq_s8(v36, vaddq_f32(v44, vextq_s8(v44, v44, 8uLL)), v34);
      v48 = *(v24 + 16);
      v49 = vsubq_f32(v46, v48);
      v50 = vsubq_f32(vbslq_s8(v36, vaddq_f32(v43, vextq_s8(v43, v43, 8uLL)), v33), v48);
      v51 = vsubq_f32(v47, v48);
      v52 = vsubq_f32(vbslq_s8(v36, vaddq_f32(v45, vextq_s8(v45, v45, 8uLL)), v35), v48);
      v54 = *(v24 + 96);
      v53 = *(v24 + 112);
      v55 = vbslq_s8(v54, vmulq_f32(*v24, v49), v49);
      v56 = vbslq_s8(v54, vmulq_f32(*v24, v50), v50);
      v57 = vbslq_s8(v54, vmulq_f32(*v24, v51), v51);
      v58 = vbslq_s8(v54, vmulq_f32(*v24, v52), v52);
      v59 = vmulq_f32(v55, v55);
      v60 = vmulq_f32(v56, v56);
      v61 = vmulq_f32(v57, v57);
      v62 = vmulq_f32(v58, v58);
      v63 = vaddq_f32(vdupq_laneq_s32(v59, 2), vaddq_f32(vdupq_lane_s32(*v59.i8, 0), vdupq_lane_s32(*v59.i8, 1)));
      v64 = vaddq_f32(vdupq_laneq_s32(v60, 2), vaddq_f32(vdupq_lane_s32(*v60.i8, 0), vdupq_lane_s32(*v60.i8, 1)));
      v65 = vaddq_f32(vdupq_laneq_s32(v61, 2), vaddq_f32(vdupq_lane_s32(*v61.i8, 0), vdupq_lane_s32(*v61.i8, 1)));
      v66 = vaddq_f32(vdupq_laneq_s32(v62, 2), vaddq_f32(vdupq_lane_s32(*v62.i8, 0), vdupq_lane_s32(*v62.i8, 1)));
      v67 = vminq_f32(vrsqrteq_f32(v63), v53);
      v68 = vminq_f32(vrsqrteq_f32(v64), v53);
      v69 = vminq_f32(vrsqrteq_f32(v65), v53);
      v70 = vminq_f32(vrsqrteq_f32(v66), v53);
      v71 = vminq_f32(vmulq_f32(v67, vrsqrtsq_f32(vmulq_f32(v67, v63), v67)), v53);
      v72 = vminq_f32(vmulq_f32(v68, vrsqrtsq_f32(vmulq_f32(v68, v64), v68)), v53);
      v73 = vminq_f32(vmulq_f32(v69, vrsqrtsq_f32(vmulq_f32(v69, v65), v69)), v53);
      v74 = vminq_f32(vmulq_f32(v70, vrsqrtsq_f32(vmulq_f32(v70, v66), v70)), v53);
      v75 = vmulq_f32(v63, vminq_f32(vmulq_f32(v71, vrsqrtsq_f32(vmulq_f32(v71, v63), v71)), v53));
      v76 = vmulq_f32(v64, vminq_f32(vmulq_f32(v72, vrsqrtsq_f32(vmulq_f32(v72, v64), v72)), v53));
      v77 = vmulq_f32(v65, vminq_f32(vmulq_f32(v73, vrsqrtsq_f32(vmulq_f32(v73, v65), v73)), v53));
      v78 = a2[10];
      v79 = vmulq_f32(v66, vminq_f32(vmulq_f32(v74, vrsqrtsq_f32(vmulq_f32(v66, v74), v74)), v53));
      v80 = a2[11].i32[0];
      v81 = *(v24 + 128);
      v82 = *(v24 + 144);
      *v65.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v75.f32, v25, 3), *v81.f32)), 0xBF000000BF000000), 0), v14);
      *v66.f32 = vcvt_s32_f32(vmin_f32(*v65.f32, v15));
      *v74.f32 = vsub_f32(*v65.f32, vcvt_f32_s32(*v66.f32));
      *v65.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v76.f32, v25, 3), *v81.f32)), 0xBF000000BF000000), 0), v14);
      *v54.i8 = vcvt_s32_f32(vmin_f32(*v65.f32, v15));
      *v65.f32 = vsub_f32(*v65.f32, vcvt_f32_s32(*v54.i8));
      v83 = vdup_n_s32(v80);
      *v66.f32 = vmla_s32(vzip1_s32(*v66.f32, *v54.i8), vzip2_s32(*v66.f32, *v54.i8), v83);
      v84 = (*&v78 + 16 * v66.i32[0]);
      v80 *= 16;
      v85 = (*&v78 + 16 * v66.i32[1]);
      v86 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v77.f32, v25, 3), *v81.f32)), 0xBF000000BF000000), 0), v14);
      v87 = vcvt_s32_f32(vmin_f32(v86, v15));
      v88 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v79.f32, v25, 3), *v81.f32)), 0xBF000000BF000000), 0), v14);
      v89 = vcvt_s32_f32(vmin_f32(v88, v15));
      v90 = vaddq_f32(*v84, vmulq_n_f32(vsubq_f32(v84[1], *v84), v74.f32[0]));
      v91 = vmla_s32(vzip1_s32(v87, v89), vzip2_s32(v87, v89), v83);
      v92 = vsub_f32(v86, vcvt_f32_s32(v87));
      v93 = vaddq_f32(*v85, vmulq_n_f32(vsubq_f32(v85[1], *v85), v65.f32[0]));
      v94 = vsub_f32(v88, vcvt_f32_s32(v89));
      v95 = vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v84 + v80), vmulq_n_f32(vsubq_f32(*(v84 + v80 + 16), *(v84 + v80)), v74.f32[0])), v90), *v74.f32, 1);
      v96 = (*&v78 + 16 * v91.i32[0]);
      v97 = vaddq_f32(v90, v95);
      v98 = vaddq_f32(*v96, vmulq_n_f32(vsubq_f32(v96[1], *v96), v92.f32[0]));
      v99 = (*&v78 + 16 * v91.i32[1]);
      v100 = vaddq_f32(*v99, vmulq_n_f32(vsubq_f32(v99[1], *v99), v94.f32[0]));
      v101 = vaddq_f32(v93, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v85 + v80), vmulq_n_f32(vsubq_f32(*(v85 + v80 + 16), *(v85 + v80)), v65.f32[0])), v93), *v65.f32, 1));
      v102 = vaddq_f32(v98, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v96 + v80), vmulq_n_f32(vsubq_f32(*(v96 + v80 + 16), *(v96 + v80)), v92.f32[0])), v98), v92, 1));
      v103 = vaddq_f32(v100, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v99 + v80), vmulq_n_f32(vsubq_f32(*(v99 + v80 + 16), *(v99 + v80)), v94.f32[0])), v100), v94, 1));
      v104 = vbslq_s8(v82, v97, vmulq_laneq_f32(v97, v97, 3));
      v105 = *(v24 + 176);
      v106 = vbslq_s8(v82, v101, vmulq_laneq_f32(v101, v101, 3));
      v107 = vmaxq_f32(vsubq_f32(v25, *(v24 + 160)), v105);
      v108 = vbslq_s8(v82, v102, vmulq_laneq_f32(v102, v102, 3));
      v109 = vbslq_s8(v82, v103, vmulq_laneq_f32(v103, v103, 3));
      v110 = vcgtq_f32(vandq_s8(v81, vceqq_f32(vdupq_lane_s32(*v25.f32, 1), v105)), v105);
      v19[-2] = vbslq_s8(v110, v104, vsubq_f32(v104, vmulq_n_f32(v104, vminq_f32(vmaxq_f32(vsubq_f32(v75, v107), v105), v81).f32[0])));
      v19[-1] = vbslq_s8(v110, v106, vsubq_f32(v106, vmulq_n_f32(v106, vminq_f32(vmaxq_f32(vsubq_f32(v76, v107), v105), v81).f32[0])));
      *v19 = vbslq_s8(v110, v108, vsubq_f32(v108, vmulq_n_f32(v108, vminq_f32(vmaxq_f32(vsubq_f32(v77, v107), v105), v81).f32[0])));
      v19[1] = vbslq_s8(v110, v109, vsubq_f32(v109, vmulq_n_f32(v109, vminq_f32(vmaxq_f32(vsubq_f32(v79, v107), v105), v81).f32[0])));
      v19 += 4;
      v21 = vaddq_f32(v27, xmmword_2603429B0);
      v20 -= 4;
      v18 += 4;
    }

    while (v20 > 3);
    if (v18 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v111 = *(this + 51);
      v112 = *(v111 + 32);
      v113 = vmulq_f32(v21, *(v111 + 48));
      v114 = vaddq_f32(v113, vextq_s8(v113, v113, 4uLL));
      v115 = vmulq_f32(v21, *(v111 + 64));
      v116 = vaddq_f32(v115, vextq_s8(v115, v115, 4uLL));
      *v114.i8 = vadd_f32(*v114.i8, *&vextq_s8(v114, v114, 8uLL));
      v117 = vsubq_f32(vbslq_s8(*(v111 + 80), vaddq_f32(v116, vextq_s8(v116, v116, 8uLL)), v114), *(v111 + 16));
      v118 = *(v111 + 112);
      v119 = vbslq_s8(*(v111 + 96), vmulq_f32(*v111, v117), v117);
      v120 = vmulq_f32(v119, v119);
      v121 = vaddq_f32(vdupq_laneq_s32(v120, 2), vaddq_f32(vdupq_lane_s32(*v120.i8, 0), vdupq_lane_s32(*v120.i8, 1)));
      v122 = vminq_f32(vrsqrteq_f32(v121), v118);
      v123 = vminq_f32(vmulq_f32(v122, vrsqrtsq_f32(vmulq_f32(v122, v121), v122)), v118);
      v124 = vmulq_f32(vminq_f32(vmulq_f32(v123, vrsqrtsq_f32(vmulq_f32(v123, v121), v123)), v118), v121);
      v125 = *(v111 + 128);
      v126 = a2[11].i32[0];
      v127 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v124.f32, v112, 3), *v125.f32)), 0xBF000000BF000000), 0), v14);
      v128 = vcvt_s32_f32(vmin_f32(v127, v15));
      v129 = (*&a2[10] + 16 * (v128.i32[0] + v128.i32[1] * v126));
      v130 = vsub_f32(v127, vcvt_f32_s32(v128));
      v131 = vaddq_f32(*v129, vmulq_n_f32(vsubq_f32(v129[1], *v129), v130.f32[0]));
      v132 = vaddq_f32(v131, vmulq_lane_f32(vsubq_f32(vaddq_f32(v129[v126], vmulq_n_f32(vsubq_f32(v129[v126 + 1], v129[v126]), v130.f32[0])), v131), v130, 1));
      v133 = vbslq_s8(*(v111 + 144), v132, vmulq_laneq_f32(v132, v132, 3));
      *(*&v7 + 16 * v18) = vbslq_s8(vcgtq_f32(vandq_s8(v125, vceqq_f32(vdupq_lane_s32(*v112.f32, 1), *(v111 + 176))), *(v111 + 176)), v133, vsubq_f32(v133, vmulq_n_f32(v133, vminq_f32(vmaxq_f32(vsubq_f32(v124, vmaxq_f32(vsubq_f32(v112, *(v111 + 160)), *(v111 + 176))), *(v111 + 176)), v125).f32[0])));
      v21 = vaddq_f32(v21, xmmword_2603429B0);
      ++v18;
    }

    while (v18 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcGradientRadialAffine::GetDOD(HgcGradientRadialAffine *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcGradientRadialAffine::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientRadialAffine::HgcGradientRadialAffine(HgcGradientRadialAffine *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287231360;
  operator new();
}

void HgcGradientRadialAffine::~HgcGradientRadialAffine(HgcGradientRadialAffine *this)
{
  *this = &unk_287231360;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C408070C27FLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGradientRadialAffine::~HgcGradientRadialAffine(HGNode *this)
{
  *this = &unk_287231360;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGradientRadialAffine::SetParameter(HgcGradientRadialAffine *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientRadialAffine::GetParameter(HgcGradientRadialAffine *this, unsigned int a2, float *a3)
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

const char *HgcGradientRadialIdentity::GetProgram(HgcGradientRadialIdentity *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xyz = frag._texCoord0.xyz - hg_Params[1].xyz;\n    s0.x = s0.x*hg_Params[0].x;\n    s0.xy = float2(dot(s0.xyz, s0.xyz));\n    s0.xy = sqrt(s0.xy);\n    s1.xy = s0.xy*hg_Params[2].ww;\n    s1.xy = fmin(s1.xy, float2(c0.xx));\n    s1.xy = s1.xy*hg_Params[3].xy;\n    s1.xy = fmax(s1.xy, float2(c0.yy));\n    s2.xy = hg_Params[3].xy - float2(c0.yy);\n    s1.xy = fmin(s1.xy, s2.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    r0.xyz = r0.xyz*r0.www;\n    r1.x = half(hg_Params[2].x) - c0.y;\n    r1.x = fmax(r1.x, c0.z);\n    s0.x = clamp(s0.x - float(r1.x), 0.00000f, 1.00000f);\n    s0 = float4(r0)*-s0.xxxx + float4(r0);\n    output.color0 = select(s0, float4(r0), hg_Params[2].yyyy == 0.00000h);\n    return output;\n}\n//MD5=c95cbf95:9c3091f5:7f2eee20:db8d59e4\n//SIG=00400000:00000000:00000000:00000001:0001:0004:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000049f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xyz = frag._texCoord0.xyz - hg_Params[1].xyz;\n    r0.x = r0.x*hg_Params[0].x;\n    r0.xy = float2(dot(r0.xyz, r0.xyz));\n    r0.xy = sqrt(r0.xy);\n    r1.xy = r0.xy*hg_Params[2].ww;\n    r1.xy = fmin(r1.xy, c0.xx);\n    r1.xy = r1.xy*hg_Params[3].xy;\n    r1.xy = fmax(r1.xy, c0.yy);\n    r2.xy = hg_Params[3].xy - c0.yy;\n    r1.xy = fmin(r1.xy, r2.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    r2.x = hg_Params[2].x - c0.y;\n    r2.x = fmax(r2.x, c0.z);\n    r2.x = clamp(r0.x - r2.x, 0.00000f, 1.00000f);\n    r2 = r1*-r2.xxxx + r1;\n    output.color0 = select(r2, r1, hg_Params[2].yyyy == 0.00000f);\n    return output;\n}\n//MD5=fbc4a517:d5b8985a:eb4412b3:5f5c023b\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000510\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 0.5000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xyz = hg_TexCoord0.xyz - hg_ProgramLocal1.xyz;\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    r0.xy = vec2(dot(r0.xyz, r0.xyz));\n    r0.xy = sqrt(r0.xy);\n    r1.xy = r0.xy*hg_ProgramLocal2.ww;\n    r1.xy = min(r1.xy, c0.xx);\n    r1.xy = hg_ProgramLocal3.xy*c0.yy + r1.xy;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    r2.x = hg_ProgramLocal2.x - c0.z;\n    r2.x = max(r2.x, c0.y);\n    r2.x = clamp(r0.x - r2.x, 0.00000, 1.00000);\n    r2 = r1*-r2.xxxx + r1;\n    gl_FragColor = vec4(hg_ProgramLocal2.y == 0.00000 ? r1.x : r2.x, hg_ProgramLocal2.y == 0.00000 ? r1.y : r2.y, hg_ProgramLocal2.y == 0.00000 ? r1.z : r2.z, hg_ProgramLocal2.y == 0.00000 ? r1.w : r2.w);\n}\n//MD5=a69acbca:061caa14:e70c4662:94856247\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDE8D14(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE8D4C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE8D44);
}

uint64_t HgcGradientRadialIdentity::BindTexture(HgcGradientRadialIdentity *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 3, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcGradientRadialIdentity::Bind(HgcGradientRadialIdentity *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcGradientRadialIdentity::RenderTile(HgcGradientRadialIdentity *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
    v7 = a2[2];
    *v8.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v8.i64[1] = 0x3F80000000000000;
    __asm { FMOV            V3.2S, #-1.0 }

    v14 = vadd_f32(v6, _D3);
    v15 = vadd_f32(v14, _D3);
    v16 = (*&v7 + 32);
    v17 = 16 * a2[3].i32[0];
    while (v5 < 4)
    {
      v18 = 0;
      v21 = v8;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      v16 = (v16 + v17);
      *&v7 += v17;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v18 = 0;
    v19 = v16;
    v20 = v5;
    v21 = v8;
    do
    {
      v22 = vaddq_f32(v21, xmmword_2603429B0);
      v23 = vaddq_f32(v22, xmmword_2603429B0);
      v24 = vaddq_f32(v23, xmmword_2603429B0);
      v25 = *(this + 51);
      v26 = *(v25 + 16);
      v27 = vsubq_f32(v21, v26);
      v28 = vsubq_f32(v22, v26);
      v29 = vsubq_f32(v23, v26);
      v30 = vsubq_f32(v24, v26);
      v31 = *(v25 + 32);
      v32 = *(v25 + 48);
      v33 = vbslq_s8(v32, vmulq_f32(v27, *v25), v27);
      v34 = vbslq_s8(v32, vmulq_f32(v28, *v25), v28);
      v35 = vbslq_s8(v32, vmulq_f32(v29, *v25), v29);
      v36 = vbslq_s8(v32, vmulq_f32(v30, *v25), v30);
      v37 = vmulq_f32(v33, v33);
      v38 = vmulq_f32(v34, v34);
      v39 = vmulq_f32(v35, v35);
      v40 = vmulq_f32(v36, v36);
      v41 = vaddq_f32(vdupq_laneq_s32(v37, 2), vaddq_f32(vdupq_lane_s32(*v37.i8, 0), vdupq_lane_s32(*v37.i8, 1)));
      v42 = vaddq_f32(vdupq_laneq_s32(v38, 2), vaddq_f32(vdupq_lane_s32(*v38.i8, 0), vdupq_lane_s32(*v38.i8, 1)));
      v43 = vaddq_f32(vdupq_laneq_s32(v39, 2), vaddq_f32(vdupq_lane_s32(*v39.i8, 0), vdupq_lane_s32(*v39.i8, 1)));
      v44 = vaddq_f32(vdupq_laneq_s32(v40, 2), vaddq_f32(vdupq_lane_s32(*v40.i8, 0), vdupq_lane_s32(*v40.i8, 1)));
      v46 = *(v25 + 64);
      v45 = *(v25 + 80);
      v47 = vminq_f32(vrsqrteq_f32(v41), v46);
      v48 = vminq_f32(vrsqrteq_f32(v42), v46);
      v49 = vminq_f32(vrsqrteq_f32(v43), v46);
      v50 = vminq_f32(vrsqrteq_f32(v44), v46);
      v51 = vminq_f32(vmulq_f32(v47, vrsqrtsq_f32(vmulq_f32(v47, v41), v47)), v46);
      v52 = vminq_f32(vmulq_f32(v48, vrsqrtsq_f32(vmulq_f32(v48, v42), v48)), v46);
      v53 = vminq_f32(vmulq_f32(v49, vrsqrtsq_f32(vmulq_f32(v49, v43), v49)), v46);
      v54 = vminq_f32(vmulq_f32(v50, vrsqrtsq_f32(vmulq_f32(v44, v50), v50)), v46);
      v55 = vmulq_f32(v41, vminq_f32(vmulq_f32(v51, vrsqrtsq_f32(vmulq_f32(v41, v51), v51)), v46));
      v56 = vmulq_f32(v42, vminq_f32(vmulq_f32(v52, vrsqrtsq_f32(vmulq_f32(v42, v52), v52)), v46));
      v57 = vmulq_f32(v43, vminq_f32(vmulq_f32(v53, vrsqrtsq_f32(vmulq_f32(v43, v53), v53)), v46));
      v58 = vmulq_f32(v44, vminq_f32(vmulq_f32(v54, vrsqrtsq_f32(vmulq_f32(v44, v54), v54)), v46));
      v59 = a2[10];
      v60 = a2[11].i32[0];
      *v42.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v55.f32, v31, 3), *v45.f32)), 0xBF000000BF000000), 0), v14);
      *v54.f32 = vcvt_s32_f32(vmin_f32(*v42.f32, v15));
      *v46.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v56.f32, v31, 3), *v45.f32)), 0xBF000000BF000000), 0), v14);
      *v43.f32 = vsub_f32(*v42.f32, vcvt_f32_s32(*v54.f32));
      v61 = vcvt_s32_f32(vmin_f32(*v46.f32, v15));
      *v44.f32 = vdup_n_s32(v60);
      *v42.f32 = vsub_f32(*v46.f32, vcvt_f32_s32(v61));
      *v54.f32 = vmla_s32(vzip1_s32(*v54.f32, v61), vzip2_s32(*v54.f32, v61), *v44.f32);
      v62 = (*&v59 + 16 * v54.i32[0]);
      v60 *= 16;
      v63 = (*&v59 + 16 * v54.i32[1]);
      v64 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v57.f32, v31, 3), *v45.f32)), 0xBF000000BF000000), 0), v14);
      v65 = vcvt_s32_f32(vmin_f32(v64, v15));
      *v54.f32 = vsub_f32(v64, vcvt_f32_s32(v65));
      v66 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v58.f32, v31, 3), *v45.f32)), 0xBF000000BF000000), 0), v14);
      v67 = vaddq_f32(*v62, vmulq_n_f32(vsubq_f32(v62[1], *v62), v43.f32[0]));
      v68 = vcvt_s32_f32(vmin_f32(v66, v15));
      *v46.f32 = vsub_f32(v66, vcvt_f32_s32(v68));
      v69 = vaddq_f32(*v63, vmulq_n_f32(vsubq_f32(v63[1], *v63), v42.f32[0]));
      v70 = vmla_s32(vzip1_s32(v65, v68), vzip2_s32(v65, v68), *v44.f32);
      v71 = vsubq_f32(vaddq_f32(*(v62 + v60), vmulq_n_f32(vsubq_f32(*(v62 + v60 + 16), *(v62 + v60)), v43.f32[0])), v67);
      v72 = (*&v59 + 16 * v70.i32[0]);
      v73 = vmulq_lane_f32(v71, *v43.f32, 1);
      v74 = vaddq_f32(*v72, vmulq_n_f32(vsubq_f32(v72[1], *v72), v54.f32[0]));
      v75 = vaddq_f32(v67, v73);
      v76 = (*&v59 + 16 * v70.i32[1]);
      v77 = vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v72 + v60), vmulq_n_f32(vsubq_f32(*(v72 + v60 + 16), *(v72 + v60)), v54.f32[0])), v74), *v54.f32, 1);
      v78 = vaddq_f32(*v76, vmulq_n_f32(vsubq_f32(v76[1], *v76), v46.f32[0]));
      v79 = vaddq_f32(v69, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v63 + v60), vmulq_n_f32(vsubq_f32(*(v63 + v60 + 16), *(v63 + v60)), v42.f32[0])), v69), *v42.f32, 1));
      v80 = vaddq_f32(v74, v77);
      v81 = vaddq_f32(v78, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v76 + v60), vmulq_n_f32(vsubq_f32(*(v76 + v60 + 16), *(v76 + v60)), v46.f32[0])), v78), *v46.f32, 1));
      v82 = *(v25 + 96);
      v83 = vbslq_s8(v82, v75, vmulq_laneq_f32(v75, v75, 3));
      v84 = *(v25 + 128);
      v85 = vbslq_s8(v82, v79, vmulq_laneq_f32(v79, v79, 3));
      v86 = vmaxq_f32(vsubq_f32(v31, *(v25 + 112)), v84);
      v87 = vbslq_s8(v82, v80, vmulq_laneq_f32(v80, v80, 3));
      v88 = vbslq_s8(v82, v81, vmulq_laneq_f32(v81, v81, 3));
      v89 = vcgtq_f32(vandq_s8(v45, vceqq_f32(vdupq_lane_s32(*v31.f32, 1), v84)), v84);
      v19[-2] = vbslq_s8(v89, v83, vsubq_f32(v83, vmulq_n_f32(v83, vminq_f32(vmaxq_f32(vsubq_f32(v55, v86), v84), v45).f32[0])));
      v19[-1] = vbslq_s8(v89, v85, vsubq_f32(v85, vmulq_n_f32(v85, vminq_f32(vmaxq_f32(vsubq_f32(v56, v86), v84), v45).f32[0])));
      *v19 = vbslq_s8(v89, v87, vsubq_f32(v87, vmulq_n_f32(v87, vminq_f32(vmaxq_f32(vsubq_f32(v57, v86), v84), v45).f32[0])));
      v19[1] = vbslq_s8(v89, v88, vsubq_f32(v88, vmulq_n_f32(v88, vminq_f32(vmaxq_f32(vsubq_f32(v58, v86), v84), v45).f32[0])));
      v19 += 4;
      v21 = vaddq_f32(v24, xmmword_2603429B0);
      v20 -= 4;
      v18 += 4;
    }

    while (v20 > 3);
    if (v18 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v90 = *(this + 51);
      v91 = vsubq_f32(v21, *(v90 + 16));
      v92 = *(v90 + 32);
      v93 = vbslq_s8(*(v90 + 48), vmulq_f32(v91, *v90), v91);
      v94 = vmulq_f32(v93, v93);
      v95 = vaddq_f32(vdupq_laneq_s32(v94, 2), vaddq_f32(vdupq_lane_s32(*v94.i8, 0), vdupq_lane_s32(*v94.i8, 1)));
      v97 = *(v90 + 64);
      v96 = *(v90 + 80);
      v98 = vminq_f32(vrsqrteq_f32(v95), v97);
      v99 = vminq_f32(vmulq_f32(v98, vrsqrtsq_f32(vmulq_f32(v98, v95), v98)), v97);
      v100 = vmulq_f32(vminq_f32(vmulq_f32(v99, vrsqrtsq_f32(vmulq_f32(v99, v95), v99)), v97), v95);
      v101 = a2[11].i32[0];
      *v99.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v100.f32, v92, 3), *v96.f32)), 0xBF000000BF000000), 0), v14);
      *v97.f32 = vcvt_s32_f32(vmin_f32(*v99.f32, v15));
      *v99.f32 = vsub_f32(*v99.f32, vcvt_f32_s32(*v97.f32));
      v102 = (*&a2[10] + 16 * (v97.i32[0] + v97.i32[1] * v101));
      v103 = vaddq_f32(*v102, vmulq_n_f32(vsubq_f32(v102[1], *v102), v99.f32[0]));
      v104 = vaddq_f32(v103, vmulq_lane_f32(vsubq_f32(vaddq_f32(v102[v101], vmulq_n_f32(vsubq_f32(v102[v101 + 1], v102[v101]), v99.f32[0])), v103), *v99.f32, 1));
      v105 = vbslq_s8(*(v90 + 96), v104, vmulq_laneq_f32(v104, v104, 3));
      *(*&v7 + 16 * v18) = vbslq_s8(vcgtq_f32(vandq_s8(v96, vceqq_f32(vdupq_lane_s32(*v92.f32, 1), *(v90 + 128))), *(v90 + 128)), v105, vsubq_f32(v105, vmulq_n_f32(v105, vminq_f32(vmaxq_f32(vsubq_f32(v100, vmaxq_f32(vsubq_f32(v92, *(v90 + 112)), *(v90 + 128))), *(v90 + 128)), v96).f32[0])));
      v21 = vaddq_f32(v21, xmmword_2603429B0);
      ++v18;
    }

    while (v18 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcGradientRadialIdentity::GetDOD(HgcGradientRadialIdentity *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcGradientRadialIdentity::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientRadialIdentity::HgcGradientRadialIdentity(HgcGradientRadialIdentity *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2872315C8;
  operator new();
}

void HgcGradientRadialIdentity::~HgcGradientRadialIdentity(HgcGradientRadialIdentity *this)
{
  *this = &unk_2872315C8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40265AC83CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGradientRadialIdentity::~HgcGradientRadialIdentity(HGNode *this)
{
  *this = &unk_2872315C8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGradientRadialIdentity::SetParameter(HgcGradientRadialIdentity *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientRadialIdentity::GetParameter(HgcGradientRadialIdentity *this, unsigned int a2, float *a3)
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

const char *HgcGradientRadialPerspective::GetProgram(HgcGradientRadialPerspective *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005cf\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(half4(hg_Params[3]), half4(frag._texCoord0));\n    r0.y = dot(half4(hg_Params[4]), half4(frag._texCoord0));\n    r0.w = dot(half4(hg_Params[5]), half4(frag._texCoord0));\n    r0.xy = r0.xy/r0.ww;\n    s0.xyz = float3(r0.xyz) - hg_Params[1].xyz;\n    s0.x = s0.x*hg_Params[0].x;\n    s0.xy = float2(dot(s0.xyz, s0.xyz));\n    s0.xy = sqrt(s0.xy);\n    s1.xy = s0.xy*hg_Params[2].ww;\n    s1.xy = fmin(s1.xy, float2(c0.xx));\n    s1.xy = s1.xy*hg_Params[6].xy;\n    s1.xy = fmax(s1.xy, float2(c0.yy));\n    s2.xy = hg_Params[6].xy - float2(c0.yy);\n    s1.xy = fmin(s1.xy, s2.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    r0.xyz = r0.xyz*r0.www;\n    r1.x = half(hg_Params[2].x) - c0.y;\n    r1.x = fmax(r1.x, c0.z);\n    s0.x = clamp(s0.x - float(r1.x), 0.00000f, 1.00000f);\n    s0 = float4(r0)*-s0.xxxx + float4(r0);\n    output.color0 = select(s0, float4(r0), hg_Params[2].yyyy == 0.00000h);\n    return output;\n}\n//MD5=4fc58a1d:f2a56d04:45f3c20f:c91b4cbb\n//SIG=00400000:00000000:00000000:00000001:0001:0007:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000549\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_Params[3], frag._texCoord0);\n    r0.y = dot(hg_Params[4], frag._texCoord0);\n    r0.w = dot(hg_Params[5], frag._texCoord0);\n    r0.xy = r0.xy/r0.ww;\n    r0.xyz = r0.xyz - hg_Params[1].xyz;\n    r0.x = r0.x*hg_Params[0].x;\n    r0.xy = float2(dot(r0.xyz, r0.xyz));\n    r0.xy = sqrt(r0.xy);\n    r1.xy = r0.xy*hg_Params[2].ww;\n    r1.xy = fmin(r1.xy, c0.xx);\n    r1.xy = r1.xy*hg_Params[6].xy;\n    r1.xy = fmax(r1.xy, c0.yy);\n    r2.xy = hg_Params[6].xy - c0.yy;\n    r1.xy = fmin(r1.xy, r2.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    r2.x = hg_Params[2].x - c0.y;\n    r2.x = fmax(r2.x, c0.z);\n    r2.x = clamp(r0.x - r2.x, 0.00000f, 1.00000f);\n    r2 = r1*-r2.xxxx + r1;\n    output.color0 = select(r2, r1, hg_Params[2].yyyy == 0.00000f);\n    return output;\n}\n//MD5=5122a7df:2cdb5da5:cb8625a9:cbdcfae0\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000062f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.z = c0.z;\n    r0.x = dot(hg_ProgramLocal3, hg_TexCoord0);\n    r0.y = dot(hg_ProgramLocal4, hg_TexCoord0);\n    r0.w = dot(hg_ProgramLocal5, hg_TexCoord0);\n    r0.xy = r0.xy/r0.ww;\n    r0.xyz = r0.xyz - hg_ProgramLocal1.xyz;\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    r0.xy = vec2(dot(r0.xyz, r0.xyz));\n    r0.xy = sqrt(r0.xy);\n    r1.xy = r0.xy*hg_ProgramLocal2.ww;\n    r1.xy = min(r1.xy, c0.xx);\n    r1.xy = hg_ProgramLocal6.xy*c0.zz + r1.xy;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    r2.x = hg_ProgramLocal2.x - c0.y;\n    r2.x = max(r2.x, c0.z);\n    r2.x = clamp(r0.x - r2.x, 0.00000, 1.00000);\n    r2 = r1*-r2.xxxx + r1;\n    gl_FragColor = vec4(hg_ProgramLocal2.y == 0.00000 ? r1.x : r2.x, hg_ProgramLocal2.y == 0.00000 ? r1.y : r2.y, hg_ProgramLocal2.y == 0.00000 ? r1.z : r2.z, hg_ProgramLocal2.y == 0.00000 ? r1.w : r2.w);\n}\n//MD5=7d877a02:a9145601:4fed2dba:0c2241bf\n//SIG=00000000:00000000:00000000:00000000:0001:0007:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDE9CD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDE9D0C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDE9D04);
}

uint64_t HgcGradientRadialPerspective::BindTexture(HgcGradientRadialPerspective *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 6, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcGradientRadialPerspective::Bind(HgcGradientRadialPerspective *this, HGHandler *a2)
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

uint64_t HgcGradientRadialPerspective::RenderTile(HgcGradientRadialPerspective *this, int32x2_t *a2)
{
  v2 = *a2;
  v3 = a2[1].i32[1] - HIDWORD(*a2);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = a2[1].i32[0] - v2.i32[0];
    v6 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
    *v7.f32 = vadd_f32(vcvt_f32_s32(v2), 0x3F0000003F000000);
    v7.i64[1] = 0x3F80000000000000;
    v8 = a2[2];
    __asm { FMOV            V3.2S, #-1.0 }

    v14 = vadd_f32(v6, _D3);
    v15 = vadd_f32(v14, _D3);
    v16 = 16 * a2[3].i32[0];
    while (v5 < 3)
    {
      v17 = 0;
      v19 = v7;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 = vaddq_f32(v7, xmmword_2603429C0);
      ++v4;
      *&v8 += v16;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v17 = 0;
    v18 = v5;
    v19 = v7;
    do
    {
      v20 = vaddq_f32(v19, xmmword_2603429B0);
      v21 = vaddq_f32(v20, xmmword_2603429B0);
      v22 = *(this + 51);
      v23 = *(v22 + 32);
      v24 = *(v22 + 48);
      v25 = vmulq_f32(v19, v24);
      v26 = vmulq_f32(v20, v24);
      v27 = vmulq_f32(v21, v24);
      v28 = vaddq_f32(v25, vextq_s8(v25, v25, 4uLL));
      v29 = vaddq_f32(v26, vextq_s8(v26, v26, 4uLL));
      v30 = vaddq_f32(v27, vextq_s8(v27, v27, 4uLL));
      v31 = *(v22 + 64);
      v32 = *(v22 + 80);
      *v28.i8 = vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL));
      v33 = vmulq_f32(v19, v31);
      v34 = vmulq_f32(v20, v31);
      v35 = vmulq_f32(v21, v31);
      *v29.i8 = vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL));
      v36 = vaddq_f32(v33, vextq_s8(v33, v33, 4uLL));
      v37 = vaddq_f32(v34, vextq_s8(v34, v34, 4uLL));
      v38 = vaddq_f32(v35, vextq_s8(v35, v35, 4uLL));
      *v30.i8 = vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL));
      v39 = vmulq_f32(v19, v32);
      v40 = vmulq_f32(v20, v32);
      v41 = vmulq_f32(v21, v32);
      v43 = *(v22 + 96);
      v42 = *(v22 + 112);
      v44 = vbslq_s8(v43, vaddq_f32(v36, vextq_s8(v36, v36, 8uLL)), v28);
      v45 = vaddq_f32(v39, vextq_s8(v39, v39, 4uLL));
      v46 = vaddq_f32(v40, vextq_s8(v40, v40, 4uLL));
      v47 = vaddq_f32(v41, vextq_s8(v41, v41, 4uLL));
      v48 = vbslq_s8(v42, vaddq_f32(v45, vextq_s8(v45, v45, 8uLL)), v44);
      v49 = vbslq_s8(v42, vaddq_f32(v46, vextq_s8(v46, v46, 8uLL)), vbslq_s8(v43, vaddq_f32(v37, vextq_s8(v37, v37, 8uLL)), v29));
      v50 = vbslq_s8(v42, vaddq_f32(v47, vextq_s8(v47, v47, 8uLL)), vbslq_s8(v43, vaddq_f32(v38, vextq_s8(v38, v38, 8uLL)), v30));
      v51 = vdupq_laneq_s32(v48, 3);
      v52 = vdupq_laneq_s32(v49, 3);
      v53 = vdupq_laneq_s32(v50, 3);
      v55 = *(v22 + 128);
      v54 = *(v22 + 144);
      v56 = vminq_f32(vmaxq_f32(vrecpeq_f32(v51), v55), v54);
      v57 = vminq_f32(vmaxq_f32(vrecpeq_f32(v52), v55), v54);
      v58 = vminq_f32(vmaxq_f32(vrecpeq_f32(v53), v55), v54);
      v59 = vminq_f32(vmaxq_f32(vmulq_f32(v56, vrecpsq_f32(v51, v56)), v55), v54);
      v60 = vminq_f32(vmaxq_f32(vmulq_f32(v57, vrecpsq_f32(v52, v57)), v55), v54);
      v61 = vminq_f32(vmaxq_f32(vmulq_f32(v58, vrecpsq_f32(v53, v58)), v55), v54);
      v51.i64[0] = vmulq_f32(vmulq_f32(v59, vrecpsq_f32(v51, v59)), v48).u64[0];
      v52.i64[0] = vmulq_f32(vmulq_f32(v60, vrecpsq_f32(v52, v60)), v49).u64[0];
      v53.i64[0] = vmulq_f32(vmulq_f32(v61, vrecpsq_f32(v53, v61)), v50).u64[0];
      v51.i64[1] = v48.i64[1];
      v52.i64[1] = v49.i64[1];
      v53.i64[1] = v50.i64[1];
      v62 = *(v22 + 16);
      v63 = vsubq_f32(v51, v62);
      v64 = vsubq_f32(v52, v62);
      v65 = vsubq_f32(v53, v62);
      v67 = *(v22 + 160);
      v66 = *(v22 + 176);
      v68 = vbslq_s8(v67, vmulq_f32(*v22, v63), v63);
      v69 = vbslq_s8(v67, vmulq_f32(*v22, v64), v64);
      v70 = vbslq_s8(v67, vmulq_f32(*v22, v65), v65);
      v71 = vmulq_f32(v68, v68);
      v72 = vmulq_f32(v69, v69);
      v73 = vmulq_f32(v70, v70);
      v74 = vaddq_f32(vdupq_laneq_s32(v71, 2), vaddq_f32(vdupq_lane_s32(*v71.i8, 0), vdupq_lane_s32(*v71.i8, 1)));
      v75 = vaddq_f32(vdupq_laneq_s32(v72, 2), vaddq_f32(vdupq_lane_s32(*v72.i8, 0), vdupq_lane_s32(*v72.i8, 1)));
      v76 = vaddq_f32(vdupq_laneq_s32(v73, 2), vaddq_f32(vdupq_lane_s32(*v73.i8, 0), vdupq_lane_s32(*v73.i8, 1)));
      v77 = vminq_f32(vrsqrteq_f32(v74), v54);
      v78 = vminq_f32(vrsqrteq_f32(v75), v54);
      v79 = vminq_f32(vrsqrteq_f32(v76), v54);
      v80 = vminq_f32(vmulq_f32(v77, vrsqrtsq_f32(vmulq_f32(v77, v74), v77)), v54);
      v81 = vminq_f32(vmulq_f32(v78, vrsqrtsq_f32(vmulq_f32(v78, v75), v78)), v54);
      v82 = vminq_f32(vmulq_f32(v79, vrsqrtsq_f32(vmulq_f32(v79, v76), v79)), v54);
      v83 = vmulq_f32(v74, vminq_f32(vmulq_f32(v80, vrsqrtsq_f32(vmulq_f32(v74, v80), v80)), v54));
      v84 = vmulq_f32(v75, vminq_f32(vmulq_f32(v81, vrsqrtsq_f32(vmulq_f32(v75, v81), v81)), v54));
      v85 = vmulq_f32(v76, vminq_f32(vmulq_f32(v82, vrsqrtsq_f32(vmulq_f32(v76, v82), v82)), v54));
      v86 = a2[10];
      v87 = a2[11].i32[0];
      *v75.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v83.f32, v23, 3), *v66.f32)), 0xBF000000BF000000), 0), v14);
      *v81.f32 = vcvt_s32_f32(vmin_f32(*v75.f32, v15));
      *v76.f32 = vsub_f32(*v75.f32, vcvt_f32_s32(*v81.f32));
      *v75.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v84.f32, v23, 3), *v66.f32)), 0xBF000000BF000000), 0), v14);
      *v82.f32 = vcvt_s32_f32(vmin_f32(*v75.f32, v15));
      *v75.f32 = vsub_f32(*v75.f32, vcvt_f32_s32(*v82.f32));
      *v81.f32 = vmla_s32(vzip1_s32(*v81.f32, *v82.f32), vzip2_s32(*v81.f32, *v82.f32), vdup_n_s32(v87));
      v88 = v81.i32[1];
      v89 = (*&v86 + 16 * v81.i32[0]);
      v90 = vaddq_f32(*v89, vmulq_n_f32(vsubq_f32(v89[1], *v89), v76.f32[0]));
      v91 = (*&v86 + 16 * v88);
      v92 = vaddq_f32(*v91, vmulq_n_f32(vsubq_f32(v91[1], *v91), v75.f32[0]));
      *v55.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v85.f32, v23, 3), *v66.f32)), 0xBF000000BF000000), 0), v14);
      v93 = vcvt_s32_f32(vmin_f32(*v55.f32, v15));
      *v82.f32 = vsub_f32(*v55.f32, vcvt_f32_s32(v93));
      v94 = (*&v86 + 16 * (v93.i32[0] + v93.i32[1] * v87));
      v95 = vaddq_f32(v90, vmulq_lane_f32(vsubq_f32(vaddq_f32(v89[v87], vmulq_n_f32(vsubq_f32(v89[v87 + 1], v89[v87]), v76.f32[0])), v90), *v76.f32, 1));
      v96 = vaddq_f32(*v94, vmulq_n_f32(vsubq_f32(v94[1], *v94), v82.f32[0]));
      v97 = vaddq_f32(v92, vmulq_lane_f32(vsubq_f32(vaddq_f32(v91[v87], vmulq_n_f32(vsubq_f32(v91[v87 + 1], v91[v87]), v75.f32[0])), v92), *v75.f32, 1));
      v98 = vaddq_f32(v96, vmulq_lane_f32(vsubq_f32(vaddq_f32(v94[v87], vmulq_n_f32(vsubq_f32(v94[v87 + 1], v94[v87]), v82.f32[0])), v96), *v82.f32, 1));
      v99 = vbslq_s8(v42, v95, vmulq_laneq_f32(v95, v95, 3));
      v100 = *(v22 + 208);
      v101 = vmaxq_f32(vsubq_f32(v23, *(v22 + 192)), v100);
      v102 = vbslq_s8(v42, v98, vmulq_laneq_f32(v98, v98, 3));
      v103 = vbslq_s8(v42, v97, vmulq_laneq_f32(v97, v97, 3));
      v104 = vcgtq_f32(vandq_s8(v66, vceqq_f32(vdupq_lane_s32(*v23.f32, 1), v100)), v100);
      v105 = (*&v8 + 16 * v17);
      *v105 = vbslq_s8(v104, v99, vsubq_f32(v99, vmulq_n_f32(v99, vminq_f32(vmaxq_f32(vsubq_f32(v83, v101), v100), v66).f32[0])));
      v105[1] = vbslq_s8(v104, v103, vsubq_f32(v103, vmulq_n_f32(v103, vminq_f32(vmaxq_f32(vsubq_f32(v84, v101), v100), v66).f32[0])));
      v105[2] = vbslq_s8(v104, v102, vsubq_f32(v102, vmulq_n_f32(v102, vminq_f32(vmaxq_f32(vsubq_f32(v85, v101), v100), v66).f32[0])));
      v19 = vaddq_f32(v21, xmmword_2603429B0);
      v17 += 3;
      v18 -= 3;
    }

    while (v18 > 2);
    v17 = v17;
    if (v17 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v106 = *(this + 51);
      v107 = *(v106 + 32);
      v108 = vmulq_f32(v19, *(v106 + 48));
      v109 = vaddq_f32(v108, vextq_s8(v108, v108, 4uLL));
      v110 = vextq_s8(v109, v109, 8uLL);
      v111 = vmulq_f32(v19, *(v106 + 64));
      *v110.i8 = vadd_f32(*v109.i8, *v110.i8);
      v112 = vaddq_f32(v111, vextq_s8(v111, v111, 4uLL));
      v113 = vaddq_f32(v112, vextq_s8(v112, v112, 8uLL));
      v114 = *(v106 + 112);
      v115 = vbslq_s8(*(v106 + 96), v113, v110);
      v116 = vmulq_f32(v19, *(v106 + 80));
      v117 = vaddq_f32(v116, vextq_s8(v116, v116, 4uLL));
      v118 = vbslq_s8(v114, vaddq_f32(v117, vextq_s8(v117, v117, 8uLL)), v115);
      v119 = vdupq_laneq_s32(v118, 3);
      v120 = *(v106 + 128);
      v121 = *(v106 + 144);
      v122 = vminq_f32(vmaxq_f32(vrecpeq_f32(v119), v120), v121);
      v123 = vminq_f32(vmaxq_f32(vmulq_f32(v122, vrecpsq_f32(v119, v122)), v120), v121);
      v119.i64[0] = vmulq_f32(vmulq_f32(v123, vrecpsq_f32(v119, v123)), v118).u64[0];
      v119.i64[1] = v118.i64[1];
      v124 = vsubq_f32(v119, *(v106 + 16));
      v125 = *(v106 + 176);
      v126 = vbslq_s8(*(v106 + 160), vmulq_f32(*v106, v124), v124);
      v127 = vmulq_f32(v126, v126);
      v128 = vaddq_f32(vdupq_laneq_s32(v127, 2), vaddq_f32(vdupq_lane_s32(*v127.i8, 0), vdupq_lane_s32(*v127.i8, 1)));
      v129 = vminq_f32(vrsqrteq_f32(v128), v121);
      v130 = vminq_f32(vmulq_f32(v129, vrsqrtsq_f32(vmulq_f32(v129, v128), v129)), v121);
      v131 = vmulq_f32(vminq_f32(vmulq_f32(v130, vrsqrtsq_f32(vmulq_f32(v130, v128), v130)), v121), v128);
      v132 = a2[11].i32[0];
      *v130.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v6, vmin_f32(vmul_laneq_f32(*v131.f32, v107, 3), *v125.f32)), 0xBF000000BF000000), 0), v14);
      *v120.f32 = vcvt_s32_f32(vmin_f32(*v130.f32, v15));
      v133 = (*&a2[10] + 16 * (v120.i32[0] + v120.i32[1] * v132));
      *v130.f32 = vsub_f32(*v130.f32, vcvt_f32_s32(*v120.f32));
      v134 = vaddq_f32(*v133, vmulq_n_f32(vsubq_f32(v133[1], *v133), v130.f32[0]));
      v135 = vaddq_f32(v134, vmulq_lane_f32(vsubq_f32(vaddq_f32(v133[v132], vmulq_n_f32(vsubq_f32(v133[v132 + 1], v133[v132]), v130.f32[0])), v134), *v130.f32, 1));
      v136 = vbslq_s8(v114, v135, vmulq_laneq_f32(v135, v135, 3));
      *(*&v8 + 16 * v17) = vbslq_s8(vcgtq_f32(vandq_s8(v125, vceqq_f32(vdupq_lane_s32(*v107.f32, 1), *(v106 + 208))), *(v106 + 208)), v136, vsubq_f32(v136, vmulq_n_f32(v136, vminq_f32(vmaxq_f32(vsubq_f32(v131, vmaxq_f32(vsubq_f32(v107, *(v106 + 192)), *(v106 + 208))), *(v106 + 208)), v125).f32[0])));
      v19 = vaddq_f32(v19, xmmword_2603429B0);
      ++v17;
    }

    while (v17 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcGradientRadialPerspective::GetDOD(HgcGradientRadialPerspective *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcGradientRadialPerspective::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientRadialPerspective::HgcGradientRadialPerspective(HgcGradientRadialPerspective *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287231830;
  operator new();
}

void HgcGradientRadialPerspective::~HgcGradientRadialPerspective(HgcGradientRadialPerspective *this)
{
  *this = &unk_287231830;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C405DF52C91);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGradientRadialPerspective::~HgcGradientRadialPerspective(HGNode *this)
{
  *this = &unk_287231830;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C405DF52C91);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGradientRadialPerspective::SetParameter(HgcGradientRadialPerspective *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientRadialPerspective::GetParameter(HgcGradientRadialPerspective *this, unsigned int a2, float *a3)
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

const char *HgcGradientRadialTranslate::GetProgram(HgcGradientRadialTranslate *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000575\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = half(hg_Params[3].x) + half(frag._texCoord0.x);\n    r0.y = half(hg_Params[4].y) + half(frag._texCoord0.y);\n    s0.xyz = float3(r0.xyz) - hg_Params[1].xyz;\n    s0.x = s0.x*hg_Params[0].x;\n    s0.xy = float2(dot(s0.xyz, s0.xyz));\n    s0.xy = sqrt(s0.xy);\n    s1.xy = s0.xy*hg_Params[2].ww;\n    s1.xy = fmin(s1.xy, float2(c0.xx));\n    s1.xy = s1.xy*hg_Params[5].xy;\n    s1.xy = fmax(s1.xy, float2(c0.yy));\n    s2.xy = hg_Params[5].xy - float2(c0.yy);\n    s1.xy = fmin(s1.xy, s2.xy);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    r0.xyz = r0.xyz*r0.www;\n    r1.x = half(hg_Params[2].x) - c0.y;\n    r1.x = fmax(r1.x, c0.z);\n    s0.x = clamp(s0.x - float(r1.x), 0.00000f, 1.00000f);\n    s0 = float4(r0)*-s0.xxxx + float4(r0);\n    output.color0 = select(s0, float4(r0), hg_Params[2].yyyy == 0.00000h);\n    return output;\n}\n//MD5=1ea05cb7:c3dd4787:6609f856:de1f9da5\n//SIG=00400000:00000000:00000000:00000001:0001:0006:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000501\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.z = c0.z;\n    r0.x = hg_Params[3].x + frag._texCoord0.x;\n    r0.y = hg_Params[4].y + frag._texCoord0.y;\n    r0.xyz = r0.xyz - hg_Params[1].xyz;\n    r0.x = r0.x*hg_Params[0].x;\n    r0.xy = float2(dot(r0.xyz, r0.xyz));\n    r0.xy = sqrt(r0.xy);\n    r1.xy = r0.xy*hg_Params[2].ww;\n    r1.xy = fmin(r1.xy, c0.xx);\n    r1.xy = r1.xy*hg_Params[5].xy;\n    r1.xy = fmax(r1.xy, c0.yy);\n    r2.xy = hg_Params[5].xy - c0.yy;\n    r1.xy = fmin(r1.xy, r2.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    r2.x = hg_Params[2].x - c0.y;\n    r2.x = fmax(r2.x, c0.z);\n    r2.x = clamp(r0.x - r2.x, 0.00000f, 1.00000f);\n    r2 = r1*-r2.xxxx + r1;\n    output.color0 = select(r2, r1, hg_Params[2].yyyy == 0.00000f);\n    return output;\n}\n//MD5=c8bbc548:4c65dde8:81c7f077:a13a6c08\n//SIG=00000000:00000000:00000000:00000000:0001:0006:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005c1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.z = c0.z;\n    r0.x = hg_ProgramLocal3.x + hg_TexCoord0.x;\n    r0.y = hg_ProgramLocal4.y + hg_TexCoord0.y;\n    r0.xyz = r0.xyz - hg_ProgramLocal1.xyz;\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    r0.xy = vec2(dot(r0.xyz, r0.xyz));\n    r0.xy = sqrt(r0.xy);\n    r1.xy = r0.xy*hg_ProgramLocal2.ww;\n    r1.xy = min(r1.xy, c0.xx);\n    r1.xy = hg_ProgramLocal5.xy*c0.zz + r1.xy;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    r2.x = hg_ProgramLocal2.x - c0.y;\n    r2.x = max(r2.x, c0.z);\n    r2.x = clamp(r0.x - r2.x, 0.00000, 1.00000);\n    r2 = r1*-r2.xxxx + r1;\n    gl_FragColor = vec4(hg_ProgramLocal2.y == 0.00000 ? r1.x : r2.x, hg_ProgramLocal2.y == 0.00000 ? r1.y : r2.y, hg_ProgramLocal2.y == 0.00000 ? r1.z : r2.z, hg_ProgramLocal2.y == 0.00000 ? r1.w : r2.w);\n}\n//MD5=97dca451:648d32c1:c6253b89:39206e01\n//SIG=00000000:00000000:00000000:00000000:0001:0006:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDEAE58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDEAE90(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDEAE88);
}

uint64_t HgcGradientRadialTranslate::BindTexture(HgcGradientRadialTranslate *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    return 0xFFFFFFFFLL;
  }

  if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
  {
    (*(*a2 + 72))(a2, 0, 0);
    (*(*a2 + 56))(a2, 0);
  }

  (*(*a2 + 136))(a2, 5, (*(a2 + 49) - *(a2 + 47)), (*(a2 + 50) - *(a2 + 48)), 0.0, 0.0);
  return 0;
}

uint64_t HgcGradientRadialTranslate::Bind(HgcGradientRadialTranslate *this, HGHandler *a2)
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

uint64_t HgcGradientRadialTranslate::RenderTile(HgcGradientRadialTranslate *this, int32x2_t *a2)
{
  v5 = *a2;
  v6 = a2[1].i32[1] - HIDWORD(*a2);
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = a2[1].i32[0] - v5.i32[0];
    v9 = vcvt_f32_s32(vsub_s32(a2[27], a2[26]));
    v10 = a2[2];
    *v11.f32 = vadd_f32(vcvt_f32_s32(v5), 0x3F0000003F000000);
    v11.i64[1] = 0x3F80000000000000;
    __asm { FMOV            V3.2S, #-1.0 }

    v17 = vadd_f32(v9, _D3);
    v18 = vadd_f32(v17, _D3);
    v19 = (*&v10 + 32);
    v20 = 16 * a2[3].i32[0];
    while (v8 < 4)
    {
      v21 = 0;
      v24 = v11;
      if (v8 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v11 = vaddq_f32(v11, xmmword_2603429C0);
      ++v7;
      v19 = (v19 + v20);
      *&v10 += v20;
      if (v7 == v6)
      {
        return 0;
      }
    }

    v21 = 0;
    v22 = v19;
    v23 = v8;
    v24 = v11;
    do
    {
      v25 = vaddq_f32(v24, xmmword_2603429B0);
      v26 = vaddq_f32(v25, xmmword_2603429B0);
      v27 = *(this + 51);
      v28 = vaddq_f32(v26, xmmword_2603429B0);
      v29 = *(v27 + 32);
      v30 = *(v27 + 48);
      *v2.i8 = vadd_f32(*v24.f32, *v30.i8);
      *v3.f32 = vadd_f32(*v25.f32, *v30.i8);
      *v4.f32 = vadd_f32(*v26.f32, *v30.i8);
      *v30.i8 = vadd_f32(*v28.f32, *v30.i8);
      v31 = *(v27 + 64);
      v32 = *(v27 + 80);
      v33 = vbslq_s8(v32, vaddq_f32(v24, v31), v2);
      v34 = vbslq_s8(v32, vaddq_f32(v26, v31), v4);
      v35 = *(v27 + 16);
      v36 = vsubq_f32(v33, v35);
      v37 = vsubq_f32(vbslq_s8(v32, vaddq_f32(v25, v31), v3), v35);
      v38 = vsubq_f32(v34, v35);
      v39 = vsubq_f32(vbslq_s8(v32, vaddq_f32(v28, v31), v30), v35);
      v41 = *(v27 + 96);
      v40 = *(v27 + 112);
      v42 = vbslq_s8(v41, vmulq_f32(*v27, v36), v36);
      v43 = vbslq_s8(v41, vmulq_f32(*v27, v37), v37);
      v44 = vbslq_s8(v41, vmulq_f32(*v27, v38), v38);
      v45 = vbslq_s8(v41, vmulq_f32(*v27, v39), v39);
      v46 = vmulq_f32(v42, v42);
      v47 = vmulq_f32(v43, v43);
      v48 = vmulq_f32(v44, v44);
      v49 = vmulq_f32(v45, v45);
      v50 = vaddq_f32(vdupq_laneq_s32(v46, 2), vaddq_f32(vdupq_lane_s32(*v46.i8, 0), vdupq_lane_s32(*v46.i8, 1)));
      v51 = vaddq_f32(vdupq_laneq_s32(v47, 2), vaddq_f32(vdupq_lane_s32(*v47.i8, 0), vdupq_lane_s32(*v47.i8, 1)));
      v52 = vaddq_f32(vdupq_laneq_s32(v48, 2), vaddq_f32(vdupq_lane_s32(*v48.i8, 0), vdupq_lane_s32(*v48.i8, 1)));
      v53 = vaddq_f32(vdupq_laneq_s32(v49, 2), vaddq_f32(vdupq_lane_s32(*v49.i8, 0), vdupq_lane_s32(*v49.i8, 1)));
      v54 = vminq_f32(vrsqrteq_f32(v50), v40);
      v55 = vminq_f32(vrsqrteq_f32(v51), v40);
      v56 = vminq_f32(vrsqrteq_f32(v52), v40);
      v57 = vminq_f32(vrsqrteq_f32(v53), v40);
      v58 = vminq_f32(vmulq_f32(v54, vrsqrtsq_f32(vmulq_f32(v54, v50), v54)), v40);
      v59 = vminq_f32(vmulq_f32(v55, vrsqrtsq_f32(vmulq_f32(v55, v51), v55)), v40);
      v60 = vminq_f32(vmulq_f32(v56, vrsqrtsq_f32(vmulq_f32(v56, v52), v56)), v40);
      v61 = vminq_f32(vmulq_f32(v57, vrsqrtsq_f32(vmulq_f32(v57, v53), v57)), v40);
      v62 = vmulq_f32(v50, vminq_f32(vmulq_f32(v58, vrsqrtsq_f32(vmulq_f32(v50, v58), v58)), v40));
      v63 = vmulq_f32(v51, vminq_f32(vmulq_f32(v59, vrsqrtsq_f32(vmulq_f32(v51, v59), v59)), v40));
      v64 = vmulq_f32(v52, vminq_f32(vmulq_f32(v60, vrsqrtsq_f32(vmulq_f32(v52, v60), v60)), v40));
      v65 = a2[10];
      v66 = vmulq_f32(v53, vminq_f32(vmulq_f32(v61, vrsqrtsq_f32(vmulq_f32(v53, v61), v61)), v40));
      v67 = a2[11].i32[0];
      v68 = *(v27 + 128);
      v69 = *(v27 + 144);
      *v52.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v9, vmin_f32(vmul_laneq_f32(*v62.f32, v29, 3), *v68.f32)), 0xBF000000BF000000), 0), v17);
      *v53.f32 = vcvt_s32_f32(vmin_f32(*v52.f32, v18));
      *v61.f32 = vsub_f32(*v52.f32, vcvt_f32_s32(*v53.f32));
      *v52.f32 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v9, vmin_f32(vmul_laneq_f32(*v63.f32, v29, 3), *v68.f32)), 0xBF000000BF000000), 0), v17);
      *v41.i8 = vcvt_s32_f32(vmin_f32(*v52.f32, v18));
      *v52.f32 = vsub_f32(*v52.f32, vcvt_f32_s32(*v41.i8));
      v70 = vdup_n_s32(v67);
      *v53.f32 = vmla_s32(vzip1_s32(*v53.f32, *v41.i8), vzip2_s32(*v53.f32, *v41.i8), v70);
      v71 = (*&v65 + 16 * v53.i32[0]);
      v67 *= 16;
      v72 = (*&v65 + 16 * v53.i32[1]);
      v73 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v9, vmin_f32(vmul_laneq_f32(*v64.f32, v29, 3), *v68.f32)), 0xBF000000BF000000), 0), v17);
      v74 = vcvt_s32_f32(vmin_f32(v73, v18));
      v75 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v9, vmin_f32(vmul_laneq_f32(*v66.f32, v29, 3), *v68.f32)), 0xBF000000BF000000), 0), v17);
      v76 = vcvt_s32_f32(vmin_f32(v75, v18));
      v77 = vaddq_f32(*v71, vmulq_n_f32(vsubq_f32(v71[1], *v71), v61.f32[0]));
      v78 = vmla_s32(vzip1_s32(v74, v76), vzip2_s32(v74, v76), v70);
      v79 = vsub_f32(v73, vcvt_f32_s32(v74));
      v80 = vaddq_f32(*v72, vmulq_n_f32(vsubq_f32(v72[1], *v72), v52.f32[0]));
      v81 = vsub_f32(v75, vcvt_f32_s32(v76));
      v82 = vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v71 + v67), vmulq_n_f32(vsubq_f32(*(v71 + v67 + 16), *(v71 + v67)), v61.f32[0])), v77), *v61.f32, 1);
      v83 = (*&v65 + 16 * v78.i32[0]);
      v84 = vaddq_f32(v77, v82);
      v85 = vaddq_f32(*v83, vmulq_n_f32(vsubq_f32(v83[1], *v83), v79.f32[0]));
      v86 = (*&v65 + 16 * v78.i32[1]);
      v87 = vaddq_f32(*v86, vmulq_n_f32(vsubq_f32(v86[1], *v86), v81.f32[0]));
      v88 = vaddq_f32(v80, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v72 + v67), vmulq_n_f32(vsubq_f32(*(v72 + v67 + 16), *(v72 + v67)), v52.f32[0])), v80), *v52.f32, 1));
      v89 = vaddq_f32(v85, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v83 + v67), vmulq_n_f32(vsubq_f32(*(v83 + v67 + 16), *(v83 + v67)), v79.f32[0])), v85), v79, 1));
      v90 = vaddq_f32(v87, vmulq_lane_f32(vsubq_f32(vaddq_f32(*(v86 + v67), vmulq_n_f32(vsubq_f32(*(v86 + v67 + 16), *(v86 + v67)), v81.f32[0])), v87), v81, 1));
      v91 = vbslq_s8(v69, v84, vmulq_laneq_f32(v84, v84, 3));
      v92 = *(v27 + 176);
      v4 = vbslq_s8(v69, v88, vmulq_laneq_f32(v88, v88, 3));
      v93 = vmaxq_f32(vsubq_f32(v29, *(v27 + 160)), v92);
      v94 = vbslq_s8(v69, v89, vmulq_laneq_f32(v89, v89, 3));
      v3 = vbslq_s8(v69, v90, vmulq_laneq_f32(v90, v90, 3));
      v2 = vsubq_f32(v3, vmulq_n_f32(v3, vminq_f32(vmaxq_f32(vsubq_f32(v66, v93), v92), v68).f32[0]));
      v95 = vcgtq_f32(vandq_s8(v68, vceqq_f32(vdupq_lane_s32(*v29.f32, 1), v92)), v92);
      v22[-2] = vbslq_s8(v95, v91, vsubq_f32(v91, vmulq_n_f32(v91, vminq_f32(vmaxq_f32(vsubq_f32(v62, v93), v92), v68).f32[0])));
      v22[-1] = vbslq_s8(v95, v4, vsubq_f32(v4, vmulq_n_f32(v4, vminq_f32(vmaxq_f32(vsubq_f32(v63, v93), v92), v68).f32[0])));
      *v22 = vbslq_s8(v95, v94, vsubq_f32(v94, vmulq_n_f32(v94, vminq_f32(vmaxq_f32(vsubq_f32(v64, v93), v92), v68).f32[0])));
      v22[1] = vbslq_s8(v95, v3, v2);
      v22 += 4;
      v24 = vaddq_f32(v28, xmmword_2603429B0);
      v23 -= 4;
      v21 += 4;
    }

    while (v23 > 3);
    if (v21 >= v8)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v96 = *(this + 51);
      v97 = *(v96 + 32);
      v98 = *(v96 + 48);
      *v98.i8 = vadd_f32(*v24.f32, *v98.i8);
      v99 = vsubq_f32(vbslq_s8(*(v96 + 80), vaddq_f32(v24, *(v96 + 64)), v98), *(v96 + 16));
      v100 = *(v96 + 112);
      v101 = vbslq_s8(*(v96 + 96), vmulq_f32(*v96, v99), v99);
      v102 = vmulq_f32(v101, v101);
      v103 = vaddq_f32(vdupq_laneq_s32(v102, 2), vaddq_f32(vdupq_lane_s32(*v102.i8, 0), vdupq_lane_s32(*v102.i8, 1)));
      v104 = vminq_f32(vrsqrteq_f32(v103), v100);
      v105 = vminq_f32(vmulq_f32(v104, vrsqrtsq_f32(vmulq_f32(v104, v103), v104)), v100);
      v106 = vmulq_f32(vminq_f32(vmulq_f32(v105, vrsqrtsq_f32(vmulq_f32(v105, v103), v105)), v100), v103);
      v107 = *(v96 + 128);
      v108 = a2[11].i32[0];
      *v98.i8 = vmin_f32(vmax_f32(vadd_f32(vmul_f32(v9, vmin_f32(vmul_laneq_f32(*v106.f32, v97, 3), *v107.f32)), 0xBF000000BF000000), 0), v17);
      v109 = vcvt_s32_f32(vmin_f32(*v98.i8, v18));
      v110 = (*&a2[10] + 16 * (v109.i32[0] + v109.i32[1] * v108));
      *v98.i8 = vsub_f32(*v98.i8, vcvt_f32_s32(v109));
      v111 = vaddq_f32(*v110, vmulq_n_f32(vsubq_f32(v110[1], *v110), *v98.i32));
      v112 = vaddq_f32(v111, vmulq_lane_f32(vsubq_f32(vaddq_f32(v110[v108], vmulq_n_f32(vsubq_f32(v110[v108 + 1], v110[v108]), *v98.i32)), v111), *v98.i8, 1));
      v2 = vmulq_laneq_f32(v112, v112, 3);
      v3 = *(v96 + 160);
      v4 = *(v96 + 176);
      v113 = vbslq_s8(*(v96 + 144), v112, v2);
      *(*&v10 + 16 * v21) = vbslq_s8(vcgtq_f32(vandq_s8(v107, vceqq_f32(vdupq_lane_s32(*v97.f32, 1), v4)), v4), v113, vsubq_f32(v113, vmulq_n_f32(v113, vminq_f32(vmaxq_f32(vsubq_f32(v106, vmaxq_f32(vsubq_f32(v97, v3), v4)), v4), v107).f32[0])));
      v24 = vaddq_f32(v24, xmmword_2603429B0);
      ++v21;
    }

    while (v21 < v8);
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcGradientRadialTranslate::GetDOD(HgcGradientRadialTranslate *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = &HGRectInfinite;
  if (a3)
  {
    v4 = &HGRectNull;
  }

  return *v4;
}

uint64_t HgcGradientRadialTranslate::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientRadialTranslate::HgcGradientRadialTranslate(HgcGradientRadialTranslate *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287231A98;
  operator new();
}

void HgcGradientRadialTranslate::~HgcGradientRadialTranslate(HgcGradientRadialTranslate *this)
{
  *this = &unk_287231A98;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C405DF52C91);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcGradientRadialTranslate::~HgcGradientRadialTranslate(HGNode *this)
{
  *this = &unk_287231A98;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C405DF52C91);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcGradientRadialTranslate::SetParameter(HgcGradientRadialTranslate *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 1)
  {
    switch(a2)
    {
      case 2:
        v10 = *(this + 51);
        if (*(v10 + 32) != a3.n128_f32[0] || *(v10 + 36) != a4 || *(v10 + 40) != a5 || *(v10 + 44) != a6)
        {
          *(v10 + 32) = a3.n128_u32[0];
          *(v10 + 36) = a4;
          *(v10 + 40) = a5;
          *(v10 + 44) = a6;
          goto LABEL_32;
        }

        return 0;
      case 3:
        v11 = *(this + 51);
        if (v11[3].n128_f32[0] != a6 || v11[3].n128_f32[1] != 0.0 || v11[3].n128_f32[2] != 0.0 || v11[3].n128_f32[3] != 0.0)
        {
          v11[3].n128_f32[0] = a6;
          v11[3].n128_u64[1] = 0;
          v11[3].n128_u32[1] = 0;
          a3.n128_f32[1] = a4;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v11[12] = a3;
          goto LABEL_32;
        }

        return 0;
      case 4:
        v8 = *(this + 51);
        if (v8[4].n128_f32[0] != 0.0 || v8[4].n128_f32[1] != a6 || v8[4].n128_f32[2] != 0.0 || v8[4].n128_f32[3] != 0.0)
        {
          v8[4].n128_u32[0] = 0;
          v8[4].n128_f32[1] = a6;
          a3.n128_f32[1] = a4;
          v8[4].n128_u64[1] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v8[13] = a3;
LABEL_32:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }

    return v7;
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
      goto LABEL_32;
    }

    return 0;
  }

  if (a2 != 1)
  {
    return v7;
  }

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

float HgcGradientRadialTranslate::GetParameter(HgcGradientRadialTranslate *this, int a2, float *a3)
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
        *a3 = v6[8];
        a3[1] = v6[9];
        a3[2] = v6[10];
        v4 = v6 + 11;
        break;
      case 3:
        v7 = *(this + 51);
        *a3 = v7[48];
        a3[1] = v7[49];
        a3[2] = v7[50];
        v4 = v7 + 51;
        break;
      case 4:
        v3 = *(this + 51);
        *a3 = v3[52];
        a3[1] = v3[53];
        a3[2] = v3[54];
        v4 = v3 + 55;
        break;
      default:
        return result;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}