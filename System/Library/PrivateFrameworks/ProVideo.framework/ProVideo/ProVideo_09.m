uint64_t HgcGamma::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcGamma::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcGamma::HgcGamma(HgcGamma *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E3E88;
  operator new();
}

void HgcGamma::~HgcGamma(HGNode *this)
{
  *this = &unk_2871E3E88;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcGamma::~HgcGamma(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGamma::SetParameter(HgcGamma *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcGamma::GetParameter(HgcGamma *this, int a2, float *a3)
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

double HgcGamma::State::State(int32x4_t *this)
{
  *this = 0u;
  this[1] = vdupq_n_s32(0x358637BDu);
  this[2] = vdupq_n_s32(0x3F804020u);
  this[3] = xmmword_260344B20;
  v1.i64[0] = 0x7F0000007FLL;
  v1.i64[1] = 0x7F0000007FLL;
  this[4] = xmmword_2603427D0;
  this[5] = vnegq_f32(v1);
  __asm { FMOV            V1.4S, #1.0 }

  v1.i64[0] = 0x80000000800000;
  v1.i64[1] = 0x80000000800000;
  this[6] = _Q1;
  this[7] = v1;
  _Q1.i64[0] = 0x7F0000007FLL;
  _Q1.i64[1] = 0x7F0000007FLL;
  this[8] = vnegq_f32(_Q1);
  this[9] = vdupq_n_s32(0x42FE0000u);
  v1.i64[0] = 0x3F0000003F000000;
  v1.i64[1] = 0x3F0000003F000000;
  this[10] = vdupq_n_s32(0x3FB504F3u);
  this[11] = v1;
  this[12] = vdupq_n_s32(0x3F047D53u);
  this[13] = vdupq_n_s32(0xBEA9AC62);
  this[14] = vdupq_n_s32(0x3FB89666u);
  this[15] = vdupq_n_s32(0xBF398D4B);
  this[16] = vdupq_n_s32(0xC2FE0000);
  this[17] = vdupq_n_s32(0x3E6E687Cu);
  this[18] = vdupq_n_s32(0x3D96C2DFu);
  this[19] = vdupq_n_s32(0x3F318D85u);
  _Q1.i64[0] = 0x7F0000007FLL;
  _Q1.i64[1] = 0x7F0000007FLL;
  this[20] = _Q1;
  this[21] = 0u;
  result = 0.0;
  this[22] = xmmword_260344600;
  return result;
}

const char *HgcHSVAdjust::GetProgram(HgcHSVAdjust *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000b03\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.9999899864, 9.999999747e-06, 9.999999975e-07, 0.000000000);\n    const half4 c1 = half4(0.001000000047, 0.000000000, 2.000000000, 4.000000000);\n    const half4 c2 = half4(0.1666666716, 6.000000000, 0.000000000, 0.000000000);\n    const half4 c3 = half4(0.000000000, 1.000000000, 2.000000000, 3.000000000);\n    const half4 c4 = half4(1.000000000, -1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.w = float(r0.w);\n    r1.xyz = fmax(r0.xxx, r0.yyy);\n    r1.xyz = fmax(r1.xyz, r0.zzz);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.x = r1.x + c0.y;\n    r2.x = 1.00000h / r1.x;\n    r2.yz = r2.xx;\n    r0.xyz = r0.xyz*r2.xyz;\n    r2.xyz = fmax(r0.xxx, r0.yyy);\n    r2.xyz = fmax(r2.xyz, r0.zzz);\n    r3.x = fmin(r0.x, r0.y);\n    r3.x = fmin(r3.x, r0.z);\n    r3.x = r2.x - r3.x;\n    r4.xyz = half3(r0.xyz >= r2.xyz);\n    r4.yz = clamp(r4.yz - r4.xx, 0.00000h, 1.00000h);\n    r4.z = clamp(r4.z - r4.y, 0.00000h, 1.00000h);\n    r2.x = r2.x + c0.y;\n    r2.x = r3.x/r2.x;\n    r0.xyz = r0.yzx - r0.zxy;\n    r5.xyz = half3(r3.xxx >= c0.zzz);\n    r5.xyz = c0.www - r5.xyz;\n    r3.x = r3.x + c1.x;\n    r0.xyz = r0.xyz/r3.xxx;\n    r0.xyz = select(c0.www, r0.xyz, r5.xyz < 0.00000h);\n    r0.xyz = r0.xyz + c1.yzw;\n    r0 = half4(dot(r0.xyz, r4.xyz));\n    r0 = r0*c2.xxxx + half4(hg_Params[0].xxxx);\n    r2.xy = clamp(r2.xy*half2(hg_Params[0].yz), 0.00000h, 1.00000h);\n    r0 = fract(r0);\n    r0 = r0*c2.yyyy;\n    r3.xyz = fract(r0.xyz);\n    r0 = floor(r0);\n    r5 = clamp(r0 - c3, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz - c1.www, 0.00000h, 1.00000h);\n    r4.xyz = -c3.xyy*r2.xxx;\n    r4.z = r4.z*r3.z;\n    r6.xyz = c4.xyz*r2.xxx;\n    r6.x = r6.x*r3.x + r6.y;\n    r0.xyz = select(r6.xyz, r4.xyz, -r0.xyz < 0.00000h);\n    r4.xyz = c4.yyz*r2.xxx;\n    r4.y = r4.y*r3.y;\n    r0.xyz = select(r4.xyz, r0.xyz, -r5.www < 0.00000h);\n    r6.xyz = c4.yzx*r2.xxx;\n    r6.z = r6.z*r3.z + r6.x;\n    r0.xyz = select(r6.xyz, r0.xyz, -r5.zzz < 0.00000h);\n    r4.xyz = c4.yzy*r2.xxx;\n    r4.x = r4.x*r3.x;\n    r0.xyz = select(r4.xyz, r0.xyz, -r5.yyy < 0.00000h);\n    r6.xyz = c4.zxy*r2.xxx;\n    r6.y = r6.y*r3.y + r6.z;\n    r0.xyz = select(r6.xyz, r0.xyz, -r5.xxx < 0.00000h);\n    r0.xyz = r0.xyz*r2.yyy + r2.yyy;\n    output.color0.xyz = float3(r0.xyz)*float3(r1.xyz);\n    return output;\n}\n//MD5=7883c6d5:51db1adb:a231afea:eb60148c\n//SIG=00400000:00000001:00000001:00000001:0005:0001:0007:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000ae5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.9999899864, 9.999999747e-06, 9.999999975e-07, 0.000000000);\n    const float4 c1 = float4(0.001000000047, 0.000000000, 2.000000000, 4.000000000);\n    const float4 c2 = float4(0.1666666716, 6.000000000, 0.000000000, 0.000000000);\n    const float4 c3 = float4(0.000000000, 1.000000000, 2.000000000, 3.000000000);\n    const float4 c4 = float4(1.000000000, -1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0.w = r0.w;\n    r1.xyz = fmax(r0.xxx, r0.yyy);\n    r1.xyz = fmax(r1.xyz, r0.zzz);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.x = r1.x + c0.y;\n    r2.x = 1.00000f / r1.x;\n    r2.yz = r2.xx;\n    r0.xyz = r0.xyz*r2.xyz;\n    r2.xyz = fmax(r0.xxx, r0.yyy);\n    r2.xyz = fmax(r2.xyz, r0.zzz);\n    r3.x = fmin(r0.x, r0.y);\n    r3.x = fmin(r3.x, r0.z);\n    r3.x = r2.x - r3.x;\n    r4.xyz = float3(r0.xyz >= r2.xyz);\n    r4.yz = clamp(r4.yz - r4.xx, 0.00000f, 1.00000f);\n    r4.z = clamp(r4.z - r4.y, 0.00000f, 1.00000f);\n    r2.x = r2.x + c0.y;\n    r2.x = r3.x/r2.x;\n    r0.xyz = r0.yzx - r0.zxy;\n    r5.xyz = float3(r3.xxx >= c0.zzz);\n    r5.xyz = c0.www - r5.xyz;\n    r3.x = r3.x + c1.x;\n    r0.xyz = r0.xyz/r3.xxx;\n    r0.xyz = select(c0.www, r0.xyz, r5.xyz < 0.00000f);\n    r0.xyz = r0.xyz + c1.yzw;\n    r0 = float4(dot(r0.xyz, r4.xyz));\n    r0 = r0*c2.xxxx + hg_Params[0].xxxx;\n    r2.xy = clamp(r2.xy*hg_Params[0].yz, 0.00000f, 1.00000f);\n    r0 = fract(r0);\n    r0 = r0*c2.yyyy;\n    r3.xyz = fract(r0.xyz);\n    r0 = floor(r0);\n    r5 = clamp(r0 - c3, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz - c1.www, 0.00000f, 1.00000f);\n    r4.xyz = -c3.xyy*r2.xxx;\n    r4.z = r4.z*r3.z;\n    r6.xyz = c4.xyz*r2.xxx;\n    r6.x = r6.x*r3.x + r6.y;\n    r0.xyz = select(r6.xyz, r4.xyz, -r0.xyz < 0.00000f);\n    r4.xyz = c4.yyz*r2.xxx;\n    r4.y = r4.y*r3.y;\n    r0.xyz = select(r4.xyz, r0.xyz, -r5.www < 0.00000f);\n    r6.xyz = c4.yzx*r2.xxx;\n    r6.z = r6.z*r3.z + r6.x;\n    r0.xyz = select(r6.xyz, r0.xyz, -r5.zzz < 0.00000f);\n    r4.xyz = c4.yzy*r2.xxx;\n    r4.x = r4.x*r3.x;\n    r0.xyz = select(r4.xyz, r0.xyz, -r5.yyy < 0.00000f);\n    r6.xyz = c4.zxy*r2.xxx;\n    r6.y = r6.y*r3.y + r6.z;\n    r0.xyz = select(r6.xyz, r0.xyz, -r5.xxx < 0.00000f);\n    r0.xyz = r0.xyz*r2.yyy + r2.yyy;\n    output.color0.xyz = r0.xyz*r1.xyz;\n    return output;\n}\n//MD5=f5f3fea9:1c4cd307:ff2dd395:182a3704\n//SIG=00000000:00000001:00000001:00000000:0005:0001:0007:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000c48\n"
           "#ifndef GL_ES\n"
           "#define lowp\n"
           "#define mediump\n"
           "#define highp\n"
           "#endif\n"
           "#define defaultp mediump\n"
           "uniform defaultp sampler2D hg_Texture0;\n"
           "uniform mediump vec4 hg_ProgramLocal0;\n"
           "varying highp vec4 hg_TexCoord0;\n"
           "void main()\n"
           "{\n"
           "    const mediump vec4 c0 = vec4(0.9999899864, 9.999999747e-06, 9.999999975e-07, 0.000000000);\n"
           "    const mediump vec4 c1 = vec4(0.001000000047, 0.000000000, 2.000000000, 4.000000000);\n"
           "    const mediump vec4 c2 = vec4(0.1666666716, 6.000000000, 0.000000000, 0.000000000);\n"
           "    const mediump vec4 c3 = vec4(0.000000000, 1.000000000, 2.000000000, 3.000000000);\n"
           "    const mediump vec4 c4 = vec4(1.000000000, -1.000000000, 0.000000000, 0.000000000);\n"
           "    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n"
           "\n"
           "    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n"
           "    gl_FragColor.w = r0.w;\n"
           "    r1.xyz = max(r0.xxx, r0.yyy);\n"
           "    r1.xyz = max(r1.xyz, r0.zzz);\n"
           "    r1.xyz = max(r1.xyz, c0.xxx);\n"
           "    r1.x = r1.x + c0.y;\n"
           "    r2.x = 1.00000 / r1.x;\n"
           "    r2.yz = r2.xx;\n"
           "    r0.xyz = r0.xyz*r2.xyz;\n"
           "    r2.xyz = max(r0.xxx, r0.yyy);\n"
           "    r2.xyz = max(r2.xyz, r0.zzz);\n"
           "    r3.x = min(r0.x, r0.y);\n"
           "    r3.x = min(r3.x, r0.z);\n"
           "    r3.x = r2.x - r3.x;\n"
           "    r4.xyz = vec3(greaterThanEqual(r0.xyz, r2.xyz));\n"
           "    r4.yz = clamp(r4.yz - r4.xx, vec2(0.00000), vec2(1.00000));\n"
           "    r4.z = clamp(r4.z - r4.y, 0.00000, 1.00000);\n"
           "    r2.x = r2.x + c0.y;\n"
           "    r2.x = r3.x/r2.x;\n"
           "    r0.xyz = r0.yzx - r0.zxy;\n"
           "    r5.xyz = vec3(greaterThanEqual(r3.xxx, c0.zzz));\n"
           "    r5.xyz = c0.www - r5.xyz;\n"
           "    r3.x = r3.x + c1.x;\n"
           "    r0.xyz = r0.xyz/r3.xxx;\n"
           "    r0.xyz = vec3(r5.x < 0.00000 ? r0.x : c0.w, r5.y < 0.00000 ? r0.y : c0.w, r5.z < 0.00000 ? r0.z : c0.w);\n"
           "    r0.xyz = r0.xyz + c1.yzw;\n"
           "    r0 = vec4(dot(r0.xyz, r4.xyz));\n"
           "    r0 = r0*c2.xxxx + hg_ProgramLocal0.xxxx;\n"
           "    r2.xy = clamp(r2.xy*hg_ProgramLocal0.yz, vec2(0.00000), vec2(1.00000));\n"
           "    r0 = fract(r0);\n"
           "    r0 = r0*c2.yyyy;\n"
           "    r3.xyz = fract(r0.xyz);\n"
           "    r0 = floor(r0);\n"
           "    r5 = clamp(r0 - c3, vec4(0.00000), vec4(1.00000));\n"
           "    r0.xyz = clamp(r0.xyz - c1.www, vec3(0.00000), vec3(1.00000));\n"
           "    r4.xyz = -c3.xyy*r2.xxx;\n"
           "    r4.z = r4.z*r3.z;\n"
           "    r6.xyz = c4.xyz*r2.xxx;\n"
           "    r6.x = r6.x*r3.x + r6.y;\n"
           "    r0.xyz = vec3(-r0.x < 0.00000 ? r4.x : r6.x, -r0.y < 0.00000 ? r4.y : r6.y, -r0.z < 0.00000 ? r4.z : r6.z);\n"
           "    r4.xyz = c4.yyz*r2.xxx;\n"
           "    r4.y = r4.y*r3.y;\n"
           "    r0.xyz = vec3(-r5.w < 0.00000 ? r0.x : r4.x, -r5.w < 0.00000 ? r0.y : r4.y, -r5.w < 0.00000 ? r0.z : r4.z);\n"
           "    r6.xyz = c4.yzx*r2.xxx;\n"
           "    r6.z = r6.z*r3.z + r6.x;\n"
           "    r0.xyz = vec3(-r5.z < 0.00000 ? r0.x : r6.x, -r5.z < 0.00000 ? r0.y : r6.y, -r5.z < 0.00000 ? r0.z : r6.z);\n"
           "    r4.xyz = c4.yzy*r2.xxx;\n"
           "    r4.x = r4.x*r3.x;\n"
           "    r0.xyz = vec3(-r5.y < 0.00000 ? r0.x : r4.x, -r5.y < 0.00000 ? r0.y : r4.y, -r5.y < 0.00000 ? r0.z : r4.z);\n"
           "    r6.xyz = c4.zxy*r2.xxx;\n"
           "    r6.y = r6.y*r3.y + r6.z;\n"
           "    r0.xyz = vec3(-r5.x < 0.00000 ? r0.x : r6.x, -r5.x < 0.00000 ? r0.y : r6.y, -r5.x < 0.00000 ? r0.z : r6.z);\n"
           "    r0.xyz = r0.xyz*r2.yyy + r2.yyy;\n"
           "    gl_FragColor.xyz = r0.xyz*r1.xyz;\n"
           "}\n"
           "//MD5=f7ef366c:8b7c85f0:e967084d:9605452e\n"
           "//SIG=00000000:00000001:00000001:00000000:0005:0001:0007:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA8BBD8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA8BCD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA8BD18()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA8BD10);
}

uint64_t HgcHSVAdjust::BindTexture(HgcHSVAdjust *this, HGHandler *a2, int a3)
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

uint64_t HgcHSVAdjust::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcHSVAdjust::RenderTile(uint64_t a1, uint64_t a2)
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
          v16 = vmaxq_f32(vmaxq_f32(vmaxq_f32(vdupq_lane_s32(*v12.f32, 0), vdupq_lane_s32(*v12.f32, 1)), vdupq_laneq_s32(v12, 2)), v15);
          v17 = vmaxq_f32(vmaxq_f32(vmaxq_f32(vdupq_lane_s32(*v13.f32, 0), vdupq_lane_s32(*v13.f32, 1)), vdupq_laneq_s32(v13, 2)), v15);
          v19 = *(v14 + 32);
          v18 = *(v14 + 48);
          v20 = vbslq_s8(v18, vaddq_f32(v16, v19), v16);
          v21 = vbslq_s8(v18, vaddq_f32(v17, v19), v17);
          v22 = *(v14 + 64);
          v23 = *(v14 + 80);
          v25 = *(v14 + 96);
          v24 = *(v14 + 112);
          v26 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v20), v22), v23), v25);
          v27 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v21), v22), v23), v25);
          v28 = vmulq_f32(v26, vrecpsq_f32(v20, v26));
          v29 = vmulq_f32(v27, vrecpsq_f32(v21, v27));
          v30 = vmulq_f32(v12, vbslq_s8(v18, v28, vdupq_lane_s32(*v28.i8, 0)));
          v31 = vmulq_f32(v13, vbslq_s8(v18, v29, vdupq_lane_s32(*v29.i8, 0)));
          v32 = vmaxq_f32(vmaxq_f32(vdupq_lane_s32(*v30.f32, 0), vdupq_lane_s32(*v30.f32, 1)), vdupq_laneq_s32(v30, 2));
          v33 = vmaxq_f32(vmaxq_f32(vdupq_lane_s32(*v31.f32, 0), vdupq_lane_s32(*v31.f32, 1)), vdupq_laneq_s32(v31, 2));
          v34 = vsubq_f32(v32, vminq_f32(vminq_f32(v30, vrev64q_s32(v30)), vextq_s8(v30, v30, 8uLL)));
          v35 = vandq_s8(v24, vcgeq_f32(v30, v32));
          v36 = vandq_s8(v24, vcgeq_f32(v31, v33));
          v37 = vsubq_f32(v33, vminq_f32(vminq_f32(v31, vrev64q_s32(v31)), vextq_s8(v31, v31, 8uLL)));
          v38 = vbslq_s8(v18, v35, vminq_f32(vmaxq_f32(vsubq_f32(v35, vdupq_lane_s32(*v35.f32, 0)), v23), v24));
          v39 = vaddq_f32(v19, v33);
          v40 = vbslq_s8(v18, vaddq_f32(v19, v32), v32);
          v41 = vbslq_s8(v18, v36, vminq_f32(vmaxq_f32(vsubq_f32(v36, vdupq_lane_s32(*v36.f32, 0)), v23), v24));
          v42 = vbslq_s8(v18, v39, v33);
          v43 = *(v14 + 128);
          v44 = *(v14 + 144);
          *v45.f32 = vqtbl1_s8(v30, *v43.f32);
          v46 = vextq_s8(v43, v43, 8uLL).u64[0];
          v47 = vqtbl1_s8(v30, v46);
          *v43.f32 = vqtbl1_s8(v31, *v43.f32);
          v48 = vqtbl1_s8(v31, v46);
          *v49.f32 = vqtbl1_s8(v30, *v44.f32);
          *&v45.u32[2] = v47;
          v50 = vextq_s8(v44, v44, 8uLL).u64[0];
          *v30.f32 = vqtbl1_s8(v30, v50);
          *v44.f32 = vqtbl1_s8(v31, *v44.f32);
          *v31.f32 = vqtbl1_s8(v31, v50);
          v51 = vminq_f32(vmaxq_f32(vmulq_f32(v22, vrecpeq_f32(v40)), v23), v25);
          v52 = vminq_f32(vmaxq_f32(vmulq_f32(v22, vrecpeq_f32(v42)), v23), v25);
          v53 = vmulq_f32(v51, vrecpsq_f32(v40, v51));
          v49.i64[1] = v30.i64[0];
          v54 = vsubq_f32(v45, v49);
          *&v43.u32[2] = v48;
          v55 = vmulq_f32(v52, vrecpsq_f32(v42, v52));
          v44.i64[1] = v31.i64[0];
          v56 = vsubq_f32(v43, v44);
          v58 = *(v14 + 160);
          v57 = *(v14 + 176);
          v59 = vsubq_f32(v57, vandq_s8(v24, vcgeq_f32(vdupq_lane_s32(*v34.f32, 0), v58)));
          v60 = vsubq_f32(v57, vandq_s8(v24, vcgeq_f32(vdupq_lane_s32(*v37.f32, 0), v58)));
          v61 = *(v14 + 192);
          v62 = *(v14 + 208);
          v63 = vdupq_lane_s32(*&vaddq_f32(v34, v61), 0);
          v64 = vdupq_lane_s32(*&vaddq_f32(v37, v61), 0);
          v38.i64[1] = vminq_f32(vmaxq_f32(vsubq_f32(v38, vextq_s8(*&v38, *&v38, 0xCuLL)), v23), v24).i64[1];
          v41.i64[1] = vminq_f32(vmaxq_f32(vsubq_f32(v41, vextq_s8(*&v41, *&v41, 0xCuLL)), v23), v24).i64[1];
          v65 = vminq_f32(vmaxq_f32(vmulq_f32(v22, vrecpeq_f32(v63)), v62), v25);
          v66 = vminq_f32(vmaxq_f32(vmulq_f32(v22, vrecpeq_f32(v64)), v62), v25);
          v67 = vbslq_s8(vcgtq_f32(v57, v59), vmulq_f32(v54, vmulq_f32(v65, vrecpsq_f32(v63, v65))), v57);
          v68 = vbslq_s8(vcgtq_f32(v57, v60), vmulq_f32(v56, vmulq_f32(v66, vrecpsq_f32(v64, v66))), v57);
          v69 = *(v14 + 224);
          v70 = *(v14 + 240);
          v71 = vmulq_f32(v38, vaddq_f32(v69, v67));
          v72 = vmulq_f32(v41, vaddq_f32(v69, v68));
          v73 = vbslq_s8(v18, vmulq_f32(v34, v53), v32);
          v74 = vdupq_lane_s32(*v14, 0);
          v75 = vaddq_f32(v74, vmulq_f32(v70, vaddq_f32(vdupq_laneq_s32(v71, 2), vaddq_f32(vdupq_lane_s32(*v71.i8, 0), vdupq_lane_s32(*v71.i8, 1)))));
          v76 = vaddq_f32(v74, vmulq_f32(v70, vaddq_f32(vdupq_laneq_s32(v72, 2), vaddq_f32(vdupq_lane_s32(*v72.i8, 0), vdupq_lane_s32(*v72.i8, 1)))));
          v77 = vextq_s8(*v14, *v14, 4uLL);
          v78 = vmulq_f32(v77, v73);
          v79 = vmaxq_f32(vmulq_f32(v77, vbslq_s8(v18, vmulq_f32(v37, v55), v33)), v57);
          v78.i64[0] = vminq_f32(vmaxq_f32(v78, v57), v24).u64[0];
          v80 = vcvtq_f32_s32(vcvtq_s32_f32(v75));
          v81 = vcvtq_f32_s32(vcvtq_s32_f32(v76));
          v82 = vsubq_f32(v75, vsubq_f32(v80, vandq_s8(v24, vcgtq_f32(v80, v75))));
          v83 = vsubq_f32(v76, vsubq_f32(v81, vandq_s8(v24, vcgtq_f32(v81, v76))));
          v84 = *(v14 + 256);
          v85 = *(v14 + 272);
          v86 = vmulq_f32(v84, v82);
          v87 = vmulq_f32(v84, v83);
          v88 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
          v89 = vcvtq_f32_s32(vcvtq_s32_f32(v87));
          v90 = vsubq_f32(v88, vandq_s8(v24, vcgtq_f32(v88, v86)));
          v91 = vsubq_f32(v89, vandq_s8(v24, vcgtq_f32(v89, v87)));
          v88.i64[0] = vminq_f32(v79, v24).u64[0];
          v92 = vsubq_f32(v86, v90);
          v93 = vsubq_f32(v87, v91);
          v94 = vsubq_f32(v90, v85);
          v95 = vmaxq_f32(vsubq_f32(v91, v85), v57);
          v96 = *(v14 + 288);
          v97 = *(v14 + 304);
          v98 = vsubq_f32(v90, v96);
          v99 = vsubq_f32(v91, v96);
          v100 = vminq_f32(vmaxq_f32(v94, v57), v24);
          v101 = vmulq_n_f32(v97, v78.f32[0]);
          v102 = vmulq_n_f32(v97, v88.f32[0]);
          v103 = vminq_f32(v95, v24);
          v101.i64[1] = vmulq_f32(v92, v101).i64[1];
          v102.i64[1] = vmulq_f32(v93, v102).i64[1];
          v104 = *(v14 + 320);
          v105 = *(v14 + 336);
          v106 = vminq_f32(vmaxq_f32(v98, v57), v24);
          v107 = vmulq_n_f32(v104, v78.f32[0]);
          v108 = vmulq_n_f32(v104, v88.f32[0]);
          v109 = vminq_f32(vmaxq_f32(v99, v57), v24);
          v110 = vbslq_s8(v18, vaddq_f32(vmulq_f32(v92, v107), vrev64q_s32(v107)), v107);
          v111 = vmulq_n_f32(v105, v78.f32[0]);
          v112 = vmulq_n_f32(v105, v88.f32[0]);
          v113 = vcgtq_f32(v109, v57);
          v114 = *(v14 + 352);
          v115 = *(v14 + 368);
          v116 = vmulq_n_f32(v115, v78.f32[0]);
          v117 = vmulq_n_f32(v115, v88.f32[0]);
          v118 = vbslq_s8(vcgtq_f32(v106, v57), v101, v110);
          v116.i64[1] = vaddq_f32(vmulq_f32(v92, v116), vdupq_lane_s64(*&v116, 0)).i64[1];
          v117.i64[1] = vaddq_f32(vmulq_f32(v93, v117), vdupq_lane_s64(*&v117, 0)).i64[1];
          v119 = *(v14 + 384);
          v120 = *(v14 + 400);
          v121 = vmulq_n_f32(v119, v78.f32[0]);
          v122 = vmulq_n_f32(v119, v88.f32[0]);
          v123 = vbslq_s8(v18, vmulq_f32(v92, v121), v121);
          v124 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v103, 3), v57), vbslq_s8(v113, v102, vbslq_s8(v18, vaddq_f32(vmulq_f32(v93, v108), vrev64q_s32(v108)), v108)), vbslq_s8(v114, vmulq_f32(v93, v112), v112));
          v125 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v100, 2), v57), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v100, 3), v57), v118, vbslq_s8(v114, vmulq_f32(v92, v111), v111)), v116);
          v126 = vmulq_n_f32(v120, v78.f32[0]);
          v127 = vmulq_n_f32(v120, v88.f32[0]);
          v128 = vmulq_f32(vaddq_f32(vdupq_lane_s32(*v88.f32, 1), vmulq_lane_f32(vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v103.i8, 0), v57), vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v103.i8, 1), v57), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v103, 2), v57), v124, v117), vbslq_s8(v18, vmulq_f32(v93, v122), v122)), vbslq_s8(v114, vaddq_f32(vmulq_f32(v93, v127), vextq_s8(v127, v127, 4uLL)), v127)), *v88.f32, 1)), v21);
          v129 = *(v14 + 416);
          v130 = (v5 + v10);
          v130[-1] = vbslq_s8(v129, v92, vmulq_f32(vaddq_f32(vdupq_lane_s32(*v78.f32, 1), vmulq_lane_f32(vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v100.i8, 0), v57), vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v100.i8, 1), v57), v125, v123), vbslq_s8(v114, vaddq_f32(vmulq_f32(v92, v126), vextq_s8(v126, v126, 4uLL)), v126)), *v78.f32, 1)), v20));
          *v130 = vbslq_s8(v129, v93, v128);
          v9 += 2;
          v10 += 32;
        }
      }

      if (v9 < v4)
      {
        v131 = *(v6 + 16 * v9);
        v132 = *(a1 + 408);
        v133 = vmaxq_f32(vmaxq_f32(vmaxq_f32(vdupq_lane_s32(*v131.f32, 0), vdupq_lane_s32(*v131.f32, 1)), vdupq_laneq_s32(v131, 2)), *(v132 + 16));
        v135 = *(v132 + 32);
        v134 = *(v132 + 48);
        v136 = vbslq_s8(v134, vaddq_f32(v133, v135), v133);
        v137 = *(v132 + 64);
        v138 = *(v132 + 80);
        v140 = *(v132 + 96);
        v139 = *(v132 + 112);
        v141 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v136), v137), v138), v140);
        v142 = vmulq_f32(v141, vrecpsq_f32(v136, v141));
        v143 = vmulq_f32(v131, vbslq_s8(v134, v142, vdupq_lane_s32(*v142.i8, 0)));
        v144 = vmaxq_f32(vmaxq_f32(vdupq_lane_s32(*v143.f32, 0), vdupq_lane_s32(*v143.f32, 1)), vdupq_laneq_s32(v143, 2));
        v145 = vsubq_f32(v144, vminq_f32(vminq_f32(v143, vrev64q_s32(v143)), vextq_s8(v143, v143, 8uLL)));
        v146 = vandq_s8(v139, vcgeq_f32(v143, v144));
        v147 = vbslq_s8(v134, v146, vminq_f32(vmaxq_f32(vsubq_f32(v146, vdupq_lane_s32(*v146.f32, 0)), v138), v139));
        v147.i64[1] = vminq_f32(vmaxq_f32(vsubq_f32(v147, vextq_s8(*&v147, *&v147, 0xCuLL)), v138), v139).i64[1];
        v148 = vbslq_s8(v134, vaddq_f32(v135, v144), v144);
        v149 = vminq_f32(vmaxq_f32(vmulq_f32(v137, vrecpeq_f32(v148)), v138), v140);
        v150 = vmulq_f32(v145, vmulq_f32(v149, vrecpsq_f32(v148, v149)));
        v151 = *(v132 + 128);
        v152 = *(v132 + 144);
        *v153.f32 = vqtbl1_s8(v143, *v151.i8);
        *v154.f32 = vqtbl1_s8(v143, *v152.i8);
        *&v153.u32[2] = vqtbl1_s8(v143, *&vextq_s8(v151, v151, 8uLL));
        *&v154.u32[2] = vqtbl1_s8(v143, *&vextq_s8(v152, v152, 8uLL));
        v155 = *(v132 + 176);
        v156 = vcgeq_f32(vdupq_lane_s32(*v145.f32, 0), *(v132 + 160));
        v157 = vdupq_lane_s32(*&vaddq_f32(v145, *(v132 + 192)), 0);
        v158 = vminq_f32(vmaxq_f32(vmulq_f32(v137, vrecpeq_f32(v157)), *(v132 + 208)), v140);
        v159 = vmulq_f32(v147, vaddq_f32(*(v132 + 224), vbslq_s8(vcgtq_f32(v155, vsubq_f32(v155, vandq_s8(v139, v156))), vmulq_f32(vsubq_f32(v153, v154), vmulq_f32(v158, vrecpsq_f32(v157, v158))), v155)));
        v160 = vaddq_f32(vdupq_lane_s32(*v132, 0), vmulq_f32(*(v132 + 240), vaddq_f32(vdupq_laneq_s32(v159, 2), vaddq_f32(vdupq_lane_s32(*v159.i8, 0), vdupq_lane_s32(*v159.i8, 1)))));
        v161 = vminq_f32(vmaxq_f32(vmulq_f32(vextq_s8(*v132, *v132, 4uLL), vbslq_s8(v134, v150, v144)), v155), v139).u64[0];
        v162 = vcvtq_f32_s32(vcvtq_s32_f32(v160));
        v163 = vmulq_f32(*(v132 + 256), vsubq_f32(v160, vsubq_f32(v162, vandq_s8(v139, vcgtq_f32(v162, v160)))));
        v164 = vcvtq_f32_s32(vcvtq_s32_f32(v163));
        v165 = vsubq_f32(v164, vandq_s8(v139, vcgtq_f32(v164, v163)));
        v166 = vsubq_f32(v163, v165);
        v167 = vminq_f32(vmaxq_f32(vsubq_f32(v165, *(v132 + 272)), v155), v139);
        v168 = vminq_f32(vmaxq_f32(vsubq_f32(v165, *(v132 + 288)), v155), v139);
        v169 = vmulq_n_f32(*(v132 + 304), v161.f32[0]);
        v169.i64[1] = vmulq_f32(v169, v166).i64[1];
        v170 = vmulq_n_f32(*(v132 + 320), v161.f32[0]);
        v171 = vbslq_s8(vcgtq_f32(v168, v155), v169, vbslq_s8(v134, vaddq_f32(vrev64q_s32(v170), vmulq_f32(v170, v166)), v170));
        v172 = vmulq_n_f32(*(v132 + 336), v161.f32[0]);
        v173 = *(v132 + 352);
        v174 = vmulq_n_f32(*(v132 + 368), v161.f32[0]);
        v174.i64[1] = vaddq_f32(vmulq_f32(v166, v174), vdupq_lane_s64(*&v174, 0)).i64[1];
        v175 = vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v167, 2), v155), vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v167, 3), v155), v171, vbslq_s8(v173, vmulq_f32(v172, v166), v172)), v174);
        v176 = vmulq_n_f32(*(v132 + 384), v161.f32[0]);
        v177 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v167.i8, 1), v155), v175, vbslq_s8(v134, vmulq_f32(v166, v176), v176));
        v178 = vmulq_n_f32(*(v132 + 400), v161.f32[0]);
        *(v5 + 16 * v9) = vbslq_s8(*(v132 + 416), v166, vmulq_f32(vaddq_f32(vdupq_lane_s32(v161, 1), vmulq_lane_f32(vbslq_s8(vcgtq_f32(vdupq_lane_s32(*v167.i8, 0), v155), v177, vbslq_s8(v173, vaddq_f32(vmulq_f32(v166, v178), vextq_s8(v178, v178, 4uLL)), v178)), v161, 1)), v136));
      }

      v6 += v8;
      v5 += v7;
      ++v3;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcHSVAdjust::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcHSVAdjust::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcHSVAdjust::HgcHSVAdjust(HgcHSVAdjust *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E40F0;
  operator new();
}

void HgcHSVAdjust::~HgcHSVAdjust(HGNode *this)
{
  *this = &unk_2871E40F0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4003455651);
  }

  HGNode::~HGNode(this);
}

{
  HgcHSVAdjust::~HgcHSVAdjust(this);

  HGObject::operator delete(v1);
}

uint64_t HgcHSVAdjust::SetParameter(HgcHSVAdjust *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcHSVAdjust::GetParameter(HgcHSVAdjust *this, int a2, float *a3)
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

double HgcHSVAdjust::State::State(HgcHSVAdjust::State *this)
{
  *this = 0u;
  *(this + 1) = xmmword_260346120;
  *(this + 2) = xmmword_260346130;
  *(this + 3) = xmmword_2603444B0;
  *(this + 4) = xmmword_260345140;
  *(this + 5) = xmmword_260344870;
  v1.i64[0] = 0x80000000800000;
  v1.i64[1] = 0x80000000800000;
  __asm { FMOV            V2.4S, #1.0 }

  *(this + 6) = vnegq_f32(v1);
  *(this + 7) = _Q2;
  *(this + 8) = xmmword_260346140;
  *(this + 9) = xmmword_260346150;
  *(this + 10) = xmmword_260346160;
  *(this + 11) = 0u;
  *(this + 12) = xmmword_260346170;
  *(this + 13) = xmmword_260345A50;
  *(this + 14) = xmmword_260346180;
  *(this + 15) = vdupq_n_s32(0x3E2AAAABu);
  __asm { FMOV            V0.4S, #6.0 }

  *(this + 16) = _Q0;
  *(this + 17) = xmmword_260343430;
  *(this + 18) = xmmword_260346190;
  *(this + 19) = xmmword_2603461A0;
  *(this + 20) = xmmword_2603461B0;
  *(this + 21) = xmmword_2603461C0;
  *(this + 22) = xmmword_260344670;
  *(this + 23) = xmmword_2603461D0;
  *(this + 24) = xmmword_2603461E0;
  *(this + 25) = xmmword_2603461F0;
  result = 0.0;
  *(this + 26) = xmmword_260344600;
  return result;
}

const char *HgcThreshold::GetProgram(HgcThreshold *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003cd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.3086000085, 0.6093999743, 0.08200000226, 0.5000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = dot(r0.xyz, c0.xyz);\n    r1.x = r1.x - half(hg_Params[0].x);\n    r1.x = clamp(r1.x*half(hg_Params[1].x) + c0.w, 0.00000h, 1.00000h);\n    r1.xyz = mix(half3(hg_Params[2].xyz), half3(hg_Params[3].xyz), r1.xxx);\n    output.color0.xyz = float3(r1.xyz)*float3(r0.www);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=3e367a35:87ffd1e7:5344623c:ebddf248\n//SIG=00400000:00000001:00000001:00000001:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000399\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.3086000085, 0.6093999743, 0.08200000226, 0.5000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = dot(r0.xyz, c0.xyz);\n    r1.x = r1.x - hg_Params[0].x;\n    r1.x = clamp(r1.x*hg_Params[1].x + c0.w, 0.00000f, 1.00000f);\n    r1.xyz = mix(hg_Params[2].xyz, hg_Params[3].xyz, r1.xxx);\n    output.color0.xyz = r1.xyz*r0.www;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=1347d45c:88fbdcfe:bb1ed88f:7ad162bd\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003e3\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nuniform mediump vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.3086000085, 0.6093999743, 0.08200000226, 0.5000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = dot(r0.xyz, c0.xyz);\n    r1.x = r1.x - hg_ProgramLocal0.x;\n    r1.x = clamp(r1.x*hg_ProgramLocal1.x + c0.w, 0.00000, 1.00000);\n    r1.xyz = mix(hg_ProgramLocal2.xyz, hg_ProgramLocal3.xyz, r1.xxx);\n    gl_FragColor.xyz = r1.xyz*r0.www;\n    gl_FragColor.w = r0.w;\n}\n//MD5=f0e7df4e:490c8f43:1514f43f:5cb2cb90\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA8CB10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA8CC10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA8CC50()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA8CC48);
}

uint64_t HgcThreshold::BindTexture(HgcThreshold *this, HGHandler *a2, int a3)
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

uint64_t HgcThreshold::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcThreshold::RenderTile(uint64_t a1, uint64_t a2)
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
          v17 = *(v16 + 64);
          v18 = *(v16 + 80);
          v19 = vmaxq_f32(vdupq_laneq_s32(v12, 3), v17);
          v20 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v17);
          v21 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v17);
          v22 = vmaxq_f32(vdupq_laneq_s32(v15, 3), v17);
          v23 = vmulq_f32(vrecpeq_f32(v19), v18);
          v24 = vmulq_f32(vrecpeq_f32(v20), v18);
          v25 = vmulq_f32(vrecpeq_f32(v21), v18);
          v26 = vmulq_f32(vrecpeq_f32(v22), v18);
          v27 = vmulq_f32(v23, vrecpsq_f32(v23, v19));
          v28 = vmulq_f32(v26, vrecpsq_f32(v26, v22));
          v30 = *(v16 + 96);
          v29 = *(v16 + 112);
          v31 = vmulq_f32(v12, vorrq_s8(vandq_s8(v30, v27), v29));
          v32 = vmulq_f32(v13, vorrq_s8(vandq_s8(v30, vmulq_f32(v24, vrecpsq_f32(v24, v20))), v29));
          v33 = vmulq_f32(v14, vorrq_s8(vandq_s8(v30, vmulq_f32(v25, vrecpsq_f32(v25, v21))), v29));
          v34 = vmulq_f32(v15, vorrq_s8(vandq_s8(v30, v28), v29));
          v35 = *(v16 + 128);
          v36 = *(v16 + 144);
          v37 = vmulq_f32(v35, v31);
          v38 = vmulq_f32(v35, v32);
          v39 = vmulq_f32(v35, v33);
          v40 = vmulq_f32(v35, v34);
          v41 = *(v16 + 16);
          v42 = vaddq_f32(v36, vmulq_f32(v41, vsubq_f32(vaddq_f32(vextq_s8(v38, v38, 8uLL), vaddq_f32(v38, vrev64q_s32(v38))), *v16)));
          v43 = vaddq_f32(v36, vmulq_f32(v41, vsubq_f32(vaddq_f32(vextq_s8(v39, v39, 8uLL), vaddq_f32(v39, vrev64q_s32(v39))), *v16)));
          v44 = vaddq_f32(v36, vmulq_f32(v41, vsubq_f32(vaddq_f32(vextq_s8(v40, v40, 8uLL), vaddq_f32(v40, vrev64q_s32(v40))), *v16)));
          v45 = vmaxq_f32(vaddq_f32(v36, vmulq_f32(v41, vsubq_f32(vaddq_f32(vextq_s8(v37, v37, 8uLL), vaddq_f32(v37, vrev64q_s32(v37))), *v16))), v29);
          v46 = vmaxq_f32(v42, v29);
          v47 = vmaxq_f32(v43, v29);
          v48 = vmaxq_f32(v44, v29);
          v49 = *(v16 + 160);
          v50 = *(v16 + 176);
          v45.i32[0] = vminq_f32(v45, v49).u32[0];
          v46.i32[0] = vminq_f32(v46, v49).u32[0];
          v47.i32[0] = vminq_f32(v47, v49).u32[0];
          v48.i32[0] = vminq_f32(v48, v49).u32[0];
          v51 = *(v16 + 32);
          v52 = vsubq_f32(*(v16 + 48), v51);
          v53 = (v5 + v10);
          v53[-2] = vbslq_s8(v50, v31, vmulq_laneq_f32(vaddq_f32(v51, vmulq_n_f32(v52, v45.f32[0])), v31, 3));
          v53[-1] = vbslq_s8(v50, v32, vmulq_laneq_f32(vaddq_f32(v51, vmulq_n_f32(v52, v46.f32[0])), v32, 3));
          *v53 = vbslq_s8(v50, v33, vmulq_laneq_f32(vaddq_f32(v51, vmulq_n_f32(v52, v47.f32[0])), v33, 3));
          v53[1] = vbslq_s8(v50, v34, vmulq_laneq_f32(vaddq_f32(v51, vmulq_n_f32(v52, v48.f32[0])), v34, 3));
          v9 += 4;
          v10 += 64;
        }
      }

      if (v9 < v4)
      {
        do
        {
          v54 = *(v6 + 16 * v9);
          v55 = *(a1 + 408);
          v56 = vmaxq_f32(vdupq_laneq_s32(v54, 3), *(v55 + 64));
          v57 = vmulq_f32(vrecpeq_f32(v56), *(v55 + 80));
          v58 = *(v55 + 112);
          v59 = vmulq_f32(v54, vorrq_s8(vandq_s8(*(v55 + 96), vmulq_f32(v57, vrecpsq_f32(v57, v56))), v58));
          v60 = vmulq_f32(*(v55 + 128), v59);
          *(v5 + 16 * v9++) = vbslq_s8(*(v55 + 176), v59, vmulq_laneq_f32(vaddq_f32(*(v55 + 32), vmulq_n_f32(vsubq_f32(*(v55 + 48), *(v55 + 32)), vminq_f32(vmaxq_f32(vaddq_f32(*(v55 + 144), vmulq_f32(*(v55 + 16), vsubq_f32(vaddq_f32(vextq_s8(v60, v60, 8uLL), vaddq_f32(v60, vrev64q_s32(v60))), *v55))), v58), *(v55 + 160)).f32[0])), v59, 3));
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

uint64_t HgcThreshold::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcThreshold::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcThreshold::HgcThreshold(HgcThreshold *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E4358;
  operator new();
}

void HgcThreshold::~HgcThreshold(HGNode *this)
{
  *this = &unk_2871E4358;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcThreshold::~HgcThreshold(this);

  HGObject::operator delete(v1);
}

uint64_t HgcThreshold::SetParameter(HgcThreshold *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcThreshold::GetParameter(HgcThreshold *this, unsigned int a2, float *a3)
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

const char *HgcThresholdNoPremult::GetProgram(HgcThresholdNoPremult *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000398\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.3086000085, 0.6093999743, 0.08200000226, 0.5000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = dot(r0.xyz, c0.xyz);\n    r1.x = r1.x - half(hg_Params[0].x);\n    r1.x = clamp(r1.x*half(hg_Params[1].x) + c0.w, 0.00000h, 1.00000h);\n    r1.xyz = mix(half3(hg_Params[2].xyz), half3(hg_Params[3].xyz), r1.xxx);\n    output.color0.xyz = float3(r1.xyz)*float3(r0.www);\n    output.color0.w = float(r0.w);\n    return output;\n}\n//MD5=46bbe74a:ec8517ba:6283b3b5:c6491d59\n//SIG=00400000:00000001:00000001:00000001:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000363\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.3086000085, 0.6093999743, 0.08200000226, 0.5000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = dot(r0.xyz, c0.xyz);\n    r1.x = r1.x - hg_Params[0].x;\n    r1.x = clamp(r1.x*hg_Params[1].x + c0.w, 0.00000f, 1.00000f);\n    r1.xyz = mix(hg_Params[2].xyz, hg_Params[3].xyz, r1.xxx);\n    output.color0.xyz = r1.xyz*r0.www;\n    output.color0.w = r0.w;\n    return output;\n}\n//MD5=0ed2bc8f:f40c7ec7:aaca0e69:6319817e\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003b7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.3086000085, 0.6093999743, 0.08200000226, 0.5000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = dot(r0.xyz, c0.xyz);\n    r1.x = r1.x - hg_ProgramLocal0.x;\n    r1.x = clamp(r1.x*hg_ProgramLocal1.x + c0.w, 0.00000, 1.00000);\n    r1.xyz = mix(hg_ProgramLocal2.xyz, hg_ProgramLocal3.xyz, r1.xxx);\n    gl_FragColor.xyz = r1.xyz*r0.www;\n    gl_FragColor.w = r0.w;\n}\n//MD5=d344230a:2f6aff7d:b2683a2c:501e1b6e\n//SIG=00000000:00000001:00000001:00000000:0001:0004:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA8D504(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA8D604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA8D644()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA8D63CLL);
}

uint64_t HgcThresholdNoPremult::BindTexture(HgcThresholdNoPremult *this, HGHandler *a2, int a3)
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

uint64_t HgcThresholdNoPremult::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a2 + 144))(a2, 2, a1[51] + 32, 1);
  (*(*a2 + 144))(a2, 3, a1[51] + 48, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcThresholdNoPremult::RenderTile(uint64_t a1, uint64_t a2)
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
          v17 = *(v16 + 64);
          v18 = *(v16 + 80);
          v19 = vmulq_f32(v12, v17);
          v20 = vmulq_f32(v13, v17);
          v21 = vmulq_f32(v14, v17);
          v22 = vmulq_f32(v15, v17);
          v23 = *(v16 + 16);
          v24 = vaddq_f32(v18, vmulq_f32(v23, vsubq_f32(vaddq_f32(vextq_s8(v19, v19, 8uLL), vaddq_f32(v19, vrev64q_s32(v19))), *v16)));
          v25 = vaddq_f32(v18, vmulq_f32(v23, vsubq_f32(vaddq_f32(vextq_s8(v20, v20, 8uLL), vaddq_f32(v20, vrev64q_s32(v20))), *v16)));
          v26 = vaddq_f32(v18, vmulq_f32(v23, vsubq_f32(vaddq_f32(vextq_s8(v21, v21, 8uLL), vaddq_f32(v21, vrev64q_s32(v21))), *v16)));
          v27 = vaddq_f32(v18, vmulq_f32(v23, vsubq_f32(vaddq_f32(vextq_s8(v22, v22, 8uLL), vaddq_f32(v22, vrev64q_s32(v22))), *v16)));
          v28 = *(v16 + 96);
          v29 = *(v16 + 112);
          v30 = vmaxq_f32(v25, v28);
          v31 = vmaxq_f32(v26, v28);
          v32 = vmaxq_f32(v27, v28);
          v28.i32[0] = vminq_f32(vmaxq_f32(v24, v28), v29).u32[0];
          v24.i32[0] = vminq_f32(v30, v29).u32[0];
          v30.i32[0] = vminq_f32(v31, v29).u32[0];
          v32.i32[0] = vminq_f32(v32, v29).u32[0];
          v33 = *(v16 + 32);
          v34 = vsubq_f32(*(v16 + 48), v33);
          v35 = vmulq_laneq_f32(vaddq_f32(v33, vmulq_n_f32(v34, v28.f32[0])), v12, 3);
          v36 = vmulq_laneq_f32(vaddq_f32(v33, vmulq_n_f32(v34, v24.f32[0])), v13, 3);
          v37 = vmulq_laneq_f32(vaddq_f32(v33, vmulq_n_f32(v34, v30.f32[0])), v14, 3);
          v38 = vmulq_laneq_f32(vaddq_f32(v33, vmulq_n_f32(v34, v32.f32[0])), v15, 3);
          v39 = *(v16 + 128);
          v40 = (v5 + v10);
          v40[-2] = vbslq_s8(v39, v12, v35);
          v40[-1] = vbslq_s8(v39, v13, v36);
          *v40 = vbslq_s8(v39, v14, v37);
          v40[1] = vbslq_s8(v39, v15, v38);
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
          v43 = vmulq_f32(v41, *(v42 + 64));
          *(v5 + 16 * v9++) = vbslq_s8(*(v42 + 128), v41, vmulq_laneq_f32(vaddq_f32(*(v42 + 32), vmulq_n_f32(vsubq_f32(*(v42 + 48), *(v42 + 32)), vminq_f32(vmaxq_f32(vaddq_f32(*(v42 + 80), vmulq_f32(*(v42 + 16), vsubq_f32(vaddq_f32(vextq_s8(v43, v43, 8uLL), vaddq_f32(v43, vrev64q_s32(v43))), *v42))), *(v42 + 96)), *(v42 + 112)).f32[0])), v41, 3));
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

uint64_t HgcThresholdNoPremult::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcThresholdNoPremult::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcThresholdNoPremult::HgcThresholdNoPremult(HgcThresholdNoPremult *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E45C0;
  operator new();
}

void HgcThresholdNoPremult::~HgcThresholdNoPremult(HGNode *this)
{
  *this = &unk_2871E45C0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcThresholdNoPremult::~HgcThresholdNoPremult(this);

  HGObject::operator delete(v1);
}

uint64_t HgcThresholdNoPremult::SetParameter(HgcThresholdNoPremult *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcThresholdNoPremult::GetParameter(HgcThresholdNoPremult *this, unsigned int a2, float *a3)
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

const char *HgcBlackHole::GetProgram(HgcBlackHole *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000089a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 2.000000000, 9.999999975e-07, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.x = dot(frag._texCoord0, hg_Params[4]);\n    s0.z = 1.00000f / s0.x;\n    s0.y = dot(frag._texCoord0, hg_Params[3]);\n    s0.x = dot(frag._texCoord0, hg_Params[2]);\n    s0.xy = s0.xy*s0.zz + -hg_Params[0].xy;\n    s1.x = dot(s0.xy, s0.xy);\n    s0.z = fmax(s1.x, float(c0.z));\n    s0.z = rsqrt(s0.z);\n    s1.z = s0.z*s1.x;\n    s0.w = clamp(s1.z/hg_Params[1].y, 0.00000f, 1.00000f);\n    s0.w = s0.w*hg_Params[1].x + s1.z;\n    s0.xy = s0.zz*s0.xy;\n    s0.xy = s0.xy*s0.ww + hg_Params[0].xy;\n    s0.w = float(c0.x);\n    s1.x = dot(s0.xyw, hg_Params[7].xyz);\n    s1.w = 1.00000f / s1.x;\n    s1.y = dot(s0.xyw, hg_Params[6].xyz);\n    s1.x = dot(s0.xyw, hg_Params[5].xyz);\n    s0.xy = s1.xy*s1.ww;\n    s0.xy = s0.xy*hg_Params[1].zz;\n    s1.xy = float2(hg_Params[9].xy < s0.xy);\n    s0.zw = float2(s0.xy < hg_Params[8].xy);\n    s0.z = fmax(s0.z, s0.w);\n    s1.x = fmax(s1.x, s1.y);\n    s0.z = fmax(s0.z, s1.x);\n    s0.xy = fmax(s0.xy, hg_Params[8].xy);\n    s0.w = s1.z + hg_Params[1].x;\n    s0.w = s0.w*hg_Params[1].z;\n    s1.xy = fmin(s0.xy, hg_Params[9].xy);\n    s0.x = s1.z/s0.w;\n    s0.x = clamp(s0.x*float(c0.y) + -float(c0.x), 0.00000f, 1.00000f);\n    s2.x = s0.x*hg_Params[1].w + -hg_Params[1].w;\n    s1.xy = s1.xy + hg_Params[10].xy;\n    s1.xy = s1.xy*hg_Params[10].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    s0 = select(float4(r0), float4(c0.wwww), -s0.zzzz < 0.00000h);\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    s2.x = s2.x + float(c0.x);\n    output.color0 = mix(float4(r0), s0, s2.xxxx);\n    return output;\n}\n//MD5=6a13015c:19aee921:f2e59211:e0c573af\n//SIG=00400000:00000002:00000002:00000003:0001:000b:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000845\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 2.000000000, 9.999999975e-07, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = dot(frag._texCoord0, hg_Params[4]);\n    r0.z = 1.00000f / r0.x;\n    r0.y = dot(frag._texCoord0, hg_Params[3]);\n    r0.x = dot(frag._texCoord0, hg_Params[2]);\n    r0.xy = r0.xy*r0.zz + -hg_Params[0].xy;\n    r1.x = dot(r0.xy, r0.xy);\n    r0.z = fmax(r1.x, c0.z);\n    r0.z = rsqrt(r0.z);\n    r1.z = r0.z*r1.x;\n    r0.w = clamp(r1.z/hg_Params[1].y, 0.00000f, 1.00000f);\n    r0.w = r0.w*hg_Params[1].x + r1.z;\n    r0.xy = r0.zz*r0.xy;\n    r0.xy = r0.xy*r0.ww + hg_Params[0].xy;\n    r0.w = c0.x;\n    r1.x = dot(r0.xyw, hg_Params[7].xyz);\n    r1.w = 1.00000f / r1.x;\n    r1.y = dot(r0.xyw, hg_Params[6].xyz);\n    r1.x = dot(r0.xyw, hg_Params[5].xyz);\n    r0.xy = r1.xy*r1.ww;\n    r0.xy = r0.xy*hg_Params[1].zz;\n    r1.xy = float2(hg_Params[9].xy < r0.xy);\n    r0.zw = float2(r0.xy < hg_Params[8].xy);\n    r0.z = fmax(r0.z, r0.w);\n    r1.x = fmax(r1.x, r1.y);\n    r0.z = fmax(r0.z, r1.x);\n    r0.xy = fmax(r0.xy, hg_Params[8].xy);\n    r0.w = r1.z + hg_Params[1].x;\n    r0.w = r0.w*hg_Params[1].z;\n    r1.xy = fmin(r0.xy, hg_Params[9].xy);\n    r0.x = r1.z/r0.w;\n    r0.x = clamp(r0.x*c0.y + -c0.x, 0.00000f, 1.00000f);\n    r2.x = r0.x*hg_Params[1].w + -hg_Params[1].w;\n    r1.xy = r1.xy + hg_Params[10].xy;\n    r1.xy = r1.xy*hg_Params[10].zw;\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    r1 = select(r1, c0.wwww, -r0.zzzz < 0.00000f);\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.x = r2.x + c0.x;\n    output.color0 = mix(r0, r1, r2.xxxx);\n    return output;\n}\n//MD5=c9c31fb8:6ce03718:6c72788b:8bdb4e7e\n//SIG=00000000:00000002:00000002:00000000:0001:000b:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000a08\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nuniform highp vec4 hg_ProgramLocal8;\nuniform highp vec4 hg_ProgramLocal9;\nuniform highp vec4 hg_ProgramLocal10;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 2.000000000, 9.999999975e-07, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.x = dot(hg_TexCoord0, hg_ProgramLocal4);\n    r0.z = 1.00000 / r0.x;\n    r0.y = dot(hg_TexCoord0, hg_ProgramLocal3);\n    r0.x = dot(hg_TexCoord0, hg_ProgramLocal2);\n    r0.xy = r0.xy*r0.zz + -hg_ProgramLocal0.xy;\n    r1.x = dot(r0.xy, r0.xy);\n    r0.z = max(r1.x, c0.z);\n    r0.z = inversesqrt(r0.z);\n    r1.z = r0.z*r1.x;\n    r0.w = clamp(r1.z/hg_ProgramLocal1.y, 0.00000, 1.00000);\n    r0.w = r0.w*hg_ProgramLocal1.x + r1.z;\n    r0.xy = r0.zz*r0.xy;\n    r0.xy = r0.xy*r0.ww + hg_ProgramLocal0.xy;\n    r0.w = c0.x;\n    r1.x = dot(r0.xyw, hg_ProgramLocal7.xyz);\n    r1.w = 1.00000 / r1.x;\n    r1.y = dot(r0.xyw, hg_ProgramLocal6.xyz);\n    r1.x = dot(r0.xyw, hg_ProgramLocal5.xyz);\n    r0.xy = r1.xy*r1.ww;\n    r0.xy = r0.xy*hg_ProgramLocal1.zz;\n    r1.xy = vec2(lessThan(hg_ProgramLocal9.xy, r0.xy));\n    r0.zw = vec2(lessThan(r0.xy, hg_ProgramLocal8.xy));\n    r0.z = max(r0.z, r0.w);\n    r1.x = max(r1.x, r1.y);\n    r0.z = max(r0.z, r1.x);\n    r0.xy = max(r0.xy, hg_ProgramLocal8.xy);\n    r0.w = r1.z + hg_ProgramLocal1.x;\n    r0.w = r0.w*hg_ProgramLocal1.z;\n    r1.xy = min(r0.xy, hg_ProgramLocal9.xy);\n    r0.x = r1.z/r0.w;\n    r0.x = clamp(r0.x*c0.y + -c0.x, 0.00000, 1.00000);\n    r2.x = r0.x*hg_ProgramLocal1.w + -hg_ProgramLocal1.w;\n    r1.xy = r1.xy + hg_ProgramLocal10.xy;\n    r1.xy = r1.xy*hg_ProgramLocal10.zw;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    r1 = vec4(-r0.z < 0.00000 ? c0.w : r1.x, -r0.z < 0.00000 ? c0.w : r1.y, -r0.z < 0.00000 ? c0.w : r1.z, -r0.z < 0.00000 ? c0.w : r1.w);\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2.x = r2.x + c0.x;\n    gl_FragColor = mix(r0, r1, r2.xxxx);\n}\n//MD5=ae1a15c1:a19d495d:6c5a57d1:75b7f5f8\n//SIG=00000000:00000002:00000002:00000000:0001:000b:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA8DE10(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA8DFD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA8E028()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA8E020);
}

uint64_t HgcBlackHole::BindTexture(HgcBlackHole *this, HGHandler *a2, int a3)
{
  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 1, 0, 0, 0);
    v8 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (v8)
    {
      return result;
    }

    (*(*a2 + 168))(a2);
  }

  else
  {
    if (a3)
    {
      return 0xFFFFFFFFLL;
    }

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
    (*(*a2 + 136))(a2, 10, v4, v5, v6, v7);
  }

  return 0;
}

uint64_t HgcBlackHole::Bind(HgcBlackHole *this, HGHandler *a2)
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

uint64_t HgcBlackHole::RenderTile(HgcBlackHole *this, HGTile *a2)
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
    v12 = *(a2 + 12);
    v13 = 16 * *(a2 + 6);
    v14 = 16 * *(a2 + 26);
    v15.i64[0] = 0x3F0000003F000000;
    v15.i64[1] = 0x3F0000003F000000;
    v16 = v9;
    do
    {
      if (v10 < 2)
      {
        v17 = 0;
        v20 = v16;
      }

      else
      {
        v17 = 0;
        v18 = 16;
        v19 = v10;
        v20 = v16;
        do
        {
          v21 = vaddq_f32(v20, xmmword_2603429B0);
          v22 = *(this + 51);
          v23 = *(v22 + 64);
          v24 = *(v22 + 80);
          v25 = vmulq_f32(v20, v23);
          v26 = vmulq_f32(v21, v23);
          v27 = vaddq_f32(v25, vextq_s8(v25, v25, 4uLL));
          v28 = vaddq_f32(v26, vextq_s8(v26, v26, 4uLL));
          v29 = vaddq_f32(vextq_s8(v27, v27, 8uLL), v27);
          v30 = vaddq_f32(vextq_s8(v28, v28, 8uLL), v28);
          v31 = *(v22 + 160);
          v32 = *(v22 + 176);
          v33 = vminq_f32(vmaxq_f32(vrecpeq_f32(v29), v31), v32);
          v34 = vminq_f32(vmaxq_f32(vrecpeq_f32(v30), v31), v32);
          v35 = vminq_f32(vmaxq_f32(vmulq_f32(v33, vrecpsq_f32(v29, v33)), v31), v32);
          v36 = vminq_f32(vmaxq_f32(vmulq_f32(v34, vrecpsq_f32(v30, v34)), v31), v32);
          v37 = vmulq_f32(v35, vrecpsq_f32(v29, v35));
          v38 = vmulq_f32(v36, vrecpsq_f32(v30, v36));
          v40 = *(v22 + 32);
          v39 = *(v22 + 48);
          v41 = vmulq_f32(v20, v39);
          v42 = vmulq_f32(v21, v39);
          v43 = vaddq_f32(v41, vextq_s8(v41, v41, 4uLL));
          v44 = vaddq_f32(v42, vextq_s8(v42, v42, 4uLL));
          v43.i64[0] = vaddq_f32(v43, vdupq_laneq_s64(v43, 1)).u64[0];
          v45.i64[0] = vaddq_f32(v44, vdupq_laneq_s64(v44, 1)).u64[0];
          v43.i64[1] = v37.i64[1];
          v45.i64[1] = v38.i64[1];
          v46 = vmulq_f32(v20, v40);
          v47 = vmulq_f32(v21, v40);
          v48 = vaddq_f32(v46, vextq_s8(v46, v46, 4uLL));
          v49 = vaddq_f32(v47, vextq_s8(v47, v47, 4uLL));
          v50 = vaddq_f32(v49, vextq_s8(v49, v49, 8uLL));
          v52 = *(v22 + 192);
          v51 = *(v22 + 208);
          v53 = vbslq_s8(v52, vaddq_f32(v48, vextq_s8(v48, v48, 8uLL)), v43);
          v54 = vbslq_s8(v52, v50, v45);
          v55 = vmulq_laneq_f32(v53, v53, 2);
          v56 = *(v22 + 16);
          v57 = vsubq_f32(v55, *v22);
          v58 = vsubq_f32(vmulq_laneq_f32(v54, v54, 2), *v22);
          v59 = vmulq_f32(v57, v57);
          v60 = vmulq_f32(v58, v58);
          v61 = vaddq_f32(v59, vrev64q_s32(v59));
          v62 = vaddq_f32(v60, vrev64q_s32(v60));
          v63.i64[0] = v57.i64[0];
          v63.i64[1] = vmaxq_f32(vextq_s8(v61, v61, 8uLL), v51).i64[1];
          v43.i64[0] = v58.i64[0];
          v43.i64[1] = vmaxq_f32(vextq_s8(v62, v62, 8uLL), v51).i64[1];
          v64 = vminq_f32(vrsqrteq_f32(v63), v32);
          v65 = vminq_f32(vrsqrteq_f32(v43), v32);
          v66 = vminq_f32(vmulq_f32(v64, vrsqrtsq_f32(vmulq_f32(v64, v63), v64)), v32);
          v67 = vminq_f32(vmulq_f32(v65, vrsqrtsq_f32(vmulq_f32(v65, v43), v65)), v32);
          v57.i64[1] = vmulq_f32(v66, vrsqrtsq_f32(vmulq_f32(v66, v63), v66)).i64[1];
          v58.i64[1] = vmulq_f32(v67, vrsqrtsq_f32(vmulq_f32(v67, v43), v67)).i64[1];
          v68 = vmulq_n_f32(v57, *v61.i32);
          v69 = vmulq_n_f32(v58, *v62.i32);
          v70 = vextq_s8(v56, v56, 8uLL);
          v71 = vminq_f32(vmaxq_f32(vrecpeq_f32(v70), v51), v32);
          v72 = vminq_f32(vmaxq_f32(vmulq_f32(v71, vrecpsq_f32(v70, v71)), v51), v32);
          v73 = vmulq_f32(v72, vrecpsq_f32(v70, v72));
          v74 = vmaxq_f32(vmulq_laneq_f32(v73, v68, 2), v31);
          v75 = vmaxq_f32(vmulq_laneq_f32(v73, v69, 2), v31);
          v76 = *(v22 + 224);
          v77 = *(v22 + 240);
          v78 = vbslq_s8(v77, vaddq_f32(vrev64q_s32(v68), vmulq_n_f32(vbslq_s8(v77, vminq_f32(v74, v76), v57), v56.f32[0])), v57);
          v79 = vbslq_s8(v77, vaddq_f32(vrev64q_s32(v69), vmulq_n_f32(vbslq_s8(v77, vminq_f32(v75, v76), v58), v56.f32[0])), v58);
          v74.i64[0] = vmulq_laneq_f32(v78, v78, 2).u64[0];
          v75.i64[0] = vmulq_laneq_f32(v79, v79, 2).u64[0];
          v74.i64[1] = v78.i64[1];
          v75.i64[1] = v79.i64[1];
          v80 = vaddq_f32(*v22, vmulq_laneq_f32(v74, v78, 3));
          v81 = vaddq_f32(*v22, vmulq_laneq_f32(v75, v79, 3));
          v82 = v80;
          v82.i32[3] = 1.0;
          v83 = v81;
          v83.i32[3] = 1.0;
          v80.i64[1] = vextq_s8(v82, v82, 8uLL).u64[0];
          v84 = *(v22 + 256);
          v85 = *(v22 + 272);
          *v86.f32 = vqtbl1_s8(v80, *v84.f32);
          v87 = vextq_s8(v84, v84, 8uLL).u64[0];
          *&v86.u32[2] = vqtbl1_s8(v80, v87);
          v81.i64[1] = vextq_s8(v83, v83, 8uLL).u64[0];
          *v84.f32 = vqtbl1_s8(v81, *v84.f32);
          *&v84.u32[2] = vqtbl1_s8(v81, v87);
          v89 = *(v22 + 96);
          v88 = *(v22 + 112);
          v90 = vmulq_f32(v88, v86);
          v91 = vmulq_f32(v88, v84);
          v92 = vadd_f32(*v90.i8, vrev64_s32(*v90.i8));
          v93 = vextq_s8(v90, v90, 8uLL);
          *v93.i8 = vadd_f32(*v93.i8, v92);
          v94 = vadd_f32(*v91.i8, vrev64_s32(*v91.i8));
          v95 = vextq_s8(v91, v91, 8uLL);
          *v95.i8 = vadd_f32(*v95.i8, v94);
          *v63.f32 = vext_s8(*v93.i8, *&vextq_s8(v68, v68, 8uLL), 4uLL);
          v63.i64[1] = vextq_s8(v68, v93, 0xCuLL).u64[0];
          *v80.f32 = vext_s8(*v95.i8, *&vextq_s8(v69, v69, 8uLL), 4uLL);
          v80.i64[1] = vextq_s8(v69, v95, 0xCuLL).u64[0];
          v96 = vminq_f32(vmaxq_f32(vrecpeq_f32(v63), v51), v32);
          v97 = vminq_f32(vmaxq_f32(vrecpeq_f32(v80), v51), v32);
          v98 = vminq_f32(vmaxq_f32(vmulq_f32(v96, vrecpsq_f32(v63, v96)), v51), v32);
          v99 = vminq_f32(vmaxq_f32(vmulq_f32(v97, vrecpsq_f32(v80, v97)), v51), v32);
          v100 = vbslq_s8(v85, v68, vmulq_f32(v98, vrecpsq_f32(v63, v98)));
          v101 = vbslq_s8(v85, v69, vmulq_f32(v99, vrecpsq_f32(v80, v99)));
          v102 = vmulq_f32(v89, v86);
          v103 = vmulq_f32(v89, v84);
          v102.i64[0] = vaddq_f32(vextq_s8(v102, v9, 4uLL), vaddq_f32(v102, vrev64q_s32(v102))).u64[0];
          v103.i64[0] = vaddq_f32(vextq_s8(v103, v9, 4uLL), vaddq_f32(v103, vrev64q_s32(v103))).u64[0];
          v104 = vmulq_f32(v24, v86);
          v105 = vmulq_f32(v24, v84);
          v106 = vaddq_f32(vextq_s8(v104, v104, 8uLL), vaddq_f32(v104, vrev64q_s32(v104)));
          v107 = vaddq_f32(vextq_s8(v105, v105, 8uLL), vaddq_f32(v105, vrev64q_s32(v105)));
          v102.i64[1] = v100.i64[1];
          v103.i64[1] = v101.i64[1];
          v108 = vbslq_s8(v52, v106, v102);
          v109 = vbslq_s8(v52, v107, v103);
          v110 = vmulq_laneq_f32(vmulq_laneq_f32(v108, v108, 3), v56, 2);
          v111 = vmulq_laneq_f32(vmulq_laneq_f32(v109, v109, 3), v56, 2);
          v113 = *(v22 + 128);
          v112 = *(v22 + 144);
          v106.i64[0] = vandq_s8(v76, vcgtq_f32(v110, v112)).u64[0];
          v107.i64[0] = vandq_s8(v76, vcgtq_f32(v111, v112)).u64[0];
          v89.i64[0] = v106.i64[0];
          v89.i64[1] = v108.i64[1];
          v85.i64[0] = v107.i64[0];
          v85.i64[1] = v109.i64[1];
          v114 = vdupq_lane_s64(vandq_s8(v76, vcgtq_f32(v113, v110)).i64[0], 0);
          v115 = vdupq_lane_s64(vandq_s8(v76, vcgtq_f32(v113, v111)).i64[0], 0);
          v116 = vdupq_laneq_s64(v114, 1).u64[0];
          v114.i64[0] = v110.i64[0];
          v117.i64[0] = v110.i64[0];
          v117.i64[1] = v116;
          v118 = vdupq_laneq_s64(v115, 1).u64[0];
          v115.i64[0] = v111.i64[0];
          v119.i64[0] = v111.i64[0];
          v119.i64[1] = v118;
          v120.i64[0] = v110.i64[0];
          v120.i64[1] = vmaxq_f32(v114, vrev64q_s32(v117)).i64[1];
          v121 = vmaxq_f32(v115, vrev64q_s32(v119));
          v115.i64[0] = v111.i64[0];
          v115.i64[1] = v121.i64[1];
          v121.i64[0] = vdupq_laneq_s64(v108, 1).u64[0];
          v106.i64[1] = v121.i64[0];
          v117.i64[0] = vdupq_laneq_s64(v109, 1).u64[0];
          v107.i64[1] = v117.i64[0];
          v122 = vmaxq_f32(v89, vrev64q_s32(v106));
          v123 = vmaxq_f32(v85, vrev64q_s32(v107));
          v110.i64[1] = vmaxq_f32(v120, vextq_s8(*&v108, *&v122, 8uLL)).i64[1];
          v111.i64[1] = vmaxq_f32(v115, vextq_s8(*&v109, *&v123, 8uLL)).i64[1];
          v110.i64[0] = vmaxq_f32(v110, v113).u64[0];
          v111.i64[0] = vmaxq_f32(v111, v113).u64[0];
          v122.i64[1] = v121.i64[0];
          v124 = vrev64q_s32(v122);
          v123.i64[1] = v117.i64[0];
          v125 = vrev64q_s32(v123);
          v126 = vextq_s8(v56, v56, 4uLL);
          v127 = vbslq_s8(v77, vmulq_laneq_f32(vbslq_s8(v77, vaddq_f32(v126, v124), v110), v56, 2), v110);
          v128 = vbslq_s8(v77, vmulq_laneq_f32(vbslq_s8(v77, vaddq_f32(v126, v125), v111), v56, 2), v111);
          v111.i64[0] = vminq_f32(v127, v112).u64[0];
          v111.i64[1] = v108.i64[1];
          v129.i64[0] = vminq_f32(v128, v112).u64[0];
          v129.i64[1] = v109.i64[1];
          v130 = *(a2 + 22);
          v131 = vsubq_f32(v111, v9);
          v132 = *(a2 + 10);
          if (v5)
          {
            v133 = vaddq_s32(vcvtq_s32_f32(v131), vcltzq_f32(v131));
            v134 = vsubq_f32(v131, vcvtq_f32_s32(v133)).u64[0];
            v135 = vsubq_f32(v129, v9);
            v136 = vaddq_s32(vcvtq_s32_f32(v135), vcltzq_f32(v135));
            v137 = vsubq_f32(v135, vcvtq_f32_s32(v136)).u64[0];
            *v133.i8 = vmla_s32(vzip1_s32(*v133.i8, *v136.i8), vzip2_s32(*v133.i8, *v136.i8), vdup_n_s32(v130));
            v138 = (v132 + 16 * v133.i32[0]);
            v139 = vaddq_f32(*v138, vmulq_n_f32(vsubq_f32(v138[1], *v138), v134.f32[0]));
            v140 = vaddq_f32(v139, vmulq_lane_f32(vsubq_f32(vaddq_f32(v138[v130], vmulq_n_f32(vsubq_f32(v138[v130 + 1], v138[v130]), v134.f32[0])), v139), v134, 1));
            v141 = (v132 + 16 * v133.i32[1]);
            v142 = vaddq_f32(*v141, vmulq_n_f32(vsubq_f32(v141[1], *v141), v137.f32[0]));
            v143 = vaddq_f32(v142, vmulq_lane_f32(vsubq_f32(vaddq_f32(v141[v130], vmulq_n_f32(vsubq_f32(v141[v130 + 1], v141[v130]), v137.f32[0])), v142), v137, 1));
          }

          else
          {
            v144 = vaddq_f32(v131, v15);
            v145 = vcvtq_s32_f32(v144);
            v146 = vaddq_f32(vsubq_f32(v129, v9), v15);
            v147 = vcvtq_s32_f32(v146);
            *v144.f32 = vadd_s32(*v145.i8, *&vcgtq_f32(vcvtq_f32_s32(v145), v144));
            *v146.f32 = vadd_s32(*v147.i8, *&vcgtq_f32(vcvtq_f32_s32(v147), v146));
            *v146.f32 = vmla_s32(vzip1_s32(*v144.f32, *v146.f32), vzip2_s32(*v144.f32, *v146.f32), vdup_n_s32(v130));
            v148 = v146.i32[1];
            v140 = *(v132 + 16 * v146.i32[0]);
            v143 = *(v132 + 16 * v148);
          }

          v149 = vextq_s8(v127, v127, 0xCuLL);
          v150 = vextq_s8(v128, v128, 0xCuLL);
          v151 = vminq_f32(vmaxq_f32(vrecpeq_f32(v149), v51), v32);
          v152 = vminq_f32(vmaxq_f32(vrecpeq_f32(v150), v51), v32);
          v153 = vminq_f32(vmaxq_f32(vmulq_f32(v151, vrecpsq_f32(v149, v151)), v51), v32);
          v154 = vminq_f32(vmaxq_f32(vmulq_f32(v152, vrecpsq_f32(v150, v152)), v51), v32);
          v155.i64[0] = vmulq_laneq_f32(vmulq_f32(v153, vrecpsq_f32(v149, v153)), v108, 2).u64[0];
          v154.i64[0] = vmulq_laneq_f32(vmulq_f32(v154, vrecpsq_f32(v150, v154)), v109, 2).u64[0];
          v155.i64[1] = v127.i64[1];
          v154.i64[1] = v128.i64[1];
          v156 = *(v22 + 288);
          v157 = *(v22 + 304);
          v158 = vaddq_f32(v31, vmulq_f32(v156, v155));
          v159 = vaddq_f32(v31, vmulq_f32(v156, v154));
          v160 = vminq_f32(vmaxq_f32(v158, v157), v76);
          v161 = vextq_s8(v56, v56, 0xCuLL);
          v162 = vsubq_f32(vmulq_laneq_f32(v160, v56, 3), v161);
          v163 = vaddq_f32(*(v12 + v18), vmulq_n_f32(vsubq_f32(vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v128, 2), v157), v157, v143), *(v12 + v18)), vaddq_f32(v76, vsubq_f32(vmulq_laneq_f32(vminq_f32(vmaxq_f32(v159, v157), v76), v56, 3), v161)).f32[0]));
          v164 = (v11 + v18);
          v164[-1] = vaddq_f32(*(v12 + v18 - 16), vmulq_n_f32(vsubq_f32(vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v127, 2), v157), v157, v140), *(v12 + v18 - 16)), vaddq_f32(v76, v162).f32[0]));
          *v164 = v163;
          v20 = vaddq_f32(v21, xmmword_2603429B0);
          v19 -= 2;
          v17 += 2;
          v18 += 32;
        }

        while (v19 > 1);
      }

      if (v17 < v10)
      {
        v165 = *(this + 51);
        v166 = vmulq_f32(v20, *(v165 + 64));
        v167 = vaddq_f32(v166, vextq_s8(v166, v166, 4uLL));
        v168 = vaddq_f32(vextq_s8(v167, v167, 8uLL), v167);
        v169 = *(v165 + 160);
        v170 = *(v165 + 176);
        v171 = vminq_f32(vmaxq_f32(vrecpeq_f32(v168), v169), v170);
        v172 = vminq_f32(vmaxq_f32(vmulq_f32(v171, vrecpsq_f32(v168, v171)), v169), v170);
        v173 = vmulq_f32(v20, *(v165 + 48));
        v174 = vaddq_f32(v173, vextq_s8(v173, v173, 4uLL));
        v175 = vmulq_f32(v172, vrecpsq_f32(v168, v172));
        v172.i64[0] = vaddq_f32(v174, vdupq_laneq_s64(v174, 1)).u64[0];
        v172.i64[1] = v175.i64[1];
        v176 = vmulq_f32(v20, *(v165 + 32));
        v177 = vaddq_f32(v176, vextq_s8(v176, v176, 4uLL));
        v179 = *(v165 + 192);
        v178 = *(v165 + 208);
        v180 = vbslq_s8(v179, vaddq_f32(v177, vextq_s8(v177, v177, 8uLL)), v172);
        v181 = vmulq_laneq_f32(v180, v180, 2);
        v182 = *(v165 + 16);
        v183 = vsubq_f32(v181, *v165);
        v184 = vmulq_f32(v183, v183);
        v185 = vaddq_f32(v184, vrev64q_s32(v184));
        v186.i64[0] = v183.i64[0];
        v186.i64[1] = vmaxq_f32(vextq_s8(v185, v185, 8uLL), v178).i64[1];
        v187 = vminq_f32(vrsqrteq_f32(v186), v170);
        v188 = vminq_f32(vmulq_f32(v187, vrsqrtsq_f32(vmulq_f32(v187, v186), v187)), v170);
        v183.i64[1] = vmulq_f32(v188, vrsqrtsq_f32(vmulq_f32(v188, v186), v188)).i64[1];
        v189 = vmulq_n_f32(v183, *v185.i32);
        v190 = vextq_s8(v182, v182, 8uLL);
        v191 = vminq_f32(vmaxq_f32(vrecpeq_f32(v190), v178), v170);
        v192 = vminq_f32(vmaxq_f32(vmulq_f32(v191, vrecpsq_f32(v190, v191)), v178), v170);
        v193 = vmaxq_f32(vmulq_laneq_f32(vmulq_f32(v192, vrecpsq_f32(v190, v192)), v189, 2), v169);
        v194 = *(v165 + 224);
        v195 = *(v165 + 240);
        v196 = vbslq_s8(v195, vaddq_f32(vrev64q_s32(v189), vmulq_n_f32(vbslq_s8(v195, vminq_f32(v193, v194), v183), v182.f32[0])), v183);
        v193.i64[0] = vmulq_laneq_f32(v196, v196, 2).u64[0];
        v193.i64[1] = v196.i64[1];
        v197 = vaddq_f32(*v165, vmulq_laneq_f32(v193, v196, 3));
        v198 = v197;
        v198.i32[3] = 1.0;
        v197.i64[1] = vextq_s8(v198, v198, 8uLL).u64[0];
        v199 = *(v165 + 256);
        *v200.f32 = vqtbl1_s8(v197, *v199.i8);
        *&v200.u32[2] = vqtbl1_s8(v197, *&vextq_s8(v199, v199, 8uLL));
        v201 = vmulq_f32(*(v165 + 112), v200);
        v202 = vadd_f32(*v201.i8, vrev64_s32(*v201.i8));
        v203 = vextq_s8(v201, v201, 8uLL);
        *v203.i8 = vadd_f32(*v203.i8, v202);
        *v204.f32 = vext_s8(*v203.i8, *&vextq_s8(v189, v189, 8uLL), 4uLL);
        v204.i64[1] = vextq_s8(v189, v203, 0xCuLL).u64[0];
        v205 = vminq_f32(vmaxq_f32(vrecpeq_f32(v204), v178), v170);
        v206 = vminq_f32(vmaxq_f32(vmulq_f32(v205, vrecpsq_f32(v204, v205)), v178), v170);
        v207 = vmulq_f32(*(v165 + 96), v200);
        v207.i64[0] = vaddq_f32(vextq_s8(v207, v9, 4uLL), vaddq_f32(v207, vrev64q_s32(v207))).u64[0];
        v208 = vmulq_f32(*(v165 + 80), v200);
        v207.i64[1] = vbslq_s8(*(v165 + 272), *&v189, vmulq_f32(v206, vrecpsq_f32(v204, v206))).i64[1];
        v209 = vbslq_s8(v179, vaddq_f32(vextq_s8(v208, v208, 8uLL), vaddq_f32(v208, vrev64q_s32(v208))), v207);
        v210 = vmulq_laneq_f32(vmulq_laneq_f32(v209, v209, 3), v182, 2);
        v212 = *(v165 + 128);
        v211 = *(v165 + 144);
        v189.i64[0] = vandq_s8(v194, vcgtq_f32(v210, v211)).u64[0];
        v204.i64[0] = v189.i64[0];
        v204.i64[1] = v209.i64[1];
        v213 = vdupq_lane_s64(vandq_s8(v194, vcgtq_f32(v212, v210)).i64[0], 0);
        v200.i64[0] = vdupq_laneq_s64(v213, 1).u64[0];
        v213.i64[0] = v210.i64[0];
        v214.i64[0] = v210.i64[0];
        v214.i64[1] = v200.i64[0];
        v200.i64[0] = v210.i64[0];
        v200.i64[1] = vmaxq_f32(v213, vrev64q_s32(v214)).i64[1];
        v213.i64[0] = vdupq_laneq_s64(v209, 1).u64[0];
        v189.i64[1] = v213.i64[0];
        v215 = vmaxq_f32(v204, vrev64q_s32(v189));
        v210.i64[1] = vmaxq_f32(v200, vextq_s8(*&v209, *&v215, 8uLL)).i64[1];
        v210.i64[0] = vmaxq_f32(v210, v212).u64[0];
        v215.i64[1] = v213.i64[0];
        v216 = vbslq_s8(v195, vmulq_laneq_f32(vbslq_s8(v195, vaddq_f32(vextq_s8(v182, v182, 4uLL), vrev64q_s32(v215)), v210), v182, 2), v210);
        v210.i64[0] = vminq_f32(v216, v211).u64[0];
        v210.i64[1] = v209.i64[1];
        v217 = *(a2 + 22);
        v218 = vsubq_f32(v210, v9);
        v219 = *(a2 + 10);
        if (v5)
        {
          v220 = vaddq_s32(vcvtq_s32_f32(v218), vcltzq_f32(v218));
          v221 = vsubq_f32(v218, vcvtq_f32_s32(v220)).u64[0];
          v222 = (v219 + 16 * (v220.i32[0] + v220.i32[1] * v217));
          v223 = vaddq_f32(*v222, vmulq_n_f32(vsubq_f32(v222[1], *v222), v221.f32[0]));
          v224 = vaddq_f32(v223, vmulq_lane_f32(vsubq_f32(vaddq_f32(v222[v217], vmulq_n_f32(vsubq_f32(v222[v217 + 1], v222[v217]), v221.f32[0])), v223), v221, 1));
        }

        else
        {
          v225 = vaddq_f32(v218, v15);
          v226 = vcvtq_s32_f32(v225);
          v225.i64[0] = vaddq_s32(v226, vcgtq_f32(vcvtq_f32_s32(v226), v225)).u64[0];
          v224 = *(v219 + 16 * (v225.i32[0] + v225.i32[1] * v217));
        }

        v227 = vextq_s8(v216, v216, 0xCuLL);
        v228 = vminq_f32(vmaxq_f32(vrecpeq_f32(v227), v178), v170);
        v229 = vminq_f32(vmaxq_f32(vmulq_f32(v228, vrecpsq_f32(v227, v228)), v178), v170);
        v229.i64[0] = vmulq_laneq_f32(vmulq_f32(v229, vrecpsq_f32(v227, v229)), v209, 2).u64[0];
        v229.i64[1] = v216.i64[1];
        *(v11 + 16 * v17) = vaddq_f32(*(v12 + 16 * v17), vmulq_n_f32(vsubq_f32(vbslq_s8(vcgtq_f32(vdupq_laneq_s32(v216, 2), *(v165 + 304)), *(v165 + 304), v224), *(v12 + 16 * v17)), vaddq_f32(v194, vsubq_f32(vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v169, vmulq_f32(*(v165 + 288), v229)), *(v165 + 304)), v194), v182, 3), vdupq_laneq_s32(v182, 3))).f32[0]));
      }

      v16 = vaddq_f32(v16, xmmword_2603429C0);
      v12 += v14;
      v11 += v13;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcBlackHole::GetDOD(HgcBlackHole *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 != 1)
  {
    if (a3)
    {
      v7 = &HGRectNull;
    }

    else
    {
      if ((*(*this + 312))(this, a2) >= 1)
      {
        v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
        HGRectGrow(v5, v4, v6);
      }

      v7 = &HGRectInfinite;
    }

    return *v7;
  }

  return v5;
}

uint64_t HgcBlackHole::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 1)
  {
    return *&a4.var0;
  }

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

void HgcBlackHole::HgcBlackHole(HgcBlackHole *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E4828;
  operator new();
}

void HgcBlackHole::~HgcBlackHole(HGNode *this)
{
  *this = &unk_2871E4828;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C409BD2D9E4);
  }

  HGNode::~HGNode(this);
}

{
  HgcBlackHole::~HgcBlackHole(this);

  HGObject::operator delete(v1);
}

uint64_t HgcBlackHole::SetParameter(HgcBlackHole *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
{
  v7 = 0xFFFFFFFFLL;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      if (a2 == 5)
      {
        v13 = *(this + 51);
        if (v13[5].n128_f32[0] != a3.n128_f32[0] || v13[5].n128_f32[1] != a4 || v13[5].n128_f32[2] != a6 || v13[5].n128_f32[3] != 0.0)
        {
          v13[5].n128_u32[0] = a3.n128_u32[0];
          v13[5].n128_f32[1] = a4;
          v13[5].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v13[5].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v13[20] = a3;
          goto LABEL_62;
        }
      }

      else
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
          v11[21] = a3;
          goto LABEL_62;
        }
      }

      return 0;
    }

    switch(a2)
    {
      case 7:
        v15 = *(this + 51);
        if (v15[7].n128_f32[0] != a3.n128_f32[0] || v15[7].n128_f32[1] != a4 || v15[7].n128_f32[2] != a6 || v15[7].n128_f32[3] != 0.0)
        {
          v15[7].n128_u32[0] = a3.n128_u32[0];
          v15[7].n128_f32[1] = a4;
          v15[7].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v15[7].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v15[22] = a3;
          goto LABEL_62;
        }

        return 0;
      case 8:
        v17 = *(this + 51);
        if (*(v17 + 128) != a3.n128_f32[0] || *(v17 + 132) != a4 || *(v17 + 136) != a5 || *(v17 + 140) != a6)
        {
          *(v17 + 128) = a3.n128_u32[0];
          *(v17 + 132) = a4;
          *(v17 + 136) = a5;
          *(v17 + 140) = a6;
          goto LABEL_62;
        }

        return 0;
      case 9:
        v9 = *(this + 51);
        if (*(v9 + 144) != a3.n128_f32[0] || *(v9 + 148) != a4 || *(v9 + 152) != a5 || *(v9 + 156) != a6)
        {
          *(v9 + 144) = a3.n128_u32[0];
          *(v9 + 148) = a4;
          *(v9 + 152) = a5;
          *(v9 + 156) = a6;
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
        v14 = *(this + 51);
        if (*(v14 + 32) != a3.n128_f32[0] || *(v14 + 36) != a4 || *(v14 + 40) != a5 || *(v14 + 44) != a6)
        {
          *(v14 + 32) = a3.n128_u32[0];
          *(v14 + 36) = a4;
          *(v14 + 40) = a5;
          *(v14 + 44) = a6;
          goto LABEL_62;
        }
      }

      else if (a2 == 3)
      {
        v16 = *(this + 51);
        if (*(v16 + 48) != a3.n128_f32[0] || *(v16 + 52) != a4 || *(v16 + 56) != a5 || *(v16 + 60) != a6)
        {
          *(v16 + 48) = a3.n128_u32[0];
          *(v16 + 52) = a4;
          *(v16 + 56) = a5;
          *(v16 + 60) = a6;
          goto LABEL_62;
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
LABEL_62:
          HGNode::ClearBits(this, a2, a7);
          return 1;
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
        goto LABEL_62;
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
        goto LABEL_62;
      }

      return 0;
    }
  }

  return v7;
}

uint64_t HgcBlackHole::GetParameter(HgcBlackHole *this, int a2, float *a3)
{
  v3 = 0xFFFFFFFFLL;
  if (a2 > 4)
  {
    if (a2 <= 6)
    {
      v8 = *(this + 51);
      if (a2 == 5)
      {
        *a3 = v8[80];
        a3[1] = v8[81];
        a3[2] = v8[82];
        v5 = v8 + 83;
      }

      else
      {
        *a3 = v8[84];
        a3[1] = v8[85];
        a3[2] = v8[86];
        v5 = v8 + 87;
      }

      goto LABEL_22;
    }

    switch(a2)
    {
      case 7:
        v11 = *(this + 51);
        *a3 = v11[88];
        a3[1] = v11[89];
        a3[2] = v11[90];
        v5 = v11 + 91;
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
          *a3 = v4[16];
          a3[1] = v4[17];
          a3[2] = v4[18];
          v5 = v4 + 19;
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

const char *HgcBulge::GetProgram(HgcBulge *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000483\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, -2.000000000, 3.000000000, 9.999999975e-07);\n    float4 s0;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[2].zw;\n    s0.z = dot(s0.xy, s0.xy);\n    s0.w = s0.z + float(c0.w);\n    s0.w = rsqrt(s0.w);\n    s0.z = s0.w*s0.z;\n    s0.z = clamp(-s0.z*hg_Params[1].x + float(c0.x), 0.00000f, 1.00000f);\n    s0.w = s0.z*float(c0.y) + float(c0.z);\n    s0.z = s0.z*s0.z;\n    s0.z = s0.z*s0.w;\n    s0.z = s0.z*hg_Params[1].y + float(c0.x);\n    s0.xy = s0.xy*s0.zz;\n    s0.xy = s0.xy*hg_Params[2].xy + hg_Params[0].xy;\n    s0.xy = s0.xy + hg_Params[3].xy;\n    s0.xy = s0.xy*hg_Params[3].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=92b92d6f:14d4cb0d:4ae8af5e:de26b470\n//SIG=00400000:00000000:00000000:00000001:0001:0004:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000045a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, -2.000000000, 3.000000000, 9.999999975e-07);\n    float4 r0;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    r0.xy = r0.xy*hg_Params[2].zw;\n    r0.z = dot(r0.xy, r0.xy);\n    r0.w = r0.z + c0.w;\n    r0.w = rsqrt(r0.w);\n    r0.z = r0.w*r0.z;\n    r0.z = clamp(-r0.z*hg_Params[1].x + c0.x, 0.00000f, 1.00000f);\n    r0.w = r0.z*c0.y + c0.z;\n    r0.z = r0.z*r0.z;\n    r0.z = r0.z*r0.w;\n    r0.z = r0.z*hg_Params[1].y + c0.x;\n    r0.xy = r0.xy*r0.zz;\n    r0.xy = r0.xy*hg_Params[2].xy + hg_Params[0].xy;\n    r0.xy = r0.xy + hg_Params[3].xy;\n    r0.xy = r0.xy*hg_Params[3].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=70c635f2:cc98e99c:085238fa:c321cd3a\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004b3\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, -2.000000000, 3.000000000, 9.999999975e-07);\n    highp vec4 r0;\n\n    r0.xy = hg_TexCoord0.xy - hg_ProgramLocal0.xy;\n    r0.xy = r0.xy*hg_ProgramLocal2.zw;\n    r0.z = dot(r0.xy, r0.xy);\n    r0.w = r0.z + c0.w;\n    r0.w = inversesqrt(r0.w);\n    r0.z = r0.w*r0.z;\n    r0.z = clamp(-r0.z*hg_ProgramLocal1.x + c0.x, 0.00000, 1.00000);\n    r0.w = r0.z*c0.y + c0.z;\n    r0.z = r0.z*r0.z;\n    r0.z = r0.z*r0.w;\n    r0.z = r0.z*hg_ProgramLocal1.y + c0.x;\n    r0.xy = r0.xy*r0.zz;\n    r0.xy = r0.xy*hg_ProgramLocal2.xy + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy + hg_ProgramLocal3.xy;\n    r0.xy = r0.xy*hg_ProgramLocal3.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=9586b2c2:73b3ed81:d68ee330:3bb33f85\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA8F950(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA8FAD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA8FB20()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA8FB18);
}

uint64_t HgcBulge::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcBulge::Bind(HgcBulge *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBulge::RenderTile(HgcBulge *this, float32x4_t **a2)
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
          v24 = *(v23 + 16);
          v25 = vsubq_f32(v19, *v23);
          v26 = vsubq_f32(v20, *v23);
          v27 = *(v23 + 32);
          v28 = *(v23 + 48);
          v29 = vextq_s8(v27, v27, 8uLL);
          v30 = vmulq_f32(v25, v29);
          v31 = vmulq_f32(v26, v29);
          v32 = vmulq_f32(vsubq_f32(v21, *v23), v29);
          v33 = vmulq_f32(vsubq_f32(v22, *v23), v29);
          v34 = vmulq_f32(v30, v30);
          v35 = vmulq_f32(v31, v31);
          v36 = vmulq_f32(v32, v32);
          v37 = vmulq_f32(v33, v33);
          v38 = vaddq_f32(vdupq_lane_s64(v34.i64[0], 0), vextq_s8(v9, v34, 0xCuLL));
          v39 = vaddq_f32(vdupq_lane_s64(v35.i64[0], 0), vextq_s8(v9, v35, 0xCuLL));
          v40 = vaddq_f32(vdupq_lane_s64(v36.i64[0], 0), vextq_s8(v9, v36, 0xCuLL));
          v41 = vaddq_f32(vdupq_lane_s64(v37.i64[0], 0), vextq_s8(v9, v37, 0xCuLL));
          v34.i64[0] = v30.i64[0];
          v34.i64[1] = v38.i64[1];
          v35.i64[0] = v31.i64[0];
          v35.i64[1] = v39.i64[1];
          v42.i64[0] = v32.i64[0];
          v42.i64[1] = v40.i64[1];
          v43.i64[0] = v33.i64[0];
          v43.i64[1] = v41.i64[1];
          v30.i64[1] = vdupq_laneq_s64(v38, 1).u64[0];
          v31.i64[1] = vdupq_laneq_s64(v39, 1).u64[0];
          v32.i64[1] = vdupq_laneq_s64(v40, 1).u64[0];
          v33.i64[1] = vdupq_laneq_s64(v41, 1).u64[0];
          v44 = vaddq_f32(v28, vrev64q_s32(v30));
          v45 = vaddq_f32(v28, vrev64q_s32(v32));
          v46 = *(v23 + 64);
          v47 = *(v23 + 80);
          v48 = vbslq_s8(v46, v44, v34);
          v49 = vbslq_s8(v46, vaddq_f32(v28, vrev64q_s32(v31)), v35);
          v50 = vbslq_s8(v46, v45, v42);
          v51 = vbslq_s8(v46, vaddq_f32(v28, vrev64q_s32(v33)), v43);
          v52 = vminq_f32(vrsqrteq_f32(v48), v47);
          v53 = vminq_f32(vrsqrteq_f32(v49), v47);
          v54 = vminq_f32(vrsqrteq_f32(v50), v47);
          v55 = vminq_f32(vrsqrteq_f32(v51), v47);
          v56 = vminq_f32(vmulq_f32(v52, vrsqrtsq_f32(vmulq_f32(v52, v48), v52)), v47);
          v57 = vminq_f32(vmulq_f32(v53, vrsqrtsq_f32(vmulq_f32(v53, v49), v53)), v47);
          v58 = vminq_f32(vmulq_f32(v54, vrsqrtsq_f32(vmulq_f32(v54, v50), v54)), v47);
          v59 = vminq_f32(vmulq_f32(v55, vrsqrtsq_f32(vmulq_f32(v55, v51), v55)), v47);
          v60 = vbslq_s8(v46, vmulq_f32(v56, vrsqrtsq_f32(vmulq_f32(v56, v48), v56)), v34);
          v61 = vbslq_s8(v46, vmulq_f32(v57, vrsqrtsq_f32(vmulq_f32(v57, v49), v57)), v35);
          v62 = vbslq_s8(v46, vmulq_f32(v58, vrsqrtsq_f32(vmulq_f32(v58, v50), v58)), v42);
          v63 = vbslq_s8(v46, vmulq_f32(v59, vrsqrtsq_f32(vmulq_f32(v59, v51), v59)), v43);
          v42.i64[0] = v60.i64[0];
          v42.i64[1] = vmulq_laneq_f32(v60, v60, 3).i64[1];
          v48.i64[0] = v61.i64[0];
          v48.i64[1] = vmulq_laneq_f32(v61, v61, 3).i64[1];
          v50.i64[0] = v62.i64[0];
          v50.i64[1] = vmulq_laneq_f32(v62, v62, 3).i64[1];
          v56.i64[0] = v63.i64[0];
          v56.i64[1] = vmulq_laneq_f32(v63, v63, 3).i64[1];
          v64 = vmaxq_f32(vsubq_f32(v47, vmulq_n_f32(v42, *&v24)), v28);
          v65 = vmaxq_f32(vsubq_f32(v47, vmulq_n_f32(v48, *&v24)), v28);
          v66 = vmaxq_f32(vsubq_f32(v47, vmulq_n_f32(v50, *&v24)), v28);
          v67 = vmaxq_f32(vsubq_f32(v47, vmulq_n_f32(v56, *&v24)), v28);
          v68 = vminq_f32(v64, v47);
          v69 = vminq_f32(v65, v47);
          v70 = vminq_f32(v66, v47);
          v71 = vminq_f32(v67, v47);
          v47.i64[0] = v60.i64[0];
          v47.i64[1] = v68.i64[1];
          v64.i64[0] = v61.i64[0];
          v64.i64[1] = v69.i64[1];
          v42.i64[0] = v62.i64[0];
          v42.i64[1] = v70.i64[1];
          v43.i64[0] = v63.i64[0];
          v43.i64[1] = v71.i64[1];
          v60.i64[1] = vdupq_laneq_s64(v68, 1).u64[0];
          v61.i64[1] = vdupq_laneq_s64(v69, 1).u64[0];
          v62.i64[1] = vdupq_laneq_s64(v70, 1).u64[0];
          v63.i64[1] = vdupq_laneq_s64(v71, 1).u64[0];
          v72 = vrev64q_s32(v62);
          v73 = *(v23 + 96);
          v74 = *(v23 + 112);
          v75 = vbslq_s8(v46, vaddq_f32(v73, vmulq_f32(vrev64q_s32(v60), v74)), v47);
          v76 = vbslq_s8(v46, vaddq_f32(v73, vmulq_f32(vrev64q_s32(v61), v74)), v64);
          v77 = vbslq_s8(v46, vaddq_f32(v73, vmulq_f32(v72, v74)), v42);
          v78 = vbslq_s8(v46, vaddq_f32(v73, vmulq_f32(vrev64q_s32(v63), v74)), v43);
          v79 = *(v23 + 128);
          v80 = vbslq_s8(v79, vmulq_f32(v75, v75), v75);
          v81 = vbslq_s8(v79, vmulq_f32(v76, v76), v76);
          v82 = vbslq_s8(v79, vmulq_f32(v77, v77), v77);
          v83 = vbslq_s8(v79, vmulq_f32(v78, v78), v78);
          v84 = vaddq_f32(v74, vmulq_lane_f32(vmulq_laneq_f32(v80, v80, 3), *&v24, 1));
          v85 = vaddq_f32(v74, vmulq_lane_f32(vmulq_laneq_f32(v81, v81, 3), *&v24, 1));
          v86 = vaddq_f32(v74, vmulq_lane_f32(vmulq_laneq_f32(v82, v82, 3), *&v24, 1));
          v80.i64[1] = v84.i64[1];
          v81.i64[1] = v85.i64[1];
          v82.i64[1] = v86.i64[1];
          v87 = vaddq_f32(v74, vmulq_lane_f32(vmulq_laneq_f32(v83, v83, 3), *&v24, 1));
          v83.i64[1] = v87.i64[1];
          v88 = vmulq_laneq_f32(v83, v87, 2);
          v89 = vaddq_f32(*v23, vmulq_f32(v27, vmulq_laneq_f32(v80, v84, 2)));
          v90 = vaddq_f32(*v23, vmulq_f32(v27, vmulq_laneq_f32(v81, v85, 2)));
          v91 = vaddq_f32(*v23, vmulq_f32(v27, vmulq_laneq_f32(v82, v86, 2)));
          v92 = vaddq_f32(*v23, vmulq_f32(v27, v88));
          v93 = *(a2 + 22);
          v94 = vsubq_f32(v89, v9);
          v95 = a2[10];
          if (v5)
          {
            v96 = vaddq_s32(vcvtq_s32_f32(v94), vcltzq_f32(v94));
            v97 = vsubq_f32(v94, vcvtq_f32_s32(v96)).u64[0];
            v98 = vsubq_f32(v90, v9);
            v99 = vaddq_s32(vcvtq_s32_f32(v98), vcltzq_f32(v98));
            v98.i64[0] = vsubq_f32(v98, vcvtq_f32_s32(v99)).u64[0];
            v100 = vdup_n_s32(v93);
            *v96.i8 = vmla_s32(vzip1_s32(*v96.i8, *v99.i8), vzip2_s32(*v96.i8, *v99.i8), v100);
            v101 = v96.i32[1];
            v102 = &v95[v96.i32[0]];
            v103 = vaddq_f32(*v102, vmulq_n_f32(vsubq_f32(v102[1], *v102), v97.f32[0]));
            v104 = vaddq_f32(v103, vmulq_lane_f32(vsubq_f32(vaddq_f32(v102[v93], vmulq_n_f32(vsubq_f32(v102[v93 + 1], v102[v93]), v97.f32[0])), v103), v97, 1));
            v105 = &v95[v101];
            v106 = vaddq_f32(*v105, vmulq_n_f32(vsubq_f32(v105[1], *v105), v98.f32[0]));
            v107 = vaddq_f32(v106, vmulq_lane_f32(vsubq_f32(vaddq_f32(v105[v93], vmulq_n_f32(vsubq_f32(v105[v93 + 1], v105[v93]), v98.f32[0])), v106), *v98.f32, 1));
            v108 = vsubq_f32(v91, v9);
            v109 = vaddq_s32(vcvtq_s32_f32(v108), vcltzq_f32(v108));
            v108.i64[0] = vsubq_f32(v108, vcvtq_f32_s32(v109)).u64[0];
            v110 = vsubq_f32(v92, v9);
            v111 = vaddq_s32(vcvtq_s32_f32(v110), vcltzq_f32(v110));
            *v109.i8 = vmla_s32(vzip1_s32(*v109.i8, *v111.i8), vzip2_s32(*v109.i8, *v111.i8), v100);
            v112 = &v95[v109.i32[0]];
            v111.i64[0] = vsubq_f32(v110, vcvtq_f32_s32(v111)).u64[0];
            v113 = vaddq_f32(*v112, vmulq_n_f32(vsubq_f32(v112[1], *v112), v108.f32[0]));
            v114 = vaddq_f32(v113, vmulq_lane_f32(vsubq_f32(vaddq_f32(v112[v93], vmulq_n_f32(vsubq_f32(v112[v93 + 1], v112[v93]), v108.f32[0])), v113), *v108.f32, 1));
            v115 = &v95[v109.i32[1]];
            v116 = vaddq_f32(*v115, vmulq_n_f32(vsubq_f32(v115[1], *v115), *v111.i32));
            v117 = vaddq_f32(v116, vmulq_lane_f32(vsubq_f32(vaddq_f32(v115[v93], vmulq_n_f32(vsubq_f32(v115[v93 + 1], v115[v93]), *v111.i32)), v116), *v111.i8, 1));
          }

          else
          {
            v118 = vaddq_f32(v94, v14);
            v119 = vcvtq_s32_f32(v118);
            v120 = vaddq_f32(vsubq_f32(v90, v9), v14);
            v121 = vcvtq_s32_f32(v120);
            *v118.f32 = vadd_s32(*v119.i8, *&vcgtq_f32(vcvtq_f32_s32(v119), v118));
            *v120.f32 = vadd_s32(*v121.i8, *&vcgtq_f32(vcvtq_f32_s32(v121), v120));
            *v121.i8 = vdup_n_s32(v93);
            *v118.f32 = vmla_s32(vzip1_s32(*v118.f32, *v120.f32), vzip2_s32(*v118.f32, *v120.f32), *v121.i8);
            v122 = v118.i32[1];
            v104 = v95[v118.i32[0]];
            v107 = v95[v122];
            v123 = vaddq_f32(vsubq_f32(v91, v9), v14);
            v124 = vcvtq_s32_f32(v123);
            v125 = vaddq_f32(vsubq_f32(v92, v9), v14);
            v126 = vcvtq_s32_f32(v125);
            *v125.f32 = vadd_s32(*v126.i8, *&vcgtq_f32(vcvtq_f32_s32(v126), v125));
            *v123.f32 = vadd_s32(*v124.i8, *&vcgtq_f32(vcvtq_f32_s32(v124), v123));
            *v125.f32 = vmla_s32(vzip1_s32(*v123.f32, *v125.f32), vzip2_s32(*v123.f32, *v125.f32), *v121.i8);
            v127 = v125.i32[1];
            v114 = v95[v125.i32[0]];
            v117 = v95[v127];
          }

          v17[-2] = v104;
          v17[-1] = v107;
          *v17 = v114;
          v17[1] = v117;
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
          v128 = *(this + 51);
          v129 = *(v128 + 16);
          v130 = *(v128 + 32);
          v131 = *(v128 + 48);
          v132 = vmulq_f32(vsubq_f32(v19, *v128), vextq_s8(v130, v130, 8uLL));
          v133 = vmulq_f32(v132, v132);
          v134 = vaddq_f32(vdupq_lane_s64(v133.i64[0], 0), vextq_s8(v9, v133, 0xCuLL));
          v135.i64[0] = v132.i64[0];
          v135.i64[1] = v134.i64[1];
          v132.i64[1] = vdupq_laneq_s64(v134, 1).u64[0];
          v136 = *(v128 + 64);
          v137 = *(v128 + 80);
          v138 = vbslq_s8(v136, vaddq_f32(v131, vrev64q_s32(v132)), v135);
          v139 = vminq_f32(vrsqrteq_f32(v138), v137);
          v140 = vminq_f32(vmulq_f32(v139, vrsqrtsq_f32(vmulq_f32(v139, v138), v139)), v137);
          v141 = vbslq_s8(v136, vmulq_f32(v140, vrsqrtsq_f32(vmulq_f32(v140, v138), v140)), v135);
          v140.i64[0] = v141.i64[0];
          v140.i64[1] = vmulq_laneq_f32(v141, v141, 3).i64[1];
          v142 = vminq_f32(vmaxq_f32(vsubq_f32(v137, vmulq_n_f32(v140, *&v129)), v131), v137);
          v135.i64[0] = v141.i64[0];
          v135.i64[1] = v142.i64[1];
          v141.i64[1] = vdupq_laneq_s64(v142, 1).u64[0];
          v143 = *(v128 + 112);
          v144 = vbslq_s8(v136, vaddq_f32(*(v128 + 96), vmulq_f32(v143, vrev64q_s32(v141))), v135);
          v145 = vbslq_s8(*(v128 + 128), vmulq_f32(v144, v144), v144);
          v146 = vaddq_f32(v143, vmulq_lane_f32(vmulq_laneq_f32(v145, v145, 3), *&v129, 1));
          v145.i64[1] = v146.i64[1];
          v147 = vaddq_f32(*v128, vmulq_f32(v130, vmulq_laneq_f32(v145, v146, 2)));
          v148 = *(a2 + 22);
          v149 = vsubq_f32(v147, v9);
          v150 = a2[10];
          if (v5)
          {
            v151 = vaddq_s32(vcvtq_s32_f32(v149), vcltzq_f32(v149));
            v152 = vsubq_f32(v149, vcvtq_f32_s32(v151)).u64[0];
            v153 = &v150[v151.i32[0] + v151.i32[1] * v148];
            v154 = vaddq_f32(*v153, vmulq_n_f32(vsubq_f32(v153[1], *v153), v152.f32[0]));
            v155 = vaddq_f32(v154, vmulq_lane_f32(vsubq_f32(vaddq_f32(v153[v148], vmulq_n_f32(vsubq_f32(v153[v148 + 1], v153[v148]), v152.f32[0])), v154), v152, 1));
          }

          else
          {
            v156 = vaddq_f32(v149, v14);
            v157 = vcvtq_s32_f32(v156);
            v156.i64[0] = vaddq_s32(v157, vcgtq_f32(vcvtq_f32_s32(v157), v156)).u64[0];
            v155 = v150[v156.i32[0] + v156.i32[1] * v148];
          }

          v11[v16] = v155;
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

uint64_t HgcBulge::GetDOD(HgcBulge *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBulge::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBulge::HgcBulge(HgcBulge *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E4A90;
  operator new();
}

void HgcBulge::~HgcBulge(HGNode *this)
{
  *this = &unk_2871E4A90;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcBulge::~HgcBulge(this);

  HGObject::operator delete(v1);
}

uint64_t HgcBulge::SetParameter(HgcBulge *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcBulge::GetParameter(HgcBulge *this, unsigned int a2, float *a3)
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

const char *HgcBumpMap::GetProgram(HgcBumpMap *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000617\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 255.0000000, 0.000000000);\n    half4 r0, r1, r2;\n    float4 s0, s1;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xy;\n    r1.x = half(hg_Params[5].x) - c0.x;\n    r2 = select(c0.xyyy, half4(hg_Params[1]), -r1.xxxx < 0.00000h);\n    r1.z = dot(half4(frag._texCoord1), r2);\n    r2 = select(c0.yxyy, half4(hg_Params[2]), -r1.xxxx < 0.00000h);\n    r1.w = dot(half4(frag._texCoord1), r2);\n    r0.y = clamp(r0.y, 0.00000h, 1.00000h);\n    r0.x = clamp(r0.x, 0.00000h, 1.00000h);\n    r2.xyw = select(c0.xyy, half3(hg_Params[3].xyw), -r1.xxx < 0.00000h);\n    r0.xy = r0.xy*c0.zz;\n    s0.xy = float2(r0.xy)*hg_Params[0].xy + float2(r1.zw);\n    r1.xyw = select(c0.yxy, half3(hg_Params[4].xyw), -r1.xxx < 0.00000h);\n    s0.w = float(c0.x);\n    s1.y = dot(s0.xyw, float3(r1.xyw));\n    s1.x = dot(s0.xyw, float3(r2.xyw));\n    s1.xy = s1.xy + hg_Params[6].xy;\n    s1.xy = s1.xy*hg_Params[6].zw;\n    output.color0 = (float4) hg_Texture1.sample(hg_Sampler1, s1.xy);\n    return output;\n}\n//MD5=77c07abe:e65ef4dd:22b8dffd:3b7bdcb8\n//SIG=00400000:00000001:00000001:00000003:0001:0007:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005a1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 255.0000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xy;\n    r1.x = hg_Params[5].x - c0.x;\n    r2 = select(c0.xyyy, hg_Params[1], -r1.xxxx < 0.00000f);\n    r1.z = dot(frag._texCoord1, r2);\n    r2 = select(c0.yxyy, hg_Params[2], -r1.xxxx < 0.00000f);\n    r1.w = dot(frag._texCoord1, r2);\n    r0.y = clamp(r0.y, 0.00000f, 1.00000f);\n    r0.x = clamp(r0.x, 0.00000f, 1.00000f);\n    r2.xyw = select(c0.xyy, hg_Params[3].xyw, -r1.xxx < 0.00000f);\n    r0.xy = r0.xy*c0.zz;\n    r0.xy = r0.xy*hg_Params[0].xy + r1.zw;\n    r1.xyw = select(c0.yxy, hg_Params[4].xyw, -r1.xxx < 0.00000f);\n    r0.w = c0.x;\n    r1.y = dot(r0.xyw, r1.xyw);\n    r1.x = dot(r0.xyw, r2.xyw);\n    r1.xy = r1.xy + hg_Params[6].xy;\n    r1.xy = r1.xy*hg_Params[6].zw;\n    output.color0 = hg_Texture1.sample(hg_Sampler1, r1.xy);\n    return output;\n}\n//MD5=661bfc5c:5c0c5fd2:30595d2a:723dd8a0\n//SIG=00000000:00000001:00000001:00000000:0001:0007:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000007e4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 255.0000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = texture2D(hg_Texture0, hg_TexCoord0.xy).xy;\n    r1.x = hg_ProgramLocal5.x - c0.x;\n    r2 = vec4(-r1.x < 0.00000 ? hg_ProgramLocal1.x : c0.x, -r1.x < 0.00000 ? hg_ProgramLocal1.y : c0.y, -r1.x < 0.00000 ? hg_ProgramLocal1.z : c0.y, -r1.x < 0.00000 ? hg_ProgramLocal1.w : c0.y);\n    r1.z = dot(hg_TexCoord1, r2);\n    r2 = vec4(-r1.x < 0.00000 ? hg_ProgramLocal2.x : c0.y, -r1.x < 0.00000 ? hg_ProgramLocal2.y : c0.x, -r1.x < 0.00000 ? hg_ProgramLocal2.z : c0.y, -r1.x < 0.00000 ? hg_ProgramLocal2.w : c0.y);\n    r1.w = dot(hg_TexCoord1, r2);\n    r0.y = clamp(r0.y, 0.00000, 1.00000);\n    r0.x = clamp(r0.x, 0.00000, 1.00000);\n    r2.xyw = vec3(-r1.x < 0.00000 ? hg_ProgramLocal3.x : c0.x, -r1.x < 0.00000 ? hg_ProgramLocal3.y : c0.y, -r1.x < 0.00000 ? hg_ProgramLocal3.w : c0.y);\n    r0.xy = r0.xy*c0.zz;\n    r0.xy = r0.xy*hg_ProgramLocal0.xy + r1.zw;\n    r1.xyw = vec3(-r1.x < 0.00000 ? hg_ProgramLocal4.x : c0.y, -r1.x < 0.00000 ? hg_ProgramLocal4.y : c0.x, -r1.x < 0.00000 ? hg_ProgramLocal4.w : c0.y);\n    r0.w = c0.x;\n    r1.y = dot(r0.xyw, r1.xyw);\n    r1.x = dot(r0.xyw, r2.xyw);\n    r1.xy = r1.xy + hg_ProgramLocal6.xy;\n    r1.xy = r1.xy*hg_ProgramLocal6.zw;\n    gl_FragColor = texture2D(hg_Texture1, r1.xy);\n}\n//MD5=8b17983a:4fa93b82:a3f4a4c4:8b754c50\n//SIG=00000000:00000001:00000001:00000000:0001:0007:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA909F8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA90BB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA90C10()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA90C08);
}

uint64_t HgcBumpMap::BindTexture(HgcBumpMap *this, HGHandler *a2, int a3)
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
    (*(*a2 + 136))(a2, 6, v6, v7, v8, v9);
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

uint64_t HgcBumpMap::Bind(HgcBumpMap *this, HGHandler *a2)
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

uint64_t HgcBumpMap::RenderTile(HgcBumpMap *this, HGTile *a2)
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
    v16 = v9;
    do
    {
      if (v10 < 3)
      {
        v18 = 0;
        v20 = v16;
      }

      else
      {
        v17 = 0;
        v18 = 0;
        v19 = v10;
        v20 = v16;
        do
        {
          v21 = vaddq_f32(v20, xmmword_2603429B0);
          v22 = vaddq_f32(v21, xmmword_2603429B0);
          v23 = *(this + 51);
          v24 = *(v23 + 96);
          v25 = *(v23 + 112);
          v26 = *(v23 + 64);
          v27.i64[0] = vsubq_f32(*(v23 + 80), v24).u64[0];
          v28 = vcgtq_f32(vdupq_lane_s32(*v27.i8, 0), v25);
          v29 = vbslq_s8(v28, *(v23 + 16), v24);
          v30 = vmulq_f32(v20, v29);
          v31 = vmulq_f32(v21, v29);
          v32 = vmulq_f32(v22, v29);
          v33 = vaddq_f32(v30, vextq_s8(v30, v30, 4uLL));
          v34 = vaddq_f32(v31, vextq_s8(v31, v31, 4uLL));
          v35 = vaddq_f32(v32, vextq_s8(v32, v32, 4uLL));
          v36.i64[0] = v27.i64[0];
          v36.i64[1] = vaddq_f32(v33, vdupq_lane_s64(*&v33, 0)).i64[1];
          v33.i64[0] = v27.i64[0];
          v33.i64[1] = vaddq_f32(v34, vdupq_lane_s64(*&v34, 0)).i64[1];
          v27.i64[1] = vaddq_f32(v35, vdupq_lane_s64(*&v35, 0)).i64[1];
          v37 = *(v23 + 128);
          v38 = *(v23 + 144);
          v39 = *(v23 + 48);
          v40 = vbslq_s8(v28, *(v23 + 32), v37);
          v41 = vmulq_f32(v20, v40);
          v42 = vmulq_f32(v21, v40);
          v43 = vmulq_f32(v22, v40);
          v44 = vaddq_f32(v41, vextq_s8(v41, v41, 4uLL));
          v45 = vaddq_f32(v42, vextq_s8(v42, v42, 4uLL));
          v46 = vaddq_f32(v43, vextq_s8(v43, v43, 4uLL));
          v47 = vbslq_s8(v38, vaddq_f32(v44, vextq_s8(v44, v44, 8uLL)), v36);
          v48 = vbslq_s8(v38, vaddq_f32(v45, vextq_s8(v45, v45, 8uLL)), v33);
          v49 = vbslq_s8(v38, vaddq_f32(v46, vextq_s8(v46, v46, 8uLL)), v27);
          v50 = *(v23 + 160);
          v51 = *(v23 + 176);
          v52 = vminq_f32(vmaxq_f32(*(v12 + v17), v50), v51);
          v53 = vminq_f32(vmaxq_f32(*(v12 + v17 + 16), v50), v51);
          v54 = vminq_f32(vmaxq_f32(*(v12 + v17 + 32), v50), v51);
          v55 = *(v23 + 192);
          v56 = *(v23 + 208);
          v57 = vmaxq_f32(v53, v55);
          v58 = vmaxq_f32(v54, v55);
          v59 = vminq_f32(vmaxq_f32(v52, v55), v56);
          v60 = vminq_f32(v57, v56);
          v61 = vminq_f32(v58, v56);
          v62 = vcgtq_f32(vdupq_lane_s32(*v47.f32, 0), v25);
          v63 = vcgtq_f32(vdupq_lane_s32(*v48.i8, 0), v25);
          v64 = vcgtq_f32(vdupq_lane_s32(*v49.i8, 0), v25);
          v65 = vbslq_s8(v62, v39, v24);
          v66 = vbslq_s8(v63, v39, v24);
          v67 = vbslq_s8(v64, v39, v24);
          v69 = *(v23 + 224);
          v68 = *(v23 + 240);
          v70 = vmulq_f32(v59, v69);
          v71 = vmulq_f32(v60, v69);
          v72 = vmulq_f32(v61, v69);
          v73 = vextq_s8(v48, v48, 8uLL);
          v74 = vextq_s8(v49, v49, 8uLL);
          v75 = vaddq_f32(vextq_s8(v47, v47, 8uLL), vmulq_f32(v70, *v23));
          v76 = vaddq_f32(v73, vmulq_f32(v71, *v23));
          v77 = vaddq_f32(v74, vmulq_f32(v72, *v23));
          v78 = vbslq_s8(v62, v26, v37);
          v79 = vbslq_s8(v63, v26, v37);
          v80 = vbslq_s8(v64, v26, v37);
          v75.i32[3] = 1.0;
          v76.i32[3] = 1.0;
          v77.i32[3] = 1.0;
          v81 = vmulq_f32(v75, v78);
          v82 = vmulq_f32(v76, v79);
          v83 = vmulq_f32(v77, v80);
          *v72.f32 = vqtbl1_s8(v81, *v68.i8);
          v78.i64[0] = vextq_s8(v68, v68, 8uLL).u64[0];
          *v81.i8 = vqtbl1_s8(v81, *v78.f32);
          v64.i64[0] = v72.i64[0];
          *v47.f32 = vext_s8(*v72.f32, *v81.i8, 4uLL);
          v72.i64[1] = v81.i64[0];
          *v63.f32 = vqtbl1_s8(v82, *v68.i8);
          *v82.i8 = vqtbl1_s8(v82, *v78.f32);
          v73.i64[0] = v63.i64[0];
          *v74.f32 = vext_s8(*v82.i8, *v63.f32, 4uLL);
          *v84.f32 = vext_s8(*v63.f32, *v82.i8, 4uLL);
          v63.i64[1] = v82.i64[0];
          *v85.f32 = vqtbl1_s8(v83, *v68.i8);
          *v83.i8 = vqtbl1_s8(v83, *v78.f32);
          v64.i64[1] = v81.i64[0];
          v73.i64[1] = v82.i64[0];
          v82.i64[0] = v85.i64[0];
          *v86.f32 = vext_s8(*v85.f32, *v83.i8, 4uLL);
          v85.i64[1] = v83.i64[0];
          v82.i64[1] = v83.i64[0];
          *&v47.u32[2] = vext_s8(*v81.i8, *v72.f32, 4uLL);
          v84.i64[1] = v74.i64[0];
          *&v86.u32[2] = vext_s8(*v83.i8, *v85.f32, 4uLL);
          v87 = vaddq_f32(vaddq_f32(vrev64q_s32(v64), v72), v47);
          v88 = vmulq_f32(v75, v65);
          v89 = vmulq_f32(v76, v66);
          *v75.f32 = vqtbl1_s8(v88, *v68.i8);
          *v88.f32 = vqtbl1_s8(v88, *v78.f32);
          v76.i64[0] = v75.i64[0];
          v76.i64[1] = v88.i64[0];
          v90 = vmulq_f32(v77, v67);
          *v77.f32 = vqtbl1_s8(v89, *v68.i8);
          *v89.f32 = vqtbl1_s8(v89, *v78.f32);
          v72.i64[0] = v77.i64[0];
          v72.i64[1] = v89.i64[0];
          *v68.i8 = vqtbl1_s8(v90, *v68.i8);
          *v90.f32 = vqtbl1_s8(v90, *v78.f32);
          v78.i64[0] = v68.i64[0];
          v78.i64[1] = v90.i64[0];
          v64.i64[0] = v75.i64[0];
          v64.i64[1] = v88.i64[0];
          v62.i64[0] = v77.i64[0];
          v62.i64[1] = v89.i64[0];
          v47.i64[0] = v68.i64[0];
          v47.i64[1] = v90.i64[0];
          v88.i64[1] = v75.i64[0];
          v89.i64[1] = v77.i64[0];
          v90.i64[1] = v68.i64[0];
          v91 = vbslq_s8(*(v23 + 256), vaddq_f32(vaddq_f32(vrev64q_s32(v64), v76), v88), v87);
          v92 = vbslq_s8(*(v23 + 256), vaddq_f32(vaddq_f32(vrev64q_s32(v62), v72), v89), vaddq_f32(vaddq_f32(vrev64q_s32(v73), v63), v84));
          v93 = vbslq_s8(*(v23 + 256), vaddq_f32(vaddq_f32(vrev64q_s32(v47), v78), v90), vaddq_f32(vaddq_f32(vrev64q_s32(v82), v85), v86));
          v94 = *(a2 + 26);
          v95 = vsubq_f32(v91, v9);
          v96 = *(a2 + 12);
          if (v5)
          {
            v97 = vaddq_s32(vcvtq_s32_f32(v95), vcltzq_f32(v95));
            v98 = vsubq_f32(v95, vcvtq_f32_s32(v97)).u64[0];
            v99 = vsubq_f32(v92, v9);
            v100 = vaddq_s32(vcvtq_s32_f32(v99), vcltzq_f32(v99));
            v101 = vsubq_f32(v99, vcvtq_f32_s32(v100)).u64[0];
            *v97.i8 = vmla_s32(vzip1_s32(*v97.i8, *v100.i8), vzip2_s32(*v97.i8, *v100.i8), vdup_n_s32(v94));
            v102 = (v96 + 16 * v97.i32[0]);
            v103 = vaddq_f32(*v102, vmulq_n_f32(vsubq_f32(v102[1], *v102), v98.f32[0]));
            v104 = vaddq_f32(v103, vmulq_lane_f32(vsubq_f32(vaddq_f32(v102[v94], vmulq_n_f32(vsubq_f32(v102[v94 + 1], v102[v94]), v98.f32[0])), v103), v98, 1));
            v105 = (v96 + 16 * v97.i32[1]);
            v106 = vaddq_f32(*v105, vmulq_n_f32(vsubq_f32(v105[1], *v105), v101.f32[0]));
            v107 = vaddq_f32(v106, vmulq_lane_f32(vsubq_f32(vaddq_f32(v105[v94], vmulq_n_f32(vsubq_f32(v105[v94 + 1], v105[v94]), v101.f32[0])), v106), v101, 1));
            v108 = vsubq_f32(v93, v9);
            v109 = vaddq_s32(vcvtq_s32_f32(v108), vcltzq_f32(v108));
            v108.i64[0] = vsubq_f32(v108, vcvtq_f32_s32(v109)).u64[0];
            v110 = (v96 + 16 * (v109.i32[0] + v109.i32[1] * v94));
            v111 = vaddq_f32(*v110, vmulq_n_f32(vsubq_f32(v110[1], *v110), v108.f32[0]));
            v112 = vaddq_f32(v111, vmulq_lane_f32(vsubq_f32(vaddq_f32(v110[v94], vmulq_n_f32(vsubq_f32(v110[v94 + 1], v110[v94]), v108.f32[0])), v111), *v108.f32, 1));
          }

          else
          {
            v113 = vaddq_f32(v95, v15);
            v114 = vcvtq_s32_f32(v113);
            v115 = vaddq_f32(vsubq_f32(v92, v9), v15);
            v116 = vcvtq_s32_f32(v115);
            *v113.f32 = vadd_s32(*v114.i8, *&vcgtq_f32(vcvtq_f32_s32(v114), v113));
            *v115.f32 = vadd_s32(*v116.i8, *&vcgtq_f32(vcvtq_f32_s32(v116), v115));
            *v115.f32 = vmla_s32(vzip1_s32(*v113.f32, *v115.f32), vzip2_s32(*v113.f32, *v115.f32), vdup_n_s32(v94));
            v117 = v115.i32[1];
            v104 = *(v96 + 16 * v115.i32[0]);
            v107 = *(v96 + 16 * v117);
            v118 = vaddq_f32(vsubq_f32(v93, v9), v15);
            v119 = vcvtq_s32_f32(v118);
            v118.i64[0] = vaddq_s32(v119, vcgtq_f32(vcvtq_f32_s32(v119), v118)).u64[0];
            v112 = *(v96 + 16 * (v118.i32[0] + v118.i32[1] * v94));
          }

          v120 = (v11 + v17);
          *v120 = v104;
          v120[1] = v107;
          v120[2] = v112;
          v20 = vaddq_f32(v22, xmmword_2603429B0);
          v19 -= 3;
          v18 += 3;
          v17 += 48;
        }

        while (v19 > 2);
      }

      if (v18 < v10)
      {
        do
        {
          v121 = *(this + 51);
          v122 = *(v121 + 96);
          v123 = *(v121 + 112);
          v124.i64[0] = vsubq_f32(*(v121 + 80), v122).u64[0];
          v125 = vcgtq_f32(vdupq_lane_s32(*v124.i8, 0), v123);
          v126 = vmulq_f32(v20, vbslq_s8(v125, *(v121 + 16), v122));
          v127 = vaddq_f32(v126, vextq_s8(v126, v126, 4uLL));
          v124.i64[1] = vaddq_f32(v127, vdupq_lane_s64(*&v127, 0)).i64[1];
          v128 = *(v121 + 128);
          v129 = vmulq_f32(v20, vbslq_s8(v125, *(v121 + 32), v128));
          v130 = vaddq_f32(v129, vextq_s8(v129, v129, 4uLL));
          v131 = vbslq_s8(*(v121 + 144), vaddq_f32(v130, vextq_s8(v130, v130, 8uLL)), v124);
          v132 = vcgtq_f32(vdupq_lane_s32(*v131.i8, 0), v123);
          v133 = vbslq_s8(v132, *(v121 + 48), v122);
          v134 = *(v121 + 240);
          v135 = vaddq_f32(vmulq_f32(vmulq_f32(vminq_f32(vmaxq_f32(vminq_f32(vmaxq_f32(*(v12 + 16 * v18), *(v121 + 160)), *(v121 + 176)), *(v121 + 192)), *(v121 + 208)), *(v121 + 224)), *v121), vextq_s8(v131, v131, 8uLL));
          v135.i32[3] = 1.0;
          v136 = vmulq_f32(v135, vbslq_s8(v132, *(v121 + 64), v128));
          *v137.f32 = vqtbl1_s8(v136, *v134.i8);
          v130.i64[0] = vextq_s8(v134, v134, 8uLL).u64[0];
          *v136.i8 = vqtbl1_s8(v136, *v130.f32);
          v128.i64[0] = v137.i64[0];
          *v138.f32 = vext_s8(*v137.f32, *v136.i8, 4uLL);
          v137.i64[1] = v136.i64[0];
          v128.i64[1] = v136.i64[0];
          *&v138.u32[2] = vext_s8(*v136.i8, *v137.f32, 4uLL);
          v139 = vaddq_f32(vaddq_f32(vrev64q_s32(v128), v137), v138);
          v140 = vmulq_f32(v135, v133);
          *v135.f32 = vqtbl1_s8(v140, *v134.i8);
          *v140.f32 = vqtbl1_s8(v140, *v130.f32);
          v137.i64[0] = v135.i64[0];
          v137.i64[1] = v140.i64[0];
          v130.i64[0] = v135.i64[0];
          v130.i64[1] = v140.i64[0];
          v140.i64[1] = v135.i64[0];
          v141 = vbslq_s8(*(v121 + 256), vaddq_f32(vaddq_f32(vrev64q_s32(v130), v137), v140), v139);
          v142 = *(a2 + 26);
          v143 = vsubq_f32(v141, v9);
          v144 = *(a2 + 12);
          if (v5)
          {
            v145 = vaddq_s32(vcvtq_s32_f32(v143), vcltzq_f32(v143));
            v146 = vsubq_f32(v143, vcvtq_f32_s32(v145)).u64[0];
            v147 = (v144 + 16 * (v145.i32[0] + v145.i32[1] * v142));
            v148 = vaddq_f32(*v147, vmulq_n_f32(vsubq_f32(v147[1], *v147), v146.f32[0]));
            v149 = vaddq_f32(v148, vmulq_lane_f32(vsubq_f32(vaddq_f32(v147[v142], vmulq_n_f32(vsubq_f32(v147[v142 + 1], v147[v142]), v146.f32[0])), v148), v146, 1));
          }

          else
          {
            v150 = vaddq_f32(v143, v15);
            v151 = vcvtq_s32_f32(v150);
            v150.i64[0] = vaddq_s32(v151, vcgtq_f32(vcvtq_f32_s32(v151), v150)).u64[0];
            v149 = *(v144 + 16 * (v150.i32[0] + v150.i32[1] * v142));
          }

          *(v11 + 16 * v18) = v149;
          v20 = vaddq_f32(v20, xmmword_2603429B0);
          ++v18;
        }

        while (v18 < v10);
      }

      v16 = vaddq_f32(v16, xmmword_2603429C0);
      ++v8;
      v11 += v13;
      v12 += v14;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcBumpMap::GetDOD(HgcBumpMap *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcBumpMap::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcBumpMap::HgcBumpMap(HgcBumpMap *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E4CF8;
  operator new();
}

void HgcBumpMap::~HgcBumpMap(HGNode *this)
{
  *this = &unk_2871E4CF8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40881B329ALL);
  }

  HGNode::~HGNode(this);
}

{
  HgcBumpMap::~HgcBumpMap(this);

  HGObject::operator delete(v1);
}

uint64_t HgcBumpMap::SetParameter(HgcBumpMap *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcBumpMap::GetParameter(HgcBumpMap *this, unsigned int a2, float *a3)
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

const char *HgcSharpen::GetProgram(HgcSharpen *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000372\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r0 - r1;\n    r1 = r1*half4(hg_Params[0]) + r0;\n    output.color0 = fmax(float4(r1), float4(c0.xxxx));\n    return output;\n}\n//MD5=6d227d23:e2d8f1e0:7a8b7623:f062fc6d\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000350\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r0 - r1;\n    r1 = r1*hg_Params[0] + r0;\n    output.color0 = fmax(r1, c0.xxxx);\n    return output;\n}\n//MD5=03345423:bcf88fe0:84a8ea4c:4a08ddb4\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002fe\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r0 - r1;\n    r1 = r1*hg_ProgramLocal0 + r0;\n    gl_FragColor = max(r1, c0.xxxx);\n}\n//MD5=6620382a:da9b350f:8e11e9c5:2447645f\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA91C30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA91D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA91DB8()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA91DB0);
}

uint64_t HgcSharpen::BindTexture(HgcSharpen *this, HGHandler *a2, int a3)
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

uint64_t HgcSharpen::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcSharpen::RenderTile(uint64_t a1, uint64_t a2)
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
          v16 = vmaxq_f32(vaddq_f32(*(v8 + v12 - 32), vmulq_f32(vsubq_f32(*(v8 + v12 - 32), *(v6 + v12 - 32)), *v14)), v15);
          v17 = vmaxq_f32(vaddq_f32(*(v8 + v12 - 16), vmulq_f32(vsubq_f32(*(v8 + v12 - 16), *(v6 + v12 - 16)), *v14)), v15);
          v18 = vmaxq_f32(vaddq_f32(*(v8 + v12), vmulq_f32(vsubq_f32(*(v8 + v12), *(v6 + v12)), *v14)), v15);
          v19 = vmaxq_f32(vaddq_f32(*(v8 + v12 + 16), vmulq_f32(vsubq_f32(*(v8 + v12 + 16), *(v6 + v12 + 16)), *v14)), v15);
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
          *(v5 + 16 * v11) = vmaxq_f32(vaddq_f32(*(v8 + 16 * v11), vmulq_f32(vsubq_f32(*(v8 + 16 * v11), *(v6 + 16 * v11)), **(a1 + 408))), *(*(a1 + 408) + 16));
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

uint64_t HgcSharpen::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcSharpen::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcSharpen::HgcSharpen(HgcSharpen *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E4F60;
  operator new();
}

void HgcSharpen::~HgcSharpen(HGNode *this)
{
  *this = &unk_2871E4F60;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40E0EAB150);
  }

  HGNode::~HGNode(this);
}

{
  HgcSharpen::~HgcSharpen(this);

  HGObject::operator delete(v1);
}

uint64_t HgcSharpen::SetParameter(HgcSharpen *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcSharpen::GetParameter(HgcSharpen *this, int a2, float *a3)
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

const char *HgcDisplace::GetProgram(HgcDisplace *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005d5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(255.0000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0;\n    FragmentOut output;\n\n    r0.xy = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xy;\n    r0.zw = r0.xy*half2(hg_Params[4].zw);\n    r0.y = half(frag._texCoord1.y)*half(hg_Params[3].y);\n    r0.x = half(frag._texCoord1.x)*half(hg_Params[2].x) + half(hg_Params[2].w);\n    r0.y = half(frag._texCoord1.x)*half(hg_Params[3].x) + r0.y;\n    r0.x = half(frag._texCoord1.y)*half(hg_Params[2].y) + r0.x;\n    r0.y = r0.y + half(hg_Params[3].w);\n    r0.xy = r0.zw*c0.xx + r0.xy;\n    r0.z = r0.y*half(hg_Params[0].y);\n    r0.z = r0.x*half(hg_Params[0].x) + r0.z;\n    r0.y = r0.y*half(hg_Params[1].y);\n    r0.x = r0.x*half(hg_Params[1].x) + r0.y;\n    r0.z = r0.z + half(hg_Params[0].w);\n    r0.w = r0.x + half(hg_Params[1].w);\n    s0.xy = float2(r0.zw) + hg_Params[5].xy;\n    s0.xy = s0.xy*hg_Params[5].zw;\n    output.color0 = (float4) hg_Texture1.sample(hg_Sampler1, s0.xy);\n    return output;\n}\n//MD5=35739934:0e5b3df2:c04d6778:ea5b610f\n//SIG=00400000:00000001:00000001:00000003:0001:0006:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000054b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(255.0000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0;\n    FragmentOut output;\n\n    r0.xy = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).xy;\n    r0.zw = r0.xy*hg_Params[4].zw;\n    r0.y = frag._texCoord1.y*hg_Params[3].y;\n    r0.x = frag._texCoord1.x*hg_Params[2].x + hg_Params[2].w;\n    r0.y = frag._texCoord1.x*hg_Params[3].x + r0.y;\n    r0.x = frag._texCoord1.y*hg_Params[2].y + r0.x;\n    r0.y = r0.y + hg_Params[3].w;\n    r0.xy = r0.zw*c0.xx + r0.xy;\n    r0.z = r0.y*hg_Params[0].y;\n    r0.z = r0.x*hg_Params[0].x + r0.z;\n    r0.y = r0.y*hg_Params[1].y;\n    r0.x = r0.x*hg_Params[1].x + r0.y;\n    r0.z = r0.z + hg_Params[0].w;\n    r0.w = r0.x + hg_Params[1].w;\n    r0.xy = r0.zw + hg_Params[5].xy;\n    r0.xy = r0.xy*hg_Params[5].zw;\n    output.color0 = hg_Texture1.sample(hg_Sampler1, r0.xy);\n    return output;\n}\n//MD5=9c75529a:3b5ad96d:ed26341d:b2487e0d\n//SIG=00000000:00000001:00000001:00000000:0001:0006:0001:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005d9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(255.0000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0;\n\n    r0.xy = texture2D(hg_Texture0, hg_TexCoord0.xy).xy;\n    r0.zw = r0.xy*hg_ProgramLocal4.zw;\n    r0.y = hg_TexCoord1.y*hg_ProgramLocal3.y;\n    r0.x = hg_TexCoord1.x*hg_ProgramLocal2.x + hg_ProgramLocal2.w;\n    r0.y = hg_TexCoord1.x*hg_ProgramLocal3.x + r0.y;\n    r0.x = hg_TexCoord1.y*hg_ProgramLocal2.y + r0.x;\n    r0.y = r0.y + hg_ProgramLocal3.w;\n    r0.xy = r0.zw*c0.xx + r0.xy;\n    r0.z = r0.y*hg_ProgramLocal0.y;\n    r0.z = r0.x*hg_ProgramLocal0.x + r0.z;\n    r0.y = r0.y*hg_ProgramLocal1.y;\n    r0.x = r0.x*hg_ProgramLocal1.x + r0.y;\n    r0.z = r0.z + hg_ProgramLocal0.w;\n    r0.w = r0.x + hg_ProgramLocal1.w;\n    r0.xy = r0.zw + hg_ProgramLocal5.xy;\n    r0.xy = r0.xy*hg_ProgramLocal5.zw;\n    gl_FragColor = texture2D(hg_Texture1, r0.xy);\n}\n//MD5=da256a95:eb520204:b56553ac:8f15f498\n//SIG=00000000:00000001:00000001:00000000:0001:0006:0001:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA92430(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA925F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA92648()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA92640);
}

uint64_t HgcDisplace::BindTexture(HgcDisplace *this, HGHandler *a2, int a3)
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
    (*(*a2 + 136))(a2, 5, v6, v7, v8, v9);
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

uint64_t HgcDisplace::Bind(HgcDisplace *this, HGHandler *a2)
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

uint64_t HgcDisplace::RenderTile(HgcDisplace *this, HGTile *a2)
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
    v16 = v9;
    do
    {
      if (v10 < 4)
      {
        v17 = 0;
        v20 = v16;
      }

      else
      {
        v17 = 0;
        v18 = 32;
        v19 = v10;
        v20 = v16;
        do
        {
          v21 = vaddq_f32(v20, xmmword_2603429B0);
          v22 = vaddq_f32(v21, xmmword_2603429B0);
          v23 = vaddq_f32(v22, xmmword_2603429B0);
          v24 = *(this + 51);
          v25.i64[0] = v20.i64[0];
          v25.i64[1] = *(v12 + v18 - 32);
          v26 = *(v24 + 32);
          v27 = *(v24 + 48);
          v28 = vrev64q_s32(v27);
          v29 = vextq_s8(v27, v27, 8uLL);
          v30.i64[0] = *(v24 + 48);
          v31 = *(v24 + 80);
          v30.i64[1] = *(v24 + 72);
          v32 = vmulq_f32(v25, v30);
          v33 = vmulq_f32(v21, v26);
          v34 = vmulq_n_f32(v28, v21.f32[0]);
          v35 = vrev64q_s32(v26);
          v36 = vmulq_lane_f32(v35, *v21.f32, 1);
          v21.i64[1] = *(v12 + v18 - 16);
          v37 = vmulq_f32(v21, v30);
          v38 = vmulq_f32(v22, v26);
          v39 = vmulq_n_f32(v28, v22.f32[0]);
          v40 = vmulq_lane_f32(v35, *v22.f32, 1);
          v22.i64[1] = *(v12 + v18);
          v41.i64[0] = v23.i64[0];
          v41.i64[1] = *(v12 + v18 + 16);
          v42 = vmulq_f32(v22, v30);
          v43 = vmulq_f32(v41, v30);
          v44 = vextq_s8(v26, v26, 0xCuLL);
          v45 = vaddq_f32(vmulq_f32(v20, v26), v44);
          v46 = vaddq_f32(vmulq_f32(v23, v26), v44);
          v47 = vbslq_s8(v31, v45, v32);
          v48 = vbslq_s8(v31, vaddq_f32(v33, v44), v37);
          v49 = vbslq_s8(v31, vaddq_f32(v38, v44), v42);
          v50 = vbslq_s8(v31, v46, v43);
          v51 = *(v24 + 96);
          v52 = *(v24 + 112);
          v53 = vbslq_s8(v51, vaddq_f32(vmulq_n_f32(v28, v20.f32[0]), v47), v47);
          v54 = vbslq_s8(v51, vaddq_f32(v34, v48), v48);
          v55 = vbslq_s8(v51, vaddq_f32(v39, v49), v49);
          v56 = vbslq_s8(v51, vaddq_f32(vmulq_n_f32(v28, v23.f32[0]), v50), v50);
          v57 = vbslq_s8(v31, vaddq_f32(vmulq_lane_f32(v35, *v20.f32, 1), v53), v53);
          v58 = vbslq_s8(v31, vaddq_f32(v36, v54), v54);
          v59 = vbslq_s8(v31, vaddq_f32(v40, v55), v55);
          v60 = vbslq_s8(v31, vaddq_f32(vmulq_lane_f32(v35, *v23.f32, 1), v56), v56);
          v61 = vbslq_s8(v51, vaddq_f32(v29, v57), v57);
          v62 = vbslq_s8(v51, vaddq_f32(v29, v58), v58);
          v63 = vbslq_s8(v51, vaddq_f32(v29, v59), v59);
          v64 = vbslq_s8(v51, vaddq_f32(v29, v60), v60);
          v31.i64[0] = vaddq_f32(vmulq_n_f32(vdupq_laneq_s64(v61, 1), *&v52), v61).u64[0];
          v28.i64[0] = vaddq_f32(vmulq_n_f32(vdupq_laneq_s64(v62, 1), *&v52), v62).u64[0];
          v63.i64[0] = vaddq_f32(vmulq_n_f32(vdupq_laneq_s64(v63, 1), *&v52), v63).u64[0];
          v64.i64[0] = vaddq_f32(vmulq_n_f32(vdupq_laneq_s64(v64, 1), *&v52), v64).u64[0];
          v66 = *v24;
          v65 = *(v24 + 16);
          v67 = vextq_s8(v66, v66, 0xCuLL);
          v68 = vextq_s8(v66, v66, 8uLL);
          v31.i64[1] = vaddq_f32(vmulq_n_f32(v68, *&v31), vmulq_lane_f32(v67, *&v31, 1)).i64[1];
          v28.i64[1] = vaddq_f32(vmulq_n_f32(v68, *&v28), vmulq_lane_f32(v67, *&v28, 1)).i64[1];
          v63.i64[1] = vaddq_f32(vmulq_n_f32(v68, *&v63), vmulq_lane_f32(v67, *&v63, 1)).i64[1];
          v64.i64[1] = vaddq_f32(vmulq_n_f32(v68, *&v64), vmulq_lane_f32(v67, *&v64, 1)).i64[1];
          v69 = vbslq_s8(v51, vmulq_f32(v65, v31), v31);
          v70 = vbslq_s8(v51, vmulq_f32(v65, v28), v28);
          v71 = vbslq_s8(v51, vmulq_f32(v65, v63), v63);
          v72 = vbslq_s8(v51, vmulq_f32(v65, v64), v64);
          v73 = vaddq_f32(vmulq_f32(v65, v69), vrev64q_s32(v69));
          v74 = vaddq_f32(vmulq_f32(v65, v70), vrev64q_s32(v70));
          v75 = vaddq_f32(vmulq_f32(v65, v71), vrev64q_s32(v71));
          v76 = vaddq_f32(vmulq_f32(v65, v72), vrev64q_s32(v72));
          v77 = vrev64q_s32(*v24);
          v78 = vaddq_f32(v77, v69);
          v79 = vaddq_f32(v77, v70);
          v80 = vaddq_f32(v77, v71);
          v81 = vaddq_f32(v77, v72);
          *v77.f32 = vext_s8(*v73.i8, *&vextq_s8(v78, v78, 8uLL), 4uLL);
          v33.i64[0] = vextq_s8(v78, v73, 0xCuLL).u64[0];
          v73.i64[1] = v78.i64[1];
          *v78.f32 = vext_s8(*v74.i8, *&vextq_s8(v79, v79, 8uLL), 4uLL);
          v68.i64[0] = vextq_s8(v79, v74, 0xCuLL).u64[0];
          v74.i64[1] = v79.i64[1];
          *v79.f32 = vext_s8(*v75.i8, *&vextq_s8(v80, v80, 8uLL), 4uLL);
          v35.i64[0] = vextq_s8(v80, v75, 0xCuLL).u64[0];
          v75.i64[1] = v80.i64[1];
          *v80.f32 = vext_s8(*v76.i8, *&vextq_s8(v81, v81, 8uLL), 4uLL);
          v36.i64[0] = vextq_s8(v81, v76, 0xCuLL).u64[0];
          v76.i64[1] = v81.i64[1];
          v77.i64[1] = v33.i64[0];
          v78.i64[1] = v68.i64[0];
          v79.i64[1] = v35.i64[0];
          v80.i64[1] = v36.i64[0];
          v82 = vaddq_f32(v65, v77);
          v83 = vaddq_f32(v65, v78);
          v84 = vaddq_f32(v65, v79);
          v85 = vaddq_f32(v65, v80);
          v86 = *(v24 + 128);
          v87 = vbslq_s8(v86, v73, v82);
          v88 = vbslq_s8(v86, v74, v83);
          v89 = vbslq_s8(v86, v75, v84);
          v90 = vbslq_s8(v86, v76, v85);
          v91 = vextq_s8(v87, v87, 8uLL);
          v92 = vextq_s8(v88, v88, 8uLL);
          v93 = vextq_s8(v89, v89, 8uLL);
          v94 = vextq_s8(v90, v90, 8uLL);
          v95 = *(a2 + 26);
          v96 = vsubq_f32(v91, v9);
          v97 = *(a2 + 12);
          if (v5)
          {
            v98 = vaddq_s32(vcvtq_s32_f32(v96), vcltzq_f32(v96));
            v99 = vsubq_f32(v96, vcvtq_f32_s32(v98)).u64[0];
            v100 = vsubq_f32(v92, v9);
            v101 = vaddq_s32(vcvtq_s32_f32(v100), vcltzq_f32(v100));
            v102 = vsubq_f32(v100, vcvtq_f32_s32(v101)).u64[0];
            v103 = vdup_n_s32(v95);
            *v98.i8 = vmla_s32(vzip1_s32(*v98.i8, *v101.i8), vzip2_s32(*v98.i8, *v101.i8), v103);
            v104 = (v97 + 16 * v98.i32[0]);
            v105 = vaddq_f32(*v104, vmulq_n_f32(vsubq_f32(v104[1], *v104), v99.f32[0]));
            v106 = vaddq_f32(v105, vmulq_lane_f32(vsubq_f32(vaddq_f32(v104[v95], vmulq_n_f32(vsubq_f32(v104[v95 + 1], v104[v95]), v99.f32[0])), v105), v99, 1));
            v107 = (v97 + 16 * v98.i32[1]);
            v108 = vaddq_f32(*v107, vmulq_n_f32(vsubq_f32(v107[1], *v107), v102.f32[0]));
            v109 = vaddq_f32(v108, vmulq_lane_f32(vsubq_f32(vaddq_f32(v107[v95], vmulq_n_f32(vsubq_f32(v107[v95 + 1], v107[v95]), v102.f32[0])), v108), v102, 1));
            v110 = vsubq_f32(v93, v9);
            v111 = vaddq_s32(vcvtq_s32_f32(v110), vcltzq_f32(v110));
            v110.i64[0] = vsubq_f32(v110, vcvtq_f32_s32(v111)).u64[0];
            v112 = vsubq_f32(v94, v9);
            v113 = vaddq_s32(vcvtq_s32_f32(v112), vcltzq_f32(v112));
            *v111.i8 = vmla_s32(vzip1_s32(*v111.i8, *v113.i8), vzip2_s32(*v111.i8, *v113.i8), v103);
            v114 = (v97 + 16 * v111.i32[0]);
            v113.i64[0] = vsubq_f32(v112, vcvtq_f32_s32(v113)).u64[0];
            v115 = vaddq_f32(*v114, vmulq_n_f32(vsubq_f32(v114[1], *v114), v110.f32[0]));
            v116 = vaddq_f32(v115, vmulq_lane_f32(vsubq_f32(vaddq_f32(v114[v95], vmulq_n_f32(vsubq_f32(v114[v95 + 1], v114[v95]), v110.f32[0])), v115), *v110.f32, 1));
            v117 = (v97 + 16 * v111.i32[1]);
            v118 = vaddq_f32(*v117, vmulq_n_f32(vsubq_f32(v117[1], *v117), *v113.i32));
            v119 = vaddq_f32(v118, vmulq_lane_f32(vsubq_f32(vaddq_f32(v117[v95], vmulq_n_f32(vsubq_f32(v117[v95 + 1], v117[v95]), *v113.i32)), v118), *v113.i8, 1));
          }

          else
          {
            v120 = vaddq_f32(v96, v15);
            v121 = vcvtq_s32_f32(v120);
            v122 = vaddq_f32(vsubq_f32(v92, v9), v15);
            v123 = vcvtq_s32_f32(v122);
            *v120.f32 = vadd_s32(*v121.i8, *&vcgtq_f32(vcvtq_f32_s32(v121), v120));
            *v122.f32 = vadd_s32(*v123.i8, *&vcgtq_f32(vcvtq_f32_s32(v123), v122));
            *v123.i8 = vdup_n_s32(v95);
            *v122.f32 = vmla_s32(vzip1_s32(*v120.f32, *v122.f32), vzip2_s32(*v120.f32, *v122.f32), *v123.i8);
            v124 = v122.i32[1];
            v106 = *(v97 + 16 * v122.i32[0]);
            v109 = *(v97 + 16 * v124);
            v125 = vaddq_f32(vsubq_f32(v93, v9), v15);
            v126 = vcvtq_s32_f32(v125);
            v127 = vaddq_f32(vsubq_f32(v94, v9), v15);
            v128 = vcvtq_s32_f32(v127);
            *v127.f32 = vadd_s32(*v128.i8, *&vcgtq_f32(vcvtq_f32_s32(v128), v127));
            *v125.f32 = vadd_s32(*v126.i8, *&vcgtq_f32(vcvtq_f32_s32(v126), v125));
            *v127.f32 = vmla_s32(vzip1_s32(*v125.f32, *v127.f32), vzip2_s32(*v125.f32, *v127.f32), *v123.i8);
            v129 = v127.i32[1];
            v116 = *(v97 + 16 * v127.i32[0]);
            v119 = *(v97 + 16 * v129);
          }

          v130 = (v11 + v18);
          v130[-2] = v106;
          v130[-1] = v109;
          *v130 = v116;
          v130[1] = v119;
          v20 = vaddq_f32(v23, xmmword_2603429B0);
          v19 -= 4;
          v17 += 4;
          v18 += 64;
        }

        while (v19 > 3);
      }

      if (v17 < v10)
      {
        do
        {
          v131 = *(this + 51);
          v132.i64[0] = v20.i64[0];
          v132.i64[1] = *(v12 + 16 * v17);
          v134 = *(v131 + 32);
          v133 = *(v131 + 48);
          v135 = vrev64q_s32(v133);
          v136 = vextq_s8(v133, v133, 8uLL);
          v137 = *(v131 + 80);
          v133.i64[1] = *(v131 + 72);
          v138 = vbslq_s8(v137, vaddq_f32(vmulq_f32(v20, v134), vextq_s8(v134, v134, 0xCuLL)), vmulq_f32(v132, v133));
          v139 = vaddq_f32(vmulq_n_f32(v135, v20.f32[0]), v138);
          v140 = *(v131 + 96);
          v141 = vbslq_s8(v140, v139, v138);
          v142 = vbslq_s8(v137, vaddq_f32(vmulq_lane_f32(vrev64q_s32(v134), *v20.f32, 1), v141), v141);
          v143 = vbslq_s8(v140, vaddq_f32(v136, v142), v142);
          v143.i64[0] = vaddq_f32(vmulq_n_f32(vdupq_laneq_s64(v143, 1), COERCE_FLOAT(*(v131 + 112))), v143).u64[0];
          v144 = *(v131 + 16);
          v143.i64[1] = vaddq_f32(vmulq_n_f32(vdupq_lane_s64(*v131, 0), *&v143), vmulq_lane_f32(vextq_s8(*&v9, *v131, 0xCuLL), *&v143, 1)).i64[1];
          v145 = vbslq_s8(v140, vmulq_f32(v144, v143), v143);
          v146 = vaddq_f32(vmulq_f32(v144, v145), vrev64q_s32(v145));
          v147 = vaddq_f32(vrev64q_s32(*v131), v145);
          *v139.f32 = vext_s8(*v146.i8, *&vextq_s8(v147, v147, 8uLL), 4uLL);
          v136.i64[0] = vextq_s8(v147, v146, 0xCuLL).u64[0];
          v146.i64[1] = v147.i64[1];
          v139.i64[1] = v136.i64[0];
          v148 = vbslq_s8(*(v131 + 128), v146, vaddq_f32(v144, v139));
          v149 = *(a2 + 26);
          v150 = vsubq_f32(vextq_s8(v148, v148, 8uLL), v9);
          v151 = *(a2 + 12);
          if (v5)
          {
            v152 = vaddq_s32(vcvtq_s32_f32(v150), vcltzq_f32(v150));
            v153 = vsubq_f32(v150, vcvtq_f32_s32(v152)).u64[0];
            v154 = (v151 + 16 * (v152.i32[0] + v152.i32[1] * v149));
            v155 = vaddq_f32(*v154, vmulq_n_f32(vsubq_f32(v154[1], *v154), v153.f32[0]));
            v156 = vaddq_f32(v155, vmulq_lane_f32(vsubq_f32(vaddq_f32(v154[v149], vmulq_n_f32(vsubq_f32(v154[v149 + 1], v154[v149]), v153.f32[0])), v155), v153, 1));
          }

          else
          {
            v157 = vaddq_f32(v150, v15);
            v158 = vcvtq_s32_f32(v157);
            v157.i64[0] = vaddq_s32(v158, vcgtq_f32(vcvtq_f32_s32(v158), v157)).u64[0];
            v156 = *(v151 + 16 * (v157.i32[0] + v157.i32[1] * v149));
          }

          *(v11 + 16 * v17) = v156;
          v20 = vaddq_f32(v20, xmmword_2603429B0);
          ++v17;
        }

        while (v17 < v10);
      }

      v16 = vaddq_f32(v16, xmmword_2603429C0);
      ++v8;
      v12 += v13;
      v11 += v14;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcDisplace::GetDOD(HgcDisplace *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcDisplace::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcDisplace::HgcDisplace(HgcDisplace *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E51C8;
  operator new();
}

void HgcDisplace::~HgcDisplace(HGNode *this)
{
  *this = &unk_2871E51C8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B8406A4ELL);
  }

  HGNode::~HGNode(this);
}

{
  HgcDisplace::~HgcDisplace(this);

  HGObject::operator delete(v1);
}

uint64_t HgcDisplace::SetParameter(HgcDisplace *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
        if (v8[4].n128_f32[0] != 0.0 || v8[4].n128_f32[1] != 0.0 || v8[4].n128_f32[2] != a3.n128_f32[0] || v8[4].n128_f32[3] != a4)
        {
          v8[4].n128_u64[0] = 0;
          v8[4].n128_u32[2] = a3.n128_u32[0];
          v8[4].n128_f32[3] = a4;
          a3.n128_f32[1] = a4;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v8[9] = a3;
LABEL_32:
          HGNode::ClearBits(this, a2, a7);
          return 1;
        }

        return 0;
    }
  }

  return v7;
}

float HgcDisplace::GetParameter(HgcDisplace *this, int a2, float *a3)
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
        *a3 = v7[12];
        a3[1] = v7[13];
        a3[2] = v7[14];
        v4 = v7 + 15;
        break;
      case 4:
        v3 = *(this + 51);
        *a3 = v3[36];
        a3[1] = v3[37];
        a3[2] = v3[38];
        v4 = v3 + 39;
        break;
      default:
        return result;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcDroplet::GetProgram(HgcDroplet *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000068a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(9.999999975e-07, 1.000000000, -2.000000000, 0.000000000);\n    const half4 c1 = half4(0.000000000, 1.000000000, 2.000000000, 3.000000000);\n    const half4 c2 = half4(0.000000000, 1.000000000, -1.000000000, 0.000000000);\n    float4 s0, s1, s2, s3, s4;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy*hg_Params[0].xy + hg_Params[0].zw;\n    s1 = float4(dot(s0.xy, s0.xy));\n    s2.x = fmax(s1.x, float(c0.x));\n    s2 = rsqrt(s2.xxxx);\n    s1 = s1*s2;\n    s2.xy = s0.xy*s2.xy;\n    s1 = s1*hg_Params[2].xxxx + hg_Params[2].yyyy;\n    s1 = s1 - float4(c1);\n    s3.xyz = clamp(s1.xyz, 0.00000f, 1.00000f);\n    s4.xyz = -s3.xyz*float3(c1.zzz) + float3(c1.www);\n    s3.xyz = s3.xyz*s3.xyz;\n    s4.xyz = s3.xyz*s4.xyz;\n    s4.xyz = s4.xyz*float3(c0.yzy) + float3(c2.xyz);\n    s3.x = select(s4.x, float(c2.x), s1.x < 0.00000h);\n    s3.x = select(s4.y, s3.x, s1.y < 0.00000h);\n    s3.x = select(s4.z, s3.x, s1.z < 0.00000h);\n    s1.x = select(float(c2.x), s3.x, s1.w < 0.00000h);\n    s1.xy = s1.xx*s2.xy;\n    s1.xy = s1.xy*hg_Params[2].zz + s0.xy;\n    s1.xy = s1.xy*hg_Params[1].xy + hg_Params[1].zw;\n    s1.xy = s1.xy + hg_Params[3].xy;\n    s1.xy = s1.xy*hg_Params[3].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    return output;\n}\n//MD5=f1401852:f3219aae:bb97dfbe:6220e491\n//SIG=00400000:00000000:00000000:00000001:0003:0004:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000064b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(9.999999975e-07, 1.000000000, -2.000000000, 0.000000000);\n    const float4 c1 = float4(0.000000000, 1.000000000, 2.000000000, 3.000000000);\n    const float4 c2 = float4(0.000000000, 1.000000000, -1.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy*hg_Params[0].xy + hg_Params[0].zw;\n    r1 = float4(dot(r0.xy, r0.xy));\n    r2.x = fmax(r1.x, c0.x);\n    r2 = rsqrt(r2.xxxx);\n    r1 = r1*r2;\n    r2.xy = r0.xy*r2.xy;\n    r1 = r1*hg_Params[2].xxxx + hg_Params[2].yyyy;\n    r1 = r1 - c1;\n    r3.xyz = clamp(r1.xyz, 0.00000f, 1.00000f);\n    r4.xyz = -r3.xyz*c1.zzz + c1.www;\n    r3.xyz = r3.xyz*r3.xyz;\n    r4.xyz = r3.xyz*r4.xyz;\n    r4.xyz = r4.xyz*c0.yzy + c2.xyz;\n    r3.x = select(r4.x, c2.x, r1.x < 0.00000f);\n    r3.x = select(r4.y, r3.x, r1.y < 0.00000f);\n    r3.x = select(r4.z, r3.x, r1.z < 0.00000f);\n    r1.x = select(c2.x, r3.x, r1.w < 0.00000f);\n    r1.xy = r1.xx*r2.xy;\n    r1.xy = r1.xy*hg_Params[2].zz + r0.xy;\n    r1.xy = r1.xy*hg_Params[1].xy + hg_Params[1].zw;\n    r1.xy = r1.xy + hg_Params[3].xy;\n    r1.xy = r1.xy*hg_Params[3].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    return output;\n}\n//MD5=b446a2bf:45b43480:19608501:dc95c27c\n//SIG=00000000:00000000:00000000:00000000:0003:0004:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000699\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(9.999999975e-07, 1.000000000, -2.000000000, 0.000000000);\n    const highp vec4 c1 = vec4(0.000000000, 1.000000000, 2.000000000, 3.000000000);\n    const highp vec4 c2 = vec4(0.000000000, 1.000000000, -1.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3, r4;\n\n    r0.xy = hg_TexCoord0.xy*hg_ProgramLocal0.xy + hg_ProgramLocal0.zw;\n    r1 = vec4(dot(r0.xy, r0.xy));\n    r2.x = max(r1.x, c0.x);\n    r2 = inversesqrt(r2.xxxx);\n    r1 = r1*r2;\n    r2.xy = r0.xy*r2.xy;\n    r1 = r1*hg_ProgramLocal2.xxxx + hg_ProgramLocal2.yyyy;\n    r1 = r1 - c1;\n    r3.xyz = clamp(r1.xyz, vec3(0.00000), vec3(1.00000));\n    r4.xyz = -r3.xyz*c1.zzz + c1.www;\n    r3.xyz = r3.xyz*r3.xyz;\n    r4.xyz = r3.xyz*r4.xyz;\n    r4.xyz = r4.xyz*c0.yzy + c2.xyz;\n    r3.x = r1.x < 0.00000 ? c2.x : r4.x;\n    r3.x = r1.y < 0.00000 ? r3.x : r4.y;\n    r3.x = r1.z < 0.00000 ? r3.x : r4.z;\n    r1.x = r1.w < 0.00000 ? r3.x : c2.x;\n    r1.xy = r1.xx*r2.xy;\n    r1.xy = r1.xy*hg_ProgramLocal2.zz + r0.xy;\n    r1.xy = r1.xy*hg_ProgramLocal1.xy + hg_ProgramLocal1.zw;\n    r1.xy = r1.xy + hg_ProgramLocal3.xy;\n    r1.xy = r1.xy*hg_ProgramLocal3.zw;\n    gl_FragColor = texture2D(hg_Texture0, r1.xy);\n}\n//MD5=224e842e:f8e208ab:8334dcb5:ba1d6959\n//SIG=00000000:00000000:00000000:00000000:0003:0004:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA937CC(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA9394C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA9399C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA93994);
}

uint64_t HgcDroplet::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcDroplet::Bind(HgcDroplet *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcDroplet::RenderTile(HgcDroplet *this, HGTile *a2)
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
          v21 = vextq_s8(*v19, *v19, 8uLL);
          v22 = vaddq_f32(vmulq_f32(v17, *v19), v21);
          v23 = vaddq_f32(vmulq_f32(v18, *v19), v21);
          v21.i64[0] = vmulq_f32(v22, v22).u64[0];
          v24 = vmulq_f32(v23, v23).u64[0];
          v25 = vaddq_f32(vdupq_lane_s32(*v21.f32, 0), vdupq_lane_s32(*v21.f32, 1));
          v26 = vaddq_f32(vdupq_lane_s32(v24, 0), vdupq_lane_s32(v24, 1));
          v27 = *(v19 + 32);
          v28 = *(v19 + 48);
          v29 = vmaxq_f32(v25, v28).u64[0];
          v28.i64[0] = vmaxq_f32(v26, v28).u64[0];
          v30 = *(v19 + 64);
          v31 = *(v19 + 80);
          v32 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(v29, 0)), v30);
          v33 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v28.f32, 0)), v30);
          v34 = vminq_f32(vmulq_f32(v32, vrsqrtsq_f32(vmulq_n_f32(v32, *v29.i32), v32)), v30);
          v35 = vminq_f32(vmulq_f32(v33, vrsqrtsq_f32(vmulq_n_f32(v33, v28.f32[0]), v33)), v30);
          v36 = vmulq_f32(v34, vrsqrtsq_f32(vmulq_n_f32(v34, *v29.i32), v34));
          v37 = vmulq_f32(v35, vrsqrtsq_f32(vmulq_n_f32(v35, v28.f32[0]), v35));
          v38 = vdupq_lane_s32(*v27.f32, 1);
          v39 = vsubq_f32(vaddq_f32(v38, vmulq_n_f32(vmulq_f32(v25, v36), v27.f32[0])), v31);
          v40 = vsubq_f32(vaddq_f32(v38, vmulq_n_f32(vmulq_f32(v26, v37), v27.f32[0])), v31);
          v41 = *(v19 + 96);
          v42 = *(v19 + 112);
          v43 = vminq_f32(vmaxq_f32(v39, v41), v42);
          v44 = vminq_f32(vmaxq_f32(v40, v41), v42);
          v45 = *(v19 + 128);
          v46 = *(v19 + 144);
          v47 = vsubq_f32(v45, vmulq_f32(v43, v46));
          v48 = vmulq_f32(vmulq_f32(v44, v44), vsubq_f32(v45, vmulq_f32(v44, v46)));
          v49 = *(v19 + 160);
          v50 = *(v19 + 176);
          v51 = vaddq_f32(v49, vmulq_f32(v50, vmulq_f32(vmulq_f32(v43, v43), v47)));
          v52 = vaddq_f32(v49, vmulq_f32(v50, v48));
          v53 = vaddq_f32(v22, vmulq_laneq_f32(vmulq_n_f32(vmulq_f32(v22, v36), *vbslq_s8(vcgtq_f32(v49, vextq_s8(v39, v39, 0xCuLL)), vbslq_s8(vcgtq_f32(v49, vextq_s8(v39, v39, 8uLL)), vbslq_s8(vcgtq_f32(v49, vrev64q_s32(v39)), vbslq_s8(vcgtq_f32(v49, v39), v49, v51), vdupq_lane_s32(*v51.i8, 1)), vdupq_laneq_s32(v51, 2)), v49).i32), v27, 2));
          v54 = vaddq_f32(v23, vmulq_laneq_f32(vmulq_n_f32(vmulq_f32(v23, v37), *vbslq_s8(vcgtq_f32(v49, vextq_s8(v40, v40, 0xCuLL)), vbslq_s8(vcgtq_f32(v49, vextq_s8(v40, v40, 8uLL)), vbslq_s8(vcgtq_f32(v49, vrev64q_s32(v40)), vbslq_s8(vcgtq_f32(v49, v40), v49, v52), vdupq_lane_s32(*v52.i8, 1)), vdupq_laneq_s32(v52, 2)), v49).i32), v27, 2));
          v55 = vextq_s8(v20, v20, 8uLL);
          v56 = vaddq_f32(v55, vmulq_f32(v20, v53));
          v57 = vaddq_f32(v55, vmulq_f32(v20, v54));
          v58 = *(a2 + 22);
          v59 = vsubq_f32(v56, v9);
          v60 = *(a2 + 10);
          if (v5)
          {
            v61 = vaddq_s32(vcvtq_s32_f32(v59), vcltzq_f32(v59));
            v62 = vsubq_f32(v59, vcvtq_f32_s32(v61)).u64[0];
            v63 = vsubq_f32(v57, v9);
            v64 = vaddq_s32(vcvtq_s32_f32(v63), vcltzq_f32(v63));
            v65 = vsubq_f32(v63, vcvtq_f32_s32(v64)).u64[0];
            *v61.i8 = vmla_s32(vzip1_s32(*v61.i8, *v64.i8), vzip2_s32(*v61.i8, *v64.i8), vdup_n_s32(v58));
            v66 = (v60 + 16 * v61.i32[0]);
            v67 = vaddq_f32(*v66, vmulq_n_f32(vsubq_f32(v66[1], *v66), v62.f32[0]));
            v68 = vaddq_f32(v67, vmulq_lane_f32(vsubq_f32(vaddq_f32(v66[v58], vmulq_n_f32(vsubq_f32(v66[v58 + 1], v66[v58]), v62.f32[0])), v67), v62, 1));
            v69 = (v60 + 16 * v61.i32[1]);
            v70 = vaddq_f32(*v69, vmulq_n_f32(vsubq_f32(v69[1], *v69), v65.f32[0]));
            v71 = vaddq_f32(v70, vmulq_lane_f32(vsubq_f32(vaddq_f32(v69[v58], vmulq_n_f32(vsubq_f32(v69[v58 + 1], v69[v58]), v65.f32[0])), v70), v65, 1));
          }

          else
          {
            v72 = vaddq_f32(v59, v13);
            v73 = vcvtq_s32_f32(v72);
            v74 = vaddq_f32(vsubq_f32(v57, v9), v13);
            v75 = vcvtq_s32_f32(v74);
            *v72.f32 = vadd_s32(*v73.i8, *&vcgtq_f32(vcvtq_f32_s32(v73), v72));
            *v74.f32 = vadd_s32(*v75.i8, *&vcgtq_f32(vcvtq_f32_s32(v75), v74));
            *v74.f32 = vmla_s32(vzip1_s32(*v72.f32, *v74.f32), vzip2_s32(*v72.f32, *v74.f32), vdup_n_s32(v58));
            v76 = v74.i32[1];
            v68 = *(v60 + 16 * v74.i32[0]);
            v71 = *(v60 + 16 * v76);
          }

          v77 = (v11 + 16 * v15);
          *v77 = v68;
          v77[1] = v71;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v78 = *(this + 51);
        v79 = vaddq_f32(vmulq_f32(v17, *v78), vextq_s8(*v78, *v78, 8uLL));
        v80 = vmulq_f32(v79, v79).u64[0];
        v81 = vaddq_f32(vdupq_lane_s32(v80, 0), vdupq_lane_s32(v80, 1));
        v82 = *(v78 + 32);
        v83 = vmaxq_f32(v81, *(v78 + 48)).u64[0];
        v84 = *(v78 + 64);
        v85 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(v83, 0)), v84);
        v86 = vminq_f32(vmulq_f32(v85, vrsqrtsq_f32(vmulq_n_f32(v85, *v83.i32), v85)), v84);
        v87 = vmulq_f32(v86, vrsqrtsq_f32(vmulq_n_f32(v86, *v83.i32), v86));
        v88 = vsubq_f32(vaddq_f32(vdupq_lane_s32(*v82.f32, 1), vmulq_n_f32(vmulq_f32(v81, v87), v82.f32[0])), *(v78 + 80));
        v89 = vminq_f32(vmaxq_f32(v88, *(v78 + 96)), *(v78 + 112));
        v90 = *(v78 + 160);
        v91 = vaddq_f32(v90, vmulq_f32(*(v78 + 176), vmulq_f32(vmulq_f32(v89, v89), vsubq_f32(*(v78 + 128), vmulq_f32(v89, *(v78 + 144))))));
        v92 = vaddq_f32(vextq_s8(*(v78 + 16), *(v78 + 16), 8uLL), vmulq_f32(*(v78 + 16), vaddq_f32(v79, vmulq_laneq_f32(vmulq_n_f32(vmulq_f32(v79, v87), *vbslq_s8(vcgtq_f32(v90, vextq_s8(v88, v88, 0xCuLL)), vbslq_s8(vcgtq_f32(v90, vextq_s8(v88, v88, 8uLL)), vbslq_s8(vcgtq_f32(v90, vrev64q_s32(v88)), vbslq_s8(vcgtq_f32(v90, v88), v90, v91), vdupq_lane_s32(*v91.i8, 1)), vdupq_laneq_s32(v91, 2)), v90).i32), v82, 2))));
        v93 = *(a2 + 22);
        v94 = vsubq_f32(v92, v9);
        v95 = *(a2 + 10);
        if (v5)
        {
          v96 = vaddq_s32(vcvtq_s32_f32(v94), vcltzq_f32(v94));
          v97 = vsubq_f32(v94, vcvtq_f32_s32(v96)).u64[0];
          v98 = (v95 + 16 * (v96.i32[0] + v96.i32[1] * v93));
          v99 = vaddq_f32(*v98, vmulq_n_f32(vsubq_f32(v98[1], *v98), v97.f32[0]));
          v100 = vaddq_f32(v99, vmulq_lane_f32(vsubq_f32(vaddq_f32(v98[v93], vmulq_n_f32(vsubq_f32(v98[v93 + 1], v98[v93]), v97.f32[0])), v99), v97, 1));
        }

        else
        {
          v101 = vaddq_f32(v94, v13);
          v102 = vcvtq_s32_f32(v101);
          v101.i64[0] = vaddq_s32(v102, vcgtq_f32(vcvtq_f32_s32(v102), v101)).u64[0];
          v100 = *(v95 + 16 * (v101.i32[0] + v101.i32[1] * v93));
        }

        *(v11 + 16 * v15) = v100;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcDroplet::GetDOD(HgcDroplet *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcDroplet::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcDroplet::HgcDroplet(HgcDroplet *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E5430;
  operator new();
}

void HgcDroplet::~HgcDroplet(HGNode *this)
{
  *this = &unk_2871E5430;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcDroplet::~HgcDroplet(this);

  HGObject::operator delete(v1);
}

uint64_t HgcDroplet::SetParameter(HgcDroplet *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcDroplet::GetParameter(HgcDroplet *this, unsigned int a2, float *a3)
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

const char *HgcFunHouse::GetProgram(HgcFunHouse *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000699\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 1.000000000, -2.000000000, 3.000000000);\n    const half4 c1 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    r0.xy = half2(hg_Params[5].xy)*c0.xx;\n    s0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[4].zw;\n    s1.x = dot(s0.xy, hg_Params[1].xy);\n    s1.y = dot(s0.xy, hg_Params[1].zw);\n    s0.x = clamp(abs(s1.x), 0.00000f, 1.00000f);\n    s0.x = clamp(float(c0.y) - s0.x, 0.00000f, 1.00000f);\n    s2.x = s0.x*float(c0.z) + float(c0.w);\n    s0.x = s0.x*s0.x;\n    s2.x = s0.x*s2.x;\n    s2.x = mix(float(c0.y), hg_Params[3].x, s2.x);\n    s1.x = s1.x*s2.x;\n    s0.x = dot(s1.xy, hg_Params[2].xy);\n    s0.y = dot(s1.xy, hg_Params[2].zw);\n    s0.xy = s0.xy*hg_Params[4].xy + hg_Params[0].xy;\n    s2.xy = fmax(s0.xy, -float2(r0.xy));\n    s2.xy = fmin(s2.xy, float2(r0.xy));\n    s1.xy = -float2(r0.xy) - s0.xy;\n    s0.xy = s0.xy - float2(r0.xy);\n    s1.x = fmax(s1.x, s1.y);\n    s1.y = fmax(s0.x, s0.y);\n    s1.x = fmax(s1.x, s1.y);\n    s2.xy = s2.xy + hg_Params[6].xy;\n    s2.xy = s2.xy*hg_Params[6].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s2.xy);\n    output.color0 = select(float4(r0), float4(c1.xxxx), -s1.xxxx < 0.00000h);\n    return output;\n}\n//MD5=03ee8fb5:12efa0c1:01eee3df:c06fd0f7\n//SIG=00400000:00000000:00000000:00000001:0002:0007:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000639\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 1.000000000, -2.000000000, 3.000000000);\n    const float4 c1 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0.xy = hg_Params[5].xy*c0.xx;\n    r1.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    r1.xy = r1.xy*hg_Params[4].zw;\n    r2.x = dot(r1.xy, hg_Params[1].xy);\n    r2.y = dot(r1.xy, hg_Params[1].zw);\n    r1.x = clamp(abs(r2.x), 0.00000f, 1.00000f);\n    r1.x = clamp(c0.y - r1.x, 0.00000f, 1.00000f);\n    r3.x = r1.x*c0.z + c0.w;\n    r1.x = r1.x*r1.x;\n    r3.x = r1.x*r3.x;\n    r3.x = mix(c0.y, hg_Params[3].x, r3.x);\n    r2.x = r2.x*r3.x;\n    r1.x = dot(r2.xy, hg_Params[2].xy);\n    r1.y = dot(r2.xy, hg_Params[2].zw);\n    r1.xy = r1.xy*hg_Params[4].xy + hg_Params[0].xy;\n    r3.xy = fmax(r1.xy, -r0.xy);\n    r3.xy = fmin(r3.xy, r0.xy);\n    r2.xy = -r0.xy - r1.xy;\n    r1.xy = r1.xy - r0.xy;\n    r2.x = fmax(r2.x, r2.y);\n    r2.y = fmax(r1.x, r1.y);\n    r2.x = fmax(r2.x, r2.y);\n    r3.xy = r3.xy + hg_Params[6].xy;\n    r3.xy = r3.xy*hg_Params[6].zw;\n    r3 = hg_Texture0.sample(hg_Sampler0, r3.xy);\n    output.color0 = select(r3, c1.xxxx, -r2.xxxx < 0.00000f);\n    return output;\n}\n//MD5=94f4bf66:7c889179:a07da9c3:99f4d58f\n//SIG=00000000:00000000:00000000:00000000:0002:0007:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000075e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 1.000000000, -2.000000000, 3.000000000);\n    const highp vec4 c1 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0.xy = hg_ProgramLocal5.xy*c0.xx;\n    r1.xy = hg_TexCoord0.xy - hg_ProgramLocal0.xy;\n    r1.xy = r1.xy*hg_ProgramLocal4.zw;\n    r2.x = dot(r1.xy, hg_ProgramLocal1.xy);\n    r2.y = dot(r1.xy, hg_ProgramLocal1.zw);\n    r1.x = clamp(abs(r2.x), 0.00000, 1.00000);\n    r1.x = clamp(c0.y - r1.x, 0.00000, 1.00000);\n    r3.x = r1.x*c0.z + c0.w;\n    r1.x = r1.x*r1.x;\n    r3.x = r1.x*r3.x;\n    r3.x = mix(c0.y, hg_ProgramLocal3.x, r3.x);\n    r2.x = r2.x*r3.x;\n    r1.x = dot(r2.xy, hg_ProgramLocal2.xy);\n    r1.y = dot(r2.xy, hg_ProgramLocal2.zw);\n    r1.xy = r1.xy*hg_ProgramLocal4.xy + hg_ProgramLocal0.xy;\n    r3.xy = max(r1.xy, -r0.xy);\n    r3.xy = min(r3.xy, r0.xy);\n    r2.xy = -r0.xy - r1.xy;\n    r1.xy = r1.xy - r0.xy;\n    r2.x = max(r2.x, r2.y);\n    r2.y = max(r1.x, r1.y);\n    r2.x = max(r2.x, r2.y);\n    r3.xy = r3.xy + hg_ProgramLocal6.xy;\n    r3.xy = r3.xy*hg_ProgramLocal6.zw;\n    r3 = texture2D(hg_Texture0, r3.xy);\n    gl_FragColor = vec4(-r2.x < 0.00000 ? c1.x : r3.x, -r2.x < 0.00000 ? c1.x : r3.y, -r2.x < 0.00000 ? c1.x : r3.z, -r2.x < 0.00000 ? c1.x : r3.w);\n}\n//MD5=0e9040f6:b640f8ae:e9836955:e39f326a\n//SIG=00000000:00000000:00000000:00000000:0002:0007:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA94604(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA94784(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA947D4()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA947CCLL);
}

uint64_t HgcFunHouse::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcFunHouse::Bind(HgcFunHouse *this, HGHandler *a2)
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

uint64_t HgcFunHouse::RenderTile(HgcFunHouse *this, HGTile *a2)
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
          v20 = *(v19 + 64);
          v21 = *(v19 + 112);
          v22 = vmulq_f32(*(v19 + 80), *(v19 + 96));
          v23 = *(v19 + 16);
          v24 = vextq_s8(v20, v20, 8uLL);
          v25 = vmulq_f32(vsubq_f32(v17, *v19), v24);
          v26 = vmulq_f32(vsubq_f32(v18, *v19), v24);
          v27 = vmulq_f32(v23, v25);
          v28 = vmulq_f32(v23, v26);
          v29 = vextq_s8(v23, v23, 8uLL);
          v30 = vmulq_f32(v25, v29);
          v31 = vmulq_f32(v26, v29);
          v32 = vaddq_f32(v30, vrev64q_s32(v30));
          v33 = vaddq_f32(v31, vrev64q_s32(v31));
          v34 = vbslq_s8(v21, vaddq_f32(v27, vrev64q_s32(v27)), v32);
          v35 = vbslq_s8(v21, vaddq_f32(v28, vrev64q_s32(v28)), v33);
          v36 = *(v19 + 128);
          v37 = *(v19 + 144);
          v38 = vminq_f32(vmaxq_f32(vsubq_f32(v37, vminq_f32(vmaxq_f32(vabsq_f32(v34), v36), v37)), v36), v37);
          v39 = vminq_f32(vmaxq_f32(vsubq_f32(v37, vminq_f32(vmaxq_f32(vabsq_f32(v35), v36), v37)), v36), v37);
          v40 = *(v19 + 160);
          v41 = *(v19 + 176);
          v42 = vaddq_f32(v40, vmulq_f32(v38, v41));
          v43 = vmulq_f32(vmulq_f32(v39, v39), vaddq_f32(v40, vmulq_f32(v39, v41)));
          v44 = *(v19 + 32);
          v45 = vsubq_f32(*(v19 + 48), v37);
          v46 = vbslq_s8(v21, vmulq_f32(vaddq_f32(v37, vmulq_f32(v45, vmulq_f32(vmulq_f32(v38, v38), v42))), v34), v32);
          v47 = vbslq_s8(v21, vmulq_f32(vaddq_f32(v37, vmulq_f32(v45, v43)), v35), v33);
          v48 = vmulq_f32(v44, v46);
          v49 = vmulq_f32(v44, v47);
          v50 = vextq_s8(v44, v44, 8uLL);
          v51 = vmulq_f32(v50, v46);
          v52 = vmulq_f32(v50, v47);
          v53 = vbslq_s8(v21, vaddq_f32(v48, vrev64q_s32(v48)), vaddq_f32(v51, vrev64q_s32(v51)));
          v54 = vbslq_s8(v21, vaddq_f32(v49, vrev64q_s32(v49)), vaddq_f32(v52, vrev64q_s32(v52)));
          v55 = vaddq_f32(*v19, vmulq_f32(v20, v53));
          v56 = vaddq_f32(*v19, vmulq_f32(v20, v54));
          v57 = vnegq_f32(v22);
          v58 = vminq_f32(vmaxq_f32(v56, v57), v22);
          v59 = *(a2 + 22);
          v60 = vsubq_f32(vminq_f32(vmaxq_f32(v55, v57), v22), v9);
          v61 = *(a2 + 10);
          if (v5)
          {
            v62 = vaddq_s32(vcvtq_s32_f32(v60), vcltzq_f32(v60));
            v63 = vsubq_f32(v60, vcvtq_f32_s32(v62)).u64[0];
            v64 = vsubq_f32(v58, v9);
            v65 = vaddq_s32(vcvtq_s32_f32(v64), vcltzq_f32(v64));
            v66 = vsubq_f32(v64, vcvtq_f32_s32(v65)).u64[0];
            *v62.i8 = vmla_s32(vzip1_s32(*v62.i8, *v65.i8), vzip2_s32(*v62.i8, *v65.i8), vdup_n_s32(v59));
            v67 = (v61 + 16 * v62.i32[0]);
            v68 = vaddq_f32(*v67, vmulq_n_f32(vsubq_f32(v67[1], *v67), v63.f32[0]));
            v69 = vaddq_f32(v68, vmulq_lane_f32(vsubq_f32(vaddq_f32(v67[v59], vmulq_n_f32(vsubq_f32(v67[v59 + 1], v67[v59]), v63.f32[0])), v68), v63, 1));
            v70 = (v61 + 16 * v62.i32[1]);
            v71 = vaddq_f32(*v70, vmulq_n_f32(vsubq_f32(v70[1], *v70), v66.f32[0]));
            v72 = vaddq_f32(v71, vmulq_lane_f32(vsubq_f32(vaddq_f32(v70[v59], vmulq_n_f32(vsubq_f32(v70[v59 + 1], v70[v59]), v66.f32[0])), v71), v66, 1));
          }

          else
          {
            v73 = vaddq_f32(v60, v13);
            v74 = vcvtq_s32_f32(v73);
            v75 = vaddq_f32(vsubq_f32(v58, v9), v13);
            v76 = vcvtq_s32_f32(v75);
            *v73.f32 = vadd_s32(*v74.i8, *&vcgtq_f32(vcvtq_f32_s32(v74), v73));
            *v75.f32 = vadd_s32(*v76.i8, *&vcgtq_f32(vcvtq_f32_s32(v76), v75));
            *v75.f32 = vmla_s32(vzip1_s32(*v73.f32, *v75.f32), vzip2_s32(*v73.f32, *v75.f32), vdup_n_s32(v59));
            v77 = v75.i32[1];
            v69 = *(v61 + 16 * v75.i32[0]);
            v72 = *(v61 + 16 * v77);
          }

          v78 = vsubq_f32(v57, v55);
          v79 = vsubq_f32(v57, v56);
          v80 = vsubq_f32(v55, v22);
          v81 = vsubq_f32(v56, v22);
          v82 = vbslq_s8(v21, vmaxq_f32(v78, vrev64q_s32(v78)), vmaxq_f32(vrev64q_s32(v80), v80));
          v83 = vbslq_s8(v21, vmaxq_f32(v79, vrev64q_s32(v79)), vmaxq_f32(vrev64q_s32(v81), v81));
          v84 = (v11 + 16 * v15);
          *v84 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vmaxq_f32(v82, vrev64q_s32(v82)), 0), v36), v36, v69);
          v84[1] = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vmaxq_f32(v83, vrev64q_s32(v83)), 0), v36), v36, v72);
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v85 = *(this + 51);
        v86 = *(v85 + 64);
        v87 = *(v85 + 112);
        v88 = vmulq_f32(*(v85 + 80), *(v85 + 96));
        v89 = *(v85 + 16);
        v90 = vmulq_f32(vsubq_f32(v17, *v85), vextq_s8(v86, v86, 8uLL));
        v91 = vmulq_f32(v89, v90);
        v92 = vmulq_f32(v90, vextq_s8(v89, v89, 8uLL));
        v93 = vaddq_f32(v92, vrev64q_s32(v92));
        v94 = vbslq_s8(v87, vaddq_f32(v91, vrev64q_s32(v91)), v93);
        v95 = *(v85 + 128);
        v96 = *(v85 + 144);
        v97 = vminq_f32(vmaxq_f32(vsubq_f32(v96, vminq_f32(vmaxq_f32(vabsq_f32(v94), v95), v96)), v95), v96);
        v98 = *(v85 + 32);
        v99 = vbslq_s8(v87, vmulq_f32(vaddq_f32(v96, vmulq_f32(vsubq_f32(*(v85 + 48), v96), vmulq_f32(vmulq_f32(v97, v97), vaddq_f32(*(v85 + 160), vmulq_f32(v97, *(v85 + 176)))))), v94), v93);
        v100 = vmulq_f32(v98, v99);
        v101 = vmulq_f32(vextq_s8(v98, v98, 8uLL), v99);
        v102 = vaddq_f32(*v85, vmulq_f32(v86, vbslq_s8(v87, vaddq_f32(v100, vrev64q_s32(v100)), vaddq_f32(v101, vrev64q_s32(v101)))));
        v103 = vnegq_f32(v88);
        v104 = *(a2 + 22);
        v105 = vsubq_f32(vminq_f32(vmaxq_f32(v102, v103), v88), v9);
        v106 = *(a2 + 10);
        if (v5)
        {
          v107 = vaddq_s32(vcvtq_s32_f32(v105), vcltzq_f32(v105));
          v108 = vsubq_f32(v105, vcvtq_f32_s32(v107)).u64[0];
          v109 = (v106 + 16 * (v107.i32[0] + v107.i32[1] * v104));
          v110 = vaddq_f32(*v109, vmulq_n_f32(vsubq_f32(v109[1], *v109), v108.f32[0]));
          v111 = vaddq_f32(v110, vmulq_lane_f32(vsubq_f32(vaddq_f32(v109[v104], vmulq_n_f32(vsubq_f32(v109[v104 + 1], v109[v104]), v108.f32[0])), v110), v108, 1));
        }

        else
        {
          v112 = vaddq_f32(v105, v13);
          v113 = vcvtq_s32_f32(v112);
          v112.i64[0] = vaddq_s32(v113, vcgtq_f32(vcvtq_f32_s32(v113), v112)).u64[0];
          v111 = *(v106 + 16 * (v112.i32[0] + v112.i32[1] * v104));
        }

        v114 = vsubq_f32(v103, v102);
        v115 = vsubq_f32(v102, v88);
        v116 = vbslq_s8(v87, vmaxq_f32(v114, vrev64q_s32(v114)), vmaxq_f32(vrev64q_s32(v115), v115));
        *(v11 + 16 * v15) = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vmaxq_f32(v116, vrev64q_s32(v116)), 0), v95), v95, v111);
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcFunHouse::GetDOD(HgcFunHouse *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcFunHouse::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcFunHouse::HgcFunHouse(HgcFunHouse *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E5698;
  operator new();
}

void HgcFunHouse::~HgcFunHouse(HGNode *this)
{
  *this = &unk_2871E5698;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C408070C27FLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcFunHouse::~HgcFunHouse(this);

  HGObject::operator delete(v1);
}

uint64_t HgcFunHouse::SetParameter(HgcFunHouse *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcFunHouse::GetParameter(HgcFunHouse *this, unsigned int a2, float *a3)
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

const char *HgcGlassBlock::GetProgram(HgcGlassBlock *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000052b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    s1.xy = s0.xy*hg_Params[1].xy;\n    s1.xy = floor(s1.xy);\n    s1.xy = s1.xy*hg_Params[1].zw;\n    s0.xy = s0.xy - s1.xy;\n    s2.x = dot(s1.xy, hg_Params[2].xy);\n    s2.y = dot(s1.xy, hg_Params[2].zw);\n    s2.xy = s2.xy + s0.xy;\n    s2.xy = s2.xy + hg_Params[0].xy;\n    s1.xy = fmax(s2.xy, hg_Params[3].xy);\n    s1.xy = fmin(s1.xy, hg_Params[4].xy);\n    s0.xy = hg_Params[3].xy - s2.xy;\n    s2.xy = s2.xy - hg_Params[4].xy;\n    s0.x = fmax(s0.x, s0.y);\n    s0.y = fmax(s2.x, s2.y);\n    s0.x = fmax(s0.x, s0.y);\n    s1.xy = s1.xy + hg_Params[5].xy;\n    s1.xy = s1.xy*hg_Params[5].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s1.xy);\n    output.color0 = select(float4(r0), float4(c0.xxxx), -s0.xxxx < 0.00000h);\n    return output;\n}\n//MD5=923753ff:6091895a:5c182939:63500d82\n//SIG=00400000:00000000:00000000:00000001:0001:0006:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000508\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy - hg_Params[0].xy;\n    r1.xy = r0.xy*hg_Params[1].xy;\n    r1.xy = floor(r1.xy);\n    r1.xy = r1.xy*hg_Params[1].zw;\n    r0.xy = r0.xy - r1.xy;\n    r2.x = dot(r1.xy, hg_Params[2].xy);\n    r2.y = dot(r1.xy, hg_Params[2].zw);\n    r2.xy = r2.xy + r0.xy;\n    r2.xy = r2.xy + hg_Params[0].xy;\n    r1.xy = fmax(r2.xy, hg_Params[3].xy);\n    r1.xy = fmin(r1.xy, hg_Params[4].xy);\n    r0.xy = hg_Params[3].xy - r2.xy;\n    r2.xy = r2.xy - hg_Params[4].xy;\n    r0.x = fmax(r0.x, r0.y);\n    r0.y = fmax(r2.x, r2.y);\n    r0.x = fmax(r0.x, r0.y);\n    r1.xy = r1.xy + hg_Params[5].xy;\n    r1.xy = r1.xy*hg_Params[5].zw;\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    output.color0 = select(r1, c0.xxxx, -r0.xxxx < 0.00000f);\n    return output;\n}\n//MD5=45605842:b5e56ddb:8975c6e1:60f2d2ee\n//SIG=00000000:00000000:00000000:00000000:0001:0006:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000060a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xy = hg_TexCoord0.xy - hg_ProgramLocal0.xy;\n    r1.xy = r0.xy*hg_ProgramLocal1.xy;\n    r1.xy = floor(r1.xy);\n    r1.xy = r1.xy*hg_ProgramLocal1.zw;\n    r0.xy = r0.xy - r1.xy;\n    r2.x = dot(r1.xy, hg_ProgramLocal2.xy);\n    r2.y = dot(r1.xy, hg_ProgramLocal2.zw);\n    r2.xy = r2.xy + r0.xy;\n    r2.xy = r2.xy + hg_ProgramLocal0.xy;\n    r1.xy = max(r2.xy, hg_ProgramLocal3.xy);\n    r1.xy = min(r1.xy, hg_ProgramLocal4.xy);\n    r0.xy = hg_ProgramLocal3.xy - r2.xy;\n    r2.xy = r2.xy - hg_ProgramLocal4.xy;\n    r0.x = max(r0.x, r0.y);\n    r0.y = max(r2.x, r2.y);\n    r0.x = max(r0.x, r0.y);\n    r1.xy = r1.xy + hg_ProgramLocal5.xy;\n    r1.xy = r1.xy*hg_ProgramLocal5.zw;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    gl_FragColor = vec4(-r0.x < 0.00000 ? c0.x : r1.x, -r0.x < 0.00000 ? c0.x : r1.y, -r0.x < 0.00000 ? c0.x : r1.z, -r0.x < 0.00000 ? c0.x : r1.w);\n}\n//MD5=f8373a7b:5845bf46:0573595f:6b414c4e\n//SIG=00000000:00000000:00000000:00000000:0001:0006:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA954D0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA95650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA956A0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA95698);
}

uint64_t HgcGlassBlock::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 5, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcGlassBlock::Bind(HgcGlassBlock *this, HGHandler *a2)
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

uint64_t HgcGlassBlock::RenderTile(HgcGlassBlock *this, HGTile *a2)
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
          v20 = *(this + 51);
          v21 = *(v20 + 16);
          v22 = vsubq_f32(v17, *v20);
          v23 = vsubq_f32(v18, *v20);
          v24 = vsubq_f32(v19, *v20);
          v25 = vmulq_f32(v22, v21);
          v26 = vmulq_f32(v23, v21);
          v27 = vmulq_f32(v24, v21);
          v28 = vcvtq_f32_s32(vcvtq_s32_f32(v25));
          v29 = vcvtq_f32_s32(vcvtq_s32_f32(v26));
          v30 = vcvtq_f32_s32(vcvtq_s32_f32(v27));
          v31 = vcgtq_f32(v28, v25);
          v32 = *(v20 + 64);
          v33 = *(v20 + 80);
          v34 = vextq_s8(v21, v21, 8uLL);
          v35 = vmulq_f32(v34, vsubq_f32(v28, vandq_s8(v33, v31)));
          v36 = vmulq_f32(v34, vsubq_f32(v29, vandq_s8(v33, vcgtq_f32(v29, v26))));
          v37 = vmulq_f32(v34, vsubq_f32(v30, vandq_s8(v33, vcgtq_f32(v30, v27))));
          v38 = vsubq_f32(v22, v35);
          v39 = vsubq_f32(v23, v36);
          v40 = vsubq_f32(v24, v37);
          v42 = *(v20 + 32);
          v41 = *(v20 + 48);
          v43 = vmulq_f32(v42, v35);
          v44 = vmulq_f32(v42, v36);
          v45 = vmulq_f32(v42, v37);
          v46 = vextq_s8(v42, v42, 8uLL);
          v47 = vmulq_f32(v46, v35);
          v48 = vmulq_f32(v46, v36);
          v49 = vmulq_f32(v46, v37);
          v50 = vaddq_f32(v47, vrev64q_s32(v47));
          v51 = vaddq_f32(v49, vrev64q_s32(v49));
          v52 = *(v20 + 96);
          v53 = vaddq_f32(v38, vbslq_s8(v52, vaddq_f32(v43, vrev64q_s32(v43)), v50));
          v54 = vaddq_f32(v40, vbslq_s8(v52, vaddq_f32(v45, vrev64q_s32(v45)), v51));
          v55 = vaddq_f32(*v20, v53);
          v56 = vaddq_f32(*v20, vaddq_f32(v39, vbslq_s8(v52, vaddq_f32(v44, vrev64q_s32(v44)), vaddq_f32(v48, vrev64q_s32(v48)))));
          v57 = vaddq_f32(*v20, v54);
          v58 = vminq_f32(vmaxq_f32(v56, v41), v32);
          v59 = vminq_f32(vmaxq_f32(v57, v41), v32);
          v60 = *(a2 + 22);
          v61 = vsubq_f32(vminq_f32(vmaxq_f32(v55, v41), v32), v9);
          v62 = *(a2 + 10);
          if (v5)
          {
            v63 = vaddq_s32(vcvtq_s32_f32(v61), vcltzq_f32(v61));
            v64 = vsubq_f32(v61, vcvtq_f32_s32(v63)).u64[0];
            v65 = vsubq_f32(v58, v9);
            v66 = vaddq_s32(vcvtq_s32_f32(v65), vcltzq_f32(v65));
            v67 = vsubq_f32(v65, vcvtq_f32_s32(v66)).u64[0];
            *v63.i8 = vmla_s32(vzip1_s32(*v63.i8, *v66.i8), vzip2_s32(*v63.i8, *v66.i8), vdup_n_s32(v60));
            v68 = (v62 + 16 * v63.i32[0]);
            v69 = vaddq_f32(*v68, vmulq_n_f32(vsubq_f32(v68[1], *v68), v64.f32[0]));
            v70 = vaddq_f32(v69, vmulq_lane_f32(vsubq_f32(vaddq_f32(v68[v60], vmulq_n_f32(vsubq_f32(v68[v60 + 1], v68[v60]), v64.f32[0])), v69), v64, 1));
            v71 = (v62 + 16 * v63.i32[1]);
            v72 = vaddq_f32(*v71, vmulq_n_f32(vsubq_f32(v71[1], *v71), v67.f32[0]));
            v73 = vaddq_f32(v72, vmulq_lane_f32(vsubq_f32(vaddq_f32(v71[v60], vmulq_n_f32(vsubq_f32(v71[v60 + 1], v71[v60]), v67.f32[0])), v72), v67, 1));
            v74 = vsubq_f32(v59, v9);
            v75 = vaddq_s32(vcvtq_s32_f32(v74), vcltzq_f32(v74));
            v74.i64[0] = vsubq_f32(v74, vcvtq_f32_s32(v75)).u64[0];
            v76 = (v62 + 16 * (v75.i32[0] + v75.i32[1] * v60));
            v77 = vaddq_f32(*v76, vmulq_n_f32(vsubq_f32(v76[1], *v76), v74.f32[0]));
            v78 = vaddq_f32(v77, vmulq_lane_f32(vsubq_f32(vaddq_f32(v76[v60], vmulq_n_f32(vsubq_f32(v76[v60 + 1], v76[v60]), v74.f32[0])), v77), *v74.f32, 1));
          }

          else
          {
            v79 = vaddq_f32(v61, v13);
            v80 = vcvtq_s32_f32(v79);
            v81 = vaddq_f32(vsubq_f32(v58, v9), v13);
            v82 = vcvtq_s32_f32(v81);
            *v79.f32 = vadd_s32(*v80.i8, *&vcgtq_f32(vcvtq_f32_s32(v80), v79));
            *v81.f32 = vadd_s32(*v82.i8, *&vcgtq_f32(vcvtq_f32_s32(v82), v81));
            *v81.f32 = vmla_s32(vzip1_s32(*v79.f32, *v81.f32), vzip2_s32(*v79.f32, *v81.f32), vdup_n_s32(v60));
            v83 = v81.i32[1];
            v70 = *(v62 + 16 * v81.i32[0]);
            v73 = *(v62 + 16 * v83);
            v84 = vaddq_f32(vsubq_f32(v59, v9), v13);
            v85 = vcvtq_s32_f32(v84);
            v84.i64[0] = vaddq_s32(v85, vcgtq_f32(vcvtq_f32_s32(v85), v84)).u64[0];
            v78 = *(v62 + 16 * (v84.i32[0] + v84.i32[1] * v60));
          }

          v86 = vsubq_f32(v41, v55);
          v87 = vsubq_f32(v41, v56);
          v88 = vsubq_f32(v41, v57);
          v89 = vsubq_f32(v55, v32);
          v90 = vsubq_f32(v56, v32);
          v91 = vsubq_f32(v57, v32);
          v92 = vbslq_s8(v52, vmaxq_f32(v86, vrev64q_s32(v86)), vmaxq_f32(vrev64q_s32(v89), v89));
          v93 = vbslq_s8(v52, vmaxq_f32(v87, vrev64q_s32(v87)), vmaxq_f32(vrev64q_s32(v90), v90));
          v94 = vbslq_s8(v52, vmaxq_f32(v88, vrev64q_s32(v88)), vmaxq_f32(vrev64q_s32(v91), v91));
          v95 = vdupq_lane_s32(*&vmaxq_f32(v92, vrev64q_s32(v92)), 0);
          v96 = *(v20 + 112);
          v97 = (v11 + 16 * v15);
          *v97 = vbslq_s8(vcgtq_f32(v95, v96), v96, v70);
          v97[1] = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vmaxq_f32(v93, vrev64q_s32(v93)), 0), v96), v96, v73);
          v97[2] = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vmaxq_f32(v94, vrev64q_s32(v94)), 0), v96), v96, v78);
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
          v98 = *(this + 51);
          v99 = *(v98 + 16);
          v100 = vsubq_f32(v17, *v98);
          v101 = vmulq_f32(v100, v99);
          v102 = vcvtq_f32_s32(vcvtq_s32_f32(v101));
          v103 = vcgtq_f32(v102, v101);
          v104 = *(v98 + 64);
          v105 = vmulq_f32(vextq_s8(v99, v99, 8uLL), vsubq_f32(v102, vandq_s8(*(v98 + 80), v103)));
          v107 = *(v98 + 32);
          v106 = *(v98 + 48);
          v108 = vmulq_f32(v107, v105);
          v109 = vsubq_f32(v100, v105);
          v110 = vmulq_f32(vextq_s8(v107, v107, 8uLL), v105);
          v111 = vaddq_f32(v110, vrev64q_s32(v110));
          v112 = *(v98 + 96);
          v113 = vaddq_f32(*v98, vaddq_f32(v109, vbslq_s8(v112, vaddq_f32(v108, vrev64q_s32(v108)), v111)));
          v114 = *(a2 + 22);
          v115 = vsubq_f32(vminq_f32(vmaxq_f32(v113, v106), v104), v9);
          v116 = *(a2 + 10);
          if (v5)
          {
            v117 = vaddq_s32(vcvtq_s32_f32(v115), vcltzq_f32(v115));
            v118 = vsubq_f32(v115, vcvtq_f32_s32(v117)).u64[0];
            v119 = (v116 + 16 * (v117.i32[0] + v117.i32[1] * v114));
            v120 = vaddq_f32(*v119, vmulq_n_f32(vsubq_f32(v119[1], *v119), v118.f32[0]));
            v121 = vaddq_f32(v120, vmulq_lane_f32(vsubq_f32(vaddq_f32(v119[v114], vmulq_n_f32(vsubq_f32(v119[v114 + 1], v119[v114]), v118.f32[0])), v120), v118, 1));
          }

          else
          {
            v122 = vaddq_f32(v115, v13);
            v123 = vcvtq_s32_f32(v122);
            v122.i64[0] = vaddq_s32(v123, vcgtq_f32(vcvtq_f32_s32(v123), v122)).u64[0];
            v121 = *(v116 + 16 * (v122.i32[0] + v122.i32[1] * v114));
          }

          v124 = vsubq_f32(v106, v113);
          v125 = vsubq_f32(v113, v104);
          v126 = vbslq_s8(v112, vmaxq_f32(v124, vrev64q_s32(v124)), vmaxq_f32(vrev64q_s32(v125), v125));
          *(v11 + 16 * v15) = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vmaxq_f32(v126, vrev64q_s32(v126)), 0), *(v98 + 112)), *(v98 + 112), v121);
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

uint64_t HgcGlassBlock::GetDOD(HgcGlassBlock *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcGlassBlock::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcGlassBlock::HgcGlassBlock(HgcGlassBlock *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E5900;
  operator new();
}

void HgcGlassBlock::~HgcGlassBlock(HGNode *this)
{
  *this = &unk_2871E5900;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AE2C30F4);
  }

  HGNode::~HGNode(this);
}

{
  HgcGlassBlock::~HgcGlassBlock(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGlassBlock::SetParameter(HgcGlassBlock *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGlassBlock::GetParameter(HgcGlassBlock *this, unsigned int a2, float *a3)
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

const char *HgcInsectEyeBorder::GetProgram(HgcInsectEyeBorder *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000b45\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.732100010, -2.000000000, 0.3333329856, 0.6766660213);\n    const half4 c1 = half4(3.000000000, 0.5000000000, 0.9990000129, 1.000000000);\n    const half4 c2 = half4(0.000000000, -0.8659999967, 0.2500000000, 0.000000000);\n    half4 r0;\n    float4 s0, s1, s2, s3, s4, s5, s6;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord1.xy + hg_Params[5].xy;\n    s1 = s0.xxxx*hg_Params[3].xxxx + hg_Params[3].zzzz;\n    s0 = s0.yyyy*hg_Params[3].yyyy + hg_Params[3].wwww;\n    s1.yw = s1.yw + hg_Params[4].xx;\n    s0.zw = s0.zw + hg_Params[4].yy;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s2 = s0 + s0;\n    s3 = fract(s2);\n    s2 = s2 - s3;\n    s3 = s1*float4(c0.xxxx) + -s0;\n    s4 = fract(s3);\n    s3 = s3 - s4;\n    s4 = s1*float4(c0.xxxx) + s0;\n    s5 = fract(s4);\n    s4 = s4 - s5;\n    s5 = s2*float4(c0.yyyy) + s4;\n    s5 = s5*float4(c0.zzzz) + float4(c0.wwww);\n    s5 = fract(s5);\n    s5 = s5*float4(c1.xxxx) + float4(c1.yyyy);\n    s6 = fract(s5);\n    s5 = s5 - s6;\n    s3 = s2 + s3;\n    s3 = s3 - s4;\n    s3 = s3 + s5;\n    s3 = s3 - float4(c1.zzzz);\n    s4 = s2*float4(c0.yyyy) + s4;\n    s4 = s4 - s5;\n    s4 = s4*float4(c0.zzzz);\n    s6 = fract(s4);\n    s4 = s4 - s6;\n    s5 = select(-float4(c0.yyyy), float4(c1.wwww), s3 < 0.00000h);\n    s4 = -float4(c0.yyyy)*s4 + s5;\n    s4 = s4 + s2;\n    s6 = select(-float4(c1.yyyy), float4(c1.wwww), s3 < 0.00000h);\n    s2 = s2*float4(c1.yyyy) + s6;\n    s5 = fract(s2);\n    s2 = s2 - s5;\n    s3 = float4(s3 >= float4(c2.xxxx));\n    s2 = s2 + s3;\n    s6 = s4*float4(c1.yyyy);\n    s6 = fract(s6);\n    s2 = s2 - s6;\n    s4 = s4*float4(c2.yyyy) + s1;\n    s2 = s0 - s2;\n    s5 = s2 + s2;\n    s3 = s4*float4(c0.xxxx) + -s2;\n    s4 = s4*float4(c0.xxxx) + s2;\n    s6 = clamp(s5*hg_Params[1].xxxx + hg_Params[1].yyyy, 0.00000f, 1.00000f);\n    s5 = clamp(s5*hg_Params[2].xxxx + hg_Params[2].yyyy, 0.00000f, 1.00000f);\n    s6 = fmax(s6, s5);\n    s1 = clamp(s3*hg_Params[1].xxxx + hg_Params[1].yyyy, 0.00000f, 1.00000f);\n    s6 = fmax(s6, s1);\n    s3 = clamp(s3*hg_Params[2].xxxx + hg_Params[2].yyyy, 0.00000f, 1.00000f);\n    s6 = fmax(s6, s3);\n    s0 = clamp(s4*hg_Params[1].xxxx + hg_Params[1].yyyy, 0.00000f, 1.00000f);\n    s6 = fmax(s6, s0);\n    s4 = clamp(s4*hg_Params[2].xxxx + hg_Params[2].yyyy, 0.00000f, 1.00000f);\n    s6 = fmax(s6, s4);\n    s6.x = dot(s6, float4(c2.zzzz));\n    s6 = hg_Params[0]*s6.xxxx;\n    s2.x = float(c1.w) - s6.w;\n    output.color0 = float4(r0)*s2.xxxx + s6;\n    return output;\n}\n//MD5=fcecd767:012dd04a:c4688ab3:897931b5\n//SIG=00400000:00000001:00000001:00000001:0003:0006:0008:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000a7b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.732100010, -2.000000000, 0.3333329856, 0.6766660213);\n    const float4 c1 = float4(3.000000000, 0.5000000000, 0.9990000129, 1.000000000);\n    const float4 c2 = float4(0.000000000, -0.8659999967, 0.2500000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord1.xy + hg_Params[5].xy;\n    r1 = r0.xxxx*hg_Params[3].xxxx + hg_Params[3].zzzz;\n    r0 = r0.yyyy*hg_Params[3].yyyy + hg_Params[3].wwww;\n    r1.yw = r1.yw + hg_Params[4].xx;\n    r0.zw = r0.zw + hg_Params[4].yy;\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3 = r0 + r0;\n    r4 = fract(r3);\n    r3 = r3 - r4;\n    r4 = r1*c0.xxxx + -r0;\n    r5 = fract(r4);\n    r4 = r4 - r5;\n    r5 = r1*c0.xxxx + r0;\n    r6 = fract(r5);\n    r5 = r5 - r6;\n    r6 = r3*c0.yyyy + r5;\n    r6 = r6*c0.zzzz + c0.wwww;\n    r6 = fract(r6);\n    r6 = r6*c1.xxxx + c1.yyyy;\n    r7 = fract(r6);\n    r6 = r6 - r7;\n    r4 = r3 + r4;\n    r4 = r4 - r5;\n    r4 = r4 + r6;\n    r4 = r4 - c1.zzzz;\n    r5 = r3*c0.yyyy + r5;\n    r5 = r5 - r6;\n    r5 = r5*c0.zzzz;\n    r7 = fract(r5);\n    r5 = r5 - r7;\n    r6 = select(-c0.yyyy, c1.wwww, r4 < 0.00000f);\n    r5 = -c0.yyyy*r5 + r6;\n    r5 = r5 + r3;\n    r7 = select(-c1.yyyy, c1.wwww, r4 < 0.00000f);\n    r3 = r3*c1.yyyy + r7;\n    r6 = fract(r3);\n    r3 = r3 - r6;\n    r4 = float4(r4 >= c2.xxxx);\n    r3 = r3 + r4;\n    r7 = r5*c1.yyyy;\n    r7 = fract(r7);\n    r3 = r3 - r7;\n    r5 = r5*c2.yyyy + r1;\n    r3 = r0 - r3;\n    r6 = r3 + r3;\n    r4 = r5*c0.xxxx + -r3;\n    r5 = r5*c0.xxxx + r3;\n    r7 = clamp(r6*hg_Params[1].xxxx + hg_Params[1].yyyy, 0.00000f, 1.00000f);\n    r6 = clamp(r6*hg_Params[2].xxxx + hg_Params[2].yyyy, 0.00000f, 1.00000f);\n    r7 = fmax(r7, r6);\n    r1 = clamp(r4*hg_Params[1].xxxx + hg_Params[1].yyyy, 0.00000f, 1.00000f);\n    r7 = fmax(r7, r1);\n    r4 = clamp(r4*hg_Params[2].xxxx + hg_Params[2].yyyy, 0.00000f, 1.00000f);\n    r7 = fmax(r7, r4);\n    r0 = clamp(r5*hg_Params[1].xxxx + hg_Params[1].yyyy, 0.00000f, 1.00000f);\n    r7 = fmax(r7, r0);\n    r5 = clamp(r5*hg_Params[2].xxxx + hg_Params[2].yyyy, 0.00000f, 1.00000f);\n    r7 = fmax(r7, r5);\n    r7.x = dot(r7, c2.zzzz);\n    r7 = hg_Params[0]*r7.xxxx;\n    r3.x = c1.w - r7.w;\n    output.color0 = r2*r3.xxxx + r7;\n    return output;\n}\n//MD5=29772597:07d3da4a:620c352b:a8ee10ef\n//SIG=00000000:00000001:00000001:00000000:0003:0006:0008:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n"
           "//LEN=0000000c61\n"
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
           "varying highp vec4 hg_TexCoord0;\n"
           "varying highp vec4 hg_TexCoord1;\n"
           "void main()\n"
           "{\n"
           "    const highp vec4 c0 = vec4(1.732100010, -2.000000000, 0.3333329856, 0.6766660213);\n"
           "    const highp vec4 c1 = vec4(3.000000000, 0.5000000000, 0.9990000129, 1.000000000);\n"
           "    const highp vec4 c2 = vec4(0.000000000, -0.8659999967, 0.2500000000, 0.000000000);\n"
           "    highp vec4 r0, r1, r2, r3, r4, r5, r6, r7;\n"
           "\n"
           "    r0.xy = hg_TexCoord1.xy + hg_ProgramLocal5.xy;\n"
           "    r1 = r0.xxxx*hg_ProgramLocal3.xxxx + hg_ProgramLocal3.zzzz;\n"
           "    r0 = r0.yyyy*hg_ProgramLocal3.yyyy + hg_ProgramLocal3.wwww;\n"
           "    r1.yw = r1.yw + hg_ProgramLocal4.xx;\n"
           "    r0.zw = r0.zw + hg_ProgramLocal4.yy;\n"
           "    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n"
           "    r3 = r0 + r0;\n"
           "    r4 = fract(r3);\n"
           "    r3 = r3 - r4;\n"
           "    r4 = r1*c0.xxxx + -r0;\n"
           "    r5 = fract(r4);\n"
           "    r4 = r4 - r5;\n"
           "    r5 = r1*c0.xxxx + r0;\n"
           "    r6 = fract(r5);\n"
           "    r5 = r5 - r6;\n"
           "    r6 = r3*c0.yyyy + r5;\n"
           "    r6 = r6*c0.zzzz + c0.wwww;\n"
           "    r6 = fract(r6);\n"
           "    r6 = r6*c1.xxxx + c1.yyyy;\n"
           "    r7 = fract(r6);\n"
           "    r6 = r6 - r7;\n"
           "    r4 = r3 + r4;\n"
           "    r4 = r4 - r5;\n"
           "    r4 = r4 + r6;\n"
           "    r4 = r4 - c1.zzzz;\n"
           "    r5 = r3*c0.yyyy + r5;\n"
           "    r5 = r5 - r6;\n"
           "    r5 = r5*c0.zzzz;\n"
           "    r7 = fract(r5);\n"
           "    r5 = r5 - r7;\n"
           "    r6 = vec4(r4.x < 0.00000 ? c1.w : -c0.y, r4.y < 0.00000 ? c1.w : -c0.y, r4.z < 0.00000 ? c1.w : -c0.y, r4.w < 0.00000 ? c1.w : -c0.y);\n"
           "    r5 = -c0.yyyy*r5 + r6;\n"
           "    r5 = r5 + r3;\n"
           "    r7 = vec4(r4.x < 0.00000 ? c1.w : -c1.y, r4.y < 0.00000 ? c1.w : -c1.y, r4.z < 0.00000 ? c1.w : -c1.y, r4.w < 0.00000 ? c1.w : -c1.y);\n"
           "    r3 = r3*c1.yyyy + r7;\n"
           "    r6 = fract(r3);\n"
           "    r3 = r3 - r6;\n"
           "    r4 = vec4(greaterThanEqual(r4, c2.xxxx));\n"
           "    r3 = r3 + r4;\n"
           "    r7 = r5*c1.yyyy;\n"
           "    r7 = fract(r7);\n"
           "    r3 = r3 - r7;\n"
           "    r5 = r5*c2.yyyy + r1;\n"
           "    r3 = r0 - r3;\n"
           "    r6 = r3 + r3;\n"
           "    r4 = r5*c0.xxxx + -r3;\n"
           "    r5 = r5*c0.xxxx + r3;\n"
           "    r7 = clamp(r6*hg_ProgramLocal1.xxxx + hg_ProgramLocal1.yyyy, vec4(0.00000), vec4(1.00000));\n"
           "    r6 = clamp(r6*hg_ProgramLocal2.xxxx + hg_ProgramLocal2.yyyy, vec4(0.00000), vec4(1.00000));\n"
           "    r7 = max(r7, r6);\n"
           "    r1 = clamp(r4*hg_ProgramLocal1.xxxx + hg_ProgramLocal1.yyyy, vec4(0.00000), vec4(1.00000));\n"
           "    r7 = max(r7, r1);\n"
           "    r4 = clamp(r4*hg_ProgramLocal2.xxxx + hg_ProgramLocal2.yyyy, vec4(0.00000), vec4(1.00000));\n"
           "    r7 = max(r7, r4);\n"
           "    r0 = clamp(r5*hg_ProgramLocal1.xxxx + hg_ProgramLocal1.yyyy, vec4(0.00000), vec4(1.00000));\n"
           "    r7 = max(r7, r0);\n"
           "    r5 = clamp(r5*hg_ProgramLocal2.xxxx + hg_ProgramLocal2.yyyy, vec4(0.00000), vec4(1.00000));\n"
           "    r7 = max(r7, r5);\n"
           "    r7.x = dot(r7, c2.zzzz);\n"
           "    r7 = hg_ProgramLocal0*r7.xxxx;\n"
           "    r3.x = c1.w - r7.w;\n"
           "    gl_FragColor = r2*r3.xxxx + r7;\n"
           "}\n"
           "//MD5=66565287:e80d4994:c5c5fcd7:9edc3cac\n"
           "//SIG=00000000:00000001:00000001:00000000:0003:0006:0008:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FA9638C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA964CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA96514()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA9650CLL);
}

uint64_t HgcInsectEyeBorder::BindTexture(HgcInsectEyeBorder *this, HGHandler *a2, int a3)
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

uint64_t HgcInsectEyeBorder::Bind(HgcInsectEyeBorder *this, HGHandler *a2)
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

uint64_t HgcInsectEyeBorder::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 4);
  v3 = *(a2 + 12) - v2;
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a2 + 8) - *a2;
    v6 = *(a2 + 16);
    v7 = *(a2 + 80);
    v8.f32[0] = *a2 + 0.5;
    v8.f32[1] = v2 + 0.5;
    v8.i32[2] = 0;
    v8.i32[3] = 1.0;
    v9 = 16 * *(a2 + 24);
    v10 = 16 * *(a2 + 88);
    do
    {
      if (v5 >= 1)
      {
        v11 = 0;
        v12 = v8;
        do
        {
          v13 = *(a1 + 408);
          v15 = *(v13 + 32);
          v14 = *(v13 + 48);
          v16 = *(v13 + 64);
          *v14.f32 = vadd_f32(*&vextq_s8(v14, v14, 8uLL), vmul_f32(*v14.f32, vadd_f32(*v12.f32, *(v13 + 80))));
          v17 = vdupq_lane_s32(*v14.f32, 0);
          v18 = vaddq_f32(v16, v14).u64[0];
          *v19.f32 = vdup_lane_s32(*v14.f32, 1);
          *&v19.u32[2] = vdup_lane_s32(vadd_f32(*v16.f32, *v14.f32), 1);
          v20 = *(v13 + 112);
          v21 = vbslq_s8(*(v13 + 96), v17, vdupq_lane_s32(v18, 0));
          v22 = vaddq_f32(v19, v19);
          v23 = vcvtq_f32_s32(vcvtq_s32_f32(v22));
          v24 = vsubq_f32(v23, vandq_s8(v20, vcgtq_f32(v23, v22)));
          v25 = *(v13 + 128);
          v26 = *(v13 + 144);
          v27 = vmulq_f32(v25, v21);
          v28 = vsubq_f32(v27, v19);
          v29 = vcvtq_f32_s32(vcvtq_s32_f32(v28));
          v30 = vaddq_f32(v19, v27);
          v31 = vcvtq_f32_s32(vcvtq_s32_f32(v30));
          v32 = vsubq_f32(v22, vsubq_f32(v22, v24));
          v33 = vsubq_f32(v30, vsubq_f32(v30, vsubq_f32(v31, vandq_s8(v20, vcgtq_f32(v31, v30)))));
          v34 = vsubq_f32(v33, vmulq_f32(v26, v32));
          v35 = *(v13 + 176);
          v36 = vaddq_f32(*(v13 + 160), vmulq_f32(v35, v34));
          v37 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
          v38 = vsubq_f32(v29, vandq_s8(v20, vcgtq_f32(v29, v28)));
          v39 = vsubq_f32(v36, vsubq_f32(v37, vandq_s8(v20, vcgtq_f32(v37, v36))));
          v40 = *(v13 + 192);
          v41 = vaddq_f32(v40, vmulq_f32(*(v13 + 208), v39));
          v42 = vcvtq_f32_s32(vcvtq_s32_f32(v41));
          v43 = vsubq_f32(v28, vsubq_f32(v28, v38));
          v44 = vsubq_f32(v41, vsubq_f32(v41, vsubq_f32(v42, vandq_s8(v20, vcgtq_f32(v42, v41)))));
          v45 = vaddq_f32(vsubq_f32(vaddq_f32(v32, v43), v33), v44);
          v46 = vmulq_f32(v35, vsubq_f32(v34, v44));
          v47 = *(v13 + 240);
          v48 = vsubq_f32(v45, *(v13 + 224));
          v49 = vcvtq_f32_s32(vcvtq_s32_f32(v46));
          v50 = vsubq_f32(v46, vsubq_f32(v46, vsubq_f32(v49, vandq_s8(v20, vcgtq_f32(v49, v46)))));
          v51 = vcgtq_f32(v47, v48);
          v52 = vaddq_f32(vbslq_s8(v51, v20, v26), vmulq_f32(v26, v50));
          v53 = vaddq_f32(vmulq_f32(v32, v40), vbslq_s8(v51, v20, *(v13 + 256)));
          v54 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
          v55 = vaddq_f32(v32, v52);
          v56 = vsubq_f32(v53, vsubq_f32(v53, vsubq_f32(v54, vandq_s8(v20, vcgtq_f32(v54, v53)))));
          v57 = vmulq_f32(v40, v55);
          v58 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
          v59 = vaddq_f32(vmulq_f32(*(v13 + 272), v55), v21);
          v60 = vsubq_f32(v19, vsubq_f32(vaddq_f32(vandq_s8(v20, vcgeq_f32(v48, v47)), v56), vsubq_f32(v57, vsubq_f32(v58, vandq_s8(v20, vcgtq_f32(v58, v57))))));
          v61 = vaddq_f32(v60, v60);
          v62 = vmulq_f32(v25, v59);
          v63 = vsubq_f32(v62, v60);
          v64 = vaddq_f32(v62, v60);
          v65 = *(v13 + 16);
          v66 = vdupq_lane_s32(*&v65, 1);
          v67 = vdupq_lane_s32(*&v15, 1);
          v68 = vmulq_f32(vmaxq_f32(vmaxq_f32(vmaxq_f32(vmaxq_f32(vmaxq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v66, vmulq_n_f32(v61, *&v65)), v47), v20), vminq_f32(vmaxq_f32(vaddq_f32(v67, vmulq_n_f32(v61, *&v15)), v47), v20)), vminq_f32(vmaxq_f32(vaddq_f32(v66, vmulq_n_f32(v63, *&v65)), v47), v20)), vminq_f32(vmaxq_f32(vaddq_f32(v67, vmulq_n_f32(v63, *&v15)), v47), v20)), vminq_f32(vmaxq_f32(vaddq_f32(v66, vmulq_n_f32(v64, *&v65)), v47), v20)), vminq_f32(vmaxq_f32(vaddq_f32(v67, vmulq_n_f32(v64, *&v15)), v47), v20)), *(v13 + 288));
          v69 = vaddq_f32(v68, vextq_s8(v68, v68, 4uLL));
          v70 = vmulq_n_f32(*v13, vaddq_f32(v69, vdupq_laneq_s32(v69, 2)).f32[0]);
          *(v6 + v11) = vaddq_f32(v70, vmulq_n_f32(*(v7 + v11), vsubq_f32(v20, vdupq_laneq_s32(v70, 3)).f32[0]));
          v12 = vaddq_f32(v12, xmmword_2603429B0);
          v11 += 16;
        }

        while (16 * v5 != v11);
      }

      v8 = vaddq_f32(v8, xmmword_2603429C0);
      ++v4;
      v6 += v9;
      v7 += v10;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcInsectEyeBorder::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

uint64_t HgcInsectEyeBorder::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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

void HgcInsectEyeBorder::HgcInsectEyeBorder(HgcInsectEyeBorder *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E5B68;
  operator new();
}

void HgcInsectEyeBorder::~HgcInsectEyeBorder(HGNode *this)
{
  *this = &unk_2871E5B68;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40FDACBBE0);
  }

  HGNode::~HGNode(this);
}

{
  HgcInsectEyeBorder::~HgcInsectEyeBorder(this);

  HGObject::operator delete(v1);
}

uint64_t HgcInsectEyeBorder::SetParameter(HgcInsectEyeBorder *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcInsectEyeBorder::GetParameter(HgcInsectEyeBorder *this, unsigned int a2, float *a3)
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

const char *HgcMirror::GetProgram(HgcMirror *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000369\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    s1.x = dot(s0.xyz, hg_Params[1].xyx);\n    s1.y = dot(s0.xyz, hg_Params[1].zwz);\n    s1.x = abs(s1.x);\n    s0.x = dot(s1.xy, hg_Params[2].xy);\n    s0.y = dot(s1.xy, hg_Params[2].zw);\n    s0.xy = s0.xy + hg_Params[0].xy;\n    s0.xy = s0.xy + hg_Params[3].xy;\n    s0.xy = s0.xy*hg_Params[3].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=51d2cbf8:cd7ed173:8143842d:05654dc4\n//SIG=00400000:00000000:00000000:00000001:0000:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000361\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    r1.x = dot(r0.xyz, hg_Params[1].xyx);\n    r1.y = dot(r0.xyz, hg_Params[1].zwz);\n    r1.x = abs(r1.x);\n    r0.x = dot(r1.xy, hg_Params[2].xy);\n    r0.y = dot(r1.xy, hg_Params[2].zw);\n    r0.xy = r0.xy + hg_Params[0].xy;\n    r0.xy = r0.xy + hg_Params[3].xy;\n    r0.xy = r0.xy*hg_Params[3].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=c4438bd7:7a0ef036:b3cf2aa5:3af6f19d\n//SIG=00000000:00000000:00000000:00000000:0000:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003b4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    highp vec4 r0, r1;\n\n    r0.xyz = hg_TexCoord0.xyz - hg_ProgramLocal0.xyz;\n    r1.x = dot(r0.xyz, hg_ProgramLocal1.xyx);\n    r1.y = dot(r0.xyz, hg_ProgramLocal1.zwz);\n    r1.x = abs(r1.x);\n    r0.x = dot(r1.xy, hg_ProgramLocal2.xy);\n    r0.y = dot(r1.xy, hg_ProgramLocal2.zw);\n    r0.xy = r0.xy + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy + hg_ProgramLocal3.xy;\n    r0.xy = r0.xy*hg_ProgramLocal3.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=d8b98ed2:1ec59725:5b8b1d55:d7142854\n//SIG=00000000:00000000:00000000:00000000:0000:0004:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA96ED0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA97050(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA970A0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA97098);
}

uint64_t HgcMirror::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcMirror::Bind(HgcMirror *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcMirror::RenderTile(HgcMirror *this, float32x4_t **a2)
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
          v24 = *(v23 + 16);
          v25 = vsubq_f32(v19, *v23);
          v26 = vsubq_f32(v20, *v23);
          v27 = vsubq_f32(v21, *v23);
          v28 = vdupq_lane_s64(v24.i64[0], 0);
          v29 = vsubq_f32(v22, *v23);
          v30 = vmulq_f32(v25, v28);
          v31 = vmulq_f32(v26, v28);
          v32 = vmulq_f32(v27, v28);
          v33 = vmulq_f32(v29, v28);
          v34 = vdupq_laneq_s64(v24, 1);
          v35 = vmulq_f32(v25, v34);
          v36 = vmulq_f32(v26, v34);
          v37 = vmulq_f32(v27, v34);
          v38 = vmulq_f32(v29, v34);
          v40 = *(v23 + 32);
          v39 = *(v23 + 48);
          v41 = vbslq_s8(v39, vaddq_f32(vextq_s8(v33, v33, 8uLL), vaddq_f32(v33, vrev64q_s32(v33))), vaddq_f32(vextq_s8(v38, v38, 4uLL), vaddq_f32(v38, vrev64q_s32(v38))));
          v42 = *(v23 + 64);
          v43 = vandq_s8(vbslq_s8(v39, vaddq_f32(vextq_s8(v30, v30, 8uLL), vaddq_f32(v30, vrev64q_s32(v30))), vaddq_f32(vextq_s8(v35, v35, 4uLL), vaddq_f32(v35, vrev64q_s32(v35)))), v42);
          v44 = vandq_s8(vbslq_s8(v39, vaddq_f32(vextq_s8(v31, v31, 8uLL), vaddq_f32(v31, vrev64q_s32(v31))), vaddq_f32(vextq_s8(v36, v36, 4uLL), vaddq_f32(v36, vrev64q_s32(v36)))), v42);
          v45 = vandq_s8(vbslq_s8(v39, vaddq_f32(vextq_s8(v32, v32, 8uLL), vaddq_f32(v32, vrev64q_s32(v32))), vaddq_f32(vextq_s8(v37, v37, 4uLL), vaddq_f32(v37, vrev64q_s32(v37)))), v42);
          v46 = vandq_s8(v41, v42);
          v47 = vmulq_f32(v40, v43);
          v48 = vmulq_f32(v40, v44);
          v49 = vmulq_f32(v40, v45);
          v50 = vmulq_f32(v40, v46);
          v51 = vextq_s8(v40, v40, 8uLL);
          v52 = vmulq_f32(v51, v43);
          v53 = vmulq_f32(v51, v44);
          v54 = vmulq_f32(v51, v45);
          v55 = vmulq_f32(v51, v46);
          v56 = vaddq_f32(*v23, vbslq_s8(v39, vaddq_f32(v47, vrev64q_s32(v47)), vaddq_f32(v52, vrev64q_s32(v52))));
          v57 = vaddq_f32(*v23, vbslq_s8(v39, vaddq_f32(v48, vrev64q_s32(v48)), vaddq_f32(v53, vrev64q_s32(v53))));
          v58 = vaddq_f32(*v23, vbslq_s8(v39, vaddq_f32(v49, vrev64q_s32(v49)), vaddq_f32(v54, vrev64q_s32(v54))));
          v59 = vaddq_f32(*v23, vbslq_s8(v39, vaddq_f32(v50, vrev64q_s32(v50)), vaddq_f32(v55, vrev64q_s32(v55))));
          v60 = *(a2 + 22);
          v61 = vsubq_f32(v56, v9);
          v62 = a2[10];
          if (v5)
          {
            v63 = vaddq_s32(vcvtq_s32_f32(v61), vcltzq_f32(v61));
            v64 = vsubq_f32(v61, vcvtq_f32_s32(v63)).u64[0];
            v65 = vsubq_f32(v57, v9);
            v66 = vaddq_s32(vcvtq_s32_f32(v65), vcltzq_f32(v65));
            v67 = vsubq_f32(v65, vcvtq_f32_s32(v66)).u64[0];
            v68 = vdup_n_s32(v60);
            *v63.i8 = vmla_s32(vzip1_s32(*v63.i8, *v66.i8), vzip2_s32(*v63.i8, *v66.i8), v68);
            v69 = &v62[v63.i32[0]];
            v70 = vaddq_f32(*v69, vmulq_n_f32(vsubq_f32(v69[1], *v69), v64.f32[0]));
            v71 = vaddq_f32(v70, vmulq_lane_f32(vsubq_f32(vaddq_f32(v69[v60], vmulq_n_f32(vsubq_f32(v69[v60 + 1], v69[v60]), v64.f32[0])), v70), v64, 1));
            v72 = &v62[v63.i32[1]];
            v73 = vaddq_f32(*v72, vmulq_n_f32(vsubq_f32(v72[1], *v72), v67.f32[0]));
            v74 = vaddq_f32(v73, vmulq_lane_f32(vsubq_f32(vaddq_f32(v72[v60], vmulq_n_f32(vsubq_f32(v72[v60 + 1], v72[v60]), v67.f32[0])), v73), v67, 1));
            v75 = vsubq_f32(v58, v9);
            v76 = vaddq_s32(vcvtq_s32_f32(v75), vcltzq_f32(v75));
            v75.i64[0] = vsubq_f32(v75, vcvtq_f32_s32(v76)).u64[0];
            v77 = vsubq_f32(v59, v9);
            v78 = vaddq_s32(vcvtq_s32_f32(v77), vcltzq_f32(v77));
            *v76.i8 = vmla_s32(vzip1_s32(*v76.i8, *v78.i8), vzip2_s32(*v76.i8, *v78.i8), v68);
            v79 = &v62[v76.i32[0]];
            v78.i64[0] = vsubq_f32(v77, vcvtq_f32_s32(v78)).u64[0];
            v80 = vaddq_f32(*v79, vmulq_n_f32(vsubq_f32(v79[1], *v79), v75.f32[0]));
            v81 = vaddq_f32(v80, vmulq_lane_f32(vsubq_f32(vaddq_f32(v79[v60], vmulq_n_f32(vsubq_f32(v79[v60 + 1], v79[v60]), v75.f32[0])), v80), *v75.f32, 1));
            v82 = &v62[v76.i32[1]];
            v83 = vaddq_f32(*v82, vmulq_n_f32(vsubq_f32(v82[1], *v82), *v78.i32));
            v84 = vaddq_f32(v83, vmulq_lane_f32(vsubq_f32(vaddq_f32(v82[v60], vmulq_n_f32(vsubq_f32(v82[v60 + 1], v82[v60]), *v78.i32)), v83), *v78.i8, 1));
          }

          else
          {
            v85 = vaddq_f32(v61, v14);
            v86 = vcvtq_s32_f32(v85);
            v87 = vaddq_f32(vsubq_f32(v57, v9), v14);
            v88 = vcvtq_s32_f32(v87);
            *v85.f32 = vadd_s32(*v86.i8, *&vcgtq_f32(vcvtq_f32_s32(v86), v85));
            *v87.f32 = vadd_s32(*v88.i8, *&vcgtq_f32(vcvtq_f32_s32(v88), v87));
            *v88.i8 = vdup_n_s32(v60);
            *v87.f32 = vmla_s32(vzip1_s32(*v85.f32, *v87.f32), vzip2_s32(*v85.f32, *v87.f32), *v88.i8);
            v89 = v87.i32[1];
            v71 = v62[v87.i32[0]];
            v74 = v62[v89];
            v90 = vaddq_f32(vsubq_f32(v58, v9), v14);
            v91 = vcvtq_s32_f32(v90);
            v92 = vaddq_f32(vsubq_f32(v59, v9), v14);
            v93 = vcvtq_s32_f32(v92);
            *v92.f32 = vadd_s32(*v93.i8, *&vcgtq_f32(vcvtq_f32_s32(v93), v92));
            *v90.f32 = vadd_s32(*v91.i8, *&vcgtq_f32(vcvtq_f32_s32(v91), v90));
            *v92.f32 = vmla_s32(vzip1_s32(*v90.f32, *v92.f32), vzip2_s32(*v90.f32, *v92.f32), *v88.i8);
            v94 = v92.i32[1];
            v81 = v62[v92.i32[0]];
            v84 = v62[v94];
          }

          v17[-2] = v71;
          v17[-1] = v74;
          *v17 = v81;
          v17[1] = v84;
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
          v95 = *(this + 51);
          v96 = *(v95 + 16);
          v97 = vsubq_f32(v19, *v95);
          v98 = vmulq_f32(v97, vdupq_lane_s64(v96.i64[0], 0));
          v99 = vmulq_f32(v97, vdupq_laneq_s64(v96, 1));
          v101 = *(v95 + 32);
          v100 = *(v95 + 48);
          v102 = vandq_s8(vbslq_s8(v100, vaddq_f32(vextq_s8(v98, v98, 8uLL), vaddq_f32(v98, vrev64q_s32(v98))), vaddq_f32(vextq_s8(v99, v99, 4uLL), vaddq_f32(v99, vrev64q_s32(v99)))), *(v95 + 64));
          v103 = vmulq_f32(v101, v102);
          v104 = vmulq_f32(vextq_s8(v101, v101, 8uLL), v102);
          v105 = vaddq_f32(*v95, vbslq_s8(v100, vaddq_f32(v103, vrev64q_s32(v103)), vaddq_f32(v104, vrev64q_s32(v104))));
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

uint64_t HgcMirror::GetDOD(HgcMirror *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcMirror::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcMirror::HgcMirror(HgcMirror *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E5DD0;
  operator new();
}

void HgcMirror::~HgcMirror(HGNode *this)
{
  *this = &unk_2871E5DD0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcMirror::~HgcMirror(this);

  HGObject::operator delete(v1);
}

uint64_t HgcMirror::SetParameter(HgcMirror *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcMirror::GetParameter(HgcMirror *this, unsigned int a2, float *a3)
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

const char *HgcPoke::GetProgram(HgcPoke *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000062f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-9.999999747e-06, 0.000000000, 0.000000000, 1.000000000);\n    float4 s0, s1, s2, s3, s4;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord0.xy;\n    s0.w = float(c0.w);\n    s1.x = dot(s0.xyw, hg_Params[1].xyz);\n    s1.y = dot(s0.xyw, hg_Params[2].xyz);\n    s2.x = dot(s0.xyw, hg_Params[3].xyz);\n    s3.x = fmin(float(c0.x), s2.x);\n    s4.x = fmax(-float(c0.x), s2.x);\n    s4.x = select(s4.x, s3.x, s2.x < 0.00000h);\n    s0.xy = s1.xy/s4.xx;\n    s0.xy = s0.xy - hg_Params[0].xy;\n    s2.x = dot(s0.xy, s0.xy);\n    s2.x = sqrt(s2.x);\n    s2.x = fmax(s2.x, -float(c0.x));\n    s2.x = s2.x*hg_Params[0].z;\n    s2.xy = rsqrt(s2.xx);\n    s0.xy = s0.xy*s2.xy + hg_Params[0].xy;\n    s3.x = dot(s0.xyw, hg_Params[4].xyz);\n    s3.y = dot(s0.xyw, hg_Params[5].xyz);\n    s0.x = dot(s0.xyw, hg_Params[6].xyz);\n    s1.x = fmin(float(c0.x), s0.x);\n    s4.x = fmax(-float(c0.x), s0.x);\n    s0.x = select(s4.x, s1.x, s0.x < 0.00000h);\n    s3.xy = s3.xy/s0.xx;\n    s3.xy = mix(frag._texCoord0.xy, s3.xy, hg_Params[0].ww);\n    s3.xy = s3.xy + hg_Params[7].xy;\n    s3.xy = s3.xy*hg_Params[7].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s3.xy);\n    return output;\n}\n//MD5=bd0830a9:aab142cf:99cf138c:15d22ec0\n//SIG=00400000:00000000:00000000:00000001:0001:0008:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005ff\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-9.999999747e-06, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord0.xy;\n    r0.w = c0.w;\n    r1.x = dot(r0.xyw, hg_Params[1].xyz);\n    r1.y = dot(r0.xyw, hg_Params[2].xyz);\n    r2.x = dot(r0.xyw, hg_Params[3].xyz);\n    r3.x = fmin(c0.x, r2.x);\n    r4.x = fmax(-c0.x, r2.x);\n    r4.x = select(r4.x, r3.x, r2.x < 0.00000f);\n    r0.xy = r1.xy/r4.xx;\n    r0.xy = r0.xy - hg_Params[0].xy;\n    r2.x = dot(r0.xy, r0.xy);\n    r2.x = sqrt(r2.x);\n    r2.x = fmax(r2.x, -c0.x);\n    r2.x = r2.x*hg_Params[0].z;\n    r2.xy = rsqrt(r2.xx);\n    r0.xy = r0.xy*r2.xy + hg_Params[0].xy;\n    r3.x = dot(r0.xyw, hg_Params[4].xyz);\n    r3.y = dot(r0.xyw, hg_Params[5].xyz);\n    r0.x = dot(r0.xyw, hg_Params[6].xyz);\n    r1.x = fmin(c0.x, r0.x);\n    r4.x = fmax(-c0.x, r0.x);\n    r0.x = select(r4.x, r1.x, r0.x < 0.00000f);\n    r3.xy = r3.xy/r0.xx;\n    r3.xy = mix(frag._texCoord0.xy, r3.xy, hg_Params[0].ww);\n    r3.xy = r3.xy + hg_Params[7].xy;\n    r3.xy = r3.xy*hg_Params[7].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r3.xy);\n    return output;\n}\n//MD5=1b5ba5c5:aa920837:f8db8825:5254c488\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006e8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nuniform highp vec4 hg_ProgramLocal7;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-9.999999747e-06, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1, r2, r3, r4;\n\n    r0.xy = hg_TexCoord0.xy;\n    r0.w = c0.w;\n    r1.x = dot(r0.xyw, hg_ProgramLocal1.xyz);\n    r1.y = dot(r0.xyw, hg_ProgramLocal2.xyz);\n    r2.x = dot(r0.xyw, hg_ProgramLocal3.xyz);\n    r3.x = min(c0.x, r2.x);\n    r4.x = max(-c0.x, r2.x);\n    r4.x = r2.x < 0.00000 ? r3.x : r4.x;\n    r0.xy = r1.xy/r4.xx;\n    r0.xy = r0.xy - hg_ProgramLocal0.xy;\n    r2.x = dot(r0.xy, r0.xy);\n    r2.x = sqrt(r2.x);\n    r2.x = max(r2.x, -c0.x);\n    r2.x = r2.x*hg_ProgramLocal0.z;\n    r2.xy = inversesqrt(r2.xx);\n    r0.xy = r0.xy*r2.xy + hg_ProgramLocal0.xy;\n    r3.x = dot(r0.xyw, hg_ProgramLocal4.xyz);\n    r3.y = dot(r0.xyw, hg_ProgramLocal5.xyz);\n    r0.x = dot(r0.xyw, hg_ProgramLocal6.xyz);\n    r1.x = min(c0.x, r0.x);\n    r4.x = max(-c0.x, r0.x);\n    r0.x = r0.x < 0.00000 ? r1.x : r4.x;\n    r3.xy = r3.xy/r0.xx;\n    r3.xy = mix(hg_TexCoord0.xy, r3.xy, hg_ProgramLocal0.ww);\n    r3.xy = r3.xy + hg_ProgramLocal7.xy;\n    r3.xy = r3.xy*hg_ProgramLocal7.zw;\n    gl_FragColor = texture2D(hg_Texture0, r3.xy);\n}\n//MD5=3224aef6:c3c89f59:ad138ce0:a8809eab\n//SIG=00000000:00000000:00000000:00000000:0001:0008:0005:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA97D30(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA97EB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA97F00()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA97EF8);
}

uint64_t HgcPoke::BindTexture(uint64_t a1, uint64_t a2, int a3)
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

uint64_t HgcPoke::Bind(HgcPoke *this, HGHandler *a2)
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

uint64_t HgcPoke::RenderTile(HgcPoke *this, HGTile *a2)
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
          v19 = v17;
          v19.i32[3] = 1.0;
          v20 = v18;
          v20.i32[3] = 1.0;
          v21 = vextq_s8(v19, v19, 8uLL).u64[0];
          v22.i64[0] = v17.i64[0];
          v22.i64[1] = v21;
          v23 = *(this + 51);
          v25 = *(v23 + 96);
          v24 = *(v23 + 112);
          *v26.f32 = vqtbl1_s8(v22, *v24.f32);
          v27 = vextq_s8(v24, v24, 8uLL).u64[0];
          *&v26.u32[2] = vqtbl1_s8(v22, v27);
          v22.i64[0] = v18.i64[0];
          v22.i64[1] = vextq_s8(v20, v20, 8uLL).u64[0];
          *v28.f32 = vqtbl1_s8(v22, *v24.f32);
          *&v28.u32[2] = vqtbl1_s8(v22, v27);
          v29 = *(v23 + 16);
          v30 = vmulq_f32(v29, v26);
          v31 = vmulq_f32(v29, v28);
          v32 = vaddq_f32(vdupq_laneq_s64(v30, 1), vaddq_f32(v30, vrev64q_s32(v30)));
          v33 = vaddq_f32(vdupq_laneq_s64(v31, 1), vaddq_f32(v31, vrev64q_s32(v31)));
          v34 = *(v23 + 32);
          v35 = *(v23 + 48);
          v36 = vmulq_f32(v34, v26);
          v37 = vmulq_f32(v34, v28);
          v38 = vaddq_f32(vextq_s8(v36, v9, 4uLL), vaddq_f32(v36, vrev64q_s32(v36)));
          v39 = vaddq_f32(vextq_s8(v37, v9, 4uLL), vaddq_f32(v37, vrev64q_s32(v37)));
          v40 = *(v23 + 128);
          v41 = *(v23 + 144);
          v42 = vbslq_s8(v40, v32, v38);
          v43 = vbslq_s8(v40, v33, v39);
          v44 = vmulq_f32(v35, v26);
          v45 = vmulq_f32(v35, v28);
          v46 = vaddq_f32(vextq_s8(v44, v44, 8uLL), vaddq_f32(v44, vrev64q_s32(v44)));
          v47 = vaddq_f32(vextq_s8(v45, v45, 8uLL), vaddq_f32(v45, vrev64q_s32(v45)));
          v49 = *(v23 + 160);
          v48 = *(v23 + 176);
          v50 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v48, v46), vminq_f32(v46, v41), vmaxq_f32(v46, v49)), 0);
          v51 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v48, v47), vminq_f32(v47, v41), vmaxq_f32(v47, v49)), 0);
          v53 = *(v23 + 192);
          v52 = *(v23 + 208);
          v54 = vminq_f32(vmaxq_f32(vrecpeq_f32(v50), v53), v52);
          v55 = vminq_f32(vmaxq_f32(vrecpeq_f32(v51), v53), v52);
          v56 = vminq_f32(vmaxq_f32(vmulq_f32(v54, vrecpsq_f32(v50, v54)), v53), v52);
          v57 = vminq_f32(vmaxq_f32(vmulq_f32(v55, vrecpsq_f32(v51, v55)), v53), v52);
          v50.i64[0] = vsubq_f32(vmulq_f32(vmulq_f32(v56, vrecpsq_f32(v50, v56)), v42), *v23).u64[0];
          v42.i64[0] = vsubq_f32(vmulq_f32(vmulq_f32(v57, vrecpsq_f32(v51, v57)), v43), *v23).u64[0];
          v43.i64[0] = v50.i64[0];
          v43.i64[1] = v19.i64[1];
          v19.i64[0] = v42.i64[0];
          v19.i64[1] = v20.i64[1];
          v58 = vmulq_f32(v43, v43);
          v59 = vmulq_f32(v19, v19);
          v60 = vaddq_f32(v58, vrev64q_s32(v58));
          v61 = vaddq_f32(v59, vrev64q_s32(v59));
          v62 = vminq_f32(vrsqrteq_f32(v60), v52);
          v63 = vminq_f32(vrsqrteq_f32(v61), v52);
          v64 = vminq_f32(vmulq_f32(v62, vrsqrtsq_f32(vmulq_f32(v62, v60), v62)), v52);
          v65 = vminq_f32(vmulq_f32(v63, vrsqrtsq_f32(vmulq_f32(v63, v61), v63)), v52);
          v60.i64[0] = vmulq_laneq_f32(vmaxq_f32(vmulq_f32(v60, vminq_f32(vmulq_f32(v64, vrsqrtsq_f32(vmulq_f32(v60, v64), v64)), v52)), v49), *v23, 2).u64[0];
          v61.i64[0] = vmulq_laneq_f32(vmaxq_f32(vmulq_f32(v61, vminq_f32(vmulq_f32(v65, vrsqrtsq_f32(vmulq_f32(v61, v65), v65)), v52)), v49), *v23, 2).u64[0];
          v66 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v60.f32, 0)), v52);
          v67 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v61.f32, 0)), v52);
          v68 = vminq_f32(vmulq_f32(v66, vrsqrtsq_f32(vmulq_n_f32(v66, v60.f32[0]), v66)), v52);
          v69 = vminq_f32(vmulq_f32(v67, vrsqrtsq_f32(vmulq_n_f32(v67, v61.f32[0]), v67)), v52);
          *v60.f32 = vadd_f32(*v23, vmul_f32(*v50.f32, vmul_f32(*v68.f32, *&vrsqrtsq_f32(vmulq_n_f32(v68, v60.f32[0]), v68))));
          v60.i64[1] = v21;
          *v70.f32 = vqtbl1_s8(v60, *v24.f32);
          *&v70.u32[2] = vqtbl1_s8(v60, v27);
          *v61.f32 = vadd_f32(*v23, vmul_f32(*v42.f32, vmul_f32(*v69.f32, *&vrsqrtsq_f32(vmulq_n_f32(v69, v61.f32[0]), v69))));
          v61.i64[1] = v22.i64[1];
          *v24.f32 = vqtbl1_s8(v61, *v24.f32);
          *&v24.u32[2] = vqtbl1_s8(v61, v27);
          v71 = *(v23 + 64);
          v72 = *(v23 + 80);
          v73 = vmulq_f32(v71, v70);
          v74 = vmulq_f32(v71, v24);
          v75 = vmulq_f32(v72, v70);
          v76 = vmulq_f32(v72, v24);
          v77 = vmulq_f32(v25, v70);
          v78 = vmulq_f32(v25, v24);
          v79 = vaddq_f32(vextq_s8(v77, v77, 8uLL), vaddq_f32(v77, vrev64q_s32(v77)));
          v80 = vaddq_f32(vextq_s8(v78, v78, 8uLL), vaddq_f32(v78, vrev64q_s32(v78)));
          v81 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v48, v79), vminq_f32(v79, v41), vmaxq_f32(v79, v49)), 0);
          v82 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v48, v80), vminq_f32(v80, v41), vmaxq_f32(v80, v49)), 0);
          v83 = vbslq_s8(v40, vaddq_f32(vextq_s8(v74, v74, 8uLL), vaddq_f32(v74, vrev64q_s32(v74))), vaddq_f32(vextq_s8(v76, v76, 4uLL), vaddq_f32(v76, vrev64q_s32(v76))));
          v84 = vminq_f32(vmaxq_f32(vrecpeq_f32(v81), v53), v52);
          v85 = vminq_f32(vmaxq_f32(vrecpeq_f32(v82), v53), v52);
          v86 = vminq_f32(vmaxq_f32(vmulq_f32(v84, vrecpsq_f32(v81, v84)), v53), v52);
          v87 = vminq_f32(vmaxq_f32(vmulq_f32(v85, vrecpsq_f32(v82, v85)), v53), v52);
          v88 = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vmulq_f32(vmulq_f32(v86, vrecpsq_f32(v81, v86)), vbslq_s8(v40, vaddq_f32(vextq_s8(v73, v73, 8uLL), vaddq_f32(v73, vrev64q_s32(v73))), vaddq_f32(vextq_s8(v75, v75, 4uLL), vaddq_f32(v75, vrev64q_s32(v75))))), v17), *v23, 3));
          v89 = vaddq_f32(v18, vmulq_laneq_f32(vsubq_f32(vmulq_f32(vmulq_f32(v87, vrecpsq_f32(v82, v87)), v83), v18), *v23, 3));
          v90 = *(a2 + 22);
          v91 = vsubq_f32(v88, v9);
          v92 = *(a2 + 10);
          if (v5)
          {
            v93 = vaddq_s32(vcvtq_s32_f32(v91), vcltzq_f32(v91));
            v94 = vsubq_f32(v91, vcvtq_f32_s32(v93)).u64[0];
            v95 = vsubq_f32(v89, v9);
            v96 = vaddq_s32(vcvtq_s32_f32(v95), vcltzq_f32(v95));
            v97 = vsubq_f32(v95, vcvtq_f32_s32(v96)).u64[0];
            *v93.i8 = vmla_s32(vzip1_s32(*v93.i8, *v96.i8), vzip2_s32(*v93.i8, *v96.i8), vdup_n_s32(v90));
            v98 = (v92 + 16 * v93.i32[0]);
            v99 = vaddq_f32(*v98, vmulq_n_f32(vsubq_f32(v98[1], *v98), v94.f32[0]));
            v100 = vaddq_f32(v99, vmulq_lane_f32(vsubq_f32(vaddq_f32(v98[v90], vmulq_n_f32(vsubq_f32(v98[v90 + 1], v98[v90]), v94.f32[0])), v99), v94, 1));
            v101 = (v92 + 16 * v93.i32[1]);
            v102 = vaddq_f32(*v101, vmulq_n_f32(vsubq_f32(v101[1], *v101), v97.f32[0]));
            v103 = vaddq_f32(v102, vmulq_lane_f32(vsubq_f32(vaddq_f32(v101[v90], vmulq_n_f32(vsubq_f32(v101[v90 + 1], v101[v90]), v97.f32[0])), v102), v97, 1));
          }

          else
          {
            v104 = vaddq_f32(v91, v13);
            v105 = vcvtq_s32_f32(v104);
            v106 = vaddq_f32(vsubq_f32(v89, v9), v13);
            v107 = vcvtq_s32_f32(v106);
            *v104.f32 = vadd_s32(*v105.i8, *&vcgtq_f32(vcvtq_f32_s32(v105), v104));
            *v106.f32 = vadd_s32(*v107.i8, *&vcgtq_f32(vcvtq_f32_s32(v107), v106));
            *v106.f32 = vmla_s32(vzip1_s32(*v104.f32, *v106.f32), vzip2_s32(*v104.f32, *v106.f32), vdup_n_s32(v90));
            v108 = v106.i32[1];
            v100 = *(v92 + 16 * v106.i32[0]);
            v103 = *(v92 + 16 * v108);
          }

          v109 = (v11 + 16 * v15);
          *v109 = v100;
          v109[1] = v103;
          v17 = vaddq_f32(v18, xmmword_2603429B0);
          v15 += 2;
          v16 -= 2;
        }

        while (v16 > 1);
        v15 = v15;
      }

      if (v15 < v10)
      {
        v110 = v17;
        v110.i32[3] = 1.0;
        v111 = *(this + 51);
        v112.i64[0] = v17.i64[0];
        v112.i64[1] = vextq_s8(v110, v110, 8uLL).u64[0];
        v113 = *(v111 + 112);
        *v114.f32 = vqtbl1_s8(v112, *v113.i8);
        v115 = vextq_s8(v113, v113, 8uLL).u64[0];
        *&v114.u32[2] = vqtbl1_s8(v112, v115);
        v116 = vmulq_f32(*(v111 + 16), v114);
        v117 = vaddq_f32(vdupq_laneq_s64(v116, 1), vaddq_f32(v116, vrev64q_s32(v116)));
        v118 = vmulq_f32(*(v111 + 32), v114);
        v119 = vaddq_f32(vextq_s8(v118, v9, 4uLL), vaddq_f32(v118, vrev64q_s32(v118)));
        v120 = *(v111 + 144);
        v121 = vbslq_s8(*(v111 + 128), v117, v119);
        v122 = vmulq_f32(*(v111 + 48), v114);
        v123 = vaddq_f32(vextq_s8(v122, v122, 8uLL), vaddq_f32(v122, vrev64q_s32(v122)));
        v124 = *(v111 + 160);
        v125 = *(v111 + 176);
        v126 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v125, v123), vminq_f32(v123, v120), vmaxq_f32(v123, v124)), 0);
        v127 = *(v111 + 192);
        v128 = *(v111 + 208);
        v129 = vminq_f32(vmaxq_f32(vrecpeq_f32(v126), v127), v128);
        v130 = vminq_f32(vmaxq_f32(vmulq_f32(v129, vrecpsq_f32(v126, v129)), v127), v128);
        v121.i64[0] = vsubq_f32(vmulq_f32(vmulq_f32(v130, vrecpsq_f32(v126, v130)), v121), *v111).u64[0];
        v126.i64[0] = v121.i64[0];
        v126.i64[1] = v110.i64[1];
        v131 = vmulq_f32(v126, v126);
        v132 = vaddq_f32(v131, vrev64q_s32(v131));
        v133 = vminq_f32(vrsqrteq_f32(v132), v128);
        v134 = vminq_f32(vmulq_f32(v133, vrsqrtsq_f32(vmulq_f32(v133, v132), v133)), v128);
        v132.i64[0] = vmulq_laneq_f32(vmaxq_f32(vmulq_f32(vminq_f32(vmulq_f32(v134, vrsqrtsq_f32(vmulq_f32(v134, v132), v134)), v128), v132), v124), *v111, 2).u64[0];
        v135 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v132.f32, 0)), v128);
        v136 = vminq_f32(vmulq_f32(v135, vrsqrtsq_f32(vmulq_n_f32(v135, v132.f32[0]), v135)), v128);
        *v132.f32 = vadd_f32(*v111, vmul_f32(*v121.f32, vmul_f32(*v136.f32, *&vrsqrtsq_f32(vmulq_n_f32(v136, v132.f32[0]), v136))));
        v132.i64[1] = v112.i64[1];
        *v137.f32 = vqtbl1_s8(v132, *v113.i8);
        *&v137.u32[2] = vqtbl1_s8(v132, v115);
        v138 = vmulq_f32(*(v111 + 64), v137);
        v139 = vmulq_f32(*(v111 + 80), v137);
        v140 = vbslq_s8(*(v111 + 128), vaddq_f32(vextq_s8(v138, v138, 8uLL), vaddq_f32(v138, vrev64q_s32(v138))), vaddq_f32(vextq_s8(v139, v139, 4uLL), vaddq_f32(v139, vrev64q_s32(v139))));
        v141 = vmulq_f32(*(v111 + 96), v137);
        v142 = vaddq_f32(vextq_s8(v141, v141, 8uLL), vaddq_f32(v141, vrev64q_s32(v141)));
        v143 = vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v125, v142), vminq_f32(v142, v120), vmaxq_f32(v142, v124)), 0);
        v144 = vminq_f32(vmaxq_f32(vrecpeq_f32(v143), v127), v128);
        v145 = vminq_f32(vmaxq_f32(vmulq_f32(v144, vrecpsq_f32(v143, v144)), v127), v128);
        v146 = vaddq_f32(v17, vmulq_laneq_f32(vsubq_f32(vmulq_f32(vmulq_f32(v145, vrecpsq_f32(v143, v145)), v140), v17), *v111, 3));
        v147 = *(a2 + 22);
        v148 = vsubq_f32(v146, v9);
        v149 = *(a2 + 10);
        if (v5)
        {
          v150 = vaddq_s32(vcvtq_s32_f32(v148), vcltzq_f32(v148));
          v151 = vsubq_f32(v148, vcvtq_f32_s32(v150)).u64[0];
          v152 = (v149 + 16 * (v150.i32[0] + v150.i32[1] * v147));
          v153 = vaddq_f32(*v152, vmulq_n_f32(vsubq_f32(v152[1], *v152), v151.f32[0]));
          v154 = vaddq_f32(v153, vmulq_lane_f32(vsubq_f32(vaddq_f32(v152[v147], vmulq_n_f32(vsubq_f32(v152[v147 + 1], v152[v147]), v151.f32[0])), v153), v151, 1));
        }

        else
        {
          v155 = vaddq_f32(v148, v13);
          v156 = vcvtq_s32_f32(v155);
          v155.i64[0] = vaddq_s32(v156, vcgtq_f32(vcvtq_f32_s32(v156), v155)).u64[0];
          v154 = *(v149 + 16 * (v155.i32[0] + v155.i32[1] * v147));
        }

        *(v11 + 16 * v15) = v154;
      }

      v14 = vaddq_f32(v14, xmmword_2603429C0);
      v11 += v12;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcPoke::GetDOD(HgcPoke *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcPoke::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcPoke::HgcPoke(HgcPoke *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E6038;
  operator new();
}

void HgcPoke::~HgcPoke(HGNode *this)
{
  *this = &unk_2871E6038;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40B2834900);
  }

  HGNode::~HGNode(this);
}

{
  HgcPoke::~HgcPoke(this);

  HGObject::operator delete(v1);
}

uint64_t HgcPoke::SetParameter(HgcPoke *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
        if (v14[1].n128_f32[0] != a3.n128_f32[0] || v14[1].n128_f32[1] != a4 || v14[1].n128_f32[2] != a6 || v14[1].n128_f32[3] != 0.0)
        {
          v14[1].n128_u32[0] = a3.n128_u32[0];
          v14[1].n128_f32[1] = a4;
          v14[1].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v14[1].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v14[14] = a3;
          goto LABEL_44;
        }

        return 0;
      case 2:
        v9 = *(this + 51);
        if (v9[2].n128_f32[0] != a3.n128_f32[0] || v9[2].n128_f32[1] != a4 || v9[2].n128_f32[2] != a6 || v9[2].n128_f32[3] != 0.0)
        {
          v9[2].n128_u32[0] = a3.n128_u32[0];
          v9[2].n128_f32[1] = a4;
          v9[2].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v9[2].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v9[15] = a3;
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
        if (v12[3].n128_f32[0] != a3.n128_f32[0] || v12[3].n128_f32[1] != a4 || v12[3].n128_f32[2] != a6 || v12[3].n128_f32[3] != 0.0)
        {
          v12[3].n128_u32[0] = a3.n128_u32[0];
          v12[3].n128_f32[1] = a4;
          v12[3].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v12[3].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v12[16] = a3;
          goto LABEL_44;
        }
      }

      else
      {
        v8 = *(this + 51);
        if (v8[4].n128_f32[0] != a3.n128_f32[0] || v8[4].n128_f32[1] != a4 || v8[4].n128_f32[2] != a6 || v8[4].n128_f32[3] != 0.0)
        {
          v8[4].n128_u32[0] = a3.n128_u32[0];
          v8[4].n128_f32[1] = a4;
          v8[4].n128_f32[2] = a6;
          a3.n128_f32[1] = a4;
          v8[4].n128_u32[3] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v8[17] = a3;
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
      if (v13[5].n128_f32[0] != a3.n128_f32[0] || v13[5].n128_f32[1] != a4 || v13[5].n128_f32[2] != a6 || v13[5].n128_f32[3] != 0.0)
      {
        v13[5].n128_u32[0] = a3.n128_u32[0];
        v13[5].n128_f32[1] = a4;
        v13[5].n128_f32[2] = a6;
        a3.n128_f32[1] = a4;
        v13[5].n128_u32[3] = 0;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v13[18] = a3;
        goto LABEL_44;
      }

      return 0;
    }

    if (a2 == 6)
    {
      v10 = *(this + 51);
      if (v10[6].n128_f32[0] != a3.n128_f32[0] || v10[6].n128_f32[1] != a4 || v10[6].n128_f32[2] != a6 || v10[6].n128_f32[3] != 0.0)
      {
        v10[6].n128_u32[0] = a3.n128_u32[0];
        v10[6].n128_f32[1] = a4;
        v10[6].n128_f32[2] = a6;
        a3.n128_f32[1] = a4;
        v10[6].n128_u32[3] = 0;
        a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
        v10[19] = a3;
        goto LABEL_44;
      }

      return 0;
    }
  }

  return v7;
}

float HgcPoke::GetParameter(HgcPoke *this, int a2, float *a3)
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
        *a3 = v5[60];
        a3[1] = v5[61];
        a3[2] = v5[62];
        v4 = v5 + 63;
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
      *a3 = v8[72];
      a3[1] = v8[73];
      a3[2] = v8[74];
      v4 = v8 + 75;
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
      *a3 = v3[64];
      a3[1] = v3[65];
      a3[2] = v3[66];
      v4 = v3 + 67;
    }

    else
    {
      *a3 = v3[68];
      a3[1] = v3[69];
      a3[2] = v3[70];
      v4 = v3 + 71;
    }
  }

  result = *v4;
  a3[3] = *v4;
  return result;
}

const char *HgcShapeCheckerboard::GetProgram(HgcShapeCheckerboard *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_225;
    }

    else
    {
      return aMetal10Len0000_226;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_74;
  }
}

void sub_25FA99270(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA99370(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA993B0()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA993A8);
}

uint64_t HgcShapeCheckerboard::Bind(HgcShapeCheckerboard *this, HGHandler *a2)
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

uint64_t HgcShapeCheckerboard::RenderTile(uint64_t a1, uint64_t a2)
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
    v381 = v7;
    v8 = 16 * *(a2 + 24);
    v9 = 0uLL;
    do
    {
      if (v5 >= 1)
      {
        v10 = 0;
        v11 = v381;
        do
        {
          v395 = v11;
          v12 = *(a1 + 408);
          v13 = vmulq_f32(v11, *(v12 + 13));
          v14 = vaddq_f32(v13, vextq_s8(v13, v13, 4uLL));
          v15 = *(v12 + 15);
          v16 = *(v12 + 14);
          v17 = *(v12 + 16);
          v18 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(*v12), v16), v15), v17);
          v19 = vmulq_f32(v11, *(v12 + 12));
          v20 = vaddq_f32(v19, vextq_s8(v19, v19, 4uLL));
          v21 = vaddq_f32(v20, vextq_s8(v20, v20, 8uLL));
          v22 = vbslq_s8(*(v12 + 17), vmulq_f32(v18, vrecpsq_f32(*v12, v18)), vaddq_f32(v14, vextq_s8(v14, v14, 8uLL)));
          v382 = *(v12 + 17);
          v24 = *(v12 + 18);
          v23 = *(v12 + 19);
          v25 = vbslq_s8(v24, v21, vextq_s8(v22, v22, 8uLL));
          v26 = vextq_s8(v25, v25, 8uLL);
          v27 = vmulq_n_f32(v26, *v22.i32);
          v28 = vcvtq_f32_s32(vcvtq_s32_f32(v27));
          v390 = vextq_s8(*v12, *v12, 4uLL);
          v29 = vbslq_s8(v24, v21, vmulq_f32(v390, v23));
          v30 = vsubq_f32(v26, vmulq_n_f32(vsubq_f32(v28, vandq_s8(v23, vcgtq_f32(v28, v27))), COERCE_FLOAT(*v12)));
          v27.i64[0] = vsubq_f32(v30, vdupq_laneq_s32(v29, 3)).u64[0];
          v31 = *(v12 + 21);
          v392 = *(v12 + 20);
          v32 = vandq_s8(vdupq_lane_s64(v27.i64[0], 0), v392);
          v28.i64[0] = v27.i64[0];
          v14.i64[0] = v27.i64[0];
          v28.i64[1] = v32.i64[1];
          v14.i64[1] = vdupq_laneq_s64(v32, 1).u64[0];
          v33 = vrev64q_s32(v14);
          v34.i64[0] = v30.i64[0];
          v34.i64[1] = vdupq_laneq_s64(vmaxq_f32(v28, v33), 1).u64[0];
          v35 = vrev64q_s32(v34);
          v36 = vminq_f32(vmaxq_f32(vrecpeq_f32(v35), v15), v17);
          v37 = vminq_f32(vmaxq_f32(vmulq_f32(v36, vrecpsq_f32(v35, v36)), v15), v17);
          v30.i64[1] = vmulq_f32(v37, vrecpsq_f32(v35, v37)).i64[1];
          v38 = vbslq_s8(v24, vminq_f32(v28, v33), v30);
          v39 = vmulq_laneq_f32(v38, v38, 3);
          v35.i64[0] = v38.i64[0];
          v35.i64[1] = v39.i64[1];
          v38.i64[1] = vdupq_laneq_s64(v39, 1).u64[0];
          v40 = *(v12 + 22);
          v41 = vbslq_s8(v31, vmulq_laneq_f32(vrev64q_s32(v38), v39, 2), v35);
          v42 = *(v12 + 23);
          v43 = *(v12 + 24);
          v44 = *(v12 + 25);
          v45 = *(v12 + 26);
          v394 = *(v12 + 27);
          v46 = vbslq_s8(v31, vaddq_f32(v45, vmulq_n_f32(v41, vaddq_f32(v45, vmulq_laneq_f32(vaddq_f32(v44, vmulq_laneq_f32(vaddq_f32(v43, vmulq_laneq_f32(vaddq_f32(v40, vmulq_laneq_f32(v42, v41, 3)), v41, 3)), v41, 3)), v41, 3)).f32[0])), v35);
          v47 = vmulq_laneq_f32(v46, v46, 3);
          v48.i64[0] = v46.i64[0];
          v46.i64[1] = vdupq_laneq_s64(v47, 1).u64[0];
          v48.i64[1] = v47.i64[1];
          v385 = v44;
          v49 = vsubq_f32(v33, v32);
          v47.i64[0] = v27.i64[0];
          v50 = vbslq_s8(v31, vsubq_f32(v44, vrev64q_s32(v46)), v48);
          v47.i64[1] = v49.i64[1];
          v51 = vbslq_s8(vcgtq_f32(v45, v47), vrev64q_s32(v50), v50);
          v46.i64[0] = v27.i64[0];
          v46.i64[1] = v51.i64[1];
          v27.i64[1] = vdupq_laneq_s64(v51, 1).u64[0];
          v52 = vbslq_s8(v31, vsubq_f32(v43, vrev64q_s32(v27)), v46);
          v53 = vbslq_s8(vcgtq_f32(v42, vextq_s8(v52, v52, 8uLL)), v52, vrev64q_s32(v52));
          v54 = vextq_s8(v53, v52, 8uLL);
          v47.i64[0] = v52.i64[0];
          v55 = *(v12 + 6);
          v47.i64[1] = vdupq_laneq_s64(v53, 1).u64[0];
          v56 = vminq_f32(vmaxq_f32(vmulq_f32(v44, vrecpeq_f32(v55)), v43), v17);
          v57 = vmulq_f32(v56, vrecpsq_f32(v55, v56));
          v22.i64[1] = v57.i64[1];
          v58 = vrev64q_s32(v47);
          v52.i64[1] = vmulq_f32(v42, v57).i64[1];
          v59 = *(v12 + 28);
          v60 = *(v12 + 29);
          v61 = vbslq_s8(v59, vmulq_f32(v52, v52), v52);
          v52.i64[0] = vaddq_f32(vmulq_f32(v61, v61), vrev64q_s32(v61)).u64[0];
          v62 = veorq_s8(vandq_s8(v58, v394), v54);
          v54.i64[0] = vextq_s8(v61, v61, 8uLL).u64[0];
          *v58.i8 = vext_s8(*v54.f32, *v52.f32, 4uLL);
          *v54.f32 = vext_s8(*v52.f32, *v54.f32, 4uLL);
          v52.i64[1] = v61.i64[1];
          v54.i64[1] = v58.i64[0];
          v63 = vminq_f32(vrsqrteq_f32(v54), v40);
          v64 = vminq_f32(vmulq_f32(v63, vrsqrtsq_f32(vmulq_f32(v63, v54), v63)), v40);
          v65 = vbslq_s8(v24, v52, vaddq_f32(*(v12 + 8), vextq_s8(v62, v62, 8uLL)));
          v66 = vminq_f32(vmaxq_f32(vrecpeq_f32(v65), v43), v17);
          v67 = vminq_f32(vmaxq_f32(vmulq_f32(v66, vrecpsq_f32(v65, v66)), v43), v17);
          v66.i64[0] = v50.i64[0];
          v66.i64[1] = vmulq_laneq_f32(vmulq_f32(v67, vrecpsq_f32(v65, v67)), v65, 3).i64[1];
          v68 = vmulq_f32(vminq_f32(vmulq_f32(v64, vrsqrtsq_f32(vmulq_f32(v64, v54), v64)), v40), v54);
          v69 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
          v388 = v40;
          v387 = vbslq_s8(v31, v68, v22);
          v70 = vextq_s8(v65, v65, 0xCuLL);
          v71 = vbslq_s8(v24, v52, vmulq_f32(v23, vrev64q_s32(v65)));
          v72 = vextq_s8(vsubq_f32(v69, vbslq_s8(vcgtq_f32(v69, v66), v40, v9)), v50, 8uLL);
          v73 = vmulq_f32(v23, vrev64q_s32(v71));
          v74 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
          v75 = vmulq_laneq_f32(v72, v65, 2);
          v384 = v15;
          v76 = vsubq_f32(vabdq_f32(vsubq_f32(v73, vsubq_f32(v74, vandq_s8(v40, vcgtq_f32(v74, v73)))), v15), v16);
          v77 = vsubq_f32(v70, v75);
          v78 = vmulq_f32(v76, v76);
          v80 = *(v12 + 30);
          v79 = *(v12 + 31);
          v81 = vaddq_f32(v79, vmulq_f32(v80, v71));
          v82 = vmulq_f32(v76, vaddq_f32(v42, vmulq_f32(v78, vaddq_f32(v79, vmulq_f32(v78, vaddq_f32(v60, vmulq_f32(v80, v78)))))));
          v83 = vcvtq_f32_s32(vcvtq_s32_f32(v81));
          v50.i64[1] = v82.i64[1];
          v84 = vaddq_f32(v79, vabdq_f32(vsubq_f32(v81, vsubq_f32(v83, vandq_s8(v60, vcgtq_f32(v83, v81)))), v23));
          v85 = vmulq_f32(v84, v84);
          v86 = vbslq_s8(v382, v77, v62);
          v88 = *(v12 + 32);
          v87 = *(v12 + 33);
          v393 = v16;
          v90 = *(v12 + 34);
          v89 = *(v12 + 35);
          v91 = vbslq_s8(v24, v52, vmulq_f32(v84, vaddq_f32(v90, vmulq_f32(v85, vaddq_f32(v87, vmulq_f32(v85, vaddq_f32(v16, vmulq_f32(v88, v85))))))));
          v92 = vbslq_s8(v31, vmulq_f32(v29, v91), v50);
          v93 = vmulq_f32(v90, v86);
          v94 = vcvtq_f32_s32(vcvtq_s32_f32(v93));
          v95 = vsubq_f32(vabdq_f32(vsubq_f32(v93, vsubq_f32(v94, vandq_s8(v87, vcgtq_f32(v94, v93)))), v88), v79);
          v96 = vmulq_f32(v95, v95);
          v383 = v60;
          v98 = *(v12 + 36);
          v97 = *(v12 + 37);
          v99 = vaddq_f32(v98, vmulq_f32(v89, vrev64q_s32(v86)));
          v100 = vcvtq_f32_s32(vcvtq_s32_f32(v99));
          v95.i64[0] = vmulq_f32(v95, vaddq_f32(v98, vmulq_f32(v96, vaddq_f32(v89, vmulq_f32(v96, vaddq_f32(v80, vmulq_f32(v60, v96))))))).u64[0];
          v101 = vaddq_f32(v98, vabdq_f32(vsubq_f32(v99, vsubq_f32(v100, vandq_s8(v90, vcgtq_f32(v100, v99)))), v87));
          v102 = vmulq_f32(v101, v101);
          v95.i64[1] = v91.i64[1];
          v103 = vbslq_s8(v59, vmulq_f32(v101, vaddq_f32(v60, vmulq_f32(v102, vaddq_f32(v80, vmulq_f32(v102, vaddq_f32(v88, vmulq_f32(v79, v102))))))), v95);
          v104 = vbslq_s8(v24, vmulq_laneq_f32(v92, v29, 3), v92);
          v105 = vmulq_laneq_f32(v103, v387, 3);
          v92.i64[0] = vsubq_f32(v105, vdupq_laneq_s64(v104, 1)).u64[0];
          v102.i64[0] = v105.i64[0];
          v105.i64[1] = vdupq_laneq_s64(v103, 1).u64[0];
          v106 = vmulq_f32(v98, vrev64q_s32(v105));
          v107 = vcvtq_f32_s32(vcvtq_s32_f32(v106));
          v108 = vsubq_f32(vabdq_f32(vsubq_f32(v106, vsubq_f32(v107, vandq_s8(v89, vcgtq_f32(v107, v106)))), v23), v97);
          v109 = vmulq_f32(v108, v108);
          v102.i64[1] = v103.i64[1];
          v110 = vbslq_s8(v31, vmulq_f32(v108, vaddq_f32(v90, vmulq_f32(v109, vaddq_f32(v87, vmulq_f32(v109, vaddq_f32(v16, vmulq_f32(v88, v109))))))), v102);
          v111 = vaddq_f32(v97, vmulq_f32(v98, v110));
          v112 = vcvtq_f32_s32(vcvtq_s32_f32(v111));
          v113 = vaddq_f32(v97, vabdq_f32(vsubq_f32(v111, vsubq_f32(v112, vandq_s8(v89, vcgtq_f32(v112, v111)))), v90));
          v114 = vmulq_f32(v113, v113);
          v391 = *(v12 + 11);
          v115 = vbslq_s8(v24, vmulq_laneq_f32(*(v12 + 10), v29, 3), v110);
          v92.i64[1] = vmulq_laneq_f32(vrev64q_s32(vmulq_f32(v113, vaddq_f32(v42, vmulq_f32(v114, vaddq_f32(v79, vmulq_f32(v114, vaddq_f32(v87, vmulq_f32(v88, v114)))))))), v115, 2).i64[1];
          v116 = vbslq_s8(v24, vmulq_laneq_f32(v115, v115, 3), v92);
          v117 = vsubq_f32(v116, v104);
          v118 = vzip2q_s64(v117, v29);
          v119 = vmulq_f32(v118, v116);
          v120 = vaddq_f32(vdupq_lane_s64(v119.i64[0], 0), vextq_s8(v391, v119, 0xCuLL));
          v121 = vbslq_s8(v31, vmulq_laneq_f32(vzip2q_s64(v29, v117), v117, 3), v115);
          v109.i64[0] = vextq_s8(v117, v117, 8uLL).u64[0];
          v122 = vextq_s8(v121, v121, 0xCuLL);
          *v122.i8 = vadd_f32(vmul_f32(*v109.f32, *v109.f32), *v122.i8);
          *v38.f32 = vext_s8(*v122.i8, *&vextq_s8(v120, v120, 8uLL), 4uLL);
          v38.i64[1] = vextq_s8(v120, v122, 0xCuLL).u64[0];
          v123 = *(v12 + 38);
          v124 = *(v12 + 39);
          v125 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v38), v123), v15), v17);
          v126 = vbslq_s8(v24, v120, vmulq_f32(v125, vrecpsq_f32(v38, v125)));
          v127 = v121;
          v127.i32[3] = 0;
          v128 = vsubq_f32(v104, v127);
          v129 = vextq_s8(v127, v127, 8uLL);
          v130 = vsubq_f32(v129, v127);
          v131 = vextq_s8(v128, v128, 8uLL);
          v38.i64[0] = vextq_s8(v130, v131, 0xCuLL).u64[0];
          v38.i64[1] = vextq_s8(v128, vextq_s8(v130, v130, 8uLL), 0xCuLL).u64[0];
          v86.i64[1] = vminq_f32(vmaxq_f32(vmulq_laneq_f32(vzip2q_s64(*&v128, *&v126), v126, 2), v42), v89).i64[1];
          v132 = vzip2q_s64(v130, v128);
          v133 = vaddq_f32(vmulq_laneq_f32(v132, v128, 2), vbslq_s8(v24, vmulq_laneq_f32(v38, v128, 3), v86));
          v134 = vmulq_f32(vzip2q_s64(v128, v130), v132);
          v135 = vaddq_f32(vdupq_lane_s64(v134.i64[0], 0), vextq_s8(v133, v134, 0xCuLL));
          v136 = vbslq_s8(v24, v133, v86);
          v137 = vminq_f32(vmaxq_f32(vrecpeq_f32(v136), v123), v17);
          v138 = vminq_f32(vmaxq_f32(vmulq_f32(v137, vrecpsq_f32(v136, v137)), v123), v17);
          v139 = vbslq_s8(v24, vminq_f32(vmaxq_f32(vmulq_f32(vmulq_f32(v138, vrecpsq_f32(v136, v138)), vzip2q_s64(v128, v135)), v45), v89), v86);
          v140 = vdupq_laneq_s32(v139, 3);
          *v140.i8 = vadd_f32(vmul_f32(*&vextq_s8(v140, v140, 8uLL), *v109.f32), *&vextq_s8(v104, v104, 8uLL));
          v141 = vdupq_laneq_s32(v139, 2);
          *v42.f32 = vsub_f32(vadd_f32(*v129.f32, vmul_f32(*&vextq_s8(v141, v141, 8uLL), *v131.i8)), *v121.f32);
          *v129.f32 = vsub_f32(*v140.i8, *&vextq_s8(v129, v129, 8uLL));
          v138.i64[0] = v42.i64[0];
          v138.i64[1] = v129.i64[0];
          *v86.f32 = vqtbl1_s8(v138, *v394.i8);
          v389 = vextq_s8(v394, v394, 8uLL).u64[0];
          *&v86.u32[2] = vqtbl1_s8(v138, v389);
          *v140.i8 = vext_s8(*v140.i8, *v131.i8, 4uLL);
          v140.i64[1] = v140.i64[0];
          v142 = vzip2q_s64(v128, v140);
          v143 = vnegq_f32(v142);
          v144 = vbslq_s8(v24, vextq_s8(v143, v143, 0xCuLL), v142);
          v145 = vextq_s8(v144, v144, 0xCuLL);
          v145.i64[0] = v104.i64[0];
          v146 = vnegq_f32(v144);
          v147 = vbslq_s8(v31, vextq_s8(v146, v146, 4uLL), v145);
          v148 = vbslq_s8(vceqq_f32(vdupq_lane_s32(*v144.f32, 0), v124), v147, v144);
          v149 = vextq_s8(v148, v148, 8uLL);
          *v146.f32 = vmul_f32(*v149.i8, *v149.i8);
          *v121.f32 = vrev64_s32(*v146.f32);
          *&v146.u32[2] = vmul_f32(*v42.f32, *v42.f32);
          v150 = vmulq_f32(v138, v138);
          v151 = vextq_s8(v149, v150, 0xCuLL);
          v121.i64[1] = vextq_s8(v151, v151, 8uLL).u64[0];
          v152 = vaddq_f32(vmulq_f32(v86, v86), vuzp2q_s32(v150, v150));
          v153 = vaddq_f32(v146, v121);
          v155 = *(v12 + 40);
          v154 = *(v12 + 41);
          v86.i64[0] = vextq_s8(v155, v155, 8uLL).u64[0];
          *v155.f32 = vqtbl1_s8(v153, *v155.f32);
          *&v155.u32[2] = vqtbl1_s8(v153, *v86.f32);
          v156 = vminq_f32(vrsqrteq_f32(v155), v124);
          v157 = vminq_f32(vmulq_f32(v156, vrsqrtsq_f32(vmulq_f32(v156, v155), v156)), v124);
          *v157.f32 = vmul_f32(*v157.f32, *&vrsqrtsq_f32(vmulq_f32(v157, v155), v157));
          *v149.i8 = vmul_f32(vmul_lane_f32(*v42.f32, *v157.f32, 1), vmul_n_f32(*v149.i8, v157.f32[0]));
          *v149.i8 = vadd_f32(*v149.i8, vrev64_s32(*v149.i8));
          *v157.f32 = vext_s8(*v139.i8, *&vextq_s8(v152, v152, 8uLL), 4uLL);
          v157.i64[1] = vextq_s8(v152, v139, 0xCuLL).u64[0];
          v149.i64[1] = v129.i64[0];
          v158 = vminq_f32(vrsqrteq_f32(v157), v124);
          v159 = vminq_f32(vmulq_f32(v158, vrsqrtsq_f32(vmulq_f32(v158, v157), v158)), v124);
          v160 = vbslq_s8(v59, vmulq_f32(vminq_f32(vmulq_f32(v159, vrsqrtsq_f32(vmulq_f32(v159, v157), v159)), v124), v157), v149);
          v161 = vmulq_f32(v160, v160);
          v159.i64[0] = vmulq_lane_f32(v160, *v160.f32, 1).u64[0];
          v159.i64[1] = vaddq_f32(v161, vextq_s8(*&v161, *&v161, 4uLL)).i64[1];
          v162 = vextq_s8(v152, v139, 8uLL);
          v163 = vminq_f32(vrsqrteq_f32(v162), v124);
          v164 = vminq_f32(vmulq_f32(v163, vrsqrtsq_f32(vmulq_f32(v163, v162), v163)), v124);
          v165 = vbslq_s8(v59, vmulq_f32(vminq_f32(vmulq_f32(v164, vrsqrtsq_f32(vmulq_f32(v164, v162), v164)), v124), v162), v159);
          v166 = vminq_f32(vrsqrteq_f32(v165), v17);
          v15.i64[0] = vextq_s8(v29, v29, 8uLL).u64[0];
          v147.u64[1] = vext_s8(*v15.f32, *v109.f32, 4uLL);
          v167 = vnegq_f32(v118);
          v168 = vbslq_s8(v24, vextq_s8(v167, v167, 0xCuLL), v147);
          v169 = vminq_f32(vmulq_f32(v166, vrsqrtsq_f32(vmulq_f32(v166, v165), v166)), v17);
          v170 = vdupq_laneq_s32(vmulq_f32(v169, vrsqrtsq_f32(vmulq_f32(v169, v165), v169)), 2);
          *v160.f32 = vmul_f32(*&vextq_s8(v170, v170, 8uLL), *&vextq_s8(v160, v160, 8uLL));
          *v170.f32 = vrev64_s32(*v109.f32);
          v170.i64[1] = v160.i64[0];
          v171 = vbslq_s8(v59, vrev64q_s32(v167), v170);
          v170.i64[0] = vbslq_s8(vceqq_f32(vdupq_laneq_s32(v117, 2), v123), v171, vdupq_laneq_s64(v168, 1)).u64[0];
          v170.i64[1] = v171.i64[1];
          v167.i64[0] = vmulq_f32(v170, v170).u64[0];
          v172 = vaddq_f32(vdupq_lane_s32(*v167.i8, 0), vdupq_lane_s32(*v167.i8, 1));
          v173 = vminq_f32(vmulq_f32(v97, vrsqrteq_f32(v172)), v124);
          v174 = vmulq_f32(vmulq_f32(v173, vrsqrtsq_f32(vmulq_f32(v173, v172), v173)), v170);
          v172.i64[0] = v174.i64[0];
          v172.i64[1] = v171.i64[1];
          v175 = vmulq_f32(v172, vextq_s8(v171, v174, 8uLL));
          v174.i32[0] = vaddq_f32(v175, vdupq_lane_s32(*v175.f32, 1)).u32[0];
          v176 = *(v12 + 5);
          v177 = vminq_f32(vmaxq_f32(vmulq_f32(v385, vrecpeq_f32(v176)), v123), v17);
          v178 = vmulq_f32(v177, vrecpsq_f32(v176, v177));
          v179 = vaddq_f32(*(v12 + 7), vextq_s8(v178, v139, 8uLL));
          v139.i64[1] = v178.i64[1];
          v180 = *(v12 + 23);
          v168.i64[1] = vmulq_f32(v180, v178).i64[1];
          v181 = vbslq_s8(v31, v179, v168);
          v182 = vminq_f32(vmaxq_f32(vrecpeq_f32(v181), v123), v17);
          v183 = vminq_f32(vmaxq_f32(vmulq_f32(v182, vrecpsq_f32(v181, v182)), v123), v17);
          v184 = vmulq_laneq_f32(vmulq_f32(v183, vrecpsq_f32(v181, v183)), v181, 3);
          v179.i64[0] = v165.i64[0];
          v179.i64[1] = v184.i64[1];
          v185 = vcvtq_f32_s32(vcvtq_s32_f32(v179));
          v186 = vsubq_f32(v185, vbslq_s8(vcgtq_f32(v185, v179), v89, 0));
          v174.i64[0] = vmulq_n_f32(v165, *v174.i32).u64[0];
          v185.i64[0] = v174.i64[0];
          v174.i64[1] = vdupq_laneq_s64(v186, 1).u64[0];
          v185.i64[1] = v186.i64[1];
          v165.i64[1] = vdupq_laneq_s64(v184, 1).u64[0];
          v187 = vbslq_s8(v59, vminq_f32(vrev64q_s32(v165), v185), vbslq_s8(v31, vsubq_f32(v181, vmulq_laneq_f32(vrev64q_s32(v174), v181, 2)), v139));
          v188 = vmulq_f32(v154, v187);
          v189 = v187;
          v190 = vmulq_f32(v154, vrev64q_s32(v188));
          v191 = vcvtq_f32_s32(vcvtq_s32_f32(v190));
          v192 = vsubq_f32(v190, vsubq_f32(v191, vandq_s8(v89, vcgtq_f32(v191, v190))));
          v193 = vmulq_f32(v154, vrev64q_s32(v181));
          v194 = vcvtq_f32_s32(vcvtq_s32_f32(v193));
          v195 = vsubq_f32(vabdq_f32(vsubq_f32(v193, vsubq_f32(v194, vandq_s8(v89, vcgtq_f32(v194, v193)))), v23), v97);
          v196 = vmulq_f32(v195, v195);
          v197 = vmulq_f32(v195, vaddq_f32(v90, vmulq_f32(v196, vaddq_f32(v87, vmulq_f32(v196, vaddq_f32(v393, vmulq_f32(v88, v196)))))));
          v198 = vaddq_f32(v97, vmulq_f32(v98, vbslq_s8(v24, v188, v197)));
          v199 = vcvtq_f32_s32(vcvtq_s32_f32(v198));
          v200 = vsubq_f32(vabdq_f32(v192, v23), v97);
          v201 = vmulq_f32(v200, v200);
          v202 = vaddq_f32(v97, vabdq_f32(vsubq_f32(v198, vsubq_f32(v199, vandq_s8(v89, vcgtq_f32(v199, v198)))), v90));
          v203 = vmulq_f32(v202, v202);
          v386 = v189;
          v204 = vmulq_f32(v154, vextq_s8(v189, v189, 0xCuLL));
          v205 = vcvtq_f32_s32(vcvtq_s32_f32(v204));
          v206 = vmulq_f32(v200, vaddq_f32(v90, vmulq_f32(v201, vaddq_f32(v87, vmulq_f32(v201, vaddq_f32(v393, vmulq_f32(v88, v201)))))));
          v207 = vsubq_f32(vabdq_f32(vsubq_f32(v204, vsubq_f32(v205, vandq_s8(v87, vcgtq_f32(v205, v204)))), v88), v79);
          v208 = vmulq_f32(v207, v207);
          v207.i64[0] = vmulq_f32(v207, vaddq_f32(v98, vmulq_f32(v208, vaddq_f32(v89, vmulq_f32(v208, vaddq_f32(v80, vmulq_f32(v383, v208))))))).u64[0];
          v209 = vextq_s8(v189, v189, 8uLL);
          v210 = vaddq_f32(v154, vmulq_f32(v89, v209));
          v211 = vcvtq_f32_s32(vcvtq_s32_f32(v210));
          v212 = vaddq_f32(v154, vabdq_f32(vsubq_f32(v210, vsubq_f32(v211, vandq_s8(v90, vcgtq_f32(v211, v210)))), v87));
          v213 = vmulq_f32(v202, vaddq_f32(v180, vmulq_f32(v203, vaddq_f32(v79, vmulq_f32(v203, vaddq_f32(v87, vmulq_f32(v88, v203)))))));
          v214 = vmulq_f32(v212, v212);
          v215 = vbslq_s8(v24, v213, v197);
          v216 = vbslq_s8(v24, v188, v206);
          v217 = vbslq_s8(v382, vmulq_laneq_f32(vextq_s8(v216, v216, 0xCuLL), v29, 3), vmulq_laneq_f32(vextq_s8(v215, v215, 4uLL), v29, 3));
          v207.i64[1] = v215.i64[1];
          v218 = vbslq_s8(v59, vmulq_f32(v212, vaddq_f32(v383, vmulq_f32(v214, vaddq_f32(v80, vmulq_f32(v214, vaddq_f32(v88, vmulq_f32(v79, v214))))))), v207);
          v219 = vaddq_f32(v97, vmulq_f32(v98, v181));
          v220 = vcvtq_f32_s32(vcvtq_s32_f32(v219));
          v221 = vaddq_f32(v97, vabdq_f32(vsubq_f32(v219, vsubq_f32(v220, vandq_s8(v89, vcgtq_f32(v220, v219)))), v90));
          v222 = vmulq_f32(v221, v221);
          v223 = vbslq_s8(v24, vmulq_laneq_f32(*(v12 + 9), v29, 3), v218);
          v181.i64[1] = vmulq_laneq_f32(vrev64q_s32(vmulq_f32(v221, vaddq_f32(v180, vmulq_f32(v222, vaddq_f32(v79, vmulq_f32(v222, vaddq_f32(v87, vmulq_f32(v88, v222)))))))), v223, 2).i64[1];
          v224 = vbslq_s8(v24, vmulq_laneq_f32(v223, v223, 3), v181);
          v225 = vsubq_f32(v224, vdupq_lane_s64(v217.i64[0], 0));
          v181.i64[0] = v217.i64[0];
          v181.i64[1] = v225.i64[1];
          v226 = vbslq_s8(v31, vmulq_f32(v181, v181), v223);
          v207.i64[0] = vmulq_laneq_f32(v226, v387, 3).u64[0];
          v207.i64[1] = v226.i64[1];
          v222.i64[0] = v224.i64[0];
          *&v222.u32[2] = vsub_f32(*v207.f32, *v217.i8);
          v227 = vmulq_f32(v181, v222);
          v210.i64[0] = v217.i64[0];
          v210.i64[1] = vdupq_laneq_s64(v225, 1).u64[0];
          v228 = vbslq_s8(v31, vaddq_f32(vmulq_laneq_f32(vrev64q_s32(v210), v225, 2), v207), v207);
          v229 = vextq_s8(v228, v228, 0xCuLL);
          v230 = vminq_f32(vmaxq_f32(vrecpeq_f32(v229), v384), v17);
          v231 = vminq_f32(vmaxq_f32(vmulq_f32(v230, vrecpsq_f32(v229, v230)), v384), v17);
          v232 = vmulq_laneq_f32(vmulq_f32(v231, vrecpsq_f32(v229, v231)), vaddq_f32(v227, vdupq_laneq_s32(v227, 3)), 2);
          v233 = vextq_s8(v225, v217, 8uLL);
          v234 = v228;
          v234.i32[3] = 0;
          v235 = vsubq_f32(vaddq_f32(v181, vmulq_n_f32(v233, vminq_f32(vmaxq_f32(v232, v123), v87).f32[0])), v234);
          v211.i64[0] = v235.i64[0];
          v211.i64[1] = v225.i64[1];
          v236 = vnegq_f32(v211);
          v237 = vbslq_s8(*(v12 + 43), vextq_s8(v236, v236, 4uLL), vextq_s8(v211, v211, 0xCuLL));
          v238 = vbslq_s8(vceqq_f32(vdupq_laneq_s32(v225, 2), v123), v237, vdupq_laneq_s64(v237, 1));
          v239 = vsubq_f32(v233, v234);
          *v237.i8 = vext_s8(*v224.f32, *&vextq_s8(v239, v239, 8uLL), 4uLL);
          v88.i64[0] = vextq_s8(v239, v224, 0xCuLL).u64[0];
          v88.i64[1] = v237.i64[0];
          v240 = vextq_s8(v239, v224, 8uLL);
          v241 = vaddq_f32(vmulq_laneq_f32(v88, v239, 3), vmulq_laneq_f32(v240, v239, 2));
          v189.i64[0] = vsubq_f32(v228, vdupq_laneq_s64(v234, 1)).u64[0];
          v189.i64[1] = v225.i64[1];
          v242 = vmulq_f32(v240, v189);
          v242.i64[0] = vaddq_f32(v242, vrev64q_s32(v242)).u64[0];
          v243 = vminq_f32(vmaxq_f32(vrecpeq_f32(v241), v384), v17);
          v244 = vminq_f32(vmaxq_f32(vmulq_f32(v243, vrecpsq_f32(v241, v243)), v384), v17);
          v242.i64[1] = v225.i64[1];
          v245 = vsubq_f32(vdupq_laneq_s64(vaddq_f32(v234, vmulq_n_f32(v239, vminq_f32(vmaxq_f32(vmulq_f32(vmulq_f32(v244, vrecpsq_f32(v241, v244)), v242), v123), v87).f32[0])), 1), v228);
          v225.i64[0] = vextq_s8(v225, v235, 0xCuLL).u64[0];
          v225.i64[1] = v225.i64[0];
          *v234.f32 = vext_s8(*v15.f32, vdup_lane_s32(vmul_f32(*v235.i8, *v235.i8), 1), 4uLL);
          v234.i64[1] = v234.i64[0];
          v246 = vaddq_f32(v234, vmulq_n_f32(v225, *v235.i32));
          v123.i64[0] = vextq_s8(v246, v245, 0xCuLL).u64[0];
          *&v123.u32[2] = vext_s8(*v245.i8, *&vextq_s8(v246, v246, 8uLL), 4uLL);
          v245.i64[1] = v246.i64[1];
          v247 = vbslq_s8(v24, vmulq_lane_f32(v123, *v245.i8, 1), v245);
          v237.i64[1] = v15.i64[0];
          v246.i64[0] = v224.i64[0];
          v246.i64[1] = v239.i64[1];
          v248 = vnegq_f32(v246);
          v249 = vbslq_s8(v382, vextq_s8(v248, v248, 0xCuLL), v237);
          v250 = vrev64q_s32(v239);
          v250.i64[0] = v247.i64[0];
          v251 = vbslq_s8(v31, vrev64q_s32(v248), v250);
          v251.i64[1] = vbslq_s8(vceqq_f32(vdupq_laneq_s32(*&v239, 2), v124), *&v251, vdupq_lane_s64(*&v249, 0)).i64[1];
          v252 = vmulq_f32(v251, v251);
          *v248.f32 = vadd_f32(*v252.f32, vrev64_s32(*v252.f32));
          v123.i64[0] = vextq_s8(v249, v249, 8uLL).u64[0];
          *v241.f32 = vext_s8(*v123.f32, *v248.f32, 4uLL);
          *v248.f32 = vext_s8(*v248.f32, *v123.f32, 4uLL);
          v248.i64[1] = v241.i64[0];
          v224.i64[1] = vaddq_f32(v252, vextq_s8(*&v252, *&v252, 4uLL)).i64[1];
          v253 = vminq_f32(vrsqrteq_f32(v248), v388);
          v254 = vminq_f32(vmulq_f32(v253, vrsqrtsq_f32(vmulq_f32(v253, v248), v253)), v388);
          v255 = vbslq_s8(v31, vmulq_f32(v254, vrsqrtsq_f32(vmulq_f32(v254, v248), v254)), v224);
          v256 = vextq_s8(v247, v247, 8uLL);
          v257 = vminq_f32(vrsqrteq_f32(v256), v124);
          v258 = vminq_f32(vmulq_f32(v257, vrsqrtsq_f32(vmulq_f32(v257, v256), v257)), v124);
          v259 = vminq_f32(vmulq_f32(v385, vrsqrteq_f32(v255)), v17);
          v260 = vbslq_s8(v24, vmulq_f32(v259, vrsqrtsq_f32(vmulq_f32(v259, v255), v259)), v255);
          v261 = vmulq_f32(v211, v211);
          v259.i64[0] = v260.i64[0];
          v259.i64[1] = vaddq_f32(v261, vextq_s8(v261, v249, 4uLL)).u64[0];
          v262 = vrev64q_s32(v259);
          v263 = vminq_f32(vrsqrteq_f32(v262), v388);
          v264 = vminq_f32(vmulq_f32(v263, vrsqrtsq_f32(vmulq_f32(v263, v262), v263)), v388);
          v265 = vmulq_f32(v264, vrsqrtsq_f32(vmulq_f32(v264, v262), v264));
          v264.i64[0] = v238.i64[0];
          v264.i64[1] = v265.i64[1];
          v266 = vbslq_s8(v382, vaddq_f32(vmulq_f32(v247, v247), v256), vmulq_f32(v258, vrsqrtsq_f32(vmulq_f32(v258, v256), v258)));
          v264.i64[0] = vmulq_f32(v264, v264).u64[0];
          v267 = vaddq_f32(vdupq_lane_s32(*v264.f32, 0), vdupq_lane_s32(*v264.f32, 1));
          v268 = vmulq_f32(v97, vrsqrteq_f32(v267));
          v9 = 0uLL;
          v269 = vminq_f32(v268, v124);
          v270 = vmulq_f32(vmulq_f32(v269, vrsqrtsq_f32(vmulq_f32(v269, v267), v269)), v238);
          v271 = *(v12 + 42);
          v272 = vrev64q_s32(v266);
          v273 = vmulq_laneq_f32(vdupq_lane_s64(v235.i64[0], 0), v265, 3);
          v274 = vextq_s8(v273, v270, 8uLL);
          v270.i64[1] = v273.i64[1];
          v275 = vmulq_f32(v270, v274);
          v276 = vaddq_f32(v275, vrev64q_s32(v275));
          *v274.f32 = vext_s8(*v276.i8, *&vextq_s8(v188, v188, 8uLL), 4uLL);
          v270.i64[0] = vextq_s8(v188, v276, 0xCuLL).u64[0];
          v276.i64[1] = v188.i64[1];
          v274.i64[1] = v270.i64[0];
          v277 = vminq_f32(vmaxq_f32(vrecpeq_f32(v272), v384), v17);
          v278 = vbslq_s8(v59, vsubq_f32(v209, v274), v276);
          v279 = vminq_f32(vmaxq_f32(vmulq_f32(v277, vrecpsq_f32(v272, v277)), v384), v17);
          v280 = vmulq_f32(vmulq_f32(v279, vrecpsq_f32(v272, v279)), v278);
          v281 = vbslq_s8(v382, v280, v278);
          v283 = *(v12 + 44);
          v282 = *(v12 + 45);
          v284 = vmulq_f32(v283, v281);
          v285 = vcvtq_f32_s32(vcvtq_s32_f32(v284));
          v286 = vsubq_f32(vabdq_f32(vsubq_f32(v284, vsubq_f32(v285, vandq_s8(v388, vcgtq_f32(v285, v284)))), v384), v393);
          v287 = *(v12 + 46);
          v288 = *(v12 + 47);
          v289 = vmulq_f32(v286, v286);
          *v211.f32 = vqtbl1_s8(v260, *v271.i8);
          v200.i64[0] = vextq_s8(v271, v271, 8uLL).u64[0];
          v290 = vrev64q_s32(vsubq_f32(v249, v387));
          v241.i64[1] = v290.i64[1];
          v241.i64[0] = v260.i64[0];
          v291 = vbslq_s8(v31, vsubq_f32(v390, vextq_s8(v290, v260, 8uLL)), vbslq_s8(v382, v280, vmulq_f32(v286, vaddq_f32(*(v12 + 23), vmulq_f32(v289, vaddq_f32(v288, vmulq_f32(v289, vaddq_f32(v282, vmulq_f32(v287, v289)))))))));
          v292 = vbslq_s8(v59, vmulq_laneq_f32(v291, v387, 3), v291);
          *v188.i8 = vqtbl1_s8(v260, *v200.f32);
          v293 = vbslq_s8(v59, vsubq_f32(vmulq_laneq_f32(vextq_s8(v292, v292, 4uLL), v249, 3), v292), v291);
          v294 = vsubq_f32(*v12, v241);
          v260.i64[1] = vdupq_laneq_s64(v290, 1).u64[0];
          v295 = vbslq_s8(v24, vminq_f32(vextq_s8(v290, vminq_f32(v241, vrev64q_s32(v260)), 8uLL), vbslq_s8(v24, vextq_s8(v294, v294, 8uLL), v293)), v293);
          v296 = vextq_s8(v249, v387, 0xCuLL);
          *v289.f32 = vmul_n_f32(*&vextq_s8(v296, v296, 8uLL), v387.f32[0]);
          *v296.i8 = vext_s8(*v289.f32, *v295.i8, 4uLL);
          *v289.f32 = vext_s8(*v295.i8, *v289.f32, 4uLL);
          v290.i64[0] = vminq_f32(vextq_s8(v295, v295, 8uLL), vextq_s8(v295, v295, 0xCuLL)).u64[0];
          v289.i64[1] = v296.i64[0];
          v297 = vcvtq_f32_s32(vcvtq_s32_f32(v289));
          v244.i64[0] = v295.i64[0];
          v244.i64[1] = vmulq_laneq_f32(vextq_s8(v387, v387, 0xCuLL), v249, 2).u64[0];
          v298 = vsubq_f32(v297, vandq_s8(v90, vcgtq_f32(v297, v289)));
          v299 = vrev64q_s32(v244);
          v300 = vcvtq_f32_s32(vcvtq_s32_f32(v299));
          v301 = vbslq_s8(v59, v298, v290);
          v302 = vsubq_f32(v300, vbslq_s8(vcgtq_f32(v300, v299), v89, 0));
          v290.i64[0] = v295.i64[0];
          v290.i64[1] = v302.i64[1];
          v295.i64[1] = vdupq_laneq_s64(v302, 1).u64[0];
          v303 = vbslq_s8(v31, vmulq_f32(v288, vextq_s8(v301, v301, 8uLL)), v301);
          v304 = vbslq_s8(v31, vmulq_f32(v288, vrev64q_s32(v295)), v290);
          v305 = vcvtq_f32_s32(vcvtq_s32_f32(v303));
          v306 = vsubq_f32(v305, vandq_s8(v287, vcgtq_f32(v305, v303)));
          v307 = vcvtq_f32_s32(vcvtq_s32_f32(v304));
          v308 = vbslq_s8(v31, v306, v301);
          v309 = vbslq_s8(v31, vsubq_f32(v307, vandq_s8(v287, vcgtq_f32(v307, v304))), v290);
          v311 = *(v12 + 48);
          v310 = *(v12 + 49);
          v312 = vbslq_s8(v59, vsubq_f32(v308, vmulq_laneq_f32(v311, v308, 3)), v308);
          v309.i64[1] = vsubq_f32(v309, vmulq_laneq_f32(v311, v309, 3)).i64[1];
          v313 = vbslq_s8(v31, vabsq_f32(vextq_s8(v312, v312, 8uLL)), v309);
          v307.i64[0] = v313.i64[0];
          v307.i64[1] = vandq_s8(v313, v310).i64[1];
          v314 = vandq_s8(v89, vcgeq_f32(vnegq_f32(v307), v124));
          v315 = *(v12 + 3);
          v313.i64[1] = vsubq_f32(v314, vrev64q_s32(*&v314)).i64[1];
          v316 = vbslq_s8(v31, vabsq_f32(vextq_s8(v315, v315, 4uLL)), v313);
          v307.i64[0] = v316.i64[0];
          v307.i64[1] = vandq_s8(v316, v310).i64[1];
          v317 = vnegq_f32(v307);
          *v307.f32 = vqtbl1_s8(v317, *v271.i8);
          *v317.i8 = vqtbl1_s8(v317, *v200.f32);
          v318 = *(v12 + 50);
          v319 = *(v12 + 51);
          v307.i64[1] = v317.i64[0];
          v320 = *(v12 + 52);
          v321 = vbslq_s8(v320, v312, vandq_s8(v319, vcgeq_f32(v307, v318)));
          v322 = vbslq_s8(v59, vsubq_f32(vextq_s8(v321, v321, 8uLL), vmulq_laneq_f32(v321, v321, 3)), v321);
          v323 = vrev64q_s32(v321);
          v324 = vbslq_s8(vcgtq_f32(vminq_f32(vextq_s8(v321, v321, 4uLL), vextq_s8(v323, v323, 8uLL)), v319), vdupq_lane_s64(v322.i64[0], 0), v319);
          v323.i64[0] = vandq_s8(v319, vceqq_f32(v315, v319)).u64[0];
          v89.i64[0] = v323.i64[0];
          v89.i64[1] = vdupq_laneq_s64(v324, 1).u64[0];
          v323.i64[1] = v324.i64[1];
          v325 = vbslq_s8(v59, vminq_f32(v322, vrev64q_s32(v89)), v323);
          v326 = vrev64q_s32(v322);
          v325.i64[1] = vbslq_s8(vcgtq_f32(vextq_s8(*&v325, *&v325, 8uLL), v318), *&v326, vrev64q_s32(v325)).i64[1];
          v327 = vandq_s8(vbslq_s8(v59, vsubq_f32(vrev64q_s32(v315), v311), v325), *(v12 + 53));
          v323.i64[0] = vandq_s8(v319, vcgeq_f32(vnegq_f32(v327), v318)).u64[0];
          v323.i64[1] = v327.i64[1];
          v328 = vbslq_s8(v382, vminq_f32(v326, v323), v323);
          v329 = vbslq_s8(v24, vminq_f32(vextq_s8(v328, v328, 8uLL), vextq_s8(v328, v328, 0xCuLL)), v328);
          v330 = *(v12 + 4);
          v331 = vandq_s8(v392, vsubq_f32(vdupq_lane_s32(*v330.f32, 0), v311));
          *v307.f32 = vext_s8(*v316.i8, *&vextq_s8(v331, v331, 8uLL), 4uLL);
          v307.i64[1] = v307.i64[0];
          v332 = vbslq_s8(vcgtq_f32(v329, v319), v307, vrev64q_s32(v329));
          v211.i64[1] = v188.i64[0];
          v333 = vmulq_f32(v211, v251);
          v334 = vminq_f32(vrsqrteq_f32(v272), v124);
          v335 = vmulq_f32(v333, vextq_s8(v333, v333, 8uLL));
          v336 = vminq_f32(vmulq_f32(v334, vrsqrtsq_f32(vmulq_f32(v334, v272), v334)), v124);
          v337 = vbslq_s8(v382, vaddq_f32(v335, vrev64q_s32(v335)), vmulq_f32(vminq_f32(vmulq_f32(v336, vrsqrtsq_f32(vmulq_f32(v336, v272), v336)), v124), v272));
          v316.i64[1] = v331.i64[1];
          v329.i64[0] = vsubq_f32(vmulq_lane_f32(v329, *v329.f32, 1), v329).u64[0];
          v338 = vdupq_laneq_s64(v332, 1);
          v329.i64[1] = v338.i64[0];
          v339 = vbslq_s8(v59, vminq_f32(vrev64q_s32(v329), vbslq_s8(v59, vrev64q_s32(vandq_s8(v319, vceqq_f32(v315, v311))), v316)), v316);
          v337.i64[0] = vmulq_lane_f32(v337, *v337.f32, 1).u64[0];
          v337.i64[1] = v249.i64[1];
          v340 = vbslq_s8(v382, vminq_f32(v337, v339), v339);
          v339.i64[0] = vbslq_s8(vcgtq_f32(v318, vrev64q_s32(v340)), v340, v338).u64[0];
          v341 = vmulq_f32(vdupq_laneq_s64(v387, 1), v288);
          v339.i64[1] = v340.i64[1];
          v342 = vbslq_s8(v59, vandq_s8(v319, vcgeq_f32(vrev64q_s32(vorrq_s8(v330, v394)), v318)), v339);
          v343 = vbslq_s8(v31, vsubq_f32(v319, v322), v322);
          v344 = vbslq_s8(v320, v342, vandq_s8(v319, vcgeq_f32(vnegq_f32(v342), v318)));
          v345 = vminq_f32(vrev64q_s32(v343), vextq_s8(v342, v342, 0xCuLL));
          v346 = vextq_s8(v345, v341, 8uLL);
          v341.i64[1] = v345.i64[1];
          v347 = vbslq_s8(v59, vminq_f32(vextq_s8(v343, v343, 8uLL), v344), v344);
          v348 = vbslq_s8(v31, vminq_f32(vextq_s8(v347, v347, 8uLL), v347), v322);
          v349 = vbslq_s8(v382, v341, vrev64q_s32(vsubq_f32(v386, v341)));
          v350 = vbslq_s8(vcgtq_f32(v346, v318), v348, v347);
          *v346.f32 = vqtbl1_s8(v349, *v394.i8);
          *&v346.u32[2] = vqtbl1_s8(v349, v389);
          v351 = vmulq_f32(v283, v346);
          v352 = vbslq_s8(vcgtq_f32(vextq_s8(v348, v348, 0xCuLL), v318), vextq_s8(v348, v348, 8uLL), vbslq_s8(v382, v350, v347));
          v353 = vcvtq_f32_s32(vcvtq_s32_f32(v351));
          v354 = *(v12 + 54);
          v355 = *(v12 + 55);
          v356 = vabdq_f32(vsubq_f32(v351, vsubq_f32(v353, vandq_s8(v354, vcgtq_f32(v353, v351)))), v355);
          v357 = *(v12 + 56);
          v358 = *(v12 + 57);
          v359 = vsubq_f32(v356, v357);
          v360 = vbslq_s8(v382, v352, v347);
          v361 = vmulq_f32(v359, v359);
          v362 = vmulq_f32(v361, vaddq_f32(v282, vmulq_f32(v287, v361)));
          v363 = *(v12 + 58);
          v364 = vaddq_f32(v363, vmulq_f32(v361, vaddq_f32(v358, v362)));
          v365 = vandq_s8(v354, vcgeq_f32(vnegq_f32(v360), v318));
          v366 = vmulq_f32(v359, v364);
          v367 = vextq_s8(v365, v360, 8uLL);
          v360.i64[1] = v365.i64[1];
          v368 = vbslq_s8(v59, vminq_f32(v360, v367), v360);
          v369 = vbslq_s8(v31, vminq_f32(vextq_s8(v368, v368, 8uLL), vrev64q_s32(v368)), v368);
          v370 = vmulq_laneq_f32(v366, v387, 3);
          v371 = vextq_s8(v366, v370, 8uLL);
          v370.i64[1] = v366.i64[1];
          v372 = vbslq_s8(v382, vbslq_s8(vcgtq_f32(vextq_s8(v369, v369, 0xCuLL), v318), vsubq_f32(vmulq_laneq_f32(v371, v249, 3), v370), v369), v369);
          v373 = vandq_s8(v354, vceqq_f32(v330, v311));
          v374 = vbslq_s8(v31, vextq_s8(v373, v373, 4uLL), v372);
          v375 = vbslq_s8(v59, vsubq_f32(vmulq_laneq_f32(v374, v374, 2), v374), v374);
          v376 = vbslq_s8(v382, v375, vminq_f32(v375, vextq_s8(v375, v375, 8uLL)));
          v377 = vminq_f32(vmaxq_f32(vmulq_n_f32(v391, *vbslq_s8(vcgtq_f32(v318, vrev64q_s32(v376)), vdupq_lane_s32(*v386.f32, 1), v376).i32), v363), v358);
          v378 = vmulq_lane_f32(vrev64q_s32(v377), *v377.i8, 1);
          v379 = vbslq_s8(v382, v378, vsubq_f32(v357, vmulq_f32(v355, vbslq_s8(v382, v378, v377))));
          *(v6 + v10) = vaddq_f32(*(v12 + 2), vmulq_n_f32(vsubq_f32(*(v12 + 1), *(v12 + 2)), vmulq_lane_f32(v379, *v379.f32, 1).f32[0]));
          v11 = vaddq_f32(v395, xmmword_2603429B0);
          v10 += 16;
        }

        while (16 * v5 != v10);
      }

      v381 = vaddq_f32(v381, xmmword_2603429C0);
      ++v4;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcShapeCheckerboard::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

void HgcShapeCheckerboard::HgcShapeCheckerboard(HgcShapeCheckerboard *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E62A0;
  operator new();
}

void HgcShapeCheckerboard::~HgcShapeCheckerboard(HGNode *this)
{
  *this = &unk_2871E62A0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40F46B6991);
  }

  HGNode::~HGNode(this);
}

{
  HgcShapeCheckerboard::~HgcShapeCheckerboard(this);

  HGObject::operator delete(v1);
}

uint64_t HgcShapeCheckerboard::SetParameter(HgcShapeCheckerboard *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
      if (v16[5].n128_f32[0] == 0.0 && v16[5].n128_f32[1] == 0.0 && v16[5].n128_f32[2] == a3.n128_f32[0] && v16[5].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v16[5].n128_u64[0] = 0;
      v16[5].n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v16[5].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v16[59] = a3;
      goto LABEL_72;
    case 6:
      v18 = *(this + 51);
      if (v18[6].n128_f32[0] == 0.0 && v18[6].n128_f32[1] == 0.0 && v18[6].n128_f32[2] == a3.n128_f32[0] && v18[6].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v18[6].n128_u64[0] = 0;
      v18[6].n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v18[6].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v18[60] = a3;
      goto LABEL_72;
    case 7:
      v14 = *(this + 51);
      if (v14[7].n128_f32[0] == 0.0 && v14[7].n128_f32[1] == 0.0 && v14[7].n128_f32[2] == 0.0 && v14[7].n128_f32[3] == a3.n128_f32[0])
      {
        return 0;
      }

      v14[7].n128_u64[0] = 0;
      v14[7].n128_u32[3] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v14[7].n128_u32[2] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v14[61] = a3;
      goto LABEL_72;
    case 8:
      v20 = *(this + 51);
      if (v20[8].n128_f32[0] == 0.0 && v20[8].n128_f32[1] == 0.0 && v20[8].n128_f32[2] == 0.0 && v20[8].n128_f32[3] == a3.n128_f32[0])
      {
        return 0;
      }

      v20[8].n128_u64[0] = 0;
      v20[8].n128_u32[3] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v20[8].n128_u32[2] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v20[62] = a3;
      goto LABEL_72;
    case 9:
      v11 = *(this + 51);
      if (v11[9].n128_f32[0] == 0.0 && v11[9].n128_f32[1] == 0.0 && v11[9].n128_f32[2] == a3.n128_f32[0] && v11[9].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v11[9].n128_u64[0] = 0;
      v11[9].n128_u32[2] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v11[9].n128_u32[3] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v11[63] = a3;
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
      v19[64] = a3;
      goto LABEL_72;
    case 11:
      v8 = *(this + 51);
      if (v8[11].n128_f32[0] == 0.0 && v8[11].n128_f32[1] == a3.n128_f32[0] && v8[11].n128_f32[2] == 0.0 && v8[11].n128_f32[3] == 0.0)
      {
        return 0;
      }

      v8[11].n128_u32[0] = 0;
      v8[11].n128_u32[1] = a3.n128_u32[0];
      a3.n128_f32[1] = a4;
      v8[11].n128_u64[1] = 0;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      v8[65] = a3;
      goto LABEL_72;
    case 12:
      v10 = *(this + 51);
      if (v10[48] == a3.n128_f32[0] && v10[49] == a4 && v10[50] == a5 && v10[51] == a6)
      {
        return 0;
      }

      v10[48] = a3.n128_f32[0];
      v10[49] = a4;
      v10[50] = a5;
      v10[51] = a6;
      goto LABEL_72;
    case 13:
      v17 = *(this + 51);
      if (v17[52] == a3.n128_f32[0] && v17[53] == a4 && v17[54] == a5 && v17[55] == a6)
      {
        return 0;
      }

      v17[52] = a3.n128_f32[0];
      v17[53] = a4;
      v17[54] = a5;
      v17[55] = a6;
LABEL_72:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    default:
      return 0xFFFFFFFFLL;
  }
}

uint64_t HgcShapeCheckerboard::GetParameter(HgcShapeCheckerboard *this, int a2, float *a3)
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
      *a3 = v13[236];
      a3[1] = v13[237];
      a3[2] = v13[238];
      v4 = v13 + 239;
      goto LABEL_16;
    case 6:
      v15 = *(this + 51);
      *a3 = v15[240];
      a3[1] = v15[241];
      a3[2] = v15[242];
      v4 = v15 + 243;
      goto LABEL_16;
    case 7:
      v11 = *(this + 51);
      *a3 = v11[244];
      a3[1] = v11[245];
      a3[2] = v11[246];
      v4 = v11 + 247;
      goto LABEL_16;
    case 8:
      v17 = *(this + 51);
      *a3 = v17[248];
      a3[1] = v17[249];
      a3[2] = v17[250];
      v4 = v17 + 251;
      goto LABEL_16;
    case 9:
      v8 = *(this + 51);
      *a3 = v8[252];
      a3[1] = v8[253];
      a3[2] = v8[254];
      v4 = v8 + 255;
      goto LABEL_16;
    case 10:
      v16 = *(this + 51);
      *a3 = v16[256];
      a3[1] = v16[257];
      a3[2] = v16[258];
      v4 = v16 + 259;
      goto LABEL_16;
    case 11:
      v5 = *(this + 51);
      *a3 = v5[260];
      a3[1] = v5[261];
      a3[2] = v5[262];
      v4 = v5 + 263;
      goto LABEL_16;
    case 12:
      v7 = *(this + 51);
      *a3 = v7[48];
      a3[1] = v7[49];
      a3[2] = v7[50];
      v4 = v7 + 51;
      goto LABEL_16;
    case 13:
      v14 = *(this + 51);
      *a3 = v14[52];
      a3[1] = v14[53];
      a3[2] = v14[54];
      v4 = v14 + 55;
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

double HgcShapeCheckerboard::State::State(HgcShapeCheckerboard::State *this)
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
  *(this + 14) = xmmword_260346410;
  *(this + 15) = xmmword_260346420;
  v2.i64[0] = 0x80000000800000;
  v2.i64[1] = 0x80000000800000;
  *(this + 16) = vnegq_f32(v2);
  *(this + 17) = xmmword_2603444B0;
  *(this + 18) = xmmword_260344660;
  *(this + 19) = xmmword_260346430;
  *(this + 20) = xmmword_260346440;
  *(this + 21) = xmmword_260344600;
  *(this + 22) = xmmword_260346450;
  *(this + 23) = xmmword_260346460;
  *(this + 24) = xmmword_260346470;
  *(this + 25) = xmmword_260346480;
  *(this + 26) = xmmword_260346490;
  *(this + 27) = xmmword_2603464A0;
  *(this + 28) = xmmword_260344670;
  *(this + 29) = xmmword_2603464B0;
  *(this + 30) = xmmword_2603464C0;
  *(this + 31) = xmmword_2603464D0;
  *(this + 32) = xmmword_2603464E0;
  *(this + 33) = xmmword_2603464F0;
  *(this + 34) = xmmword_260346500;
  *(this + 35) = xmmword_260346510;
  *(this + 36) = xmmword_260346520;
  *(this + 37) = xmmword_260346530;
  *(this + 38) = xmmword_260346540;
  *(this + 39) = xmmword_260346550;
  *(this + 40) = xmmword_260344740;
  *(this + 41) = xmmword_260346560;
  *(this + 42) = xmmword_260346570;
  *(this + 43) = xmmword_2603460E0;
  *(this + 44) = xmmword_260346580;
  *(this + 45) = xmmword_260346590;
  *(this + 46) = xmmword_2603465A0;
  *(this + 47) = xmmword_2603465B0;
  *(this + 48) = xmmword_2603465C0;
  *(this + 49) = xmmword_2603446A0;
  *(this + 50) = 0u;
  *(this + 51) = xmmword_260344950;
  v2.i64[0] = 0xFFFFFFFFLL;
  v2.i64[1] = 0xFFFFFFFFLL;
  *(this + 52) = v2;
  *(this + 53) = xmmword_260344650;
  *(this + 54) = xmmword_2603465D0;
  *(this + 55) = xmmword_2603465E0;
  *(this + 56) = xmmword_2603465F0;
  *(this + 57) = xmmword_260346600;
  *(this + 65) = 0u;
  *(this + 63) = 0u;
  *(this + 64) = 0u;
  *(this + 61) = 0u;
  *(this + 62) = 0u;
  *(this + 59) = 0u;
  *(this + 60) = 0u;
  *(this + 58) = xmmword_260346610;
  return result;
}

const char *HgcGradientLinear::GetProgram(HgcGradientLinear *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000047a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    half4 r0;\n    float4 s0;\n    FragmentOut output;\n\n    r0.xyz = half3(hg_Params[1].xyz) - half3(hg_Params[0].xyz);\n    s0.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    s0.x = dot(float3(r0.xyz), s0.xyz);\n    r0.x = dot(r0.xyz, r0.xyz);\n    s0.x = s0.x/float(r0.x);\n    s0.x = s0.x*hg_Params[2].x;\n    s0.x = fmax(s0.x, float(c0.x));\n    s0.x = fmin(s0.x, hg_Params[2].y);\n    s0.y = float(c0.x);\n    s0.xy = floor(s0.xy);\n    s0.xy = s0.xy + float2(c0.yy);\n    s0.xy = s0.xy + hg_Params[3].xy;\n    s0.xy = s0.xy*hg_Params[3].zw;\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c6ef7e31:8f35d263:e751ba94:acdce837\n//SIG=00400000:00000000:00000000:00000001:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000430\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = hg_Params[1].xyz - hg_Params[0].xyz;\n    r1.xyz = frag._texCoord0.xyz - hg_Params[0].xyz;\n    r1.x = dot(r0.xyz, r1.xyz);\n    r0.x = dot(r0.xyz, r0.xyz);\n    r1.x = r1.x/r0.x;\n    r1.x = r1.x*hg_Params[2].x;\n    r1.x = fmax(r1.x, c0.x);\n    r1.x = fmin(r1.x, hg_Params[2].y);\n    r1.y = c0.x;\n    r1.xy = floor(r1.xy);\n    r1.xy = r1.xy + c0.yy;\n    r1.xy = r1.xy + hg_Params[3].xy;\n    r1.xy = r1.xy*hg_Params[3].zw;\n    r1 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    output.color0 = r1;\n    return output;\n}\n//MD5=488f41f1:ccf438e8:81c55cc8:b2ecdb0c\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000047f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.5000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.xyz = hg_ProgramLocal1.xyz - hg_ProgramLocal0.xyz;\n    r1.xyz = hg_TexCoord0.xyz - hg_ProgramLocal0.xyz;\n    r1.x = dot(r0.xyz, r1.xyz);\n    r0.x = dot(r0.xyz, r0.xyz);\n    r1.x = r1.x/r0.x;\n    r1.x = r1.x*hg_ProgramLocal2.x;\n    r1.x = max(r1.x, c0.x);\n    r1.x = min(r1.x, hg_ProgramLocal2.y);\n    r1.y = c0.x;\n    r1.xy = floor(r1.xy);\n    r1.xy = r1.xy + c0.yy;\n    r1.xy = r1.xy + hg_ProgramLocal3.xy;\n    r1.xy = r1.xy*hg_ProgramLocal3.zw;\n    r1 = texture2D(hg_Texture0, r1.xy);\n    r1.xyz = r1.xyz*r1.www;\n    gl_FragColor = r1;\n}\n//MD5=2e4e42fc:8f04ac5e:7600ec8d:83fb8fce\n//SIG=00000000:00000000:00000000:00000000:0001:0004:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA9B790(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA9B910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA9B960()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA9B958);
}

uint64_t HgcGradientLinear::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 3, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcGradientLinear::Bind(HgcGradientLinear *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcGradientLinear::RenderTile(uint64_t a1, int32x2_t *a2)
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
    v8 = 16 * a2[3].i32[0];
    v9.i64[0] = 0x3F0000003F000000;
    v9.i64[1] = 0x3F0000003F000000;
    v10 = v5;
    do
    {
      if (v6 < 3)
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
          v14 = vaddq_f32(v13, xmmword_2603429B0);
          v15 = vaddq_f32(v14, xmmword_2603429B0);
          v16 = *(a1 + 408);
          v17 = vsubq_f32(*(v16 + 16), *v16);
          v18 = vmulq_f32(v17, vsubq_f32(v13, *v16));
          v19 = vmulq_f32(v17, vsubq_f32(v14, *v16));
          v20 = vmulq_f32(v17, vsubq_f32(v15, *v16));
          v21 = vmulq_f32(v17, v17);
          v22 = vaddq_f32(vextq_s8(v21, v21, 8uLL), vaddq_f32(v21, vrev64q_s32(v21)));
          v23 = *(v16 + 32);
          v24 = *(v16 + 48);
          v25 = *(v16 + 64);
          v26 = *(v16 + 80);
          v27 = vminq_f32(vmaxq_f32(vrecpeq_f32(v22), v24), v25);
          v28 = vminq_f32(vmaxq_f32(vmulq_f32(v27, vrecpsq_f32(v22, v27)), v24), v25);
          v29 = vmulq_f32(v28, vrecpsq_f32(v22, v28));
          v30 = vmulq_f32(vaddq_f32(vextq_s8(v18, v18, 8uLL), vaddq_f32(v18, vrev64q_s32(v18))), v29);
          v31 = vmulq_f32(vaddq_f32(vextq_s8(v19, v19, 8uLL), vaddq_f32(v19, vrev64q_s32(v19))), v29);
          v32 = vmaxq_f32(vmulq_f32(v23, vmulq_f32(vaddq_f32(vextq_s8(v20, v20, 8uLL), vaddq_f32(v20, vrev64q_s32(v20))), v29)), v26);
          v33 = vrev64q_s32(v23);
          v34 = vminq_f32(vmaxq_f32(vmulq_f32(v23, v30), v26), v33);
          v35 = vminq_f32(vmaxq_f32(vmulq_f32(v23, v31), v26), v33);
          v34.i32[1] = 0;
          v36 = vminq_f32(v32, v33);
          v35.i32[1] = 0;
          v36.i32[1] = 0;
          v37 = vcvtq_f32_s32(vcvtq_s32_f32(v34));
          v38 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
          v39 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
          v40 = *(v16 + 96);
          v41 = *(v16 + 112);
          v42 = vaddq_f32(v41, vsubq_f32(v39, vandq_s8(v40, vcgtq_f32(v39, v36))));
          v43 = a2[11].u32[0];
          v44 = vaddq_f32(vsubq_f32(vaddq_f32(v41, vsubq_f32(v37, vandq_s8(v40, vcgtq_f32(v37, v34)))), v5), v9);
          v45 = vcvtq_s32_f32(v44);
          v46 = a2[10];
          v47 = vaddq_f32(vsubq_f32(vaddq_f32(v41, vsubq_f32(v38, vandq_s8(v40, vcgtq_f32(v38, v35)))), v5), v9);
          v48 = vcvtq_s32_f32(v47);
          *v47.f32 = vadd_s32(*v48.i8, *&vcgtq_f32(vcvtq_f32_s32(v48), v47));
          *v44.f32 = vadd_s32(*v45.i8, *&vcgtq_f32(vcvtq_f32_s32(v45), v44));
          *v44.f32 = vmla_s32(vzip1_s32(*v44.f32, *v47.f32), vzip2_s32(*v44.f32, *v47.f32), vdup_n_s32(v43));
          v49 = v44.i32[1];
          v50 = v44.i32[0];
          v51 = vaddq_f32(vsubq_f32(v42, v5), v9);
          v52 = vcvtq_s32_f32(v51);
          v51.i64[0] = vaddq_s32(v52, vcgtq_f32(vcvtq_f32_s32(v52), v51)).u64[0];
          v53 = *(*&v46 + 16 * (v51.i32[0] + v51.i32[1] * v43));
          v54 = *(v16 + 128);
          v55 = vbslq_s8(v54, *(*&v46 + 16 * v49), vmulq_laneq_f32(*(*&v46 + 16 * v49), *(*&v46 + 16 * v49), 3));
          v56 = (*&v7 + 16 * v11);
          *v56 = vbslq_s8(v54, *(*&v46 + 16 * v50), vmulq_laneq_f32(*(*&v46 + 16 * v50), *(*&v46 + 16 * v50), 3));
          v56[1] = v55;
          v56[2] = vbslq_s8(v54, v53, vmulq_laneq_f32(v53, v53, 3));
          v13 = vaddq_f32(v15, xmmword_2603429B0);
          v11 += 3;
          v12 -= 3;
        }

        while (v12 > 2);
        v11 = v11;
      }

      if (v11 < v6)
      {
        do
        {
          v57 = *(a1 + 408);
          v58 = vsubq_f32(*(v57 + 16), *v57);
          v59 = vmulq_f32(v58, vsubq_f32(v13, *v57));
          v60 = vmulq_f32(v58, v58);
          v61 = vaddq_f32(vextq_s8(v60, v60, 8uLL), vaddq_f32(v60, vrev64q_s32(v60)));
          v62 = *(v57 + 48);
          v63 = *(v57 + 64);
          v64 = vminq_f32(vmaxq_f32(vrecpeq_f32(v61), v62), v63);
          v65 = vminq_f32(vmaxq_f32(vmulq_f32(v64, vrecpsq_f32(v61, v64)), v62), v63);
          v66 = vminq_f32(vmaxq_f32(vmulq_f32(*(v57 + 32), vmulq_f32(vaddq_f32(vextq_s8(v59, v59, 8uLL), vaddq_f32(v59, vrev64q_s32(v59))), vmulq_f32(v65, vrecpsq_f32(v61, v65)))), *(v57 + 80)), vrev64q_s32(*(v57 + 32)));
          v66.i32[1] = 0;
          v67 = vcvtq_f32_s32(vcvtq_s32_f32(v66));
          v68 = vaddq_f32(vsubq_f32(vaddq_f32(*(v57 + 112), vsubq_f32(v67, vandq_s8(*(v57 + 96), vcgtq_f32(v67, v66)))), v5), v9);
          v69 = vcvtq_s32_f32(v68);
          v68.i64[0] = vaddq_s32(v69, vcgtq_f32(vcvtq_f32_s32(v69), v68)).u64[0];
          v70 = *(*&a2[10] + 16 * (v68.i32[0] + v68.i32[1] * a2[11].i32[0]));
          *(*&v7 + 16 * v11) = vbslq_s8(*(v57 + 128), v70, vmulq_laneq_f32(v70, v70, 3));
          v13 = vaddq_f32(v13, xmmword_2603429B0);
          ++v11;
        }

        while (v11 < v6);
      }

      v10 = vaddq_f32(v10, xmmword_2603429C0);
      ++v4;
      *&v7 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t HgcGradientLinear::GetDOD(uint64_t a1, uint64_t a2, int a3)
{
  v3 = &HGRectInfinite;
  if (a3)
  {
    v3 = &HGRectNull;
  }

  return *v3;
}

uint64_t HgcGradientLinear::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, a3);
  return HGRenderer::GetDOD(a2, Input);
}

void HgcGradientLinear::HgcGradientLinear(HgcGradientLinear *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E6508;
  operator new();
}

void HgcGradientLinear::~HgcGradientLinear(HGNode *this)
{
  *this = &unk_2871E6508;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcGradientLinear::~HgcGradientLinear(this);

  HGObject::operator delete(v1);
}

uint64_t HgcGradientLinear::SetParameter(HgcGradientLinear *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcGradientLinear::GetParameter(HgcGradientLinear *this, unsigned int a2, float *a3)
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

const char *HgcUnsharpMask::GetProgram(HgcUnsharpMask *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000456\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r0 - r1;\n    r2 = r1 - half4(hg_Params[1].xxxx);\n    r2 = fmax(r2, c0.xxxx);\n    r3 = r1 + half4(hg_Params[1].xxxx);\n    r3 = fmin(r3, c0.xxxx);\n    r1 = select(r2, r3, r1 < 0.00000h);\n    r1 = r1*half4(hg_Params[0]) + r0;\n    r1.w = clamp(r1.w, 0.00000h, 1.00000h);\n    output.color0 = fmax(float4(c0.xxxx), float4(r1));\n    return output;\n}\n//MD5=d5cc6433:5d4a0953:df92ea2c:fe812aae\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000426\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r0 - r1;\n    r2 = r1 - hg_Params[1].xxxx;\n    r2 = fmax(r2, c0.xxxx);\n    r3 = r1 + hg_Params[1].xxxx;\n    r3 = fmin(r3, c0.xxxx);\n    r1 = select(r2, r3, r1 < 0.00000f);\n    r1 = r1*hg_Params[0] + r0;\n    r1.w = clamp(r1.w, 0.00000f, 1.00000f);\n    output.color0 = fmax(c0.xxxx, r1);\n    return output;\n}\n//MD5=ccd2b00d:c432c5e1:52e56883:8fe20380\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000045f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r0 - r1;\n    r2 = r1 - hg_ProgramLocal1.xxxx;\n    r2 = max(r2, c0.xxxx);\n    r3 = r1 + hg_ProgramLocal1.xxxx;\n    r3 = min(r3, c0.xxxx);\n    r1 = vec4(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z, r1.w < 0.00000 ? r3.w : r2.w);\n    r1 = r1*hg_ProgramLocal0 + r0;\n    r1.w = clamp(r1.w, 0.00000, 1.00000);\n    gl_FragColor = max(c0.xxxx, r1);\n}\n//MD5=8e720e80:e9b0ca1b:b5490642:451c7808\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA9C334(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA9C474(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA9C4BC()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA9C4B4);
}

uint64_t HgcUnsharpMask::BindTexture(HgcUnsharpMask *this, HGHandler *a2, int a3)
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

uint64_t HgcUnsharpMask::Bind(void *a1, uint64_t a2)
{
  (*(*a2 + 144))(a2, 0, a1[51], 1);
  (*(*a2 + 144))(a2, 1, a1[51] + 16, 1);
  (*(*a1 + 192))(a1, a2);
  return 0;
}

uint64_t HgcUnsharpMask::RenderTile(uint64_t a1, uint64_t a2)
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
          v15 = *(v8 + v12 - 32);
          v14 = *(v8 + v12 - 16);
          v17 = *(v8 + v12);
          v16 = *(v8 + v12 + 16);
          v18 = vsubq_f32(v15, *(v6 + v12 - 32));
          v19 = vsubq_f32(v14, *(v6 + v12 - 16));
          v20 = vsubq_f32(v17, *(v6 + v12));
          v21 = *(a1 + 408);
          v22 = vsubq_f32(v16, *(v6 + v12 + 16));
          v23 = vdupq_lane_s32(*(v21 + 16), 0);
          v24 = *(v21 + 32);
          v25 = vaddq_f32(v15, vmulq_f32(vbslq_s8(vcgtq_f32(v24, v18), vminq_f32(vaddq_f32(v18, v23), v24), vmaxq_f32(vsubq_f32(v18, v23), v24)), *v21));
          v26 = vaddq_f32(v14, vmulq_f32(vbslq_s8(vcgtq_f32(v24, v19), vminq_f32(vaddq_f32(v19, v23), v24), vmaxq_f32(vsubq_f32(v19, v23), v24)), *v21));
          v27 = vaddq_f32(v17, vmulq_f32(vbslq_s8(vcgtq_f32(v24, v20), vminq_f32(vaddq_f32(v20, v23), v24), vmaxq_f32(vsubq_f32(v20, v23), v24)), *v21));
          v28 = vaddq_f32(v16, vmulq_f32(vbslq_s8(vcgtq_f32(v24, v22), vminq_f32(vaddq_f32(v22, v23), v24), vmaxq_f32(vsubq_f32(v22, v23), v24)), *v21));
          v20.i64[0] = vextq_s8(*(v21 + 48), *(v21 + 48), 8uLL).u64[0];
          v29 = vextq_s8(*(v21 + 64), *(v21 + 64), 8uLL).u64[0];
          *&v25.u32[2] = vmin_f32(vmax_f32(*&vextq_s8(v25, v25, 8uLL), *v20.f32), v29);
          *&v26.u32[2] = vmin_f32(vmax_f32(*&vextq_s8(v26, v26, 8uLL), *v20.f32), v29);
          *&v27.u32[2] = vmin_f32(vmax_f32(*&vextq_s8(v27, v27, 8uLL), *v20.f32), v29);
          *&v28.u32[2] = vmin_f32(vmax_f32(*&vextq_s8(v28, v28, 8uLL), *v20.f32), v29);
          v30 = (v5 + v12);
          v30[-2] = vmaxq_f32(v25, v24);
          v30[-1] = vmaxq_f32(v26, v24);
          *v30 = vmaxq_f32(v27, v24);
          v30[1] = vmaxq_f32(v28, v24);
          v11 += 4;
          v12 += 64;
        }
      }

      if (v11 < v4)
      {
        do
        {
          v31 = *(v8 + 16 * v11);
          v32 = vsubq_f32(v31, *(v6 + 16 * v11));
          v33 = *(a1 + 408);
          v34 = vdupq_lane_s32(*(v33 + 16), 0);
          v35 = *(v33 + 32);
          v36 = vaddq_f32(v31, vmulq_f32(vbslq_s8(vcgtq_f32(v35, v32), vminq_f32(vaddq_f32(v32, v34), v35), vmaxq_f32(vsubq_f32(v32, v34), v35)), *v33));
          *&v36.u32[2] = vmin_f32(vmax_f32(*&vextq_s8(v36, v36, 8uLL), *&vextq_s8(*(v33 + 48), *(v33 + 48), 8uLL)), *&vextq_s8(*(v33 + 64), *(v33 + 64), 8uLL));
          *(v5 + 16 * v11++) = vmaxq_f32(v36, v35);
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

uint64_t HgcUnsharpMask::GetDOD(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

uint64_t HgcUnsharpMask::GetROI(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
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

void HgcUnsharpMask::HgcUnsharpMask(HgcUnsharpMask *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E6770;
  operator new();
}

void HgcUnsharpMask::~HgcUnsharpMask(HGNode *this)
{
  *this = &unk_2871E6770;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);
}

{
  HgcUnsharpMask::~HgcUnsharpMask(this);

  HGObject::operator delete(v1);
}

uint64_t HgcUnsharpMask::SetParameter(HgcUnsharpMask *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
    if (*v7 != a3.n128_f32[0] || *(v7 + 4) != a3.n128_f32[0] || *(v7 + 8) != a3.n128_f32[0] || *(v7 + 12) != a3.n128_f32[0])
    {
      v8 = vdupq_lane_s32(a3.n128_u64[0], 0);
      a3.n128_f32[1] = a4;
      *v7 = v8;
      a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
      *(v7 + 80) = a3;
LABEL_13:
      HGNode::ClearBits(this, a2, a7);
      return 1;
    }
  }

  return 0;
}

uint64_t HgcUnsharpMask::GetParameter(HgcUnsharpMask *this, int a2, float *a3)
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
    v3 = 92;
    v4 = 88;
    v5 = 84;
    v6 = 80;
  }

  v7 = 0;
  v8 = *(this + 51);
  *a3 = *(v8 + v6);
  a3[1] = *(v8 + v5);
  a3[2] = *(v8 + v4);
  a3[3] = *(v8 + v3);
  return v7;
}

const char *HgcRingLens::GetProgram(HgcRingLens *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000930\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 2.000000000, 3.000000000);\n    half4 r0;\n    float4 s0, s1, s2, s3, s4;\n    FragmentOut output;\n\n    s0.xy = frag._texCoord1.xy*hg_Params[4].xy + hg_Params[4].zw;\n    s1 = float4(dot(s0.xy, s0.xy));\n    s2 = rsqrt(s1.xxxx);\n    s2 = select(s2, float4(c0.xxxx), s1 < 0.00000h);\n    s2 = select(float4(c0.xxxx), s2, -s1 < 0.00000h);\n    s0.xy = s0.xy*s2.xy;\n    s1 = s1*s2;\n    s2.xy = s1.xy*hg_Params[0].xx + hg_Params[0].yy;\n    s3 = clamp(s1 - hg_Params[2].xxxx, 0.00000f, 1.00000f);\n    s3 = clamp(float4(c0.yyyy) - s3, 0.00000f, 1.00000f);\n    s4 = -s3*float4(c0.zzzz) + float4(c0.wwww);\n    s3 = s3*s3;\n    s3 = s3*s4;\n    s1 = clamp(s1 - hg_Params[2].yyyy, 0.00000f, 1.00000f);\n    s1 = clamp(float4(c0.yyyy) - s1, 0.00000f, 1.00000f);\n    s4 = -s1*float4(c0.zzzz) + float4(c0.wwww);\n    s1 = s1*s1;\n    s1 = s1*s4;\n    s2.xy = clamp(s2.xy, 0.00000f, 1.00000f);\n    s2.xy = s2.xy*hg_Params[0].zz + hg_Params[0].ww;\n    s4.x = s2.x + float(c0.y);\n    s4.x = s4.x*-s2.x + s4.x;\n    s4.xy = s2.xy/s4.xx;\n    s4.xy = clamp(s4.xy*hg_Params[1].xx + hg_Params[1].yy, 0.00000f, 1.00000f);\n    s4.xy = s4.xy*hg_Params[1].zz;\n    s0.xy = s0.xy*s4.xy;\n    s0.xy = s0.xy*hg_Params[5].xy + hg_Params[5].zw;\n    s2.xy = fmax(s0.xy, -hg_Params[3].xy);\n    s2.xy = fmin(s2.xy, hg_Params[3].xy);\n    s4.xy = -hg_Params[3].xy - s0.xy;\n    s0.xy = s0.xy - hg_Params[3].xy;\n    s4.x = fmax(s4.x, s4.y);\n    s4.y = fmax(s0.x, s0.y);\n    s4.x = fmax(s4.x, s4.y);\n    s2.xy = s2.xy + hg_Params[6].xy;\n    s2.xy = s2.xy*hg_Params[6].zw;\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, s2.xy);\n    s4 = select(float4(r0), float4(c0.xxxx), -s4.xxxx < 0.00000h);\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    s3 = mix(float4(r0), s4, s3);\n    output.color0 = mix(s3, float4(r0), s1);\n    return output;\n}\n//MD5=4f9e8c5b:54bb4b90:918f192a:0c3b49eb\n//SIG=00400000:00000001:00000001:00000003:0001:0007:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000008af\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 2.000000000, 3.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0.xy = frag._texCoord1.xy*hg_Params[4].xy + hg_Params[4].zw;\n    r1 = float4(dot(r0.xy, r0.xy));\n    r2 = rsqrt(r1.xxxx);\n    r2 = select(r2, c0.xxxx, r1 < 0.00000f);\n    r2 = select(c0.xxxx, r2, -r1 < 0.00000f);\n    r0.xy = r0.xy*r2.xy;\n    r1 = r1*r2;\n    r2.xy = r1.xy*hg_Params[0].xx + hg_Params[0].yy;\n    r3 = clamp(r1 - hg_Params[2].xxxx, 0.00000f, 1.00000f);\n    r3 = clamp(c0.yyyy - r3, 0.00000f, 1.00000f);\n    r4 = -r3*c0.zzzz + c0.wwww;\n    r3 = r3*r3;\n    r3 = r3*r4;\n    r1 = clamp(r1 - hg_Params[2].yyyy, 0.00000f, 1.00000f);\n    r1 = clamp(c0.yyyy - r1, 0.00000f, 1.00000f);\n    r4 = -r1*c0.zzzz + c0.wwww;\n    r1 = r1*r1;\n    r1 = r1*r4;\n    r2.xy = clamp(r2.xy, 0.00000f, 1.00000f);\n    r2.xy = r2.xy*hg_Params[0].zz + hg_Params[0].ww;\n    r4.x = r2.x + c0.y;\n    r4.x = r4.x*-r2.x + r4.x;\n    r4.xy = r2.xy/r4.xx;\n    r4.xy = clamp(r4.xy*hg_Params[1].xx + hg_Params[1].yy, 0.00000f, 1.00000f);\n    r4.xy = r4.xy*hg_Params[1].zz;\n    r0.xy = r0.xy*r4.xy;\n    r0.xy = r0.xy*hg_Params[5].xy + hg_Params[5].zw;\n    r2.xy = fmax(r0.xy, -hg_Params[3].xy);\n    r2.xy = fmin(r2.xy, hg_Params[3].xy);\n    r4.xy = -hg_Params[3].xy - r0.xy;\n    r0.xy = r0.xy - hg_Params[3].xy;\n    r4.x = fmax(r4.x, r4.y);\n    r4.y = fmax(r0.x, r0.y);\n    r4.x = fmax(r4.x, r4.y);\n    r2.xy = r2.xy + hg_Params[6].xy;\n    r2.xy = r2.xy*hg_Params[6].zw;\n    r2 = hg_Texture1.sample(hg_Sampler1, r2.xy);\n    r2 = select(r2, c0.xxxx, -r4.xxxx < 0.00000f);\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3 = mix(r0, r2, r3);\n    output.color0 = mix(r3, r0, r1);\n    return output;\n}\n//MD5=a85dccd2:7635320d:526a2005:86ecb05c\n//SIG=00000000:00000001:00000001:00000000:0001:0007:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000ac5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nuniform highp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 2.000000000, 3.000000000);\n    highp vec4 r0, r1, r2, r3, r4;\n\n    r0.xy = hg_TexCoord1.xy*hg_ProgramLocal4.xy + hg_ProgramLocal4.zw;\n    r1 = vec4(dot(r0.xy, r0.xy));\n    r2 = inversesqrt(r1.xxxx);\n    r2 = vec4(r1.x < 0.00000 ? c0.x : r2.x, r1.y < 0.00000 ? c0.x : r2.y, r1.z < 0.00000 ? c0.x : r2.z, r1.w < 0.00000 ? c0.x : r2.w);\n    r2 = vec4(-r1.x < 0.00000 ? r2.x : c0.x, -r1.y < 0.00000 ? r2.y : c0.x, -r1.z < 0.00000 ? r2.z : c0.x, -r1.w < 0.00000 ? r2.w : c0.x);\n    r0.xy = r0.xy*r2.xy;\n    r1 = r1*r2;\n    r2.xy = r1.xy*hg_ProgramLocal0.xx + hg_ProgramLocal0.yy;\n    r3 = clamp(r1 - hg_ProgramLocal2.xxxx, vec4(0.00000), vec4(1.00000));\n    r3 = clamp(c0.yyyy - r3, vec4(0.00000), vec4(1.00000));\n    r4 = -r3*c0.zzzz + c0.wwww;\n    r3 = r3*r3;\n    r3 = r3*r4;\n    r1 = clamp(r1 - hg_ProgramLocal2.yyyy, vec4(0.00000), vec4(1.00000));\n    r1 = clamp(c0.yyyy - r1, vec4(0.00000), vec4(1.00000));\n    r4 = -r1*c0.zzzz + c0.wwww;\n    r1 = r1*r1;\n    r1 = r1*r4;\n    r2.xy = clamp(r2.xy, vec2(0.00000), vec2(1.00000));\n    r2.xy = r2.xy*hg_ProgramLocal0.zz + hg_ProgramLocal0.ww;\n    r4.x = r2.x + c0.y;\n    r4.x = r4.x*-r2.x + r4.x;\n    r4.xy = r2.xy/r4.xx;\n    r4.xy = clamp(r4.xy*hg_ProgramLocal1.xx + hg_ProgramLocal1.yy, vec2(0.00000), vec2(1.00000));\n    r4.xy = r4.xy*hg_ProgramLocal1.zz;\n    r0.xy = r0.xy*r4.xy;\n    r0.xy = r0.xy*hg_ProgramLocal5.xy + hg_ProgramLocal5.zw;\n    r2.xy = max(r0.xy, -hg_ProgramLocal3.xy);\n    r2.xy = min(r2.xy, hg_ProgramLocal3.xy);\n    r4.xy = -hg_ProgramLocal3.xy - r0.xy;\n    r0.xy = r0.xy - hg_ProgramLocal3.xy;\n    r4.x = max(r4.x, r4.y);\n    r4.y = max(r0.x, r0.y);\n    r4.x = max(r4.x, r4.y);\n    r2.xy = r2.xy + hg_ProgramLocal6.xy;\n    r2.xy = r2.xy*hg_ProgramLocal6.zw;\n    r2 = texture2D(hg_Texture1, r2.xy);\n    r2 = vec4(-r4.x < 0.00000 ? c0.x : r2.x, -r4.x < 0.00000 ? c0.x : r2.y, -r4.x < 0.00000 ? c0.x : r2.z, -r4.x < 0.00000 ? c0.x : r2.w);\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r3 = mix(r0, r2, r3);\n    gl_FragColor = mix(r3, r0, r1);\n}\n//MD5=46cb039c:4ad86a39:1b96f54c:335834e1\n//SIG=00000000:00000001:00000001:00000000:0001:0007:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FA9CD00(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA9CEC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA9CF18()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA9CF10);
}

uint64_t HgcRingLens::BindTexture(HgcRingLens *this, HGHandler *a2, int a3)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return 0xFFFFFFFFLL;
    }

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
    (*(*a2 + 136))(a2, 6, v4, v5, v6, v7);
  }

  else
  {
    (*(*a2 + 72))(a2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    HGHandler::TexCoord(a2, 0, 0, 0, 0);
    v8 = (*(**(a2 + 18) + 128))(*(a2 + 18), 46);
    result = 0;
    if (v8)
    {
      return result;
    }

    (*(*a2 + 168))(a2);
  }

  return 0;
}

uint64_t HgcRingLens::Bind(HgcRingLens *this, HGHandler *a2)
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

uint64_t HgcRingLens::RenderTile(HgcRingLens *this, HGTile *a2)
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
    v16 = v9;
    do
    {
      if (v10 < 2)
      {
        v17 = 0;
        v20 = v16;
      }

      else
      {
        v17 = 0;
        v18 = 16;
        v19 = v10;
        v20 = v16;
        do
        {
          v21 = vaddq_f32(v20, xmmword_2603429B0);
          v22 = *(this + 51);
          v23 = *(v22 + 3);
          v24 = *(v22 + 4);
          v25 = vextq_s8(v24, v24, 8uLL);
          v26 = vaddq_f32(vmulq_f32(v20, v24), v25);
          v27 = vaddq_f32(vmulq_f32(v21, v24), v25);
          v28 = vmulq_f32(v26, v26).u64[0];
          v24.i64[0] = vmulq_f32(v27, v27).u64[0];
          v29 = vaddq_f32(vdupq_lane_s32(v28, 0), vdupq_lane_s32(v28, 1));
          v30 = vaddq_f32(vdupq_lane_s32(*v24.f32, 0), vdupq_lane_s32(*v24.f32, 1));
          v32 = *(v22 + 5);
          v31 = *(v22 + 6);
          v33 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v29.f32, 0)), v31);
          v34 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v30.f32, 0)), v31);
          v35 = vminq_f32(vmulq_f32(v33, vrsqrtsq_f32(vmulq_n_f32(v33, v29.f32[0]), v33)), v31);
          v36 = vminq_f32(vmulq_f32(v34, vrsqrtsq_f32(vmulq_n_f32(v34, v30.f32[0]), v34)), v31);
          v37 = vmulq_f32(v35, vrsqrtsq_f32(vmulq_n_f32(v35, v29.f32[0]), v35));
          v38 = vmulq_f32(v36, vrsqrtsq_f32(vmulq_n_f32(v36, v30.f32[0]), v36));
          v39 = *(v22 + 7);
          v40 = *(v22 + 8);
          v41 = vbslq_s8(vcgtq_f32(v29, v39), vbslq_s8(vcgtq_f32(v39, v29), v39, v37), v39);
          v42 = vbslq_s8(vcgtq_f32(v30, v39), vbslq_s8(vcgtq_f32(v39, v30), v39, v38), v39);
          v43 = vmulq_f32(v26, v41);
          v44 = vmulq_f32(v27, v42);
          v45 = vmulq_f32(v29, v41);
          v46 = vmulq_f32(v30, v42);
          v47 = *(v22 + 1);
          v48 = vdupq_lane_s32(*v22, 1);
          v49 = vdupq_laneq_s32(*v22, 3);
          v50 = vaddq_f32(v49, vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v48, vmulq_n_f32(v45, COERCE_FLOAT(*v22))), v39), v40), *v22, 2));
          v51 = vaddq_f32(v49, vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v48, vmulq_n_f32(v46, COERCE_FLOAT(*v22))), v39), v40), *v22, 2));
          v52 = vaddq_f32(v40, v50);
          v53 = vaddq_f32(v40, v51);
          v54 = vdupq_lane_s32(*&vsubq_f32(v52, vmulq_f32(v50, v52)), 0);
          v55 = vdupq_lane_s32(*&vsubq_f32(v53, vmulq_f32(v51, v53)), 0);
          v56 = *(v22 + 11);
          v57 = vminq_f32(vmaxq_f32(vrecpeq_f32(v54), v56), v31);
          v58 = vminq_f32(vmaxq_f32(vrecpeq_f32(v55), v56), v31);
          v59 = vminq_f32(vmaxq_f32(vmulq_f32(v57, vrecpsq_f32(v54, v57)), v56), v31);
          v60 = vminq_f32(vmaxq_f32(vmulq_f32(v58, vrecpsq_f32(v55, v58)), v56), v31);
          v61 = vmulq_f32(v51, vmulq_f32(v60, vrecpsq_f32(v55, v60)));
          v62 = vdupq_lane_s32(*v47.f32, 1);
          v63 = vaddq_f32(v62, vmulq_n_f32(v61, v47.f32[0]));
          v64 = vmulq_f32(v43, vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(v62, vmulq_n_f32(vmulq_f32(v50, vmulq_f32(v59, vrecpsq_f32(v54, v59))), v47.f32[0])), v39), v40), v47, 2));
          v65 = vmulq_f32(v44, vmulq_laneq_f32(vminq_f32(vmaxq_f32(v63, v39), v40), v47, 2));
          v66 = vextq_s8(v32, v32, 8uLL);
          v67 = vaddq_f32(vmulq_f32(v64, v32), v66);
          v68 = vaddq_f32(vmulq_f32(v32, v65), v66);
          v69 = vnegq_f32(v23);
          v70 = vminq_f32(vmaxq_f32(v68, v69), v23);
          v71 = *(a2 + 26);
          v72 = vsubq_f32(vminq_f32(vmaxq_f32(v67, v69), v23), v9);
          v73 = *(a2 + 12);
          if (v5)
          {
            v74 = vaddq_s32(vcvtq_s32_f32(v72), vcltzq_f32(v72));
            v75 = vsubq_f32(v72, vcvtq_f32_s32(v74)).u64[0];
            v76 = vsubq_f32(v70, v9);
            v77 = vaddq_s32(vcvtq_s32_f32(v76), vcltzq_f32(v76));
            v78 = vsubq_f32(v76, vcvtq_f32_s32(v77)).u64[0];
            *v74.i8 = vmla_s32(vzip1_s32(*v74.i8, *v77.i8), vzip2_s32(*v74.i8, *v77.i8), vdup_n_s32(v71));
            v79 = (v73 + 16 * v74.i32[0]);
            v80 = vaddq_f32(*v79, vmulq_n_f32(vsubq_f32(v79[1], *v79), v75.f32[0]));
            v81 = vaddq_f32(v80, vmulq_lane_f32(vsubq_f32(vaddq_f32(v79[v71], vmulq_n_f32(vsubq_f32(v79[v71 + 1], v79[v71]), v75.f32[0])), v80), v75, 1));
            v82 = (v73 + 16 * v74.i32[1]);
            v83 = vaddq_f32(*v82, vmulq_n_f32(vsubq_f32(v82[1], *v82), v78.f32[0]));
            v84 = vaddq_f32(v83, vmulq_lane_f32(vsubq_f32(vaddq_f32(v82[v71], vmulq_n_f32(vsubq_f32(v82[v71 + 1], v82[v71]), v78.f32[0])), v83), v78, 1));
          }

          else
          {
            v85 = vaddq_f32(v72, v15);
            v86 = vcvtq_s32_f32(v85);
            v87 = vaddq_f32(vsubq_f32(v70, v9), v15);
            v88 = vcvtq_s32_f32(v87);
            *v85.f32 = vadd_s32(*v86.i8, *&vcgtq_f32(vcvtq_f32_s32(v86), v85));
            *v87.f32 = vadd_s32(*v88.i8, *&vcgtq_f32(vcvtq_f32_s32(v88), v87));
            *v87.f32 = vmla_s32(vzip1_s32(*v85.f32, *v87.f32), vzip2_s32(*v85.f32, *v87.f32), vdup_n_s32(v71));
            v89 = v87.i32[1];
            v81 = *(v73 + 16 * v87.i32[0]);
            v84 = *(v73 + 16 * v89);
          }

          v90 = v22[2];
          v91 = vdupq_lane_s32(*&v90, 0);
          v92 = vminq_f32(vmaxq_f32(vsubq_f32(v40, vminq_f32(vmaxq_f32(vsubq_f32(v45, v91), v39), v40)), v39), v40);
          v93 = vminq_f32(vmaxq_f32(vsubq_f32(v40, vminq_f32(vmaxq_f32(vsubq_f32(v46, v91), v39), v40)), v39), v40);
          v94 = *(v22 + 9);
          v95 = *(v22 + 10);
          v96 = vdupq_lane_s32(*&v90, 1);
          v97 = vminq_f32(vmaxq_f32(vsubq_f32(v40, vminq_f32(vmaxq_f32(vsubq_f32(v45, v96), v39), v40)), v39), v40);
          v98 = vminq_f32(vmaxq_f32(vsubq_f32(v40, vminq_f32(vmaxq_f32(vsubq_f32(v46, v96), v39), v40)), v39), v40);
          v99 = vsubq_f32(v69, v67);
          v100 = vsubq_f32(v69, v68);
          v101 = vsubq_f32(v67, v23);
          v102 = vsubq_f32(v68, v23);
          v103 = vmaxq_f32(v100, vrev64q_s32(v100));
          v104 = *(v22 + 12);
          v105 = vbslq_s8(v104, vmaxq_f32(v99, vrev64q_s32(v99)), vmaxq_f32(vrev64q_s32(v101), v101));
          v106 = vbslq_s8(v104, v103, vmaxq_f32(vrev64q_s32(v102), v102));
          v107 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vmaxq_f32(v105, vrev64q_s32(v105)), 0), v39), v39, v81);
          v108 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vmaxq_f32(v106, vrev64q_s32(v106)), 0), v39), v39, v84);
          v109 = *(v12 + v18 - 16);
          v110 = *(v12 + v18);
          v111 = vaddq_f32(v109, vmulq_f32(vmulq_f32(vmulq_f32(v92, v92), vsubq_f32(v94, vmulq_f32(v92, v95))), vsubq_f32(v107, v109)));
          v112 = vaddq_f32(v110, vmulq_f32(vmulq_f32(vmulq_f32(v93, v93), vsubq_f32(v94, vmulq_f32(v93, v95))), vsubq_f32(v108, v110)));
          v113 = (v11 + v18);
          v113[-1] = vaddq_f32(v111, vmulq_f32(vmulq_f32(vmulq_f32(v97, v97), vsubq_f32(v94, vmulq_f32(v95, v97))), vsubq_f32(v109, v111)));
          *v113 = vaddq_f32(v112, vmulq_f32(vmulq_f32(vmulq_f32(v98, v98), vsubq_f32(v94, vmulq_f32(v95, v98))), vsubq_f32(v110, v112)));
          v20 = vaddq_f32(v21, xmmword_2603429B0);
          v19 -= 2;
          v17 += 2;
          v18 += 32;
        }

        while (v19 > 1);
      }

      if (v17 < v10)
      {
        v114 = *(this + 51);
        v115 = *(v114 + 3);
        v116 = vaddq_f32(vmulq_f32(v20, *(v114 + 4)), vextq_s8(*(v114 + 4), *(v114 + 4), 8uLL));
        v117 = vmulq_f32(v116, v116).u64[0];
        v118 = vaddq_f32(vdupq_lane_s32(v117, 0), vdupq_lane_s32(v117, 1));
        v119 = *(v114 + 6);
        v120 = vminq_f32(vrsqrteq_f32(vdupq_lane_s32(*v118.f32, 0)), v119);
        v121 = vminq_f32(vmulq_f32(v120, vrsqrtsq_f32(vmulq_n_f32(v120, v118.f32[0]), v120)), v119);
        v122 = vmulq_f32(v121, vrsqrtsq_f32(vmulq_n_f32(v121, v118.f32[0]), v121));
        v123 = *(v114 + 7);
        v124 = *(v114 + 8);
        v125 = vbslq_s8(vcgtq_f32(v118, v123), vbslq_s8(vcgtq_f32(v123, v118), v123, v122), v123);
        v126 = vmulq_f32(v116, v125);
        v127 = vmulq_f32(v118, v125);
        v128 = vaddq_f32(vdupq_laneq_s32(*v114, 3), vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(*v114, 1), vmulq_n_f32(v127, COERCE_FLOAT(*v114))), v123), v124), *v114, 2));
        v129 = vaddq_f32(v124, v128);
        v130 = vdupq_lane_s32(*&vsubq_f32(v129, vmulq_f32(v128, v129)), 0);
        v131 = *(v114 + 11);
        v132 = vminq_f32(vmaxq_f32(vrecpeq_f32(v130), v131), v119);
        v133 = vminq_f32(vmaxq_f32(vmulq_f32(v132, vrecpsq_f32(v130, v132)), v131), v119);
        v134 = vaddq_f32(vmulq_f32(*(v114 + 5), vmulq_f32(v126, vmulq_laneq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vdupq_lane_s32(v114[1], 1), vmulq_n_f32(vmulq_f32(v128, vmulq_f32(v133, vrecpsq_f32(v130, v133))), COERCE_FLOAT(v114[1]))), v123), v124), *(v114 + 1), 2))), vextq_s8(*(v114 + 5), *(v114 + 5), 8uLL));
        v135 = vnegq_f32(v115);
        v136 = *(a2 + 26);
        v137 = vsubq_f32(vminq_f32(vmaxq_f32(v134, v135), v115), v9);
        v138 = *(a2 + 12);
        if (v5)
        {
          v139 = vaddq_s32(vcvtq_s32_f32(v137), vcltzq_f32(v137));
          v140 = vsubq_f32(v137, vcvtq_f32_s32(v139)).u64[0];
          v141 = (v138 + 16 * (v139.i32[0] + v139.i32[1] * v136));
          v142 = vaddq_f32(*v141, vmulq_n_f32(vsubq_f32(v141[1], *v141), v140.f32[0]));
          v143 = vaddq_f32(v142, vmulq_lane_f32(vsubq_f32(vaddq_f32(v141[v136], vmulq_n_f32(vsubq_f32(v141[v136 + 1], v141[v136]), v140.f32[0])), v142), v140, 1));
        }

        else
        {
          v144 = vaddq_f32(v137, v15);
          v145 = vcvtq_s32_f32(v144);
          v144.i64[0] = vaddq_s32(v145, vcgtq_f32(vcvtq_f32_s32(v145), v144)).u64[0];
          v143 = *(v138 + 16 * (v144.i32[0] + v144.i32[1] * v136));
        }

        v146 = v114[2];
        v147 = vminq_f32(vmaxq_f32(vsubq_f32(v124, vminq_f32(vmaxq_f32(vsubq_f32(v127, vdupq_lane_s32(*&v146, 0)), v123), v124)), v123), v124);
        v148 = *(v114 + 9);
        v149 = *(v114 + 10);
        v150 = vminq_f32(vmaxq_f32(vsubq_f32(v124, vminq_f32(vmaxq_f32(vsubq_f32(v127, vdupq_lane_s32(*&v146, 1)), v123), v124)), v123), v124);
        v151 = vsubq_f32(v135, v134);
        v152 = vsubq_f32(v134, v115);
        v153 = vbslq_s8(*(v114 + 12), vmaxq_f32(v151, vrev64q_s32(v151)), vmaxq_f32(vrev64q_s32(v152), v152));
        v154 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vmaxq_f32(v153, vrev64q_s32(v153)), 0), v123), v123, v143);
        v155 = *(v12 + 16 * v17);
        v156 = vaddq_f32(v155, vmulq_f32(vmulq_f32(vmulq_f32(v147, v147), vsubq_f32(v148, vmulq_f32(v147, v149))), vsubq_f32(v154, v155)));
        *(v11 + 16 * v17) = vaddq_f32(v156, vmulq_f32(vmulq_f32(vmulq_f32(v150, v150), vsubq_f32(v148, vmulq_f32(v149, v150))), vsubq_f32(v155, v156)));
      }

      v16 = vaddq_f32(v16, xmmword_2603429C0);
      v12 += v14;
      v11 += v13;
      ++v8;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcRingLens::GetDOD(HgcRingLens *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      if ((*(*this + 312))(this, a2) >= 1)
      {
        v6 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
        HGRectGrow(v5, v4, v6);
      }

      v7 = &HGRectInfinite;
    }

    else
    {
      v7 = &HGRectNull;
    }

    return *v7;
  }

  return v5;
}

uint64_t HgcRingLens::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (!a3)
  {
    return *&a4.var0;
  }

  if (a3 != 1)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 1u);
  DOD = HGRenderer::GetDOD(a2, Input);
  v9 = v8;
  if ((*(*this + 312))(this, a2) >= 1)
  {
    v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    return HGRectGrow(DOD, v9, v10);
  }

  return DOD;
}

void HgcRingLens::HgcRingLens(HgcRingLens *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E69D8;
  operator new();
}

void HgcRingLens::~HgcRingLens(HGNode *this)
{
  *this = &unk_2871E69D8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F93440CLL);
  }

  HGNode::~HGNode(this);
}

{
  HgcRingLens::~HgcRingLens(this);

  HGObject::operator delete(v1);
}

uint64_t HgcRingLens::SetParameter(HgcRingLens *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcRingLens::GetParameter(HgcRingLens *this, unsigned int a2, float *a3)
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

const char *HgcScrape::GetProgram(HgcScrape *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000055d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 s0, s1;\n    FragmentOut output;\n\n    s0.zw = frag._texCoord0.xy - hg_Params[0].xy;\n    s0.xy = s0.zw/hg_Params[4].xy;\n    s0.zw = s0.xy*hg_Params[1].xy;\n    s1.x = dot(s0.xy, hg_Params[1].xy);\n    s0.z = float(s0.z >= -s0.w);\n    s1.y = float(s1.x >= hg_Params[2].x);\n    s1.z = float(-s1.y >= float(c0.z));\n    s1.z = fmin(s0.z, s1.z);\n    s1.w = s1.x*hg_Params[3].w;\n    s0.w = float(c0.x)*hg_Params[2].x + -s1.x;\n    s0.z = fmin(s0.z, s1.y);\n    s0.z = select(float(c0.z), s0.w, -s0.z < 0.00000h);\n    s1.w = -s1.x*s1.w;\n    s0.w = s1.w*float(c0.x);\n    s0.z = select(s0.z, s0.w, -s1.z < 0.00000h);\n    s0.zw = s0.zz*hg_Params[1].xy + s0.xy;\n    s0.xy = 1.00000f / hg_Params[4].zw;\n    s0.xy = s0.zw*s0.xy + hg_Params[0].xy;\n    s0.xy = s0.xy + hg_Params[5].xy;\n    s0.xy = s0.xy*hg_Params[5].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=8c06b24b:742de15f:1accd534:17b6e57b\n//SIG=00400000:00000000:00000000:00000001:0001:0006:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000053b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.zw = frag._texCoord0.xy - hg_Params[0].xy;\n    r0.xy = r0.zw/hg_Params[4].xy;\n    r0.zw = r0.xy*hg_Params[1].xy;\n    r1.x = dot(r0.xy, hg_Params[1].xy);\n    r0.z = float(r0.z >= -r0.w);\n    r1.y = float(r1.x >= hg_Params[2].x);\n    r1.z = float(-r1.y >= c0.z);\n    r1.z = fmin(r0.z, r1.z);\n    r1.w = r1.x*hg_Params[3].w;\n    r0.w = c0.x*hg_Params[2].x + -r1.x;\n    r0.z = fmin(r0.z, r1.y);\n    r0.z = select(c0.z, r0.w, -r0.z < 0.00000f);\n    r1.w = -r1.x*r1.w;\n    r0.w = r1.w*c0.x;\n    r0.z = select(r0.z, r0.w, -r1.z < 0.00000f);\n    r0.zw = r0.zz*hg_Params[1].xy + r0.xy;\n    r0.xy = 1.00000f / hg_Params[4].zw;\n    r0.xy = r0.zw*r0.xy + hg_Params[0].xy;\n    r0.xy = r0.xy + hg_Params[5].xy;\n    r0.xy = r0.xy*hg_Params[5].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r0.xy);\n    return output;\n}\n//MD5=48ec55eb:abdbcddb:7094ba93:e7fe714b\n//SIG=00000000:00000000:00000000:00000000:0001:0006:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005df\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nuniform highp vec4 hg_ProgramLocal3;\nuniform highp vec4 hg_ProgramLocal4;\nuniform highp vec4 hg_ProgramLocal5;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.5000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0.zw = hg_TexCoord0.xy - hg_ProgramLocal0.xy;\n    r0.xy = r0.zw/hg_ProgramLocal4.xy;\n    r0.zw = r0.xy*hg_ProgramLocal1.xy;\n    r1.x = dot(r0.xy, hg_ProgramLocal1.xy);\n    r0.z = float(r0.z >= -r0.w);\n    r1.y = float(r1.x >= hg_ProgramLocal2.x);\n    r1.z = float(-r1.y >= c0.z);\n    r1.z = min(r0.z, r1.z);\n    r1.w = r1.x*hg_ProgramLocal3.w;\n    r0.w = c0.x*hg_ProgramLocal2.x + -r1.x;\n    r0.z = min(r0.z, r1.y);\n    r0.z = -r0.z < 0.00000 ? r0.w : c0.z;\n    r1.w = -r1.x*r1.w;\n    r0.w = r1.w*c0.x;\n    r0.z = -r1.z < 0.00000 ? r0.w : r0.z;\n    r0.zw = r0.zz*hg_ProgramLocal1.xy + r0.xy;\n    r0.xy = vec2(1.00000) / hg_ProgramLocal4.zw;\n    r0.xy = r0.zw*r0.xy + hg_ProgramLocal0.xy;\n    r0.xy = r0.xy + hg_ProgramLocal5.xy;\n    r0.xy = r0.xy*hg_ProgramLocal5.zw;\n    gl_FragColor = texture2D(hg_Texture0, r0.xy);\n}\n//MD5=5a52b265:2b1e48aa:6b76214c:5cb8511c\n//SIG=00000000:00000000:00000000:00000000:0001:0006:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FA9DF5C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31)
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

void sub_25FA9E0DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, char a21)
{
  a12 = &a21;
  std::vector<HGBinding>::__destroy_vector::operator()[abi:ne200100](&a12);
  _Unwind_Resume(a1);
}

void sub_25FA9E12C()
{
  if (*(v0 - 33) < 0)
  {
    operator delete(*(v0 - 56));
  }

  JUMPOUT(0x25FA9E124);
}

uint64_t HgcScrape::BindTexture(uint64_t a1, uint64_t a2, int a3)
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
  (*(*a2 + 136))(a2, 5, v5, v6, v7, v8);
  return 0;
}

uint64_t HgcScrape::Bind(HgcScrape *this, HGHandler *a2)
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

uint64_t HgcScrape::RenderTile(HgcScrape *this, HGTile *a2)
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
          v20 = *(this + 51);
          v21 = *(v20 + 16);
          v22 = vsubq_f32(v17, *v20);
          v23 = vsubq_f32(v18, *v20);
          v25 = *(v20 + 64);
          v24 = *(v20 + 80);
          v26 = *(v20 + 96);
          v27 = *(v20 + 112);
          v28 = vminq_f32(vmaxq_f32(vrecpeq_f32(v25), v24), v26);
          v29 = vminq_f32(vmaxq_f32(vmulq_f32(v28, vrecpsq_f32(v25, v28)), v24), v26);
          v30 = vmulq_f32(v29, vrecpsq_f32(v25, v29));
          v31 = vmulq_f32(v22, v30);
          v32 = vmulq_f32(v23, v30);
          v33 = vmulq_f32(vsubq_f32(v19, *v20), v30);
          v34.i64[0] = v31.i64[0];
          v34.i64[1] = vmulq_f32(v21, v31).u64[0];
          v35.i64[0] = v32.i64[0];
          v35.i64[1] = vmulq_f32(v21, v32).u64[0];
          v36.i64[0] = v33.i64[0];
          v36.i64[1] = vmulq_f32(v21, v33).u64[0];
          v37 = vmulq_f32(v21, v34);
          v38 = vmulq_f32(v21, v35);
          v39 = vmulq_f32(v21, v36);
          v40 = vaddq_f32(v37, vrev64q_s32(v37));
          v41 = vaddq_f32(v38, vrev64q_s32(v38));
          v42 = vaddq_f32(v39, vrev64q_s32(v39));
          v31.i64[1] = vandq_s8(*&v24, vcgeq_f32(v34, vnegq_f32(vrev64q_s32(__PAIR128__(*(&v34 + 8), *&v31))))).i64[1];
          v32.i64[1] = vandq_s8(*&v24, vcgeq_f32(v35, vnegq_f32(vrev64q_s32(__PAIR128__(*(&v35 + 8), *&v32))))).i64[1];
          v33.i64[1] = vandq_s8(*&v24, vcgeq_f32(v36, vnegq_f32(vrev64q_s32(__PAIR128__(*(&v36 + 8), *&v33))))).i64[1];
          v43 = *(v20 + 32);
          v44 = *(v20 + 48);
          v45 = *(v20 + 128);
          v46 = *(v20 + 144);
          v47 = vbslq_s8(v45, v40, vrev64q_s32(vandq_s8(v27, vcgeq_f32(v40, v43))));
          v48 = vbslq_s8(v45, v41, vrev64q_s32(vandq_s8(v27, vcgeq_f32(v41, v43))));
          v49 = vbslq_s8(v45, v42, vrev64q_s32(vandq_s8(v27, vcgeq_f32(v42, v43))));
          v50 = vextq_s8(v9, vandq_s8(v46, vcgeq_f32(vnegq_f32(v47), v27)), 0xCuLL);
          v51 = vextq_s8(v9, vandq_s8(v46, vcgeq_f32(vnegq_f32(v48), v27)), 0xCuLL);
          v52 = vextq_s8(v9, vandq_s8(v46, vcgeq_f32(vnegq_f32(v49), v27)), 0xCuLL);
          v50.i64[0] = v47.i64[0];
          v51.i64[0] = v48.i64[0];
          v52.i64[0] = v49.i64[0];
          v47.i64[1] = vminq_f32(v31, v50).i64[1];
          v48.i64[1] = vminq_f32(v32, v51).i64[1];
          v49.i64[1] = vminq_f32(v33, v52).i64[1];
          v53 = *(v20 + 160);
          v54 = *(v20 + 176);
          v55 = vbslq_s8(v53, vmulq_n_f32(v44, v47.f32[0]), v47);
          v56 = vbslq_s8(v53, vmulq_n_f32(v44, v48.f32[0]), v48);
          v57 = vbslq_s8(v53, vmulq_n_f32(v44, v49.f32[0]), v49);
          v58 = vnegq_f32(v55);
          v59 = vnegq_f32(v56);
          v60 = vnegq_f32(v57);
          v61 = vmulq_n_f32(v46, v43.f32[0]);
          v62 = vbslq_s8(v53, vaddq_f32(v61, vextq_s8(v58, v58, 4uLL)), v31);
          v63 = vbslq_s8(v53, vaddq_f32(v61, vextq_s8(v59, v59, 4uLL)), v32);
          v64 = vbslq_s8(v53, vaddq_f32(v61, vextq_s8(v60, v60, 4uLL)), v33);
          v65 = vbslq_s8(v54, vminq_f32(v62, vextq_s8(v55, v55, 0xCuLL)), v62);
          v66 = vbslq_s8(v54, vminq_f32(v63, vextq_s8(v56, v56, 0xCuLL)), v63);
          v67 = vbslq_s8(v54, vminq_f32(v64, vextq_s8(v57, v57, 0xCuLL)), v64);
          v68 = vbslq_s8(v54, v55, vmulq_n_f32(v55, *v58.i32));
          v69 = vbslq_s8(v54, v56, vmulq_n_f32(v56, *v59.i32));
          v70 = vbslq_s8(v54, v57, vmulq_n_f32(v57, *v60.i32));
          v65.i64[1] = vbslq_s8(vcgtq_f32(v65, v46), vrev64q_s32(*&v65), *&v46).i64[1];
          v71 = vbslq_s8(v53, vmulq_f32(v46, v68), v65);
          v66.i64[1] = vbslq_s8(vcgtq_f32(v66, v46), vrev64q_s32(*&v66), *&v46).i64[1];
          v72 = vbslq_s8(v53, vmulq_f32(v46, v69), v66);
          v67.i64[1] = vbslq_s8(vcgtq_f32(v67, v46), vrev64q_s32(*&v67), *&v46).i64[1];
          v73 = vbslq_s8(v53, vmulq_f32(v46, v70), v67);
          v74 = vextq_s8(v21, v21, 8uLL);
          v75 = vaddq_f32(vdupq_lane_s64(v71.i64[0], 0), vmulq_laneq_f32(v74, vbslq_s8(vcgtq_f32(v68, v46), vdupq_laneq_s32(v71, 3), v71), 2));
          v76 = vaddq_f32(vdupq_lane_s64(v72.i64[0], 0), vmulq_laneq_f32(v74, vbslq_s8(vcgtq_f32(v69, v46), vdupq_laneq_s32(v72, 3), v72), 2));
          v77 = vaddq_f32(vdupq_lane_s64(v73.i64[0], 0), vmulq_laneq_f32(v74, vbslq_s8(vcgtq_f32(v70, v46), vdupq_laneq_s32(v73, 3), v73), 2));
          v78 = vextq_s8(v25, v25, 8uLL);
          v79 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v78), *(v20 + 192)), v24), v26);
          v80 = vmulq_f32(v79, vrecpsq_f32(v78, v79));
          v26.i64[0] = v80.i64[0];
          v78.i64[0] = v80.i64[0];
          v81 = vextq_s8(v75, v80, 8uLL);
          v61.i64[0] = v80.i64[0];
          v61.i64[1] = v75.i64[1];
          v26.i64[1] = v76.i64[1];
          v82 = vextq_s8(v77, v80, 8uLL);
          v78.i64[1] = v77.i64[1];
          v83 = vaddq_f32(*v20, vmulq_f32(v81, v61));
          v84 = vaddq_f32(*v20, vmulq_f32(vextq_s8(v76, v80, 8uLL), v26));
          v85 = vaddq_f32(*v20, vmulq_f32(v82, v78));
          v86 = *(a2 + 22);
          v87 = vsubq_f32(v83, v9);
          v88 = *(a2 + 10);
          if (v5)
          {
            v89 = vaddq_s32(vcvtq_s32_f32(v87), vcltzq_f32(v87));
            v90 = vsubq_f32(v87, vcvtq_f32_s32(v89)).u64[0];
            v91 = vsubq_f32(v84, v9);
            v92 = vaddq_s32(vcvtq_s32_f32(v91), vcltzq_f32(v91));
            v93 = vsubq_f32(v91, vcvtq_f32_s32(v92)).u64[0];
            *v89.i8 = vmla_s32(vzip1_s32(*v89.i8, *v92.i8), vzip2_s32(*v89.i8, *v92.i8), vdup_n_s32(v86));
            v94 = (v88 + 16 * v89.i32[0]);
            v95 = vaddq_f32(*v94, vmulq_n_f32(vsubq_f32(v94[1], *v94), v90.f32[0]));
            v96 = vaddq_f32(v95, vmulq_lane_f32(vsubq_f32(vaddq_f32(v94[v86], vmulq_n_f32(vsubq_f32(v94[v86 + 1], v94[v86]), v90.f32[0])), v95), v90, 1));
            v97 = (v88 + 16 * v89.i32[1]);
            v98 = vaddq_f32(*v97, vmulq_n_f32(vsubq_f32(v97[1], *v97), v93.f32[0]));
            v99 = vaddq_f32(v98, vmulq_lane_f32(vsubq_f32(vaddq_f32(v97[v86], vmulq_n_f32(vsubq_f32(v97[v86 + 1], v97[v86]), v93.f32[0])), v98), v93, 1));
            v100 = vsubq_f32(v85, v9);
            v101 = vaddq_s32(vcvtq_s32_f32(v100), vcltzq_f32(v100));
            v100.i64[0] = vsubq_f32(v100, vcvtq_f32_s32(v101)).u64[0];
            v102 = (v88 + 16 * (v101.i32[0] + v101.i32[1] * v86));
            v103 = vaddq_f32(*v102, vmulq_n_f32(vsubq_f32(v102[1], *v102), v100.f32[0]));
            v104 = vaddq_f32(v103, vmulq_lane_f32(vsubq_f32(vaddq_f32(v102[v86], vmulq_n_f32(vsubq_f32(v102[v86 + 1], v102[v86]), v100.f32[0])), v103), *v100.f32, 1));
          }

          else
          {
            v105 = vaddq_f32(v87, v13);
            v106 = vcvtq_s32_f32(v105);
            v107 = vaddq_f32(vsubq_f32(v84, v9), v13);
            v108 = vcvtq_s32_f32(v107);
            *v105.f32 = vadd_s32(*v106.i8, *&vcgtq_f32(vcvtq_f32_s32(v106), v105));
            *v107.f32 = vadd_s32(*v108.i8, *&vcgtq_f32(vcvtq_f32_s32(v108), v107));
            *v107.f32 = vmla_s32(vzip1_s32(*v105.f32, *v107.f32), vzip2_s32(*v105.f32, *v107.f32), vdup_n_s32(v86));
            v109 = v107.i32[1];
            v96 = *(v88 + 16 * v107.i32[0]);
            v99 = *(v88 + 16 * v109);
            v110 = vaddq_f32(vsubq_f32(v85, v9), v13);
            v111 = vcvtq_s32_f32(v110);
            v110.i64[0] = vaddq_s32(v111, vcgtq_f32(vcvtq_f32_s32(v111), v110)).u64[0];
            v104 = *(v88 + 16 * (v110.i32[0] + v110.i32[1] * v86));
          }

          v112 = (v11 + 16 * v15);
          *v112 = v96;
          v112[1] = v99;
          v112[2] = v104;
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
          v113 = *(this + 51);
          v114 = *(v113 + 16);
          v116 = *(v113 + 64);
          v115 = *(v113 + 80);
          v117 = *(v113 + 96);
          v118 = *(v113 + 112);
          v119 = vminq_f32(vmaxq_f32(vrecpeq_f32(v116), v115), v117);
          v120 = vminq_f32(vmaxq_f32(vmulq_f32(v119, vrecpsq_f32(v116, v119)), v115), v117);
          v121 = vmulq_f32(vsubq_f32(v17, *v113), vmulq_f32(v120, vrecpsq_f32(v116, v120)));
          v122.i64[0] = v121.i64[0];
          v122.i64[1] = vmulq_f32(v114, v121).u64[0];
          v123 = vmulq_f32(v114, v122);
          v124 = vaddq_f32(v123, vrev64q_s32(v123));
          v121.i64[1] = vandq_s8(*&v115, vcgeq_f32(v122, vnegq_f32(vrev64q_s32(__PAIR128__(*(&v122 + 8), *&v121))))).i64[1];
          v125 = *(v113 + 32);
          v126 = *(v113 + 144);
          v127 = vbslq_s8(*(v113 + 128), v124, vrev64q_s32(vandq_s8(v118, vcgeq_f32(v124, v125))));
          v128 = vextq_s8(v9, vandq_s8(v126, vcgeq_f32(vnegq_f32(v127), v118)), 0xCuLL);
          v128.i64[0] = v127.i64[0];
          v127.i64[1] = vminq_f32(v121, v128).i64[1];
          v129 = *(v113 + 160);
          v130 = *(v113 + 176);
          v131 = vbslq_s8(v129, vmulq_n_f32(*(v113 + 48), v127.f32[0]), v127);
          v132 = vnegq_f32(v131);
          v133 = vbslq_s8(v129, vaddq_f32(vmulq_n_f32(v126, v125.f32[0]), vextq_s8(v132, v132, 4uLL)), v121);
          v134 = vbslq_s8(v130, vminq_f32(v133, vextq_s8(v131, v131, 0xCuLL)), v133);
          v135 = vbslq_s8(v130, v131, vmulq_n_f32(v131, *v132.i32));
          v134.i64[1] = vbslq_s8(vcgtq_f32(v134, v126), vrev64q_s32(*&v134), *&v126).i64[1];
          v136 = vbslq_s8(v129, vmulq_f32(v126, v135), v134);
          v137 = vaddq_f32(vdupq_lane_s64(v136.i64[0], 0), vmulq_laneq_f32(vdupq_lane_s64(v114.i64[0], 0), vbslq_s8(vcgtq_f32(v135, v126), vdupq_laneq_s32(v136, 3), v136), 2));
          v138 = vextq_s8(v116, v116, 8uLL);
          v139 = vminq_f32(vmaxq_f32(vmulq_f32(vrecpeq_f32(v138), *(v113 + 192)), v115), v117);
          v140 = vmulq_f32(v139, vrecpsq_f32(v138, v139));
          v117.i64[0] = v140.i64[0];
          v117.i64[1] = v137.i64[1];
          v141 = vaddq_f32(*v113, vmulq_f32(vextq_s8(v137, v140, 8uLL), v117));
          v142 = *(a2 + 22);
          v143 = vsubq_f32(v141, v9);
          v144 = *(a2 + 10);
          if (v5)
          {
            v145 = vaddq_s32(vcvtq_s32_f32(v143), vcltzq_f32(v143));
            v146 = vsubq_f32(v143, vcvtq_f32_s32(v145)).u64[0];
            v147 = (v144 + 16 * (v145.i32[0] + v145.i32[1] * v142));
            v148 = vaddq_f32(*v147, vmulq_n_f32(vsubq_f32(v147[1], *v147), v146.f32[0]));
            v149 = vaddq_f32(v148, vmulq_lane_f32(vsubq_f32(vaddq_f32(v147[v142], vmulq_n_f32(vsubq_f32(v147[v142 + 1], v147[v142]), v146.f32[0])), v148), v146, 1));
          }

          else
          {
            v150 = vaddq_f32(v143, v13);
            v151 = vcvtq_s32_f32(v150);
            v150.i64[0] = vaddq_s32(v151, vcgtq_f32(vcvtq_f32_s32(v151), v150)).u64[0];
            v149 = *(v144 + 16 * (v150.i32[0] + v150.i32[1] * v142));
          }

          *(v11 + 16 * v15) = v149;
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

uint64_t HgcScrape::GetDOD(HgcScrape *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcScrape::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcScrape::HgcScrape(HgcScrape *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_2871E6C40;
  operator new();
}

void HgcScrape::~HgcScrape(HGNode *this)
{
  *this = &unk_2871E6C40;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C405DF52C91);
  }

  HGNode::~HGNode(this);
}

{
  HgcScrape::~HgcScrape(this);

  HGObject::operator delete(v1);
}

uint64_t HgcScrape::SetParameter(HgcScrape *this, uint64_t a2, __n128 a3, float a4, float a5, float a6, char *a7)
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
        if (v11[3].n128_f32[0] != 0.0 || v11[3].n128_f32[1] != 0.0 || v11[3].n128_f32[2] != 0.0 || v11[3].n128_f32[3] != a3.n128_f32[0])
        {
          v11[3].n128_u64[0] = 0;
          v11[3].n128_u32[3] = a3.n128_u32[0];
          a3.n128_f32[1] = a4;
          v11[3].n128_u32[2] = 0;
          a3.n128_u64[1] = __PAIR64__(LODWORD(a6), LODWORD(a5));
          v11[13] = a3;
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

float HgcScrape::GetParameter(HgcScrape *this, int a2, float *a3)
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
        *a3 = v7[52];
        a3[1] = v7[53];
        a3[2] = v7[54];
        v4 = v7 + 55;
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