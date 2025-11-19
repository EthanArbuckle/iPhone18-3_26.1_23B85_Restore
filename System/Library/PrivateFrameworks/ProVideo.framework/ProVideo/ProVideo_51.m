const char *GetBlendVividLightQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000089f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.5109999776, 1.000000000, -0.5000000000, 1.525878906e-05);\n    const half4 c1 = half4(-2.000000000, 0.000000000, 1.955999970, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 6.10350e-05h), 0.00000h, 1.00000h);\n    r1.xyz = pow(r1.xyz, c0.xxx);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r4.xyz = pow(r4.xyz, c0.xxx);\n    r5.xyz = c0.yyy - r1.xyz;\n    r5.xyz = c0.zzz*r5.xyz + r4.xyz;\n    r6.xyz = fmax(r4.xyz, c0.www);\n    r6.xyz = r5.xyz/r6.xyz;\n    r7.xyz = c0.zzz*r1.xyz + c0.yyy;\n    r7.xyz = r4.xyz - r7.xyz;\n    r8.xyz = c1.xxx*r4.xyz + -c1.xxx;\n    r9.xyz = fmax(r8.xyz, c0.www);\n    r9.xyz = r1.xyz/r9.xyz;\n    r1.xyz = half3(r4.xyz < -c0.zzz);\n    r5.xyz = half3(r5.xyz > c1.yyy);\n    r10.xyz = half3(r7.xyz < c1.yyy);\n    r1.xyz = fmin(r1.xyz, r5.xyz);\n    r1.xyz = r1.xyz*r6.xyz;\n    r4.xyz = half3(r4.xyz >= -c0.zzz);\n    r4.xyz = fmin(r4.xyz, r10.xyz);\n    r1.xyz = select(r1.xyz, r9.xyz, -r4.xyz < 0.00000h);\n    r1.xyz = select(-c1.xxx, r1.xyz, r7.xyz < 0.00000h);\n    r8.xyz = half3(r8.xyz <= c0.www);\n    r1.xyz = select(r1.xyz, c0.yyy, -r8.xyz < 0.00000h);\n    r5.xyz = half3(r5.xyz <= c0.www);\n    r1.xyz = clamp(select(r1.xyz, c1.yyy, -r5.xyz < 0.00000h), 0.00000h, 1.00000h);\n    r1.xyz = pow(r1.xyz, c1.zzz);\n    r1.w = c0.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=b0561d61:6a43df94:4ba5fca1:d10fa381\n//SIG=00400000:00000003:00000003:00000003:0002:0001:000b:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000087d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.5109999776, 1.000000000, -0.5000000000, 1.525878906e-05);\n    const float4 c1 = float4(-2.000000000, 0.000000000, 1.955999970, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = clamp(r0.xyz / fmax(r0.w, 1.00000e-06f), 0.00000f, 1.00000f);\n    r1.xyz = pow(r1.xyz, c0.xxx);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r4.xyz = pow(r4.xyz, c0.xxx);\n    r5.xyz = c0.yyy - r1.xyz;\n    r5.xyz = c0.zzz*r5.xyz + r4.xyz;\n    r6.xyz = fmax(r4.xyz, c0.www);\n    r6.xyz = r5.xyz/r6.xyz;\n    r7.xyz = c0.zzz*r1.xyz + c0.yyy;\n    r7.xyz = r4.xyz - r7.xyz;\n    r8.xyz = c1.xxx*r4.xyz + -c1.xxx;\n    r9.xyz = fmax(r8.xyz, c0.www);\n    r9.xyz = r1.xyz/r9.xyz;\n    r1.xyz = float3(r4.xyz < -c0.zzz);\n    r5.xyz = float3(r5.xyz > c1.yyy);\n    r10.xyz = float3(r7.xyz < c1.yyy);\n    r1.xyz = fmin(r1.xyz, r5.xyz);\n    r1.xyz = r1.xyz*r6.xyz;\n    r4.xyz = float3(r4.xyz >= -c0.zzz);\n    r4.xyz = fmin(r4.xyz, r10.xyz);\n    r1.xyz = select(r1.xyz, r9.xyz, -r4.xyz < 0.00000f);\n    r1.xyz = select(-c1.xxx, r1.xyz, r7.xyz < 0.00000f);\n    r8.xyz = float3(r8.xyz <= c0.www);\n    r1.xyz = select(r1.xyz, c0.yyy, -r8.xyz < 0.00000f);\n    r5.xyz = float3(r5.xyz <= c0.www);\n    r1.xyz = clamp(select(r1.xyz, c1.yyy, -r5.xyz < 0.00000f), 0.00000f, 1.00000f);\n    r1.xyz = pow(r1.xyz, c1.zzz);\n    r1.w = c0.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=ee4d2d45:03421f83:160cf487:36c5e88a\n//SIG=00000000:00000003:00000003:00000000:0002:0001:000b:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000095b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.5109999776, 1.000000000, -0.5000000000, 1.525878906e-05);\n    const mediump vec4 c1 = vec4(-2.000000000, 0.000000000, 1.955999970, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, r10;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = clamp(r0.xyz / max(r0.w, 1.00000e-06), vec3(0.00000), vec3(1.00000));\n    r1.xyz = pow(r1.xyz, c0.xxx);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r4.xyz = pow(r4.xyz, c0.xxx);\n    r5.xyz = c0.yyy - r1.xyz;\n    r5.xyz = c0.zzz*r5.xyz + r4.xyz;\n    r6.xyz = max(r4.xyz, c0.www);\n    r6.xyz = r5.xyz/r6.xyz;\n    r7.xyz = c0.zzz*r1.xyz + c0.yyy;\n    r7.xyz = r4.xyz - r7.xyz;\n    r8.xyz = c1.xxx*r4.xyz + -c1.xxx;\n    r9.xyz = max(r8.xyz, c0.www);\n    r9.xyz = r1.xyz/r9.xyz;\n    r1.xyz = vec3(lessThan(r4.xyz, -c0.zzz));\n    r5.xyz = vec3(greaterThan(r5.xyz, c1.yyy));\n    r10.xyz = vec3(lessThan(r7.xyz, c1.yyy));\n    r1.xyz = min(r1.xyz, r5.xyz);\n    r1.xyz = r1.xyz*r6.xyz;\n    r4.xyz = vec3(greaterThanEqual(r4.xyz, -c0.zzz));\n    r4.xyz = min(r4.xyz, r10.xyz);\n    r1.xyz = vec3(-r4.x < 0.00000 ? r9.x : r1.x, -r4.y < 0.00000 ? r9.y : r1.y, -r4.z < 0.00000 ? r9.z : r1.z);\n    r1.xyz = vec3(r7.x < 0.00000 ? r1.x : -c1.x, r7.y < 0.00000 ? r1.y : -c1.x, r7.z < 0.00000 ? r1.z : -c1.x);\n    r8.xyz = vec3(lessThanEqual(r8.xyz, c0.www));\n    r1.xyz = vec3(-r8.x < 0.00000 ? c0.y : r1.x, -r8.y < 0.00000 ? c0.y : r1.y, -r8.z < 0.00000 ? c0.y : r1.z);\n    r5.xyz = vec3(lessThanEqual(r5.xyz, c0.www));\n    r1.xyz = clamp(vec3(-r5.x < 0.00000 ? c1.y : r1.x, -r5.y < 0.00000 ? c1.y : r1.y, -r5.z < 0.00000 ? c1.y : r1.z), vec3(0.00000), vec3(1.00000));\n    r1.xyz = pow(r1.xyz, c1.zzz);\n    r1.w = c0.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=08cf9d02:159f02c2:339b4c54:2a4cd7e4\n//SIG=00000000:00000003:00000003:00000000:0002:0001:000b:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLinearLightProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000046d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(-2.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = c0.xxx*r2.xyz + c0.yyy;\n    r1.xyz = clamp(r1.xyz - r3.xyz, 0.00000h, 1.00000h);\n    r1.w = c0.y;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=9b374a4d:618dca95:31e3810e:f814ed70\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000444\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(-2.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = c0.xxx*r2.xyz + c0.yyy;\n    r1.xyz = clamp(r1.xyz - r3.xyz, 0.00000f, 1.00000f);\n    r1.w = c0.y;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=40b940f3:1f266e49:9dc37cd8:be76aebf\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-2.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = c0.xxx*r2.xyz + c0.yyy;\n    r1.xyz = clamp(r1.xyz - r3.xyz, vec3(0.00000), vec3(1.00000));\n    r1.w = c0.y;\n    r1.xyz = mix(r2.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=0e6d5794:be18b5e4:26de3756:d940281d\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLinearLightPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000054c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, -2.000000000, 1.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[1].xyz));\n    r3.xyz = c0.yyy*r3.xyz + c0.zzz;\n    r3.xyz = clamp(r1.xyz - r3.xyz, 0.00000h, 1.00000h);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[2].xyz));\n    r3.w = c0.z;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=b2adfa6d:5685d164:6c142e5d:d32c6f72\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000050e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, -2.000000000, 1.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_Params[1].xyz);\n    r3.xyz = c0.yyy*r3.xyz + c0.zzz;\n    r3.xyz = clamp(r1.xyz - r3.xyz, 0.00000f, 1.00000f);\n    r3.xyz = pow(r3.xyz, hg_Params[2].xyz);\n    r3.w = c0.z;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=e0ff3b42:d41f28be:204066d6:f911f41d\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000516\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, -2.000000000, 1.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal1.xyz);\n    r3.xyz = c0.yyy*r3.xyz + c0.zzz;\n    r3.xyz = clamp(r1.xyz - r3.xyz, vec3(0.00000), vec3(1.00000));\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal2.xyz);\n    r3.w = c0.z;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=d732ba98:c176e883:c77ce82c:831e5c3b\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLinearLightQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005b0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, -2.000000000);\n    const half4 c1 = half4(1.000000000, 1.955999970, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r3.xyz = c0.www*r3.xyz + c1.xxx;\n    r3.xyz = clamp(r1.xyz - r3.xyz, 0.00000h, 1.00000h);\n    r3.xyz = pow(r3.xyz, c1.yyy);\n    r3.w = c1.x;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r3), float4(r2.wwww));\n    return output;\n}\n//MD5=bbb69a9e:8cb57392:655ac6ea:e4cfe22c\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000589\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, -2.000000000);\n    const float4 c1 = float4(1.000000000, 1.955999970, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = fmax(r2.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r3.xyz = c0.www*r3.xyz + c1.xxx;\n    r3.xyz = clamp(r1.xyz - r3.xyz, 0.00000f, 1.00000f);\n    r3.xyz = pow(r3.xyz, c1.yyy);\n    r3.w = c1.x;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    output.color0 = mix(r0, r3, r2.wwww);\n    return output;\n}\n//MD5=3e7d2d63:4fc60f37:87f4c605:b892890b\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000539\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, -2.000000000);\n    const mediump vec4 c1 = vec4(1.000000000, 1.955999970, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = max(r2.xyz, c0.xxx);\n    r3.xyz = min(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r3.xyz = c0.www*r3.xyz + c1.xxx;\n    r3.xyz = clamp(r1.xyz - r3.xyz, vec3(0.00000), vec3(1.00000));\n    r3.xyz = pow(r3.xyz, c1.yyy);\n    r3.w = c1.x;\n    r3.xyz = mix(r2.xyz, r3.xyz, r0.www);\n    gl_FragColor = mix(r0, r3, r2.wwww);\n}\n//MD5=b90ad3a1:89e1e496:f631717e:cdf37be6\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendPinLightProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000054c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r2.xyz = r1.xyz / fmax(r1.w, 6.10350e-05h);\n    r3.xyz = r0.xyz + r0.xyz;\n    r4.xyz = half3(r3.xyz < r2.xyz);\n    r5.xyz = r3.xyz*r4.xyz;\n    r3.xyz = r3.xyz - c0.xxx;\n    r6.xyz = half3(r3.xyz >= r2.xyz);\n    r5.xyz = r3.xyz*r6.xyz + r5.xyz;\n    r4.xyz = r4.xyz + r6.xyz;\n    r4.xyz = half3(-r4.xyz >= c0.yyy);\n    r5.xyz = r2.xyz*r4.xyz + r5.xyz;\n    r5.w = c0.x;\n    r5.xyz = mix(r0.xyz, r5.xyz, r1.www);\n    output.color0 = mix(float4(r1), float4(r5), float4(r0.wwww));\n    return output;\n}\n//MD5=7df624e8:22d53432:86d605dd:9166256c\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000526\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r2.xyz = r1.xyz / fmax(r1.w, 1.00000e-06f);\n    r3.xyz = r0.xyz + r0.xyz;\n    r4.xyz = float3(r3.xyz < r2.xyz);\n    r5.xyz = r3.xyz*r4.xyz;\n    r3.xyz = r3.xyz - c0.xxx;\n    r6.xyz = float3(r3.xyz >= r2.xyz);\n    r5.xyz = r3.xyz*r6.xyz + r5.xyz;\n    r4.xyz = r4.xyz + r6.xyz;\n    r4.xyz = float3(-r4.xyz >= c0.yyy);\n    r5.xyz = r2.xyz*r4.xyz + r5.xyz;\n    r5.w = c0.x;\n    r5.xyz = mix(r0.xyz, r5.xyz, r1.www);\n    output.color0 = mix(r1, r5, r0.wwww);\n    return output;\n}\n//MD5=c465eebd:b5f1632e:9c876833:f8fadb07\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004ef\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r2.xyz = r1.xyz / max(r1.w, 1.00000e-06);\n    r3.xyz = r0.xyz + r0.xyz;\n    r4.xyz = vec3(lessThan(r3.xyz, r2.xyz));\n    r5.xyz = r3.xyz*r4.xyz;\n    r3.xyz = r3.xyz - c0.xxx;\n    r6.xyz = vec3(greaterThanEqual(r3.xyz, r2.xyz));\n    r5.xyz = r3.xyz*r6.xyz + r5.xyz;\n    r4.xyz = r4.xyz + r6.xyz;\n    r4.xyz = vec3(greaterThanEqual(-r4.xyz, c0.yyy));\n    r5.xyz = r2.xyz*r4.xyz + r5.xyz;\n    r5.w = c0.x;\n    r5.xyz = mix(r0.xyz, r5.xyz, r1.www);\n    gl_FragColor = mix(r1, r5, r0.wwww);\n}\n//MD5=1af7a367:c41788ce:15a4d906:3e42f215\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendPinLightPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000062b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[1].xyz));\n    r1.xyz = r1.xyz + r1.xyz;\n    r4.xyz = half3(r1.xyz < r3.xyz);\n    r5.xyz = r1.xyz*r4.xyz;\n    r1.xyz = r1.xyz - c0.yyy;\n    r6.xyz = half3(r1.xyz >= r3.xyz);\n    r5.xyz = r1.xyz*r6.xyz + r5.xyz;\n    r4.xyz = r4.xyz + r6.xyz;\n    r4.xyz = half3(-r4.xyz >= c0.xxx);\n    r5.xyz = r3.xyz*r4.xyz + r5.xyz;\n    r5.xyz = pow(r5.xyz, half3(hg_Params[2].xyz));\n    r5.w = c0.y;\n    r5.xyz = mix(r0.xyz, r5.xyz, r2.www);\n    output.color0 = mix(float4(r2), float4(r5), float4(r0.wwww));\n    return output;\n}\n//MD5=9af4ba9b:79bc497a:393fb1d5:90191490\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005f0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_Params[1].xyz);\n    r1.xyz = r1.xyz + r1.xyz;\n    r4.xyz = float3(r1.xyz < r3.xyz);\n    r5.xyz = r1.xyz*r4.xyz;\n    r1.xyz = r1.xyz - c0.yyy;\n    r6.xyz = float3(r1.xyz >= r3.xyz);\n    r5.xyz = r1.xyz*r6.xyz + r5.xyz;\n    r4.xyz = r4.xyz + r6.xyz;\n    r4.xyz = float3(-r4.xyz >= c0.xxx);\n    r5.xyz = r3.xyz*r4.xyz + r5.xyz;\n    r5.xyz = pow(r5.xyz, hg_Params[2].xyz);\n    r5.w = c0.y;\n    r5.xyz = mix(r0.xyz, r5.xyz, r2.www);\n    output.color0 = mix(r2, r5, r0.wwww);\n    return output;\n}\n//MD5=e85210a2:7c50ee70:49b88d81:88ef8ea2\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000611\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r3.xyz = max(r3.xyz, c0.xxx);\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal1.xyz);\n    r1.xyz = r1.xyz + r1.xyz;\n    r4.xyz = vec3(lessThan(r1.xyz, r3.xyz));\n    r5.xyz = r1.xyz*r4.xyz;\n    r1.xyz = r1.xyz - c0.yyy;\n    r6.xyz = vec3(greaterThanEqual(r1.xyz, r3.xyz));\n    r5.xyz = r1.xyz*r6.xyz + r5.xyz;\n    r4.xyz = r4.xyz + r6.xyz;\n    r4.xyz = vec3(greaterThanEqual(-r4.xyz, c0.xxx));\n    r5.xyz = r3.xyz*r4.xyz + r5.xyz;\n    r5.xyz = pow(r5.xyz, hg_ProgramLocal2.xyz);\n    r5.w = c0.y;\n    r5.xyz = mix(r0.xyz, r5.xyz, r2.www);\n    gl_FragColor = mix(r2, r5, r0.wwww);\n}\n//MD5=79e0a9a4:c9d6f62f:1ada738e:70249948\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendPinLightQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000006d5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const half4 c1 = half4(1.149999976, 1.955999970, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r1.xyz = r1.xyz + r1.xyz;\n    r4.xyz = half3(r1.xyz < r3.xyz);\n    r5.xyz = r1.xyz*r4.xyz;\n    r1.xyz = r1.xyz - c0.www;\n    r6.xyz = half3(r1.xyz >= r3.xyz);\n    r5.xyz = r1.xyz*r6.xyz + r5.xyz;\n    r4.xyz = r4.xyz + r6.xyz;\n    r4.xyz = half3(-r4.xyz >= c0.xxx);\n    r5.xyz = r3.xyz*r4.xyz + r5.xyz;\n    r5.xyz = fmax(r5.xyz, c0.xxx);\n    r5.xyz = fmin(r5.xyz, c1.xxx);\n    r5.xyz = pow(r5.xyz, c1.yyy);\n    r5.w = c0.w;\n    r5.xyz = mix(r0.xyz, r5.xyz, r2.www);\n    output.color0 = mix(float4(r2), float4(r5), float4(r0.wwww));\n    return output;\n}\n//MD5=ab0c5205:580e439b:b1f89457:0e406e50\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000006b1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const float4 c1 = float4(1.149999976, 1.955999970, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r3.xyz = fmax(r3.xyz, c0.xxx);\n    r3.xyz = fmin(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r1.xyz = r1.xyz + r1.xyz;\n    r4.xyz = float3(r1.xyz < r3.xyz);\n    r5.xyz = r1.xyz*r4.xyz;\n    r1.xyz = r1.xyz - c0.www;\n    r6.xyz = float3(r1.xyz >= r3.xyz);\n    r5.xyz = r1.xyz*r6.xyz + r5.xyz;\n    r4.xyz = r4.xyz + r6.xyz;\n    r4.xyz = float3(-r4.xyz >= c0.xxx);\n    r5.xyz = r3.xyz*r4.xyz + r5.xyz;\n    r5.xyz = fmax(r5.xyz, c0.xxx);\n    r5.xyz = fmin(r5.xyz, c1.xxx);\n    r5.xyz = pow(r5.xyz, c1.yyy);\n    r5.w = c0.w;\n    r5.xyz = mix(r0.xyz, r5.xyz, r2.www);\n    output.color0 = mix(r2, r5, r0.wwww);\n    return output;\n}\n//MD5=400277fe:8c48c377:5bc2b694:718f4f05\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000678\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 1.000000000);\n    const mediump vec4 c1 = vec4(1.149999976, 1.955999970, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r3.xyz = max(r3.xyz, c0.xxx);\n    r3.xyz = min(r3.xyz, c0.yyy);\n    r3.xyz = pow(r3.xyz, c0.zzz);\n    r1.xyz = r1.xyz + r1.xyz;\n    r4.xyz = vec3(lessThan(r1.xyz, r3.xyz));\n    r5.xyz = r1.xyz*r4.xyz;\n    r1.xyz = r1.xyz - c0.www;\n    r6.xyz = vec3(greaterThanEqual(r1.xyz, r3.xyz));\n    r5.xyz = r1.xyz*r6.xyz + r5.xyz;\n    r4.xyz = r4.xyz + r6.xyz;\n    r4.xyz = vec3(greaterThanEqual(-r4.xyz, c0.xxx));\n    r5.xyz = r3.xyz*r4.xyz + r5.xyz;\n    r5.xyz = max(r5.xyz, c0.xxx);\n    r5.xyz = min(r5.xyz, c1.xxx);\n    r5.xyz = pow(r5.xyz, c1.yyy);\n    r5.w = c0.w;\n    r5.xyz = mix(r0.xyz, r5.xyz, r2.www);\n    gl_FragColor = mix(r2, r5, r0.wwww);\n}\n//MD5=0c429fe7:c30c1e7d:f6c41481:35876db9\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendHardMixProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000008dd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 65535.00000, 1.525902189e-05, 0.003921568859);\n    const half4 c1 = half4(-0.7500000000, 3.039975672e-05, 1.003921628, 32895.00000);\n    const half4 c2 = half4(0.007751937956, 254.9999847, 0.000000000, 0.9960784316);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r2 = r2 / half4(fmax(r2.www, 6.10350e-05h), 1.);\n    r3.xyz = c0.xxx - r1.xyz;\n    r3.xyz = r3.xyz*c0.yyy;\n    r3.xyz = floor(r3.xyz);\n    r3.xyz = r3.xyz*c0.zzz;\n    r4.xyz = -r1.xyz*c0.www + r3.xyz;\n    r4.xyz = c1.xxx*c1.yyy + r4.xyz;\n    r5.xyz = half3(r2.xyz >= r4.xyz);\n    r3.xyz = r3.xyz*c1.zzz;\n    r6.xyz = half3(r2.xyz < r3.xyz);\n    r4.xyz = r2.xyz - r4.xyz;\n    r4.xyz = r4.xyz*c1.www;\n    r4.xyz = floor(r4.xyz);\n    r4.xyz = c2.xxx*r4.xyz;\n    r6.xyz = fmin(r5.xyz, r6.xyz);\n    r4.xyz = r4.xyz*r6.xyz;\n    r6.xyz = half3(r2.xyz >= r3.xyz);\n    r6.xyz = r6.xyz + r4.xyz;\n    r3.xyz = fmin(r3.xyz, c0.xxx);\n    r4.xyz = half3(r1.xyz < c0.www);\n    r4.xyz = fmin(r4.xyz, r5.xyz);\n    r5.xyz = r1.xyz*c2.yyy;\n    r5.xyz = r5.xyz*r4.xyz;\n    r5.xyz = fmin(r5.xyz, r6.xyz);\n    r4.xyz = half3(-r4.xyz >= c2.zzz);\n    r6.xyz = r6.xyz*r4.xyz + r5.xyz;\n    r4.xyz = half3(r1.xyz >= c2.www);\n    r3.xyz = half3(r2.xyz < r3.xyz);\n    r4.xyz = fmin(r4.xyz, r3.xyz);\n    r1.xyz = r1.xyz - c2.www;\n    r1.xyz = r1.xyz*c2.yyy;\n    r1.xyz = r1.xyz*r4.xyz;\n    r6.xyz = fmax(r1.xyz, r6.xyz);\n    r6.w = c0.x;\n    r6.xyz = mix(r2.xyz, r6.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r6), float4(r2.wwww));\n    return output;\n}\n//MD5=6abbb958:d4a3d475:7d2c51bc:e6abde98\n//SIG=00400000:00000003:00000003:00000003:0003:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000008bf\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 65535.00000, 1.525902189e-05, 0.003921568859);\n    const float4 c1 = float4(-0.7500000000, 3.039975672e-05, 1.003921628, 32895.00000);\n    const float4 c2 = float4(0.007751937956, 254.9999847, 0.000000000, 0.9960784316);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r2 = r2 / float4(fmax(r2.www, 1.00000e-06f), 1.);\n    r3.xyz = c0.xxx - r1.xyz;\n    r3.xyz = r3.xyz*c0.yyy;\n    r3.xyz = floor(r3.xyz);\n    r3.xyz = r3.xyz*c0.zzz;\n    r4.xyz = -r1.xyz*c0.www + r3.xyz;\n    r4.xyz = c1.xxx*c1.yyy + r4.xyz;\n    r5.xyz = float3(r2.xyz >= r4.xyz);\n    r3.xyz = r3.xyz*c1.zzz;\n    r6.xyz = float3(r2.xyz < r3.xyz);\n    r4.xyz = r2.xyz - r4.xyz;\n    r4.xyz = r4.xyz*c1.www;\n    r4.xyz = floor(r4.xyz);\n    r4.xyz = c2.xxx*r4.xyz;\n    r6.xyz = fmin(r5.xyz, r6.xyz);\n    r4.xyz = r4.xyz*r6.xyz;\n    r6.xyz = float3(r2.xyz >= r3.xyz);\n    r6.xyz = r6.xyz + r4.xyz;\n    r3.xyz = fmin(r3.xyz, c0.xxx);\n    r4.xyz = float3(r1.xyz < c0.www);\n    r4.xyz = fmin(r4.xyz, r5.xyz);\n    r5.xyz = r1.xyz*c2.yyy;\n    r5.xyz = r5.xyz*r4.xyz;\n    r5.xyz = fmin(r5.xyz, r6.xyz);\n    r4.xyz = float3(-r4.xyz >= c2.zzz);\n    r6.xyz = r6.xyz*r4.xyz + r5.xyz;\n    r4.xyz = float3(r1.xyz >= c2.www);\n    r3.xyz = float3(r2.xyz < r3.xyz);\n    r4.xyz = fmin(r4.xyz, r3.xyz);\n    r1.xyz = r1.xyz - c2.www;\n    r1.xyz = r1.xyz*c2.yyy;\n    r1.xyz = r1.xyz*r4.xyz;\n    r6.xyz = fmax(r1.xyz, r6.xyz);\n    r6.w = c0.x;\n    r6.xyz = mix(r2.xyz, r6.xyz, r0.www);\n    output.color0 = mix(r0, r6, r2.wwww);\n    return output;\n}\n//MD5=c1e965ac:25bf6706:05b8ec7b:4093af55\n//SIG=00000000:00000003:00000003:00000000:0003:0001:0007:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000008b4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 65535.00000, 1.525902189e-05, 0.003921568859);\n    const mediump vec4 c1 = vec4(-0.7500000000, 3.039975672e-05, 1.003921628, 32895.00000);\n    const mediump vec4 c2 = vec4(0.007751937956, 254.9999847, 0.000000000, 0.9960784316);\n    mediump vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r2 = r2 / vec4(max(r2.www, 1.00000e-06), 1.);\n    r3.xyz = c0.xxx - r1.xyz;\n    r3.xyz = r3.xyz*c0.yyy;\n    r3.xyz = floor(r3.xyz);\n    r3.xyz = r3.xyz*c0.zzz;\n    r4.xyz = -r1.xyz*c0.www + r3.xyz;\n    r4.xyz = c1.xxx*c1.yyy + r4.xyz;\n    r5.xyz = vec3(greaterThanEqual(r2.xyz, r4.xyz));\n    r3.xyz = r3.xyz*c1.zzz;\n    r6.xyz = vec3(lessThan(r2.xyz, r3.xyz));\n    r4.xyz = r2.xyz - r4.xyz;\n    r4.xyz = r4.xyz*c1.www;\n    r4.xyz = floor(r4.xyz);\n    r4.xyz = c2.xxx*r4.xyz;\n    r6.xyz = min(r5.xyz, r6.xyz);\n    r4.xyz = r4.xyz*r6.xyz;\n    r6.xyz = vec3(greaterThanEqual(r2.xyz, r3.xyz));\n    r6.xyz = r6.xyz + r4.xyz;\n    r3.xyz = min(r3.xyz, c0.xxx);\n    r4.xyz = vec3(lessThan(r1.xyz, c0.www));\n    r4.xyz = min(r4.xyz, r5.xyz);\n    r5.xyz = r1.xyz*c2.yyy;\n    r5.xyz = r5.xyz*r4.xyz;\n    r5.xyz = min(r5.xyz, r6.xyz);\n    r4.xyz = vec3(greaterThanEqual(-r4.xyz, c2.zzz));\n    r6.xyz = r6.xyz*r4.xyz + r5.xyz;\n    r4.xyz = vec3(greaterThanEqual(r1.xyz, c2.www));\n    r3.xyz = vec3(lessThan(r2.xyz, r3.xyz));\n    r4.xyz = min(r4.xyz, r3.xyz);\n    r1.xyz = r1.xyz - c2.www;\n    r1.xyz = r1.xyz*c2.yyy;\n    r1.xyz = r1.xyz*r4.xyz;\n    r6.xyz = max(r1.xyz, r6.xyz);\n    r6.w = c0.x;\n    r6.xyz = mix(r2.xyz, r6.xyz, r0.www);\n    gl_FragColor = mix(r0, r6, r2.wwww);\n}\n//MD5=c83ffaba:f8e1e893:06e2d049:b3453f56\n//SIG=00000000:00000003:00000003:00000000:0003:0001:0007:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendHardMixPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005ae\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r0.xyz = clamp(r1.xyz, 0.00000h, 1.00000h);\n    r0.xyz = pow(r0.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = clamp(r2.xyz / fmax(r2.w, 6.10350e-05h), 0.00000h, 1.00000h);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[1].xyz));\n    r4.xyz = c0.xxx - r3.xyz;\n    r4.xyz = half3(r4.xyz <= r0.xyz);\n    r3.xyz = half3(r3.xyz <= c0.yyy);\n    r5.xyz = half3(r0.xyz >= c0.xxx);\n    r3.xyz = fmin(r3.xyz, r5.xyz);\n    r3.xyz = select(r4.xyz, c0.yyy, -r3.xyz < 0.00000h);\n    r3.w = c0.x;\n    r3.xyz = mix(r1.xyz, r3.xyz, r2.www);\n    output.color0 = mix(float4(r2), float4(r3), float4(r0.wwww));\n    return output;\n}\n//MD5=cbd2f72c:10e44047:4a5970ce:dbe69896\n//SIG=00400000:00000003:00000003:00000003:0001:0002:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000579\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r0.xyz = clamp(r1.xyz, 0.00000f, 1.00000f);\n    r0.xyz = pow(r0.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = clamp(r2.xyz / fmax(r2.w, 1.00000e-06f), 0.00000f, 1.00000f);\n    r3.xyz = pow(r3.xyz, hg_Params[1].xyz);\n    r4.xyz = c0.xxx - r3.xyz;\n    r4.xyz = float3(r4.xyz <= r0.xyz);\n    r3.xyz = float3(r3.xyz <= c0.yyy);\n    r5.xyz = float3(r0.xyz >= c0.xxx);\n    r3.xyz = fmin(r3.xyz, r5.xyz);\n    r3.xyz = select(r4.xyz, c0.yyy, -r3.xyz < 0.00000f);\n    r3.w = c0.x;\n    r3.xyz = mix(r1.xyz, r3.xyz, r2.www);\n    output.color0 = mix(r2, r3, r0.wwww);\n    return output;\n}\n//MD5=9e7d49d5:be156bfe:8f123f5e:66202703\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005be\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r0.xyz = clamp(r1.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = pow(r0.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r3.xyz = clamp(r2.xyz / max(r2.w, 1.00000e-06), vec3(0.00000), vec3(1.00000));\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal1.xyz);\n    r4.xyz = c0.xxx - r3.xyz;\n    r4.xyz = vec3(lessThanEqual(r4.xyz, r0.xyz));\n    r3.xyz = vec3(lessThanEqual(r3.xyz, c0.yyy));\n    r5.xyz = vec3(greaterThanEqual(r0.xyz, c0.xxx));\n    r3.xyz = min(r3.xyz, r5.xyz);\n    r3.xyz = vec3(-r3.x < 0.00000 ? c0.y : r4.x, -r3.y < 0.00000 ? c0.y : r4.y, -r3.z < 0.00000 ? c0.y : r4.z);\n    r3.w = c0.x;\n    r3.xyz = mix(r1.xyz, r3.xyz, r2.www);\n    gl_FragColor = mix(r2, r3, r0.wwww);\n}\n//MD5=50f562ff:ef85c03c:af2578db:ac8cd17a\n//SIG=00000000:00000003:00000003:00000000:0001:0002:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendHardMixQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005b7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.5109999776, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r0.xyz = clamp(r1.xyz, 0.00000h, 1.00000h);\n    r2.xyz = r0.xyz;\n    r2.xyz = pow(r2.xyz, c0.xxx);\n    r0.xyz = r2.xyz;\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = clamp(r2.xyz / fmax(r2.w, 6.10350e-05h), 0.00000h, 1.00000h);\n    r3.xyz = pow(r3.xyz, c0.xxx);\n    r4.xyz = c0.yyy - r3.xyz;\n    r4.xyz = half3(r4.xyz <= r0.xyz);\n    r3.xyz = half3(r3.xyz <= c0.zzz);\n    r5.xyz = half3(r0.xyz >= c0.yyy);\n    r3.xyz = fmin(r3.xyz, r5.xyz);\n    r3.xyz = select(r4.xyz, c0.zzz, -r3.xyz < 0.00000h);\n    r3.w = c0.y;\n    r3.xyz = mix(r1.xyz, r3.xyz, r2.www);\n    output.color0 = mix(float4(r2), float4(r3), float4(r0.wwww));\n    return output;\n}\n//MD5=77b52b70:424956c9:4d640b7c:4911f1d0\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000590\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.5109999776, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r0.xyz = clamp(r1.xyz, 0.00000f, 1.00000f);\n    r2.xyz = r0.xyz;\n    r2.xyz = pow(r2.xyz, c0.xxx);\n    r0.xyz = r2.xyz;\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r3.xyz = clamp(r2.xyz / fmax(r2.w, 1.00000e-06f), 0.00000f, 1.00000f);\n    r3.xyz = pow(r3.xyz, c0.xxx);\n    r4.xyz = c0.yyy - r3.xyz;\n    r4.xyz = float3(r4.xyz <= r0.xyz);\n    r3.xyz = float3(r3.xyz <= c0.zzz);\n    r5.xyz = float3(r0.xyz >= c0.yyy);\n    r3.xyz = fmin(r3.xyz, r5.xyz);\n    r3.xyz = select(r4.xyz, c0.zzz, -r3.xyz < 0.00000f);\n    r3.w = c0.y;\n    r3.xyz = mix(r1.xyz, r3.xyz, r2.www);\n    output.color0 = mix(r2, r3, r0.wwww);\n    return output;\n}\n//MD5=ca1350d1:fc2694e6:6e384c30:3a8ef345\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000005a6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.5109999776, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r0.xyz = clamp(r1.xyz, vec3(0.00000), vec3(1.00000));\n    r2.xyz = r0.xyz;\n    r2.xyz = pow(r2.xyz, c0.xxx);\n    r0.xyz = r2.xyz;\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r3.xyz = clamp(r2.xyz / max(r2.w, 1.00000e-06), vec3(0.00000), vec3(1.00000));\n    r3.xyz = pow(r3.xyz, c0.xxx);\n    r4.xyz = c0.yyy - r3.xyz;\n    r4.xyz = vec3(lessThanEqual(r4.xyz, r0.xyz));\n    r3.xyz = vec3(lessThanEqual(r3.xyz, c0.zzz));\n    r5.xyz = vec3(greaterThanEqual(r0.xyz, c0.yyy));\n    r3.xyz = min(r3.xyz, r5.xyz);\n    r3.xyz = vec3(-r3.x < 0.00000 ? c0.z : r4.x, -r3.y < 0.00000 ? c0.z : r4.y, -r3.z < 0.00000 ? c0.z : r4.z);\n    r3.w = c0.y;\n    r3.xyz = mix(r1.xyz, r3.xyz, r2.www);\n    gl_FragColor = mix(r2, r3, r0.wwww);\n}\n//MD5=d10b6575:504b3910:06449ca6:e5a9005d\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendDifferenceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000038d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r1 = r1 + r0;\n    r0 = r2 - r3;\n    r1 = r1 - r2;\n    r1.xyz = r1.xyz - r3.xyz;\n    output.color0 = float4(r1) + float4(fabs(r0));\n    return output;\n}\n//MD5=28640d6b:a7f4cbd7:1398d5ad:4f2b97e5\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000369\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r1 = r1 + r0;\n    r0 = r2 - r3;\n    r1 = r1 - r2;\n    r1.xyz = r1.xyz - r3.xyz;\n    output.color0 = r1 + fabs(r0);\n    return output;\n}\n//MD5=78eeb002:cd99131f:366f4560:2b2f0811\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0004:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000312\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r1 = r1 + r0;\n    r0 = r2 - r3;\n    r1 = r1 - r2;\n    r1.xyz = r1.xyz - r3.xyz;\n    gl_FragColor = r1 + abs(r0);\n}\n//MD5=167e3881:cda035d5:2b7bb7d9:07a634d1\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0004:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendDifferencePOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000510\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, half3(hg_Params[1].xyz));\n    r1.xyz = r1.xyz - r4.xyz;\n    r1.xyz = pow(fabs(r1.xyz), half3(hg_Params[2].xyz));\n    r1.w = c0.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=832d1e12:7e146cc6:ed9fa6b8:960b6859\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004d1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, hg_Params[1].xyz);\n    r1.xyz = r1.xyz - r4.xyz;\n    r1.xyz = pow(fabs(r1.xyz), hg_Params[2].xyz);\n    r1.w = c0.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=95e972db:78c79115:c2255fa8:a9b642e4\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004d0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = max(r3.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, hg_ProgramLocal1.xyz);\n    r1.xyz = r1.xyz - r4.xyz;\n    r1.xyz = pow(abs(r1.xyz), hg_ProgramLocal2.xyz);\n    r1.w = c0.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=844141b7:6f0dff52:1ccf774d:e6df7bdf\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendDifferenceQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000597\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, 1.149999976);\n    const half4 c1 = half4(1.955999970, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = fmin(r4.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r1.xyz = r1.xyz - r4.xyz;\n    r1.xyz = fmin(fabs(r1.xyz), c0.www);\n    r1.xyz = pow(r1.xyz, c1.xxx);\n    r1.w = c1.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r1), float4(r2.wwww));\n    return output;\n}\n//MD5=7e88c717:604f97d1:354f9a24:f0876eac\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000056f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, 1.149999976);\n    const float4 c1 = float4(1.955999970, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = fmin(r4.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r1.xyz = r1.xyz - r4.xyz;\n    r1.xyz = fmin(fabs(r1.xyz), c0.www);\n    r1.xyz = pow(r1.xyz, c1.xxx);\n    r1.w = c1.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    output.color0 = mix(r0, r1, r2.wwww);\n    return output;\n}\n//MD5=010388f2:1c3aea3e:579d0770:458ba830\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000515\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, 1.149999976);\n    const mediump vec4 c1 = vec4(1.955999970, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = max(r3.xyz, c0.xxx);\n    r4.xyz = min(r4.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r1.xyz = r1.xyz - r4.xyz;\n    r1.xyz = min(abs(r1.xyz), c0.www);\n    r1.xyz = pow(r1.xyz, c1.xxx);\n    r1.w = c1.y;\n    r1.xyz = mix(r3.xyz, r1.xyz, r0.www);\n    gl_FragColor = mix(r0, r1, r2.wwww);\n}\n//MD5=f9e8be4c:9ffa5667:af0daeb8:121866ac\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendExclusionProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000406\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = r0*r1;\n    r4 = c0.xxxx*r4 + r2;\n    r4 = r4 + r3;\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1.xyz = r1.xyz - r3.xyz;\n    output.color0 = float4(r1) + float4(r4);\n    return output;\n}\n//MD5=1be1e8b8:4f83dbba:c5944c1a:4d913d97\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = r0*r1;\n    r4 = c0.xxxx*r4 + r2;\n    r4 = r4 + r3;\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1.xyz = r1.xyz - r3.xyz;\n    output.color0 = r1 + r4;\n    return output;\n}\n//MD5=0f532412:67fd3d19:e6e32c9a:f2d80e5e\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0005:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000393\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(-2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2, r3, r4;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = r1*r0.wwww;\n    r3 = r0*r1.wwww;\n    r4 = r0*r1;\n    r4 = c0.xxxx*r4 + r2;\n    r4 = r4 + r3;\n    r1 = r1 + r0;\n    r1 = r1 - r2;\n    r1.xyz = r1.xyz - r3.xyz;\n    gl_FragColor = r1 + r4;\n}\n//MD5=7c7ef45c:2a9b315f:68065765:88d684a8\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0005:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendExclusionPOWProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000550\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, -2.000000000, 1.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[1].xyz));\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, half3(hg_Params[1].xyz));\n    r5.xyz = r1.xyz + r4.xyz;\n    r4.xyz = r1.xyz*r4.xyz;\n    r4.xyz = c0.yyy*r4.xyz + r5.xyz;\n    r4.xyz = pow(r4.xyz, half3(hg_Params[2].xyz));\n    r4.w = c0.z;\n    r4.xyz = mix(r3.xyz, r4.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r4), float4(r2.wwww));\n    return output;\n}\n//MD5=9ada872c:69cf577f:d04e3da1:b5571db0\n//SIG=00400000:00000003:00000003:00000003:0001:0003:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000511\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, -2.000000000, 1.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[1].xyz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, hg_Params[1].xyz);\n    r5.xyz = r1.xyz + r4.xyz;\n    r4.xyz = r1.xyz*r4.xyz;\n    r4.xyz = c0.yyy*r4.xyz + r5.xyz;\n    r4.xyz = pow(r4.xyz, hg_Params[2].xyz);\n    r4.w = c0.z;\n    r4.xyz = mix(r3.xyz, r4.xyz, r0.www);\n    output.color0 = mix(r0, r4, r2.wwww);\n    return output;\n}\n//MD5=ae6728af:869ecc44:7da2cc97:129b83d9\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000511\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, -2.000000000, 1.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal1.xyz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = max(r3.xyz, c0.xxx);\n    r4.xyz = pow(r4.xyz, hg_ProgramLocal1.xyz);\n    r5.xyz = r1.xyz + r4.xyz;\n    r4.xyz = r1.xyz*r4.xyz;\n    r4.xyz = c0.yyy*r4.xyz + r5.xyz;\n    r4.xyz = pow(r4.xyz, hg_ProgramLocal2.xyz);\n    r4.w = c0.z;\n    r4.xyz = mix(r3.xyz, r4.xyz, r0.www);\n    gl_FragColor = mix(r0, r4, r2.wwww);\n}\n//MD5=aae0a4a9:2a6b5046:aca59177:262e0a3c\n//SIG=00000000:00000003:00000003:00000000:0001:0003:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendExclusionQTProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.330000043, 0.5109999776, -2.000000000);\n    const half4 c1 = half4(1.149999976, 1.955999970, 1.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*half4(hg_Params[0]);\n    r3.xyz = r2.xyz / fmax(r2.w, 6.10350e-05h);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = fmin(r4.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r5.xyz = r1.xyz + r4.xyz;\n    r4.xyz = r1.xyz*r4.xyz;\n    r4.xyz = c0.www*r4.xyz + r5.xyz;\n    r4.xyz = fmax(r4.xyz, c0.xxx);\n    r4.xyz = fmin(r4.xyz, c1.xxx);\n    r4.xyz = pow(r4.xyz, c1.yyy);\n    r4.w = c1.z;\n    r4.xyz = mix(r3.xyz, r4.xyz, r0.www);\n    output.color0 = mix(float4(r0), float4(r4), float4(r2.wwww));\n    return output;\n}\n//MD5=453c5bfe:3a2b37d9:78df4aea:008674ec\n//SIG=00400000:00000003:00000003:00000003:0002:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005d2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.330000043, 0.5109999776, -2.000000000);\n    const float4 c1 = float4(1.149999976, 1.955999970, 1.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r1.xyz = fmax(r1.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = r2*hg_Params[0];\n    r3.xyz = r2.xyz / fmax(r2.w, 1.00000e-06f);\n    r4.xyz = fmax(r3.xyz, c0.xxx);\n    r4.xyz = fmin(r4.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r5.xyz = r1.xyz + r4.xyz;\n    r4.xyz = r1.xyz*r4.xyz;\n    r4.xyz = c0.www*r4.xyz + r5.xyz;\n    r4.xyz = fmax(r4.xyz, c0.xxx);\n    r4.xyz = fmin(r4.xyz, c1.xxx);\n    r4.xyz = pow(r4.xyz, c1.yyy);\n    r4.w = c1.z;\n    r4.xyz = mix(r3.xyz, r4.xyz, r0.www);\n    output.color0 = mix(r0, r4, r2.wwww);\n    return output;\n}\n//MD5=0a9ccd72:b47ae297:d4668882:ade8d5d9\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0006:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000578\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.330000043, 0.5109999776, -2.000000000);\n    const mediump vec4 c1 = vec4(1.149999976, 1.955999970, 1.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3, r4, r5;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r1.xyz = max(r1.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r2 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = r2*hg_ProgramLocal0;\n    r3.xyz = r2.xyz / max(r2.w, 1.00000e-06);\n    r4.xyz = max(r3.xyz, c0.xxx);\n    r4.xyz = min(r4.xyz, c0.yyy);\n    r4.xyz = pow(r4.xyz, c0.zzz);\n    r5.xyz = r1.xyz + r4.xyz;\n    r4.xyz = r1.xyz*r4.xyz;\n    r4.xyz = c0.www*r4.xyz + r5.xyz;\n    r4.xyz = max(r4.xyz, c0.xxx);\n    r4.xyz = min(r4.xyz, c1.xxx);\n    r4.xyz = pow(r4.xyz, c1.yyy);\n    r4.w = c1.z;\n    r4.xyz = mix(r3.xyz, r4.xyz, r0.www);\n    gl_FragColor = mix(r0, r4, r2.wwww);\n}\n//MD5=d59a60b1:f04eab3d:b9d735e0:71fcfd2a\n//SIG=00000000:00000003:00000003:00000000:0002:0001:0006:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendStencilAlphaProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000030c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = r0.w*half(hg_Params[0].w);\n    output.color0 = float4(r0.xxxx)*float4(r1);\n    return output;\n}\n//MD5=01f634c8:f7748912:786afaf7:eb888de8\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ea\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.w = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = r0.w*hg_Params[0].w;\n    output.color0 = r0.xxxx*r1;\n    return output;\n}\n//MD5=e1ec9237:e9f18bbe:72542b57:68628fe1\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000294\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.w = texture2D(hg_Texture1, hg_TexCoord1.xy).w;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = r0.w*hg_ProgramLocal0.w;\n    gl_FragColor = r0.xxxx*r1;\n}\n//MD5=b08281d5:65ec7cc3:7ffdfd68:7096132c\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendStencilLumaProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000038b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.3000000119, 0.5899999738, 0.1099999994, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0.xyz, c0.xyz);\n    output.color0 = float4(r0.xxxx)*float4(r1);\n    return output;\n}\n//MD5=cb176b52:a0693719:b9ea283b:0759c643\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000369\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.3000000119, 0.5899999738, 0.1099999994, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r0.xyz = r0.xyz*hg_Params[0].xyz;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0.xyz, c0.xyz);\n    output.color0 = r0.xxxx*r1;\n    return output;\n}\n//MD5=d4787518:3c8759ce:80b33876:1f8c5248\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000318\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.3000000119, 0.5899999738, 0.1099999994, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xyz = texture2D(hg_Texture1, hg_TexCoord1.xy).xyz;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = dot(r0.xyz, c0.xyz);\n    gl_FragColor = r0.xxxx*r1;\n}\n//MD5=23b25b93:d546e82f:8b4aad79:2f25e687\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendSilhouetteAlphaProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000031a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r0.x = -r0.w*half(hg_Params[0].w);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0.xxxx)*float4(r1) + float4(r1);\n    return output;\n}\n//MD5=9639d417:186a031c:6b3aa441:ce5f8528\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002f0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.w = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r0.x = -r0.w*hg_Params[0].w;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0.xxxx*r1 + r1;\n    return output;\n}\n//MD5=2ff209aa:1783dfd7:95f3f37d:6ad71923\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000029a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.w = texture2D(hg_Texture1, hg_TexCoord1.xy).w;\n    r0.x = -r0.w*hg_ProgramLocal0.w;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0.xxxx*r1 + r1;\n}\n//MD5=19e8d72e:ec77a61e:4a0e0cff:0c6215d9\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendSilhouetteLumaProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003e6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.3000000119, 0.5899999738, 0.1099999994, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.xyz = r0.xyz / fmax(r0.w, 6.10350e-05h);\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz);\n    r0.x = clamp(dot(r0.xyz, c0.xyz), 0.00000h, 1.00000h);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = c0.w - r0.x;\n    output.color0 = float4(r0.xxxx)*float4(r1);\n    return output;\n}\n//MD5=9e7e6220:f1380266:ad59740d:425602c4\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003c4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.3000000119, 0.5899999738, 0.1099999994, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0.xyz = r0.xyz / fmax(r0.w, 1.00000e-06f);\n    r0.xyz = r0.xyz*hg_Params[0].xyz;\n    r0.x = clamp(dot(r0.xyz, c0.xyz), 0.00000f, 1.00000f);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = c0.w - r0.x;\n    output.color0 = r0.xxxx*r1;\n    return output;\n}\n//MD5=fb2eb236:cf333580:86a36a28:2a089a43\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000036c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.3000000119, 0.5899999738, 0.1099999994, 1.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0.xyz = r0.xyz / max(r0.w, 1.00000e-06);\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz;\n    r0.x = clamp(dot(r0.xyz, c0.xyz), 0.00000, 1.00000);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = c0.w - r0.x;\n    gl_FragColor = r0.xxxx*r1;\n}\n//MD5=e2bac880:05dd91d1:f2a01b5a:12c55cfd\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendBehindProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000037c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2 = c0.xxxx - r0.wwww;\n    output.color0 = float4(r1)*float4(r2) + float4(r0);\n    return output;\n}\n//MD5=c58d73cf:5abaf669:0ed24989:47f4d1f7\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000352\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2 = c0.xxxx - r0.wwww;\n    output.color0 = r1*r2 + r0;\n    return output;\n}\n//MD5=02fd7083:75fd7153:81b391cd:51351952\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000301\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2 = c0.xxxx - r0.wwww;\n    gl_FragColor = r1*r2 + r0;\n}\n//MD5=82fdf0d8:1de86e49:9e296160:488420c6\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendAlphaAddProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000426\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*half4(hg_Params[0]);\n    r2.x = c0.x - r1.w;\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r2.x = fmin(r0.w, r2.x);\n    output.color0.xyz = float3(r2.xxx)*float3(r0.xyz) + float3(r1.xyz);\n    output.color0.w = clamp(float(r0.w) + float(r1.w), 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=f90028c9:ac63ee31:0582ec0a:01d4319f\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = r1*hg_Params[0];\n    r2.x = c0.x - r1.w;\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r2.x = fmin(r0.w, r2.x);\n    output.color0.xyz = r2.xxx*r0.xyz + r1.xyz;\n    output.color0.w = clamp(r0.w + r1.w, 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=c0565429:874f6bf5:70c5b692:ec699c87\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000393\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = r1*hg_ProgramLocal0;\n    r2.x = c0.x - r1.w;\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r2.x = min(r0.w, r2.x);\n    gl_FragColor.xyz = r2.xxx*r0.xyz + r1.xyz;\n    gl_FragColor.w = clamp(r0.w + r1.w, 0.00000, 1.00000);\n}\n//MD5=519e231c:8b7219f5:a42034e9:24325591\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendLuminescentPremulProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*half4(hg_Params[0]);\n    r1 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.x = c0.x - r0.w;\n    r2 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = float4(r0.xxxx)*float4(r2) + float4(r1);\n    return output;\n}\n//MD5=4132c413:bcc37b85:4b94d3c8:0580063c\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000389\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r0 = r0*hg_Params[0];\n    r1 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.x = c0.x - r0.w;\n    r2 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = r0.xxxx*r2 + r1;\n    return output;\n}\n//MD5=c94102b6:ee9b78d3:499e2062:7f0e1fd3\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000331\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r0 = r0*hg_ProgramLocal0;\n    r1 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.x = c0.x - r0.w;\n    r2 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = r0.xxxx*r2 + r1;\n}\n//MD5=9933e453:22266e50:58e77a45:3ff8c33e\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendMinStraightProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = fmin(float4(r1), float4(r0));\n    return output;\n}\n//MD5=e422aa77:fd499568:6292261a:786077e6\n//SIG=00400000:00000003:00000003:00000003:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002c8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = fmin(r1, r0);\n    return output;\n}\n//MD5=c2060382:fef5a3d6:92ed6008:7e348a1a\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000245\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = min(r1, r0);\n}\n//MD5=1f97ac0b:acd5be17:20490fe1:20b20394\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendMaxStraightProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = fmax(float4(r1), float4(r0));\n    return output;\n}\n//MD5=03194d2d:d20b76be:1b007e7e:6478a81a\n//SIG=00400000:00000003:00000003:00000003:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002c8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = fmax(r1, r0);\n    return output;\n}\n//MD5=171e71e1:20e2dcdc:551a9dc4:7e3e5749\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000245\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = max(r1, r0);\n}\n//MD5=e85b8e93:7e9743a9:dad95728:be4f740e\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendSubtractStraightProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002fb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = clamp(float4(r1) - float4(r0), 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=92942aee:6402e443:1f8f2364:d3f2b823\n//SIG=00400000:00000003:00000003:00000003:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002de\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    output.color0 = clamp(r1 - r0, 0.00000f, 1.00000f);\n    return output;\n}\n//MD5=c7624c53:65bc4fcc:16ba9d4f:cb0cc5f3\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000266\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    gl_FragColor = clamp(r1 - r0, vec4(0.00000), vec4(1.00000));\n}\n//MD5=a985dc25:2f53039b:0982af3e:9557b499\n//SIG=00000000:00000003:00000003:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetBlendReplaceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000267\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    FragmentOut output;\n\n    output.color0 = (float4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    return output;\n}\n//MD5=d0da0c39:be03e007:4040bbc7:73e91771\n//SIG=00400000:00000002:00000002:00000002:0000:0000:0000:0000:0000:0000:0004:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000260\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    FragmentOut output;\n\n    output.color0 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    return output;\n}\n//MD5=691a6891:f45ce721:5a5c5bc2:06c9787e\n//SIG=00000000:00000002:00000002:00000000:0000:0000:0000:0000:0000:0000:0004:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001bb\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n\n    gl_FragColor = texture2D(hg_Texture1, hg_TexCoord1.xy);\n}\n//MD5=a4b83d08:d3b1ca52:9cad844e:b351838f\n//SIG=00000000:00000002:00000002:00000000:0000:0000:0000:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDB0CC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB0CF4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB0CECLL);
}

void sub_25FDB0F90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB0FC4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB0FBCLL);
}

void sub_25FDB1260(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB1294(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB128CLL);
}

void sub_25FDB1530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB1564(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB155CLL);
}

void sub_25FDB1800(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB1834(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB182CLL);
}

void sub_25FDB1AD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB1B04(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB1AFCLL);
}

void sub_25FDB1DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB1DD4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB1DCCLL);
}

void sub_25FDB2070(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB20A4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB209CLL);
}

void sub_25FDB2340(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB2374(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB236CLL);
}

void sub_25FDB2610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB2644(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB263CLL);
}

void sub_25FDB28E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB2914(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB290CLL);
}

void sub_25FDB2BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB2BE4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB2BDCLL);
}

void sub_25FDB2E80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB2EB4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB2EACLL);
}

void sub_25FDB3150(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB3184(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB317CLL);
}

void sub_25FDB3420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB3454(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB344CLL);
}

void sub_25FDB36F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB3724(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB371CLL);
}

void sub_25FDB39C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB39F4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB39ECLL);
}

void sub_25FDB3C90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB3CC4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB3CBCLL);
}

void sub_25FDB3F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB3F94(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB3F8CLL);
}

void sub_25FDB4230(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB4264(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB425CLL);
}

void sub_25FDB4500(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB4534(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB452CLL);
}

void sub_25FDB47D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB4804(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB47FCLL);
}

void sub_25FDB4AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB4AD4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB4ACCLL);
}

void sub_25FDB4D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB4DA4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB4D9CLL);
}

void sub_25FDB5040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB5074(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB506CLL);
}

void sub_25FDB5310(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB5344(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB533CLL);
}

void sub_25FDB55E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB5614(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB560CLL);
}

void sub_25FDB58B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB58E4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB58DCLL);
}

void sub_25FDB5B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB5BB4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB5BACLL);
}

void sub_25FDB5E50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB5E84(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB5E7CLL);
}

void sub_25FDB6120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB6154(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB614CLL);
}

void sub_25FDB63F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB6424(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB641CLL);
}

void sub_25FDB66C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB66F4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB66ECLL);
}

void sub_25FDB6990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB69C4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB69BCLL);
}

void sub_25FDB6C60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB6C94(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB6C8CLL);
}

void sub_25FDB6F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB6F64(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB6F5CLL);
}

void sub_25FDB7200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB7234(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB722CLL);
}

void sub_25FDB74D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB7504(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB74FCLL);
}

void sub_25FDB77A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB77D4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB77CCLL);
}

void sub_25FDB7A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB7AA4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB7A9CLL);
}

void sub_25FDB7D40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB7D74(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB7D6CLL);
}

void sub_25FDB8010(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB8044(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB803CLL);
}

void sub_25FDB82E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB8314(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB830CLL);
}

void sub_25FDB85B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB85E4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB85DCLL);
}

void sub_25FDB8880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB88B4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB88ACLL);
}

void sub_25FDB8B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB8B84(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB8B7CLL);
}

void sub_25FDB8E20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB8E54(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB8E4CLL);
}

void sub_25FDB90F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB9124(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB911CLL);
}

void sub_25FDB93C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB93F4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB93ECLL);
}

void sub_25FDB9690(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB96C4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB96BCLL);
}

void sub_25FDB9960(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB9994(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB998CLL);
}

void sub_25FDB9C30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB9C64(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB9C5CLL);
}

void sub_25FDB9F00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDB9F34(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDB9F2CLL);
}

void sub_25FDBA1D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBA204(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBA1FCLL);
}

void sub_25FDBA4A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBA4D4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBA4CCLL);
}

void sub_25FDBA770(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBA7A4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBA79CLL);
}

void sub_25FDBAA40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBAA74(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBAA6CLL);
}

void sub_25FDBAD10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBAD44(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBAD3CLL);
}

void sub_25FDBAFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBB014(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBB00CLL);
}

void sub_25FDBB2B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBB2E4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBB2DCLL);
}

void sub_25FDBB614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBB64C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBB644);
}

void HGLightWrap::HGLightWrap(HGLightWrap *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287229790;
  *(v1 + 416) = 0;
  *(v1 + 424) = 0;
  *(v1 + 408) = 0;
  *(v1 + 432) = 1065353216;
  *(v1 + 16) |= 0x600u;
}

void HGLightWrap::~HGLightWrap(HGNode *this)
{
  *this = &unk_287229790;
  v3 = this + 408;
  v2 = *(this + 51);
  v4 = *(v3 + 1) - v2;
  if ((v4 >> 3) >= 1)
  {
    v5 = ((v4 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      v7 = *(*(this + 51) + 8 * v5);
      if (v7)
      {
        MEMORY[0x2666E9F00](v7, 0x1000C40EED21634);
      }

      v6 = v5-- + 1;
    }

    while (v6 > 1);
    v2 = *(this + 51);
  }

  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287229790;
  v3 = this + 408;
  v2 = *(this + 51);
  v4 = *(v3 + 1) - v2;
  if ((v4 >> 3) >= 1)
  {
    v5 = ((v4 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      v7 = *(*(this + 51) + 8 * v5);
      if (v7)
      {
        MEMORY[0x2666E9F00](v7, 0x1000C40EED21634);
      }

      v6 = v5-- + 1;
    }

    while (v6 > 1);
    v2 = *(this + 51);
  }

  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v8);
}

uint64_t HGLightWrap::SetState(HGLightWrap *this, HGRenderer *a2, int a3)
{
  if (a3 == 1)
  {
    if ((*(*a2 + 304))(a2))
    {
      if ((*(*a2 + 128))(a2, 5) <= ((*(this + 52) - *(this + 51)) >> 3))
      {
        return HGNode::SetState(this, a2, a3);
      }

LABEL_6:
      __asm { FMOV            V0.4S, #1.0 }

      operator new();
    }

    if (!((*(this + 52) - *(this + 51)) >> 3))
    {
      goto LABEL_6;
    }
  }

  return HGNode::SetState(this, a2, a3);
}

uint64_t HGLightWrap::GetDOD(HGLightWrap *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HGLightWrap::GetROI(HGLightWrap *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 <= 3)
  {
    return *&a4.var0;
  }

  else
  {
    return 0;
  }
}

uint64_t HGLightWrap::SetParameter(HGLightWrap *this, int a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  *(this + 108) = a3;
  return HGNode::SetParameter(this, 0, a3, a3, a3, a3, a7);
}

float32x4_t HGLightWrap::UpdateLocalParameters(HGLightWrap *this, int a2)
{
  v2 = (this + 432);
  result = vld1q_dup_f32(v2);
  **(*(this + 51) + 8 * a2) = result;
  return result;
}

uint64_t HGLightWrap::RenderTile(HGLightWrap *this, HGTile *a2)
{
  v4 = *(*(a2 + 42) + 160);
  (*(*this + 576))(this, v4);
  v5 = *(a2 + 10);
  if (v5 && (v6 = *(a2 + 12)) != 0 && (v7 = *(a2 + 14)) != 0 && *(this + 108) > 0.0)
  {
    v8 = *(a2 + 3) - *(a2 + 1);
    if (v8 >= 1)
    {
      v9 = *(*(this + 51) + 8 * v4);
      v10 = (*(a2 + 2) - *a2);
      v11 = *(a2 + 2);
      v12 = *(a2 + 6);
      v13 = *(a2 + 30);
      v14 = *(a2 + 26);
      v15 = *(a2 + 22);
      if (v10 < 4)
      {
        if (v10 >= 1)
        {
          v64 = 0;
          v65 = 16 * (*(a2 + 2) - *a2);
          v66 = 16 * v13;
          v67 = 16 * v14;
          v68 = 16 * v15;
          do
          {
            v69 = 0;
            do
            {
              v11[v69 / 0x10] = vmulq_f32(*v9, vmulq_f32(v6[v69 / 0x10], vmulq_laneq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v9[1], vdupq_laneq_s32(v5[v69 / 0x10], 3)), v9[2]), v9[1]), v7[v69 / 0x10], 3)));
              v69 += 16;
            }

            while (v65 != v69);
            ++v64;
            v11 += v12;
            v7 = (v7 + v66);
            v6 = (v6 + v67);
            v5 = (v5 + v68);
          }

          while (v64 != v8);
        }
      }

      else
      {
        v16 = 0;
        v17 = 16 * v15;
        v18 = 16 * v13;
        v19 = 16 * v14;
        v20 = v11 + 4;
        v21 = 16 * v12;
        v22 = v7 + 4;
        v23 = v6 + 4;
        v24 = v5 + 4;
        do
        {
          v25 = 0;
          v26 = 0;
          v27 = v24;
          v28 = v23;
          v29 = v22;
          v30 = v20;
          do
          {
            v31 = v30;
            v32 = v29;
            v33 = v28;
            v34 = v27;
            v35 = v9[1];
            v36 = v9[2];
            v37 = vmulq_f32(vmulq_f32(v6[v25 + 1], vmulq_laneq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v35, vdupq_laneq_s32(v5[v25 + 1], 3)), v36), v35), v7[v25 + 1], 3)), *v9);
            v38 = vmulq_f32(vmulq_f32(v6[v25 + 2], vmulq_laneq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v35, vdupq_laneq_s32(v5[v25 + 2], 3)), v36), v35), v7[v25 + 2], 3)), *v9);
            v39 = vmulq_f32(*v9, vmulq_f32(v6[v25 + 3], vmulq_laneq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v35, vdupq_laneq_s32(v5[v25 + 3], 3)), v36), v35), v7[v25 + 3], 3)));
            v40 = &v11[v25];
            *v40 = vmulq_f32(vmulq_f32(v6[v25], vmulq_laneq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v35, vdupq_laneq_s32(v5[v25], 3)), v36), v35), v7[v25], 3)), *v9);
            v40[1] = v37;
            v26 += 4;
            v25 += 4;
            v30 += 4;
            v40[2] = v38;
            v40[3] = v39;
            v29 += 4;
            v28 += 4;
            v27 = v34 + 4;
          }

          while (v26 < (v10 - 3));
          if (v10 > v26)
          {
            do
            {
              v41 = *v34++;
              v42 = v41;
              v43 = *v33++;
              v44 = v43;
              v45 = *v32++;
              *v31++ = vmulq_f32(*v9, vmulq_f32(v44, vmulq_laneq_f32(vminq_f32(vmaxq_f32(vsubq_f32(v9[1], vdupq_laneq_s32(v42, 3)), v9[2]), v9[1]), v45, 3)));
              ++v26;
            }

            while (v26 < v10);
          }

          ++v16;
          v5 = (v5 + v17);
          v7 = (v7 + v18);
          v6 = (v6 + v19);
          v11 = (v11 + v21);
          v20 = (v20 + v21);
          v22 = (v22 + v18);
          v23 = (v23 + v19);
          v24 = (v24 + v17);
        }

        while (v16 != v8);
      }
    }
  }

  else
  {
    v46 = *(a2 + 3) - *(a2 + 1);
    if (v46 >= 1)
    {
      v47 = *(a2 + 2);
      v48 = *a2;
      v49 = v47 - *a2;
      v50 = v49 - 4;
      if (v49 < 4)
      {
        if (v49 >= 1)
        {
          v60 = 0;
          v61 = 16 * (v47 + ~v48);
          do
          {
            bzero((*(a2 + 2) + 16 * *(a2 + 6) * v60++), v61 + 16);
          }

          while (v46 != v60);
        }
      }

      else
      {
        if (v49 >= 7)
        {
          v51 = 7;
        }

        else
        {
          v51 = v47 - *a2;
        }

        v52 = v47 - v48 - v51 + 3;
        v53 = ((v52 >> 2) << 6) + 64;
        v54 = v52 & 0xFFFFFFFC;
        v55 = v49 - v54;
        v56 = v50 - v54;
        if ((v50 - v54) >= 1)
        {
          v56 = 1;
        }

        if (v55 <= 4)
        {
          for (i = 0; i != v46; ++i)
          {
            bzero((*(a2 + 2) + 16 * *(a2 + 6) * i), v53);
          }
        }

        else
        {
          v57 = 0;
          v58 = 16 * (v50 - v54 - v56);
          do
          {
            v59 = (*(a2 + 2) + 16 * *(a2 + 6) * v57);
            bzero(v59, v53);
            bzero(&v59[v53], v58 + 16);
            ++v57;
          }

          while (v46 != v57);
        }
      }
    }
  }

  return 0;
}

uint64_t HGLightWrap::RenderPage(HGNode *this, HGRect *a2)
{
  (*(*this + 576))(this, 0);

  return HGNode::RenderPage(this, a2);
}

uint64_t HGLightWrap::RenderPageMetal(HGNode *this, HGPage *a2)
{
  (*(*this + 576))(this, 0);

  return HGNode::RenderPageMetal(this, a2);
}

const char *HGLightWrap::GetProgram(HGLightWrap *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000043c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.w = (half) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).w;\n    r0 = clamp(c0.xxxx - r0.wwww, 0.00000h, 1.00000h);\n    r0 = r0*r2.wwww;\n    r1 = r0*r1;\n    output.color0 = float4(r1)*hg_Params[0];\n    return output;\n}\n//MD5=75ca94e5:4c8b94c4:97725edc:ddf254f3\n//SIG=00400000:00000007:00000007:00000007:0001:0001:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000424\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.w = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).w;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2.w = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy).w;\n    r0 = clamp(c0.xxxx - r0.wwww, 0.00000f, 1.00000f);\n    r0 = r0*r2.wwww;\n    r0 = r0*r1;\n    output.color0 = r0*hg_Params[0];\n    return output;\n}\n//MD5=c8c5dd81:110d3923:ff429a4b:4018d85f\n//SIG=00000000:00000007:00000007:00000000:0001:0001:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003b9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0.w = texture2D(hg_Texture0, hg_TexCoord0.xy).w;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2.w = texture2D(hg_Texture2, hg_TexCoord2.xy).w;\n    r0 = clamp(c0.xxxx - r0.wwww, vec4(0.00000), vec4(1.00000));\n    r0 = r0*r2.wwww;\n    r0 = r0*r1;\n    gl_FragColor = r0*hg_ProgramLocal0;\n}\n//MD5=1b8aa5b8:6e01dc15:8dfa7c9e:d9ed25f9\n//SIG=00000000:00000007:00000007:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDBC36C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBC3A4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBC39CLL);
}

void HGStencil::HGStencil(HGStencil *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_287229A00;
  *(v2 + 408) = 0;
  *(v2 + 416) = 0;
  *(v2 + 424) = 0;
  *(v2 + 432) = 1065353216;
  HGNode::SetFlags(v2, 0xFFFFFFFFLL, 512);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 1024);
  (*(*this + 136))(this, 0, 32);
  (*(*this + 136))(this, 1, 32);
  (*(*this + 136))(this, 0xFFFFFFFFLL, 32);
}

void sub_25FDBC4DC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 408);
  if (v3)
  {
    *(v1 + 416) = v3;
    operator delete(v3);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGStencil::~HGStencil(HGNode *this)
{
  *this = &unk_287229A00;
  v3 = this + 408;
  v2 = *(this + 51);
  v4 = *(v3 + 1) - v2;
  if ((v4 >> 3) >= 1)
  {
    v5 = ((v4 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      v7 = *(*(this + 51) + 8 * v5);
      if (v7)
      {
        MEMORY[0x2666E9F00](v7, 0x1000C40E0EAB150);
      }

      v6 = v5-- + 1;
    }

    while (v6 > 1);
    v2 = *(this + 51);
  }

  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287229A00;
  v3 = this + 408;
  v2 = *(this + 51);
  v4 = *(v3 + 1) - v2;
  if ((v4 >> 3) >= 1)
  {
    v5 = ((v4 >> 3) & 0x7FFFFFFF) - 1;
    do
    {
      v7 = *(*(this + 51) + 8 * v5);
      if (v7)
      {
        MEMORY[0x2666E9F00](v7, 0x1000C40E0EAB150);
      }

      v6 = v5-- + 1;
    }

    while (v6 > 1);
    v2 = *(this + 51);
  }

  if (v2)
  {
    *(this + 52) = v2;
    operator delete(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v8);
}

uint64_t HGStencil::SetState(HGStencil *this, HGRenderer *a2, int a3)
{
  if (a3 == 1)
  {
    if ((*(*a2 + 304))(a2))
    {
      if ((*(*a2 + 128))(a2, 5) <= ((*(this + 52) - *(this + 51)) >> 3))
      {
        return HGNode::SetState(this, a2, a3);
      }

LABEL_6:
      operator new();
    }

    if (!((*(this + 52) - *(this + 51)) >> 3))
    {
      goto LABEL_6;
    }
  }

  return HGNode::SetState(this, a2, a3);
}

uint64_t HGStencil::GetDOD(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 >= 2)
  {
    return 0;
  }

  Input = HGRenderer::GetInput(a2, this, 0);
  DOD = HGRenderer::GetDOD(a2, Input);
  v10 = v9;
  v11 = HGRenderer::GetInput(a2, this, 1u);
  v12 = HGRenderer::GetDOD(a2, v11);
  return HGRectIntersection(DOD, v10, v12, v13);
}

uint64_t HGStencil::GetROI(HGStencil *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 <= 1)
  {
    return *&a4.var0;
  }

  else
  {
    return 0;
  }
}

uint64_t HGStencil::SetParameter(HGStencil *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2 == 1)
  {
    *(this + 108) = a3;
    return 1;
  }

  else if (a2)
  {
    return 0;
  }

  else
  {
    *(this + 109) = vcvtms_s32_f32(a3);
    return 1;
  }
}

float32x4_t HGStencil::UpdateLocalParameters(HGStencil *this, int a2)
{
  v2 = (this + 432);
  result = vld1q_dup_f32(v2);
  **(*(this + 51) + 8 * a2) = result;
  return result;
}

uint64_t HGStencil::RenderTile(HGStencil *this, HGTile *a2)
{
  v4 = *(*(a2 + 42) + 160);
  (*(*this + 576))(this, v4);
  if (*(a2 + 10) && *(a2 + 12) && *(this + 108) > 0.0)
  {
    v5 = s_func_stencil_table[*(this + 109)];
    v6 = *(*(this + 51) + 8 * v4);

    return (v5)(a2, v6, this);
  }

  else
  {
    v8 = (*(a2 + 3) - *(a2 + 1));
    if (v8 >= 1)
    {
      v9 = *(a2 + 2);
      v10 = v9 - *a2;
      v11 = *(a2 + 2);
      v12 = *(a2 + 6);
      v13 = v10 - 4;
      if (v10 < 4)
      {
        if (v10 >= 1)
        {
          v20 = 16 * (v9 + ~*a2);
          v21 = 16 * v12;
          do
          {
            bzero(v11, v20 + 16);
            v11 += v21;
            LODWORD(v8) = v8 - 1;
          }

          while (v8);
        }
      }

      else
      {
        v14 = ((v13 >> 2) << 6) + 64;
        v15 = 16 * v12;
        v16 = v13 & 0xFFFFFFFC;
        v17 = (v13 & 0xFFFFFFFC) + 5;
        if (v10 > v17)
        {
          v17 = v10;
        }

        v18 = 16 * (v17 - v16 - 5);
        v19 = v16 + 4;
        do
        {
          bzero(v11, v14);
          if (v10 > v19)
          {
            bzero(&v11[v14], v18 + 16);
          }

          v11 += v15;
          --v8;
        }

        while (v8);
      }
    }

    return 0;
  }
}

char *HGStencil::RenderPage(HGNode *this, HGRect *a2)
{
  (*(*this + 576))(this, 0);

  return HGStencil::RenderPagePlain(this, a2);
}

char *HGStencil::RenderPagePlain(HGNode *this, HGRect *a2)
{
  HGPagePullTexturesGuard::HGPagePullTexturesGuard(&v13, this, a2);
  Buffer = *&a2->var2;
  if (Buffer)
  {
    (*(*Buffer + 16))(*&a2->var2);
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(*&a2->var0, a2[1], a2[2].var0, 0, (*(this + 4) >> 12) & 1, LOBYTE(a2[15].var2));
    *&a2->var2 = Buffer;
  }

  (*(**&a2->var0 + 144))(*&a2->var0, Buffer);
  (*(**&a2->var0 + 152))(*&a2->var0, 0, *&a2[10].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 1, *&a2[11].var0, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 2, *&a2[11].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 3, *&a2[12].var0, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 4, *&a2[12].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 5, *&a2[13].var0, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 6, *&a2[13].var2, 0, 0);
  (*(**&a2->var0 + 152))(*&a2->var0, 7, *&a2[14].var0, 0, 0);
  v5 = (*(**&a2->var0 + 368))(*&a2->var0, *(this + 8), this);
  (*(*this + 488))(this, a2, 0, v5);
  v6 = (*(*this + 400))(this, *&a2->var0, 1, *&a2[1].var0, *&a2[1].var2);
  if (HGRectIsNull(v6, v7) || (v10 = (*(*this + 400))(this, *&a2->var0, 0, *&a2[1].var0, *&a2[1].var2), HGRectIsNull(v10, v11)))
  {
    HGGPURenderer::Clear(*&a2->var0, a2[1], v8, v9);
  }

  else
  {
    HGGPURenderer::Rect(*&a2->var0, v5, a2[1], 8);
  }

  (*(*this + 496))(this, a2, 0, v5);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(&v13);
  return Buffer;
}

void sub_25FDBCF14(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FDBCF28(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FDBCF3C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullTexturesGuard::~HGPagePullTexturesGuard(va);
  _Unwind_Resume(a1);
}

char *HGStencil::RenderPageMetal(HGNode *this, HGRect *a2)
{
  (*(*this + 576))(this, 0);

  return HGStencil::RenderPagePlainMetal(this, a2);
}

char *HGStencil::RenderPagePlainMetal(HGNode *this, HGRect *a2)
{
  HGPagePullMetalTexturesGuard::HGPagePullMetalTexturesGuard(&v17, this, a2);
  Buffer = *&a2->var2;
  if (Buffer)
  {
    (*(*Buffer + 16))(*&a2->var2);
  }

  else
  {
    Buffer = HGGPURenderer::CreateBuffer(*&a2->var0, a2[1], a2[2].var0, 1, (*(this + 4) >> 12) & 1, LOBYTE(a2[15].var2));
    *&a2->var2 = Buffer;
  }

  v5 = (*(*this + 400))(this, *&a2->var0, 1, *&a2[1].var0, *&a2[1].var2);
  if (HGRectIsNull(v5, v6) || (v8 = (*(*this + 400))(this, *&a2->var0, 0, *&a2[1].var0, *&a2[1].var2), HGRectIsNull(v8, v9)))
  {
    HGGPURenderer::ClearMetal(*&a2->var0, Buffer, a2[1], v7);
  }

  else
  {
    v11 = (*(**&a2->var0 + 368))(*&a2->var0, *(this + 8), this);
    if (v11)
    {
      if (v12)
      {
        v13 = v12;
        (*(*this + 488))(this, a2, 0, v12);
        HGMetalHandler::BindBuffer(v13, Buffer);
        for (i = 0; i != 8; ++i)
        {
          v15 = *(&a2[10].var2 + i);
          v16 = HGMetalHandler::BindTexture(v13, i, v15);
          if (v15)
          {
            (*(*v13 + 72))(v13, i, 0, v16);
            (*(*v13 + 48))(v13, 0, 0);
            (*(*v13 + 80))(v13, i);
            (*(*v13 + 88))(v13);
            (*(*v13 + 96))(v13, -*(v15 + 20), -*(v15 + 24), 0.0);
            (*(*v13 + 56))(v13, 0);
          }
        }

        (*(*v13 + 192))(v13, *&a2[1].var0, *&a2[1].var2, 8, v16);
        (*(*this + 496))(this, a2, 0, v13);
      }
    }
  }

  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(&v17);
  return Buffer;
}

void sub_25FDBD398(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FDBD3AC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(va);
  _Unwind_Resume(a1);
}

void sub_25FDBD3C0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  HGPagePullMetalTexturesGuard::~HGPagePullMetalTexturesGuard(va);
  _Unwind_Resume(a1);
}

uint64_t GetStencilAlphaTile(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 12) - *(a1 + 4);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 8) - *a1);
    v4 = *(a1 + 96);
    v5 = *(a1 + 80);
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = *(a1 + 88);
    v9 = *(a1 + 104);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v33 = 0;
        v34 = 16 * v9;
        v35 = 16 * v8;
        v36 = 16 * v7;
        v37 = 16 * (*(a1 + 8) - *a1);
        do
        {
          v38 = 0;
          do
          {
            v6[v38 / 0x10] = vmulq_laneq_f32(v5[v38 / 0x10], vmulq_f32(v4[v38 / 0x10], *a2), 3);
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
          v25 = vextq_s8(*a2, *a2, 0xCuLL);
          v26 = vmulq_n_f32(v5[v17 + 1], vmulq_laneq_f32(v25, v4[v17 + 1], 3).f32[0]);
          v27 = vmulq_n_f32(v5[v17 + 2], vmulq_laneq_f32(v25, v4[v17 + 2], 3).f32[0]);
          v28 = vmulq_n_f32(v5[v17 + 3], vmulq_laneq_f32(v25, v4[v17 + 3], 3).f32[0]);
          v29 = &v6[v17];
          *v29 = vmulq_n_f32(v5[v17], vmulq_laneq_f32(v25, v4[v17], 3).f32[0]);
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
            *v24++ = vmulq_laneq_f32(v32, vmulq_f32(v31, *a2), 3);
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

uint64_t GetStencilLumaTile(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 12) - *(a1 + 4);
  if (v2 >= 1)
  {
    v3 = (*(a1 + 8) - *a1);
    v4 = *(a1 + 96);
    v5 = *(a1 + 80);
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    v8 = *(a1 + 88);
    v9 = *(a1 + 104);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v38 = 0;
        v39 = 16 * v9;
        v40 = 16 * v8;
        v41 = 16 * v7;
        v42 = 16 * (*(a1 + 8) - *a1);
        do
        {
          v43 = 0;
          do
          {
            v44 = vmulq_f32(vmulq_f32(v4[v43 / 0x10], *a2), a2[1]);
            v6[v43 / 0x10] = vmulq_n_f32(v5[v43 / 0x10], vaddq_f32(vdupq_laneq_s32(v44, 2), vaddq_f32(v44, vdupq_lane_s32(*v44.f32, 1))).f32[0]);
            v43 += 16;
          }

          while (v42 != v43);
          ++v38;
          v4 = (v4 + v39);
          v5 = (v5 + v40);
          v6 = (v6 + v41);
        }

        while (v38 != v2);
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
          v25 = a2[1];
          v26 = vmulq_f32(vmulq_f32(v4[v17], *a2), v25);
          v27 = vmulq_f32(vmulq_f32(v4[v17 + 1], *a2), v25);
          v28 = vmulq_f32(vmulq_f32(v4[v17 + 2], *a2), v25);
          v29 = vmulq_f32(vmulq_f32(v4[v17 + 3], *a2), v25);
          v30 = vmulq_n_f32(v5[v17 + 1], vaddq_f32(vdupq_laneq_s32(v27, 2), vaddq_f32(v27, vdupq_lane_s32(*v27.f32, 1))).f32[0]);
          v31 = vmulq_n_f32(v5[v17 + 2], vaddq_f32(vdupq_laneq_s32(v28, 2), vaddq_f32(v28, vdupq_lane_s32(*v28.f32, 1))).f32[0]);
          v32 = vmulq_n_f32(v5[v17 + 3], vaddq_f32(vdupq_laneq_s32(v29, 2), vaddq_f32(v29, vdupq_lane_s32(*v29.f32, 1))).f32[0]);
          v33 = &v6[v17];
          *v33 = vmulq_n_f32(v5[v17], vaddq_f32(vdupq_laneq_s32(v26, 2), vaddq_f32(v26, vdupq_lane_s32(*v26.f32, 1))).f32[0]);
          v33[1] = v30;
          v18 += 4;
          v17 += 4;
          v33[2] = v31;
          v33[3] = v32;
          v21 += 4;
          v20 += 4;
          v19 = v24 + 4;
        }

        while (v18 < (v3 - 3));
        if (v3 > v18)
        {
          do
          {
            v34 = *v22++;
            v35 = vmulq_f32(v34, *a2);
            v36 = *v23++;
            v37 = vmulq_f32(v35, a2[1]);
            *v24++ = vmulq_n_f32(v36, vaddq_f32(vdupq_laneq_s32(v37, 2), vaddq_f32(v37, vdupq_lane_s32(*v37.f32, 1))).f32[0]);
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

const char *GetStencilAlphaProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000030c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.w = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = r0.w*half(hg_Params[0].w);\n    output.color0 = float4(r0.xxxx)*float4(r1);\n    return output;\n}\n//MD5=01f634c8:f7748912:786afaf7:eb888de8\n//SIG=00400000:00000003:00000003:00000003:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ea\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.w = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).w;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = r0.w*hg_Params[0].w;\n    output.color0 = r0.xxxx*r1;\n    return output;\n}\n//MD5=e1ec9237:e9f18bbe:72542b57:68628fe1\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000294\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.w = texture2D(hg_Texture1, hg_TexCoord1.xy).w;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = r0.w*hg_ProgramLocal0.w;\n    gl_FragColor = r0.xxxx*r1;\n}\n//MD5=b08281d5:65ec7cc3:7ffdfd68:7096132c\n//SIG=00000000:00000003:00000003:00000000:0000:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

const char *GetStencilLumaProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000038b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(0.3000000119, 0.5899999738, 0.1099999994, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = (half3) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r0.xyz = r0.xyz*half3(hg_Params[0].xyz);\n    r1 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0.xyz, c0.xyz);\n    output.color0 = float4(r0.xxxx)*float4(r1);\n    return output;\n}\n//MD5=cb176b52:a0693719:b9ea283b:0759c643\n//SIG=00400000:00000003:00000003:00000003:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000369\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(0.3000000119, 0.5899999738, 0.1099999994, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.xyz = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xyz;\n    r0.xyz = r0.xyz*hg_Params[0].xyz;\n    r1 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.x = dot(r0.xyz, c0.xyz);\n    output.color0 = r0.xxxx*r1;\n    return output;\n}\n//MD5=d4787518:3c8759ce:80b33876:1f8c5248\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0006:0000:0002:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000318\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.3000000119, 0.5899999738, 0.1099999994, 0.000000000);\n    defaultp vec4 r0, r1;\n\n    r0.xyz = texture2D(hg_Texture1, hg_TexCoord1.xy).xyz;\n    r0.xyz = r0.xyz*hg_ProgramLocal0.xyz;\n    r1 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.x = dot(r0.xyz, c0.xyz);\n    gl_FragColor = r0.xxxx*r1;\n}\n//MD5=23b25b93:d546e82f:8b4aad79:2f25e687\n//SIG=00000000:00000003:00000003:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0002:02:0:1:0\n";
  }
}

void sub_25FDBDC18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBDC4C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBDC44);
}

void sub_25FDBDEE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBDF1C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBDF14);
}

const char *HgcSMAAEdgeDetect::GetProgram(HgcSMAAEdgeDetect *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005fd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.5000000000, 0.000000000, 1.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    r1.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r2.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy).x;\n    r2.y = r0.x;\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy).x;\n    r3.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord4.xy).x;\n    r2.z = r0.x;\n    r2.w = r3.x;\n    r1 = r1.xxxx - r2;\n    r1 = abs(r1);\n    r4.xy = half2(half2(hg_Params[0].xy) < r1.xy);\n    r5.xy = fmax(r1.xy, r1.zw);\n    r5.xy = fmax(r5.xx, r5.yy);\n    r6.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord5.xy).x;\n    r7.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord6.xy).x;\n    r2.z = r6.x;\n    r2.w = r7.x;\n    r2.xy = r2.xy - r2.zw;\n    r5.xy = fmax(r5.xy, fabs(r2.xy));\n    r5.xy = r5.xy*c0.xx;\n    r5.xy = half2(r5.xy < r1.xy);\n    output.color0.xy = fmin(float2(r4.xy), float2(r5.xy));\n    output.color0.zw = float2(c0.yz);\n    return output;\n}\n//MD5=f63bcefb:e47eb4ef:de86d16a:09e989d0\n//SIG=00400000:00000000:00000000:00000001:0001:0001:0008:0000:0000:0000:00fe:0000:0007:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000005ab\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.5000000000, 0.000000000, 1.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).x;\n    r1.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r2.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord2.xy).x;\n    r2.y = r0.x;\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord3.xy).x;\n    r3.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord4.xy).x;\n    r2.z = r0.x;\n    r2.w = r3.x;\n    r1 = r1.xxxx - r2;\n    r1 = abs(r1);\n    r0.xy = float2(hg_Params[0].xy < r1.xy);\n    r3.xy = fmax(r1.xy, r1.zw);\n    r3.xy = fmax(r3.xx, r3.yy);\n    r4.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord5.xy).x;\n    r5.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord6.xy).x;\n    r2.z = r4.x;\n    r2.w = r5.x;\n    r2.xy = r2.xy - r2.zw;\n    r3.xy = fmax(r3.xy, fabs(r2.xy));\n    r3.xy = r3.xy*c0.xx;\n    r3.xy = float2(r3.xy < r1.xy);\n    output.color0.xy = fmin(r0.xy, r3.xy);\n    output.color0.zw = c0.yz;\n    return output;\n}\n//MD5=9b909250:9a031bd2:3464edfe:3dce087f\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0006:0000:0000:0000:00fe:0000:0007:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000604\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvarying highp vec4 hg_TexCoord6;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.5000000000, 0.000000000, 1.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2, r3, r4, r5;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord1.xy).x;\n    r1.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r2.x = texture2D(hg_Texture0, hg_TexCoord2.xy).x;\n    r2.y = r0.x;\n    r0.x = texture2D(hg_Texture0, hg_TexCoord3.xy).x;\n    r3.x = texture2D(hg_Texture0, hg_TexCoord4.xy).x;\n    r2.z = r0.x;\n    r2.w = r3.x;\n    r1 = r1.xxxx - r2;\n    r1 = abs(r1);\n    r0.xy = vec2(lessThan(hg_ProgramLocal0.xy, r1.xy));\n    r3.xy = max(r1.xy, r1.zw);\n    r3.xy = max(r3.xx, r3.yy);\n    r4.x = texture2D(hg_Texture0, hg_TexCoord5.xy).x;\n    r5.x = texture2D(hg_Texture0, hg_TexCoord6.xy).x;\n    r2.z = r4.x;\n    r2.w = r5.x;\n    r2.xy = r2.xy - r2.zw;\n    r3.xy = max(r3.xy, abs(r2.xy));\n    r3.xy = r3.xy*c0.xx;\n    r3.xy = vec2(lessThan(r3.xy, r1.xy));\n    gl_FragColor.xy = min(r0.xy, r3.xy);\n    gl_FragColor.zw = c0.yz;\n}\n//MD5=10405cea:bdc87dfa:dc2a500e:aab26e6b\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0006:0000:0000:0000:0000:0000:0007:01:0:1:0\n";
  }
}

void sub_25FDBE6A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDBE6F8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBE6F0);
}

uint64_t HgcSMAAEdgeDetect::BindTexture(HgcSMAAEdgeDetect *this, HGHandler *a2, int a3)
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

  (*(*a2 + 96))(a2, 0.0, -1.0, 0.0);
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

  (*(*a2 + 96))(a2, -1.0, 0.0, 0.0);
  HGHandler::TexCoord(a2, 3, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 1.0, 0.0, 0.0);
  HGHandler::TexCoord(a2, 4, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 0.0, 1.0, 0.0);
  HGHandler::TexCoord(a2, 5, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -2.0, 0.0, 0.0);
  HGHandler::TexCoord(a2, 6, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 0.0, -2.0, 0.0);
  return 0;
}

uint64_t HgcSMAAEdgeDetect::Bind(HgcSMAAEdgeDetect *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSMAAEdgeDetect::RenderTile(HgcSMAAEdgeDetect *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 22);
    v6 = *(a2 + 10);
    v7 = 16 * v5;
    v8 = *(a2 + 2);
    v9 = 16 * v5 + v6 + 16;
    v10 = -2 * v5;
    v11 = 16 * *(a2 + 6);
    while (v4 < 2)
    {
      v13 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v6 += v7;
      v8 += v11;
      ++v3;
      v9 += v7;
      if (v3 == v2)
      {
        return 0;
      }
    }

    v12 = 0;
    v13 = 0;
    v14 = v9;
    v15 = v4;
    do
    {
      v16 = *(v6 + v12);
      v17 = *(this + 51);
      v18.i64[0] = vbslq_s8(*(v17 + 16), *(v6 + v12 - 16), vrev64q_s32(*(v6 + 16 * (v13 - v5)))).u64[0];
      v19.i64[0] = vbslq_s8(*(v17 + 16), v16, vrev64q_s32(*(v6 + 16 * (v13 - v5 + 1)))).u64[0];
      v18.i64[1] = *(v6 + v12 + 16);
      v19.i64[1] = *(v6 + v12 + 32);
      v21 = *(v17 + 32);
      v20 = *(v17 + 48);
      v22 = vbslq_s8(v21, vextq_s8(v14[-1], v14[-1], 4uLL), v18);
      v23 = vbslq_s8(v21, vextq_s8(*v14, *v14, 4uLL), v19);
      v24 = vabdq_f32(vdupq_lane_s32(*v16.i8, 0), v22);
      v25 = vabdq_f32(vdupq_lane_s32(v18.u64[1], 0), v23);
      v26 = vandq_s8(v20, vcgtq_f32(v24, *v17));
      v27 = vmaxq_f32(v24, vextq_s8(v24, v24, 8uLL)).u64[0];
      v28 = vmaxq_f32(v25, vextq_s8(v25, v25, 8uLL)).u64[0];
      v22.i64[1] = *(v6 + v12 - 32);
      v29 = *(v6 + 16 * (v10 + v13));
      v23.i64[1] = *(v6 + v12 - 16);
      v30 = vbslq_s8(v21, vextq_s8(v29, v29, 4uLL), v22);
      v31 = vbslq_s8(v21, vextq_s8(*(v6 + 16 * (v10 + v13 + 1)), *(v6 + 16 * (v10 + v13 + 1)), 4uLL), v23);
      v32 = *(v17 + 64);
      v33 = *(v17 + 80);
      v34 = vandq_s8(v20, vcgtq_f32(v24, vmulq_f32(vmaxq_f32(vmaxq_f32(vdupq_lane_s32(v27, 0), vdupq_lane_s32(v27, 1)), vabdq_f32(v30, vextq_s8(v30, v30, 8uLL))), v32)));
      v35 = vbslq_s8(v33, vminq_f32(vandq_s8(v20, vcgtq_f32(v25, *v17)), vandq_s8(v20, vcgtq_f32(v25, vmulq_f32(vmaxq_f32(vmaxq_f32(vdupq_lane_s32(v28, 0), vdupq_lane_s32(v28, 1)), vabdq_f32(v31, vextq_s8(v31, v31, 8uLL))), v32)))), v32);
      v36 = (v8 + v12);
      v15 -= 2;
      *v36 = vbslq_s8(v33, vminq_f32(v26, v34), v32);
      v36[1] = v35;
      v14 += 2;
      v13 += 2;
      v12 += 32;
    }

    while (v15 > 1);
    if (v13 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v37 = 16 * v13;
    v38 = v6 + 16 * v13;
    v39 = *(this + 51);
    v40.i64[0] = vbslq_s8(*(v39 + 16), *(v38 - 16), vrev64q_s32(*(v6 + 16 * (v13 - v5)))).u64[0];
    v40.i64[1] = *(v6 + 16 * (v13 | 1u));
    v41 = *(v39 + 32);
    v42 = vbslq_s8(v41, vextq_s8(*(v6 + 16 * (v13 + v5)), *(v6 + 16 * (v13 + v5)), 4uLL), v40);
    v43 = vabdq_f32(vdupq_lane_s32(*(v6 + v37), 0), v42);
    v44 = vmaxq_f32(v43, vextq_s8(v43, v43, 8uLL)).u64[0];
    v42.i64[1] = *(v38 - 32);
    v45 = vbslq_s8(v41, vextq_s8(*(v6 + 16 * (v13 - 2 * v5)), *(v6 + 16 * (v13 - 2 * v5)), 4uLL), v42);
    *(v8 + v37) = vbslq_s8(*(v39 + 80), vminq_f32(vandq_s8(*(v39 + 48), vcgtq_f32(v43, *v39)), vandq_s8(*(v39 + 48), vcgtq_f32(v43, vmulq_f32(vmaxq_f32(vmaxq_f32(vdupq_lane_s32(v44, 0), vdupq_lane_s32(v44, 1)), vabdq_f32(v45, vextq_s8(v45, v45, 8uLL))), *(v39 + 64))))), *(v39 + 64));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcSMAAEdgeDetect::GetDOD(HgcSMAAEdgeDetect *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFE, 0xFFFFFFFE, 1u, 1u);
  return HGRectGrow(v6, v5, v7);
}

uint64_t HgcSMAAEdgeDetect::GetROI(HgcSMAAEdgeDetect *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0xFFFFFFFE, 0xFFFFFFFE, 1u, 1u);
  return HGRectGrow(v6, v5, v7);
}

void HgcSMAAEdgeDetect::~HgcSMAAEdgeDetect(HgcSMAAEdgeDetect *this)
{
  *this = &unk_287229CA0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcSMAAEdgeDetect::~HgcSMAAEdgeDetect(HGNode *this)
{
  *this = &unk_287229CA0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcSMAAEdgeDetect::SetParameter(HgcSMAAEdgeDetect *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

float HgcSMAAEdgeDetect::GetParameter(HgcSMAAEdgeDetect *this, int a2, float *a3)
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

const char *HgcSMAAPatternSearch::GetProgram(HgcSMAAPatternSearch *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return aMetal10Len0000_923;
    }

    else
    {
      return aMetal10Len0000_924;
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return aGlfs20Len00000_362;
  }
}

void sub_25FDBFA3C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void sub_25FDBFA94(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDBFA8CLL);
}

uint64_t HgcSMAAPatternSearch::BindTexture(HgcSMAAPatternSearch *this, HGHandler *a2, int a3)
{
  if (a3 == 2)
  {
    (*(*a2 + 72))(a2, 2, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
    {
      (*(*a2 + 72))(a2, 2, 0);
      (*(*a2 + 56))(a2, 0);
    }

    v12.n128_f32[0] = (*(a2 + 49) - *(a2 + 47));
    v13.n128_f32[0] = (*(a2 + 50) - *(a2 + 48));
    v14.n128_u64[0] = 0;
    v15.n128_u64[0] = 0;
    (*(*a2 + 136))(a2, 2, v12, v13, v14, v15);
    return 0;
  }

  if (a3 == 1)
  {
    (*(*a2 + 72))(a2, 1, 0);
    (*(*a2 + 48))(a2, 0, 0);
    if ((*(**(a2 + 18) + 128))(*(a2 + 18), 43) == 1)
    {
      (*(*a2 + 72))(a2, 1, 0);
      (*(*a2 + 56))(a2, 0);
    }

    v8.n128_f32[0] = (*(a2 + 49) - *(a2 + 47));
    v9.n128_f32[0] = (*(a2 + 50) - *(a2 + 48));
    v10.n128_u64[0] = 0;
    v11.n128_u64[0] = 0;
    (*(*a2 + 136))(a2, 1, v8, v9, v10, v11);
    return 0;
  }

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
  (*(*a2 + 136))(a2, 0, v4, v5, v6, v7);
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  HGHandler::TexCoord(a2, 4, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -4.0, 4.0, 0.0);
  HGHandler::TexCoord(a2, 3, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -3.0, 3.0, 0.0);
  HGHandler::TexCoord(a2, 2, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, -0.125, 1.25, 0.0);
  return 0;
}

uint64_t HgcSMAAPatternSearch::Bind(HgcSMAAPatternSearch *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSMAAPatternSearch::RenderTile(HgcSMAAPatternSearch *this, int32x2_t *a2)
{
  v4 = HGTile::Renderer(a2);
  v5 = (*(*this + 312))(this, v4);
  v6 = *a2;
  v443 = (a2[1].i32[1] - HIDWORD(*a2));
  if (v443 >= 1)
  {
    v7 = a2[1].i32[0] - v6.i32[0];
    if (v7 >= 1)
    {
      v8 = 0;
      *v9.f32 = vadd_f32(vcvt_f32_s32(v6), 0x3F0000003F000000);
      v9.i64[1] = 0x3F80000000000000;
      v10 = a2[11].i32[0];
      v11 = a2[10];
      v12 = vcvt_f32_s32(vsub_s32(a2[31], a2[30]));
      v447 = 16 * v7;
      __asm { FMOV            V1.2S, #-1.0 }

      v464 = vcvt_f32_s32(vsub_s32(a2[29], a2[28]));
      v463 = vadd_f32(v464, _D1);
      v468 = vadd_f32(v12, _D1);
      v449 = a2[2];
      v18 = (v10 << 34) + 0x500000000;
      v441 = v10 << 32;
      v442 = 16 * v10;
      v440 = 16 * a2[3].i32[0];
      v19 = *&v11 - 16 * v10;
      v20 = *&v11 + 16 * v10;
      v21 = *&v11 - 32 * v10;
      v22 = *&v11 + 32 * v10;
      v23 = *&v11 + 48 * v10;
      v24 = *&v11 - 48 * v10;
      v25 = *&v11 + (v10 << 6);
      v26 = *&v11 - (v10 << 6);
      v27.i64[0] = 0x3F0000003F000000;
      v27.i64[1] = 0x3F0000003F000000;
      v448 = v11;
      v28 = v9;
      v461 = v12;
      do
      {
        v29 = 0;
        v445 = v18;
        v446 = v8 + 1;
        v444 = v28;
        do
        {
          v39 = *(this + 51);
          v40 = a2[10];
          v41 = a2[11].i32[0];
          v42 = vdup_n_s32(v41);
          v43 = vsubq_f32(vsubq_f32(v28, *(v39 + 448)), v9);
          if (v5)
          {
            v44 = vaddq_s32(vcvtq_s32_f32(v43), vcltzq_f32(v43));
            v45 = vsubq_f32(v43, vcvtq_f32_s32(v44)).u64[0];
            v46 = vsubq_f32(vsubq_f32(v28, *(v39 + 464)), v9);
            v47 = vaddq_s32(vcvtq_s32_f32(v46), vcltzq_f32(v46));
            v46.i64[0] = vsubq_f32(v46, vcvtq_f32_s32(v47)).u64[0];
            *v44.i8 = vmla_s32(vzip1_s32(*v44.i8, *v47.i8), vzip2_s32(*v44.i8, *v47.i8), v42);
            v48 = v44.i32[1];
            v49 = (*&v40 + 16 * v44.i32[0]);
            v50 = vaddq_f32(*v49, vmulq_n_f32(vsubq_f32(v49[1], *v49), v45.f32[0]));
            v51 = vaddq_f32(v50, vmulq_lane_f32(vsubq_f32(vaddq_f32(v49[v41], vmulq_n_f32(vsubq_f32(v49[v41 + 1], v49[v41]), v45.f32[0])), v50), v45, 1));
            v52 = (*&v40 + 16 * v48);
            v53 = vaddq_f32(*v52, vmulq_n_f32(vsubq_f32(v52[1], *v52), v46.f32[0]));
            v54 = vaddq_f32(v53, vmulq_lane_f32(vsubq_f32(vaddq_f32(v52[v41], vmulq_n_f32(vsubq_f32(v52[v41 + 1], v52[v41]), v46.f32[0])), v53), *v46.f32, 1));
            v55 = vsubq_f32(vsubq_f32(v28, *(v39 + 528)), v9);
            v56 = vaddq_s32(vcvtq_s32_f32(v55), vcltzq_f32(v55));
            v55.i64[0] = vsubq_f32(v55, vcvtq_f32_s32(v56)).u64[0];
            v57 = (*&v40 + 16 * (v56.i32[0] + v56.i32[1] * v41));
            v58 = vaddq_f32(*v57, vmulq_n_f32(vsubq_f32(v57[1], *v57), v55.f32[0]));
            v59 = vaddq_f32(v58, vmulq_lane_f32(vsubq_f32(vaddq_f32(v57[v41], vmulq_n_f32(vsubq_f32(v57[v41 + 1], v57[v41]), v55.f32[0])), v58), *v55.f32, 1));
            v60 = vsubq_f32(vsubq_f32(v28, *(v39 + 560)), v9);
            v61 = vaddq_s32(vcvtq_s32_f32(v60), vcltzq_f32(v60));
            v62 = vsubq_f32(v60, vcvtq_f32_s32(v61)).u64[0];
            v63 = (*&v40 + 16 * (v61.i32[0] + v61.i32[1] * v41));
            v64 = vaddq_f32(*v63, vmulq_n_f32(vsubq_f32(v63[1], *v63), v62.f32[0]));
            v65 = vaddq_f32(v64, vmulq_lane_f32(vsubq_f32(vaddq_f32(v63[v41], vmulq_n_f32(vsubq_f32(v63[v41 + 1], v63[v41]), v62.f32[0])), v64), v62, 1));
            v66 = vsubq_f32(vsubq_f32(v28, *(v39 + 592)), v9);
            v67 = vaddq_s32(vcvtq_s32_f32(v66), vcltzq_f32(v66));
            v68 = vsubq_f32(v66, vcvtq_f32_s32(v67)).u64[0];
            v69 = (*&v40 + 16 * (v67.i32[0] + v67.i32[1] * v41));
            v70 = vaddq_f32(*v69, vmulq_n_f32(vsubq_f32(v69[1], *v69), v68.f32[0]));
            v71 = vaddq_f32(v70, vmulq_lane_f32(vsubq_f32(vaddq_f32(v69[v41], vmulq_n_f32(vsubq_f32(v69[v41 + 1], v69[v41]), v68.f32[0])), v70), v68, 1));
            v72 = vsubq_f32(vsubq_f32(v28, *(v39 + 624)), v9);
            v73 = vaddq_s32(vcvtq_s32_f32(v72), vcltzq_f32(v72));
            v74 = vsubq_f32(v72, vcvtq_f32_s32(v73)).u64[0];
            v75 = (*&v40 + 16 * (v73.i32[0] + v73.i32[1] * v41));
            v76 = vaddq_f32(*v75, vmulq_n_f32(vsubq_f32(v75[1], *v75), v74.f32[0]));
            v77 = vaddq_f32(v76, vmulq_lane_f32(vsubq_f32(vaddq_f32(v75[v41], vmulq_n_f32(vsubq_f32(v75[v41 + 1], v75[v41]), v74.f32[0])), v76), v74, 1));
          }

          else
          {
            v78 = vaddq_f32(v43, v27);
            v79 = vcvtq_s32_f32(v78);
            v80 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 464)), v9), v27);
            v81 = vcvtq_s32_f32(v80);
            *v78.f32 = vadd_s32(*v79.i8, *&vcgtq_f32(vcvtq_f32_s32(v79), v78));
            *v79.i8 = vadd_s32(*v81.i8, *&vcgtq_f32(vcvtq_f32_s32(v81), v80));
            *v78.f32 = vmla_s32(vzip1_s32(*v78.f32, *v79.i8), vzip2_s32(*v78.f32, *v79.i8), v42);
            v82 = v78.i32[1];
            v51 = *(*&v40 + 16 * v78.i32[0]);
            v54 = *(*&v40 + 16 * v82);
            v83 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 528)), v9), v27);
            v84 = vcvtq_s32_f32(v83);
            v83.i64[0] = vaddq_s32(v84, vcgtq_f32(vcvtq_f32_s32(v84), v83)).u64[0];
            v59 = *(*&v40 + 16 * (v83.i32[0] + v83.i32[1] * v41));
            v85 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 560)), v9), v27);
            v86 = vcvtq_s32_f32(v85);
            v85.i64[0] = vaddq_s32(v86, vcgtq_f32(vcvtq_f32_s32(v86), v85)).u64[0];
            v65 = *(*&v40 + 16 * (v85.i32[0] + v85.i32[1] * v41));
            v87 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 592)), v9), v27);
            v88 = vcvtq_s32_f32(v87);
            v87.i64[0] = vaddq_s32(v88, vcgtq_f32(vcvtq_f32_s32(v88), v87)).u64[0];
            v71 = *(*&v40 + 16 * (v87.i32[0] + v87.i32[1] * v41));
            v89 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 624)), v9), v27);
            v90 = vcvtq_s32_f32(v89);
            v89.i64[0] = vaddq_s32(v90, vcgtq_f32(vcvtq_f32_s32(v90), v89)).u64[0];
            v77 = *(*&v40 + 16 * (v89.i32[0] + v89.i32[1] * v41));
          }

          v91 = *(v39 + 64);
          v93 = *(v39 + 176);
          v92 = *(v39 + 192);
          v94 = *(v39 + 208);
          v95 = *(v39 + 480);
          v96 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v54)), v93, v94).u64[0];
          v97 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v96, 0), vdupq_lane_s32(v96, 1)), v91);
          v98 = vbslq_s8(v97, *(v39 + 512), *(v39 + 496));
          v99 = vbslq_s8(v97, v54, v51);
          v100 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v59)), v93, v94).u64[0];
          v101 = vmvnq_s8(v92);
          v102 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v100, 0), vdupq_lane_s32(v100, 1)), v91);
          v103 = vbslq_s8(v102, *(v39 + 544), v98);
          v104 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v65)), v93, v94).u64[0];
          v105 = vbslq_s8(v102, v59, v99);
          v106 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v104, 0), vdupq_lane_s32(v104, 1)), v91);
          v107 = vbslq_s8(v106, *(v39 + 576), v103);
          v103.i64[0] = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v71)), v93, v94).u64[0];
          v108 = vbslq_s8(v106, v65, v105);
          v109 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(*v103.i8, 0), vdupq_lane_s32(*v103.i8, 1)), v91);
          v110 = vbslq_s8(v109, *(v39 + 608), v107);
          v111 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v77)), v93, v94).u64[0];
          v112 = vbslq_s8(v109, v71, v108);
          v113 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v111, 0), vdupq_lane_s32(v111, 1)), v91);
          v114 = vbslq_s8(v113, *(v39 + 640), v110);
          v115 = a2[14];
          v466 = *(v39 + 672);
          v467 = *(v39 + 656);
          *v112.i8 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v12, vmul_f32(*&v466, vmul_f32(*(v39 + 656), *&vbslq_s8(v113, v77, v112)))), 0), v468));
          v116 = a2[15].i32[0];
          v465 = *(v39 + 688);
          v117 = vandq_s8(v92, vsubq_f32(v114, vmulq_f32(*(*&v115 + 16 * (v112.i32[0] + v112.i32[1] * v116)), v465)));
          v118 = vsubq_f32(vaddq_f32(v28, vorrq_s8(v117, vandq_s8(v114, v101))), v9);
          if (v5)
          {
            v119 = vaddq_s32(vcvtq_s32_f32(v118), vcltzq_f32(v118));
            v120 = vsubq_f32(v118, vcvtq_f32_s32(v119)).u64[0];
            v121 = vsubq_f32(vaddq_f32(v28, *(v39 + 704)), v9);
            v122 = vaddq_s32(vcvtq_s32_f32(v121), vcltzq_f32(v121));
            v121.i64[0] = vsubq_f32(v121, vcvtq_f32_s32(v122)).u64[0];
            *v119.i8 = vmla_s32(vzip1_s32(*v119.i8, *v122.i8), vzip2_s32(*v119.i8, *v122.i8), v42);
            v123 = v119.i32[1];
            v124 = (*&v40 + 16 * v119.i32[0]);
            v125 = vaddq_f32(*v124, vmulq_n_f32(vsubq_f32(v124[1], *v124), v120.f32[0]));
            v454 = vaddq_f32(v125, vmulq_lane_f32(vsubq_f32(vaddq_f32(v124[v41], vmulq_n_f32(vsubq_f32(v124[v41 + 1], v124[v41]), v120.f32[0])), v125), v120, 1));
            v126 = (*&v40 + 16 * v123);
            v127 = vaddq_f32(*v126, vmulq_n_f32(vsubq_f32(v126[1], *v126), v121.f32[0]));
            v128 = vaddq_f32(v127, vmulq_lane_f32(vsubq_f32(vaddq_f32(v126[v41], vmulq_n_f32(vsubq_f32(v126[v41 + 1], v126[v41]), v121.f32[0])), v127), *v121.f32, 1));
            v129 = vsubq_f32(vaddq_f32(v28, *(v39 + 720)), v9);
            v130 = vaddq_s32(vcvtq_s32_f32(v129), vcltzq_f32(v129));
            v129.i64[0] = vsubq_f32(v129, vcvtq_f32_s32(v130)).u64[0];
            v131 = (*&v40 + 16 * (v130.i32[0] + v130.i32[1] * v41));
            v132 = vaddq_f32(*v131, vmulq_n_f32(vsubq_f32(v131[1], *v131), v129.f32[0]));
            v133 = vaddq_f32(v132, vmulq_lane_f32(vsubq_f32(vaddq_f32(v131[v41], vmulq_n_f32(vsubq_f32(v131[v41 + 1], v131[v41]), v129.f32[0])), v132), *v129.f32, 1));
          }

          else
          {
            v134 = vaddq_f32(v118, v27);
            v135 = vcvtq_s32_f32(v134);
            v136 = vaddq_f32(vsubq_f32(vaddq_f32(v28, *(v39 + 704)), v9), v27);
            v137 = vcvtq_s32_f32(v136);
            *v134.f32 = vadd_s32(*v135.i8, *&vcgtq_f32(vcvtq_f32_s32(v135), v134));
            *v135.i8 = vadd_s32(*v137.i8, *&vcgtq_f32(vcvtq_f32_s32(v137), v136));
            *v134.f32 = vmla_s32(vzip1_s32(*v134.f32, *v135.i8), vzip2_s32(*v134.f32, *v135.i8), v42);
            v454 = *(*&v40 + 16 * v134.i32[0]);
            v128 = *(*&v40 + 16 * v134.i32[1]);
            v138 = vaddq_f32(vsubq_f32(vaddq_f32(v28, *(v39 + 720)), v9), v27);
            v139 = vcvtq_s32_f32(v138);
            v138.i64[0] = vaddq_s32(v139, vcgtq_f32(vcvtq_f32_s32(v139), v138)).u64[0];
            v133 = *(*&v40 + 16 * (v138.i32[0] + v138.i32[1] * v41));
          }

          v140 = *(v25 + v29 - 64);
          v142 = *v39;
          v141 = *(v39 + 16);
          v143 = vmulq_f32(v140, *v39);
          v144 = vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v143, vdupq_lane_s32(*v143.f32, 1)), v141), 0)), *(v39 + 48), *(v39 + 32));
          v145 = *(v23 + v29 - 48);
          v146 = vmulq_f32(*v39, v145);
          v147 = vsubq_f32(vaddq_f32(v146, vrev64q_s32(v146)), v141);
          v148 = *(v39 + 96);
          v149 = vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*v147.i8, 0)), *(v39 + 80), v144);
          v150 = vbslq_s8(vcgtq_f32(v91, vrev64q_s32(v147)), v145, v140);
          v151 = *(v22 + v29 - 32);
          v152 = vmulq_f32(*v39, v151);
          v153 = vsubq_f32(vaddq_f32(v152, vrev64q_s32(v152)), v141);
          v154 = *(v20 + v29 - 16);
          v155 = vmulq_f32(*v39, v154);
          v156 = vsubq_f32(vaddq_f32(v155, vrev64q_s32(v155)), v141);
          v157 = vaddq_f32(vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vsubq_f32(vdupq_lane_s32(*&vbslq_s8(vcgtq_f32(v91, vrev64q_s32(v156)), v154, vbslq_s8(vcgtq_f32(v91, vrev64q_s32(v153)), v151, v150)), 1), v141), 0), v91), v148, v91), vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*v156.i8, 0)), v91, vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*v153.i8, 0)), v148, v149)));
          v460 = *(*&v11 + v29);
          v158 = vmulq_f32(*v39, *(v26 + v29 + 64));
          v459 = vcgtq_f32(vdupq_lane_s32(*&v460, 0), v91);
          v159 = vbslq_s8(v459, v157, v91);
          v160 = vmulq_f32(*v39, *(v24 + v29 + 48));
          v161 = vmulq_f32(*v39, *(v21 + v29 + 32));
          v162 = vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v161, vdupq_lane_s32(*v161.f32, 1)), v141), 0)), *(v39 + 160), vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v160, vdupq_lane_s32(*v160.f32, 1)), v141), 0)), *(v39 + 144), vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v158, vdupq_lane_s32(*v158.f32, 1)), v141), 0)), *(v39 + 128), *(v39 + 112))));
          v163 = vmulq_f32(*v39, *(v19 + v29 + 16));
          v164 = vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v163, vdupq_lane_s32(*v163.f32, 1)), v141), 0)), v91, v162);
          v165 = vaddq_f32(v28, v159);
          v166 = vaddq_f32(v28, v164);
          v167 = vaddq_f32(vsubq_f32(v165, v9), v27);
          v168 = vcvtq_s32_f32(v167);
          v169 = vaddq_f32(vsubq_f32(vbslq_s8(v92, vsubq_f32(v165, v93), v165), v9), v27);
          v170 = vcvtq_s32_f32(v169);
          *v169.f32 = vadd_s32(*v170.i8, *&vcgtq_f32(vcvtq_f32_s32(v170), v169));
          *v167.f32 = vadd_s32(*v168.i8, *&vcgtq_f32(vcvtq_f32_s32(v168), v167));
          *v169.f32 = vmla_s32(vzip1_s32(*v167.f32, *v169.f32), vzip2_s32(*v167.f32, *v169.f32), v42);
          v171 = vaddq_f32(v93, v166);
          v172 = vbslq_s8(v92, v171, v166);
          v173 = vaddq_f32(vsubq_f32(v172, v9), v27);
          v174 = vcvtq_s32_f32(v173);
          v175 = vaddq_f32(vsubq_f32(vbslq_s8(v92, v171, vsubq_f32(v172, v94)), v9), v27);
          v176 = vcvtq_s32_f32(v175);
          *v173.f32 = vadd_s32(*v174.i8, *&vcgtq_f32(vcvtq_f32_s32(v174), v173));
          *v175.f32 = vadd_s32(*v176.i8, *&vcgtq_f32(vcvtq_f32_s32(v176), v175));
          *v175.f32 = vmla_s32(vzip1_s32(*v173.f32, *v175.f32), vzip2_s32(*v173.f32, *v175.f32), v42);
          v177 = vextq_s8(*(*&v40 + 16 * v175.i32[1]), *(*&v40 + 16 * v175.i32[1]), 4uLL);
          v178 = vextq_s8(v9, *(*&v40 + 16 * v175.i32[0]), 0xCuLL);
          v178.i64[0] = vbslq_s8(v92, vrev64q_s32(*(*&v40 + 16 * v169.i32[1])), vrev64q_s32(*(*&v40 + 16 * v169.i32[0]))).u64[0];
          v179 = vbslq_s8(*(v39 + 224), v177, v178);
          v176.i64[0] = *(v39 + 240);
          v180 = *(v39 + 256);
          v181 = *(v39 + 272);
          v182 = *(v39 + 288);
          v183 = vrev64q_s32(v159);
          *v179.i8 = vmul_f32(vadd_f32(vmul_f32(*v180.f32, vqtbl1_s8(v179, *v176.i8)), vqtbl1_s8(v179, *v181.i8)), vand_s8(*v182.f32, *&vcgtq_f32(v182, vbslq_s8(v92, vextq_s8(v159, v159, 8uLL), vextq_s8(v164, v164, 4uLL)))));
          v159.i64[0] = *(v39 + 304);
          *v179.i8 = vmul_f32(*v159.f32, *v179.i8);
          *v178.i8 = vand_s8(*v179.i8, *v101.i8);
          v458 = v164;
          *v179.i8 = vand_s8(*v92.i8, vadd_f32(*v183.f32, *v179.i8));
          v184 = vorr_s8(vand_s8(vadd_f32(vrev64_s32(*v164.f32), vorr_s8(*v179.i8, *v178.i8)), *v101.i8), *v179.i8);
          v185 = vmulq_f32(*v39, vbslq_s8(v92, *(v26 + v29 - 48), *(v26 + v29 - 64)));
          v186 = vmulq_f32(*v39, vbslq_s8(v92, *(v24 + v29 - 32), *(v24 + v29 - 48)));
          v187 = vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v186, vdupq_lane_s32(*v186.f32, 1)), v141), 0));
          v188 = vmulq_f32(*v39, vbslq_s8(v92, *(v21 + v29 - 16), *(v21 + v29 - 32)));
          v189 = vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v188, vdupq_lane_s32(*v188.f32, 1)), v141), 0)), *(v39 + 400), vbslq_s8(v187, *(v39 + 384), vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v185, vdupq_lane_s32(*v185.f32, 1)), v141), 0)), *(v39 + 368), *(v39 + 352))));
          v190 = vbslq_s8(v92, *(*&v448 + (v18 >> 28)), *(v25 + v29 + 64));
          v191 = vbslq_s8(v92, *(v23 + v29 + 64), *(v23 + v29 + 48));
          v192 = vmulq_f32(*v39, v191);
          v193 = vsubq_f32(vaddq_f32(v192, vrev64q_s32(v192)), v141);
          v194 = vbslq_s8(v92, *(v22 + v29 + 48), *(v22 + v29 + 32));
          v195 = vmulq_f32(*v39, v194);
          v196 = vsubq_f32(vaddq_f32(v195, vrev64q_s32(v195)), v141);
          v197 = vbslq_s8(vcgtq_f32(v93, vrev64q_s32(v196)), v194, vbslq_s8(vcgtq_f32(v93, vrev64q_s32(v193)), v191, v190));
          v198 = vbslq_s8(v92, *(v20 + v29 + 32), *(v20 + v29 + 16));
          v199 = vmulq_f32(*v39, v198);
          v200 = vsubq_f32(vaddq_f32(v199, vrev64q_s32(v199)), v141);
          v197.i64[0] = vbslq_s8(vcgtq_f32(v93, vrev64q_s32(v200)), v198, v197).u64[0];
          v201 = vmulq_f32(*v39, vbslq_s8(v92, *(v19 + v29), *(v19 + v29 - 16)));
          v202 = vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v201, vdupq_lane_s32(*v201.f32, 1)), v141), 0)), v91, v189);
          v203 = vmulq_f32(*v39, v190);
          v462 = *(v39 + 416);
          v204 = vdupq_lane_s32(*v193.i8, 0);
          v205.i64[0] = 0x3F0000003F000000;
          v205.i64[1] = 0x3F0000003F000000;
          v206 = vbslq_s8(vcgtq_f32(vdupq_lane_s32(*(*&v11 + v29 + 16), 0), v91), vaddq_f32(vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&vsubq_f32(vdupq_lane_s32(*v197.i8, 1), v141), 0), v91), v182, v91), vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*v200.i8, 0)), v91, vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*v196.i8, 0)), v182, vbslq_s8(vcgtq_f32(v91, v204), v180, vbslq_s8(vcgtq_f32(v91, vdupq_lane_s32(*&vsubq_f32(vaddq_f32(v203, vdupq_lane_s32(*v203.f32, 1)), v141), 0)), *(v39 + 432), v462))))), v91);
          v207 = vaddq_f32(v28, v202);
          v208 = vbslq_s8(v92, vsubq_f32(v207, v93), v207);
          v209 = vaddq_f32(vsubq_f32(v208, v9), v205);
          v210 = vcvtq_s32_f32(v209);
          v211 = vaddq_f32(vsubq_f32(vsubq_f32(v208, v148), v9), v205);
          v212 = vcvtq_s32_f32(v211);
          *v209.f32 = vadd_s32(*v210.i8, *&vcgtq_f32(vcvtq_f32_s32(v210), v209));
          *v211.f32 = vadd_s32(*v212.i8, *&vcgtq_f32(vcvtq_f32_s32(v212), v211));
          *v212.i8 = vzip2_s32(*v209.f32, *v211.f32);
          *v211.f32 = vzip1_s32(*v209.f32, *v211.f32);
          v213 = vaddq_f32(v28, v206);
          *v211.f32 = vmla_s32(*v211.f32, *v212.i8, v42);
          v214 = v211.i32[1];
          v215 = v211.i32[0];
          v216 = vaddq_f32(vsubq_f32(vbslq_s8(v92, vaddq_f32(v93, v213), v213), v9), v205);
          v217 = vcvtq_s32_f32(v216);
          v216.i64[0] = vaddq_s32(v217, vcgtq_f32(vcvtq_f32_s32(v217), v216)).u64[0];
          *v217.i8 = vorr_s8(vand_s8(vrev64_s32(*(*&v40 + 16 * v214)), *v101.i8), vand_s8(vrev64_s32(*(*&v40 + 16 * v215)), *v92.i8));
          v217.u64[1] = vqtbl1_s8(*(*&v40 + 16 * (v216.i32[0] + v216.i32[1] * v41)), *&vextq_s8(v181, v181, 8uLL));
          v218 = *(v39 + 336);
          v219 = a2[13].u32[0];
          *v216.f32 = vadd_f32(vmul_f32(*v180.f32, vqtbl1_s8(v217, *v176.i8)), vqtbl1_s8(v217, *v181.i8));
          v217.i64[0] = *(v39 + 320);
          *v210.i8 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v464, vadd_f32(*v217.i8, vmul_f32(*&v218, v184))), 0), v463));
          *v216.f32 = vmul_f32(*v159.f32, vmul_f32(*v216.f32, vand_s8(*v182.f32, *&vcgtq_f32(v182, vbslq_s8(v92, vextq_s8(v202, v202, 8uLL), vextq_s8(v206, v206, 4uLL))))));
          *v212.i8 = vand_s8(*v216.f32, *v101.i8);
          *v216.f32 = vand_s8(*v92.i8, vsub_f32(*v216.f32, *v202.f32));
          *v216.f32 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v464, vadd_f32(*v217.i8, vmul_f32(*&v218, vorr_s8(vand_s8(vadd_f32(*v206.f32, vorr_s8(*v216.f32, *v212.i8)), *v101.i8), *v216.f32)))), 0), v463));
          *v216.f32 = vmla_s32(vzip1_s32(*v210.i8, *v216.f32), vzip2_s32(*v210.i8, *v216.f32), vdup_n_s32(v219));
          v220 = a2[12];
          v456 = *(*&v220 + 16 * v216.i32[0]);
          v457 = *(*&v220 + 16 * v216.i32[1]);
          v221 = vsubq_f32(vaddq_f32(v28, *(v39 + 768)), v9);
          if (v5)
          {
            v222 = vaddq_s32(vcvtq_s32_f32(v221), vcltzq_f32(v221));
            v223 = vsubq_f32(v221, vcvtq_f32_s32(v222)).u64[0];
            v224 = (*&v40 + 16 * (v222.i32[0] + v222.i32[1] * v41));
            v225 = vaddq_f32(*v224, vmulq_n_f32(vsubq_f32(v224[1], *v224), v223.f32[0]));
            v226 = vaddq_f32(v225, vmulq_lane_f32(vsubq_f32(vaddq_f32(v224[v41], vmulq_n_f32(vsubq_f32(v224[v41 + 1], v224[v41]), v223.f32[0])), v225), v223, 1));
            v227 = *(v39 + 784);
            v228 = vsubq_f32(vaddq_f32(v28, *(v39 + 800)), v9);
            v229 = v461;
            v230 = vaddq_s32(vcvtq_s32_f32(v228), vcltzq_f32(v228));
            v228.i64[0] = vsubq_f32(v228, vcvtq_f32_s32(v230)).u64[0];
            v231 = (*&v40 + 16 * (v230.i32[0] + v230.i32[1] * v41));
            v232 = vaddq_f32(*v231, vmulq_n_f32(vsubq_f32(v231[1], *v231), v228.f32[0]));
            v233 = vaddq_f32(v232, vmulq_lane_f32(vsubq_f32(vaddq_f32(v231[v41], vmulq_n_f32(vsubq_f32(v231[v41 + 1], v231[v41]), v228.f32[0])), v232), *v228.f32, 1));
            v234 = *(v39 + 816);
            v235 = vsubq_f32(vaddq_f32(v28, *(v39 + 832)), v9);
            v236 = vaddq_s32(vcvtq_s32_f32(v235), vcltzq_f32(v235));
            v237 = vsubq_f32(v235, vcvtq_f32_s32(v236)).u64[0];
            v238 = (*&v40 + 16 * (v236.i32[0] + v236.i32[1] * v41));
            v239 = vaddq_f32(*v238, vmulq_n_f32(vsubq_f32(v238[1], *v238), v237.f32[0]));
            v240 = vaddq_f32(v239, vmulq_lane_f32(vsubq_f32(vaddq_f32(v238[v41], vmulq_n_f32(vsubq_f32(v238[v41 + 1], v238[v41]), v237.f32[0])), v239), v237, 1));
            v241 = *(v39 + 848);
            v242 = vsubq_f32(vaddq_f32(v28, *(v39 + 864)), v9);
            v243 = vaddq_s32(vcvtq_s32_f32(v242), vcltzq_f32(v242));
            v244 = vsubq_f32(v242, vcvtq_f32_s32(v243)).u64[0];
            v245 = (*&v40 + 16 * (v243.i32[0] + v243.i32[1] * v41));
            v246 = vaddq_f32(*v245, vmulq_n_f32(vsubq_f32(v245[1], *v245), v244.f32[0]));
            v247 = vaddq_f32(v246, vmulq_lane_f32(vsubq_f32(vaddq_f32(v245[v41], vmulq_n_f32(vsubq_f32(v245[v41 + 1], v245[v41]), v244.f32[0])), v246), v244, 1));
          }

          else
          {
            v248 = vaddq_f32(v221, v205);
            v249 = vcvtq_s32_f32(v248);
            v248.i64[0] = vaddq_s32(v249, vcgtq_f32(vcvtq_f32_s32(v249), v248)).u64[0];
            v226 = *(*&v40 + 16 * (v248.i32[0] + v248.i32[1] * v41));
            v227 = *(v39 + 784);
            v229 = v461;
            v250 = vaddq_f32(vsubq_f32(vaddq_f32(v28, *(v39 + 800)), v9), v205);
            v251 = vcvtq_s32_f32(v250);
            v250.i64[0] = vaddq_s32(v251, vcgtq_f32(vcvtq_f32_s32(v251), v250)).u64[0];
            v233 = *(*&v40 + 16 * (v250.i32[0] + v250.i32[1] * v41));
            v234 = *(v39 + 816);
            v252 = vaddq_f32(vsubq_f32(vaddq_f32(v28, *(v39 + 832)), v9), v205);
            v253 = vcvtq_s32_f32(v252);
            v252.i64[0] = vaddq_s32(v253, vcgtq_f32(vcvtq_f32_s32(v253), v252)).u64[0];
            v240 = *(*&v40 + 16 * (v252.i32[0] + v252.i32[1] * v41));
            v241 = *(v39 + 848);
            v254 = vaddq_f32(vsubq_f32(vaddq_f32(v28, *(v39 + 864)), v9), v205);
            v255 = vcvtq_s32_f32(v254);
            v254.i64[0] = vaddq_s32(v255, vcgtq_f32(vcvtq_f32_s32(v255), v254)).u64[0];
            v247 = *(*&v40 + 16 * (v254.i32[0] + v254.i32[1] * v41));
          }

          v256 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v133)), v93, v94).u64[0];
          v257 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v256, 0), vdupq_lane_s32(v256, 1)), v91);
          v258 = vbslq_s8(v257, *(v39 + 752), *(v39 + 736));
          v259 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v226)), v93, v94).u64[0];
          v260 = vbslq_s8(v257, v133, v128);
          v261 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v259, 0), vdupq_lane_s32(v259, 1)), v91);
          v262 = vbslq_s8(v261, v227, v258);
          v263 = vbslq_s8(v261, v226, v260);
          v261.i64[0] = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v233)), v93, v94).u64[0];
          v264 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(*v261.i8, 0), vdupq_lane_s32(*v261.i8, 1)), v91);
          v265 = vbslq_s8(v264, v234, v262);
          v258.i64[0] = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v240)), v93, v94).u64[0];
          v266 = vbslq_s8(v264, v233, v263);
          v267 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(*v258.i8, 0), vdupq_lane_s32(*v258.i8, 1)), v91);
          v268 = vbslq_s8(v267, v241, v265);
          v269 = vbslq_s8(v267, v240, v266);
          v267.i64[0] = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v95, v247)), v93, v94).u64[0];
          v270 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(*v267.i8, 0), vdupq_lane_s32(*v267.i8, 1)), v91);
          v451 = *(v39 + 896);
          *v269.i8 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v229, vmul_f32(*&v466, vadd_f32(*&v451, vmul_f32(*&v467, *&vbslq_s8(v270, v247, v269))))), 0), v468));
          v271 = vbslq_s8(v270, *(v39 + 880), v268);
          v272 = vorrq_s8(vandq_s8(v92, vaddq_f32(vmulq_f32(v465, *(*&v115 + 16 * (v269.i32[0] + v269.i32[1] * v116))), v271)), vandq_s8(v271, v101));
          v273 = vaddq_f32(v28, v272);
          v274 = vsubq_f32(vorrq_s8(vandq_s8(v92, vaddq_f32(v93, v273)), vandq_s8(v273, v101)), v9);
          if (v5)
          {
            v275 = vaddq_s32(vcvtq_s32_f32(v274), vcltzq_f32(v274));
            v276 = vsubq_f32(v274, vcvtq_f32_s32(v275)).u64[0];
            v277 = (*&v40 + 16 * (v275.i32[0] + v275.i32[1] * v41));
            v278 = vaddq_f32(*v277, vmulq_n_f32(vsubq_f32(v277[1], *v277), v276.f32[0]));
            v279 = vaddq_f32(v278, vmulq_lane_f32(vsubq_f32(vaddq_f32(v277[v41], vmulq_n_f32(vsubq_f32(v277[v41 + 1], v277[v41]), v276.f32[0])), v278), v276, 1));
            v280.i64[0] = 0x3F0000003F000000;
            v280.i64[1] = 0x3F0000003F000000;
          }

          else
          {
            v280.i64[0] = 0x3F0000003F000000;
            v280.i64[1] = 0x3F0000003F000000;
            v281 = vaddq_f32(v274, v280);
            v282 = vcvtq_s32_f32(v281);
            v281.i64[0] = vaddq_s32(v282, vcgtq_f32(vcvtq_f32_s32(v282), v281)).u64[0];
            v279 = *(*&v40 + 16 * (v281.i32[0] + v281.i32[1] * v41));
          }

          v283 = vabsq_f32(vorrq_s8(vandq_s8(vrev64q_s32(v272), v101), v117));
          v284 = *(v39 + 928);
          v453 = *(v39 + 912);
          v285 = vminq_f32(vmulq_f32(vrsqrteq_f32(v283), v453), v284);
          v452 = *(v39 + 944);
          *v283.f32 = vmul_f32(*&v218, vadd_f32(vmul_f32(*v283.f32, vmin_f32(vmul_f32(*v285.f32, *&vrsqrtsq_f32(vmulq_f32(v283, v285), v285)), *v284.f32)), vmul_f32(*&v452, *&vcvtq_f32_s32(vcvtq_s32_f32(vaddq_f32(v142, vmulq_f32(v462, vorrq_s8(vandq_s8(vrev64q_s32(v279), v101), vandq_s8(v92, v454)))))))));
          v455 = *(v39 + 960);
          *v283.f32 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v464, vadd_f32(*&v455, *v283.f32)), 0), v463));
          v450 = *(*&v220 + 16 * (v283.i32[0] + v283.i32[1] * v219));
          v286 = vsubq_f32(vsubq_f32(v28, *(v39 + 976)), v9);
          if (v5)
          {
            v287 = vaddq_s32(vcvtq_s32_f32(v286), vcltzq_f32(v286));
            v288 = vsubq_f32(v286, vcvtq_f32_s32(v287)).u64[0];
            v289 = vsubq_f32(vsubq_f32(v28, *(v39 + 992)), v9);
            v290 = vaddq_s32(vcvtq_s32_f32(v289), vcltzq_f32(v289));
            v289.i64[0] = vsubq_f32(v289, vcvtq_f32_s32(v290)).u64[0];
            *v287.i8 = vmla_s32(vzip1_s32(*v287.i8, *v290.i8), vzip2_s32(*v287.i8, *v290.i8), v42);
            v291 = v287.i32[1];
            v292 = (*&v40 + 16 * v287.i32[0]);
            v293 = vaddq_f32(*v292, vmulq_n_f32(vsubq_f32(v292[1], *v292), v288.f32[0]));
            v294 = vaddq_f32(v293, vmulq_lane_f32(vsubq_f32(vaddq_f32(v292[v41], vmulq_n_f32(vsubq_f32(v292[v41 + 1], v292[v41]), v288.f32[0])), v293), v288, 1));
            v295 = (*&v40 + 16 * v291);
            v296 = vaddq_f32(*v295, vmulq_n_f32(vsubq_f32(v295[1], *v295), v289.f32[0]));
            v297 = vaddq_f32(v296, vmulq_lane_f32(vsubq_f32(vaddq_f32(v295[v41], vmulq_n_f32(vsubq_f32(v295[v41 + 1], v295[v41]), v289.f32[0])), v296), *v289.f32, 1));
            v298 = *(v39 + 1040);
            v299 = *(v39 + 1008);
            v300 = *(v39 + 1024);
            v301 = vsubq_f32(vsubq_f32(v28, *(v39 + 1056)), v9);
            v302 = vaddq_s32(vcvtq_s32_f32(v301), vcltzq_f32(v301));
            v301.i64[0] = vsubq_f32(v301, vcvtq_f32_s32(v302)).u64[0];
            v303 = (*&v40 + 16 * (v302.i32[0] + v302.i32[1] * v41));
            v304 = vaddq_f32(*v303, vmulq_n_f32(vsubq_f32(v303[1], *v303), v301.f32[0]));
            v305 = vaddq_f32(v304, vmulq_lane_f32(vsubq_f32(vaddq_f32(v303[v41], vmulq_n_f32(vsubq_f32(v303[v41 + 1], v303[v41]), v301.f32[0])), v304), *v301.f32, 1));
            v306 = *(v39 + 1072);
            v307 = vsubq_f32(vsubq_f32(v28, *(v39 + 1088)), v9);
            v308 = vaddq_s32(vcvtq_s32_f32(v307), vcltzq_f32(v307));
            v309 = vsubq_f32(v307, vcvtq_f32_s32(v308)).u64[0];
            v310 = (*&v40 + 16 * (v308.i32[0] + v308.i32[1] * v41));
            v311 = vaddq_f32(*v310, vmulq_n_f32(vsubq_f32(v310[1], *v310), v309.f32[0]));
            v312 = vaddq_f32(v311, vmulq_lane_f32(vsubq_f32(vaddq_f32(v310[v41], vmulq_n_f32(vsubq_f32(v310[v41 + 1], v310[v41]), v309.f32[0])), v311), v309, 1));
            v313 = *(v39 + 1104);
            v314 = vsubq_f32(vsubq_f32(v28, *(v39 + 1120)), v9);
            v315 = vaddq_s32(vcvtq_s32_f32(v314), vcltzq_f32(v314));
            v316 = vsubq_f32(v314, vcvtq_f32_s32(v315)).u64[0];
            v317 = (*&v40 + 16 * (v315.i32[0] + v315.i32[1] * v41));
            v318 = vaddq_f32(*v317, vmulq_n_f32(vsubq_f32(v317[1], *v317), v316.f32[0]));
            v319 = vaddq_f32(v318, vmulq_lane_f32(vsubq_f32(vaddq_f32(v317[v41], vmulq_n_f32(vsubq_f32(v317[v41 + 1], v317[v41]), v316.f32[0])), v318), v316, 1));
            v320 = *(v39 + 1136);
            v321 = vsubq_f32(vsubq_f32(v28, *(v39 + 1152)), v9);
            v322 = vaddq_s32(vcvtq_s32_f32(v321), vcltzq_f32(v321));
            v323 = vsubq_f32(v321, vcvtq_f32_s32(v322)).u64[0];
            v324 = (*&v40 + 16 * (v322.i32[0] + v322.i32[1] * v41));
            v325 = vaddq_f32(*v324, vmulq_n_f32(vsubq_f32(v324[1], *v324), v323.f32[0]));
            v280.i64[0] = 0x3F0000003F000000;
            v280.i64[1] = 0x3F0000003F000000;
            v326 = vaddq_f32(v325, vmulq_lane_f32(vsubq_f32(vaddq_f32(v324[v41], vmulq_n_f32(vsubq_f32(v324[v41 + 1], v324[v41]), v323.f32[0])), v325), v323, 1));
          }

          else
          {
            v327 = vaddq_f32(v286, v280);
            v328 = vcvtq_s32_f32(v327);
            v329 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 992)), v9), v280);
            v330 = vcvtq_s32_f32(v329);
            *v327.f32 = vadd_s32(*v328.i8, *&vcgtq_f32(vcvtq_f32_s32(v328), v327));
            *v328.i8 = vadd_s32(*v330.i8, *&vcgtq_f32(vcvtq_f32_s32(v330), v329));
            *v327.f32 = vmla_s32(vzip1_s32(*v327.f32, *v328.i8), vzip2_s32(*v327.f32, *v328.i8), v42);
            v294 = *(*&v40 + 16 * v327.i32[0]);
            v297 = *(*&v40 + 16 * v327.i32[1]);
            v298 = *(v39 + 1040);
            v299 = *(v39 + 1008);
            v300 = *(v39 + 1024);
            v331 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1056)), v9), v280);
            v332 = vcvtq_s32_f32(v331);
            v331.i64[0] = vaddq_s32(v332, vcgtq_f32(vcvtq_f32_s32(v332), v331)).u64[0];
            v305 = *(*&v40 + 16 * (v331.i32[0] + v331.i32[1] * v41));
            v306 = *(v39 + 1072);
            v333 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1088)), v9), v280);
            v334 = vcvtq_s32_f32(v333);
            v333.i64[0] = vaddq_s32(v334, vcgtq_f32(vcvtq_f32_s32(v334), v333)).u64[0];
            v312 = *(*&v40 + 16 * (v333.i32[0] + v333.i32[1] * v41));
            v313 = *(v39 + 1104);
            v335 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1120)), v9), v280);
            v336 = vcvtq_s32_f32(v335);
            v335.i64[0] = vaddq_s32(v336, vcgtq_f32(vcvtq_f32_s32(v336), v335)).u64[0];
            v319 = *(*&v40 + 16 * (v335.i32[0] + v335.i32[1] * v41));
            v320 = *(v39 + 1136);
            v337 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1152)), v9), v280);
            v338 = vcvtq_s32_f32(v337);
            v337.i64[0] = vaddq_s32(v338, vcgtq_f32(vcvtq_f32_s32(v338), v337)).u64[0];
            v326 = *(*&v40 + 16 * (v337.i32[0] + v337.i32[1] * v41));
          }

          v339 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v297)), v94, v93).u64[0];
          v340 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v339, 0), vdupq_lane_s32(v339, 1)), v91);
          v341 = vbslq_s8(v340, v298, v300);
          v342 = vbslq_s8(v340, v297, v294);
          v343 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v305)), v94, v93).u64[0];
          v344 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v343, 0), vdupq_lane_s32(v343, 1)), v91);
          v345 = vbslq_s8(v344, v306, v341);
          v341.i64[0] = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v312)), v94, v93).u64[0];
          v346 = vbslq_s8(v344, v305, v342);
          v347 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(*v341.i8, 0), vdupq_lane_s32(*v341.i8, 1)), v91);
          v348 = vbslq_s8(v347, v313, v345);
          v349 = vbslq_s8(v347, v312, v346);
          v347.i64[0] = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v319)), v94, v93).u64[0];
          v350 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(*v347.i8, 0), vdupq_lane_s32(*v347.i8, 1)), v91);
          v351 = vbslq_s8(v350, v320, v348);
          v348.i64[0] = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v326)), v94, v93).u64[0];
          v352 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(*v348.i8, 0), vdupq_lane_s32(*v348.i8, 1)), v91);
          *v349.i8 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v229, vmul_f32(*&v466, vmul_f32(*&v467, vrev64_s32(*&vbslq_s8(v352, v326, vbslq_s8(v350, v319, v349)))))), 0), v468));
          v353 = vbslq_s8(v352, *(v39 + 1168), v351);
          v354 = vorrq_s8(vandq_s8(vsubq_f32(v353, vmulq_n_f32(v465, COERCE_FLOAT(*(*&v115 + 16 * (v349.i32[0] + v349.i32[1] * v116))))), v101), vandq_s8(v353, v92));
          v355 = vsubq_f32(vaddq_f32(v28, v354), v9);
          if (v5)
          {
            v356 = vaddq_s32(vcvtq_s32_f32(v355), vcltzq_f32(v355));
            v357 = vsubq_f32(v355, vcvtq_f32_s32(v356)).u64[0];
            v358 = vsubq_f32(vsubq_f32(v28, *(v39 + 1184)), v9);
            v359 = vaddq_s32(vcvtq_s32_f32(v358), vcltzq_f32(v358));
            *v356.i8 = vmla_s32(vzip1_s32(*v356.i8, *v359.i8), vzip2_s32(*v356.i8, *v359.i8), v42);
            v360 = v356.i32[1];
            v358.i64[0] = vsubq_f32(v358, vcvtq_f32_s32(v359)).u64[0];
            v361 = (*&v40 + 16 * v356.i32[0]);
            v362 = vaddq_f32(*v361, vmulq_n_f32(vsubq_f32(v361[1], *v361), v357.f32[0]));
            v363 = vrev64q_s32(vaddq_f32(v362, vmulq_lane_f32(vsubq_f32(vaddq_f32(v361[v41], vmulq_n_f32(vsubq_f32(v361[v41 + 1], v361[v41]), v357.f32[0])), v362), v357, 1)));
            v364 = (*&v40 + 16 * v360);
            v365 = vaddq_f32(*v364, vmulq_n_f32(vsubq_f32(v364[1], *v364), v358.f32[0]));
            v366 = vaddq_f32(v365, vmulq_lane_f32(vsubq_f32(vaddq_f32(v364[v41], vmulq_n_f32(vsubq_f32(v364[v41 + 1], v364[v41]), v358.f32[0])), v365), *v358.f32, 1));
            v367 = vsubq_f32(vsubq_f32(v28, *(v39 + 1200)), v9);
            v368 = vaddq_s32(vcvtq_s32_f32(v367), vcltzq_f32(v367));
            v367.i64[0] = vsubq_f32(v367, vcvtq_f32_s32(v368)).u64[0];
            v369 = (*&v40 + 16 * (v368.i32[0] + v368.i32[1] * v41));
            v370 = vaddq_f32(*v369, vmulq_n_f32(vsubq_f32(v369[1], *v369), v367.f32[0]));
            v371 = vaddq_f32(v370, vmulq_lane_f32(vsubq_f32(vaddq_f32(v369[v41], vmulq_n_f32(vsubq_f32(v369[v41 + 1], v369[v41]), v367.f32[0])), v370), *v367.f32, 1));
            v372 = *(v39 + 1232);
            v373 = *(v39 + 1216);
            v374 = vsubq_f32(vsubq_f32(v28, *(v39 + 1248)), v9);
            v375 = vaddq_s32(vcvtq_s32_f32(v374), vcltzq_f32(v374));
            v374.i64[0] = vsubq_f32(v374, vcvtq_f32_s32(v375)).u64[0];
            v376 = (*&v40 + 16 * (v375.i32[0] + v375.i32[1] * v41));
            v377 = vaddq_f32(*v376, vmulq_n_f32(vsubq_f32(v376[1], *v376), v374.f32[0]));
            v378 = vaddq_f32(v377, vmulq_lane_f32(vsubq_f32(vaddq_f32(v376[v41], vmulq_n_f32(vsubq_f32(v376[v41 + 1], v376[v41]), v374.f32[0])), v377), *v374.f32, 1));
            v379 = *(v39 + 1264);
            v380 = vsubq_f32(vsubq_f32(v28, *(v39 + 1280)), v9);
            v381 = vaddq_s32(vcvtq_s32_f32(v380), vcltzq_f32(v380));
            v382 = vsubq_f32(v380, vcvtq_f32_s32(v381)).u64[0];
            v383 = (*&v40 + 16 * (v381.i32[0] + v381.i32[1] * v41));
            v384 = vaddq_f32(*v383, vmulq_n_f32(vsubq_f32(v383[1], *v383), v382.f32[0]));
            v385 = vaddq_f32(v384, vmulq_lane_f32(vsubq_f32(vaddq_f32(v383[v41], vmulq_n_f32(vsubq_f32(v383[v41 + 1], v383[v41]), v382.f32[0])), v384), v382, 1));
            v386 = *(v39 + 1296);
            v387 = vsubq_f32(vsubq_f32(v28, *(v39 + 1312)), v9);
            v388 = vaddq_s32(vcvtq_s32_f32(v387), vcltzq_f32(v387));
            v389 = vsubq_f32(v387, vcvtq_f32_s32(v388)).u64[0];
            v390 = (*&v40 + 16 * (v388.i32[0] + v388.i32[1] * v41));
            v391 = vaddq_f32(*v390, vmulq_n_f32(vsubq_f32(v390[1], *v390), v389.f32[0]));
            v392 = vaddq_f32(v391, vmulq_lane_f32(vsubq_f32(vaddq_f32(v390[v41], vmulq_n_f32(vsubq_f32(v390[v41 + 1], v390[v41]), v389.f32[0])), v391), v389, 1));
            v393 = *(v39 + 1328);
            v394 = vsubq_f32(vsubq_f32(v28, *(v39 + 1344)), v9);
            v395 = vaddq_s32(vcvtq_s32_f32(v394), vcltzq_f32(v394));
            v396 = vsubq_f32(v394, vcvtq_f32_s32(v395)).u64[0];
            v397 = (*&v40 + 16 * (v395.i32[0] + v395.i32[1] * v41));
            v398 = vaddq_f32(*v397, vmulq_n_f32(vsubq_f32(v397[1], *v397), v396.f32[0]));
            v399 = vaddq_f32(v398, vmulq_lane_f32(vsubq_f32(vaddq_f32(v397[v41], vmulq_n_f32(vsubq_f32(v397[v41 + 1], v397[v41]), v396.f32[0])), v398), v396, 1));
          }

          else
          {
            v400 = vaddq_f32(v355, v280);
            v401 = vcvtq_s32_f32(v400);
            v402 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1184)), v9), v280);
            v403 = vcvtq_s32_f32(v402);
            *v400.f32 = vadd_s32(*v401.i8, *&vcgtq_f32(vcvtq_f32_s32(v401), v400));
            *v401.i8 = vadd_s32(*v403.i8, *&vcgtq_f32(vcvtq_f32_s32(v403), v402));
            *v400.f32 = vmla_s32(vzip1_s32(*v400.f32, *v401.i8), vzip2_s32(*v400.f32, *v401.i8), v42);
            v363 = vrev64q_s32(*(*&v40 + 16 * v400.i32[0]));
            v366 = *(*&v40 + 16 * v400.i32[1]);
            v404 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1200)), v9), v280);
            v405 = vcvtq_s32_f32(v404);
            v404.i64[0] = vaddq_s32(v405, vcgtq_f32(vcvtq_f32_s32(v405), v404)).u64[0];
            v371 = *(*&v40 + 16 * (v404.i32[0] + v404.i32[1] * v41));
            v372 = *(v39 + 1232);
            v373 = *(v39 + 1216);
            v406 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1248)), v9), v280);
            v407 = vcvtq_s32_f32(v406);
            v406.i64[0] = vaddq_s32(v407, vcgtq_f32(vcvtq_f32_s32(v407), v406)).u64[0];
            v378 = *(*&v40 + 16 * (v406.i32[0] + v406.i32[1] * v41));
            v379 = *(v39 + 1264);
            v408 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1280)), v9), v280);
            v409 = vcvtq_s32_f32(v408);
            v408.i64[0] = vaddq_s32(v409, vcgtq_f32(vcvtq_f32_s32(v409), v408)).u64[0];
            v385 = *(*&v40 + 16 * (v408.i32[0] + v408.i32[1] * v41));
            v386 = *(v39 + 1296);
            v410.i64[0] = 0x3F0000003F000000;
            v410.i64[1] = 0x3F0000003F000000;
            v411 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1312)), v9), v280);
            v412 = vcvtq_s32_f32(v411);
            v411.i64[0] = vaddq_s32(v412, vcgtq_f32(vcvtq_f32_s32(v412), v411)).u64[0];
            v392 = *(*&v40 + 16 * (v411.i32[0] + v411.i32[1] * v41));
            v393 = *(v39 + 1328);
            v413 = vaddq_f32(vsubq_f32(vsubq_f32(v28, *(v39 + 1344)), v9), v410);
            v414 = vcvtq_s32_f32(v413);
            v413.i64[0] = vaddq_s32(v414, vcgtq_f32(vcvtq_f32_s32(v414), v413)).u64[0];
            v399 = *(*&v40 + 16 * (v413.i32[0] + v413.i32[1] * v41));
          }

          v415 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v371)), v94, v93).u64[0];
          v416 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v415, 0), vdupq_lane_s32(v415, 1)), v91);
          v417 = vbslq_s8(v416, v372, v373);
          v418 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v378)), v94, v93).u64[0];
          v419 = vbslq_s8(v416, v371, v366);
          v420 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v418, 0), vdupq_lane_s32(v418, 1)), v91);
          v421 = vbslq_s8(v420, v378, v419);
          v422 = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v385)), v94, v93).u64[0];
          v423 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(v422, 0), vdupq_lane_s32(v422, 1)), v91);
          v424 = vbslq_s8(v423, v386, vbslq_s8(v420, v379, v417));
          v417.i64[0] = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v392)), v94, v93).u64[0];
          v425 = vbslq_s8(v423, v385, v421);
          v426 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(*v417.i8, 0), vdupq_lane_s32(*v417.i8, 1)), v91);
          v427 = vbslq_s8(v426, v393, v424);
          v428 = vbslq_s8(v426, v392, v425);
          v426.i64[0] = vbslq_s8(vcgtq_f32(v91, vsubq_f32(v299, v399)), v94, v93).u64[0];
          v429 = vcgtq_f32(vaddq_f32(vdupq_lane_s32(*v426.i8, 0), vdupq_lane_s32(*v426.i8, 1)), v91);
          v12 = v461;
          *v428.i8 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v461, vmul_f32(*&v466, vadd_f32(*&v451, vmul_f32(*&v467, vrev64_s32(*&vbslq_s8(v429, v399, v428)))))), 0), v468));
          v430 = vbslq_s8(v429, *(v39 + 1360), v427);
          v431 = vandq_s8(v430, v92);
          v432 = vandq_s8(vaddq_f32(vmulq_n_f32(v465, COERCE_FLOAT(*(*&v115 + 16 * (v428.i32[0] + v428.i32[1] * v116)))), v430), v101);
          v433 = vaddq_f32(v28, vorrq_s8(v432, v431));
          v434 = vsubq_f32(vorrq_s8(vandq_s8(vaddq_f32(v94, v433), v101), vandq_s8(v92, v433)), v9);
          if (v5)
          {
            v435 = vaddq_s32(vcvtq_s32_f32(v434), vcltzq_f32(v434));
            v436 = vsubq_f32(v434, vcvtq_f32_s32(v435)).u64[0];
            v437 = (*&v40 + 16 * (v435.i32[0] + v435.i32[1] * v41));
            v438 = vaddq_f32(*v437, vmulq_n_f32(vsubq_f32(v437[1], *v437), v436.f32[0]));
            v32 = vaddq_f32(v438, vmulq_lane_f32(vsubq_f32(vaddq_f32(v437[v41], vmulq_n_f32(vsubq_f32(v437[v41 + 1], v437[v41]), v436.f32[0])), v438), v436, 1));
            v27.i64[0] = 0x3F0000003F000000;
            v27.i64[1] = 0x3F0000003F000000;
          }

          else
          {
            v27.i64[0] = 0x3F0000003F000000;
            v27.i64[1] = 0x3F0000003F000000;
            v30 = vaddq_f32(v434, v27);
            v31 = vcvtq_s32_f32(v30);
            v30.i64[0] = vaddq_s32(v31, vcgtq_f32(vcvtq_f32_s32(v31), v30)).u64[0];
            v32 = *(*&v40 + 16 * (v30.i32[0] + v30.i32[1] * v41));
          }

          v33 = vaddq_f32(vmulq_n_f32(v456, *vandq_s8(v182, vcgtq_f32(vaddq_f32(v183, v458), v180)).i32), vmulq_n_f32(vrev64q_s32(v457), *vandq_s8(v182, vcgtq_f32(vsubq_f32(v206, v202), v180)).i32));
          v34 = vabsq_f32(vorrq_s8(v432, vandq_s8(vrev64q_s32(v354), v92)));
          v35 = vminq_f32(vmulq_f32(v453, vrsqrteq_f32(v34)), v284);
          v36 = vcvt_s32_f32(vmin_f32(vmax_f32(vmul_f32(v464, vadd_f32(*&v455, vmul_f32(*&v218, vadd_f32(vmul_f32(*v34.f32, vmin_f32(vmul_f32(*v35.f32, *&vrsqrtsq_f32(vmulq_f32(v34, v35), v35)), *v284.f32)), vmul_f32(*&v452, *&vcvtq_f32_s32(vcvtq_s32_f32(vaddq_f32(v142, vmulq_f32(v462, vorrq_s8(vandq_s8(v32, v101), vandq_s8(v92, v363))))))))))), 0), v463));
          v37 = vcgtq_f32(v33, v91);
          *&v38 = vbslq_s8(v37, v33, vbslq_s8(vcgtq_f32(vdupq_lane_s32(*&v460, 1), v91), v450, v91)).u64[0];
          *(&v38 + 1) = vbslq_s8(vbicq_s8(v459, v37), *(*&v220 + 16 * (v36.i32[0] + v36.i32[1] * v219)), v91).u64[0];
          *(*&v449 + v29) = v38;
          v28 = vaddq_f32(v28, xmmword_2603429B0);
          v29 += 16;
          v18 += 0x100000000;
        }

        while (v447 != v29);
        *&v11 += v442;
        v18 = v445 + v441;
        v28 = vaddq_f32(v444, xmmword_2603429C0);
        *&v449 += v440;
        v19 += v442;
        v20 += v442;
        v21 += v442;
        v22 += v442;
        v23 += v442;
        v24 += v442;
        v25 += v442;
        v26 += v442;
        v8 = v446;
      }

      while (v446 != v443);
    }
  }

  return 0;
}

uint64_t HgcSMAAPatternSearch::GetDOD(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 2 || a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    DOD = HGRenderer::GetDOD(a2, Input);
    v13 = HGRectIntersection(v5, v4, DOD, v12);
    if (!HGRectIsNull(v13, v14))
    {
      v15 = HGRenderer::GetInput(a2, this, 0);
      v16 = HGRenderer::GetDOD(a2, v15);
      return HGRectUnion(v16, v17, 0, 0);
    }

    return 0;
  }

  if (a3)
  {
    return 0;
  }

  if ((*(*this + 312))(this, a2) >= 1)
  {
    v8 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
    HGRectGrow(v5, v4, v8);
  }

  return 0x8000000080000000;
}

uint64_t HgcSMAAPatternSearch::GetROI(HGNode *this, HGRenderer *a2, unsigned int a3, HGRect a4)
{
  if (a3 == 2 || a3 == 1)
  {
    Input = HGRenderer::GetInput(a2, this, a3);
    return HGRenderer::GetDOD(a2, Input);
  }

  else if (a3)
  {
    return 0;
  }

  else
  {
    v6 = HGRenderer::GetInput(a2, this, 0);
    DOD = HGRenderer::GetDOD(a2, v6);
    v9 = v8;
    if ((*(*this + 312))(this, a2) < 1)
    {
      return DOD;
    }

    else
    {
      v10 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      return HGRectGrow(DOD, v9, v10);
    }
  }
}

void HgcSMAAPatternSearch::HgcSMAAPatternSearch(HgcSMAAPatternSearch *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_287229EF0;
  operator new();
}

void HgcSMAAPatternSearch::~HgcSMAAPatternSearch(HgcSMAAPatternSearch *this)
{
  *this = &unk_287229EF0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4040DFEAD7);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_287229EF0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4040DFEAD7);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcSMAAPatternSearch::~HgcSMAAPatternSearch(HGNode *this)
{
  *this = &unk_287229EF0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4040DFEAD7);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcSMAABlend::GetProgram(HgcSMAABlend *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000054f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 9.999999747e-06, 0.000000000);\n    half4 r0, r1, r2;\n    float4 s0;\n    FragmentOut output;\n\n    r0.xz = (half2) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xz;\n    r0.y = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord2.xy).y;\n    r0.w = (half) hg_Texture1.sample(hg_Sampler1, frag._texCoord3.xy).w;\n    r1.xy = r0.wy - r0.zx;\n    r1.xy = select(-r0.zx, r0.wy, r1.xy > 0.00000h);\n    r2.xy = abs(r1.xy);\n    r2.xy = r2.yy - r2.xx;\n    r2.xy = select(c0.yx, c0.xy, r2.xy < 0.00000h);\n    r1.xy = r1.xy*r2.xy;\n    r0.xy = half2(dot(r0, 1.00000h));\n    r0.xy = half2(c0.zz < r0.xy);\n    s0.xy = float2(r1.xy)*float2(r0.xy) + frag._texCoord0.xy;\n    s0.xy = s0.xy + hg_Params[0].xy;\n    s0.xy = s0.xy*hg_Params[0].zw;\n    output.color0 = (float4) hg_Texture0.sample(hg_Sampler0, s0.xy);\n    return output;\n}\n//MD5=741f56be:ab313603:865b46ac:82d181bb\n//SIG=00400000:00000000:00000000:00000003:0001:0001:0004:0000:0000:0000:001e:0000:0004:02:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000518\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 9.999999747e-06, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.xz = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy).xz;\n    r0.y = hg_Texture1.sample(hg_Sampler1, frag._texCoord2.xy).y;\n    r0.w = hg_Texture1.sample(hg_Sampler1, frag._texCoord3.xy).w;\n    r1.xy = r0.wy - r0.zx;\n    r1.xy = select(-r0.zx, r0.wy, r1.xy > 0.00000f);\n    r2.xy = abs(r1.xy);\n    r2.xy = r2.yy - r2.xx;\n    r2.xy = select(c0.yx, c0.xy, r2.xy < 0.00000f);\n    r1.xy = r1.xy*r2.xy;\n    r0.xy = float2(dot(r0, 1.00000f));\n    r0.xy = float2(c0.zz < r0.xy);\n    r1.xy = r1.xy*r0.xy + frag._texCoord0.xy;\n    r1.xy = r1.xy + hg_Params[0].xy;\n    r1.xy = r1.xy*hg_Params[0].zw;\n    output.color0 = hg_Texture0.sample(hg_Sampler0, r1.xy);\n    return output;\n}\n//MD5=b7af3f41:6b37361f:a8d61853:9193c802\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0003:0000:0000:0000:001e:0000:0004:02:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000052b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 9.999999747e-06, 0.000000000);\n    highp vec4 r0, r1, r2;\n\n    r0.xz = texture2D(hg_Texture1, hg_TexCoord1.xy).xz;\n    r0.y = texture2D(hg_Texture1, hg_TexCoord2.xy).y;\n    r0.w = texture2D(hg_Texture1, hg_TexCoord3.xy).w;\n    r1.xy = r0.wy - r0.zx;\n    r1.xy = vec2(r1.x > 0.00000 ? r0.w : -r0.z, r1.y > 0.00000 ? r0.y : -r0.x);\n    r2.xy = abs(r1.xy);\n    r2.xy = r2.yy - r2.xx;\n    r2.xy = vec2(r2.x < 0.00000 ? c0.x : c0.y, r2.y < 0.00000 ? c0.y : c0.x);\n    r1.xy = r1.xy*r2.xy;\n    r0.xy = vec2(dot(r0, vec4(1.00000)));\n    r0.xy = vec2(lessThan(c0.zz, r0.xy));\n    r1.xy = r1.xy*r0.xy + hg_TexCoord0.xy;\n    r1.xy = r1.xy + hg_ProgramLocal0.xy;\n    r1.xy = r1.xy*hg_ProgramLocal0.zw;\n    gl_FragColor = texture2D(hg_Texture0, r1.xy);\n}\n//MD5=5856c31f:bb2d9d4d:b266418a:0cacbda8\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0003:0000:0000:0000:0000:0000:0004:02:0:1:0\n";
  }
}

void sub_25FDC2B80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, void *a23)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void sub_25FDC2BCC(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDC2BC4);
}

uint64_t HgcSMAABlend::BindTexture(HgcSMAABlend *this, HGHandler *a2, int a3)
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

      HGHandler::TexCoord(a2, 2, 0, 0, 0);
      if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
      {
        (*(*a2 + 168))(a2);
      }

      (*(*a2 + 96))(a2, 0.0, 1.0, 0.0);
      HGHandler::TexCoord(a2, 3, 0, 0, 0);
      if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
      {
        (*(*a2 + 168))(a2);
      }

      (*(*a2 + 96))(a2, 1.0, 0.0, 0.0);
      return 0;
    }

    else
    {
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
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
    (*(*a2 + 136))(a2, 0, v5, v6, v7, v8);
    return 0;
  }
}

uint64_t HgcSMAABlend::Bind(HgcSMAABlend *this, HGHandler *a2)
{
  HGHandler::TexCoord(a2, 0, 0, 0, 0);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcSMAABlend::RenderTile(HgcSMAABlend *this, HGTile *a2)
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
    v15 = v12 + v14;
    v16 = v12 + 16;
    v17.i64[0] = 0x3F0000003F000000;
    v17.i64[1] = 0x3F0000003F000000;
    v18 = v9;
    do
    {
      if (v10 < 3)
      {
        v20 = 0;
        v23 = v18;
      }

      else
      {
        v19 = 0;
        v20 = 0;
        v21 = v12 + v14;
        v22 = v10;
        v23 = v18;
        do
        {
          v41 = *(v12 + v19 + 16);
          v42 = *(this + 51);
          v43 = *(v42 + 16);
          v44 = vbslq_s8(*v42, *(v21 + v19 + 16), v41);
          v45 = *(v12 + v19 + 32);
          v46 = vbslq_s8(v43, v41, vbslq_s8(*v42, *(v21 + v19), *(v12 + v19)));
          v47 = vbslq_s8(v43, v45, v44);
          v48 = *(v42 + 32);
          v49 = *(v42 + 48);
          *v50.f32 = vqtbl1_s8(v46, *v48.f32);
          v51 = vextq_s8(v48, v48, 8uLL).u64[0];
          *&v50.u32[2] = vqtbl1_s8(v46, v51);
          v52 = vbslq_s8(v43, *(v12 + v19 + 48), vbslq_s8(*v42, *(v21 + v19 + 32), v45));
          *v53.f32 = vqtbl1_s8(v47, *v48.f32);
          *&v53.u32[2] = vqtbl1_s8(v47, v51);
          *v54.f32 = vqtbl1_s8(v52, *v48.f32);
          *&v54.u32[2] = vqtbl1_s8(v52, v51);
          *v43.f32 = vqtbl1_s8(v46, *v49.f32);
          v55 = vextq_s8(v49, v49, 8uLL).u64[0];
          *&v43.u32[2] = vqtbl1_s8(v46, v55);
          *v48.f32 = vqtbl1_s8(v47, *v49.f32);
          *&v48.u32[2] = vqtbl1_s8(v47, v55);
          *v49.f32 = vqtbl1_s8(v52, *v49.f32);
          *&v49.u32[2] = vqtbl1_s8(v52, v55);
          v56 = vsubq_f32(v53, v48);
          v57 = vsubq_f32(v54, v49);
          v58 = vnegq_f32(v46);
          v59 = vnegq_f32(v47);
          v60 = vnegq_f32(v52);
          v61 = *(v42 + 64);
          v62 = *(v42 + 80);
          v63 = vbslq_s8(vcgtq_f32(vsubq_f32(v50, v43), v61), v50, vzip1q_s32(vextq_s8(v58, v58, 8uLL), v58));
          v64 = vbslq_s8(vcgtq_f32(v56, v61), v53, vzip1q_s32(vextq_s8(v59, v59, 8uLL), v59));
          *v50.f32 = vabs_f32(*v63.f32);
          *v58.i8 = vabs_f32(*v64.f32);
          v65 = vbslq_s8(vcgtq_f32(v57, v61), v54, vzip1q_s32(vextq_s8(v60, v60, 8uLL), v60));
          *v57.f32 = vabs_f32(*v65.f32);
          v66 = vaddq_f32(v23, xmmword_2603429B0);
          v67 = vsubq_f32(vdupq_lane_s32(*v50.f32, 1), vdupq_lane_s32(*v50.f32, 0));
          v68 = vaddq_f32(v66, xmmword_2603429B0);
          v69 = *(v42 + 96);
          v70 = *(v42 + 112);
          v71 = vmulq_f32(v63, vbslq_s8(vcgtq_f32(v61, v67), v69, v62));
          v72 = vaddq_f32(vextq_s8(v46, v46, 4uLL), v46);
          v73 = vaddq_f32(vextq_s8(v47, v47, 4uLL), v47);
          v74 = vaddq_f32(vextq_s8(v52, v52, 4uLL), v52);
          v75 = *(v42 + 128);
          v76 = vaddq_f32(v23, vmulq_f32(vandq_s8(v75, vcgtq_f32(vaddq_f32(v72, vextq_s8(v72, v72, 8uLL)), v70)), v71));
          v77 = vaddq_f32(v66, vmulq_f32(vandq_s8(v75, vcgtq_f32(vaddq_f32(v73, vextq_s8(v73, v73, 8uLL)), v70)), vmulq_f32(v64, vbslq_s8(vcgtq_f32(v61, vsubq_f32(vdupq_lane_s32(*v58.i8, 1), vdupq_lane_s32(*v58.i8, 0))), v69, v62))));
          v78 = vaddq_f32(v68, vmulq_f32(vandq_s8(v75, vcgtq_f32(vaddq_f32(v74, vextq_s8(v74, v74, 8uLL)), v70)), vmulq_f32(v65, vbslq_s8(vcgtq_f32(v61, vsubq_f32(vdupq_lane_s32(*v57.f32, 1), vdupq_lane_s32(*v57.f32, 0))), v69, v62))));
          v79 = *(a2 + 10);
          v80 = *(a2 + 22);
          v81 = vsubq_f32(v76, v9);
          if (v5)
          {
            v24 = vaddq_s32(vcvtq_s32_f32(v81), vcltzq_f32(v81));
            v25 = vsubq_f32(v81, vcvtq_f32_s32(v24)).u64[0];
            v26 = vsubq_f32(v77, v9);
            v27 = vaddq_s32(vcvtq_s32_f32(v26), vcltzq_f32(v26));
            v28 = vsubq_f32(v26, vcvtq_f32_s32(v27)).u64[0];
            *v24.i8 = vmla_s32(vzip1_s32(*v24.i8, *v27.i8), vzip2_s32(*v24.i8, *v27.i8), vdup_n_s32(v80));
            v29 = (v79 + 16 * v24.i32[0]);
            v30 = vaddq_f32(*v29, vmulq_n_f32(vsubq_f32(v29[1], *v29), v25.f32[0]));
            v31 = vaddq_f32(v30, vmulq_lane_f32(vsubq_f32(vaddq_f32(v29[v80], vmulq_n_f32(vsubq_f32(v29[v80 + 1], v29[v80]), v25.f32[0])), v30), v25, 1));
            v32 = (v79 + 16 * v24.i32[1]);
            v33 = vaddq_f32(*v32, vmulq_n_f32(vsubq_f32(v32[1], *v32), v28.f32[0]));
            v34 = vaddq_f32(v33, vmulq_lane_f32(vsubq_f32(vaddq_f32(v32[v80], vmulq_n_f32(vsubq_f32(v32[v80 + 1], v32[v80]), v28.f32[0])), v33), v28, 1));
            v35 = vsubq_f32(v78, v9);
            v36 = vaddq_s32(vcvtq_s32_f32(v35), vcltzq_f32(v35));
            v35.i64[0] = vsubq_f32(v35, vcvtq_f32_s32(v36)).u64[0];
            v37 = (v79 + 16 * (v36.i32[0] + v36.i32[1] * v80));
            v38 = vaddq_f32(*v37, vmulq_n_f32(vsubq_f32(v37[1], *v37), v35.f32[0]));
            v39 = vaddq_f32(v38, vmulq_lane_f32(vsubq_f32(vaddq_f32(v37[v80], vmulq_n_f32(vsubq_f32(v37[v80 + 1], v37[v80]), v35.f32[0])), v38), *v35.f32, 1));
          }

          else
          {
            v82 = vaddq_f32(v81, v17);
            v83 = vcvtq_s32_f32(v82);
            v84 = vaddq_f32(vsubq_f32(v77, v9), v17);
            v85 = vcvtq_s32_f32(v84);
            *v82.f32 = vadd_s32(*v83.i8, *&vcgtq_f32(vcvtq_f32_s32(v83), v82));
            *v84.f32 = vadd_s32(*v85.i8, *&vcgtq_f32(vcvtq_f32_s32(v85), v84));
            *v84.f32 = vmla_s32(vzip1_s32(*v82.f32, *v84.f32), vzip2_s32(*v82.f32, *v84.f32), vdup_n_s32(v80));
            v86 = v84.i32[1];
            v31 = *(v79 + 16 * v84.i32[0]);
            v34 = *(v79 + 16 * v86);
            v87 = vaddq_f32(vsubq_f32(v78, v9), v17);
            v88 = vcvtq_s32_f32(v87);
            v87.i64[0] = vaddq_s32(v88, vcgtq_f32(vcvtq_f32_s32(v88), v87)).u64[0];
            v39 = *(v79 + 16 * (v87.i32[0] + v87.i32[1] * v80));
          }

          v40 = (v11 + v19);
          *v40 = v31;
          v40[1] = v34;
          v40[2] = v39;
          v23 = vaddq_f32(v68, xmmword_2603429B0);
          v22 -= 3;
          v20 += 3;
          v19 += 48;
        }

        while (v22 > 2);
      }

      if (v20 < v10)
      {
        v89 = (v16 + 16 * v20);
        do
        {
          v93 = *(this + 51);
          v94 = vbslq_s8(*(v93 + 16), *v89, vbslq_s8(*v93, *(v15 + 16 * v20), v89[-1]));
          v95 = *(v93 + 32);
          v96 = *(v93 + 48);
          *v97.f32 = vqtbl1_s8(v94, *v95.f32);
          *&v97.u32[2] = vqtbl1_s8(v94, *&vextq_s8(v95, v95, 8uLL));
          *v95.f32 = vqtbl1_s8(v94, *v96.i8);
          *&v95.u32[2] = vqtbl1_s8(v94, *&vextq_s8(v96, v96, 8uLL));
          v98 = vnegq_f32(v94);
          v99 = *(v93 + 64);
          v100 = vbslq_s8(vcgtq_f32(vsubq_f32(v97, v95), v99), v97, vzip1q_s32(vextq_s8(v98, v98, 8uLL), v98));
          *v98.i8 = vabs_f32(*v100.f32);
          v101 = vaddq_f32(vextq_s8(v94, v94, 4uLL), v94);
          v102 = vaddq_f32(v23, vmulq_f32(vandq_s8(*(v93 + 128), vcgtq_f32(vaddq_f32(v101, vextq_s8(v101, v101, 8uLL)), *(v93 + 112))), vmulq_f32(v100, vbslq_s8(vcgtq_f32(v99, vsubq_f32(vdupq_lane_s32(*v98.i8, 1), vdupq_lane_s32(*v98.i8, 0))), *(v93 + 96), *(v93 + 80)))));
          v103 = *(a2 + 10);
          v104 = *(a2 + 22);
          v105 = vsubq_f32(v102, v9);
          if (v5)
          {
            v106 = vaddq_s32(vcvtq_s32_f32(v105), vcltzq_f32(v105));
            v107 = vsubq_f32(v105, vcvtq_f32_s32(v106)).u64[0];
            v108 = (v103 + 16 * (v106.i32[0] + v106.i32[1] * v104));
            v109 = vaddq_f32(*v108, vmulq_n_f32(vsubq_f32(v108[1], *v108), v107.f32[0]));
            v92 = vaddq_f32(v109, vmulq_lane_f32(vsubq_f32(vaddq_f32(v108[v104], vmulq_n_f32(vsubq_f32(v108[v104 + 1], v108[v104]), v107.f32[0])), v109), v107, 1));
          }

          else
          {
            v90 = vaddq_f32(v105, v17);
            v91 = vcvtq_s32_f32(v90);
            v90.i64[0] = vaddq_s32(v91, vcgtq_f32(vcvtq_f32_s32(v91), v90)).u64[0];
            v92 = *(v103 + 16 * (v90.i32[0] + v90.i32[1] * v104));
          }

          *(v11 + 16 * v20) = v92;
          v23 = vaddq_f32(v23, xmmword_2603429B0);
          ++v89;
          ++v20;
        }

        while (v20 < v10);
      }

      ++v8;
      v11 += v13;
      v18 = vaddq_f32(v18, xmmword_2603429C0);
      v12 += v14;
      v15 += v14;
      v16 += v14;
    }

    while (v8 != v7);
  }

  return 0;
}

uint64_t HgcSMAABlend::GetDOD(HgcSMAABlend *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3)
  {
    if (a3 == 1)
    {
      v6 = HGRectMake4i(0, 0, 1u, 1u);
      return HGRectGrow(v5, v4, v6);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if ((*(*this + 312))(this, a2) >= 1)
    {
      v8 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      HGRectGrow(v5, v4, v8);
    }

    return 0x8000000080000000;
  }
}

uint64_t HgcSMAABlend::GetROI(HGNode *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    if (a3 == 1)
    {
      v4 = *&a4.var0;
      v5 = *&a4.var2;
      v6 = HGRectMake4i(0, 0, 1u, 1u);
      return HGRectGrow(v4, v5, v6);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    Input = HGRenderer::GetInput(a2, this, 0);
    DOD = HGRenderer::GetDOD(a2, Input);
    v13 = v12;
    if ((*(*this + 312))(this, a2) < 1)
    {
      return DOD;
    }

    else
    {
      v14 = HGRectMake4i(0xFFFFFFFF, 0xFFFFFFFF, 1u, 1u);
      return HGRectGrow(DOD, v13, v14);
    }
  }
}

void HgcSMAABlend::~HgcSMAABlend(HgcSMAABlend *this)
{
  *this = &unk_28722A140;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40265AC83CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcSMAABlend::~HgcSMAABlend(HGNode *this)
{
  *this = &unk_28722A140;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

void HGAntiAlias::HGAntiAlias(HGNode *a1, int a2)
{
  HGNode::HGNode(a1);
  *v3 = &unk_28722A390;
  *(v3 + 408) = 0;
  *(v3 + 416) = 1028443341;
  *(v3 + 420) = a2;
}

void HGAntiAlias::~HGAntiAlias(HGAntiAlias *this)
{
  *this = &unk_28722A390;
  v1 = *(this + 51);
  if (v1)
  {
    v2 = this;
    (*(*v1 + 24))(*(this + 51));
    this = v2;
  }

  HGNode::~HGNode(this);
}

void HGAntiAlias::~HGAntiAlias(HGNode *this)
{
  *this = &unk_28722A390;
  v2 = *(this + 51);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGAntiAlias::SetParameter(HGAntiAlias *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2 || *(this + 104) == a3)
  {
    return 0;
  }

  *(this + 104) = a3;
  return 1;
}

void HGAntiAlias::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  v4 = HGObject::operator new(0x320uLL);
  HGColorConform::HGColorConform(v4);
  (*(*v4 + 120))(v4, 0, Input);
  if (*(this + 105) == 1)
  {
    v5 = 3;
  }

  else
  {
    v5 = 0;
  }

  if (*(this + 105) == 1)
  {
    v6 = 3;
  }

  else
  {
    v6 = 1;
  }

  HGColorConform::SetConversion(v4, v5, 8, 0, v5, 1, v6);
  v7 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v7);
  *v7 = &unk_287229CA0;
  operator new();
}

void sub_25FDC4140(_Unwind_Exception *a1)
{
  HGObject::operator delete(v8);
  (*(*v7 + 24))(v7);
  if (v6)
  {
    (*(*v6 + 24))(v6);
  }

  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  (*(*v2 + 24))(v2);
  (*(*v1 + 24))(v1);
  _Unwind_Resume(a1);
}

double HgcSMAAPatternSearch::State::State(HgcSMAAPatternSearch::State *this)
{
  *this = xmmword_260345860;
  *(this + 1) = xmmword_260818BC0;
  *(this + 2) = xmmword_260818BD0;
  *(this + 3) = xmmword_260818BE0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 5) = xmmword_260818BF0;
  *(this + 6) = xmmword_2608170D0;
  *(this + 7) = xmmword_260818C00;
  *(this + 8) = xmmword_260818C10;
  *(this + 9) = xmmword_260818C20;
  *(this + 10) = xmmword_2603461B0;
  *(this + 11) = xmmword_2603429B0;
  *(this + 12) = xmmword_2603444B0;
  *(this + 13) = xmmword_2603429C0;
  *(this + 14) = xmmword_260344600;
  *(this + 15) = xmmword_260344740;
  *(this + 16) = xmmword_260347130;
  *(this + 17) = xmmword_260818C30;
  *(this + 18) = xmmword_260345850;
  *(this + 19) = xmmword_260818C40;
  *(this + 20) = xmmword_260818C50;
  *(this + 21) = xmmword_260818C60;
  *(this + 22) = xmmword_260818C70;
  *(this + 23) = xmmword_260347120;
  *(this + 24) = xmmword_260818C80;
  *(this + 25) = xmmword_2603461C0;
  *(this + 26) = xmmword_260818C90;
  *(this + 27) = xmmword_260818CA0;
  *(this + 28) = xmmword_260818CB0;
  *(this + 29) = xmmword_260818CC0;
  *(this + 30) = xmmword_260818CD0;
  *(this + 31) = xmmword_260818CE0;
  *(this + 32) = xmmword_260818CF0;
  *(this + 33) = xmmword_260818D00;
  *(this + 34) = xmmword_260818D10;
  *(this + 35) = xmmword_260818D20;
  *(this + 36) = xmmword_260818D30;
  *(this + 37) = xmmword_260818D40;
  *(this + 38) = xmmword_260818D50;
  *(this + 39) = xmmword_260818D60;
  *(this + 40) = xmmword_260818D70;
  *(this + 41) = xmmword_260818D80;
  *(this + 42) = xmmword_260818D90;
  *(this + 43) = xmmword_260346320;
  *(this + 44) = xmmword_260818DA0;
  *(this + 45) = xmmword_260818DB0;
  *(this + 46) = xmmword_260818DC0;
  *(this + 47) = xmmword_260818DD0;
  *(this + 48) = xmmword_260818DE0;
  *(this + 49) = xmmword_260818DF0;
  *(this + 50) = xmmword_260818E00;
  *(this + 51) = xmmword_260818E10;
  *(this + 52) = xmmword_260818E20;
  *(this + 53) = xmmword_260818E30;
  *(this + 54) = xmmword_260818E40;
  *(this + 55) = xmmword_260818E50;
  *(this + 56) = xmmword_260818E60;
  *(this + 57) = xmmword_2603466A0;
  *(this + 58) = xmmword_260346550;
  *(this + 59) = xmmword_260818E70;
  *(this + 60) = xmmword_260818E80;
  *(this + 61) = xmmword_260818E90;
  *(this + 62) = xmmword_260818EA0;
  *(this + 63) = xmmword_260818EB0;
  *(this + 64) = xmmword_260818EC0;
  *(this + 65) = xmmword_260818ED0;
  *(this + 66) = xmmword_260818EE0;
  *(this + 67) = xmmword_260818EF0;
  *(this + 68) = xmmword_260818F00;
  *(this + 69) = xmmword_260818F10;
  *(this + 70) = xmmword_260818F20;
  *(this + 71) = xmmword_260818F30;
  *(this + 72) = xmmword_260818F40;
  *(this + 73) = xmmword_260818F50;
  *(this + 74) = xmmword_260818F60;
  *(this + 75) = xmmword_260818F70;
  *(this + 76) = xmmword_260818F80;
  *(this + 77) = xmmword_260818F90;
  *(this + 78) = xmmword_260818FA0;
  *(this + 79) = xmmword_260818FB0;
  *(this + 80) = xmmword_260818FC0;
  *(this + 81) = xmmword_260818FD0;
  *(this + 82) = xmmword_260818FE0;
  *(this + 83) = xmmword_260818FF0;
  *(this + 84) = xmmword_260819000;
  *&result = 3196059648;
  *(this + 85) = xmmword_2603468D0;
  return result;
}

_DWORD *HGAntiAliasLUTInfo::isEqual(uint64_t a1, void *lpsrc)
{
  if (!lpsrc)
  {
    return 0;
  }

  if (result)
  {
    return (*(a1 + 8) == result[2]);
  }

  return result;
}

void HGSMAAPatternSearch::~HGSMAAPatternSearch(HGSMAAPatternSearch *this)
{
  *this = &unk_287229EF0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4040DFEAD7);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HGSMAAPatternSearch::~HGSMAAPatternSearch(HGNode *this)
{
  *this = &unk_287229EF0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4040DFEAD7);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGSMAAPatternSearch::GetDOD(HGSMAAPatternSearch *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HGSMAAPatternSearch::GetROI(HGSMAAPatternSearch *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3 == 2)
  {
    return *(this + 54);
  }

  if (a3 == 1)
  {
    return *(this + 52);
  }

  if (a3)
  {
    return 0;
  }

  v4 = *&a4.var0;
  v5 = *&a4.var2;
  v6 = HGRectMake4i(0xFFFFFFF5, 0xFFFFFFF5, 0xCu, 0xCu);
  return HGRectGrow(v4, v5, v6);
}

void HGSMAABlend::HGSMAABlend(HGSMAABlend *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722A140;
  operator new();
}

void HGSMAABlend::~HGSMAABlend(HGSMAABlend *this)
{
  *this = &unk_28722A140;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40265AC83CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HGSMAABlend::~HGSMAABlend(HGNode *this)
{
  *this = &unk_28722A140;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HGSMAABlend::GetDOD(HGSMAABlend *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HGSMAABlend::GetROI(HGSMAABlend *this, HGRenderer *a2, int a3, HGRect a4)
{
  v4 = *&a4.var2;
  v5 = *&a4.var0;
  if (a3 == 1)
  {
    v6 = 1;
    v7 = 1;
    v8 = 0;
    v9 = 0;
    goto LABEL_5;
  }

  if (!a3)
  {
    v6 = -1;
    v7 = -1;
    v8 = 1;
    v9 = 1;
LABEL_5:
    v10 = HGRectMake4i(v6, v7, v8, v9);
    return HGRectGrow(v5, v4, v10);
  }

  return 0;
}

void *HGAntiAliasLUTEntry::HGAntiAliasLUTEntry(void *a1, const void *a2, uint64_t a3)
{
  v5 = HGLUTCache::LUTEntry::LUTEntry(a1, a2, a3);
  *v5 = &unk_28722AB98;
  v5[3] = 0;
  v6 = (v5 + 3);
  v5[4] = 0;
  if (a2)
  {
    if (v7)
    {
      v8 = v7[2];
      if (v8 == 1)
      {
        v9 = HGRectMake4f(1107558400, 0.0, 0.0, 66.0, 33.0);
        v11 = v14;
        v12 = &searchTexBytes;
        v13 = 1;
      }

      else if (v8)
      {
        v13 = 0;
        v12 = 0;
        v9 = 0;
        v11 = 0;
      }

      else
      {
        v9 = HGRectMake4f(1141637120, 0.0, 0.0, 160.0, 560.0);
        v11 = v10;
        v12 = &areaTexBytes;
        v13 = 10;
      }

      v15 = HGObject::operator new(0x80uLL);
      v16 = HGBitmap::HGBitmap(v15, v9, v11, v13);
      v17 = *v6;
      if (*v6 == v15)
      {
        if (v15)
        {
          (*(*v15 + 24))(v15, v16);
        }
      }

      else
      {
        if (v17)
        {
          (*(*v17 + 24))(v17, v16);
        }

        *v6 = v15;
      }

      v18 = HGObject::operator new(0x80uLL);
      HGBitmap::HGBitmap(v18, v9, v11, v13, v12);
      HGRenderUtils::BufferCopier::BufferCopier(v20);
    }
  }

  return a1;
}

void sub_25FDC4F44(_Unwind_Exception *a1)
{
  v4 = *(v1 + 4);
  if (v4)
  {
    (*(*v4 + 24))(v4);
  }

  if (*v2)
  {
    (*(**v2 + 24))(*v2);
  }

  HGLUTCache::LUTEntry::~LUTEntry(v1);
  _Unwind_Resume(a1);
}

void HGAntiAliasLUTEntry::~HGAntiAliasLUTEntry(HGAntiAliasLUTEntry *this)
{
  *this = &unk_28722AB98;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGLUTCache::LUTEntry::~LUTEntry(this);
}

{
  *this = &unk_28722AB98;
  v2 = *(this + 4);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 3);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGLUTCache::LUTEntry::~LUTEntry(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t HGAntiAliasLUTEntry::GetBitmap(HGAntiAliasLUTEntry *this)
{
  v2 = *(this + 2);
  {
    v6 = *(this + 3);
    v7 = this + 24;
    if (!v6)
    {
      return *v7;
    }

    goto LABEL_11;
  }

  v7 = this + 32;
  v6 = *(this + 4);
  if (v6)
  {
    goto LABEL_11;
  }

  MetalContext = HGGPURenderer::GetMetalContext(v5);
  HGMetalTexture::createWithCopy(*(*(MetalContext + 16) + 16), 0, *(this + 3), *(*(this + 3) + 20), *(*(this + 3) + 28), 0, 0, &v11);
  v9 = *(this + 4);
  v6 = v11;
  if (v9 == v11)
  {
    if (!v9)
    {
      return *v7;
    }

    (*(*v11 + 24))();
    v6 = *v7;
    if (!*v7)
    {
      return *v7;
    }

LABEL_11:
    (*(*v6 + 16))(v6);
    return *v7;
  }

  if (v9)
  {
    (*(*v9 + 24))(*(this + 4));
    v6 = v11;
  }

  *v7 = v6;
  if (v6)
  {
    goto LABEL_11;
  }

  return *v7;
}

void sub_25FDC539C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

void HGAntiAlias::GetOutput()
{
  {
    __cxa_atexit(HGAntiAliasLUTEntryFactory::~HGAntiAliasLUTEntryFactory, &HGAntiAlias::GetOutput(HGRenderer *)::lutFactory, &dword_25F8F0000);
  }
}

void HGMinMax::HGMinMax(HGMinMax *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722ABD8;
  *(v1 + 416) = 0;
  *(v1 + 424) = 0;
  *(v1 + 408) = 0;
  *(v1 + 432) = 0;
}

void HGMinMax::~HGMinMax(HGNode *this)
{
  *this = &unk_28722ABD8;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722ABD8;
  v2 = *(this + 52);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGMinMax::SetParameter(HGMinMax *this, int a2, float a3, float a4, float a5, float a6)
{
  if (a2 == 1)
  {
    v8 = vcvtms_s32_f32(a3);
    v9 = 0xFFFFFFFFLL;
    if ((v8 & 0x80000000) != 0)
    {
      return v9;
    }

    v10 = vcvtms_s32_f32(a4);
    if ((v10 & 0x80000000) != 0)
    {
      return v9;
    }

    if (*(this + 107) == v8 && *(this + 108) == v10)
    {
      return 0;
    }

    *(this + 107) = v8;
    *(this + 108) = v10;
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = vcvtms_u32_f32(a3);
    if (*(this + 106) == v6)
    {
      return 0;
    }

    *(this + 106) = v6;
  }

  return 1;
}

uint64_t HGMinMax::GetOutput(HGNode *this, HGRenderer *a2)
{
  Input = HGRenderer::GetInput(a2, this, 0);
  v5 = Input;
  if (Input)
  {
    (*(*Input + 16))(Input);
    v6 = (this + 408);
    v7 = *(this + 51);
    if (v7 == v5)
    {
      (*(*v5 + 24))(v5);
      v7 = *v6;
      goto LABEL_8;
    }
  }

  else
  {
    v6 = (this + 408);
    v7 = *(this + 51);
    if (!v7)
    {
      goto LABEL_8;
    }
  }

  if (v7)
  {
    (*(*v7 + 24))(v7);
  }

  *v6 = v5;
  v7 = v5;
LABEL_8:
  v8 = *(this + 52);
  if (v8 != v7)
  {
    if (v8)
    {
      (*(*v8 + 24))(*(this + 52));
      v7 = *v6;
    }

    *(this + 52) = v7;
    if (v7)
    {
      (*(*v7 + 16))(v7);
    }
  }

  if (*(this + 107) || *(this + 108))
  {
    HGMinMax::_buildGraph(this, a2);
  }

  return *(this + 52);
}

void sub_25FDC5808(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HGMinMax::_buildGraph(HGMinMax *this, HGRenderer *a2)
{
  (*(*a2 + 128))(a2, 1);
  result = (*(*a2 + 128))(a2, 2);
  if (*(this + 107))
  {
    result = (*(*a2 + 304))(a2);
    v5 = result;
    if (*(this + 108))
    {
      goto LABEL_3;
    }

LABEL_7:
    v6 = 0;
    if (*(this + 107))
    {
      goto LABEL_4;
    }

LABEL_8:
    v8 = 0;
    goto LABEL_15;
  }

  v5 = 0;
  if (!*(this + 108))
  {
    goto LABEL_7;
  }

LABEL_3:
  result = (*(*a2 + 304))(a2);
  v6 = result;
  if (!*(this + 107))
  {
    goto LABEL_8;
  }

LABEL_4:
  v7 = *(this + 106);
  v8 = HGObject::operator new(0x1A0uLL);
  HGNode::HGNode(v8);
  if (v7)
  {
    v9 = &unk_28722B0A8;
  }

  else
  {
    v9 = &unk_28722AE40;
  }

  *v8 = v9;
  *(v8 + 4) = *(v8 + 4) & 0xFFFFF9FF | 0x400;
  v9[12](v8, 0, *(this + 107), 0.0, 0.0, 0.0);
  (*(*v8 + 16))(v8);
  (*(*v8 + 120))(v8, 0, *(this + 52));
  v10 = *(this + 52);
  if (v10 != v8)
  {
    if (v10)
    {
      (*(*v10 + 24))(v10);
    }

    *(this + 52) = v8;
    (*(*v8 + 16))(v8);
  }

  result = (*(*v8 + 24))(v8);
LABEL_15:
  if (*(this + 108))
  {
    v11 = *(this + 106);
    if (v6)
    {
      if (v11)
      {
        v12 = HGObject::operator new(0x1A0uLL);
        HGNode::HGNode(v12);
        v13 = &unk_28722B0A8;
      }

      else
      {
        v12 = HGObject::operator new(0x1A0uLL);
        HGNode::HGNode(v12);
        v13 = &unk_28722AE40;
      }

      *v12 = v13;
      *(v12 + 4) = *(v12 + 4) & 0xFFFFF9FF | 0x400;
      v15 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v15);
      v16 = HGObject::operator new(0x90uLL);
      HGTransform::HGTransform(v16);
      (*(*v16 + 128))(v16, 90.0, 0.0, 0.0, 1.0);
      (*(*v15 + 576))(v15, v16);
      (*(*v15 + 16))(v15);
      (*(*v15 + 120))(v15, 0, *(this + 52));
      v17 = *(this + 52);
      if (v17 != v15)
      {
        if (v17)
        {
          (*(*v17 + 24))(v17);
        }

        *(this + 52) = v15;
        (*(*v15 + 16))(v15);
      }

      (*(*v15 + 24))(v15);
      (*(*v16 + 24))(v16);
      (*(*v15 + 24))(v15);
      v14 = *v12;
    }

    else
    {
      if (v11)
      {
        v12 = HGObject::operator new(0x1A0uLL);
        HGNode::HGNode(v12);
        v14 = &unk_28722B578;
      }

      else
      {
        v12 = HGObject::operator new(0x1A0uLL);
        HGNode::HGNode(v12);
        v14 = &unk_28722B310;
      }

      *v12 = v14;
      *(v12 + 4) = *(v12 + 4) & 0xFFFFF9FF | 0x400;
    }

    v14[12](v12, 0, *(this + 108), 0.0, 0.0, 0.0);
    (*(*v12 + 16))(v12);
    (*(*v12 + 120))(v12, 0, *(this + 52));
    v18 = *(this + 52);
    if (v18 != v12)
    {
      if (v18)
      {
        (*(*v18 + 24))(v18);
      }

      *(this + 52) = v12;
      (*(*v12 + 16))(v12);
    }

    result = (*(*v12 + 24))(v12);
    if (v6)
    {
      v19 = HGObject::operator new(0x210uLL);
      HGXForm::HGXForm(v19);
      v20 = HGObject::operator new(0x90uLL);
      HGTransform::HGTransform(v20);
      (*(*v20 + 128))(v20, -90.0, 0.0, 0.0, 1.0);
      (*(*v19 + 576))(v19, v20);
      (*(*v19 + 16))(v19);
      (*(*v19 + 120))(v19, 0, *(this + 52));
      v21 = *(this + 52);
      if (v21 != v19)
      {
        if (v21)
        {
          (*(*v21 + 24))(v21);
        }

        *(this + 52) = v19;
        (*(*v19 + 16))(v19);
      }

      (*(*v19 + 24))(v19);
      (*(*v20 + 24))(v20);
      result = (*(*v19 + 24))(v19);
    }
  }

  else
  {
    v12 = 0;
  }

  if (v5)
  {
    result = (*(*v8 + 136))(v8, 0, 2);
  }

  if (v6)
  {
    (*(*v12 + 136))(v12, 0, 2);
  }

  else if (!v12)
  {
    goto LABEL_46;
  }

  result = (*(*v12 + 24))(v12);
LABEL_46:
  if (v8)
  {
    return (*(*v8 + 24))(v8);
  }

  return result;
}

void sub_25FDC6144(_Unwind_Exception *a1)
{
  HGObject::operator delete(v2);
  if (v1)
  {
    (*(*v1 + 24))(v1);
  }

  _Unwind_Resume(a1);
}

void MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)0>::~MMNode(HGNode *a1)
{
  HGNode::~HGNode(a1);

  HGObject::operator delete(v1);
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)0>::SetParameter(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = vcvtms_s32_f32(a3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 408) == v4)
  {
    return 0;
  }

  *(a1 + 408) = v4;
  return 1;
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)0>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 8) - *a2);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(a2 + 24);
      v6 = *(a2 + 88);
      v7 = *(a2 + 80);
      v8 = *(a2 + 16);
      v9 = v7 - 1;
      v10 = 16 * v6;
      v11 = v7 + 1;
      do
      {
        v12 = 0;
        v13 = v11;
        v14 = v9;
        do
        {
          v15 = v7[v12];
          v16 = *(a1 + 408);
          if (v16 >= 1)
          {
            v17 = v13;
            v18 = v14;
            do
            {
              v19 = *v17++;
              v20 = v19;
              v21 = *v18--;
              v15 = vminq_f32(vminq_f32(v15, v20), v21);
              --v16;
            }

            while (v16);
          }

          *(v8 + 16 * v12++) = v15;
          ++v14;
          ++v13;
        }

        while (v12 != v3);
        v7 += v6;
        v8 += 16 * v5;
        ++v4;
        v9 = (v9 + v10);
        v11 = (v11 + v10);
      }

      while (v4 != v2);
    }
  }

  return 0;
}

const char *MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)0>::GetProgram(int a1, HGRenderer *this)
{
  Target = HGRenderer::GetTarget(this, 393216);
  v4 = (*(*this + 128))(this, 19);
  v5 = "//Metal1.0     \n//LEN=00000004e7\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]])\n{\n    // convolution radius\n    const int16_t radius {static_cast<int16_t>(hg_Params[0].x)};\n    \n    // Accumulator\n    float4 R0 {hg_Texture0.sample(hg_Sampler0,\n               float2(frag._texCoord0.x, frag._texCoord0.y))};\n    \n    for (int16_t k {1}; k <= radius; ++k)\n    {\n        const float uPos {frag._texCoord0.x + k};\n        const float uNeg {frag._texCoord0.x - k};\n        const float v {frag._texCoord0.y};\n        \n        float4 R1 {hg_Texture0.sample(hg_Sampler0,\n            float2(uPos, v))};\n        float4 R2 {hg_Texture0.sample(hg_Sampler0,\n            float2(uNeg, v))};\n            \n        R0 = min(R0,R1);\n        R0 = min(R0,R2);\n    }\n    \n    FragmentOut out {static_cast<float4>(R0)};\n    return out;\n}\n//MD5=2a507d29:fd0172ea:c65d89d1:7ab9dcdb\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0000:0000:0000:0000:0002:0000:0001:01:0:0:0\n";
  if (v4 == 27)
  {
    v5 = "//Metal1.0     \n//LEN=000000054e\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >       hg_Texture0 [[ texture(0) ]],\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]])\n{\n    // convolution radius\n    const int16_t radius {static_cast<int16_t>(hg_Params[0].x)};\n    \n    // Accumulator\n    half4 R0 {hg_Texture0.sample(hg_Sampler0,\n               float2(frag._texCoord0.x, frag._texCoord0.y))};\n    \n    for (int16_t k {1}; k <= radius; ++k)\n    {\n        const float uPos {frag._texCoord0.x + k};\n        const float uNeg {frag._texCoord0.x - k};\n        const float v {frag._texCoord0.y};\n        \n        half4 R1 {hg_Texture0.sample(hg_Sampler0,\n            float2(uPos, v))};\n        half4 R2 {hg_Texture0.sample(hg_Sampler0,\n            float2(uNeg, v))};\n\n        R0 = half4(min(R0.x,R1.x), min(R0.y,R1.y), min(R0.z,R1.z), min(R0.a,R1.a));\n        R0 = half4(min(R0.x,R2.x), min(R0.y,R2.y), min(R0.z,R2.z), min(R0.a,R2.a));\n    }\n    \n    FragmentOut out {static_cast<float4>(R0)};\n    return out;\n}\n//MD5=45a3d5e6:b2dbfac3:d747b97d:f2fc53a8\n//SIG=00000000:00000000:00000000:00000001:0001:0001:0000:0000:0000:0000:0002:0000:0001:01:0:0:0\n";
  }

  if (Target <= 0x60B0F)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)0>::BindTexture(int a1, HGHandler *this, uint64_t a3)
{
  HGHandler::TexCoord(this, a3, 0, 0, 0);
  (*(*this + 72))(this, a3, 0);
  (*(*this + 56))(this, 0);
  return 0;
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)0>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = HGRectMake4i(-*(a1 + 408), 0, *(a1 + 408), 0);
  return HGRectGrow(a4, a5, v8);
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)0>::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = HGRectMake4i(-*(a1 + 408), 0, *(a1 + 408), 0);
  return HGRectGrow(a4, a5, v8);
}

void MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)0>::~MMNode(HGNode *a1)
{
  HGNode::~HGNode(a1);

  HGObject::operator delete(v1);
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)0>::SetParameter(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = vcvtms_s32_f32(a3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 408) == v4)
  {
    return 0;
  }

  *(a1 + 408) = v4;
  return 1;
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)0>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 8) - *a2);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(a2 + 24);
      v6 = *(a2 + 88);
      v7 = *(a2 + 80);
      v8 = *(a2 + 16);
      v9 = v7 - 1;
      v10 = 16 * v6;
      v11 = v7 + 1;
      do
      {
        v12 = 0;
        v13 = v11;
        v14 = v9;
        do
        {
          v15 = v7[v12];
          v16 = *(a1 + 408);
          if (v16 >= 1)
          {
            v17 = v13;
            v18 = v14;
            do
            {
              v19 = *v17++;
              v20 = v19;
              v21 = *v18--;
              v15 = vmaxq_f32(vmaxq_f32(v15, v20), v21);
              --v16;
            }

            while (v16);
          }

          *(v8 + 16 * v12++) = v15;
          ++v14;
          ++v13;
        }

        while (v12 != v3);
        v7 += v6;
        v8 += 16 * v5;
        ++v4;
        v9 = (v9 + v10);
        v11 = (v11 + v10);
      }

      while (v4 != v2);
    }
  }

  return 0;
}

const char *MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)0>::GetProgram(int a1, HGRenderer *this)
{
  Target = HGRenderer::GetTarget(this, 393216);
  v4 = (*(*this + 128))(this, 19);
  v5 = "//Metal1.0     \n//LEN=00000004e7\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]])\n{\n    // convolution radius\n    const int16_t radius {static_cast<int16_t>(hg_Params[0].x)};\n    \n    // Accumulator\n    float4 R0 {hg_Texture0.sample(hg_Sampler0,\n               float2(frag._texCoord0.x, frag._texCoord0.y))};\n    \n    for (int16_t k {1}; k <= radius; ++k)\n    {\n        const float uPos {frag._texCoord0.x + k};\n        const float uNeg {frag._texCoord0.x - k};\n        const float v {frag._texCoord0.y};\n        \n        float4 R1 {hg_Texture0.sample(hg_Sampler0,\n            float2(uPos, v))};\n        float4 R2 {hg_Texture0.sample(hg_Sampler0,\n            float2(uNeg, v))};\n            \n        R0 = max(R0,R1);\n        R0 = max(R0,R2);\n    }\n    \n    FragmentOut out {static_cast<float4>(R0)};\n    return out;\n}\n//MD5=057d1bde:ee1f0d66:240beb34:b82edddc\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0000:0000:0000:0000:0002:0000:0001:01:0:0:0\n";
  if (v4 == 27)
  {
    v5 = "//Metal1.0     \n//LEN=000000054d\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >       hg_Texture0 [[ texture(0) ]],\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]])\n{\n    // convolution radius\n    const int16_t radius {static_cast<int16_t>(hg_Params[0].x)};\n    \n    // Accumulator\n    half4 R0 {hg_Texture0.sample(hg_Sampler0,\n              float2(frag._texCoord0.x, frag._texCoord0.y))};\n    \n    for (int16_t k {1}; k <= radius; ++k)\n    {\n        const float uPos {frag._texCoord0.x + k};\n        const float uNeg {frag._texCoord0.x - k};\n        const float v {frag._texCoord0.y};\n        \n        half4 R1 {hg_Texture0.sample(hg_Sampler0,\n            float2(uPos, v))};\n        half4 R2 {hg_Texture0.sample(hg_Sampler0,\n            float2(uNeg, v))};\n\n        R0 = half4(max(R0.x,R1.x), max(R0.y,R1.y), max(R0.z,R1.z), max(R0.a,R1.a));\n        R0 = half4(max(R0.x,R2.x), max(R0.y,R2.y), max(R0.z,R2.z), max(R0.a,R2.a));\n    }\n    \n    FragmentOut out {static_cast<float4>(R0)};\n    return out;\n}\n//MD5=cfa1a81a:a28a7961:458c8d2d:93677577\n//SIG=00000000:00000000:00000000:00000001:0001:0001:0000:0000:0000:0000:0002:0000:0001:01:0:0:0\n";
  }

  if (Target <= 0x60B0F)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)0>::BindTexture(int a1, HGHandler *this, uint64_t a3)
{
  HGHandler::TexCoord(this, a3, 0, 0, 0);
  (*(*this + 72))(this, a3, 0);
  (*(*this + 56))(this, 0);
  return 0;
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)0>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = HGRectMake4i(-*(a1 + 408), 0, *(a1 + 408), 0);
  return HGRectGrow(a4, a5, v8);
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)0>::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = HGRectMake4i(-*(a1 + 408), 0, *(a1 + 408), 0);
  return HGRectGrow(a4, a5, v8);
}

void MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)1>::~MMNode(HGNode *a1)
{
  HGNode::~HGNode(a1);

  HGObject::operator delete(v1);
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)1>::SetParameter(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = vcvtms_s32_f32(a3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 408) == v4)
  {
    return 0;
  }

  *(a1 + 408) = v4;
  return 1;
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)1>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 8) - *a2);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(a2 + 88);
      v6 = *(a2 + 24);
      v7 = *(a2 + 80);
      v8 = *(a2 + 16);
      v9 = 16 * v5;
      v10 = (v7 - 16 * v5);
      v11 = (v7 + 16 * v5);
      do
      {
        v12 = 0;
        v13 = v11;
        v14 = v10;
        do
        {
          v15 = *(v7 + 16 * v12);
          v16 = *(a1 + 408);
          if (v16 >= 1)
          {
            v17 = v13;
            v18 = v14;
            do
            {
              v15 = vminq_f32(vminq_f32(v15, *v17), *v18);
              v18 -= v5;
              v17 = (v17 + v9);
              --v16;
            }

            while (v16);
          }

          *(v8 + 16 * v12++) = v15;
          ++v14;
          ++v13;
        }

        while (v12 != v3);
        v7 += 16 * v5;
        v8 += 16 * v6;
        ++v4;
        v10 = (v10 + v9);
        v11 = (v11 + v9);
      }

      while (v4 != v2);
    }
  }

  return 0;
}

const char *MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)1>::GetProgram(int a1, HGRenderer *this)
{
  Target = HGRenderer::GetTarget(this, 393216);
  v4 = (*(*this + 128))(this, 19);
  v5 = "//Metal1.0     \n//LEN=00000004e7\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]])\n{\n    // convolution radius\n    const int16_t radius {static_cast<int16_t>(hg_Params[0].x)};\n    \n    // Accumulator\n    float4 R0 {hg_Texture0.sample(hg_Sampler0,\n               float2(frag._texCoord0.x, frag._texCoord0.y))};\n    \n    for (int16_t k {1}; k <= radius; ++k)\n    {\n        const float uPos {frag._texCoord0.y + k};\n        const float uNeg {frag._texCoord0.y - k};\n        const float v {frag._texCoord0.x};\n        \n        float4 R1 {hg_Texture0.sample(hg_Sampler0,\n            float2(v, uPos))};\n        float4 R2 {hg_Texture0.sample(hg_Sampler0,\n            float2(v, uNeg))};\n            \n        R0 = min(R0,R1);\n        R0 = min(R0,R2);\n    }\n    \n    FragmentOut out {static_cast<float4>(R0)};\n    return out;\n}\n//MD5=3726e26e:551a7f4a:f371f4cb:58ef313b\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0000:0000:0000:0000:0002:0000:0001:01:0:0:0\n";
  if (v4 == 27)
  {
    v5 = "//Metal1.0     \n//LEN=000000054e\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >       hg_Texture0 [[ texture(0) ]],\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]])\n{\n    // convolution radius\n    const int16_t radius {static_cast<int16_t>(hg_Params[0].x)};\n    \n    // Accumulator\n    half4 R0 {hg_Texture0.sample(hg_Sampler0,\n               float2(frag._texCoord0.x, frag._texCoord0.y))};\n    \n    for (int16_t k {1}; k <= radius; ++k)\n    {\n        const float uPos {frag._texCoord0.y + k};\n        const float uNeg {frag._texCoord0.y - k};\n        const float v {frag._texCoord0.x};\n        \n        half4 R1 {hg_Texture0.sample(hg_Sampler0,\n            float2(v, uPos))};\n        half4 R2 {hg_Texture0.sample(hg_Sampler0,\n            float2(v, uNeg))};\n\n        R0 = half4(min(R0.x,R1.x), min(R0.y,R1.y), min(R0.z,R1.z), min(R0.a,R1.a));\n        R0 = half4(min(R0.x,R2.x), min(R0.y,R2.y), min(R0.z,R2.z), min(R0.a,R2.a));\n    }\n    \n    FragmentOut out {static_cast<float4>(R0)};\n    return out;\n}\n//MD5=3bf26023:798dc819:7b701366:6a323336\n//SIG=00000000:00000000:00000000:00000001:0001:0001:0000:0000:0000:0000:0002:0000:0001:01:0:0:0\n";
  }

  if (Target <= 0x60B0F)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)1>::BindTexture(int a1, HGHandler *this, uint64_t a3)
{
  HGHandler::TexCoord(this, a3, 0, 0, 0);
  (*(*this + 72))(this, a3, 0);
  (*(*this + 56))(this, 0);
  return 0;
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)1>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = HGRectMake4i(0, -*(a1 + 408), a3, *(a1 + 408));
  return HGRectGrow(a4, a5, v8);
}

uint64_t MinMax::MMNode<(MinMax::Mode)0,(MinMax::Axis)1>::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = HGRectMake4i(0, -*(a1 + 408), a3, *(a1 + 408));
  return HGRectGrow(a4, a5, v8);
}

void MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)1>::~MMNode(HGNode *a1)
{
  HGNode::~HGNode(a1);

  HGObject::operator delete(v1);
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)1>::SetParameter(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = vcvtms_s32_f32(a3);
  if ((v4 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 408) == v4)
  {
    return 0;
  }

  *(a1 + 408) = v4;
  return 1;
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)1>::RenderTile(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 12) - *(a2 + 4);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 8) - *a2);
    if (v3 >= 1)
    {
      v4 = 0;
      v5 = *(a2 + 88);
      v6 = *(a2 + 24);
      v7 = *(a2 + 80);
      v8 = *(a2 + 16);
      v9 = 16 * v5;
      v10 = (v7 - 16 * v5);
      v11 = (v7 + 16 * v5);
      do
      {
        v12 = 0;
        v13 = v11;
        v14 = v10;
        do
        {
          v15 = *(v7 + 16 * v12);
          v16 = *(a1 + 408);
          if (v16 >= 1)
          {
            v17 = v13;
            v18 = v14;
            do
            {
              v15 = vmaxq_f32(vmaxq_f32(v15, *v17), *v18);
              v18 -= v5;
              v17 = (v17 + v9);
              --v16;
            }

            while (v16);
          }

          *(v8 + 16 * v12++) = v15;
          ++v14;
          ++v13;
        }

        while (v12 != v3);
        v7 += 16 * v5;
        v8 += 16 * v6;
        ++v4;
        v10 = (v10 + v9);
        v11 = (v11 + v9);
      }

      while (v4 != v2);
    }
  }

  return 0;
}

const char *MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)1>::GetProgram(int a1, HGRenderer *this)
{
  Target = HGRenderer::GetTarget(this, 393216);
  v4 = (*(*this + 128))(this, 19);
  v5 = "//Metal1.0     \n//LEN=00000004e7\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< float >      hg_Texture0 [[ texture(0) ]],\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]])\n{\n    // convolution radius\n    const int16_t radius {static_cast<int16_t>(hg_Params[0].x)};\n    \n    // Accumulator\n    float4 R0 {hg_Texture0.sample(hg_Sampler0,\n               float2(frag._texCoord0.x, frag._texCoord0.y))};\n    \n    for (int16_t k {1}; k <= radius; ++k)\n    {\n        const float uPos {frag._texCoord0.y + k};\n        const float uNeg {frag._texCoord0.y - k};\n        const float v {frag._texCoord0.x};\n        \n        float4 R1 {hg_Texture0.sample(hg_Sampler0,\n            float2(v, uPos))};\n        float4 R2 {hg_Texture0.sample(hg_Sampler0,\n            float2(v, uNeg))};\n            \n        R0 = max(R0,R1);\n        R0 = max(R0,R2);\n    }\n    \n    FragmentOut out {static_cast<float4>(R0)};\n    return out;\n}\n//MD5=34c81472:306e105f:9f48d6d1:aef98b68\n//SIG=00000000:00000000:00000000:00000000:0001:0001:0000:0000:0000:0000:0002:0000:0001:01:0:0:0\n";
  if (v4 == 27)
  {
    v5 = "//Metal1.0     \n//LEN=000000054e\nfragment FragmentOut fragmentFunc(VertexInOut             frag        [[ stage_in ]],\n                                  const constant float4 * hg_Params   [[ buffer(0) ]],\n                                  texture2d< half >       hg_Texture0 [[ texture(0) ]],\n                                  sampler                 hg_Sampler0 [[ sampler(0) ]])\n{\n    // convolution radius\n    const int16_t radius {static_cast<int16_t>(hg_Params[0].x)};\n    \n    // Accumulator\n    half4 R0 {hg_Texture0.sample(hg_Sampler0,\n               float2(frag._texCoord0.x, frag._texCoord0.y))};\n    \n    for (int16_t k {1}; k <= radius; ++k)\n    {\n        const float uPos {frag._texCoord0.y + k};\n        const float uNeg {frag._texCoord0.y - k};\n        const float v {frag._texCoord0.x};\n        \n        half4 R1 {hg_Texture0.sample(hg_Sampler0,\n            float2(v, uPos))};\n        half4 R2 {hg_Texture0.sample(hg_Sampler0,\n            float2(v, uNeg))};\n\n        R0 = half4(max(R0.x,R1.x), max(R0.y,R1.y), max(R0.z,R1.z), max(R0.a,R1.a));\n        R0 = half4(max(R0.x,R2.x), max(R0.y,R2.y), max(R0.z,R2.z), max(R0.a,R2.a));\n    }\n    \n    FragmentOut out {static_cast<float4>(R0)};\n    return out;\n}\n//MD5=244a8df3:77093f9d:67a0f5ac:f9949def\n//SIG=00000000:00000000:00000000:00000001:0001:0001:0000:0000:0000:0000:0002:0000:0001:01:0:0:0\n";
  }

  if (Target <= 0x60B0F)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)1>::BindTexture(int a1, HGHandler *this, uint64_t a3)
{
  HGHandler::TexCoord(this, a3, 0, 0, 0);
  (*(*this + 72))(this, a3, 0);
  (*(*this + 56))(this, 0);
  return 0;
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)1>::GetDOD(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = HGRectMake4i(0, -*(a1 + 408), a3, *(a1 + 408));
  return HGRectGrow(a4, a5, v8);
}

uint64_t MinMax::MMNode<(MinMax::Mode)1,(MinMax::Axis)1>::GetROI(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    return 0;
  }

  v8 = HGRectMake4i(0, -*(a1 + 408), a3, *(a1 + 408));
  return HGRectGrow(a4, a5, v8);
}

const char *HgcBlendBlur_2::GetProgram(HgcBlendBlur_2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000048d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*half(hg_Params[0].x) + half(hg_Params[1].x);\n    r0.x = clamp(r0.x*half(hg_Params[2].x), 0.00000h, 1.00000h);\n    output.color0 = mix(float4(r1), float4(r2), float4(r0.xxxx));\n    return output;\n}\n//MD5=aa767a30:43e6c19d:194499ff:c7dbf93e\n//SIG=00400000:00000007:00000007:00000007:0001:0003:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000452\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*hg_Params[0].x + hg_Params[1].x;\n    r0.x = clamp(r0.x*hg_Params[2].x, 0.00000f, 1.00000f);\n    output.color0 = mix(r1, r2, r0.xxxx);\n    return output;\n}\n//MD5=e6a820fd:1bf2525f:b73f4bfa:536e503b\n//SIG=00000000:00000007:00000007:00000000:0001:0003:0003:0000:0000:0000:000e:0000:0003:03:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000432\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r0.x = max(r0.x, c0.x);\n    r0.x = r0.x*hg_ProgramLocal0.x + hg_ProgramLocal1.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal2.x, 0.00000, 1.00000);\n    gl_FragColor = mix(r1, r2, r0.xxxx);\n}\n//MD5=ad430f94:4dc630c7:b0e05cdb:f026c832\n//SIG=00000000:00000007:00000007:00000000:0001:0003:0003:0000:0000:0000:0000:0000:0003:03:0:1:0\n";
  }
}

void sub_25FDC7564(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDC759C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDC7594);
}

uint64_t HgcBlendBlur_2::BindTexture(HgcBlendBlur_2 *this, HGHandler *a2, int a3)
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

uint64_t HgcBlendBlur_2::Bind(HgcBlendBlur_2 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlendBlur_2::RenderTile(HgcBlendBlur_2 *this, HGTile *a2)
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
        v50 = 0;
        v51 = 16 * v11;
        v52 = 16 * v10;
        v53 = 16 * v9;
        v54 = 16 * v8;
        v55 = 16 * v3;
        do
        {
          v56 = 0;
          do
          {
            v57 = *(this + 51);
            v7[v56 / 0x10] = vaddq_f32(v5[v56 / 0x10], vmulq_n_f32(vsubq_f32(v6[v56 / 0x10], v5[v56 / 0x10]), vminq_f32(vmaxq_f32(vmulq_f32(v57[2], vaddq_f32(v57[1], vmulq_f32(vmaxq_f32(v4[v56 / 0x10], v57[3]), *v57))), v57[3]), v57[4]).f32[0]));
            v56 += 16;
          }

          while (v55 != v56);
          ++v50;
          v4 = (v4 + v51);
          v5 = (v5 + v52);
          v6 = (v6 + v53);
          v7 = (v7 + v54);
        }

        while (v50 != v2);
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
          v31 = *(this + 51);
          v33 = v31[2];
          v32 = v31[3];
          v34 = v31[1];
          v35 = vmaxq_f32(vmulq_f32(v33, vaddq_f32(v34, vmulq_f32(vmaxq_f32(v4[v21], v32), *v31))), v32);
          v36 = vmaxq_f32(vmulq_f32(v33, vaddq_f32(v34, vmulq_f32(vmaxq_f32(v4[v21 + 1], v32), *v31))), v32);
          v37 = vmaxq_f32(vmulq_f32(v33, vaddq_f32(v34, vmulq_f32(vmaxq_f32(v4[v21 + 2], v32), *v31))), v32);
          v38 = vmaxq_f32(vmulq_f32(v33, vaddq_f32(v34, vmulq_f32(vmaxq_f32(v4[v21 + 3], v32), *v31))), v32);
          v39 = v31[4];
          v40 = vaddq_f32(v5[v21 + 1], vmulq_n_f32(vsubq_f32(v6[v21 + 1], v5[v21 + 1]), vminq_f32(v36, v39).f32[0]));
          v41 = vaddq_f32(v5[v21 + 2], vmulq_n_f32(vsubq_f32(v6[v21 + 2], v5[v21 + 2]), vminq_f32(v37, v39).f32[0]));
          v42 = vaddq_f32(v5[v21 + 3], vmulq_n_f32(vsubq_f32(v6[v21 + 3], v5[v21 + 3]), vminq_f32(v38, v39).f32[0]));
          v43 = &v7[v21];
          *v43 = vaddq_f32(v5[v21], vmulq_n_f32(vsubq_f32(v6[v21], v5[v21]), vminq_f32(v35, v39).f32[0]));
          v43[1] = v40;
          v22 += 4;
          v21 += 4;
          v26 += 4;
          v43[2] = v41;
          v43[3] = v42;
          v25 += 4;
          v24 += 4;
          v23 = v30 + 4;
        }

        while (v22 < (v3 - 3));
        if (v3 > v22)
        {
          do
          {
            v44 = *v27++;
            v45 = v44;
            v46 = *v28++;
            v47 = v46;
            v48 = *(this + 51);
            v49 = *v29++;
            *v30++ = vaddq_f32(v47, vmulq_n_f32(vsubq_f32(v49, v47), vminq_f32(vmaxq_f32(vmulq_f32(v48[2], vaddq_f32(v48[1], vmulq_f32(vmaxq_f32(v45, v48[3]), *v48))), v48[3]), v48[4]).f32[0]));
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

uint64_t HgcBlendBlur_2::GetDOD(HgcBlendBlur_2 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcBlendBlur_2::GetROI(HgcBlendBlur_2 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcBlendBlur_2::~HgcBlendBlur_2(HgcBlendBlur_2 *this)
{
  *this = &unk_28722B7E0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C404247E4FDLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlendBlur_2::~HgcBlendBlur_2(HGNode *this)
{
  *this = &unk_28722B7E0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C404247E4FDLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlendBlur_2::SetParameter(HgcBlendBlur_2 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcBlendBlur_2::GetParameter(HgcBlendBlur_2 *this, unsigned int a2, float *a3)
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

const char *HgcBlendBlur_3::GetProgram(HgcBlendBlur_3 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000005d4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*half(hg_Params[0].x);\n    r4.x = r0.x + half(hg_Params[1].x);\n    r4.x = clamp(r4.x*half(hg_Params[2].x), 0.00000h, 1.00000h);\n    r4 = mix(r1, r2, r4.xxxx);\n    r0.x = r0.x + half(hg_Params[3].x);\n    r0.x = clamp(r0.x*half(hg_Params[4].x), 0.00000h, 1.00000h);\n    output.color0 = mix(float4(r4), float4(r3), float4(r0.xxxx));\n    return output;\n}\n//MD5=4d97c1a1:51645ce4:7fcb49ff:f74049af\n//SIG=00400000:0000000f:0000000f:0000000f:0001:0005:0005:0000:0000:0000:001e:0000:0004:04:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000586\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*hg_Params[0].x;\n    r4.x = r0.x + hg_Params[1].x;\n    r4.x = clamp(r4.x*hg_Params[2].x, 0.00000f, 1.00000f);\n    r4 = mix(r1, r2, r4.xxxx);\n    r0.x = r0.x + hg_Params[3].x;\n    r0.x = clamp(r0.x*hg_Params[4].x, 0.00000f, 1.00000f);\n    output.color0 = mix(r4, r3, r0.xxxx);\n    return output;\n}\n//MD5=1a704606:298fad20:53f42e0b:42d4cdc2\n//SIG=00000000:0000000f:0000000f:00000000:0001:0005:0005:0000:0000:0000:001e:0000:0004:04:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000598\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2, r3, r4;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r0.x = max(r0.x, c0.x);\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    r4.x = r0.x + hg_ProgramLocal1.x;\n    r4.x = clamp(r4.x*hg_ProgramLocal2.x, 0.00000, 1.00000);\n    r4 = mix(r1, r2, r4.xxxx);\n    r0.x = r0.x + hg_ProgramLocal3.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal4.x, 0.00000, 1.00000);\n    gl_FragColor = mix(r4, r3, r0.xxxx);\n}\n//MD5=fe2d5407:e86404d7:349ecd54:74bb66cc\n//SIG=00000000:0000000f:0000000f:00000000:0001:0005:0005:0000:0000:0000:0000:0000:0004:04:0:1:0\n";
  }
}

void sub_25FDC81FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDC8238(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDC8230);
}

uint64_t HgcBlendBlur_3::BindTexture(HgcBlendBlur_3 *this, HGHandler *a2, int a3)
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

uint64_t HgcBlendBlur_3::Bind(HgcBlendBlur_3 *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*a2 + 144))(a2, 2, *(this + 51) + 32, 1);
  (*(*a2 + 144))(a2, 3, *(this + 51) + 48, 1);
  (*(*a2 + 144))(a2, 4, *(this + 51) + 64, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlendBlur_3::RenderTile(HgcBlendBlur_3 *this, HGTile *a2)
{
  v85 = *(a2 + 3) - *(a2 + 1);
  if (v85 >= 1)
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
    if (v2 < 3)
    {
      if (v2 >= 1)
      {
        v67 = 0;
        v68 = 16 * v12;
        v69 = 16 * v11;
        v70 = 16 * v10;
        v71 = 16 * v9;
        v72 = 16 * v8;
        v73 = 16 * v2;
        do
        {
          v74 = 0;
          do
          {
            v75 = *(this + 51);
            v76 = v75[5];
            v77 = vmulq_f32(vmaxq_f32(v3[v74 / 0x10], v76), *v75);
            v78 = v75[6];
            v79 = vaddq_f32(v4[v74 / 0x10], vmulq_n_f32(vsubq_f32(v5[v74 / 0x10], v4[v74 / 0x10]), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v77, v75[1]), v75[2]), v76), v78).f32[0]));
            v7[v74 / 0x10] = vaddq_f32(v79, vmulq_n_f32(vsubq_f32(v6[v74 / 0x10], v79), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v77, v75[3]), v75[4]), v76), v78).f32[0]));
            v74 += 16;
          }

          while (v73 != v74);
          ++v67;
          v3 = (v3 + v68);
          v4 = (v4 + v69);
          v5 = (v5 + v70);
          v6 = (v6 + v71);
          v7 = (v7 + v72);
        }

        while (v67 != v85);
      }
    }

    else
    {
      v13 = 0;
      v83 = 16 * v10;
      v84 = 16 * v11;
      v14 = v3 + 3;
      v81 = 16 * v8;
      v82 = 16 * v9;
      v15 = v4 + 3;
      v16 = 16 * v12;
      v17 = v5 + 3;
      v18 = v6 + 3;
      v19 = v7 + 3;
      do
      {
        v20 = 0;
        v21 = 0;
        v22 = 3;
        v23 = v19;
        v24 = v18;
        v25 = v17;
        v26 = v15;
        v27 = v14;
        do
        {
          v28 = v27;
          v29 = v26;
          v30 = v25;
          v31 = v24;
          v32 = v23;
          v33 = v22;
          v34 = *(this + 51);
          v36 = v34[4];
          v35 = v34[5];
          v37 = v34[1];
          v38 = vmulq_f32(vmaxq_f32(v3[v20], v35), *v34);
          v39 = vmulq_f32(vmaxq_f32(v3[v20 + 1], v35), *v34);
          v40 = vmulq_f32(vmaxq_f32(v3[v20 + 2], v35), *v34);
          v41 = vaddq_f32(v38, v37);
          v42 = v34[2];
          v43 = v34[3];
          v44 = vmulq_f32(vaddq_f32(v39, v37), v42);
          v45 = vmulq_f32(vaddq_f32(v40, v37), v42);
          v46 = vmaxq_f32(vmulq_f32(v41, v42), v35);
          v47 = v34[6];
          v48 = vaddq_f32(v4[v20], vmulq_n_f32(vsubq_f32(v5[v20], v4[v20]), vminq_f32(v46, v47).f32[0]));
          v49 = vaddq_f32(v4[v20 + 1], vmulq_n_f32(vsubq_f32(v5[v20 + 1], v4[v20 + 1]), vminq_f32(vmaxq_f32(v44, v35), v47).f32[0]));
          v50 = vaddq_f32(v4[v20 + 2], vmulq_n_f32(vsubq_f32(v5[v20 + 2], v4[v20 + 2]), vminq_f32(vmaxq_f32(v45, v35), v47).f32[0]));
          v51 = vaddq_f32(v48, vmulq_n_f32(vsubq_f32(v6[v20], v48), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v38, v43), v36), v35), v47).f32[0]));
          v52 = &v7[v20];
          v21 += 3;
          v53 = vaddq_f32(v49, vmulq_n_f32(vsubq_f32(v6[v20 + 1], v49), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v39, v43), v36), v35), v47).f32[0]));
          v54 = vaddq_f32(v50, vmulq_n_f32(vsubq_f32(v6[v20 + 2], v50), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v40, v43), v36), v35), v47).f32[0]));
          v20 += 3;
          v27 = v28 + 3;
          v26 += 3;
          v25 += 3;
          *v52 = v51;
          v52[1] = v53;
          v52[2] = v54;
          v24 = v31 + 3;
          v23 += 3;
          v22 += 3;
        }

        while (v21 < v2 - 2);
        if (v2 > v21)
        {
          do
          {
            v55 = *v28++;
            v56 = v55;
            v57 = *v29++;
            v58 = v57;
            v59 = *v30++;
            v60 = v59;
            v61 = *v31++;
            v62 = *(this + 51);
            v63 = v62[5];
            v64 = vmulq_f32(vmaxq_f32(v56, v63), *v62);
            v65 = v62[6];
            v66 = vaddq_f32(v58, vmulq_n_f32(vsubq_f32(v60, v58), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v64, v62[1]), v62[2]), v63), v65).f32[0]));
            *v32++ = vaddq_f32(v66, vmulq_n_f32(vsubq_f32(v61, v66), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v64, v62[3]), v62[4]), v63), v65).f32[0]));
            ++v33;
          }

          while (v2 > v33);
        }

        ++v13;
        v4 = (v4 + v84);
        v5 = (v5 + v83);
        v6 = (v6 + v82);
        v7 = (v7 + v81);
        v3 = (v3 + v16);
        v14 = (v14 + v16);
        v15 = (v15 + v84);
        v17 = (v17 + v83);
        v18 = (v18 + v82);
        v19 = (v19 + v81);
      }

      while (v13 != v85);
    }
  }

  return 0;
}

uint64_t HgcBlendBlur_3::GetDOD(HgcBlendBlur_3 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcBlendBlur_3::GetROI(HgcBlendBlur_3 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcBlendBlur_3::~HgcBlendBlur_3(HgcBlendBlur_3 *this)
{
  *this = &unk_28722BA30;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40AC4F46D1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlendBlur_3::~HgcBlendBlur_3(HGNode *this)
{
  *this = &unk_28722BA30;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40AC4F46D1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlendBlur_3::SetParameter(HgcBlendBlur_3 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcBlendBlur_3::GetParameter(HgcBlendBlur_3 *this, unsigned int a2, float *a3)
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

const char *HgcBlendBlur_4::GetProgram(HgcBlendBlur_4 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000706\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*half(hg_Params[0].x);\n    r5.x = r0.x + half(hg_Params[1].x);\n    r5.x = clamp(r5.x*half(hg_Params[2].x), 0.00000h, 1.00000h);\n    r5 = mix(r1, r2, r5.xxxx);\n    r2.x = r0.x + half(hg_Params[3].x);\n    r2.x = clamp(r2.x*half(hg_Params[4].x), 0.00000h, 1.00000h);\n    r5 = mix(r5, r3, r2.xxxx);\n    r0.x = r0.x + half(hg_Params[5].x);\n    r0.x = clamp(r0.x*half(hg_Params[6].x), 0.00000h, 1.00000h);\n    output.color0 = mix(float4(r5), float4(r4), float4(r0.xxxx));\n    return output;\n}\n//MD5=627e420d:ac3f65df:3d6a2763:e2f8e48d\n//SIG=00400000:0000001f:0000001f:0000001f:0001:0007:0006:0000:0000:0000:003e:0000:0005:05:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000006a5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*hg_Params[0].x;\n    r5.x = r0.x + hg_Params[1].x;\n    r5.x = clamp(r5.x*hg_Params[2].x, 0.00000f, 1.00000f);\n    r5 = mix(r1, r2, r5.xxxx);\n    r2.x = r0.x + hg_Params[3].x;\n    r2.x = clamp(r2.x*hg_Params[4].x, 0.00000f, 1.00000f);\n    r5 = mix(r5, r3, r2.xxxx);\n    r0.x = r0.x + hg_Params[5].x;\n    r0.x = clamp(r0.x*hg_Params[6].x, 0.00000f, 1.00000f);\n    output.color0 = mix(r5, r4, r0.xxxx);\n    return output;\n}\n//MD5=80d6b672:6abcf68f:93b3ec5c:4ec43f78\n//SIG=00000000:0000001f:0000001f:00000000:0001:0007:0006:0000:0000:0000:003e:0000:0005:05:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000006e9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture4;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2, r3, r4, r5;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture4, hg_TexCoord4.xy);\n    r0.x = max(r0.x, c0.x);\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    r5.x = r0.x + hg_ProgramLocal1.x;\n    r5.x = clamp(r5.x*hg_ProgramLocal2.x, 0.00000, 1.00000);\n    r5 = mix(r1, r2, r5.xxxx);\n    r2.x = r0.x + hg_ProgramLocal3.x;\n    r2.x = clamp(r2.x*hg_ProgramLocal4.x, 0.00000, 1.00000);\n    r5 = mix(r5, r3, r2.xxxx);\n    r0.x = r0.x + hg_ProgramLocal5.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal6.x, 0.00000, 1.00000);\n    gl_FragColor = mix(r5, r4, r0.xxxx);\n}\n//MD5=66a338c1:c5285239:914c20c7:2234eca0\n//SIG=00000000:0000001f:0000001f:00000000:0001:0007:0006:0000:0000:0000:0000:0000:0005:05:0:1:0\n";
  }
}

void sub_25FDC90FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDC913C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDC9134);
}

uint64_t HgcBlendBlur_4::BindTexture(HgcBlendBlur_4 *this, HGHandler *a2, int a3)
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

uint64_t HgcBlendBlur_4::Bind(HgcBlendBlur_4 *this, HGHandler *a2)
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

uint64_t HgcBlendBlur_4::RenderTile(HgcBlendBlur_4 *this, HGTile *a2)
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
    v9 = *(a2 + 2);
    v10 = *(a2 + 6);
    v11 = *(a2 + 38);
    v12 = *(a2 + 34);
    v13 = *(a2 + 30);
    v14 = *(a2 + 26);
    v15 = *(a2 + 22);
    if (v3 < 2)
    {
      if (v3 == 1)
      {
        v55 = 16 * v13;
        v56 = 16 * v12;
        v57 = 16 * v11;
        v58 = 16 * v10;
        do
        {
          v59 = *(this + 51);
          v60 = v59[7];
          v61 = vmulq_f32(vmaxq_f32(*v4, v60), *v59);
          v62 = v59[8];
          v63 = vaddq_f32(*v5, vmulq_n_f32(vsubq_f32(*v6, *v5), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v61, v59[1]), v59[2]), v60), v62).f32[0]));
          v64 = vaddq_f32(v63, vmulq_n_f32(vsubq_f32(*v7, v63), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v61, v59[3]), v59[4]), v60), v62).f32[0]));
          v4 += v15;
          v5 += v14;
          v6 = (v6 + v55);
          *v9 = vaddq_f32(v64, vmulq_n_f32(vsubq_f32(*v8, v64), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v61, v59[5]), v59[6]), v60), v62).f32[0]));
          v7 = (v7 + v56);
          v8 = (v8 + v57);
          v9 = (v9 + v58);
          --v2;
        }

        while (v2);
      }
    }

    else
    {
      v16 = 0;
      v17 = 16 * v13;
      v18 = 16 * v12;
      v19 = 16 * v11;
      v20 = 16 * v10;
      v21 = 16 * v15;
      v22 = 16 * v14;
      do
      {
        v23 = 0;
        v24 = 0;
        for (i = v3; i > 1; i -= 2)
        {
          v26 = v5[v23];
          v27 = *(this + 51);
          v29 = v27[6];
          v28 = v27[7];
          v30 = v27[1];
          v31 = vmulq_f32(vmaxq_f32(v4[v23], v28), *v27);
          v32 = vmulq_f32(vmaxq_f32(v4[v23 + 1], v28), *v27);
          v33 = vaddq_f32(v31, v30);
          v34 = v27[2];
          v35 = v27[3];
          v36 = vmulq_f32(vaddq_f32(v32, v30), v34);
          v37 = vmaxq_f32(vmulq_f32(v33, v34), v28);
          v38 = v27[8];
          v39 = vmulq_n_f32(vsubq_f32(v6[v23], v26), vminq_f32(v37, v38).f32[0]);
          v40 = v27[4];
          v41 = v27[5];
          v42 = vaddq_f32(v26, v39);
          v43 = vaddq_f32(v5[v23 + 1], vmulq_n_f32(vsubq_f32(v6[v23 + 1], v5[v23 + 1]), vminq_f32(vmaxq_f32(v36, v28), v38).f32[0]));
          v44 = vaddq_f32(v42, vmulq_n_f32(vsubq_f32(v7[v23], v42), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v31, v35), v40), v28), v38).f32[0]));
          v45 = vaddq_f32(v43, vmulq_n_f32(vsubq_f32(v7[v23 + 1], v43), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v32, v35), v40), v28), v38).f32[0]));
          v46 = vmaxq_f32(vmulq_f32(vaddq_f32(v31, v41), v29), v28);
          v47 = vaddq_f32(v45, vmulq_n_f32(vsubq_f32(v8[v23 + 1], v45), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v32, v41), v29), v28), v38).f32[0]));
          v48 = &v9[v23];
          *v48 = vaddq_f32(v44, vmulq_n_f32(vsubq_f32(v8[v23], v44), vminq_f32(v46, v38).f32[0]));
          v48[1] = v47;
          v24 += 2;
          v23 += 2;
        }

        if (v3 > v24)
        {
          v49 = *(this + 51);
          v50 = v49[7];
          v51 = vmulq_f32(vmaxq_f32(v4[v23], v50), *v49);
          v52 = v49[8];
          v53 = vaddq_f32(v5[v23], vmulq_n_f32(vsubq_f32(v6[v23], v5[v23]), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v51, v49[1]), v49[2]), v50), v52).f32[0]));
          v54 = vaddq_f32(v53, vmulq_n_f32(vsubq_f32(v7[v23], v53), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v51, v49[3]), v49[4]), v50), v52).f32[0]));
          v9[v23] = vaddq_f32(v54, vmulq_n_f32(vsubq_f32(v8[v23], v54), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v51, v49[5]), v49[6]), v50), v52).f32[0]));
        }

        ++v16;
        v6 = (v6 + v17);
        v7 = (v7 + v18);
        v8 = (v8 + v19);
        v9 = (v9 + v20);
        v4 = (v4 + v21);
        v5 = (v5 + v22);
      }

      while (v16 != v2);
    }
  }

  return 0;
}

uint64_t HgcBlendBlur_4::GetDOD(HgcBlendBlur_4 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcBlendBlur_4::GetROI(HgcBlendBlur_4 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcBlendBlur_4::~HgcBlendBlur_4(HgcBlendBlur_4 *this)
{
  *this = &unk_28722BC80;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40265AC83CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlendBlur_4::~HgcBlendBlur_4(HGNode *this)
{
  *this = &unk_28722BC80;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlendBlur_4::SetParameter(HgcBlendBlur_4 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcBlendBlur_4::GetParameter(HgcBlendBlur_4 *this, unsigned int a2, float *a3)
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

const char *HgcBlendBlur_5::GetProgram(HgcBlendBlur_5 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000838\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< half > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = (half4) hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*half(hg_Params[0].x);\n    r6.x = r0.x + half(hg_Params[1].x);\n    r6.x = clamp(r6.x*half(hg_Params[2].x), 0.00000h, 1.00000h);\n    r6 = mix(r1, r2, r6.xxxx);\n    r2.x = r0.x + half(hg_Params[3].x);\n    r2.x = clamp(r2.x*half(hg_Params[4].x), 0.00000h, 1.00000h);\n    r6 = mix(r6, r3, r2.xxxx);\n    r1.x = r0.x + half(hg_Params[5].x);\n    r1.x = clamp(r1.x*half(hg_Params[6].x), 0.00000h, 1.00000h);\n    r6 = mix(r6, r4, r1.xxxx);\n    r0.x = r0.x + half(hg_Params[7].x);\n    r0.x = clamp(r0.x*half(hg_Params[8].x), 0.00000h, 1.00000h);\n    output.color0 = mix(float4(r6), float4(r5), float4(r0.xxxx));\n    return output;\n}\n//MD5=1f819f5b:a3841d5a:cbe2d3a5:bdaf89e4\n//SIG=00400000:0000003f:0000003f:0000003f:0001:0009:0007:0000:0000:0000:007e:0000:0006:06:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000007c4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< float > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*hg_Params[0].x;\n    r6.x = r0.x + hg_Params[1].x;\n    r6.x = clamp(r6.x*hg_Params[2].x, 0.00000f, 1.00000f);\n    r6 = mix(r1, r2, r6.xxxx);\n    r2.x = r0.x + hg_Params[3].x;\n    r2.x = clamp(r2.x*hg_Params[4].x, 0.00000f, 1.00000f);\n    r6 = mix(r6, r3, r2.xxxx);\n    r1.x = r0.x + hg_Params[5].x;\n    r1.x = clamp(r1.x*hg_Params[6].x, 0.00000f, 1.00000f);\n    r6 = mix(r6, r4, r1.xxxx);\n    r0.x = r0.x + hg_Params[7].x;\n    r0.x = clamp(r0.x*hg_Params[8].x, 0.00000f, 1.00000f);\n    output.color0 = mix(r6, r5, r0.xxxx);\n    return output;\n}\n//MD5=9de98d5c:330bb5b9:d2d07cff:4179144b\n//SIG=00000000:0000003f:0000003f:00000000:0001:0009:0007:0000:0000:0000:007e:0000:0006:06:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000083a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture4;\nuniform defaultp sampler2D hg_Texture5;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nuniform defaultp vec4 hg_ProgramLocal7;\nuniform defaultp vec4 hg_ProgramLocal8;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2, r3, r4, r5, r6;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture4, hg_TexCoord4.xy);\n    r5 = texture2D(hg_Texture5, hg_TexCoord5.xy);\n    r0.x = max(r0.x, c0.x);\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    r6.x = r0.x + hg_ProgramLocal1.x;\n    r6.x = clamp(r6.x*hg_ProgramLocal2.x, 0.00000, 1.00000);\n    r6 = mix(r1, r2, r6.xxxx);\n    r2.x = r0.x + hg_ProgramLocal3.x;\n    r2.x = clamp(r2.x*hg_ProgramLocal4.x, 0.00000, 1.00000);\n    r6 = mix(r6, r3, r2.xxxx);\n    r1.x = r0.x + hg_ProgramLocal5.x;\n    r1.x = clamp(r1.x*hg_ProgramLocal6.x, 0.00000, 1.00000);\n    r6 = mix(r6, r4, r1.xxxx);\n    r0.x = r0.x + hg_ProgramLocal7.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal8.x, 0.00000, 1.00000);\n    gl_FragColor = mix(r6, r5, r0.xxxx);\n}\n//MD5=47fbfc85:922bffb2:16d6ac3a:3532e4be\n//SIG=00000000:0000003f:0000003f:00000000:0001:0009:0007:0000:0000:0000:0000:0000:0006:06:0:1:0\n";
  }
}

void sub_25FDCA0EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDCA130(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDCA128);
}

uint64_t HgcBlendBlur_5::BindTexture(HgcBlendBlur_5 *this, HGHandler *a2, int a3)
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

uint64_t HgcBlendBlur_5::Bind(HgcBlendBlur_5 *this, HGHandler *a2)
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
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlendBlur_5::RenderTile(HgcBlendBlur_5 *this, HGTile *a2)
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
    while (v4 < 2)
    {
      v20 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v18 += v13;
      v15 += v12;
      v14 += v11;
      v8 += v10;
      v7 += v9;
      v6 += v17;
      v5 += v16;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v19 = 0;
    v20 = 0;
    for (i = v4; i > 1; i -= 2)
    {
      v22 = *(this + 51);
      v24 = v22[8];
      v23 = v22[9];
      v25 = v22[1];
      v26 = vmulq_f32(vmaxq_f32(*(v18 + v19), v23), *v22);
      v27 = vmulq_f32(vmaxq_f32(*(v18 + v19 + 16), v23), *v22);
      v28 = v22[2];
      v29 = v22[3];
      v30 = v22[10];
      v31 = vaddq_f32(*(v15 + v19), vmulq_n_f32(vsubq_f32(*(v14 + v19), *(v15 + v19)), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v26, v25), v28), v23), v30).f32[0]));
      v32 = vaddq_f32(*(v15 + v19 + 16), vmulq_n_f32(vsubq_f32(*(v14 + v19 + 16), *(v15 + v19 + 16)), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v27, v25), v28), v23), v30).f32[0]));
      v33 = v22[4];
      v34 = v22[5];
      v35 = vaddq_f32(v31, vmulq_n_f32(vsubq_f32(*(v8 + v19), v31), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v26, v29), v33), v23), v30).f32[0]));
      v36 = vaddq_f32(v32, vmulq_n_f32(vsubq_f32(*(v8 + v19 + 16), v32), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v27, v29), v33), v23), v30).f32[0]));
      v37 = v22[6];
      v38 = v22[7];
      v39 = vaddq_f32(v35, vmulq_n_f32(vsubq_f32(*(v7 + v19), v35), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v26, v34), v37), v23), v30).f32[0]));
      v40 = vaddq_f32(v36, vmulq_n_f32(vsubq_f32(*(v7 + v19 + 16), v36), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v27, v34), v37), v23), v30).f32[0]));
      v41 = vmaxq_f32(vmulq_f32(vaddq_f32(v26, v38), v24), v23);
      v42 = vaddq_f32(v40, vmulq_n_f32(vsubq_f32(*(v6 + v19 + 16), v40), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v27, v38), v24), v23), v30).f32[0]));
      v43 = (v5 + v19);
      *v43 = vaddq_f32(v39, vmulq_n_f32(vsubq_f32(*(v6 + v19), v39), vminq_f32(v41, v30).f32[0]));
      v43[1] = v42;
      v20 += 2;
      v19 += 32;
    }

    if (v20 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v44 = 16 * v20;
    v45 = *(this + 51);
    v46 = v45[9];
    v47 = vmulq_f32(vmaxq_f32(*(v18 + v44), v46), *v45);
    v48 = v45[10];
    v49 = vaddq_f32(*(v15 + v44), vmulq_n_f32(vsubq_f32(*(v14 + v44), *(v15 + v44)), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v47, v45[1]), v45[2]), v46), v48).f32[0]));
    v50 = vaddq_f32(v49, vmulq_n_f32(vsubq_f32(*(v8 + v44), v49), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v47, v45[3]), v45[4]), v46), v48).f32[0]));
    v51 = vaddq_f32(v50, vmulq_n_f32(vsubq_f32(*(v7 + v44), v50), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v47, v45[5]), v45[6]), v46), v48).f32[0]));
    *(v5 + v44) = vaddq_f32(v51, vmulq_n_f32(vsubq_f32(*(v6 + v44), v51), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v47, v45[7]), v45[8]), v46), v48).f32[0]));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBlendBlur_5::GetDOD(HgcBlendBlur_5 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcBlendBlur_5::GetROI(HgcBlendBlur_5 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcBlendBlur_5::~HgcBlendBlur_5(HgcBlendBlur_5 *this)
{
  *this = &unk_28722BED0;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40C3A7E6FCLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlendBlur_5::~HgcBlendBlur_5(HGNode *this)
{
  *this = &unk_28722BED0;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40C3A7E6FCLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlendBlur_5::SetParameter(HgcBlendBlur_5 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 8)
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

uint64_t HgcBlendBlur_5::GetParameter(HgcBlendBlur_5 *this, unsigned int a2, float *a3)
{
  if (a2 > 8)
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

const char *HgcBlendBlur_6::GetProgram(HgcBlendBlur_6 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000096b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< half > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]], \n    texture2d< half > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = (half4) hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r6 = (half4) hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*half(hg_Params[0].x);\n    r7.x = r0.x + half(hg_Params[1].x);\n    r7.x = clamp(r7.x*half(hg_Params[2].x), 0.00000h, 1.00000h);\n    r7 = mix(r1, r2, r7.xxxx);\n    r2.x = r0.x + half(hg_Params[3].x);\n    r2.x = clamp(r2.x*half(hg_Params[4].x), 0.00000h, 1.00000h);\n    r7 = mix(r7, r3, r2.xxxx);\n    r1.x = r0.x + half(hg_Params[5].x);\n    r1.x = clamp(r1.x*half(hg_Params[6].x), 0.00000h, 1.00000h);\n    r7 = mix(r7, r4, r1.xxxx);\n    r2.x = r0.x + half(hg_Params[7].x);\n    r2.x = clamp(r2.x*half(hg_Params[8].x), 0.00000h, 1.00000h);\n    r7 = mix(r7, r5, r2.xxxx);\n    r0.x = r0.x + half(hg_Params[9].x);\n    r0.x = clamp(r0.x*half(hg_Params[10].x), 0.00000h, 1.00000h);\n    output.color0 = mix(float4(r7), float4(r6), float4(r0.xxxx));\n    return output;\n}\n//MD5=623268ba:866116ad:d3b9f927:5f12c758\n//SIG=00400000:0000007f:0000007f:0000007f:0001:000b:0008:0000:0000:0000:00fe:0000:0007:07:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000008e4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< float > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]], \n    texture2d< float > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6, r7;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r6 = hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*hg_Params[0].x;\n    r7.x = r0.x + hg_Params[1].x;\n    r7.x = clamp(r7.x*hg_Params[2].x, 0.00000f, 1.00000f);\n    r7 = mix(r1, r2, r7.xxxx);\n    r2.x = r0.x + hg_Params[3].x;\n    r2.x = clamp(r2.x*hg_Params[4].x, 0.00000f, 1.00000f);\n    r7 = mix(r7, r3, r2.xxxx);\n    r1.x = r0.x + hg_Params[5].x;\n    r1.x = clamp(r1.x*hg_Params[6].x, 0.00000f, 1.00000f);\n    r7 = mix(r7, r4, r1.xxxx);\n    r2.x = r0.x + hg_Params[7].x;\n    r2.x = clamp(r2.x*hg_Params[8].x, 0.00000f, 1.00000f);\n    r7 = mix(r7, r5, r2.xxxx);\n    r0.x = r0.x + hg_Params[9].x;\n    r0.x = clamp(r0.x*hg_Params[10].x, 0.00000f, 1.00000f);\n    output.color0 = mix(r7, r6, r0.xxxx);\n    return output;\n}\n//MD5=95acf123:9baa8dfd:20ef2a98:1f1b8416\n//SIG=00000000:0000007f:0000007f:00000000:0001:000b:0008:0000:0000:0000:00fe:0000:0007:07:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000098d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture4;\nuniform defaultp sampler2D hg_Texture5;\nuniform defaultp sampler2D hg_Texture6;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nuniform defaultp vec4 hg_ProgramLocal7;\nuniform defaultp vec4 hg_ProgramLocal8;\nuniform defaultp vec4 hg_ProgramLocal9;\nuniform defaultp vec4 hg_ProgramLocal10;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvarying highp vec4 hg_TexCoord6;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2, r3, r4, r5, r6, r7;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture4, hg_TexCoord4.xy);\n    r5 = texture2D(hg_Texture5, hg_TexCoord5.xy);\n    r6 = texture2D(hg_Texture6, hg_TexCoord6.xy);\n    r0.x = max(r0.x, c0.x);\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    r7.x = r0.x + hg_ProgramLocal1.x;\n    r7.x = clamp(r7.x*hg_ProgramLocal2.x, 0.00000, 1.00000);\n    r7 = mix(r1, r2, r7.xxxx);\n    r2.x = r0.x + hg_ProgramLocal3.x;\n    r2.x = clamp(r2.x*hg_ProgramLocal4.x, 0.00000, 1.00000);\n    r7 = mix(r7, r3, r2.xxxx);\n    r1.x = r0.x + hg_ProgramLocal5.x;\n    r1.x = clamp(r1.x*hg_ProgramLocal6.x, 0.00000, 1.00000);\n    r7 = mix(r7, r4, r1.xxxx);\n    r2.x = r0.x + hg_ProgramLocal7.x;\n    r2.x = clamp(r2.x*hg_ProgramLocal8.x, 0.00000, 1.00000);\n    r7 = mix(r7, r5, r2.xxxx);\n    r0.x = r0.x + hg_ProgramLocal9.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal10.x, 0.00000, 1.00000);\n    gl_FragColor = mix(r7, r6, r0.xxxx);\n}\n//MD5=345256d6:7773697d:9580f084:324af0ce\n//SIG=00000000:0000007f:0000007f:00000000:0001:000b:0008:0000:0000:0000:0000:0000:0007:07:0:1:0\n";
  }
}

void sub_25FDCB220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDCB268(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDCB260);
}

uint64_t HgcBlendBlur_6::BindTexture(HgcBlendBlur_6 *this, HGHandler *a2, int a3)
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

uint64_t HgcBlendBlur_6::Bind(HgcBlendBlur_6 *this, HGHandler *a2)
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
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlendBlur_6::RenderTile(HgcBlendBlur_6 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = 0;
    v4 = *(a2 + 2) - *a2;
    v5 = *(a2 + 2);
    v6 = *(a2 + 22);
    v7 = *(a2 + 20);
    v8 = *(a2 + 18);
    v9 = *(a2 + 16);
    v10 = 16 * *(a2 + 42);
    v11 = 16 * *(a2 + 38);
    v12 = 16 * *(a2 + 34);
    v13 = 16 * *(a2 + 30);
    v14 = 16 * *(a2 + 26);
    v15 = 16 * *(a2 + 22);
    v16 = *(a2 + 14);
    v17 = *(a2 + 12);
    v18 = 16 * *(a2 + 6);
    v19 = 16 * *(a2 + 46);
    v20 = *(a2 + 10);
    while (v4 < 2)
    {
      v22 = 0;
      if (v4 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v20 += v15;
      v17 += v14;
      v16 += v13;
      v9 += v12;
      v8 += v11;
      v7 += v10;
      v6 += v19;
      v5 += v18;
      if (++v3 == v2)
      {
        return 0;
      }
    }

    v21 = 0;
    v22 = 0;
    for (i = v4; i > 1; i -= 2)
    {
      v24 = *(v17 + v21 + 16);
      v25 = *(this + 51);
      v27 = v25[10];
      v26 = v25[11];
      v28 = v25[1];
      v29 = vmulq_f32(vmaxq_f32(*(v20 + v21), v26), *v25);
      v30 = vmulq_f32(vmaxq_f32(*(v20 + v21 + 16), v26), *v25);
      v31 = vaddq_f32(v29, v28);
      v32 = v25[2];
      v33 = v25[3];
      v34 = vmulq_f32(vaddq_f32(v30, v28), v32);
      v35 = vmaxq_f32(vmulq_f32(v31, v32), v26);
      v36 = v25[12];
      v37 = vmulq_n_f32(vsubq_f32(*(v16 + v21 + 16), v24), vminq_f32(vmaxq_f32(v34, v26), v36).f32[0]);
      v38 = vaddq_f32(*(v17 + v21), vmulq_n_f32(vsubq_f32(*(v16 + v21), *(v17 + v21)), vminq_f32(v35, v36).f32[0]));
      v39 = vaddq_f32(v29, v33);
      v40 = vaddq_f32(v30, v33);
      v41 = v25[4];
      v42 = v25[5];
      v43 = vaddq_f32(v24, v37);
      v44 = vaddq_f32(v38, vmulq_n_f32(vsubq_f32(*(v9 + v21), v38), vminq_f32(vmaxq_f32(vmulq_f32(v39, v41), v26), v36).f32[0]));
      v45 = vaddq_f32(v29, v42);
      v46 = vaddq_f32(v30, v42);
      v47 = v25[6];
      v48 = v25[7];
      v49 = vaddq_f32(v43, vmulq_n_f32(vsubq_f32(*(v9 + v21 + 16), v43), vminq_f32(vmaxq_f32(vmulq_f32(v40, v41), v26), v36).f32[0]));
      v50 = vaddq_f32(v44, vmulq_n_f32(vsubq_f32(*(v8 + v21), v44), vminq_f32(vmaxq_f32(vmulq_f32(v45, v47), v26), v36).f32[0]));
      v51 = vaddq_f32(v49, vmulq_n_f32(vsubq_f32(*(v8 + v21 + 16), v49), vminq_f32(vmaxq_f32(vmulq_f32(v46, v47), v26), v36).f32[0]));
      v52 = v25[8];
      v53 = v25[9];
      v54 = vaddq_f32(v50, vmulq_n_f32(vsubq_f32(*(v7 + v21), v50), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v29, v48), v52), v26), v36).f32[0]));
      v55 = vaddq_f32(v51, vmulq_n_f32(vsubq_f32(*(v7 + v21 + 16), v51), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v30, v48), v52), v26), v36).f32[0]));
      v56 = vmaxq_f32(vmulq_f32(vaddq_f32(v29, v53), v27), v26);
      v57 = vaddq_f32(v55, vmulq_n_f32(vsubq_f32(*(v6 + v21 + 16), v55), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v30, v53), v27), v26), v36).f32[0]));
      v58 = (v5 + v21);
      *v58 = vaddq_f32(v54, vmulq_n_f32(vsubq_f32(*(v6 + v21), v54), vminq_f32(v56, v36).f32[0]));
      v58[1] = v57;
      v22 += 2;
      v21 += 32;
    }

    if (v22 >= v4)
    {
      goto LABEL_3;
    }

LABEL_10:
    v59 = 16 * v22;
    v60 = *(this + 51);
    v61 = v60[11];
    v62 = vmulq_f32(vmaxq_f32(*(v20 + v59), v61), *v60);
    v63 = v60[12];
    v64 = vaddq_f32(*(v17 + v59), vmulq_n_f32(vsubq_f32(*(v16 + v59), *(v17 + v59)), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v62, v60[1]), v60[2]), v61), v63).f32[0]));
    v65 = vaddq_f32(v64, vmulq_n_f32(vsubq_f32(*(v9 + v59), v64), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v62, v60[3]), v60[4]), v61), v63).f32[0]));
    v66 = vaddq_f32(v65, vmulq_n_f32(vsubq_f32(*(v8 + v59), v65), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v62, v60[5]), v60[6]), v61), v63).f32[0]));
    v67 = vaddq_f32(v66, vmulq_n_f32(vsubq_f32(*(v7 + v59), v66), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v62, v60[7]), v60[8]), v61), v63).f32[0]));
    *(v5 + v59) = vaddq_f32(v67, vmulq_n_f32(vsubq_f32(*(v6 + v59), v67), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v62, v60[9]), v60[10]), v61), v63).f32[0]));
    goto LABEL_3;
  }

  return 0;
}

uint64_t HgcBlendBlur_6::GetDOD(HgcBlendBlur_6 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcBlendBlur_6::GetROI(HgcBlendBlur_6 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcBlendBlur_6::~HgcBlendBlur_6(HgcBlendBlur_6 *this)
{
  *this = &unk_28722C120;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C400F93440CLL);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlendBlur_6::~HgcBlendBlur_6(HGNode *this)
{
  *this = &unk_28722C120;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C400F93440CLL);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlendBlur_6::SetParameter(HgcBlendBlur_6 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcBlendBlur_6::GetParameter(HgcBlendBlur_6 *this, unsigned int a2, float *a3)
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

const char *HgcBlendBlur_7::GetProgram(HgcBlendBlur_7 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000a9f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< half > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< half > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< half > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< half > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< half > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]], \n    texture2d< half > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]], \n    texture2d< half > hg_Texture7 [[ texture(7) ]], \n    sampler hg_Sampler7 [[ sampler(7) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3, r4, r5, r6, r7, r8;\n    FragmentOut output;\n\n    r0.x = (half) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = (half4) hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = (half4) hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = (half4) hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = (half4) hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = (half4) hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r6 = (half4) hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    r7 = (half4) hg_Texture7.sample(hg_Sampler7, frag._texCoord7.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*half(hg_Params[0].x);\n    r8.x = r0.x + half(hg_Params[1].x);\n    r8.x = clamp(r8.x*half(hg_Params[2].x), 0.00000h, 1.00000h);\n    r8 = mix(r1, r2, r8.xxxx);\n    r2.x = r0.x + half(hg_Params[3].x);\n    r2.x = clamp(r2.x*half(hg_Params[4].x), 0.00000h, 1.00000h);\n    r8 = mix(r8, r3, r2.xxxx);\n    r1.x = r0.x + half(hg_Params[5].x);\n    r1.x = clamp(r1.x*half(hg_Params[6].x), 0.00000h, 1.00000h);\n    r8 = mix(r8, r4, r1.xxxx);\n    r2.x = r0.x + half(hg_Params[7].x);\n    r2.x = clamp(r2.x*half(hg_Params[8].x), 0.00000h, 1.00000h);\n    r8 = mix(r8, r5, r2.xxxx);\n    r3.x = r0.x + half(hg_Params[9].x);\n    r3.x = clamp(r3.x*half(hg_Params[10].x), 0.00000h, 1.00000h);\n    r8 = mix(r8, r6, r3.xxxx);\n    r0.x = r0.x + half(hg_Params[11].x);\n    r0.x = clamp(r0.x*half(hg_Params[12].x), 0.00000h, 1.00000h);\n    output.color0 = mix(float4(r8), float4(r7), float4(r0.xxxx));\n    return output;\n}\n//MD5=51e82de0:83cef4b8:dbcd9194:23d36838\n//SIG=00400000:000000ff:000000ff:000000ff:0001:000d:0009:0000:0000:0000:01fe:0000:0008:08:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000a05\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]], \n    texture2d< float > hg_Texture1 [[ texture(1) ]], \n    sampler hg_Sampler1 [[ sampler(1) ]], \n    texture2d< float > hg_Texture2 [[ texture(2) ]], \n    sampler hg_Sampler2 [[ sampler(2) ]], \n    texture2d< float > hg_Texture3 [[ texture(3) ]], \n    sampler hg_Sampler3 [[ sampler(3) ]], \n    texture2d< float > hg_Texture4 [[ texture(4) ]], \n    sampler hg_Sampler4 [[ sampler(4) ]], \n    texture2d< float > hg_Texture5 [[ texture(5) ]], \n    sampler hg_Sampler5 [[ sampler(5) ]], \n    texture2d< float > hg_Texture6 [[ texture(6) ]], \n    sampler hg_Sampler6 [[ sampler(6) ]], \n    texture2d< float > hg_Texture7 [[ texture(7) ]], \n    sampler hg_Sampler7 [[ sampler(7) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3, r4, r5, r6, r7, r8;\n    FragmentOut output;\n\n    r0.x = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).x;\n    r1 = hg_Texture1.sample(hg_Sampler1, frag._texCoord1.xy);\n    r2 = hg_Texture2.sample(hg_Sampler2, frag._texCoord2.xy);\n    r3 = hg_Texture3.sample(hg_Sampler3, frag._texCoord3.xy);\n    r4 = hg_Texture4.sample(hg_Sampler4, frag._texCoord4.xy);\n    r5 = hg_Texture5.sample(hg_Sampler5, frag._texCoord5.xy);\n    r6 = hg_Texture6.sample(hg_Sampler6, frag._texCoord6.xy);\n    r7 = hg_Texture7.sample(hg_Sampler7, frag._texCoord7.xy);\n    r0.x = fmax(r0.x, c0.x);\n    r0.x = r0.x*hg_Params[0].x;\n    r8.x = r0.x + hg_Params[1].x;\n    r8.x = clamp(r8.x*hg_Params[2].x, 0.00000f, 1.00000f);\n    r8 = mix(r1, r2, r8.xxxx);\n    r2.x = r0.x + hg_Params[3].x;\n    r2.x = clamp(r2.x*hg_Params[4].x, 0.00000f, 1.00000f);\n    r8 = mix(r8, r3, r2.xxxx);\n    r1.x = r0.x + hg_Params[5].x;\n    r1.x = clamp(r1.x*hg_Params[6].x, 0.00000f, 1.00000f);\n    r8 = mix(r8, r4, r1.xxxx);\n    r2.x = r0.x + hg_Params[7].x;\n    r2.x = clamp(r2.x*hg_Params[8].x, 0.00000f, 1.00000f);\n    r8 = mix(r8, r5, r2.xxxx);\n    r3.x = r0.x + hg_Params[9].x;\n    r3.x = clamp(r3.x*hg_Params[10].x, 0.00000f, 1.00000f);\n    r8 = mix(r8, r6, r3.xxxx);\n    r0.x = r0.x + hg_Params[11].x;\n    r0.x = clamp(r0.x*hg_Params[12].x, 0.00000f, 1.00000f);\n    output.color0 = mix(r8, r7, r0.xxxx);\n    return output;\n}\n//MD5=aefb9964:b413e645:3f06c610:528cb829\n//SIG=00000000:000000ff:000000ff:00000000:0001:000d:0009:0000:0000:0000:01fe:0000:0008:08:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000ae2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform defaultp sampler2D hg_Texture1;\nuniform defaultp sampler2D hg_Texture2;\nuniform defaultp sampler2D hg_Texture3;\nuniform defaultp sampler2D hg_Texture4;\nuniform defaultp sampler2D hg_Texture5;\nuniform defaultp sampler2D hg_Texture6;\nuniform defaultp sampler2D hg_Texture7;\nuniform defaultp vec4 hg_ProgramLocal0;\nuniform defaultp vec4 hg_ProgramLocal1;\nuniform defaultp vec4 hg_ProgramLocal2;\nuniform defaultp vec4 hg_ProgramLocal3;\nuniform defaultp vec4 hg_ProgramLocal4;\nuniform defaultp vec4 hg_ProgramLocal5;\nuniform defaultp vec4 hg_ProgramLocal6;\nuniform defaultp vec4 hg_ProgramLocal7;\nuniform defaultp vec4 hg_ProgramLocal8;\nuniform defaultp vec4 hg_ProgramLocal9;\nuniform defaultp vec4 hg_ProgramLocal10;\nuniform defaultp vec4 hg_ProgramLocal11;\nuniform defaultp vec4 hg_ProgramLocal12;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvarying highp vec4 hg_TexCoord2;\nvarying highp vec4 hg_TexCoord3;\nvarying highp vec4 hg_TexCoord4;\nvarying highp vec4 hg_TexCoord5;\nvarying highp vec4 hg_TexCoord6;\nvarying highp vec4 hg_TexCoord7;\nvoid main()\n{\n    const defaultp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 0.000000000);\n    defaultp vec4 r0, r1, r2, r3, r4, r5, r6, r7, r8;\n\n    r0.x = texture2D(hg_Texture0, hg_TexCoord0.xy).x;\n    r1 = texture2D(hg_Texture1, hg_TexCoord1.xy);\n    r2 = texture2D(hg_Texture2, hg_TexCoord2.xy);\n    r3 = texture2D(hg_Texture3, hg_TexCoord3.xy);\n    r4 = texture2D(hg_Texture4, hg_TexCoord4.xy);\n    r5 = texture2D(hg_Texture5, hg_TexCoord5.xy);\n    r6 = texture2D(hg_Texture6, hg_TexCoord6.xy);\n    r7 = texture2D(hg_Texture7, hg_TexCoord7.xy);\n    r0.x = max(r0.x, c0.x);\n    r0.x = r0.x*hg_ProgramLocal0.x;\n    r8.x = r0.x + hg_ProgramLocal1.x;\n    r8.x = clamp(r8.x*hg_ProgramLocal2.x, 0.00000, 1.00000);\n    r8 = mix(r1, r2, r8.xxxx);\n    r2.x = r0.x + hg_ProgramLocal3.x;\n    r2.x = clamp(r2.x*hg_ProgramLocal4.x, 0.00000, 1.00000);\n    r8 = mix(r8, r3, r2.xxxx);\n    r1.x = r0.x + hg_ProgramLocal5.x;\n    r1.x = clamp(r1.x*hg_ProgramLocal6.x, 0.00000, 1.00000);\n    r8 = mix(r8, r4, r1.xxxx);\n    r2.x = r0.x + hg_ProgramLocal7.x;\n    r2.x = clamp(r2.x*hg_ProgramLocal8.x, 0.00000, 1.00000);\n    r8 = mix(r8, r5, r2.xxxx);\n    r3.x = r0.x + hg_ProgramLocal9.x;\n    r3.x = clamp(r3.x*hg_ProgramLocal10.x, 0.00000, 1.00000);\n    r8 = mix(r8, r6, r3.xxxx);\n    r0.x = r0.x + hg_ProgramLocal11.x;\n    r0.x = clamp(r0.x*hg_ProgramLocal12.x, 0.00000, 1.00000);\n    gl_FragColor = mix(r8, r7, r0.xxxx);\n}\n//MD5=a4232dfd:d5009303:f8b376c4:de0134f6\n//SIG=00000000:000000ff:000000ff:00000000:0001:000d:0009:0000:0000:0000:0000:0000:0008:08:0:1:0\n";
  }
}

void sub_25FDCC558(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDCC5A4(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDCC59CLL);
}

uint64_t HgcBlendBlur_7::BindTexture(HgcBlendBlur_7 *this, HGHandler *a2, int a3)
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

uint64_t HgcBlendBlur_7::Bind(HgcBlendBlur_7 *this, HGHandler *a2)
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
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcBlendBlur_7::RenderTile(HgcBlendBlur_7 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1 && *(a2 + 2) - *a2 >= 1)
  {
    v3 = 0;
    v4 = 16 * *(a2 + 22);
    v5 = 16 * *(a2 + 26);
    v6 = *(a2 + 10);
    v7 = *(a2 + 12);
    v8 = 16 * *(a2 + 30);
    v9 = 16 * *(a2 + 34);
    v10 = *(a2 + 14);
    v11 = *(a2 + 16);
    v12 = 16 * *(a2 + 38);
    v13 = 16 * *(a2 + 42);
    v14 = *(a2 + 18);
    v15 = *(a2 + 20);
    v16 = 16 * *(a2 + 46);
    v17 = 16 * *(a2 + 50);
    v18 = *(a2 + 22);
    v19 = *(a2 + 24);
    v20 = 16 * *(a2 + 6);
    v21 = 16 * (*(a2 + 2) - *a2);
    v22 = *(a2 + 2);
    do
    {
      v23 = 0;
      do
      {
        v24 = *(this + 51);
        v25 = v24[13];
        v26 = vmulq_f32(vmaxq_f32(*(v6 + v23), v25), *v24);
        v27 = v24[14];
        v28 = vaddq_f32(*(v7 + v23), vmulq_n_f32(vsubq_f32(*(v10 + v23), *(v7 + v23)), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v26, v24[1]), v24[2]), v25), v27).f32[0]));
        v29 = vaddq_f32(v28, vmulq_n_f32(vsubq_f32(*(v11 + v23), v28), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v26, v24[3]), v24[4]), v25), v27).f32[0]));
        v30 = vaddq_f32(v29, vmulq_n_f32(vsubq_f32(*(v14 + v23), v29), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v26, v24[5]), v24[6]), v25), v27).f32[0]));
        v31 = vaddq_f32(v30, vmulq_n_f32(vsubq_f32(*(v15 + v23), v30), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v26, v24[7]), v24[8]), v25), v27).f32[0]));
        v32 = vaddq_f32(v31, vmulq_n_f32(vsubq_f32(*(v18 + v23), v31), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v26, v24[9]), v24[10]), v25), v27).f32[0]));
        *(v22 + v23) = vaddq_f32(v32, vmulq_n_f32(vsubq_f32(*(v19 + v23), v32), vminq_f32(vmaxq_f32(vmulq_f32(vaddq_f32(v26, v24[11]), v24[12]), v25), v27).f32[0]));
        v23 += 16;
      }

      while (v21 != v23);
      ++v3;
      v6 += v4;
      v7 += v5;
      v10 += v8;
      v11 += v9;
      v14 += v12;
      v15 += v13;
      v18 += v16;
      v19 += v17;
      v22 += v20;
    }

    while (v3 != v2);
  }

  return 0;
}

uint64_t HgcBlendBlur_7::GetDOD(HgcBlendBlur_7 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcBlendBlur_7::GetROI(HgcBlendBlur_7 *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

void HgcBlendBlur_7::~HgcBlendBlur_7(HgcBlendBlur_7 *this)
{
  *this = &unk_28722C370;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C4019FCA701);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcBlendBlur_7::~HgcBlendBlur_7(HGNode *this)
{
  *this = &unk_28722C370;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C4019FCA701);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcBlendBlur_7::SetParameter(HgcBlendBlur_7 *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 > 0xC)
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

uint64_t HgcBlendBlur_7::GetParameter(HgcBlendBlur_7 *this, unsigned int a2, float *a3)
{
  if (a2 > 0xC)
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

void HGModulatedBlur::HGModulatedBlur(HGModulatedBlur *this)
{
  HGNode::HGNode(this);
  *v2 = &unk_28722C5C0;
  *(v2 + 416) = 0;
  *(v2 + 424) = 0;
  *(v2 + 408) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 432) = _D0;
  *(v2 + 440) = 1065353216;
  *(v2 + 448) = 0;
  *(v2 + 456) = 1;
  std::vector<float>::push_back[abi:ne200100](v2 + 408, &HGModulatedBlur::HGModulatedBlur(void)::defaultBlurValues);
  std::vector<float>::push_back[abi:ne200100](this + 408, &dword_260845600);
  std::vector<float>::push_back[abi:ne200100](this + 408, &dword_260845604);
  std::vector<float>::push_back[abi:ne200100](this + 408, &dword_260845608);
  std::vector<float>::push_back[abi:ne200100](this + 408, &dword_26084560C);
  std::vector<float>::push_back[abi:ne200100](this + 408, &dword_260845610);
  std::vector<float>::push_back[abi:ne200100](this + 408, &dword_260845614);
  std::vector<float>::push_back[abi:ne200100](this + 408, &dword_260845618);
  std::vector<float>::push_back[abi:ne200100](this + 408, &dword_26084561C);
  *(this + 456) = 1;
}

void sub_25FDCD218(_Unwind_Exception *a1)
{
  v3 = *(v1 + 448);
  if (v3)
  {
    (*(*v3 + 24))(v3);
  }

  v4 = *(v1 + 408);
  if (v4)
  {
    *(v1 + 416) = v4;
    operator delete(v4);
  }

  HGNode::~HGNode(v1);
  _Unwind_Resume(a1);
}

void HGModulatedBlur::setBlurValues(HGModulatedBlur *this, float *a2, uint64_t a3)
{
  *(this + 52) = *(this + 51);
  if (a3)
  {
    v4 = a3;
    do
    {
      std::vector<float>::push_back[abi:ne200100](this + 408, a2++);
      --v4;
    }

    while (v4);
  }

  *(this + 456) = 1;
}

void HGModulatedBlur::~HGModulatedBlur(HGNode *this)
{
  *this = &unk_28722C5C0;
  v2 = *(this + 56);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    *(this + 52) = v3;
    operator delete(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722C5C0;
  v2 = *(this + 56);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    *(this + 52) = v3;
    operator delete(v3);
  }

  HGNode::~HGNode(this);
}

{
  *this = &unk_28722C5C0;
  v2 = *(this + 56);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(this + 51);
  if (v3)
  {
    *(this + 52) = v3;
    operator delete(v3);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v4);
}

uint64_t HGModulatedBlur::SetParameter(HGModulatedBlur *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
{
  if (a2 == 1)
  {
    if (*(this + 109) != a3 || *(this + 110) != a4)
    {
      v7 = 0xFFFFFFFFLL;
      if (a3 < 0.0 || a4 < 0.0)
      {
        return v7;
      }

      *(this + 109) = a3;
      *(this + 110) = a4;
LABEL_10:
      v7 = 1;
      *(this + 456) = 1;
      HGNode::ClearBits(this, a2, a7);
      return v7;
    }
  }

  else
  {
    if (a2)
    {
      return 0xFFFFFFFFLL;
    }

    if (*(this + 108) != a3)
    {
      *(this + 108) = a3;
      goto LABEL_10;
    }
  }

  return 0;
}

uint64_t HGModulatedBlur::GetOutput(HGNode *this, HGRenderer *a2)
{
  if (*(this + 456) == 1)
  {
    Input = HGRenderer::GetInput(a2, this, 0);
    HGRenderer::GetInput(a2, this, 1u);
    v6 = HGObject::operator new(0x70uLL);
    HGBlurGroup::HGBlurGroup(v6, Input, 0);
    operator new();
  }

  return *(this + 56);
}

void sub_25FDCDE70(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16)
{
  if (v16)
  {
    (*(*v16 + 24))(v16);
  }

  v19 = __p;
  if (v17)
  {
    operator delete(v17);
    v19 = __p;
    if (!__p)
    {
LABEL_5:
      v20 = a16;
      if (!a16)
      {
LABEL_10:
        _Unwind_Resume(exception_object);
      }

LABEL_9:
      (*(*v20 + 24))(v20);
      goto LABEL_10;
    }
  }

  else if (!__p)
  {
    goto LABEL_5;
  }

  operator delete(v19);
  v20 = a16;
  if (!a16)
  {
    goto LABEL_10;
  }

  goto LABEL_9;
}

const char *HgcYUV444BiPlanar_chroma_pack2::GetProgram(HgcYUV444BiPlanar_chroma_pack2 *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002ab\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    r1.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).yz;\n    output.color0.xy = float2(r0.yz);\n    output.color0.zw = float2(r1.yz);\n    return output;\n}\n//MD5=ce6ee523:9a7b8c67:08d8a35c:044b1494\n//SIG=00400000:00000000:00000000:00000001:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000028d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    r1.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord1.xy).yz;\n    output.color0.xy = r0.yz;\n    output.color0.zw = r1.yz;\n    return output;\n}\n//MD5=fd23e448:1f27c2f2:089c40e5:1564cc7f\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0006:0000:0002:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000243\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvarying highp vec4 hg_TexCoord1;\nvoid main()\n{\n    defaultp vec4 r0, r1;\n\n    r0.yz = texture2D(hg_Texture0, hg_TexCoord0.xy).yz;\n    r1.yz = texture2D(hg_Texture0, hg_TexCoord1.xy).yz;\n    gl_FragColor.xy = r0.yz;\n    gl_FragColor.zw = r1.yz;\n}\n//MD5=7da700af:7eb22f7e:dd24a356:2070ab44\n//SIG=00000000:00000000:00000000:00000000:0000:0000:0002:0000:0000:0000:0000:0000:0002:01:0:1:0\n";
  }
}

void sub_25FDCE4D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDCE50C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDCE504);
}

uint64_t HgcYUV444BiPlanar_chroma_pack2::BindTexture(HgcYUV444BiPlanar_chroma_pack2 *this, HGHandler *a2, int a3)
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

  HGHandler::TexCoord(a2, 1, 0, 0, 0);
  if (!(*(**(a2 + 18) + 128))(*(a2 + 18), 46))
  {
    (*(*a2 + 168))(a2);
  }

  (*(*a2 + 96))(a2, 1.0, 1.0, 0.0);
  return 0;
}

uint64_t HgcYUV444BiPlanar_chroma_pack2::RenderTile(HgcYUV444BiPlanar_chroma_pack2 *this, HGTile *a2)
{
  v2 = *(a2 + 3) - *(a2 + 1);
  if (v2 >= 1)
  {
    v3 = (*(a2 + 2) - *a2);
    v4 = *(a2 + 10);
    v5 = *(a2 + 2);
    v6 = *(a2 + 22);
    v7 = *(a2 + 6);
    if (v3 < 4)
    {
      if (v3 >= 1)
      {
        v35 = 0;
        v36 = 16 * v6;
        v37 = v6 + 1;
        v38 = 16 * v7;
        v39 = 16 * (*(a2 + 2) - *a2);
        do
        {
          v40 = 0;
          v41 = v37;
          do
          {
            v42 = v4[v40 / 0x10];
            v43 = vextq_s8(v42, v4[v41], 0xCuLL);
            v42.i64[0] = vextq_s8(v42, v43, 4uLL).u64[0];
            v42.i64[1] = v43.i64[1];
            *(v5 + v40) = v42;
            ++v41;
            v40 += 16;
          }

          while (v39 != v40);
          v4 = (v4 + v36);
          ++v35;
          v5 += v38;
        }

        while (v35 != v2);
      }
    }

    else
    {
      v8 = 0;
      v9 = 16 * v6;
      v10 = 16 * v7;
      v11 = v6 + 5;
      v12 = v4 + 4;
      v13 = (v5 + 64);
      do
      {
        v14 = 0;
        v15 = 0;
        v16 = &v4[v9 / 0x10];
        v17 = v13;
        v18 = v12;
        v19 = v11;
        do
        {
          v20 = v19;
          v21 = v18;
          v22 = v4[v14];
          v23 = vextq_s8(v22, v16[v14 + 1], 0xCuLL);
          v24 = vextq_s8(v22, v16[v14 + 2], 0xCuLL);
          v25 = vextq_s8(v22, v16[v14 + 3], 0xCuLL);
          v26 = vextq_s8(v22, v16[v14 + 4], 0xCuLL);
          v22.i64[0] = vextq_s8(v22, v23, 4uLL).u64[0];
          v22.i64[1] = v23.i64[1];
          v27.i64[0] = vextq_s8(v4[v14 + 1], v24, 4uLL).u64[0];
          v27.i64[1] = v24.i64[1];
          v28.i64[0] = vextq_s8(v4[v14 + 2], v25, 4uLL).u64[0];
          v28.i64[1] = v25.i64[1];
          v29.i64[0] = vextq_s8(v4[v14 + 3], v26, 4uLL).u64[0];
          v29.i64[1] = v26.i64[1];
          v30 = v17;
          v31 = (v5 + v14 * 16);
          *v31 = v22;
          v31[1] = v27;
          v15 += 4;
          v14 += 4;
          v31[2] = v28;
          v31[3] = v29;
          v19 += 4;
          v18 += 4;
          v17 = v30 + 4;
        }

        while (v15 < (v3 - 3));
        if (v3 > v15)
        {
          do
          {
            v32 = *v21++;
            v33 = vextq_s8(v32, v4[v20], 0xCuLL);
            *&v34 = vextq_s8(v32, v33, 4uLL).u64[0];
            *(&v34 + 1) = v33.i64[1];
            *v30++ = v34;
            ++v15;
            ++v20;
          }

          while (v15 < v3);
        }

        v4 = (v4 + v9);
        ++v8;
        v5 += v10;
        v12 = (v12 + v9);
        v13 = (v13 + v10);
      }

      while (v8 != v2);
    }
  }

  return 0;
}

uint64_t HgcYUV444BiPlanar_chroma_pack2::GetDOD(HgcYUV444BiPlanar_chroma_pack2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0, 0, 1u, 1u);
  return HGRectGrow(v6, v5, v7);
}

uint64_t HgcYUV444BiPlanar_chroma_pack2::GetROI(HgcYUV444BiPlanar_chroma_pack2 *this, HGRenderer *a2, int a3, HGRect a4)
{
  if (a3)
  {
    return 0;
  }

  v5 = *&a4.var2;
  v6 = *&a4.var0;
  v7 = HGRectMake4i(0, 0, 1u, 1u);
  return HGRectGrow(v6, v5, v7);
}

void HgcYUV444BiPlanar_chroma_pack2::HgcYUV444BiPlanar_chroma_pack2(HgcYUV444BiPlanar_chroma_pack2 *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722C8B8;
  operator new();
}

void HgcYUV444BiPlanar_chroma_pack2::~HgcYUV444BiPlanar_chroma_pack2(HgcYUV444BiPlanar_chroma_pack2 *this)
{
  *this = &unk_28722C8B8;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0xC400A2AC0F1);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV444BiPlanar_chroma_pack2::~HgcYUV444BiPlanar_chroma_pack2(HGNode *this)
{
  *this = &unk_28722C8B8;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0xC400A2AC0F1);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

const char *HgcYUV444BiPlanar_chroma::GetProgram(HgcYUV444BiPlanar_chroma *this, HGRenderer *a2)
{
  Target = HGRenderer::GetTarget(a2, 393216);
  if (Target == 396048)
  {
    if ((*(*a2 + 128))(a2, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000235\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    half4 r0;\n    FragmentOut output;\n\n    r0.yz = (half2) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = float2(r0.yz);\n    return output;\n}\n//MD5=b5ceef05:898edb99:9f947171:98dbaa5b\n//SIG=00400000:00000001:00000001:00000001:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000227\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    float4 r0;\n    FragmentOut output;\n\n    r0.yz = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy).yz;\n    output.color0.xy = r0.yz;\n    return output;\n}\n//MD5=513314b2:face81c8:9010d868:78fd2bc7\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a2 + 128))(a2, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000001c9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    defaultp vec4 r0;\n\n    r0.yz = texture2D(hg_Texture0, hg_TexCoord0.xy).yz;\n    gl_FragColor.xy = r0.yz;\n}\n//MD5=6e8f9b59:fe470076:deb0cf55:8a2a4614\n//SIG=00000000:00000001:00000001:00000000:0000:0000:0001:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FDCEE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDCEE7C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDCEE74);
}

uint64_t HgcYUV444BiPlanar_chroma::BindTexture(HgcYUV444BiPlanar_chroma *this, HGHandler *a2, int a3)
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

uint64_t HgcYUV444BiPlanar_chroma::RenderTile(HgcYUV444BiPlanar_chroma *this, HGTile *a2)
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
            v5[v31 / 0x10] = vbslq_s8(*(*(this + 62) + 128), vextq_s8(v4[v31 / 0x10], v4[v31 / 0x10], 4uLL), *(*(this + 62) + 112));
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
          v19 = *(this + 62);
          v21 = v19[7];
          v20 = v19[8];
          v22 = vbslq_s8(v20, vextq_s8(v4[v16 - 1], v4[v16 - 1], 4uLL), v21);
          v23 = vbslq_s8(v20, vextq_s8(v4[v16], v4[v16], 4uLL), v21);
          v24 = vbslq_s8(v20, vextq_s8(v4[v16 + 1], v4[v16 + 1], 4uLL), v21);
          v25 = &v5[v16];
          v25[-2] = vbslq_s8(v20, vextq_s8(v4[v16 - 2], v4[v16 - 2], 4uLL), v21);
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
            *v18++ = vbslq_s8(*(*(this + 62) + 128), vextq_s8(v26, v26, 4uLL), *(*(this + 62) + 112));
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

uint64_t HgcYUV444BiPlanar_chroma::GetDOD(HgcYUV444BiPlanar_chroma *this, HGRenderer *a2, int a3, HGRect a4)
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

uint64_t HgcYUV444BiPlanar_chroma::GetROI(HgcYUV444BiPlanar_chroma *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcYUV444BiPlanar_chroma::~HgcYUV444BiPlanar_chroma(HgcYUV444BiPlanar_chroma *this)
{
  *this = &unk_28722CB20;
  if (*(this + 62))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 62), 0x1000C40265AC83CLL);
    this = v2;
    v1 = vars8;
  }

  HGColorMatrix::~HGColorMatrix(this);
}

{
  *this = &unk_28722CB20;
  v2 = *(this + 62);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40265AC83CLL);
  }

  HGColorMatrix::~HGColorMatrix(this);

  HGObject::operator delete(v3);
}

HGNode *HgcYUV444BiPlanar_chroma::GetOutput(__n128 *this, HGRenderer *a2, __n128 a3, __n128 a4, int32x2_t a5)
{
  if (this[31].n128_u32[2])
  {
    v5 = this[31].n128_u64[0];
    v6 = vextq_s8(*(v5 + 80), *(v5 + 80), 4uLL);
    a4 = vextq_s8(*(v5 + 96), *(v5 + 96), 4uLL);
    *&a5 = 0.0;
    *v5 = 0u;
    *(this[31].n128_u64[0] + 16) = v6;
    *(this[31].n128_u64[0] + 32) = a4;
    *(this[31].n128_u64[0] + 48) = 0u;
    v7 = this[31].n128_u64[0];
    this[27] = *v7;
    this[28] = v7[1];
    this[29] = v7[2];
    a3 = v7[3];
    this[30] = a3;
    this[31].n128_u32[2] = 0;
  }

  return HGColorMatrix::GetOutput(this, a2, a3.n128_f64[0], a4.n128_f64[0], a5);
}

const char *HgcYUV420TriPlanar_601ToRGB::GetProgram(HgcYUV420TriPlanar_601ToRGB *this, HGRenderer *a2)
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

void sub_25FDCF92C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDCF96C(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDCF964);
}

uint64_t HgcYUV420TriPlanar_601ToRGB::BindTexture(HgcYUV420TriPlanar_601ToRGB *this, HGHandler *a2, int a3)
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

uint64_t HgcYUV420TriPlanar_601ToRGB::Bind(HgcYUV420TriPlanar_601ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV420TriPlanar_601ToRGB::RenderTile(HgcYUV420TriPlanar_601ToRGB *this, int32x2_t *a2)
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

uint64_t HgcYUV420TriPlanar_601ToRGB::GetDOD(HgcYUV420TriPlanar_601ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcYUV420TriPlanar_601ToRGB::GetROI(HgcYUV420TriPlanar_601ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcYUV420TriPlanar_601ToRGB::HgcYUV420TriPlanar_601ToRGB(HgcYUV420TriPlanar_601ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722CD98;
  operator new();
}

void HgcYUV420TriPlanar_601ToRGB::~HgcYUV420TriPlanar_601ToRGB(HgcYUV420TriPlanar_601ToRGB *this)
{
  *this = &unk_28722CD98;
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
  *this = &unk_28722CD98;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}

void HgcYUV420TriPlanar_601ToRGB::~HgcYUV420TriPlanar_601ToRGB(HGNode *this)
{
  *this = &unk_28722CD98;
  v2 = *(this + 51);
  if (v2)
  {
    MEMORY[0x2666E9F00](v2, 0x1000C40565EDBD2);
  }

  HGNode::~HGNode(this);

  HGObject::operator delete(v3);
}

uint64_t HgcYUV420TriPlanar_601ToRGB::SetParameter(HgcYUV420TriPlanar_601ToRGB *this, uint64_t a2, float a3, float a4, float a5, float a6, char *a7)
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

uint64_t HgcYUV420TriPlanar_601ToRGB::GetParameter(HgcYUV420TriPlanar_601ToRGB *this, unsigned int a2, float *a3)
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

const char *HgcYUV420TriPlanar_709ToRGB::GetProgram(HgcYUV420TriPlanar_709ToRGB *this, HGRenderer *a2)
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

void sub_25FDD0A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FDD0A58(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FDD0A50);
}

uint64_t HgcYUV420TriPlanar_709ToRGB::BindTexture(HgcYUV420TriPlanar_709ToRGB *this, HGHandler *a2, int a3)
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

uint64_t HgcYUV420TriPlanar_709ToRGB::Bind(HgcYUV420TriPlanar_709ToRGB *this, HGHandler *a2)
{
  (*(*a2 + 144))(a2, 0, *(this + 51), 1);
  (*(*a2 + 144))(a2, 1, *(this + 51) + 16, 1);
  (*(*this + 192))(this, a2);
  return 0;
}

uint64_t HgcYUV420TriPlanar_709ToRGB::RenderTile(HgcYUV420TriPlanar_709ToRGB *this, int32x2_t *a2)
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

uint64_t HgcYUV420TriPlanar_709ToRGB::GetDOD(HgcYUV420TriPlanar_709ToRGB *this, HGRenderer *a2, unsigned int a3, HGRect a4)
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

uint64_t HgcYUV420TriPlanar_709ToRGB::GetROI(HgcYUV420TriPlanar_709ToRGB *this, HGRenderer *a2, int a3, HGRect a4)
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

void HgcYUV420TriPlanar_709ToRGB::HgcYUV420TriPlanar_709ToRGB(HgcYUV420TriPlanar_709ToRGB *this)
{
  HGNode::HGNode(this);
  *v1 = &unk_28722D000;
  operator new();
}

void HgcYUV420TriPlanar_709ToRGB::~HgcYUV420TriPlanar_709ToRGB(HgcYUV420TriPlanar_709ToRGB *this)
{
  *this = &unk_28722D000;
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
  *this = &unk_28722D000;
  if (*(this + 51))
  {
    v2 = this;
    MEMORY[0x2666E9F00](*(this + 51), 0x1000C40565EDBD2);
    this = v2;
    v1 = vars8;
  }

  HGNode::~HGNode(this);
}