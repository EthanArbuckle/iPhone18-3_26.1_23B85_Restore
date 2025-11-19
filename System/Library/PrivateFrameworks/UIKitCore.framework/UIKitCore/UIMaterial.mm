@interface UIMaterial
@end

@implementation UIMaterial

void __30___UIMaterial_materialMapping__block_invoke()
{
  v0 = +[UIDevice currentDevice];
  v1 = [v0 userInterfaceIdiom];

  objc_opt_self();
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v1 != 6)
  {
    if (v1 == 4)
    {
      v3 = [[_UIMaterial alloc] initWithBlur:?];
      [v2 setObject:v3 forKeyedSubscript:@"systemBackgroundColor"];
      [v2 setObject:v3 forKeyedSubscript:@"secondarySystemBackgroundColor"];
      [v2 setObject:v3 forKeyedSubscript:@"tertiarySystemBackgroundColor"];
      [v2 setObject:v3 forKeyedSubscript:@"systemGroupedBackgroundColor"];
      [v2 setObject:v3 forKeyedSubscript:@"secondarySystemGroupedBackgroundColor"];
      [v2 setObject:v3 forKeyedSubscript:@"tertiarySystemGroupedBackgroundColor"];
      [v2 setObject:v3 forKeyedSubscript:@"tableBackgroundColor"];
      [v2 setObject:v3 forKeyedSubscript:@"tableCellGroupedBackgroundColor"];
      [v2 setObject:v3 forKeyedSubscript:@"tableCellPlainBackgroundColor"];
      v82 = 0uLL;
      *v83 = 0;
      *&v83[4] = xmmword_18A67C2F0;
      *&v83[20] = xmmword_18A67C300;
      *&v83[36] = xmmword_18A67C310;
      *&v83[52] = 0x3F80000000000000;
      *&v83[60] = 0;
      v80 = 0uLL;
      *v81 = 0;
      *&v81[4] = xmmword_18A67C320;
      *&v81[20] = 1058139013;
      *&v81[24] = 0uLL;
      *&v81[40] = xmmword_18A67C330;
      *&v81[56] = 1065353216;
      v79 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v4 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v79];
      [v2 setObject:v4 forKeyedSubscript:@"systemBlueColor"];

      v82 = xmmword_18A67C340;
      *v83 = xmmword_18A67C350;
      *&v83[16] = xmmword_18A67C360;
      *&v83[32] = xmmword_18A67C370;
      *&v83[48] = xmmword_18A6685B0;
      v80 = xmmword_18A67C380;
      *v81 = xmmword_18A67C390;
      *&v81[16] = xmmword_18A67C3A0;
      *&v81[32] = xmmword_18A67C3B0;
      *&v81[48] = xmmword_18A6685B0;
      v77 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v5 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v77];
      [v2 setObject:v5 forKeyedSubscript:@"systemGreenColor"];

      v82 = xmmword_18A67C3C0;
      *v83 = xmmword_18A67C3D0;
      *&v83[16] = xmmword_18A67C3E0;
      memset(&v83[36], 0, 20);
      *&v83[32] = 1011129254;
      *&v83[56] = 1065353216;
      v80 = 0uLL;
      *v81 = xmmword_18A67C3F0;
      *&v81[16] = xmmword_18A67C400;
      *&v81[32] = xmmword_18A67C410;
      *&v81[48] = xmmword_18A6685B0;
      v76 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v6 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v76];
      [v2 setObject:v6 forKeyedSubscript:@"systemOrangeColor"];

      v82 = xmmword_18A67C420;
      *v83 = xmmword_18A67C430;
      *&v83[16] = xmmword_18A67C440;
      *&v83[32] = xmmword_18A67C450;
      *&v83[48] = xmmword_18A6685B0;
      v80 = 0uLL;
      *v81 = xmmword_18A67C460;
      *&v81[16] = xmmword_18A67C470;
      *&v81[32] = xmmword_18A67C480;
      *&v81[48] = xmmword_18A6685B0;
      v75 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v7 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v75];
      [v2 setObject:v7 forKeyedSubscript:@"systemRedColor"];

      v82 = xmmword_18A67C490;
      *v83 = xmmword_18A67C4A0;
      *&v83[16] = 0x3F25604200000000;
      memset(&v83[24], 0, 32);
      *&v83[56] = 1065353216;
      v80 = 0uLL;
      *v81 = xmmword_18A67C4B0;
      *&v81[16] = 0x3F570A3D00000000;
      memset(&v81[24], 0, 32);
      *&v81[56] = 1065353216;
      v74 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v8 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v74];
      [v2 setObject:v8 forKeyedSubscript:@"systemYellowColor"];

      v82 = xmmword_18A67C4C0;
      *v83 = xmmword_18A67C4D0;
      *&v83[16] = xmmword_18A67C4E0;
      *&v83[32] = xmmword_18A67C4F0;
      *&v83[48] = xmmword_18A6685B0;
      v80 = 0uLL;
      *v81 = xmmword_18A67C500;
      *&v81[16] = xmmword_18A67C510;
      *&v81[32] = xmmword_18A67C520;
      *&v81[48] = xmmword_18A6685B0;
      v73 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v9 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v73];
      [v2 setObject:v9 forKeyedSubscript:@"systemPinkColor"];

      v82 = xmmword_18A67C530;
      *v83 = xmmword_18A67C540;
      *&v83[16] = xmmword_18A67C550;
      *&v83[32] = xmmword_18A67C560;
      *&v83[48] = xmmword_18A6685B0;
      v80 = xmmword_18A67C570;
      *v81 = xmmword_18A67C580;
      *&v81[16] = 0x3EF5C28F00000000;
      *&v81[24] = 0;
      *&v81[32] = 0;
      *&v81[40] = xmmword_18A67C330;
      *&v81[56] = 1065353216;
      v10 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v11 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v10];
      [v2 setObject:v11 forKeyedSubscript:@"systemIndigoColor"];

      v82 = xmmword_18A67C590;
      *v83 = xmmword_18A67C5A0;
      *&v83[16] = xmmword_18A67C5B0;
      *&v83[32] = xmmword_18A67C5C0;
      *&v83[48] = xmmword_18A6685B0;
      v80 = xmmword_18A67C5D0;
      *v81 = xmmword_18A67C5E0;
      *&v81[16] = xmmword_18A67C5F0;
      *&v81[32] = xmmword_18A67C600;
      *&v81[48] = xmmword_18A6685B0;
      v12 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v13 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v12];
      [v2 setObject:v13 forKeyedSubscript:@"systemPurpleColor"];

      v82 = 0uLL;
      *v83 = 0;
      *&v83[4] = xmmword_18A67C610;
      *&v83[20] = xmmword_18A67C620;
      *&v83[36] = xmmword_18A67C630;
      *&v83[52] = 0x3F80000000000000;
      *&v83[60] = 0;
      v80 = 0uLL;
      *v81 = 0;
      *&v81[4] = xmmword_18A67C640;
      *&v81[20] = xmmword_18A67C650;
      *&v81[36] = xmmword_18A67C660;
      *&v81[52] = 0x3F80000000000000;
      *&v81[60] = 0;
      v14 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v15 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v14];
      [v2 setObject:v15 forKeyedSubscript:@"systemMintColor"];

      v82 = 0uLL;
      *v83 = 0;
      *&v83[4] = xmmword_18A67C670;
      *&v83[20] = xmmword_18A67C680;
      *&v83[36] = xmmword_18A67C690;
      *&v83[52] = 0x3F80000000000000;
      *&v83[60] = 0;
      v80 = xmmword_18A67C6A0;
      *v81 = xmmword_18A67C6B0;
      *&v81[16] = 0x3F547AE100000000;
      *&v81[24] = 0;
      *&v81[32] = 0;
      *&v81[40] = xmmword_18A67C330;
      *&v81[56] = 1065353216;
      v16 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v17 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v16];
      [v2 setObject:v17 forKeyedSubscript:@"systemCyanColor"];

      v82 = 0uLL;
      *v83 = 0;
      *&v83[4] = xmmword_18A67C6C0;
      *&v83[20] = xmmword_18A67C6D0;
      *&v83[36] = xmmword_18A67C6E0;
      *&v83[52] = 0x3F80000000000000;
      *&v83[60] = 0;
      *v81 = 0;
      v80 = 0uLL;
      *&v81[4] = xmmword_18A67C6F0;
      *&v81[20] = xmmword_18A67C700;
      *&v81[36] = xmmword_18A67C710;
      *&v81[52] = 0x3F80000000000000;
      *&v81[60] = 0;
      v18 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v19 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v18];
      [v2 setObject:v19 forKeyedSubscript:@"systemTealColor"];

      v82 = xmmword_18A67C720;
      *v83 = xmmword_18A67C730;
      *&v83[16] = xmmword_18A67C740;
      *&v83[32] = xmmword_18A67C750;
      *&v83[48] = xmmword_18A6685B0;
      v80 = xmmword_18A67C760;
      *v81 = xmmword_18A67C770;
      *&v81[16] = xmmword_18A67C780;
      *&v81[32] = xmmword_18A67C790;
      *&v81[48] = xmmword_18A6685B0;
      v20 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
      v21 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v18];
      [v2 setObject:v21 forKeyedSubscript:@"systemBrownColor"];

      v22 = [_UIMaterial alloc];
      if (v22)
      {
        v23 = [(_UIMaterial *)v22 initWithVibrancy:4 forBlurEffectStyle:9];
      }

      else
      {
        v23 = 0;
      }

      [v2 setObject:v23 forKeyedSubscript:@"systemFillColor"];

      v24 = [_UIMaterial alloc];
      if (v24)
      {
        v25 = [(_UIMaterial *)v24 initWithVibrancy:5 forBlurEffectStyle:9];
      }

      else
      {
        v25 = 0;
      }

      [v2 setObject:v25 forKeyedSubscript:@"secondarySystemFillColor"];

      v26 = [_UIMaterial alloc];
      if (v26)
      {
        v27 = [(_UIMaterial *)v26 initWithVibrancy:6 forBlurEffectStyle:9];
      }

      else
      {
        v27 = 0;
      }

      [v2 setObject:v27 forKeyedSubscript:@"tertiarySystemFillColor"];

      v28 = [_UIMaterial alloc];
      if (v28)
      {
        v29 = [(_UIMaterial *)v28 initWithVibrancy:0 forBlurEffectStyle:9];
      }

      else
      {
        v29 = 0;
      }

      [v2 setObject:v29 forKeyedSubscript:@"labelColor"];

      v30 = [_UIMaterial alloc];
      if (v30)
      {
        v31 = [(_UIMaterial *)v30 initWithVibrancy:1 forBlurEffectStyle:9];
      }

      else
      {
        v31 = 0;
      }

      [v2 setObject:v31 forKeyedSubscript:@"secondaryLabelColor"];

      v32 = [_UIMaterial alloc];
      if (v32)
      {
        v33 = [(_UIMaterial *)v32 initWithVibrancy:2 forBlurEffectStyle:9];
      }

      else
      {
        v33 = 0;
      }

      [v2 setObject:v33 forKeyedSubscript:@"tertiaryLabelColor"];

      v34 = [_UIMaterial alloc];
      if (v34)
      {
        v35 = [(_UIMaterial *)v34 initWithVibrancy:3 forBlurEffectStyle:9];
      }

      else
      {
        v35 = 0;
      }

      [v2 setObject:v35 forKeyedSubscript:@"quaternaryLabelColor"];

      v36 = [_UIMaterial alloc];
      if (v36)
      {
        v37 = [(_UIMaterial *)v36 initWithVibrancy:7 forBlurEffectStyle:9];
      }

      else
      {
        v37 = 0;
      }

      v38 = v77;
      [v2 setObject:v37 forKeyedSubscript:@"separatorColor"];
      v39 = @"opaqueSeparatorColor";
LABEL_42:
      [v2 setObject:v37 forKeyedSubscript:v39];

      goto LABEL_43;
    }

    v3 = [[_UIMaterial alloc] initWithBlur:?];
    [v2 setObject:v3 forKeyedSubscript:@"systemBackgroundColor"];
    [v2 setObject:v3 forKeyedSubscript:@"secondarySystemBackgroundColor"];
    [v2 setObject:v3 forKeyedSubscript:@"tertiarySystemBackgroundColor"];
    [v2 setObject:v3 forKeyedSubscript:@"systemGroupedBackgroundColor"];
    [v2 setObject:v3 forKeyedSubscript:@"secondarySystemGroupedBackgroundColor"];
    [v2 setObject:v3 forKeyedSubscript:@"tertiarySystemGroupedBackgroundColor"];
    [v2 setObject:v3 forKeyedSubscript:@"tableBackgroundColor"];
    [v2 setObject:v3 forKeyedSubscript:@"tableCellGroupedBackgroundColor"];
    [v2 setObject:v3 forKeyedSubscript:@"tableCellPlainBackgroundColor"];
    v40 = [_UIMaterial alloc];
    if (v40)
    {
      v41 = [(_UIMaterial *)v40 initWithVibrancy:7 forBlurEffectStyle:9];
    }

    else
    {
      v41 = 0;
    }

    [v2 setObject:v41 forKeyedSubscript:@"separatorColor"];
    v79 = v41;
    [v2 setObject:v41 forKeyedSubscript:@"opaqueSeparatorColor"];
    v42 = [_UIMaterial alloc];
    if (v42)
    {
      v43 = [(_UIMaterial *)v42 initWithVibrancy:5 forBlurEffectStyle:9];
    }

    else
    {
      v43 = 0;
    }

    [v2 setObject:v43 forKeyedSubscript:@"_switchOffColor"];

    v82 = xmmword_18A67C7A0;
    *v83 = xmmword_18A67C7B0;
    *&v83[16] = xmmword_18A67C7C0;
    *&v83[32] = xmmword_18A67C7D0;
    *&v83[48] = xmmword_18A6685B0;
    v80 = xmmword_18A67C7E0;
    *v81 = xmmword_18A67C7F0;
    *&v81[16] = xmmword_18A67C800;
    *&v81[32] = xmmword_18A67C810;
    *&v81[48] = xmmword_18A6685B0;
    v78 = [UIVibrancyEffect _vibrantEffectWithLightCAColorMatrix:&v82 darkCAColorMatrix:&v80 alpha:1.0];
    v44 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v78];
    [v2 setObject:v44 forKeyedSubscript:@"systemRedColor"];

    v76 = [_UIMaterial vibrancyEffectWithA:6.905 B:-51.525 C:91.932 D:54.282 E:-4.146 F:?];
    v45 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v76];
    [v2 setObject:v45 forKeyedSubscript:@"systemOrangeColor"];

    v75 = [_UIMaterial vibrancyEffectWithA:28.262 B:-51.738 C:94.219 D:78.139 E:-1.859 F:?];
    v46 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v75];
    [v2 setObject:v46 forKeyedSubscript:@"systemYellowColor"];

    v47 = [_UIMaterial alloc];
    v48 = +[_UIMaterial _systemGreenEffect];
    v49 = [(_UIMaterial *)v47 initWithVibrantVisualEffect:v48];
    [v2 setObject:v49 forKeyedSubscript:@"systemGreenColor"];

    v74 = [_UIMaterial vibrancyEffectWithA:27.443 B:23.913 C:24.238 D:75.618 E:74.048 F:?];
    v50 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v74];
    [v2 setObject:v50 forKeyedSubscript:@"systemMintColor"];

    v73 = [_UIMaterial vibrancyEffectWithA:19.521 B:28.541 C:16.214 D:69.544 E:78.954 F:?];
    v51 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v73];
    [v2 setObject:v51 forKeyedSubscript:@"systemTealColor"];

    v10 = [_UIMaterial vibrancyEffectWithA:18.24 B:40.6 C:26.993 D:70.123 E:87.773 F:?];
    v52 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v10];
    [v2 setObject:v52 forKeyedSubscript:@"systemCyanColor"];

    v12 = [_UIMaterial vibrancyEffectWithA:2.122 B:54.282 C:1.386 D:49.224 E:97.464 F:?];
    v53 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v12];
    [v2 setObject:v53 forKeyedSubscript:@"systemBlueColor"];

    v14 = [_UIMaterial vibrancyEffectWithA:-12.53 B:37.66 C:34.283 D:33.503 E:87.623 F:?];
    v54 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v14];
    [v2 setObject:v54 forKeyedSubscript:@"systemIndigoColor"];

    v16 = [_UIMaterial vibrancyEffectWithA:-14.779 B:40.121 C:73.393 D:33.783 E:93.393 F:?];
    v55 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v16];
    [v2 setObject:v55 forKeyedSubscript:@"systemPurpleColor"];

    v18 = [_UIMaterial vibrancyEffectWithA:-25.495 B:-9.815 C:105.312 D:26.882 E:42.562 F:?];
    v56 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v18];
    [v2 setObject:v56 forKeyedSubscript:@"systemPinkColor"];

    v20 = [_UIMaterial vibrancyEffectWithA:0.167 B:-14.733 C:61.393 D:49.633 E:34.723 F:?];
    v57 = [[_UIMaterial alloc] initWithVibrantVisualEffect:v20];
    [v2 setObject:v57 forKeyedSubscript:@"systemBrownColor"];

    v58 = [_UIMaterial alloc];
    if (v58)
    {
      v59 = [(_UIMaterial *)v58 initWithVibrancy:4 forBlurEffectStyle:9];
    }

    else
    {
      v59 = 0;
    }

    [v2 setObject:v59 forKeyedSubscript:@"systemFillColor"];

    v60 = [_UIMaterial alloc];
    if (v60)
    {
      v61 = [(_UIMaterial *)v60 initWithVibrancy:5 forBlurEffectStyle:9];
    }

    else
    {
      v61 = 0;
    }

    [v2 setObject:v61 forKeyedSubscript:@"secondarySystemFillColor"];

    v62 = [_UIMaterial alloc];
    if (v62)
    {
      v63 = [(_UIMaterial *)v62 initWithVibrancy:6 forBlurEffectStyle:9];
    }

    else
    {
      v63 = 0;
    }

    [v2 setObject:v63 forKeyedSubscript:@"tertiarySystemFillColor"];

    if (_UISolariumEnabled())
    {
      v64 = +[_UIMaterial _labelMaterial];
    }

    else
    {
      v65 = [_UIMaterial alloc];
      if (!v65)
      {
        v66 = 0;
        goto LABEL_35;
      }

      v64 = [(_UIMaterial *)v65 initWithVibrancy:0 forBlurEffectStyle:9];
    }

    v66 = v64;
LABEL_35:
    [v2 setObject:v66 forKeyedSubscript:@"labelColor"];

    v67 = [_UIMaterial alloc];
    if (v67)
    {
      v68 = [(_UIMaterial *)v67 initWithVibrancy:1 forBlurEffectStyle:9];
    }

    else
    {
      v68 = 0;
    }

    [v2 setObject:v68 forKeyedSubscript:@"secondaryLabelColor"];

    v69 = [_UIMaterial alloc];
    if (v69)
    {
      v70 = [(_UIMaterial *)v69 initWithVibrancy:2 forBlurEffectStyle:9];
    }

    else
    {
      v70 = 0;
    }

    [v2 setObject:v70 forKeyedSubscript:@"tertiaryLabelColor"];

    v71 = [_UIMaterial alloc];
    if (v71)
    {
      v37 = [(_UIMaterial *)v71 initWithVibrancy:3 forBlurEffectStyle:9];
    }

    else
    {
      v37 = 0;
    }

    v38 = v78;
    v39 = @"quaternaryLabelColor";
    goto LABEL_42;
  }

LABEL_43:
  v72 = qword_1ED49B918;
  qword_1ED49B918 = v2;
}

void __33___UIMaterial__systemGreenEffect__block_invoke()
{
  v0 = [_UIMaterial vibrancyEffectWithA:26.706 B:-16.434 C:11.265 D:74.405 E:26.955 F:?];
  v1 = qword_1ED49B928;
  qword_1ED49B928 = v0;
}

@end