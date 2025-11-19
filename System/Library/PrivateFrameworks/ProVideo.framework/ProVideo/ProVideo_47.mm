const char *Gettype0_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000035c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=20f42ccd:177bb552:78dd23af:883d5aab\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000034a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=4e9a049b:521821a9:74d35da9:00427891\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000312\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.yyy);\n    r1.xyz = min(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=182b38ea:7b2646c3:313af2b3:04cb7251\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000035c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=20f42ccd:177bb552:78dd23af:883d5aab\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000034a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=4e9a049b:521821a9:74d35da9:00427891\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000312\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.yyy);\n    r1.xyz = min(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=182b38ea:7b2646c3:313af2b3:04cb7251\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000035c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=20f42ccd:177bb552:78dd23af:883d5aab\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000034a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=4e9a049b:521821a9:74d35da9:00427891\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000030b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.yyy);\n    r1.xyz = min(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=f0461501:6e89cdbc:ed292272:68967d2e\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000035c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=20f42ccd:177bb552:78dd23af:883d5aab\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000034a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=4e9a049b:521821a9:74d35da9:00427891\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000314\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.yyy);\n    r1.xyz = min(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=de1f5717:17783782:771374af:c557d8f4\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=8c2fbc56:4cc55537:fad67de0:f0bc16ab\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003a0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=dd3502b5:2cd7db74:213aeca0:faa23b85\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = vec3(r0.x < 0.00000 ? -c0.w : c0.w, r0.y < 0.00000 ? -c0.w : c0.w, r0.z < 0.00000 ? -c0.w : c0.w);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=59f9aeda:d6ff3300:fea98945:87997e82\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=8c2fbc56:4cc55537:fad67de0:f0bc16ab\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003a0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=dd3502b5:2cd7db74:213aeca0:faa23b85\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = vec3(r0.x < 0.00000 ? -c0.w : c0.w, r0.y < 0.00000 ? -c0.w : c0.w, r0.z < 0.00000 ? -c0.w : c0.w);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=5d43e82d:f82cb0c1:2fc25041:d7c8c18e\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_floatProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003b2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=8c2fbc56:4cc55537:fad67de0:f0bc16ab\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003a0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=dd3502b5:2cd7db74:213aeca0:faa23b85\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = vec3(r0.x < 0.00000 ? -c0.w : c0.w, r0.y < 0.00000 ? -c0.w : c0.w, r0.z < 0.00000 ? -c0.w : c0.w);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=5d43e82d:f82cb0c1:2fc25041:d7c8c18e\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000453\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=08bef2cc:3b362180:b8b760c8:d704e1c6\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000042c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=65455e26:aae30178:80df69f1:b13cc037\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000466\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=aa7fe365:857e3a79:b6d0a374:223504aa\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000453\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=08bef2cc:3b362180:b8b760c8:d704e1c6\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000042c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=65455e26:aae30178:80df69f1:b13cc037\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000466\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=aa7fe365:857e3a79:b6d0a374:223504aa\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000453\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=08bef2cc:3b362180:b8b760c8:d704e1c6\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000042c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=65455e26:aae30178:80df69f1:b13cc037\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000045d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=f91b4dd8:c404bfa1:760fd8af:74430a58\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000453\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=08bef2cc:3b362180:b8b760c8:d704e1c6\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000042c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=65455e26:aae30178:80df69f1:b13cc037\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000468\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=3c23f051:eaf48604:aa8f339c:ce73b350\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000043a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=0a959b1e:d3ecfb63:3d2c0792:3dbf9f3f\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000413\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=7903a5a3:029dca7a:2f3f8e86:e6cc37c7\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000445\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=f560df30:4974ef6f:2fcd2fb5:ff40bbe7\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000043a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=0a959b1e:d3ecfb63:3d2c0792:3dbf9f3f\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000413\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=7903a5a3:029dca7a:2f3f8e86:e6cc37c7\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000043a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=8f80d0db:676786df:896dbbd8:ca818ca5\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_floatProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000043a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=0a959b1e:d3ecfb63:3d2c0792:3dbf9f3f\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000413\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=7903a5a3:029dca7a:2f3f8e86:e6cc37c7\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000043a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=8f80d0db:676786df:896dbbd8:ca818ca5\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000049d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=92fb4533:04bac7c8:6cb1b762:ee971088\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000046f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=87250ca9:031b0571:234dcae3:a5c89a4d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004de\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=ffd33e53:70c1c4af:3f0c646d:9681734f\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000049d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=92fb4533:04bac7c8:6cb1b762:ee971088\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000046f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=87250ca9:031b0571:234dcae3:a5c89a4d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004de\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=ffd33e53:70c1c4af:3f0c646d:9681734f\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000049d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=92fb4533:04bac7c8:6cb1b762:ee971088\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000046f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=87250ca9:031b0571:234dcae3:a5c89a4d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004d3\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=749828b3:4f049c36:34a00297:da68786b\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000049d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=92fb4533:04bac7c8:6cb1b762:ee971088\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000046f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=87250ca9:031b0571:234dcae3:a5c89a4d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004e0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=a9f5d177:5f5d6b08:dc77a778:411aa2c8\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000469\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=1b4311bc:39a0fa86:9605b790:112f1020\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000043b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=32abf88e:f2b51ba2:fd50cf48:61df2131\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000498\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=174a2ca1:24a9601e:20dabf3d:efeb373c\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000469\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=1b4311bc:39a0fa86:9605b790:112f1020\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000043b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=32abf88e:f2b51ba2:fd50cf48:61df2131\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000048b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=c914f1c4:1280ed09:be9bcd06:19f12018\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_floatProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000469\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=1b4311bc:39a0fa86:9605b790:112f1020\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000043b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=32abf88e:f2b51ba2:fd50cf48:61df2131\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000048b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=c914f1c4:1280ed09:be9bcd06:19f12018\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000046f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + half3(hg_Params[0].yyy);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xxx));\n    r2.xyz = r2.xyz*half3(hg_Params[0].www);\n    r3.xyz = r1.xyz*half3(hg_Params[1].xxx);\n    r1.xyz = r1.xyz - half3(hg_Params[1].yyy);\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=de17ce8a:72a40e6a:fdb14397:674a3b9e\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000441\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=4224cc02:5b0987c8:78bb097e:49047380\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000047f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=80099d45:b30fce8c:8e93ad4a:38bd9a40\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000046f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + half3(hg_Params[0].yyy);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xxx));\n    r2.xyz = r2.xyz*half3(hg_Params[0].www);\n    r3.xyz = r1.xyz*half3(hg_Params[1].xxx);\n    r1.xyz = r1.xyz - half3(hg_Params[1].yyy);\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=de17ce8a:72a40e6a:fdb14397:674a3b9e\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000441\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=4224cc02:5b0987c8:78bb097e:49047380\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000047f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=80099d45:b30fce8c:8e93ad4a:38bd9a40\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000046f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + half3(hg_Params[0].yyy);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xxx));\n    r2.xyz = r2.xyz*half3(hg_Params[0].www);\n    r3.xyz = r1.xyz*half3(hg_Params[1].xxx);\n    r1.xyz = r1.xyz - half3(hg_Params[1].yyy);\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=de17ce8a:72a40e6a:fdb14397:674a3b9e\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000441\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=4224cc02:5b0987c8:78bb097e:49047380\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000476\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=682ccd8d:64d8c659:5538c6fb:cf213a17\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000046f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + half3(hg_Params[0].yyy);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xxx));\n    r2.xyz = r2.xyz*half3(hg_Params[0].www);\n    r3.xyz = r1.xyz*half3(hg_Params[1].xxx);\n    r1.xyz = r1.xyz - half3(hg_Params[1].yyy);\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=de17ce8a:72a40e6a:fdb14397:674a3b9e\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000441\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=4224cc02:5b0987c8:78bb097e:49047380\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000481\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=3e26abbf:b51e934a:0eaea483:a61051d9\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000465\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r1.xyz = r1.xyz*half3(hg_Params[0].www);\n    r3.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=0b5d8c63:af3d6b84:d7956f5f:4dac39cc\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000437\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=f39de0cd:9e76e5bc:5803465d:9943c9ca\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000046d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.w = c0.x;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=7e1f0376:dccb70f7:f4141705:8081beb7\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000465\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r1.xyz = r1.xyz*half3(hg_Params[0].www);\n    r3.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=0b5d8c63:af3d6b84:d7956f5f:4dac39cc\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000437\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=f39de0cd:9e76e5bc:5803465d:9943c9ca\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000462\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.w = c0.x;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=81f81d5d:db456118:feabd803:f7c376a4\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_floatProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000465\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r1.xyz = r1.xyz*half3(hg_Params[0].www);\n    r3.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=0b5d8c63:af3d6b84:d7956f5f:4dac39cc\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000437\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=f39de0cd:9e76e5bc:5803465d:9943c9ca\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000462\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.w = c0.x;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=81f81d5d:db456118:feabd803:f7c376a4\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000050e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c0b3015a:c4c77f90:f8e66018:3a2a1487\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000497\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=91df01b2:ab4291da:8ec16055:5c19d880\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000050e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=20859c2d:6233ef7a:90bde4e6:3bf84cdb\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000050e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c0b3015a:c4c77f90:f8e66018:3a2a1487\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000497\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=91df01b2:ab4291da:8ec16055:5c19d880\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000050e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=20859c2d:6233ef7a:90bde4e6:3bf84cdb\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000050e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c0b3015a:c4c77f90:f8e66018:3a2a1487\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000497\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=91df01b2:ab4291da:8ec16055:5c19d880\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000503\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=f5b63af9:48536670:cfb336fb:139fd5b1\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000050e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c0b3015a:c4c77f90:f8e66018:3a2a1487\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000497\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=91df01b2:ab4291da:8ec16055:5c19d880\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000510\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=70dcc2bc:d1658f7f:081f4c58:d4fbcac9\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004d8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r2.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a2c3c908:016206be:67d56c9c:9c001e7d\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000472\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.w = c0.w;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=16aeb384:4247f51a:d777a509:76109a61\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004d7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.w = c0.w;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=97daefca:65fccb97:c63a820c:f94ab701\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004d8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r2.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a2c3c908:016206be:67d56c9c:9c001e7d\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000472\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.w = c0.w;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=16aeb384:4247f51a:d777a509:76109a61\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004ca\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.w = c0.w;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=95311b7e:8028d7fe:9fcf7f0c:7737fcfe\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_floatProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004d8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r2.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a2c3c908:016206be:67d56c9c:9c001e7d\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000472\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.w = c0.w;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=16aeb384:4247f51a:d777a509:76109a61\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004ca\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.w = c0.w;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=95311b7e:8028d7fe:9fcf7f0c:7737fcfe\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000032f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=7dc0dfbc:c836a038:13cdd6d9:c60d7e3e\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000324\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=bdfaf4f0:4a68472f:e4ce4c4c:69bdede1\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=28efafef:fde41fd4:7dc2b893:64d224c6\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000440\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const half4 c1 = half4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=880f0614:cc8cb34f:d8f516f4:2fef1ed2\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000437\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const float4 c1 = float4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=f18124a9:bf474d14:474143e7:2c5831a1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000040d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const mediump vec4 c1 = vec4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=3919ff3c:0a650753:cfe62bc5:50f25c9b\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000440\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const half4 c1 = half4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=880f0614:cc8cb34f:d8f516f4:2fef1ed2\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000437\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const float4 c1 = float4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=f18124a9:bf474d14:474143e7:2c5831a1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000406\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const highp vec4 c1 = vec4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=0a584153:9bd953c5:863c9b66:c29b89c1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000440\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const half4 c1 = half4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=880f0614:cc8cb34f:d8f516f4:2fef1ed2\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000437\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const float4 c1 = float4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=f18124a9:bf474d14:474143e7:2c5831a1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000040f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const mediump vec4 c1 = vec4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=4e704514:44ec5fc8:a83e7283:d1311c23\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000542\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const half4 c1 = half4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const half4 c2 = half4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=b9cc7239:53c07d97:6516f562:857552eb\n//SIG=00400000:00000001:00000001:00000001:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000053b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const float4 c1 = float4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const float4 c2 = float4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=615b58db:20b8ac2f:c4df9b5f:d051b98f\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000581\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const mediump vec4 c1 = vec4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const mediump vec4 c2 = vec4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=532ea0ea:1b8a64cc:6df0891e:5451cc3a\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000542\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const half4 c1 = half4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const half4 c2 = half4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=b9cc7239:53c07d97:6516f562:857552eb\n//SIG=00400000:00000001:00000001:00000001:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000053b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const float4 c1 = float4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const float4 c2 = float4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=615b58db:20b8ac2f:c4df9b5f:d051b98f\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000576\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const highp vec4 c1 = vec4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const highp vec4 c2 = vec4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=5436f98d:da033e02:e56c36e4:4d4486b6\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000330\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=aa266737:ced8974d:678b2327:1590d25a\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000325\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=5c2db76f:f3872933:3b70ed57:2d3f143f\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=fdba60fd:9f8e713f:a1e88db5:b74ecef0\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000455\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const half4 c1 = half4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=9c547199:95409cef:755c552e:ad150c39\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const float4 c1 = float4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=e31de786:5e047bee:e7a2bde8:154760dd\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000422\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const mediump vec4 c1 = vec4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=622dff9d:420f8d79:759459b7:9d82fc32\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000455\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const half4 c1 = half4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=9c547199:95409cef:755c552e:ad150c39\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const float4 c1 = float4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=e31de786:5e047bee:e7a2bde8:154760dd\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000041b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const highp vec4 c1 = vec4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=7ed9badc:f8fd08b3:59cc3168:821c417c\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000455\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const half4 c1 = half4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=9c547199:95409cef:755c552e:ad150c39\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const float4 c1 = float4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=e31de786:5e047bee:e7a2bde8:154760dd\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000424\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const mediump vec4 c1 = vec4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=44a6b46f:44bdd250:cb929530:c15d0619\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000557\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const half4 c1 = half4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const half4 c2 = half4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c5ec1c4f:dfe08d64:ee57c69c:a27502b1\n//SIG=00400000:00000001:00000001:00000001:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000550\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const float4 c1 = float4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const float4 c2 = float4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=6ca877ba:5f861024:45a23c29:a6357148\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000596\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const mediump vec4 c1 = vec4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const mediump vec4 c2 = vec4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=c5df66d8:fd0ad819:9e10e85c:e9f2f9ed\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000557\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const half4 c1 = half4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const half4 c2 = half4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c5ec1c4f:dfe08d64:ee57c69c:a27502b1\n//SIG=00400000:00000001:00000001:00000001:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000550\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const float4 c1 = float4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const float4 c2 = float4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=6ca877ba:5f861024:45a23c29:a6357148\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000058b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const highp vec4 c1 = vec4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const highp vec4 c2 = vec4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=24afdb36:4e250bda:6c16f24c:0c8880bc\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000032f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=7dc0dfbc:c836a038:13cdd6d9:c60d7e3e\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000324\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=bdfaf4f0:4a68472f:e4ce4c4c:69bdede1\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=28efafef:fde41fd4:7dc2b893:64d224c6\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000043f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const half4 c1 = half4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ded8d455:606b3774:cf46c232:f7f8dd1f\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000436\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const float4 c1 = float4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=13c96d46:6c5686ac:da7b737c:3948a744\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000040c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const mediump vec4 c1 = vec4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=2d0114da:730d4c56:a024c116:44fda0bb\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000043f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const half4 c1 = half4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ded8d455:606b3774:cf46c232:f7f8dd1f\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000436\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const float4 c1 = float4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=13c96d46:6c5686ac:da7b737c:3948a744\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000405\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const highp vec4 c1 = vec4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=fce4fe11:ffecb27c:df22a65c:797977c8\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000043f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const half4 c1 = half4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ded8d455:606b3774:cf46c232:f7f8dd1f\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000436\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const float4 c1 = float4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=13c96d46:6c5686ac:da7b737c:3948a744\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000040e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const mediump vec4 c1 = vec4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=8678ec2f:24669b7f:e182efb9:7f6972b5\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const half4 c1 = half4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=f7e4207f:da26c069:1cfb1c75:e27e6221\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const float4 c1 = float4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=98092e7c:08315962:ca7a98d8:a90c2dc3\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000052b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const mediump vec4 c1 = vec4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=210dfebd:abe83807:6c7bd68f:5e48b109\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const half4 c1 = half4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=f7e4207f:da26c069:1cfb1c75:e27e6221\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const float4 c1 = float4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=98092e7c:08315962:ca7a98d8:a90c2dc3\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000522\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const highp vec4 c1 = vec4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=f9786a5a:b9f8a78e:99cf8eb9:bb98dc64\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000330\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=aa266737:ced8974d:678b2327:1590d25a\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000325\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=5c2db76f:f3872933:3b70ed57:2d3f143f\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=fdba60fd:9f8e713f:a1e88db5:b74ecef0\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000454\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const half4 c1 = half4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a6aa203c:cce763d8:235b7d77:c93b9aff\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const float4 c1 = float4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=bc23966e:14be2697:71ada8fa:a9af29fd\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000421\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const mediump vec4 c1 = vec4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=cb3c7562:84299991:09fbdc07:2ec2d025\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000454\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const half4 c1 = half4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a6aa203c:cce763d8:235b7d77:c93b9aff\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const float4 c1 = float4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=bc23966e:14be2697:71ada8fa:a9af29fd\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000041a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const highp vec4 c1 = vec4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=7dc09eea:0930a865:2a70a43d:67ba2dca\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000454\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const half4 c1 = half4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a6aa203c:cce763d8:235b7d77:c93b9aff\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const float4 c1 = float4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=bc23966e:14be2697:71ada8fa:a9af29fd\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000423\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const mediump vec4 c1 = vec4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=67d90621:f4dc58de:8e6454fb:a7c0c93b\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000506\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const half4 c1 = half4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=d582d28b:3fc6a911:6b763ef9:6ae7cb33\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004fd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const float4 c1 = float4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=5a07b771:f2b95122:2bf87a50:0dc832df\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000053f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const mediump vec4 c1 = vec4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=c4b6b6d2:9c9c7d5d:24dbd61e:e21dbd00\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000506\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const half4 c1 = half4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=d582d28b:3fc6a911:6b763ef9:6ae7cb33\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004fd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const float4 c1 = float4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=5a07b771:f2b95122:2bf87a50:0dc832df\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000536\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const highp vec4 c1 = vec4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=05733f29:0676d724:10f32f1c:eabc05d1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000379\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 1.200000048, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = sqrt(r2.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=338d6991:bb8c35f4:c24065b6:e2ddd0bf\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000036e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 1.200000048, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = sqrt(r2.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=8ca817c7:ae13bb8c:2ccf5dfd:18976027\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000030b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 1.200000048, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = sqrt(r2.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=0beefa58:f2d5d814:e230ba8a:c1014acf\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000441\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const half4 c1 = half4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=d3b643c1:058374be:1a7b730c:64a7f017\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000438\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const float4 c1 = float4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=bf3fc1c7:5a610b84:ee2623c1:37dbc3f1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000040e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const mediump vec4 c1 = vec4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=04dc4171:e48201e2:5b166dbe:11bf1513\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000441\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const half4 c1 = half4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=d3b643c1:058374be:1a7b730c:64a7f017\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000438\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const float4 c1 = float4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=bf3fc1c7:5a610b84:ee2623c1:37dbc3f1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000407\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const highp vec4 c1 = vec4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=bd46d998:a485ec56:c2e9088e:c10d0cd5\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000441\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const half4 c1 = half4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=d3b643c1:058374be:1a7b730c:64a7f017\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000438\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const float4 c1 = float4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=bf3fc1c7:5a610b84:ee2623c1:37dbc3f1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000410\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const mediump vec4 c1 = vec4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=a177af96:6455671a:a5ff5333:2ae7cf93\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004d9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const half4 c1 = half4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=e2f46501:6eaf47b9:17674bda:304195a8\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004d0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const float4 c1 = float4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=2c805bad:1968a6b1:420de9b1:d3d0cefa\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000516\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const mediump vec4 c1 = vec4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r2.x : r2.x, r0.y < 0.00000 ? -r2.y : r2.y, r0.z < 0.00000 ? -r2.z : r2.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=52ffc3ca:de6717e7:9ced0b9c:d6e81a3b\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004d9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const half4 c1 = half4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=e2f46501:6eaf47b9:17674bda:304195a8\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004d0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const float4 c1 = float4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=2c805bad:1968a6b1:420de9b1:d3d0cefa\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000050d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const highp vec4 c1 = vec4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r2.x : r2.x, r0.y < 0.00000 ? -r2.y : r2.y, r0.z < 0.00000 ? -r2.z : r2.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=0b24d80b:1241119b:9bc872ae:27374f1e\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000037b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.8600000143, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = r2.xyz*r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=cff72616:949f2683:7b17f44a:3ba0ce15\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000370\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.8600000143, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = r2.xyz*r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=de2ecf3a:ce74014d:1a29904c:4cc7a8ce\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000030d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.8600000143, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = r2.xyz*r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=bb90a585:c52419c2:c07b9004:5b6745c0\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000456\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const half4 c1 = half4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ce7d29de:9f899a0d:f3fde93a:57d945e7\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const float4 c1 = float4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=177e913d:55f303a1:e1f32632:f0623a5f\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000423\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const mediump vec4 c1 = vec4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=4af6312b:82e53e55:f354a5e6:3ba91fd2\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000456\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const half4 c1 = half4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ce7d29de:9f899a0d:f3fde93a:57d945e7\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const float4 c1 = float4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=177e913d:55f303a1:e1f32632:f0623a5f\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000041c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const highp vec4 c1 = vec4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=b4eb37d1:a0806a0e:93ab5e34:02169094\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000456\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const half4 c1 = half4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ce7d29de:9f899a0d:f3fde93a:57d945e7\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000044d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const float4 c1 = float4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=177e913d:55f303a1:e1f32632:f0623a5f\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000425\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const mediump vec4 c1 = vec4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=f39927a8:61485a10:77aa981d:cfbbc277\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004ee\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const half4 c1 = half4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=55a7b763:ef436294:d41e9d72:fef2dc04\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const float4 c1 = float4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=57b92c9c:5efdf1ca:047b5786:039d0b00\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000052b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const mediump vec4 c1 = vec4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r2.x : r2.x, r0.y < 0.00000 ? -r2.y : r2.y, r0.z < 0.00000 ? -r2.z : r2.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=8b50fb71:31f2eb5b:279044cd:79fc7ef6\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004ee\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const half4 c1 = half4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=55a7b763:ef436294:d41e9d72:fef2dc04\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const float4 c1 = float4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=57b92c9c:5efdf1ca:047b5786:039d0b00\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000522\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const highp vec4 c1 = vec4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r2.x : r2.x, r0.y < 0.00000 ? -r2.y : r2.y, r0.z < 0.00000 ? -r2.z : r2.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=9d48d462:3dda019d:3f5f5e4d:a4a4071a\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000032f\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=7dc0dfbc:c836a038:13cdd6d9:c60d7e3e\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000324\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=bdfaf4f0:4a68472f:e4ce4c4c:69bdede1\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=28efafef:fde41fd4:7dc2b893:64d224c6\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000034c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=fd9779b0:d5481997:6b539481:f13c6247\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000341\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=248d6794:088dc7a4:fdccd0f2:7e6548ba\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002de\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=1b02cad7:918f5fdd:c7dcec0f:03dcbb10\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000034c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=fd9779b0:d5481997:6b539481:f13c6247\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000341\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=248d6794:088dc7a4:fdccd0f2:7e6548ba\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002d9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=8351c2f2:f318a08e:679a221c:79c8467d\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000034c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=fd9779b0:d5481997:6b539481:f13c6247\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000341\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=248d6794:088dc7a4:fdccd0f2:7e6548ba\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002e0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=3eda5271:afae211d:2169fd04:426d0611\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003c8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a8311cfb:0d23b169:af678cc5:257482af\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003bd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=199c1d45:cf63353c:dd5f426e:fd0991df\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003ca\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=9608204f:1cc57ea4:ff41515d:d7512eef\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003c8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a8311cfb:0d23b169:af678cc5:257482af\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003bd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=199c1d45:cf63353c:dd5f426e:fd0991df\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c3\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=2c4024ce:67153cca:87b9a761:7ffe77da\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_fast_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000330\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=aa266737:ced8974d:678b2327:1590d25a\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000325\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=5c2db76f:f3872933:3b70ed57:2d3f143f\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=fdba60fd:9f8e713f:a1e88db5:b74ecef0\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_fixed_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000034b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=dd40d21d:dab71443:51d03ff0:e52c3982\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000340\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=527ccfe4:b046ff73:8804104e:07e80862\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002dd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=5ad6b64c:affe4652:e992c066:f99ad317\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_nice_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000034b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=dd40d21d:dab71443:51d03ff0:e52c3982\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000340\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=527ccfe4:b046ff73:8804104e:07e80862\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002d8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=9e854b3b:85ccb2c9:213ad91f:b1d9d3f7\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_half_satProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000034b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=dd40d21d:dab71443:51d03ff0:e52c3982\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000340\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=527ccfe4:b046ff73:8804104e:07e80862\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002df\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=7ec4e723:27ed6654:3da6727a:724fddba\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_halfProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003c7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=83c2463f:fa694f71:8ff44add:0192f495\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003bc\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=03b68525:edecc26f:4d549a48:c381d609\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=bf273443:85988f7a:19b07f24:0301cc15\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_niceProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003c7\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / half4(fmax(r0.www, 6.10350e-05h), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=83c2463f:fa694f71:8ff44add:0192f495\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003bc\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0 = r0 / float4(fmax(r0.www, 1.00000e-06f), 1.);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    r0.xyz = r0.xyz*r0.www;\n    output.color0 = r0;\n    return output;\n}\n//MD5=03b68525:edecc26f:4d549a48:c381d609\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0 = r0 / vec4(max(r0.www, 1.00000e-06), 1.);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    r0.xyz = r0.xyz*r0.www;\n    gl_FragColor = r0;\n}\n//MD5=86f46bb1:e801a3df:b0549fd7:b4cd404d\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000030b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ecb5a4d8:6d113e3b:887319ce:2b54e8c9\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002f8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=717fe78e:89a0702a:b5e17bb3:7157bcda\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.yyy);\n    r1.xyz = min(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=e2288d14:dc4b95f4:fcf12f2e:579df0f1\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000030b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ecb5a4d8:6d113e3b:887319ce:2b54e8c9\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002f8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=717fe78e:89a0702a:b5e17bb3:7157bcda\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.yyy);\n    r1.xyz = min(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=e2288d14:dc4b95f4:fcf12f2e:579df0f1\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000039c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = r1.xyz + half3(hg_Params[0].yyy);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r1.xyz = r1.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r0.xyz = clamp(r1.xyz, 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c9ce60be:37897859:81914f65:4df56f2a\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000374\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = r1.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r0.xyz = clamp(r1.xyz, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=dc32e146:6db579ac:9035a6cb:ec835062\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000034f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r0.xyz = clamp(r1.xyz, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=c8823dc8:62aa0672:c3a00abc:4de48ee3\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000030b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=ecb5a4d8:6d113e3b:887319ce:2b54e8c9\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002f8\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.yyy);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=717fe78e:89a0702a:b5e17bb3:7157bcda\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002c6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.yyy);\n    r1.xyz = min(r1.xyz, c0.www);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=011ce114:9bbfbc57:d68136d7:ba86e401\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000361\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=bd6cb7db:0b59aed5:92893bd5:f825a780\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000034e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=c0d0f87f:883a4f14:52f52ed2:8913ba88\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000038b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = vec3(r0.x < 0.00000 ? -c0.w : c0.w, r0.y < 0.00000 ? -c0.w : c0.w, r0.z < 0.00000 ? -c0.w : c0.w);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    gl_FragColor = r0;\n}\n//MD5=b01d9920:fa7ac92f:4716ea80:29eb1b7c\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000361\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=bd6cb7db:0b59aed5:92893bd5:f825a780\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000034e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=c0d0f87f:883a4f14:52f52ed2:8913ba88\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000382\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = vec3(r0.x < 0.00000 ? -c0.w : c0.w, r0.y < 0.00000 ? -c0.w : c0.w, r0.z < 0.00000 ? -c0.w : c0.w);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    gl_FragColor = r0;\n}\n//MD5=d984d409:03d5ce14:47226e6c:ea97b670\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype0_float_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000361\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=bd6cb7db:0b59aed5:92893bd5:f825a780\n//SIG=00400000:00000001:00000001:00000001:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000034e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = select(c0.www, -c0.www, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=c0d0f87f:883a4f14:52f52ed2:8913ba88\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000382\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = vec3(r0.x < 0.00000 ? -c0.w : c0.w, r0.y < 0.00000 ? -c0.w : c0.w, r0.z < 0.00000 ? -c0.w : c0.w);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    gl_FragColor = r0;\n}\n//MD5=d984d409:03d5ce14:47226e6c:ea97b670\n//SIG=00000000:00000001:00000001:00000000:0001:0001:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000402\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=9ff8c4d8:3d404847:33a9945a:e75086f8\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003da\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=2870cdbc:eb23a8aa:8cdd93e8:994b02dc\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000418\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=48f9e48c:460bd827:86d7dbf2:fc50cc9c\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000402\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=9ff8c4d8:3d404847:33a9945a:e75086f8\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003da\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=2870cdbc:eb23a8aa:8cdd93e8:994b02dc\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000418\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=48f9e48c:460bd827:86d7dbf2:fc50cc9c\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000402\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=9ff8c4d8:3d404847:33a9945a:e75086f8\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003da\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=2870cdbc:eb23a8aa:8cdd93e8:994b02dc\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000040f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=a34d64de:9e3622d9:55b8e806:bc930502\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000402\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=9ff8c4d8:3d404847:33a9945a:e75086f8\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003da\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=2870cdbc:eb23a8aa:8cdd93e8:994b02dc\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000041a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=77401a0b:de98840e:9e1bad14:0cab13ab\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=54b7fecc:600d8d5c:eacce70e:72781265\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003c1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=39ea7276:db4cd5bc:f0f9b1c5:f49422ee\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003f7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    gl_FragColor = r0;\n}\n//MD5=3214c698:18a61d1f:775e57af:ef012fc7\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=54b7fecc:600d8d5c:eacce70e:72781265\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003c1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=39ea7276:db4cd5bc:f0f9b1c5:f49422ee\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003ec\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    gl_FragColor = r0;\n}\n//MD5=0303ed48:c8358667:5495ed57:fa121da3\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype1_float_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=54b7fecc:600d8d5c:eacce70e:72781265\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003c1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=39ea7276:db4cd5bc:f0f9b1c5:f49422ee\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003ec\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    gl_FragColor = r0;\n}\n//MD5=0303ed48:c8358667:5495ed57:fa121da3\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=b581bd41:54e6f9c8:e1ede332:875c59b4\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000041d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=b4173fac:44680a48:870cd096:fdc9532d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000490\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=3e2dbb18:684ec807:9d15a9eb:1614305e\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=b581bd41:54e6f9c8:e1ede332:875c59b4\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000041d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=b4173fac:44680a48:870cd096:fdc9532d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000490\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=3e2dbb18:684ec807:9d15a9eb:1614305e\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=b581bd41:54e6f9c8:e1ede332:875c59b4\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000041d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=b4173fac:44680a48:870cd096:fdc9532d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000485\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=9ce8dddd:3d077154:86cfe60a:39d7e855\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000044c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=b581bd41:54e6f9c8:e1ede332:875c59b4\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000041d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = clamp(r3.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=b4173fac:44680a48:870cd096:fdc9532d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000492\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.x = c0.z;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, c0.xxx);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = clamp(r3.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=622d4d1a:a7f48af3:efe2021a:bb14221d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000418\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=60b986cb:2fee582f:7e05d15d:628c4b59\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    output.color0 = r0;\n    return output;\n}\n//MD5=521478db:3e1f61f9:f01db1b9:77e3589d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000044a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    gl_FragColor = r0;\n}\n//MD5=541b9209:5f74838a:ec435af4:b838fbe5\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000418\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=60b986cb:2fee582f:7e05d15d:628c4b59\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    output.color0 = r0;\n    return output;\n}\n//MD5=521478db:3e1f61f9:f01db1b9:77e3589d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000043d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    gl_FragColor = r0;\n}\n//MD5=01b3d752:40bcd325:f774cf1d:a16e8652\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype2_float_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000418\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=60b986cb:2fee582f:7e05d15d:628c4b59\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_Params[0].yyy;\n    r3.xyz = pow(r3.xyz, hg_Params[0].xxx);\n    r3.xyz = r3.xyz*hg_Params[0].www;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r3.xyz = select(r3.xyz, r1.xxx, r2.xyz < 0.00000f);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    output.color0 = r0;\n    return output;\n}\n//MD5=521478db:3e1f61f9:f01db1b9:77e3589d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000043d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xw = c0.zx;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r3.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r3.xyz = pow(r3.xyz, hg_ProgramLocal0.xxx);\n    r3.xyz = r3.xyz*hg_ProgramLocal0.www;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r3.xyz = vec3(r2.x < 0.00000 ? r1.x : r3.x, r2.y < 0.00000 ? r1.x : r3.y, r2.z < 0.00000 ? r1.x : r3.z);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    gl_FragColor = r0;\n}\n//MD5=01b3d752:40bcd325:f774cf1d:a16e8652\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000041e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + half3(hg_Params[0].yyy);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xxx));\n    r2.xyz = r2.xyz*half3(hg_Params[0].www);\n    r3.xyz = r1.xyz*half3(hg_Params[1].xxx);\n    r1.xyz = r1.xyz - half3(hg_Params[1].yyy);\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=56118e12:e38b95a3:d687869e:291134db\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=ab45c72e:2f5e0967:e1912c31:64a08ba6\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000431\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=f238f58b:9bad5cb9:febff045:ccc83075\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000041e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + half3(hg_Params[0].yyy);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xxx));\n    r2.xyz = r2.xyz*half3(hg_Params[0].www);\n    r3.xyz = r1.xyz*half3(hg_Params[1].xxx);\n    r1.xyz = r1.xyz - half3(hg_Params[1].yyy);\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=56118e12:e38b95a3:d687869e:291134db\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=ab45c72e:2f5e0967:e1912c31:64a08ba6\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000431\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=f238f58b:9bad5cb9:febff045:ccc83075\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000041e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + half3(hg_Params[0].yyy);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xxx));\n    r2.xyz = r2.xyz*half3(hg_Params[0].www);\n    r3.xyz = r1.xyz*half3(hg_Params[1].xxx);\n    r1.xyz = r1.xyz - half3(hg_Params[1].yyy);\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=56118e12:e38b95a3:d687869e:291134db\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=ab45c72e:2f5e0967:e1912c31:64a08ba6\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000428\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=bf6b9381:6a7e9595:993d8c0c:939fa7d9\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000041e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + half3(hg_Params[0].yyy);\n    r2.xyz = pow(r2.xyz, half3(hg_Params[0].xxx));\n    r2.xyz = r2.xyz*half3(hg_Params[0].www);\n    r3.xyz = r1.xyz*half3(hg_Params[1].xxx);\n    r1.xyz = r1.xyz - half3(hg_Params[1].yyy);\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = clamp(r2.xyz, 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=56118e12:e38b95a3:d687869e:291134db\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=ab45c72e:2f5e0967:e1912c31:64a08ba6\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000433\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(1.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.xxx);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=1b1522ad:d240fa36:56c2b10c:5af9114d\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000414\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r1.xyz = r1.xyz*half3(hg_Params[0].www);\n    r3.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c020226d:07c2fa1c:0f843aa7:96573d96\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=b9b7eb5d:231d6b87:b0cbc1f3:077ea789\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000041f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = c0.x;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=5bc35c6f:5f483a78:e4ac0130:5872675f\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000414\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r1.xyz = r1.xyz*half3(hg_Params[0].www);\n    r3.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c020226d:07c2fa1c:0f843aa7:96573d96\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=b9b7eb5d:231d6b87:b0cbc1f3:077ea789\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000414\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = c0.x;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=e30a931e:9daacbf9:a2d71229:2a8b9bfa\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype3_float_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000414\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r1.xyz = pow(r1.xyz, half3(hg_Params[0].xxx));\n    r1.xyz = r1.xyz*half3(hg_Params[0].www);\n    r3.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c020226d:07c2fa1c:0f843aa7:96573d96\n//SIG=00400000:00000001:00000001:00000001:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = c0.x;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=b9b7eb5d:231d6b87:b0cbc1f3:077ea789\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000414\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(2.000000000, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = c0.x;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=e30a931e:9daacbf9:a2d71229:2a8b9bfa\n//SIG=00000000:00000001:00000001:00000000:0001:0002:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004bd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=e60093f7:17e4e59c:044c6dd4:0dd6e9ce\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000445\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=10153cf1:e229017a:404233ac:ad355c06\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004c0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=c92b533d:2946e6ca:1ffa015a:10d26966\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004bd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=e60093f7:17e4e59c:044c6dd4:0dd6e9ce\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000445\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=10153cf1:e229017a:404233ac:ad355c06\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004c0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=c92b533d:2946e6ca:1ffa015a:10d26966\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004bd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=e60093f7:17e4e59c:044c6dd4:0dd6e9ce\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000445\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=10153cf1:e229017a:404233ac:ad355c06\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004b5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=aef7f055:834bb867:7b1b3ff8:8e3614e9\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004bd\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = clamp(r3.xyz, 0.00000h, 1.00000h);\n    r0.xyz = clamp(r0.xyz + half3(hg_Params[2].xxx), 0.00000h, 1.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=e60093f7:17e4e59c:044c6dd4:0dd6e9ce\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000445\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.zzz);\n    r1.xyz = fmin(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_Params[0].yyy;\n    r2.xyz = pow(r2.xyz, hg_Params[0].xxx);\n    r2.xyz = r2.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r1.xyz*hg_Params[1].xxx;\n    r1.xyz = r1.xyz - hg_Params[1].yyy;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = clamp(r2.xyz, 0.00000f, 1.00000f);\n    r0.xyz = clamp(r0.xyz + hg_Params[2].xxx, 0.00000f, 1.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=10153cf1:e229017a:404233ac:ad355c06\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004c2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 1.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.zzz);\n    r1.xyz = min(r1.xyz, c0.www);\n    r2.xyz = r1.xyz + hg_ProgramLocal0.yyy;\n    r2.xyz = pow(r2.xyz, hg_ProgramLocal0.xxx);\n    r2.xyz = r2.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r1.xyz*hg_ProgramLocal1.xxx;\n    r1.xyz = r1.xyz - hg_ProgramLocal1.yyy;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = clamp(r2.xyz, vec3(0.00000), vec3(1.00000));\n    r0.xyz = clamp(r0.xyz + hg_ProgramLocal2.xxx, vec3(0.00000), vec3(1.00000));\n    gl_FragColor = r0;\n}\n//MD5=9a3b51bd:4960a7f2:6719ad26:91d186ea\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000487\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r2.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=62c5fdab:7fc3593f:783cebb6:5506e6ba\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000420\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = c0.w;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    output.color0 = r0;\n    return output;\n}\n//MD5=95965de2:ec2450ed:740ba24d:a0be43a6\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000489\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nuniform mediump vec4 hg_ProgramLocal0;\nuniform mediump vec4 hg_ProgramLocal1;\nuniform mediump vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = c0.w;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    gl_FragColor = r0;\n}\n//MD5=baa41f52:35394ac5:31a0fd40:ee61628f\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000487\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r2.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=62c5fdab:7fc3593f:783cebb6:5506e6ba\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000420\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = c0.w;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    output.color0 = r0;\n    return output;\n}\n//MD5=95965de2:ec2450ed:740ba24d:a0be43a6\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000047c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = c0.w;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    gl_FragColor = r0;\n}\n//MD5=2bdf62e0:beb95f57:b2bb1cfc:ecf85b8d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Gettype4_float_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000487\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    half4 r0, r1, r2, r3, r4;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xy = half2(hg_Params[1].xy);\n    r1.zw = c0.zw;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r2.www);\n    r3.xyz = r2.xyz + half3(hg_Params[0].yyy);\n    r3.xyz = pow(r3.xyz, half3(hg_Params[0].xxx));\n    r3.xyz = r3.xyz*half3(hg_Params[0].www) + half3(hg_Params[0].zzz);\n    r4.xyz = r2.xyz*half3(hg_Params[1].xxx);\n    r2.xyz = r2.xyz - half3(hg_Params[1].yyy);\n    r3.xyz = select(r3.xyz, r4.xyz, r2.xyz < 0.00000h);\n    r0.xyz = r3.xyz;\n    r0.xyz = r0.xyz + half3(hg_Params[2].xxx);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=62c5fdab:7fc3593f:783cebb6:5506e6ba\n//SIG=00400000:00000001:00000001:00000001:0001:0003:0005:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000420\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.w = c0.w;\n    r2.xyz = fmax(r0.xyz, c0.zzz);\n    r2.xyz = fmin(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_Params[0].yyy;\n    r1.xyz = pow(r1.xyz, hg_Params[0].xxx);\n    r1.xyz = r1.xyz*hg_Params[0].www + hg_Params[0].zzz;\n    r3.xyz = r2.xyz*hg_Params[1].xxx;\n    r2.xyz = r2.xyz - hg_Params[1].yyy;\n    r1.xyz = select(r1.xyz, r3.xyz, r2.xyz < 0.00000f);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_Params[2].xxx;\n    output.color0 = r0;\n    return output;\n}\n//MD5=95965de2:ec2450ed:740ba24d:a0be43a6\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000047c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nuniform highp vec4 hg_ProgramLocal0;\nuniform highp vec4 hg_ProgramLocal1;\nuniform highp vec4 hg_ProgramLocal2;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 0.000000000, 0.000000000, 2.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.w = c0.w;\n    r2.xyz = max(r0.xyz, c0.zzz);\n    r2.xyz = min(r2.xyz, r1.www);\n    r1.xyz = r2.xyz + hg_ProgramLocal0.yyy;\n    r1.xyz = pow(r1.xyz, hg_ProgramLocal0.xxx);\n    r1.xyz = r1.xyz*hg_ProgramLocal0.www + hg_ProgramLocal0.zzz;\n    r3.xyz = r2.xyz*hg_ProgramLocal1.xxx;\n    r2.xyz = r2.xyz - hg_ProgramLocal1.yyy;\n    r1.xyz = vec3(r2.x < 0.00000 ? r3.x : r1.x, r2.y < 0.00000 ? r3.y : r1.y, r2.z < 0.00000 ? r3.z : r1.z);\n    r0.xyz = r1.xyz;\n    r0.xyz = r0.xyz + hg_ProgramLocal2.xxx;\n    gl_FragColor = r0;\n}\n//MD5=2bdf62e0:beb95f57:b2bb1cfc:ecf85b8d\n//SIG=00000000:00000001:00000001:00000000:0001:0003:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002de\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=71371cbe:526a992c:7aa37843:1294333d\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002d2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    output.color0 = r0;\n    return output;\n}\n//MD5=d6a33776:ea9d46d1:7b701ce4:2b02f2f0\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000273\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    gl_FragColor = r0;\n}\n//MD5=366ef5c6:9018d21a:09aca884:96379d9d\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const half4 c1 = half4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=596deb76:9164d0a8:2f3e089d:582cf7bf\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const float4 c1 = float4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=7e4f848a:2cb60a58:1e95b028:52cd143e\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003bf\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const mediump vec4 c1 = vec4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=9d8bc3ce:ba133db6:ac894ecf:201a875d\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const half4 c1 = half4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=596deb76:9164d0a8:2f3e089d:582cf7bf\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const float4 c1 = float4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=7e4f848a:2cb60a58:1e95b028:52cd143e\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003b8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const highp vec4 c1 = vec4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=5ca60ddb:9e6b7047:f8e5d9d8:b8b75fb0\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const half4 c1 = half4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=596deb76:9164d0a8:2f3e089d:582cf7bf\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const float4 c1 = float4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=7e4f848a:2cb60a58:1e95b028:52cd143e\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.098999977);\n    const mediump vec4 c1 = vec4(-0.09899999946, 4.500000000, 0.01799999923, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=3aa98d3f:c4638eae:63ae3b60:dd9955f6\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const half4 c1 = half4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const half4 c2 = half4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=6aab1881:29f77204:f1b685a8:61116330\n//SIG=00400000:00000001:00000001:00000001:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const float4 c1 = float4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const float4 c2 = float4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=dc7a742f:53a3e169:5f36b38d:56ae6c74\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000533\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const mediump vec4 c1 = vec4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const mediump vec4 c2 = vec4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=2a49f7b8:cd3037fd:e1ea1b48:caf698d9\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec709_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004f1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const half4 c1 = half4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const half4 c2 = half4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=6aab1881:29f77204:f1b685a8:61116330\n//SIG=00400000:00000001:00000001:00000001:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004e9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const float4 c1 = float4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const float4 c2 = float4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=dc7a742f:53a3e169:5f36b38d:56ae6c74\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000528\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const highp vec4 c1 = vec4(0.4499999881, 1.098999977, -0.09899999946, 4.500000000);\n    const highp vec4 c2 = vec4(0.01799999923, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=8236f966:82710f38:6ac9571a:80f55067\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002df\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=79fbc4d4:3000f291:f4e8ca38:00f5497f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002d3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=64865123:71308dc6:6f589b45:024bcb37\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000026e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const lowp vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    lowp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=f55ad575:d6e4a08d:c419384d:6702d386\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000404\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const half4 c1 = half4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c88b9c32:b270bb6c:61f28474:3eae048f\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const float4 c1 = float4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=ab1e5c77:80702e68:d7a02002:c3f3bd86\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const mediump vec4 c1 = vec4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=c25197b6:d7275bee:d47c1785:36c049a6\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000404\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const half4 c1 = half4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c88b9c32:b270bb6c:61f28474:3eae048f\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const float4 c1 = float4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=ab1e5c77:80702e68:d7a02002:c3f3bd86\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003cd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const highp vec4 c1 = vec4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=0028a9f8:5f19df0d:6c2b2f26:e062f7ac\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000404\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const half4 c1 = half4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=c88b9c32:b270bb6c:61f28474:3eae048f\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const float4 c1 = float4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=ab1e5c77:80702e68:d7a02002:c3f3bd86\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d6\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.09899999946, 2.220000029);\n    const mediump vec4 c1 = vec4(0.8108000159, 0.2220000029, 0.08120000362, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=b3973609:7b3f330a:954f2d12:2d8a6069\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000506\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const half4 c1 = half4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const half4 c2 = half4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=fa4f7f81:31a3eb5d:0e3af884:72b21e79\n//SIG=00400000:00000001:00000001:00000001:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004fe\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const float4 c1 = float4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const float4 c2 = float4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=852efa7c:0e34cb02:774102e7:8ed7d417\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000548\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const mediump vec4 c1 = vec4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const mediump vec4 c2 = vec4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=4813d1cd:56899d9d:03f3d94f:9d4c7064\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec709_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000506\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const half4 c1 = half4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const half4 c2 = half4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=fa4f7f81:31a3eb5d:0e3af884:72b21e79\n//SIG=00400000:00000001:00000001:00000001:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004fe\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const float4 c1 = float4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const float4 c2 = float4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=852efa7c:0e34cb02:774102e7:8ed7d417\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000053d\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const highp vec4 c1 = vec4(0.09899999946, 2.220000029, 0.8108000159, 0.2220000029);\n    const highp vec4 c2 = vec4(0.08120000362, 0.000000000, 0.000000000, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.www;\n    r1.xyz = r1.xyz - c2.xxx;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=72b3ec65:d0158182:14cc14f1:da364b12\n//SIG=00000000:00000001:00000001:00000000:0003:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002de\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=71371cbe:526a992c:7aa37843:1294333d\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002d2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    output.color0 = r0;\n    return output;\n}\n//MD5=d6a33776:ea9d46d1:7b701ce4:2b02f2f0\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000273\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    gl_FragColor = r0;\n}\n//MD5=366ef5c6:9018d21a:09aca884:96379d9d\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ee\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const half4 c1 = half4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=db453a6f:a444ef71:2866b30e:6aac7219\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const float4 c1 = float4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=15a28e7a:79c07734:f177076f:5fe81d05\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003be\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const mediump vec4 c1 = vec4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=a9a40871:0e0e0f0a:f4187270:12acff8d\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ee\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const half4 c1 = half4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=db453a6f:a444ef71:2866b30e:6aac7219\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const float4 c1 = float4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=15a28e7a:79c07734:f177076f:5fe81d05\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003b7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const highp vec4 c1 = vec4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=4d9361bc:170de0f7:0b31a991:275e089a\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003ee\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const half4 c1 = half4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=db453a6f:a444ef71:2866b30e:6aac7219\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e4\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const float4 c1 = float4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=15a28e7a:79c07734:f177076f:5fe81d05\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4499999881, 1.111500025);\n    const mediump vec4 c1 = vec4(-0.1115000024, 4.000000000, 0.02280000038, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=36373057:7825bc00:61a895a4:bb953c61\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004a1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const half4 c1 = half4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=1ee6f629:03660d51:273f8305:e1d73d59\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000497\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const float4 c1 = float4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=ee1fc169:6bca4dbb:e14a0e2a:0c373c5c\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004dd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const mediump vec4 c1 = vec4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=22760808:b0121326:154c3e20:4d6403b5\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getrec601_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004a1\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const half4 c1 = half4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=1ee6f629:03660d51:273f8305:e1d73d59\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000497\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const float4 c1 = float4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=ee1fc169:6bca4dbb:e14a0e2a:0c373c5c\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004d4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.330000043);\n    const highp vec4 c1 = vec4(0.4499999881, 1.111500025, -0.1115000024, 0.02280000038);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy + c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.yyy;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=7d925446:286db01f:d2c0c230:f4f6e683\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002df\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=79fbc4d4:3000f291:f4e8ca38:00f5497f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002d3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=64865123:71308dc6:6f589b45:024bcb37\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000026e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const lowp vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    lowp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=f55ad575:d6e4a08d:c419384d:6702d386\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000403\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const half4 c1 = half4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a44fc0b7:ea328a33:cf4a9db3:4bd6b6dd\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003f9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const float4 c1 = float4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=d8185069:3af0b32a:4fe1d9b1:829cf334\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d3\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const mediump vec4 c1 = vec4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=256671af:933a634c:c4e8abd9:c32315fa\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000403\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const half4 c1 = half4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a44fc0b7:ea328a33:cf4a9db3:4bd6b6dd\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003f9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const float4 c1 = float4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=d8185069:3af0b32a:4fe1d9b1:829cf334\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003cc\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const highp vec4 c1 = vec4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=1c2425c4:5b28bf97:affb265b:71b50146\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000403\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const half4 c1 = half4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=a44fc0b7:ea328a33:cf4a9db3:4bd6b6dd\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003f9\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const float4 c1 = float4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=d8185069:3af0b32a:4fe1d9b1:829cf334\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.1115000024, 2.220000029);\n    const mediump vec4 c1 = vec4(0.7906000018, 0.2500000000, 0.09130000323, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=446de1ea:6f10c75f:8184103c:b4f68d5a\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004b5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const half4 c1 = half4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=316ddc5b:0affc1f7:1f1d5328:c24e9963\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004ab\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const float4 c1 = float4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=34e08d69:0b18bc5f:7e701567:ce89af42\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004f1\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const mediump vec4 c1 = vec4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=9fc1cd11:dd7aec9f:5ffae8d6:30ffe3ff\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_rec601_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000004b5\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const half4 c1 = half4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000h);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=316ddc5b:0affc1f7:1f1d5328:c24e9963\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000004ab\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const float4 c1 = float4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(c0.zzz, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r1.xyz = select(c0.zzz, c0.xxx, r0.xyz < 0.00000f);\n    r0.xyz = r2.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=34e08d69:0b18bc5f:7e701567:ce89af42\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004e8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -4.000000000, 1.000000000, 1.149999976);\n    const highp vec4 c1 = vec4(0.1115000024, 2.220000029, 0.7906000018, 0.09130000323);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : c0.z, r0.y < 0.00000 ? c0.y : c0.z, r0.z < 0.00000 ? c0.y : c0.z);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.www);\n    r2.xyz = r2.xyz + c1.xxx;\n    r2.xyz = pow(r2.xyz, c1.yyy);\n    r2.xyz = r2.xyz*c1.zzz;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*-c0.xxx;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.x : c0.z, r0.y < 0.00000 ? c0.x : c0.z, r0.z < 0.00000 ? c0.x : c0.z);\n    r0.xyz = r2.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=5fe13b13:05915c49:459d1234:50462cd6\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000328\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 1.200000048, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = sqrt(r2.xyz);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=d2eda416:bd402552:ac770787:37d9c71e\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000031c\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 1.200000048, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = sqrt(r2.xyz);\n    output.color0 = r0;\n    return output;\n}\n//MD5=961474ec:b4189c15:289b1cb2:8eee082b\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002bd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 1.200000048, 0.000000000);\n    mediump vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = sqrt(r2.xyz);\n    gl_FragColor = r0;\n}\n//MD5=5bb900e4:bbd57169:51eec8b3:8c45d843\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003f0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const half4 c1 = half4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=67ea82e5:d8d4d03f:005f5db3:df7ef241\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const float4 c1 = float4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=fe5592fa:c679203d:75fdd5d7:4852933e\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c0\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const mediump vec4 c1 = vec4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=f4f49178:9ac2d53b:8513dad5:2ecb27f1\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003f0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const half4 c1 = half4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=67ea82e5:d8d4d03f:005f5db3:df7ef241\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const float4 c1 = float4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=fe5592fa:c679203d:75fdd5d7:4852933e\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003b9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const highp vec4 c1 = vec4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=270746a4:889949e0:e0f01346:90962527\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000003f0\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const half4 c1 = half4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=67ea82e5:d8d4d03f:005f5db3:df7ef241\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003e6\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const float4 c1 = float4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=fe5592fa:c679203d:75fdd5d7:4852933e\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003c2\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.4165999889, 1.054999948);\n    const mediump vec4 c1 = vec4(-0.05499999970, 12.92000008, 0.003130800091, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = pow(r1.xyz, c0.zzz);\n    r2.xyz = r2.xyz*c0.www + c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=42250c82:0fede816:5327b276:cd676e5b\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000488\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const half4 c1 = half4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=add5a51f:0abea880:ca4bf929:e553a4b0\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000047e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const float4 c1 = float4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=56b3d24b:4d3b2603:66eaa036:ff760bcf\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004c8\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const mediump vec4 c1 = vec4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r2.x : r2.x, r0.y < 0.00000 ? -r2.y : r2.y, r0.z < 0.00000 ? -r2.z : r2.z);\n    gl_FragColor = r0;\n}\n//MD5=74457ba2:761def36:20a0914a:92023896\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getsrgb_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000488\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const half4 c1 = half4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=add5a51f:0abea880:ca4bf929:e553a4b0\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000047e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const float4 c1 = float4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=56b3d24b:4d3b2603:66eaa036:ff760bcf\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004bf\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.5299999714, -1.000000000, 1.679999948, 0.4165999889);\n    const highp vec4 c1 = vec4(1.054999948, -0.05499999970, 12.92000008, 0.003130800091);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.zzz);\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx + c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r2.x : r2.x, r0.y < 0.00000 ? -r2.y : r2.y, r0.z < 0.00000 ? -r2.z : r2.z);\n    gl_FragColor = r0;\n}\n//MD5=f708cbc1:705d1338:9da8cb64:4a35ae28\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000032a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.8600000143, 0.000000000);\n    half4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = r2.xyz*r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=fef801fc:065b21af:97d6bea1:750cfbd7\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000031e\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.8600000143, 0.000000000);\n    float4 r0, r1, r2;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = r2.xyz*r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=4d5faa0d:df2a1278:84bcfdbe:e32e0991\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0003:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000002b9\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const lowp vec4 c0 = vec4(0.000000000, 1.000000000, 0.8600000143, 0.000000000);\n    lowp vec4 r0, r1, r2;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz*c0.zzz;\n    r2.xyz = mix(r2.xyz, r1.xyz, r1.xyz);\n    r0.xyz = r2.xyz*r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=de27b81a:55a16102:0abe5b0f:dcabf045\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0003:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000405\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const half4 c1 = half4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=309170bb:e0ac4821:a673360c:bad45e77\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003fb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const float4 c1 = float4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=9e74fc88:710456d9:84af040a:1a03bf93\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d5\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const mediump vec4 c1 = vec4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=f9be4ebe:3f53fafc:c8fc0842:99e12788\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000405\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const half4 c1 = half4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=309170bb:e0ac4821:a673360c:bad45e77\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003fb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const float4 c1 = float4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=9e74fc88:710456d9:84af040a:1a03bf93\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003ce\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const highp vec4 c1 = vec4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=0945d6b6:a9c32d34:ec75fcd7:04a6b9d5\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000405\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const half4 c1 = half4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = r2.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=309170bb:e0ac4821:a673360c:bad45e77\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000003fb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const float4 c1 = float4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = r2.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=9e74fc88:710456d9:84af040a:1a03bf93\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000003d7\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.05499999970, 2.400000095);\n    const mediump vec4 c1 = vec4(0.8790000081, 0.07739999890, 0.04044999927, 0.000000000);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r2.xyz = r1.xyz + c0.zzz;\n    r2.xyz = pow(r2.xyz, c0.www);\n    r2.xyz = r2.xyz*c1.xxx;\n    r3.xyz = r1.xyz*c1.yyy;\n    r1.xyz = r1.xyz - c1.zzz;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = r2.xyz;\n    gl_FragColor = r0;\n}\n//MD5=bd16cf6b:adfe6607:a9981257:5e3f8b0c\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000049d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const half4 c1 = half4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=94e4126c:912bd7d3:18975cf6:90abe4dd\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000493\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const float4 c1 = float4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=87cfd56b:8f2725b7:a29eb854:c8e353be\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004dd\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const mediump vec4 c1 = vec4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    mediump vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r2.x : r2.x, r0.y < 0.00000 ? -r2.y : r2.y, r0.z < 0.00000 ? -r2.z : r2.z);\n    gl_FragColor = r0;\n}\n//MD5=a249e16d:662fadca:69da4b2e:b5c48b75\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_srgb_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=000000049d\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const half4 c1 = half4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    half4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000h);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=94e4126c:912bd7d3:18975cf6:90abe4dd\n//SIG=00400000:00000001:00000001:00000001:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=0000000493\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const float4 c1 = float4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    float4 r0, r1, r2, r3;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = fmin(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = select(r2.xyz, r3.xyz, r1.xyz < 0.00000f);\n    r0.xyz = select(r2.xyz, -r2.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=87cfd56b:8f2725b7:a29eb854:c8e353be\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=00000004d4\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.7500000000, -1.000000000, 1.250000000, 0.05499999970);\n    const highp vec4 c1 = vec4(2.400000095, 0.8790000081, 0.07739999890, 0.04044999927);\n    highp vec4 r0, r1, r2, r3;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r2.xyz = r1.xyz*r0.xyz;\n    r2.xyz = min(r2.xyz, c0.zzz);\n    r2.xyz = r2.xyz + c0.www;\n    r2.xyz = pow(r2.xyz, c1.xxx);\n    r2.xyz = r2.xyz*c1.yyy;\n    r1.xyz = r1.xyz*r0.xyz;\n    r3.xyz = r1.xyz*c1.zzz;\n    r1.xyz = r1.xyz - c1.www;\n    r2.xyz = vec3(r1.x < 0.00000 ? r3.x : r2.x, r1.y < 0.00000 ? r3.y : r2.y, r1.z < 0.00000 ? r3.z : r2.z);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r2.x : r2.x, r0.y < 0.00000 ? -r2.y : r2.y, r0.z < 0.00000 ? -r2.z : r2.z);\n    gl_FragColor = r0;\n}\n//MD5=c0dc8aa3:f61b8cf0:f53695f9:9eb99125\n//SIG=00000000:00000001:00000001:00000000:0002:0000:0004:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002de\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=71371cbe:526a992c:7aa37843:1294333d\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002d2\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    output.color0 = r0;\n    return output;\n}\n//MD5=d6a33776:ea9d46d1:7b701ce4:2b02f2f0\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000273\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = sqrt(r1.xyz);\n    gl_FragColor = r0;\n}\n//MD5=366ef5c6:9018d21a:09aca884:96379d9d\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002fb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=6c87b179:931a7f82:2e7d93b9:6b7e838f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=9a27762e:e48ffb09:7625bd98:1087a6a4\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000290\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=256d38f7:d8a55347:9de06529:49ce2800\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002fb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=6c87b179:931a7f82:2e7d93b9:6b7e838f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=9a27762e:e48ffb09:7625bd98:1087a6a4\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000028b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=e5f2ac3f:98b9a102:02813f98:70ef968a\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002fb\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=6c87b179:931a7f82:2e7d93b9:6b7e838f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ef\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=9a27762e:e48ffb09:7625bd98:1087a6a4\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000292\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 0.5112500191, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=4e475cbc:5a55909e:9bd0936c:5f882794\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000377\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=493a7313:1f860720:3cbff05e:044e50ab\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000036b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=65cb7d50:6b4deded:b009e9aa:332eb294\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000037c\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    gl_FragColor = r0;\n}\n//MD5=e4e6fb8a:78a157d4:087b3095:98f8a653\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getquicktime_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000377\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=493a7313:1f860720:3cbff05e:044e50ab\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000036b\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=65cb7d50:6b4deded:b009e9aa:332eb294\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000375\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -1.000000000, 1.330000043, 0.5112500191);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    gl_FragColor = r0;\n}\n//MD5=4caa96c5:80eab27c:24257f6b:03530b0d\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_fast_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002df\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=79fbc4d4:3000f291:f4e8ca38:00f5497f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002d3\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=64865123:71308dc6:6f589b45:024bcb37\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000026e\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const lowp vec4 c0 = vec4(0.000000000, 1.000000000, 0.000000000, 0.000000000);\n    lowp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r0.xyz = r1.xyz*r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=f55ad575:d6e4a08d:c419384d:6702d386\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_fixed_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=b94e5a6d:a57d1749:ab36e45c:e1699a4f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ee\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=e29c192e:d60afaaa:96bfb94b:c6295363\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000028f\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp lowp   \nuniform lowp sampler2D hg_Texture0;\nvarying mediump vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=731b047d:567e4b62:b8616393:f8c0d1ab\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_nice_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=b94e5a6d:a57d1749:ab36e45c:e1699a4f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ee\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=e29c192e:d60afaaa:96bfb94b:c6295363\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000028a\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=625c3c87:60b34443:dc7f6036:8e0bdc42\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_half_sat_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=00000002fa\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=b94e5a6d:a57d1749:ab36e45c:e1699a4f\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=00000002ee\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r1.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = fmin(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    output.color0 = r0;\n    return output;\n}\n//MD5=e29c192e:d60afaaa:96bfb94b:c6295363\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000291\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(0.000000000, 1.000000000, 1.955999970, 0.000000000);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r1.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = min(r1.xyz, c0.yyy);\n    r1.xyz = pow(r1.xyz, c0.zzz);\n    r0.xyz = r1.xyz;\n    gl_FragColor = r0;\n}\n//MD5=90d4bf0f:6ecf2069:2e0a9113:b447053f\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_half_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000376\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=19bd766f:80d76f2e:a4240bb7:64de5c0d\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000036a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=b48d2ef7:b3a26fa4:aeddfc2d:626e715c\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=000000037b\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp mediump\nuniform defaultp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const mediump vec4 c0 = vec4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    mediump vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    gl_FragColor = r0;\n}\n//MD5=0e382641:74972844:02f4fa3b:b4115f62\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

const char *Getinv_quicktime_nice_unpremultProgram(HGRenderer *a1)
{
  Target = HGRenderer::GetTarget(a1, 393216);
  if (Target == 396048)
  {
    if ((*(*a1 + 128))(a1, 20) == 27)
    {
      return "//Metal1.0     \n//LEN=0000000376\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< half > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const half4 c0 = half4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    half4 r0, r1;\n    FragmentOut output;\n\n    r0 = (half4) hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000h);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000h);\n    output.color0 = float4(r0);\n    return output;\n}\n//MD5=19bd766f:80d76f2e:a4240bb7:64de5c0d\n//SIG=00400000:00000001:00000001:00000001:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }

    else
    {
      return "//Metal1.0     \n//LEN=000000036a\nfragment FragmentOut fragmentFunc(VertexInOut frag [[ stage_in ]], \n    const constant float4* hg_Params [[ buffer(0) ]], \n    texture2d< float > hg_Texture0 [[ texture(0) ]], \n    sampler hg_Sampler0 [[ sampler(0) ]])\n{\n    const float4 c0 = float4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    float4 r0, r1;\n    FragmentOut output;\n\n    r0 = hg_Texture0.sample(hg_Sampler0, frag._texCoord0.xy);\n    r0.xyz = fmax(r0.xyz, c0.xxx);\n    r1.xyz = select(-c0.yyy, c0.yyy, r0.xyz < 0.00000f);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = fmin(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = select(r1.xyz, -r1.xyz, r0.xyz < 0.00000f);\n    output.color0 = r0;\n    return output;\n}\n//MD5=b48d2ef7:b3a26fa4:aeddfc2d:626e715c\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0002:0000:0001:01:0:1:0\n";
    }
  }

  else if (Target <= 0x6060F || (*(*a1 + 128))(a1, 46))
  {
    return 0;
  }

  else
  {
    return "//GLfs2.0      \n//LEN=0000000374\n#ifndef GL_ES\n#define lowp\n#define mediump\n#define highp\n#endif\n#define defaultp highp  \nuniform highp sampler2D hg_Texture0;\nvarying highp vec4 hg_TexCoord0;\nvoid main()\n{\n    const highp vec4 c0 = vec4(-0.2500000000, -1.000000000, 1.149999976, 1.955999970);\n    highp vec4 r0, r1;\n\n    r0 = texture2D(hg_Texture0, hg_TexCoord0.xy);\n    r0.xyz = max(r0.xyz, c0.xxx);\n    r1.xyz = vec3(r0.x < 0.00000 ? c0.y : -c0.y, r0.y < 0.00000 ? c0.y : -c0.y, r0.z < 0.00000 ? c0.y : -c0.y);\n    r1.xyz = r1.xyz*r0.xyz;\n    r1.xyz = min(r1.xyz, c0.zzz);\n    r1.xyz = pow(r1.xyz, c0.www);\n    r0.xyz = vec3(r0.x < 0.00000 ? -r1.x : r1.x, r0.y < 0.00000 ? -r1.y : r1.y, r0.z < 0.00000 ? -r1.z : r1.z);\n    gl_FragColor = r0;\n}\n//MD5=d4976673:e7ba6629:3824413f:09fec661\n//SIG=00000000:00000001:00000001:00000000:0001:0000:0002:0000:0000:0000:0000:0000:0001:01:0:1:0\n";
  }
}

void sub_25FD5D130(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5D160(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5D158);
}

void sub_25FD5D368(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5D398(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5D390);
}

void sub_25FD5D5A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5D5D0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5D5C8);
}

void sub_25FD5D7D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5D808(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5D800);
}

void sub_25FD5DA10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5DA40(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5DA38);
}

void sub_25FD5DC48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5DC78(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5DC70);
}

void sub_25FD5DE80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5DEB0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5DEA8);
}

void sub_25FD5E0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5E0E8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5E0E0);
}

void sub_25FD5E2F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5E320(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5E318);
}

void sub_25FD5E528(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5E558(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5E550);
}

void sub_25FD5E760(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5E790(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5E788);
}

void sub_25FD5E998(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5E9C8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5E9C0);
}

void sub_25FD5EBD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5EC00(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5EBF8);
}

void sub_25FD5EE08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5EE38(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5EE30);
}

void sub_25FD5F040(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5F070(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5F068);
}

void sub_25FD5F278(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5F2A8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5F2A0);
}

void sub_25FD5F4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5F4E0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5F4D8);
}

void sub_25FD5F6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5F718(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5F710);
}

void sub_25FD5F920(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5F950(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5F948);
}

void sub_25FD5FB58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5FB88(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5FB80);
}

void sub_25FD5FD90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5FDC0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5FDB8);
}

void sub_25FD5FFC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD5FFF8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD5FFF0);
}

void sub_25FD60200(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD60230(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD60228);
}

void sub_25FD60438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD60468(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD60460);
}

void sub_25FD60670(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD606A0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD60698);
}

void sub_25FD608A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD608D8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD608D0);
}

void sub_25FD60AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD60B10(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD60B08);
}

void sub_25FD60D18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD60D48(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD60D40);
}

void sub_25FD60F50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD60F80(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD60F78);
}

void sub_25FD61188(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD611B8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD611B0);
}

void sub_25FD613C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD613F0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD613E8);
}

void sub_25FD615F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD61628(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD61620);
}

void sub_25FD61830(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD61860(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD61858);
}

void sub_25FD61A68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD61A98(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD61A90);
}

void sub_25FD61CA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD61CD0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD61CC8);
}

void sub_25FD61ED8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD61F08(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD61F00);
}

void sub_25FD62110(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD62140(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD62138);
}

void sub_25FD62348(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD62378(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD62370);
}

void sub_25FD62580(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD625B0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD625A8);
}

void sub_25FD627B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD627E8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD627E0);
}

void sub_25FD629F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD62A20(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD62A18);
}

void sub_25FD62C28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD62C58(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD62C50);
}

void sub_25FD62E60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD62E90(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD62E88);
}

void sub_25FD63098(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD630C8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD630C0);
}

void sub_25FD632D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD63300(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD632F8);
}

void sub_25FD63508(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD63538(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD63530);
}

void sub_25FD63740(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD63770(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD63768);
}

void sub_25FD63978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD639A8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD639A0);
}

void sub_25FD63BB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD63BE0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD63BD8);
}

void sub_25FD63DE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD63E18(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD63E10);
}

void sub_25FD64020(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD64050(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD64048);
}

void sub_25FD64258(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD64288(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD64280);
}

void sub_25FD64490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD644C0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD644B8);
}

void sub_25FD646C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD646F8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD646F0);
}

void sub_25FD64900(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD64930(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD64928);
}

void sub_25FD64B38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD64B68(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD64B60);
}

void sub_25FD64D70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD64DA0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD64D98);
}

void sub_25FD64FA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD64FD8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD64FD0);
}

void sub_25FD651E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD65210(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD65208);
}

void sub_25FD65418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD65448(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD65440);
}

void sub_25FD65650(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD65680(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD65678);
}

void sub_25FD65888(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD658B8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD658B0);
}

void sub_25FD65AC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD65AF0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD65AE8);
}

void sub_25FD65CF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD65D28(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD65D20);
}

void sub_25FD65F30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD65F60(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD65F58);
}

void sub_25FD66168(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD66198(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD66190);
}

void sub_25FD663A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD663D0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD663C8);
}

void sub_25FD665D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD66608(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD66600);
}

void sub_25FD66810(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD66840(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD66838);
}

void sub_25FD66A48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD66A78(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD66A70);
}

void sub_25FD66C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD66CB0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD66CA8);
}

void sub_25FD66EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD66EE8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD66EE0);
}

void sub_25FD670F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD67120(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD67118);
}

void sub_25FD67328(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD67358(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD67350);
}

void sub_25FD67560(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD67590(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD67588);
}

void sub_25FD67798(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD677C8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD677C0);
}

void sub_25FD679D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD67A00(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD679F8);
}

void sub_25FD67C08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD67C38(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD67C30);
}

void sub_25FD67E40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD67E70(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD67E68);
}

void sub_25FD68078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD680A8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD680A0);
}

void sub_25FD682B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD682E0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD682D8);
}

void sub_25FD684E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD68518(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD68510);
}

void sub_25FD68720(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD68750(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD68748);
}

void sub_25FD68958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD68988(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD68980);
}

void sub_25FD68B90(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD68BC0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD68BB8);
}

void sub_25FD68DC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD68DF8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD68DF0);
}

void sub_25FD69000(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD69030(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD69028);
}

void sub_25FD69238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD69268(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD69260);
}

void sub_25FD69470(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD694A0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD69498);
}

void sub_25FD696A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD696D8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD696D0);
}

void sub_25FD698E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD69910(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD69908);
}

void sub_25FD69B18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD69B48(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD69B40);
}

void sub_25FD69D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD69D80(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD69D78);
}

void sub_25FD69F88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD69FB8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD69FB0);
}

void sub_25FD6A1C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6A1F0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6A1E8);
}

void sub_25FD6A3F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6A428(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6A420);
}

void sub_25FD6A630(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6A660(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6A658);
}

void sub_25FD6A868(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6A898(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6A890);
}

void sub_25FD6AAA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6AAD0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6AAC8);
}

void sub_25FD6ACD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6AD08(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6AD00);
}

void sub_25FD6AF10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6AF40(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6AF38);
}

void sub_25FD6B148(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6B178(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6B170);
}

void sub_25FD6B380(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6B3B0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6B3A8);
}

void sub_25FD6B5B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6B5E8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6B5E0);
}

void sub_25FD6B7F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6B820(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6B818);
}

void sub_25FD6BA28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6BA58(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6BA50);
}

void sub_25FD6BC60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6BC90(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6BC88);
}

void sub_25FD6BE98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6BEC8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6BEC0);
}

void sub_25FD6C0D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6C100(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6C0F8);
}

void sub_25FD6C308(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6C338(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6C330);
}

void sub_25FD6C540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6C570(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6C568);
}

void sub_25FD6C778(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6C7A8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6C7A0);
}

void sub_25FD6C9B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6C9E0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6C9D8);
}

void sub_25FD6CBE8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6CC18(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6CC10);
}

void sub_25FD6CE20(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6CE50(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6CE48);
}

void sub_25FD6D058(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6D088(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6D080);
}

void sub_25FD6D290(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6D2C0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6D2B8);
}

void sub_25FD6D4C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6D4F8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6D4F0);
}

void sub_25FD6D700(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6D730(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6D728);
}

void sub_25FD6D938(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6D968(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6D960);
}

void sub_25FD6DB70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6DBA0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6DB98);
}

void sub_25FD6DDA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6DDD8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6DDD0);
}

void sub_25FD6DFE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6E010(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6E008);
}

void sub_25FD6E218(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6E248(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6E240);
}

void sub_25FD6E450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6E480(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6E478);
}

void sub_25FD6E688(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6E6B8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6E6B0);
}

void sub_25FD6E8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6E8F0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6E8E8);
}

void sub_25FD6EAF8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6EB28(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6EB20);
}

void sub_25FD6ED30(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6ED60(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6ED58);
}

void sub_25FD6EF68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6EF98(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6EF90);
}

void sub_25FD6F1A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6F1D0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6F1C8);
}

void sub_25FD6F3D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6F408(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6F400);
}

void sub_25FD6F610(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6F640(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6F638);
}

void sub_25FD6F848(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6F878(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6F870);
}

void sub_25FD6FA80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6FAB0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6FAA8);
}

void sub_25FD6FCB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6FCE8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6FCE0);
}

void sub_25FD6FEF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD6FF20(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD6FF18);
}

void sub_25FD70128(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD70158(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD70150);
}

void sub_25FD70360(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD70390(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD70388);
}

void sub_25FD70598(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD705C8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD705C0);
}

void sub_25FD707D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD70800(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD707F8);
}

void sub_25FD70A08(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD70A38(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD70A30);
}

void sub_25FD70C40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD70C70(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD70C68);
}

void sub_25FD70E78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD70EA8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD70EA0);
}

void sub_25FD710B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD710E0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD710D8);
}

void sub_25FD712E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD71318(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD71310);
}

void sub_25FD71520(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD71550(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD71548);
}

void sub_25FD71758(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD71788(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD71780);
}

void sub_25FD71990(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD719C0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD719B8);
}

void sub_25FD71BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD71BF8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD71BF0);
}

void sub_25FD71E00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD71E30(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD71E28);
}

void sub_25FD72038(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD72068(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD72060);
}

void sub_25FD72270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD722A0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD72298);
}

void sub_25FD724A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD724D8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD724D0);
}

void sub_25FD726E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD72710(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD72708);
}

void sub_25FD72918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD72948(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD72940);
}

void sub_25FD72B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD72B80(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD72B78);
}

void sub_25FD72D88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD72DB8(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD72DB0);
}

void sub_25FD72FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD72FF0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD72FE8);
}

void sub_25FD731F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD73228(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD73220);
}

void sub_25FD73430(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD73460(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD73458);
}

void sub_25FD73668(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD73698(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD73690);
}

void sub_25FD738A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD738D0(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD738C8);
}

void sub_25FD73AD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD73B08(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD73B00);
}

void sub_25FD73D10(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD73D40(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD73D38);
}

void sub_25FD73F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a18 < 0)
  {
    operator delete(__p);
  }

  std::vector<HGBinding>::~vector[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void sub_25FD73F78(_Unwind_Exception *a1)
{
  if (*(v1 - 33) < 0)
  {
    operator delete(*(v1 - 56));
    _Unwind_Resume(a1);
  }

  JUMPOUT(0x25FD73F70);
}

uint64_t Gettype0_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 6);
    while (v5 < 4)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v7 += v8;
      v6 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 32;
    for (i = v5; i > 3; i -= 4)
    {
      v13 = *(v7 + v11 - 32);
      v14 = *(v7 + v11 - 16);
      v15 = *(v7 + v11);
      v16 = *(v7 + v11 + 16);
      v17 = *(a2 + 15);
      v18 = *(a2 + 16);
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v18));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v18));
      v21 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v18));
      v22 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v16, 3), v18));
      v23 = *(a2 + 17);
      v24 = vandq_s8(v23, v19);
      v25 = *(a2 + 3);
      v26 = vmulq_f32(v13, vorrq_s8(v24, v25));
      v27 = vmulq_f32(v14, vorrq_s8(vandq_s8(v23, v20), v25));
      v28 = vmulq_f32(v15, vorrq_s8(vandq_s8(v23, v21), v25));
      v29 = vmulq_f32(v16, vorrq_s8(vandq_s8(v23, v22), v25));
      v30 = *(a2 + 5);
      v31 = *(a2 + 6);
      v32 = vmulq_f32(v31, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v26, v25), v30)));
      v33 = vmulq_f32(v31, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v27, v25), v30)));
      v34 = vmulq_f32(v31, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v28, v25), v30)));
      v35 = vmulq_f32(v31, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v29, v25), v30)));
      v36 = vcvtq_f32_s32(vcvtq_s32_f32(v32));
      v37 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
      v38 = vcvtq_f32_s32(vcvtq_s32_f32(v34));
      v39 = vcvtq_f32_s32(vcvtq_s32_f32(v35));
      v40 = *(a2 + 7);
      v41 = *(a2 + 8);
      v42 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v32, v36), v40));
      v43 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v33, v37), v40));
      v44 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v34, v38), v40));
      v45 = vrsqrteq_f32(vaddq_f32(v40, vsubq_f32(v35, v39)));
      v46 = vaddq_f32(v41, v36);
      v47 = vaddq_f32(v41, v37);
      v48 = vaddq_f32(v41, v38);
      v49 = vaddq_f32(v41, v39);
      v50 = *(a2 + 9);
      v51 = *(a2 + 10);
      v52 = vmulq_n_f32(vsubq_f32(v46, vmulq_f32(v42, v50)), COERCE_FLOAT(*a2));
      v53 = vmulq_n_f32(vsubq_f32(v47, vmulq_f32(v43, v50)), COERCE_FLOAT(*a2));
      v54 = vmulq_n_f32(vsubq_f32(v48, vmulq_f32(v44, v50)), COERCE_FLOAT(*a2));
      v55 = vmulq_n_f32(vsubq_f32(v49, vmulq_f32(v45, v50)), COERCE_FLOAT(*a2));
      v56 = vcvtq_f32_s32(vcvtq_s32_f32(v52));
      v57 = vcvtq_f32_s32(vcvtq_s32_f32(v53));
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v54));
      v59 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v60 = vsubq_f32(v56, vandq_s8(v30, vcgtq_f32(v56, v52)));
      v61 = vsubq_f32(v57, vandq_s8(v30, vcgtq_f32(v57, v53)));
      v62 = vsubq_f32(v58, vandq_s8(v30, vcgtq_f32(v58, v54)));
      v63 = vsubq_f32(v59, vandq_s8(v30, vcgtq_f32(v59, v55)));
      v64 = *(a2 + 11);
      v65 = *(a2 + 12);
      v66 = vmulq_f32(vrecpeq_f32(vsubq_f32(v64, vsubq_f32(v52, v60))), v65);
      v67 = vmulq_f32(vrecpeq_f32(vsubq_f32(v64, vsubq_f32(v53, v61))), v65);
      v68 = vmulq_f32(vrecpeq_f32(vsubq_f32(v64, vsubq_f32(v54, v62))), v65);
      v69 = vmulq_f32(vrecpeq_f32(vsubq_f32(v64, vsubq_f32(v55, v63))), v65);
      v70 = vmaxq_f32(vaddq_f32(vaddq_f32(v60, v51), vmulq_f32(v66, v66)), v25);
      v71 = vmaxq_f32(vaddq_f32(vaddq_f32(v51, v61), vmulq_f32(v67, v67)), v25);
      v72 = vmaxq_f32(vaddq_f32(vaddq_f32(v51, v62), vmulq_f32(v68, v68)), v25);
      v73 = vmaxq_f32(vaddq_f32(vaddq_f32(v51, v63), vmulq_f32(v69, v69)), v25);
      v74 = *(a2 + 13);
      v75 = *(a2 + 14);
      v76 = vminq_f32(v71, v74);
      v77 = vminq_f32(v72, v74);
      v78 = vminq_f32(v73, v74);
      v79 = vbslq_s8(v17, v26, vcvtq_s32_f32(vmulq_f32(vminq_f32(v70, v74), v75)));
      v80 = vbslq_s8(v17, v27, vcvtq_s32_f32(vmulq_f32(v76, v75)));
      v81 = vbslq_s8(v17, v28, vcvtq_s32_f32(vmulq_f32(v77, v75)));
      v82 = vbslq_s8(v17, v29, vcvtq_s32_f32(vmulq_f32(v78, v75)));
      v83 = (v6 + v11);
      v83[-2] = vbslq_s8(v17, v26, vmulq_laneq_f32(v79, v79, 3));
      v83[-1] = vbslq_s8(v17, v27, vmulq_laneq_f32(v80, v80, 3));
      *v83 = vbslq_s8(v17, v28, vmulq_laneq_f32(v81, v81, 3));
      v83[1] = vbslq_s8(v17, v29, vmulq_laneq_f32(v82, v82, 3));
      v10 += 4;
      v11 += 64;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v84 = *(a2 + 15);
      v85 = *(a2 + 3);
      v86 = vmulq_f32(*(v7 + 16 * v10), vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v10), 3), *(a2 + 16)))), v85));
      v87 = *(a2 + 5);
      v88 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vminq_f32(vmaxq_f32(v86, v85), v87)));
      v89 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
      v90 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v89), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v88, v89))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v91 = vcvtq_f32_s32(vcvtq_s32_f32(v90));
      v92 = vsubq_f32(v91, vandq_s8(v87, vcgtq_f32(v91, v90)));
      v93 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v90, v92))), *(a2 + 12));
      v94 = vbslq_s8(v84, v86, vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v92), vmulq_f32(v93, v93)), v85), *(a2 + 13)), *(a2 + 14))));
      *(v6 + 16 * v10++) = vbslq_s8(v84, v86, vmulq_laneq_f32(v94, v94, 3));
    }

    while (v10 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 22);
    v9 = 16 * *(a1 + 6);
    while (v5 < 4)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      ++v4;
      v7 += v8;
      v6 += v9;
      if (v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 32;
    for (i = v5; i > 3; i -= 4)
    {
      v13 = *(v7 + v11 - 32);
      v14 = *(v7 + v11 - 16);
      v15 = *(v7 + v11);
      v16 = *(v7 + v11 + 16);
      v17 = *(a2 + 15);
      v18 = *(a2 + 16);
      v19 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v18));
      v20 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v18));
      v21 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v15, 3), v18));
      v22 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v16, 3), v18));
      v24 = *(a2 + 17);
      v23 = *(a2 + 18);
      v25 = vmulq_f32(v20, v23);
      v26 = vmulq_f32(v21, v23);
      v27 = vmulq_f32(v22, v23);
      v28 = vandq_s8(v24, vmulq_f32(v19, v23));
      v29 = *(a2 + 3);
      v30 = vmulq_f32(v13, vorrq_s8(v28, v29));
      v31 = vmulq_f32(v14, vorrq_s8(vandq_s8(v24, v25), v29));
      v32 = vmulq_f32(v15, vorrq_s8(vandq_s8(v24, v26), v29));
      v33 = vmulq_f32(v16, vorrq_s8(vandq_s8(v24, v27), v29));
      v34 = *(a2 + 5);
      v35 = *(a2 + 6);
      v36 = vmulq_f32(v35, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v30, v29), v34)));
      v37 = vmulq_f32(v35, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v31, v29), v34)));
      v38 = vmulq_f32(v35, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v32, v29), v34)));
      v39 = vmulq_f32(v35, vcvtq_f32_s32(vminq_f32(vmaxq_f32(v33, v29), v34)));
      v40 = vcvtq_f32_s32(vcvtq_s32_f32(v36));
      v41 = vcvtq_f32_s32(vcvtq_s32_f32(v37));
      v42 = vcvtq_f32_s32(vcvtq_s32_f32(v38));
      v43 = vcvtq_f32_s32(vcvtq_s32_f32(v39));
      v44 = *(a2 + 7);
      v45 = *(a2 + 8);
      v46 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v36, v40), v44));
      v47 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v37, v41), v44));
      v48 = vrsqrteq_f32(vaddq_f32(vsubq_f32(v38, v42), v44));
      v49 = vrsqrteq_f32(vaddq_f32(v44, vsubq_f32(v39, v43)));
      v50 = vaddq_f32(v45, v40);
      v51 = vaddq_f32(v45, v41);
      v52 = vaddq_f32(v45, v42);
      v53 = vaddq_f32(v45, v43);
      v54 = *(a2 + 9);
      v55 = *(a2 + 10);
      v56 = vmulq_n_f32(vsubq_f32(v50, vmulq_f32(v46, v54)), COERCE_FLOAT(*a2));
      v57 = vmulq_n_f32(vsubq_f32(v51, vmulq_f32(v47, v54)), COERCE_FLOAT(*a2));
      v58 = vmulq_n_f32(vsubq_f32(v52, vmulq_f32(v48, v54)), COERCE_FLOAT(*a2));
      v59 = vmulq_n_f32(vsubq_f32(v53, vmulq_f32(v49, v54)), COERCE_FLOAT(*a2));
      v60 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v57));
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v58));
      v63 = vcvtq_f32_s32(vcvtq_s32_f32(v59));
      v64 = vsubq_f32(v60, vandq_s8(v34, vcgtq_f32(v60, v56)));
      v65 = vsubq_f32(v61, vandq_s8(v34, vcgtq_f32(v61, v57)));
      v66 = vsubq_f32(v62, vandq_s8(v34, vcgtq_f32(v62, v58)));
      v67 = vsubq_f32(v63, vandq_s8(v34, vcgtq_f32(v63, v59)));
      v68 = *(a2 + 11);
      v69 = *(a2 + 12);
      v70 = vmulq_f32(vrecpeq_f32(vsubq_f32(v68, vsubq_f32(v56, v64))), v69);
      v71 = vmulq_f32(vrecpeq_f32(vsubq_f32(v68, vsubq_f32(v57, v65))), v69);
      v72 = vmulq_f32(vrecpeq_f32(vsubq_f32(v68, vsubq_f32(v58, v66))), v69);
      v73 = vmulq_f32(vrecpeq_f32(vsubq_f32(v68, vsubq_f32(v59, v67))), v69);
      v74 = vmaxq_f32(vaddq_f32(vaddq_f32(v64, v55), vmulq_f32(v70, v70)), v29);
      v75 = vmaxq_f32(vaddq_f32(vaddq_f32(v55, v65), vmulq_f32(v71, v71)), v29);
      v76 = vmaxq_f32(vaddq_f32(vaddq_f32(v55, v66), vmulq_f32(v72, v72)), v29);
      v77 = vmaxq_f32(vaddq_f32(vaddq_f32(v55, v67), vmulq_f32(v73, v73)), v29);
      v78 = *(a2 + 13);
      v79 = *(a2 + 14);
      v80 = vminq_f32(v75, v78);
      v81 = vminq_f32(v76, v78);
      v82 = vminq_f32(v77, v78);
      v83 = vbslq_s8(v17, v30, vcvtq_s32_f32(vmulq_f32(vminq_f32(v74, v78), v79)));
      v84 = vbslq_s8(v17, v31, vcvtq_s32_f32(vmulq_f32(v80, v79)));
      v85 = vbslq_s8(v17, v32, vcvtq_s32_f32(vmulq_f32(v81, v79)));
      v86 = vbslq_s8(v17, v33, vcvtq_s32_f32(vmulq_f32(v82, v79)));
      v87 = (v6 + v11);
      v87[-2] = vbslq_s8(v17, v30, vmulq_laneq_f32(v83, v83, 3));
      v87[-1] = vbslq_s8(v17, v31, vmulq_laneq_f32(v84, v84, 3));
      *v87 = vbslq_s8(v17, v32, vmulq_laneq_f32(v85, v85, 3));
      v87[1] = vbslq_s8(v17, v33, vmulq_laneq_f32(v86, v86, 3));
      v10 += 4;
      v11 += 64;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

    do
    {
LABEL_10:
      v88 = *(a2 + 15);
      v89 = *(a2 + 3);
      v90 = vmulq_f32(*(v7 + 16 * v10), vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(*(v7 + 16 * v10), 3), *(a2 + 16))), *(a2 + 18))), v89));
      v91 = *(a2 + 5);
      v92 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vminq_f32(vmaxq_f32(v90, v89), v91)));
      v93 = vcvtq_f32_s32(vcvtq_s32_f32(v92));
      v94 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v93), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v92, v93))), *(a2 + 9))), COERCE_FLOAT(*a2));
      v95 = vcvtq_f32_s32(vcvtq_s32_f32(v94));
      v96 = vsubq_f32(v95, vandq_s8(v91, vcgtq_f32(v95, v94)));
      v97 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v94, v96))), *(a2 + 12));
      v98 = vbslq_s8(v88, v90, vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vaddq_f32(*(a2 + 10), v96), vmulq_f32(v97, v97)), v89), *(a2 + 13)), *(a2 + 14))));
      *(v6 + 16 * v10++) = vbslq_s8(v88, v90, vmulq_laneq_f32(v98, v98, 3));
    }

    while (v10 < v5);
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = vmulq_f32(v22, vrecpsq_f32(v22, v18));
      v25 = *(a2 + 17);
      v26 = *(a2 + 3);
      v27 = vmulq_f32(v13, vorrq_s8(vandq_s8(v25, v23), v26));
      v28 = vmulq_f32(v14, vorrq_s8(vandq_s8(v25, v24), v26));
      v29 = *(a2 + 5);
      v30 = vminq_f32(vmaxq_f32(v27, v26), v29);
      v31 = vminq_f32(vmaxq_f32(v28, v26), v29);
      v32 = vcgtq_f32(vandq_s8(v29, vceqq_f32(vdupq_lane_s32(*a2, 0), v26)), v26);
      v33 = vbslq_s8(v32, v29, v30);
      v34 = vbslq_s8(v32, v29, v31);
      v36 = *(a2 + 19);
      v35 = *(a2 + 20);
      v37 = vorrq_s8(vandq_s8(v36, v33), v29);
      v38 = vorrq_s8(vandq_s8(v36, v34), v29);
      v39 = *(a2 + 21);
      v40 = *(a2 + 22);
      v41 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v35, v34)));
      v42 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v35, v33))), v40);
      v43 = *(a2 + 23);
      v44 = *(a2 + 24);
      v45 = vandq_s8(v29, vcgtq_f32(v37, v43));
      v46 = vandq_s8(v29, vcgtq_f32(v38, v43));
      v47 = vaddq_f32(v42, v45);
      v48 = vaddq_f32(vsubq_f32(v41, v40), v46);
      v49 = vsubq_f32(vsubq_f32(v37, v29), vmulq_f32(vmulq_f32(v44, v45), v37));
      v50 = vsubq_f32(vsubq_f32(v38, v29), vmulq_f32(vmulq_f32(v44, v46), v38));
      v51 = vmulq_f32(v49, v49);
      v52 = *(a2 + 37);
      v53 = *(a2 + 38);
      v54 = *(a2 + 39);
      v55 = *(a2 + 40);
      v56 = vaddq_f32(v52, vmulq_f32(v53, v49));
      v57 = vaddq_f32(v54, vmulq_f32(v55, v49));
      v58 = vaddq_f32(v54, vmulq_f32(v55, v50));
      v59 = vaddq_f32(v52, vmulq_f32(v53, v50));
      v60 = *(a2 + 41);
      v61 = *(a2 + 42);
      v62 = vaddq_f32(v60, vmulq_f32(v61, v49));
      v63 = vaddq_f32(v60, vmulq_f32(v61, v50));
      v64 = vmulq_f32(v50, v50);
      v65 = vaddq_f32(v62, vmulq_f32(v51, vaddq_f32(v56, vmulq_f32(v51, v57))));
      v66 = vaddq_f32(v63, vmulq_f32(v64, vaddq_f32(v59, vmulq_f32(v64, v58))));
      v67 = *(a2 + 43);
      v68 = *(a2 + 44);
      v69 = vmulq_n_f32(vaddq_f32(v48, vmulq_f32(v50, vaddq_f32(v67, vmulq_f32(v50, v66)))), COERCE_FLOAT(*a2));
      v70 = *(a2 + 29);
      v71 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v47, vmulq_f32(v49, vaddq_f32(v67, vmulq_f32(v49, v65)))), COERCE_FLOAT(*a2)), v70);
      v72 = vmaxq_f32(v69, v70);
      v73 = vcvtq_f32_s32(vcvtq_s32_f32(v71));
      v74 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
      v75 = vsubq_f32(v73, vandq_s8(v29, vcgtq_f32(v73, v71)));
      v76 = vsubq_f32(v74, vandq_s8(v29, vcgtq_f32(v74, v72)));
      v77 = vsubq_f32(v71, v75);
      v78 = vsubq_f32(v72, v76);
      v79 = *(a2 + 45);
      v80 = *(a2 + 46);
      v81 = vaddq_f32(v68, vmulq_f32(v79, v77));
      v82 = vaddq_f32(v68, vmulq_f32(v79, v78));
      v83 = *(a2 + 47);
      v84 = *(a2 + 48);
      v85 = vaddq_f32(v29, vmulq_f32(v77, vaddq_f32(v84, vmulq_f32(v77, vaddq_f32(vaddq_f32(v80, vmulq_f32(v77, v83)), vmulq_f32(vmulq_f32(v77, v77), v81))))));
      v86 = *(a2 + 33);
      v87 = vmulq_f32(vaddq_f32(v29, vmulq_f32(v78, vaddq_f32(v84, vmulq_f32(v78, vaddq_f32(vaddq_f32(v80, vmulq_f32(v83, v78)), vmulq_f32(vmulq_f32(v78, v78), v82)))))), vshlq_n_s32(vaddq_s32(v86, vcvtq_s32_f32(v76)), 0x17uLL));
      v88 = vbslq_s8(v15, v27, vmulq_f32(v85, vshlq_n_s32(vaddq_s32(v86, vcvtq_s32_f32(v75)), 0x17uLL)));
      v89 = vbslq_s8(v15, v28, v87);
      v90 = (v6 + v11);
      v90[-1] = vbslq_s8(v15, v27, vmulq_laneq_f32(v88, v88, 3));
      *v90 = vbslq_s8(v15, v28, vmulq_laneq_f32(v89, v89, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v91 = 16 * v10;
    v92 = *(v7 + v91);
    v93 = *(a2 + 15);
    v94 = vmaxq_f32(vdupq_laneq_s32(v92, 3), *(a2 + 16));
    v95 = vrecpeq_f32(v94);
    v96 = vmulq_f32(v95, vrecpsq_f32(v95, v94));
    v97 = vandq_s8(*(a2 + 17), vmulq_f32(v96, vrecpsq_f32(v96, v94)));
    v98 = *(a2 + 3);
    v99 = vmulq_f32(v92, vorrq_s8(v97, v98));
    v100 = *(a2 + 5);
    v101 = vbslq_s8(vcgtq_f32(vandq_s8(v100, vceqq_f32(vdupq_lane_s32(*a2, 0), v98)), v98), v100, vminq_f32(vmaxq_f32(v99, v98), v100));
    v102 = vorrq_s8(vandq_s8(*(a2 + 19), v101), v100);
    v103 = vandq_s8(v100, vcgtq_f32(v102, *(a2 + 23)));
    v104 = vsubq_f32(vsubq_f32(v102, v100), vmulq_f32(vmulq_f32(*(a2 + 24), v103), v102));
    v105 = vmulq_f32(v104, v104);
    v106 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v101, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v101))), *(a2 + 22)), v103), vmulq_f32(v104, vaddq_f32(*(a2 + 43), vmulq_f32(v104, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v104)), vmulq_f32(v105, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v104)), vmulq_f32(v105, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v104)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v107 = vcvtq_f32_s32(vcvtq_s32_f32(v106));
    v108 = vsubq_f32(v107, vandq_s8(v100, vcgtq_f32(v107, v106)));
    v109 = vsubq_f32(v106, v108);
    v110 = vbslq_s8(v93, v99, vmulq_f32(vaddq_f32(v100, vmulq_f32(v109, vaddq_f32(*(a2 + 48), vmulq_f32(v109, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v109)), vmulq_f32(vmulq_f32(v109, v109), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v109)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v108)), 0x17uLL)));
    *(v6 + v91) = vbslq_s8(v93, v99, vmulq_laneq_f32(v110, v110, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 5);
      v28 = vminq_f32(vmaxq_f32(v25, v24), v27);
      v29 = vminq_f32(vmaxq_f32(v26, v24), v27);
      v30 = *(a2 + 19);
      v31 = *(a2 + 20);
      v32 = vorrq_s8(vandq_s8(v30, v28), v27);
      v33 = vorrq_s8(vandq_s8(v30, v29), v27);
      v34 = *(a2 + 21);
      v35 = *(a2 + 22);
      v36 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v29, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v31, v29)));
      v37 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v28, 0x17uLL)), vandq_s8(v34, vcgtq_f32(v31, v28))), v35);
      v38 = *(a2 + 23);
      v39 = *(a2 + 24);
      v40 = vandq_s8(v27, vcgtq_f32(v32, v38));
      v41 = vandq_s8(v27, vcgtq_f32(v33, v38));
      v42 = vaddq_f32(v37, v40);
      v43 = vaddq_f32(vsubq_f32(v36, v35), v41);
      v44 = vsubq_f32(vsubq_f32(v32, v27), vmulq_f32(vmulq_f32(v39, v40), v32));
      v45 = vsubq_f32(vsubq_f32(v33, v27), vmulq_f32(vmulq_f32(v39, v41), v33));
      v46 = *(a2 + 25);
      v47 = *(a2 + 26);
      v48 = vaddq_f32(v46, vmulq_f32(v47, v44));
      v49 = vaddq_f32(v46, vmulq_f32(v47, v45));
      v50 = *(a2 + 27);
      v51 = *(a2 + 28);
      v52 = vmulq_n_f32(vaddq_f32(v43, vmulq_f32(v45, vaddq_f32(vaddq_f32(v50, vmulq_f32(v45, v51)), vmulq_f32(vmulq_f32(v45, v45), v49)))), COERCE_FLOAT(*a2));
      v53 = *(a2 + 29);
      v54 = *(a2 + 30);
      v55 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v42, vmulq_f32(v44, vaddq_f32(vaddq_f32(v50, vmulq_f32(v44, v51)), vmulq_f32(vmulq_f32(v44, v44), v48)))), COERCE_FLOAT(*a2)), v53);
      v56 = vmaxq_f32(v52, v53);
      v57 = vcvtq_f32_s32(vcvtq_s32_f32(v55));
      v58 = vcvtq_f32_s32(vcvtq_s32_f32(v56));
      v59 = vsubq_f32(v57, vandq_s8(v27, vcgtq_f32(v57, v55)));
      v60 = vsubq_f32(v58, vandq_s8(v27, vcgtq_f32(v58, v56)));
      v61 = vsubq_f32(v55, v59);
      v62 = vsubq_f32(v56, v60);
      v63 = *(a2 + 31);
      v64 = *(a2 + 32);
      v65 = vmulq_f32(v62, vaddq_f32(v64, vmulq_f32(v62, vaddq_f32(v54, vmulq_f32(v63, v62)))));
      v66 = vaddq_f32(v27, vmulq_f32(v61, vaddq_f32(v64, vmulq_f32(v61, vaddq_f32(v54, vmulq_f32(v63, v61))))));
      v67 = vcvtq_s32_f32(v60);
      v68 = *(a2 + 33);
      v69 = vbslq_s8(v15, v25, vmulq_f32(v66, vshlq_n_s32(vaddq_s32(v68, vcvtq_s32_f32(v59)), 0x17uLL)));
      v70 = vbslq_s8(v15, v26, vmulq_f32(vaddq_f32(v27, v65), vshlq_n_s32(vaddq_s32(v68, v67), 0x17uLL)));
      v71 = (v6 + v11);
      v71[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v69, v69, 3));
      *v71 = vbslq_s8(v15, v26, vmulq_laneq_f32(v70, v70, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v72 = 16 * v10;
    v73 = *(v7 + v72);
    v74 = *(a2 + 15);
    v75 = vmaxq_f32(vdupq_laneq_s32(v73, 3), *(a2 + 16));
    v76 = vmulq_f32(vrecpeq_f32(v75), *(a2 + 18));
    v77 = vandq_s8(*(a2 + 17), vmulq_f32(v76, vrecpsq_f32(v76, v75)));
    v78 = *(a2 + 3);
    v79 = vmulq_f32(v73, vorrq_s8(v77, v78));
    v80 = vmaxq_f32(v79, v78);
    v81 = *(a2 + 5);
    v82 = vminq_f32(v80, v81);
    v83 = vorrq_s8(vandq_s8(*(a2 + 19), v82), v81);
    v84 = vandq_s8(v81, vcgtq_f32(v83, *(a2 + 23)));
    v85 = vsubq_f32(vsubq_f32(v83, v81), vmulq_f32(vmulq_f32(*(a2 + 24), v84), v83));
    v86 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v82, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v82))), *(a2 + 22)), v84), vmulq_f32(v85, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v85, *(a2 + 28))), vmulq_f32(vmulq_f32(v85, v85), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v85)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v87 = vcvtq_f32_s32(vcvtq_s32_f32(v86));
    v88 = vsubq_f32(v87, vandq_s8(v81, vcgtq_f32(v87, v86)));
    v89 = vsubq_f32(v86, v88);
    v90 = vbslq_s8(v74, v79, vmulq_f32(vaddq_f32(v81, vmulq_f32(v89, vaddq_f32(*(a2 + 32), vmulq_f32(v89, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v89)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v88)), 0x17uLL)));
    *(v6 + v72) = vbslq_s8(v74, v79, vmulq_laneq_f32(v90, v90, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vandq_s8(v20, vmulq_f32(v21, vrecpsq_f32(v21, v17)));
      v24 = *(a2 + 3);
      v25 = vmulq_f32(v13, vorrq_s8(v23, v24));
      v26 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v24));
      v27 = *(a2 + 5);
      v28 = *(a2 + 33);
      v29 = *(a2 + 34);
      v30 = vmulq_f32(v25, vbslq_s8(vcgtq_f32(v24, v25), v29, v27));
      v31 = vmulq_f32(v26, vbslq_s8(vcgtq_f32(v24, v26), v29, v27));
      v33 = *(a2 + 35);
      v32 = *(a2 + 36);
      v34 = vminq_f32(v30, v33);
      v35 = vminq_f32(v31, v33);
      v36 = *(a2 + 19);
      v37 = *(a2 + 20);
      v38 = vorrq_s8(vandq_s8(v36, v34), v27);
      v39 = vorrq_s8(vandq_s8(v36, v35), v27);
      v40 = *(a2 + 21);
      v41 = *(a2 + 22);
      v42 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v34)));
      v43 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v35, 0x17uLL)), vandq_s8(v40, vcgtq_f32(v37, v35)));
      v44 = *(a2 + 23);
      v45 = *(a2 + 24);
      v46 = vandq_s8(v27, vcgtq_f32(v38, v44));
      v47 = vandq_s8(v27, vcgtq_f32(v39, v44));
      v48 = vsubq_f32(v43, v41);
      v49 = vaddq_f32(vsubq_f32(v42, v41), v46);
      v50 = vsubq_f32(vsubq_f32(v38, v27), vmulq_f32(vmulq_f32(v45, v46), v38));
      v51 = vsubq_f32(vsubq_f32(v39, v27), vmulq_f32(vmulq_f32(v45, v47), v39));
      v52 = *(a2 + 25);
      v53 = *(a2 + 26);
      v54 = *(a2 + 27);
      v55 = *(a2 + 28);
      v56 = vmulq_n_f32(vaddq_f32(vaddq_f32(v48, v47), vmulq_f32(v51, vaddq_f32(vaddq_f32(v54, vmulq_f32(v51, v55)), vmulq_f32(vmulq_f32(v51, v51), vaddq_f32(v52, vmulq_f32(v53, v51)))))), COERCE_FLOAT(*a2));
      v58 = *(a2 + 29);
      v57 = *(a2 + 30);
      v59 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v49, vmulq_f32(v50, vaddq_f32(vaddq_f32(v54, vmulq_f32(v50, v55)), vmulq_f32(vmulq_f32(v50, v50), vaddq_f32(v52, vmulq_f32(v53, v50)))))), COERCE_FLOAT(*a2)), v58);
      v60 = vmaxq_f32(v56, v58);
      v61 = vcvtq_f32_s32(vcvtq_s32_f32(v59));
      v62 = vcvtq_f32_s32(vcvtq_s32_f32(v60));
      v63 = vsubq_f32(v61, vandq_s8(v27, vcgtq_f32(v61, v59)));
      v64 = vsubq_f32(v62, vandq_s8(v27, vcgtq_f32(v62, v60)));
      v65 = vsubq_f32(v59, v63);
      v66 = vsubq_f32(v60, v64);
      v67 = *(a2 + 31);
      v68 = *(a2 + 32);
      v69 = vaddq_f32(v27, vmulq_f32(v65, vaddq_f32(v68, vmulq_f32(v65, vaddq_f32(v57, vmulq_f32(v67, v65))))));
      v70 = vmulq_f32(vaddq_f32(v27, vmulq_f32(v66, vaddq_f32(v68, vmulq_f32(v66, vaddq_f32(v57, vmulq_f32(v67, v66)))))), vshlq_n_s32(vaddq_s32(v28, vcvtq_s32_f32(v64)), 0x17uLL));
      v71 = vbslq_s8(v15, v25, veorq_s8(vandq_s8(v32, v25), vmulq_f32(v69, vshlq_n_s32(vaddq_s32(v28, vcvtq_s32_f32(v63)), 0x17uLL))));
      v72 = vbslq_s8(v15, v26, veorq_s8(vandq_s8(v32, v26), v70));
      v73 = (v6 + v11);
      v73[-1] = vbslq_s8(v15, v25, vmulq_laneq_f32(v71, v71, 3));
      *v73 = vbslq_s8(v15, v26, vmulq_laneq_f32(v72, v72, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v74 = 16 * v10;
    v75 = *(v7 + v74);
    v76 = *(a2 + 15);
    v77 = vmaxq_f32(vdupq_laneq_s32(v75, 3), *(a2 + 16));
    v78 = vmulq_f32(vrecpeq_f32(v77), *(a2 + 18));
    v79 = vandq_s8(*(a2 + 17), vmulq_f32(v78, vrecpsq_f32(v78, v77)));
    v80 = *(a2 + 3);
    v81 = vmulq_f32(v75, vorrq_s8(v79, v80));
    v82 = vcgtq_f32(v80, v81);
    v83 = *(a2 + 5);
    v84 = vminq_f32(vmulq_f32(v81, vbslq_s8(v82, *(a2 + 34), v83)), *(a2 + 35));
    v85 = vorrq_s8(vandq_s8(*(a2 + 19), v84), v83);
    v86 = vandq_s8(v83, vcgtq_f32(v85, *(a2 + 23)));
    v87 = vsubq_f32(vsubq_f32(v85, v83), vmulq_f32(vmulq_f32(*(a2 + 24), v86), v85));
    v88 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v84, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v84))), *(a2 + 22)), v86), vmulq_f32(v87, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v87, *(a2 + 28))), vmulq_f32(vmulq_f32(v87, v87), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v87)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v89 = vcvtq_f32_s32(vcvtq_s32_f32(v88));
    v90 = vsubq_f32(v89, vandq_s8(v83, vcgtq_f32(v89, v88)));
    v91 = vsubq_f32(v88, v90);
    v92 = vbslq_s8(v76, v81, veorq_s8(vandq_s8(*(a2 + 36), v81), vmulq_f32(vaddq_f32(v83, vmulq_f32(v91, vaddq_f32(*(a2 + 32), vmulq_f32(v91, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v91)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v90)), 0x17uLL))));
    *(v6 + v74) = vbslq_s8(v76, v81, vmulq_laneq_f32(v92, v92, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v19 = vrecpeq_f32(v17);
      v20 = vrecpeq_f32(v18);
      v21 = vmulq_f32(v19, vrecpsq_f32(v19, v17));
      v22 = vmulq_f32(v20, vrecpsq_f32(v20, v18));
      v23 = vmulq_f32(v21, vrecpsq_f32(v21, v17));
      v24 = *(a2 + 17);
      v25 = *(a2 + 3);
      v26 = vmulq_f32(v13, vorrq_s8(vandq_s8(v24, v23), v25));
      v27 = vmulq_f32(v14, vorrq_s8(vandq_s8(v24, vmulq_f32(v22, vrecpsq_f32(v22, v18))), v25));
      v28 = *(a2 + 5);
      v29 = *(a2 + 33);
      v30 = *(a2 + 34);
      v31 = vbslq_s8(vcgtq_f32(v25, v27), v30, v28);
      v33 = *(a2 + 35);
      v32 = *(a2 + 36);
      v34 = vminq_f32(vmulq_f32(v26, vbslq_s8(vcgtq_f32(v25, v26), v30, v28)), v33);
      v35 = vcgtq_f32(vandq_s8(v28, vceqq_f32(vdupq_lane_s32(*a2, 0), v25)), v25);
      v36 = vbslq_s8(v35, v28, v34);
      v37 = vbslq_s8(v35, v28, vminq_f32(vmulq_f32(v27, v31), v33));
      v38 = *(a2 + 19);
      v39 = *(a2 + 20);
      v40 = vorrq_s8(vandq_s8(v38, v36), v28);
      v41 = *(a2 + 21);
      v42 = *(a2 + 22);
      v43 = vorrq_s8(vandq_s8(v38, v37), v28);
      v44 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v37, 0x17uLL)), vandq_s8(v41, vcgtq_f32(v39, v37)));
      v45 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v36, 0x17uLL)), vandq_s8(v41, vcgtq_f32(v39, v36))), v42);
      v46 = *(a2 + 23);
      v47 = *(a2 + 24);
      v48 = vsubq_f32(v44, v42);
      v49 = vandq_s8(v28, vcgtq_f32(v40, v46));
      v50 = vandq_s8(v28, vcgtq_f32(v43, v46));
      v51 = vaddq_f32(v45, v49);
      v52 = vsubq_f32(vsubq_f32(v40, v28), vmulq_f32(vmulq_f32(v47, v49), v40));
      v53 = vsubq_f32(vsubq_f32(v43, v28), vmulq_f32(vmulq_f32(v47, v50), v43));
      v54 = vmulq_f32(v52, v52);
      v55 = *(a2 + 37);
      v56 = *(a2 + 38);
      v57 = vaddq_f32(v55, vmulq_f32(v56, v52));
      v58 = vaddq_f32(v55, vmulq_f32(v56, v53));
      v59 = *(a2 + 39);
      v60 = *(a2 + 40);
      v61 = vaddq_f32(v59, vmulq_f32(v60, v52));
      v62 = vaddq_f32(v59, vmulq_f32(v60, v53));
      v63 = *(a2 + 41);
      v64 = *(a2 + 42);
      v65 = vaddq_f32(v63, vmulq_f32(v64, v52));
      v66 = vaddq_f32(v63, vmulq_f32(v64, v53));
      v67 = vmulq_f32(v53, v53);
      v68 = vaddq_f32(v66, vmulq_f32(v67, vaddq_f32(v58, vmulq_f32(v67, v62))));
      v69 = vmulq_f32(v52, vaddq_f32(v65, vmulq_f32(v54, vaddq_f32(v57, vmulq_f32(v54, v61)))));
      v70 = *(a2 + 43);
      v71 = *(a2 + 44);
      v72 = vmulq_n_f32(vaddq_f32(vaddq_f32(v48, v50), vmulq_f32(v53, vaddq_f32(v70, vmulq_f32(v53, v68)))), COERCE_FLOAT(*a2));
      v73 = *(a2 + 29);
      v74 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v51, vmulq_f32(v52, vaddq_f32(v70, v69))), COERCE_FLOAT(*a2)), v73);
      v75 = vmaxq_f32(v72, v73);
      v76 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
      v77 = vcvtq_f32_s32(vcvtq_s32_f32(v75));
      v78 = vsubq_f32(v76, vandq_s8(v28, vcgtq_f32(v76, v74)));
      v79 = vsubq_f32(v77, vandq_s8(v28, vcgtq_f32(v77, v75)));
      v80 = vsubq_f32(v74, v78);
      v81 = vsubq_f32(v75, v79);
      v82 = *(a2 + 45);
      v83 = *(a2 + 46);
      v84 = *(a2 + 47);
      v85 = *(a2 + 48);
      v86 = vaddq_s32(v29, vcvtq_s32_f32(v78));
      v87 = vmulq_f32(vaddq_f32(v28, vmulq_f32(v81, vaddq_f32(v85, vmulq_f32(v81, vaddq_f32(vaddq_f32(v83, vmulq_f32(v84, v81)), vmulq_f32(vmulq_f32(v81, v81), vaddq_f32(v71, vmulq_f32(v82, v81)))))))), vshlq_n_s32(vaddq_s32(v29, vcvtq_s32_f32(v79)), 0x17uLL));
      v88 = vbslq_s8(v15, v26, veorq_s8(vandq_s8(v32, v26), vmulq_f32(vaddq_f32(v28, vmulq_f32(v80, vaddq_f32(v85, vmulq_f32(v80, vaddq_f32(vaddq_f32(v83, vmulq_f32(v80, v84)), vmulq_f32(vmulq_f32(v80, v80), vaddq_f32(v71, vmulq_f32(v82, v80)))))))), vshlq_n_s32(v86, 0x17uLL))));
      v89 = vbslq_s8(v15, v27, veorq_s8(vandq_s8(v32, v27), v87));
      v90 = (v6 + v11);
      v90[-1] = vbslq_s8(v15, v26, vmulq_laneq_f32(v88, v88, 3));
      *v90 = vbslq_s8(v15, v27, vmulq_laneq_f32(v89, v89, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v91 = 16 * v10;
    v92 = *(v7 + v91);
    v93 = *(a2 + 15);
    v94 = vmaxq_f32(vdupq_laneq_s32(v92, 3), *(a2 + 16));
    v95 = vrecpeq_f32(v94);
    v96 = vmulq_f32(v95, vrecpsq_f32(v95, v94));
    v97 = *(a2 + 3);
    v98 = vmulq_f32(v92, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v96, vrecpsq_f32(v96, v94))), v97));
    v99 = *(a2 + 5);
    v100 = vbslq_s8(vcgtq_f32(vandq_s8(v99, vceqq_f32(vdupq_lane_s32(*a2, 0), v97)), v97), v99, vminq_f32(vmulq_f32(v98, vbslq_s8(vcgtq_f32(v97, v98), *(a2 + 34), v99)), *(a2 + 35)));
    v101 = vorrq_s8(vandq_s8(*(a2 + 19), v100), v99);
    v102 = vandq_s8(v99, vcgtq_f32(v101, *(a2 + 23)));
    v103 = vsubq_f32(vsubq_f32(v101, v99), vmulq_f32(vmulq_f32(*(a2 + 24), v102), v101));
    v104 = vmulq_f32(v103, v103);
    v105 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v100, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v100))), *(a2 + 22)), v102), vmulq_f32(v103, vaddq_f32(*(a2 + 43), vmulq_f32(v103, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v103)), vmulq_f32(v104, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v103)), vmulq_f32(v104, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v103)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v106 = vcvtq_f32_s32(vcvtq_s32_f32(v105));
    v107 = vsubq_f32(v106, vandq_s8(v99, vcgtq_f32(v106, v105)));
    v108 = vsubq_f32(v105, v107);
    v109 = vbslq_s8(v93, v98, veorq_s8(vandq_s8(*(a2 + 36), v98), vmulq_f32(vaddq_f32(v99, vmulq_f32(v108, vaddq_f32(*(a2 + 48), vmulq_f32(v108, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v108)), vmulq_f32(vmulq_f32(v108, v108), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v108)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v107)), 0x17uLL))));
    *(v6 + v91) = vbslq_s8(v93, v98, vmulq_laneq_f32(v109, v109, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype0_floatTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = *(a1 + 2);
    v7 = 16 * *(a1 + 22);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + v10);
        v12 = *(a2 + 71);
        v13 = *(a2 + 72);
        v14 = *(a2 + 73);
        v15 = vminq_f32(vmaxq_f32(vdupq_laneq_s32(vmaxq_f32(v11, v12), 3), v13), v14);
        v16 = vminq_f32(vmaxq_f32(vrecpeq_f32(v15), v13), v14);
        v17 = vminq_f32(vmaxq_f32(vmulq_f32(v16, vrecpsq_f32(v15, v16)), v13), v14);
        v18 = vmulq_f32(v17, vrecpsq_f32(v15, v17));
        v18.i32[3] = 1.0;
        v19 = vmulq_f32(v11, v18);
        v20 = *(a2 + 50);
        v21 = *(a2 + 5);
        v22 = vbslq_s8(vcgtq_f32(vandq_s8(v21, vceqq_f32(vdupq_lane_s32(*a2, 0), v20)), v20), v21, vminq_f32(vmulq_f32(v19, vbslq_s8(vcgtq_f32(v20, v19), *(a2 + 34), v21)), *(a2 + 35)));
        v23 = *(a2 + 52);
        v24 = vcgtq_f32(*(a2 + 20), v22);
        v25 = vmulq_f32(v22, vaddq_f32(v21, vandq_s8(*(a2 + 49), v24)));
        v26 = vorrq_s8(vandq_s8(*(a2 + 19), v25), v21);
        v27 = vaddq_f32(vsubq_f32(vaddq_f32(vandq_s8(*(a2 + 21), vceqq_f32(v22, *(a2 + 21))), vsubq_f32(vsubq_f32(vbicq_s8(vcgeq_f32(v22, v20), *(a2 + 51)), vandq_s8(*(a2 + 21), vceqq_f32(v22, v20))), vandq_s8(v23, v24))), *(a2 + 22)), vcvtq_f32_u32(vshrq_n_u32(v25, 0x17uLL)));
        v28 = vandq_s8(v21, vcgtq_f32(v26, *(a2 + 23)));
        v29 = vaddq_f32(v27, v28);
        v30 = vsubq_f32(vsubq_f32(v26, v21), vmulq_f32(vmulq_f32(*(a2 + 24), v28), v26));
        v31 = vmulq_f32(v30, v30);
        v32 = vmulq_n_f32(vaddq_f32(v29, vmulq_f32(v30, vaddq_f32(*(a2 + 61), vmulq_f32(v30, vaddq_f32(vaddq_f32(vaddq_f32(*(a2 + 59), vmulq_f32(*(a2 + 60), v30)), vmulq_f32(v31, vaddq_f32(*(a2 + 57), vmulq_f32(*(a2 + 58), v30)))), vmulq_f32(vmulq_f32(v31, v31), vaddq_f32(vaddq_f32(*(a2 + 55), vmulq_f32(*(a2 + 56), v30)), vmulq_f32(v31, vaddq_f32(*(a2 + 53), vmulq_f32(*(a2 + 54), v30)))))))))), COERCE_FLOAT(*a2));
        v33 = vminq_f32(vmaxq_f32(v32, *(a2 + 62)), *(a2 + 63));
        v34 = vcvtq_f32_s32(vcvtq_s32_f32(v33));
        v35 = vsubq_f32(v34, vandq_s8(v21, vcgtq_f32(v34, v33)));
        v36 = vsubq_f32(v33, v35);
        v37 = vmulq_f32(v36, v36);
        v38 = vcgtq_f32(*(a2 + 70), v35);
        v39 = veorq_s8(vandq_s8(*(a2 + 36), v19), vbslq_s8(vcgtq_f32(vandq_s8(v21, vceqq_f32(v32, v32)), v20), vmulq_f32(vaddq_f32(v21, vandq_s8(v12, v38)), vmulq_f32(vaddq_f32(v21, vmulq_f32(v36, vaddq_f32(vaddq_f32(*(a2 + 68), vmulq_f32(v36, *(a2 + 69))), vmulq_f32(v37, vaddq_f32(vaddq_f32(*(a2 + 66), vmulq_f32(*(a2 + 67), v36)), vmulq_f32(v37, vaddq_f32(*(a2 + 64), vmulq_f32(*(a2 + 65), v36)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(vaddq_f32(v35, vandq_s8(v23, v38)))), 0x17uLL))), v32));
        v40 = *(a2 + 15);
        v41 = vbslq_s8(v40, v19, v39);
        *(v6 + v10) = vbslq_s8(v40, v19, vmulq_laneq_f32(v41, v41, 3));
        v10 += 16;
      }

      while (v9 != v10);
      ++v4;
      v5 += v7;
      v6 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t Gettype1_fast_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v16));
      v19 = *(a2 + 17);
      v20 = *(a2 + 3);
      v21 = vmulq_f32(v14, vorrq_s8(vandq_s8(v19, v18), v20));
      v22 = vmulq_f32(v13, vorrq_s8(vandq_s8(v19, vrecpeq_f32(v17)), v20));
      v23 = *(a2 + 50);
      v24 = *(a2 + 5);
      v25 = *(a2 + 6);
      v26 = vminq_f32(vmaxq_f32(v21, v23), v24);
      v27 = vdupq_lane_s32(*a2, 1);
      v28 = vminq_f32(vmaxq_f32(v22, v23), v24);
      v29 = vmulq_f32(v25, vcvtq_f32_s32(vaddq_f32(v26, v27)));
      v30 = vmulq_f32(v25, vcvtq_f32_s32(vaddq_f32(v28, v27)));
      v31 = vcvtq_f32_s32(vcvtq_s32_f32(v29));
      v32 = vcvtq_f32_s32(vcvtq_s32_f32(v30));
      v33 = *(a2 + 7);
      v34 = *(a2 + 8);
      v35 = vaddq_f32(v33, vsubq_f32(v29, v31));
      v36 = vaddq_f32(v33, vsubq_f32(v30, v32));
      v37 = *(a2 + 74);
      v14.i64[0] = vbslq_s8(v37, v14, v20).u64[0];
      v38 = vaddq_f32(v34, v31);
      v39 = vaddq_f32(v34, v32);
      v13.i64[0] = vbslq_s8(v37, v13, v20).u64[0];
      v41 = *(a2 + 9);
      v40 = *(a2 + 10);
      v42 = vmulq_n_f32(vsubq_f32(v38, vmulq_f32(vrsqrteq_f32(v35), v41)), COERCE_FLOAT(*a2));
      v43 = vmulq_n_f32(vsubq_f32(v39, vmulq_f32(vrsqrteq_f32(v36), v41)), COERCE_FLOAT(*a2));
      v44 = vcvtq_f32_s32(vcvtq_s32_f32(v42));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v46 = vsubq_f32(v44, vandq_s8(v24, vcgtq_f32(v44, v42)));
      v47 = vsubq_f32(v45, vandq_s8(v24, vcgtq_f32(v45, v43)));
      v48 = vsubq_f32(v42, v46);
      v49 = vsubq_f32(v43, v47);
      v50 = vaddq_f32(v40, v46);
      v51 = vaddq_f32(v40, v47);
      v52 = *(a2 + 11);
      v53 = *(a2 + 12);
      v54 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, v48)), v53);
      v55 = vmulq_f32(vrecpeq_f32(vsubq_f32(v52, v49)), v53);
      v56 = vaddq_f32(v51, vmulq_f32(v55, v55));
      v57 = vmaxq_f32(vaddq_f32(v50, vmulq_f32(v54, v54)), v23);
      v58 = *(a2 + 13);
      v59 = *(a2 + 14);
      v60 = vdupq_lane_s32(*(a2 + 16), 1);
      v61 = vbslq_s8(v15, v21, vminq_f32(vbslq_s8(vcgtq_f32(v23, vsubq_f32(v26, v60)), vdupq_lane_s32(*v14.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v57, v58), v59)), *a2, 3)), v24));
      v62 = vbslq_s8(v15, v22, vminq_f32(vbslq_s8(vcgtq_f32(v23, vsubq_f32(v28, v60)), vdupq_lane_s32(*v13.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v56, v23), v58), v59)), *a2, 3)), v24));
      v63 = (v6 + v11);
      v63[-1] = vbslq_s8(v15, v21, vmulq_laneq_f32(v61, v61, 3));
      *v63 = vbslq_s8(v15, v22, vmulq_laneq_f32(v62, v62, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v64 = 16 * v10;
    v65 = *(v7 + v64);
    v66 = *(a2 + 15);
    v67 = *(a2 + 3);
    v68 = vmulq_f32(v65, vorrq_s8(vandq_s8(*(a2 + 17), vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v65, 3), *(a2 + 16)))), v67));
    v65.i64[0] = vbslq_s8(*(a2 + 74), v65, v67).u64[0];
    v69 = *(a2 + 50);
    v70 = *(a2 + 5);
    v71 = vminq_f32(vmaxq_f32(v68, v69), v70);
    v72 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v71, vdupq_lane_s32(*a2, 1))));
    v73 = vcvtq_f32_s32(vcvtq_s32_f32(v72));
    v74 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v73), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v72, v73))), *(a2 + 9))), COERCE_FLOAT(*a2));
    v75 = vcvtq_f32_s32(vcvtq_s32_f32(v74));
    v76 = vsubq_f32(v75, vandq_s8(v70, vcgtq_f32(v75, v74)));
    v77 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v74, v76))), *(a2 + 12));
    v78 = vbslq_s8(v66, v68, vminq_f32(vbslq_s8(vcgtq_f32(v69, vsubq_f32(v71, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v65.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v77, v77), vaddq_f32(*(a2 + 10), v76)), v69), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v70));
    *(v6 + v64) = vbslq_s8(v66, v68, vmulq_laneq_f32(v78, v78, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype1_fixed_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v14, 3), v16));
      v18 = vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v13, 3), v16));
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = *(a2 + 3);
      v22 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v17, v19)), v21));
      v23 = vmulq_f32(v13, vorrq_s8(vandq_s8(v20, vmulq_f32(v18, v19)), v21));
      v24 = *(a2 + 50);
      v25 = *(a2 + 5);
      v26 = *(a2 + 6);
      v27 = vminq_f32(vmaxq_f32(v22, v24), v25);
      v28 = vdupq_lane_s32(*a2, 1);
      v29 = vminq_f32(vmaxq_f32(v23, v24), v25);
      v30 = vmulq_f32(v26, vcvtq_f32_s32(vaddq_f32(v27, v28)));
      v31 = vmulq_f32(v26, vcvtq_f32_s32(vaddq_f32(v29, v28)));
      v32 = vcvtq_f32_s32(vcvtq_s32_f32(v30));
      v33 = vcvtq_f32_s32(vcvtq_s32_f32(v31));
      v34 = *(a2 + 7);
      v35 = *(a2 + 8);
      v36 = vaddq_f32(v34, vsubq_f32(v30, v32));
      v37 = vaddq_f32(v34, vsubq_f32(v31, v33));
      v38 = *(a2 + 74);
      v14.i64[0] = vbslq_s8(v38, v14, v21).u64[0];
      v39 = vaddq_f32(v35, v32);
      v40 = vaddq_f32(v35, v33);
      v13.i64[0] = vbslq_s8(v38, v13, v21).u64[0];
      v42 = *(a2 + 9);
      v41 = *(a2 + 10);
      v43 = vmulq_n_f32(vsubq_f32(v39, vmulq_f32(vrsqrteq_f32(v36), v42)), COERCE_FLOAT(*a2));
      v44 = vmulq_n_f32(vsubq_f32(v40, vmulq_f32(vrsqrteq_f32(v37), v42)), COERCE_FLOAT(*a2));
      v45 = vcvtq_f32_s32(vcvtq_s32_f32(v43));
      v46 = vcvtq_f32_s32(vcvtq_s32_f32(v44));
      v47 = vsubq_f32(v45, vandq_s8(v25, vcgtq_f32(v45, v43)));
      v48 = vsubq_f32(v46, vandq_s8(v25, vcgtq_f32(v46, v44)));
      v49 = vsubq_f32(v43, v47);
      v50 = vsubq_f32(v44, v48);
      v51 = vaddq_f32(v41, v47);
      v52 = vaddq_f32(v41, v48);
      v53 = *(a2 + 11);
      v54 = *(a2 + 12);
      v55 = vmulq_f32(vrecpeq_f32(vsubq_f32(v53, v49)), v54);
      v56 = vmulq_f32(vrecpeq_f32(vsubq_f32(v53, v50)), v54);
      v57 = vaddq_f32(v52, vmulq_f32(v56, v56));
      v58 = vmaxq_f32(vaddq_f32(v51, vmulq_f32(v55, v55)), v24);
      v59 = *(a2 + 13);
      v60 = *(a2 + 14);
      v61 = vdupq_lane_s32(*(a2 + 16), 1);
      v62 = vbslq_s8(v15, v22, vminq_f32(vbslq_s8(vcgtq_f32(v24, vsubq_f32(v27, v61)), vdupq_lane_s32(*v14.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(v58, v59), v60)), *a2, 3)), v25));
      v63 = vbslq_s8(v15, v23, vminq_f32(vbslq_s8(vcgtq_f32(v24, vsubq_f32(v29, v61)), vdupq_lane_s32(*v13.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(v57, v24), v59), v60)), *a2, 3)), v25));
      v64 = (v6 + v11);
      v64[-1] = vbslq_s8(v15, v22, vmulq_laneq_f32(v62, v62, 3));
      *v64 = vbslq_s8(v15, v23, vmulq_laneq_f32(v63, v63, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v65 = 16 * v10;
    v66 = *(v7 + v65);
    v67 = *(a2 + 15);
    v68 = *(a2 + 3);
    v69 = vmulq_f32(v66, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(vrecpeq_f32(vmaxq_f32(vdupq_laneq_s32(v66, 3), *(a2 + 16))), *(a2 + 18))), v68));
    v66.i64[0] = vbslq_s8(*(a2 + 74), v66, v68).u64[0];
    v70 = *(a2 + 50);
    v71 = *(a2 + 5);
    v72 = vminq_f32(vmaxq_f32(v69, v70), v71);
    v73 = vmulq_f32(*(a2 + 6), vcvtq_f32_s32(vaddq_f32(v72, vdupq_lane_s32(*a2, 1))));
    v74 = vcvtq_f32_s32(vcvtq_s32_f32(v73));
    v75 = vmulq_n_f32(vsubq_f32(vaddq_f32(*(a2 + 8), v74), vmulq_f32(vrsqrteq_f32(vaddq_f32(*(a2 + 7), vsubq_f32(v73, v74))), *(a2 + 9))), COERCE_FLOAT(*a2));
    v76 = vcvtq_f32_s32(vcvtq_s32_f32(v75));
    v77 = vsubq_f32(v76, vandq_s8(v71, vcgtq_f32(v76, v75)));
    v78 = vmulq_f32(vrecpeq_f32(vsubq_f32(*(a2 + 11), vsubq_f32(v75, v77))), *(a2 + 12));
    v79 = vbslq_s8(v67, v69, vminq_f32(vbslq_s8(vcgtq_f32(v70, vsubq_f32(v72, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v66.f32, 0), vmulq_laneq_f32(vcvtq_s32_f32(vmulq_f32(vminq_f32(vmaxq_f32(vaddq_f32(vmulq_f32(v78, v78), vaddq_f32(*(a2 + 10), v77)), v70), *(a2 + 13)), *(a2 + 14))), *a2, 3)), v71));
    *(v6 + v65) = vbslq_s8(v67, v69, vmulq_laneq_f32(v79, v79, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype1_nice_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = 16 * *(a1 + 22);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + v10);
        v12 = *(a2 + 15);
        v13 = vmaxq_f32(vdupq_laneq_s32(v11, 3), *(a2 + 16));
        v14 = vrecpeq_f32(v13);
        v15 = vrecpsq_f32(v14, v13);
        v16 = vmulq_f32(v14, v15);
        v17 = vandq_s8(*(a2 + 17), vmulq_f32(v16, vrecpsq_f32(v16, v13)));
        v18 = *(a2 + 3);
        v19 = vmulq_f32(v11, vorrq_s8(v17, v18));
        v17.i64[0] = vbslq_s8(*(a2 + 74), v15, v18).u64[0];
        v20 = *(a2 + 75);
        v21 = *(a2 + 5);
        v22 = vminq_f32(vmaxq_f32(v19, v20), v21);
        v23 = vbslq_s8(vcgtq_f32(vandq_s8(v21, vceqq_f32(vdupq_lane_s32(*a2, 0), v20)), v20), v21, vaddq_f32(v22, vdupq_lane_s32(*a2, 1)));
        v24 = vorrq_s8(vandq_s8(*(a2 + 19), v23), v21);
        v25 = vandq_s8(v21, vcgtq_f32(v24, *(a2 + 23)));
        v26 = vsubq_f32(vsubq_f32(v24, v21), vmulq_f32(vmulq_f32(*(a2 + 24), v25), v24));
        v27 = vmulq_f32(v26, v26);
        v28 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v23, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v23))), *(a2 + 22)), v25), vmulq_f32(v26, vaddq_f32(*(a2 + 43), vmulq_f32(v26, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v26)), vmulq_f32(v27, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v26)), vmulq_f32(v27, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v26)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
        v29 = vcvtq_f32_s32(vcvtq_s32_f32(v28));
        v30 = vsubq_f32(v29, vandq_s8(v21, vcgtq_f32(v29, v28)));
        v31 = vsubq_f32(v28, v30);
        v32 = vbslq_s8(v12, v19, vminq_f32(vbslq_s8(vcgtq_f32(v20, vsubq_f32(v22, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v17.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v21, vmulq_f32(v31, vaddq_f32(*(a2 + 48), vmulq_f32(v31, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v31)), vmulq_f32(vmulq_f32(v31, v31), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v31)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v30)), 0x17uLL)), *a2, 3)), v21));
        *(v7 + v10) = vbslq_s8(v12, v19, vmulq_laneq_f32(v32, v32, 3));
        v10 += 16;
      }

      while (v9 != v10);
      ++v4;
      v5 += v6;
      v7 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}

uint64_t Gettype1_half_satTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v13 = *(v7 + v11 - 16);
      v14 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vrecpsq_f32(v21, v17);
      v24 = vrecpsq_f32(v22, v18);
      v25 = *(a2 + 3);
      v26 = vmulq_f32(v13, vorrq_s8(vandq_s8(v20, vmulq_f32(v21, v23)), v25));
      v27 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, vmulq_f32(v22, v24)), v25));
      v28 = *(a2 + 50);
      v29 = *(a2 + 5);
      v30 = vminq_f32(vmaxq_f32(v26, v28), v29);
      v31 = vminq_f32(vmaxq_f32(v27, v28), v29);
      v32 = vdupq_lane_s32(*a2, 1);
      v33 = vaddq_f32(v30, v32);
      v34 = vaddq_f32(v31, v32);
      v35 = *(a2 + 19);
      v36 = *(a2 + 20);
      v37 = vorrq_s8(vandq_s8(v35, v33), v29);
      v38 = vorrq_s8(vandq_s8(v35, v34), v29);
      v39 = *(a2 + 21);
      v40 = *(a2 + 22);
      v41 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v34, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v36, v34)));
      v42 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v33, 0x17uLL)), vandq_s8(v39, vcgtq_f32(v36, v33))), v40);
      v43 = *(a2 + 23);
      v44 = *(a2 + 24);
      v45 = vandq_s8(v29, vcgtq_f32(v37, v43));
      v46 = vandq_s8(v29, vcgtq_f32(v38, v43));
      v47 = vaddq_f32(v42, v45);
      v48 = vaddq_f32(vsubq_f32(v41, v40), v46);
      v49 = vsubq_f32(vsubq_f32(v37, v29), vmulq_f32(vmulq_f32(v44, v45), v37));
      v50 = vsubq_f32(vsubq_f32(v38, v29), vmulq_f32(vmulq_f32(v44, v46), v38));
      v51 = *(a2 + 25);
      v52 = *(a2 + 26);
      v53 = vaddq_f32(v51, vmulq_f32(v52, v49));
      v54 = vaddq_f32(v51, vmulq_f32(v52, v50));
      v55 = *(a2 + 27);
      v56 = *(a2 + 28);
      v57 = vaddq_f32(v55, vmulq_f32(v56, v49));
      v58 = vaddq_f32(v55, vmulq_f32(v56, v50));
      v59 = *(a2 + 74);
      v23.i64[0] = vbslq_s8(v59, v23, v25).u64[0];
      v60 = vmulq_n_f32(vaddq_f32(v48, vmulq_f32(v50, vaddq_f32(v58, vmulq_f32(vmulq_f32(v50, v50), v54)))), COERCE_FLOAT(*a2));
      v61 = *(a2 + 29);
      v62 = *(a2 + 30);
      v63 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v47, vmulq_f32(v49, vaddq_f32(v57, vmulq_f32(vmulq_f32(v49, v49), v53)))), COERCE_FLOAT(*a2)), v61);
      v64 = vmaxq_f32(v60, v61);
      v65 = vcvtq_f32_s32(vcvtq_s32_f32(v63));
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
      v67 = vsubq_f32(v65, vandq_s8(v29, vcgtq_f32(v65, v63)));
      v68 = vsubq_f32(v66, vandq_s8(v29, vcgtq_f32(v66, v64)));
      v24.i64[0] = vbslq_s8(v59, v24, v25).u64[0];
      v69 = vsubq_f32(v63, v67);
      v70 = vsubq_f32(v64, v68);
      v71 = *(a2 + 31);
      v72 = *(a2 + 32);
      v73 = vmulq_f32(v70, vaddq_f32(v72, vmulq_f32(v70, vaddq_f32(v62, vmulq_f32(v71, v70)))));
      v74 = vaddq_f32(v29, vmulq_f32(v69, vaddq_f32(v72, vmulq_f32(v69, vaddq_f32(v62, vmulq_f32(v71, v69))))));
      v75 = *(a2 + 33);
      v76 = vdupq_lane_s32(*(a2 + 16), 1);
      v77 = vcgtq_f32(v28, vsubq_f32(v30, v76));
      v78 = vcgtq_f32(v28, vsubq_f32(v31, v76));
      v79 = vminq_f32(vbslq_s8(v77, vdupq_lane_s32(*v23.f32, 0), vmulq_laneq_f32(vmulq_f32(v74, vshlq_n_s32(vaddq_s32(v75, vcvtq_s32_f32(v67)), 0x17uLL)), *a2, 3)), v29);
      v80 = vminq_f32(vbslq_s8(v78, vdupq_lane_s32(*v24.f32, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v29, v73), vshlq_n_s32(vaddq_s32(v75, vcvtq_s32_f32(v68)), 0x17uLL)), *a2, 3)), v29);
      v81 = vbslq_s8(v15, v26, v79);
      v82 = vbslq_s8(v15, v27, v80);
      v83 = (v6 + v11);
      v83[-1] = vbslq_s8(v15, v26, vmulq_laneq_f32(v81, v81, 3));
      *v83 = vbslq_s8(v15, v27, vmulq_laneq_f32(v82, v82, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v84 = 16 * v10;
    v85 = *(v7 + v84);
    v86 = *(a2 + 15);
    v87 = vmaxq_f32(vdupq_laneq_s32(v85, 3), *(a2 + 16));
    v88 = vmulq_f32(vrecpeq_f32(v87), *(a2 + 18));
    v89 = vrecpsq_f32(v88, v87);
    v90 = *(a2 + 3);
    v91 = vmulq_f32(v85, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v88, v89)), v90));
    v89.i64[0] = vbslq_s8(*(a2 + 74), v89, v90).u64[0];
    v92 = *(a2 + 50);
    v93 = *(a2 + 5);
    v94 = vminq_f32(vmaxq_f32(v91, v92), v93);
    v95 = vaddq_f32(v94, vdupq_lane_s32(*a2, 1));
    v96 = vorrq_s8(vandq_s8(*(a2 + 19), v95), v93);
    v97 = vandq_s8(v93, vcgtq_f32(v96, *(a2 + 23)));
    v98 = vsubq_f32(vsubq_f32(v96, v93), vmulq_f32(vmulq_f32(*(a2 + 24), v97), v96));
    v99 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v95, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v95))), *(a2 + 22)), v97), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(*(a2 + 28), v98)), vmulq_f32(vmulq_f32(v98, v98), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v98)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v100 = vcvtq_f32_s32(vcvtq_s32_f32(v99));
    v101 = vsubq_f32(v100, vandq_s8(v93, vcgtq_f32(v100, v99)));
    v102 = vsubq_f32(v99, v101);
    v103 = vbslq_s8(v86, v91, vminq_f32(vbslq_s8(vcgtq_f32(v92, vsubq_f32(v94, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v89.f32, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v93, vmulq_f32(v102, vaddq_f32(*(a2 + 32), vmulq_f32(v102, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v102)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v101)), 0x17uLL)), *a2, 3)), v93));
    *(v6 + v84) = vbslq_s8(v86, v91, vmulq_laneq_f32(v103, v103, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype1_halfTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 2) - *a1;
    v6 = *(a1 + 2);
    v7 = *(a1 + 10);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * *(a1 + 22);
    while (v5 < 2)
    {
      v10 = 0;
      if (v5 > 0)
      {
        goto LABEL_10;
      }

LABEL_3:
      v7 += v9;
      v6 += v8;
      if (++v4 == v3)
      {
        return 0;
      }
    }

    v10 = 0;
    v11 = 16;
    for (i = v5; i > 1; i -= 2)
    {
      v14 = *(v7 + v11 - 16);
      v13 = *(v7 + v11);
      v15 = *(a2 + 15);
      v16 = *(a2 + 16);
      v17 = vmaxq_f32(vdupq_laneq_s32(v14, 3), v16);
      v18 = vmaxq_f32(vdupq_laneq_s32(v13, 3), v16);
      v20 = *(a2 + 17);
      v19 = *(a2 + 18);
      v21 = vmulq_f32(vrecpeq_f32(v17), v19);
      v22 = vmulq_f32(vrecpeq_f32(v18), v19);
      v23 = vrecpsq_f32(v21, v17);
      v24 = vrecpsq_f32(v22, v18);
      v25 = vmulq_f32(v21, v23);
      v26 = vandq_s8(v20, vmulq_f32(v22, v24));
      v27 = *(a2 + 3);
      v28 = vmulq_f32(v14, vorrq_s8(vandq_s8(v20, v25), v27));
      v29 = vmulq_f32(v13, vorrq_s8(v26, v27));
      v30 = *(a2 + 75);
      v31 = vbslq_s8(*(a2 + 74), v23, v30);
      v32 = vbslq_s8(*(a2 + 74), v24, v30);
      v33 = vminq_f32(vmaxq_f32(v28, v30), vdupq_laneq_s32(v31, 3));
      v34 = vminq_f32(vmaxq_f32(v29, v30), vdupq_laneq_s32(v32, 3));
      v35 = vdupq_lane_s32(*a2, 1);
      v36 = vaddq_f32(v33, v35);
      v37 = *(a2 + 19);
      v38 = *(a2 + 20);
      v39 = vaddq_f32(v34, v35);
      v40 = *(a2 + 5);
      v41 = vorrq_s8(vandq_s8(v37, v36), v40);
      v42 = vorrq_s8(vandq_s8(v37, v39), v40);
      v43 = *(a2 + 21);
      v44 = *(a2 + 22);
      v45 = vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v39, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v38, v39)));
      v46 = vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v36, 0x17uLL)), vandq_s8(v43, vcgtq_f32(v38, v36))), v44);
      v47 = *(a2 + 23);
      v48 = *(a2 + 24);
      v49 = vsubq_f32(v45, v44);
      v50 = vandq_s8(v40, vcgtq_f32(v41, v47));
      v51 = vandq_s8(v40, vcgtq_f32(v42, v47));
      v52 = vaddq_f32(v46, v50);
      v53 = vsubq_f32(vsubq_f32(v41, v40), vmulq_f32(vmulq_f32(v48, v50), v41));
      v54 = vsubq_f32(vsubq_f32(v42, v40), vmulq_f32(vmulq_f32(v48, v51), v42));
      v55 = *(a2 + 25);
      v56 = *(a2 + 26);
      v57 = vaddq_f32(v55, vmulq_f32(v56, v53));
      v58 = vaddq_f32(v55, vmulq_f32(v56, v54));
      v59 = *(a2 + 27);
      v60 = *(a2 + 28);
      v61 = vmulq_n_f32(vaddq_f32(vaddq_f32(v49, v51), vmulq_f32(v54, vaddq_f32(vaddq_f32(v59, vmulq_f32(v54, v60)), vmulq_f32(vmulq_f32(v54, v54), v58)))), COERCE_FLOAT(*a2));
      v62 = *(a2 + 29);
      v63 = *(a2 + 30);
      v64 = vmaxq_f32(vmulq_n_f32(vaddq_f32(v52, vmulq_f32(v53, vaddq_f32(vaddq_f32(v59, vmulq_f32(v53, v60)), vmulq_f32(vmulq_f32(v53, v53), v57)))), COERCE_FLOAT(*a2)), v62);
      v65 = vmaxq_f32(v61, v62);
      v66 = vcvtq_f32_s32(vcvtq_s32_f32(v64));
      v67 = vcvtq_f32_s32(vcvtq_s32_f32(v65));
      v68 = vsubq_f32(v66, vandq_s8(v40, vcgtq_f32(v66, v64)));
      v69 = vsubq_f32(v67, vandq_s8(v40, vcgtq_f32(v67, v65)));
      v70 = vsubq_f32(v64, v68);
      v71 = vsubq_f32(v65, v69);
      v72 = *(a2 + 31);
      v73 = *(a2 + 32);
      v74 = vmulq_f32(v71, vaddq_f32(v73, vmulq_f32(v71, vaddq_f32(v63, vmulq_f32(v72, v71)))));
      v75 = vaddq_f32(v40, vmulq_f32(v70, vaddq_f32(v73, vmulq_f32(v70, vaddq_f32(v63, vmulq_f32(v72, v70))))));
      v76 = vcvtq_s32_f32(v69);
      v77 = *(a2 + 33);
      v78 = vdupq_lane_s32(*(a2 + 16), 1);
      v79 = vcgtq_f32(v30, vsubq_f32(v33, v78));
      v80 = vbslq_s8(vcgtq_f32(v30, vsubq_f32(v34, v78)), vdupq_lane_s32(*v32.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v40, v74), vshlq_n_s32(vaddq_s32(v77, v76), 0x17uLL)), *a2, 3));
      v81 = vbslq_s8(v15, v28, vbslq_s8(v79, vdupq_lane_s32(*v31.i8, 0), vmulq_laneq_f32(vmulq_f32(v75, vshlq_n_s32(vaddq_s32(v77, vcvtq_s32_f32(v68)), 0x17uLL)), *a2, 3)));
      v82 = vbslq_s8(v15, v29, v80);
      v83 = (v6 + v11);
      v83[-1] = vbslq_s8(v15, v28, vmulq_laneq_f32(v81, v81, 3));
      *v83 = vbslq_s8(v15, v29, vmulq_laneq_f32(v82, v82, 3));
      v10 += 2;
      v11 += 32;
    }

    if (v10 >= v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v84 = 16 * v10;
    v85 = *(v7 + v84);
    v86 = *(a2 + 15);
    v87 = vmaxq_f32(vdupq_laneq_s32(v85, 3), *(a2 + 16));
    v88 = vmulq_f32(vrecpeq_f32(v87), *(a2 + 18));
    v89 = vrecpsq_f32(v88, v87);
    v90 = vmulq_f32(v85, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v88, v89)), *(a2 + 3)));
    v91 = *(a2 + 75);
    v92 = vbslq_s8(*(a2 + 74), v89, v91);
    v93 = vminq_f32(vmaxq_f32(v90, v91), vdupq_laneq_s32(v92, 3));
    v94 = vaddq_f32(v93, vdupq_lane_s32(*a2, 1));
    v95 = *(a2 + 5);
    v96 = vorrq_s8(vandq_s8(*(a2 + 19), v94), v95);
    v97 = vandq_s8(v95, vcgtq_f32(v96, *(a2 + 23)));
    v98 = vsubq_f32(vsubq_f32(v96, v95), vmulq_f32(vmulq_f32(*(a2 + 24), v97), v96));
    v99 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v94, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v94))), *(a2 + 22)), v97), vmulq_f32(v98, vaddq_f32(vaddq_f32(*(a2 + 27), vmulq_f32(v98, *(a2 + 28))), vmulq_f32(vmulq_f32(v98, v98), vaddq_f32(*(a2 + 25), vmulq_f32(*(a2 + 26), v98)))))), COERCE_FLOAT(*a2)), *(a2 + 29));
    v100 = vcvtq_f32_s32(vcvtq_s32_f32(v99));
    v101 = vsubq_f32(v100, vandq_s8(v95, vcgtq_f32(v100, v99)));
    v102 = vsubq_f32(v99, v101);
    v103 = vbslq_s8(v86, v90, vbslq_s8(vcgtq_f32(v91, vsubq_f32(v93, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v92.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v95, vmulq_f32(v102, vaddq_f32(*(a2 + 32), vmulq_f32(v102, vaddq_f32(*(a2 + 30), vmulq_f32(*(a2 + 31), v102)))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v101)), 0x17uLL)), *a2, 3)));
    *(v6 + v84) = vbslq_s8(v86, v90, vmulq_laneq_f32(v103, v103, 3));
    goto LABEL_3;
  }

  return 0;
}

uint64_t Gettype1_niceTile(HGTile *a1, HGToneCurve::State *a2, HGNode *a3)
{
  v3 = *(a1 + 3) - *(a1 + 1);
  if (v3 >= 1 && *(a1 + 2) - *a1 >= 1)
  {
    v4 = 0;
    v5 = *(a1 + 10);
    v6 = 16 * *(a1 + 22);
    v7 = *(a1 + 2);
    v8 = 16 * *(a1 + 6);
    v9 = 16 * (*(a1 + 2) - *a1);
    do
    {
      v10 = 0;
      do
      {
        v11 = *(v5 + v10);
        v12 = *(a2 + 15);
        v13 = vmaxq_f32(vdupq_laneq_s32(v11, 3), *(a2 + 16));
        v14 = vrecpeq_f32(v13);
        v15 = vrecpsq_f32(v14, v13);
        v16 = vmulq_f32(v14, v15);
        v17 = vmulq_f32(v11, vorrq_s8(vandq_s8(*(a2 + 17), vmulq_f32(v16, vrecpsq_f32(v16, v13))), *(a2 + 3)));
        v18 = *(a2 + 75);
        v19 = vbslq_s8(*(a2 + 74), v15, v18);
        v20 = vminq_f32(vmaxq_f32(v17, v18), vdupq_laneq_s32(v19, 3));
        v21 = *(a2 + 5);
        v22 = vbslq_s8(vcgtq_f32(vandq_s8(v21, vceqq_f32(vdupq_lane_s32(*a2, 0), v18)), v18), v21, vaddq_f32(v20, vdupq_lane_s32(*a2, 1)));
        v23 = vorrq_s8(vandq_s8(*(a2 + 19), v22), v21);
        v24 = vandq_s8(v21, vcgtq_f32(v23, *(a2 + 23)));
        v25 = vsubq_f32(vsubq_f32(v23, v21), vmulq_f32(vmulq_f32(*(a2 + 24), v24), v23));
        v26 = vmulq_f32(v25, v25);
        v27 = vmaxq_f32(vmulq_n_f32(vaddq_f32(vaddq_f32(vsubq_f32(vsubq_f32(vcvtq_f32_u32(vshrq_n_u32(v22, 0x17uLL)), vandq_s8(*(a2 + 21), vcgtq_f32(*(a2 + 20), v22))), *(a2 + 22)), v24), vmulq_f32(v25, vaddq_f32(*(a2 + 43), vmulq_f32(v25, vaddq_f32(vaddq_f32(*(a2 + 41), vmulq_f32(*(a2 + 42), v25)), vmulq_f32(v26, vaddq_f32(vaddq_f32(*(a2 + 37), vmulq_f32(*(a2 + 38), v25)), vmulq_f32(v26, vaddq_f32(*(a2 + 39), vmulq_f32(*(a2 + 40), v25)))))))))), COERCE_FLOAT(*a2)), *(a2 + 29));
        v28 = vcvtq_f32_s32(vcvtq_s32_f32(v27));
        v29 = vsubq_f32(v28, vandq_s8(v21, vcgtq_f32(v28, v27)));
        v30 = vsubq_f32(v27, v29);
        v31 = vbslq_s8(v12, v17, vbslq_s8(vcgtq_f32(v18, vsubq_f32(v20, vdupq_lane_s32(*(a2 + 16), 1))), vdupq_lane_s32(*v19.i8, 0), vmulq_laneq_f32(vmulq_f32(vaddq_f32(v21, vmulq_f32(v30, vaddq_f32(*(a2 + 48), vmulq_f32(v30, vaddq_f32(vaddq_f32(*(a2 + 46), vmulq_f32(*(a2 + 47), v30)), vmulq_f32(vmulq_f32(v30, v30), vaddq_f32(*(a2 + 44), vmulq_f32(*(a2 + 45), v30)))))))), vshlq_n_s32(vaddq_s32(*(a2 + 33), vcvtq_s32_f32(v29)), 0x17uLL)), *a2, 3)));
        *(v7 + v10) = vbslq_s8(v12, v17, vmulq_laneq_f32(v31, v31, 3));
        v10 += 16;
      }

      while (v9 != v10);
      ++v4;
      v5 += v6;
      v7 += v8;
    }

    while (v4 != v3);
  }

  return 0;
}